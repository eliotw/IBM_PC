/*
 * test_ram_bank:
 * Tests the ram_bank module by writing data to and from a bank
 */
module test_ram_bank;
   
   // Signals
   reg clk, rst, ras, cas, we;
   wire ras_n, cas_n, we_n;
   integer   i, j, errors;
   reg [7:0] md_in;
   reg       mdp_in;
   wire [7:0] md, md_out;
   wire       mdp, mdp_out;
   reg [7:0]  ma;
   
   // Negation
   assign ras_n = ~ras;
   assign cas_n = ~cas;
   assign we_n = ~we;

   // Ram Bank
   ram_bank uut(
	          .clk(clk), // clock
	          .rst(rst), // reset
	          .md(md), // memory data
	          .ma(ma), // memory address
	          .mdp(mdp), // memory data parity
	          .ras_n(ras_n), // row enable not
	          .cas_n(cas_n), // column enable not
	          .we_n(we_n) // write enable not
	    );

   // Clock
   always begin
      #5 clk = ~clk;
   end

   // Set up inout
   assign md_out = md;
   assign mdp_out = mdp;
   
   assign md = (we === 1'b1) ? md_in : 8'bz;
   assign mdp = (we === 1'b1) ? mdp_in : 1'bz;
   
   // Run Tests
   initial begin
      // Reset Memory
      $display ("****************");
      $display ("Resetting Memory");
      $display ("****************");
      clk = 0;
      rst = 0;
      ras = 0;
      cas = 0;
      we = 0;
      errors = 0;
      ma = 0;
      @(posedge clk);
      rst = 1;
      @(posedge clk);
      rst = 0;
      // Write stuff to memory
      $display ("*****************");
      $display ("Writing to Memory");
      $display ("*****************");
      for (i=0; i<256; i=i+1) begin
	 for(j=0; j<256; j=j+1) begin
	    ma = i;
	    md_in = j;
	    mdp_in = 1;
	    @(posedge clk);
	    ras = 1;
	    @(posedge clk);
	    ma = j;
	    cas = 1;
	    we = 1;
	    @(posedge clk);
	    ras = 0;
	    cas = 0;
	    we = 0;
	    @(posedge clk);
	 end // for (j=0; j<256; j=j+1)
      end // for (i=0; i<256; i=i+1)

      // Read stuff from memory
      $display ("*****************");
      $display ("Reading to Memory");
      $display ("*****************");
      for (i=0; i<256; i=i+1) begin
         for(j=0; j<256; j=j+1) begin
	    ma = i;
	    @(posedge clk);
	    ras = 1;
	    @(posedge clk);
	    ma = j;
	    cas = 1;
	    we = 0;
	    @(posedge clk);
	    @(posedge clk);
	    if((md_out !== j) | (mdp_out !== 1)) begin
	       $display("NO %b 1 %b %b",j,md_out,mdp_out);
	       errors = errors + 1;
	    end
	    else begin
	       $display("OK %b 1 %b %b",j,md_out,mdp_out);
	    end
	    @(posedge clk);
	    ras = 0;
	    cas = 0;
	    we = 0;
	    @(posedge clk);
	 end // for (j=0; j<256; j=j+1
      end // for (i=0; i<256; i=i+1)
      if(errors > 0) begin
	 $display("RAM TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("RAM TEST SUCCESS");
      end
      $finish();
   end // initial begin
   
endmodule // test_ram_bank

/*
 * test_ram_slice:
 * Tests the ram_slice module by writing data to and from a slice
 */
 /*
module test_ram_slice;

   // Signals
   reg clk, rst, din, ras, cas, we;
   wire dout, ras_n, cas_n, we_n;
   reg [7:0] address;
   integer   i, j, errors;
   reg 	     memin [0:255];
   reg       memout [0:255];
	     
   // Negation
   assign ras_n = ~ras;
   assign cas_n = ~cas;
   assign we_n = ~we;

   // initialize memory
   initial $readmemh("contents.txt", memin);
    
   // ram module
   ram_slice billy(
		   .clk(clk), // clock
		   .rst(rst), // reset
		   .din(din), // data in
		   .dout(dout), // data out
		   .ras_n(ras_n), // row enable not
		   .cas_n(cas_n), // column enable not
		   .we_n(we_n), // write enable not
		   .a(address) // address
		   );
   
   // Clock
   always begin
      #5 clk = ~clk;
   end

   //always @(dout) begin
   //   $display("d:%b",dout);
   //end
   
   // Run Tests
   initial begin
      // Reset Memory
      $display ("****************");
      $display ("Resetting Memory");
      $display ("****************");
      clk = 0;
      rst = 0;
      din = 0;
      ras = 0;
      cas = 0;
      we = 0;
      errors = 0;
      address = 0;
      @(posedge clk);
      rst = 1;
      @(posedge clk);
      rst = 0;

      // Write stuff to memory
      $display ("*****************");
      $display ("Writing to Memory");
      $display ("*****************");

      for (i=0; i<256; i=i+1) begin
	 for(j=0; j<256; j=j+1) begin
	    address = i;
	    din = memin[j];
	    @(posedge clk);
	    ras = 1;
	    //@(posedge clk);
	    @(posedge clk);
	    address = j;
	    cas = 1;
	    we = 1;
	    //@(posedge clk);
	    @(posedge clk);
	    ras = 0;
	    cas = 0;
	    we = 0;
	    @(posedge clk);
	 end
      end // for (i=0; i<256; i=i+1)

      // Read stuff from memory
      $display ("*****************");
      $display ("Reading to Memory");
      $display ("*****************");
      for (i=0; i<256; i=i+1) begin
	 for(j=0; j<256; j=j+1) begin
	    address = i;
	    din = memin[j];
	    @(posedge clk);
	    ras = 1;
	    //@(posedge clk);
	    @(posedge clk);
	    address = j;
	    cas = 1;
	    we = 0;
	    @(posedge clk);
	    @(posedge clk);
	    memout[j] = dout;
	    @(posedge clk);
	    ras = 0;
	    cas = 0;
	    we = 0;
	    @(posedge clk);
	    if(memout[j] !== memin[j]) begin
	       $display("NO %b %b",memin[j],memout[j]);
	       errors = errors + 1;
	    end
	    else begin
	       $display("OK %b %b",memin[j],memout[j]);
	    end
	    
	 end // for (j=0; j<256; j=j+1
      end // for (i=0; i<256; i=i+1)
      if(errors > 0) begin
	 $display("RAM TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
	 $display("RAM TEST SUCCESS");
      end
      
      $finish();
   end // initial begin
   
endmodule // test_ram_slice
*/

