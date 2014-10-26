module intel8284a_TB;

wire ready, clk, osc, pclk, vclk;

reg mainClk, rdy1, aen1;

intel8284a clkgen(mainClk,rdy1,aen1,ready,clk,osc,pclk,vclk);

always begin
    #10 mainClk = !mainClk;
end

initial begin
    $monitor("fpga: %b | clk: %b | osc: %b | pclk: %b | vclk: %b | (r:%b, a:%b) ready: %b, q1: %b", mainClk, clk, osc, pclk, vclk, rdy1, aen1, ready, clkgen.q1);
    mainClk = 0;
    rdy1 = 1;
    aen1 = 1;
    #1000;
    rdy1 = 0;
    #1000;
    aen1 = 0;
    #1000;
    rdy1 = 1;
    #1000;
    $finish;
end

endmodule
