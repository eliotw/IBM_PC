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
   
   assign cs_n = ~cs;

   initial
     $readmemh("bios.txt", mem, 0, 65535);
   
   // ls280 under test
   rds #(0) rds0(.a(a),.d(d),.cs_n(cs_n[0]));
   rds #(1) rds1(.a(a),.d(d),.cs_n(cs_n[1]));
   rds #(2) rds2(.a(a),.d(d),.cs_n(cs_n[2]));
   rds #(3) rds3(.a(a),.d(d),.cs_n(cs_n[3]));
   rds #(4) rds4(.a(a),.d(d),.cs_n(cs_n[4]));
   rds #(5) rds5(.a(a),.d(d),.cs_n(cs_n[5]));
   rds #(6) rds6(.a(a),.d(d),.cs_n(cs_n[6]));
   rds #(7) rds7(.a(a),.d(d),.cs_n(cs_n[7]));
   
   // sts
   initial begin
      // Set Up Test
      $display ("***************");
      $display ("Setting Up Test");
      $display ("***************");
      #1;
      cs = 8'b0;
      a = 13'b0;
      errors = 0;
      #1;
      // Run Some Tests
      $display ("**************");
      $display ("Run Some Tests");
      $display ("**************");
      for (i=0; i<8; i=i+1) begin
	 for(j=0; j<8192; j=j+1) begin
	    #1;
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
	    #1;
	    if(d !== mem[memaddr]) begin
	       $display("NO: %b %b",mem[memaddr],d);
	       errors = errors + 1;
	    end
	    else begin
	       $display("OK: %b %b",mem[memaddr],d);
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
   
endmodule