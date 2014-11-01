/*
 * test_fdc:
 * Perform a test of the fdc
 */
module test_fdc();

   // Registers
   reg clk, rst;
   reg dack2_n, tc, ior_n, iow_n, aen;
   
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
