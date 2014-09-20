/*
 * ls158:
 * Quadruple 2-line to 1-line data selectors/multiplexers
 */
module ls158(
	     a,
	     b,
	     y,
	     s,
	     g
	     );

   input [3:0] a, b;
   input       s, g;
   output [3:0] y;

   reg [3:0] 	y;

   always @(a or b or s or g) begin
      if(g === 1'b0) begin
	 y = 4'b0000;
      end
      else begin
	 if(s === 1'b1) begin
	    y = b;
	 end
	 else begin
	    y = a;
	 end
      end // else: !if(g === 1'b0)
   end // always @ (a or b or s or g)
   
endmodule // ls158
