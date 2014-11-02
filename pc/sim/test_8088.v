`timescale 10ns/100ps
`default_nettype none

module test_8088;

    reg clk;
    reg rst;

    wire mnmx;
    wire ready;
    wire hold;
    wire nmi;
    reg intr;
    wire test_n;

    wire [19:8] a;
    wire hlda;
    wire inta_n;
    wire ale;
    wire den_n;
    wire dtr;
    wire wr_n;
    wire rd_n;
    wire iom;
    wire sso;

    wire [7:0] ad;

    wire write_done;

    test_memory mem (.clk(clk),
                     .rst(rst),
                     .rd_n(rd_n),
                     .wr_n(wr_n),
                     .ale(ale),
                     .ad(ad),
                     .write_done(write_done)
                    );

    processor_8088 i8088 (.clk(clk),
                          .rst(rst),
                          .mnmx(mnmx),
                          .ready(ready),
                          .hold(hold),
                          .nmi(nmi),
                          .intr(intr),
                          .test_n(test_n),
                          .a(a),
                          .hlda(hlda),
                          .inta_n(inta_n),
                          .ale(ale),
                          .den_n(den_n),
                          .dtr(dtr),
                          .wr_n(wr_n),
                          .rd_n(rd_n),
                          .iom(iom),
                          .sso(sso),
                          .ad(ad)
                         );

    initial begin
        clk = 1'b0;
        forever #4 clk = ~clk; // 12.5 Mhz
    end

    initial begin
        $dumpfile ("processor_test.dump");
        $dumpvars ();
    end

    initial begin
        rst <= 1'b0;
        rst <= #5 1'b1;

        //wait(write_done);

        #1000 $finish;
    end

endmodule
