/*
 * top_vdu:
 * This test module is a bit unconventional. It is meant to test the VDU
 * module directly on the FPGA
 */
module top_vdu(
	       output HDR1_2, // vga red o 0
	       output HDR1_4, // vga red o 1
	       output HDR1_6, // vga green o 0
	       output HDR1_8, // vga green o 1
	       output HDR1_10, // vga blue o 0
	       output HDR1_12, // vga blue o 1
	       output HDR1_14, // vga horizontal sync
	       output HDR1_16, // vga vertical sync
	       output HDR1_18, // vga clock
	       input GPIO_SW_C, // reset
	       input USER_CLK // user clock
	       );

   // Registers
   reg 		      vga_clk; // VGA clock
   reg [1:0] 	      state; // state of the clock fsm

   // Wires
   wire 	      clk; // User clock
   wire 	      rst; // Reset
   wire [1:0] 	      vga_red_o; // VGA Red
   wire [1:0] 	      vga_green_o; // VGA Green
   wire [1:0] 	      vga_blue_o; // VGA Blue
   wire 	      horiz_sync; // VGA Horizontal Sync
   wire 	      vert_sync; // VGA Vertical Sync
   wire [7:0] 	      d; // Data wire
   
   // Wire assignment
   assign rst = GPIO_SW_C;
   assign clk = USER_CLK;
   assign HDR1_2 = vga_red_o[0]; // vga red o 0
   assign HDR1_4 = vga_red_o[1]; // vga red o 1
   assign HDR1_6 = vga_green_o[0]; // vga green o 0
   assign HDR1_8 = vga_green_o[1]; // vga green o 1
   assign HDR1_10 = vga_blue_o[0]; // vga blue o 0
   assign HDR1_12 = vga_blue_o[1]; // vga blue o 1
   assign HDR1_14 = horiz_sync; // vga horizontal sync
   assign HDR1_16 = vert_sync; // vga vertical sync
   assign HDR1_18 = vga_clk; // vga clock
   
   // FSM to generate the user clock
   always @(posedge clk) begin
      case (state)
	2'b00: begin
	   state <= 2'b01;
	   vga_clk <= 1'b1;
	end
	2'b01: begin
	   state <= 2'b10;
	   vga_clk <= 1'b1;
	end
	2'b10: begin
	   state <= 2'b11;
	   vga_clk <= 1'b0;
	end
	2'b11: begin
	   state <= 2'b00;
	   vga_clk <= 1'b0;
	end
	default: begin
	   state <= 2'b00;
	   vga_clk <= 1'b0;
	end
      endcase // case (state)   
   end // always @ (posedge clk)
   
   vdu vga(
	   .clk(vga_clk), // 25 MHz VDU clock
	   .rst(rst), // Reset Line
	   .a(20'b0), // Address bits
	   .d(d), // Data bits
	   .ior(1'b0), // I/O Read
	   .iow(1'b0), // I/O Write
	   .memr(1'b0), // Memory Read
	   .memw(1'b0), // Memory Write
	   .vga_red_o(vga_red_o),
	   .vga_green_o(vga_green_o),
	   .vga_blue_o(vga_blue_o),
	   .horiz_sync(horiz_sync),
	   .vert_sync(vert_sync)
	   );

endmodule // top_vdu

/*
 * test_vdu:
 * Just to sort out any compiler issues
 */
module test_vdu();
   
   wire [1:0] red, green, blue;
   wire       hor, vert, vga;
   integer    i;
   reg 	      rst, clk;

   always @(red or green or blue) begin
      $display("r%b g%b b%b h%b v%b clk%b",red,green,blue,hor,vert,vga);
   end
   
   initial begin
      rst = 1'b0;
      clk = 1'b0;
      i = 0;
      @(posedge clk);
      rst = 1'b1;
      @(posedge clk);
      @(posedge clk);
      rst = 1'b0;
      @(posedge clk);
      for(i = 0; i < 1000000; i = i + 1) begin
	 @(posedge clk);
	 //$display("r%b g%b b%b h%b v%b clk%b",red,green,blue,hor,vert,vga);
      end
      $finish();
   end

   always begin
      #50 clk = ~clk;
   end
   
   top_vdu t99(
	       .HDR1_2(red[0]), // vga red o 0
	       .HDR1_4(red[1]), // vga red o 1
	       .HDR1_6(green[0]), // vga green o 0
	       .HDR1_8(green[1]), // vga green o 1
	       .HDR1_10(blue[0]), // vga blue o 0
	       .HDR1_12(blue[1]), // vga blue o 1
	       .HDR1_14(hor), // vga horizontal sync
	       .HDR1_16(vert), // vga vertical sync
	       .HDR1_18(vga), // vga clock
	       .GPIO_SW_C(rst), // reset
	       .USER_CLK(clk) // user clock
	       );

   
endmodule // test_vdu

