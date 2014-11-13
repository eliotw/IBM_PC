module intel8237A(
    clk,
    cs,
    reset,
    ready,
    hlda,
    dreq,
    db_io,
    ior_io,
    iow_io,
    eopp_io,
    a3_0_io,
    a7_4_io,
    hrq,
    dack,
    aen,
    adstb,
    memr_io,
    memw_io
);

input clk, cs, reset, ready, hlda;
input [3:0] dreq;
inout [7:0] db_io;
inout ior_io, iow_io, eopp_io;
inout [3:0] a3_0_io, a7_4_io;
output hrq, aen, adstb;
inout memr_io, memw_io; // change
output [3:0] dack;

parameter IDLE = 0;
parameter S0 = 1;
parameter SS1 = 2;
parameter SSB2 = 3;
parameter SS2 = 4;
parameter SS3 = 5;
parameter SS4 = 6;

parameter Z_8 = 8'bZZZZZZZZ;
parameter Z_4 = 4'bZZZZ;
parameter C0_16 = 16'b0;
parameter C0_8 = 8'b0;
parameter CFF_8 = 8'b11111111;
parameter C0_6 = 6'b0;
parameter C0_4 = 4'b0;
parameter C1_4 = 4'b1111;
parameter BT = 2'b10;

reg [7:0] db;
reg ior, iow, eopp;
reg [3:0] a3_0, a7_4;

reg [15:0] curr_addr, curr_word, base_addr, base_word;
reg [15:0] curr_addr0, curr_word0, base_addr0, base_word0;
reg [15:0] curr_addr1, curr_word1, base_addr1, base_word1;
reg [15:0] curr_addr2, curr_word2, base_addr2, base_word2;
reg [15:0] curr_addr3, curr_word3, base_addr3, base_word3;
reg [1:0] ca0, cw0, ba0, bw0;
reg [1:0] ca1, cw1, ba1, bw1;
reg [1:0] ca2, cw2, ba2, bw2;
reg [1:0] ca3, cw3, ba3, bw3;
reg [7:0] command;
reg [5:0] mode;
reg [3:0] request, mask;

reg hrq, aen, adstb;
reg memr, memw; // change
reg [3:0] dack;

wire [3:0] drequest;
reg ff, mast_clr;
reg [2:0] state;
reg [1:0] channel;
reg adstb_needed;
assign drequest[0] = ((command[6] ^ dreq[0]) & ~mask[0]) | request[0];
assign drequest[1] = ((command[6] ^ dreq[1]) & ~mask[1]) | request[1];
assign drequest[2] = ((command[6] ^ dreq[2]) & ~mask[2]) | request[2];
assign drequest[3] = ((command[6] ^ dreq[3]) & ~mask[3]) | request[3];

