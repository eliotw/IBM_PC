module intel8237A(
    clk,
    cs,
    reset,
    ready,
    hlda,
<<<<<<< HEAD
    dreq,
=======
    dreq_io,
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
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
    memr,
    memw
);

input clk, cs, reset, ready, hlda;
<<<<<<< HEAD
input [3:0] dreq;
=======
input [3:0] dreq_io;
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
inout [7:0] db_io;
inout ior_io, iow_io, eopp_io;
inout [3:0] a3_0_io, a7_4_io;
output hrq, aen, adstb, memr, memw;
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

<<<<<<< HEAD
=======
reg [3:0] dreq;
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
reg [7:0] db;
reg ior, iow, eopp;
reg [3:0] a3_0, a7_4;

reg [15:0] curr_addr, curr_word, base_addr, base_word;
reg [7:0] command;
reg [5:0] mode;
reg [3:0] request, mask;

reg hrq, aen, adstb, memr, memw;
reg [3:0] dack;

wire [3:0] drequest;
reg ff, mast_clr;
reg [2:0] state;
reg [1:0] channel;
reg adstb_needed;
<<<<<<< HEAD
assign drequest[0] = ((command[6] ^ dreq[0]) & ~mask[0]) | request[0];
=======
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
assign drequest[1] = ((command[6] ^ dreq[1]) & ~mask[1]) | request[1];
assign drequest[2] = ((command[6] ^ dreq[2]) & ~mask[2]) | request[2];
assign drequest[3] = ((command[6] ^ dreq[3]) & ~mask[3]) | request[3];


<<<<<<< HEAD
/*assign dreq_io = (state == 3'b0) ? 4'bZZZZ : dreq;
=======

assign dreq_io = (state == 3'b0) ? 4'bZZZZ : dreq;
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
assign db_io = (state == 3'b0) ? 8'bZZZZZZZ : db;
assign ior_io = (state == 3'b0) ? 1'bZ : ior;
assign iow_io = (state == 3'b0) ? 1'bZ : iow;
assign eopp_io = (state == 3'b0) ? 1'bZ : eopp;
assign a3_0_io = (state == 3'b0) ? 4'bZZZZ : a3_0;
assign a7_4_io = (state == 3'b0) ? 4'bZZZZ : a7_4;
<<<<<<< HEAD
*/

assign db_io = db;
assign ior_io = ior;
assign iow_io = iow;
assign eopp_io = eopp;
assign a3_0_io = a3_0;
assign a7_4_io = a7_4;
=======
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26


/*assign dreq_io = (state == 3'b0) ? dreq : 4'bZ;
assign db_io = (state == 3'b0) ? db : 8'bZ;
assign ior_io = (state == 3'b0) ? ior : 1'bZ;
assign iow_io = (state == 3'b0) ? iow : 1'bZ;
assign eopp_io = (state == 3'b0) ? eopp : 1'bZ;
assign a3_0_io = (state == 3'b0) ? a3_0 : 4'bZ;
assign a7_4_io = (state == 3'b0) ? a7_4 : 4'bZ;*/


always @(posedge clk, reset, mast_clr, drequest) begin

    if (reset == 1'b1) begin
        $display("Reset triggered");
        state <= IDLE;
        db <= Z_8;
        ior <= 1'bZ;
        iow <= 1'bZ;
        eopp <= 1'b1;
        a3_0 <= Z_4;
        a7_4 <= Z_4;
       
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
<<<<<<< HEAD
                    // Program Condition

                    if (ior_io == 1'b1 && iow_io == 1'b0) begin
=======

                    if (ior_io == 1'b0 && iow_io == 1'b0) begin
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
                        
                        case(a3_0_io)
                            4'b1000: begin
                                command <= db_io;
                            end
                            4'b1011: begin
                                if(db_io[3:2] != 2'b11) begin
<<<<<<< HEAD
                                    mode <= db_io[7:2];
=======
                                    mode <= db[7:2];
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
                                end
                            end
                            4'b1101: begin
                                mast_clr <= 1'b1;
                            end
                            4'b0000: begin

                                if(ff == 1'b0) begin
                                    curr_addr[7:0] <= db_io;
                                    base_addr[7:0] <= db_io;
                                    ff <= 1'b1;
                                end else begin
                                    curr_addr[15:8] <= db_io;
                                    base_addr[15:8] <= db_io;
                                    ff <= 1'b0;
                                end

                            end
                            4'b0001: begin
                                if(ff == 1'b0) begin
                                    curr_word[7:0] <= db_io;
                                    base_word[7:0] <= db_io;
                                    ff <= 1'b1;
                                end else begin
                                    curr_word[15:8] <= db_io;
                                    base_word[15:8] <= db_io;
                                    ff <= 1'b0;
                                end
                            end
                        endcase
                    end else if (ior_io == 1'b0 && iow_io == 1'b1) begin

                        case (a3_0_io)
                            4'b0000: begin

                                if (ff == 1'b0) begin
                                    db <= curr_addr[7:0];
                                    ff <= 1'b1;
                                end else begin
                                    db <= curr_addr[15:8];
                                    ff <= 1'b0;
                                end
                            end
                            4'b0001: begin

                                if (ff == 1'b0) begin
                                    db <= curr_word[7:0];
                                    ff <= 1'b1;
                                end else begin
                                    db <= curr_word[15:8];
                                    ff <= 1'b0;
                                end
                            end
                        endcase
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
<<<<<<< HEAD
                                    mode <= db_io[7:2];
=======
                                    mode <= db[7:2];
>>>>>>> dc6c761468ca77abbb0d29601c592cd4c0d15d26
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





                



