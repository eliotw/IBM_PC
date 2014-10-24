// Definition of D from VCS
`define D {D7,D6,D5,D4,D3,D2,D1,D0}

/*
 * intel8253:
 * This module is a verilog description of the intel 8253
 * programmable interval timer
 * It is essentially a wrapper for the VCS version of the 8253
 */
module intel8253(
	      gate,
	      clk,
	      rd_n,
	      wr_n,
	      cs_n,
	      a0,
	      a1,
	      d,
	      out
	      );

   input [2:0] gate, clk;
   input       rd_n, wr_n, cs_n, a0, a1;
   inout [7:0] d;
   output [2:0] out;

   i8253 vcs(
	     .A0(a0), 
	     .A1(a1), 
	     .RD_(rd_n), 
	     .WR_(wr_n), 
	     .CS_(cs_n), 
	     .D7(d[7]), 
	     .D6(d[6]), 
	     .D5(d[5]), 
	     .D4(d[4]), 
	     .D3(d[3]), 
	     .D2(d[2]),
	     .D1(d[1]),
	     .D0(d[0]),
	     .CLK0(clk[0]), 
	     .CLK1(clk[1]), 
	     .CLK2(clk[2]), 
	     .GATE0(gate[0]), 
	     .GATE1(gate[1]), 
	     .GATE2(gate[2]), 
	     .OUT0(out[0]), 
	     .OUT1(out[1]), 
	     .OUT2(out[2])
	     );
   
endmodule // intel8253

/*
 * cntreg:
 * This module is a 16-bit down counter for the 8253
 * This module has been copied from the VCS installation folder
 */
module cntreg(D,MODE,SEL,RD_,WR_,CLK,COUNTLSB,COUNTMSB,MODEWRITE,LOAD,OUTEN);

  input        SEL,
               RD_,
               WR_,
               CLK,
               MODEWRITE;

  input  [5:1] MODE;
  input  [7:0] D;

  output       LOAD,
               OUTEN;

  output [7:0] COUNTLSB,
               COUNTMSB;

  reg          LOAD,
               OUTEN,
               LOADLSB,
               SETLOADLSB,
               CLRLOADLSB;
 
  reg    [7:0] COUNTLSB,
               COUNTMSB;

   // Witchcraft!
   always @(COUNTMSB or COUNTLSB) begin
      //$display("count: %b%b",COUNTMSB,COUNTLSB);
   end
   
   
  // Count Register

  always @(posedge WR_)
    if (SEL & RD_)
      case (MODE[5:4])
	
        'b01 : begin
                 // Write LSB
                 COUNTLSB = D;
                 // Load Count On Next Rising CLK In Modes 0, 2, 3 and 4
                 if ((MODE[3:1] != 1) || (MODE[3:1] != 5))
                   LOAD = 'b1;
                 // Enable Output
                 OUTEN = 'b1;
               end
        'b10 : begin
                 // Write MSB
                 COUNTMSB = D;
                 // Load Count On Next Rising CLK In Modes 0, 2, 3 and 4
                 if ((MODE[3:1] != 1) || (MODE[3:1] != 5))
                   LOAD = 'b1;
                 // Enable Output
                 OUTEN = 'b1;
               end
        'b11 : if (LOADLSB)
                 begin
                    // Write LSB First
                    COUNTLSB = D;
                    CLRLOADLSB = 1'b1;
		    //$display("fajita: %b %b",D,CLRLOADLSB);
		    
                 end
               else
                 begin
                    // Write MSB Only After LSB Loaded
                    COUNTMSB = D;
                    //SETLOADLSB =  'b1;
		    CLRLOADLSB = 1'b0;
		    //$display("fujita: %b %b",D,CLRLOADLSB);
		    
                   // Load Count On Next Rising CLK In Modes 0, 2, 3 and 4
                   if ((MODE[3:1] != 1) || (MODE[3:1] != 5))
                     LOAD = 'b1;
                   // Enable Output
                   OUTEN = 'b1;
                 end
      endcase

  always @(posedge CLK)
    LOAD = 'b0;

  // Flag LOADLSB Is Set When In 2 Byte Mode And LSB Has Not Been Read Yet
  always @(SETLOADLSB or MODEWRITE)
    if (SETLOADLSB || MODEWRITE)
      begin
        OUTEN = 'b0;
        LOADLSB = 'b1;
        COUNTLSB = 8'b0;
        COUNTMSB = 8'b0;
      end

  // Flag LOADLSB Is Cleared When In 2 Byte Mode And LSB Has Been Read
  always @(CLRLOADLSB) begin
     //$display("CLEARLOADLSB");
     if (CLRLOADLSB)
       LOADLSB = 'b0;
  end
   

endmodule

/*
 * downcntr:
 * A 16-bit down counter for the 8253
 * This module is from the VCS installation folder
 */
module downcntr(COUNT, MODE, COUNTMSB, COUNTLSB, LOADCNT, CLK, GATE, OUT);

   input         CLK,
                 OUT,
                 GATE,
                 LOADCNT;
   input [3:0] 	 MODE;
   input [7:0] 	 COUNTMSB,
                 COUNTLSB;

   output [15:0] COUNT;

   reg           LOAD,VLOADCNT,VGATE,
                 CLRLOAD;
   
   reg [15:0] 	 COUNT;

   wire 	 RLOAD;

   assign RLOAD = (VGATE&(
			  (MODE[3:1]==1)
			  |(MODE[3:1]==2)
			  |(MODE[3:1]==5)))|VLOADCNT;
   
   
   // Counter
   always @(posedge CLK)
     if (GATE || (MODE[3:1] == 1) || (MODE[3:1] == 5))
       if (LOAD)
         begin
            // Load Counter From Count Register
	    COUNT = {COUNTMSB,COUNTLSB};
            // Clear Load Flag
	    CLRLOAD = 1;
         end
       else
         begin
            // Decrement Counter
	    if (MODE[3:1] == 3)
              if (COUNT[0])
                if (OUT)
                  COUNT = COUNT - 1; // was 1
	        else
		  COUNT = COUNT - 3;
	      else 
                COUNT = COUNT - 2;
            else
              COUNT = COUNT - 1;
            // Allow Counter To Be Loaded
	    CLRLOAD = 0;
         end

   // VGATE
   always @(posedge GATE or posedge LOAD) begin
      if(LOAD) VGATE <= 1'b0;
      else if(GATE) VGATE <= 1'b1;
      else VGATE <= VGATE;
   end

   // VLOADCNT
   always @(posedge LOADCNT or posedge LOAD) begin
      if(LOAD) VLOADCNT <= 1'b0;
      else if(LOADCNT) VLOADCNT <= 1'b1;
      else VLOADCNT <= VLOADCNT;
   end
   
   // Reload Counter On Rising GATE In Modes 1, 2 and 5
   always @(posedge CLK) begin
      if(VLOADCNT) begin
	 LOAD = 1'b1;
      end
      else if(VGATE&&((MODE[3:1]==1)||(MODE[3:1]==2)||(MODE[3:1]==5))) begin
	 LOAD = 1'b1;
      end
      else begin
	 LOAD = 1'b0;
      end
   end // always @ (posedge CLK)
   
/*
   // Load VCLRLOAD
   always @(posedge GATE or posedge CLRLOAD) begin
      if(GATE) VCLRLOAD = 1'b0;
      else if(CLRLOAD) VCLRLOAD = 1'b1;
      else VCLRLOAD = VCLRLOAD;
   end

   // Load VLOADCNT
   always @(posedge GATE or posedge LOADCNT or posedge CLRLOAD) begin
      if(GATE) VLOADCNT = 1'b0;
      else if(CLRLOAD) VLOADCNT = 1'b0;
      else if(LOADCNT) VLOADCNT = 1'b1;
      else VLOADCNT = VLOADCNT;
   end

   always @(VCLRLOAD) begin
      if(VCLRLOAD) VLOAD = 1'b0;
      else VLOAD = ULOAD;
   end

   always @(VLOADCNT) begin
      if(VLOADCNT) LOAD = 1'b1;
      else LOAD = VLOAD;
   end
  */ 
 /*
   // Set LOAD Until Cleared By Next Rising Clock Edge
   always @(LOADCNT)
     if (LOADCNT)
       begin
          assign LOAD = 'b1;
          assign CLRLOAD = 'b0;
       end
     else
       begin
          deassign LOAD;
          deassign CLRLOAD;
       end
 
   always @(CLRLOAD)
     if (CLRLOAD)
       assign LOAD = 'b0;
     else
       deassign LOAD;
   */ 
endmodule

/*
 * i8253:
 * Module emulating the intel 8253
 * Core acquired from VCS installation folder
 */
module i8253(A0, A1, RD_, WR_, CS_, D7, D6, D5, D4, D3, D2, D1, D0,
             CLK0, CLK1, CLK2, GATE0, GATE1, GATE2, OUT0, OUT1, OUT2);

  input  A0,
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

  inout  D7,
         D6,
         D5,
         D4,
         D3,
         D2,
         D1,
         D0;

  output OUT0,
         OUT1,
         OUT2;

  wire SELMODE0 = ~CS_ & (A1 & A0 & ~D7 & ~D6);
  wire SELMODE1 = ~CS_ & (A1 & A0 & ~D7 & D6);
  wire SELMODE2 = ~CS_ & (A1 & A0 & D7 & ~D6);
 
  wire SEL0 = ~CS_ & (~A1 & ~A0);
  wire SEL1 = ~CS_ & (~A1 & A0);
  wire SEL2 = ~CS_ & (A1 & ~A0);

   COUNT #0 C0(WR_,RD_,SEL0,SELMODE0,D7,D6,D5,D4,D3,D2,D1,D0,CLK0,GATE0,OUT0);
   COUNT #1 C1(WR_,RD_,SEL1,SELMODE1,D7,D6,D5,D4,D3,D2,D1,D0,CLK1,GATE1,OUT1);
   COUNT #2 C2(WR_,RD_,SEL2,SELMODE2,D7,D6,D5,D4,D3,D2,D1,D0,CLK2,GATE2,OUT2);

endmodule

/*
 * COUNT:
 * Module for one of the 8253 counters
 */
module COUNT(WR_,RD_,SEL,SELMODE,D7,D6,D5,D4,D3,D2,D1,D0,CLK,GATE,OUT);

  input       WR_,
              RD_,
              SEL,
              CLK,
              GATE,
              SELMODE;

  inout       D7,
              D6,
              D5,
              D4,
              D3,
              D2,
              D1,
              D0;

  output      OUT;

   parameter CNTVAL = 0;
   
  wire        LOAD,
              RELOAD,
              SETOUT_,
              CLROUT_,
              MODETRIG,
              LATCHCNT,
              MODEWRITE;

  wire [ 5:0] MODE;

  wire [ 7:0] COUNTLSB,
              COUNTMSB,
              LATCHLSB,
              LATCHMSB;

  wire [15:0] COUNT;

  wire LOADCNT = LOAD | RELOAD;

   always @(COUNT) begin
      if(CNTVAL == 0) begin	 
	 //$display("cnt: %b",COUNT);
      end
   end
   
  read
    READ(`D,LATCHLSB,LATCHMSB,MODE[5:4],SEL,RD_,WR_,MODEWRITE,CLRLATCH);

  cntreg
    CNTREG(`D,MODE[5:1],SEL,RD_,WR_,CLK,COUNTLSB,COUNTMSB,MODEWRITE,LOAD,OUTEN);

  modereg
    MODEREG(`D,MODE,SELMODE,RD_,WR_,MODEWRITE,SETOUT_,CLROUT_,MODETRIG,LATCHCNT);

  outlatch
    OUTLATCH(COUNT,LATCHLSB,LATCHMSB,LATCHCNT);

  downcntr
    DOWNCNTR(COUNT,MODE[3:0],COUNTMSB,COUNTLSB,LOADCNT,CLK,GATE,OUT);

  outctrl
    OUTCTRL(COUNT,MODE[3:1],CLK,GATE,OUTEN,MODETRIG,LOADCNT,SETOUT_,CLROUT_,RELOAD,OUT);

