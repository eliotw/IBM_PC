/*
 * test_sdcard:
 * Perform a test of the sd card module
 */
module test_sdcard();

   // Registers
   reg clk, rst;
   reg [31:0] sd_master_address,sd_master_writedata;
   reg 	      sd_master_read,sd_master_write;
   reg [7:0]  sd_slave_readdata;

   // Wires
   wire [31:0] sd_master_waitrequest,sd_master_readdata;
   wire        sd_master_readdatavalid,sd_slave_read,sd_slave_write;
   wire [8:0]  sd_slave_address,sd_slave_writedata;

   // SD Card Module
   sdcard sd1(
	      .clk(clk),
	      .rst(rst),
	      .sd_master_address(sd_master_address),
	      .sd_master_waitrequest(sd_master_waitrequest),
	      .sd_master_read(sd_master_read),
	      .sd_master_readdatavalid(sd_master_readdatavalid), 
	      .sd_master_readdata(sd_master_readdata),
	      .sd_master_write(sd_master_write),
	      .sd_master_writedata(sd_master_writedata),
	      .sd_slave_address(sd_slave_address),
	      .sd_slave_read(sd_slave_read),
	      .sd_slave_readdata(sd_slave_readdata),
	      .sd_slave_write(sd_slave_write),
	      .sd_slave_writedata(sd_slave_writedata)
	      );

   // Clock
   always begin
      #5 clk = ~clk;   
   end

   
endmodule // test_sdcard
