/*
 * ram_bank:
 * A section of nine slices of ram to hold 64 kilobytes of data, plus
 * a parity bit
 */
module ram_bank(
		clk, // clock
		rst, // reset
		md, // memory data
		ma, // memory address
		mdp, // memory data parity
		ras_n, // row enable not
		cas_n, // column enable not
		we_n // write enable not
		);

   input clk, rst, ras_n, cas_n, we_n;
   input [7:0] ma;
   inout [7:0] md;
   inout       mdp;

   wire [7:0]  md_in, md_out;
   wire        mdp_in, mdp_out;

   // Assign inout
   assign md_in = md;
   assign mdp_in = mdp;
   assign md = we_n ? md_out : 8'bz;
   assign mdp = we_n ? mdp_out : 8'bz;
	
	ram_core_slice central_ram_core(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din({md_in,mdp_in}), // data in
		 .dout({md_out,mdp_out}), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );
		 
   /*
   // RAM Slice 0
   ram_slice rs0(
	         .clk(clk), // clock
	         .rst(rst), // reset
	         .din(md_in[0]), // data in
	         .dout(md_out[0]), // data out
	         .ras_n(ras_n), // row enable not
	         .cas_n(cas_n), // column enable not
	         .we_n(we_n), // write enable not
	         .a(ma) // address
		 );

   // RAM Slice 1
   ram_slice rs1(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(md_in[1]), // data in
		 .dout(md_out[1]), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );

   // RAM Slice 2
   ram_slice rs2(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(md_in[2]), // data in
		 .dout(md_out[2]), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );

   // RAM Slice 3
   ram_slice rs3(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(md_in[3]), // data in
		 .dout(md_out[3]), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );

   // RAM Slice 4
   ram_slice rs4(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(md_in[4]), // data in
		 .dout(md_out[4]), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );

   // RAM Slice 5
   ram_slice rs5(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(md_in[5]), // data in
		 .dout(md_out[5]), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );

   // RAM Slice 6
   ram_slice rs6(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(md_in[6]), // data in
		 .dout(md_out[6]), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );

   // RAM Slice 7
   ram_slice rs7(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(md_in[7]), // data in
		 .dout(md_out[7]), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );

   // RAM Slice Parity
   ram_slice rsp(
		 .clk(clk), // clock
		 .rst(rst), // reset
		 .din(mdp_in), // data in
		 .dout(mdp_out), // data out
		 .ras_n(ras_n), // row enable not
		 .cas_n(cas_n), // column enable not
		 .we_n(we_n), // write enable not
		 .a(ma) // address
		 );
*/
endmodule // ram_bank

/*
 * ram_core_slice:
 * A slice of RAM built upon block memory
 * It holds 65536 9-bit chunks of memory
 */
