`default_nettype none

`timescale 1ns/10ps

`include "defines.v"

module test_memory
	(input clk, rst,
	 input rd_n,
	 input wr_n,
     input ale,
	 inout data_addr);
    
    wire clr, ld_d, ld_a;
    wire [7:0] data_out, addr_out;
    reg ld_data, ld_addr, write_bus;
    
    assign ld_d = ld_data,
    	   ld_a = ld_addr;
           
    assign data_addr = (write_bus)? data_out : 8'bz;
    
    register addr (.d(data_addr), .q(addr_out), .ld(ld_a), .*);
    register data (.d(8'h23), .q(data_out), .ld(ld_d), .*);
    
    localparam idle = 2'b00;
    localparam addr = 2'b01;
    localparam data = 2'b10;
    
    reg [1:0] state, next_state;
    
    always @(posedge clk) begin
    	if (rst)
			state <= idle;
        else
        	state <= next_state;
    end
    
    always @(clk) begin
    	next_state = idle;
    	case(state)
        	idle: next_state = (ale)? addr : idle;
            addr: next_state = data;
            data: next_state = idle;
        endcase
    end
    
    always @(clk) begin
    	ld_data = 0; ld_addr = 0;
        clr = 0; write_bus = 0;
        case(state)
        	idle: begin
				ld_addr = (next_state == addr)? 1 : 0;
            end
            addr: begin
				ld_data = (~wr_n) 1 : 0;
            end
            data: begin
				write_bus = (~rd_n)? 1 : 0;
            end
        endcase
    end
    
endmodule