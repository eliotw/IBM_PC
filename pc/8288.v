// TEMPORARY
module intel8288(
	    s,
	    inta_n,
	    clk,
	    aen_n,
	    cen,
	    ale,
	    den,
	    dtr,
	    pden_n,
	    aiowc_n,
	    amwc_n,
	    iorc_n,
	    mrdc_n
	    );

   input [2:0] s;
   input       inta_n;
   input       clk;
   input       aen_n, cen;
   output      ale, den, dtr, pden_n, aiowc_n, amwc_n, iorc_n, mrdc_n;

endmodule // 8288

   