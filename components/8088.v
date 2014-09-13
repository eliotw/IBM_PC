//
module 8088(
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
   inout ad[7:0]; // ad
   inout rqgti_n; // rqgti not
   inout qs[1:0]; // qs
   input test_n; // test not
   input mnmx; // mnmx
   inout a[8:19]; // a8-a19
   inout s_n[0:2]; // s not
   input lock; // lock

endmodule // 8088
