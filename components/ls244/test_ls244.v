/*
 * test_ls244:
 * Tests the ls244 module
 */
module test_ls244;

   // signals
   reg [3:0] a1, a2;
   reg [1:0] g;
   wire      g1,g2,g1_n,g2_n;
   wire [3:0] ty1,ty2;
   reg [3:0]  gy1,gy2;
   integer    errors, i, j, k;

   // modification of signals
   assign g2 = g[1];
   assign g1 = g[0];
   assign g2_n = ~g2;
   assign g1_n = ~g1;
   
   // ls244 under test
   ls244 billy(
	       .a1(a1),
	       .a2(a2),
	       .y1(ty1),
	       .y2(ty2),
	       .g1_n(g1_n),
	       .g2_n(g2_n));
   
   // mock version of ls244
   always @(g1 or a1) begin
      if(g1 === 1'b1) begin
	 gy1 = a1;
      end
      else begin
	 gy1 = 4'bzzzz;
      end
   end
   always @(g2 or a2) begin
      if(g2 === 1'b1) begin
	 gy2 = a2;
      end
      else begin
	 gy2 = 4'bzzzz;
      end
   end

   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      a1 = 4'b0000;
      a2 = 4'b0000;
      g = 2'b00;
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
	       a1 = i;
	       a2 = j;
	       g = k;
	       #1;
	       if((ty1 !== gy1) | (ty2 !== gy2)) begin
		  $display("NO a1:%b a2:%b g:%b gy:%b%b ty:%b%b"
			   ,a1,a2,g,gy1,gy2,ty1,ty2);
		  errors = errors + 1;
	       end
	       else begin
		  $display("OK a1:%b a2:%b g:%b gy:%b%b ty:%b%b"
			   ,a1,a2,g,gy1,gy2,ty1,ty2);
	       end
	    end // for (k=0; k<4; k=k+1)
	 end // for (j=0; j<8; j=j+1)
      end // for (i=0; i<8; i=i+1)
      
      if(errors > 0) begin
	 $display("LS244 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS244 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_ls244

