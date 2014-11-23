
module 8237a5(
	      a,
	      cs_n,
	      rdy,
	      clk,
	      hlda,
	      ior_n,
	      iow_n,
	      memr_n,
	      memw_n,
	      dreq,
	      reset,
	      db,
	      hrq,
	      eop_n,
	      dack,
	      adstb
	      );

   inout [7:0] a;
   input       cs_n;
   input       rdy, clk, hlda, iow_n, ior_n, memr_n, memw_n;
   input [3:0] dreq;
   input       reset;
   inout [7:0] db;
   output      hrq, eop_n, adstb;
   output [3:0] dack;

endmodule // 8237a5
