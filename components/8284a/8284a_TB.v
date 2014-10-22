module 8284a_TB;

wire ready, clk, reset, osc, pclk, vclk;

reg mainClk;

8284a clkgen(,,ready,clk,reset,osc,pclk,vclk);

always begin
    #10 mainClk = !mainClk;
end

initial begin
    mainClk = 0;

    $monitor("fpga: %b | clk: %b | osc: %b | pclk: %b | vclk: %b", mainClk, clk, osc, pclk, vclk);
    #10000;
end
