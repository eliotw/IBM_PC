/*
 * test_8259:
 * Updated test bench for intel 8259
 */
module test_8259;

   // Registers for Data
   reg        cs_n, wr_n, rd_n, actin, a0, inta_n;
   reg [7:0]  din, ir;
   wire [7:0] d, dout;
   wire [2:0] cas;
   wire       inta, spen_n;
   integer    i, errors;
   
   // Intel 8259 Under Test
   intel8259 i8259(
		   .cs_n(cs_n),
		   .wr_n(wr_n),
		   .rd_n(rd_n),
		   .d(d),
		   .cas(cas),
		   .a0(a0),
		   .inta_n(inta_n),
		   .ir(ir),
		   .inta(inta), // int
		   .spen_n(spen_n)
		   );
   
   // Assign line D
   assign d = (actin == 1'b1) ? din : 8'bzzzzzzzz;
   assign dout = d;

   // Run through tests
   initial begin
      // Set Up Initial Conditions
      $display ("***********");
      $display ("Set Up 8259");
      $display ("***********");
      actin = 1'b0;
      a0 = 1'b0;
      inta_n = 1'b1;
      rd_n = 1'b1;
      wr_n = 1'b1;
      cs_n = 1'b1;
      ir = 8'b00000000;
      din = 8'b11111111;
      i = 0;
      errors = 0;
      #10;
      
      // Start Test of Normal Interrupt
      $display ("*********************");
      $display ("Test Normal Interrupt");
      $display ("*********************");
      #10;
      ir = 8'b10000000;
      #10;
      ir = 8'b00000000;
      #10;
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      din = 8'b00001010;
      a0 = 1'b0;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      #10;
      if(dout !== 8'b0) begin
	 $display("IRR Not Read %b",dout);
      end
      #10;
      din = 8'b00001011;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      #10;
      if(dout !== 8'b10000000) begin
	 $display("ISR Not Read %b",dout);
      end
      #10;
      
      
/*
      // Start Test of Read from C
      $display ("***********");
      $display ("Test Read C");
      $display ("***********");
      #10;
      a1 = 1'b1;
      a0 = 1'b0;
      rd_n = 1'b0;
      wr_n = 1'b1;
      cs_n = 1'b0;
      #10;
      if(dout !== pc) begin
	 $display("NO d: %b c: %b",dout,pc);
	 errors = errors + 1;
      end
      else begin
	 $display("OK d: %b c: %b",dout,pc);
      end
      #10;
      a1 = 1'b0;
      a0 = 1'b0;
      rd_n = 1'b1;
      wr_n = 1'b1;
      cs_n = 1'b1;

      // Start Test of Send to B
      $display ("***********");
      $display ("Test Send B");
      $display ("***********");
      #10;
      actin = 1'b1;      
      a1 = 1'b0;
      a0 = 1'b1;
      rd_n = 1'b1;
      wr_n = 1'b0;
      cs_n = 1'b0;
      #10;
      if(pb !== din) begin
	 $display("NO d: %b b: %b",din,pb);
	 errors = errors + 1;
      end
      else begin
	 $display("OK d: %b b: %b",din,pb);
      end
      #10;
      actin = 1'b0;
      a1 = 1'b0;
      a0 = 1'b0;
      rd_n = 1'b1;
      wr_n = 1'b1;
      cs_n = 1'b1;
*/    
      // Conclude Test
      #10;
      if(errors > 0) begin
	 $display("8259 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
         $display("8259 TEST SUCCESS");
      end
      $finish();
   end
   
endmodule // test_8259
