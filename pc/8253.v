/*
 * intel8253:
 * This module is a Verilog description of the intel 8253 programmable interval timer.
 * Originally a wrapper for the VCS 8253, we eventually ditched all of the code from VCS
 * and wrote our own implementation. 
 */
module intel8253(
	      gate,
	      clk,
	      rd_n,
	      wr_n,
	      cs_n,
	      a0,
	      a1,
	      d,
	      out,
			rst_n,
			zclk
	      );

	// Inputs/Outputs
	input [2:0] gate, clk;
	input       rd_n, wr_n, cs_n, a0, a1;
	inout [7:0] d;
	output [2:0] out;
	input rst_n, zclk;

	// Wires
	wire [2:0] selmode;
	wire [2:0] sel;
	
	// Assignments
	assign selmode[0] = ~cs_n & (a1 & a0 & ~d[7] & ~d[6]);
	assign selmode[1] = ~cs_n & (a1 & a0 & ~d[7] & d[6]);
	assign selmode[2] = ~cs_n & (a1 & a0 & d[7] & ~d[6]);
	
	assign sel[0] = ~cs_n & (~a1 & ~a0);
	assign sel[1] = ~cs_n & (~a1 & a0);
	assign sel[2] = ~cs_n & (a1 & ~a0);

	supercounter #0 C0(wr_n,rd_n,sel[0],selmode[0],d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],clk,gate[0],out[0],rst_n,zclk);
	supercounter #1 C1(wr_n,rd_n,sel[1],selmode[1],d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],clk,gate[1],out[1],rst_n,zclk);
	supercounter #2 C2(wr_n,rd_n,sel[2],selmode[2],d[7],d[6],d[5],d[4],d[3],d[2],d[1],d[0],clk,gate[2],out[2],rst_n,zclk);

endmodule // intel8253

/*
 * supercounter:
 * One of the three 8253 counters
 */
