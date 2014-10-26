/*
 * test_8288:
 * Tests the 8288 module
 */
module test_8288;
   
   // Signals
   integer i,j,errors;
   reg 	   clk,aen_n,cen,iob;
   wire    mrdc_n,mwtc_n,amwc_n,iorc_n,iowc_n,aiowc_n,inta_n;
   wire    dtr,den,mce,ale;	
   reg [2:0] s_n;
   
   // intel8288 under test
   intel8288 i8288(
		   .s_n(s_n),
		   .clk(clk),
	           .aen_n(aen_n),
	           .cen(cen), // output enable
	           .iob(iob), // set equal to 0
	           .mrdc_n(mrdc_n),
	           .mwtc_n(mwtc_n), // not connected
	           .amwc_n(amwc_n),
	           .iorc_n(iorc_n),
	           .iowc_n(iowc_n), // not connected
	           .aiowc_n(aiowc_n),
	           .inta_n(inta_n),
	           .dtr(dtr),
	           .den(den),
	           .mce(mce), // not connected
	           .ale(ale)
		   );
   
   // Clock
   always begin
      #5 clk = ~clk;
   end
   
   // Test Suite
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      clk = 1'b0;
      s_n = 3'b111;
      aen_n = 1'b1;
      cen = 1'b0;
      iob = 1'b0; // stays like this forever
      i = 0;
      j = 0;
      errors = 0;
      @(posedge clk);

      // Run interrupt test
      $display ("******************");
      $display ("Run Interrupt Test");
      $display ("******************");
      @(posedge clk);
      cen = 1'b1;
      aen_n = 1'b0;
      @(posedge clk);
      s_n = 3'b000;
      #1;
      if(ale !== 1'b1) begin
	 $display("ALE NOT 1");
	 errors = errors + 1;
      end
/*      
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
*/
      if(errors > 0) begin
	 $display("8288 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("8288 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_8288
