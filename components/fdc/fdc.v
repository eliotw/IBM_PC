/*
 * fdc:
 * The wrapper for the floppy disk controller and sd card
 */
module fdc(
	   input clk, // system clock
	   input rst, // system reset
	   output irq6, // irq number 6
	   output drq2, // drq number 2
	   input dack2, // drq acknowledge 2
	   input tc, // terminal count
	   input ior_n, // io read
	   input iow_n, // io write
	   inout [19:0] a, // address
	   inout [7:0] d, // data
	   // more stuff to come!
	   );

   // Wires
   wire 	 rst_n; // Reset inverted
   wire [7:0] 	 dma_floppy_writedata; // ???
   wire 	 ior, iow; // IO read and write
   wire [7:0]	 io_readdata; // ???
   wire 	 ide_3f6_read; // ???
   wire 	 ide_3f6_write; // ???
   wire [7:0] 	 ide_3f6_writedata; // ???
   wire 	 inrange; // Is the data in range check
   wire [2:0] 	 io_address; // IO Address
   wire [7:0] 	 io_writedata; // IO Write Data
   wire [7:0] 	 dma_floppy_readdata; // DMA to Floppy Data
   wire [7:0] 	 ide_3f6_readdata; // IDE Data
   wire [3:0] 	 mgmt_address; // management address
   wire 	 mgmt_write; // management write
   wire [31:0] 	 mgmt_writedata; // management write data
   wire [31:0] 	 sd_master_address; // sd master address
   wire 	 sd_master_waitrequest; // sd master wait request
   wire 	 sd_master_read; // sd master read
   wire 	 sd_master_readdatavalid; // sd master read data valid
   wire [31:0] 	 sd_master_readdata; // sd master read data
   wire 	 sd_master_write; // sd master write
   wire [31:0] 	 sd_master_writedata; // sd master write data
   wire [8:0] 	 sd_slave_address; // sd slave address
   wire 	 sd_slave_read; // sd slave read
   wire [7:0] 	 sd_slave_readdata; // sd slave read data
   wire 	 sd_slave_write; // sd slave write
   wire [7:0] 	 sd_slave_writedata; // sd slave write data
   
   // Assignments
   assign inrange = (a >= 20'h3f0) & (a <= 20'h3ff);
   assign rst_n = ~rst;
   assign ior = ~ior_n & inrange;
   assign iow = ~iow_n & inrange;
   assign io_address = a[2:0];
   assign io_writedata = d;
   assign dma_floppy_readdata = d;
   assign ide_3f6_readdata = d;
   assign mgmt_address = 4'b0000;
   assign mgmt_write  = 1'b0;
   assign mgmt_writedata = 32'd0;
   
   // Floppy Disk Controller
   floppy fdd(
              .clk(clk), // clk
              .rst_n(rst_n), // rst_n
              .dma_floppy_req(drq2), // drq2
              .dma_floppy_ack(dack2), // dack2
              .dma_floppy_terminal(tc), // tc
              .dma_floppy_readdata(dma_floppy_readdata), // dma to floppy data
              .dma_floppy_writedata(dma_floppy_writedata), // ?
	      .irq(irq6), // irq6
              .io_address(io_address), // io address
              .io_read(ior), // ior
              .io_readdata(io_readdata), // ?
              .io_write(iow), // iow
              .io_writedata(io_writedata), // io writedata
	      .ide_3f6_read(ide_3f6_read), // ?
              .ide_3f6_readdata(ide_3f6_readdata), // ide data
              .ide_3f6_write(ide_3f6_write), // ?
              .ide_3f6_writedata(ide_3f6_writedata), // ?
              .sd_master_address(sd_master_address), // sd
              .sd_master_waitrequest(sd_master_waitrequest), // sd
              .sd_master_read(sd_master_read), // sd
              .sd_master_readdatavalid(sd_master_readdatavalid), // sd
              .sd_master_readdata(sd_master_readdata), // sd
              .sd_master_write(sd_master_write), // sd
              .sd_master_writedata(sd_master_writedata), // sd
              .sd_slave_address(sd_slave_address), // sd
              .sd_slave_read(sd_slave_read), // sd
              .sd_slave_readdata(sd_slave_readdata), // sd
              .sd_slave_write(sd_slave_write), // sd
              .sd_slave_writedata(sd_slave_writedata), // sd
              .mgmt_address(mgmt_address),  // sd
              .mgmt_write(mgmt_write), // sd
              .mgmt_writedata(mgmt_writedata) // sd
	      );
   
   
   // SD Card
   sdcard sd1(
              .clk(clk), // clock
              .rst(rst), // reset
              .sd_master_address(sd_master_address), // master address
              .sd_master_waitrequest(sd_master_waitrequest), // sd
              .sd_master_read(sd_master_read), // read from address
              .sd_master_readdatavalid(sd_master_readdatavalid), // sd
              .sd_master_readdata(sd_master_readdata), // data from address 
              .sd_master_write(sd_master_write), // write to address 
              .sd_master_writedata(sd_master_writedata), // data to address 
              .sd_slave_address(sd_slave_address), // not used 
              .sd_slave_read(sd_slave_read), // read from slave 
              .sd_slave_readdata(sd_slave_readdata), // data from slave 
              .sd_slave_write(sd_slave_write), // write to fdd 
              .sd_slave_writedata(sd_slave_writedata) // data to fdd 
	      );
   
endmodule // fdc