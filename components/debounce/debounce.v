/*
 * debounce:
 * Debounce a reset signal
 */
module debounce(
		input clk, // clock signal
		input rst, // reset signal from button
		output reg drst // debounced reset signal
		);

   // Parameters
   parameter [1:0] s0 = 2'b00, 
		s1 = 2'b01,
		s2 = 2'b10,
		s3 = 2'b11;
   
   // Registers
   reg [1:0] 		   state, nextstate;
   
   // Initial conditions
   initial begin
      state = s0;
      nextstate = s0;
   end

   // Next state logic
   always @(state or rst) begin
      case(state)
	s0: begin
	   if(rst == 1'b1) begin
	      nextstate = s1;
	   end
	   else begin
	      nextstate = s0;
	   end
	   drst = 1'b0;
	end
	s1: begin
	   if(rst == 1'b1) begin
	      nextstate = s1;
	   end
	   else begin
	      nextstate = s2;
	   end
	   drst = 1'b0;
	end
	s2: begin
	   nextstate = s3;
	   drst = 1'b1;
	end
	s3: begin
	   nextstate = s0;
	   drst = 1'b1;
	end
	default: begin
	   nextstate = s0;
	   drst = 1'b0;
	end
      endcase // case (state)
   end // always @ (state or rst)

   always @(posedge clk) begin
      state <= nextstate;
   end
   
endmodule // debounce

   