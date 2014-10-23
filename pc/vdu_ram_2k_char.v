/*
 * vdu_ram_2k_char:
 * Internal RAM for VGA
 * This module has been adapted from the Zet module
 * It will need to be modified to accomodate a CoreGen core
 */
module vdu_ram_2k_char (
			input         clk,
			input         rst,
			input         we,
			input  [10:0] addr,
			output [ 7:0] rdata,
			input  [ 7:0] wdata
			);

   // Registers and nets
   reg [ 7:0] 			      mem[0:2047];
   reg [10:0] 			      addr_reg;

   always @(posedge clk)
     begin
	if (we) mem[addr] <= wdata;
	addr_reg <= addr;
     end

   // Combinatorial logic
   assign rdata = mem[addr_reg];

   initial $readmemh("buff_rom.dat", mem);

endmodule // vdu_ram_2k_char
