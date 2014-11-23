/*
 * test_ls670:
 * Tests the ls670 module by checking its output
 */
module test_ls670;

   // signals
   reg [3:0] d;
   wire [3:0] q;
   reg [1:0]  r, w;
   wire       ra, rb, wa, wb;
   reg 	      read, write;
   integer   i, errors;
   
   // ls670 under test
   ls670 billy(
               .d(d),
	       .q(q),
	       .ra(ra),
	       .rb(rb),
	       .read(read),
	       .wa(wa),
	       .wb(wb),
	       .write(write)
	       );

   // Set Up Signals
   assign rb = r[1];
   assign ra = r[0];
   assign wb = w[1];
   assign wa = w[0];

   // Bus monitor
   always @(q) begin
      $display($time," Monitor: %b",q);
   end
   
   // Run Tests
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      r = 2'b00;
      w = 2'b00;
      d = 4'b0000;
      read = 1'b0;
      write = 1'b0;
      i = 0;
      errors = 0;
      #1;
      
      // Run Z Test
      $display ("**********");
      $display ("Run Z Test");
      $display ("**********");
      #1;
      if(q !== 4'bzzzz) begin
	 $display("FAILURE: %b",q);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",q);
      end
      #1;
      
      // Run Load Test
      $display ("**************");
      $display ("Run Write Test");
      $display ("**************");
      #1;
      w = 2'b00;
      d = 4'b1110;
      write = 1'b1;
      #1;
      write = 1'b0;
      #1;
      w = 2'b01;
      d = 4'b1101;
      write = 1'b1;
      #1;
      write = 1'b0;
      #1;
      w = 2'b10;
      d = 4'b1011;
      write = 1'b1;
      #1;
      write = 1'b0;
      #1;
      w = 2'b11;
      d = 4'b0111;
      write = 1'b1;
      #1;
      write = 1'b0;
      #1;
      r = 2'b00;
      read = 1'b1;
      #1;
      if(q !== 4'b1110) begin
	 $display("FAILURE: %b",q);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",q);
      end
      #1;
      r = 2'b01;
      #1;
      if(q !== 4'b1101) begin
	 $display("FAILURE: %b",q);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",q);
      end
      #1;
      r = 2'b10;
      #1;
      if(q !== 4'b1011) begin
	 $display("FAILURE: %b",q);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",q);
      end
      #1;
      r = 2'b11;
      #1;
      if(q !== 4'b0111) begin
	 $display("FAILURE: %b",q);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b",q);
      end
      #1;
      read = 1'b0;
      #1;

      // Finish Tests
      $display ("**********************");
      $display ("Finished Running Tests");
      $display ("**********************");
      if(errors > 0) begin
	 $display("LS670 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS670 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_ls670
