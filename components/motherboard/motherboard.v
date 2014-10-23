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

/*
 * sheet2:
 * The second sheet of the system board
 */
module sheet2(
	      input io_ch_rdy,
	      input xior_n,
	      input xiow_n,
	      input dack_0_brd_n,
	      input xmemr_n,
	      input clk,
	      input s0_n,
	      input s1_n,
	      input s2_n,
	      input lock_n,
	      input reset,
	      input hrq_dma_n,
	      input npnpi,
	      input npinstlsw,
	      input pck_n,
	      input xd7,
	      input wrt_nmi_reg,
	      input io_ch_ck_n,
	      input enable_io_clk_n,
	      input clk88,
	      input clk_100,
	      output rdy_wait,
	      output rdy_to_dma,
	      output dma_aen_n,
	      output aen_brd,
	      output aen_n,
	      output holda,
	      output reset_drv_n,
	      output reset_drv,
	      output nmi,
	      output io_ch_ck,
	      output dclk
	      );

   // Wires
   wire 	     xmemr;
   wire 	     u84;
   wire 	     b0, b1, b2, b4;
   wire 	     reset_n;
   wire 	     hrq_dma;
   wire 	     aen_n;
   wire 	     b6, b8, b9, b10, b11;
   wire 	     clk_n;
   wire 	     b12;
   
   // Registers
   reg 		     rdy_wait;
   reg 		     aen_brd;
   reg 		     b3, b5, b7;
   reg 		     holda;
   reg 		     allow_nmi;
   
   // Components
   assign xmemr = ~xmemr_n;
   assign u84 = ~(xmemr & dack_0_brd_n & b0);
   assign b1 = (~xior_n | ~xiow_n | ~u84);
   assign b2 = ~rdy_wait;
   assign reset_n = ~reset;
   assign rdy_to_dma = ~(b2 | b3);
   assign hrq_dma = ~hrq_dma_n;
   assign b4 = (s0_n & s1_n & s2_n & lock_n & hrq_dma);
   assign aen_n = ~aen_brd;
   assign b0 = aen_brd;
   assign dma_wait_n = ~b5;
   assign b6 = b5 & b0;
   assign dma_aen_n = ~b6;
   assign reset_drv_n = reset_n;
   assign reset_drv = reset;
   assign clk_n = ~clk88;
   assign b8 = ~holda;
   assign b11 = ~(io_ch_clk & ~enable_io_ck_n);
   assign io_ch_ck = (~b11 | ~io_ch_clk_n);
   assign b9 = ~(npnpi & npinstlsw);
   assign b10 = (~b9 | ~pck_n | ~b11);
   assign nmi = allow_nmi & b10;
   
   // Flip-flops
   always @(posedge b1) begin
      if(io_ch_rdy == 1'b0) begin
	 rdy_wait <= 1'b1;
      end
      else if(b3 == 1'b0) begin
	 rdy_wait <= 1'b0;
      end
      else begin
	 rdy_wait <= dack_0_brd_n;
      end
   end // always @ (posedge b1)

   always @(posedge clk) begin
      if(reset_n == 1'b0) begin
	 b3 <= 1'b1;
      end
      else begin
	 b3 <= ~rdy_wait;
      end
   end

   // LS175 Q1
   always @(posedge clk) begin
      if(reset_n == 1'b0) begin
	 aen_brd <= 1'b0;
      end
      else begin
	 aen_brd <= holda;
      end
   end
   
   // LS175 Q2
   always @(posedge clk) begin
      if(reset_n == 1'b0) begin
	 b5 <= 1'b0;
      end
      else begin
	 b5 <= b0;
      end
   end
   
   // LS175 Q3
   always @(posedge clk) begin
      if(reset_n == 1'b0) begin
	 b7 <= 1'b0;
      end
      else begin
	 b7 <= b4;
      end
   end

   // U87
   always @(posedge clk_n) begin
      if(b8 == 1'b0) begin
	 holda <= 1'b1;
      end
      else if(hrq_dma == 1'b0) begin
	 holda <= 1'b0;
      end
      else begin
	 holda <= b7;
      end
   end // always @ (posedge clk_n)

   always @(posedge wrt_nmi_reg_n) begin
      if(reset_n == 1'b0) begin
	 allow_nmi <= 1'b0;
      end
      else begin
	 allow_nmi <= xd7;
      end
   end

   // Time delay function
   // TODO: See if this works
   timedelay td2(
		 .in(~clk),
		 .clk(clk_100),
		 .rst(1'b0),
		 .t5(b12),
		 .t25(),
		 .t50(),
		 .t75(),
		 .t100(),
		 .t125()
		 );

   assign dclk = (~b12 | ~clk);
   
endmodule // sheet2

/*
 * sheet3:
 * The third part of the motherboard
 */
module sheet3(
	      input xa5,
	      input xa6,
	      input xa7,
	      input xa8,
	      input xa9,
	      input aen_n,
	      input xiow_n,
	      input a13,
	      input a14,
	      input a15,
	      input a16,
	      input a17,
	      input a18,
	      input a19,
	      input xmemw_n,
	      input dack_0_brd_n,
	      input xmemr_n,
	      input reset_drv_n,
	      input dack_0,
	      input clk_100,
	      output dma_cs_n,
	      output intr_cs_n,
	      output tc_cs_n,
	      output ppi_cs_n,
	      output wrt_dma_pg_reg_n,
	      output rom_addr_sel_n,
	      output ram_addr_sel_n,
	      output addr_sel,
	      output [3:0] cas_n,
	      output [3:0] ras_n,
	      output [7:0] cs_n
	      );

   // Wires
   wire 		   b0, b1;
   wire [5:0] 		   x0;
   wire [7:0] 		   y0;
   wire 		   rasc;
   wire 		   cas_nc;
   wire 		   cas0, cas1;
   wire [3:0] 		   y1, x1;
   wire 		   refresh_gate_n;
   
   // Assignments of outputs
   assign wrt_nmi_reg_n = xiow_n | b1;
   assign wrt_dma_pg_reg_n = b0 | xiow_n;
   assign rom_addr_sel_n = ~(a16 & a17 & a18 & a19);
   assign ram_addr_sel_n = y0[0];
   assign rasc = (~xmemw_n | ~xmemr_n);
   //assign cas_nc = ~(cas0 & cas1);
   assign refresh_gate_n = ~(rasc & dack0);
   assign ras_n[0] = refresh_gate_n & y1[0];
   assign ras_n[1] = refresh_gate_n & y1[1];
   assign ras_n[2] = refresh_gate_n & y1[2];
   assign ras_n[3] = refresh_gate_n & y1[3];
   
   // LS138 Units
   ls138 ls0(
	     .a(xa5),
	     .b(xa6),
	     .c(xa7),
	     .g2b(xa8), 
	     .g2a(xa9),
	     .g1(aen_n),
	     .y({x0[1],x0[0],b1,b0,ppi_cs_n,tc_cs_n,intr_cs_n,dma_cs_n})
	     );
   
   ls138 ls1(
	     .a(1'b0),
	     .b(1'b0),
	     .c(a18),
	     .g2b(a19),
	     .g2a(1'b0),
	     .g1(dack_0_brd_n),
	     .y(y0)
	     );

   ls138 ls2(
	     .a(a16),
	     .b(a17),
	     .c(1'b0),
	     .g2b(cas_nc),
	     .g2a(ram_addr_sel_n),
	     .g1(dack_0_brd_n),
	     .y({x0[5:2],cas_n})
	     );

   ls138 ls3(
	     .a(a16),
	     .b(a17),
	     .c(1'b1),
	     .g2b(ram_addr_sel_n),
	     .g2a(dack0),
	     .g1(rasc),
	     .y({y1,x1})
	     );

   ls138 ls4(
	     .a(a13),
	     .b(a14),
	     .c(a15),
	     .g2b(rom_addr_sel_n),
	     .g2a(xmemr_n),
	     .g1(reset_drv_n),
	     .y(cs_n)
	     );
   
   // Clock delay units
   // TODO: See if this works
   timedelay td0(
		 .in(rasc),
		 .clk(clk_100),
		 .rst(),
		 .t5(),
		 .t25(cas_nc), // was cas0
		 .t50(addr_sel),
		 .t75(), // was addr_sel
		 .t100(),
		 .t125() // was cas1
		 );
   
endmodule // sheet3

/*
 * sheet4:
 * The fourth sheet of the motherboard
 */
module sheet4(
	      inout [3:0] xa,
	      input dma_cs_n,
	      input rdy_to_dma,
	      input dclk,
	      input holda,
	      input xior_n,
	      input xiow_n,
	      input xmemr_n,
	      input xmemw_n,
	      input [3:0] drq,
	      input reset,
	      inout [7:0] xd,
	      input dma_aen_n,
	      input wrt_dma_pg_reg_n,
	      inout [19:0] a,
	      output hrq_dma_n,
	      output tc,
	      output dack0,
	      output dack0_brd_n,
	      output dack1_n,
	      output dack2_n,
	      output dack3_n
	      );

   // Wires
   wire 	     hrq;
   wire 	     eop_n;
   wire [3:0] 	     xas;
   wire 	     adstb;
   
   // Assignment
   assign hrq_dma_n = ~hrq;
   assign tc = ~eop_n;
   assign dack0 = ~dack0_brd_n;
   
   // Intel 8237
   intel8237A i8237(
		    .clk(dclk),
		    .cs(dma_cs_n), // possible negation problem
		    .reset(reset),
		    .ready(rdy_to_dma),
		    .hlda(holda),
		    .dreq(drq),
		    .db_io(xd),
		    .ior_io(xior_n),
		    .iow_io(xiow_n),
		    .eopp_io(eop_n),
		    .a3_0_io(xa),
		    .a7_4_io(xas),
		    .hrq(hrq),
		    .dack({dack3_n,dack2_n,dack1_n,dack0_brd_n}),
		    .aen(), // nc
		    .adstb(adstb),
		    .memr(xmemr_n),
		    .memw(xmemw_n)
		    );

   // LS 244
   ls244 ls2440(
		.a1(xa),
		.a2(xas),
		.y1(a[3:0]),
		.y2(a[7:4]),
		.g1_n(dma_aen_n),
		.g2_n(dma_aen_n)
		);

   // LS670 Module
   ls670 ls6700(
		.d(xd[3:0]),
		.q(a[19:16]),
		.ra(dack3_n),
		.rb(dack2_n),
		.read(dma_aen_n),
		.wa(xa0),
		.wb(xa1),
		.write(wrt_dma_pg_reg_n)
		);

   // LS373 Unit
   ls373 ls3730(
		.d(xd),
		.q(a[15:8]),
		.g(adstb),
		.oe_n(dma_aen_n)
		);

endmodule // sheet4

/*
 * sheet5:
 * The fifth sheet of motherboard logic
 */
module sheet5(
	      inout [19:0] a,
	      input [7:0] cs_n,
	      input clk88,
	      input aen_brd,
	      input dack0_brd_n,
	      inout [7:0] d,
	      input rom_addr_sel_n,
	      input ior_n,
	      input iow_n,
	      input memr_n,
	      input memw_n,
	      input dma_aen_n,
	      inout [12:0] xa,
	      inout [7:0] xd,
	      output clk,
	      output aen,
	      output dack0_n,
	      output xior_n,
	      output xiow_n,
	      output xmemr_n,
	      output xmemw_n
	      );

   // Wires
   wire 	     b0, b1, b2;
   wire [3:0] 	     extrawires;
   
   // Wire assignments
   assign b0 = (~xa9 & ~xior_n);
   assign b1 = (~rom_addr_sel_n & ~xmemr_n);
   assign b2 = ~(b0 | b1);
   
   // LS244 Units
   ls244 ls2440(
		.a1(a[3:0]),
		.a2(a[7:4]),
		.y1(xa[3:0]),
		.y2(xa[7:4]),
		.g1_n(aen_brd),
		.g2_n(aen_brd)
		);

   ls244 ls2441(
	        .a1(a[11:8]),
	        .a2({dack0_brd_n,aen_brd,clk88,a[12]}),
	        .y1(xa[11:8]),
	        .y2({dack0_n,aen,clk,xa[12]}),
	        .g1_n(1'b0),
	        .g2_n(1'b0)
		);

   // LS245 Units
   ls245 ls2450(
		.a(d),
		.b(xd),
		.dir(~b2),
		.g_n(aen_brd)
		);

   ls245 ls2451(
		.a({4'b0,memw_n,memr_n,iow_n,iow_r}),
		.b({extrawires,xmemw_n,xmemr_n,xiow_n,xior_n}),
		.dir(dma_aen_n),
		.g_n(aen_brd)
		);

   // ROM Module
   rom rommod(
              .a(xa),
	      .d(xd),
	      .cs_n(cs_n),
	      .clk(clk88)
	      );

endmodule // sheet5

/*
 * sheet6:
 * The sixth and seventh sheet of the motherboard
 */
module sheet6(
	      inout [7:0] d,
	      input xmemr_n,
	      input [3:0] ras_n,
	      input [3:0] cas_n,
	      input [15:0] a,
	      input addr_sel,
	      input ram_addr_sel_n,
	      input enb_ram_pck_n,
	      input clk88,
	      output pck,
	      output pck_n
	      );

   // Wires
   wire [7:0] 	     md, ma;
   wire 	     mdp;
   wire 	     mdpl;
   wire 	     we_n;
   wire 	     odd, even;
   wire 	     ind;
   wire 	     enb_ram_pck;
   
   // Registers
   reg 		     pck, pck_n;
   
   // Assignments
   assign mdpl = ~xmemr_n & mdp;
   assign we_n = xmemw_n;
   assign ind = ~ram_addr_sel_n & odd;
   assign mdp = (we_n == 1'b0) ? even : 1'bz;
   assign enb_ram_pck = ~enb_ram_pck_n;
   
   // RAM Banks
   ram_bank rb0(
		.clk(clk88), // clock
		.rst(1'b0), // reset
		.md(md), // memory data
		.ma(ma), // memory address
		.mdp(mdp), // memory data parity
		.ras_n(ras_n[0]), // row enable not
		.cas_n(cas_n[0]), // column enable not
		.we_n(we_n) // write enable not
		);

   ram_bank rb1(
		.clk(clk88), // clock
		.rst(1'b0), // reset
		.md(md), // memory data
		.ma(ma), // memory address
		.mdp(mdp), // memory data parity
		.ras_n(ras_n[1]), // row enable not
		.cas_n(cas_n[1]), // column enable not
		.we_n(we_n) // write enable not
		);

   ram_bank rb2(
		.clk(clk88), // clock
		.rst(1'b0), // reset
		.md(md), // memory data
		.ma(ma), // memory address
		.mdp(mdp), // memory data parity
		.ras_n(ras_n[2]), // row enable not
		.cas_n(cas_n[2]), // column enable not
		.we_n(we_n) // write enable not
		);

   ram_bank rb3(
		.clk(clk88), // clock
		.rst(1'b0), // reset
		.md(md), // memory data
		.ma(ma), // memory address
		.mdp(mdp), // memory data parity
		.ras_n(ras_n[3]), // row enable not
		.cas_n(cas_n[3]), // column enable not
		.we_n(we_n) // write enable not
		);

   // LS245 Module
   ls245 ls2450(
		.a(d),
		.b(md),
		.dir(xmemr_n),
		.g_n(ram_addr_sel_n)
		);

   // LS158 Modules
   ls158 ls1580(
		.a(a[3:0]),
		.b(a[11:8]),
		.y(ma[3:0]),
		.s(addr_sel),
		.g(1'b0)
		);

   ls158 ls1581(
	        .a(a[7:4]),
	        .b(a[15:12]),
	        .y(ma[7:4]),
	        .s(addr_sel),
	        .g(1'b0)
		);

   // LS280 Module
   ls280 ls2800(
		.a(md[0]),
		.b(md[1]),
		.c(md[2]),
		.d(md[3]),
		.e(md[4]),
		.f(md[5]),
		.g(md[6]),
		.h(md[7]),
		.i(mdpl),
		.odd(odd),
		.even(even)
		);

   // HOLY LIVING SHIT I HAVE NO IDEA WHAT THIS IS TRYING TO ACCOMPLISH
   // Flip-Flop
   always @(posedge xmemr_n) begin
      if((pck_n == 1'b0) && (enb_ram_pck == 1'b1)) begin
	 pck <= 1'b1;
	 pck_n <= 1'b0;
      end
      else if((pck_n == 1'b1) && (enb_ram_pck == 1'b0)) begin
	 pck <= 1'b0;
	 pck_n <= 1'b1;
      end
      else if((pck_n == 1'b0) && (enb_ram_pck == 1'b0)) begin
	 pck <= 1'b1;
	 pck_n <= 1'b1;
      end
      else begin
	 pck <= ind;
	 pck_n <= ~ind;
      end
   end // always @ (posedge xmemr_n)

endmodule // sheet6

/*
 * sheet8:
 * The eighth sheet of the motherboard
 */
module sheet8(
	      input spkr_data,
	      input dack0_brd_n,
	      input tim_2_gate_spk,
	      input xior_n,
	      input xiow_n,
	      input tc_cs_n,
	      input xa0,
	      input xa1,
	      input [7:0] xd,
	      input motor_off,
	      input pclk,
	      input reset_drv_n,
	      output drq0,
	      output irq0,
	      output spkr_data_out,
	      output tc_2_out,
	      output cass_data_in
	      );

   // Wires
   wire 	     out1, out2;
   wire 	     motor_ctrl, sdata;
   
   // Registers
   reg 		     pclka;
   reg 		     drq0;
   
   // Assignments
   assign cass_data_in = 1'b0;
   assign tc_2_out = out2;
   assign sdata = ~(out2 & spkr_data);
   
   // 8253 Module
   intel8253 i8253(
	           .gate({tim_2_gate_spk,1'b1,1'b1}),
	           .clk({pclka,pclka,pclka}),
	           .rd_n(xior_n),
	           .wr_n(xiow_n),
	           .cs_n(tc_cs_n),
	           .a0(xa0),
	           .a1(xa1),
	           .d(xd),
	           .out({out2,out1,irq0})
		   );

   // PCLK Flip-Flop
   always @(posedge pclk) begin
      if(reset_drv_n == 1'b0) begin
	 pclka <= 1'b0;
      end
      else begin
	 pclka <= ~pclka;
      end
   end
   
   // DRQ0 Flip-Flop
   always @(posedge out1) begin
      if(dack0_brd_n == 1'b0) begin
	 drq0 <= 1'b0;
      end
      else begin
	 drq0 <= 1'b1;
      end
   end

   // 75477 Module
   sn75477 sn7(
	       .s(1'b1),
	       .a({sdata,~motor_off}),
	       .y({spkr_data_out,motor_ctrl})
	       );
   
endmodule // sheet8

/*
 * sheet9:
 * The ninth sheet of the motherboard
 */
module sheet9(
	      input xior_n,
	      input xiow_n,
	      input ppics_n,
	      input xa0,
	      input xa1,
	      input reset,
	      input [7:0] xd,
	      input pck,
	      input io_ch_ck,
	      input tc_2_out,
	      input cass_data_in,
	      input pclk,
	      input reset_drv_n,
	      output tim_2_gate_spk,
	      output spkr_data,
	      output motor_off,
	      output enb_ram_pck_n,
	      output enable_io_ck_n,
	      output irq1,
	      output np_instl_sw,
	      inout kbd_clk,
	      inout kbd_data
	      );

   // Wires
   wire [7:0] 	    pa,pb,pc,py,px;
   
   // Registers

   // Assignments
   assign time_2_gate_spk = pb[0];
   assign spkr_data = pb[1];
   assign motor_off = pb[3];
   assign enb_ram_pck_n = pb[4];
   assign enable_io_ck_n = pb[5];
   assign np_instl_sw = py[1];
   
   // SW2 Assignments
   assign pc[0] = 1'b1;
   assign pc[1] = 1'b1;
   assign pc[2] = 1'b1;
   assign pc[3] = ~pb[2]; // 256 k of RAM
   
   // Other Assignments
   assign pa = (pb7 == 1'b1) ? px : py;
   
   // Intel 8255
   intel8255 i8255(
	           .rd_n(xior_n),
	           .wr_n(xiow_n),
	           .cs_n(ppics_n),
	           .a({xa1,xa0}),
	           .reset(reset),
	           .d(xd),
	           .pb(pb),
	           .pc(pc),
	           .pa(pa)
		   );

   // Assign SW1 settings
   assign py[0] = 1'b1; // No floppy drive for now
   assign py[1] = 1'b1; // No 8087
   assign py[2] = 1'b0; // RAM Bank 256 K
   assign py[3] = 1'b0; // RAM Bank 256 K
   assign py[4] = 1'b1; // CGA 80x25
   assign py[5] = 1'b0; // CGA 80x25
   assign py[6] = 1'b1; // One floppy drive
   assign py[7] = 1'b1; // One floppy drive
   
   // Keyboard Interface
   keyinterface keyboard(
			 .pclk(pclk),
			 .reset_n(reset_drv_n),
			 .pa(px),
			 .pb6(pb[6]),
			 .pb7(pb[7]),
			 .irq1(irq1),
			 .keyboard_clock(kbd_clk),
			 .keyboard_data(kbd_data)
			 // There is no keyboard_reset_n
			 );
   
endmodule // sheet9

/*
 * sheet10:
 * The tenth sheet of the motherboard, includes vga and floppy drive
 */
module sheet10(
	       inout [7:0] d,
	       inout [19:0] a,
	       input ior_n,
	       input iow_n,
	       input memr_n,
	       input memw_n,
	       input clk,
	       input osc,
	       input tc,
	       input aen,
	       input reset_drv,
	       input [3:0] dack_n,
	       input ale,
	       input vga_clk,
	       input reset,
	       output io_ch_ck_n,
	       output io_ch_rdy,
	       output drq1,
	       output drq2,
	       output drq3,
	       output irq2,
	       output irq3,
	       output irq4,
	       output irq5,
	       output irq6,
	       output irq7,
	       output [1:0] vga_red_o,
	       output [1:0] vga_green_o,
	       output [1:0] vga_blue_o,
	       output horiz_sync,
	       output vert_sync,
	       );

   // VDU Module
   vdu vga(
           // Wishbone Replacement Signals
           .clk(vga_clk), // 25 MHz VDU clock
           .rst(reset), // Reset Line
           .a(a), // Address bits
           .d(d), // Data bits
           .ior(~ior_n), // I/O Read
           .iow(~iow_n), // I/O Write
           .memr(~memr_n), // Memory Read
           .memw(~memw_n), // Memory Write
           .vga_red_o(vga_red_o),
           .vga_green_o(vga_green_o),
           .vga_blue_o(vga_blue_o),
           .horiz_sync(horiz_sync),
           .vert_sync(vert_sync)
	   );
   
   // Output Assignments
   assign io_ch_ck_n = 1'b1;
   assign io_ch_rdy = 1'b0;
   assign drq1 = 1'b0;
   assign drq2 = 1'b0;
   assign drq3 = 1'b0;
   assign irq2 = 1'b0;
   assign irq3 = 1'b0;
   assign irq4 = 1'b0;
   assign irq5 = 1'b0;
   assign irq6 = 1'b0;
   assign irq7 = 1'b0;
	  
endmodule // sheet10
