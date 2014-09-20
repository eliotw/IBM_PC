/*
 * test_ls245:
 * Tests the ls245 module
 */
module test_ls245;

   // signals
   wire ba,ab,g_n,dir;
   reg [1:0] g;
   integer    errors, i, j, k;
   wire [7:0] a, b, gaout, gbout, taout, tbout;
   reg [7:0]  ain, bin;
   
   // modification of signals
   assign g_n = g[1];
   assign dir = g[0];

   // Bus Running
   assign taout = a;
   assign tbout = b;
   assign a = (ab === 1'b1) ? ain : 8'bzzzzzzzz;
   assign b = (ba === 1'b1) ? bin : 8'bzzzzzzzz;
   
   // ls245 under test
   ls245 billy(
	       .a(a),
               .b(b),
               .dir(dir),
               .g_n(g_n)
               );

   // mock version of ls245
   assign ba = ~g_n & ~dir;
   assign ab = ~g_n & dir;
   assign gaout = (ba === 1'b1) ? bin : ((g_n === 1'b0) ? ain : 8'bzzzzzzzz);
   assign gbout = (ab === 1'b1) ? ain : ((g_n === 1'b0) ? bin : 8'bzzzzzzzz);
   
   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      ain = 8'b00000000;
      bin = 8'b00000000;
      g = 2'b00;
      i = 0;
      j = 0;
      k = 0;
      errors = 0;
      #1;
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<256; i=i+1) begin
	 for(j=0; j<256; j=j+1) begin
	    for(k=0; k<4; k=k+1) begin
	       #1;
	       ain = i;
	       bin = j;
	       g = k;
	       #1;
	       if((taout !== gaout) | (tbout !== gbout)) begin
		  $display("NO ga:%b ta:%b gb:%b tb:%b g:%b"
			   ,gaout,taout,gbout,tbout,g);
		  errors = errors + 1;
	       end
	       else begin
		  $display("OK ga:%b ta:%b gb:%b tb:%b g:%b"
			   ,gaout,taout,gbout,tbout,g);
	       end
	    end // for (k=0; k<4; k=k+1)
	 end // for (j=0; j<8; j=j+1)
      end // for (i=0; i<8; i=i+1)
      
      if(errors > 0) begin
	 $display("LS245 TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("LS245 TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_ls245
