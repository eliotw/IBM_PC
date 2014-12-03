/*
 * test_fdc:
 * Perform a test of the fdc
 */
module test_fdc();

   // Registers
   reg clk, rst,flag,flag1;
   reg dack2_n, tc, ior_n, iow_n, aen;
   reg [7:0] testMSR,rd, st0, testData; //check main status register, data
   reg [19:0] ra; //Patrick said to
   // Wires
   wire irq6, drq2;
   wire [19:0] a;
   wire [7:0]  d;
   
   // Integers
   integer     i, j, errors;
   assign a = (flag) ? ra : 20'bz; //assume computer knows that one z == all zs
	assign d = (flag1) ? rd : 8'bz;
   // FDC Module
   fdc fzero(
             .clk(clk), // system clock 
             .rst(rst), // system reset
             .irq6(irq6), // irq number 6
             .drq2(drq2), // drq number 2
             .dack2_n(dack2_n), // drq acknowledge 2
             .tc(tc), // terminal count
             .ior_n(ior_n), // io read
             .iow_n(iow_n), // io write
             .a(a), // address
             .d(d), // data
             .aen(aen) // address enable
	     );
   
   // Clock
   always begin
      #5 clk = ~clk;   
   end

   // Test Routine
   initial begin
      // Set Up Systems
		errors = 0;
		i = 0;
      clk = 1'b0;
      rst = 1'b0;
      testMSR = 8'h80; //Testing initial Main status register (hypothetically should be this)
      dack2_n = 1'b1;
      tc = 1'b0;
      ior_n = 1'b1;
      iow_n = 1'b1;
		flag1 = 1'b0;
      aen = 1'b0;
      rst = 1'b1;
      #100;
      rst = 1'b0;
      #100;
      ior_n = 1'b0;
		flag = 1'b1;
      ra = 20'h3f4;
		//dack2_n = 1'b0;
      @(posedge clk);
		@(posedge clk);
      errors = errors + (d !== testMSR); //should be right error 44
      $display("44: Output %b error: %b",d,(d !== testMSR)); // on off chance it isn't testMSR, find out what it is
      @(posedge clk);
		$display("Finished MSR");
      $display("This all works from up ^. Down is another matter"); //REMOVE
      //commands to test: Read,Write,Seek,Format (:( ) 
      /*Read Track
      ior_n = 1'b1;
      iow_n = 1'b0; //writing to data register
		flag = 1'b1;
		flag1 = 1'b1;
      ra = 20'h3f5; //address of data register (check and see if flipped f and 5)
      rd = 8'h02; //check SK, need to find my notes
      @(posedge clk);
      rd = 8'h00; //check HD,US0,US1 again
      @(posedge clk);
      rd = 8'h01; //image check (specific data from SD card) -> track (track 1 exists. track 0 or 40 might not
      @(posedge clk);
      rd = 8'h00; //image check (specific data from SD card) -> head
      @(posedge clk);
      rd = 8'h01; //image check (specific data from SD card) -> Section Number
      @(posedge clk);
      rd = 8'h02; //image check (specific data from SD card) -> N (Constant)
      @(posedge clk);
      rd = 8'h07; //image check (specific data from SD card) -> EOT (final sector number for track)
      @(posedge clk);
      rd = 8'h2A; //image check (specific data from SD card) -> GPL (gap length) (check what GPL R/W means)
      @(posedge clk);
      rd = 8'h00; //image check (specific data from SD card) -> DTL (Data length) ?
      @(posedge clk);
      iow_n = 1'b1; // (no more writing to FDC, Execution state)
      ra = 20'h3f4; //checking that everything is working (status register)
      ior_n = 1'b0; //reading
      testMSR = 8'h31; //need to check what it should be *(hypothetically)
      flag1 = 1'b1;
		@(posedge clk);
      errors = errors + (d !== testMSR); //should be right error 43
      $display("43 dataout: %b error:%b",d,(d !== testMSR)); // on off chance it isn't testMSR, find out what it is *REMOVE BEFORE TURNING IN*
      st0 = 8'h20; //figure this out
		j = 0;
      while ((d[7:6] !== 2'b11) && (j<20)) begin //should be a loop until the data is what st0 should be (only works if data is only st0
			@(posedge clk); //when st0 is put out on dataline
			j = j + 1;
		end
		ra = 20'h3f5;
      ior_n = 1'b0;
      errors = errors + (d !== st0); //should be right error 42
		$display("42 dataout: %b error:%b",d,(d !== st0));
      testData = 8'h00; //st1
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 41
      $display("41 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST2
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 40
      $display("40 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST3
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 39
      $display("39 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h01; //Track #
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 38
      $display("38 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //H
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 37
      $display("37 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h01; //Sector Number
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 36
      $display("36 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h02; //N
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 35
      $display("35 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      
		$display("Finished Read Track");
		
      /Read ID
      ior_n = 1'b1;
      iow_n = 1'b0; //writing to data register
      flag = 1'b1; //I have a flag
		flag1 = 1'b1; //I have two flags
		ra = 20'h3f5; //address of data register (check and see if flipped f and 5)
      rd = 8'h0A; //check SK, need to find my notes
      @(posedge clk);
      rd = 8'h01; //check HD,US0,US1 again
      @(posedge clk);
      iow_n = 1'b1; // (no more writing to FDC, Execution state)
      ra = 20'h3f4; //checking that everything is working (status register)
      ior_n = 1'b0; //reading
      testMSR = 8'h01; //need to check what it should be *A drive is working
		@(posedge clk);
		flag1 = 1'b0;
      errors = errors + (d !== testMSR); //should be right error 34
      $display("34 dataout: %b error:%b",d,(d !== testMSR)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
		ra = 20'h3f4;
      st0 = 8'h20; //figure this out
		#1 flag = 1'b1;
      j = 0;
		while ((d[7:6] !== 2'b11) && (j<20)) begin //should be a loop until the data is what st0 should be (only works if data is only st0
			@(posedge clk); //when st0 is put out on dataline
			j = j + 1;
		end
      ior_n = 1'b0;
		ra = 20'h3f5;
		#1;
		@(posedge clk);
		$display("%b",a);
      testData = 8'h20; //ST0
      #1 errors = errors + (d !== testData); //should be right error 33
      $display("33 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST1
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 32
      $display("32 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST2
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 31
      $display("31 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h01; //Track #
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 30
      $display("30 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //H
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 29
      $display("29 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h07; //Sector Number
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 28
      $display("28 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h02; //N
      @(posedge clk);
      errors = errors + (d !== testData); //should be right error 27
      $display("27 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      $display("Finished Read ID");
		
      //Sense Drive Status
		ior_n = 1'b0;
		ra = 20'h3f4;
		flag = 1'b1;
		@(posedge clk);
		$display("%b",d);
      ior_n = 1'b1;
      iow_n = 1'b0; //writing to data register
		flag = 1'b1;
		flag1 = 1'b1;
      ra = 20'h3f5; //address of data register (check and see if flipped f and 5)
      rd = 8'h04; //
      @(posedge clk); //First Command
      rd = 8'h00; //check HD,US0,US1 again 
      @(posedge clk); //Second Command
		iow_n = 1'b1; //Not writing any more
      ior_n = 1'b0;
		flag1 = 1'b0;
      testData = 8'h38; //ST3 possibly? Drive read, track 0 ready, TWO SIDED
      @(posedge clk); //RESULTS
      #1 errors = errors + (d !== testData); //should be right error 26
      $display("26 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      $display("Finished Sense Drive");
		ra = 20'h3f4;
		//Because never results
		@(posedge clk);
		#1 $display("%b",d); //00111100 -> not taking commands, nonDMA,busy,Drives D/C on
		@(posedge clk);
		$display("%b",d); //Done, Give me Command
      @(posedge clk);
		$display("%b",d);
		
      //Sense Interrupt status -> see if I can hack into cylinder and set number
      ior_n = 1'b1;
      iow_n = 1'b0; //writing to data register
		flag = 1'b1;
      flag1 = 1'b1;
		ra = 20'h3f5; //address of data register (check and see if flipped f and 5)
      rd = 8'h08; //check SK, need to find my notes
      @(posedge clk);
      ior_n = 1'b0;
		iow_n = 1'b1;
		flag1 = 1'b0;
      testData = 8'h00; //ST0
      @(posedge clk);
      @(posedge clk); //Getting ST0 here?
      #1 $display("25 dataout: %b error:%b",d,(d !== testData));
		$display("Finished Sense Interrupt");
		@(posedge clk);
		#1 $display("24 dataout: %b error:%b",d,(d !== testData));
		$display("Finished Sense Interrupt");
		@(posedge clk);
		ra = 20'h3f4;
		@(posedge clk);
		#1 $display("%b",d); //Thinks that it should be getting something from processor
		@(posedge clk);
		#1 $display("%b",d);
		@(posedge clk);
		#1 $display("%b",d); //Thinks that it should be getting something from processor
		@(posedge clk);
		#1 $display("%b",d);
		@(posedge clk);
		#1 $display("%b",d);
		//Invalid
		$display("doing invalid");
      rd = 8'hFF;
      iow_n = 1'b0;
      ior_n = 1'b1;
		flag = 1'b1;
		flag1 = 1'b1;
      ra = 20'h3f5;
      @(posedge clk);
      flag1 = 1'b0;
		ior_n = 1'b0;
      iow_n = 1'b1;
      st0 = 8'h80;
		@(posedge clk);
      #1 errors = errors + (d !== st0); //error 24 getting 0, shouldn't be. WTF!
		ra = 20'h3f4;
		$display("24 dataout: %b error:%b",d,(d !== st0)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      @(posedge clk)
		$display("%b",d);
		$display("Finished invalid");
		
      //Format
      ior_n = 1'b1;
      iow_n = 1'b0; //writing to data register
      flag = 1'b1;
		flag1 = 1'b1;
		ra = 20'h3f5; //address of data register (check and see if flipped f and 5)
      rd = 8'h0C; //check SK, need to find my notes
      @(posedge clk);
      rd = 8'h01; //check HD,US0,US1 again
      @(posedge clk);
      rd = 8'h02; //image check (specific data from SD card) -> N (Constant)
      @(posedge clk);
      rd = 8'h08; //image check (specific data from SD card) -> SC -> # sectors/cylinder
      @(posedge clk);
      rd = 8'h2A; //image check (specific data from SD card) -> GPL (gap length) (check what GPL R/W means)
      @(posedge clk);
      rd = 8'h00; //image check (specific data from SD card) -> D (Data to be written into a sector)
      @(posedge clk);
      iow_n = 1'b1; // (no more writing to FDC, Execution state)
      ra = 20'h3f4; //checking that everything is working (status register)
      ior_n = 1'b0; //reading
      testMSR = 8'b00; //need to check what it should be
		flag = 1'b0;
      @(posedge clk);
		errors = errors + (d !== testMSR); //should be right Error 23
      $display("23 dataout: %b error:%b",d,(d !== testMSR)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      flag = 1'b1;
		ra = 20'h3f4;
      st0 = 8'h20; //figure this out
		flag1 = 1'b0;
      j = 0;
      while ((d[7:6] !== 2'b11) && (j<20)) begin //should be a loop until the data is what st0 should be (only works if data is only st0
			@(posedge clk); //when st0 is put out on dataline
			j = j + 1;
		end
      ior_n = 1'b0;
		#1 ra = 20'h3f5;
      #1 testData = 8'h20; //ST0
      errors = errors + (d !== st0); //should be right Error place 22
      $display("22 dataout: %b error:%b",d,(d !== st0)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST1
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 21
      $display("21 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST2
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 20
      $display("20 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h01; //Track #
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 19
      $display("19 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //H
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 18
      $display("18 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h07; //Sector Number
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 17
      $display("17 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h02; //N
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 16
      $display("16 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      $display("Finished Format");
		*/
		$display("Read command currently under construction");
		ior_n = 1'b0;
		iow_n = 1'b1;
		ra = 20'h3f2;
		@(posedge clk);
		#1 $display("DOR: %h",d);
		
      //Test a read command -> Make this a Task? as well as other commands?
      ior_n = 1'b1;
		flag1 = 1;
      iow_n = 1'b0; //writing to data register
      ra = 20'h3f5; //address of data register (check and see if flipped f and 5)
      rd = 8'h46; //check SK, need to find my notes
		#1 $display("%h address %h",d,a);
      @(posedge clk);
		$display($time, "is current time");
      rd = 8'h46; //check HD,US0,US1 again
      @(posedge clk);
      rd = 8'h07; //image check (specific data from SD card) -> track (track 1 exists. track 0 or 40 might not
		@(posedge clk);
      #1 rd = 8'h01; //image check (specific data from SD card) -> head
		flag1 = 1;
		iow_n = 1'b0;
		ior_n = 1'b1;
      @(posedge clk);
      rd = 8'h01; //image check (specific data from SD card) -> Section Number
      @(posedge clk);
      rd = 8'h07; //image check (specific data from SD card) -> N (Constant)
      @(posedge clk);
      rd = 8'h02; //image check (specific data from SD card) -> EOT (final sector number for track)
      @(posedge clk);
      rd = 8'h2A; //image check (specific data from SD card) -> GPL (gap length) (check what GPL R/W means)
      @(posedge clk);
      rd = 8'h00; //image check (specific data from SD card) -> DTL (Data length)
      @(posedge clk);
      iow_n = 1'b0; // (no more writing to FDC, Execution state)
      ra = 20'h3f5; //checking that everything is working (status register)
      //ior_n = 1'b0; //reading
		dack2_n = 1'b0;
      //testMSR = 8'b00; //need to check what it should be
		flag1 = 1; //Dumbass forget to unset flag
      @(posedge clk);
      //#1 errors = errors + (d !== testMSR); //should be right Error 15 Waiting
		// d seems to be stuck at x00x0000 for until Error 12
      $display("15 dataout: %b error:%b",d,(d !== testMSR)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      ra = 20'h3f5;
      st0 = 8'h20; //figure this out
      
      while ((d[7:6] !== 2'b11) && (j<100)) begin //should be a loop until the data is what st0 should be (only works if data is only st0
			@(posedge clk); //when st0 is put out on dataline
			#1 $display("%b",d[7:6]);
			$display("%b",d);
		end
      ior_n = 1'b0;
      #1 testData = 8'h20;		//ST0
		ra = 20'h3f5;
      errors = errors + (d !== testData); //should be right Error place 14
      $display("14 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST1
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 13
      $display("13 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST2
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 13
      $display("12 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h01; //Track #
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 12
      $display("11 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //H
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 11
      $display("10 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h07; //Sector Number
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 10
      $display("9 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h02; //N
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 9
      $display("8 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      //end Read Command
		$display("Finished Read");
      
      /*LAST command because we're writing over data (and that might fuck with us)
       //Test a write command *CHANGE VALUES FOR A WRITE COMMAND*
      ior_n = 1'b1;
      iow_n = 1'b0; //writing to data register
      flag = 1'b1;
		flag1 = 1'b1;
		ra = 20'h3f5; //address of data register (check and see if flipped f and 5)
      rd = 8'h05; //check SK, need to find my notes
      @(posedge clk);
      rd = 8'h01; //check HD,US0,US1 again
      @(posedge clk);
      rd = 8'h01; //image check (specific data from SD card) -> track (track 1 exists. track 0 or 40 might not
      @(posedge clk);
      rd = 8'h00; //image check (specific data from SD card) -> head
      @(posedge clk);
      rd = 8'h01; //image check (specific data from SD card) -> Section Number
      @(posedge clk);
      rd = 8'h02; //image check (specific data from SD card) -> N (Constant)
      @(posedge clk);
      rd = 8'h07; //image check (specific data from SD card) -> EOT (final sector number for track)
      @(posedge clk);
      rd = 8'h2A; //image check (specific data from SD card) -> GPL (gap length) (check what GPL R/W means)
      @(posedge clk);
      rd = 8'h00; //image check (specific data from SD card) -> DTL (Data length)
      @(posedge clk);
      iow_n = 1'b1; // (no more writing to FDC, Execution state)
      ra = 20'h3f4; //checking that everything is working (status register)
      ior_n = 1'b0; //reading
		flag1 = 1'b0;
      testMSR = 8'b00; //need to check what it should be
      @(posedge clk);
      errors = errors + (d !== testMSR); //should be right Error place 8
      $display("7 dataout: %b error:%b",d,(d !== testMSR)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      ra = 20'h3f4;
      st0 = 8'h20; //figure this out
      j = 0;
      while ((d[7:6] !== 2'b11) && (j<20)) begin //should be a loop until the data is what st0 should be (only works if data is only st0
			@(posedge clk); //when st0 is put out on dataline
			j = j + 1;
		end
      ior_n = 1'b0;
		#1 ra = 20'h3f4;
      #1 testData = 8'h20; //ST0
      errors = errors + (d !== testData); //should be right Error place 7
      $display("6 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST1
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 6
      $display("5 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //ST2
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 5
      $display("4 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h01; //Track #
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 4
      $display("3 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h00; //H
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 3
      $display("2 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h07; //Sector Number
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 2
      $display("1 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      #1 testData = 8'h02; //N
      @(posedge clk);
      errors = errors + (d !== testData); //should be right Error place 1
      $display("0 dataout: %b error:%b",d,(d !== testData)); // on off chance it isn't testData, find out what it is *REMOVE BEFORE TURNING IN*
      //end Read Command
		$display("errors at end: %d",errors);
      $display("Finished write");
		*/
      // Conclude Simulation
      @(posedge clk);
      if(errors > 0) begin
			$display("FDC TEST FAILURE WITH %d ERRORS",errors);
      end
      else begin
			$display("FDC TEST SUCCESS");
      end
      $finish();
   end
   
endmodule // test_sdcard
