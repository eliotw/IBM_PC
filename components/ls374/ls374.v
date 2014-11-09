/*
 * ls374:
 * d-type transparent latch
 */
module ls374(
	     d,
	     q,
	     g,
	     oe_n
	     );

   input [3:0]  d;
   inout tri [3:0] 	q;
   input 	g;
   input 	oe_n;

   wire 	oe;
   reg [3:0] 	rq;
   
   assign oe = ~oe_n;
   assign q = (oe) ? rq : 4'bzzzz;
   
   // D-Latch
   always @(posedge g) begin
      if(g) begin
	 rq <= d;
      end
      else begin
	 rq <= rq;
      end
   end

endmodule // ls374

