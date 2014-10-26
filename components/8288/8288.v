/*
 * intel8288:
 * The bus controller for the IBM PC
 */
module intel8288(
		 input [2:0] s_n,
		 input clk,
		 input aen_n,
		 input cen, // output enable
		 input iob, // set equal to 0
		 output mrdc_n,
		 output mwtc_n, // not connected
		 output amwc_n,
		 output iorc_n,
		 output iowc_n, // not connected
		 output aiowc_n,
		 output inta_n,
		 output dtr,
		 output den,
		 output mce, // not connected
		 output ale
		 );

   // Parameters
   parameter [1:0]
		s0 = 2'b00,
		s1 = 2'b01,
		s2 = 2'b10,
		s3 = 2'b11;
   
   // Registers
   reg [1:0] 		state, nextstate; // States
   reg 			mrdc, amwc, iorc, aiowc, inta;
   
   // Wires
   wire 		read, write, interrupt, activate, readint;
   wire 		mrdc_n_s, amwc_n_s, iorc_n_s, aiowc_n_s, inta_n_s;
   wire 		dtr_s, den_s, ale_s;

   // Initial Conditions
   initial begin
      state = s0;
      nextstate = s0;
      mrdc = 1'b0;
      amwc = 1'b0;
      iorc = 1'b0;
      aiowc = 1'b0;
      inta = 1'b0;
   end
   
   // Assign unconnected signals
   assign mwtc_n = 1'b1;
   assign iowc_n = 1'b1;
   assign mce = 1'b1;

   // Assign connected signals
   assign mrdc_n = (cen) ? mrdc_n_s : 1'b1;
   assign amwc_n = (cen) ? amwc_n_s : 1'b1;
   assign iorc_n = (cen) ? iorc_n_s : 1'b1;
   assign aiowc_n = (cen) ? aiowc_n_s : 1'b1;
   assign inta_n = (cen) ? inta_n_s : 1'b1;
   assign dtr = (cen) ? dtr_s : 1'b1; 
   assign den = (cen) ? den_s : 1'b0;
   assign ale = (cen) ? ale_s : 1'b0;

   // Assign wires
   assign read = mrdc | iorc;
   assign write = amwc | aiowc;
   assign interrupt = inta;
   assign readint = read | interrupt;
   assign activate = ~((s_n == 3'b011) | (s_n == 3'b111));

   // Assign signal wires
   assign ale_s = (state == s0) & ~aen_n & activate;
   assign dtr_s = ~((state != s0) & readint);
   assign den_s = ((state == s2) & readint) | ((state != s0) & write);

   // Assign command wires
   assign mrdc_n_s = ~(((state == s1) | (state == s2)) & mrdc);
   assign amwc_n_s = ~(((state == s1) | (state == s2)) & amwc);
   assign iorc_n_s = ~(((state == s1) | (state == s2)) & iorc);
   assign aiowc_n_s = ~(((state == s1) | (state == s2)) & aiowc);
   assign inta_n_s = ~(((state == s1) | (state == s2)) & inta);
   
   // Finite State Machine Next State Logic
   always @(state or aen_n or activate) begin
      case(state)
	s0: begin
	   if(~aen_n & activate) begin
	      nextstate = s1;
	   end
	   else begin
	      nextstate = s0;
	   end
	end
	s1: begin
	   nextstate = s2;
	end
	s2: begin
	   nextstate = s3;
	end
	s3: begin
	   nextstate = s0;
	end
	default: begin
	   nextstate = s0;
	end
      endcase // case (state)   
   end // always @ (state)
   
   // Latching of relevant input
   always @(posedge clk) begin
      if(state == s0) begin
	 mrdc <= ((s_n == 3'b100) | (s_n == 3'b101));
	 amwc <= (s_n == 3'b110);
	 iorc <= (s_n == 3'b001);
	 aiowc <= (s_n == 3'b010);
	 inta <= (s_n == 3'b000);
      end
      else begin
	 mrdc <= mrdc;
	 amwc <= amwc;
	 iorc <= iorc;
	 aiowc <= aiowc;
	 inta <= inta;
      end // else: !if(state == s1)
   end
   
   // FSM Movement Logic
   always @(posedge clk) begin
      state <= nextstate;
   end
   
endmodule // intel8288


   