
module 8284a(
	     pwr_good,
	     dma_wait_n,
	     rdy_wait,
	     ready,
	     clk,
	     reset,
	     dsc,
	     pclk
	     );

   input pwr_good, dma_wait_n, rdy_wait;
   output ready, clk;
   input  reset;
   output dsc, pclk;

endmodule // 8284a
