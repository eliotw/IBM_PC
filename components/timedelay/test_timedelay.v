/*
 * test_timedelay:
 * Tests the timedelay module by checking its output
 */
module test_timedelay;

   // signals
   reg clock, rst, in;
   wire t5,t25,t50,t75,t100,t125;
   wire [5:0] t;
   integer   i, errors;
   
   // timedelay under test
   timedelay billy(
		   .in(in),
		   .clk(clock),
		   .rst(rst),
		   .t5(t5),
		   .t25(t25),
		   .t50(t50),
		   .t75(t75),
		   .t100(t100),
		   .t125(t125)
		   );
   
   // Set Up Clock
   always begin
      #5 clock = ~clock;
   end

   // Assign time vector
   assign t = {t125,t100,t75,t50,t25,t5};
   
   // Bus monitor
   always @(t or in) begin
      $display($time," Monitor: %b %b",t,in);
   end
   
   // Run Tests
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      clock = 1'b0;
      rst = 1'b0;
      in = 1'b0;
      i = 0;
      errors = 0;
      #1;
      @(posedge clock);
      
      // Run Reset Test
      $display ("**************");
      $display ("Run Reset Test");
      $display ("**************");
      @(posedge clock);
      rst = 1'b1;
      @(posedge clock);
      rst = 1'b0;
      @(posedge clock);
      if(t !== 6'b000000) begin
	 $display("FAILURE: %b",t);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",t);
      end
      @(posedge clock);
      
      // Run Regular Test
      $display ("****************");
      $display ("Run Regular Test");
      $display ("****************");
      @(posedge clock);
      in = 1'b1;
      // 5
      @(posedge clock);
      if(t !== 6'b000001) begin
	 $display("FAILURE: %b",t);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",t);
      end
      // 10
      @(posedge clock);
      // 15
      @(posedge clock);
      // 20
      @(posedge clock);
      // 25
      @(posedge clock);
      if(t !== 6'b000011) begin
	 $display("FAILURE: %b",t);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",t);
      end
      // 30
      @(posedge clock);
      // 35
      @(posedge clock);
      // 40
      @(posedge clock);
      // 45
      @(posedge clock);
      // 50
      @(posedge clock);
      if(t !== 6'b000111) begin
	 $display("FAILURE: %b",t);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",t);
      end
      // 55
      @(posedge clock);
      // 60
      @(posedge clock);
      // 65
      @(posedge clock);
      // 70
      @(posedge clock);
      // 75
      @(posedge clock);
      if(t !== 6'b001111) begin
	 $display("FAILURE: %b",t);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",t);
      end
      // 80
      @(posedge clock);
      // 85
      @(posedge clock);
      // 90
      @(posedge clock);
      // 95
      @(posedge clock);
      // 100
      @(posedge clock);
      if(t !== 6'b011111) begin
	 $display("FAILURE: %b",t);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",t);
      end
      // 105
      @(posedge clock);
      // 110
      @(posedge clock);
      // 115
      @(posedge clock);
      // 120
      @(posedge clock);
      // 125
      @(posedge clock);
      if(t !== 6'b111111) begin
	 $display("FAILURE: %b",t);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",t);
      end
      // 130
      @(posedge clock);

      // Finish Up Tests
      $display ("**********************");
      $display ("Finished Running Tests");
      $display ("**********************");
      if(errors > 0) begin
	 $display("TIME DELAY TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("TIME DELAY TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_timedelay
