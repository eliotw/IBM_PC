`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:41 09/08/2014 
// Design Name: 
// Module Name:    testFSM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
/* This example is an FSM that interacts with the lcd_control.v module.  
   It first sends the string "18545" to the LCD module
   It then waits for the nextString input to be asserted
   It then sends the string "ECE" to the LCD module
   It then waits forever.
 */
 
module testFSM(clkFSM,
					resetFSM,
					initDone,
					writeDone,
					nextString,
					a,b,x,
					data, 
					writeStart);
					
	input clkFSM;
	input resetFSM;
	input initDone;
	input writeDone;
	input	nextString;
	
	input [3:0] a,b;
	input [4:0] x;
	
	output [7:0]	data;
	output			writeStart;
	
	wire [7:0] a1,a0,b1,b0,x1,x0;
	
	reg [7:0]		data;
	reg 		 		writeStart;
	reg [5:0] 		state,next_state;
	
	`define idle 	     6'b000000
	`define data1	     6'b000001
	`define wait1	     6'b100001
	`define data2	     6'b000010
	`define wait2	     6'b100010
	`define data3	     6'b000011
	`define wait3	     6'b100011
	`define data4	     6'b000100
	`define wait4	     6'b100100
	`define data5	     6'b000101
	`define wait5	     6'b100101
	`define data6	     6'b000110
	`define wait6	     6'b100110
	`define data7	     6'b000111
	`define wait7	     6'b100111
	`define data8	     6'b001000
	`define wait8	     6'b101000
	`define waitClear   6'b011111
	`define finish      6'b111111
	
	assign a1 = 8'h30 + {7'b0,a[3]};
	assign a0 = 8'h30 + {5'b0,a[2:0]};
	assign b1 = 8'h30 + {7'b0,b[3]};
	assign b0 = 8'h30 + {5'b0,b[2:0]};
	assign x1 = 8'h30 + {6'b0,x[4:3]};
	assign x0 = 8'h30 + {5'b0,x[2:0]};
	
	/* first write 18545, then write ECE to LCD */
	always @ (clkFSM or state or initDone or writeDone or nextString)
		begin
			next_state <= `idle;
			data = 8'b00000000;
			writeStart = 'b0;
			case(state)
				`idle : 
					begin
						if(initDone == 1'b1) 
							next_state <= `data1;
						else
							next_state <= `idle;
					end
				`data1 :
					begin
						data = a1;		//I
						writeStart = 1'b1;
						next_state <= `wait1;
					end
				`wait1 :
					begin
						data = a1;
						if(writeDone == 1'b1)
							next_state <= `data2;
						else
							next_state <= `wait1;
					end
				`data2 :
					begin
						data = a0;		//B
						writeStart = 1'b1;
						next_state <= `wait2;
					end
				`wait2 :
					begin
						data = a0;
						if(writeDone == 1'b1)
							next_state <= `data3;
						else
							next_state <= `wait2;
					end
				`data3 :
					begin
						data = 8'h2b;		//=
						writeStart = 1'b1;
						next_state <= `wait3;
					end
				`wait3 :
					begin
						data = 8'h2b;
						if(writeDone == 1'b1)
							next_state <= `data4;
						else
							next_state <= `wait3;
					end
				`data4 :
					begin
						data = b1;		//P
						writeStart = 1'b1;
						next_state <= `wait4;
					end
				`wait4 :
					begin
						data = b1;
						if(writeDone == 1'b1)
							next_state <= `data5;
						else
							next_state <= `wait4;
					end
				`data5 :
					begin
						data = b0;		//C
						writeStart = 1'b1;
						next_state <= `wait5;
					end
				`wait5 :
					begin
						data = b0;
						if(writeDone == 1'b1)
							next_state <= `waitClear;
						else
							next_state <= `wait5;
					end
				`waitClear :
					begin
						if(nextString == 'b1)
							begin
								next_state <= `data6;
							end
						else
							begin
								next_state <= `waitClear;
							end
					end
				`data6 :
					begin
						data = 8'h3d;		//!
						writeStart = 1'b1;
						next_state <= `wait6;
					end
				`wait6 :
					begin
						data = 8'h3d;
						if(writeDone == 1'b1)
							next_state <= `data7;
						else
							next_state <= `wait6;
					end
				`data7 :
					begin
						data = x1;		//!
						writeStart = 1'b1;
						next_state <= `wait7;
					end
				`wait7 :
					begin
						data = x1;
						if(writeDone == 1'b1)
							next_state <= `data8;
						else
							next_state <= `wait7;
					end
				`data8 :
					begin
						data = x0;		//!
						writeStart = 1'b1;
						next_state <= `wait8;
					end
				`wait8 :
					begin
						data = x0;
						if(writeDone == 1'b1)
							next_state <= `finish;
						else
							next_state <= `wait8;
					end
				`finish :
					begin
						next_state <= `finish;
					end
			
			endcase	
		
		end
	
	//registers state variables
	always @ (posedge clkFSM)
		begin
			if (resetFSM) 
				begin
					state <= `idle;			
				end
			else 
				begin
					state <= next_state;			
				end
		end // always 
					
endmodule
