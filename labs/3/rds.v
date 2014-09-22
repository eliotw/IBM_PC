/*
 * rds:
 * A module to hold our audio data
 */
module rds(
	   a,d,e,c
	   );

   // inputs and outputs
   input [17:0] a;
   output [7:0] d,e;
   input 	c;

   // output register
   reg [7:0] 	d,e;

   // Parameters
   parameter ALRIGHT = 76194;
   parameter COOL = 90384;
 
   // memories
   reg [7:0] 	malright [ALRIGHT:0];
   reg [7:0] 	mcool [COOL:0];
 
   // Preload Memory
   initial begin
      $readmemh("alright.hex", malright, 0, (ALRIGHT-1));
      $readmemh("cool.hex", mcool, 0, (COOL-1));
      malright[ALRIGHT] = 8'b0;
      mcool[COOL] = 8'b0;
   end
   
   always @(a or c) begin
      if(c === 1'b1) begin
	 d = mcool[a];
	 e = mcool[a+1];
      end
      else begin
	 d = malright[a];
	 e = malright[a+1];
      end
   end // always @ (a)

endmodule // rds

/*
 * ctrl:
 * A file to control the transmission of data
 */
module ctrl(
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
   reg 		s1v,s2v,s3v,s4v,s5v,s6v,s7v,s8v,s9v; // valid bits
   reg 		s10v,s11v,s12v; // More valid bits
   reg [19:0] 	s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12; // slot bits
   reg 		counta, countc; // Signals for when count reaches end
   
   // Parameters
   parameter ALRIGHT = 76194;
   parameter COOL = 90384;
   
   // FSM State List
   `define idle 3'b000
   `define rsta 3'b001
   `define mvla 3'b010
   `define snda 3'b011
   `define rstb 3'b100
   `define mvlb 3'b101
   `define sndb 3'b110
   `define drdr 3'b111

   // Hard assign some valid and slot bits
   assign s5v = 1'b0; assign s5 = 20'b0;
   assign s6v = 1'b0; assign s6 = 20'b0;
   assign s7v = 1'b0; assign s7 = 20'b0;
   assign s8v = 1'b0; assign s8 = 20'b0;
   assign s9v = 1'b0; assign s9 = 20'b0;
   assign s10v = 1'b0; assign s10 = 20'b0;
   assign s11v = 1'b0; assign s11 = 20'b0;
   assign s12v = 1'b0; assign s12 = 20'b0;

   // Assign PCM data
   assign s3 = s3v ? memdata : 20'b0;
   assign s4 = s4v ? memdata : 20'b0;

   // Assign counter goals
   assign counta = (addrreg === (ALRIGHT-2));
   assign countc = (addrreg === (COOL-2));
   
   // Assign cool button to west
   assign cbutton = GPIO_SW_W;

   // Assign alright button to east
   assign abutton = GPIO_SW_E;
   
   // Assign reset to 0
   assign FLASH_AUDIO_RESET_B = 1'b0;

   // Song Memory Module
   rds rds0(
	    .a(addrreg),
	    .d(memdata[7:0]),
	    .e(memdata[15:8]),
	    .c(csel)
	    );
   
endmodule // ctrl