endmodule

/*
 * modereg:
 * Module for the 8253 mode register
 */
module modereg(D,MODE,SELMODE,RD_,WR_,MODEWRITE,SETOUT_,CLROUT_,MODETRIG,LATCHCNT);

  input        RD_,
               WR_,
               SELMODE;

  input  [7:0] D;

  output       SETOUT_,
               CLROUT_,
               MODETRIG,
               LATCHCNT,
               MODEWRITE;

  output [5:0] MODE;

  reg          SETOUT_,
               CLROUT_,
               MODETRIG,
               LATCHCNT,
               MODEWRITE;

  reg    [5:0] MODE; 
 
  // Mode Register

  always @(posedge WR_)
    if (SELMODE & RD_)
      begin
        // Write Mode Register
        MODE = D;
      end

  always @(SELMODE or RD_ or WR_)
    begin
      SETOUT_ = 'b1;
      CLROUT_ = 'b1;
      MODETRIG = 'b0;
      MODEWRITE = 'b0;
      if (SELMODE & RD_ & ~WR_)
        if (D[5:4])
           begin
             // Set Output High For All Modes Except 0
             if (D[3:1])
               SETOUT_ = 'b0;
             else
               CLROUT_ = 'b0;
             // Set Software Trigger In Mode 4
             if (D[3:1] == 4)
               MODETRIG = 'b1;
             MODEWRITE = 'b1;
           end
         else 
           LATCHCNT = 'b1;                      // Counter Latch Command
    end

