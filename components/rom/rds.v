/*
 * rds:
 * A file for the ROM
 */
module rds(
	   a,d,cs_n
	   );

   input [12:0] a;
   inout [7:0] 	d;
   input 	cs_n;
   
   parameter ROMSELECT = 0;
   reg [7:0] 	outputval;
   reg [7:0] 	mem [65535:0];

   initial
     $readmemh("bios.txt", mem, 0, 65535);

   always @(a)
     begin
	case(ROMSELECT)
	  0: outputval = mem[a];
	  1: outputval = mem[a+8192];
	  2: outputval = mem[a+16384];
	  3: outputval = mem[a+24576];
	  4: outputval = mem[a+32768];
	  5: outputval = mem[a+40960];
	  6: outputval = mem[a+49152];
	  7: outputval = mem[a+57344];
	  default: outputval = 8'b0;
	endcase // case (ROMSELECT)
     end // always @ (a)

   assign d = (cs_n) ? 8'bz : outputval;
   
endmodule // rds

/*
 * rom:
 * A file for the ROM
 */
module rom(
	   a,d,cs_n,clk
	   );

   input [12:0] 	a;
   inout [7:0] 	d;
   input [7:0] 	cs_n;
	input 			clk;

   wire [7:0] 	outputval;
	reg [2:0] 	upaddr;
	wire [7:0]	cs;
	wire 			csv;
	wire [15:0] addr;
	
	// Invert cs_n
	assign cs = ~cs_n;
	assign csv = cs[0] | cs[1] | cs[2] | cs[3] | cs[4] | cs[5] | cs[6] | cs[7];
	
	// Case statement for cs
   always @(cs)
     begin
		case(cs)
		  8'b00000001: upaddr = 3'd0;
		  8'b00000010: upaddr = 3'd1;
		  8'b00000100: upaddr = 3'd2;
		  8'b00001000: upaddr = 3'd3;
		  8'b00010000: upaddr = 3'd4;
		  8'b00100000: upaddr = 3'd5;
		  8'b01000000: upaddr = 3'd6;
		  8'b10000000: upaddr = 3'd7;
		  default: upaddr = 3'd0;
		endcase
     end
	  
	// Assign the address
	assign addr = {upaddr,a};
	
	// Assign the output
   assign d = (csv) ? outputval : 8'bzzzzzzzz;
   
	// Actual Rom Core
	romcore crc(
				.clka(clk), // input clka
				.wea(1'b0), // input [0 : 0] wea
				.addra(addr), // input [15 : 0] addra
				.dina(8'b0), // input [7 : 0] dina
				.douta(outputval) // output [7 : 0] douta
				);
endmodule