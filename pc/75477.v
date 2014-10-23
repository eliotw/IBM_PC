/*
 * 75477:
 * Essentially a two-input NAND gate driver
 */
module sn75477(
	     s,
	     a,
	     y
	     );

   input s;
   input [1:0] a;
   output [1:0] y;

   assign y[0] = ~(s & a[0]);
   assign y[1] = ~(s & a[1]);
   
endmodule // 75477
