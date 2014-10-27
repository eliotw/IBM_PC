/*
 * test_8042:
 * Tests the 8042 module
 */
module test_8042;
   integer i,j;
   
   // Matrix Data
   reg [7:0] matrix [0:15][0:15];
   initial begin
      //$readmemh("in.txt",matrix);
   end
   
   // signals
   reg clk,rst,din,actline,flag,flagk;
   wire clock,dout,d,dko;
   reg [7:0] dtr,dtk;
   reg [7:0] dto;
   
   integer    errors;
   
   // intel8042 under test
   intel8042 kbrd(
		  .KBD_CLK(clk),
		  .KBD_DATA(dout),
		  .KBD_RESET_N(rst),
		  .KEYBOARD_CLK_0(clock),
		  .KEYBOARD_DATA_0(d)
		 );

   // Clock
   always begin
      #5 clk = ~clk;
   end
   
   // Send Line
   assign d = (actline == 1'b1) ? din : 1'bz; // was 1'b1
   assign dko = (actline == 1'b1) ? 1'b1 : d;
   
   // Keyboard Receive Module
   always @(dko) begin
      if(dko === 1'b0) begin
	 //$display("keyboard data being received at %d",$time);
	 if(flagk == 1'b0) begin
	    flagk = 1'b1;
	    receivekeyboarddata();
	    flagk = 1'b0;
	 end
      end // if (dout === 1'b0)
   end // always @ (dout)

   // Receive Task for Keyboard
   task receivekeyboarddata;
      begin
	 @(posedge clk);
	 //@(posedge clk);
	 @(posedge clk);
	 dtk[0] = dko;
	 @(posedge clk);
	 dtk[1] = dko;
	 @(posedge clk);
	 dtk[2] = dko;
	 @(posedge clk);
	 dtk[3] = dko;
	 @(posedge clk);
	 dtk[4] = dko;
	 @(posedge clk);
	 dtk[5] = dko;
	 @(posedge clk);
	 dtk[6] = dko;
	 @(posedge clk);
	 dtk[7] = dko;
	 @(posedge clk); // lol parity
	 //$display("keyboard data finished being received at %d",$time);
	 //$display("keyboard message: %b",dtk);
      end
   endtask // receivedata
   
   
   // Receive Module
   always @(dout) begin
      if(dout === 1'b0) begin
	 //$display("data being received at %d",$time);
	 if(flag == 1'b0) begin
	    flag = 1'b1;
	    receivedata();
	    flag = 1'b0;
	 end
      end
   end

   // Receive Task
   task receivedata;
      begin
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 dtr[0] = dout;
	 @(posedge clk);
	 dtr[1] = dout;
	 @(posedge clk);
	 dtr[2] = dout;
	 @(posedge clk);
	 dtr[3] = dout;
	 @(posedge clk);
	 dtr[4] = dout;
	 @(posedge clk);
	 dtr[5] = dout;
	 @(posedge clk);
	 dtr[6] = dout;
	 @(posedge clk);
	 dtr[7] = dout;
      end
   endtask // receivedata

   // Wait Task
   task waitdata;
      begin
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
	 @(posedge clk);
      end
   endtask // waitdata
   
   // Send Task
   task senddata;
      input [7:0] dts;
      begin
	 din = 1'b1;
	 actline = 1'b1;
	 @(posedge clk);
	 din = 1'b0;
	 @(posedge clk);
	 din = dts[0];
	 @(posedge clk);
	 din = dts[1];
	 @(posedge clk);
	 din = dts[2];
	 @(posedge clk);
	 din = dts[3];
	 @(posedge clk);
	 din = dts[4];
	 @(posedge clk);
	 din = dts[5];
	 @(posedge clk);
	 din = dts[6];
	 @(posedge clk);
	 din = dts[7];
	 @(posedge clk);
	 din = 1'b1;
	 @(posedge clk);
	 din = 1'b1;
	 actline = 1'b0;
      end
   endtask // senddata
   
   // Test Suite
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      actline = 1'b0;
      clk = 1'b0;
      rst = 1'b1;
      din = 1'b1;
      flag = 1'b0;
      flagk = 1'b0;
      i = 0;
      j = 0;
      errors = 0;
      @(posedge clk);

      // Reset Test
      $display ("**********");
      $display ("Reset Test");
      $display ("**********");
      @(posedge clk);
      rst = 1'b0;
      @(posedge clk);
      rst = 1'b1;
      waitdata();
      waitdata();
      waitdata();
      if(dtk !== 8'b11110100) begin
	 $display("NOT F4 ENABLE: %b",dtk);
	 errors = errors + 1;
      end
      //$display("keyboard data being sent at %d",$time);
      senddata(8'hfa);
      waitdata();
      waitdata();
      waitdata();
      if(dtk !== 8'b11110000) begin
	 $display("NOT F0 SCAN SET: %b",dtk);
	 errors = errors + 1;
      end
      //$display("keyboard data being sent at %d",$time);
      senddata(8'hfa);
      waitdata();
      waitdata();
      waitdata();
      if(dtk !== 8'b00000001) begin
	 $display("NOT 01 SCAN SET: %b",dtk);
	 errors = errors + 1;
      end
      senddata(8'hfa);
      waitdata();
      waitdata();
      waitdata();
      
      // Run Pressed Test
      $display ("****************");
      $display ("Run Pressed Test");
      $display ("****************");
      for (i=0; i<256; i=i+1) begin
	 if(1 == 1) begin
	    senddata(i);
	    waitdata();
	    waitdata();
	    dto = i;
	    //dto = (matrix[4'b1111 & (i >> 4)][4'b1111 & i]);
	    if(dto !== dtr) begin
	       $display("NO i:%b transi:%b dtr: %b",i,dto,dtr);
	       errors = errors + 1;
	    end
	 end
	 @(posedge clk);
      end // for (i=0; i<8; i=i+1)
      @(posedge clk);

      if(errors > 0) begin
	 $display("8042 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("8042 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_8042

/*
 * top_8042:
 * This module tests the 8042 by hooking it to a keyboard
 * Be sure to check scan codes against reference document
 */

module top_8042(
		USER_CLK,
		GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,
		GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7,
		GPIO_SW_C, GPIO_SW_E, GPIO_SW_W,
		GPIO_LED_C,
      KEYBOARD_CLK,
      KEYBOARD_DATA,
		GPIO_DIP_SW1,GPIO_DIP_SW2,GPIO_DIP_SW3,GPIO_DIP_SW4,
		GPIO_DIP_SW5,GPIO_DIP_SW6,GPIO_DIP_SW7,GPIO_DIP_SW8
		);

	// Inputs and Outputs
   input USER_CLK;
   output GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3;
   output GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7;
   input  GPIO_SW_C, GPIO_SW_E, GPIO_SW_W;
	output GPIO_LED_C;
   inout KEYBOARD_CLK;
   inout  KEYBOARD_DATA;
	input GPIO_DIP_SW1,GPIO_DIP_SW2,GPIO_DIP_SW3,GPIO_DIP_SW4;
	input GPIO_DIP_SW5,GPIO_DIP_SW6,GPIO_DIP_SW7,GPIO_DIP_SW8;
	
	// Parameters
	parameter [7:0] 	counterstop = 8'h0f;
	parameter [7:0] 	idle = 8'b00000001,
							fill = 8'b00000010,
							wt00 = 8'b00000100,
							wt01 = 8'b00001000;
	// Registers
	reg [7:0] state; // state of receipt fsm
	reg [7:0] counter; // counter of data received
	reg [7:0] datarec [0:255]; // place for holding received data
	reg pb7; // acknowledges receipt of data
	reg full; // indicates that queue is full
	reg [7:0] datavisible; // data that is visible to the user

	// Wires
	wire [7:0] dataout; // data coming out of keyboard module
	wire [7:0] countsel; // select for data
	wire reset, reset_n; // reset wire
	wire irq1; // irq wire
	wire clk; // user clock
	wire pb6; // essentially a dummy wire
	wire inc; // increments the output data
	
	// Count select
	assign countsel = {GPIO_DIP_SW1,GPIO_DIP_SW2,GPIO_DIP_SW3,GPIO_DIP_SW4,
		GPIO_DIP_SW5,GPIO_DIP_SW6,GPIO_DIP_SW7,GPIO_DIP_SW8};
		
	// Clock Wire
	assign clk = USER_CLK;
	
	// Reset Wire
	assign reset = GPIO_SW_C;
	assign reset_n = ~reset;
	
	// LED Indicator
	assign GPIO_LED_C = full;
	
	// pb6 Assign
	assign pb6 = GPIO_SW_E;
	
	// inc assign
	assign inc = GPIO_SW_W;
	
	// LED Readout
	assign GPIO_LED_0 = datavisible[7];
	assign GPIO_LED_1 = datavisible[6];
	assign GPIO_LED_2 = datavisible[5];
	assign GPIO_LED_3 = datavisible[4];
	assign GPIO_LED_4 = datavisible[3];
	assign GPIO_LED_5 = datavisible[2];
	assign GPIO_LED_6 = datavisible[1];
	assign GPIO_LED_7 = datavisible[0];
	
	// Initial state
	initial begin
		state<=idle;
		counter<=8'b0;
		pb7<=1'b0;
		full<=1'b0;
		datavisible<=8'b0;
	end
	
	// Key Interface Under Test
	keyinterface keyinter(
		.pclk(clk),
		.reset_n(reset_n),
		.pa(dataout),
		.pb6(pb6),
		.pb7(pb7),
		.irq1(irq1),
		.keyboard_clock(KEYBOARD_CLK),
		.keyboard_data(KEYBOARD_DATA)
	);
	
	// FSM Logic
	always @(posedge clk) begin
		case(state)
			idle: begin
				if(reset == 1'b1) begin
					state<=idle;
					counter<=8'b0;
					pb7<=1'b0;
					full<=1'b0;
					datavisible<=counter;
				end
				else if(counter == counterstop) begin
					state<=fill;
					counter<=8'b0;
					pb7<=1'b0;
					full<=1'b1;
					datavisible<=counter;
				end
				else if(irq1 == 1'b1) begin
					state<=wt01;
					//datarec[counter]<=dataout;
					//counter<=counter+1;
					counter<=counter;
					pb7<=1'b0;
					full<=1'b0;
					datavisible<=counter;
				end
				else begin
					state<=idle;
					counter<=counter;
					pb7<=1'b0;
					full<=1'b0;
					datavisible<=counter;
				end
			end
			fill: begin
				if(reset == 1'b1) begin
					state<=idle;
					counter<=8'b0;
					pb7<=1'b0;
					full<=1'b0;
					datavisible<=8'b0;
				end
				else begin
					state<=fill;
					datavisible<=datarec[countsel];
					counter<=counter;
					pb7<=1'b0;
					full<=1'b1;
				end
			end
			wt00: begin
				if(inc == 1'b0) begin
					state<=fill;
					datavisible<=datavisible;
					counter<=counter;
					pb7<=1'b0;
					full<=1'b1;
				end
				else begin
					state<=wt00;
					datavisible<=datavisible;
					counter<=counter;
					pb7<=1'b0;
					full<=1'b1;
				end
			end
			wt01: begin
				if(reset == 1'b1) begin
					state<=idle;
					counter<=8'b0;
					pb7<=1'b0;
					full<=1'b0;
					datavisible<=counter;
				end
				else if(irq1 == 1'b0) begin
					state<=idle;
					counter<=counter+1;
					pb7<=1'b0;
					full<=1'b0;
					datavisible<=counter;
				end
				else begin
					state<=wt01;
					datarec[counter]<=dataout;
					counter<=counter;
					pb7<=1'b1;
					full<=1'b0;
					datavisible<=counter;
				end
			end
			default: begin
				state<=idle;
				counter<=8'b0;
				pb7<=1'b0;
				full<=1'b0;
				datavisible<=8'b0;
			end
		endcase
	end
	
endmodule // top_8042


