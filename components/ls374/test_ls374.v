/*
 * test_ls374:
 * Tests the ls374 module by checking its output
 */
module test_ls374;

   // signals
   reg [3:0] d;
   wire [3:0] q;
   reg 	      g, oe_n;
   integer   i, errors;
   
   // ls373 under test
   ls374 billy(
               .d(d),
	       .q(q),
	       .g(g),
	       .oe_n(oe_n)
	       );
   
   // Run Tests
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      d = 4'b0;
      g = 1'b0;
      oe_n = 1'b0;
      i = 0;
      errors = 0;
      #1;
      
      // Run Z Test
      $display ("**********");
      $display ("Run Z Test");
      $display ("**********");
      #1;
      oe_n = 1'b1;
      #1;
      if(q !== 4'bzzzz) begin
	 $display("FAILURE: %b %b",d,q);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",d,q);
      end
      #1;
      oe_n = 1'b0;
      #1;
      
      // Run Load Test
      $display ("**************");
      $display ("Run Load Tests");
      $display ("**************");
      for(i=0; i<16; i=i+1) begin
	 #1;
	 d = i;
	 #1;
	 g = 1'b1;
	 #1;
	 g = 1'b0;
	 #1;
	 if(q !== d) begin
	    $display("FAILURE: %b %b",d,q);
	    errors = errors + 1;
	 end
	 else begin
	    $display("SUCCESS: %b %b",d,q);
	 end
	 #1;
      end // for (i=0; i<256; i=i+1)

      // Run Some Tests
      $display ("**********************");
      $display ("Finished Running Tests");
      $display ("**********************");
      if(errors > 0) begin
	 $display("LS374 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS374 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule