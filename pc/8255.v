/*
 * intel8255:
 * A verilog implementation of an intel 8255 programmable peripheral interface
 * Automatically configured to control word 10011001
 */
module intel8255(
	      rd_n,
	      wr_n,
	      cs_n,
	      a,
	      reset,
	      d,
	      pb,
	      pc,
	      pa
	      );

   input rd_n, wr_n, cs_n;
   input [1:0] a;
   input       reset;
   inout [7:0] d;
   input [7:0] pa, pc;
   output [7:0] pb;

   // Registers
   reg [7:0] 	pb, pdo;

   // Wires
   wire [7:0] 	pdi;
   wire 	pds;
   wire [4:0] 	cmd;
   
   // Line assign
   assign d = (pds == 1'b1) ? pdo : 8'bzzzzzzzz;
   assign pdi = d;
   assign cmd = {a[1],a[0],rd_n,wr_n,cs_n};
   assign pds = ((cmd == 5'b00010) | (cmd == 5'b10010));

   // pdo assign
   always @(cmd or reset) begin
      if(reset == 1'b1) begin
	 pdo <= 8'b0;
      end
      else if(cmd == 5'b00010) begin
	 pdo <= pa;
      end
      else if(cmd == 5'b10010) begin
	 pdo <= pc;
      end
      else begin
	 pdo <= pdo;
      end
   end // always @ (cmd)

   // pb assign
   always @(cmd or reset) begin
      if(reset) begin
	 pb <= 8'b0;
      end
      else if(cmd == 5'b01100) begin
	 pb <= pdi;
      end
      else begin
	 pb <= pb;
      end
   end // always @ (cmd or reset)
   
endmodule // intel8255
