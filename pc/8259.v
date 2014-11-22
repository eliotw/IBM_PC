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

	// FSM State Enum
   parameter [7:0]
		idle =     8'b00000001,
		issue =    8'b00000010,
		waiteoir = 8'b00000100,
		done =     8'b00001000,
		reboot =   8'b00010000;
		
   // Wires
   wire        inta; // Interrupt
   wire rst_n; // Reset low
	wire [7:0] irr_n;
	
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
	reg [7:0] s, nexts; // Control FSM
	reg [7:0] xisr; // Next isr
	
   // Assign Spen
   assign spen_n = ~(~rd_n & ~cs_n);
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
		s = idle;
		nexts = idle;
   end
   
   // Assign line D
   assign d = ((rd_n == 1'b0) & (cs_n == 1'b0)) ? ((a0 == 1'b1) ? imr : dout) : 8'bzzzzzzzz;
   
	// FSM
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			s <= idle;
		end
		else begin
			s <= nexts;
		end
	end
	
	// Next State Logic
	always @(*) begin
		case(s)
			idle: begin
				if(ic_rst) begin
					nexts <= reboot;
				end
				else if(mrw) begin
					nexts <= issue;
				end
				else begin
					nexts <= idle;
				end
			end
			issue: begin
				if(ic_rst) begin
					nexts <= reboot;
				end
				else if(inta_n == 1'b0) begin
					nexts <= waiteoir;
				end
				else if(mrw) begin
					nexts <= issue;
				end
				else begin
					nexts <= idle;
				end
			end
			waiteoir: begin
				if(ic_rst) begin
					nexts <= reboot;
				end
				else if(clrisr == 1'b1) begin
					nexts <= done;
				end
				else begin
					nexts <= waiteoir;
				end
			end
			done: begin
				if(ic_rst) begin
					nexts <= reboot;
				end
				else if(mrw) begin
					nexts <= issue;
				end
				else begin
					nexts <= idle;
				end
			end
			reboot: begin
				nexts <= idle;
			end
			default: begin
				nexts <= idle;
			end
		endcase
	end
	
	// Next State Logic
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			irr_clr <= 8'b0000_0000;
			isr <= 8'b0000_0000;
		end
		else begin
			case(s)
				idle: begin
					irr_clr <= 8'b0000_0000;
					isr <= 8'b0000_0000;
				end
				issue: begin
					if(inta_n == 1'b0) begin
						irr_clr <= xisr;
						isr <= xisr;
					end
					else begin
						irr_clr <= 8'b0000_0000;
						isr <= 8'b0000_0000;
					end
				end
				waiteoir: begin
					irr_clr <= 8'b0000_0000;
					if(clrisr == 1'b1) begin
						isr <= 8'b0000_0000;
					end
					else begin
						isr <= isr;
					end
				end
				done: begin
					irr_clr <= 8'b0000_0000;
					isr <= 8'b0000_0000;
				end
				reboot: begin
					irr_clr <= 8'b0000_0000;
					isr <= 8'b0000_0000;
				end
				default: begin
					irr_clr <= 8'b0000_0000;
					isr <= 8'b0000_0000;
				end
			endcase
		end
	end
	
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
	
	// Assign Next ISR
	always @(mrw) begin
		if(mrw[0]) xisr <= 8'b0000_0001;
		else if(mrw[1]) xisr <= 8'b0000_0010;
		else if(mrw[2]) xisr <= 8'b0000_0100;
		else if(mrw[3]) xisr <= 8'b0000_1000;
		else if(mrw[4]) xisr <= 8'b0001_0000;
		else if(mrw[5]) xisr <= 8'b0010_0000;
		else if(mrw[6]) xisr <= 8'b0100_0000;
		else if(mrw[7]) xisr <= 8'b1000_0000;
		else xisr <= 8'b0000_0000;
	end
	
	// Assign iid
	always @(negedge inta_n) begin
		if(mrw[0]) iid <= 8'b00001_000;
		else if(mrw[1]) iid <= 8'b00001_001;
		else if(mrw[2]) iid <= 8'b00001_010;
		else if(mrw[3]) iid <= 8'b00001_011;
		else if(mrw[4]) iid <= 8'b00001_100;
		else if(mrw[5]) iid <= 8'b00001_101;
		else if(mrw[6]) iid <= 8'b00001_110;
		else if(mrw[7]) iid <= 8'b00001_111;
		else iid <= 8'b00000_000;
	end
	
	/*
	always @(isr) begin
		if(isr[0]) iid <= 8'b00001_000;
		else if(isr[1]) iid <= 8'b00001_001;
		else if(isr[2]) iid <= 8'b00001_010;
		else if(isr[3]) iid <= 8'b00001_011;
		else if(isr[4]) iid <= 8'b00001_100;
		else if(isr[5]) iid <= 8'b00001_101;
		else if(isr[6]) iid <= 8'b00001_110;
		else if(isr[7]) iid <= 8'b00001_111;
		else iid <= 8'b00000_000;
	end
	*/
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
	/*
   always @(cs_n_buf[1] or wr_n or a0 or din or imr or rst) begin
		ic_dec <= 1'b0;
      if(rst == 1'b1) begin
			ic_dec <= 1'b0;
			imr <= 8'b11111111;
      end
      else if((cs_n_buf[1] == 1'b0) & (wr_n == 1'b0) & (a0 == 1'b1)) begin
			if(icws == 2'b00) begin
				ic_dec <= 1'b0;
				imr <= d;
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
	*/
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			imr <= 8'b00000000;
			ic_dec <= 1'b0;
		end
		else if((cs_n == 1'b0) & (wr_n == 1'b0) & (a0 == 1'b1)) begin
			imr <= d;
		end
		else begin
			imr <= imr;
		end
	end
	
   // EOI Loading
	always @(posedge clk or negedge rst_n) begin
		if(~rst_n) begin
			eoir <= 8'b00001000;
		end
		else if(ic_rst == 1'b1) begin
			eoir <= 8'b00001000;
		end
		else if(clrisr == 1'b1) begin
			eoir <= 8'b00001000;
		end
		else if((wr_n == 1'b0) & (a0 == 1'b0) & (cs_n == 1'b0)) begin
			eoir <= d;
		end
		else begin
			eoir <= eoir;
		end
	end
	
   // EOI interpretation
	//always @(posedge clk or negedge rst_n) begin
   always @(eoir or recint or clrisr or inta_n or rst) begin
		ic_rst <= 1'b0;
      if(~rst_n) begin
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
				dout <= irr;
			end
			else if(eoir[1:0] == 2'b11) begin
				dout <= isr;
			end
			else begin
				dout <= dout;
			end
			clrisr <= 1'b0; // was clrisr
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

	/*
   // Mock FSM
	always @(posedge clk or negedge rst_n) begin
   //always @(negedge inta_n or posedge rst) begin
      // Wait State
      if(~rst_n) begin
			recint <= 1'b0;
			isr <= 8'b0;
			irr_clr <= 8'b0;
      end
      else if(recint == 1'b0) begin
			if(inta_n == 1'b0) begin
				recint <= 1'b0;
				if(~clrisr) begin
					isr <= isr;
					irr_clr <= irr_clr;
				end
				else if(mrw[0] == 1'b1) begin
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
			else if(clrisr) begin
				recint <= 1'b0;
				isr <= 8'b0;
				irr_clr <= isr;
				//irr_clr <= 8'b0; // maybe?
			end
			else begin
				recint <= 1'b0;
				isr <= isr;
				irr_clr <= 8'b0;
			end // else: !if(inta == 1'b1)
      end
      // Receive State
      else begin
			recint <= 1'b0;
			isr <= isr;
			irr_clr <= 8'b0;
      end
   end
   */
	
   // IRRN
	assign irr_n[0] = rst_n & ~irr_clr[0];
	assign irr_n[1] = rst_n & ~irr_clr[1];
	assign irr_n[2] = rst_n & ~irr_clr[2];
	assign irr_n[3] = rst_n & ~irr_clr[3];
	assign irr_n[4] = rst_n & ~irr_clr[4];
	assign irr_n[5] = rst_n & ~irr_clr[5];
	assign irr_n[6] = rst_n & ~irr_clr[6];
	assign irr_n[7] = rst_n & ~irr_clr[7];
	
   // IRR Loading
	always @(posedge ir[0] or negedge irr_n[0]) begin
		if(~irr_n[0]) irr[0] <= 1'b0;
		else if(ir[0]) irr[0] <= 1'b1;
		else irr[0] <= irr[0];
	end
	always @(posedge ir[1] or negedge irr_n[1]) begin
		if(~irr_n[1]) irr[1] <= 1'b0;
		else if(ir[1]) irr[1] <= 1'b1;
		else irr[1] <= irr[1];
	end
	always @(posedge ir[2] or negedge irr_n[2]) begin
		if(~irr_n[2]) irr[2] <= 1'b0;
		else if(ir[2]) irr[2] <= 1'b1;
		else irr[2] <= irr[2];
	end
	always @(posedge ir[3] or negedge irr_n[3]) begin
		if(~irr_n[3]) irr[3] <= 1'b0;
		else if(ir[3]) irr[3] <= 1'b1;
		else irr[3] <= irr[3];
	end
	always @(posedge ir[4] or negedge irr_n[4]) begin
		if(~irr_n[4]) irr[4] <= 1'b0;
		else if(ir[4]) irr[4] <= 1'b1;
		else irr[4] <= irr[4];
	end
	always @(posedge ir[5] or negedge irr_n[5]) begin
		if(~irr_n[5]) irr[5] <= 1'b0;
		else if(ir[5]) irr[5] <= 1'b1;
		else irr[5] <= irr[5];
	end
	always @(posedge ir[6] or negedge irr_n[6]) begin
		if(~irr_n[6]) irr[6] <= 1'b0;
		else if(ir[6]) irr[6] <= 1'b1;
		else irr[6] <= irr[6];
	end
	always @(posedge ir[7] or negedge irr_n[7]) begin
		if(~irr_n[7]) irr[7] <= 1'b0;
		else if(ir[7]) irr[7] <= 1'b1;
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
	assign inta = (s == issue);
	
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
