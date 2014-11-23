`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:30 09/26/2014
// Design Name:   ram_bank
// Module Name:   /afs/ece.cmu.edu/usr/pmbrown/Private/IBM/IBM_PC/components/ram/ramcore/test_ram_2.v
// Project Name:  ramcore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_bank
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ram_2;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] ma;
	reg ras_n;
	reg cas_n;
	reg we_n;

	// Bidirs
	wire [7:0] md;
	wire mdp;

	// Instantiate the Unit Under Test (UUT)
	ram_bank uut (
		.clk(clk), 
		.rst(rst), 
		.md(md), 
		.ma(ma), 
		.mdp(mdp), 
		.ras_n(ras_n), 
		.cas_n(cas_n), 
		.we_n(we_n)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		ma = 0;
		ras_n = 0;
		cas_n = 0;
		we_n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

