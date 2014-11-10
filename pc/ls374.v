/*
 * ls374:
 * d-type transparent latch
 */
module ls374(
		  clk,
		  rst_n,
	     d,
	     q,
	     g,
	     oe_n
	     );

	input clk;
	input rst_n;
   input [3:0]  d;
   inout tri [3:0] 	q;
   input 	g;
   input 	oe_n;

   wire 	oe;
   reg [3:0] 	rq;
   wire [3:0] rin;
	
	assign rin = g ? d : rq;
   assign oe = ~oe_n;
   assign q = (oe) ? rq : 4'bzzzz;
	
   // D-Latch
   always @(negedge g) begin
		rq <= d;
   end

endmodule // ls374

