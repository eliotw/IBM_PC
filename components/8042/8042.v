/*
 * ls138:
 * This module is an 8-bit decoder
 */
module ls138(
	     a, b, c,
	     g2b, g2a,
	     g1,
	     y
	     );

   output [7:0] y;
   input 	a, b, c, g2b, g2a, g1;

   reg [7:0] 	y;
   wire 	g2;
   wire [2:0] 	d;
   
   assign d = {c,b,a};
   assign g2 = g2a | g2b;

   always @(g1 or g2 or d) begin
      // If g1 is high and g2 low, operate as decoder
      if((g1 === 1'b1) && (g2 === 1'b0)) begin
	 case(d)
	   0: y = 8'b11111110;
	   1: y = 8'b11111101;
	   2: y = 8'b11111011;
	   3: y = 8'b11110111;
	   4: y = 8'b11101111;
	   5: y = 8'b11011111;
	   6: y = 8'b10111111;
	   7: y = 8'b01111111;
	   default: y = 8'b11111111;
	 endcase // case (d)
      end // if ((g1 === 1'b1) and (g2 === 1'b0))
      // otherwise, output high on all bits
      else begin
	 y = 8'b11111111;
      end
   end
   
endmodule // ls138
