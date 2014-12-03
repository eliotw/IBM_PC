/*
 * sdcard:
 * Verilog description of module that mimics the SD card reader in the ao486
 * floppy disk file
 */

module sdcard(
	      input clk, // clock
	      input rst, // reset
	      input [31:0] sd_master_address, // master address .
	      output sd_master_waitrequest, // master wants you to wait .
	      input sd_master_read, // read from address .
	      output sd_master_readdatavalid, // just set to one .
	      output [31:0] sd_master_readdata, // data from address .
	      input sd_master_write, // write to address .
	      input [31:0] sd_master_writedata, // data to address .
	      output [8:0] sd_slave_address, // not used .
	      output reg sd_slave_read, // read from slave .
	      input [7:0] sd_slave_readdata, // data from slave . 
	      output reg sd_slave_write, // write to fdd .
	      output [7:0] sd_slave_writedata // data to fdd . 
	      );

   // Remember, there are 512 bytes per sector, 2^9
   // There can be a max of 2880 sectors, 2^12
   // On the SD card? because a floppy should only have 8 sectors

   // Parameters
   parameter [3:0] id = 4'b0001,
		wr = 4'b0010,
		rd = 4'b0100,
		ed = 4'b1000;
   
   // Wires
   wire [20:0] 		   sector_address;
   
   // Registers
   reg [31:0] 		   r0, r4, r8, r12;
   reg [8:0] 		   sector_counter, nextcount;
   reg 			   wea;
   reg [3:0] 		   state, nextstate;

   // Initial conditions
   initial begin
      sd_slave_read = 1'b0;
      sd_slave_write = 1'b0;
      r0 = 32'd0;
      r4 = 32'd0;
      r8 = 32'd0;
      r12 = 32'd0;
      sector_counter = 9'd0;
      nextcount = 9'd0;
      wea = 1'b0;
      state = id;
      nextstate = id;
   end
   
   // Assignments - based on assumptions, may have to modify later
   assign sd_slave_address = sector_counter; // not used by fdc, here for debug
   assign sd_master_readdata = 32'd1; // always make mutex available
   assign sd_master_readdatavalid = 1'b1; // all data read is valid
   assign sd_master_waitrequest = 1'b0; // no need to wait on master
   assign sector_address = {r4[11:0],sector_counter}; // location
   
   // Register R0 - Avalon Base
   always @(posedge clk, posedge rst) begin
      if(rst == 1'b1) begin
	 r0 <= 32'b0;
      end
      else if(sd_master_write & (sd_master_address == 32'd0)) begin
	 r0 <= sd_master_writedata;
      end
      else begin
	 r0 <= r0;
      end
   end // always @ (posedge clk, posedge rst)

   // Register R4 - Address of sector
   always @(posedge clk, posedge rst) begin
      if(rst == 1'b1) begin
	 r4 <= 32'b0;
      end
      else if(sd_master_write & (sd_master_address == 32'd4)) begin
	 r4 <= sd_master_writedata;
      end
      else begin
	 r4 <= r4;
      end
   end // always @ (posedge clk, posedge rst)

   // Register R8 - Block Count
   always @(posedge clk, posedge rst) begin
      if(rst == 1'b1) begin
	 r8 <= 32'b0;
      end
      else if(sd_master_write & (sd_master_address == 32'd8)) begin
	 r8 <= sd_master_writedata;
      end
      else begin
	 r8 <= r8;
      end
   end // always @ (posedge clk, posedge rst)

   // Register R12 - Control
   always @(posedge clk, posedge rst) begin
      if(rst == 1'b1) begin
	 r12 <= 32'b0;
      end
      else if(sd_master_write & (sd_master_address == 32'd12)) begin
	 r12 <= sd_master_writedata;
      end
      else begin
	 r12 <= r12;
      end
   end // always @ (posedge clk, posedge rst)

   // FSM and Counter
   always @(posedge clk, posedge rst) begin
      if(rst == 1'b1) begin
	 sector_counter <= 9'd0;
	 state <= id;
      end
      else begin
	 sector_counter <= nextcount;
	 state <= nextstate;
      end // else: !if(rst == 1'b1)
   end

   // FSM Next State Logic
   always @(state 
	    or sd_master_write 
	    or sd_master_address
	    or sd_master_writedata
	    or sector_counter) begin
      case (state)
	id: begin
	   nextcount = 9'd0;
	   wea = 1'b0;
	   sd_slave_read = 1'b0;
	   sd_slave_write = 1'b0;
	   if(sd_master_write & (sd_master_address == 32'd12)) begin
	      if(sd_master_writedata == 32'd2) begin
		 nextstate = rd;
	      end
	      else if(sd_master_writedata == 32'd3) begin
		 nextstate = wr;
	      end
	      else begin
		 nextstate = id;
	      end
	   end
	   else begin
	      nextstate = id;
	   end
	end
	rd: begin
	   nextcount = sector_counter + 1;
	   wea = 1'b0;
	   sd_slave_read = 1'b0;
	   sd_slave_write = 1'b1;
	   if(sector_counter == 9'd511) begin
	      nextstate = ed;
	   end
	   else begin
	      nextstate = rd;
	   end
	end
	wr: begin
	   nextcount = sector_counter + 1;
	   wea = 1'b1;
	   sd_slave_read = 1'b1;
	   sd_slave_write = 1'b0;
	   if(sector_counter == 9'd511) begin
	      nextstate = ed;
	   end
	   else begin
	      nextstate = wr;
	   end
	end
	ed: begin
	   nextcount = 9'd0;
	   wea = 1'b0;
	   sd_slave_read = 1'b0;
	   sd_slave_write = 1'b0;
	   nextstate = id;
	end
	default: begin
	   nextcount = 9'd0;
	   wea = 1'b0;
	   sd_slave_read = 1'b0;
	   sd_slave_write = 1'b0;
	   nextstate = id;
	end
      endcase // case (state)
   end // always @ (*)
   
   // Block RAM
   fakeramcore central_ram_core (
				 .clka(clk), // input clka
				 .wea(wea), // input [0 : 0] wea
				 .addra(sector_address), // input [20:0] addra
				 .dina(sd_slave_readdata), // input [7:0] dina
				 .douta(sd_slave_writedata) // out [7:0] douta
				 );
    
endmodule // sdcard

/*
 * fakeramcore:
 * A synthesis substitute for actual coregen ram
 */
module fakeramcore(
		   input clka,
		   input wea,
		   input [20:0] addra,
		   input [7:0] dina,
		   output reg [7:0] douta
		   );
   
   reg [7:0] 			reg_array [2097151:0]; //? I'm confused

   integer 			i;

   initial begin
      for(i = 0; i < 2097152; i = i + 1 ) begin
	 reg_array[i] <= 8'b11111111;
      end
   end

   always @(posedge clka) begin
      if(wea == 1'b1) begin
	 reg_array[addra] <= dina;
      end
      
      douta = reg_array[addra];
   end // always @ (posedge(clk))
   
endmodule // fakeramcore

		   
