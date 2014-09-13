module 8259a(
	     irq,
	     intr_cs_n, xior_n, xiow_n, xao_n,
	     int0,
	     d,
	     spen_n,
	     inta_n
	     );

   input [7:0] irq;
   input       intr_cs_n, xior_n, xiow_n, xao_n;
   output      int0;
   inout       [7:0] d;
   output 	     spen_n;
   output 	     inta_n;

endmodule // 8259a
