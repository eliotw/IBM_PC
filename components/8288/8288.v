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
   reg 			mrdc_n_s, amwc_n_s, iorc_n_s, aiowc_n_s, inta_n_s;
   reg 			dtr_s, den_s, ale_s;
   
   // Wires

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

   // Latching of relevant input
   always @(posedge clk) begin
      if(state == s1) begin
	 mrdc_n_s <= ~((s == 3'b100) | (s == 3'b101));
	 amwc_n_s <= ~(s == 3'b110);
	 iorc_n_s <= ~(s == 3'b001);
	 aiowc_n_s <= ~(s == 3'b010);
	 inta_n_s <= ~(s == 3'b000);
      end
      else begin
	 mrdc_n_s <= mrdc_n_s;
	 amwc_n_s <= amwc_n_s;
	 iorc_n_s <= iorc_n_s;
	 aiowc_n_s <= aiowc_n_s;
	 inta_n_s <= inta_n_s;
      end // else: !if(state == s1)
   end
   
   
endmodule // intel8288


   