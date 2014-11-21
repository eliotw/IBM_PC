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
	      out,
			rst_n,
			zclk
	      );

   input [2:0] gate, clk;
   input       rd_n, wr_n, cs_n, a0, a1;
   inout [7:0] d;
   output [2:0] out;
	input rst_n, zclk;

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
	     .OUT2(out[2]),
		  .RST_(rst_n),
		  .ZCLK(zclk)
	     );
   
endmodule // intel8253

/*
 * cntreg:
 * This module is a 16-bit count register for the 8253
 * This module has been copied from the VCS installation folder
 */
module cntreg(D,MODE,SEL,RD_,WR_,CLK,COUNTLSB,COUNTMSB,MODEWRITE,LOAD,OUTEN,RST_,ZCLK);

   	input        	SEL,
			RD_,
			WR_,
			CLK,
			MODEWRITE;

   	input [5:1] 	MODE;
   	input [7:0] 	D;

   	output       	LOAD,
			OUTEN;

   	output [7:0] 	COUNTLSB,
			COUNTMSB;
	
	input RST_;
	input ZCLK;
	
	reg	OUTEN,
		LOADLSB,
		CLRLOADLSB;
 
	reg loadsync, loadbuf;
 
	reg [7:0] 	COUNTLSB, COUNTMSB;

	wire 	clear,wrselrd;
	reg 		lsbflag;
   
	assign clear = MODEWRITE | ~RST_;
	assign wrselrd = WR_ & SEL & RD_;
	assign LOAD = loadsync | loadbuf;
	
	// LSB Flag Initial
	initial begin
		lsbflag = 1'b0;
		loadsync = 1'b0;
	end
   
	// LSB Flag
	always @(posedge WR_) begin
		if (SEL & RD_ & MODE[5] & MODE[4] & ~lsbflag) begin
			lsbflag <= 1'b1;
		end
		else if(SEL & RD_ & MODE[5] & MODE[4] & lsbflag) begin
			lsbflag <= 1'b0;
		end
		else begin
			lsbflag <= lsbflag;
		end
	end // always @ (posedge WR_)
   
	// MSB Load
	always @(posedge ZCLK) begin // posedge WR_ or posedge clear
		if(clear == 1'b1) begin
			COUNTMSB <= 8'b0;
		end
		else if(SEL & RD_ & ~WR_ & ~MODE[5] & MODE[4]) begin
			COUNTMSB <= 8'b0;
		end
		else if(SEL & RD_ & ~WR_ & MODE[5] & ~MODE[4]) begin
			COUNTMSB <= D;
		end
		else if(SEL & RD_ & ~WR_ & MODE[5] & MODE[4] & lsbflag) begin
			COUNTMSB <= D;
		end
		else begin
			COUNTMSB <= COUNTMSB;
		end
	end // always @ (posedge WR_ or posedge clear)

	// LSB Load
	always @(posedge ZCLK) begin // posedge WR_ or posedge clear
		if(clear == 1'b1) begin
			COUNTLSB <= 8'b0;
		end
		else if(SEL & RD_ & ~WR_ & ~MODE[5] & MODE[4]) begin
			COUNTLSB <= D;
		end
		else if(SEL & RD_ & ~WR_ & MODE[5] & ~MODE[4]) begin
			COUNTLSB <= 8'b0;
		end
		else if(SEL & RD_ & ~WR_ & MODE[5] & MODE[4] & ~lsbflag) begin
			COUNTLSB <= D;
		end
		else begin
			COUNTLSB <= COUNTLSB;
		end
	end // always @ (posedge WR_ or posedge clear)

	// Load Register
	always @(posedge CLK) begin
		if(loadsync == 1'b1) loadbuf <= 1'b1;
		else loadbuf <= 1'b0;
	end
	
	always @(posedge ZCLK or negedge RST_) begin
		if(!RST_) loadsync <= 1'b0;
		else if(SEL & RD_ & ~WR_) begin
			if(MODE[5] ^ MODE[4]) begin
				if ((MODE[3:1] != 1) || (MODE[3:1] != 5)) begin
					loadsync <= 1'b1;
				end
				else begin
					loadsync <= 1'b0;
				end
			end
			else if(MODE[5] & MODE[4] & lsbflag) begin
				loadsync <= 1'b1;
			end
			else begin
				loadsync <= 1'b0;
			end
		end
		else if(loadbuf == 1'b1) begin
			loadsync <= 1'b0;
		end
		else begin
			loadsync <= loadsync;
		end
	end
	
	/*
	always @(posedge WR_) begin // KEYWORD
		if(WR_ == 1'b1) begin
			if(SEL & RD_) begin
				if(MODE[5] ^ MODE[4]) begin
					if ((MODE[3:1] != 1) || (MODE[3:1] != 5)) begin
						LOAD <= 1'b1;
					end
					else begin
						LOAD <= 1'b0;
					end
				end
				else if(MODE[5] & MODE[4] & lsbflag) begin
					LOAD <= 1'b1;
				end
				else begin
					LOAD <= 1'b0;
				end // else: !if(MODE[5] | MODE[4])
			end // if (SEL & RD)
			else begin
				LOAD <= LOAD;
			end
		end // if (WR_ == 1'b1)
		else begin
			LOAD <= LOAD;
		end // else: !if(WR_ == 1'b1)
	end // always @ (posedge CLK or posedge WR_)
	*/

	// OUTEN Register
	always @(posedge ZCLK or negedge RST_) begin
		if(!RST_) begin 
			OUTEN <= 1'b0;
		end 
		else if(clear == 1'b1) begin
			OUTEN <= 1'b0;
		end
		else if(LOAD == 1'b1) begin
			OUTEN <= 1'b1;
		end
		else begin
			OUTEN <= OUTEN;
		end
	end // always @ (clear or WR_ or MODE or lsbflag)
	
	/*
	always @(posedge clear or posedge WR_) begin
		if(clear == 1'b1) begin
			OUTEN <= 1'b0;
		end
		else if(SEL & RD_ & WR_ & (MODE[5] ^ MODE[4])) begin
			OUTEN <= 1'b1;
		end
		else if(SEL & RD_ & WR_ & MODE[5] & MODE[4] & lsbflag) begin
			OUTEN <= 1'b1;
		end
		else begin
			OUTEN <= OUTEN;
		end
	end // always @ (clear or WR_ or MODE or lsbflag)
	*/
	
endmodule

/*
 * downcntr:
 * A 16-bit down counter for the 8253
 * This module is from the VCS installation folder
 */
module downcntr(COUNT, MODE, COUNTMSB, COUNTLSB, LOADCNT, CLK, GATE, OUT, RST_,ZCLK);

   input         CLK,
                 OUT,
                 GATE,
                 LOADCNT;
   input [3:0] 	 MODE;
   input [7:0] 	 COUNTMSB,
                 COUNTLSB;

   output [15:0] COUNT;
	
	input RST_;
	input ZCLK;
	
   reg           LOAD,VLOADCNT,VGATE,
                 CLRLOAD;
   
   reg [15:0] 	 COUNT;

   wire 	 RLOAD;

   assign RLOAD = (VGATE&(
			  (MODE[3:1]==1)
			  |(MODE[3:1]==2)
			  |(MODE[3:1]==5)))|VLOADCNT;
   
   
   // Counter
   always @(posedge CLK or negedge RST_) 
		if(~RST_) begin
			COUNT <= 16'hFFFF;
			CLRLOAD <= 0;
		end
		else if (GATE || (MODE[3:1] == 1) || (MODE[3:1] == 5))
       if (LOADCNT & ~CLRLOAD) // LOAD
         begin
            // Load Counter From Count Register
				COUNT <= {COUNTMSB,COUNTLSB};
            // Clear Load Flag
				CLRLOAD <= 1;
         end
       else
         begin
            // Decrement Counter
				if (MODE[3:1] == 3)
              if (COUNT[0])
                if (OUT)
                  COUNT <= COUNT - 3; // was 1
					 else
						COUNT <= COUNT - 3;
				  else 
                COUNT <= COUNT - 2;
            else
              COUNT <= COUNT - 1;
            // Allow Counter To Be Loaded
			CLRLOAD <= 0;
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
    
endmodule

/*
 * i8253:
 * Module emulating the intel 8253
 * Core acquired from VCS installation folder
 */
module i8253(A0, A1, RD_, WR_, CS_, D7, D6, D5, D4, D3, D2, D1, D0,
             CLK0, CLK1, CLK2, GATE0, GATE1, GATE2, OUT0, OUT1, OUT2, RST_, ZCLK);

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
	
  input	RST_;
  input  ZCLK;
  
  wire SELMODE0 = ~CS_ & (A1 & A0 & ~D7 & ~D6);
  wire SELMODE1 = ~CS_ & (A1 & A0 & ~D7 & D6);
  wire SELMODE2 = ~CS_ & (A1 & A0 & D7 & ~D6);
 
  wire SEL0 = ~CS_ & (~A1 & ~A0);
  wire SEL1 = ~CS_ & (~A1 & A0);
  wire SEL2 = ~CS_ & (A1 & ~A0);
  
	//supercounter(WR_,RD_,SEL,SELMODE,D7,D6,D5,D4,D3,D2,D1,D0,CLK,GATE,OUT,RST_,ZCLK);
	//COUNT #0 C0(WR_,RD_,SEL0,SELMODE0,D7,D6,D5,D4,D3,D2,D1,D0,CLK0,GATE0,OUT0,RST_,ZCLK);
   supercounter #0 C0(WR_,RD_,SEL0,SELMODE0,D7,D6,D5,D4,D3,D2,D1,D0,CLK0,GATE0,OUT0,RST_,ZCLK);
   COUNT #1 C1(WR_,RD_,SEL1,SELMODE1,D7,D6,D5,D4,D3,D2,D1,D0,CLK1,GATE1,OUT1,RST_,ZCLK);
   COUNT #2 C2(WR_,RD_,SEL2,SELMODE2,D7,D6,D5,D4,D3,D2,D1,D0,CLK2,GATE2,OUT2,RST_,ZCLK);

endmodule

/*
 * COUNT:
 * Module for one of the 8253 counters
 */
module COUNT(WR_,RD_,SEL,SELMODE,D7,D6,D5,D4,D3,D2,D1,D0,CLK,GATE,OUT,RST_,ZCLK);

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
  
  input 		  RST_;
  input       ZCLK;
  
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
              COUNTMSB;
				  
				  
  reg [7:0]	  LATCHLSB,
              LATCHMSB;

  wire [15:0] COUNT;

  wire LOADCNT = LOAD | RELOAD;
   
	read READ(`D,LATCHLSB,LATCHMSB,MODE[5:4],SEL,RD_,WR_,MODEWRITE,CLRLATCH);

	cntreg CNTREG(`D,MODE[5:1],SEL,RD_,WR_,CLK,COUNTLSB,COUNTMSB,MODEWRITE,LOAD,OUTEN,RST_,ZCLK);

	modereg MODEREG(`D,MODE,SELMODE,RD_,WR_,MODEWRITE,SETOUT_,CLROUT_,MODETRIG,LATCHCNT,CLK,RST_,ZCLK);		

	always @(posedge ZCLK) begin
		LATCHLSB <= (LATCHCNT ? COUNT[7:0] : LATCHLSB);
		LATCHMSB <= (LATCHCNT ? COUNT[15:8]: LATCHMSB);
	end
	
  downcntr DOWNCNTR(COUNT,MODE[3:0],COUNTMSB,COUNTLSB,LOADCNT,CLK,GATE,OUT,RST_,ZCLK);

  outctrl OUTCTRL(COUNT,MODE[3:1],CLK,GATE,OUTEN,MODETRIG,LOADCNT,SETOUT_,CLROUT_,RELOAD,OUT,ZCLK);

endmodule

/*
 * modereg:
 * Module for the 8253 mode register
 */
module modereg(D,MODE,SELMODE,RD_,WR_,MODEWRITE,SETOUT_,CLROUT_,MODETRIG,LATCHCNT,CLK,RST_,ZCLK);

  input        RD_,
               WR_,
               SELMODE;

  input  [7:0] D;

  output reg   	SETOUT_,
						CLROUT_,
						MODETRIG,
						LATCHCNT,
						MODEWRITE;

  output [5:0] MODE;
  input CLK;
  input RST_;
  input ZCLK;
  
  wire selrdwr;
  reg ltch;
  reg [5:0] modereg;
  
  assign MODE = modereg;
  assign selrdwr = (SELMODE & RD_ & ~WR_);
  
  // Mode Register
  always @(posedge ZCLK) begin
		LATCHCNT <= ltch;
  end
  
  initial begin
		modereg = 6'b0;
  end
  
	always @(posedge ZCLK or negedge RST_) begin
		if(!RST_) begin
			modereg <= 6'b0;
		end
		else if(selrdwr) begin
			modereg <= D[5:0];
		end
		else begin
			modereg <= modereg;
		end
	end
	

  always @(SELMODE or RD_ or WR_)
    begin
      SETOUT_ = 'b1;
      CLROUT_ = 'b1;
      MODETRIG = 'b0;
      MODEWRITE = 'b0;
		ltch = 1'b0;
      if (SELMODE & RD_ & ~WR_) begin
			//
        if (D[5:4])
           begin
				 CLROUT_ = 'b0;
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
           ltch = 'b1;                      // Counter Latch Command
		end
    end

endmodule

/*
 * outctrl:
 * Module for out control for intel 8253
 */
module outctrl(COUNT,MODE,CLK,GATE,OUTENABLE,MODETRIG,LOAD,SETOUT_,CLROUT_,
               RELOAD, OUT,ZCLK);

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
   input ZCLK;
	
   reg          OUT,
		ZOUT,
		TRIG,
		RETRIG,
		RELOAD,
		CLRTRIG;

   always @(posedge ZCLK) // KEYWORD - why is this synced to zclk?
     begin
		// Clear Counter Reload Flag
		RELOAD = 'b0;
		//OUT = 1'b0;
		// Clear Trigger Flag
		CLRTRIG = 'b0;
		if(!SETOUT_) OUT = 1'b1;
		else if(LOAD && MODE[3:1] != 3) begin
			OUT = 1'b0;
		end
		else if(!CLROUT_) OUT = 1'b0;
		else if ((GATE || (MODE[3:1] == 1) || (MODE[3:1] == 5)) && OUTENABLE)
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
						OUT = ~OUT;
						RELOAD = 1'b0;
					end
					else begin
						// Toggle Out When Counter Reaches 2
						OUT = ~OUT;
						// Reload New Count
						RELOAD = 1'b1;
					end   
				end
            4,5 : begin
	       if (COUNT)
		 begin
                    // Set Out High When Counter Is Not 0
                    OUT = 'b1;
		 end
               else
		 begin
                    if (TRIG)
                      begin
			 // Set Out Low When Counter Hits 0 And Was Triggered
			 OUT = 'b0;
			 CLRTRIG = 'b1;
                      end
		 end // else: !if(COUNT)
	    end // case: 4 ,...
          endcase
     end // always @ (negedge CLK)

   // Retrigger TRIG
   always @(posedge GATE or posedge MODETRIG or posedge CLRTRIG) begin
      if(CLRTRIG == 1'b1) begin
	 TRIG = 1'b0;
      end
      else if(GATE == 1'b1) begin
	 if((MODE[3:1]==1)||(MODE[3:1]==2)||(MODE[3:1]==5)) begin
	    TRIG = 1'b1;
	 end
	 else if(MODETRIG == 1'b1) begin
	    TRIG = 1'b1;
	 end
	 else begin
	    TRIG = TRIG;
	 end
      end
      else if(MODETRIG == 1'b1) begin
	 TRIG = 1'b1;
      end
      else begin
	 TRIG = TRIG;
      end
   end // always @ (posedge GATE or posedge MODETRIG or posedge CLRTRIG)
   
endmodule // outctrl

/*
 * outlatchCOUNT,LATCHLSB,LATCHMSB,LATCHCNT,CLK);
 * Output latch for intel 8253
 */
module outlatch(COUNT, lsb, msb, LATCHCNT, CLK);

	input [15:0] COUNT;
	output [7:0] lsb;
	output [7:0] msb;
   input         LATCHCNT;
	input CLK;
   
	assign lsb = COUNT[7:0];
	assign msb = COUNT[15:8];
	
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
               CLRREADLSB;

   reg [7:0]   DREG;

   assign D = (SEL & ~RD_ & WR_) ? DREG : 8'bz;
   
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
              DREG = LATCHLSB;
              CLRREADLSB = 1'b1;
           end
         else
           begin
              // Read MSB Only After LSB Is Read 
              DREG = LATCHMSB;
              CLRREADLSB = 1'b0;    
              // Reset Latch Command
              CLRLATCH = 'b1;
           end
       endcase
     else
       begin
          DREG = 8'b0;
          CLRLATCH = 'b0;
          CLRREADLSB = 'b0;
       end

   always @(CLRREADLSB or MODEWRITE) begin
      if(MODEWRITE) READLSB = 1'b1;
      else if(CLRREADLSB) READLSB = 1'b0;
      else READLSB = READLSB;
   end
   
endmodule // read

/*
 * supercounter:
 * Module for one of the new 8253 counters
 */
module supercounter(WR_,RD_,SEL,SELMODE,D7,D6,D5,D4,D3,D2,D1,D0,CLK,GATE,OUT,RST_,ZCLK);
	input	WR_,
			RD_,
			SEL,
			CLK,
			GATE,
			SELMODE;

	inout	D7,
			D6,
			D5,
			D4,
			D3,
			D2,
			D1,
			D0;

	output	OUT;

	input		RST_;
	input		ZCLK;
	
	// Parameters
	parameter CNTVAL = 0;
	parameter [7:0]
		idle = 8'b00000001,
		rlsb = 8'b00000010,
		rmsb = 8'b00000100,
		cnt0 = 8'b00001000,
		halt = 8'b00010000,
		cnt1 = 8'b00100000,
		cnt2 = 8'b01000000,
		cnt3 = 8'b10000000,
		cnt4 = 8'b00000000,
		cnt5 = 8'b00000011;
		
	// Wires
	wire wr, rd, sel, pclk, gate, selmode, rst_n, clk;
	wire [7:0] data;
	wire [15:0] countval;
	wire mode0, mode1, mode3;
	wire [15:0] halfcount;
	wire countzero;
	
	// Registers
	reg [7:0] control;
	reg loadmsb, loadlsb;
	reg [7:0] countmsb, countlsb;
	reg [15:0] count;
	reg [15:0] latchcount;
	reg [7:0] state, nextstate;
	reg out;
	reg [7:0] dataout;
	reg [1:0] readcontrol;
	
	// Assignments
	assign wr = ~WR_;
	assign rd = ~RD_;
	assign sel = SEL;
	assign pclk = CLK;
	assign gate = GATE;
	assign selmode = SELMODE;
	assign OUT = out;
	assign rst_n = RST_;
	assign clk = ZCLK;
	assign data = {D7,D6,D5,D4,D3,D2,D1,D0};
	assign countval = {countmsb, countlsb};
	assign mode0 = ~control[3] & ~control[2] & ~control[1];
	assign mode1 = ~control[3] & ~control[2] & control[1];
	assign mode3 = control[2] & control[1];
	assign halfcount = {1'b0,countval[15:1]};
	assign countzero = (count == 16'b0);
	assign {D7,D6,D5,D4,D3,D2,D1,D0} = (rd & sel) ? dataout : 8'bzzzzzzzz;
	
	// Initial conditions
	initial begin
		control = 8'b0;
		loadmsb = 1'b0;
		loadlsb = 1'b0;
		countmsb = 8'b0;
		countlsb = 8'b0;
		count = 16'h0;
		latchcount = 16'b0;
		state = idle;
		nextstate = idle;
		out = 1'b0;
		dataout = 8'b0;
		readcontrol = 2'b00;
	end
	
	// Read Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			dataout <= 8'b0;
			readcontrol <= 2'b00;
		end
		else if(sel & rd) begin
			if((readcontrol == 2'b00) | (readcontrol == 2'b01)) begin
				dataout <= latchcount[7:0];
				readcontrol <= 2'b01;
			end
			else if((readcontrol == 2'b10) | (readcontrol == 2'b11)) begin
				dataout <= latchcount[15:8];
				readcontrol <= 2'b11;
			end
			else begin
				dataout <= dataout;
				readcontrol <= readcontrol;
			end
		end
		else begin
			dataout <= dataout;
			if(readcontrol == 2'b01) begin
				readcontrol <= 2'b10;
			end
			else if(readcontrol == 2'b11) begin
				readcontrol <= 2'b00;
			end
			else begin
				readcontrol <= readcontrol;
			end
		end
	end
	
	// Count Register
	always @(posedge pclk or negedge rst_n) begin
		if(~rst_n) begin
			count <= 16'h0;
		end
		else if((state == cnt0) | (state == cnt1) | (state == cnt2) | (state == cnt3) | (state == cnt4)) begin
			if(countval == 16'b0) begin
				count <= 16'hffff;
			end
			else begin
				count <= countval;
			end
		end
		else if(state == cnt5) begin
			if(countzero) begin
				if(mode0) begin
					count <= 16'b0;
				end
				else if(mode1) begin
					count <= 16'b0;
				end
				else if(mode3 & (countval != 16'b0)) begin
					count <= countval;
				end
				else if(mode3 & (countval == 16'b0)) begin
					count <= 16'hffff;
				end
				else begin
					count <= 16'b0;
				end
			end
			else begin
				count <= count - 1;
			end
		end
		else begin
			count <= 16'hffff;
		end
	end
	
	// FSM Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			state <= idle;
		end
		else begin
			state <= nextstate;
		end
	end
	
	// Control Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			control <= 8'b0;
		end
		else if(selmode & wr & (data[5] | data[4])) begin
			control <= data;
		end
		else begin
			control <= control;
		end
	end
	
	// MSB Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			countmsb <= 8'b0;
		end
		else if(sel & wr & loadmsb) begin
			countmsb <= data;
		end
		else begin
			countmsb <= countmsb;
		end
	end
	
	// LSB Register
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			countlsb <= 8'b0;
		end
		else if(sel & wr & loadlsb) begin
			countlsb <= data;
		end
		else begin
			countlsb <= countlsb;
		end
	end
	
	// Counter Latch
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			latchcount <= 16'b0;
		end
		else if(selmode & wr & ~data[5] & ~data[4]) begin
			latchcount <= count;
		end
		else begin
			latchcount <= latchcount;
		end
	end
	
	// Output logic
	always @(*) begin
		out = 1'b0;
		if(mode0) begin
			if(count == 16'b0) begin
				out = 1'b1;
			end
			else begin
				out = 1'b0;
			end
		end
		else if(mode1) begin
			if(count == 16'b0) begin
				out = 1'b1;
			end
			else begin
				out = 1'b0;
			end
		end
		else if(mode3) begin
			if(gate == 1'b0) begin
				out = 1'b1;
			end
			else if(count > halfcount) begin
				out = 1'b1;
			end
			else begin
				out = 1'b0;
			end
		end
		else begin
			out = 1'b1;
		end
	end
	
	// Next State Logic
	always @(*) begin
		loadmsb = 1'b0;
		loadlsb = 1'b0;
		nextstate = idle;
		case(state)
			// Wait for something to happen
			idle: begin
				if(selmode & wr & (data[5] | data[4])) begin
					nextstate = halt;
				end
				else begin
					nextstate = idle;
				end
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			// Wait for values to be written to the counter
			halt: begin
				if(sel & wr & control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else if(sel & wr & control[5] & ~control[4]) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else if(sel & wr & ~control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else begin
					nextstate = halt;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			// Load the LSB
			rlsb: begin
				if(sel & wr) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else if(control[5] & control[4]) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else begin
					nextstate = cnt0;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			// Load the MSB
			rmsb: begin
				if(sel & wr) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else begin
					nextstate = cnt0;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			cnt0: begin
				nextstate = cnt1;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt1: begin
				nextstate = cnt2;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt2: begin
				nextstate = cnt3;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt3: begin
				nextstate = cnt4;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			cnt4: begin
				nextstate = cnt5;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
			// Count state
			cnt5: begin
				if(selmode & wr & (data[5] | data[4])) begin
					nextstate = halt;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
				else if(sel & wr & control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else if(sel & wr & control[5] & ~control[4]) begin
					nextstate = rmsb;
					loadmsb = 1'b1;
					loadlsb = 1'b0;
				end
				else if(sel & wr & ~control[5] & control[4]) begin
					nextstate = rlsb;
					loadmsb = 1'b0;
					loadlsb = 1'b1;
				end
				else begin
					nextstate = cnt5;
					loadmsb = 1'b0;
					loadlsb = 1'b0;
				end
			end
			// In case of error
			default: begin
				nextstate = idle;
				loadmsb = 1'b0;
				loadlsb = 1'b0;
			end
		endcase
	end
endmodule

