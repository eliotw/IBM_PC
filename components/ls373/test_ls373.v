/*
 * test_ls322:
 * Tests the ls322 module by checking its output
 */
module test_ls322;

   // signals
   wire [7:0] q;
   reg [7:0]  qin;
   wire       qh1;
   reg 	      oe_n, d0, d1, clr_n, se_n, clock, ds, sp_n, g_n;
   integer   i, errors;
   
   // ls280 under test
   ls322 billy(
               .q(q),
               .qh1(qh1),
               .oe_n(oe_n),
               .d0(d0),
               .d1(d1),
               .clr_n(clr_n),
               .clock(clock),
               .se_n(se_n),
               .ds(ds),
               .sp_n(sp_n),
               .g_n(g_n)
	       );

   // Set Up Clock
   always begin
      #5 clock = ~clock;
   end

   // Run Bus
   assign q = (oe_n === 1'b1) ? qin : 8'bzzzzzzzz;

   // Bus monitor
   always @(q or qh1) begin
      $display($time," Monitor: %b %b",q,qh1);
   end
   
   // Run Tests
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      qin = 8'b0;
      oe_n = 1'b0;
      d0 = 1'b0;
      d1 = 1'b0;
      clr_n = 1'b1;
      se_n = 1'b1;
      clock = 1'b0;
      ds = 1'b0;
      sp_n = 1'b1;
      g_n = 1'b1;
      i = 0;
      errors = 0;
      #1;
      @(posedge clock);
      
      // Run Clear Test
      $display ("**************");
      $display ("Run Clear Test");
      $display ("**************");
      @(posedge clock);
      clr_n = 1'b0;
      @(posedge clock);
      clr_n = 1'b1;
      @(posedge clock);
      if(q !== 8'b00000000) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);
      
      // Run Load Test
      $display ("*************");
      $display ("Run Load Test");
      $display ("*************");
      @(posedge clock);
      qin = 8'b11111111;
      oe_n = 1'b1;
      g_n = 1'b0;
      sp_n = 1'b0;
      @(posedge clock);
      @(posedge clock);
      oe_n = 1'b0;
      g_n = 1'b1;
      sp_n = 1'b1;
      @(posedge clock);
      if(q !== 8'b11111111) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);

      // Run Hold Test
      $display ("*************");
      $display ("Run Hold Test");
      $display ("*************");
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      if(q !== 8'b11111111) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);
      
      // Run Shift Test with 0
      $display ("****************");
      $display ("Run Shift Test 0");
      $display ("****************");
      @(posedge clock);
      d1 = 1'b1;
      d0 = 1'b0;
      ds = 1'b0;
      g_n = 1'b0;
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      g_n = 1'b1;
      @(posedge clock);
      if(q !== 8'b00000000) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);

      // Run Shift Test with 1
      $display ("****************");
      $display ("Run Shift Test 1");
      $display ("****************");
      @(posedge clock);
      d1 = 1'b1;
      d0 = 1'b0;
      ds = 1'b1;
      g_n = 1'b0;
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      g_n = 1'b1;
      ds = 1'b0;
      @(posedge clock);
      if(q !== 8'b11111111) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);

      // Run Load Test Again
      $display ("*******************");
      $display ("Run Load Test Again");
      $display ("*******************");
      @(posedge clock);
      qin = 8'b10000000;
      oe_n = 1'b1;
      g_n = 1'b0;
      sp_n = 1'b0;
      @(posedge clock);
      @(posedge clock);
      oe_n = 1'b0;
      g_n = 1'b1;
      sp_n = 1'b1;
      @(posedge clock);
            if(q !== 8'b10000000) begin
	       $display("FAILURE: %b %b",q,qh1);
	       errors = errors + 1;
	    end
            else begin
	       $display("SUCCESS: %b %b",q,qh1);
	    end
      @(posedge clock);

      // Run Sign Extend Test with 1
      $display ("**********************");
      $display ("Run Sign Extend Test 1");
      $display ("**********************");
      @(posedge clock);
      se_n = 1'b0;
      g_n = 1'b0;
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      se_n = 1'b1;
      g_n = 1'b1;
      @(posedge clock);
      if(q !== 8'b11111111) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);

      // Run Load Test Again
      $display ("*******************");
      $display ("Run Load Test Again");
      $display ("*******************");
      @(posedge clock);
      qin = 8'b01111111;
      oe_n = 1'b1;
      g_n = 1'b0;
      sp_n = 1'b0;
      @(posedge clock);
      @(posedge clock);
      oe_n = 1'b0;
      g_n = 1'b1;
      sp_n = 1'b1;
      @(posedge clock);
      if(q !== 8'b01111111) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);
      
      // Run Sign Extend Test with 0
      $display ("**********************");
      $display ("Run Sign Extend Test 0");
      $display ("**********************");
      @(posedge clock);
      se_n = 1'b0;
      g_n = 1'b0;
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      @(posedge clock);
      se_n = 1'b1;
      g_n = 1'b1;
      @(posedge clock);
      if(q !== 8'b00000000) begin
	 $display("FAILURE: %b %b",q,qh1);
	 errors = errors + 1;
      end
      else begin
	 $display("SUCCESS: %b %b",q,qh1);
      end
      @(posedge clock);

      // Run Some Tests
      $display ("**********************");
      $display ("Finished Running Tests");
      $display ("**********************");
      if(errors > 0) begin
	 $display("LS322 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS322 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule