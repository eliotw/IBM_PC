/*
 * vdu_char_rom:
 * Character ROM for text mode fonts
 * Adapted from the Zet processor ROM
 * It will need to be changed to include CoreGen core 
 */
module vdu_char_rom (
		     input             clk,
		     input      [11:0] addr,
		     output reg [ 7:0] q
		     );

   // Registers, nets and parameters
   reg [7:0] 			       rom[0:4095];

   // Behaviour
   always @(posedge clk) q <= rom[addr];

   initial $readmemh("char_rom.dat", rom);

endmodule // vdu_char_rom
