/*
 * ls244:
 * The ls244 module is an octal buffer and line driver with tristate output
 */
module ls244(
	     a1,
	     a2,
	     y1,
	     y2,
	     g1_n,
	     g2_n);

   input [3:0] a1,a2;
   inout [3:0] y1,y2;
   input       g1_n, g2_n;

   reg [3:0]   y1,y2;
   wire        g1, g2;

   assign g1 = ~g1_n;
   assign g2 = ~g2_n;

   always @(g1 or a1) begin
      if(g1 === 1'b1) begin
	 y1 = a1;
      end
      else begin
	 y1 = 4'bzzzz;
      end
   end
   always @(g2 or a2) begin
      if(g2 === 1'b1) begin
	 y2 = a2;
      end
      else begin
	 y2 = 4'bzzzz;
      end
   end
   
endmodule // ls244