endmodule

/*
 * outctrl:
 * Module for out control for intel 8253
 */
module outctrl(COUNT, MODE, CLK, GATE, OUTENABLE, MODETRIG, LOAD, SETOUT_, CLROUT_,
               RELOAD, OUT);

  input        CLK,
               GATE,
               LOAD,
               SETOUT_,
               CLROUT_,
               MODETRIG,
               OUTENABLE;
  input [ 3:1] MODE;
  input [15:0] COUNT;

  output       OUT,
               RELOAD;

  reg          OUT,
               TRIG,
               RETRIG,
               RELOAD,
               CLRTRIG;

  always @(negedge CLK)
    begin
      // Clear Counter Reload Flag
      RELOAD = 'b0;
      // Clear Trigger Flag
      CLRTRIG = 'b0;
      if ((GATE || (MODE[3:1] == 1) || (MODE[3:1] == 5)) && OUTENABLE)
        case (MODE[3:1])
          0 : if (COUNT == 16'h2)
                begin
                  // Set Out High On Terminal Count
                  OUT = 'b1;
                end
          1 : if (COUNT)
                begin
                  if (TRIG & ~LOAD)
                    OUT = 'b0;
                end
              else
                begin
                  // Set Out High When Counter Hits 0
                  OUT = 'b1;
                  // Do Not Retrigger
                  CLRTRIG = 'b1;
                end
          2 : if (COUNT == 16'h2) // was originally 1
                begin
                  // Set Out Low When Counter Reaches 1 
                  OUT = 'b0;
                  // Reload New Count
                  RELOAD = 'b1;
                end
              else
                begin
                  // Set Out High When Counter Is Not 1 
                  OUT = 'b1;
                end
          3 : if (COUNT == 16'h4) // was originally 2
            begin
	       if(LOAD == 1'b1) begin
		  OUT = 1'b1;
		  RELOAD = 1'b0;
	       end
	       else begin
		  // Toggle Out When Counter Reaches 2
                  OUT = ~OUT;
                  // Reload New Count
                  RELOAD = 1'b1;
	       end   
            end
          4 ,
          5 : begin
	     if (COUNT)
               begin
                  // Set Out High When Counter Is Not 0
                  OUT = 'b1;
               end
             else
	       begin
		  //$display("ZERO TRIG: %b",TRIG);
		  
                  if (TRIG)
                    begin
                       // Set Out Low When Counter Hits 0 And Was Triggered
                       OUT = 'b0;
                       CLRTRIG = 'b1;
                    end
	       end // else: !if(COUNT)
	  end // case: 4 ,...
	  
        endcase
    end
  // Set OUT High Immediately When GATE Goes Low In Modes 2 and 3
  always @(negedge GATE)
    if ((MODE[3:1] == 2) || (MODE[3:1] == 3))
      OUT = 'b1;
  // Retrigger When GATE Goes High In Modes 1, 2 and 5
  always @(posedge GATE)
    if ((MODE[3:1] == 1) || (MODE[3:1] == 2) || (MODE[3:1] == 5))
      begin
	 RETRIG = 'b1;
	 //$display("retrig: %b",RETRIG);
      end
    else
      RETRIG = 'b0;

  // Set or Clear OUT After A Mode Write
  always @(SETOUT_) begin
     if (!SETOUT_)
       assign OUT = 'b1;
     else
       deassign OUT;
  end
   

  always @(CLROUT_)
    if (!CLROUT_)
      assign OUT = 'b0;
    else
      deassign OUT;

  // Counter Trigger Flag
  always @(RETRIG or MODETRIG) begin
     //$display("retrig %b modetrig %b",RETRIG,MODETRIG);
     
     if (RETRIG || MODETRIG) begin
	TRIG = 'b1;
	RETRIG = 1'b0;
	
	//$display("retrig to trig 1");
     end
  end	
 
  always @(CLRTRIG)
    if (CLRTRIG)
      TRIG = 'b0;
 
endmodule

/*
 * outlatch:
 * Output latch for intel 8253
 */
module outlatch(COUNT, LATCHLSB, LATCHMSB, LATCHCNT);

  input         LATCHCNT;
  input  [15:0] COUNT;

  output [ 7:0] LATCHLSB,
                LATCHMSB;

//  reg    [ 7:0] LATCHLSB,
  //              LATCHMSB;
/*
  always @(LATCHCNT)
    if (LATCHCNT)
      begin
        deassign LATCHLSB;                     // Latch Count
        deassign LATCHMSB;
      end
    else
      assign {LATCHMSB,LATCHLSB} = COUNT;    // Follow Counter If Not Latched 
*/
  
   assign {LATCHMSB,LATCHLSB} = COUNT;
    
endmodule

/*
 * read:
 * Read module for intel 8253
 */
module read(D, LATCHLSB, LATCHMSB, MODE, SEL, RD_, WR_, MODEWRITE, CLRLATCH);

  input       SEL,
              RD_,
              WR_,
              MODEWRITE;
  input [5:4] MODE;
   inout [7:0] D;
   input [7:0] LATCHLSB,
              LATCHMSB;

  output      CLRLATCH;

  reg         CLRLATCH,
              READLSB,
              SETREADLSB,
              CLRREADLSB;

  reg   [7:0] DREG;

  assign D = (SEL & ~RD_ & WR_) ? DREG : 8'bz;
   /*
   always @((SEL & ~RD_ & WR_)) begin
      $display("dreg %b",DREG);
   end
   */
  // Read Output Latch 
  always @(SEL or RD_ or WR_)
    if (SEL & ~RD_ & WR_)         
      case (MODE[5:4])
        'b01 : begin
           // Read LSB
           DREG = LATCHLSB;
           // Reset Latch Command
           CLRLATCH = 1'b1;
	   CLRREADLSB = 1'b0;
	   
               end
        'b10 : begin
                 // Read MSB
                 DREG = LATCHMSB;
	   CLRREADLSB = 1'b0;
	   
                 // Reset Latch Command
                 CLRLATCH = 1'b1;
               end
        'b11 : if (READLSB)
                 begin
                   // Read LSB First
		    CLRLATCH = 1'b0;
//		    $display("dddddddddddddddddd");
 
                   DREG = LATCHLSB;
                   CLRREADLSB = 1'b1;
                 end
               else
                 begin
                   // Read MSB Only After LSB Is Read 
                   DREG = LATCHMSB;
                   CLRREADLSB = 1'b0;
		    //SETREADLSB = 'b1;
//		    $display("fasdfadsf");    
                   // Reset Latch Command
                   CLRLATCH = 'b1;
                 end
      endcase
    else
      begin
        DREG = 8'b0;
        CLRLATCH = 'b0;
        CLRREADLSB = 'b0;
        SETREADLSB = 'b0;
      end

   always @((SEL & ~RD_ & WR_)) begin
  //    $display("dreg %b",DREG);
   end
   
  // Flag READLSB Is Set When In 2 Byte Mode And LSB Has Not Been Read Yet
  always @(SETREADLSB or MODEWRITE)
    if (SETREADLSB || MODEWRITE)
      READLSB = 'b1;

  // Flag READLSB Is Cleared When In 2 Byte Mode And LSB Has Been Read

  always @(CLRREADLSB)
    begin
//       $display("clr read lsb %b",CLRREADLSB);   
       if (CLRREADLSB)
	 READLSB = 1'b0;
    end
endmodule
