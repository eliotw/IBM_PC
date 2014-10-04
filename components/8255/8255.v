/*
 * intel8255:
 * A verilog implementation of an intel 8255 programmable peripheral interface
 */
module intel8255(
	      ro_n,
	      wr_n,
	      cs_n,
	      a,
	      reset,
	      d,
	      pb,
	      pc,
	      pa
	      );

   input ro_n, wr_n, cs_n;
   input [1:0] a;
   input       reset;
   inout [7:0] d;
   output [7:0] pa, pb, pc;

endmodule // intel8255
