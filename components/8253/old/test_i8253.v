
`define COUNTER0 0
`define COUNTER1 1
`define COUNTER2 2
`define MODE     3
`define D        {D7,D6,D5,D4,D3,D2,D1,D0}

//`timescale 1ns / 1ns

module test;

 
  reg  A0,
       A1,
       RD_,
       WR_,
       CS_,
       CLK0,
       CLK1,
       CLK2,
       GATE0,
       GATE1,
       GATE2;


  wire D7,
       D6,
       D5,
       D4,
       D3,
       D2,
       D1,
       D0,
       OUT0,
       OUT1,
       OUT2;

  reg [7:0] DREG;

  assign `D = DREG;

  i8253 U(A0, A1, RD_, WR_, CS_, D7, D6, D5, D4, D3, D2, D1, D0,
          CLK0, CLK1, CLK2, GATE0, GATE1, GATE2, OUT0, OUT1, OUT2);

  task write;
    input [1:0] register;
    input [7:0] data;

    begin

      A1  = register[1];
      A0  = register[0];
      CS_ = 0;

      #50
      DREG = data;

      #100
      WR_ = 0;

      #400
      WR_ = 1;

      #50
      CS_ = 1;

    end

  endtask

  initial
    if ($test$plusargs("vcdplus"))
      begin
//        $vcdpluson;
//        $settrace;
      end

  initial
    if ($test$plusargs("waves"))
      begin

        $gr_waves("CS_", CS_, "RD_", RD_, "WR_", WR_, "A1", A1, "A0", A0, "D", `D,
                  "CLK0", CLK0, "GATE0", GATE0, "OUT0", OUT0, "CNT0", U.C0.COUNT,
                  "SETOUT_", U.C0.SETOUT_, "CLROUT_", U.C0.CLROUT_,
                  "LOAD", U.C0.LOAD, "RELOAD", U.C0.RELOAD, "LOADCNT", U.C0.LOADCNT,
                  "CLK1", CLK1, "GATE1", GATE1, "OUT1", OUT1, "CNT1", U.C1.COUNT,
                  "CLK2", CLK2, "GATE2", GATE2, "OUT2", OUT2, "CNT2", U.C2.COUNT);

