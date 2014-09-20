/*
 * ls322:
 * The ls322 is an 8-bit shift register with sign extend
 */
module ls322(
	     q,
	     qh1,
	     oe_n,
	     d0,
	     d1,
	     clr_n,
	     clock,
	     se_n,
	     ds,
	     sp_n,
	     g_n
	     );

   inout [7:0] q;
   output      qh1;
   input       oe_n, d0, d1, clr_n, clock, se_n, ds, sp_n, g_n;

   // Register of holding
   reg [7:0]   qr;

   // Assignment of output bit
   assign qh1 = qr[0];
   
   // Register assignment
   always @(posedge clock) begin
      // clear
      if(clr_n === 1'b0) begin
	 qr <= 8'b0;
      end
      // hold
      else if ((g_n===1'b1) && (oe_n===1'b0)) begin
	 qr <= qr;
      end
      // shift right
      else if ((g_n===1'b0)&&(sp_n===1'b1)&&(se_n===1'b1)&&(oe_n===1'b0)) begin
	 if(ds === 1'b0) begin
	    qr <= {d0,qr[7:1]};
	 end
	 else begin
	    qr <= {d1,qr[7:1]};
	 end
      end
      // sign extend
      else if ((g_n===1'b0)&&(sp_n===1'b1)&&(se_n===1'b0)&&(oe_n===1'b0)) begin
	 qr <= {qr[7],qr[7:1]};
      end
      // load
      else if ((g_n===1'b0)&&(sp_n===1'b0)) begin
	 qr <= q;
      end
      // other
      else begin
	 qr <= qr;
      end
   end

   // Bus Driving
   assign q = (oe_n === 1'b0) ? qr : 8'bzzzzzzzz;
   
endmodule // ls322
