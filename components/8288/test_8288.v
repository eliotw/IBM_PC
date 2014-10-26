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
   wire [10:0] outvector;
   
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
   // Assign output vector
   assign outvector = {
		       mrdc_n,
		       mwtc_n, // 1
		       amwc_n,
		       iorc_n,
		       iowc_n, // 1
		       aiowc_n,
		       inta_n,
		       dtr,
		       den,
		       mce, // 1
		       ale
		       };
   // Normal form: 1111111_1010
   // Vector form: x1xx1xx_xx1x
   
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
      // S0
      @(posedge clk);
      cen = 1'b1;
      aen_n = 1'b0;
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      s_n = 3'b000;
      #1;
      if(outvector !== 11'b1111111_1011) begin
	 $display("ERR1: %b",outvector);
	 errors = errors + 1;
      end
      
      // S1
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111110_0010) begin
	 $display("ERR2: %b",outvector);
	 errors = errors + 1;
      end
      
      // S2
      @(posedge clk);
      s_n = 3'b111;
      #1;
      if(outvector !== 11'b1111110_0110) begin
	 $display("ERR3: %b",outvector);
	 errors = errors + 1;
      end

      // S3
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_0010) begin
	 $display("ERR: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end

      // Run read io test
      $display ("*****************");
      $display ("Run Read I/O Test");
      $display ("*****************");
      // S0
      @(posedge clk);
      cen = 1'b1;
      aen_n = 1'b0;
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      s_n = 3'b001;
      #1;
      if(outvector !== 11'b1111111_1011) begin
	 $display("ERR1: %b",outvector);
	 errors = errors + 1;
      end
      
      // S1
      @(posedge clk);
      #1;
      if(outvector !== 11'b1110111_0010) begin
	 $display("ERR2: %b",outvector);
	 errors = errors + 1;
      end
      
      // S2
      @(posedge clk);
      s_n = 3'b111;
      #1;
      if(outvector !== 11'b1110111_0110) begin
	 $display("ERR3: %b",outvector);
	 errors = errors + 1;
      end

      // S3
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_0010) begin
	 $display("ERR: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end      

      // Run write io test
      $display ("******************");
      $display ("Run Write I/O Test");
      $display ("******************");
      // S0
      @(posedge clk);
      cen = 1'b1;
      aen_n = 1'b0;
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end
      
      // S0
      @(posedge clk);
      s_n = 3'b010;
      #1;
      if(outvector !== 11'b1111111_1011) begin
	 $display("ERR1: %b",outvector);
	 errors = errors + 1;
      end

      // S1
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111101_1110) begin
	 $display("ERR2: %b",outvector);
	 errors = errors + 1;
      end

      // S2
      @(posedge clk);
      s_n = 3'b111;
      #1;
      if(outvector !== 11'b1111101_1110) begin
	 $display("ERR3: %b",outvector);
	 errors = errors + 1;
      end

      // S3
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1110) begin
	 $display("ERR: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end

      // Run halt test
      $display ("*************");
      $display ("Run Halt Test");
      $display ("*************");

      // S0
      @(posedge clk);
      cen = 1'b1;
      aen_n = 1'b0;
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      s_n = 3'b011;
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR1: %b",outvector);
	 errors = errors + 1;
      end

      // S1
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR2: %b",outvector);
	 errors = errors + 1;
      end

      // S2
      @(posedge clk);
      s_n = 3'b111;
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR3: %b",outvector);
	 errors = errors + 1;
      end

      // S3
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end

      // Run code access test
      $display ("********************");
      $display ("Run Code Access Test");
      $display ("********************");
      // S0
      @(posedge clk);
      cen = 1'b1;
      aen_n = 1'b0;
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      s_n = 3'b100;
      #1;
      if(outvector !== 11'b1111111_1011) begin
	 $display("ERR1: %b",outvector);
	 errors = errors + 1;
      end

      // S1
      @(posedge clk);
      #1;
      if(outvector !== 11'b0111111_0010) begin
	 $display("ERR2: %b",outvector);
	 errors = errors + 1;
      end

      // S2
      @(posedge clk);
      s_n = 3'b111;
      #1;
      if(outvector !== 11'b0111111_0110) begin
	 $display("ERR3: %b",outvector);
	 errors = errors + 1;
      end

      // S3
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_0010) begin
	 $display("ERR: %b",outvector);
	 errors = errors + 1;
      end

      // S0
      @(posedge clk);
      #1;
      if(outvector !== 11'b1111111_1010) begin
	 $display("ERR0: %b",outvector);
	 errors = errors + 1;
      end
      
      // Complete Tests
      if(errors > 0) begin
	 $display("8288 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("8288 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_8288