//        $freeze_waves;

      end

  initial
    if ($test$plusargs("monitor"))
      begin : monitor

        integer f;

        f = $fopen("I8253.out");

        $fmonitor(f,$stime,,"CS_:%b RD_:%b WR_:%b D:%h",
                             CS_, RD_, WR_, `D,,
                            "CLK0:%b GATE0:%b CNT0:%h OUT0:%b",
                             CLK0, GATE0, U.C0.COUNT, OUT0,,
                            "CLK1:%b GATE1:%b CNT1:%h OUT1:%b",
                             CLK1, GATE1, U.C1.COUNT, OUT1,,
                            "CLK2:%b GATE2:%b CNT2:%h OUT2:%b",
                             CLK2, GATE2, U.C2.COUNT, OUT2);

      end

  initial
    begin

      CLK0 = 0;

      forever
        begin
          #150 CLK0 = 1;
          #250 CLK0 = 0;
        end

    end

  initial
    begin

      CLK1 = 0;

      forever
        begin
          #150 CLK1 = 1;
          #250 CLK1 = 0;
        end

    end
 
  initial
    begin

      CLK2 = 0;

      forever
        begin
          #150 CLK2 = 1;
          #250 CLK2 = 0;
        end

    end
 
  initial
    begin

      CS_ = 1;
      RD_ = 1;
      WR_ = 1;

      GATE0 = 1;
      GATE1 = 1;
      GATE2 = 1;

      #10
      $display("Writing Mode #0 -- LSB Load, Mode 0, Binary"); 
      write (`MODE, 'b00010000); 

      #800
      $display("Writing Mode #1 -- LSB Load, Mode 0, Binary");
      write (`MODE, 'b01010000); 

      #800 
      $display("Writing Mode #2 -- LSB Load, Mode 0, Binary");
      write (`MODE, 'b10010000); 

      #800 
      $display("Writing Counter #0 -- Count = 4"); 
      write (`COUNTER0, 'h04); 

      #800
      $display("Writing Counter #1 -- Count = 3");
      write (`COUNTER1, 'h03);                     

      #800 
      GATE1 = 0; 

      $display("Writing Counter #2 -- Count = 3");
      write (`COUNTER2, 'h03);                     
  
      #800
      $display("Writing Counter #2 -- Count = 2");
      write (`COUNTER2, 'h02);                     

      GATE1 = 1;

      #2000

      GATE0 = 0;
      GATE1 = 0;
      GATE2 = 0;

      $display("Writing Mode #0 -- LSB Load, Mode 1, Binary");
      write (`MODE, 'b00010010);

      #800
      $display("Writing Counter #0 -- Count = 3");
      write (`COUNTER0, 'h03);

      #800
      $display("Writing Mode #1 -- LSB Load, Mode 1, Binary");
      write (`MODE, 'b01010010);

      #800
      $display("Writing Counter #1 -- Count = 3");
      write (`COUNTER1, 'h03);

      #800 
      $display("Writing Mode #2 -- LSB Load, Mode 1, Binary");
      write (`MODE, 'b10010010);

      #800
      $display("Writing Counter #2 -- Count = 2");
      write (`COUNTER2, 'h02);
 
      #400
      GATE0 = 1;

      #400
      GATE0 = 1;
      GATE1 = 1;
      GATE2 = 1;

      #400 
      GATE1 = 0;
      GATE2 = 0;

      #400
      $display("Writing Counter #2 -- Count = 4"); 
      write (`COUNTER2, 'h04); 

      #400
      GATE1 = 1;

      #800
      GATE2 = 1;

      #2000 
      GATE0 = 1;

      $display("Writing Mode #0 -- LSB Load, Mode 2, Binary");
      write (`MODE, 'b00010100);

      #800
      $display("Writing Counter #0 -- Count = 3");
      write (`COUNTER0, 'h03);

      #800
      $display("Writing Mode #1 -- LSB Load, Mode 2, Binary");
      write (`MODE, 'b01010100);

      #800
      $display("Writing Counter #1 -- Count = 3");
      write (`COUNTER1, 'h03);

      #800 
      $display("Writing Mode #2 -- LSB Load, Mode 2, Binary");
      write (`MODE, 'b10010100);

      #800
      $display("Writing Counter #2 -- Count = 4");
      write (`COUNTER2, 'h04);

      GATE1 = 0;

      #400
      GATE1 = 1;

      #400
      $display("Writing Counter #2 -- Count = 5");
      write (`COUNTER2, 'h05); 
 
      #1600

$stop;

      $display("Writing Mode #0 -- LSB Load, Mode 3, Binary");
      write (`MODE, 'b00010110);

      #800
      $display("Writing Mode #1 -- LSB Load, Mode 3, Binary");
      write (`MODE, 'b01010110);

      #800 
      $display("Writing Mode #2 -- LSB Load, Mode 3, Binary");
      write (`MODE, 'b10010110);

      #800 
      $display("Writing Counter #0 -- Count = 4");
      write (`COUNTER0, 'h04);

      #800
      $display("Writing Counter #1 -- Count = 5");
      write (`COUNTER1, 'h05);

      #800
      $display("Writing Counter #2 -- Count = 4");
      write (`COUNTER2, 'h04);
 
      #1600
      GATE2 = 0;

      #800
      GATE2 = 1;

      #1600
      GATE1 = 0;

      $display("Writing Mode #0 -- LSB Load, Mode 4, Binary");
      write (`MODE, 'b00011000);

      #800 
      $display("Writing Mode #1 -- LSB Load, Mode 4, Binary");
      write (`MODE, 'b01011000);

      #800 
      $display("Writing Mode #2 -- LSB Load, Mode 4, Binary");
      write (`MODE, 'b10011000);

      #800 
      $display("Writing Counter #0 -- Count = 3");
      write (`COUNTER0, 'h03);

      #800 
      $display("Writing Counter #1 -- Count = 3");
      write (`COUNTER1, 'h03);

      #800 
      $display("Writing Counter #2 -- Count = 3");
      write (`COUNTER2, 'h03);

      #1200
      GATE1 = 1;

      #400 
      $display("Writing Counter #2 -- Count = 2");
      write (`COUNTER2, 'h02);
 
      #2000 
      $display("Writing Mode #0 -- LSB Load, Mode 0, BCD");
      write (`MODE, 'b00010001);

      #800
      $display("Writing Mode #1 -- LSB Load, Mode 0, BCD");
      write (`MODE, 'b01010001);

      #800
      $display("Writing Mode #2 -- LSB Load, Mode 0, BCD");
      write (`MODE, 'b10010001);

      #800
      $display("Writing Counter #0 -- Count = 11");
      write (`COUNTER0, 11);

      #800
      $display("Writing Counter #1 -- Count = 3");
      write (`COUNTER1, 3);

      #400
      GATE1 = 0;

      #400
      $display("Writing Counter #2 -- Count = 3");
      write (`COUNTER2, 3);

      #800
      $display("Writing Counter #2 -- Count = 2");
      write (`COUNTER2, 2);

      GATE1 = 1;

      #10000
      $display("Writing Mode #0 -- LSB/MSB Load, Mode 5, Binary");

      write (`MODE, 'b00111010);

      #50
      $display("Writing Counter #0 -- Count = 5");
 
      write (`COUNTER0, 'h05);
      write (`COUNTER0, 'h00);
 
      #25
      GATE0 = 0;
 
      #50
      GATE0 = 1;

      #1025 
      GATE0 = 0;
 
      #50
      GATE0 = 1;

      #1000 
      $stop;

    end

endmodule
