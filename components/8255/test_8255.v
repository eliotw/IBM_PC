// Definitions from VCS
`define COUNTER0 0
`define COUNTER1 1
`define COUNTER2 2
`define MODE     3
`define D        {D7,D6,D5,D4,D3,D2,D1,D0}

/*
 * test_8253:
 * Updated test bench for intel 8253 made by VCS
 */
module test_8253;

   // Registers for Data
   reg 	     rd_n, wr_n, cs_n, a0, a1, clk, gate,actin;
   reg [7:0] d;
   reg [15:0] datao;
   wire [7:0] din;
   wire [2:0] out;
   integer    i, errors;

   // Display output
   always @(out) begin
      $display("%d: OUT - %b",$time,out);
   end

   // Activate input
   assign din = (actin === 1'b1) ? d : 8'bzzzzzzzz;
   
   // Intel 8253 Under Test
   intel8253 i8(
		.gate({gate,1'b1,1'b1}), // gate 0 and 1 are +5 V
		.clk({clk,clk,clk}), // clock is same
		.rd_n(rd_n), 
		.wr_n(wr_n),
		.cs_n(cs_n), 
		.a0(a0),
		.a1(a1),
		.d(din),
		.out(out)
		);

   // Set up the CLOCK
   always begin
      #500 clk = ~clk;
   end
   
   // Task for writing to a register
   task write;
      input [1:0] register;
      input [7:0] data;
      begin
	 a1 = register[1];
	 a0 = register[0];
	 cs_n = 1'b0;
	 d = data;
	 #10;
	 wr_n = 1'b0;
	 @(posedge clk);
	 #10;
	 wr_n = 1'b1;
	 cs_n = 1'b1;
   end
   endtask // write

   // Task for reading from a register
   task read;
      input [1:0] register;
      input [7:0] data;
      output [15:0] dataout;
      begin
	 write(2'b11,{register,6'b000000});
	 actin = 1'b0;
	 #10;
	 
	 $display("read: %b",din);
	 actin = 1'b1;
	 #10;
	 
	 write(2'b11,{register,6'b110000});
	 actin = 1'b0;
	 #10;
	 
	 $display("read: %b",din);
	 actin = 1'b0;
	 #10;
	 
	 a1 = register[1];
	 a0 = register[0];
	 cs_n = 1'b0;
	 #10;
	 rd_n = 1'b0;
	 @(posedge clk);
	 #10;
	 actin = 1'b0;
	 #10;
	 $display("read: %b",din);
	 dataout[7:0] = din;
	 rd_n = 1'b1;
	 cs_n = 1'b1;
	 actin = 1'b1;
	 
	 a1 = register[1];
	 a0 = register[0];
	 cs_n = 1'b0;
	 #10;
	 rd_n = 1'b0;
	 @(posedge clk);
	 #10;
	 actin = 1'b0;
	 #10;
	 $display("read: %b",din);
	 dataout[15:8] = din;
	 rd_n = 1'b1;
	 cs_n = 1'b1;
	 actin = 1'b1;
      end
   endtask // write
   
   initial begin
      // Set Up Initial Conditions
      $display ("***********");
      $display ("Set Up 8253");
      $display ("***********");
      actin = 1'b1;
      gate = 1'b0;
      clk = 1'b0;
      rd_n = 1'b1;
      wr_n = 1'b1;
      cs_n = 1'b1;
      a0 = 1'b0;
      a1 = 1'b0;
      d = 8'b0;
      i = 0;
      errors = 0;
      @(posedge clk);

      // Start Test of Timer 0
      // This involves setting timer 0 to LSB MSB Mode 3 by inputting 36h.
      // The initial timer count is set to 0, which means that a square
      // wave will be generated every 65536 counts
      @(posedge clk);
      $display ("************");
      $display ("Test Timer 0");
      $display ("************");

      write(2'b11,8'h36);
      write(2'b00,8'h00);
      write(2'b00,8'h00);
      
      // Loop and be sure that our output is high
      for(i=0; i<32768; i=i+1) begin
	 @(posedge clk);
	 if(out[0] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[0]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is low
      for(i=0; i<32768; i=i+1) begin
	 @(posedge clk);
	 if(out[0] !== 1'b0) begin
	    $display("ERR OUT NOT 0, %b",out[0]);
	    errors = errors + 1;
	 end
      end // for (i=0; i<32768; i++)
      // Loop and be sure that our output is high
      for(i=0; i<32768; i=i+1) begin
	 @(posedge clk);
	 if(out[0] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[0]);
	    errors = errors + 1;
	 end
      end // for (i=0; i<32768; i++)
      // Loop and be sure that our output is low
      for(i=0; i<32768; i=i+1) begin
	 @(posedge clk);
	 if(out[0] !== 1'b0) begin
	    $display("ERR OUT NOT 0, %b",out[0]);
	    errors = errors + 1;
	 end
      end 

      // Start Test of Timer 1
      // This involves setting timer 1 to LSB Mode 2 by inputting 54h.
      // The initial timer count is set to 12h, which means that a rate
      // will be generated every 18 counts to refresh memory
      @(posedge clk);
      $display ("************");
      $display ("Test Timer 1");
      $display ("************");

      write(2'b11,8'h54);
      write(2'b01,8'h12);
      
      @(posedge clk);
      for(i=0; i<17; i=i+1) begin
	 @(posedge clk);
	 if(out[1] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[1]);
	    errors = errors + 1;
	 end
      end // for (i=0; i<32768; i=i+1)
      @(posedge clk);
      if(out[1] !== 1'b0) begin
	 $display("ERR OUT NOT 0, %b",out[1]);
	 errors = errors + 1;
      end
      // Loop and be sure that our output is low
      for(i=0; i<17; i=i+1) begin
	 @(posedge clk);
	 if(out[1] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[1]);
	    errors = errors + 1;
	 end
      end // for (i=0; i<32768; i++)
      @(posedge clk);
      if(out[1] !== 1'b0) begin
	 $display("ERR OUT NOT 0, %b",out[1]);
	 errors = errors + 1;
      end
      // Loop and be sure that our output is low
      for(i=0; i<17; i=i+1) begin
         @(posedge clk);
         if(out[1] !== 1'b1) begin
            $display("ERR OUT NOT 1, %b",out[1]);
            errors = errors + 1;
         end
      end // for (i=0; i<32768; i++)
      @(posedge clk);
      if(out[1] !== 1'b0) begin
         $display("ERR OUT NOT 0, %b",out[1]);
         errors = errors + 1;
      end

      // Start Test of Timer 2
      // This involves setting timer 2 to LSB MSB Mode 3 by inputting b6h.
      // The initial timer count is set to 0533h, which means that a clock
      // of 1331 for the speaker beep
      @(posedge clk);
      $display ("*****************");
      $display ("Test Timer 2 Gate");
      $display ("*****************");

      write(2'b11,8'hb6);
      write(2'b10,8'h33);
      write(2'b10,8'h05);
      gate = 1'b1;
      
      // Loop and be sure that our output is high
      for(i=0; i<666; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is low
      for(i=0; i<665; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b0) begin
	    $display("ERR OUT NOT 0, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is high
      for(i=0; i<666; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is low
      for(i=0; i<665; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b0) begin
	    $display("ERR OUT NOT 0, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      @(posedge clk);
      $display ("********************");
      $display ("Test Timer 2 No Gate");
      $display ("********************");
      // Remove gate control
      gate = 1'b0;
      // Loop and be sure that our output is high
      for(i=0; i<666; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is high
      for(i=0; i<665; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is high
      for(i=0; i<666; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is high
      for(i=0; i<665; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      @(posedge clk);
      $display ("********************");
      $display ("Test Timer 2 Re-Gate");
      $display ("********************");
      // Re-add gate control
      write(2'b11,8'hb6);
      write(2'b10,8'h33);
      write(2'b10,8'h05);
      gate = 1'b1;
      // Loop and be sure that our output is high
      for(i=0; i<666; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is low
      for(i=0; i<665; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b0) begin
	    $display("ERR OUT NOT 0, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is high
      for(i=0; i<666; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[2]);
	    errors = errors + 1;
	 end
      end
      // Loop and be sure that our output is low
      for(i=0; i<665; i=i+1) begin
	 @(posedge clk);
	 if(out[2] !== 1'b0) begin
	    $display("ERR OUT NOT 0, %b",out[2]);
	    errors = errors + 1;
	 end
      end

      // Start Test of Timer Test
      // This involves making sure that the time will pass the bios' test
      @(posedge clk);
      $display ("***************");
      $display ("Test Timer Test");
      $display ("***************");

      write(2'b11,8'h10);
      write(2'b00,8'h16);
      
      // Loop and be sure that our output is low
      for(i=0; i<22; i=i+1) begin
	 @(posedge clk);
	 if(out[0] !== 1'b0) begin
	    $display("ERR OUT NOT 0, %b",out[0]);
	    errors = errors + 1;
	 end
      end
      //actin = 1'b0;
      
      // Loop and be sure that our output is high
      for(i=0; i<51; i=i+1) begin
	 @(posedge clk);
	 if(out[0] !== 1'b1) begin
	    $display("ERR OUT NOT 1, %b",out[0]);
	    errors = errors + 1;
	 end
      end
      read(2'b00,8'h00,datao);
      if(datao !== 16'b1111111111001101) begin
	 $display("Count wrong: %h",datao);
	 errors = errors + 1;
      end
      
      // Conclude Test
      @(posedge clk);
      if(errors > 0) begin
	 $display("8253 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
         $display("8253 TEST SUCCESS");
      end
      $finish();
   end
   
endmodule // test_8253

/*
 * test:
 * The original test for the intel 8253 made by VCS
 */
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

        $gr_waves("CS_",CS_,"RD_",RD_,"WR_",WR_,"A1", A1, "A0", A0, "D", `D,
                  "CLK0", CLK0, "GATE0", GATE0,"OUT0",OUT0, "CNT0", U.C0.COUNT,
                  "SETOUT_", U.C0.SETOUT_, "CLROUT_", U.C0.CLROUT_,
                  "LOAD",U.C0.LOAD,"RELOAD",U.C0.RELOAD,"LOADCNT",U.C0.LOADCNT,
                  "CLK1",CLK1,"GATE1", GATE1,"OUT1", OUT1, "CNT1", U.C1.COUNT,
                  "CLK2", CLK2,"GATE2",GATE2,"OUT2", OUT2, "CNT2", U.C2.COUNT);
      end

  always @(OUT0 or OUT1 or OUT2) begin
     $display("OUT: %b%b%b at %d",OUT2,OUT1,OUT0,$time);
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
       @(posedge CLK0);
       
       $display("time: %d",$time);
      #10000
       //#10000000;
      // $display("...");
       //#10000000;
       
      $finish;
    end

endmodule
