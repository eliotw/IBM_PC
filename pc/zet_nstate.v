/*
 *  Next state calculation for fetch FSM
 *  Copyright (C) 2010  Zeus Gomez Marmolejo <zeus@aluzina.org>
 *
 *  This file is part of the Zet processor. This processor is free
 *  hardware; you can redistribute it and/or modify it under the terms of
 *  the GNU General Public License as published by the Free Software
 *  Foundation; either version 3, or (at your option) any later version.
 *
 *  Zet is distrubuted in the hope that it will be useful, but WITHOUT
 *  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 *  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
 *  License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Zet; see the file COPYING. If not, see
 *  <http://www.gnu.org/licenses/>.
 */

module zet_nstate (
    input [2:0] state,
    input prefix,
    input need_modrm,
    input need_off,
    input need_imm,
    input end_seq,
    input [5:0] ftype,
    input of,
    input next_in_opco,
    input next_in_exec,
    input block,
    input div_exc,
    input tflm,
    input intr,
    input iflm,
    input nmir,
    input iflss,
    output reg [2:0] n_state,
    output [2:0] next_state
  );

  // Net declarations
  parameter opcod_st = 3'h0;
  parameter modrm_st = 3'h1;
  parameter offse_st = 3'h2;
  parameter immed_st = 3'h3;
  parameter execu_st = 3'h4;
  parameter fetch_st = 3'h5;

  wire into, end_instr, end_into;
  wire       intr_iflm;
  wire       intrs_tni;

  // Assignments
  assign into = (ftype==6'b111_010);
  assign end_into = into ? ~of : end_seq;
  assign end_instr = !div_exc && !intrs_tni && end_into && !next_in_exec;
  assign intr_iflm = intr & iflm;
  assign intrs_tni = (tflm | nmir | intr_iflm) & iflss;

  always @( * ) begin
    n_state = fetch_st;
    case(state)
        fetch_st: begin
            n_state = opcod_st;
        end
        opcod_st: begin
            if (prefix) n_state = opcod_st;
            else if (next_in_opco) n_state = opcod_st;
            else if (need_modrm) n_state = modrm_st;
            else if (need_off) n_state = offse_st;
            else if (need_imm) n_state = immed_st;
            else n_state = execu_st;
        end
        modrm_st: begin
            if (need_off) n_state = offse_st;
            else if (need_imm) n_state = immed_st;
            else n_state = execu_st;
        end
        offse_st: begin
            if (need_imm) n_state = immed_st;
            else n_state = execu_st;
        end
        immed_st: begin
            n_state = execu_st;
        end
        execu_st: begin
            if (end_instr) n_state = fetch_st;
            else n_state = execu_st;
        end
    endcase
  end

  assign next_state = block ? state : n_state;
endmodule
