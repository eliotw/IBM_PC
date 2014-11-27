/*
 * motherboard:
 * Verilog description of the main motherboard of the IBM PC
 * Accurate to what is actually in the PC
 */
module motherboard(
		   input USER_CLK, // user clock at 100 MHz
		   output PIEZO_SPEAKER, // speaker
		   inout KEYBOARD_CLK, // keyboard clock
		   inout KEYBOARD_DATA, // keyboard data
		   input GPIO_SW_C, // reset trigger
			input GPIO_SW_W, // enable/disable irq0
			input GPIO_SW_E, // keyboard load special
			input GPIO_DIP_SW1, // select to use audio or not
			input GPIO_DIP_SW2, // select to use irq0 or not
		   output HDR1_2, // vga red o 0
		   output HDR1_4, // vga red o 1
		   output HDR1_6, // vga green o 0
		   output HDR1_8, // vga green o 1
		   output HDR1_10, // vga blue o 0
		   output HDR1_12, // vga blue o 1
		   output HDR1_14, // vga horizontal sync
		   output HDR1_16, // vga vertical sync
			output GPIO_LED_0, // same as the speaker output
			output GPIO_LED_1 // irq0 enabled/disabled
		   );

   // Internal signals
   wire 		 pwr_good; // 10 -> 1
   wire 		 dma_wait_n; // 2 -> 1
   wire 		 rdy_wait_n; // 2 -> 1
   wire 		 nmi; // 2 -> 1
   wire 		 irq0; // 8 -> 1
   wire 		 irq1; // 9 -> 1
   wire 		 irq2, irq3, irq4, irq5, irq6, irq7; // 10 -> 1
   wire 		 intr_cs_n; // 3 -> 1
   wire 		 xior_n; // 5 -> 1, 2, 4, 8, 9
   wire 		 xiow_n; // 5 -> 1, 2, 3, 4, 8, 9
   wire 		 xa0_n; // 5 -> 1
   wire 		 aen_br0; // 2 -> 1, 5
   wire 		 aen_n; // 2 -> 1, 3
   wire 		 clk_100; // 100 MHz Clock -> 1, 2, 3
   wire 		 osc; // 1 -> 10
   wire 		 pclk; // 1 -> 8, 9
   tri [19:0] 		 a; // 1 -> 3, 4, 5, 6, 10
   wire [12:0] 		 xa; // 5 -> 3, 4
   wire 		 lock_n; // 1 -> 2
   wire 		 reset; // 1 -> 2, 4, 9
   wire 		 clk88; // 1 -> 2, 5
   wire [7:0] 		 d; // 1 -> 5, 6, 10
   wire 		 vga_clk; // 25 MHz Clock -> 1, 10
   wire 		 s0_n, s1_n, s2_n; // 1 -> 2
   wire 		 ale; // 1 -> 10
   wire 		 npnpi; // 1 -> 2
   wire 		 ior_n, memr_n, iow_n, memw_n; // 1 -> 5, 10
   wire 		 io_ch_rdy; // 10 -> 2
   wire 		 dack_0_brd_n; // 4 -> 2, 3, 5, 8
   wire 		 xmemr_n; // 5 -> 2, 3, 4, 6
   wire 		 xmemw_n; // 5 -> 3, 4, 6
   wire 		 clk; // 5 -> 2, 4, 10
   wire 		 hrq_dma_n; // 4 -> 2
   wire 		 npinstlsw; // 9 -> 2
   wire 		 pck_n; // 6 -> 2
   wire [7:0] 		 xd; // 5 -> 2, 4, 8, 9
   wire 		 wrt_nmi_reg_n; // 3 -> 2
   wire 		 io_ch_ck_n; // 10 -> 2
   wire 		 enable_io_ck_n; // 9 -> 2
   wire 		 rdy_to_dma; // 2 -> 4
   wire 		 dma_aen_n; // 2 -> 4, 5
   wire 		 holda; // 2 -> 4
   wire 		 reset_drv_n; // 2 -> 3, 8, 9
   wire 		 reset_drv; // 2 -> 10
   wire 		 io_ch_ck; // 2 -> 9
   wire 		 dclk; // 2 -> 4
   wire 		 dack_0; // 4 -> 3
   wire 		 dma_cs_n; // 3 -> 4
   wire 		 tc_cs_n; // 3 -> 8
   wire 		 ppi_cs_n; // 3 -> 9
   wire 		 wrt_dma_pg_reg_n; // 3 -> 4
   wire 		 rom_addr_sel_n; // 3 -> 5
   wire 		 ram_addr_sel_n; // 3 -> 6
   wire 		 addr_sel; // 3 -> 6
   wire [3:0] 		 cas_n; // 3 -> 6, 7
   wire [3:0] 		 ras_n; // 3 -> 6, 7
   wire [7:0] 		 cs_n; // 3 -> 5
   wire [3:0] 		 drq; // 8, 10 -> 4
   wire 		 tc; // 4 -> 10
   wire 		 dack_1_n; // 4 -> 10
   wire 		 dack_2_n; // 4 -> 10
   wire 		 dack_3_n; // 4 -> 10
   wire 		 aen; // 5 -> 10
   wire 		 dack_0_n; // 5 -> 10
   wire 		 enb_ram_pck_n; // 9 -> 6
   wire 		 pck; // 6 -> 9
   wire 		 spkr_data; // 9 -> 8
   wire 		 tim_2_gate_spk; // 9 -> 8
   wire 		 motor_off; // 9 -> 8
   wire 		 spkr_data_out; // 8 -> piezo speaker
   wire 		 tc_2_out; // 8 -> 9
   wire 		 cass_data_in; // 8 -> 9
   wire [1:0] 		 vga_red_o; // vga red output
   wire [1:0] 		 vga_green_o; // vga green output
   wire [1:0] 		 vga_blue_o; // vga blue output
   wire 		 horiz_sync; // vga horizontal sync
   wire 		 vert_sync; // vga vertical sync
   wire	    keyboard_load_special; // keyboard load special program
	wire irq00; // special IRQ0 line
	wire irqbutton; // special IRQ0 button
	wire irqenable; // enable IRQ0
	wire activate_timer_2; // activate timer 2
	
   // Some assignments
   assign clk_100 = USER_CLK; // user clock is 100 MHz clock
   assign xa0_n = xa[0]; // not sure if needs to be inverted or not
   assign PIEZO_SPEAKER = (GPIO_DIP_SW1) ? spkr_data_out : 1'b1; // speaker assignment 
	assign GPIO_LED_0 = spkr_data_out; // assign to led as well
	assign GPIO_LED_1 = irqenable; // tell whether IRQ is enabled or not
   assign HDR1_2 = vga_red_o[0]; // vga red o 0
   assign HDR1_4 = vga_red_o[1]; // vga red o 1
   assign HDR1_6 = vga_green_o[0]; // vga green o 0
   assign HDR1_8 = vga_green_o[1]; // vga green o 1
   assign HDR1_10 = vga_blue_o[0]; // vga blue o 0
   assign HDR1_12 = vga_blue_o[1]; // vga blue o 1
   assign HDR1_14 = horiz_sync; // vga horizontal sync
   assign HDR1_16 = vert_sync; // vga vertical sync
	assign keyboard_load_special = GPIO_SW_E; // keyboard load special program
	assign irqbutton = GPIO_SW_W; // button to disable irq0
	assign activate_timer_2 = GPIO_DIP_SW2; // switch to enable timer 2
	
	// Disable IRQ Module
	irqdisable ird(
						.clk(clk88),
						.rst_n(~reset),
						.irqbutton(irqbutton),
						.irq_en(irqenable)
						);
	
   // Debounce Module
   debounce deb(
		.clk(clk88), // clock signal
		.rst(GPIO_SW_C), // reset signal from button
		.drst(pwr_good) // debounced reset signal
		);
   
   // Sheet 1
   sheet1 s1(
	     .pwr_good(pwr_good),
	     .dma_wait_n(dma_wait_n),
	     .rdy_wait_n(rdy_wait_n),
	     .nmi(nmi),
	     .irq({irq7,irq6,irq5,irq4,irq3,irq2,irq1,irq0}),
	     .intr_cs_n(intr_cs_n),
	     .xior_n(xior_n),
	     .xiow_n(xiow_n),
	     .xa0_n(xa0_n),
	     .aen_br0(aen_br0),
	     .aen_n(aen_n),
	     .clk_100(clk_100),
	     .osc(osc), // oscillator clock
	     .pclk(pclk), // i/o clock
	     .a(a), // address bus
	     .lock_n(lock_n), // lock cpu
	     .reset(reset), // reset cpu
	     .clk88(clk88), // 4.77 MHz clock for cpu
	     .d(d), // data bus
	     .vga_clk(vga_clk), // clock for VGA
	     .s0_n(s0_n),
	     .s1_n(s1_n),
	     .s2_n(s2_n),
	     .ale(ale),
	     .npnpi(npnpi),
	     .ior_n(ior_n),
	     .memr_n(memr_n),
	     .iow_n(iow_n),
	     .memw_n(memw_n)
	     );

   // Sheet 2
   sheet2 s2(
	     .io_ch_rdy(io_ch_rdy),
	     .xior_n(xior_n),
	     .xiow_n(xiow_n),
	     .dack_0_brd_n(dack_0_brd_n),
	     .xmemr_n(xmemr_n),
	     .clk(clk),
	     .s0_n(s0_n),
	     .s1_n(s1_n),
	     .s2_n(s2_n),
	     .lock_n(lock_n),
	     .reset(reset),
	     .hrq_dma_n(hrq_dma_n),
	     .npnpi(npnpi),
	     .npinstlsw(npinstlsw),
	     .pck_n(pck_n),
	     .xd7(xd[7]),
	     .wrt_nmi_reg_n(wrt_nmi_reg_n),
	     .io_ch_ck_n(io_ch_ck_n),
	     .enable_io_clk_n(enable_io_ck_n),
	     .clk88(clk88),
	     .clk_100(clk_100),
	     .rdy_wait(rdy_wait_n),
	     .rdy_to_dma(rdy_to_dma),
	     .dma_aen_n(dma_aen_n),
	     .aen_brd(aen_br0),
	     .aen_n(aen_n),
		  .dma_wait_n(dma_wait_n),
	     .holda(holda),
	     .reset_drv_n(reset_drv_n),
	     .reset_drv(reset_drv),
	     .nmi(nmi),
	     .io_ch_ck(io_ch_ck),
	     .dclk(dclk)
	     );

   // Sheet 3
   sheet3 s3(
	     .xa5(xa[5]),
	     .xa6(xa[6]),
	     .xa7(xa[7]),
	     .xa8(xa[8]),
	     .xa9(xa[9]),
	     .aen_n(aen_n),
	     .xiow_n(xiow_n),
	     .a13(a[13]),
	     .a14(a[14]),
	     .a15(a[15]),
	     .a16(a[16]),
	     .a17(a[17]),
	     .a18(a[18]),
	     .a19(a[19]),
	     .xmemw_n(xmemw_n),
	     .dack_0_brd_n(dack_0_brd_n),
	     .xmemr_n(xmemr_n),
	     .reset_drv_n(reset_drv_n),
	     .dack_0(dack_0),
	     .clk_100(clk_100),
	     .dma_cs_n(dma_cs_n),
	     .intr_cs_n(intr_cs_n),
	     .tc_cs_n(tc_cs_n),
	     .ppi_cs_n(ppi_cs_n),
		  .wrt_nmi_reg_n(wrt_nmi_reg_n),
	     .wrt_dma_pg_reg_n(wrt_dma_pg_reg_n),
	     .rom_addr_sel_n(rom_addr_sel_n),
	     .ram_addr_sel_n(ram_addr_sel_n),
	     .addr_sel(addr_sel),
	     .cas_n(cas_n),
	     .ras_n(ras_n),
	     .cs_n(cs_n)
	     );

   // Sheet 4
   sheet4 s4(
	     .xa(xa[3:0]),
	     .dma_cs_n(dma_cs_n),
	     .rdy_to_dma(rdy_to_dma),
	     .dclk(dclk),
	     .holda(holda),
	     .xior_n(xior_n),
	     .xiow_n(xiow_n),
	     .xmemr_n(xmemr_n),
	     .xmemw_n(xmemw_n),
	     .drq(drq),
	     .reset(reset),
	     .xd(xd),
	     .dma_aen_n(dma_aen_n),
	     .wrt_dma_pg_reg_n(wrt_dma_pg_reg_n),
	     .a(a),
	     .hrq_dma_n(hrq_dma_n),
	     .tc(tc),
	     .dack0(dack_0),
	     .dack0_brd_n(dack_0_brd_n),
	     .dack1_n(dack_1_n),
	     .dack2_n(dack_2_n),
	     .dack3_n(dack_3_n)
	     );

   // Sheet 5
   sheet5 s5(
	     .a(a),
	     .cs_n(cs_n),
	     .clk88(clk88),
	     .aen_brd(aen_br0),
	     .dack0_brd_n(dack_0_brd_n),
	     .d(d),
	     .rom_addr_sel_n(rom_addr_sel_n),
	     .ior_n(ior_n),
	     .iow_n(iow_n),
	     .memr_n(memr_n),
	     .memw_n(memw_n),
	     .dma_aen_n(dma_aen_n),
	     .xa(xa),
	     .xd(xd),
	     .clk(clk),
	     .aen(aen),
	     .dack0_n(dack_0_n),
	     .xior_n(xior_n),
	     .xiow_n(xiow_n),
	     .xmemr_n(xmemr_n),
	     .xmemw_n(xmemw_n)
	     );

   // Sheet 6 (removed)
	/*
   sheet6 s6(
	     .d(d),
	     .xmemr_n(xmemr_n),
	     .ras_n(ras_n),
	     .cas_n(cas_n),
		  .xmemw_n(xmemw_n),
	     .a(a[15:0]),
	     .addr_sel(addr_sel),
	     .ram_addr_sel_n(ram_addr_sel_n),
	     .enb_ram_pck_n(enb_ram_pck_n),
	     .clk88(clk88),
	     .pck(pck),
	     .pck_n(pck_n)
	     );
*/

	// Sheet 7 
	sheet7 s7(
				.d(d),
				.xmemr_n(xmemr_n),
				.xmemw_n(xmemw_n),
				.a(a),
				.clk88(clk88),
				.reset(reset),
				.pck(pck),
				.pck_n(pck_n)
				);

   // Sheet 8
   sheet8 s8(
	     .spkr_data(spkr_data),
	     .dack0_brd_n(dack_0_brd_n),
	     .tim_2_gate_spk(tim_2_gate_spk),
	     .xior_n(xior_n),
	     .xiow_n(xiow_n),
	     .tc_cs_n(tc_cs_n),
	     .xa0(xa[0]),
	     .xa1(xa[1]),
	     .xd(xd),
	     .motor_off(motor_off),
	     .pclk(pclk),
	     .reset_drv_n(reset_drv_n),
		  .zclk(clk88),
		  .activate_timer_2(activate_timer_2),
	     .drq0(drq[0]),
	     .irq0(irq0),
	     .spkr_data_out(spkr_data_out),
	     .tc_2_out(tc_2_out),
	     .cass_data_in(cass_data_in)
	     );

   // Sheet 9
   sheet9 s9(
		  .clk88(clk88),
	     .xior_n(xior_n),
	     .xiow_n(xiow_n),
	     .ppics_n(ppi_cs_n),
	     .xa0(xa[0]),
	     .xa1(xa[1]),
	     .reset(reset),
	     .xd(xd),
	     .pck(pck),
	     .io_ch_ck(io_ch_ck),
	     .tc_2_out(tc_2_out),
	     .cass_data_in(cass_data_in),
	     .pclk(pclk),
	     .reset_drv_n(reset_drv_n),
	     .tim_2_gate_spk(tim_2_gate_spk),
	     .spkr_data(spkr_data),
	     .motor_off(motor_off),
	     .enb_ram_pck_n(enb_ram_pck_n),
	     .enable_io_ck_n(enable_io_ck_n),
	     .irq1(irq1),
	     .np_instl_sw(npinstlsw),
	     .kbd_clk(KEYBOARD_CLK),
	     .kbd_data(KEYBOARD_DATA),
		  .keyboard_load_special(keyboard_load_special)
	     );

   // Sheet 10
   sheet10 s0(
	      .d(d),
	      .a(a),
	      .ior_n(ior_n),
	      .iow_n(iow_n),
	      .memr_n(memr_n),
	      .memw_n(memw_n),
	      .clk(clk),
	      .osc(osc),
	      .tc(tc),
	      .aen(aen),
	      .reset_drv(reset_drv),
	      .dack_n({dack_3_n,dack_2_n,dack_1_n,dack_0_n}),
	      .ale(ale),
	      .vga_clk(vga_clk),
	      .reset(reset),
	      .io_ch_ck_n(io_ch_ck_n),
	      .io_ch_rdy(io_ch_rdy),
	      .drq1(drq[1]),
	      .drq2(drq[2]),
	      .drq3(drq[3]),
	      .irq2(irq2),
	      .irq3(irq3),
	      .irq4(irq4),
	      .irq5(irq5),
	      .irq6(irq6),
	      .irq7(irq7),
	      .vga_red_o(vga_red_o),
	      .vga_green_o(vga_green_o),
	      .vga_blue_o(vga_blue_o),
	      .horiz_sync(horiz_sync),
	      .vert_sync(vert_sync)
	      );
