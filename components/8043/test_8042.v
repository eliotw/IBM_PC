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

      // Run Released Test
      /*
      $display ("*****************");
      $display ("Run Released Test");
      $display ("*****************");
      for (i=0; i<256; i=i+1) begin
	 if(i !== 240) begin
	    senddata(240);
	    waitdata();
	    waitdata();
	    senddata(i);
	    waitdata();
	    waitdata();
	    dto = (matrix[4'b1111 & (i >> 4)][4'b1111 & i])|(8'b10000000);
	    if(dto !== dtr) begin
	       $display("NO i:%b transi:%b dtr: %b",i,dto,dtr);
	       errors = errors + 1;
	    end
	    else begin
	       //$display("OK i:%b transi:%b dtr: %b",i,dto,dtr);
	    end
	 end // if (i !== 240)
	 @(posedge clk);
      end // for (i=0; i<8; i=i+1)
      */
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
      KEYBOARD_DATA
		);

	// Inputs and Outputs
   input USER_CLK;
   output GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3;
   output GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7;
   input  GPIO_SW_C, GPIO_SW_E, GPIO_SW_W;
	output GPIO_LED_C;
   inout KEYBOARD_CLK;
   inout  KEYBOARD_DATA;
	
	// Reset Wire
	wire reset_n;
	assign reset_n = ~GPIO_SW_C;
	
	// Key Interface Under Test
	keyinterface kitty(
		.pclk(USER_CLK),
		.reset_n(reset_n),
		.pa({GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7}),
		.pb6(GPIO_SW_E),
		.pb7(GPIO_SW_W),
		.irq1(GPIO_LED_C),
		.keyboard_clock(KEYBOARD_CLK),
		.keyboard_data(KEYBOARD_DATA)
	);

	/*
	
	wire newdata;
	keyin k77(
		.clk(KEYBOARD_CLK),
		.data(KEYBOARD_DATA),
		.dataout({GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3,GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7}),
		.newdata(newdata)
		);
	*/
	/*
	wire clk;
	wire data;
	
	reg [7:0] data_curr;
	reg [7:0] data_pre;
	reg [7:0] led;
	reg [3:0] b;
	reg flag;
	
	assign clk = KEYBOARD_CLK;
	assign data = KEYBOARD_DATA;
	
	assign GPIO_LED_0 = data_curr[0];
	assign GPIO_LED_1 = data_curr[1];
	assign GPIO_LED_2 = data_curr[2];
	assign GPIO_LED_3 = data_curr[3];
   assign GPIO_LED_4 = data_curr[4];
	assign GPIO_LED_5 = data_curr[5];
	assign GPIO_LED_6 = data_curr[6];
	assign GPIO_LED_7 = data_curr[7];
	
	initial begin
		b<=4'h1;
		flag<=1'b0;
		data_curr<=8'hf0;
		data_pre<=8'hf0;
		led<=8'hf0;
	end
	always @(negedge clk) begin
		//Activating at negative edge of clock from keyboard
		case(b)
			1:;
			//first bit
			2:data_curr[0]<=data;
			3:data_curr[1]<=data;
			4:data_curr[2]<=data;
			5:data_curr[3]<=data;
			6:data_curr[4]<=data;
			7:data_curr[5]<=data;
			8:data_curr[6]<=data;
			9:data_curr[7]<=data;
			10:flag<=1'b1;
			//Parity bit
			11:flag<=1'b0;
			//Ending bit
		endcase
		if(b<=10)
			b<=b+1;
		else if(b==11)
			b<=1;
	end
	
	always @(posedge flag) begin
		// Printing data obtained to led
		if(data_curr==8'hf0)
			led<=data_pre;
		else
			data_pre<=data_curr;
	end

*/
   /*
   // Wires
   wire   dout,clk;

   // Registers
   reg [7:0] d,state,nextstate;
   
   // Clock assign
   assign clk = USER_CLK;

   // Output assign
   assign GPIO_LED_0 = d[0];
   assign GPIO_LED_1 = d[1];
   assign GPIO_LED_2 = d[2];
   assign GPIO_LED_3 = d[3];
   assign GPIO_LED_4 = d[4];
   assign GPIO_LED_5 = d[5];
   assign GPIO_LED_6 = d[6];
   assign GPIO_LED_7 = d[7];
   
   // intel8042 under test
   intel8042 kbrd(
                  .KBD_CLK(clk),
                  .KBD_DATA(dout),
                  .KBD_RESET_N(GPIO_SW_C),
                  .KEYBOARD_CLK_0(KEYBOARD_CLK),
                  .KEYBOARD_DATA_0(KEYBOARD_DATA)
                  );

   // FSM for input
   always @(posedge clk) begin
      state <= nextstate;
   end

   // Next state logic
   always @(state or dout) begin
      case(state)
	8'h00: begin
	   if(dout == 1'b0) begin
	      nextstate = 8'h10;
	      d = 8'h0;
	   end
	   else begin
	      nextstate = 8'h00;
	      d = d;
	   end
	end
	8'h10: begin
	   // maybe needs another state? idk lol
	   nextstate = 8'h20;
	   d = d;
	end
	8'h20: begin
	   nextstate = 8'h21;
	   d[7:1] = 7'h0;
	   d[0] = dout;
	end
	8'h21: begin
	   nextstate = 8'h22;
	   d[7:2] = 6'h0;
	   d[1] = dout;
	   d[0] = d[0];
	end
	8'h22: begin
	   nextstate = 8'h23;
	   d[7:3] = 5'h0;
	   d[2] = dout;
	   d[1:0] = d[1:0];
	end
	8'h23: begin
	   nextstate = 8'h24;
	   d[7:4] = 4'h0;
	   d[3] = dout;
	   d[2:0] = d[2:0];
	end
	8'h24: begin
	   nextstate = 8'h25;
	   d[7:5] = 3'h0;
	   d[4] = dout;
	   d[3:0] = d[3:0];
	end
	8'h25: begin
	   nextstate = 8'h26;
	   d[7:6] = 2'h0;
	   d[5] = dout;
	   d[4:0] = d[4:0];
	end
	8'h26: begin
	   nextstate = 8'h27;
	   d[7] = 1'h0;
	   d[6] = dout;
	   d[5:0] = d[5:0];
	end
	8'h27: begin
	   nextstate = 8'h28;
	   d[7] = dout;
	   d[6:0] = d[6:0];
	end
	8'h28: begin
	   nextstate = 8'h00;
	   d = d;
	end
	default: begin
	   nextstate = 8'h00;
	   d = 8'h0;
	end
      endcase // case (state)
   end // always @ (state or dout)
   */
endmodule // top_8042