assign db_io = db;
assign ior_io = ior;
assign iow_io = iow;
assign eopp_io = eopp;
assign a3_0_io = a3_0;
assign a7_4_io = a7_4;
assign memr_io = (memr == 1'b1) ? 1'b1 : 1'bz;
assign memw_io = (memw == 1'b1) ? 1'b1 : 1'bz;

always @(posedge clk) begin
// , reset, mast_clr, drequest <-- These were here, but ISE can't even
    if (reset == 1'b1) begin
        $display("Reset triggered");
        state <= IDLE;
        db <= Z_8;
        ior <= 1'bZ;
        iow <= 1'bZ;
        eopp <= 1'b1;
        a3_0 <= Z_4;
        a7_4 <= Z_4;
       
		  ca0 <= 2'b00; 
		  cw0 <= 2'b00;
		  ba0 <= 2'b00;
		  bw0 <= 2'b00;
		  ca1 <= 2'b00;
		  cw1 <= 2'b00;
		  ba1 <= 2'b00;
		  bw1 <= 2'b00;
		  ca2 <= 2'b00;
		  cw2 <= 2'b00;
		  ba2 <= 2'b00;
		  bw2 <= 2'b00;
		  ca3 <= 2'b00;
		  cw3 <= 2'b00;
		  ba3 <= 2'b00;
		  bw3 <= 2'b00;
		 
        hrq <= 1'b0;
        dack <= 4'b1111;
        aen <= 1'b0;
        adstb <= 1'b0;
        memr <= 1'b0;
        memw <= 1'b0;

        curr_addr <= C0_16;
        curr_word <= C0_16;
        base_addr <= C0_16;
        base_word <= C0_16;
		  
		  curr_addr0 <= C0_16;
        curr_word0 <= C0_16;
        base_addr0 <= C0_16;
        base_word0 <= C0_16;
		  
		  curr_addr1 <= C0_16;
        curr_word1 <= C0_16;
        base_addr1 <= C0_16;
        base_word1 <= C0_16;
		  
		  curr_addr2 <= C0_16;
        curr_word2 <= C0_16;
        base_addr2 <= C0_16;
        base_word2 <= C0_16;
		  
		  curr_addr3 <= C0_16;
        curr_word3 <= C0_16;
        base_addr3 <= C0_16;
        base_word3 <= C0_16;
		  
        command <= C0_8;
        mode <= C0_6;
        request <= C0_4;
        mask <= C0_4;
        ff <= 1'b0;
        mast_clr <= 1'b0;
        channel <= 1'b0;
        adstb_needed <= 1'b0;

    end else if (mast_clr == 1'b1) begin
        state <= IDLE;
        db <= Z_8;
        ior <= 1'bZ;
        iow <= 1'bZ;
        eopp <= 1'bZ;
        a3_0 <= Z_4;
        a7_4 <= Z_4;
        hrq <= 1'b0;
        dack <= C1_4;
        aen <= 1'b0;
        adstb <= 1'b0;
        memr <= 1'b0;
        memw <= 1'b0;


        // reset device

        command <= C0_8;
        request <= C0_4;
        mask <= C0_4;
        ff <= 1'b0;
        mast_clr <= 1'b0;
        channel <= 1'b0;
        adstb_needed <= 1'b0;

    end else begin

        state <= IDLE;
        db <= Z_8;
        ior <= 1'bZ;
        iow <= 1'bZ;
        eopp <= 1'bZ;
        a3_0 <= Z_4;
        a7_4 <= Z_4;
        hrq <= 1'b0;
        aen <= 1'b0;
        adstb <= 1'b0;
        memr <= 1'b0;
        memw <= 1'b0;
        adstb_needed <= 1'b0;

        if (command[7] == 1'b1) begin
            dack <= C0_4;
        end else if (command[7] == 1'b0) begin
            dack <= C1_4;
        end else begin
            dack <= C1_4;
        end

        $display("State: %d", state);
        case(state)
            IDLE: begin
                state <= IDLE;
                if (hlda == 1'b0 && drequest != C0_4) begin
                    state <= S0;
                    hrq <= 1'b1;
                end else if (hlda == 1'b0 && cs == 1'b0) begin
                    // Program Condition
						  // Write to DMA Registers
                    if (ior_io == 1'b1 && iow_io == 1'b0) begin
                        
                        case(a3_0_io)
                            4'b1000: begin
                                command <= db_io;
                            end
                            4'b1011: begin
                                if(db_io[3:2] != 2'b11) begin
                                    mode <= db_io[7:2];
                                end
                            end
                            4'b1101: begin
                                mast_clr <= 1'b1;
                            end
									 // CA 0
                            4'b0000: begin
                                if(ca0 == 2'b00) begin
                                    curr_addr0[7:0] <= db_io;
                                    base_addr0[7:0] <= db_io;
                                    ca0 <= 2'b01;
                                end 
										  else if(ca0 == 2'b01) begin
                                    curr_addr0[7:0] <= db_io;
                                    base_addr0[7:0] <= db_io;
                                end 
										  else if (ca0 == 2'b10) begin
                                    curr_addr0[15:8] <= db_io;
                                    base_addr0[15:8] <= db_io;
                                    ca0 <= 2'b11;
                                end
										  else begin
												curr_addr0[15:8] <= db_io;
                                    base_addr0[15:8] <= db_io;
										  end
                            end
									 // CW 0
                            4'b0001: begin
                                if(cw0 == 2'b00) begin
                                    curr_word0[7:0] <= db_io;
                                    base_word0[7:0] <= db_io;
                                    cw0 <= 2'b01;
                                end
										  else if (cw0 == 2'b01) begin
												curr_word0[7:0] <= db_io;
                                    base_word0[7:0] <= db_io;
										  end
										  else if (cw0 == 2'b10) begin
                                    curr_word0[15:8] <= db_io;
                                    base_word0[15:8] <= db_io;
                                    cw0 <= 2'b11;
                                end
										  else begin
												curr_word0[15:8] <= db_io;
                                    base_word0[15:8] <= db_io;
										  end
                            end
									 // CA 1
                            4'b0010: begin
                                if(ca1 == 2'b00) begin
                                    curr_addr1[7:0] <= db_io;
                                    base_addr1[7:0] <= db_io;
                                    ca1 <= 2'b01;
                                end 
										  else if(ca1 == 2'b01) begin
                                    curr_addr1[7:0] <= db_io;
                                    base_addr1[7:0] <= db_io;
                                end 
										  else if (ca1 == 2'b10) begin
                                    curr_addr1[15:8] <= db_io;
                                    base_addr1[15:8] <= db_io;
                                    ca1 <= 2'b11;
                                end
										  else begin
                                    curr_addr1[15:8] <= db_io;
                                    base_addr1[15:8] <= db_io;
                                end 
                            end
									 // CW 1
                            4'b0011: begin
                                if(cw1 == 2'b00) begin
                                    curr_word1[7:0] <= db_io;
                                    base_word1[7:0] <= db_io;
                                    cw1 <= 2'b01;
                                end 
										  else if(cw1 == 2'b01) begin
                                    curr_word1[7:0] <= db_io;
                                    base_word1[7:0] <= db_io;
                                end
										  else if (cw1 == 2'b10) begin
                                    curr_word1[15:8] <= db_io;
                                    base_word1[15:8] <= db_io;
                                    cw1 <= 2'b11;
                                end
										  else begin
                                    curr_word1[15:8] <= db_io;
                                    base_word1[15:8] <= db_io;
                                end
                            end
									 // CA 2
                            4'b0100: begin
                                if(ca2 == 2'b00) begin
                                    curr_addr2[7:0] <= db_io;
                                    base_addr2[7:0] <= db_io;
                                    ca2 <= 2'b01;
                                end 
										  else if(ca2 == 2'b01) begin
                                    curr_addr2[7:0] <= db_io;
                                    base_addr2[7:0] <= db_io;
                                end 
										  else if (ca2 == 2'b10) begin
                                    curr_addr2[15:8] <= db_io;
                                    base_addr2[15:8] <= db_io;
                                    ca2 <= 2'b11;
                                end
										  else begin
                                    curr_addr2[15:8] <= db_io;
                                    base_addr2[15:8] <= db_io;
                                end
                            end
									 // CW 2
                            4'b0101: begin
                                if(cw2 == 2'b00) begin
                                    curr_word2[7:0] <= db_io;
                                    base_word2[7:0] <= db_io;
                                    cw2 <= 2'b01;
                                end 
										  else if(cw2 == 2'b01) begin
                                    curr_word2[7:0] <= db_io;
                                    base_word2[7:0] <= db_io;
                                end 
										  else if (cw2 == 2'b10) begin
                                    curr_word2[15:8] <= db_io;
                                    base_word2[15:8] <= db_io;
                                    cw2 <= 2'b11;
                                end
										  else begin
                                    curr_word2[15:8] <= db_io;
                                    base_word2[15:8] <= db_io;
                                end
                            end
									 // CA 3
                            4'b0110: begin
                                if(ca3 == 2'b00) begin
                                    curr_addr3[7:0] <= db_io;
                                    base_addr3[7:0] <= db_io;
                                    ca3 <= 2'b01;
                                end 
										  else if(ca3 == 2'b01) begin
                                    curr_addr3[7:0] <= db_io;
                                    base_addr3[7:0] <= db_io;
                                end
										  else if (ca3 == 2'b10) begin
                                    curr_addr3[15:8] <= db_io;
                                    base_addr3[15:8] <= db_io;
                                    ca3 <= 2'b11;
                                end
										  else begin
                                    curr_addr3[15:8] <= db_io;
                                    base_addr3[15:8] <= db_io;
                                end
                            end
									 // CW 3
                            4'b0111: begin
                                if(cw3 == 2'b00) begin
                                    curr_word3[7:0] <= db_io;
                                    base_word3[7:0] <= db_io;
                                    cw3 <= 2'b01;
                                end 
										  else if(cw3 == 2'b01) begin
                                    curr_word3[7:0] <= db_io;
                                    base_word3[7:0] <= db_io;
                                end 
										  else if (cw3 == 2'b10) begin
                                    curr_word3[15:8] <= db_io;
                                    base_word3[15:8] <= db_io;
                                    cw3 <= 2'b11;
                                end
										  else begin
                                    curr_word3[15:8] <= db_io;
                                    base_word3[15:8] <= db_io;
                                end
                            end									 
                        endcase
                    end 
						  else if (ior_io == 1'b0 && iow_io == 1'b1) begin
								// Read from DMA Registers
                        case (a3_0_io)
									// BA 0
									4'b0000: begin
                                if(ba0 == 2'b00) begin
                                    db <= curr_addr0[7:0];
                                    ba0 <= 2'b01;
                                end 
										  else if (ba0 == 2'b01) begin
												db <= curr_addr0[7:0];
										  end
										  else if (ba0 == 2'b10) begin
                                    db <= curr_addr0[15:8];
                                    ba0 <= 2'b11;
                                end
										  else begin
												db <= curr_addr0[15:8];
										  end
                            end
									// BW 0
									4'b0001: begin
                                if(bw0 == 2'b00) begin
                                    db <= curr_word0[7:0];
                                    bw0 <= 2'b01;
                                end 
										  else if(bw0 == 2'b01) begin
                                    db <= curr_word0[7:0];
                                end 
										  else if (bw0 == 2'b10) begin
                                    db <= curr_word0[15:8];
                                    bw0 <= 2'b11;
                                end
										  else begin
                                    db <= curr_word0[15:8];
                                end
                            end
									// BA 1
									4'b0010: begin
                                if(ba1 == 2'b00) begin
                                    db <= curr_addr1[7:0];
                                    ba1 <= 2'b01;
                                end 
										  else if (ba1 == 2'b01) begin
												db <= curr_addr1[7:0];
										  end
										  else if (ba1 == 2'b10) begin
                                    db <= curr_addr1[15:8];
                                    ba1 <= 2'b11;
                                end
										  else begin
												db <= curr_addr1[15:8];
										  end
                            end
									// BW 1
									4'b0011: begin
                                if(bw1 == 2'b00) begin
                                    db <= curr_word1[7:0];
                                    bw1 <= 2'b01;
                                end 
										  else if(bw1 == 2'b01) begin
                                    db <= curr_word1[7:0];
                                end 
										  else if (bw1 == 2'b10) begin
                                    db <= curr_word1[15:8];
                                    bw1 <= 2'b11;
                                end
										  else begin
                                    db <= curr_word1[15:8];
                                end
                            end
									// BA 2
									4'b0100: begin
                                if(ba2 == 2'b00) begin
                                    db <= curr_addr2[7:0];
                                    ba2 <= 2'b01;
                                end 
										  else if (ba2 == 2'b01) begin
												db <= curr_addr2[7:0];
										  end
										  else if (ba2 == 2'b10) begin
                                    db <= curr_addr2[15:8];
                                    ba2 <= 2'b11;
                                end
										  else begin
												db <= curr_addr2[15:8];
										  end
                            end
									// BW 2
									4'b0101: begin
                                if(bw2 == 2'b00) begin
                                    db <= curr_word2[7:0];
                                    bw2 <= 2'b01;
                                end 
										  else if(bw0 == 2'b01) begin
                                    db <= curr_word2[7:0];
                                end 
										  else if (bw0 == 2'b10) begin
                                    db <= curr_word2[15:8];
                                    bw2 <= 2'b11;
                                end
										  else begin
                                    db <= curr_word2[15:8];
                                end
                            end
									// BA 3
									4'b0110: begin
                                if(ba3 == 2'b00) begin
                                    db <= curr_addr3[7:0];
                                    ba3 <= 2'b01;
                                end 
										  else if (ba3 == 2'b01) begin
												db <= curr_addr3[7:0];
										  end
										  else if (ba3 == 2'b10) begin
                                    db <= curr_addr3[15:8];
                                    ba3 <= 2'b11;
                                end
										  else begin
												db <= curr_addr3[15:8];
										  end
                            end
									// BW 3
									4'b0111: begin
                                if(bw3 == 2'b00) begin
                                    db <= curr_word3[7:0];
                                    bw3 <= 2'b01;
                                end 
										  else if(bw3 == 2'b01) begin
                                    db <= curr_word3[7:0];
                                end 
										  else if (bw3 == 2'b10) begin
                                    db <= curr_word3[15:8];
                                    bw3 <= 2'b11;
                                end
										  else begin
                                    db <= curr_word3[15:8];
                                end
                            end									 
                        endcase
                    end
						  else begin
								// Reg0
								if(ca0 == 2'b01) ca0 <= 2'b10;
								else if (ca0 == 2'b11) ca0 <= 2'b00;
								if(cw0 == 2'b01) cw0 <= 2'b10;
								else if (cw0 == 2'b11) cw0 <= 2'b00;
								if(ba0 == 2'b01) ba0 <= 2'b10;
								else if (ba0 == 2'b11) ba0 <= 2'b00;
								if(bw0 == 2'b01) bw0 <= 2'b10;
								else if (bw0 == 2'b11) bw0 <= 2'b00;
								// Reg1
								if(ca1 == 2'b01) ca1 <= 2'b10;
								else if (ca1 == 2'b11) ca1 <= 2'b00;
								if(cw1 == 2'b01) cw1 <= 2'b10;
								else if (cw1 == 2'b11) cw1 <= 2'b00;
								if(ba1 == 2'b01) ba1 <= 2'b10;
								else if (ba1 == 2'b11) ba1 <= 2'b00;
								if(bw1 == 2'b01) bw1 <= 2'b10;
								else if (bw1 == 2'b11) bw1 <= 2'b00;
								// Reg2
								if(ca2 == 2'b01) ca2 <= 2'b10;
								else if (ca2 == 2'b11) ca2 <= 2'b00;
								if(cw2 == 2'b01) cw2 <= 2'b10;
								else if (cw2 == 2'b11) cw2 <= 2'b00;
								if(ba2 == 2'b01) ba2 <= 2'b10;
								else if (ba2 == 2'b11) ba2 <= 2'b00;
								if(bw2 == 2'b01) bw2 <= 2'b10;
								else if (bw2 == 2'b11) bw2 <= 2'b00;
								// Reg3
								if(ca3 == 2'b01) ca3 <= 2'b10;
								else if (ca3 == 2'b11) ca3 <= 2'b00;
								if(cw3 == 2'b01) cw3 <= 2'b10;
								else if (cw3 == 2'b11) cw3 <= 2'b00;
								if(ba3 == 2'b01) ba3 <= 2'b10;
								else if (ba3 == 2'b11) ba3 <= 2'b00;
								if(bw3 == 2'b01) bw3 <= 2'b10;
								else if (bw3 == 2'b11) bw3 <= 2'b00;
						  end
                end
            end

            S0: begin
                state <= S0;
                hrq <= 1'b1;
                if (drequest[channel] == 1'b0) begin
                    state <= IDLE;
                end else if (hlda == 1'b1) begin
                    state <= SS1;
                end

                if (hlda == 1'b0 && cs == 1'b0) begin
                    state <= S0;
                    if (ior_io == 1'b1 && iow_io == 1'b0) begin
                        case (a3_0_io)
                            4'b1000: begin
                                command <= db_io;
                            end
                            4'b1011: begin
                                if(db_io[3:2] != 2'b11) begin
                                    mode <= db_io[7:2];
                                end
                            end
                            4'b1101: begin
                                mast_clr <= 1'b1;
                            end
                        endcase
                    end
                end
            end

            SS1: begin
                state <= SS2;
                hrq <= 1'b1;
                if (drequest[channel] == 1'b0) begin
                    state <= IDLE;
                end else begin
                    aen <= 1'b1;
                end
            end

            SS2: begin
                state <= SS3;
                hrq <= 1'b1;
                if(drequest[channel] == 1'b0) begin
                    state <= IDLE;
                end else begin
                    aen <= 1'b1;
                    adstb <= 1'b1;
                    db <= curr_addr[15:8];
                    a7_4 <= curr_addr[7:4];
                    a3_0 <= curr_addr[3:0];
                    dack[channel] <= command[7];
                    case(mode[1:0])
                        2'b01: begin
                            ior <= 1'b1;
                            memw <= 1'b1;
                        end
                        2'b10: begin
                            iow <= 1'b1;
                            memr <= 1'b1;
                        end
                    endcase
                end
            end

            SSB2: begin
                state <= SS3;
                hrq <= 1'b1;
                aen <= 1'b1;
                if (adstb_needed == 1'b1) begin
                    adstb <= 1'b1;
                    db <= curr_addr[15:8];
                end

                a7_4 <= curr_addr[7:4];
                a3_0 <= curr_addr[3:0];
                dack[channel] <= command[7];

                case(mode[1:0])
                    2'b01: begin
                        ior <= 1'b1;
                        memw <= 1'b1;
                    end
                    2'b10: begin
                        iow <= 1'b1;
                        memr <= 1'b1;
                    end
                endcase
            end

            SS3: begin
                state <= SS4;
                hrq <= 1'b1;
                aen <= 1'b1;
                a7_4 <= curr_addr[7:4];
                a3_0 <= curr_addr[3:0];
                dack[channel] <= command[7];

                case(mode[1:0])
                    2'b01: begin
                        ior <= 1'b0;
                        memw <= 1'b0;
                    end
                    2'b10: begin
                        iow <= 1'b0;
                        memr <= 1'b0;
                    end
                endcase
            end

            SS4: begin
                state <= IDLE;
                hrq <= 1'b1;
                aen <= 1'b1;
                a7_4 <= curr_addr[7:4];
                a3_0 <= curr_addr[3:0];
                dack[channel] <= command[7];

                case(mode[1:0])
                    2'b01: begin
                        ior <= 1'b0;
                        memw <= 1'b0;
                    end
                    2'b10: begin
                        iow <= 1'b0;
                        memr <= 1'b0;
                    end
                endcase

                if(curr_word == C0_16) begin
                    if(mode[2] == 1'b1) begin
                        curr_word <= base_word;
                        curr_addr <= base_addr;
                    end else if (mode[2] == 1'b0)begin
                        curr_word <= curr_word -1;
                        if(mode[3] == 1'b0) begin
                            curr_addr <= curr_addr + 1;
                        end else if (mode[3] == 1'b1) begin
                            curr_addr <= curr_addr - 1;
                        end
                    end
                end else begin
                    curr_word <= curr_word - 1;
                    if(mode[3] == 1'b0) begin
                        if(curr_addr[7:0] == CFF_8) begin
                            adstb_needed <= 1'b1;
                        end
                        curr_addr <= curr_addr + 1;
                    end else if(mode[3] == 1'b1) begin
                        if(curr_addr[7:0] == C0_8) begin
                            adstb_needed <= 1'b1;
                        end
                    end

                    if(mode[5:4] == BT) begin
                        state <= SSB2;
                    end else begin
                        state <= IDLE;
                    end
                end
            end

        endcase
    end
end
endmodule





                



