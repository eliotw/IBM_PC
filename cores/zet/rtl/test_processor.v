`default_nettype none
`timescale 10ns/100ps

module test_core
	(input clk,
     input rst,

     // interrupts
     input  intr,
     output inta,
     input  nmi,
     output nmia,

     // interface to wishbone
     output [19:0] cpu_adr_o,
     input  [15:0] iid_dat_i,
     input  [15:0] cpu_dat_i,
     output [15:0] cpu_dat_o,
     output        cpu_byte_o,
     input         cpu_block,
     output        cpu_mem_op,
     output        cpu_m_io,
     output reg       cpu_we_o,

     output [19:0] pc,  // for debugging purposes
     output reg [2:0] state);
     
    assign cpu_dat_o = 16'hffff;
    assign inta = 1;
    assign nmia = 0;
    assign cpu_byte_o = 1;
    assign cpu_mem_op = 1;
    assign pc = 20'h40;
    assign cpu_m_io = 0;
    assign cpu_adr_o = pc;
    
    localparam opcod_st = 3'h0;
    localparam modrm_st = 3'h1;
    localparam offse_st = 3'h2;
    localparam immed_st = 3'h3;
    localparam execu_st = 3'h4;
    
    reg [2:0] next_state;
    
    always @(posedge clk or negedge rst) begin
    	if (~rst)
        	state <= opcod_st;
        else if (cpu_block)
        	state <= state;
        else
            state <= next_state;
    end
    
    always @( * ) begin
    	next_state = opcod_st;
        case(state)
			opcod_st: next_state = modrm_st;
            modrm_st: next_state = offse_st;
            offse_st: next_state = immed_st;
            immed_st: next_state = execu_st;
            execu_st: next_state = opcod_st;
        endcase
    end
    
    always @( * ) begin
		cpu_we_o = 0;
        case(state)
			opcod_st: ;
            modrm_st: ;
            offse_st: ;
            immed_st: ;
            execu_st: cpu_we_o = 1;
        endcase
    end
    
endmodule
