// TEMPORARY
module intel8088(
	    rqgto_n, // rqgto_n
	    intr, // interrupt
	    ready, // ready
	    clk, // clock
	    reset, // reset
	    nmi, // nmi
	    ad, // ad
	    rqgti_n, //rqgti not
	    qs, // qs
	    test_n, // test not
	    mnmx, // mnmx
	    a, // a
	    s_n, // s not
	    lock // lock
	    );

   input rqgto_n; // rqgto not
   input intr; // interrupt
   input ready; // ready
   input clk; // clock
   input reset; // reset
   input nmi; // nmi
   inout [7:0] ad; // ad
   inout rqgti_n; // rqgti not
   inout [1:0] qs; // qs
   input test_n; // test not
   input mnmx; // mnmx
   inout [8:19] a; // a8-a19
   inout [0:2] s_n; // s not
   input lock; // lock

endmodule // 8088
