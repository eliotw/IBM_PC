// TEMPORARY

module intel8284a(
        rdy1,
        aen1,
		  fclk,
        ready,
        clk,
        reset,
        osc,
        pclk,
        vclk
);

input rdy1, aen1, fclk;
output ready, clk, reset, osc, pclk, vclk;
/*
reg [5:0] counter;
reg [2:0] counter2;

always @(posedge clk) begin
    if(counter == 6'd42)
        counter <= 0;
    else
        counter <= counter + 1;
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
        vclk <= 1'b0;
    end
	 end
	 */

endmodule // 8284a
