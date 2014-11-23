/*
 * ls280:
 * This is a 9-bit parity checker used for the RAM test
 */
module ls280(
	    a,b,c,d,e,f,g,h,i,
	    odd,
	    even
	    );

   input  a,b,c,d,e,f,g,h,i;
   output odd, even;

   wire [3:0] sum;
   
   assign sum = {3'b0,a}+{3'b0,b}+{3'b0,c}+{3'b0,d}+{3'b0,e}+{3'b0,f}+{3'b0,g}+{3'b0,h}+{3'b0,i};
   assign odd = sum[0];
   assign even = ~sum[0];
   
endmodule // ls280
