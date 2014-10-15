/*
 * intel8259:
 * This module simulates an intel 8259 programmable
 * interrupt controller
 */
module intel8259(
		 cs_n,
		 wr_n,
		 rd_n,
		 d,
		 cas, // not connected
		 a0,
		 inta_n,
		 ir,
		 inta, // int
		 spen_n
		 );

   // Inputs, Outputs, and Inouts
   input cs_n, wr_n, rd_n;
   inout [7:0] d;
   inout [2:0] cas; // not connected
   input       a0;
   input       inta_n;
   input [7:0] ir;
   output      inta;
   output      spen_n;

   // Wires
   wire        inta; // Interrupt
   wire [7:0]  din; // Data in
   
   // Top interrupt register
   reg [2:0]   topint;
   
   // Interrupt request register (irr)
   reg [7:0]   irr;
   reg [7:0]   irr_clr;

   // Interrupt mask register (imr)
   reg [7:0]   imr;

   // In service register (isr)
   reg [7:0]   isr;

   // Other Registers
   reg [7:0]   eoir; // EOI register
   reg [7:0]   dout; // Data out register
   reg 	       recint; // Has received an inta signal
   reg 	       clrisr; // Clear the ISR
   reg [7:0]   mrw; // Mask result wire

   // Assign Spen
   assign spen_n = rd_n;
   
   // Initialization
   initial begin
      topint = 3'b0;
      irr = 8'b0;
      irr_clr = 8'b0;
      imr = 8'b00000000;
      isr = 8'b0;
      eoir = 8'b11111111;
      dout = 8'b0;
      recint = 1'b0;
      clrisr = 1'b0;
      mrw = 8'b0;
   end
   
   // Assign line D
   assign d = (rd_n == 1'b0) ? ((a0 == 1'b1) ? imr : dout) : 8'bzzzzzzzz;
   assign din = d;

   // IMR Loading
   always @(cs_n or wr_n or a0 or din or imr) begin
      if((cs_n == 1'b0) & (wr_n == 1'b0) & (a0 == 1'b1)) begin
	 imr <= din;
      end
      else begin
	 imr <= imr;
      end
   end

   // EOI Loading
   always @(cs_n or wr_n or a0 or din or clrisr or inta_n) begin
      if((clrisr == 1'b1) | (inta_n == 1'b0)) begin
	 eoir <= 8'b11111111;
      end
      else if((cs_n == 1'b0) & (wr_n == 1'b0) & (a0 == 1'b0)) begin
	 eoir <= din;
      end
      else begin
	 eoir <= eoir;
      end
   end

   // EOI interpretation
   always @(eoir or recint or clrisr or inta_n) begin
      //$display("eior loop");
      
      if((inta_n == 1'b0) & (recint == 1'b1)) begin
	 dout <= {5'b00001,topint};
	 clrisr <= clrisr;
      end
      // Check for OCW2
      else if(eoir[4:3] == 2'b00) begin
	 // EOI stuff
	 dout <= 8'b00000000;
	 clrisr <= 1'b1;
      end
      // Check for OCW3
      else if(eoir[4:3] == 2'b01) begin
	 if(eoir[1:0] == 2'b10) begin
	    //$display("10");
	    dout <= irr;
	 end
	 else if(eoir[1:0] == 2'b11) begin
	    //$display("11");
	    dout <= isr;
	 end
	 else begin
	    //$display("??");
	    dout <= dout;
	 end
	 clrisr <= clrisr;
      end
      // Act upon recint
      else if(recint == 1'b1) begin
	 dout <= {5'b00001,topint};
	 clrisr <= 1'b0;
      end
      // Other stuff is happening
      else begin
	 // Ignore
	 clrisr <= clrisr;
	 dout <= dout;
      end
   end // always @ (eoir or recint)

   // Mock FSM
   always @(negedge inta_n) begin
      // Wait State
      if(recint == 1'b0) begin
	 if(inta == 1'b1) begin
	    recint <= 1'b1;
	    if(mrw[0] == 1'b1) begin
	       isr <= 8'b00000001 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b00000001;
	    end
	    else if(mrw[1] == 1'b1) begin
	       isr <= 8'b00000010 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b00000010;
	    end
	    else if(mrw[2] == 1'b1) begin
	       isr <= 8'b00000100 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b00000100;
	    end
	    else if(mrw[3] == 1'b1) begin
	       isr <= 8'b00001000 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b00001000;
	    end
	    else if(mrw[4] == 1'b1) begin
	       isr <= 8'b00010000 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b00010000;
	    end
	    else if(mrw[5] == 1'b1) begin
	       isr <= 8'b00100000 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b00100000;
	    end
	    else if(mrw[6] == 1'b1) begin
	       isr <= 8'b01000000 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b01000000;
	    end
	    else if(mrw[7] == 1'b1) begin
	       isr <= 8'b10000000 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b10000000;
	    end
	    else begin
	       isr <= 8'b0 | ((clrisr) ? 8'b0 : isr);
	       irr_clr <= 8'b0;
	    end
	 end // if (inta == 1'b1)
	 else begin
	    recint <= 1'b0;
	    isr <= isr;
	    irr_clr <= irr_clr;
	 end // else: !if(inta == 1'b1)
      end
      // Receive State
      else begin
	 recint <= 1'b0;
	 isr <= isr;
	 irr_clr <= 8'b0;
      end
      
   end
   
   
   // IRR Loading
   always @(ir[0] or irr_clr[0]) begin
      if(irr_clr[0] == 1'b1) irr[0] <= 1'b0;
      else if(ir[0] == 1'b1) irr[0] <= 1'b1;
      else irr[0] <= irr[0];
   end
   always @(ir[1] or irr_clr[1]) begin
      if(irr_clr[1] == 1'b1) irr[1] <= 1'b0;
      else if(ir[1] == 1'b1) irr[1] <= 1'b1;
      else irr[1] <= irr[1];
   end
   always @(ir[2] or irr_clr[2]) begin
      if(irr_clr[2] == 1'b1) irr[2] <= 1'b0;
      else if(ir[2] == 1'b1) irr[2] <= 1'b1;
      else irr[2] <= irr[2];
   end
   always @(ir[3] or irr_clr[3]) begin
      if(irr_clr[3] == 1'b1) irr[3] <= 1'b0;
      else if(ir[3] == 1'b1) irr[3] <= 1'b1;
      else irr[3] <= irr[3];
   end
   always @(ir[4] or irr_clr[4]) begin
      if(irr_clr[4] == 1'b1) irr[4] <= 1'b0;
      else if(ir[4] == 1'b1) irr[4] <= 1'b1;
      else irr[4] <= irr[4];
   end
   always @(ir[5] or irr_clr[5]) begin
      if(irr_clr[5] == 1'b1) irr[5] <= 1'b0;
      else if(ir[5] == 1'b1) irr[5] <= 1'b1;
      else irr[5] <= irr[5];
   end
   always @(ir[6] or irr_clr[6]) begin
      if(irr_clr[6] == 1'b1) irr[6] <= 1'b0;
      else if(ir[6] == 1'b1) irr[6] <= 1'b1;
      else irr[6] <= irr[6];
   end
   always @(ir[7] or irr_clr[7]) begin
      if(irr_clr[7] == 1'b1) irr[7] <= 1'b0;
      else if(ir[7] == 1'b1) irr[7] <= 1'b1;
      else irr[7] <= irr[7];
   end

   // MRW resolution
   always @(irr or imr) begin
      mrw[0] <= irr[0] & ~imr[0];
      mrw[1] <= irr[1] & ~imr[1];
      mrw[2] <= irr[2] & ~imr[2];
      mrw[3] <= irr[3] & ~imr[3];
      mrw[4] <= irr[4] & ~imr[4];
      mrw[5] <= irr[5] & ~imr[5];
      mrw[6] <= irr[6] & ~imr[6];
      mrw[7] <= irr[7] & ~imr[7];
   end
   
   // Interrupt Assignment
   assign inta = mrw[0] | mrw[1] | mrw[2] | mrw[3] |
		 mrw[4] | mrw[5] | mrw[6] | mrw[7] | recint;
/*
   always @(ir) begin
      $display("ir %b",ir);
   end
   always @(irr_clr) begin
      $display("irr clr %b",irr_clr);
   end
   always @(irr) begin
      $display("irr %b",irr);
   end
   always @(mrw) begin
      $display("mrw: %b",mrw);
   end
   always @(imr) begin
      $display("imr %b",imr);
   end
   always @(isr) begin
      $display("isr %b",isr);
   end
   always @(eoir) begin
      $display("eoir %b", eoir);
   end
   always @(dout) begin
      $display("dout %b",dout);
   end
  */ 
   // Assign top interrupt
   always @(isr) begin
      if(isr[0] == 1'b1) topint <= 3'b000;
      else if(isr[1] == 1'b1) topint <= 3'b001;
      else if(isr[2] == 1'b1) topint <= 3'b010;
      else if(isr[3] == 1'b1) topint <= 3'b011;
      else if(isr[4] == 1'b1) topint <= 3'b100;
      else if(isr[5] == 1'b1) topint <= 3'b101;
      else if(isr[6] == 1'b1) topint <= 3'b110;
      else topint <= 3'b111;
   end
   
endmodule // intel8259
