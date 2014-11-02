/*
 * test_debounce:
 * Perform a test of the debounce module
 */
module test_debounce();

   // Registers
   reg clk, rst;
   
   // Wires
   wire        drst;
   
   // Integers
   integer     i, errors;

   // Debounce Module
   debounce deb(
	        .clk(clk), // clock signal
	        .rst(rst), // reset signal from button
	        .drst(drst) // debounced reset signal
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
      i = 0;
      errors = 0;
      
      // Test Off
      @(posedge clk);
      $display("Test Off State");
      for(i = 0; i < 1024; i = i + 1) begin
	 @(posedge clk);
	 if(drst !== 1'b0) begin
	    $display("NOT 0");
	    errors = errors + 1;
	 end
      end
      @(posedge clk);

      // Test Begin On
      @(posedge clk);
      $display("Test Begin On State");
      rst = 1'b1;
      for(i = 0; i < 1024; i = i + 1) begin
	 @(posedge clk);
	 if(drst !== 1'b0) begin
	    $display("NOT 0");
	    errors = errors + 1;
	 end
      end
      @(posedge clk);

      // Test On State
      @(posedge clk);
      $display("Test On State");
      rst = 1'b0;
      @(posedge clk);
      if(drst !== 1'b0) begin
         $display("NOT 0");
         errors = errors + 1;
      end      
      @(posedge clk);
      if(drst !== 1'b1) begin
	 $display("NOT 1");
	 errors = errors + 1;
      end
      @(posedge clk);
      if(drst !== 1'b1) begin
	 $display("NOT 1");
	 errors = errors + 1;
      end
      @(posedge clk);
      if(drst !== 1'b0) begin
	 $display("NOT 0");
	 errors = errors + 1;
      end
      @(posedge clk);
      if(drst !== 1'b0) begin
	 $display("NOT 0");
	 errors = errors + 1;
      end
      @(posedge clk);
      
      
      // Conclude Simulation
      @(posedge clk);
      if(errors > 0) begin
	 $display("DEBOUNCE TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("DEBOUNCE TEST SUCCESS");
      end
      $finish();
   end
   
endmodule // test_debounce

