/*
 * test_8255:
 * Updated test bench for intel 8255
 */
module test_8255;

   // Registers for Data
   reg 	     rd_n, wr_n, cs_n, a0, a1, reset, actin;
   reg [7:0] pa, pc, din;
   wire [7:0] pb, d, dout;
   
   integer   i, errors;
   
   // Intel 8255 Under Test
   intel8255 test8255(
		      .rd_n(rd_n),
		      .wr_n(wr_n),
		      .cs_n(cs_n),
		      .a({a1,a0}),
		      .reset(reset),
		      .d(d),
		      .pb(pb),
		      .pc(pc),
		      .pa(pa)
		      );
   
   // Assign line D
   assign d = (actin == 1'b1) ? din : 8'bzzzzzzzz;
   assign dout = d;

   // Run through tests
   initial begin
      // Set Up Initial Conditions
      $display ("***********");
      $display ("Set Up 8255");
      $display ("***********");
      actin = 1'b0;
      reset = 1'b0;
      rd_n = 1'b1;
      wr_n = 1'b1;
      cs_n = 1'b1;
      a0 = 1'b0;
      a1 = 1'b0;
      pa = 8'b10101010;
      pc = 8'b01010101;
      din = 8'b11111111;
      i = 0;
      errors = 0;
      #10;
      reset = 1'b1;
      #10;
      reset = 1'b0;
      #10;
      
      // Start Test of Read from A
      $display ("***********");
      $display ("Test Read A");
      $display ("***********");
      #10;
      a1 = 1'b0;
      a0 = 1'b0;
      rd_n = 1'b0;
      wr_n = 1'b1;
      cs_n = 1'b0;
      #10;
      if(dout !== pa) begin
	 $display("NO d: %b a: %b",dout,pa);
	 errors = errors + 1;
      end
      else begin
	 $display("OK d: %b a: %b",dout,pa);
      end
      #10;
      a1 = 1'b0;
      a0 = 1'b0;
      rd_n = 1'b1;
      wr_n = 1'b1;
      cs_n = 1'b1;

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
      
      // Conclude Test
      #10;
      if(errors > 0) begin
	 $display("8255 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
         $display("8255 TEST SUCCESS");
      end
      $finish();
   end
   
endmodule // test_8253