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
	wire warning; // a warning
	wire memr; // read from memory
	wire ior, iow; // read and write to io
   
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
   assign GPIO_LED_6 = warning; // vga horizontal sync
   assign GPIO_LED_7 = warning; // vga vertical sync
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
	   .ior(ior), // I/O Read
	   .iow(iow), // I/O Write
	   .memr(memr), // Memory Read
	   .memw(memw), // Memory Write
	   .vga_red_o(vga_red_o),
	   .vga_green_o(vga_green_o),
	   .vga_blue_o(vga_blue_o),
	   .horiz_sync(horiz_sync),
	   .vert_sync(vert_sync)
	   );
		
	play_vdu pvd(
		.memw(memw),
		.memr(memr),
		.ior(ior),
		.iow(iow),
		.address(address),
		.warning(warning),
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
	output reg memr,
	output reg ior,
	output reg iow,
	output reg [19:0] address,
	output reg warning,
	inout [7:0] data,
	input vga_clk,
	input rst,
	input incr
	);
	
	parameter [7:0]
			v0 = 8'b0000_0000,
			v1 = 8'b0000_0001,
			v2 = 8'b0000_0010,
			v3 = 8'b0000_0011,
			v4 = 8'b0000_0100,
			v5 = 8'b0000_0101,
			v6 = 8'b0000_0110,
			v7 = 8'b0000_0111,
			v8 = 8'b0000_1000,
			v9 = 8'b0000_1001,
			va = 8'b0000_1010,
			vb = 8'b0000_1011,
			vc = 8'b0000_1100,
			vd = 8'b0000_1101,
			ve = 8'b0000_1110,
			vf = 8'b0000_1111,
			vg = 8'b0001_0000,
			vh = 8'b0001_0001,
			vi = 8'b0001_0010,
			vj = 8'b0001_0011,
			vk = 8'b0001_0100,
			vl = 8'b0001_0101,
			vm = 8'b0001_0110,
			vn = 8'b0001_0111,
			vo = 8'b0001_1000,
			vp = 8'b0001_1001,
			vq = 8'b0001_1010,
			vr = 8'b0001_1011,
			vs = 8'b0001_1100,
			vt = 8'b0001_1101,
			vu = 8'b0001_1110,
			vv = 8'b0001_1111,
			vw = 8'b0010_0000,
			vx = 8'b0010_0001,
			vy = 8'b0010_0010,
			testchar = 8'hdb;
	
	reg actin;
	reg [7:0] state, nextstate;
	reg [7:0] dataout;
	reg [15:0] charout, nextchar;
	reg [19:0] nextaddress;
	assign data = (actin == 1'b1) ? dataout : 8'bzzzz_zzzz;
	
	initial begin
		memw = 1'b0;
		actin = 1'b0;
		dataout = 8'b0;
		nextchar = 16'b0;
		charout = 16'b0;
		address = 20'hB8000;
		nextaddress = 20'hB8000;
		state = v0;
		nextstate = v0;
		warning = 1'b0;
		memr = 1'b0;
		ior = 1'b0;
		iow = 1'b0;
	end
	
	always @(posedge vga_clk) begin
		if(rst) begin
			charout <= 16'b0;
			state <= v0;
			address <= 20'hB8000;
		end
		else begin
			charout <= nextchar;
			state <= nextstate;
			address <= nextaddress;
		end
	end
	
	always @(state or incr or address or charout or data) begin
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
				memr <= 1'b0;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Character Write Active
			v1: begin
				nextstate <= v2;
				dataout <= testchar;
				actin <= 1'b1;
				memw <= 1'b1;
				memr <= 1'b0;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Character Write Deactivate
			v2: begin
				nextstate <= v3;
				dataout <= testchar;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= address; // address + 1
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test character activate 1
			v3: begin
				nextstate <= v4;
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b1;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test character activate 2
			v4: begin
				if(data != testchar) begin
					nextstate <= vc; //!!!
				end
				else begin
					nextstate <= v5;
				end
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b1;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test character activate 3
			v5: begin
				nextstate <= v6;
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= address + 1;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Attribute activate 1
			v6: begin
				nextstate <= v7;
				dataout <= {4'b0,address[6:3]};
				actin <= 1'b1;
				memw <= 1'b1;
				memr <= 1'b0;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Attribute activate 2
			v7: begin
				nextstate <= v8;
				dataout <= {4'b0,address[6:3]};
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test character activate 3
			v8: begin
				nextstate <= v9;
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b1;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test character activate 4
			v9: begin
				if(data != {4'b0,address[6:3]}) begin
					nextstate <= vc; //!!!
				end
				else begin
					nextstate <= va;
				end
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b1;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test character activate 5
			va: begin
				dataout <= 8'b0_000_1111;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				if(address >= 20'hbbfff) begin
					nextstate <= vb;
					nextaddress <= 20'h003d4;
					nextchar <= 8'b0;
				end
				else begin
					nextstate <= v0;
					nextaddress <= address + 1;
					nextchar <= charout + 1;
				end
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test State 0
			// 3D4, reg A
			vb: begin
				nextstate <= vd;
				dataout <= 8'haa;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d4;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Trap State
			vc: begin
				nextstate <= vc;
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b1;
				nextaddress <= address;
				nextchar <= charout;
				warning <= 1'b1;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test State 1
			// 3D4, reg A
			vd: begin
				nextstate <= ve;
				dataout <= 8'haa;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test State 2
			// 3D4, reg A
			ve: begin
				nextstate <= vf;
				dataout <= 8'h01;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Test State 3
			// 3D4, reg A
			vf: begin
				nextstate <= vg;
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			// Test State 4
			// 3D4, reg A
			vg: begin
				if(data != 8'h01) begin
					nextstate <= vc;
				end
				else begin
					nextstate <= vh;
				end
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			// Test State 0
			// 3D4, reg b
			vh: begin
				nextstate <= vi;
				dataout <= 8'hbb;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d4;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Test State 1
			// 3D4, reg b
			vi: begin
				nextstate <= vj;
				dataout <= 8'hbb;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test State 2
			// 3D4, reg b
			vj: begin
				nextstate <= vk;
				dataout <= 8'h01;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Test State 3
			// 3D4, reg b
			vk: begin
				nextstate <= vl;
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			// Test State 4
			// 3D4, reg b
			vl: begin
				if(data != 8'h01) begin
					nextstate <= vc;
				end
				else begin
					nextstate <= vm;
				end
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			
			// Test State 0
			// 3D4, reg e
			vm: begin
				nextstate <= vn;
				dataout <= 8'hee;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d4;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Test State 1
			// 3D4, reg e
			vn: begin
				nextstate <= vo;
				dataout <= 8'hee;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test State 2
			// 3D4, reg e
			vo: begin
				nextstate <= vp;
				dataout <= 8'h01;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Test State 3
			// 3D4, reg e
			vp: begin
				nextstate <= vq;
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			// Test State 4
			// 3D4, reg e
			vq: begin
				if(data != 8'h01) begin
					nextstate <= vc;
				end
				else begin
					nextstate <= vr;
				end
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			
			// Test State 0
			// 3D4, reg f
			vr: begin
				nextstate <= vs;
				dataout <= 8'hff;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d4;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Test State 1
			// 3D4, reg f
			vs: begin
				nextstate <= vt;
				dataout <= 8'hff;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Test State 2
			// 3D4, reg f
			vt: begin
				nextstate <= vu;
				dataout <= 8'h01;
				actin <= 1'b1;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b1;
			end
			// Test State 3
			// 3D4, reg f
			vu: begin
				nextstate <= vv;
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003d5;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			// Test State 4
			// 3D4, reg f
			vv: begin
				if(data != 8'h01) begin
					nextstate <= vc;
				end
				else begin
					nextstate <= vw;
				end
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003da;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			
			// Test State 0
			// 3DA
			vw: begin
				nextstate <= vx;
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003da;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end
			// Test State 1
			// 3DA
			vx: begin
				if((data[7:4] != 4'b0000) || (data[2:1] != 2'b00)) begin
					nextstate <= vc;
				end
				else begin
					nextstate <= vy;
				end
				dataout <= 8'h01;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'h003da;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b1;
				iow <= 1'b0;
			end

			// Test final state
			// return to normal pattern
			vy: begin
				nextstate <= v0;
				dataout <= 8'h0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'hb8000;
				nextchar <= charout;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
			// Default state
			default: begin
				nextstate <= v0;
				dataout <= 8'b0;
				actin <= 1'b0;
				memw <= 1'b0;
				memr <= 1'b0;
				nextaddress <= 20'hB8000;
				nextchar <= 8'b0;
				warning <= 1'b0;
				ior <= 1'b0;
				iow <= 1'b0;
			end
		endcase
	end
	
endmodule
