/*
 * ls373:
 * Octal d-type transparent latches
 */
module ls373(
        clk,
		  rst_n,
	     d,
	     q,
	     g,
	     oe_n
	     );

	input clk;
	input rst_n;
   input [7:0]  d;
   inout tri [7:0] 	q;
   input 	g;
   input 	oe_n;

   wire 	oe;
   reg [7:0] 	rq;
   wire [7:0] rin;
	
	assign rin = g ? d : rq;
   assign oe = ~oe_n;
   assign q = (oe) ? rq : 8'bzzzzzzzz;
   
   // D-Latch
   always @(negedge g) begin
		rq <= d;
   end

endmodule // ls373
