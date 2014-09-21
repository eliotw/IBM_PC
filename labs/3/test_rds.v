/*
 * test_rds:
 * Tests the rds module by checking that it loads the bios correctly
 */
module test_rds;

   // signals
   reg [17:0] a;
   wire [7:0] d;
   reg        c;
   integer   i, errors;

   // Parameters
   parameter ALRIGHT = 76194;
   parameter COOL = 90384;

   // memories
   reg [7:0] malright [(ALRIGHT-1):0];
   reg [7:0] mcool [(COOL-1):0];

   // Preload Memory
   initial begin
      $readmemh("alright.hex", malright, 0, (ALRIGHT-1));
      $readmemh("cool.hex", mcool, 0, (COOL-1));
   end
   
   // rds under test
   rds rds0(.a(a),.d(d),.c(c));
   
   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      c = 1'b0;
      a = 18'b0;
      errors = 0;
      #1;
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<ALRIGHT; i=i+1) begin
	 #1;
	 a = i;
	 #1;
	 if(d !== malright[i]) begin
	    $display("NO: %b %b",malright[i],d);
	    errors = errors + 1;
	 end
	 else begin
	    $display("OK: %b %b",malright[i],d);
	 end
      end // for (i=0; i<256; i=i+1)
      #1;
      c = 1'b1;
      #1;
      for (i=0; i<COOL; i=i+1) begin
	 #1;
	 a = i;
	 #1;
	 if(d !== mcool[i]) begin
	    $display("NO: %b %b",mcool[i],d);
	    errors = errors + 1;
	 end
	 else begin
	    $display("OK: %b %b",mcool[i],d);
	 end
      end // for (i=0; i<256; i=i+1)
      if(errors > 0) begin
	 $display("RDS TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("RDS TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule