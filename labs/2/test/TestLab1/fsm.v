`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:28 09/15/2014 
// Design Name: 
// Module Name:    fsm 
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
module fsm(USER_CLK, 
				GPIO_SW_C,
				GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4
		);
		
		input USER_CLK, GPIO_SW_C;
		output GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4;
		wire clk, switch;
		reg [1:0] state, nextstate;
		
		assign clk = USER_CLK;
		assign switch = GPIO_SW_C;
		
		always @(posedge clk) begin
				state <= nextstate;
		end
		
		always @(switch or state or clk) begin
			case(state)
				2'd0: begin
					if(switch == 1'b1) nextstate <= 2'd1; 
					else nextstate <= 2'd0;
				end
				2'd1: begin
					if(switch == 1'b1) nextstate <= 2'd2; 
					else nextstate <= 2'd1;
				end
				2'd2: begin
					if(switch == 1'b1) nextstate <= 2'd3; 
					else nextstate <= 2'd2;
				end
				2'd3: begin
					if(switch == 1'b1) nextstate <= 2'd0; 
					else nextstate <= 2'd3;
				end
				default: nextstate <= 2'd0;
			endcase
		end
		
		assign GPIO_LED_0 = (state == 2'd0);
		assign GPIO_LED_1 = (state == 2'd1);
		assign GPIO_LED_2 = (state == 2'd2);
		assign GPIO_LED_3 = (state == 2'd3);
		assign GPIO_LED_4 = 1'b0;
endmodule
