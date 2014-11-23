/*
 * test_rds:
 * Tests the rds module by checking that it loads the bios correctly
 */
module test_rds;

   // signals
   reg [12:0] a;
   reg [7:0]  cs;
   wire [7:0] cs_n;
   wire [7:0] d;
   integer   i, j, errors, memaddr;
   reg [7:0] mem [65535:0];
	reg clk;
   
   // CS Setup
   assign cs_n = ~cs;

   // BIOS Setup
   initial begin
      $readmemh("bios.txt", mem, 0, 65535);
   end

   // Clock Setup
   always begin
      #5 clk = ~clk;
   end
   
   // ROM module under test
   rom rm97(
	    .a(a),
	    .d(d),
	    .cs_n(cs_n),
	    .clk(clk)
	    );
   
   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      clk = 1'b0;
      @(posedge clk);
      cs = 8'b0;
      a = 13'b0;
      errors = 0;
      @(posedge clk);
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<8; i=i+1) begin
	 for(j=0; j<8192; j=j+1) begin
	    @(posedge clk);
	    a = j;
	    memaddr = j + i*(8192);
	    case(i)
	      0: cs = 8'b00000001;
	      1: cs = 8'b00000010;
	      2: cs = 8'b00000100;
	      3: cs = 8'b00001000;
	      4: cs = 8'b00010000;
	      5: cs = 8'b00100000;
	      6: cs = 8'b01000000;
	      7: cs = 8'b10000000;
	      default: cs = 8'b00000000;
	    endcase // case (i)
	    @(posedge clk);
		 @(posedge clk);
	    if(d !== mem[memaddr]) begin
	       $display("NO: %h %b %b",memaddr,mem[memaddr],d);
	       errors = errors + 1;
	    end
	    else begin
	       $display("OK: %h %b %b",memaddr,mem[memaddr],d);
	    end
	 end // for (j=0; j<8192; j=j+1
      end // for (i=0; i<256; i=i+1)
      if(errors > 0) begin
	 $display("RDS TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("RDS TEST SUCCESS");
      end
      $finish();
   end // initial begin
	
endmodule // rom


