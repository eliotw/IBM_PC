/*
 * test_ls280:
 * Tests the ls280 module by checking that it does parity correctly
 */
module test_ls280;

   // signals
   reg [8:0] num;
   wire      odd_g, even_g, odd_t, even_t;
   integer   i, errors;
   
   // find odd and even parity
   assign odd_g = num[0] ^ num[1] ^ num[2] ^ num[3] ^ num[4] ^ num[5] ^ num[6] ^ num[7] ^ num[8];
   assign even_g = ~odd_g;
   
   // ls280 under test
   ls280 billy(
	       .a(num[0]),
	       .b(num[1]),
	       .c(num[2]),
	       .d(num[3]),
	       .e(num[4]),
	       .f(num[5]),
	       .g(num[6]),
	       .h(num[7]),
	       .i(num[8]),
	       .odd(odd_t),
	       .even(even_t)
	       );

   // Run Tests
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      num = 9'b0;
      errors = 0;
      #1;
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<512; i=i+1) begin
	 #1;
	 num = i;
	 #1;
	 if((even_g !== even_t) | (odd_g !== odd_t)) begin
	    $display("NO %b %b %b %b",even_g,even_t,odd_g,odd_t);
	    errors = errors + 1;
	 end
	 else begin
	    $display("OK %b %b %b %b",even_g,even_t,odd_g,odd_t);
	 end
      end // for (i=0; i<256; i=i+1)
      if(errors > 0) begin
	 $display("LS280 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS280 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule