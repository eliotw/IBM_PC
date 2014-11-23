/*
 * test_75477:
 * Tests the 75477 module
 */
module test_75477;

   // signals
   reg [1:0] a;
   wire [1:0] gy;
   reg 	      s;
   wire [1:0] ty;
   integer    errors, i;
      
   // 75477 under test
   sn75477 billy(.s(s),.a(a),.y(ty));

   // golden conditions
   assign gy[0] = ~(a[0] & s);
   assign gy[1] = ~(a[1] & s);
   
   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      s = 1'b0;
      a = 2'b0;
      errors = 0;
      #1;
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<4; i=i+1) begin
	 #1;
	 s = 1'b0;
	 a = i;
	 #1;
	 if(ty !== gy) begin
	    $display("NO a:%b s:%b gy:%b ty:%b",a,s,gy,ty);
	    errors = errors + 1;
	 end
	 else begin
	    $display("OK a:%b s:%b gy:%b ty:%b",a,s,gy,ty);
	 end
	 #1;
	 s = 1'b1;
	 a = i;
	 #1;
	 if(ty !== gy) begin
	    $display("NO a:%b s:%b gy:%b ty:%b",a,s,gy,ty);
	    errors = errors + 1;
	 end
	 else begin
	    $display("OK a:%b s:%b gy:%b ty:%b",a,s,gy,ty);
	 end
      end // for (i=0; i<256; i=i+1)
      if(errors > 0) begin
	 $display("75477 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("75477 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_75477
