`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:22 09/24/2014 
// Design Name: 
// Module Name:    lab3top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

/*
 * rds:
 * A module to hold our audio data
 */
module rds(a,d,e,c,clk);

   // inputs and outputs
   input [17:0] a;
   output [7:0] d,e;
   input 	c,clk;

   // output register
   reg [7:0] 	d,e;

   // Parameters
   parameter ALRIGHT = 76194;
   parameter COOL = 90384;
 
   // memories
   wire [15:0] 	malright;
   wire [15:0] 	mcool;
 
   // Preload Memory
	alright billy_bob (
	.clka(clk), // input clka
	.wea(1'b0), // input [0 : 0] wea
	.addra(a), // input [15 : 0] addra
	.dina(16'b0), // input [15 : 0] dina
	.douta(malright) // output [15 : 0] douta
	);

	cool billy (
	.clka(clk), // input clka
	.wea(1'b0), // input [0 : 0] wea
	.addra(a), // input [15 : 0] addra
	.dina(16'b0), // input [15 : 0] dina
	.douta(mcool) // output [15 : 0] douta
	);

   always @(a or c) begin
      if(c === 1'b1) begin
			d = mcool[7:0];
			e = mcool[15:8];
      end
      else begin
			d = malright[7:0];
			e = malright[15:8];
      end
   end // always @ (a)

endmodule // rds

/*
 * lab3top:
 * A file to control the transmission of data
 */
module lab3top(
	    AUDIO_BIT_CLK,
	    AUDIO_SDATA_IN,
	    AUDIO_SDATA_OUT,
	    AUDIO_SYNC,
	    FLASH_AUDIO_RESET_B,
	    GPIO_SW_W,
	    GPIO_SW_E 
	    );

   input GPIO_SW_W, GPIO_SW_E; // For song selection
   input AUDIO_BIT_CLK; // Clock for AC97 module
   input AUDIO_SDATA_IN; // AC97 data that we will ignore
   output AUDIO_SDATA_OUT; // Data we are sending to AC97 module
   output AUDIO_SYNC; // Sync signal that we send to AC97 module
   output FLASH_AUDIO_RESET_B; // Don't use this

   // Wires and Registers
   reg [17:0]  addrreg; // Address of song data
   wire [15:0] memdata; // Data from memory
   reg 	       csel; // Select cool or alright
   wire        cbutton, abutton; // Button inputs
   reg [2:0]   state; // FSM current state
   reg [2:0]   nextstate; // FSM next state
   wire [0:255] outarray; // Array of bits to be sent
   reg 		s1v,s2v,s3v,s4v; // More valid bits
   reg [19:0] 	s1,s2,s3,s4; // slot bits
   reg 		counta, countc; // Signals for when count reaches end
	reg		increg; // Increment the addrreg
	wire 		strobe; // strobe
	reg 		flag; // flag bit
   
   // Parameters
   parameter ALRIGHT = 76194;
   parameter COOL = 90384;
   
   // FSM State List
   `define idle 3'b000
   `define rsta 3'b001
   `define mvla 3'b010
   `define snda 3'b011
   `define rstc 3'b100
   `define mvlc 3'b101
   `define sndc 3'b110
   `define drdr 3'b111

   // Hard assign some valid and slot bits
	assign outarray = {1'b1,s1v,s2v,s3v,s4v,8'b0,3'b000,
		s1,s2,s3,s4,160'h0};

   // Assign PCM data
	always @(s3v or s4v or memdata) begin
		s3 = s3v ? {memdata,4'b0} : 20'b0;
		s4 = s4v ? {memdata,4'b0} : 20'b0;
	end

   // Assign counter goals
	always @(addrreg) begin
		counta = (addrreg === (ALRIGHT-2));
		countc = (addrreg === (COOL-2));
	end
   
   // Assign cool button to west
   assign cbutton = GPIO_SW_W;

   // Assign alright button to east
   assign abutton = GPIO_SW_E;
   
   // Assign reset to 0
   //assign FLASH_AUDIO_RESET_B = 1'b0;

   // Song Memory Module
   rds rds0(
	    .a(addrreg),
	    .d(memdata[7:0]),
	    .e(memdata[15:8]),
	    .c(csel),
		 .clk(AUDIO_BIT_CLK)
	    );
	
	ACLink billy(
		.ac97_bitclk(AUDIO_BIT_CLK),
		.ac97_sdata_in(AUDIO_SDATA_IN),
		.ac97_sdata_out(AUDIO_SDATA_OUT),
		.ac97_sync(AUDIO_SYNC),
		.ac97_reset_b(FLASH_AUDIO_RESET_B),
		.ac97_strobe(strobe),
		.data(outarray)
	);
	
	// Song FSM
	always @(state or abutton or cbutton or counta or countc or strobe) begin
		s1v = 1'b1;
		s2v = 1'b1;
		s3v = 1'b0;
		s4v = 1'b0;
		s1 = 20'b0;
		s2 = 20'b0;
		addrreg = 18'b0;
		increg = 1'b0;
		csel = 1'b0;
		flag = 1'b0;
		case(state)
			`idle: begin
				s1v = 1'b0;
				s2v = 1'b0;
				if(abutton === 1'b1) begin
					nextstate <= `rsta;
				end
				else if(cbutton === 1'b1) begin
					nextstate <= `rstc;
				end
				else begin
					nextstate <= `idle;
				end
			end	
			`rsta: begin
				s1 = {1'b0 /* write */, 7'h00 /* reset */, 12'b0 /* reserved */};
				s2 = {16'h0, 4'h0};
				if((strobe === 1'b1) && (flag === 1'b1)) begin
					nextstate <= `mvla;
					flag = 1'b0;
				end
				else if ((strobe === 1'b1) && (flag === 1'b0)) begin
					nextstate <= `rsta;
					flag = 1'b1;
				end
				else begin
					nextstate <= `rsta;
				end
			end
			`mvla: begin
				s1 = {1'b0 /* write */, 7'h02 /* master volume */, 12'b0 /* reserved */};
				s2 = {16'h0 /* unmuted, full volume */, 4'h0};
				if((strobe === 1'b1) && (flag === 1'b1)) begin
					nextstate <= `snda;
					flag = 1'b0;
				end
				else if ((strobe === 1'b1) && (flag === 1'b0)) begin
					nextstate <= `mvla;
					flag = 1'b1;
				end
				else begin
					nextstate <= `mvla;
				end
			end
			`snda: begin
				s1 = {1'b0 /* write */, 7'h18 /* pcm volume */, 12'b0 /* reserved */};
				s2 = {16'h0808 /* unmuted, 0dB */, 4'h0};
				s3v = 1'b1;
				s4v = 1'b1;
				csel = 1'b0;
				if((strobe === 1'b1) && (counta === 1'b1)) begin
					nextstate <= `idle;
				end
				else if ((strobe === 1'b1) && (counta === 1'b0)) begin
					nextstate <= `snda;
					increg = 1'b1;
				end
				else begin
					nextstate <= `snda;
				end
			end
			`rstc: begin
				s1 = {1'b0 /* write */, 7'h00 /* reset */, 12'b0 /* reserved */};
				s2 = {16'h0, 4'h0};
				if((strobe === 1'b1) && (flag === 1'b1)) begin
					nextstate <= `mvlc;
					flag = 1'b0;
				end
				else if ((strobe === 1'b1) && (flag === 1'b0)) begin
					nextstate <= `rstc;
					flag = 1'b1;
				end
				else begin
					nextstate <= `rstc;
				end
			end
			`mvlc: begin
				s1 = {1'b0 /* write */, 7'h02 /* master volume */, 12'b0 /* reserved */};
				s2 = {16'h0 /* unmuted, full volume */, 4'h0};
				if((strobe === 1'b1) && (flag === 1'b1)) begin
					nextstate <= `sndc;
					flag = 1'b0;
				end
				else if ((strobe === 1'b1) && (flag === 1'b0)) begin
					nextstate <= `mvlc;
					flag = 1'b1;
				end
				else begin
					nextstate <= `mvlc;
				end
			end
			`sndc: begin
				s1 = {1'b0 /* write */, 7'h18 /* pcm volume */, 12'b0 /* reserved */};
				s2 = {16'h0808 /* unmuted, 0dB */, 4'h0};
				s3v = 1'b1;
				s4v = 1'b1;
				csel = 1'b1;
				if((strobe === 1'b1) && (counta === 1'b1)) begin
					nextstate <= `idle;
				end
				else if ((strobe === 1'b1) && (counta === 1'b0)) begin
					nextstate <= `sndc;
					increg = 1'b1;
				end
				else begin
					nextstate <= `sndc;
				end
			end
			`drdr: nextstate <= `idle;
			default: nextstate <= `idle;
		endcase
	end
	
	always @(posedge AUDIO_BIT_CLK) begin
		state <= nextstate;
		if(increg === 1'b1) begin
			addrreg <= addrreg + 2;
		end
	end
	
endmodule // ctrl

module ACLink(
	input ac97_bitclk,
	input ac97_sdata_in,
	output wire ac97_sdata_out,
	output wire ac97_sync,
	output wire ac97_reset_b,
	output wire ac97_strobe,
	input [255:0] data
	);
	
	assign ac97_reset_b = 1;
	// We may want to make this into a state machine eventually.
	reg [7:0] curbit = 8'h0;	// Contains the bit currently on the bus.
	reg [255:0] inbits = 256'h0;
	reg [255:0] latched_inbits;
	/* Spec sez: rising edge should be in the middle of the final bit of
	* the last slot, and the falling edge should be in the middle of
	* the final bit of the TAG slot.
	*/
	assign ac97_sync = (curbit == 255) || (curbit < 15);
	/* The outside world is permitted to read our latched data on the
	* rising edge after bit 0 is transmitted. Bit FF will have been
	* latched on its falling edge, which means that on the rising edge
	* that still contains bit FF, the "us to outside world" flipflops
	* will have been triggered. Given that, by the rising edge that
	* contains bit 0, those flip-flops will have data. So, the outside
	* world strobe will be high on the rising edge that contains bit 0.
	*
	* Additionally, this strobe controls when the outside world will
	* strobe new data into us. The rising edge will latch new data
	* into our inputs. This data, in theory, will show up in time for
	* the falling edge of the bit clock for big 01.
	*
	* NOTE: We need UCF timing constraints with setup times to make
	* sure this happens!
	*/	
	assign ac97_strobe = (curbit == 8'h00);
	/* The internal strobe for the output flip-flops needs to happen on
	* the rising edge that still contains bit FF.
	*/
	always @(posedge ac97_bitclk) begin
		if (curbit == 8'hFF) begin
		latched_inbits <= inbits;
		end
		curbit <= curbit + 1;
	end
	
	always @(negedge ac97_bitclk)
		inbits[curbit] <= ac97_sdata_in;
		
	/* Bit order is reversed; msb of tag sent first. */
	wire [0:255] outbits = data;
	
	/* Spec sez: should transition shortly after the rising edge. In
	* the end, we probably want to flop this to guarantee that (or set
	* up UCF constraints as mentioned above).
	*/
	assign ac97_sdata_out = outbits[curbit];
	
endmodule