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
   inout [2:0] cas;
   
    // not connected
   input       a0;
   input       inta_n;
   input [7:0] ir;
   output      inta;
   output      spen_n;

   // Wires
   wire        inta;

   // Interrupt request register (irr)
   reg [7:0]   irr;
   reg [7:0]   irr_clr;

   // Interrupt mask register (imr)
   reg [7:0]   imr;

   // In service register (isr)
   reg [7:0]   isr;

   // Mask result wire (mrw)
   wire [7:0]  mrw;

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
   assign mrw[0] = irr[0] & ~imr[0];
   assign mrw[1] = irr[1] & ~imr[1];
   assign mrw[2] = irr[2] & ~imr[2];
   assign mrw[3] = irr[3] & ~imr[3];
   assign mrw[4] = irr[4] & ~imr[4];
   assign mrw[5] = irr[5] & ~imr[5];
   assign mrw[6] = irr[6] & ~imr[6];
   assign mrw[7] = irr[7] & ~imr[7];

   // Interrupt Assignment
   assign inta = mrw[0] | mrw[1] | mrw[2] | mrw[3] |
		 mrw[4] | mrw[5] | mrw[6] | mrw[7];

endmodule // intel8259
