`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:05:23 09/08/2014 
// Design Name: 
// Module Name:    lcd_top 
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
module lcd_top(USER_CLK, 
			   GPIO_SW_C,			   
			   GPIO_SW_E,			   
			   GPIO_SW_S,			   
			   GPIO_SW_W,			   
			   LCD_FPGA_RS, LCD_FPGA_RW, LCD_FPGA_E,
			   LCD_FPGA_DB7, LCD_FPGA_DB6, LCD_FPGA_DB5, LCD_FPGA_DB4,
				GPIO_DIP_SW1,GPIO_DIP_SW2,GPIO_DIP_SW3,GPIO_DIP_SW4,
				GPIO_DIP_SW5,GPIO_DIP_SW6,GPIO_DIP_SW7,GPIO_DIP_SW8,
				GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4
				);
		
	input	   USER_CLK;
	/* switch C is reset, E is clear, S is resetFSM, W is nextString */
	input	   GPIO_SW_C, GPIO_SW_E, GPIO_SW_S, GPIO_SW_W;	
	output	LCD_FPGA_RW, LCD_FPGA_RS, LCD_FPGA_E, LCD_FPGA_DB7, LCD_FPGA_DB6, LCD_FPGA_DB5, LCD_FPGA_DB4;
	input		GPIO_DIP_SW1,GPIO_DIP_SW2,GPIO_DIP_SW3,GPIO_DIP_SW4,
				GPIO_DIP_SW5,GPIO_DIP_SW6,GPIO_DIP_SW7,GPIO_DIP_SW8;
	output 	GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4;
	
	wire		[2:0]	control_out; //rs, rw, en
	wire		[3:0]   out;
	wire				reset;
	wire 		[3:0] a,b;

	wire	writeStart;
	wire	writeDone;
	wire	initDone;
	wire[7:0]	data;
	wire[4:0] x;
	wire	clearAll;
	wire	resetFSM;
	wire	nextString;
	
	assign reset = GPIO_SW_C;
	assign resetFSM = GPIO_SW_S;
	assign clearAll = GPIO_SW_E;
	assign nextString = GPIO_SW_W;
	
	assign a = {GPIO_DIP_SW1,GPIO_DIP_SW2,GPIO_DIP_SW3,GPIO_DIP_SW4};
	assign b = {GPIO_DIP_SW5,GPIO_DIP_SW6,GPIO_DIP_SW7,GPIO_DIP_SW8};
	
	assign LCD_FPGA_DB7 = out[3];
	assign LCD_FPGA_DB6 = out[2];
	assign LCD_FPGA_DB5 = out[1];
	assign LCD_FPGA_DB4 = out[0];	
	
	assign LCD_FPGA_RS = control_out[2];
	assign LCD_FPGA_RW = control_out[1];
	assign LCD_FPGA_E  = control_out[0];
	
	assign x = {1'b0,a} + {1'b0,b};
	assign {GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4} = x;
		
	lcd_control		lcd(.rst(reset), .clk(USER_CLK), .control(control_out), .sf_d(out),
							 .writeStart(writeStart), .initDone(initDone), .writeDone(writeDone), 
							 .dataIn(data), 
							 .clearAll(clearAll));
								
	testFSM			myTestFsm(.clkFSM(USER_CLK), .resetFSM(resetFSM), .data(data),
									 .initDone(initDone), .writeStart(writeStart),
									 .nextString(nextString),.a(a),.b(b),.x(x),
									 .writeDone(writeDone));

endmodule