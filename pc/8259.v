/*
 * intel8259:
 * This module simulates an intel 8259 programmable
 * interrupt controller
 */
module intel8259(
		 clk,
		 cs_n,
		 wr_n,
		 rd_n,
		 d,
		 cas, // not connected
		 a0,
		 inta_n,
		 ir,
		 rst, // reset
		 inta, // int
		 spen_n,
		 iid
		 );

   // Inputs, Outputs, and Inouts
	input clk;
   input cs_n, wr_n, rd_n;
   inout [7:0] d;
   input [2:0] cas; // not connected
   input       a0;
   input       inta_n;
   input [7:0] ir;
   input       rst;
   output      inta;
   output      spen_n;
	output reg [7:0] iid;

   // Wires
   wire        inta; // Interrupt
   wire rst_n; // Reset low
	
	// Input register
	reg [7:0]  din; // Data in
	
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
   reg [1:0]   icws; // icws handles ignoring the first two control words
   reg ic_rst; // reset control word sequence
	reg ic_dec; // ic decrement
	reg [1:0] cs_n_buf; // buffer for cs_n
	reg ic_rst_n; // Reset IC
	reg [1:0] state; // reset state
	
   // Assign Spen
   assign spen_n = rd_n;
   assign rst_n = ~rst;
	//assign ic_rst_n = ~ic_rst;
	
   // Initialization
   initial begin
      icws = 2'b00;
      topint = 3'b0;
      irr = 8'b0;
      irr_clr = 8'b0;
      imr = 8'b00000000;
      isr = 8'b0;
      eoir = 8'b00001000;
      dout = 8'b0;
      recint = 1'b0;
      clrisr = 1'b0;
      mrw = 8'b0;
		ic_rst = 1'b0;
		ic_rst_n = 1'b1;
		ic_dec = 1'b0;
		state = 2'b00;
   end
   
   // Assign line D
   assign d = ((rd_n == 1'b0) & (cs_n_buf[1] == 1'b0)) ? ((a0 == 1'b1) ? imr : dout) : 8'bzzzzzzzz;
   
	// Assign Data In
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			cs_n_buf[0] <= 1'b1;
			cs_n_buf[1] <= 1'b1;
		end
		else if(cs_n == 1'b1) begin
			cs_n_buf[0] <= 1'b1;
			cs_n_buf[1] <= 1'b1;
		end 
		else begin
			cs_n_buf[1] <= cs_n_buf[0];
			cs_n_buf[0] <= 1'b0;
		end
	end
	
	always @(negedge cs_n_buf[1]) begin
		din <= d;
	end
	
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			state <= 2'b00;
			ic_rst_n <= 1'b1;
		end
		else if(state == 2'b00) begin
			if(ic_rst) state <= 2'b01;
			else state <= 2'b00;
			ic_rst_n <= 1'b1;
		end
		else if(state == 2'b01) begin
			if(ic_rst) state <= 2'b10;
			else state <= 2'b00;
			ic_rst_n <= 1'b0;
		end
		else if(state == 2'b10) begin
			if(ic_rst) state <= 2'b10;
			else state <= 2'b00;
			ic_rst_n <= 1'b1;
		end
		else begin
			state <= 2'b00;
			ic_rst_n <= 1'b1;
		end
	end
	
	// Assign iid
	always @(mrw) begin
		if(mrw[0]) iid = 8'b00001_000;
		else if(mrw[1]) iid = 8'b00001_001;
		else if(mrw[2]) iid = 8'b00001_010;
		else if(mrw[3]) iid = 8'b00001_011;
		else if(mrw[4]) iid = 8'b00001_100;
		else if(mrw[5]) iid = 8'b00001_101;
		else if(mrw[6]) iid = 8'b00001_110;
		else if(mrw[7]) iid = 8'b00001_111;
		else iid = 8'b00000_000;
	end
	
	// ICWS Loading
	always @(posedge ic_dec or negedge ic_rst_n) begin
		if(~ic_rst_n) begin
			icws <= 2'b10;
		end
		else if(ic_dec) begin
			if(icws == 2'b10) icws <= 2'b01;
			else if(icws == 2'b01) icws <= 2'b00;
			else icws <= 2'b00;
		end
		else begin
			icws <= icws;
		end
	end
	
   // IMR Loading
   always @(cs_n_buf[1] or wr_n or a0 or din or imr or rst) begin
		ic_dec <= 1'b0;
      if(rst == 1'b1) begin
			ic_dec <= 1'b0;
			imr <= 8'b11111111;
      end
      else if((cs_n_buf[1] == 1'b0) & (wr_n == 1'b0) & (a0 == 1'b1)) begin
			if(icws == 2'b00) begin
				ic_dec <= 1'b0;
				imr <= din;
			end
			else if(icws == 2'b01) begin
				ic_dec <= 1'b1;
				imr <= 8'b0;
			end
			else if(icws == 2'b10) begin
				ic_dec <= 1'b1;
				imr <= 8'b0;
			end
			else begin
				// This should not happen, but plan for what to do
				ic_dec <= 1'b0;
				imr <= 8'b0;
			end
      end
      else begin
			ic_dec <= 1'b0;
			imr <= imr;
      end
   end

   // EOI Loading
   always @(cs_n_buf[1] or wr_n or a0 or din or clrisr or inta_n or rst) begin
      if(rst == 1'b1) begin
			eoir <= 8'b00001000;
      end
      else if((clrisr == 1'b1) | (inta_n == 1'b0)) begin
			eoir <= 8'b00001000;
      end
      else if((cs_n_buf[1] == 1'b0) & (wr_n == 1'b0) & (a0 == 1'b0)) begin
			eoir <= din;
      end
      else begin
			eoir <= eoir;
      end
   end

   // EOI interpretation
   always @(eoir or recint or clrisr or inta_n or rst) begin
		ic_rst <= 1'b0;
      if(rst == 1'b1) begin
			dout <= 8'b0;
			clrisr <= 1'b0;
      end
      else if((inta_n == 1'b0) & (recint == 1'b1)) begin
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
		else if(eoir[4] == 1'b1) begin
			// Initialize command word sequence
			ic_rst <= 1'b1;
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
   always @(negedge inta_n or posedge rst) begin
      // Wait State
      if(rst == 1'b1) begin
	 recint <= 1'b0;
	 isr <= 8'b0;
	 irr_clr <= 8'b0;
      end
      else if(recint == 1'b0) begin
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
   always @(ir[0] or irr_clr[0] or rst) begin
      if(rst == 1'b1) irr[0] <= 1'b0;
      else if(irr_clr[0] == 1'b1) irr[0] <= 1'b0;
      else if(ir[0] == 1'b1) irr[0] <= 1'b1;
      else irr[0] <= irr[0];
   end
   always @(ir[1] or irr_clr[1] or rst) begin
      if(rst == 1'b1) irr[1] <= 1'b0;
      else if(irr_clr[1] == 1'b1) irr[1] <= 1'b0;
      else if(ir[1] == 1'b1) irr[1] <= 1'b1;
      else irr[1] <= irr[1];
   end
   always @(ir[2] or irr_clr[2] or rst) begin
      if(rst == 1'b1) irr[2] <= 1'b0;
      else if(irr_clr[2] == 1'b1) irr[2] <= 1'b0;
      else if(ir[2] == 1'b1) irr[2] <= 1'b1;
      else irr[2] <= irr[2];
   end
   always @(ir[3] or irr_clr[3] or rst) begin
      if(rst == 1'b1) irr[3] <= 1'b0;
      else if(irr_clr[3] == 1'b1) irr[3] <= 1'b0;
      else if(ir[3] == 1'b1) irr[3] <= 1'b1;
      else irr[3] <= irr[3];
   end
   always @(ir[4] or irr_clr[4] or rst) begin
      if(rst == 1'b1) irr[4] <= 1'b0;
      else if(irr_clr[4] == 1'b1) irr[4] <= 1'b0;
      else if(ir[4] == 1'b1) irr[4] <= 1'b1;
      else irr[4] <= irr[4];
   end
   always @(ir[5] or irr_clr[5] or rst) begin
      if(rst == 1'b1) irr[5] <= 1'b0;
      else if(irr_clr[5] == 1'b1) irr[5] <= 1'b0;
      else if(ir[5] == 1'b1) irr[5] <= 1'b1;
      else irr[5] <= irr[5];
   end
   always @(ir[6] or irr_clr[6] or rst) begin
      if(rst == 1'b1) irr[6] <= 1'b0;
      else if(irr_clr[6] == 1'b1) irr[6] <= 1'b0;
      else if(ir[6] == 1'b1) irr[6] <= 1'b1;
      else irr[6] <= irr[6];
   end
   always @(ir[7] or irr_clr[7] or rst) begin
      if(rst == 1'b1) irr[7] <= 1'b0;
      else if(irr_clr[7] == 1'b1) irr[7] <= 1'b0;
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
