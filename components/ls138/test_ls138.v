/*
 * test_ls138:
 * Tests the ls138 module
 */
module test_ls138;

   // signals
   reg [2:0] d,g;
   wire      a,b,c,g2,g1,g2a,g2b;
   wire [7:0] ty;
   reg [7:0]  gy;
   integer    errors, i, j;

   // assign input vector
   assign a = d[0];
   assign b = d[1];
   assign c = d[2];
   assign g1 = g[0];
   assign g2a = g[1];
   assign g2b = g[2];
   assign g2 = g2a | g2b;
   
   // ls138 under test
   ls138 billy(
	       .a(a), 
	       .b(b),
	       .c(c),
	       .g2b(g2b),
	       .g2a(g2a),
	       .g1(g1),
	       .y(ty)
	       );
      
   // mock version of ls138
   always @(d or g2 or g1) begin
      if((g1 === 1'b1) && (g2 === 1'b0)) begin
	 case(d)
	   0: gy = 8'b11111110;
	   1: gy = 8'b11111101;
	   2: gy = 8'b11111011;
	   3: gy = 8'b11110111;
	   4: gy = 8'b11101111;
	   5: gy = 8'b11011111;
	   6: gy = 8'b10111111;
	   7: gy = 8'b01111111;
	   default: gy = 8'b11111111;
	 endcase // case (d)
      end
      else begin
	 gy = 8'b11111111;
      end
   end

   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      g = 3'b000;
      d = 3'b000;
      i = 0;
      j = 0;
      errors = 0;
      #1;
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<8; i=i+1) begin
	 for(j=0; j<8; j=j+1) begin
	    #1;
	    g = i;
	    d = j;
	    #1;
	    if(ty !== gy) begin
	       $display("NO g:%b d:%b gy:%b ty:%b",g,d,gy,ty);
	       errors = errors + 1;
	    end
	    else begin
	       $display("OK g:%b d:%b gy:%b ty:%b",g,d,gy,ty);
	    end
	 end // for (j=0; j<8; j=j+1)
      end // for (i=0; i<8; i=i+1)
      
      if(errors > 0) begin
	 $display("LS138 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS138 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_ls138

