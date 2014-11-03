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
	inout mdp;
	wire [7:0] md_in, md_out;
	wire mdp_in, mdp_out;
	wire enexp;
	
	// Assign inout
	assign md_in = md;
	assign mdp_in = mdp;
	assign md = enexp ? md_out : 8'bz;
	assign mdp = enexp ? mdp_out : 1'bz;
	
	ram_core_slice central_ram_core(
	.clk(clk), // clock
	.rst(rst), // reset
	.din({md_in,mdp_in}), // data in
	.dout({md_out,mdp_out}), // data out
	.ras_n(ras_n), // row enable not
	.cas_n(cas_n), // column enable not
	.we_n(we_n), // write enable not
	.a(ma), // address
	.enexp(enexp) // enable output
	);
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
	a, // address
	enexp // enable output
	);
	
	input clk;
	input rst;
	input [8:0] din;
	output [8:0] dout;
	input ras_n;
	input cas_n;
	input we_n;
	input [7:0] a;
	output reg enexp;
	
	// internal wires for row enable, column enable, and write enable
	wire ras, cas, we;
	
	// assign inversions of wires
	assign ras = ~ras_n;
	assign cas = ~cas_n;
	assign we = ~we_n;
	
	// registers for column address and row address
	reg [7:0] caddr, raddr;
	
	// register for fsm state
	reg [1:0] fsm, nxt;

	// register to activate writing
	reg wer;
	// IGNORED B/C NEVER USED
	
	// states for fsm
	parameter IDLE = 2'b00, RAS = 2'b01, CAS = 2'b10, ERR = 2'b11;
	
	// address of requested data;
	wire [15:0] addr;
	
	// assign main address of data
	assign addr = {raddr, caddr};
	
	// run fsm
	always @(ras or cas or rst or a or we or fsm) begin
		case(fsm)
			IDLE: if(rst === 1'b1) begin
			raddr = 8'b0;
			caddr = 8'b0;
			nxt = IDLE;
			enexp = 1'b0;
			wer = 1'b0;
			end
			else if(ras === 1'b1) begin
			raddr = a;
			caddr = caddr;
			nxt = RAS;
			enexp = 1'b0;
			wer = 1'b0;
			end
			else begin
			raddr = raddr;
			caddr = caddr;
			nxt = IDLE;
			enexp = 1'b0;
			wer = 1'b0;
			end
			RAS: if(rst === 1'b1) begin
			raddr = 8'b0;
			caddr = 8'b0;
			nxt = IDLE;
			enexp = 1'b0;
			wer = 1'b0;
			end
			else if(cas === 1'b1) begin
			raddr = raddr;
			caddr = a;
			nxt = CAS;
			enexp = 1'b0;
			wer = 1'b0;
			end
			else begin
			raddr = raddr;
			caddr = caddr;
			nxt = RAS;
			enexp = 1'b0;
			wer = 1'b0;
			end
			CAS: if(rst === 1'b1) begin
			raddr = 8'b0;
			caddr = 8'b0;
			nxt = IDLE;
			enexp = 1'b0;
			wer = 1'b0;
			end
			else if((ras === 1'b0) && (cas === 1'b0)) begin
			raddr = raddr;
			caddr = caddr;
			nxt = IDLE;
			enexp = 1'b0;
			wer = 1'b0;
			end
			else begin
			raddr = raddr;
			caddr = caddr;
			nxt = CAS;
			enexp = ~we;
			wer = we;
			end
			ERR: begin
			raddr = 8'b0;
			caddr = 8'b0;
			nxt = IDLE;
			enexp = 1'b0;
			wer = 1'b0;
			end
			default: begin
			raddr = 8'b0;
			caddr = 8'b0;
			nxt = IDLE;
			enexp = 1'b0;
			wer = 1'b0;
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
		.douta(dout) // output [8 : 0] douta
	);
endmodule