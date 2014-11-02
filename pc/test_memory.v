`default_nettype none

`timescale 1ns/10ps

`include "defines.v"

module test_memory
	(input clk, rst,
	 input rd_n,
	 input wr_n,
     input ale,
     output reg write_done,
	 inout [7:0] ad);
    
    wire ld_d, ld_a;
    wire [7:0] data_out, addr_out;
    reg ld_data, ld_addr, write_bus;
    
    assign ld_d = ld_data,
    	   ld_a = ld_addr;
           
    assign ad = (write_bus)? data_out : 8'bz;
    
    register ar (.clk(clk),
                 .rst(rst),
                 .d(ad), 
                 .q(addr_out),
                 .ld(ld_a));

    register dr (.clk(clk),
                 .rst(rst),
                 .d(8'h23),
                 .q(data_out),
                 .ld(ld_d));
    
    localparam idle = 2'b00;
    localparam addr = 2'b01;
    localparam data = 2'b10;
    
    reg [1:0] state, next_state;
    
    always @(posedge clk or negedge rst) begin
    	if (~rst)
			state <= idle;
        else
        	state <= next_state;
    end

    always @( * ) begin
    	next_state = idle;
    	case(state)
        	idle: next_state = (ale)? addr : idle;
            addr: next_state = data;
            data: next_state = idle;
        endcase
    end
    
    always @( * ) begin
    	ld_data = 0; 
        ld_addr = 0;
        write_bus = 0; 
        write_done = 0;
        case(state)
        	idle: begin
				ld_addr = (ale)? 1 : 0;
            end
            addr: begin
				ld_data = (~wr_n)? 1 : 0;
            end
            data: begin
				write_bus = (~rd_n)? 1 : 0;
                write_done = (~wr_n)? 1 : 0;
            end
        endcase
    end
    
endmodule
