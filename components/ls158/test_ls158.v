/*
 * test_ls158:
 * Tests the ls158 module
 */
module test_ls158;

   // signals
   reg [3:0] a, b;
   reg [1:0] c;
   wire      s, g;
   wire [3:0] ty;
   reg [3:0]  gy;
   integer    errors, i, j, k;

   // modification of signals
   assign s = c[0];
   assign g = c[1];
   
   // ls158 under test
   ls158 billy(
	       .a(a),
	       .b(b),
	       .y(ty),
	       .s(s),
	       .g(g)
	       );
      
   // mock version of ls158
   always @(a or b or s or g) begin
      if(g === 1'b0) begin
	 gy = 4'b0000;
      end
      else begin
	 if(s === 1'b1) begin
	    gy = b;
	 end
	 else begin
	    gy = a;
	 end
      end // else: !if(g === 1'b0)
   end

   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      a = 4'b0000;
      b = 4'b0000;
      c = 2'b00;
      i = 0;
      j = 0;
      k = 0;
      errors = 0;
      #1;
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<8; i=i+1) begin
	 for(j=0; j<8; j=j+1) begin
	    for(k=0; k<4; k=k+1) begin
	       #1;
	       a = i;
	       b = j;
	       c = k;
	       #1;
	       if(ty !== gy) begin
		  $display("NO a:%b b:%b c:%b gy:%b ty:%b",a,b,c,gy,ty);
		  errors = errors + 1;
	       end
	       else begin
		  $display("OK a:%b b:%b c:%b gy:%b ty:%b",a,b,c,gy,ty);
	       end
	    end // for (k=0; k<4; k=k+1)
	 end // for (j=0; j<8; j=j+1)
      end // for (i=0; i<8; i=i+1)
      
      if(errors > 0) begin
	 $display("LS158 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS158 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_ls158
