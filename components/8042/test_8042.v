/*
 * test_8042:
 * Tests the 8042 module
 */
module test_8042;

   // Matrix Data
   reg [7:0] matrix [0:7] [0:7] = {{8'hff,8'h43,8'h41,8'h3f,8'h3d,8'h3b,8'h3c,8'h58,8'h64,8'h44,8'h42,8'h40,8'h3e,8'h0f,8'h29,8'h59},{8'h65,8'h38,8'h2a,8'h70,8'h1d,8'h10,8'h02,8'h5a,8'h66,8'h71,8'h2c,8'h1f,8'h1e,8'h11,8'h03,8'h5b},{8'h67,8'h2e,8'h2d,8'h20,8'h12,8'h05,8'h04,8'h5c,8'h68,8'h39,8'h2f,8'h21,8'h14,8'h13,8'h06,8'h5d},{8'h69,8'h31,8'h30,8'h23,8'h22,8'h15,8'h07,8'h5e,8'h6a,8'h72,8'h32,8'h24,8'h16,8'h08,8'h09,8'h5f},{8'h6b,8'h33,8'h25,8'h17,8'h18,8'h0b,8'h0a,8'h60,8'h6c,8'h34,8'h35,8'h26,8'h27,8'h19,8'h0c,8'h61},{8'h6d,8'h73,8'h28,8'h74,8'h1a,8'h0d,8'h62,8'h6e,8'h3a,8'h36,8'h1c,8'h1b,8'h75,8'h2b,8'h63,8'h76},{8'h55,8'h56,8'h77,8'h78,8'h79,8'h7a,8'h0e,8'h7b,8'h7c,8'h4f,8'h7d,8'h4b,8'h47,8'h7e,8'h7f,8'h6f},{8'h52,8'h53,8'h50,8'h4c,8'h4d,8'h48,8'h01,8'h45,8'h57,8'h4e,8'h51,8'h4a,8'h37,8'h49,8'h46,8'h54},{8'h80,8'h81,8'h82,8'h41,8'h54,8'h85,8'h86,8'h87,8'h88,8'h89,8'h8a,8'h8b,8'h8c,8'h8d,8'h8e,8'h8f},{8'h90,8'h91,8'h92,8'h93,8'h94,8'h95,8'h96,8'h97,8'h98,8'h99,8'h9a,8'h9b,8'h9c,8'h9d,8'h9e,8'h9f},{8'ha0,8'ha1,8'ha2,8'ha3,8'ha4,8'ha5,8'ha6,8'ha7,8'ha8,8'ha9,8'haa,8'hab,8'hac,8'had,8'hae,8'haf},{8'hb0,8'hb1,8'hb2,8'hb3,8'hb4,8'hb5,8'hb6,8'hb7,8'hb8,8'hb9,8'hba,8'hbb,8'hbc,8'hbd,8'hbe,8'hbf},{8'hc0,8'hc1,8'hc2,8'hc3,8'hc4,8'hc5,8'hc6,8'hc7,8'hc8,8'hc9,8'hca,8'hcb,8'hcc,8'hcd,8'hce,8'hcf},{8'hd0,8'hd1,8'hd2,8'hd3,8'hd4,8'hd5,8'hd6,8'hd7,8'hd8,8'hd9,8'hda,8'hdb,8'hdc,8'hdd,8'hde,8'hdf},{8'he0,8'he1,8'he2,8'he3,8'he4,8'he5,8'he6,8'he7,8'he8,8'he9,8'hea,8'heb,8'hec,8'hed,8'hee,8'hef},{8'hf0,8'hf1,8'hf2,8'hf3,8'hf4,8'hf5,8'hf6,8'hf7,8'hf8,8'hf9,8'hfa,8'hfb,8'hfc,8'hfd,8'hfe,8'hff}};
   
   // signals
   reg clk,rst,din,actline,flag;
   wire clock,dout,d;
   reg [7:0] dtr,dto;
   
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
      if(flag == 1'b0) begin
	 flag = 1'b1;
	 receivedata();
	 flag = 1'b0;
      end
   end

   // Translate Task
   task translate;
      begin
	 input [7:0] indata;
	 output [7:0] outdata;
	 outdata = matrix[indata[7:4]][indata[3:0]];
      end
   endtask // translate
   
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
      flag = 1'b0;
      i = 0;
      j = 0;
      errors = 0;
      @(posedge clk);
      // Actually DO THIS!
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<256; i=i+1) begin
	 senddata(i);
	 if(ty !== gy) begin
	    $display("NO g:%b d:%b gy:%b ty:%b",g,d,gy,ty);
	    errors = errors + 1;
	 end
	 else begin
	    $display("OK g:%b d:%b gy:%b ty:%b",g,d,gy,ty);
	 end
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

