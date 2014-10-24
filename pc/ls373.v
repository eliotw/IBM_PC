/*
 * ls373:
 * Octal d-type transparent latches
 */
module ls373(
	     d,
	     q,
	     g,
	     oe_n
	     );

   input [7:0]  d;
   inout [7:0] 	q;
   input 	g;
   input 	oe_n;

   // Holding Register
   reg [7:0] 	rq;

   // D-Latch
   always @(g or d) begin
      if(g) begin
	 rq <= d;
      end
      else begin
	 rq <= rq;
      end
   end

   // Bus Control
   assign q = (oe_n === 1'b0) ? rq : 8'bzzzzzzzz;
   
endmodule // ls373