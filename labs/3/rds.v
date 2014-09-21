/*
 * rds:
 * A file to hold our audio data
 */
module rds(
	   a,d,c
	   );

   // inputs and outputs
   input [17:0] a;
   output [7:0] d;
   input 	c;

   // output register
   reg [7:0] 	d;

   // Parameters
   parameter ALRIGHT = 76194;
   parameter COOL = 90384;
 
   // memories
   reg [7:0] 	malright [(ALRIGHT-1):0];
   reg [7:0] 	mcool [(COOL-1):0];
 
   // Preload Memory
   initial begin
      $readmemh("alright.hex", malright, 0, (ALRIGHT-1));
      $readmemh("cool.hex", mcool, 0, (COOL-1));
   end
   
   always @(a or c) begin
      if(c === 1'b1) begin
	 d = mcool[a];
      end
      else begin
	 d = malright[a];
      end
   end // always @ (a)

endmodule // rds
