/*
 * intel8253:
 * This module is a verilog description of the intel 8253
 * programmable interval timer
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
   input [7:0] d;
   output [2:0] out;

endmodule // intel8253

/*
 * count4:
 * This module is a 4-bit down counter with bcd and binary modes
 */
module count4(decin,numin,bcd,zero,numout,decout,load,clk);

   input decin, bcd, load, clk;
   output decout, zero;
   input [3:0] numin;
   output [3:0] numout;

   // Counter registers
   reg [3:0] 	numout,nextnum;
   reg 		decout, zero;
   
   // Counter logic
   always @(clk or numout or decin or numin or bcd or load) begin
      zero = 1'b0;
      decout = 1'b0;
      nextnum = nextnum;
      
      case(numout)
	4'h0: begin
	   zero = 1'b1;
	   if(decin === 1'b1) begin
	      decout = 1'b1;
	      if(bcd === 1'b1) begin
		 nextnum = 4'h9;
	      end
	      else begin
		 nextnum = 4'hf;
	      end
	   end
	   else begin
	      decout = 1'b0;
	      nextnum = 4'h0;
	   end // else: !if(decin === 1'b1)
	end // case: 4'h0
	4'h1: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h0;
	   end
	   else nextnum = 4'h1;
	end
	4'h2: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h1;
	   end
	   else nextnum = 4'h2;
	end
	4'h3: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h2;
	   end
	   else nextnum = 4'h3;
	end
	4'h4: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h3;
	   end
	   else nextnum = 4'h4;
	end
	4'h5: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h4;
	   end
	   else nextnum = 4'h5;
	end
	4'h6: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h5;
	   end
	   else nextnum = 4'h6;
	end
	4'h7: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h6;
	   end
	   else nextnum = 4'h7;
	end
	4'h8: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h7;
	   end
	   else nextnum = 4'h8;
	end
	4'h9: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h8;
	   end
	   else nextnum = 4'h9;
	end
	4'ha: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'h9;
	   end
	   else nextnum = 4'ha;
	end
	4'hb: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'ha;
	   end
	   else nextnum = 4'hb;
	end
	4'hc: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'hb;
	   end
	   else nextnum = 4'hc;
	end
	4'hd: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'hc;
	   end
	   else nextnum = 4'hd;
	end
	4'he: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'hd;
	   end
	   else nextnum = 4'he;
	end
	4'hf: begin
	   zero = 1'b0;
	   decout = 1'b0;
	   if(decin === 1'b1) begin
	      nextnum = 4'he;
	   end
	   else nextnum = 4'hf;
	end
	default: begin
	   zero = 1'b0;
	   nextnum = 4'h0;
	   decout = 1'b0;
	end
      endcase // case (numout)
   end

   // Counter FSM
   always @(posedge clk) begin
      if(load === 1'b1) begin
	 numout <= numin;
      end
      else begin
	 numout <= nextnum;
      end
   end
   
endmodule // count4
