/*
 * test_ls138:
 * Tests the ls138 module
 */
module test_ls138;

   // signals
   reg clk,rst,din,actline;
   wire clock,dout,d;
   reg [7:0] dtr;
   
   integer    errors, i, j;
   
   // intel8042 under test
   intel8042 kbrd(
		  .KBD_CLK(clk),
		  .KBD_DATA(d),
		  .KBD_RESET_N(rst),
		  .KEYBOARD_CLK_0(clock),
		  .KEYBOARD_DATA_0(dout)
		 );

   // Clock
   always begin
      #5 clk = ~clk;
   end
   
   // Send Line
   assign d = (actline === 1'b1) ? din : 1'b1;
   
   // Receive Module
   always @(negedge dout) begin
      receivedata();
   end

   // Receive Task
   task receivedata;
      begin
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
   
   // Send Task
   task senddata;
      begin
	 input [7:0] dts;
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
      i = 0;
      j = 0;
      errors = 0;
      @(posedge clk);
      // Actually DO THIS!
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<8; i=i+1) begin
	 for(j=0; j<8; j=j+1) begin
	    #1;
	    g = i;
	    d = j;
	    #1;
	    if(ty !== gy) begin
	       $display("NO g:%b d:%b gy:%b ty:%b",g,d,gy,ty);
	       errors = errors + 1;
	    end
	    else begin
	       $display("OK g:%b d:%b gy:%b ty:%b",g,d,gy,ty);
	    end
	 end // for (j=0; j<8; j=j+1)
      end // for (i=0; i<8; i=i+1)
      
      if(errors > 0) begin
	 $display("LS138 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS138 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_ls138

