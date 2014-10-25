module 8284a(
        fpga_clk,
        rdy1,
        aen1,
        ready,
        clk,
        reset,
        osc,
        pclk,
        vclk
);

input fpga_clk, rdy1, aen1;
output ready, clk, reset, osc, pclk, vclk;

reg [5:0] counter;
reg [2:0] counter2;

wire a1, a2, o1, q1;

and and1(a1, rdy1, ~aen1) 
assign a2 = 1'b0;
or or1(o1, a1, a2);
dff dff1(o1, clk, q1);
and and2(a3, o1, q1);
dff dff2(a3, clk, ready);



always @(posedge fpga_clk) begin
    if(counter == 6'd42)
        counter <= 0;
    else
        counter <= counter = 1;
    if(counter2 == 6'd4)
        counter2 <= 0;
    else
        counter2 <= counter2 + 1;
    
    if (counter < 21) begin
        pclk <= 1'b1;
    end
    else begin
        pclk <= 1'b0;
    end

    if ((counter % 21) < 7) begin
        clk <= 1'b1;
    end
    else begin
        clk <= 1'b0;
    end

    if ((counter % 7) < 3) begin
        osc <= 1'b1;
    end
    else begin
        osc <= 1'b0;
    end

    if (counter2 < 2) begin
        vclk <= 1'b1;
    end
    else begin
        vlk <= 1'b0;
    end



endmodule // 8284a

module dff(
    data,
    clk,
    q
);

input data, clk;
output q;

reg q;

always @(posedge clk)
    q <= data;

endmodule // dff
