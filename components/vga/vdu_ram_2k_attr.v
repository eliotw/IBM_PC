/*
 * vdu_ram_2k_addr:
 * Internal RAM for VGA
 * Adapted from the Zet core
 * It will need to be changed to include a CoreGen core
 */
module vdu_ram_2k_attr (
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

   // Combinational logic
   assign rdata = mem[addr_reg];

   initial $readmemh("attr_rom.dat", mem);

endmodule // vdu_ram_2k_attr
