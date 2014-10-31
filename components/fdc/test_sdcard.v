/*
 * test_sdcard:
 * Perform a test of the sd card module
 */
module test_sdcard();

   // Registers
   reg clk, rst;
   reg [31:0] sd_master_address,sd_master_writedata;
   reg 	      sd_master_read,sd_master_write;
   reg [7:0]  sd_slave_readdata,i8;

   // Wires
   wire        sd_master_waitrequest;
   wire [31:0] sd_master_readdata;
   wire        sd_master_readdatavalid,sd_slave_read,sd_slave_write;
   wire [8:0]  sd_slave_address;
   wire [7:0]  sd_slave_writedata;

   // Integers
   integer     i, errors;
   
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

   always @(i) begin
      i8 = i;
   end
   
   // Test Routine
   initial begin
      // Set Up Systems
      clk = 1'b0;
      rst = 1'b0;
      sd_master_address = 32'd0;
      sd_master_writedata = 32'd0;
      sd_master_read = 1'b0;
      sd_master_write = 1'b0;
      sd_slave_readdata = 8'd0;
      i = 0;
      errors = 0;
      #1;
      rst = 1'b1;
      #1;
      rst = 1'b0;
      #1;

      // Test Mutex
      @(posedge clk);
      $display("Perform Mutex Test");
      @(posedge clk);
      if(sd_master_readdata !== 32'd1) begin
	 $display("Mutex Not 1");
	 errors = errors + 1;
      end

      // Test Wait Request
      @(posedge clk);
      $display("Perform Wait Request Test");
      @(posedge clk);
      if(sd_master_waitrequest !== 1'd0) begin
	 $display("Wait Request Not 1");
	 errors = errors + 1;
      end

      // Test Read Data Valid
      @(posedge clk);
      $display("Perform Read Data Valid Test");
      @(posedge clk);
      if(sd_master_readdatavalid !== 1'd1) begin
	 $display("Read Data Valid Not 0");
	 errors = errors + 1;
      end
      
      // Basic Write Test
      @(posedge clk);
      $display("Perform Basic Write Test");
      @(posedge clk);
      sd_master_address = 32'd4;
      sd_master_writedata = 32'd1;
      sd_master_write = 1'b1;
      @(posedge clk);
      sd_master_address = 32'd12;
      sd_master_writedata = 32'd3;
      sd_master_write = 1'b1;
      sd_slave_readdata = 8'd0;
      @(posedge clk);
      if(sd_slave_read !== 1'b0) begin
	 $display("Not Initially Writing Properly");
	 errors = errors + 1;
      end
      sd_master_address = 32'd0;
      sd_master_writedata = 32'd0;
      sd_master_write = 1'b0;
      sd_slave_readdata = 8'd0;
      @(posedge clk);
      for(i = 0; i < 512; i = i + 1) begin
	 sd_slave_readdata = i;
	 if(sd_slave_read !== 1'b1) begin
	    $display("Not Writing Properly at %d",i);
	    errors = errors + 1;
	 end
	 sd_slave_readdata = i;
	 @(posedge clk);
      end
      if(sd_slave_read !== 1'b0) begin
	 $display("Not Finally Writing Properly");
	 errors = errors + 1;
      end
      
      // Basic Read Test
      @(posedge clk);
      $display("Perform Basic Read Test");
      @(posedge clk);
      sd_master_address = 32'd4;
      sd_master_writedata = 32'd1;
      sd_master_write = 1'b1;
      @(posedge clk);
      sd_master_address = 32'd12;
      sd_master_writedata = 32'd2;
      sd_master_write = 1'b1;
      sd_slave_readdata = 8'd0;
      @(posedge clk);
      if(sd_slave_write !== 1'b0) begin
	 $display("Not Initially Reading Properly");
	 errors = errors + 1;
      end
      sd_master_address = 32'd0;
      sd_master_writedata = 32'd0;
      sd_master_write = 1'b0;
      sd_slave_readdata = 8'd0;
      @(posedge clk);
      for(i = 0; i < 512; i = i + 1) begin
	 if(sd_slave_write !== 1'b1) begin
	    $display("Not Reading Properly at %d",i);
	    errors = errors + 1;
	 end
	 if(sd_slave_writedata !== i8) begin
	    $display("Wrong Data Back I: %d D: %d",i8,sd_slave_writedata);
	    errors = errors + 1;
	 end
	 @(posedge clk);
      end // for (i = 0; i < 512; i = i + 1)
      if(sd_slave_write !== 1'b0) begin
	 $display("Not Finally Reading Properly");
	 errors = errors + 1;
      end
      
      
      // Conclude Simulation
      @(posedge clk);
      if(errors > 0) begin
	 $display("SD CARD TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("SD CARD TEST SUCCESS");
      end
      $finish();
   end
   
endmodule // test_sdcard
