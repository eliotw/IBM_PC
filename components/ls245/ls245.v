/*
 * ls245:
 * The ls245 module is an octal bus transceiver
 */
module ls245(
	     a,
	     b,
	     dir,
	     g_n
	     );

   inout [7:0] a;
   inout [7:0] b;
   input       dir;
   input       g_n;

   wire        ba,ab;

   assign ba = ~g_n & ~dir;
   assign ab = ~g_n & dir;
   assign a = (ba === 1'b1) ? b : 8'bzzzzzzzz;
   assign b = (ab === 1'b1) ? a : 8'bzzzzzzzz;
   
endmodule // ls245
