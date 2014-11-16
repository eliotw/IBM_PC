/*
 * RTL for the Intel 8088 microprocessor. This is a wrapper system for the Zet
 * processor which describes the Intel 8086.
 */

`timescale 1ns/10ps

`include "defines.v"

module processor_8088
  (
   input         clk,
   input         rst,
    
   // input
   input         mnmx, // minimum and maximum mode. high-> min, low-> max
   input         ready, // inform processor that mem or I/0 is ready for data transfer
   input         hold,               // suspends the processor
   input         nmi,                // causes non-maskable type-2 interrupt
   input         intr,               // maskable interrupt request 
   input         test_n,             // examined by processor testing instructions
   input [7:0]   iid, // interrupt vector
   // output
   output [19:0] a,               // address bus
   output        hlda,               // acknowledges that the processor is suspended
   output        inta_n,             // indicates that an intr request has been received
   output        ale,                // indicates that current data on address/data bus are address
   output        den_n,              // disconents data bus connection
   output        dtr,               // indicates direction of data transfer. low-> to 8088, high-> from 8088
   output        wr_n,               // indicates that the processor is writing to mem or I/O device
   output        rd_n,               // indicates that the processor is reading from mem or I/O device
   output        iom,               // indicates that processor is accessing mem or I/O. low-> mem, high-> I/O
   output        sso,                // status output
    
   // inout
   inout [7:0]   ad           // address/data bus
   );

   /* for zet core */
   wire 	 inta, nmia;
   wire [19:0] 	 cpu_adr_o;
   reg [19:0] 	 cpu_adr_o2;
   wire [15:0] 	 iid_dat_i;
   wire [15:0] 	 cpu_dat_i;
   wire [15:0] 	 cpu_dat_o;
   wire 	 cpu_byte_o;
   wire 	 cpu_block;
   wire 	 cpu_mem_op;
   wire 	 cpu_m_io;
   wire 	 cpu_we_o;
   wire 	 memalu;
   wire [19:0] 	 pc;  // for debugging purposes
   wire [2:0] 	 zet_state, zet_next_state;
   
   /* zet states */
   localparam opcod_st = 3'h0;
   localparam modrm_st = 3'h1;
   localparam offse_st = 3'h2;
   localparam immed_st = 3'h3;
   localparam execu_st = 3'h4;
   localparam fetch_st = 3'h5;
    
   wire [19:0] 	 calculated_addr;
   wire [3:0] 	 bytes_transferred;

   assign a = calculated_addr;
   assign calculated_addr = cpu_adr_o + (bytes_transferred);
   
   zet_core core (.clk(clk),
                  .rst(rst),
                  .intr(intr),
                  .inta(inta),
                  .nmi(nmi),
                  .nmia(nmia),
                  .cpu_adr_o(cpu_adr_o),
                  .iid_dat_i(iid_dat_i),
                  .cpu_dat_i(cpu_dat_i),
                  .cpu_dat_o(cpu_dat_o),
                  .cpu_byte_o(cpu_byte_o),
                  .cpu_block(cpu_block),
                  .cpu_mem_op(cpu_mem_op),
                  .cpu_m_io(cpu_m_io),
                  .cpu_we_o(cpu_we_o),
                  .memalu(memalu),
                  .pc(pc),
                  .state(zet_state),
                  .n_state(zet_next_state)
		  );

   /* output registers */
   wire ld_out_regs;
   wire [7:0] msb_o_q;
   wire [7:0] lsb_o_q;
    
   register msb_o (.clk(clk),
                   .rst(rst),
                   .d(cpu_dat_o[15:8]),
                   .q(msb_o_q),
                   .ld(ld_out_regs)
                   );
    
   register lsb_o (.clk(clk),
                   .rst(rst),
                   .d(cpu_dat_o[7:0]),
                   .q(lsb_o_q),
                   .ld(ld_out_regs)
                   );
                  
	/* interrupt wire */
	assign inta_n = ~inta;
	
   /* input registers */
   wire       ld_msb_i;
   wire [7:0] msb_i_q;
   wire       ld_lsb_i;
   wire [7:0] lsb_i_q;
   wire [7:0] ad_bus;
   wire [3:0] ld_in;
   reg [19:0] addr_reg;
   wire [19:0] addr_offset;
   wire [7:0]  i_q [0:9];
   wire        start, read, write;
   wire        write_bus;
	 
   /* prefetch wires */
   assign addr_offset = cpu_adr_o - addr_reg;
   assign ad_bus = ad;
   assign cpu_dat_i[7:0] = i_q[0];
   assign cpu_dat_i[15:8] = cpu_byte_o 
   	? {i_q[0][7],i_q[0][7],i_q[0][7],i_q[0][7],i_q[0][7],i_q[0][7],i_q[0][7],i_q[0][7]}
   	: i_q[1];
	 
   register i00 (.clk(clk),
		 .rst(rst),
		 .d(ad_bus),
		 .q(i_q[0]),
		 .ld((ld_in == 4'b0001))
		 );
						
   register i01 (.clk(clk),
		 .rst(rst),
		 .d(ad_bus),
		 .q(i_q[1]),
		 .ld((ld_in == 4'b0010))
		 );	

   //assign iid_dat_i = {8'h0,iid};
   assign iid_dat_i = intr ? {8'h0,iid} : cpu_dat_i;
	
   /* control fsm state */
   wire [2:0] ctrl_fsm_state;
   localparam idle = 3'b000;
   localparam addr = 3'b001;
   localparam interm = 3'b010;
   localparam data = 3'b011;

   // Latch address reference
   always @(posedge clk or negedge rst) begin
      if(~rst) begin
	 addr_reg <= 20'hffff0;
      end
      else if(read) begin
	 addr_reg <= cpu_adr_o;
      end
      else begin
	 addr_reg <= addr_reg;
      end
   end
	 
   // Assign
   assign start = (read | write) & inta_n;
   assign write = (zet_state == execu_st)? cpu_we_o : 1'b0;
   assign read = (zet_state == fetch_st) 
     || ((zet_state == execu_st) && ~memalu && ~cpu_we_o) 
       || (zet_state == modrm_st) 
	 || (zet_state == offse_st) 
	 || ((zet_next_state == opcod_st) & (zet_state == opcod_st))
	   || (zet_state == immed_st);
   assign ad = (write_bus)? 
		((ale)? 
		calculated_addr[7:0] : (( (ctrl_fsm_state == addr) | (ctrl_fsm_state == interm) )? ((bytes_transferred == 0)? lsb_o_q : ((bytes_transferred == 1)? msb_o_q : 8'bz)) : 8'bz )) : 8'bz;  
    
   control_fsm ctrl_fsm (.clk(clk),
                        .rst(rst),
                        .start(start),
                        .read(read),
                        .write(write),
			.cpu_m_io(cpu_m_io),
			.cpu_byte_o(cpu_byte_o),
			.iom(iom),
                        .bytes_transferred(bytes_transferred),
                        .write_bus(write_bus),
                        .ld_out_regs(ld_out_regs),
			.ld_in(ld_in),
                        .ale(ale),
                        .den_n(den_n),
                        .wr_n(wr_n),
                        .rd_n(rd_n),
                        .dtr(dtr),
                        .cpu_block(cpu_block),
                        .state(ctrl_fsm_state)
                        );
    
   /* interrupt fsm                   
   wire ld_intr; 
   
   interrupt_fsm intr_fsm (.clk(clk),
                        .rst(rst),
                        .intr(intr),
                        .ld_intr(ld_intr),
                        .inta_n(inta_n)
                        );
   */
   /* hold fsm */
   hold_fsm hld_fsm (.clk(clk),
                     .rst(rst),
                     .hold(hold),
                     .hlda(hlda)
                     );
    
endmodule // processor_8088

module control_fsm
    (input clk, rst,
     input start,
     input read,
     input write,
     input cpu_m_io,
     input cpu_byte_o,
     output reg iom,
     output [3:0] bytes_transferred,
     output reg write_bus,
     output reg ld_out_regs,
     output reg [3:0] ld_in,
     output reg ale,
     output reg den_n,
     output reg wr_n,
     output reg rd_n,
     output reg cpu_block,
     output reg dtr,
     output reg [2:0] state
    );
    
    reg [2:0] next_state;
    reg clr_count, inc_count;
    
    localparam idle = 3'b000;
    localparam addr = 3'b001;
    localparam interm = 3'b010;
    localparam data = 3'b011;
    
    wire data_tran_done;
    wire inc, clr;
    wire [3:0] byte_level;
	 
    counter #(4) cnt (.clk(clk),
                      .rst(rst),
                      .inc(inc),
                      .clr(clr),
                      .count(bytes_transferred)
                     );
    
	assign byte_level = (cpu_byte_o) ? 4'b0001 : 4'b0010;
    	assign data_tran_done = (bytes_transferred == byte_level);
    	assign inc = inc_count;
    	assign clr = clr_count;

    	always @(posedge clk or negedge rst) begin
        	if (~rst)
            		state <= idle;
        	else 
            		state <= next_state;
    	end
    
    always @( * ) begin
        next_state = idle;
        case(state)
            idle: begin
                if (start)
                    next_state = addr;
                else 
                    next_state = idle;
            end
            addr: begin
	       next_state = interm;
            end
            interm: begin
	       next_state = data;
	    end
            data: begin
               next_state = idle;
            end
        endcase
    end
    
   always @( * ) begin
      ale = 1'b0;
      dtr = 1'b1;
      rd_n = 1'b1; 
      wr_n = 1'b1;
      den_n = 1'b1; 
      iom = 1'b1;
      inc_count = 1'b0;
      clr_count = 1'b0; 
      ld_out_regs = 1'b0;
      ld_in = 4'b0;
      write_bus = 1'b0;
      cpu_block = 1'b0;
      case(state)
			idle: begin
				if (start) begin
					cpu_block = 1;
					ale = 1;
					iom = ~cpu_m_io;
					dtr = write;
					den_n = read;
					ld_out_regs = write;
					write_bus = 1;
				end
			end
			addr: begin
				cpu_block = 1;
				iom = ~cpu_m_io;
				dtr = write;
				den_n = read;
				if (read | (cpu_m_io & ~write)) begin
					//dtr = 0;
					rd_n = 0;
				end
				else if (write) begin
					wr_n = 0;
					//dtr = 1;
					write_bus = 1;
				end
			end
			interm: begin
				cpu_block = 1;
				iom = ~cpu_m_io;
				dtr = write;
				den_n = read;
				inc_count = 1;
				if(read) begin
					rd_n = 0;
					//dtr = 0;
					ld_in = bytes_transferred + 1;
				end
				else if(write) begin
					wr_n = 1'b0;
					//dtr = 1;
					write_bus = 1;
				end
			end
			data: begin
				iom = ~cpu_m_io;
				dtr = write;
				den_n = read;
				if (~data_tran_done) begin
					cpu_block = 1;
					//write_bus = 1;
					if (read) begin
						rd_n = 0;
						//ld_in = bytes_transferred + 1;
					end
					else if (write) begin
						wr_n = 0;
						//dtr = 1;
					end
				end
				else begin
					cpu_block = 0;
					//dtr = 1'b1;
					wr_n = 1;
					clr_count = 1;
				end
			end
		endcase
   end
     
endmodule


module interrupt_fsm
    (input clk, rst,
     input intr,
     output reg ld_intr,
     output reg inta_n);
     
    localparam idle = 1'b0;
    localparam intr_input_trn = 1'b1;
    
    reg state, next_state;
    wire intr_input_trn_done;
    wire [1:0] count;
    wire inc_count, clr_count;
    reg inc, clr;
    
    counter #(2) cnt (.clk(clk),
                      .rst(rst),
                      .inc(inc_count),
                      .clr(clr_count),
                      .count(count));
    
    assign intr_input_trn_done = (count == 2'b10);
    assign inc_count = inc;
    assign clr_count = clr;
    
    always @(posedge clk or negedge rst) begin
        if (~rst) 
            state <= idle;
        else 
            state <= next_state;
    end
    
    /* next state logic */
    always @( * ) begin
        next_state = idle;
        case(state)
            idle: begin
                if (intr) 
                    next_state = intr_input_trn;
                else 
                    next_state = idle;
            end
            intr_input_trn: begin
                if (~intr_input_trn_done) 
                    next_state = intr_input_trn;
                else 
                    next_state = idle;
            end
        endcase
    end
    
    /* output logic */
    always @( * ) begin
        inta_n = 1;
        ld_intr = 0;
        inc = 0;
        clr = 0;
        case(state)
            idle : ;
            intr_input_trn: begin
                if (~intr_input_trn_done) begin
                    inc = 1;
                    inta_n = 0;
                    if (count == 1)
                        ld_intr = 1;
                end
                else 
                    clr = 1;
            end
        endcase
    end
    
endmodule


module hold_fsm
    (input clk, rst,
     input hold,
     output reg hlda);
     
    localparam idle = 2'b00;
    localparam interm = 2'b01;
    localparam hold_state = 2'b10;
    
    reg [1:0] state, next_state;
    wire instr_done;
    wire clr_count, inc_count;
    wire [1:0] count;
    reg inc, clr;
    
    assign instr_done = (count == 2'b10);
    assign inc_count = inc;
    assign clr_count = clr;
    
    counter #(2) cnt (.clk(clk),
                      .rst(rst),
                      .inc(inc_count),
                      .clr(clr_count),
                      .count(count));
    
    always @(posedge clk or negedge rst) begin
        if (~rst) 
            state <= idle;
        else 
            state <= next_state;
    end
    
    /* next state logic */
    always @( * ) begin
        case(state)
        idle: begin
            if (hold)
                next_state = interm;
            else 
                next_state = idle;
        end
        interm: begin
            if (~instr_done) 
                next_state = interm;
            else 
                next_state = hold_state;
        end
        hold_state: begin
            if (hold) 
                next_state = hold_state;
            else 
                next_state = idle;
        end
        endcase
    end
    
    /* output logic */
    always @( * ) begin
        hlda = 0;
        inc = 0;
        clr = 0;
        case(state)
            idle: ;
            interm: begin
                if (~instr_done) inc = 1;
            end
            hold_state: begin
                hlda = 1;
                if (~hold)
                    clr = 1;
            end
        endcase
    end
    
endmodule


module counter
    #(parameter width = 8)
    (input clk, rst,
     input inc, clr,
     output reg [width-1:0] count);
     
    always @(posedge clk or negedge rst) begin
        if (~rst) 
            count <= 0;
        else if (clr)
            count <= 0;
        else if (inc) 
            count <= count + 1;
    end
    
endmodule


module register
    #(parameter width = 8)
    (input clk, rst,
     input ld,
     input [width-1:0] d,
     output reg [width-1:0] q);
     
    always @(posedge clk or negedge rst) begin
        if (~rst)
            q <= 0;
        else if (ld)
            q <= d;
    end
    
endmodule
