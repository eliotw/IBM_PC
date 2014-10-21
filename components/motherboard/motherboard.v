/*
 * motherboard:
 * Verilog description of the main motherboard of the IBM PC
 */
module motherboard(
		   input USER_CLK, // user clock at 100 MHz
		   
		   );

   // Internal signals

   // Sheets of components
   
endmodule // motherboard

/*
 * sheet1:
 * Verilog description of the first sheet of the motherboard
 */
module sheet1(
	      input pwr_good, // power good signal, not sure if needed
	      input dma_wait_n, // 
	      input rdy_wait_n, //
	      input nmi,
	      input [7:0] irq,
	      input intr_cs_n,
	      input xior_n,
	      input xiow_n,
	      input xa0_n,
	      input aen_br0,
	      input aen_n,
	      input clk_100, // 100 MHz clock = USER_CLK
	      output osc, // oscillator clock
	      output pclk, // i/o clock
	      inout [19:0] a, // address bus
	      input lock_n, // lock cpu
	      input reset, // reset cpu
	      output clk88, // 4.77 MHz clock for cpu
	      inout [7:0] d, // data bus
	      output vga_clk, // clock for VGA
	      output s0_n,
	      output s1_n,
	      output s2_n,
	      output ale,
	      output npnpi,
	      output ior_n,
	      output memr_n,
	      output iow_n,
	      output memw_n
	      );

   // Wires
   wire 	     ready;
   wire 	     intr;
   wire [7:0] 	     adp;
   wire 	     rqgti_n;
   wire [1:0] 	     qs;
   wire 	     test_n;
   wire [19:8] 	     ap;
   wire 	     inta_n;
   wire 	     spen_n;
   wire 	     ale;
   wire 	     den;
   wire 	     u84;
   wire 	     dtr;
   wire [3:0] 	     xrd; // extra data
   
   // 8087 math coprocessor
   assign rqgti_n = 1'b1;
   assign test_n = 1'b1;
   assign npnpi = 1'b0;
   
   // 8284 clock generation
   // Intel 8284 SPEC SUBJECT TO CHANGE
   intel8284a i8284(
		    .pwr_good(pwr_good),
		    .dma_wait_n(dma_wait_n),
		    .rdy_wait(rdy_wait_n),
		    .ready(ready),
		    .clk(clk88),
		    .reset(reset),
		    .dsc(osc),
		    .pclk(pclk),
		    .sclk(clk_100), // EXTRA MOD
		    .vclk(vga_clk) // EXTRA MOD
		    );

   // Intel 8088 CPU
   // Intel 8088 SPEC SUBJECT TO CHANGE
   intel8088 i8088(
	           .rqgto_n(1'b1), // rqgto_n
	           .intr(intr), // interrupt
	           .ready(ready), // ready
	           .clk(clk88), // clock
	           .reset(reset), // reset
	           .nmi(nmi), // nmi
	           .ad(adp), // ad
	           .rqgti_n(rqgti_n), //rqgti not
	           .qs(qs), // qs
	           .test_n(test_n), // test not
	           .mnmx(1'b0), // mnmx
	           .a(ap), // a
	           .s_n({s2_n,s1_n,s0_n}), // s not
	           .lock(~lock_n) // lock
		   );

   // Intel 8259 Programmable Interrupt Controller
   intel8259 i8259(
		   .cs_n(intr_cs_n),
		   .wr_n(xiow_n),
		   .rd_n(xior_n),
		   .d(adp),
		   .cas(3'b000), // not connected
		   .a0(xa0_n),
		   .inta_n(inta_n),
		   .ir(irq),
		   .inta(inta), // int
		   .spen_n(spen_n)
		   );

   // Intel 8288 Bus Controller
   // SPEC SUBJECT TO CHANGE
   intel8288 i8288(
		   .s({s2_n,s1_n,s0_n}),
		   .inta_n(inta_n),
		   .clk(clk88),
		   .aen_n(aen_br0),
		   .cen(aen_n),
		   .ale(ale),
		   .den(den),
		   .dtr(dtr),
		   .pden_n(), // not connected
		   .aiowc_n(ior_n),
		   .amwc_n(memr_n),
		   .iorc_n(iow_n),
		   .mrdc_n(memw_n)
		   );

   // NAND gate U84
   assign u84 = ~(spen_n & den);

   // LS 373 Units
   ls373 u10(
	     .d({ap[19:16],ap[19:16]}),
	     .q({a[19:16],xrd}),
	     .g(ale),
	     .oe_n(aen_brd)
	     );

   ls373 u9(
	    .d(ap[15:8]),
	    .q(a[15:8]),
	    .g(ale),
	    .oe_n(aen_brd)
	    );

   ls373 u7(
	    .d(adp),
	    .q(a[7:0]),
	    .g(ale),
	    .oe_n(aen_brd)
	    );

   // LS 245 Unit
   ls245 u8(
	    .a(adp),
	    .b(d),
	    .dir(dtr),
	    .g_n(u84)
	    );
   
endmodule // sheet1
