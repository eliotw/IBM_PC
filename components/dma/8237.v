module intel8237A(
    clk,
    cs,
    reset,
    ready,
    hlda,
    dreq,
    db,
    ior,
    iow,
    eopp,
    a3_0,
    a7_4,
    hrq,
    dack,
    aen,
    adstb,
    memr,
    memw
);

input clk, cs, reset, ready, hlda;
input [3:0] dreq;
inout [7:0] db;
inout ior, iow, eopp;
inout [3:0] a3_0, a7_4;
output hrq, aen, adstb, memr, memw;
output [3:0] dack;

constant Z_8 = 8'bZ;
constant Z_4 = 4'bZ;
constant C0_16 = 16'b0;
constant C0_8 = 8'b0;
constant CFF_8 = 8'b11111111;
constant C0_6 = 6'b0;
constant C0_4 = 4'b0;
constant C1_4 = 4'b1111;
constant BT = 2'b10;

reg [15:0] curr_addr, curr_word, base_addr, base_word;
reg [7:0] command;
reg [5:0] mode;
reg [3:0] request, mask;

enum integer {IDLE=0, S0=1, SS1=2, SSB2=3, SS2=4, SS3=5, SS4=6} state;

wire [3:0] drequest;
wire ff, mast_clr;

assign drequest[0] = ((command[6] ^ dreq[0]) & ~mask[0]) | request[0];
assign drequest[1] = ((command[6] ^ dreq[1]) & ~mask[1]) | request[1];
assign drequest[2] = ((command[6] ^ dreq[2]) & ~mask[2]) | request[2];
assign drequest[3] = ((command[6] ^ dreq[3]) & ~mask[3]) | request[3];

always @(posedge clk, reset, mast_clr, drequest) begin
    if (reset == 1'b1) begin
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

        case(state)
            IDLE: begin
                state <= IDLE;
                if (hdla == 1'b0 && != C0_4) begin
                    state <= S0;
                    hrq <= 1'b1;
                end else if (hdla == 1'b0 && cs == 1'b0) begin

                    if (ior == 1'b0 && iow == 1'b0) begin
                        
                        case(a3_0)
                            4'b1000: begin
                                command <= db;
                            end
                            4'b1011: begin
                                if(db[3:2] != 2'b11) begin
                                    mode <= db[7:2];
                                end
                            end
                            4'b1101: begin
                                mast_clr <= 1'b1;
                            end
                            4'b0000: begin

                                if(ff == 1'b0) begin
                                    curr_addr[7:0] <= db;
                                    base_addr[7:0] <= db;
                                end else begin
                                    curr_addr[15:8] <= db;
                                    base_addr[15:8] <= db;
                                end

                            end
                            4'b0001: begin
                                if(ff == 1'b0) begin
                                    curr_addr[7:0] <= db;
                                    base_addr[7:0] <= db;
                                end else begin
                                    curr_addr[15:8] <= db;
                                    base_addr[15:8] <= db;
                                end
                            end
                        endcase
                    end else if (ior == 1'b0 && iow == 1'b1) begin

                        case (a3_0):
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
                end else if (hdla == 1'b1) begin
                    state <= SS1;
                end

                if (hdla == 1'b0 && cs == 1'b0) begin
                    state <= S0;
                    if (ior == 1'b1 && iow == 1'b0) begin
                        case (a3_0):
                            4'b1000: begin
                                command <= db;
                            end
                            4'b1011: begin
                                if(db[3:2] != 2'b11) begin
                                    mode <= db[7:2];
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
                    case(mode[1:0]):
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

                case(mode[1:0]) begin
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

                case(mode[1:0]):
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
                aen <= 1'b1
                a7_4 <= curr_addr[7:4];
                a3_0 <= curr_addr[3:0];
                dack[channel] <= command[7];

                case(mode[1:0]):
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





                



