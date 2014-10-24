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
   inout tri [7:0] 	q;
   input 	g;
   input 	oe_n;

   wire 	oe;
   reg [7:0] 	rq;
   
   assign oe = ~oe_n;
   assign q = (oe) ? rq : 8'bzzzzzzzz;
   
   // D-Latch
   always @(g or d) begin
      if(g) begin
	 rq <= d;
      end
      else begin
	 rq <= rq;
      end
   end

endmodule // ls373
