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
	      output sd_slave_read, // read from slave
	      input [7:0] sd_slave_readdata, // data from slave
	      output sd_slave_write, // write to fdd
	      output [7:0] sd_slave_writedata // data to fdd
	      );

   // Wires
   wire 		   read, write;
   
   // Registers
   reg [31:0] 		   r0, r4, r8, r12;
   
   // Assignments - based on assumptions, may have to modify later
   assign sd_slave_address = 9'b0; // not used by fdc
   assign sd_master_readdata = 31'd1; // always make mutex available
   assign sd_master_readdatavalid = 1'b1; // all data read is valid
   assign sd_master_waitrequest = 1'b0; // no need to wait on master
   assign read = (r12 == 32'd2); // Control Read
   assign write = (r12 == 32'd3); // Control Write
   
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
   
   // Block RAM

endmodule // sdcard