endmodule // motherboard

/*
 * sheet1:
 * Verilog description of the first sheet of the motherboard
 */
module sheet1(
	      input pwr_good, // power good signal, now reset signal
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
	      inout tri [19:0] a, // address bus
	      output lock_n, // lock cpu
	      output reset, // reset cpu
	      output clk88, // 4.77 MHz clock for cpu
	      inout [7:0] d, // data bus
	      output vga_clk, // clock for VGA
	      output s0_n,
	      output s1_n,
	      output s2_n,
	      output ale,
	      output npnpi,
	      inout ior_n,
	      inout memr_n,
	      inout iow_n,
	      inout memw_n
	      );

	// Register for address
	reg [19:0] addr;
	
   // Wires
   wire 	     ready;
   wire 	     intr;
   wire [7:0] 	     adp, iid;
   wire 	     rqgti_n;
   wire [1:0] 	     qs;
   wire 	     test_n;
   wire [19:0] 	     ap;
   wire 	     inta_n;
   wire 	     spen_n;
   wire 	     den;
   wire 	     u84;
   wire 	     dtr;
   wire [3:0] 	     xrd; // extra data
   
   // Assign powergood to reset
   assign reset = pwr_good;
	
   // 8087 math coprocessor
   assign rqgti_n = 1'b1;
   assign test_n = 1'b1;
   assign npnpi = 1'b0;
	
   // 8284 clock generation
   intel8284a i8284(
		    .fpga_clk(clk_100),
		    .rdy1(dma_wait_n),
		    .aen1(rdy_wait_n),
		    .ready(ready),
		    .clk(clk88),
		    .osc(osc),
		    .pclk(pclk),
		    .vclk(vga_clk)
		    );

   // Intel 8088 CPU
   processor_8088 i8088(
			.clk(clk88),
			.rst(~reset),
			.mnmx(1'b0),		         // minimum and maximum mode. high-> min, low-> max
		.ready(ready),              // inform processor that mem or I/0 is ready for data transfer
		.hold(1'b1),               // suspends the processor, rqgto
		.nmi(nmi),                // causes non-maskable type-2 interrupt
		.intr(intr),               // maskable interrupt request
		.test_n(test_n),             // examined by processor testing instructions
		.iid(iid),
		.a(ap),               // address bus
		.hlda(rqgti_n),               // acknowledges that the processor is suspended
		.inta_n(qs[1]),             // indicates that an intr request has been received
		.ale(qs[0]),                // indicates that current data on address/data bus are address
		.den_n(s0_n),              // disconents data bus connection
		.dtr(s1_n),               // indicates direction of data transfer. low-> to 8088, high-> from 8088
		.wr_n(lock_n),               // indicates that the processor is writing to mem or I/O device
		.rd_n(),               // indicates that the processor is reading from mem or I/O device (not connect)
		.iom(s2_n),               // indicates that processor is accessing mem or I/O. low-> mem, high-> I/O
		.sso(),                // status output (not connect)
		.ad(adp)           // address/data bus
	);
	
   // Intel 8259 Programmable Interrupt Controller
   intel8259 i8259(
			.clk(clk88),
		   .cs_n(intr_cs_n),
		   .wr_n(xiow_n),
		   .rd_n(xior_n),
		   .d(adp),
		   .cas(3'b000), // not connected
		   .a0(xa0_n),
		   .inta_n(qs[1]), // changing from inta_n because interrupts behaving badly
		   .ir(irq),
		   .rst(reset),
		   .inta(intr), // int
		   .spen_n(spen_n),
			.iid(iid)
		   );

   // Intel 8288 Bus Controller
   intel8288 i8288(
	           .s_n({s2_n,s1_n,s0_n}),
	           .clk(clk88),
				  .rst(reset),
	           .aen_n(aen_br0),
	           .cen(aen_n), // output enable
	           .iob(1'b0), // set equal to 0
	           .mrdc_n(memr_n),
	           .mwtc_n(), // not connected
	           .amwc_n(memw_n),
	           .iorc_n(ior_n),
	           .iowc_n(), // not connected
	           .aiowc_n(iow_n),
	           .inta_n(inta_n),
	           .dtr(dtr),
	           .den(den),
	           .mce(), // not connected
	           .ale(ale)
		   );
   
   // NAND gate U84
   assign u84 = ~(den & spen_n); // taking out spen_n, not quite sure what it is doing here
   
   // LS 373 and LS 374 Units
   ls374 u10(
		  .clk(clk_100),
		  .rst_n(~reset),
	     .d(ap[19:16]),
	     .q(a[19:16]),
	     .g(ale),
	     .oe_n(aen_br0)
	     );

   ls373 u9(
	    .clk(clk_100),
		 .rst_n(~reset),
	    .d(ap[15:8]),
	    .q(a[15:8]),
	    .g(ale),
	    .oe_n(aen_br0)
	    );

   ls373 u7(
	    .clk(clk_100),
		 .rst_n(~reset),
	    .d(ap[7:0]),
	    .q(a[7:0]),
	    .g(ale),
	    .oe_n(aen_br0)
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
	      inout xmemr_n,
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
	      inout xd7,
	      input wrt_nmi_reg_n,
	      input io_ch_ck_n,
	      input enable_io_clk_n,
	      input clk88,
	      input clk_100,
	      output reg rdy_wait,
	      output rdy_to_dma,
	      output dma_aen_n,
	      output reg aen_brd,
	      output aen_n,
			output dma_wait_n,
	      output reg holda,
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
   //wire 	     aen_n;
   wire 	     b6, b8, b9, b10, b11;
   wire 	     clk_n;
   wire 	     b12;
   
   // Registers
   reg 		     b3, b5, b7, allow_nmi;
   
	// Initialize
	initial begin
		holda = 1'b0;
		aen_brd = 1'b0;
		rdy_wait = 1'b0; // never used?
	end
	
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
   assign b11 = ~(io_ch_ck & ~enable_io_clk_n);
   assign io_ch_ck = (~b11 | ~io_ch_ck_n);
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
   always @(posedge clk or negedge reset_n) begin
      if(reset_n == 1'b0) begin
	 aen_brd <= 1'b0;
      end
      else begin
	 aen_brd <= holda;
      end
   end
   
   // LS175 Q2
   always @(posedge clk or negedge reset_n) begin
      if(reset_n == 1'b0) begin
	 b5 <= 1'b0;
      end
      else begin
	 b5 <= b0;
      end
   end
   
   // LS175 Q3
   always @(posedge clk or negedge reset_n) begin
      if(reset_n == 1'b0) begin
	 b7 <= 1'b0;
      end
      else begin
	 b7 <= b4;
      end
   end

   // U87
   always @(posedge clk_n or negedge reset_n) begin
		if(reset_n == 1'b0) begin
			holda <= 1'b0;
		end
      else if(b8 == 1'b0) begin
			holda <= 1'b1;
      end
      else if(hrq_dma == 1'b0) begin
			holda <= 1'b0;
      end
      else begin
			holda <= b7;
      end
   end // always @ (posedge clk_n)

	// Okay, so NMI is creating a problem for some reason and I don't know why
	// I'm going to disable this and hold out hope that nothing breaks
	// In theory all NMI is ever used for is for the floating point unit, so #yolo
   always @(posedge wrt_nmi_reg_n or negedge reset_n) begin
		if(reset_n == 1'b0) begin
			allow_nmi <= 1'b0;
		end
		else begin
			allow_nmi <= 1'b0;
		end
	end
/*
   always @(posedge wrt_nmi_reg_n or negedge reset_n) begin
		if(reset_n == 1'b0) begin
			allow_nmi <= 1'b0;
		end
		else begin
			allow_nmi <= xd7;
		end
	end
*/
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
	      inout a13,
	      inout a14,
	      inout a15,
	      inout a16,
	      inout a17,
	      inout a18,
	      inout a19,
	      inout xmemw_n,
	      input dack_0_brd_n,
	      inout xmemr_n,
	      input reset_drv_n,
	      input dack_0,
	      input clk_100,
	      output dma_cs_n,
	      output intr_cs_n,
	      output tc_cs_n,
	      output ppi_cs_n,
			output wrt_nmi_reg_n,
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
   assign refresh_gate_n = ~(rasc & dack_0);
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
	     .g2a(dack_0),
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
		 .t5(cas_nc),
		 .t25(addr_sel),
		 .t50(),
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
	      inout xior_n,
	      inout xiow_n,
	      inout xmemr_n,
	      inout xmemw_n,
	      input [3:0] drq,
	      input reset,
	      inout [7:0] xd,
	      input dma_aen_n,
	      input wrt_dma_pg_reg_n,
	      inout tri [19:0] a,
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
		    .memr_io(xmemr_n),
		    .memw_io(xmemw_n)
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
		.read(~dma_aen_n),
		.wa(xa[0]),
		.wb(xa[1]),
		.write(~wrt_dma_pg_reg_n)
		);

   // LS373 Unit
   ls373 ls3730(
	   .clk(dclk),
		.rst_n(~reset),
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
	      inout ior_n,
	      inout iow_n,
	      inout memr_n,
	      inout memw_n,
	      input dma_aen_n,
	      inout [12:0] xa,
	      inout [7:0] xd,
	      output clk,
	      output aen,
	      output dack0_n,
	      inout xior_n,
	      inout xiow_n,
	      inout xmemr_n,
	      inout xmemw_n
	      );

   // Wires
   wire 	     b0, b1, b2;
   wire [3:0] 	     e0, e1;
   
   // Wire assignments
   assign b0 = (~xa[9] & ~xior_n);
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
		.dir(b2),
		.g_n(aen_brd)
		);

   ls245 ls2451(
		.a({e1,memw_n,memr_n,iow_n,ior_n}),
		.b({e0,xmemw_n,xmemr_n,xiow_n,xior_n}),
		.dir(dma_aen_n),
		.g_n(1'b0)
		);

   // ROM Module
   rom rommod(
              .a(xa),
	      .d(xd),
	      .cs_n({cs_n[7:2],1'b1,1'b1}),
	      .clk(clk88)
	      );

endmodule // sheet5

/*
 * sheet6:
 * The sixth and seventh sheet of the motherboard
 */
module sheet6(
	      inout [7:0] d,
	      inout xmemr_n,
	      input [3:0] ras_n,
	      input [3:0] cas_n,
			inout xmemw_n,
	      inout [15:0] a,
	      input addr_sel,
	      input ram_addr_sel_n,
	      input enb_ram_pck_n,
	      input clk88,
	      output reg pck,
	      output reg pck_n
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
   //reg 		     pck, pck_n;
   
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
		.g(1'b1)
		);

   ls158 ls1581(
	        .a(a[7:4]),
	        .b(a[15:12]),
	        .y(ma[7:4]),
	        .s(addr_sel),
	        .g(1'b1)
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

   // I HAVE NO IDEA WHAT THIS IS TRYING TO ACCOMPLISH
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
 * sheet7:
 * The seventh sheet of the motherboard
 */
module sheet7(
	inout [7:0] d,
	inout xmemr_n,
	inout xmemw_n,
	inout [19:0] a,
	input clk88,
	input reset,
	output pck,
	output pck_n
	);
	
	// Wires
	wire ram_sel_n;
	wire we;
	wire re;
	wire [7:0] dout;
	wire rst_n;
	
	// Registers
	reg [7:0] din;
	wire [17:0] addr;
	
	// Assignment
	assign ram_sel_n = a[19] | a[18];
	assign we = ~ram_sel_n & ~xmemw_n;
	assign re = ~ram_sel_n & ~xmemr_n;
	assign d = (re == 1'b1) ? dout : 8'bzzzzzzzz;
	assign pck_n = ~pck;
	assign pck = 1'b0;
	assign rst_n = ~reset;
	assign addr = a[17:0];
	
	// Latch Register
	always @(posedge clk88 or negedge rst_n) begin
		if(~rst_n) begin
			din <= 8'b00000000;
		end
		else if(we) begin
			din <= d;
		end
		else begin
			din <= din;
		end
	end
	
	// New RAM Module
	newram nero(
		.clka(clk88),
		.rsta(reset),
		.wea(we),
		.addra(addr),
		.dina(din),
		.douta(dout)
	);
	
	

endmodule

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
	      inout xa0,
	      inout xa1,
	      inout [7:0] xd,
	      input motor_off,
	      input pclk,
	      input reset_drv_n,
			input zclk,
			input activate_timer_2,
	      output reg drq0,
	      output irq0,
	      output spkr_data_out,
	      output tc_2_out,
	      output cass_data_in
	      );

   // Wires
   wire 	     out1, out2, out3;
   wire 	     motor_ctrl, sdata;
   wire 		  spkr_cnt;
	wire       activate_timer;
	wire       counter_out;
	
   // Registers
   reg 		     	pclka;
   reg [11:0] 		count;
   
   // Assignments
	assign activate_timer = activate_timer_2;
   assign cass_data_in = ~out2;
   assign tc_2_out = out2;
   assign sdata = ~(out2 & spkr_data);
   assign spkr_cnt = (count >= 12'h299);
	assign counter_out = (tim_2_gate_spk) ? spkr_cnt : 1'b1;
	//assign out2 = (activate_timer) ? out3 : counter_out;
	
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
	           .out({out2,out1,irq0}),
				  .rst_n(reset_drv_n),
				  .zclk(zclk)
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
   
	// Timer 2 Flip-Flop
	always @(posedge pclka or negedge reset_drv_n) begin
		if(~reset_drv_n) begin
			count <= 12'h533;
		end
		else if(count == 12'h0) begin
			count <= 12'h533;
		end
		else begin
			count <= count - 1;
		end
	end
	
   // DRQ0 Flip-Flop
   always @(posedge out1) begin
      if(dack0_brd_n == 1'b0) begin
			drq0 <= 1'b0;
      end
      else begin
			drq0 <= 1'b0; // KEYWORD: disabling for now
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
			input clk88,
	      input xior_n,
	      input xiow_n,
	      input ppics_n,
	      inout xa0,
	      inout xa1,
	      input reset,
	      inout [7:0] xd,
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
	      inout kbd_data,
			input keyboard_load_special
	      );

   // Wires
   wire [7:0] 	    pa,pb,pc,py,px;
   
   // Registers

   // Assignments
   assign tim_2_gate_spk = pb[0];
   assign spkr_data = pb[1];
   assign motor_off = pb[3];
   assign enb_ram_pck_n = pb[4];
   assign enable_io_ck_n = pb[5];
   assign np_instl_sw = py[1];
   
   // SW2 Assignments = 256k of RAM
   // According to http://selectric.org/ibmpc/switches.jpg, we want the switch pattern to be 0001_1001,
   // where 1 is on and 0 is off. If a switch is off, the input value is 1. If a switch is on, the input
   // value is 0. So, if pb[2] is 1, we read sw1-sw4 (0110) and if pb[2] is 0, we read sw5-sw8 (1110). 
   assign pc[0] = (pb[2] == 1'b1) ? 1'b0: 1'b0;
   assign pc[1] = (pb[2] == 1'b1) ? 1'b1: 1'b1;
   assign pc[2] = (pb[2] == 1'b1) ? 1'b1: 1'b1;
   assign pc[3] = (pb[2] == 1'b1) ? 1'b0: 1'b1;
   
	// PC assignments
	assign pc[7] = pck;
	assign pc[6] = io_ch_ck;
	assign pc[5] = tc_2_out;
	assign pc[4] = cass_data_in;
	
   // Other Assignments
   assign pa = (pb[7] == 1'b0) ? px : py;
   
   // Intel 8255
   intel8255 i8255(
				  .clk(clk88),
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
   // According to http://selectric.org/ibmpc/switches.jpg, we want the switch pattern to be 1101_0011,
   // where 1 is on and 0 is off. SW78 = 11 indicate 1 floppy drive, SW56 = 10 indicate CGA 80 x 25,
   // SW34 = 00 indicate banks 0-3 are filled, SW2 = 1 indicates no 8087, SW1 = 1 indicates no floppy drive
   // If a switch is off, the input value is 1. If a switch is on, the input value is 0.  
   // This means that our input pattern is 0010_1100
   assign py = 8'b0010_1100;
   
   // Keyboard Interface
   keyinterface keyboard(
			 .pclk(pclk),
			 .reset_n(reset_drv_n),
			 .pa(px),
			 .pb6(pb[6]),
			 .pb7(pb[7]),
			 .irq1(irq1),
			 .keyboard_clock(kbd_clk),
			 .keyboard_data(kbd_data),
			 .keyboard_load_special(keyboard_load_special)
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
	       output vert_sync
	       );

   // VDU Module
	vdu vgamod(

           // Wishbone Replacement Signals
           .clk(vga_clk), // 25 MHz VDU clock
			  .clk88(clk), // clock 4.77 MHz
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
   assign io_ch_rdy = 1'b1;
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

// irqdisable:
// Disable irq signals
module irqdisable(
	input clk,
	input rst_n,
	input irqbutton,
	output irq_en
	);
	
	// Parameters
	parameter [1:0] on = 2'b00,
		wait0 = 2'b01,
		off = 2'b10,
		wait1 = 2'b11;
		
	// Registers for FSM
	reg [1:0] state, nextstate;
	
	// Initial Conditions
	initial begin
		state = on;
		nextstate = on;
	end
	
	// Output assignment
	assign irq_en = (state == on);
	
	// FSM 
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) state <= on;
		else state <= nextstate;
	end
	
	// Next State Logic
	always @(*) begin
		case(state)
			on: begin
				if(irqbutton == 1'b1) nextstate = wait0;
				else nextstate = on;
			end
			wait0: begin
				if(irqbutton == 1'b0) nextstate = off;
				else nextstate = wait0;
			end
			off: begin
				if(irqbutton == 1'b1) nextstate = wait1;
				else nextstate = off;
			end
			wait1: begin
				if(irqbutton == 1'b0) nextstate = on;
				else nextstate = wait1;
			end
			default: begin
				nextstate = on;
			end
		endcase
	end
endmodule
	