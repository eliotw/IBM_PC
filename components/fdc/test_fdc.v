/*
 * test_fdc:
 * Perform a test of the fdc
 */
module test_fdc();

   // Registers
   reg clk, rst;
   reg dack2_n, tc, ior_n, iow_n, aen;
   reg [7:0] test_MSR, data; //check main status register, data
   
   // Wires
   wire irq6, drq2;
   wire [19:0] a;
   wire [7:0]  d;
   
   // Integers
   integer     i, j, errors;
   
   // FDC Module
   fdc fzero(
             .clk(clk), // system clock
             .rst(rst), // system reset
             .irq6(irq6), // irq number 6
             .drq2(drq2), // drq number 2
             .dack2_n(dack2_n), // drq acknowledge 2
             .tc(tc), // terminal count
             .ior_n(ior_n), // io read
             .iow_n(iow_n), // io write
             .a(a), // address
             .d(d), // data
             .aen(aen) // address enable
	     );
   
   // Clock
   always begin
      #5 clk = ~clk;   
   end

   // Test Routine
   initial begin
      // Set Up Systems
      clk = 1'b0;
      rst = 1'b0;
      testMSR = 8'hE0; //Testing initial Main status register (hypothetically should be this)
      dack2_n = 1'b1;
      tc = 1'b0;
      ior_n = 1'b1;
      iow_n = 1'b1;
      aen = 1'b0;
      #1;
      rst = 1'b1;
      #1;
      rst = 1'b0;
      #1;
      ior_n = 1'b0;
      a = 20'h34f;
      @(posedge clk);
      errors = errors + (d != testMSR); //should be right
      $display(d); // on off chance it isn't testMSR, find out what it is
      @(posedge clk);
      
      //Test a read command -> Make this a Task? as well as other commands?
      ior_n = 1'b1;
      iow_n = 1'b0; //writing to data register
      a = 20'h35f; //address of data register (check and see if flipped f and 5)
      d = 8'h06; //check SK, need to find my notes
      @(posedge clk);
      d = 8'h01; //check HD,US0,US1 again
      @(posedge clk);
      d = 8'h; //image check (specific data from SD card) -> track
      @(posedge clk);
      d = 8'h; //image check (specific data from SD card) -> head
      @(posedge clk);
      d = 8'h; //image check (specific data from SD card) -> Section Number
      @(posedge clk);
      d = 8'h02; //image check (specific data from SD card) -> N (Constant)
      @(posedge clk);
      d = 8'h; //image check (specific data from SD card) -> EOT (final sector number for track)
      @(posedge clk);
      d = 8'h2A; //image check (specific data from SD card) -> GPL (gap length) (check what GPL R/W means)
      @(posedge clk);
      d = 8'h; //image check (specific data from SD card) -> DTL (Data length)
      @(posedge clk);
      iow_n = 1'b1; // (no more writing to FDC, Execution state)
      a = 20'h34f; //checking that everything is working (status register)
      ior_n = 1'b0; //reading
      testMSR = 8'b00; //need to check what it should be
      @(posedge clk);
      errors = errors + (d != testMSR); //should be right
      $display(d); // on off chance it isn't testMSR, find out what it is
      //Check evaluation # of clock cycles
      @(posedge clk);
      ior_n = 1'b0;
      a = 20'h35f;
      testData = 8'h; //ST0
      @(posedge clk);
      errors = errors + (d != testData); //should be right
      $display(d); // on off chance it isn't testData, find out what it is
      #1 testData = 8'h; //ST1
      @(posedge clk);
      errors = errors + (d != testData); //should be right
      $display(d); // on off chance it isn't testData, find out what it is
      #1 testData = 8'h; //ST2
      @(posedge clk);
      errors = errors + (d != testData); //should be right
      $display(d); // on off chance it isn't testData, find out what it is
      #1 testData = 8'h; //Track #
      @(posedge clk);
      errors = errors + (d != testData); //should be right
      $display(d); // on off chance it isn't testData, find out what it is
      #1 testData = 8'h; //H
      @(posedge clk);
      errors = errors + (d != testData); //should be right
      $display(d); // on off chance it isn't testData, find out what it is
      #1 testData = 8'h; //Sector Number
      @(posedge clk);
      errors = errors + (d != testData); //should be right
      $display(d); // on off chance it isn't testData, find out what it is
      #1 testData = 8'h02; //N
      @(posedge clk);
      errors = errors + (d != testData); //should be right
      $display(d); // on off chance it isn't testData, find out what it is
      //end Read Command
      
      
      
      // Conclude Simulation
      @(posedge clk);
      if(errors > 0) begin
	 $display("FDC TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("FDC TEST SUCCESS");
      end
      $finish();
   end
   
endmodule // test_sdcard
