`timescale 10ns/100ps

module test_8088;

	wire         clk,
	wire         rst,
    
    
    wire         mnmx,		         // minimum and maximum mode. high-> min, low-> max
    wire         ready,              // inform processor that mem or I/0 is ready for data transfer
    wire         hold,               // suspends the processor
    wire         nmi,                // causes non-maskable type-2 interrupt
    wire         intr,               // maskable interrupt request
    
    wire         test_n,             // examined by processor testing instructions
    
    
    wire [19:8] a,               // address bus
    wire        hlda,               // acknowledges that the processor is suspended
    wire        inta_n,             // indicates that an intr request has been received
    wire        ale,                // indicates that current data on address/data bus are address
    wire        den_n,              // disconents data bus connection
    wire        dtr,               // indicates direction of data transfer. low-> to 8088, high-> from 8088
    wire        wr_n,               // indicates that the processor is writing to mem or I/O device
    wire        rd_n,               // indicates that the processor is reading from mem or I/O device
    wire        iom,               // indicates that processor is accessing mem or I/O. low-> mem, high-> I/O
    wire        sso,                // status output
    
    
    wire [7:0]   ad           // address/data bu   
    
    processor_8088 i8088 (.*);


  always #4 clk = ~clk;  // 12.5 Mhz

  initial
    begin
         intr <= 1'b0;
         clk <= 1'b1;
         rst <= 1'b0;
      #5 rst <= 1'b1;
      #5 rst <= 1'b0;

      #1000 intr <= 1'b1;
      //@(posedge inta)
      @(posedge clk) intr <= 1'b0;
    end

endmodule
