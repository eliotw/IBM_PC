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
   reg clk,rst,din,actline,flag;
   wire clock,dout,d;
   reg [7:0] dtr;
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
   assign d = (actline === 1'b1) ? din : 1'b1;
   
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

   // Translate Task
	/*
   function translate;
      //input [7:0] indata;
      input indata;
      integer indata;
      
      reg [3:0]   r, c;
      
      //output [7:0] outdata;
      begin
	 r = 4'b1111 & (indata >> 4);
	 c = 4'b1111 & indata;
	 //$display("r %b c %b mat %b",r,c,matrix[r][c]);
	 translate <= matrix[r][c];
      end
   endfunction // translate
   */
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
      rst = 1'b0;
      din = 1'b1;
      flag = 1'b0;
      i = 0;
      j = 0;
      errors = 0;
      @(posedge clk);
      
      // Run Pressed Test
      $display ("****************");
      $display ("Run Pressed Test");
      $display ("****************");
      for (i=0; i<256; i=i+1) begin
	 if(i !== 240) begin
	    senddata(i);
	    waitdata();
	    waitdata();
	    dto = (matrix[4'b1111 & (i >> 4)][4'b1111 & i]);
	    if(dto !== dtr) begin
	       $display("NO i:%b transi:%b dtr: %b",i,dto,dtr);
	       errors = errors + 1;
	    end
	 end
	 @(posedge clk);
      end // for (i=0; i<8; i=i+1)
      @(posedge clk);

      // Run Released Test
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
                KEYBOARD_CLK,
                KEYBOARD_DATA
		);

   input USER_CLK;
   output GPIO_LED_0,GPIO_LED_1,GPIO_LED_2,GPIO_LED_3;
   output GPIO_LED_4,GPIO_LED_5,GPIO_LED_6,GPIO_LED_7;
   output KEYBOARD_CLK;
   inout  KEYBOARD_DATA;
   
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
                  .KBD_RESET_N(1'b0),
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
   
endmodule // top_8042


