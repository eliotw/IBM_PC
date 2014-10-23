/*
 * timedelay:
 * This module implements a 5, 25, 50, 75, 100, and 125 ns time delay
 */
module timedelay(
		 in,
		 clk,
		 rst,
		 t5,
		 t25,
		 t50,
		 t75,
		 t100,
		 t125
		 );

   input in, clk, rst;
   output t5, t25, t50, t75, t100, t125;

   // Connection Wires
   wire   t5,t10,t15,t20,t25,t30,t35,t40,t45,t50,t55,t60,t65,t70,t75,t80;
   wire   t85,t90,t95,t100,t105,t110,t115,t120,t125;

   // Time Delay Slices
   tds td5(in,t5,clk,rst);
   tds td10(t5,t10,clk,rst);
   tds td15(t10,t15,clk,rst);
   tds td20(t15,t20,clk,rst);
   tds td25(t20,t25,clk,rst);
   tds td30(t25,t30,clk,rst);
   tds td35(t30,t35,clk,rst);
   tds td40(t35,t40,clk,rst);
   tds td45(t40,t45,clk,rst);
   tds td50(t45,t50,clk,rst);
   tds td55(t50,t55,clk,rst);
   tds td60(t55,t60,clk,rst);
   tds td65(t60,t65,clk,rst);
   tds td70(t65,t70,clk,rst);
   tds td75(t70,t75,clk,rst);
   tds td80(t75,t80,clk,rst);
   tds td85(t80,t85,clk,rst);
   tds td90(t85,t90,clk,rst);
   tds td95(t90,t95,clk,rst);
   tds td100(t95,t100,clk,rst);
   tds td105(t100,t105,clk,rst);
   tds td110(t105,t110,clk,rst);
   tds td115(t110,t115,clk,rst);
   tds td120(t115,t120,clk,rst);
   tds td125(t120,t125,clk,rst);
   
endmodule // timedelay

/*
 * tds:
 * This module is a time delay slice
 */
module tds(d,q,clk,rst);
   input d,clk,rst;
   output q;

   reg 	  q;

   always @(posedge clk) begin
      if(rst === 1'b1) begin
	 q <= 1'b0;
      end
      else begin
	 q <= d;
      end
   end
   
endmodule // tds
