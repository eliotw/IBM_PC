/*
 * ls670:
 * The ls670 is a 4x4 register with 3-state outputs
 */
module ls670(
	     d,
	     q,
	     ra,
	     rb,
	     read,
	     wa,
	     wb,
	     write
	     );

   input [3:0] d;
   output [3:0] q;
   input 	ra, rb, read, wa, wb, write;

   // Registers
   reg [3:0] 	q0, q1, q2, q3, qr;
   wire [1:0] 	r, w;

   // Assign R and W
   assign r = {rb,ra};
   assign w = {wb,wa};
   
   // Output Assign
   always @(r or q0 or q1 or q2 or q3) begin
      case(r)
	0: qr = q0;
	1: qr = q1;
	2: qr = q2;
	3: qr = q3;
	default: qr = q0;
      endcase // case (r)
   end

   // Tristate Assign
   assign q = (read === 1'b1) ? qr : 4'bzzzz;
   
   // Input Assign
   always @(w or write or d) begin
      q0 = q0;
      q1 = q1;
      q2 = q2;
      q3 = q3;
      if(write === 1'b1) begin
	 case(w)
	   0: q0 = d;
	   1: q1 = d;
	   2: q2 = d;
	   3: q3 = d;
	   default: q0 = q0;
	 endcase // case (w)
      end
   end // always @ (w or write or d)
   
endmodule // ls670
