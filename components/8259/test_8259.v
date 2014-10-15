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
      // Check for inta
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
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
      // Check IRR Read
      if(dout !== 8'b0) begin
	 $display("IRR Not Read %b",dout);
	 errors = errors + 1;
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
      // ISR Read Test
      if(dout !== 8'b10000000) begin
	 $display("ISR Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
      if(inta !== 1'b0) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      // Check for pointer
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      #10;
      // Spen test
      if(spen_n !== 1'b0) begin
	 $display("Spen not 0");
	 errors = errors + 1;
      end
      // Pointer Read Test
      if(dout !== 8'b00001111) begin
	 $display("Pointer Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      // Spen test
      if(spen_n !== 1'b1) begin
	 $display("Spen not 1");
	 errors = errors + 1;
      end
      // Send EOI
      #10;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      din = 8'b00100000;
      a0 = 1'b0;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      
      $display ("***************************");
      $display ("Test Normal Interrupt Again");
      $display ("***************************");
      #10;
      ir = 8'b01000000;
      #10;
      ir = 8'b00000000;
      #10;
      // Check for inta
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
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
      // Check IRR Read
      if(dout !== 8'b0) begin
         $display("IRR Not Read %b",dout);
         errors = errors + 1;
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
      // ISR Read Test
      if(dout !== 8'b01000000) begin
         $display("ISR Not Read %b",dout);
         errors = errors + 1;
      end
      #10;       
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
      if(inta !== 1'b0) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      // Check for pointer
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      #10;
      // Pointer Read Test
      if(dout !== 8'b00001110) begin
	 $display("Pointer Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      // Send EOI
      #10;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      din = 8'b00100000;
      a0 = 1'b0;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;

      $display ("*********************");
      $display ("Test Double Interrupt");
      $display ("*********************");
      #10;
      ir = 8'b00100000;
      #10;
      ir = 8'b00010000;
      #10;
      ir = 8'b00000000;
      #10;
      // Check for inta
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
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
      // Check IRR Read
      if(dout !== 8'b00100000) begin
	 $display("IRR Not Read %b",dout);
	 errors = errors + 1;
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
      // ISR Read Test
      if(dout !== 8'b00010000) begin
	 $display("ISR Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      // Check for pointer
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      #10;
      // Pointer Read Test
      if(dout !== 8'b00001100) begin
	 $display("Pointer Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      // Send EOI
      #10;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      din = 8'b00100000;
      a0 = 1'b0;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      
      // Service the second interrupt
      // Check for inta
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
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
      // Check IRR Read
      if(dout !== 8'b00000000) begin
	 $display("IRR Not Read %b",dout);
	 errors = errors + 1;
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
      // ISR Read Test
      // ISR Read Test
      if(dout !== 8'b00100000) begin
	 $display("ISR Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
      if(inta !== 1'b0) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      // Check for pointer
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      #10;
      // Pointer Read Test
      if(dout !== 8'b00001101) begin
	 $display("Pointer Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      // Send EOI
      #10;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      din = 8'b00100000;
      a0 = 1'b0;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;

      // Start Test of Masking Interrupt
      $display ("**********************");
      $display ("Test Masking Interrupt");
      $display ("**********************");
      #10;
      // Send a mask
      #10;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      din = 8'b00100000;
      a0 = 1'b1;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      a0 = 1'b0;
      #10;
      // Receive the mask
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      a0 = 1'b1;
      #10;
      // Check IMR Read
      if(dout !== 8'b00100000) begin
	 $display("IMR Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      din = 8'b00001011;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      a0 = 1'b0;
      #10;
      // Send some double interrupts
      #10;
      ir = 8'b00100000;
      #10;
      ir = 8'b00010000;
      #10;
      ir = 8'b00000000;
      #10;
      // Check for inta
      if(inta !== 1'b1) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
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
      // Check IRR Read
      if(dout !== 8'b00100000) begin
	 $display("IRR Not Read %b",dout);
	 errors = errors + 1;
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
      // ISR Read Test
      if(dout !== 8'b00010000) begin
	 $display("ISR Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      inta_n = 1'b0;
      #10;
      inta_n = 1'b1;
      // Check for inta
      if(inta !== 1'b0) begin
	 $display("INTERRUPT NOT RECEIVED %b",inta);
	 errors = errors + 1;
      end
      // Check for pointer
      #10;
      wr_n = 1'b1;
      rd_n = 1'b0;
      cs_n = 1'b0;
      actin = 1'b0;
      #10;
      // Pointer Read Test
      if(dout !== 8'b00001100) begin
	 $display("Pointer Not Read %b",dout);
	 errors = errors + 1;
      end
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      // Send EOI
      #10;
      wr_n = 1'b0;
      rd_n = 1'b1;
      cs_n = 1'b0;
      actin = 1'b1;
      din = 8'b00100000;
      a0 = 1'b0;
      #10;
      wr_n = 1'b1;
      rd_n = 1'b1;
      cs_n = 1'b1;
      actin = 1'b0;
      #10;
      
      
      
      
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
