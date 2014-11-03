/*
 * RTL for the Intel 8088 microprocessor. This is a wrapper system for the Zet
 * processor which describes the Intel 8086.
 */
 

//`default_nettype none

`timescale 1ns/10ps

`include "defines.v"

module processor_8088
(
	input         clk,
	input         rst,
    
    // input
    input         mnmx,		         // minimum and maximum mode. high-> min, low-> max
    input         ready,              // inform processor that mem or I/0 is ready for data transfer
    input         hold,               // suspends the processor
    input         nmi,                // causes non-maskable type-2 interrupt
    input         intr,               // maskable interrupt request
    
    input         test_n,             // examined by processor testing instructions
    
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
    wire inta, nmia;
    wire [19:0] cpu_adr_o;
    wire [15:0] iid_dat_i;
    wire [15:0] cpu_dat_i;
    wire [15:0] cpu_dat_o;
    wire        cpu_byte_o;
    wire        cpu_block;
    wire        cpu_mem_op;
    wire        cpu_m_io;
    wire        cpu_we_o;
    wire        memalu;
    wire [19:0] pc;  // for debugging purposes
    wire [2:0] zet_state, zet_next_state;
    
    /* zet states */
    localparam opcod_st = 3'h0;
    localparam modrm_st = 3'h1;
    localparam offse_st = 3'h2;
    localparam immed_st = 3'h3;
    localparam execu_st = 3'h4;
    localparam fetch_st = 3'h5;
    
    wire [19:0] calculated_addr;
    wire [1:0] bytes_transferred;

	 assign a = calculated_addr;
	 //assign a[7:0] = 8'b0;
    assign calculated_addr = cpu_adr_o + (bytes_transferred);
    //assign a[19:8] = calculated_addr[19:8];
    
    
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
                     .cpu_m_io(iom),
                     .cpu_we_o(cpu_we_o),
                     .memalu(memalu),
                     .pc(pc),
                     .state(zet_state),
                     .n_state(zet_next_state));

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
                  
    /* input registers */
    wire ld_msb_i;
    wire [7:0] msb_i_q;
    wire ld_lsb_i;
    wire [7:0] lsb_i_q;
    wire [7:0] ad_bus;
    
    assign ad_bus = ad;
    
    register msb_i (.clk(clk),
                    .rst(rst),
                    .d(ad_bus),
                    .q(msb_i_q),
                    .ld(ld_msb_i)
                    );
                    
    register lsb_i (.clk(clk),
                    .rst(rst),
                    .d(ad_bus),
                    .q(lsb_i_q),
                    .ld(ld_lsb_i)
                    );
    
    assign cpu_dat_i = {msb_i_q, lsb_i_q};
    assign iid_dat_i = cpu_dat_i;
    
    /* control fsm state */
    wire [2:0] ctrl_fsm_state;
    localparam idle = 3'b000;
    localparam addr = 3'b001;
    localparam interm = 3'b010;
    localparam data = 3'b011;

    wire start, read, write;
    wire write_bus;
    assign start = (read | write);
    assign write = (zet_state == execu_st)? cpu_we_o : 1'b0;
    assign read =  (zet_state == fetch_st); // || ((zet_state == execu_st) && ~memalu);
    assign ad = (write_bus)? ((ale)? calculated_addr[7:0] : ((ctrl_fsm_state == addr)? ((bytes_transferred == 0)? lsb_o_q : ((bytes_transferred == 1)? msb_o_q : 8'bz)) : 8'bz )) : 8'bz;
     
    
    control_fsm ctrl_fsm (.clk(clk),
                          .rst(rst),
                          .start(start),
                          .read(read),
                          .write(write),
                          .bytes_transferred(bytes_transferred),
                          .write_bus(write_bus),
                          .ld_out_regs(ld_out_regs),
                          .ld_msb_i(ld_msb_i),
                          .ld_lsb_i(ld_lsb_i),
                          .ale(ale),
                          .den_n(den_n),
                          .wr_n(wr_n),
                          .rd_n(rd_n),
                          .dtr(dtr),
                          .cpu_block(cpu_block),
                          .state(ctrl_fsm_state)
                          );
    
    /* interrupt fsm */                     
    wire ld_intr; 
   
    interrupt_fsm intr_fsm (.clk(clk),
                            .rst(rst),
                            .intr(intr),
                            .ld_intr(ld_intr),
                            .inta_n(inta_n)
                           );
    
    /* hold fsm */
    hold_fsm hld_fsm (.clk(clk),
                      .rst(rst),
                      .hold(hold),
                      .hlda(hlda)
                     );
    
endmodule


module control_fsm
    (input clk, rst,
     input start,
     input read,
     input write,
     output [1:0] bytes_transferred,
     output reg write_bus,
     output reg ld_out_regs,
     output reg ld_msb_i,
     output reg ld_lsb_i,
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
    
    counter #(2) cnt (.clk(clk),
                      .rst(rst),
                      .inc(inc),
                      .clr(clr),
                      .count(bytes_transferred)
                     );
    
    assign data_tran_done = (bytes_transferred == 2'b10);
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
                if (read == 1)
                    next_state = interm;
                else if (write == 1)
                    next_state = data;
            end
            interm: next_state = data;
            data: begin
                if (~data_tran_done)
                    next_state = addr;
                else
                    next_state = idle;
            end
        endcase
    end
    
    always @( * ) begin
        ale = 0;
        dtr = 1'b1;
        rd_n = 1; 
        wr_n = 1;
        den_n = 1; 
        inc_count = 0;
        clr_count = 0; 
        ld_out_regs = 0;
        ld_lsb_i = 0; 
        ld_msb_i = 0;
        write_bus = 0;
        cpu_block = 0;
        case(state)
            idle: begin
                if (start) begin
                    cpu_block = 1;
                    ale = 1;
                    dtr = (write)? 1 : 0;
                    ld_out_regs = (write)? 1 : 0;
                    den_n = 1;
                    write_bus = 1;
                end
            end
            addr: begin
                cpu_block = 1;
                if (read) begin
                    dtr = 0;
                    rd_n = 0;
                end
                else if (write) begin
                    wr_n = 0;
                    dtr = 1;
                    inc_count = 1;
                    write_bus = 1;
                end
            end
            interm: begin
                rd_n = 0;
                dtr = 0;
                cpu_block = 1;
                inc_count = 1;
                ld_lsb_i = (bytes_transferred == 0);
                ld_msb_i = (bytes_transferred == 1);
            end
            data: begin
                if (~data_tran_done) begin
                    cpu_block = 1;
                    ale = 1;
                    den_n = 1;
                    write_bus = 1;
                    if (read) begin
                        rd_n = 0;
                        dtr = 0;
                    end
                    else if (write) begin
                        wr_n = 0;
                        dtr = 1;
                    end
                end
                else begin
                    cpu_block = 0;
                    dtr = 1'b1;
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
