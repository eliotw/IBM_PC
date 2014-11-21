/*
 * keyinterface:
 * This module is the keyboard interface for the IBM PC
 */
module keyinterface(
	pclk,
	reset_n,
	pa,
	pb6,
	pb7,
	irq1,
	keyboard_clock,
	keyboard_data,
	keyboard_load_special
	);
	
	// Inputs, Outputs, and Inouts
	input pclk; // pclk from ibm pc
	input reset_n; // reset from ibm pc
	output [7:0] pa; // keyboard output to ibm pc
	input pb6; // clear keyboard clock, useless?
	input pb7; // clear keyboard irq
	output irq1; // irq from keyboard
	inout keyboard_clock; // clock coming from keyboard
	inout keyboard_data; // data going to and from keyboard
	input keyboard_load_special; // load special program
	
	// Wires
	wire [7:0] datakeyout; // data that has just come from keyboard
	wire newdata; // indicates that new keyboard data is available
	wire datain; // data that is coming from the keyboard
	wire reset; // reset wire
	wire [7:0] fdata; // translated data with f0 check
	
	// Registers
	reg [7:0] pa; // data that is visible to ibm pc
	reg [7:0] state; // current state of fsm
	reg irq1; // irq from keyboard
	reg [7:0] tdata; // translated data
	
	// FSM State Enum
   parameter [7:0]
		idle = 8'b00000001,
		data = 8'b00000010,
		wclr = 8'b00000100,
		f0s0 = 8'b00001000,
		f0s1 = 8'b00010000,
		f0s2 = 8'b00100000,
		pb60 = 8'b01000000,
		pb61 = 8'b10000000;
	
	// Assignment of data line
	assign datain = keyboard_data;
	
	// Assignment of reset
	assign reset = ~reset_n;

	// Assign f0 check
	assign fdata = tdata;
   
	// Keyboard input module
	keyin keyinmod(
		.clk(keyboard_clock),
		.data(datain),
		.dataout(datakeyout),
		.newdata(newdata)
		);
		
	// Initial state
	initial begin
		state<=idle;
		pa<=8'h00;
		irq1<=1'b0;
	end
	
   // FSM State Movement
   always @(posedge pclk) begin
      //Activating at positive edge of clock
      case(state)
			idle: begin
				if(reset == 1'b1) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb6 == 1'b0) begin
					state<=pb60;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(newdata == 1'b1) begin
					if(fdata == 8'hf0) begin
						state<=f0s0;
						pa<=8'h00;
						irq1<=1'b0;
					end
					else begin
						state<=data;
						pa<=fdata;
						irq1<=1'b0;
					end
				end
				else begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
			end
			data: begin
				if(reset == 1'b1) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb6 == 1'b0) begin
					state<=pb60;
					pa<=pa;
					irq1<=1'b0;
				end
				else if(pb7 == 1'b1) begin
					state<=wclr;
					pa<=pa;
					irq1<=1'b0;
				end
				else begin
					state<=data;
					pa<=pa;
					irq1<=1'b1;
				end
			end
			wclr: begin
				if(reset == 1'b1) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb6 == 1'b0) begin
					state<=pb60;
					pa<=pa;
					irq1<=1'b0;
				end
				else if(newdata == 1'b0) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else begin
					state<=wclr;
					pa<=8'h00;
					irq1<=1'b0;
				end
			end
			f0s0: begin
				if(reset == 1'b1) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb6 == 1'b0) begin
					state<=pb60;
					pa<=pa;
					irq1<=1'b0;
				end
				else if(newdata == 1'b0) begin
					state<=f0s1;
					pa<=pa;
					irq1<=1'b0;
				end
				else begin
					state<=f0s0;
					pa<=pa;
					irq1<=1'b0;
				end
			end
			f0s1: begin
				if(reset == 1'b1) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb6 == 1'b0) begin
					state<=pb60;
					pa<=pa;
					irq1<=1'b0;
				end
				else if(newdata == 1'b1) begin
					if(fdata == 8'hf0) begin
						state<=f0s0;
						pa<=pa;
						irq1<=1'b0;
					end
					else begin
						state<=f0s2;
						pa<={1'b1,fdata[6:0]};
						irq1<=1'b0;
					end
				end
				else begin
					state<=f0s1;
					pa<=pa;
					irq1<=1'b0;
				end
			end
			f0s2: begin
				if(reset == 1'b1) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb6 == 1'b0) begin
					state<=pb60;
					pa<=pa;
					irq1<=1'b0;
				end
				else if(pb7 == 1'b1) begin
					state<=wclr;
					pa<=pa;
					irq1<=1'b0;
				end
				else begin
					state<=f0s2;
					pa<=pa;
					irq1<=1'b1;
				end
			end
			pb60: begin
				if(reset == 1'b1) begin
					state<=idle;
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb6 == 1'b0) begin
					state<=pb60;
					pa<=pa;
					irq1<=1'b0;
				end
				else begin
					state<=pb61;
					pa<=pa;
					irq1<=1'b0;
				end
			end
			pb61: begin
				if(reset == 1'b1) begin
					state<=idle; 
					pa<=8'h00;
					irq1<=1'b0;
				end
				else if(pb7 == 1'b0) begin
					state<=data;
					pa<=8'haa;
					irq1<=1'b0;
				end
				else begin
					state<=pb61;
					pa<=pa;
					irq1<=1'b0;
				end
			end
			default: begin
				state<=idle;
				pa<=8'h00;
				irq1<=1'b0;
			end
      endcase
   end
	
	// Translate udata to tdata
   always @(datakeyout) begin
      case(datakeyout)
			// Block 0
			8'h00: tdata = 8'hff;
			8'h01: tdata = 8'h43;
			8'h02: tdata = 8'h41;
			8'h03: tdata = 8'h3f;
			8'h04: tdata = 8'h3d;
			8'h05: tdata = 8'h3b;
			8'h06: tdata = 8'h3c;
			8'h07: tdata = 8'h58;
			8'h08: tdata = 8'h64;
			8'h09: tdata = 8'h44;
			8'h0a: tdata = 8'h42;
			8'h0b: tdata = 8'h40;
			8'h0c: tdata = 8'h3e;
			8'h0d: tdata = 8'h0f;
			8'h0e: tdata = 8'h29;
			8'h0f: tdata = 8'h59;
			// Block 1
			8'h10: tdata = 8'h65;
			8'h11: tdata = 8'h38;
			8'h12: tdata = 8'h2a;
			8'h13: tdata = 8'h70;
			8'h14: tdata = 8'h1d;
			8'h15: tdata = 8'h10;
			8'h16: tdata = 8'h02;
			8'h17: tdata = 8'h5a;
			8'h18: tdata = 8'h66;
			8'h19: tdata = 8'h71;
			8'h1a: tdata = 8'h2c;
			8'h1b: tdata = 8'h1f;
			8'h1c: tdata = 8'h1e;
			8'h1d: tdata = 8'h11;
			8'h1e: tdata = 8'h03;
			8'h1f: tdata = 8'h5b;
			// Block 2
			8'h20: tdata = 8'h67;
			8'h21: tdata = 8'h2e;
			8'h22: tdata = 8'h2d;
			8'h23: tdata = 8'h20;
			8'h24: tdata = 8'h12;
			8'h25: tdata = 8'h05;
			8'h26: tdata = 8'h04;
			8'h27: tdata = 8'h5c;
			8'h28: tdata = 8'h68;
			8'h29: tdata = 8'h39;
			8'h2a: tdata = 8'h2f;
			8'h2b: tdata = 8'h21;
			8'h2c: tdata = 8'h14;
			8'h2d: tdata = 8'h13;
			8'h2e: tdata = 8'h06;
			8'h2f: tdata = 8'h5d;
			// Block 3
			8'h30: tdata = 8'h69;
			8'h31: tdata = 8'h31;
			8'h32: tdata = 8'h30;
			8'h33: tdata = 8'h23;
			8'h34: tdata = 8'h22;
			8'h35: tdata = 8'h15;
			8'h36: tdata = 8'h07;
			8'h37: tdata = 8'h5e;
			8'h38: tdata = 8'h6a;
			8'h39: tdata = 8'h72;
			8'h3a: tdata = 8'h32;
			8'h3b: tdata = 8'h24;
			8'h3c: tdata = 8'h16;
			8'h3d: tdata = 8'h08;
			8'h3e: tdata = 8'h09;
			8'h3f: tdata = 8'h5f;
			// Block 4
			8'h40: tdata = 8'h6b;
			8'h41: tdata = 8'h33;
			8'h42: tdata = 8'h25;
			8'h43: tdata = 8'h17;
			8'h44: tdata = 8'h18;
			8'h45: tdata = 8'h0b;
			8'h46: tdata = 8'h0a;
			8'h47: tdata = 8'h60;
			8'h48: tdata = 8'h6c;
			8'h49: tdata = 8'h34;
			8'h4a: tdata = 8'h35;
			8'h4b: tdata = 8'h26;
			8'h4c: tdata = 8'h27;
			8'h4d: tdata = 8'h19;
			8'h4e: tdata = 8'h0c;
			8'h4f: tdata = 8'h61;
			// Block 5
			8'h50: tdata = 8'h6d;
			8'h51: tdata = 8'h73;
			8'h52: tdata = 8'h28;
			8'h53: tdata = 8'h74;
			8'h54: tdata = 8'h1a;
			8'h55: tdata = 8'h0d;
			8'h56: tdata = 8'h62;
			8'h57: tdata = 8'h6e;
			8'h58: tdata = 8'h3a;
			8'h59: tdata = 8'h36;
			8'h5a: tdata = 8'h1c;
			8'h5b: tdata = 8'h1b;
			8'h5c: tdata = 8'h75;
			8'h5d: tdata = 8'h2b;
			8'h5e: tdata = 8'h63;
			8'h5f: tdata = 8'h76;
			// Block 6
			8'h60: tdata = 8'h55;
			8'h61: tdata = 8'h56;
			8'h62: tdata = 8'h77;
			8'h63: tdata = 8'h78;
			8'h64: tdata = 8'h79;
			8'h65: tdata = 8'h7a;
			8'h66: tdata = 8'h0e;
			8'h67: tdata = 8'h7b;
			8'h68: tdata = 8'h7c;
			8'h69: tdata = 8'h4f;
			8'h6a: tdata = 8'h7d;
			8'h6b: tdata = 8'h4b;
			8'h6c: tdata = 8'h47;
			8'h6d: tdata = 8'h7e;
			8'h6e: tdata = 8'h7f;
			8'h6f: tdata = 8'h6f;
			// Block 7
			8'h70: tdata = 8'h52;
			8'h71: tdata = 8'h53;
			8'h72: tdata = 8'h50;
			8'h73: tdata = 8'h4c;
			8'h74: tdata = 8'h4d;
			8'h75: tdata = 8'h48;
			8'h76: tdata = 8'h01;
			8'h77: tdata = 8'h45;
			8'h78: tdata = 8'h57;
			8'h79: tdata = 8'h4e;
			8'h7a: tdata = 8'h51;
			8'h7b: tdata = 8'h4a;
			8'h7c: tdata = 8'h37;
			8'h7d: tdata = 8'h49;
			8'h7e: tdata = 8'h46;
			8'h7f: tdata = 8'h54;
			// Block 8
			8'h80: tdata = 8'h80;
			8'h81: tdata = 8'h81;
			8'h82: tdata = 8'h82;
			8'h83: tdata = 8'h41;
			8'h84: tdata = 8'h54;
			8'h85: tdata = 8'h85;
			8'h86: tdata = 8'h86;
			8'h87: tdata = 8'h87;
			8'h88: tdata = 8'h88;
			8'h89: tdata = 8'h89;
			8'h8a: tdata = 8'h8a;
			8'h8b: tdata = 8'h8b;
			8'h8c: tdata = 8'h8c;
			8'h8d: tdata = 8'h8d;
			8'h8e: tdata = 8'h8e;
			8'h8f: tdata = 8'h8f;
			// Block 9
			8'h90: tdata = 8'h90;
			8'h91: tdata = 8'h91;
			8'h92: tdata = 8'h92;
			8'h93: tdata = 8'h93;
			8'h94: tdata = 8'h94;
			8'h95: tdata = 8'h95;
			8'h96: tdata = 8'h96;
			8'h97: tdata = 8'h97;
			8'h98: tdata = 8'h98;
			8'h99: tdata = 8'h99;
			8'h9a: tdata = 8'h9a;
			8'h9b: tdata = 8'h9b;
			8'h9c: tdata = 8'h9c;
			8'h9d: tdata = 8'h9d;
			8'h9e: tdata = 8'h9e;
			8'h9f: tdata = 8'h9f;
			// Block A
			8'ha0: tdata = 8'ha0;
			8'ha1: tdata = 8'ha1;
			8'ha2: tdata = 8'ha2;
			8'ha3: tdata = 8'ha3;
			8'ha4: tdata = 8'ha4;
			8'ha5: tdata = 8'ha5;
			8'ha6: tdata = 8'ha6;
			8'ha7: tdata = 8'ha7;
			8'ha8: tdata = 8'ha8;
			8'ha9: tdata = 8'ha9;
			8'haa: tdata = 8'haa;
			8'hab: tdata = 8'hab;
			8'hac: tdata = 8'hac;
			8'had: tdata = 8'had;
			8'hae: tdata = 8'hae;
			8'haf: tdata = 8'haf;
			// Block B
			8'hb0: tdata = 8'hb0;
			8'hb1: tdata = 8'hb1;
			8'hb2: tdata = 8'hb2;
			8'hb3: tdata = 8'hb3;
			8'hb4: tdata = 8'hb4;
			8'hb5: tdata = 8'hb5;
			8'hb6: tdata = 8'hb6;
			8'hb7: tdata = 8'hb7;
			8'hb8: tdata = 8'hb8;
			8'hb9: tdata = 8'hb9;
			8'hba: tdata = 8'hba;
			8'hbb: tdata = 8'hbb;
			8'hbc: tdata = 8'hbc;
			8'hbd: tdata = 8'hbd;
			8'hbe: tdata = 8'hbe;
			8'hbf: tdata = 8'hbf;
			// Block C
			8'hc0: tdata = 8'hc0;
			8'hc1: tdata = 8'hc1;
			8'hc2: tdata = 8'hc2;
			8'hc3: tdata = 8'hc3;
			8'hc4: tdata = 8'hc4;
			8'hc5: tdata = 8'hc5;
			8'hc6: tdata = 8'hc6;
			8'hc7: tdata = 8'hc7;
			8'hc8: tdata = 8'hc8;
			8'hc9: tdata = 8'hc9;
			8'hca: tdata = 8'hca;
			8'hcb: tdata = 8'hcb;
			8'hcc: tdata = 8'hcc;
			8'hcd: tdata = 8'hcd;
			8'hce: tdata = 8'hce;
			8'hcf: tdata = 8'hcf;
			// Block D
			8'hd0: tdata = 8'hd0;
			8'hd1: tdata = 8'hd1;
			8'hd2: tdata = 8'hd2;
			8'hd3: tdata = 8'hd3;
			8'hd4: tdata = 8'hd4;
			8'hd5: tdata = 8'hd5;
			8'hd6: tdata = 8'hd6;
			8'hd7: tdata = 8'hd7;
			8'hd8: tdata = 8'hd8;
			8'hd9: tdata = 8'hd9;
			8'hda: tdata = 8'hda;
			8'hdb: tdata = 8'hdb;
			8'hdc: tdata = 8'hdc;
			8'hdd: tdata = 8'hdd;
			8'hde: tdata = 8'hde;
			8'hdf: tdata = 8'hdf;
			// Block E
			8'he0: tdata = 8'he0;
			8'he1: tdata = 8'he1;
			8'he2: tdata = 8'he2;
			8'he3: tdata = 8'he3;
			8'he4: tdata = 8'he4;
			8'he5: tdata = 8'he5;
			8'he6: tdata = 8'he6;
			8'he7: tdata = 8'he7;
			8'he8: tdata = 8'he8;
			8'he9: tdata = 8'he9;
			8'hea: tdata = 8'hea;
			8'heb: tdata = 8'heb;
			8'hec: tdata = 8'hec;
			8'hed: tdata = 8'hed;
			8'hee: tdata = 8'hee;
			8'hef: tdata = 8'hef;
			// Block F
			8'hf0: tdata = 8'hf0;
			8'hf1: tdata = 8'hf1;
			8'hf2: tdata = 8'hf2;
			8'hf3: tdata = 8'hf3;
			8'hf4: tdata = 8'hf4;
			8'hf5: tdata = 8'hf5;
			8'hf6: tdata = 8'hf6;
			8'hf7: tdata = 8'hf7;
			8'hf8: tdata = 8'hf8;
			8'hf9: tdata = 8'hf9;
			8'hfa: tdata = 8'hfa;
			8'hfb: tdata = 8'hfb;
			8'hfc: tdata = 8'hfc;
			8'hfd: tdata = 8'hfd;
			8'hfe: tdata = 8'hfe;
			8'hff: tdata = 8'hff;
			// Block G
			default: tdata = 8'hff;
      endcase // case (udata[7:4])
   end // always @ (udata)
endmodule

/*
 * keyload:	
 * This module loads in a program directly to the keyboard 
 */
module keyload(
	clk,
	irq,
	activate,
	dataout,
	newdata,
	block
	);

	input clk; // system clock
	input irq; // irq acknowledged signal
	input activate; // activate module signal
   output [7:0] dataout; // keyboard data received
	output newdata; // indicator that there is new data
	output block; // blocking signal relative to other data
	
endmodule

/*
 * keyin:
 * This module takes in input from the keyboard and provides it for translation
 */
module keyin(
		clk,
		data,
		dataout,
		newdata
		);

	input clk; // keyboard clock
	input data; // keyboard data
   output [7:0] dataout; // keyboard data received
	output newdata; // indicator that there is new data
	
	// Register File
   reg [7:0] b; // current state
	reg [7:0] dataout; // data out register
	reg newdata; // New data register
	
	// FSM State Enum
   parameter [7:0]
		b1 = 8'd01,
		b2 = 8'd02,
		b3 = 8'd03,
		b4 = 8'd04,
		b5 = 8'd05,
		b6 = 8'd06,
		b7 = 8'd07,
		b8 = 8'd08,
		b9 = 8'd09,
		b10 = 8'd10,
		b11 = 8'd11;
		
	initial begin
		b<=b1;
		newdata<=1'b0;
		dataout<=8'h00;
	end
	
	always @(negedge clk) begin
		//Activating at negative edge of clock from keyboard
		case(b)
			b1: begin
				b<=b2; //first bit
			end
			b2: begin
				b<=b3;
				dataout[0]<=data;
			end
			b3: begin
				b<=b4;
				dataout[1]<=data;
			end
			b4: begin
				b<=b5;
				dataout[2]<=data;
			end
			b5: begin
				b<=b6;
				dataout[3]<=data;
			end
			b6: begin
				b<=b7;
				dataout[4]<=data;
			end
			b7: begin
				b<=b8;
				dataout[5]<=data;
			end
			b8: begin
				b<=b9;
				dataout[6]<=data;
			end
			b9: begin
				b<=b10;
				dataout[7]<=data;
			end
			b10: begin
				b<=b11;
				newdata<=1'b1;
			end
			b11: begin
				b<=b1;
				newdata<=1'b0;
			end
			default: begin
				b<=b1;
				newdata<=1'b0;
			end
		endcase
	end
	
endmodule

/*
 Keyboard scan code reference: 
 http://www.win.tue.nl/~aeb/linux/kbd/scancodes-10.html#translationtable
 
 xx000102030405060708090a0b0c0d0e0f
 00ff43413f3d3b3c58644442403e0f2959
 1065382a701d10025a66712c1f1e11035b
 20672e2d201205045c68392f211413065d
 30693130232215075e6a7232241608095f
 406b332517180b0a606c34352627190c61
 506d7328741a0d626e3a361c1b752b6376
 6055567778797a0e7b7c4f7d4b477e7f6f
 705253504c4d480145574e514a37494654
 80808182415485868788898a8b8c8d8e8f
 90909192939495969798999a9b9c9d9e9f
 a0a0a1a2a3a4a5a6a7a8a9aaabacadaeaf
 b0b0b1b2b3b4b5b6b7b8b9babbbcbdbebf
 c0c0c1c2c3c4c5c6c7c8c9cacbcccdcecf
 d0d0d1d2d3d4d5d6d7d8d9dadbdcdddedf
 e0e0e1e2e3e4e5e6e7e8e9eaebecedeeef
 f0f0f1f2f3f4f5f6f7f8f9fafbfcfdfeff
 */