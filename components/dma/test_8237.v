module test_8237;

reg clk, cs, reset, ready, hlda;
reg [3:0] dreq;
reg [7:0] db;
reg ior, iow, eopp;
reg [3:0] a3_0, a7_4;
wire hrq, aen, adstb, memr, memw;
wire [3:0] dack;

wire [7:0] db_io;
wire ior_io, iow_io, eopp_io;
wire [3:0] a3_0_io, a7_4_io;

intel8237A dma(clk, cs, reset, ready, hlda, dreq, db_io, ior_io, iow_io, eopp_io, a3_0_io, a7_4_io, hrq, dack, aen, adstb, memr, memw);

/*assign db_io = (dma.state == 3'b0) ? db : 8'bZZZZZZZZ;
=======
assign db_io = (dma.state == 3'b0) ? db : 8'bZZZZZZZZ;
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
assign ior_io = (dma.state == 3'b0) ? ior : 1'bZ;
assign iow_io = (dma.state == 3'b0) ? iow : 1'bZ;
assign eopp_io = (dma.state == 3'b0) ? eopp : 1'bZ;
assign a3_0_io = (dma.state == 3'b0) ? a3_0 : 4'bZZZZ;
<<<<<<< HEAD
assign a7_4_io = (dma.state == 3'b0) ? a7_4 : 4'bZZZZ;*/


assign db_io = db;
assign ior_io = ior;
assign iow_io = iow;
assign eopp_io = eopp;
assign a3_0_io = a3_0;
assign a7_4_io = a7_4;

always begin
    #10 clk = !clk;
end

initial begin
    clk = 0;
    $display("Starting test"); 
    $display("%d", dma.state);

    // Init values

    cs <= 1'b1;
    ready <= 1'b0;
    hlda <= 1'b0;
    dreq <= 4'b0000;
    db <= 8'bZZZZZZZZ;
    ior <= 1'bZ;
    iow <= 1'bZ;
    eopp <= 1'bZ;
    a3_0 <= 4'bZZZZ;
    a7_4 <= 4'bZZZZ;

    // reset dma controller
    reset <= 1'b1;
    #10
    reset <= 1'b0;
    @(posedge clk);

    // program command register
    cs <= 1'b0;
    ior <= 1'b1;
    iow <= 1'b0;
    a3_0 <= 4'b1000;
    db <= 8'b10000000;
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);

    // verify command register write
    $display("Current value of dack is %d (expected = 0)", dack);

    // program mode register for channel 0

    ior <= 1'b1;
    iow <= 1'b0;
    a3_0 <= 4'b1011;
    db <= 8'b10010100;
    @(posedge clk);

    // program base and current word count register for channel 0

    ior <= 1'b1;
    iow <= 1'b0;
    a3_0 <= 4'b0001;
    db <= 8'b00000011;
    @(posedge clk);

    ior <= 1'b1;
    iow <= 1'b0;
    a3_0 <= 4'b0001;
    db <= 8'b0;
    @(posedge clk);

    // verify current word count program
    ior <= 1'b0;
    iow <= 1'b1;
    a3_0 <= 4'b0001;
    db <= 8'bZZZZZZZZ;
    @(posedge clk);
    @(negedge clk);
    $display("Current value of db is %d (expected = 3)", db_io);

    ior <= 1'b0;
    iow <= 1'b1;
    a3_0 <= 4'b0001;
    db <= 8'bZZZZZZZZ;
    @(posedge clk);
    @(negedge clk);
    $display("Current value of db is %d (expected = 0)", db_io);

    // request service for channel 0
    dreq[0] = 1'b1;
    cs <= 1'b1;
    ior <= 1'bZ;
    iow <= 1'bZ;
    a3_0 <= 4'bZZZZ;
    db <= 8'bZZZZZZZZ;
    @(posedge clk);

    // enable dma

    $display("%d", dma.state);
    cs <= 1'b1;
    ior <= 1'bZ;
    iow <= 1'bZ;
    a3_0 <= 4'bZZZZ;
    db <= 8'bZZZZZZZZ;
    @(posedge clk);
    @(posedge clk);

    // verify hrq

    $display("Current value of hrq is %d (expected = 1)", hrq);

    // relinquish bus to dma controller

    cs <= 1'b1;
    ior <= 1'bZ;
    iow <= 1'bZ;
    a3_0 <= 4'bZZZZ;
    db <= 8'bZZZZZZZ;
    hlda <= 1'b1;
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);

    // verify state SS1
    
    $display("Current value of aen is %d (expected = 1)", aen);
    $display("Current value of adstb is %d (expected = 0)", adstb);
    $display("Current value of hrq is %d (expected = 1)", hrq);
    $display("Current value of dack is %b (expected = 0)", dack);
    @(posedge clk);
    @(negedge clk);

    // verify state SS2
    
    $display("Current value of aen is %d (expected = 1)", aen);
    $display("Current value of adstb is %d (expected = 1)", adstb);
    $display("Current value of hrq is %d (expected = 1)", hrq);
    $display("Current value of dack is %b (expected = 1)", dack);
    $display("Current value of a3_0 is %b (expected = 0)", a3_0_io);
    $display("Current value of a7_4 is %b (expected = 0)", a7_4_io);
    $display("Current value of db is %b (expected = 0)", db_io);
    @(posedge clk);
    @(negedge clk);

    // test block transfer 
    $finish;
end

endmodule
    


    

