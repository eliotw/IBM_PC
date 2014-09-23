/*
 * test_count4:
 * Tests the count4 module by checking its output
 */
module test_count4;

   // signals
   reg 	      clock,decin,bcd,load;
   reg [3:0]  numin;
   wire [3:0] numout;
   wire       decout, zero;
   integer    i, errors;
   
   // count4 under test
   count4 billy(
		.decin(decin),
		.numin(numin),
		.bcd(bcd),
		.zero(zero),
		.numout(numout),
		.decout(decout),
		.load(load),
		.clk(clock)
		);

   // Set Up Clock
   always begin
      #5 clock = ~clock;
   end

   // Run Tests
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      clock = 1'b0;
      decin = 1'b0;
      bcd = 1'b0;
      load = 1'b0;
      numin = 4'b0000;
      i = 0;
      errors = 0;
      #1;
      @(posedge clock);
      
      // Run Load Test
      $display ("*************");
      $display ("Run Load Test");
      $display ("*************");
      @(posedge clock);
      load = 1'b1;
      @(posedge clock);
      load = 1'b0;
      @(posedge clock);
      if((numout !== 4'b0000) || (zero !== 1'b1) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      @(posedge clock);
      
      // Run Binary Test
      $display ("***************");
      $display ("Run Binary Test");
      $display ("***************");
      @(posedge clock);
      decin = 1'b1;
      @(posedge clock);
      if((numout !== 4'b0000) || (zero !== 1'b1) || (decout !== 1'b1)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // f
      @(posedge clock);
      if((numout !== 4'hf) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // e
      @(posedge clock);
      if((numout !== 4'he) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // d
      @(posedge clock);
      if((numout !== 4'hd) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // c
      @(posedge clock);
      if((numout !== 4'hc) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // b
      @(posedge clock);
      if((numout !== 4'hb) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // a
      @(posedge clock);
      if((numout !== 4'ha) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 9
      @(posedge clock);
      if((numout !== 4'h9) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 8
      @(posedge clock);
      if((numout !== 4'h8) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 7
      @(posedge clock);
      if((numout !== 4'h7) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 6
      @(posedge clock);
      if((numout !== 4'h6) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 5
      @(posedge clock);
      if((numout !== 4'h5) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 4
      @(posedge clock);
      if((numout !== 4'h4) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 3
      @(posedge clock);
      if((numout !== 4'h3) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 2
      @(posedge clock);
      if((numout !== 4'h2) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 1
      @(posedge clock);
      if((numout !== 4'h1) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 0
      #1;
      if((numout !== 4'h0) || (zero !== 1'b1) || (decout !== 1'b1)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      decin = 1'b0;
      #1;
      @(posedge clock);
      if((numout !== 4'h0) || (zero !== 1'b1) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // done!
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);

      // Run BCD Test
      $display ("************");
      $display ("Run BCD Test");
      $display ("************");
      bcd = 1'b1;
      @(posedge clock);
      decin = 1'b1;
      @(posedge clock);
      if((numout !== 4'b0000) || (zero !== 1'b1) || (decout !== 1'b1)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 9
      @(posedge clock);
      if((numout !== 4'h9) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 8
      @(posedge clock);
      if((numout !== 4'h8) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 7
      @(posedge clock);
      if((numout !== 4'h7) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 6
      @(posedge clock);
      if((numout !== 4'h6) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 5
      @(posedge clock);
      if((numout !== 4'h5) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 4
      @(posedge clock);
      if((numout !== 4'h4) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 3
      @(posedge clock);
      if((numout !== 4'h3) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 2
      @(posedge clock);
      if((numout !== 4'h2) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 1
      @(posedge clock);
      if((numout !== 4'h1) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 0
      #1;
      if((numout !== 4'h0) || (zero !== 1'b1) || (decout !== 1'b1)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      decin = 1'b0;
      @(posedge clock);
      if((numout !== 4'h0) || (zero !== 1'b1) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // done!

      // Run Load Test Again
      $display ("*******************");
      $display ("Run Load Test Again");
      $display ("*******************");
      @(posedge clock);
      numin = 4'b1111;
      load = 1'b1;
      @(posedge clock);
      load = 1'b0;
      @(posedge clock);
      if((numout !== 4'b1111) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      @(posedge clock);
     
      // Run BCD Test Wrong Start
      $display ("************************");
      $display ("Run BCD Test Wrong Start");
      $display ("************************");
      @(posedge clock);
      decin = 1'b1;
      // f
      @(posedge clock);
      if((numout !== 4'hf) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // e
      @(posedge clock);
      if((numout !== 4'he) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // d
      @(posedge clock);
      if((numout !== 4'hd) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // c
      @(posedge clock);
      if((numout !== 4'hc) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // b
      @(posedge clock);
      if((numout !== 4'hb) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // a
      @(posedge clock);
      if((numout !== 4'ha) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 9
      @(posedge clock);
      if((numout !== 4'h9) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 8
      @(posedge clock);
      if((numout !== 4'h8) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 7
      @(posedge clock);
      if((numout !== 4'h7) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 6
      @(posedge clock);
      if((numout !== 4'h6) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 5
      @(posedge clock);
      if((numout !== 4'h5) || (zero !== 1'b0) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 4
      @(posedge clock);
      if((numout !== 4'h4) || (zero !== 1'b0) || (decout !== 1'b0)) begin
         $display("FAILURE: %b %b %b",numout,zero,decout);
         errors = errors + 1;
      end
      else begin
         $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 3
      @(posedge clock);
      if((numout !== 4'h3) || (zero !== 1'b0) || (decout !== 1'b0)) begin
         $display("FAILURE: %b %b %b",numout,zero,decout);
         errors = errors + 1;
      end
      else begin
         $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 2
      @(posedge clock);
      if((numout !== 4'h2) || (zero !== 1'b0) || (decout !== 1'b0)) begin
         $display("FAILURE: %b %b %b",numout,zero,decout);
         errors = errors + 1;
      end
      else begin
         $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 1
      @(posedge clock);
      if((numout !== 4'h1) || (zero !== 1'b0) || (decout !== 1'b0)) begin
         $display("FAILURE: %b %b %b",numout,zero,decout);
         errors = errors + 1;
      end
      else begin
         $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // 0
      #1;
      if((numout !== 4'h0) || (zero !== 1'b1) || (decout !== 1'b1)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      decin = 1'b0;
      @(posedge clock);
      if((numout !== 4'h0) || (zero !== 1'b1) || (decout !== 1'b0)) begin
	 $display("FAILURE: %b %b %b",numout,zero,decout);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b %b",numout,zero,decout);
      end
      // done!
      
      // Run Some Tests
      $display ("**********************");
      $display ("Finished Running Tests");
      $display ("**********************");
      if(errors > 0) begin
	 $display("COUNTER TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("COUNTER TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_count4