module supercounter(WR_,RD_,SEL,SELMODE,D7,D6,D5,D4,D3,D2,D1,D0,CLK,GATE,OUT,RST_,ZCLK);
	input	WR_,
			RD_,
			SEL,
			CLK,
			GATE,
			SELMODE;

	inout	D7,
			D6,
			D5,
			D4,
			D3,
			D2,
			D1,
			D0;

	output	OUT;

	input		RST_;
	input		ZCLK;
	
	// Parameters
	parameter CNTVAL = 0;
	parameter [7:0]
		idle = 8'b00000000,
		rlsb = 8'b00000001,
		rmsb = 8'b00000010,
		cnt0 = 8'b00000011,
		halt = 8'b00000100,
		cnt1 = 8'b00000101,
		cnt2 = 8'b00000110,
		cnt3 = 8'b00000111,
		cnt4 = 8'b00001000,
		cnt5 = 8'b00001001,
		cnt6 = 8'b00001010,
		hmsb = 8'b00001011;
		
	// Wires
	wire wr, rd, sel, pclk, gate, selmode, rst_n, clk;
	wire [7:0] data;
	wire [15:0] countval;
	wire mode0, mode1, mode2, mode3;
	wire [15:0] halfcount;
	wire countzero;
	wire lsbzero, msbzero;
	
	// Registers
	reg [7:0] control;
	reg loadmsb, loadlsb;
	reg [7:0] countmsb, countlsb;
	reg [15:0] count;
	reg [15:0] latchcount;
	reg [7:0] state, nextstate;
	reg out;
	reg [7:0] dataout;
	reg [1:0] readcontrol;
	
	// Assignments
	assign wr = ~WR_;
	assign rd = ~RD_;
	assign sel = SEL;
	assign pclk = CLK;
	assign gate = GATE;
	assign selmode = SELMODE;
	assign OUT = out;
	assign rst_n = RST_;
	assign clk = ZCLK;
	assign data = {D7,D6,D5,D4,D3,D2,D1,D0};
	assign countval = {countmsb, countlsb};
	assign mode0 = ~control[3] & ~control[2] & ~control[1];
	assign mode1 = ~control[3] & ~control[2] & control[1];
	assign mode2 = control[2] & ~control[1];
	assign mode3 = control[2] & control[1];
	assign halfcount = {1'b0,countval[15:1]};
	assign countzero = (count == 16'b0);
	assign {D7,D6,D5,D4,D3,D2,D1,D0} = (rd & sel) ? dataout : 8'bzzzzzzzz;
	assign lsbzero = control[5] & ~control[4];
	assign msbzero = ~control[5] & control[4];

	// Initial conditions
	initial begin
		control = 8'b0;
		loadmsb = 1'b0;
		loadlsb = 1'b0;
		countmsb = 8'b0;
		countlsb = 8'b0;
		count = 16'h0;
		latchcount = 16'b0;
		state = idle;
		nextstate = idle;
		out = 1'b0;
		dataout = 8'b0;
		readcontrol = 2'b00;
	end
	
	// Read Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			dataout <= 8'b0;
			readcontrol <= 2'b00;
		end
		else if(sel & rd) begin
			if((readcontrol == 2'b00) | (readcontrol == 2'b01)) begin
				dataout <= latchcount[7:0];
				readcontrol <= 2'b01;
			end
			else if((readcontrol == 2'b10) | (readcontrol == 2'b11)) begin
				dataout <= latchcount[15:8];
				readcontrol <= 2'b11;
			end
			else begin
				dataout <= dataout;
				readcontrol <= readcontrol;
			end
		end
		else begin
			dataout <= dataout;
			if(readcontrol == 2'b01) begin
				readcontrol <= 2'b10;
			end
			else if(readcontrol == 2'b11) begin
				readcontrol <= 2'b00;
			end
			else begin
				readcontrol <= readcontrol;
			end
		end
	end
	
	// Count Register
	always @(posedge pclk or negedge rst_n) begin
		if(~rst_n) begin
			count <= 16'h0;
		end
		else if((state == cnt0) | (state == cnt1) | (state == cnt2) | (state == cnt3) | (state == cnt4) | (state == cnt5)) begin
			if(countval == 16'b0) begin
				count <= 16'hffff;
			end
			else begin
				count <= countval;
			end
		end
		else if(state == cnt6) begin
			if(countzero) begin
				if(mode0) begin
					count <= 16'b0;
				end
				else if(mode1) begin
					count <= 16'b0;
				end
				else if(mode2 & (countval != 16'b0)) begin
					count <= countval;
				end
				else if(mode2 & (countval == 16'b0)) begin
					count <= 16'hffff;
				end
				else if(mode3 & (countval != 16'b0)) begin
					count <= countval;
				end
				else if(mode3 & (countval == 16'b0)) begin
					count <= 16'hffff;
				end
				else begin
					count <= 16'b0;
				end
			end
			else begin
				count <= count - 1;
			end
		end
		else begin
			count <= 16'hffff;
		end
	end
	
	// FSM Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			state <= idle;
		end
		else begin
			state <= nextstate;
		end
	end
	
	// Control Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			control <= 8'b0;
		end
		else if(selmode & wr & (data[5] | data[4])) begin
			control <= data;
		end
		else begin
			control <= control;
		end
	end
	
	// MSB Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			countmsb <= 8'b0;
		end
		else if(sel & wr & loadmsb) begin
			countmsb <= data;
		end
		else if(sel & wr & loadlsb & msbzero) begin
			countmsb <= 8'b0;
		end
		else begin
			countmsb <= countmsb;
		end
	end
	
	// LSB Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			countlsb <= 8'b0;
		end
		else if(sel & wr & loadlsb) begin
			countlsb <= data;
		end
		else if(sel & wr & loadmsb & lsbzero) begin
			countlsb <= 8'b0;
		end
		else begin
			countlsb <= countlsb;
		end
	end
	
	// Counter Latch
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			latchcount <= 16'b0;
		end
		else if(selmode & wr & ~data[5] & ~data[4]) begin
			latchcount <= count;
		end
		else begin
			latchcount <= latchcount;
		end
	end
	
	// Output logic
	always @(*) begin
		out = 1'b0;
		if(state != cnt6) begin
			out = 1'b0;
		end
		else if(mode0) begin
			if(count == 16'b0) begin
				out = 1'b1;
			end
			else begin
				out = 1'b0;
			end
		end
		else if(mode1) begin
			if(count == 16'b0) begin
				out = 1'b1;
			end
			else begin
				out = 1'b0;
			end
		end
		else if(mode2) begin
			if(count == 16'b0) begin
				out = 1'b0;
			end
			else begin
				out = 1'b1;
			end
		end
		else if(mode3) begin
			if(gate == 1'b0) begin
				out = 1'b1;
			end
			else if(count > halfcount) begin
				out = 1'b1;
			end
			else begin
				out = 1'b0;
			end
		end
		else begin
			out = 1'b0;
		end
	end
	
	// Next State Logic
	always @(*) begin
		loadmsb = 1'b0;
		loadlsb = 1'b0;
		nextstate = idle;
		case(state)
			// Wait for something to happen
			idle: begin
				if(selmode & wr & (data[5] | data[4])) begin
					nextstate = halt;
				end
				else begin
					nextstate = idle;
				end
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			// Wait for values to be written to the counter
			halt: begin
				if(sel & wr & control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else if(sel & wr & control[5] & ~control[4]) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else if(sel & wr & ~control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else begin
					nextstate = halt;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			// Load the LSB
			rlsb: begin
				if(sel & wr) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else if(control[5] & control[4]) begin
					nextstate = hmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else begin
					nextstate = cnt0;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			// Before loading the MSB, do this
			hmsb: begin
				if(sel & wr) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end				
				else begin
					nextstate = hmsb;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			// Load the MSB
			rmsb: begin
				if(sel & wr) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else begin
					nextstate = cnt0;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			cnt0: begin
				nextstate = cnt1;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt1: begin
				nextstate = cnt2;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt2: begin
				nextstate = cnt3;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt3: begin
				nextstate = cnt4;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt4: begin
				nextstate = cnt5;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt5: begin
				nextstate = cnt6;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			// Count state
			cnt6: begin
				if(selmode & wr & (data[5] | data[4])) begin
					nextstate = halt;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
				else if(sel & wr & control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else if(sel & wr & control[5] & ~control[4]) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else if(sel & wr & ~control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else begin
					nextstate = cnt6;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			// In case of error
			default: begin
				nextstate = idle;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
		endcase
	end
endmodule

