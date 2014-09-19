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
