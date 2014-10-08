module intel8237A(
    clk,
    cs,
    reset,
    ready,
    hlda,
    dreq,
    db,
    ior,
    iow,
    eopp,
    a3_0,
    a7_4,
    hrq,
    dack,
    aen,
    adstb,
    memr,
    memw
);

input clk, cs, reset, ready, hlda;
input [3:0] dreq;
inout [7:0] db;
inout ior, iow, eopp;
inout [3:0] a3_0, a7_4;
output hrq, aen, adstb, memr, memw;
output [3:0] dack;

constant Z_8 = 8'bZ;
constant Z_4 = 4'bZ;
constant C0_16 = 16'b0;
constant C0_8 = 8'b0;
constant CFF_8 = 8'b11111111;
constant C0_6 = 6'b0;
constant C0_4 = 4'b0;
constant C1_4 = 4'b1111;
constant BT = 2'b10;

reg [15:0] curr_addr, curr_word, base_addr, base_word;
reg [7:0] command;
reg [5:0] mode;
reg [3:0] request, mask;

wire [3:0] drequest;
wire ff, mast_clr;