module ram_core_slice(
		 clk, // clock
		 rst, // reset
		 din, // data in
		 dout, // data out
		 ras_n, // row enable not
		 cas_n, // column enable not
		 we_n, // write enable not
		 a // address
		 );

	input clk;
   input rst;
   input [8:0] din;
   output [8:0] dout;
   input  ras_n;
   input  cas_n;
   input  we_n;
   input [7:0] a;

   // internal wires for row enable, column enable, and write enable
   wire        ras, cas, we;
	wire [8:0] memout;
	
   // assign inversions of wires
   assign ras = ~ras_n;
   assign cas = ~cas_n;
   assign we = ~we_n;
	
	// registers for column address and row address
   reg [7:0]  caddr, raddr;

   // register for fsm state
   reg [1:0]  fsm, nxt;

   // register to activate output
   reg 	      enexp;
   
   // states for fsm
   parameter IDLE = 2'b00, RAS = 2'b01, CAS = 2'b10, ERR = 2'b11;
   
   // address of requested data;
   wire [15:0] addr;

   // assign main address of data
   assign addr = {raddr, caddr};

   // assign data out
   assign dout = (enexp === 1'b1) ? memout : 9'bz;

   // run fsm
   always @(ras or cas or rst or a or we or fsm) begin
      case(fsm)
			IDLE: if(rst === 1'b1) begin
				raddr = 8'b0;
				caddr = 8'b0;
				nxt = IDLE;
				enexp = 1'b0;
			end
			else if(ras === 1'b1) begin
				raddr = a;
				caddr = caddr;
				nxt = RAS;
				enexp = 1'b0;
			end
			else begin
				raddr = raddr;
				caddr = caddr;
				nxt = IDLE;
				enexp = 1'b0;
			end
			RAS: if(rst === 1'b1) begin
				raddr = 8'b0;
				caddr = 8'b0;
				nxt = IDLE;
				enexp = 1'b0;
			end
			else if(cas === 1'b1) begin
				raddr = raddr;
				caddr = a;
				nxt = CAS;
				enexp = 1'b0;
				//enexp = ~we;
			end
			else begin
				raddr = raddr;
				caddr = caddr;
				nxt = RAS;
				enexp = 1'b0;
			end
			CAS: if(rst === 1'b1) begin
				raddr = 8'b0;
				caddr = 8'b0;
				nxt = IDLE;
				enexp = 1'b0;
			end
			else if((ras === 1'b0) && (cas === 1'b0)) begin
				raddr = raddr;
				caddr = caddr;
				nxt = IDLE;
				enexp = 1'b0;
			end
			else begin
				raddr = raddr;
				caddr = caddr;
				nxt = CAS;
				enexp = ~we;
			end
			ERR: begin
				raddr = 8'b0;
				caddr = 8'b0;
				nxt = IDLE;
				enexp = 1'b0;
			end
			default: begin
				raddr = 8'b0;
				caddr = 8'b0;
				nxt = IDLE;
				enexp = 1'b0;
			end
      endcase // case (fsm)
   end // always @ (ras or cas or rst or a or we)

   // fsm
   always @(posedge clk) begin
      if(rst === 1'b1) begin
			fsm <= IDLE;
      end
      else begin
			fsm <= nxt;
      end
   end
   
	// RAM Core
	ramcore central_ram_core (
	.clka(clk), // input clka
	.wea(we), // input [0 : 0] wea
	.addra(addr), // input [15 : 0] addra
	.dina(din), // input [8 : 0] dina
	.douta(memout) // output [8 : 0] douta
	);
endmodule

/*
 * ram_slice:
 * A slice of RAM for the IBM PC
 * It holds 65536 bits of memory
 */
 /*
module ram_slice(
		 clk, // clock
		 rst, // reset
		 din, // data in
		 dout, // data out
		 ras_n, // row enable not
		 cas_n, // column enable not
		 we_n, // write enable not
		 a // address
		 );

   input clk;
   input rst;
   input din;
   output dout;
   input  ras_n;
   input  cas_n;
   input  we_n;
   input [7:0] a;

   // internal wires for row enable, column enable, and write enable
   wire        ras, cas, we, clock;
   
   // assign inversions of wires
   assign ras = ~ras_n;
   assign cas = ~cas_n;
   assign we = ~we_n;
   assign clock = ~clk;
   
   // registers for column address and row address
   reg [7:0]  caddr, raddr;

   // register for fsm state
   reg [1:0]  fsm, nxt;

   // register to activate output
   reg 	      enexp;
   
   // states for fsm
   parameter IDLE = 2'b00, RAS = 2'b01, CAS = 2'b10, ERR = 2'b11;
   
   // memory instantiation
   reg 	      mem [0:65535];
   
   // address of requested data;
   wire [15:0] addr;

   // assign main address of data
   assign addr = {raddr, caddr};

   // assign data out
   assign dout = (enexp === 1'b1) ? mem[addr] : 1'bz;

   // run fsm
   always @(ras or cas or rst or a or we or fsm) begin
      case(fsm)
	IDLE: if(rst === 1'b1) begin
	   raddr = 8'b0;
	   caddr = 8'b0;
	   nxt = IDLE;
	   enexp = 1'b0;
	end
	else if(ras === 1'b1) begin
	   raddr = a;
	   caddr = caddr;
	   nxt = RAS;
	   enexp = 1'b0;
	end
	else begin
	   raddr = raddr;
	   caddr = caddr;
	   nxt = IDLE;
	   enexp = 1'b0;
	end
	RAS: if(rst === 1'b1) begin
	   raddr = 8'b0;
	   caddr = 8'b0;
	   nxt = IDLE;
	   enexp = 1'b0;
	end
	else if(cas === 1'b1) begin
	   raddr = raddr;
	   caddr = a;
	   nxt = CAS;
	   enexp = 1'b0;
	   //enexp = ~we;
	end
	else begin
	   raddr = raddr;
	   caddr = caddr;
	   nxt = RAS;
	   enexp = 1'b0;
	end
	CAS: if(rst === 1'b1) begin
	   raddr = 8'b0;
	   caddr = 8'b0;
	   nxt = IDLE;
	   enexp = 1'b0;
	end
	else if((ras === 1'b0) && (cas === 1'b0)) begin
	   raddr = raddr;
	   caddr = caddr;
	   nxt = IDLE;
	   enexp = 1'b0;
	end
	else begin
	   raddr = raddr;
	   caddr = caddr;
	   nxt = CAS;
	   enexp = ~we;
	end
	ERR: begin
	   raddr = 8'b0;
	   caddr = 8'b0;
	   nxt = IDLE;
	   enexp = 1'b0;
	end
	default: begin
	   raddr = 8'b0;
	   caddr = 8'b0;
	   nxt = IDLE;
	   enexp = 1'b0;
	end
      endcase // case (fsm)
   end // always @ (ras or cas or rst or a or we)

   // fsm
   always @(posedge clk) begin
      if(rst === 1'b1) begin
	 fsm <= IDLE;
      end
      else begin
	 fsm <= nxt;
      end
   end
   
   // assign data to memory
   always @(we or rst or din or addr) begin
      if(rst) begin
	 mem[addr] <= 1'b0;
      end
      else if(we) begin
	 mem[addr] <= din;
      end
      else begin
	 mem[addr] <= mem[addr];
      end
   end
   
endmodule // ram_slice
*/
