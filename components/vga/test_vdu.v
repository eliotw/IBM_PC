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
			output GPIO_LED_0,
			output GPIO_LED_1,
			output GPIO_LED_2,
			output GPIO_LED_3,
			output GPIO_LED_4,
			output GPIO_LED_5,
			output GPIO_LED_6,
			output GPIO_LED_7,
			input GPIO_SW_C, // reset
			input GPIO_SW_E, // add one more
			input USER_CLK // user clock
			);

		// Parameters
		parameter [3:0]
			v0 = 8'b0001,
			v1 = 8'b0010,
			v2 = 8'b0100,
			v3 = 8'b1000;
			
   // Registers
   //reg 		      vga_clk; // VGA clock
   reg [3:0] 	      state, nextstate; // state of the clock fsm

   // Wires
	wire vga_clk;
   wire 	      clk; // User clock
   wire 	      rst; // Reset
   wire [1:0] 	      vga_red_o; // VGA Red
   wire [1:0] 	      vga_green_o; // VGA Green
   wire [1:0] 	      vga_blue_o; // VGA Blue
   wire 	      horiz_sync; // VGA Horizontal Sync
   wire 	      vert_sync; // VGA Vertical Sync
   wire [7:0] 	data; // Data wire
	wire [19:0] address; // Address of new data
	wire memw; // Write to memory
	wire incr; // Increment the counter
   
   // Wire assignment
   assign rst = GPIO_SW_C;
	assign incr = GPIO_SW_E;
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
	assign GPIO_LED_0 = vga_red_o[0]; // vga red o 0
   assign GPIO_LED_1 = vga_red_o[1]; // vga red o 1
   assign GPIO_LED_2 = vga_green_o[0]; // vga green o 0
   assign GPIO_LED_3 = vga_green_o[1]; // vga green o 1
   assign GPIO_LED_4 = vga_blue_o[0]; // vga blue o 0
   assign GPIO_LED_5 = vga_blue_o[1]; // vga blue o 1
   assign GPIO_LED_6 = horiz_sync; // vga horizontal sync
   assign GPIO_LED_7 = vga_clk; // vga vertical sync
   assign vga_clk = (state == v0) | (state == v1);
	
	initial begin
		state = v0;
		nextstate = v1;
	end
	
   // FSM to generate the user clock
   always @(state) begin
      case (state)
			v0: begin
				nextstate = v1;
				//vga_clk <= 1'b1;
			end
			v1: begin
				nextstate = v2;
				//vga_clk <= 1'b1;
			end
			v2: begin
				nextstate = v3;
				//vga_clk <= 1'b0;
			end
			v3: begin
				nextstate = v0;
				//vga_clk <= 1'b0;
			end
			default: begin
				nextstate = v0;
				//vga_clk <= 1'b0;
			end
      endcase // case (state)   
   end // always @ (posedge clk)
   
	always @(posedge clk) begin
		if(rst == 1'b1) begin
			state <= v0;
		end	
		else begin
			state <= nextstate;
		end
	end
	
   vdu vga(
	   .clk(vga_clk), // 25 MHz VDU clock
	   .rst(rst), // Reset Line
	   .a(address), // Address bits
	   .d(data), // Data bits
	   .ior(1'b0), // I/O Read
	   .iow(1'b0), // I/O Write
	   .memr(1'b0), // Memory Read
	   .memw(memw), // Memory Write
	   .vga_red_o(vga_red_o),
	   .vga_green_o(vga_green_o),
	   .vga_blue_o(vga_blue_o),
	   .horiz_sync(horiz_sync),
	   .vert_sync(vert_sync)
	   );
		
	play_vdu pvd(
		.memw(memw),
		.address(address),
		.data(data),
		.vga_clk(vga_clk),
		.rst(rst),
		.incr(incr)
	);
endmodule // top_vdu

/*
 * play_vdu:
 * A module to play with the video display unit
 */
module play_vdu(
	output reg memw,
	output reg [19:0] address,
	inout [7:0] data,
	input vga_clk,
	input rst,
	input incr
	);
	
	parameter [7:0]
			v0 = 8'b0000_0001,
			v1 = 8'b0000_0010,
			v2 = 8'b0000_0100,
			v3 = 8'b0000_1000,
			v4 = 8'b0001_0000,
			v5 = 8'b0010_0000,
			v6 = 8'b0100_0000,
			v7 = 8'b1000_0000,
			va = 8'b0100_0001, // character is a
			vb = 8'b0000_1111; // character attribute
	
	reg actin;
	reg [7:0] state, nextstate;
	reg [7:0] dataout;
	reg [19:0] nextaddress;
	assign data = (actin == 1'b1) ? dataout : 8'bzzzz_zzzz;
	
	initial begin
		memw = 1'b0;
		actin = 1'b0;
		dataout = 8'b0;
		address = 20'hB8000;
		nextaddress = 20'hB8000;
		state = v0;
		nextstate = v0;
	end
	
	always @(posedge vga_clk) begin
		if(rst) begin
			state <= v0;
			address <= 20'hB8000;
		end
		else begin
			state <= nextstate;
			address <= nextaddress;
		end
	end
	
	always @(state or incr or address) begin
		case(state)
			v0: begin
				if(incr == 1'b1) begin
					nextstate <= v1;
				end
				else begin
					nextstate <= v0;
				end
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				nextaddress <= address;
			end
			v1: begin
				if(incr == 1'b0) begin
					nextstate <= v2;
				end
				else begin
					nextstate <= v1;
				end
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				nextaddress <= address;
			end
			v2: begin
				nextstate <= v3;
				dataout <= va;
				actin <= 1'b1;
				memw <= 1'b1;
				nextaddress <= address;
			end
			v3: begin
				nextstate <= v4;
				dataout <= va;
				actin <= 1'b0;
				memw <= 1'b0;
				nextaddress <= address + 1;
			end
			v4: begin
				nextstate <= v5;
				dataout <= vb;
				actin <= 1'b1;
				memw <= 1'b1;
				nextaddress <= address;
			end
			v5: begin
				nextstate <= v0;
				dataout <= vb;
				actin <= 1'b0;
				memw <= 1'b0;
				nextaddress <= address + 1;
			end
			default: begin
				nextstate <= v0;
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				nextaddress <= 20'hB8000;
			end
		endcase
	end
	
endmodule
	
/*
 * test_vdu:
 * Just to sort out any compiler issues
 */
 /*
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
*/
