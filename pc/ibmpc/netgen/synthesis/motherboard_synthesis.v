////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: motherboard_synthesis.v
// /___/   /\     Timestamp: Fri Oct 24 17:03:11 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim motherboard.ngc motherboard_synthesis.v 
// Device	: xc5vlx110t-1-ff1136
// Input file	: motherboard.ngc
// Output file	: /afs/ece.cmu.edu/usr/pmbrown/Private/IBM/IBM_PC/pc/ibmpc/netgen/synthesis/motherboard_synthesis.v
// # of Modules	: 1
// Design Name	: motherboard
// Xilinx        : /afs/ece.cmu.edu/support/xilinx/xilinx.release/14.2/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module motherboard (
  KEYBOARD_DATA, KEYBOARD_CLK, HDR1_10, HDR1_12, HDR1_14, HDR1_16, HDR1_2, HDR1_4, HDR1_6, HDR1_8, USER_CLK, PIEZO_SPEAKER
)/* synthesis syn_black_box syn_noprune=1 */;
  inout KEYBOARD_DATA;
  inout KEYBOARD_CLK;
  output HDR1_10;
  output HDR1_12;
  output HDR1_14;
  output HDR1_16;
  output HDR1_2;
  output HDR1_4;
  output HDR1_6;
  output HDR1_8;
  input USER_CLK;
  output PIEZO_SPEAKER;
  
  // synthesis translate_off
  
  wire KEYBOARD_CLK_BUFGP_9;
  wire KEYBOARD_CLK_BUFGP_inv_10;
  wire KEYBOARD_DATA_IBUF_12;
  wire N0;
  wire N0_shift1_14;
  wire N0_shift2_15;
  wire N0_shift3_16;
  wire N102;
  wire N125;
  wire N127;
  wire N128;
  wire N129;
  wire N131;
  wire N132;
  wire N135;
  wire N147;
  wire N150;
  wire N1511;
  wire N152;
  wire N153;
  wire N154;
  wire N157;
  wire N158;
  wire N164;
  wire N167;
  wire N170;
  wire N171;
  wire N175;
  wire N177;
  wire N179;
  wire N181;
  wire N183;
  wire N184;
  wire N190;
  wire N192;
  wire N196;
  wire N208;
  wire N216;
  wire N218;
  wire N23;
  wire N232;
  wire N234;
  wire N236;
  wire N238;
  wire N240;
  wire N242;
  wire N244;
  wire N246;
  wire N248;
  wire N250;
  wire N252;
  wire N254;
  wire N256;
  wire N258;
  wire N260;
  wire N262;
  wire N264;
  wire N266;
  wire N268;
  wire N270;
  wire N272;
  wire N274;
  wire N278;
  wire N282;
  wire N283;
  wire N285;
  wire N286;
  wire N288;
  wire N289;
  wire N293;
  wire N299;
  wire N3;
  wire N300;
  wire N302;
  wire N308;
  wire N310;
  wire N312;
  wire N314;
  wire N320;
  wire N322;
  wire N324;
  wire N332;
  wire N343;
  wire N345;
  wire N347;
  wire N349;
  wire N353;
  wire N355;
  wire N357;
  wire N361;
  wire N363;
  wire N364;
  wire N365;
  wire N366;
  wire N38;
  wire N4;
  wire N49;
  wire N5;
  wire N51;
  wire N52;
  wire N55;
  wire N56;
  wire N57;
  wire N58;
  wire N61;
  wire N65;
  wire N68;
  wire N7;
  wire N75;
  wire N76;
  wire N77;
  wire N811;
  wire N88;
  wire N89;
  wire N91;
  wire N92;
  wire PIEZO_SPEAKER_OBUF_127;
  wire USER_CLK_BUFGP_129;
  wire aen_n;
  wire clk;
  wire clk1;
  wire clk_LUT1;
  wire \d<0>LogicTrst10_166 ;
  wire \d<0>LogicTrst47_167 ;
  wire \d<1>LogicTrst10_169 ;
  wire \d<1>LogicTrst36_170 ;
  wire \d<2>LogicTrst10_172 ;
  wire \d<2>LogicTrst36_173 ;
  wire \d<3>LogicTrst10_175 ;
  wire \d<3>LogicTrst36_176 ;
  wire \d<4>LogicTrst10_178 ;
  wire \d<4>LogicTrst36_179 ;
  wire \d<5>LogicTrst10_181 ;
  wire \d<5>LogicTrst36_182 ;
  wire \d<6>LogicTrst10_184 ;
  wire \d<6>LogicTrst36_185 ;
  wire \d<7>LogicTrst10_187 ;
  wire \d<7>LogicTrst27_188 ;
  wire dack_0;
  wire dclk;
  wire dclk1;
  wire dma_aen_n;
  wire dma_cs_n;
  wire ior_n;
  wire iow_n;
  wire memr_n;
  wire memw_n;
  wire pclk;
  wire ppi_cs_n;
  wire ram_addr_sel_n;
  wire reset;
  wire \s0/vgamod/Madd_vga_addr_cy[5] ;
  wire \s0/vgamod/Madd_vga_addr_cy[7] ;
  wire \s0/vgamod/Mcount_blink_count_cy<10>_rt_211 ;
  wire \s0/vgamod/Mcount_blink_count_cy<11>_rt_213 ;
  wire \s0/vgamod/Mcount_blink_count_cy<12>_rt_215 ;
  wire \s0/vgamod/Mcount_blink_count_cy<13>_rt_217 ;
  wire \s0/vgamod/Mcount_blink_count_cy<14>_rt_219 ;
  wire \s0/vgamod/Mcount_blink_count_cy<15>_rt_221 ;
  wire \s0/vgamod/Mcount_blink_count_cy<16>_rt_223 ;
  wire \s0/vgamod/Mcount_blink_count_cy<17>_rt_225 ;
  wire \s0/vgamod/Mcount_blink_count_cy<18>_rt_227 ;
  wire \s0/vgamod/Mcount_blink_count_cy<19>_rt_229 ;
  wire \s0/vgamod/Mcount_blink_count_cy<1>_rt_231 ;
  wire \s0/vgamod/Mcount_blink_count_cy<20>_rt_233 ;
  wire \s0/vgamod/Mcount_blink_count_cy<21>_rt_235 ;
  wire \s0/vgamod/Mcount_blink_count_cy<2>_rt_237 ;
  wire \s0/vgamod/Mcount_blink_count_cy<3>_rt_239 ;
  wire \s0/vgamod/Mcount_blink_count_cy<4>_rt_241 ;
  wire \s0/vgamod/Mcount_blink_count_cy<5>_rt_243 ;
  wire \s0/vgamod/Mcount_blink_count_cy<6>_rt_245 ;
  wire \s0/vgamod/Mcount_blink_count_cy<7>_rt_247 ;
  wire \s0/vgamod/Mcount_blink_count_cy<8>_rt_249 ;
  wire \s0/vgamod/Mcount_blink_count_cy<9>_rt_251 ;
  wire \s0/vgamod/Mcount_blink_count_xor<22>_rt_253 ;
  wire \s0/vgamod/Mcount_h_count_cy<1>_rt_256 ;
  wire \s0/vgamod/Mcount_h_count_cy<2>_rt_258 ;
  wire \s0/vgamod/Mcount_h_count_cy<3>_rt_260 ;
  wire \s0/vgamod/Mcount_h_count_cy<4>_rt_262 ;
  wire \s0/vgamod/Mcount_h_count_cy<5>_rt_264 ;
  wire \s0/vgamod/Mcount_h_count_cy<6>_rt_266 ;
  wire \s0/vgamod/Mcount_h_count_cy<7>_rt_268 ;
  wire \s0/vgamod/Mcount_h_count_cy<8>_rt_270 ;
  wire \s0/vgamod/Mcount_h_count_xor<9>_rt_272 ;
  wire \s0/vgamod/Mcount_v_count_cy<1>_rt_275 ;
  wire \s0/vgamod/Mcount_v_count_cy<2>_rt_277 ;
  wire \s0/vgamod/Mcount_v_count_cy<3>_rt_279 ;
  wire \s0/vgamod/Mcount_v_count_cy<4>_rt_281 ;
  wire \s0/vgamod/Mcount_v_count_cy<5>_rt_283 ;
  wire \s0/vgamod/Mcount_v_count_cy<6>_rt_285 ;
  wire \s0/vgamod/Mcount_v_count_cy<7>_rt_287 ;
  wire \s0/vgamod/Mcount_v_count_cy<8>_rt_289 ;
  wire \s0/vgamod/Mcount_v_count_xor<9>_rt_291 ;
  wire \s0/vgamod/Result<0>1 ;
  wire \s0/vgamod/Result<0>2 ;
  wire \s0/vgamod/Result<1>1 ;
  wire \s0/vgamod/Result<1>2 ;
  wire \s0/vgamod/Result<2>1 ;
  wire \s0/vgamod/Result<2>2 ;
  wire \s0/vgamod/Result<3>1 ;
  wire \s0/vgamod/Result<3>2 ;
  wire \s0/vgamod/Result<4>1 ;
  wire \s0/vgamod/Result<4>2 ;
  wire \s0/vgamod/Result<5>1 ;
  wire \s0/vgamod/Result<5>2 ;
  wire \s0/vgamod/Result<6>1 ;
  wire \s0/vgamod/Result<6>2 ;
  wire \s0/vgamod/Result<7>1 ;
  wire \s0/vgamod/Result<7>2 ;
  wire \s0/vgamod/Result<8>1 ;
  wire \s0/vgamod/Result<8>2 ;
  wire \s0/vgamod/Result<9>1 ;
  wire \s0/vgamod/Result<9>2 ;
  wire \s0/vgamod/attr0_addr_not0001 ;
  wire \s0/vgamod/brown_fg ;
  wire \s0/vgamod/buff0_addr_not0001 ;
  wire \s0/vgamod/cursor_on_457 ;
  wire \s0/vgamod/cursor_on_and0000 ;
  wire \s0/vgamod/cursor_on_h_459 ;
  wire \s0/vgamod/cursor_on_h_cmp_eq0000 ;
  wire \s0/vgamod/cursor_on_h_cmp_eq0000749_461 ;
  wire \s0/vgamod/cursor_on_h_cmp_eq0000794_462 ;
  wire \s0/vgamod/cursor_on_v_463 ;
  wire \s0/vgamod/cursor_on_v_and0000 ;
  wire \s0/vgamod/cursor_on_v_and0000125_465 ;
  wire \s0/vgamod/cursor_on_v_and0000179_466 ;
  wire \s0/vgamod/cursor_on_v_and0000260_467 ;
  wire \s0/vgamod/cursor_on_v_and000033_468 ;
  wire \s0/vgamod/d_and0000 ;
  wire \s0/vgamod/d_and00000_470 ;
  wire \s0/vgamod/d_and00001_471 ;
  wire \s0/vgamod/d_and000012_472 ;
  wire \s0/vgamod/d_and000079_473 ;
  wire \s0/vgamod/d_or0000_inv ;
  wire \s0/vgamod/dataout_and0000 ;
  wire \s0/vgamod/dataout_mux0000<0>1 ;
  wire \s0/vgamod/dataout_mux0000<0>11_484 ;
  wire \s0/vgamod/dataout_mux0000<0>89 ;
  wire \s0/vgamod/dataout_mux0000<0>891_486 ;
  wire \s0/vgamod/dataout_mux0000<0>892_487 ;
  wire \s0/vgamod/dataout_mux0000<0>99 ;
  wire \s0/vgamod/dataout_mux0000<0>991 ;
  wire \s0/vgamod/dataout_mux0000<0>9911_490 ;
  wire \s0/vgamod/dataout_mux0000[1] ;
  wire \s0/vgamod/dataout_mux0000<1>1_492 ;
  wire \s0/vgamod/dataout_mux0000<1>2_493 ;
  wire \s0/vgamod/dataout_mux0000[2] ;
  wire \s0/vgamod/dataout_mux0000<2>1_495 ;
  wire \s0/vgamod/dataout_mux0000<2>2_496 ;
  wire \s0/vgamod/dataout_mux0000<3>91_497 ;
  wire \s0/vgamod/dataout_mux0000<3>95 ;
  wire \s0/vgamod/dataout_mux0000<3>951 ;
  wire \s0/vgamod/dataout_mux0000<3>9511_500 ;
  wire \s0/vgamod/dataout_mux0000[4] ;
  wire \s0/vgamod/dataout_mux0000[5] ;
  wire \s0/vgamod/dataout_mux0000[6] ;
  wire \s0/vgamod/fg_or_bg ;
  wire \s0/vgamod/h_count_cmp_eq0000_515 ;
  wire \s0/vgamod/h_count_or0000 ;
  wire \s0/vgamod/horiz_sync_524 ;
  wire \s0/vgamod/horiz_sync_and0000 ;
  wire \s0/vgamod/horiz_sync_mux0000 ;
  wire \s0/vgamod/intense_527 ;
  wire \s0/vgamod/intense_or0000_inv ;
  wire \s0/vgamod/mem_range ;
  wire \s0/vgamod/new_attr ;
  wire \s0/vgamod/new_buff ;
  wire \s0/vgamod/row_addr_not0001 ;
  wire \s0/vgamod/rst_inv ;
  wire \s0/vgamod/v_count_cmp_eq0000 ;
  wire \s0/vgamod/v_count_or0000 ;
  wire \s0/vgamod/v_count_or00001_607 ;
  wire \s0/vgamod/vert_sync_619 ;
  wire \s0/vgamod/vert_sync_and0000_620 ;
  wire \s0/vgamod/vert_sync_mux0000 ;
  wire \s0/vgamod/vga0_rw_622 ;
  wire \s0/vgamod/vga1_rw_623 ;
  wire \s0/vgamod/vga2_rw_624 ;
  wire \s0/vgamod/vga_red_o_or0000 ;
  wire \s0/vgamod/video_on_666 ;
  wire \s0/vgamod/video_on1 ;
  wire \s0/vgamod/video_on_h_668 ;
  wire \s0/vgamod/video_on_h_and0000 ;
  wire \s0/vgamod/video_on_h_mux0000 ;
  wire \s0/vgamod/video_on_not0001_inv ;
  wire \s0/vgamod/video_on_v_672 ;
  wire \s0/vgamod/video_on_v_mux0000 ;
  wire \s0/vgamod/wr_adr ;
  wire \s0/vgamod/wr_cur_end ;
  wire \s0/vgamod/wr_cur_start ;
  wire \s0/vgamod/wr_hcursor ;
  wire \s0/vgamod/wr_vcursor ;
  wire s0_n;
  wire \s1/ale ;
  wire \s1/ale1 ;
  wire \s1/den ;
  wire \s1/dtr ;
  wire \s1/i8259/Mshreg_icws_1_704 ;
  wire \s1/i8259/dout_not0001 ;
  wire \s1/i8259/eoir[0] ;
  wire \s1/i8259/eoir_0_0_not0000 ;
  wire \s1/i8259/eoir[1] ;
  wire \s1/i8259/eoir[3] ;
  wire \s1/i8259/eoir[4] ;
  wire \s1/i8259/eoir_not0001 ;
  wire \s1/i8259/icws_and0000_718 ;
  wire \s1/ready ;
  wire \s1/rqgti_n ;
  wire \s1/u8/ab_inv ;
  wire \s1/u8/ba_inv ;
  wire s1_n;
  wire \s2/aen_brd_763 ;
  wire \s2/aen_brd_1_764 ;
  wire \s2/b1 ;
  wire \s2/b2 ;
  wire \s2/b3_767 ;
  wire \s2/b5_768 ;
  wire \s2/clk_n ;
  wire \s2/holda_770 ;
  wire \s2/rdy_wait_771 ;
  wire \s2/rdy_wait_mux0000 ;
  wire \s2/td2/td5/q_773 ;
  wire s2_n;
  wire \s3/ls4/y_and0000 ;
  wire \s3/rasc ;
  wire \s3/td0/td25/Mshreg_q_777 ;
  wire \s3/td0/td25/q_778 ;
  wire \s3/td0/td25/q1_779 ;
  wire \s3/td0/td25/q11_780 ;
  wire \s3/td0/td5/q_781 ;
  wire \s4/i8237/Madd__add0000_cy<10>_rt_784 ;
  wire \s4/i8237/Madd__add0000_cy<11>_rt_786 ;
  wire \s4/i8237/Madd__add0000_cy<12>_rt_788 ;
  wire \s4/i8237/Madd__add0000_cy<13>_rt_790 ;
  wire \s4/i8237/Madd__add0000_cy<14>_rt_792 ;
  wire \s4/i8237/Madd__add0000_cy<1>_rt_794 ;
  wire \s4/i8237/Madd__add0000_cy<2>_rt_796 ;
  wire \s4/i8237/Madd__add0000_cy<3>_rt_798 ;
  wire \s4/i8237/Madd__add0000_cy<4>_rt_800 ;
  wire \s4/i8237/Madd__add0000_cy<5>_rt_802 ;
  wire \s4/i8237/Madd__add0000_cy<6>_rt_804 ;
  wire \s4/i8237/Madd__add0000_cy<7>_rt_806 ;
  wire \s4/i8237/Madd__add0000_cy<8>_rt_808 ;
  wire \s4/i8237/Madd__add0000_cy<9>_rt_810 ;
  wire \s4/i8237/Madd__add0000_xor<15>_rt_812 ;
  wire \s4/i8237/Msub__sub0000_cy<0>_rt_814 ;
  wire \s4/i8237/Msub__sub0001_cy<0>_rt_845 ;
  wire \s4/i8237/Mtridata_db_and0000 ;
  wire \s4/i8237/Mtridata_db_cmp_eq0000 ;
  wire \s4/i8237/Mtridata_db_cmp_eq0001 ;
  wire \s4/i8237/Mtridata_ior_910 ;
  wire \s4/i8237/Mtridata_ior_mux0000 ;
  wire \s4/i8237/Mtridata_ior_mux00001_912 ;
  wire \s4/i8237/Mtridata_iow_913 ;
  wire \s4/i8237/Mtridata_iow_mux0000 ;
  wire \s4/i8237/Mtridata_iow_mux00001_915 ;
  wire \s4/i8237/Mtrien_a3_0_916 ;
  wire \s4/i8237/Mtrien_a3_0_mux0000 ;
  wire \s4/i8237/Mtrien_a7_4_918 ;
  wire \s4/i8237/Mtrien_db_919 ;
  wire \s4/i8237/Mtrien_db_mux0000_920 ;
  wire \s4/i8237/Mtrien_eopp_921 ;
  wire \s4/i8237/Mtrien_ior_922 ;
  wire \s4/i8237/Mtrien_ior_mux0000 ;
  wire \s4/i8237/Mtrien_iow_924 ;
  wire \s4/i8237/Mtrien_iow_mux0000 ;
  wire \s4/i8237/adstb_974 ;
  wire \s4/i8237/adstb_mux0000 ;
  wire \s4/i8237/adstb_needed_976 ;
  wire \s4/i8237/adstb_needed_mux0000_977 ;
  wire \s4/i8237/adstb_needed_or0000 ;
  wire \s4/i8237/base_addr_15_not0001 ;
  wire \s4/i8237/base_addr_7_not0001 ;
  wire \s4/i8237/base_word_15_not0001 ;
  wire \s4/i8237/base_word_7_not0001 ;
  wire \s4/i8237/command_cmp_eq0000 ;
  wire \s4/i8237/curr_addr_0_mux0000 ;
  wire \s4/i8237/curr_addr_0_mux000028 ;
  wire \s4/i8237/curr_addr_0_mux0000281_1023 ;
  wire \s4/i8237/curr_addr_0_mux0000282_1024 ;
  wire \s4/i8237/curr_addr_0_mux000043 ;
  wire \s4/i8237/curr_addr_10_mux0000 ;
  wire \s4/i8237/curr_addr_10_mux000024 ;
  wire \s4/i8237/curr_addr_10_mux0000241_1030 ;
  wire \s4/i8237/curr_addr_10_mux0000242_1031 ;
  wire \s4/i8237/curr_addr_10_mux000040 ;
  wire \s4/i8237/curr_addr_11_mux0000 ;
  wire \s4/i8237/curr_addr_11_mux000024 ;
  wire \s4/i8237/curr_addr_11_mux0000241_1036 ;
  wire \s4/i8237/curr_addr_11_mux0000242_1037 ;
  wire \s4/i8237/curr_addr_12_mux0000 ;
  wire \s4/i8237/curr_addr_12_mux000024 ;
  wire \s4/i8237/curr_addr_12_mux0000241_1041 ;
  wire \s4/i8237/curr_addr_12_mux0000242_1042 ;
  wire \s4/i8237/curr_addr_13_mux0000 ;
  wire \s4/i8237/curr_addr_13_mux000024 ;
  wire \s4/i8237/curr_addr_13_mux0000241_1046 ;
  wire \s4/i8237/curr_addr_13_mux0000242_1047 ;
  wire \s4/i8237/curr_addr_14_mux0000 ;
  wire \s4/i8237/curr_addr_14_mux000024 ;
  wire \s4/i8237/curr_addr_14_mux0000241_1051 ;
  wire \s4/i8237/curr_addr_14_mux0000242_1052 ;
  wire \s4/i8237/curr_addr_15_mux0000 ;
  wire \s4/i8237/curr_addr_15_mux000024 ;
  wire \s4/i8237/curr_addr_15_mux0000241_1056 ;
  wire \s4/i8237/curr_addr_15_mux0000242_1057 ;
  wire \s4/i8237/curr_addr_1_mux0000 ;
  wire \s4/i8237/curr_addr_1_mux000029 ;
  wire \s4/i8237/curr_addr_1_mux0000291_1060 ;
  wire \s4/i8237/curr_addr_1_mux0000292_1061 ;
  wire \s4/i8237/curr_addr_2_mux0000 ;
  wire \s4/i8237/curr_addr_2_mux000029 ;
  wire \s4/i8237/curr_addr_2_mux0000291_1065 ;
  wire \s4/i8237/curr_addr_2_mux0000292_1066 ;
  wire \s4/i8237/curr_addr_3_mux0000 ;
  wire \s4/i8237/curr_addr_3_mux000028 ;
  wire \s4/i8237/curr_addr_3_mux0000281_1070 ;
  wire \s4/i8237/curr_addr_3_mux0000282_1071 ;
  wire \s4/i8237/curr_addr_4_mux0000 ;
  wire \s4/i8237/curr_addr_4_mux000028 ;
  wire \s4/i8237/curr_addr_4_mux0000281_1075 ;
  wire \s4/i8237/curr_addr_4_mux0000282_1076 ;
  wire \s4/i8237/curr_addr_5_mux0000 ;
  wire \s4/i8237/curr_addr_5_mux000028 ;
  wire \s4/i8237/curr_addr_5_mux0000281_1080 ;
  wire \s4/i8237/curr_addr_5_mux0000282_1081 ;
  wire \s4/i8237/curr_addr_6_mux0000 ;
  wire \s4/i8237/curr_addr_6_mux000029 ;
  wire \s4/i8237/curr_addr_6_mux0000291_1085 ;
  wire \s4/i8237/curr_addr_6_mux0000292_1086 ;
  wire \s4/i8237/curr_addr_7_mux0000 ;
  wire \s4/i8237/curr_addr_7_mux000024 ;
  wire \s4/i8237/curr_addr_7_mux0000241_1090 ;
  wire \s4/i8237/curr_addr_7_mux0000242_1091 ;
  wire \s4/i8237/curr_addr_8_mux0000 ;
  wire \s4/i8237/curr_addr_8_mux000024 ;
  wire \s4/i8237/curr_addr_8_mux0000241_1095 ;
  wire \s4/i8237/curr_addr_8_mux0000242_1096 ;
  wire \s4/i8237/curr_addr_9_mux0000 ;
  wire \s4/i8237/curr_addr_9_mux000024 ;
  wire \s4/i8237/curr_addr_9_mux0000241_1100 ;
  wire \s4/i8237/curr_addr_9_mux0000242_1101 ;
  wire \s4/i8237/curr_word_0_mux0000_1103 ;
  wire \s4/i8237/curr_word_10_mux0000_1106 ;
  wire \s4/i8237/curr_word_11_mux0000_1108 ;
  wire \s4/i8237/curr_word_12_mux0000_1110 ;
  wire \s4/i8237/curr_word_13_mux0000_1112 ;
  wire \s4/i8237/curr_word_14_mux0000_1114 ;
  wire \s4/i8237/curr_word_15_mux0000_1116 ;
  wire \s4/i8237/curr_word_1_mux0000_1117 ;
  wire \s4/i8237/curr_word_2_mux0000_1119 ;
  wire \s4/i8237/curr_word_3_mux0000_1121 ;
  wire \s4/i8237/curr_word_4_mux0000_1123 ;
  wire \s4/i8237/curr_word_5_mux0000_1125 ;
  wire \s4/i8237/curr_word_6_mux0000_1127 ;
  wire \s4/i8237/curr_word_7_mux0000_1129 ;
  wire \s4/i8237/curr_word_8_mux0000_1131 ;
  wire \s4/i8237/curr_word_9_mux0000_1133 ;
  wire \s4/i8237/dack_0_mux0000 ;
  wire \s4/i8237/dack_1_mux0000 ;
  wire \s4/i8237/ff_1139 ;
  wire \s4/i8237/ff_mux0000 ;
  wire \s4/i8237/ff_not0001 ;
  wire \s4/i8237/mast_clr_1142 ;
  wire \s4/i8237/mast_clr_inv ;
  wire \s4/i8237/mast_clr_mux00001 ;
  wire \s4/i8237/memr_1145 ;
  wire \s4/i8237/memw_1146 ;
  wire \s4/i8237/state_and0000 ;
  wire \s4/i8237/state_and0001 ;
  wire \s4/i8237/state_cmp_eq0002 ;
  wire \s4/i8237/state_cmp_eq0008 ;
  wire \s4/i8237/state_cmp_eq0009 ;
  wire \s4/i8237/state_cmp_eq0009104_1167 ;
  wire \s4/i8237/state_cmp_eq000935_1168 ;
  wire \s4/i8237/state_mux0000<1>1 ;
  wire \s4/i8237/state_mux0000<1>11_1172 ;
  wire \s4/i8237/state_or0004 ;
  wire \s5/ls2450/ab_inv ;
  wire \s5/ls2450/ba_inv ;
  wire \s5/rommod/csv_inv ;
  wire \s6/ls2450/ba_inv ;
  wire \s6/md<0>LogicTrst0_1206 ;
  wire \s6/md<0>LogicTrst11_1207 ;
  wire \s6/md<0>LogicTrst23_1208 ;
  wire \s6/md<0>LogicTrst5_1209 ;
  wire \s6/md<0>LogicTrst54 ;
  wire \s6/md<1>LogicTrst0_1212 ;
  wire \s6/md<1>LogicTrst11_1213 ;
  wire \s6/md<1>LogicTrst23_1214 ;
  wire \s6/md<1>LogicTrst5_1215 ;
  wire \s6/md<2>LogicTrst0_1217 ;
  wire \s6/md<2>LogicTrst11_1218 ;
  wire \s6/md<2>LogicTrst23_1219 ;
  wire \s6/md<2>LogicTrst5_1220 ;
  wire \s6/md<3>LogicTrst0_1222 ;
  wire \s6/md<3>LogicTrst11_1223 ;
  wire \s6/md<3>LogicTrst23_1224 ;
  wire \s6/md<3>LogicTrst5_1225 ;
  wire \s6/md<3>LogicTrst58 ;
  wire \s6/md<4>LogicTrst0_1228 ;
  wire \s6/md<4>LogicTrst11_1229 ;
  wire \s6/md<4>LogicTrst23_1230 ;
  wire \s6/md<4>LogicTrst5_1231 ;
  wire \s6/md<5>LogicTrst0_1233 ;
  wire \s6/md<5>LogicTrst11_1234 ;
  wire \s6/md<5>LogicTrst23_1235 ;
  wire \s6/md<5>LogicTrst5_1236 ;
  wire \s6/md<6>LogicTrst0_1238 ;
  wire \s6/md<6>LogicTrst11_1239 ;
  wire \s6/md<6>LogicTrst23_1240 ;
  wire \s6/md<6>LogicTrst5_1241 ;
  wire \s6/md<7>LogicTrst0_1243 ;
  wire \s6/md<7>LogicTrst11_1244 ;
  wire \s6/md<7>LogicTrst23_1245 ;
  wire \s6/md<7>LogicTrst5_1246 ;
  wire \s6/mdp ;
  wire \s6/mdpLogicTrst10_1248 ;
  wire \s6/mdpLogicTrst45_1249 ;
  wire \s6/mdpLogicTrst62_1250 ;
  wire \s6/mdpLogicTrst68_1251 ;
  wire \s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ;
  wire \s6/rb0/central_ram_core/fsm_FSM_FFd1-In ;
  wire \s6/rb0/central_ram_core/fsm_FSM_FFd2_1254 ;
  wire \s6/rb0/central_ram_core/fsm_FSM_FFd2-In ;
  wire \s6/rb0/central_ram_core/we ;
  wire \s6/rb0/enexp ;
  wire \s6/rb0/mdp_out ;
  wire \s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 ;
  wire \s6/rb1/central_ram_core/fsm_FSM_FFd1-In ;
  wire \s6/rb1/central_ram_core/fsm_FSM_FFd2_1269 ;
  wire \s6/rb1/central_ram_core/fsm_FSM_FFd2-In ;
  wire \s6/rb1/enexp ;
  wire \s6/rb1/mdp_out ;
  wire \s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 ;
  wire \s6/rb2/central_ram_core/fsm_FSM_FFd1-In ;
  wire \s6/rb2/central_ram_core/fsm_FSM_FFd2_1283 ;
  wire \s6/rb2/central_ram_core/fsm_FSM_FFd2-In ;
  wire \s6/rb2/enexp ;
  wire \s6/rb2/mdp_out ;
  wire \s6/rb3/central_ram_core/fsm_FSM_FFd1_1295 ;
  wire \s6/rb3/central_ram_core/fsm_FSM_FFd1-In ;
  wire \s6/rb3/central_ram_core/fsm_FSM_FFd2_1297 ;
  wire \s6/rb3/central_ram_core/fsm_FSM_FFd2-In ;
  wire \s6/rb3/enexp ;
  wire \s6/rb3/mdp_out ;
  wire \s8/drq0_1309 ;
  wire \s8/i8253/vcs/C0/CLROUT_ ;
  wire \s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ;
  wire \s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ;
  wire \s8/i8253/vcs/C0/CNTREG/LOAD_1329 ;
  wire \s8/i8253/vcs/C0/CNTREG/LOAD_and0000 ;
  wire \s8/i8253/vcs/C0/CNTREG/LOAD_or0000_1331 ;
  wire \s8/i8253/vcs/C0/CNTREG/OUTEN_1332 ;
  wire \s8/i8253/vcs/C0/CNTREG/lsbflag_1333 ;
  wire \s8/i8253/vcs/C0/CNTREG/lsbflag_and0000 ;
  wire \s8/i8253/vcs/C0/CNTREG/lsbflag_and0001 ;
  wire \s8/i8253/vcs/C0/COUNTLSB<1>1_1336 ;
  wire \s8/i8253/vcs/C0/DOWNCNTR/COUNT_eqn_inv ;
  wire \s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ;
  wire \s8/i8253/vcs/C0/DOWNCNTR/VLOADCNT_1386 ;
  wire \s8/i8253/vcs/C0/LOADCNT ;
  wire \s8/i8253/vcs/C0/MODEREG/MODE_and0000 ;
  wire \s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ;
  wire \s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 ;
  wire \s8/i8253/vcs/C0/MODETRIG ;
  wire \s8/i8253/vcs/C0/MODEWRITE ;
  wire \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_1398 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000135_1399 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000188_1400 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_mux0000 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_1402 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000128_1404 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000158_1405 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_mux00002_1406 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_mux000027_1407 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_mux000088_1408 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/OUT_not0001 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/RELOAD_1410 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/RELOAD_mux0000 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/RELOAD_or0000 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/SETOUT__inv ;
  wire \s8/i8253/vcs/C0/OUTCTRL/TRIG_1414 ;
  wire \s8/i8253/vcs/C0/OUTCTRL/TRIG_or0000 ;
  wire \s8/i8253/vcs/C0/READ/CLRREADLSB_1416 ;
  wire \s8/i8253/vcs/C0/READ/CLRREADLSB_mux0000 ;
  wire \s8/i8253/vcs/C0/READ/DREG_not0001 ;
  wire \s8/i8253/vcs/C0/READ/D_and0000 ;
  wire \s8/i8253/vcs/C0/READ/READLSB_1436 ;
  wire \s8/i8253/vcs/C1/CLROUT_ ;
  wire \s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ;
  wire \s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ;
  wire \s8/i8253/vcs/C1/CNTREG/LOAD_1456 ;
  wire \s8/i8253/vcs/C1/CNTREG/LOAD_and0000 ;
  wire \s8/i8253/vcs/C1/CNTREG/LOAD_or0000_1458 ;
  wire \s8/i8253/vcs/C1/CNTREG/OUTEN_1459 ;
  wire \s8/i8253/vcs/C1/CNTREG/lsbflag_1460 ;
  wire \s8/i8253/vcs/C1/CNTREG/lsbflag_and0000 ;
  wire \s8/i8253/vcs/C1/CNTREG/lsbflag_and0001 ;
  wire \s8/i8253/vcs/C1/COUNTLSB<1>1_1463 ;
  wire \s8/i8253/vcs/C1/DOWNCNTR/COUNT_eqn_inv ;
  wire \s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ;
  wire \s8/i8253/vcs/C1/DOWNCNTR/VLOADCNT_1513 ;
  wire \s8/i8253/vcs/C1/LOADCNT ;
  wire \s8/i8253/vcs/C1/MODEREG/MODE_and0000 ;
  wire \s8/i8253/vcs/C1/MODETRIG ;
  wire \s8/i8253/vcs/C1/MODEWRITE ;
  wire \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_1523 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000135_1524 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000188_1525 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_mux0000 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_1527 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000128_1529 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000158_1530 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_mux00002_1531 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_mux000027_1532 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_mux000088_1533 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/OUT_not0001 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/RELOAD_1535 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/RELOAD_mux0000 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/RELOAD_or0000 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/SETOUT__inv ;
  wire \s8/i8253/vcs/C1/OUTCTRL/TRIG_1539 ;
  wire \s8/i8253/vcs/C1/OUTCTRL/TRIG_or0000 ;
  wire \s8/i8253/vcs/C1/READ/CLRREADLSB_1541 ;
  wire \s8/i8253/vcs/C1/READ/CLRREADLSB_mux0000 ;
  wire \s8/i8253/vcs/C1/READ/DREG_not0001 ;
  wire \s8/i8253/vcs/C1/READ/D_and0000 ;
  wire \s8/i8253/vcs/C1/READ/READLSB_1561 ;
  wire \s8/i8253/vcs/C2/CLROUT_ ;
  wire \s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ;
  wire \s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ;
  wire \s8/i8253/vcs/C2/CNTREG/LOAD_1581 ;
  wire \s8/i8253/vcs/C2/CNTREG/LOAD_and0000 ;
  wire \s8/i8253/vcs/C2/CNTREG/LOAD_or0000_1583 ;
  wire \s8/i8253/vcs/C2/CNTREG/OUTEN_1584 ;
  wire \s8/i8253/vcs/C2/CNTREG/lsbflag_1585 ;
  wire \s8/i8253/vcs/C2/CNTREG/lsbflag_and0000 ;
  wire \s8/i8253/vcs/C2/CNTREG/lsbflag_and0001 ;
  wire \s8/i8253/vcs/C2/COUNTLSB<1>1_1588 ;
  wire \s8/i8253/vcs/C2/DOWNCNTR/COUNT_eqn_inv ;
  wire \s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ;
  wire \s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ;
  wire \s8/i8253/vcs/C2/DOWNCNTR/VLOADCNT_1639 ;
  wire \s8/i8253/vcs/C2/LOADCNT ;
  wire \s8/i8253/vcs/C2/MODEREG/MODE_and0000 ;
  wire \s8/i8253/vcs/C2/MODETRIG ;
  wire \s8/i8253/vcs/C2/MODEWRITE ;
  wire \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_1649 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000135_1650 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000188_1651 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_mux0000 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_1653 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000120_1655 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000150_1656 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000039_1657 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000047_1658 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000069_1659 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000075_1660 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/OUT_not0001 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/RELOAD_1662 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/RELOAD_mux0000_1663 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/RELOAD_or0000 ;
  wire \s8/i8253/vcs/C2/OUTCTRL/SETOUT__inv ;
  wire \s8/i8253/vcs/C2/OUTCTRL/TRIG_1666 ;
  wire \s8/i8253/vcs/C2/READ/CLRREADLSB_1667 ;
  wire \s8/i8253/vcs/C2/READ/CLRREADLSB_mux0000 ;
  wire \s8/i8253/vcs/C2/READ/DREG_not0001 ;
  wire \s8/i8253/vcs/C2/READ/D_and0000 ;
  wire \s8/i8253/vcs/C2/READ/READLSB_1687 ;
  wire \s8/i8253/vcs/Eqn_01_mand1_1688 ;
  wire \s8/i8253/vcs/Eqn_02_mand1_1689 ;
  wire \s8/i8253/vcs/Eqn_0_mand1_1690 ;
  wire \s8/i8253/vcs/Eqn_101_mand1_1691 ;
  wire \s8/i8253/vcs/Eqn_102_mand1_1692 ;
  wire \s8/i8253/vcs/Eqn_10_mand1_1693 ;
  wire \s8/i8253/vcs/Eqn_111_mand1_1694 ;
  wire \s8/i8253/vcs/Eqn_112_mand1_1695 ;
  wire \s8/i8253/vcs/Eqn_11_mand1_1696 ;
  wire \s8/i8253/vcs/Eqn_121_mand1_1697 ;
  wire \s8/i8253/vcs/Eqn_122_mand1_1698 ;
  wire \s8/i8253/vcs/Eqn_12_mand1_1699 ;
  wire \s8/i8253/vcs/Eqn_131_mand1_1700 ;
  wire \s8/i8253/vcs/Eqn_132_mand1_1701 ;
  wire \s8/i8253/vcs/Eqn_13_mand1_1702 ;
  wire \s8/i8253/vcs/Eqn_141_mand1_1703 ;
  wire \s8/i8253/vcs/Eqn_142_mand1_1704 ;
  wire \s8/i8253/vcs/Eqn_14_mand1_1705 ;
  wire \s8/i8253/vcs/Eqn_16_mand1_1706 ;
  wire \s8/i8253/vcs/Eqn_17_mand1_1707 ;
  wire \s8/i8253/vcs/Eqn_1_mand1_1708 ;
  wire \s8/i8253/vcs/Eqn_21_mand1_1709 ;
  wire \s8/i8253/vcs/Eqn_22_mand1_1710 ;
  wire \s8/i8253/vcs/Eqn_2_mand1_1711 ;
  wire \s8/i8253/vcs/Eqn_31_mand1_1712 ;
  wire \s8/i8253/vcs/Eqn_32_mand1_1713 ;
  wire \s8/i8253/vcs/Eqn_3_mand1_1714 ;
  wire \s8/i8253/vcs/Eqn_41_mand1_1715 ;
  wire \s8/i8253/vcs/Eqn_42_mand1_1716 ;
  wire \s8/i8253/vcs/Eqn_4_mand1_1717 ;
  wire \s8/i8253/vcs/Eqn_51_mand1_1718 ;
  wire \s8/i8253/vcs/Eqn_52_mand1_1719 ;
  wire \s8/i8253/vcs/Eqn_5_mand1_1720 ;
  wire \s8/i8253/vcs/Eqn_61_mand1_1721 ;
  wire \s8/i8253/vcs/Eqn_62_mand1_1722 ;
  wire \s8/i8253/vcs/Eqn_6_mand1_1723 ;
  wire \s8/i8253/vcs/Eqn_71_mand1_1724 ;
  wire \s8/i8253/vcs/Eqn_72_mand1_1725 ;
  wire \s8/i8253/vcs/Eqn_7_mand1_1726 ;
  wire \s8/i8253/vcs/Eqn_81_mand1_1727 ;
  wire \s8/i8253/vcs/Eqn_82_mand1_1728 ;
  wire \s8/i8253/vcs/Eqn_8_mand1_1729 ;
  wire \s8/i8253/vcs/Eqn_91_mand1_1730 ;
  wire \s8/i8253/vcs/Eqn_92_mand1_1731 ;
  wire \s8/i8253/vcs/Eqn_9_mand1_1732 ;
  wire \s8/i8253/vcs/Result<0>1 ;
  wire \s8/i8253/vcs/Result<0>2 ;
  wire \s8/i8253/vcs/Result<10>1 ;
  wire \s8/i8253/vcs/Result<10>2 ;
  wire \s8/i8253/vcs/Result<11>1 ;
  wire \s8/i8253/vcs/Result<11>2 ;
  wire \s8/i8253/vcs/Result<12>1 ;
  wire \s8/i8253/vcs/Result<12>2 ;
  wire \s8/i8253/vcs/Result<13>1 ;
  wire \s8/i8253/vcs/Result<13>2 ;
  wire \s8/i8253/vcs/Result<14>1 ;
  wire \s8/i8253/vcs/Result<14>2 ;
  wire \s8/i8253/vcs/Result<15>1 ;
  wire \s8/i8253/vcs/Result<15>2 ;
  wire \s8/i8253/vcs/Result<1>1 ;
  wire \s8/i8253/vcs/Result<1>2 ;
  wire \s8/i8253/vcs/Result<2>1 ;
  wire \s8/i8253/vcs/Result<2>2 ;
  wire \s8/i8253/vcs/Result<3>1 ;
  wire \s8/i8253/vcs/Result<3>2 ;
  wire \s8/i8253/vcs/Result<4>1 ;
  wire \s8/i8253/vcs/Result<4>2 ;
  wire \s8/i8253/vcs/Result<5>1 ;
  wire \s8/i8253/vcs/Result<5>2 ;
  wire \s8/i8253/vcs/Result<6>1 ;
  wire \s8/i8253/vcs/Result<6>2 ;
  wire \s8/i8253/vcs/Result<7>1 ;
  wire \s8/i8253/vcs/Result<7>2 ;
  wire \s8/i8253/vcs/Result<8>1 ;
  wire \s8/i8253/vcs/Result<8>2 ;
  wire \s8/i8253/vcs/Result<9>1 ;
  wire \s8/i8253/vcs/Result<9>2 ;
  wire \s8/pclka_1781 ;
  wire \s8/pclka1 ;
  wire \s8/pclka_not0001 ;
  wire \s9/i8255/pb[1] ;
  wire \s9/i8255/pb[2] ;
  wire \s9/i8255/pb[7] ;
  wire \s9/i8255/pb_cmp_eq0000 ;
  wire \s9/i8255/pdo_not0001 ;
  wire \s9/i8255/pds_inv ;
  wire \s9/keyboard/N5 ;
  wire \s9/keyboard/N6 ;
  wire \s9/keyboard/irq1_1808 ;
  wire \s9/keyboard/irq1_mux00001 ;
  wire \s9/keyboard/keyinmod/Mshreg_b_FSM_FFd11_1810 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd10_1811 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd11_1812 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd2_1813 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd3_1814 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd4_1815 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd5_1816 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd6_1817 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd7_1818 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd8_1819 ;
  wire \s9/keyboard/keyinmod/b_FSM_FFd9_1820 ;
  wire \s9/keyboard/keyinmod/newdata_1829 ;
  wire \s9/keyboard/keyinmod/newdata_mux00001_1830 ;
  wire \s9/keyboard/pa_mux0000<0>1_1839 ;
  wire \s9/keyboard/pa_mux0000<1>41 ;
  wire \s9/keyboard/pa_mux0000<1>411_1842 ;
  wire \s9/keyboard/state_FSM_FFd1_1849 ;
  wire \s9/keyboard/state_FSM_FFd1-In ;
  wire \s9/keyboard/state_FSM_FFd2_1851 ;
  wire \s9/keyboard/state_FSM_FFd2-In ;
  wire \s9/keyboard/state_FSM_FFd3_1853 ;
  wire \s9/keyboard/state_FSM_FFd3-In ;
  wire \s9/keyboard/state_cmp_eq0000_1855 ;
  wire \s9/keyboard_Mrom_tdata11 ;
  wire \s9/keyboard_Mrom_tdata111_1865 ;
  wire \s9/keyboard_Mrom_tdata112_1866 ;
  wire \s9/keyboard_Mrom_tdata11_f7_1867 ;
  wire \s9/keyboard_Mrom_tdata11_f71 ;
  wire \s9/keyboard_Mrom_tdata11_f7_rt_1869 ;
  wire \s9/keyboard_Mrom_tdata16_1870 ;
  wire \s9/keyboard_Mrom_tdata161_1871 ;
  wire \s9/keyboard_Mrom_tdata162_1872 ;
  wire \s9/keyboard_Mrom_tdata16_f7_1873 ;
  wire \s9/keyboard_Mrom_tdata16_f71 ;
  wire \s9/keyboard_Mrom_tdata18_1875 ;
  wire \s9/keyboard_Mrom_tdata181_1876 ;
  wire \s9/keyboard_Mrom_tdata18_f7_1877 ;
  wire \s9/keyboard_Mrom_tdata3_1878 ;
  wire \s9/keyboard_Mrom_tdata31_1879 ;
  wire \s9/keyboard_Mrom_tdata32_1880 ;
  wire \s9/keyboard_Mrom_tdata3_f7_1881 ;
  wire \s9/keyboard_Mrom_tdata3_f71 ;
  wire \s9/keyboard_Mrom_tdata3_f7_rt_1883 ;
  wire \s9/keyboard_N01 ;
  wire \s9/keyboard_N10 ;
  wire \s9/keyboard_N11 ;
  wire \s9/keyboard_N3 ;
  wire \s9/keyboard_N4 ;
  wire \s9/keyboard_N6 ;
  wire \s9/keyboard_N7 ;
  wire \s9/keyboard_N9 ;
  wire tc_cs_n;
  wire vga_clk;
  wire vga_clk1;
  wire wrt_dma_pg_reg_n;
  wire \xa[0] ;
  wire \xa[1] ;
  wire \xa[2] ;
  wire \xa[3] ;
  wire \xa[5] ;
  wire \xa[6] ;
  wire \xa[7] ;
  wire \xd<0>LogicTrst14_1904 ;
  wire \xd<0>LogicTrst22_1905 ;
  wire \xd<0>LogicTrst52_1906 ;
  wire \xd<1>LogicTrst14_1908 ;
  wire \xd<1>LogicTrst22_1909 ;
  wire \xd<1>LogicTrst52_1910 ;
  wire \xd<2>LogicTrst14_1912 ;
  wire \xd<2>LogicTrst22_1913 ;
  wire \xd<2>LogicTrst52_1914 ;
  wire \xd<3>LogicTrst14_1916 ;
  wire \xd<3>LogicTrst22_1917 ;
  wire \xd<3>LogicTrst52_1918 ;
  wire \xd<4>LogicTrst14_1920 ;
  wire \xd<4>LogicTrst22_1921 ;
  wire \xd<4>LogicTrst52_1922 ;
  wire \xd<5>LogicTrst14_1924 ;
  wire \xd<5>LogicTrst22_1925 ;
  wire \xd<5>LogicTrst52_1926 ;
  wire \xd<6>LogicTrst14_1928 ;
  wire \xd<6>LogicTrst22_1929 ;
  wire \xd<6>LogicTrst52_1930 ;
  wire \xd<7>LogicTrst14_1932 ;
  wire \xd<7>LogicTrst22_1933 ;
  wire \xd<7>LogicTrst52_1934 ;
  wire xior_n;
  wire xiow_n;
  wire xmemr_n;
  wire xmemw_n;
  wire \NLW_s1/i8288_pden_n_UNCONNECTED ;
  wire \NLW_s1/i8088_qs<1>_UNCONNECTED ;
  wire \NLW_s1/i8088_qs<0>_UNCONNECTED ;
  wire \NLW_s1/i8284_osc_UNCONNECTED ;
  wire \NLW_s3/td0/td25/Mshreg_q_Q15_UNCONNECTED ;
  wire \NLW_s1/i8259/Mshreg_icws_1_Q15_UNCONNECTED ;
  wire \NLW_s9/keyboard/keyinmod/Mshreg_b_FSM_FFd11_Q15_UNCONNECTED ;
  wire [19 : 0] a;
  wire [3 : 0] cas_n;
  wire [7 : 1] cs_n;
  wire [7 : 0] d;
  wire [3 : 0] ras_n;
  wire [2 : 2] \s0/vgamod/Madd_ver_addr_add0000_lut ;
  wire [21 : 0] \s0/vgamod/Mcount_blink_count_cy ;
  wire [0 : 0] \s0/vgamod/Mcount_blink_count_lut ;
  wire [8 : 0] \s0/vgamod/Mcount_h_count_cy ;
  wire [0 : 0] \s0/vgamod/Mcount_h_count_lut ;
  wire [8 : 0] \s0/vgamod/Mcount_v_count_cy ;
  wire [0 : 0] \s0/vgamod/Mcount_v_count_lut ;
  wire [22 : 0] \s0/vgamod/Result ;
  wire [10 : 0] \s0/vgamod/attr0_addr ;
  wire [10 : 0] \s0/vgamod/attr_addr ;
  wire [10 : 0] \s0/vgamod/attr_addr_mux0000 ;
  wire [7 : 0] \s0/vgamod/attr_data_out ;
  wire [22 : 0] \s0/vgamod/blink_count ;
  wire [10 : 0] \s0/vgamod/buff0_addr ;
  wire [10 : 0] \s0/vgamod/buff_addr ;
  wire [10 : 0] \s0/vgamod/buff_addr_mux0000 ;
  wire [7 : 0] \s0/vgamod/char_data_out ;
  wire [6 : 0] \s0/vgamod/col1_addr ;
  wire [6 : 0] \s0/vgamod/col_addr ;
  wire [6 : 0] \s0/vgamod/dataout ;
  wire [9 : 0] \s0/vgamod/h_count ;
  wire [6 : 0] \s0/vgamod/hor_addr ;
  wire [10 : 0] \s0/vgamod/new_attr_addr ;
  wire [10 : 0] \s0/vgamod/new_buff_addr ;
  wire [3 : 0] \s0/vgamod/reg_adr ;
  wire [3 : 0] \s0/vgamod/reg_cur_end ;
  wire [3 : 0] \s0/vgamod/reg_cur_start ;
  wire [6 : 0] \s0/vgamod/reg_hcursor ;
  wire [4 : 0] \s0/vgamod/reg_vcursor ;
  wire [4 : 0] \s0/vgamod/row1_addr ;
  wire [4 : 0] \s0/vgamod/row1_addr_mux0000 ;
  wire [4 : 0] \s0/vgamod/row_addr ;
  wire [9 : 0] \s0/vgamod/v_count ;
  wire [6 : 0] \s0/vgamod/ver_addr ;
  wire [6 : 3] \s0/vgamod/ver_addr_add0000 ;
  wire [2 : 0] \s0/vgamod/vga_bg_colour ;
  wire [1 : 0] \s0/vgamod/vga_blue_o ;
  wire [1 : 0] \s0/vgamod/vga_blue_o_mux0000 ;
  wire [7 : 0] \s0/vgamod/vga_data_out ;
  wire [2 : 0] \s0/vgamod/vga_fg_colour ;
  wire [1 : 0] \s0/vgamod/vga_green_o ;
  wire [1 : 0] \s0/vgamod/vga_green_o_mux0000 ;
  wire [1 : 1] \s0/vgamod/vga_red_o ;
  wire [1 : 1] \s0/vgamod/vga_red_o_mux0000 ;
  wire [7 : 0] \s0/vgamod/vga_shift ;
  wire [7 : 0] \s0/vgamod/vga_shift_mux0000 ;
  wire [7 : 0] \s1/adp ;
  wire [19 : 8] \s1/ap ;
  wire [1 : 0] \s1/i8259/dout ;
  wire [1 : 0] \s1/i8259/dout_mux0000 ;
  wire [1 : 0] \s1/i8259/icws ;
  wire [2 : 2] \s1/i8259/icws_mux0000 ;
  wire [7 : 0] \s1/i8259/imr ;
  wire [7 : 0] \s1/i8259/imr_mux0000 ;
  wire [1 : 0] \s1/i8259/irr ;
  wire [7 : 4] \s1/u10/rq ;
  wire [7 : 0] \s1/u7/rq ;
  wire [7 : 0] \s1/u9/rq ;
  wire [14 : 0] \s4/i8237/Madd__add0000_cy ;
  wire [0 : 0] \s4/i8237/Madd__add0000_lut ;
  wire [14 : 0] \s4/i8237/Msub__sub0000_cy ;
  wire [15 : 1] \s4/i8237/Msub__sub0000_lut ;
  wire [14 : 0] \s4/i8237/Msub__sub0001_cy ;
  wire [15 : 1] \s4/i8237/Msub__sub0001_lut ;
  wire [3 : 0] \s4/i8237/Mtridata_a3_0 ;
  wire [3 : 0] \s4/i8237/Mtridata_a3_0_mux0000 ;
  wire [3 : 0] \s4/i8237/Mtridata_a7_4 ;
  wire [3 : 0] \s4/i8237/Mtridata_a7_4_mux0000 ;
  wire [7 : 0] \s4/i8237/Mtridata_db ;
  wire [7 : 0] \s4/i8237/Mtridata_db_mux0000 ;
  wire [15 : 0] \s4/i8237/_add0000 ;
  wire [15 : 0] \s4/i8237/_sub0000 ;
  wire [15 : 0] \s4/i8237/_sub0001 ;
  wire [15 : 0] \s4/i8237/base_addr ;
  wire [15 : 0] \s4/i8237/base_word ;
  wire [7 : 6] \s4/i8237/command ;
  wire [7 : 6] \s4/i8237/command_mux0000 ;
  wire [15 : 0] \s4/i8237/curr_addr ;
  wire [15 : 0] \s4/i8237/curr_word ;
  wire [1 : 0] \s4/i8237/dack ;
  wire [0 : 0] \s4/i8237/drequest ;
  wire [5 : 0] \s4/i8237/mode ;
  wire [5 : 0] \s4/i8237/mode_mux0000 ;
  wire [2 : 0] \s4/i8237/state ;
  wire [2 : 0] \s4/i8237/state_mux0000 ;
  wire [7 : 0] \s4/ls3730/rq ;
  wire [3 : 0] \s4/ls6700/q0 ;
  wire [7 : 0] \s5/rommod/outputval ;
  wire [2 : 0] \s5/rommod/upaddr ;
  wire [4 : 4] \s5/xa ;
  wire [0 : 0] \s6/ls2800/Madd_sum_Madd_Madd_lut ;
  wire [0 : 0] \s6/ls2800/Madd_sum_addsub0002_Madd_lut ;
  wire [7 : 0] \s6/md ;
  wire [7 : 0] \s6/rb0/md_out ;
  wire [7 : 0] \s6/rb1/md_out ;
  wire [7 : 0] \s6/rb2/md_out ;
  wire [7 : 0] \s6/rb3/md_out ;
  wire [7 : 0] \s8/i8253/vcs/C0/CNTREG/COUNTLSB ;
  wire [7 : 0] \s8/i8253/vcs/C0/CNTREG/COUNTMSB ;
  wire [15 : 0] \s8/i8253/vcs/C0/DOWNCNTR/COUNT ;
  wire [14 : 0] \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy ;
  wire [15 : 0] \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut ;
  wire [5 : 1] \s8/i8253/vcs/C0/MODEREG/MODE ;
  wire [7 : 0] \s8/i8253/vcs/C0/READ/DREG ;
  wire [7 : 0] \s8/i8253/vcs/C0/READ/DREG_mux0000 ;
  wire [7 : 0] \s8/i8253/vcs/C1/CNTREG/COUNTLSB ;
  wire [7 : 0] \s8/i8253/vcs/C1/CNTREG/COUNTMSB ;
  wire [15 : 0] \s8/i8253/vcs/C1/DOWNCNTR/COUNT ;
  wire [14 : 0] \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy ;
  wire [15 : 0] \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut ;
  wire [5 : 1] \s8/i8253/vcs/C1/MODEREG/MODE ;
  wire [7 : 0] \s8/i8253/vcs/C1/READ/DREG ;
  wire [7 : 0] \s8/i8253/vcs/C1/READ/DREG_mux0000 ;
  wire [7 : 0] \s8/i8253/vcs/C2/CNTREG/COUNTLSB ;
  wire [7 : 0] \s8/i8253/vcs/C2/CNTREG/COUNTMSB ;
  wire [15 : 0] \s8/i8253/vcs/C2/DOWNCNTR/COUNT ;
  wire [14 : 0] \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy ;
  wire [15 : 0] \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut ;
  wire [5 : 1] \s8/i8253/vcs/C2/MODEREG/MODE ;
  wire [7 : 0] \s8/i8253/vcs/C2/READ/DREG ;
  wire [7 : 0] \s8/i8253/vcs/C2/READ/DREG_mux0000 ;
  wire [15 : 0] \s8/i8253/vcs/Result ;
  wire [7 : 0] \s9/i8255/pdo ;
  wire [7 : 0] \s9/i8255/pdo_mux0000 ;
  wire [7 : 0] \s9/keyboard/keyinmod/dataout ;
  wire [7 : 0] \s9/keyboard/pa ;
  wire [7 : 1] \s9/keyboard/pa_mux0000 ;
  wire [7 : 0] \s9/keyboard/tdata ;
  wire [7 : 0] xd;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(\s1/rqgti_n )
  );
  FDR   \s8/drq0  (
    .C(\s8/i8253/vcs/C1/OUTCTRL/OUT_1527 ),
    .D(\s1/rqgti_n ),
    .R(dack_0),
    .Q(\s8/drq0_1309 )
  );
  FDR   \s8/pclka  (
    .C(pclk),
    .D(\s8/pclka_not0001 ),
    .R(reset),
    .Q(\s8/pclka1 )
  );
  XORCY   \s4/i8237/Madd__add0000_xor<15>  (
    .CI(\s4/i8237/Madd__add0000_cy [14]),
    .LI(\s4/i8237/Madd__add0000_xor<15>_rt_812 ),
    .O(\s4/i8237/_add0000 [15])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<14>  (
    .CI(\s4/i8237/Madd__add0000_cy [13]),
    .LI(\s4/i8237/Madd__add0000_cy<14>_rt_792 ),
    .O(\s4/i8237/_add0000 [14])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<14>  (
    .CI(\s4/i8237/Madd__add0000_cy [13]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<14>_rt_792 ),
    .O(\s4/i8237/Madd__add0000_cy [14])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<13>  (
    .CI(\s4/i8237/Madd__add0000_cy [12]),
    .LI(\s4/i8237/Madd__add0000_cy<13>_rt_790 ),
    .O(\s4/i8237/_add0000 [13])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<13>  (
    .CI(\s4/i8237/Madd__add0000_cy [12]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<13>_rt_790 ),
    .O(\s4/i8237/Madd__add0000_cy [13])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<12>  (
    .CI(\s4/i8237/Madd__add0000_cy [11]),
    .LI(\s4/i8237/Madd__add0000_cy<12>_rt_788 ),
    .O(\s4/i8237/_add0000 [12])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<12>  (
    .CI(\s4/i8237/Madd__add0000_cy [11]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<12>_rt_788 ),
    .O(\s4/i8237/Madd__add0000_cy [12])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<11>  (
    .CI(\s4/i8237/Madd__add0000_cy [10]),
    .LI(\s4/i8237/Madd__add0000_cy<11>_rt_786 ),
    .O(\s4/i8237/_add0000 [11])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<11>  (
    .CI(\s4/i8237/Madd__add0000_cy [10]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<11>_rt_786 ),
    .O(\s4/i8237/Madd__add0000_cy [11])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<10>  (
    .CI(\s4/i8237/Madd__add0000_cy [9]),
    .LI(\s4/i8237/Madd__add0000_cy<10>_rt_784 ),
    .O(\s4/i8237/_add0000 [10])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<10>  (
    .CI(\s4/i8237/Madd__add0000_cy [9]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<10>_rt_784 ),
    .O(\s4/i8237/Madd__add0000_cy [10])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<9>  (
    .CI(\s4/i8237/Madd__add0000_cy [8]),
    .LI(\s4/i8237/Madd__add0000_cy<9>_rt_810 ),
    .O(\s4/i8237/_add0000 [9])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<9>  (
    .CI(\s4/i8237/Madd__add0000_cy [8]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<9>_rt_810 ),
    .O(\s4/i8237/Madd__add0000_cy [9])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<8>  (
    .CI(\s4/i8237/Madd__add0000_cy [7]),
    .LI(\s4/i8237/Madd__add0000_cy<8>_rt_808 ),
    .O(\s4/i8237/_add0000 [8])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<8>  (
    .CI(\s4/i8237/Madd__add0000_cy [7]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<8>_rt_808 ),
    .O(\s4/i8237/Madd__add0000_cy [8])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<7>  (
    .CI(\s4/i8237/Madd__add0000_cy [6]),
    .LI(\s4/i8237/Madd__add0000_cy<7>_rt_806 ),
    .O(\s4/i8237/_add0000 [7])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<7>  (
    .CI(\s4/i8237/Madd__add0000_cy [6]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<7>_rt_806 ),
    .O(\s4/i8237/Madd__add0000_cy [7])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<6>  (
    .CI(\s4/i8237/Madd__add0000_cy [5]),
    .LI(\s4/i8237/Madd__add0000_cy<6>_rt_804 ),
    .O(\s4/i8237/_add0000 [6])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<6>  (
    .CI(\s4/i8237/Madd__add0000_cy [5]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<6>_rt_804 ),
    .O(\s4/i8237/Madd__add0000_cy [6])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<5>  (
    .CI(\s4/i8237/Madd__add0000_cy [4]),
    .LI(\s4/i8237/Madd__add0000_cy<5>_rt_802 ),
    .O(\s4/i8237/_add0000 [5])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<5>  (
    .CI(\s4/i8237/Madd__add0000_cy [4]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<5>_rt_802 ),
    .O(\s4/i8237/Madd__add0000_cy [5])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<4>  (
    .CI(\s4/i8237/Madd__add0000_cy [3]),
    .LI(\s4/i8237/Madd__add0000_cy<4>_rt_800 ),
    .O(\s4/i8237/_add0000 [4])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<4>  (
    .CI(\s4/i8237/Madd__add0000_cy [3]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<4>_rt_800 ),
    .O(\s4/i8237/Madd__add0000_cy [4])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<3>  (
    .CI(\s4/i8237/Madd__add0000_cy [2]),
    .LI(\s4/i8237/Madd__add0000_cy<3>_rt_798 ),
    .O(\s4/i8237/_add0000 [3])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<3>  (
    .CI(\s4/i8237/Madd__add0000_cy [2]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<3>_rt_798 ),
    .O(\s4/i8237/Madd__add0000_cy [3])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<2>  (
    .CI(\s4/i8237/Madd__add0000_cy [1]),
    .LI(\s4/i8237/Madd__add0000_cy<2>_rt_796 ),
    .O(\s4/i8237/_add0000 [2])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<2>  (
    .CI(\s4/i8237/Madd__add0000_cy [1]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<2>_rt_796 ),
    .O(\s4/i8237/Madd__add0000_cy [2])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<1>  (
    .CI(\s4/i8237/Madd__add0000_cy [0]),
    .LI(\s4/i8237/Madd__add0000_cy<1>_rt_794 ),
    .O(\s4/i8237/_add0000 [1])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<1>  (
    .CI(\s4/i8237/Madd__add0000_cy [0]),
    .DI(N0),
    .S(\s4/i8237/Madd__add0000_cy<1>_rt_794 ),
    .O(\s4/i8237/Madd__add0000_cy [1])
  );
  XORCY   \s4/i8237/Madd__add0000_xor<0>  (
    .CI(N0),
    .LI(\s4/i8237/Madd__add0000_lut [0]),
    .O(\s4/i8237/_add0000 [0])
  );
  MUXCY   \s4/i8237/Madd__add0000_cy<0>  (
    .CI(N0),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Madd__add0000_lut [0]),
    .O(\s4/i8237/Madd__add0000_cy [0])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<15>  (
    .CI(\s4/i8237/Msub__sub0000_cy [14]),
    .LI(\s4/i8237/Msub__sub0000_lut [15]),
    .O(\s4/i8237/_sub0000 [15])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<14>  (
    .CI(\s4/i8237/Msub__sub0000_cy [13]),
    .LI(\s4/i8237/Msub__sub0000_lut [14]),
    .O(\s4/i8237/_sub0000 [14])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<14>  (
    .CI(\s4/i8237/Msub__sub0000_cy [13]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [14]),
    .O(\s4/i8237/Msub__sub0000_cy [14])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<13>  (
    .CI(\s4/i8237/Msub__sub0000_cy [12]),
    .LI(\s4/i8237/Msub__sub0000_lut [13]),
    .O(\s4/i8237/_sub0000 [13])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<13>  (
    .CI(\s4/i8237/Msub__sub0000_cy [12]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [13]),
    .O(\s4/i8237/Msub__sub0000_cy [13])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<12>  (
    .CI(\s4/i8237/Msub__sub0000_cy [11]),
    .LI(\s4/i8237/Msub__sub0000_lut [12]),
    .O(\s4/i8237/_sub0000 [12])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<12>  (
    .CI(\s4/i8237/Msub__sub0000_cy [11]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [12]),
    .O(\s4/i8237/Msub__sub0000_cy [12])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<11>  (
    .CI(\s4/i8237/Msub__sub0000_cy [10]),
    .LI(\s4/i8237/Msub__sub0000_lut [11]),
    .O(\s4/i8237/_sub0000 [11])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<11>  (
    .CI(\s4/i8237/Msub__sub0000_cy [10]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [11]),
    .O(\s4/i8237/Msub__sub0000_cy [11])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<10>  (
    .CI(\s4/i8237/Msub__sub0000_cy [9]),
    .LI(\s4/i8237/Msub__sub0000_lut [10]),
    .O(\s4/i8237/_sub0000 [10])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<10>  (
    .CI(\s4/i8237/Msub__sub0000_cy [9]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [10]),
    .O(\s4/i8237/Msub__sub0000_cy [10])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<9>  (
    .CI(\s4/i8237/Msub__sub0000_cy [8]),
    .LI(\s4/i8237/Msub__sub0000_lut [9]),
    .O(\s4/i8237/_sub0000 [9])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<9>  (
    .CI(\s4/i8237/Msub__sub0000_cy [8]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [9]),
    .O(\s4/i8237/Msub__sub0000_cy [9])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<8>  (
    .CI(\s4/i8237/Msub__sub0000_cy [7]),
    .LI(\s4/i8237/Msub__sub0000_lut [8]),
    .O(\s4/i8237/_sub0000 [8])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<8>  (
    .CI(\s4/i8237/Msub__sub0000_cy [7]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [8]),
    .O(\s4/i8237/Msub__sub0000_cy [8])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<7>  (
    .CI(\s4/i8237/Msub__sub0000_cy [6]),
    .LI(\s4/i8237/Msub__sub0000_lut [7]),
    .O(\s4/i8237/_sub0000 [7])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<7>  (
    .CI(\s4/i8237/Msub__sub0000_cy [6]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [7]),
    .O(\s4/i8237/Msub__sub0000_cy [7])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<6>  (
    .CI(\s4/i8237/Msub__sub0000_cy [5]),
    .LI(\s4/i8237/Msub__sub0000_lut [6]),
    .O(\s4/i8237/_sub0000 [6])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<6>  (
    .CI(\s4/i8237/Msub__sub0000_cy [5]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [6]),
    .O(\s4/i8237/Msub__sub0000_cy [6])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<5>  (
    .CI(\s4/i8237/Msub__sub0000_cy [4]),
    .LI(\s4/i8237/Msub__sub0000_lut [5]),
    .O(\s4/i8237/_sub0000 [5])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<5>  (
    .CI(\s4/i8237/Msub__sub0000_cy [4]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [5]),
    .O(\s4/i8237/Msub__sub0000_cy [5])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<4>  (
    .CI(\s4/i8237/Msub__sub0000_cy [3]),
    .LI(\s4/i8237/Msub__sub0000_lut [4]),
    .O(\s4/i8237/_sub0000 [4])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<4>  (
    .CI(\s4/i8237/Msub__sub0000_cy [3]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [4]),
    .O(\s4/i8237/Msub__sub0000_cy [4])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<3>  (
    .CI(\s4/i8237/Msub__sub0000_cy [2]),
    .LI(\s4/i8237/Msub__sub0000_lut [3]),
    .O(\s4/i8237/_sub0000 [3])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<3>  (
    .CI(\s4/i8237/Msub__sub0000_cy [2]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [3]),
    .O(\s4/i8237/Msub__sub0000_cy [3])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<2>  (
    .CI(\s4/i8237/Msub__sub0000_cy [1]),
    .LI(\s4/i8237/Msub__sub0000_lut [2]),
    .O(\s4/i8237/_sub0000 [2])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<2>  (
    .CI(\s4/i8237/Msub__sub0000_cy [1]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [2]),
    .O(\s4/i8237/Msub__sub0000_cy [2])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<1>  (
    .CI(\s4/i8237/Msub__sub0000_cy [0]),
    .LI(\s4/i8237/Msub__sub0000_lut [1]),
    .O(\s4/i8237/_sub0000 [1])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<1>  (
    .CI(\s4/i8237/Msub__sub0000_cy [0]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0000_lut [1]),
    .O(\s4/i8237/Msub__sub0000_cy [1])
  );
  XORCY   \s4/i8237/Msub__sub0000_xor<0>  (
    .CI(\s1/rqgti_n ),
    .LI(\s4/i8237/Msub__sub0000_cy<0>_rt_814 ),
    .O(\s4/i8237/_sub0000 [0])
  );
  MUXCY   \s4/i8237/Msub__sub0000_cy<0>  (
    .CI(\s1/rqgti_n ),
    .DI(N0),
    .S(\s4/i8237/Msub__sub0000_cy<0>_rt_814 ),
    .O(\s4/i8237/Msub__sub0000_cy [0])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<15>  (
    .CI(\s4/i8237/Msub__sub0001_cy [14]),
    .LI(\s4/i8237/Msub__sub0001_lut [15]),
    .O(\s4/i8237/_sub0001 [15])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<14>  (
    .CI(\s4/i8237/Msub__sub0001_cy [13]),
    .LI(\s4/i8237/Msub__sub0001_lut [14]),
    .O(\s4/i8237/_sub0001 [14])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<14>  (
    .CI(\s4/i8237/Msub__sub0001_cy [13]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [14]),
    .O(\s4/i8237/Msub__sub0001_cy [14])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<13>  (
    .CI(\s4/i8237/Msub__sub0001_cy [12]),
    .LI(\s4/i8237/Msub__sub0001_lut [13]),
    .O(\s4/i8237/_sub0001 [13])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<13>  (
    .CI(\s4/i8237/Msub__sub0001_cy [12]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [13]),
    .O(\s4/i8237/Msub__sub0001_cy [13])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<12>  (
    .CI(\s4/i8237/Msub__sub0001_cy [11]),
    .LI(\s4/i8237/Msub__sub0001_lut [12]),
    .O(\s4/i8237/_sub0001 [12])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<12>  (
    .CI(\s4/i8237/Msub__sub0001_cy [11]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [12]),
    .O(\s4/i8237/Msub__sub0001_cy [12])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<11>  (
    .CI(\s4/i8237/Msub__sub0001_cy [10]),
    .LI(\s4/i8237/Msub__sub0001_lut [11]),
    .O(\s4/i8237/_sub0001 [11])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<11>  (
    .CI(\s4/i8237/Msub__sub0001_cy [10]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [11]),
    .O(\s4/i8237/Msub__sub0001_cy [11])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<10>  (
    .CI(\s4/i8237/Msub__sub0001_cy [9]),
    .LI(\s4/i8237/Msub__sub0001_lut [10]),
    .O(\s4/i8237/_sub0001 [10])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<10>  (
    .CI(\s4/i8237/Msub__sub0001_cy [9]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [10]),
    .O(\s4/i8237/Msub__sub0001_cy [10])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<9>  (
    .CI(\s4/i8237/Msub__sub0001_cy [8]),
    .LI(\s4/i8237/Msub__sub0001_lut [9]),
    .O(\s4/i8237/_sub0001 [9])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<9>  (
    .CI(\s4/i8237/Msub__sub0001_cy [8]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [9]),
    .O(\s4/i8237/Msub__sub0001_cy [9])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<8>  (
    .CI(\s4/i8237/Msub__sub0001_cy [7]),
    .LI(\s4/i8237/Msub__sub0001_lut [8]),
    .O(\s4/i8237/_sub0001 [8])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<8>  (
    .CI(\s4/i8237/Msub__sub0001_cy [7]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [8]),
    .O(\s4/i8237/Msub__sub0001_cy [8])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<7>  (
    .CI(\s4/i8237/Msub__sub0001_cy [6]),
    .LI(\s4/i8237/Msub__sub0001_lut [7]),
    .O(\s4/i8237/_sub0001 [7])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<7>  (
    .CI(\s4/i8237/Msub__sub0001_cy [6]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [7]),
    .O(\s4/i8237/Msub__sub0001_cy [7])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<6>  (
    .CI(\s4/i8237/Msub__sub0001_cy [5]),
    .LI(\s4/i8237/Msub__sub0001_lut [6]),
    .O(\s4/i8237/_sub0001 [6])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<6>  (
    .CI(\s4/i8237/Msub__sub0001_cy [5]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [6]),
    .O(\s4/i8237/Msub__sub0001_cy [6])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<5>  (
    .CI(\s4/i8237/Msub__sub0001_cy [4]),
    .LI(\s4/i8237/Msub__sub0001_lut [5]),
    .O(\s4/i8237/_sub0001 [5])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<5>  (
    .CI(\s4/i8237/Msub__sub0001_cy [4]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [5]),
    .O(\s4/i8237/Msub__sub0001_cy [5])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<4>  (
    .CI(\s4/i8237/Msub__sub0001_cy [3]),
    .LI(\s4/i8237/Msub__sub0001_lut [4]),
    .O(\s4/i8237/_sub0001 [4])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<4>  (
    .CI(\s4/i8237/Msub__sub0001_cy [3]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [4]),
    .O(\s4/i8237/Msub__sub0001_cy [4])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<3>  (
    .CI(\s4/i8237/Msub__sub0001_cy [2]),
    .LI(\s4/i8237/Msub__sub0001_lut [3]),
    .O(\s4/i8237/_sub0001 [3])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<3>  (
    .CI(\s4/i8237/Msub__sub0001_cy [2]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [3]),
    .O(\s4/i8237/Msub__sub0001_cy [3])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<2>  (
    .CI(\s4/i8237/Msub__sub0001_cy [1]),
    .LI(\s4/i8237/Msub__sub0001_lut [2]),
    .O(\s4/i8237/_sub0001 [2])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<2>  (
    .CI(\s4/i8237/Msub__sub0001_cy [1]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [2]),
    .O(\s4/i8237/Msub__sub0001_cy [2])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<1>  (
    .CI(\s4/i8237/Msub__sub0001_cy [0]),
    .LI(\s4/i8237/Msub__sub0001_lut [1]),
    .O(\s4/i8237/_sub0001 [1])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<1>  (
    .CI(\s4/i8237/Msub__sub0001_cy [0]),
    .DI(\s1/rqgti_n ),
    .S(\s4/i8237/Msub__sub0001_lut [1]),
    .O(\s4/i8237/Msub__sub0001_cy [1])
  );
  XORCY   \s4/i8237/Msub__sub0001_xor<0>  (
    .CI(\s1/rqgti_n ),
    .LI(\s4/i8237/Msub__sub0001_cy<0>_rt_845 ),
    .O(\s4/i8237/_sub0001 [0])
  );
  MUXCY   \s4/i8237/Msub__sub0001_cy<0>  (
    .CI(\s1/rqgti_n ),
    .DI(N0),
    .S(\s4/i8237/Msub__sub0001_cy<0>_rt_845 ),
    .O(\s4/i8237/Msub__sub0001_cy [0])
  );
  FDRE   \s4/i8237/base_word_1  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[1]),
    .R(reset),
    .Q(\s4/i8237/base_word [1])
  );
  FDRE   \s4/i8237/base_word_2  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[2]),
    .R(reset),
    .Q(\s4/i8237/base_word [2])
  );
  FDRE   \s4/i8237/base_word_0  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[0]),
    .R(reset),
    .Q(\s4/i8237/base_word [0])
  );
  FDRE   \s4/i8237/base_word_4  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[4]),
    .R(reset),
    .Q(\s4/i8237/base_word [4])
  );
  FDRE   \s4/i8237/base_word_5  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[5]),
    .R(reset),
    .Q(\s4/i8237/base_word [5])
  );
  FDRE   \s4/i8237/base_word_3  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[3]),
    .R(reset),
    .Q(\s4/i8237/base_word [3])
  );
  FDRE   \s4/i8237/base_word_7  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[7]),
    .R(reset),
    .Q(\s4/i8237/base_word [7])
  );
  FDRE   \s4/i8237/base_word_8  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[0]),
    .R(reset),
    .Q(\s4/i8237/base_word [8])
  );
  FDRE   \s4/i8237/base_word_6  (
    .C(dclk),
    .CE(\s4/i8237/base_word_7_not0001 ),
    .D(xd[6]),
    .R(reset),
    .Q(\s4/i8237/base_word [6])
  );
  FDRE   \s4/i8237/base_word_9  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[1]),
    .R(reset),
    .Q(\s4/i8237/base_word [9])
  );
  FDRE   \s4/i8237/base_word_10  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[2]),
    .R(reset),
    .Q(\s4/i8237/base_word [10])
  );
  FDRE   \s4/i8237/base_word_11  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[3]),
    .R(reset),
    .Q(\s4/i8237/base_word [11])
  );
  FDRE   \s4/i8237/base_word_12  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[4]),
    .R(reset),
    .Q(\s4/i8237/base_word [12])
  );
  FDRE   \s4/i8237/base_word_14  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[6]),
    .R(reset),
    .Q(\s4/i8237/base_word [14])
  );
  FDRE   \s4/i8237/base_word_15  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[7]),
    .R(reset),
    .Q(\s4/i8237/base_word [15])
  );
  FDRE   \s4/i8237/base_word_13  (
    .C(dclk),
    .CE(\s4/i8237/base_word_15_not0001 ),
    .D(xd[5]),
    .R(reset),
    .Q(\s4/i8237/base_word [13])
  );
  FDRE   \s4/i8237/base_addr_1  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[1]),
    .R(reset),
    .Q(\s4/i8237/base_addr [1])
  );
  FDRE   \s4/i8237/base_addr_2  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[2]),
    .R(reset),
    .Q(\s4/i8237/base_addr [2])
  );
  FDRE   \s4/i8237/base_addr_0  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[0]),
    .R(reset),
    .Q(\s4/i8237/base_addr [0])
  );
  FDRE   \s4/i8237/base_addr_4  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[4]),
    .R(reset),
    .Q(\s4/i8237/base_addr [4])
  );
  FDRE   \s4/i8237/base_addr_5  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[5]),
    .R(reset),
    .Q(\s4/i8237/base_addr [5])
  );
  FDRE   \s4/i8237/base_addr_3  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[3]),
    .R(reset),
    .Q(\s4/i8237/base_addr [3])
  );
  FDRE   \s4/i8237/base_addr_6  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[6]),
    .R(reset),
    .Q(\s4/i8237/base_addr [6])
  );
  FDRE   \s4/i8237/base_addr_7  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_7_not0001 ),
    .D(xd[7]),
    .R(reset),
    .Q(\s4/i8237/base_addr [7])
  );
  FDRE   \s4/i8237/base_addr_8  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[0]),
    .R(reset),
    .Q(\s4/i8237/base_addr [8])
  );
  FDRE   \s4/i8237/base_addr_9  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[1]),
    .R(reset),
    .Q(\s4/i8237/base_addr [9])
  );
  FDRE   \s4/i8237/base_addr_11  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[3]),
    .R(reset),
    .Q(\s4/i8237/base_addr [11])
  );
  FDRE   \s4/i8237/base_addr_12  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[4]),
    .R(reset),
    .Q(\s4/i8237/base_addr [12])
  );
  FDRE   \s4/i8237/base_addr_10  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[2]),
    .R(reset),
    .Q(\s4/i8237/base_addr [10])
  );
  FDRE   \s4/i8237/base_addr_14  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[6]),
    .R(reset),
    .Q(\s4/i8237/base_addr [14])
  );
  FDRE   \s4/i8237/base_addr_15  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[7]),
    .R(reset),
    .Q(\s4/i8237/base_addr [15])
  );
  FDRE   \s4/i8237/base_addr_13  (
    .C(dclk),
    .CE(\s4/i8237/base_addr_15_not0001 ),
    .D(xd[5]),
    .R(reset),
    .Q(\s4/i8237/base_addr [13])
  );
  FDRE   \s4/i8237/mode_5  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/mode_mux0000 [5]),
    .R(reset),
    .Q(\s4/i8237/mode [5])
  );
  FDRE   \s4/i8237/mode_4  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/mode_mux0000 [4]),
    .R(reset),
    .Q(\s4/i8237/mode [4])
  );
  FDRE   \s4/i8237/mode_3  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/mode_mux0000 [3]),
    .R(reset),
    .Q(\s4/i8237/mode [3])
  );
  FDRE   \s4/i8237/mode_2  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/mode_mux0000 [2]),
    .R(reset),
    .Q(\s4/i8237/mode [2])
  );
  FDRE   \s4/i8237/mode_1  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/mode_mux0000 [1]),
    .R(reset),
    .Q(\s4/i8237/mode [1])
  );
  FDRE   \s4/i8237/mode_0  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/mode_mux0000 [0]),
    .R(reset),
    .Q(\s4/i8237/mode [0])
  );
  FDRE   \s4/i8237/curr_word_1  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_1_mux0000_1117 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [1])
  );
  FDRE   \s4/i8237/curr_word_2  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_2_mux0000_1119 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [2])
  );
  FDRE   \s4/i8237/curr_word_0  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_0_mux0000_1103 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [0])
  );
  FDRE   \s4/i8237/curr_word_3  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_3_mux0000_1121 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [3])
  );
  FDRE   \s4/i8237/curr_word_4  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_4_mux0000_1123 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [4])
  );
  FDRE   \s4/i8237/curr_word_5  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_5_mux0000_1125 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [5])
  );
  FDRE   \s4/i8237/curr_word_6  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_6_mux0000_1127 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [6])
  );
  FDRE   \s4/i8237/curr_word_8  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_8_mux0000_1131 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [8])
  );
  FDRE   \s4/i8237/curr_word_9  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_9_mux0000_1133 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [9])
  );
  FDRE   \s4/i8237/curr_word_7  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_7_mux0000_1129 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [7])
  );
  FDRE   \s4/i8237/curr_word_11  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_11_mux0000_1108 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [11])
  );
  FDRE   \s4/i8237/curr_word_12  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_12_mux0000_1110 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [12])
  );
  FDRE   \s4/i8237/curr_word_10  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_10_mux0000_1106 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [10])
  );
  FDRE   \s4/i8237/curr_word_14  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_14_mux0000_1114 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [14])
  );
  FDRE   \s4/i8237/curr_word_15  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_15_mux0000_1116 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [15])
  );
  FDRE   \s4/i8237/curr_word_13  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_word_13_mux0000_1112 ),
    .R(reset),
    .Q(\s4/i8237/curr_word [13])
  );
  FDRE   \s4/i8237/curr_addr_0  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_0_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [0])
  );
  FDRE   \s4/i8237/curr_addr_1  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_1_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [1])
  );
  FDRE   \s4/i8237/curr_addr_2  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_2_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [2])
  );
  FDRE   \s4/i8237/curr_addr_3  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_3_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [3])
  );
  FDRE   \s4/i8237/curr_addr_5  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_5_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [5])
  );
  FDRE   \s4/i8237/curr_addr_6  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_6_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [6])
  );
  FDRE   \s4/i8237/curr_addr_4  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_4_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [4])
  );
  FDRE   \s4/i8237/curr_addr_8  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_8_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [8])
  );
  FDRE   \s4/i8237/curr_addr_9  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_9_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [9])
  );
  FDRE   \s4/i8237/curr_addr_7  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_7_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [7])
  );
  FDRE   \s4/i8237/curr_addr_11  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_11_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [11])
  );
  FDRE   \s4/i8237/curr_addr_12  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_12_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [12])
  );
  FDRE   \s4/i8237/curr_addr_10  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_10_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [10])
  );
  FDRE   \s4/i8237/curr_addr_13  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_13_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [13])
  );
  FDRE   \s4/i8237/curr_addr_14  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_14_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [14])
  );
  FDRE   \s4/i8237/curr_addr_15  (
    .C(dclk),
    .CE(\s4/i8237/mast_clr_inv ),
    .D(\s4/i8237/curr_addr_15_mux0000 ),
    .R(reset),
    .Q(\s4/i8237/curr_addr [15])
  );
  FDR   \s4/i8237/Mtrien_eopp  (
    .C(dclk),
    .D(\s1/rqgti_n ),
    .R(reset),
    .Q(\s4/i8237/Mtrien_eopp_921 )
  );
  FD   \s4/i8237/Mtrien_a3_0  (
    .C(dclk),
    .D(\s4/i8237/Mtrien_a3_0_mux0000 ),
    .Q(\s4/i8237/Mtrien_a3_0_916 )
  );
  FD   \s4/i8237/Mtrien_iow  (
    .C(dclk),
    .D(\s4/i8237/Mtrien_iow_mux0000 ),
    .Q(\s4/i8237/Mtrien_iow_924 )
  );
  FD   \s4/i8237/Mtrien_a7_4  (
    .C(dclk),
    .D(\s4/i8237/Mtrien_a3_0_mux0000 ),
    .Q(\s4/i8237/Mtrien_a7_4_918 )
  );
  FD   \s4/i8237/Mtrien_db  (
    .C(dclk),
    .D(\s4/i8237/Mtrien_db_mux0000_920 ),
    .Q(\s4/i8237/Mtrien_db_919 )
  );
  FDR   \s4/i8237/adstb_needed  (
    .C(dclk),
    .D(\s4/i8237/adstb_needed_mux0000_977 ),
    .R(\s4/i8237/adstb_needed_or0000 ),
    .Q(\s4/i8237/adstb_needed_976 )
  );
  FD   \s4/i8237/Mtrien_ior  (
    .C(dclk),
    .D(\s4/i8237/Mtrien_ior_mux0000 ),
    .Q(\s4/i8237/Mtrien_ior_922 )
  );
  FDRE   \s4/i8237/ff  (
    .C(dclk),
    .CE(\s4/i8237/ff_not0001 ),
    .D(\s4/i8237/ff_mux0000 ),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/ff_1139 )
  );
  FDR   \s4/i8237/command_7  (
    .C(dclk),
    .D(\s4/i8237/command_mux0000 [7]),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/command [7])
  );
  FDR   \s4/i8237/command_6  (
    .C(dclk),
    .D(\s4/i8237/command_mux0000 [6]),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/command [6])
  );
  FDR   \s4/i8237/memw  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_ior_mux0000 ),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/memw_1146 )
  );
  FDR   \s4/i8237/adstb  (
    .C(dclk),
    .D(\s4/i8237/adstb_mux0000 ),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/adstb_974 )
  );
  FDR   \s4/i8237/memr  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_iow_mux0000 ),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/memr_1145 )
  );
  FDS   \s4/i8237/dack_1  (
    .C(dclk),
    .D(\s4/i8237/dack_1_mux0000 ),
    .S(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/dack [1])
  );
  FDS   \s4/i8237/dack_0  (
    .C(dclk),
    .D(\s4/i8237/dack_0_mux0000 ),
    .S(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/dack [0])
  );
  FD   \s4/i8237/Mtridata_a3_0_3  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a3_0_mux0000 [0]),
    .Q(\s4/i8237/Mtridata_a3_0 [3])
  );
  FD   \s4/i8237/Mtridata_a3_0_2  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a3_0_mux0000 [1]),
    .Q(\s4/i8237/Mtridata_a3_0 [2])
  );
  FD   \s4/i8237/Mtridata_a3_0_1  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a3_0_mux0000 [2]),
    .Q(\s4/i8237/Mtridata_a3_0 [1])
  );
  FD   \s4/i8237/Mtridata_a3_0_0  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a3_0_mux0000 [3]),
    .Q(\s4/i8237/Mtridata_a3_0 [0])
  );
  FD   \s4/i8237/Mtridata_a7_4_3  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a7_4_mux0000 [0]),
    .Q(\s4/i8237/Mtridata_a7_4 [3])
  );
  FD   \s4/i8237/Mtridata_a7_4_2  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a7_4_mux0000 [1]),
    .Q(\s4/i8237/Mtridata_a7_4 [2])
  );
  FD   \s4/i8237/Mtridata_a7_4_1  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a7_4_mux0000 [2]),
    .Q(\s4/i8237/Mtridata_a7_4 [1])
  );
  FD   \s4/i8237/Mtridata_a7_4_0  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_a7_4_mux0000 [3]),
    .Q(\s4/i8237/Mtridata_a7_4 [0])
  );
  FD   \s4/i8237/Mtridata_db_7  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [0]),
    .Q(\s4/i8237/Mtridata_db [7])
  );
  FD   \s4/i8237/Mtridata_db_6  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [1]),
    .Q(\s4/i8237/Mtridata_db [6])
  );
  FD   \s4/i8237/Mtridata_db_5  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [2]),
    .Q(\s4/i8237/Mtridata_db [5])
  );
  FD   \s4/i8237/Mtridata_db_4  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [3]),
    .Q(\s4/i8237/Mtridata_db [4])
  );
  FD   \s4/i8237/Mtridata_db_3  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [4]),
    .Q(\s4/i8237/Mtridata_db [3])
  );
  FD   \s4/i8237/Mtridata_db_2  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [5]),
    .Q(\s4/i8237/Mtridata_db [2])
  );
  FD   \s4/i8237/Mtridata_db_1  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [6]),
    .Q(\s4/i8237/Mtridata_db [1])
  );
  FD   \s4/i8237/Mtridata_db_0  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_db_mux0000 [7]),
    .Q(\s4/i8237/Mtridata_db [0])
  );
  FDR   \s4/i8237/state_2  (
    .C(dclk),
    .D(\s4/i8237/state_mux0000 [0]),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/state [2])
  );
  FDR   \s4/i8237/state_1  (
    .C(dclk),
    .D(\s4/i8237/state_mux0000 [1]),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/state [1])
  );
  FDR   \s4/i8237/state_0  (
    .C(dclk),
    .D(\s4/i8237/state_mux0000 [2]),
    .R(\s4/i8237/state_or0004 ),
    .Q(\s4/i8237/state [0])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<9>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [8]),
    .LI(\s0/vgamod/Mcount_v_count_xor<9>_rt_291 ),
    .O(\s0/vgamod/Result<9>1 )
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<8>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [7]),
    .LI(\s0/vgamod/Mcount_v_count_cy<8>_rt_289 ),
    .O(\s0/vgamod/Result<8>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<8>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [7]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<8>_rt_289 ),
    .O(\s0/vgamod/Mcount_v_count_cy [8])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<7>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [6]),
    .LI(\s0/vgamod/Mcount_v_count_cy<7>_rt_287 ),
    .O(\s0/vgamod/Result<7>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<7>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [6]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<7>_rt_287 ),
    .O(\s0/vgamod/Mcount_v_count_cy [7])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<6>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [5]),
    .LI(\s0/vgamod/Mcount_v_count_cy<6>_rt_285 ),
    .O(\s0/vgamod/Result<6>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<6>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [5]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<6>_rt_285 ),
    .O(\s0/vgamod/Mcount_v_count_cy [6])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<5>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [4]),
    .LI(\s0/vgamod/Mcount_v_count_cy<5>_rt_283 ),
    .O(\s0/vgamod/Result<5>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<5>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [4]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<5>_rt_283 ),
    .O(\s0/vgamod/Mcount_v_count_cy [5])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<4>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [3]),
    .LI(\s0/vgamod/Mcount_v_count_cy<4>_rt_281 ),
    .O(\s0/vgamod/Result<4>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<4>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [3]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<4>_rt_281 ),
    .O(\s0/vgamod/Mcount_v_count_cy [4])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<3>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [2]),
    .LI(\s0/vgamod/Mcount_v_count_cy<3>_rt_279 ),
    .O(\s0/vgamod/Result<3>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<3>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [2]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<3>_rt_279 ),
    .O(\s0/vgamod/Mcount_v_count_cy [3])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<2>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [1]),
    .LI(\s0/vgamod/Mcount_v_count_cy<2>_rt_277 ),
    .O(\s0/vgamod/Result<2>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<2>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [1]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<2>_rt_277 ),
    .O(\s0/vgamod/Mcount_v_count_cy [2])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<1>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [0]),
    .LI(\s0/vgamod/Mcount_v_count_cy<1>_rt_275 ),
    .O(\s0/vgamod/Result<1>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<1>  (
    .CI(\s0/vgamod/Mcount_v_count_cy [0]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_v_count_cy<1>_rt_275 ),
    .O(\s0/vgamod/Mcount_v_count_cy [1])
  );
  XORCY   \s0/vgamod/Mcount_v_count_xor<0>  (
    .CI(N0),
    .LI(\s0/vgamod/Mcount_v_count_lut [0]),
    .O(\s0/vgamod/Result<0>1 )
  );
  MUXCY   \s0/vgamod/Mcount_v_count_cy<0>  (
    .CI(N0),
    .DI(\s1/rqgti_n ),
    .S(\s0/vgamod/Mcount_v_count_lut [0]),
    .O(\s0/vgamod/Mcount_v_count_cy [0])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<9>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [8]),
    .LI(\s0/vgamod/Mcount_h_count_xor<9>_rt_272 ),
    .O(\s0/vgamod/Result [9])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<8>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [7]),
    .LI(\s0/vgamod/Mcount_h_count_cy<8>_rt_270 ),
    .O(\s0/vgamod/Result [8])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<8>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [7]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<8>_rt_270 ),
    .O(\s0/vgamod/Mcount_h_count_cy [8])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<7>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [6]),
    .LI(\s0/vgamod/Mcount_h_count_cy<7>_rt_268 ),
    .O(\s0/vgamod/Result [7])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<7>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [6]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<7>_rt_268 ),
    .O(\s0/vgamod/Mcount_h_count_cy [7])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<6>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [5]),
    .LI(\s0/vgamod/Mcount_h_count_cy<6>_rt_266 ),
    .O(\s0/vgamod/Result [6])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<6>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [5]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<6>_rt_266 ),
    .O(\s0/vgamod/Mcount_h_count_cy [6])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<5>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [4]),
    .LI(\s0/vgamod/Mcount_h_count_cy<5>_rt_264 ),
    .O(\s0/vgamod/Result [5])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<5>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [4]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<5>_rt_264 ),
    .O(\s0/vgamod/Mcount_h_count_cy [5])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<4>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [3]),
    .LI(\s0/vgamod/Mcount_h_count_cy<4>_rt_262 ),
    .O(\s0/vgamod/Result [4])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<4>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [3]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<4>_rt_262 ),
    .O(\s0/vgamod/Mcount_h_count_cy [4])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<3>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [2]),
    .LI(\s0/vgamod/Mcount_h_count_cy<3>_rt_260 ),
    .O(\s0/vgamod/Result [3])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<3>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [2]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<3>_rt_260 ),
    .O(\s0/vgamod/Mcount_h_count_cy [3])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<2>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [1]),
    .LI(\s0/vgamod/Mcount_h_count_cy<2>_rt_258 ),
    .O(\s0/vgamod/Result [2])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<2>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [1]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<2>_rt_258 ),
    .O(\s0/vgamod/Mcount_h_count_cy [2])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<1>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [0]),
    .LI(\s0/vgamod/Mcount_h_count_cy<1>_rt_256 ),
    .O(\s0/vgamod/Result [1])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<1>  (
    .CI(\s0/vgamod/Mcount_h_count_cy [0]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_h_count_cy<1>_rt_256 ),
    .O(\s0/vgamod/Mcount_h_count_cy [1])
  );
  XORCY   \s0/vgamod/Mcount_h_count_xor<0>  (
    .CI(N0),
    .LI(\s0/vgamod/Mcount_h_count_lut [0]),
    .O(\s0/vgamod/Result [0])
  );
  MUXCY   \s0/vgamod/Mcount_h_count_cy<0>  (
    .CI(N0),
    .DI(\s1/rqgti_n ),
    .S(\s0/vgamod/Mcount_h_count_lut [0]),
    .O(\s0/vgamod/Mcount_h_count_cy [0])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<22>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [21]),
    .LI(\s0/vgamod/Mcount_blink_count_xor<22>_rt_253 ),
    .O(\s0/vgamod/Result [22])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<21>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [20]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<21>_rt_235 ),
    .O(\s0/vgamod/Result [21])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<21>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [20]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<21>_rt_235 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [21])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<20>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [19]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<20>_rt_233 ),
    .O(\s0/vgamod/Result [20])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<20>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [19]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<20>_rt_233 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [20])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<19>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [18]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<19>_rt_229 ),
    .O(\s0/vgamod/Result [19])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<19>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [18]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<19>_rt_229 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [19])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<18>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [17]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<18>_rt_227 ),
    .O(\s0/vgamod/Result [18])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<18>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [17]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<18>_rt_227 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [18])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<17>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [16]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<17>_rt_225 ),
    .O(\s0/vgamod/Result [17])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<17>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [16]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<17>_rt_225 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [17])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<16>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [15]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<16>_rt_223 ),
    .O(\s0/vgamod/Result [16])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<16>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [15]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<16>_rt_223 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [16])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<15>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [14]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<15>_rt_221 ),
    .O(\s0/vgamod/Result [15])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<15>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [14]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<15>_rt_221 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [15])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<14>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [13]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<14>_rt_219 ),
    .O(\s0/vgamod/Result [14])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<14>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [13]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<14>_rt_219 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [14])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<13>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [12]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<13>_rt_217 ),
    .O(\s0/vgamod/Result [13])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<13>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [12]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<13>_rt_217 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [13])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<12>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [11]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<12>_rt_215 ),
    .O(\s0/vgamod/Result [12])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<12>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [11]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<12>_rt_215 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [12])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<11>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [10]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<11>_rt_213 ),
    .O(\s0/vgamod/Result [11])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<11>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [10]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<11>_rt_213 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [11])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<10>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [9]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<10>_rt_211 ),
    .O(\s0/vgamod/Result [10])
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<10>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [9]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<10>_rt_211 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [10])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<9>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [8]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<9>_rt_251 ),
    .O(\s0/vgamod/Result<9>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<9>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [8]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<9>_rt_251 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [9])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<8>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [7]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<8>_rt_249 ),
    .O(\s0/vgamod/Result<8>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<8>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [7]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<8>_rt_249 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [8])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<7>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [6]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<7>_rt_247 ),
    .O(\s0/vgamod/Result<7>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<7>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [6]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<7>_rt_247 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [7])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<6>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [5]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<6>_rt_245 ),
    .O(\s0/vgamod/Result<6>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<6>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [5]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<6>_rt_245 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [6])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<5>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [4]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<5>_rt_243 ),
    .O(\s0/vgamod/Result<5>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<5>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [4]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<5>_rt_243 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [5])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<4>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [3]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<4>_rt_241 ),
    .O(\s0/vgamod/Result<4>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<4>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [3]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<4>_rt_241 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [4])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<3>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [2]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<3>_rt_239 ),
    .O(\s0/vgamod/Result<3>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<3>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [2]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<3>_rt_239 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [3])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<2>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [1]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<2>_rt_237 ),
    .O(\s0/vgamod/Result<2>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<2>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [1]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<2>_rt_237 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [2])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<1>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [0]),
    .LI(\s0/vgamod/Mcount_blink_count_cy<1>_rt_231 ),
    .O(\s0/vgamod/Result<1>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<1>  (
    .CI(\s0/vgamod/Mcount_blink_count_cy [0]),
    .DI(N0),
    .S(\s0/vgamod/Mcount_blink_count_cy<1>_rt_231 ),
    .O(\s0/vgamod/Mcount_blink_count_cy [1])
  );
  XORCY   \s0/vgamod/Mcount_blink_count_xor<0>  (
    .CI(N0),
    .LI(\s0/vgamod/Mcount_blink_count_lut [0]),
    .O(\s0/vgamod/Result<0>2 )
  );
  MUXCY   \s0/vgamod/Mcount_blink_count_cy<0>  (
    .CI(N0),
    .DI(\s1/rqgti_n ),
    .S(\s0/vgamod/Mcount_blink_count_lut [0]),
    .O(\s0/vgamod/Mcount_blink_count_cy [0])
  );
  FDRE   \s0/vgamod/v_count_9  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<9>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [9])
  );
  FDRE   \s0/vgamod/v_count_8  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<8>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [8])
  );
  FDRE   \s0/vgamod/v_count_7  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<7>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [7])
  );
  FDRE   \s0/vgamod/v_count_6  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<6>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [6])
  );
  FDRE   \s0/vgamod/v_count_5  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<5>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [5])
  );
  FDRE   \s0/vgamod/v_count_4  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<4>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [4])
  );
  FDRE   \s0/vgamod/v_count_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<3>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [3])
  );
  FDRE   \s0/vgamod/v_count_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<2>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [2])
  );
  FDRE   \s0/vgamod/v_count_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<1>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [1])
  );
  FDRE   \s0/vgamod/v_count_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/v_count_cmp_eq0000 ),
    .D(\s0/vgamod/Result<0>1 ),
    .R(\s0/vgamod/v_count_or0000 ),
    .Q(\s0/vgamod/v_count [0])
  );
  FDR   \s0/vgamod/h_count_9  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [9]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [9])
  );
  FDR   \s0/vgamod/h_count_8  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [8]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [8])
  );
  FDR   \s0/vgamod/h_count_7  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [7]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [7])
  );
  FDR   \s0/vgamod/h_count_6  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [6]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [6])
  );
  FDR   \s0/vgamod/h_count_5  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [5]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [5])
  );
  FDR   \s0/vgamod/h_count_4  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [4]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [4])
  );
  FDR   \s0/vgamod/h_count_3  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [3]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [3])
  );
  FDR   \s0/vgamod/h_count_2  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [2]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [2])
  );
  FDR   \s0/vgamod/h_count_1  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [1]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [1])
  );
  FDR   \s0/vgamod/h_count_0  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [0]),
    .R(\s0/vgamod/h_count_or0000 ),
    .Q(\s0/vgamod/h_count [0])
  );
  FDR   \s0/vgamod/blink_count_22  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [22]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [22])
  );
  FDR   \s0/vgamod/blink_count_21  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [21]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [21])
  );
  FDR   \s0/vgamod/blink_count_20  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [20]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [20])
  );
  FDR   \s0/vgamod/blink_count_19  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [19]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [19])
  );
  FDR   \s0/vgamod/blink_count_18  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [18]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [18])
  );
  FDR   \s0/vgamod/blink_count_17  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [17]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [17])
  );
  FDR   \s0/vgamod/blink_count_16  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [16]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [16])
  );
  FDR   \s0/vgamod/blink_count_15  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [15]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [15])
  );
  FDR   \s0/vgamod/blink_count_14  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [14]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [14])
  );
  FDR   \s0/vgamod/blink_count_13  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [13]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [13])
  );
  FDR   \s0/vgamod/blink_count_12  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [12]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [12])
  );
  FDR   \s0/vgamod/blink_count_11  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [11]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [11])
  );
  FDR   \s0/vgamod/blink_count_10  (
    .C(vga_clk),
    .D(\s0/vgamod/Result [10]),
    .R(reset),
    .Q(\s0/vgamod/blink_count [10])
  );
  FDR   \s0/vgamod/blink_count_9  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<9>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [9])
  );
  FDR   \s0/vgamod/blink_count_8  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<8>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [8])
  );
  FDR   \s0/vgamod/blink_count_7  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<7>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [7])
  );
  FDR   \s0/vgamod/blink_count_6  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<6>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [6])
  );
  FDR   \s0/vgamod/blink_count_5  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<5>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [5])
  );
  FDR   \s0/vgamod/blink_count_4  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<4>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [4])
  );
  FDR   \s0/vgamod/blink_count_3  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<3>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [3])
  );
  FDR   \s0/vgamod/blink_count_2  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<2>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [2])
  );
  FDR   \s0/vgamod/blink_count_1  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<1>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [1])
  );
  FDR   \s0/vgamod/blink_count_0  (
    .C(vga_clk),
    .D(\s0/vgamod/Result<0>2 ),
    .R(reset),
    .Q(\s0/vgamod/blink_count [0])
  );
  FDR   \s0/vgamod/hor_addr_6  (
    .C(vga_clk),
    .D(\s0/vgamod/col1_addr [6]),
    .R(reset),
    .Q(\s0/vgamod/hor_addr [6])
  );
  FDR   \s0/vgamod/hor_addr_5  (
    .C(vga_clk),
    .D(\s0/vgamod/col1_addr [5]),
    .R(reset),
    .Q(\s0/vgamod/hor_addr [5])
  );
  FDR   \s0/vgamod/hor_addr_4  (
    .C(vga_clk),
    .D(\s0/vgamod/col1_addr [4]),
    .R(reset),
    .Q(\s0/vgamod/hor_addr [4])
  );
  FDR   \s0/vgamod/hor_addr_3  (
    .C(vga_clk),
    .D(\s0/vgamod/col1_addr [3]),
    .R(reset),
    .Q(\s0/vgamod/hor_addr [3])
  );
  FDR   \s0/vgamod/hor_addr_2  (
    .C(vga_clk),
    .D(\s0/vgamod/col1_addr [2]),
    .R(reset),
    .Q(\s0/vgamod/hor_addr [2])
  );
  FDR   \s0/vgamod/hor_addr_1  (
    .C(vga_clk),
    .D(\s0/vgamod/col1_addr [1]),
    .R(reset),
    .Q(\s0/vgamod/hor_addr [1])
  );
  FDR   \s0/vgamod/hor_addr_0  (
    .C(vga_clk),
    .D(\s0/vgamod/col1_addr [0]),
    .R(reset),
    .Q(\s0/vgamod/hor_addr [0])
  );
  FDR   \s0/vgamod/cursor_on_h  (
    .C(vga_clk),
    .D(\s0/vgamod/cursor_on_h_cmp_eq0000 ),
    .R(reset),
    .Q(\s0/vgamod/cursor_on_h_459 )
  );
  FDR   \s0/vgamod/ver_addr_6  (
    .C(vga_clk),
    .D(\s0/vgamod/ver_addr_add0000 [6]),
    .R(reset),
    .Q(\s0/vgamod/ver_addr [6])
  );
  FDR   \s0/vgamod/ver_addr_5  (
    .C(vga_clk),
    .D(\s0/vgamod/ver_addr_add0000 [5]),
    .R(reset),
    .Q(\s0/vgamod/ver_addr [5])
  );
  FDR   \s0/vgamod/ver_addr_4  (
    .C(vga_clk),
    .D(\s0/vgamod/ver_addr_add0000 [4]),
    .R(reset),
    .Q(\s0/vgamod/ver_addr [4])
  );
  FDR   \s0/vgamod/ver_addr_3  (
    .C(vga_clk),
    .D(\s0/vgamod/ver_addr_add0000 [3]),
    .R(reset),
    .Q(\s0/vgamod/ver_addr [3])
  );
  FDR   \s0/vgamod/ver_addr_2  (
    .C(vga_clk),
    .D(\s0/vgamod/Madd_ver_addr_add0000_lut [2]),
    .R(reset),
    .Q(\s0/vgamod/ver_addr [2])
  );
  FDR   \s0/vgamod/ver_addr_1  (
    .C(vga_clk),
    .D(\s0/vgamod/row1_addr [1]),
    .R(reset),
    .Q(\s0/vgamod/ver_addr [1])
  );
  FDR   \s0/vgamod/ver_addr_0  (
    .C(vga_clk),
    .D(\s0/vgamod/row1_addr [0]),
    .R(reset),
    .Q(\s0/vgamod/ver_addr [0])
  );
  FDR   \s0/vgamod/vga2_rw  (
    .C(vga_clk),
    .D(\s0/vgamod/vga1_rw_623 ),
    .R(reset),
    .Q(\s0/vgamod/vga2_rw_624 )
  );
  FDR   \s0/vgamod/col1_addr_6  (
    .C(vga_clk),
    .D(\s0/vgamod/col_addr [6]),
    .R(reset),
    .Q(\s0/vgamod/col1_addr [6])
  );
  FDR   \s0/vgamod/col1_addr_5  (
    .C(vga_clk),
    .D(\s0/vgamod/col_addr [5]),
    .R(reset),
    .Q(\s0/vgamod/col1_addr [5])
  );
  FDR   \s0/vgamod/col1_addr_4  (
    .C(vga_clk),
    .D(\s0/vgamod/col_addr [4]),
    .R(reset),
    .Q(\s0/vgamod/col1_addr [4])
  );
  FDR   \s0/vgamod/col1_addr_3  (
    .C(vga_clk),
    .D(\s0/vgamod/col_addr [3]),
    .R(reset),
    .Q(\s0/vgamod/col1_addr [3])
  );
  FDR   \s0/vgamod/col1_addr_2  (
    .C(vga_clk),
    .D(\s0/vgamod/col_addr [2]),
    .R(reset),
    .Q(\s0/vgamod/col1_addr [2])
  );
  FDR   \s0/vgamod/col1_addr_1  (
    .C(vga_clk),
    .D(\s0/vgamod/col_addr [1]),
    .R(reset),
    .Q(\s0/vgamod/col1_addr [1])
  );
  FDR   \s0/vgamod/col1_addr_0  (
    .C(vga_clk),
    .D(\s0/vgamod/col_addr [0]),
    .R(reset),
    .Q(\s0/vgamod/col1_addr [0])
  );
  FDS   \s0/vgamod/vga1_rw  (
    .C(vga_clk),
    .D(\s0/vgamod/vga0_rw_622 ),
    .S(reset),
    .Q(\s0/vgamod/vga1_rw_623 )
  );
  FDRE   \s0/vgamod/row_addr_4  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/v_count [8]),
    .R(reset),
    .Q(\s0/vgamod/row_addr [4])
  );
  FDRE   \s0/vgamod/row_addr_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/v_count [7]),
    .R(reset),
    .Q(\s0/vgamod/row_addr [3])
  );
  FDRE   \s0/vgamod/row_addr_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/v_count [6]),
    .R(reset),
    .Q(\s0/vgamod/row_addr [2])
  );
  FDRE   \s0/vgamod/row_addr_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/v_count [5]),
    .R(reset),
    .Q(\s0/vgamod/row_addr [1])
  );
  FDRE   \s0/vgamod/row_addr_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/v_count [4]),
    .R(reset),
    .Q(\s0/vgamod/row_addr [0])
  );
  FDRE   \s0/vgamod/col_addr_6  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/h_count [9]),
    .R(reset),
    .Q(\s0/vgamod/col_addr [6])
  );
  FDRE   \s0/vgamod/col_addr_5  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/h_count [8]),
    .R(reset),
    .Q(\s0/vgamod/col_addr [5])
  );
  FDRE   \s0/vgamod/col_addr_4  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/h_count [7]),
    .R(reset),
    .Q(\s0/vgamod/col_addr [4])
  );
  FDRE   \s0/vgamod/col_addr_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/h_count [6]),
    .R(reset),
    .Q(\s0/vgamod/col_addr [3])
  );
  FDRE   \s0/vgamod/col_addr_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/h_count [5]),
    .R(reset),
    .Q(\s0/vgamod/col_addr [2])
  );
  FDRE   \s0/vgamod/col_addr_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/h_count [4]),
    .R(reset),
    .Q(\s0/vgamod/col_addr [1])
  );
  FDRE   \s0/vgamod/col_addr_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/row_addr_not0001 ),
    .D(\s0/vgamod/h_count [3]),
    .R(reset),
    .Q(\s0/vgamod/col_addr [0])
  );
  FDSE   \s0/vgamod/reg_cur_end_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_end ),
    .D(d[3]),
    .S(reset),
    .Q(\s0/vgamod/reg_cur_end [3])
  );
  FDSE   \s0/vgamod/reg_cur_end_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_end ),
    .D(d[2]),
    .S(reset),
    .Q(\s0/vgamod/reg_cur_end [2])
  );
  FDSE   \s0/vgamod/reg_cur_end_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_end ),
    .D(d[1]),
    .S(reset),
    .Q(\s0/vgamod/reg_cur_end [1])
  );
  FDSE   \s0/vgamod/reg_cur_end_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_end ),
    .D(d[0]),
    .S(reset),
    .Q(\s0/vgamod/reg_cur_end [0])
  );
  FDRE   \s0/vgamod/reg_vcursor_4  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_vcursor ),
    .D(d[4]),
    .R(reset),
    .Q(\s0/vgamod/reg_vcursor [4])
  );
  FDRE   \s0/vgamod/reg_vcursor_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_vcursor ),
    .D(d[3]),
    .R(reset),
    .Q(\s0/vgamod/reg_vcursor [3])
  );
  FDRE   \s0/vgamod/reg_vcursor_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_vcursor ),
    .D(d[2]),
    .R(reset),
    .Q(\s0/vgamod/reg_vcursor [2])
  );
  FDRE   \s0/vgamod/reg_vcursor_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_vcursor ),
    .D(d[1]),
    .R(reset),
    .Q(\s0/vgamod/reg_vcursor [1])
  );
  FDRE   \s0/vgamod/reg_vcursor_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_vcursor ),
    .D(d[0]),
    .R(reset),
    .Q(\s0/vgamod/reg_vcursor [0])
  );
  FDRE   \s0/vgamod/reg_hcursor_6  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_hcursor ),
    .D(d[6]),
    .R(reset),
    .Q(\s0/vgamod/reg_hcursor [6])
  );
  FDRE   \s0/vgamod/reg_hcursor_5  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_hcursor ),
    .D(d[5]),
    .R(reset),
    .Q(\s0/vgamod/reg_hcursor [5])
  );
  FDRE   \s0/vgamod/reg_hcursor_4  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_hcursor ),
    .D(d[4]),
    .R(reset),
    .Q(\s0/vgamod/reg_hcursor [4])
  );
  FDRE   \s0/vgamod/reg_hcursor_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_hcursor ),
    .D(d[3]),
    .R(reset),
    .Q(\s0/vgamod/reg_hcursor [3])
  );
  FDRE   \s0/vgamod/reg_hcursor_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_hcursor ),
    .D(d[2]),
    .R(reset),
    .Q(\s0/vgamod/reg_hcursor [2])
  );
  FDRE   \s0/vgamod/reg_hcursor_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_hcursor ),
    .D(d[1]),
    .R(reset),
    .Q(\s0/vgamod/reg_hcursor [1])
  );
  FDRE   \s0/vgamod/reg_hcursor_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_hcursor ),
    .D(d[0]),
    .R(reset),
    .Q(\s0/vgamod/reg_hcursor [0])
  );
  FDSE   \s0/vgamod/reg_cur_start_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_start ),
    .D(d[3]),
    .S(reset),
    .Q(\s0/vgamod/reg_cur_start [3])
  );
  FDSE   \s0/vgamod/reg_cur_start_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_start ),
    .D(d[2]),
    .S(reset),
    .Q(\s0/vgamod/reg_cur_start [2])
  );
  FDSE   \s0/vgamod/reg_cur_start_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_start ),
    .D(d[1]),
    .S(reset),
    .Q(\s0/vgamod/reg_cur_start [1])
  );
  FDRE   \s0/vgamod/reg_cur_start_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_cur_start ),
    .D(d[0]),
    .R(reset),
    .Q(\s0/vgamod/reg_cur_start [0])
  );
  FDRE   \s0/vgamod/reg_adr_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_adr ),
    .D(d[3]),
    .R(reset),
    .Q(\s0/vgamod/reg_adr [3])
  );
  FDRE   \s0/vgamod/reg_adr_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_adr ),
    .D(d[2]),
    .R(reset),
    .Q(\s0/vgamod/reg_adr [2])
  );
  FDRE   \s0/vgamod/reg_adr_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_adr ),
    .D(d[1]),
    .R(reset),
    .Q(\s0/vgamod/reg_adr [1])
  );
  FDRE   \s0/vgamod/reg_adr_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/wr_adr ),
    .D(d[0]),
    .R(reset),
    .Q(\s0/vgamod/reg_adr [0])
  );
  FDE   \s0/vgamod/intense  (
    .C(vga_clk),
    .CE(\s0/vgamod/intense_or0000_inv ),
    .D(\s0/vgamod/attr_data_out [3]),
    .Q(\s0/vgamod/intense_527 )
  );
  FDR   \s0/vgamod/vga_green_o_1  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_green_o_mux0000 [0]),
    .R(\s0/vgamod/vga_red_o_or0000 ),
    .Q(\s0/vgamod/vga_green_o [1])
  );
  FDR   \s0/vgamod/vga_green_o_0  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_green_o_mux0000 [1]),
    .R(\s0/vgamod/vga_red_o_or0000 ),
    .Q(\s0/vgamod/vga_green_o [0])
  );
  FDR   \s0/vgamod/vga_red_o_1  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_red_o_mux0000 [1]),
    .R(\s0/vgamod/vga_red_o_or0000 ),
    .Q(\s0/vgamod/vga_red_o [1])
  );
  FDR   \s0/vgamod/vga_blue_o_1  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_blue_o_mux0000 [1]),
    .R(\s0/vgamod/vga_red_o_or0000 ),
    .Q(\s0/vgamod/vga_blue_o [1])
  );
  FDR   \s0/vgamod/vga_blue_o_0  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_blue_o_mux0000 [0]),
    .R(\s0/vgamod/vga_red_o_or0000 ),
    .Q(\s0/vgamod/vga_blue_o [0])
  );
  FDSE   \s0/vgamod/vga_fg_colour_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/attr_data_out [2]),
    .S(reset),
    .Q(\s0/vgamod/vga_fg_colour [2])
  );
  FDSE   \s0/vgamod/vga_fg_colour_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/attr_data_out [1]),
    .S(reset),
    .Q(\s0/vgamod/vga_fg_colour [1])
  );
  FDSE   \s0/vgamod/vga_fg_colour_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/attr_data_out [0]),
    .S(reset),
    .Q(\s0/vgamod/vga_fg_colour [0])
  );
  FDRE   \s0/vgamod/vga_bg_colour_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/attr_data_out [6]),
    .R(reset),
    .Q(\s0/vgamod/vga_bg_colour [2])
  );
  FDRE   \s0/vgamod/vga_bg_colour_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/attr_data_out [5]),
    .R(reset),
    .Q(\s0/vgamod/vga_bg_colour [1])
  );
  FDRE   \s0/vgamod/vga_bg_colour_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/attr_data_out [4]),
    .R(reset),
    .Q(\s0/vgamod/vga_bg_colour [0])
  );
  FDR   \s0/vgamod/vga_shift_7  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [7]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [7])
  );
  FDR   \s0/vgamod/vga_shift_6  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [6]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [6])
  );
  FDR   \s0/vgamod/vga_shift_5  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [5]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [5])
  );
  FDR   \s0/vgamod/vga_shift_4  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [4]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [4])
  );
  FDR   \s0/vgamod/vga_shift_3  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [3]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [3])
  );
  FDR   \s0/vgamod/vga_shift_2  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [2]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [2])
  );
  FDR   \s0/vgamod/vga_shift_1  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [1]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [1])
  );
  FDR   \s0/vgamod/vga_shift_0  (
    .C(vga_clk),
    .D(\s0/vgamod/vga_shift_mux0000 [0]),
    .R(reset),
    .Q(\s0/vgamod/vga_shift [0])
  );
  FDRE   \s0/vgamod/cursor_on  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/cursor_on_and0000 ),
    .R(reset),
    .Q(\s0/vgamod/cursor_on_457 )
  );
  FDRE   \s0/vgamod/video_on  (
    .C(vga_clk),
    .CE(\s0/vgamod/video_on_not0001_inv ),
    .D(\s0/vgamod/video_on1 ),
    .R(reset),
    .Q(\s0/vgamod/video_on_666 )
  );
  FDR   \s0/vgamod/attr_addr_10  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [10]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [10])
  );
  FDR   \s0/vgamod/attr_addr_9  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [9]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [9])
  );
  FDR   \s0/vgamod/attr_addr_8  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [8]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [8])
  );
  FDR   \s0/vgamod/attr_addr_7  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [7]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [7])
  );
  FDR   \s0/vgamod/attr_addr_6  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [6]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [6])
  );
  FDR   \s0/vgamod/attr_addr_5  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [5]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [5])
  );
  FDR   \s0/vgamod/attr_addr_4  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [4]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [4])
  );
  FDR   \s0/vgamod/attr_addr_3  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [3]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [3])
  );
  FDR   \s0/vgamod/attr_addr_2  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [2]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [2])
  );
  FDR   \s0/vgamod/attr_addr_1  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [1]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [1])
  );
  FDR   \s0/vgamod/attr_addr_0  (
    .C(vga_clk),
    .D(\s0/vgamod/attr_addr_mux0000 [0]),
    .R(reset),
    .Q(\s0/vgamod/attr_addr [0])
  );
  FDR   \s0/vgamod/buff_addr_10  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [10]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [10])
  );
  FDR   \s0/vgamod/buff_addr_9  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [9]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [9])
  );
  FDR   \s0/vgamod/buff_addr_8  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [8]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [8])
  );
  FDR   \s0/vgamod/buff_addr_7  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [7]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [7])
  );
  FDR   \s0/vgamod/buff_addr_6  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [6]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [6])
  );
  FDR   \s0/vgamod/buff_addr_5  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [5]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [5])
  );
  FDR   \s0/vgamod/buff_addr_4  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [4]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [4])
  );
  FDR   \s0/vgamod/buff_addr_3  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [3]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [3])
  );
  FDR   \s0/vgamod/buff_addr_2  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [2]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [2])
  );
  FDR   \s0/vgamod/buff_addr_1  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [1]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [1])
  );
  FDR   \s0/vgamod/buff_addr_0  (
    .C(vga_clk),
    .D(\s0/vgamod/buff_addr_mux0000 [0]),
    .R(reset),
    .Q(\s0/vgamod/buff_addr [0])
  );
  FDR   \s0/vgamod/row1_addr_4  (
    .C(vga_clk),
    .D(\s0/vgamod/row1_addr_mux0000 [4]),
    .R(reset),
    .Q(\s0/vgamod/row1_addr [4])
  );
  FDR   \s0/vgamod/row1_addr_3  (
    .C(vga_clk),
    .D(\s0/vgamod/row1_addr_mux0000 [3]),
    .R(reset),
    .Q(\s0/vgamod/row1_addr [3])
  );
  FDR   \s0/vgamod/row1_addr_2  (
    .C(vga_clk),
    .D(\s0/vgamod/row1_addr_mux0000 [2]),
    .R(reset),
    .Q(\s0/vgamod/row1_addr [2])
  );
  FDR   \s0/vgamod/row1_addr_1  (
    .C(vga_clk),
    .D(\s0/vgamod/row1_addr_mux0000 [1]),
    .R(reset),
    .Q(\s0/vgamod/row1_addr [1])
  );
  FDR   \s0/vgamod/row1_addr_0  (
    .C(vga_clk),
    .D(\s0/vgamod/row1_addr_mux0000 [0]),
    .R(reset),
    .Q(\s0/vgamod/row1_addr [0])
  );
  FDR   \s0/vgamod/vga0_rw  (
    .C(vga_clk),
    .D(\s1/rqgti_n ),
    .R(\s0/vgamod/rst_inv ),
    .Q(\s0/vgamod/vga0_rw_622 )
  );
  FDR   \s0/vgamod/cursor_on_v  (
    .C(vga_clk),
    .D(\s0/vgamod/cursor_on_v_and0000 ),
    .R(reset),
    .Q(\s0/vgamod/cursor_on_v_463 )
  );
  FDS   \s0/vgamod/video_on_v  (
    .C(vga_clk),
    .D(\s0/vgamod/video_on_v_mux0000 ),
    .S(reset),
    .Q(\s0/vgamod/video_on_v_672 )
  );
  FDS   \s0/vgamod/vert_sync  (
    .C(vga_clk),
    .D(\s0/vgamod/vert_sync_mux0000 ),
    .S(reset),
    .Q(\s0/vgamod/vert_sync_619 )
  );
  FDS   \s0/vgamod/video_on_h  (
    .C(vga_clk),
    .D(\s0/vgamod/video_on_h_mux0000 ),
    .S(reset),
    .Q(\s0/vgamod/video_on_h_668 )
  );
  FDS   \s0/vgamod/horiz_sync  (
    .C(vga_clk),
    .D(\s0/vgamod/horiz_sync_mux0000 ),
    .S(reset),
    .Q(\s0/vgamod/horiz_sync_524 )
  );
  FDR   \s0/vgamod/dataout_6  (
    .C(vga_clk),
    .D(\s0/vgamod/dataout_mux0000[6] ),
    .R(reset),
    .Q(\s0/vgamod/dataout [6])
  );
  FDR   \s0/vgamod/dataout_5  (
    .C(vga_clk),
    .D(\s0/vgamod/dataout_mux0000[5] ),
    .R(reset),
    .Q(\s0/vgamod/dataout [5])
  );
  FDR   \s0/vgamod/dataout_4  (
    .C(vga_clk),
    .D(\s0/vgamod/dataout_mux0000[4] ),
    .R(reset),
    .Q(\s0/vgamod/dataout [4])
  );
  FDR   \s0/vgamod/dataout_2  (
    .C(vga_clk),
    .D(\s0/vgamod/dataout_mux0000[2] ),
    .R(reset),
    .Q(\s0/vgamod/dataout [2])
  );
  FDR   \s0/vgamod/dataout_1  (
    .C(vga_clk),
    .D(\s0/vgamod/dataout_mux0000[1] ),
    .R(reset),
    .Q(\s0/vgamod/dataout [1])
  );
  FDRE   \s0/vgamod/buff0_addr_10  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[11]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [10])
  );
  FDRE   \s0/vgamod/buff0_addr_9  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[10]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [9])
  );
  FDRE   \s0/vgamod/buff0_addr_8  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[9]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [8])
  );
  FDRE   \s0/vgamod/buff0_addr_7  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[8]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [7])
  );
  FDRE   \s0/vgamod/buff0_addr_6  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[7]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [6])
  );
  FDRE   \s0/vgamod/buff0_addr_5  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[6]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [5])
  );
  FDRE   \s0/vgamod/buff0_addr_4  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[5]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [4])
  );
  FDRE   \s0/vgamod/buff0_addr_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[4]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [3])
  );
  FDRE   \s0/vgamod/buff0_addr_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[3]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [2])
  );
  FDRE   \s0/vgamod/buff0_addr_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[2]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [1])
  );
  FDRE   \s0/vgamod/buff0_addr_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/buff0_addr_not0001 ),
    .D(a[1]),
    .R(reset),
    .Q(\s0/vgamod/buff0_addr [0])
  );
  FDRE   \s0/vgamod/attr0_addr_10  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[11]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [10])
  );
  FDRE   \s0/vgamod/attr0_addr_9  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[10]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [9])
  );
  FDRE   \s0/vgamod/attr0_addr_8  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[9]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [8])
  );
  FDRE   \s0/vgamod/attr0_addr_7  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[8]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [7])
  );
  FDRE   \s0/vgamod/attr0_addr_6  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[7]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [6])
  );
  FDRE   \s0/vgamod/attr0_addr_5  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[6]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [5])
  );
  FDRE   \s0/vgamod/attr0_addr_4  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[5]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [4])
  );
  FDRE   \s0/vgamod/attr0_addr_3  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[4]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [3])
  );
  FDRE   \s0/vgamod/attr0_addr_2  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[3]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [2])
  );
  FDRE   \s0/vgamod/attr0_addr_1  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[2]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [1])
  );
  FDRE   \s0/vgamod/attr0_addr_0  (
    .C(vga_clk),
    .CE(\s0/vgamod/attr0_addr_not0001 ),
    .D(a[1]),
    .R(reset),
    .Q(\s0/vgamod/attr0_addr [0])
  );
  LD   \s4/ls3730/rq_7  (
    .D(xd[7]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [7])
  );
  LD   \s4/ls3730/rq_6  (
    .D(xd[6]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [6])
  );
  LD   \s4/ls3730/rq_5  (
    .D(xd[5]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [5])
  );
  LD   \s4/ls3730/rq_4  (
    .D(xd[4]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [4])
  );
  LD   \s4/ls3730/rq_3  (
    .D(xd[3]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [3])
  );
  LD   \s4/ls3730/rq_2  (
    .D(xd[2]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [2])
  );
  LD   \s4/ls3730/rq_1  (
    .D(xd[1]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [1])
  );
  LD   \s4/ls3730/rq_0  (
    .D(xd[0]),
    .G(\s4/i8237/adstb_974 ),
    .Q(\s4/ls3730/rq [0])
  );
  LDE   \s4/ls6700/q0_3  (
    .D(xd[3]),
    .G(wrt_dma_pg_reg_n),
    .GE(\s1/rqgti_n ),
    .Q(\s4/ls6700/q0 [3])
  );
  LDE   \s4/ls6700/q0_2  (
    .D(xd[2]),
    .G(wrt_dma_pg_reg_n),
    .GE(\s1/rqgti_n ),
    .Q(\s4/ls6700/q0 [2])
  );
  LDE   \s4/ls6700/q0_1  (
    .D(xd[1]),
    .G(wrt_dma_pg_reg_n),
    .GE(\s1/rqgti_n ),
    .Q(\s4/ls6700/q0 [1])
  );
  LDE   \s4/ls6700/q0_0  (
    .D(xd[0]),
    .G(wrt_dma_pg_reg_n),
    .GE(\s1/rqgti_n ),
    .Q(\s4/ls6700/q0 [0])
  );
  LD   \s1/u10/rq_4  (
    .D(\s1/ap [16]),
    .G(\s1/ale ),
    .Q(\s1/u10/rq [4])
  );
  LD   \s1/u10/rq_5  (
    .D(\s1/ap [17]),
    .G(\s1/ale ),
    .Q(\s1/u10/rq [5])
  );
  LD   \s1/u10/rq_6  (
    .D(\s1/ap [18]),
    .G(\s1/ale ),
    .Q(\s1/u10/rq [6])
  );
  LD   \s1/u10/rq_7  (
    .D(\s1/ap [19]),
    .G(\s1/ale ),
    .Q(\s1/u10/rq [7])
  );
  LD   \s1/u9/rq_0  (
    .D(\s1/ap [8]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [0])
  );
  LD   \s1/u9/rq_1  (
    .D(\s1/ap [9]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [1])
  );
  LD   \s1/u9/rq_2  (
    .D(\s1/ap [10]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [2])
  );
  LD   \s1/u9/rq_3  (
    .D(\s1/ap [11]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [3])
  );
  LD   \s1/u9/rq_4  (
    .D(\s1/ap [12]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [4])
  );
  LD   \s1/u9/rq_5  (
    .D(\s1/ap [13]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [5])
  );
  LD   \s1/u9/rq_6  (
    .D(\s1/ap [14]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [6])
  );
  LD   \s1/u9/rq_7  (
    .D(\s1/ap [15]),
    .G(\s1/ale ),
    .Q(\s1/u9/rq [7])
  );
  LD   \s1/u7/rq_0  (
    .D(\s1/adp [0]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [0])
  );
  LD   \s1/u7/rq_1  (
    .D(\s1/adp [1]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [1])
  );
  LD   \s1/u7/rq_2  (
    .D(\s1/adp [2]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [2])
  );
  LD   \s1/u7/rq_3  (
    .D(\s1/adp [3]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [3])
  );
  LD   \s1/u7/rq_4  (
    .D(\s1/adp [4]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [4])
  );
  LD   \s1/u7/rq_5  (
    .D(\s1/adp [5]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [5])
  );
  LD   \s1/u7/rq_6  (
    .D(\s1/adp [6]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [6])
  );
  LD   \s1/u7/rq_7  (
    .D(\s1/adp [7]),
    .G(\s1/ale ),
    .Q(\s1/u7/rq [7])
  );
  LDC #(
    .INIT ( 1'b0 ))
  \s1/i8259/irr_1  (
    .CLR(N0),
    .D(\s1/rqgti_n ),
    .G(\s9/keyboard/irq1_1808 ),
    .Q(\s1/i8259/irr [1])
  );
  LDC #(
    .INIT ( 1'b0 ))
  \s1/i8259/irr_0  (
    .CLR(N0),
    .D(\s1/rqgti_n ),
    .G(\s8/i8253/vcs/C0/OUTCTRL/OUT_1402 ),
    .Q(\s1/i8259/irr [0])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/icws_0  (
    .D(\s1/i8259/icws_mux0000 [2]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/icws [0])
  );
  LD #(
    .INIT ( 1'b0 ))
  \s1/i8259/dout_0  (
    .D(\s1/i8259/dout_mux0000 [0]),
    .G(\s1/i8259/dout_not0001 ),
    .Q(\s1/i8259/dout [0])
  );
  LD #(
    .INIT ( 1'b0 ))
  \s1/i8259/dout_1  (
    .D(\s1/i8259/dout_mux0000 [1]),
    .G(\s1/i8259/dout_not0001 ),
    .Q(\s1/i8259/dout [1])
  );
  LDPE_1 #(
    .INIT ( 1'b1 ))
  \s1/i8259/eoir_0  (
    .D(\s1/adp [0]),
    .G(\s1/i8259/eoir_not0001 ),
    .GE(\s1/i8259/eoir_0_0_not0000 ),
    .PRE(\s1/rqgti_n ),
    .Q(\s1/i8259/eoir[0] )
  );
  LDPE_1 #(
    .INIT ( 1'b1 ))
  \s1/i8259/eoir_1  (
    .D(\s1/adp [1]),
    .G(\s1/i8259/eoir_not0001 ),
    .GE(\s1/i8259/eoir_0_0_not0000 ),
    .PRE(\s1/rqgti_n ),
    .Q(\s1/i8259/eoir[1] )
  );
  LDPE_1 #(
    .INIT ( 1'b1 ))
  \s1/i8259/eoir_3  (
    .D(\s1/adp [3]),
    .G(\s1/i8259/eoir_not0001 ),
    .GE(\s1/i8259/eoir_0_0_not0000 ),
    .PRE(\s1/rqgti_n ),
    .Q(\s1/i8259/eoir[3] )
  );
  LDPE_1 #(
    .INIT ( 1'b1 ))
  \s1/i8259/eoir_4  (
    .D(\s1/adp [4]),
    .G(\s1/i8259/eoir_not0001 ),
    .GE(\s1/i8259/eoir_0_0_not0000 ),
    .PRE(\s1/rqgti_n ),
    .Q(\s1/i8259/eoir[4] )
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_0  (
    .D(\s1/i8259/imr_mux0000 [0]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [0])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_1  (
    .D(\s1/i8259/imr_mux0000 [1]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [1])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_2  (
    .D(\s1/i8259/imr_mux0000 [2]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [2])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_3  (
    .D(\s1/i8259/imr_mux0000 [3]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [3])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_4  (
    .D(\s1/i8259/imr_mux0000 [4]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [4])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_5  (
    .D(\s1/i8259/imr_mux0000 [5]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [5])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_6  (
    .D(\s1/i8259/imr_mux0000 [6]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [6])
  );
  LDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/imr_7  (
    .D(\s1/i8259/imr_mux0000 [7]),
    .G(\s1/i8259/icws_and0000_718 ),
    .GE(\xa[0] ),
    .Q(\s1/i8259/imr [7])
  );
  intel8288   \s1/i8288  (
    .den(\s1/den ),
    .aiowc_n(ior_n),
    .clk(clk),
    .aen_n(\s2/aen_brd_763 ),
    .pden_n(\NLW_s1/i8288_pden_n_UNCONNECTED ),
    .inta_n(N0),
    .dtr(\s1/dtr ),
    .iorc_n(iow_n),
    .amwc_n(memr_n),
    .ale(\s1/ale1 ),
    .cen(aen_n),
    .mrdc_n(memw_n),
    .s({s2_n, s1_n, s0_n})
  );
  intel8088   \s1/i8088  (
    .clk(clk),
    .test_n(\s1/rqgti_n ),
    .reset(reset),
    .mnmx(N0),
    .nmi(N0),
    .rqgto_n(\s1/rqgti_n ),
    .lock(\s1/rqgti_n ),
    .rqgti_n(\s1/rqgti_n ),
    .ready(\s1/ready ),
    .intr(N0),
    .ad({\s1/adp [7], \s1/adp [6], \s1/adp [5], \s1/adp [4], \s1/adp [3], \s1/adp [2], \s1/adp [1], \s1/adp [0]}),
    .a({\s1/ap [19], \s1/ap [18], \s1/ap [17], \s1/ap [16], \s1/ap [15], \s1/ap [14], \s1/ap [13], \s1/ap [12], \s1/ap [11], \s1/ap [10], \s1/ap [9], 
\s1/ap [8]}),
    .qs({\NLW_s1/i8088_qs<1>_UNCONNECTED , \NLW_s1/i8088_qs<0>_UNCONNECTED }),
    .s_n({s2_n, s1_n, s0_n})
  );
  intel8284a   \s1/i8284  (
    .clk(clk1),
    .reset(reset),
    .aen1(\s2/rdy_wait_771 ),
    .fclk(USER_CLK_BUFGP_129),
    .rdy1(N0),
    .osc(\NLW_s1/i8284_osc_UNCONNECTED ),
    .vclk(vga_clk1),
    .pclk(pclk),
    .ready(\s1/ready )
  );
  LDC   \s9/i8255/pb_1  (
    .CLR(reset),
    .D(xd[1]),
    .G(\s9/i8255/pb_cmp_eq0000 ),
    .Q(\s9/i8255/pb[1] )
  );
  LDC   \s9/i8255/pb_2  (
    .CLR(reset),
    .D(xd[2]),
    .G(\s9/i8255/pb_cmp_eq0000 ),
    .Q(\s9/i8255/pb[2] )
  );
  LDC   \s9/i8255/pb_7  (
    .CLR(reset),
    .D(xd[7]),
    .G(\s9/i8255/pb_cmp_eq0000 ),
    .Q(\s9/i8255/pb[7] )
  );
  LD   \s9/i8255/pdo_0  (
    .D(\s9/i8255/pdo_mux0000 [0]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [0])
  );
  LD   \s9/i8255/pdo_1  (
    .D(\s9/i8255/pdo_mux0000 [1]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [1])
  );
  LD   \s9/i8255/pdo_2  (
    .D(\s9/i8255/pdo_mux0000 [2]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [2])
  );
  LD   \s9/i8255/pdo_3  (
    .D(\s9/i8255/pdo_mux0000 [3]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [3])
  );
  LD   \s9/i8255/pdo_4  (
    .D(\s9/i8255/pdo_mux0000 [4]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [4])
  );
  LD   \s9/i8255/pdo_5  (
    .D(\s9/i8255/pdo_mux0000 [5]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [5])
  );
  LD   \s9/i8255/pdo_6  (
    .D(\s9/i8255/pdo_mux0000 [6]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [6])
  );
  LD   \s9/i8255/pdo_7  (
    .D(\s9/i8255/pdo_mux0000 [7]),
    .G(\s9/i8255/pdo_not0001 ),
    .Q(\s9/i8255/pdo [7])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_7  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [7]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [7])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_6  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [6]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [6])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_5  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [5]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [5])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_4  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [4]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [4])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_3  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [3]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [3])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_2  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [2]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [2])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_1  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [1]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [1])
  );
  LD   \s8/i8253/vcs/C0/READ/DREG_0  (
    .D(\s8/i8253/vcs/C0/READ/DREG_mux0000 [0]),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/DREG [0])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_7  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [7]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [7])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_6  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [6]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [6])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_5  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [5]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [5])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_4  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [4]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [4])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_3  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [3]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [3])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_2  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [2]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [2])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_1  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [1]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [1])
  );
  LD   \s8/i8253/vcs/C1/READ/DREG_0  (
    .D(\s8/i8253/vcs/C1/READ/DREG_mux0000 [0]),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/DREG [0])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_7  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [7]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [7])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_6  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [6]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [6])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_5  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [5]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [5])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_4  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [4]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [4])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_3  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [3]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [3])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_2  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [2]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [2])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_1  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [1]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [1])
  );
  LD   \s8/i8253/vcs/C2/READ/DREG_0  (
    .D(\s8/i8253/vcs/C2/READ/DREG_mux0000 [0]),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/DREG [0])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<15>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [14]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [15]),
    .O(\s8/i8253/vcs/Result<15>1 )
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<14>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [13]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [14]),
    .O(\s8/i8253/vcs/Result<14>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<14>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [13]),
    .DI(\s8/i8253/vcs/Eqn_141_mand1_1703 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [14]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [14])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<13>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [12]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [13]),
    .O(\s8/i8253/vcs/Result<13>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<13>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [12]),
    .DI(\s8/i8253/vcs/Eqn_131_mand1_1700 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [13]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [13])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<12>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [11]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [12]),
    .O(\s8/i8253/vcs/Result<12>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<12>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [11]),
    .DI(\s8/i8253/vcs/Eqn_121_mand1_1697 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [12]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [12])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<11>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [10]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [11]),
    .O(\s8/i8253/vcs/Result<11>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<11>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [10]),
    .DI(\s8/i8253/vcs/Eqn_111_mand1_1694 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [11]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [11])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<10>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [9]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [10]),
    .O(\s8/i8253/vcs/Result<10>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<10>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [9]),
    .DI(\s8/i8253/vcs/Eqn_101_mand1_1691 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [10]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [10])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<9>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [8]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [9]),
    .O(\s8/i8253/vcs/Result<9>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<9>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [8]),
    .DI(\s8/i8253/vcs/Eqn_91_mand1_1730 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [9]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [9])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<8>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [7]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [8]),
    .O(\s8/i8253/vcs/Result<8>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<8>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [7]),
    .DI(\s8/i8253/vcs/Eqn_81_mand1_1727 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [8]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [8])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<7>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [6]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [7]),
    .O(\s8/i8253/vcs/Result<7>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<7>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [6]),
    .DI(\s8/i8253/vcs/Eqn_71_mand1_1724 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [7]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [7])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<6>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [5]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [6]),
    .O(\s8/i8253/vcs/Result<6>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<6>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [5]),
    .DI(\s8/i8253/vcs/Eqn_61_mand1_1721 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [6]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [6])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<5>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [4]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [5]),
    .O(\s8/i8253/vcs/Result<5>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<5>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [4]),
    .DI(\s8/i8253/vcs/Eqn_51_mand1_1718 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [5]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [5])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<4>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [3]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [4]),
    .O(\s8/i8253/vcs/Result<4>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<4>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [3]),
    .DI(\s8/i8253/vcs/Eqn_41_mand1_1715 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [4]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [4])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<3>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [2]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [3]),
    .O(\s8/i8253/vcs/Result<3>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<3>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [2]),
    .DI(\s8/i8253/vcs/Eqn_31_mand1_1712 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [3]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [3])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<2>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [1]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [2]),
    .O(\s8/i8253/vcs/Result<2>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<2>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [1]),
    .DI(\s8/i8253/vcs/Eqn_21_mand1_1709 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [2]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [2])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<1>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [0]),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [1]),
    .O(\s8/i8253/vcs/Result<1>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<1>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [0]),
    .DI(\s8/i8253/vcs/Eqn_16_mand1_1706 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [1]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [1])
  );
  XORCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_xor<0>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_eqn_inv ),
    .LI(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [0]),
    .O(\s8/i8253/vcs/Result<0>1 )
  );
  MUXCY   \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy<0>  (
    .CI(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_eqn_inv ),
    .DI(\s8/i8253/vcs/Eqn_01_mand1_1688 ),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [0]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_cy [0])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<15>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [14]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [15]),
    .O(\s8/i8253/vcs/Result [15])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<14>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [13]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [14]),
    .O(\s8/i8253/vcs/Result [14])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<14>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [13]),
    .DI(\s8/i8253/vcs/Eqn_14_mand1_1705 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [14]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [14])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<13>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [12]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [13]),
    .O(\s8/i8253/vcs/Result [13])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<13>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [12]),
    .DI(\s8/i8253/vcs/Eqn_13_mand1_1702 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [13]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [13])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<12>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [11]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [12]),
    .O(\s8/i8253/vcs/Result [12])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<12>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [11]),
    .DI(\s8/i8253/vcs/Eqn_12_mand1_1699 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [12]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [12])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<11>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [10]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [11]),
    .O(\s8/i8253/vcs/Result [11])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<11>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [10]),
    .DI(\s8/i8253/vcs/Eqn_11_mand1_1696 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [11]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [11])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<10>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [9]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [10]),
    .O(\s8/i8253/vcs/Result [10])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<10>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [9]),
    .DI(\s8/i8253/vcs/Eqn_10_mand1_1693 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [10]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [10])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<9>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [8]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [9]),
    .O(\s8/i8253/vcs/Result [9])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<9>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [8]),
    .DI(\s8/i8253/vcs/Eqn_9_mand1_1732 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [9]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [9])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<8>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [7]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [8]),
    .O(\s8/i8253/vcs/Result [8])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<8>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [7]),
    .DI(\s8/i8253/vcs/Eqn_8_mand1_1729 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [8]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [8])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<7>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [6]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [7]),
    .O(\s8/i8253/vcs/Result [7])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<7>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [6]),
    .DI(\s8/i8253/vcs/Eqn_7_mand1_1726 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [7]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [7])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<6>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [5]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [6]),
    .O(\s8/i8253/vcs/Result [6])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<6>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [5]),
    .DI(\s8/i8253/vcs/Eqn_6_mand1_1723 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [6]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [6])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<5>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [4]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [5]),
    .O(\s8/i8253/vcs/Result [5])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<5>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [4]),
    .DI(\s8/i8253/vcs/Eqn_5_mand1_1720 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [5]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [5])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<4>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [3]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [4]),
    .O(\s8/i8253/vcs/Result [4])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<4>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [3]),
    .DI(\s8/i8253/vcs/Eqn_4_mand1_1717 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [4]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [4])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<3>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [2]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [3]),
    .O(\s8/i8253/vcs/Result [3])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<3>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [2]),
    .DI(\s8/i8253/vcs/Eqn_3_mand1_1714 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [3]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [3])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<2>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [1]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [2]),
    .O(\s8/i8253/vcs/Result [2])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<2>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [1]),
    .DI(\s8/i8253/vcs/Eqn_2_mand1_1711 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [2]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [2])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<1>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [0]),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [1]),
    .O(\s8/i8253/vcs/Result [1])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<1>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [0]),
    .DI(\s8/i8253/vcs/Eqn_1_mand1_1708 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [1]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [1])
  );
  XORCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_xor<0>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/COUNT_eqn_inv ),
    .LI(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [0]),
    .O(\s8/i8253/vcs/Result [0])
  );
  MUXCY   \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy<0>  (
    .CI(\s8/i8253/vcs/C0/DOWNCNTR/COUNT_eqn_inv ),
    .DI(\s8/i8253/vcs/Eqn_0_mand1_1690 ),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [0]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_cy [0])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<15>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [14]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [15]),
    .O(\s8/i8253/vcs/Result<15>2 )
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<14>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [13]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [14]),
    .O(\s8/i8253/vcs/Result<14>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<14>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [13]),
    .DI(\s8/i8253/vcs/Eqn_142_mand1_1704 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [14]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [14])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<13>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [12]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [13]),
    .O(\s8/i8253/vcs/Result<13>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<13>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [12]),
    .DI(\s8/i8253/vcs/Eqn_132_mand1_1701 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [13]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [13])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<12>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [11]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [12]),
    .O(\s8/i8253/vcs/Result<12>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<12>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [11]),
    .DI(\s8/i8253/vcs/Eqn_122_mand1_1698 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [12]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [12])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<11>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [10]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [11]),
    .O(\s8/i8253/vcs/Result<11>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<11>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [10]),
    .DI(\s8/i8253/vcs/Eqn_112_mand1_1695 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [11]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [11])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<10>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [9]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [10]),
    .O(\s8/i8253/vcs/Result<10>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<10>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [9]),
    .DI(\s8/i8253/vcs/Eqn_102_mand1_1692 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [10]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [10])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<9>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [8]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [9]),
    .O(\s8/i8253/vcs/Result<9>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<9>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [8]),
    .DI(\s8/i8253/vcs/Eqn_92_mand1_1731 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [9]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [9])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<8>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [7]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [8]),
    .O(\s8/i8253/vcs/Result<8>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<8>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [7]),
    .DI(\s8/i8253/vcs/Eqn_82_mand1_1728 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [8]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [8])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<7>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [6]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [7]),
    .O(\s8/i8253/vcs/Result<7>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<7>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [6]),
    .DI(\s8/i8253/vcs/Eqn_72_mand1_1725 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [7]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [7])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<6>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [5]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [6]),
    .O(\s8/i8253/vcs/Result<6>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<6>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [5]),
    .DI(\s8/i8253/vcs/Eqn_62_mand1_1722 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [6]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [6])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<5>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [4]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [5]),
    .O(\s8/i8253/vcs/Result<5>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<5>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [4]),
    .DI(\s8/i8253/vcs/Eqn_52_mand1_1719 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [5]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [5])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<4>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [3]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [4]),
    .O(\s8/i8253/vcs/Result<4>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<4>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [3]),
    .DI(\s8/i8253/vcs/Eqn_42_mand1_1716 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [4]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [4])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<3>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [2]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [3]),
    .O(\s8/i8253/vcs/Result<3>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<3>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [2]),
    .DI(\s8/i8253/vcs/Eqn_32_mand1_1713 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [3]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [3])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<2>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [1]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [2]),
    .O(\s8/i8253/vcs/Result<2>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<2>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [1]),
    .DI(\s8/i8253/vcs/Eqn_22_mand1_1710 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [2]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [2])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<1>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [0]),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [1]),
    .O(\s8/i8253/vcs/Result<1>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<1>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [0]),
    .DI(\s8/i8253/vcs/Eqn_17_mand1_1707 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [1]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [1])
  );
  XORCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_xor<0>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/COUNT_eqn_inv ),
    .LI(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [0]),
    .O(\s8/i8253/vcs/Result<0>2 )
  );
  MUXCY   \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy<0>  (
    .CI(\s8/i8253/vcs/C1/DOWNCNTR/COUNT_eqn_inv ),
    .DI(\s8/i8253/vcs/Eqn_02_mand1_1689 ),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [0]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_cy [0])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_15  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<15>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [15])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_14  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<14>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [14])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_13  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<13>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [13])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_12  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<12>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [12])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_11  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<11>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [11])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_10  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<10>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [10])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_9  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<9>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [9])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_8  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<8>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [8])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_7  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<7>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [7])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_6  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<6>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [6])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_5  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<5>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [5])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_4  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<4>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [4])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_3  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<3>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [3])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_2  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<2>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_1  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<1>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1])
  );
  FDE   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_0  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result<0>2 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [0])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_15  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<15>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [15])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_14  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<14>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [14])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_13  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<13>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [13])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_12  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<12>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [12])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_11  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<11>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [11])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_10  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<10>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [10])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_9  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<9>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [9])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_8  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<8>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [8])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_7  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<7>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [7])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_6  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<6>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [6])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_5  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<5>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [5])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_4  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<4>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [4])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_3  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<3>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [3])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_2  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<2>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_1  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<1>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1])
  );
  FDE   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_0  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 ),
    .D(\s8/i8253/vcs/Result<0>1 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [0])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_15  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [15]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [15])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_14  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [14]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [14])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_13  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [13]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [13])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_12  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [12]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [12])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_11  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [11]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [11])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_10  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [10]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [10])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_9  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [9]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [9])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_8  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [8]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [8])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_7  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [7]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [7])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_6  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [6]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [6])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_5  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [5]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [5])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_4  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [4]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [4])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_3  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [3]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [3])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_2  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [2]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_1  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [1]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1])
  );
  FDE   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_0  (
    .C(\s8/pclka_1781 ),
    .CE(\s1/rqgti_n ),
    .D(\s8/i8253/vcs/Result [0]),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [0])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/OUTEN  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/LOAD_and0000 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(\s1/rqgti_n ),
    .Q(\s8/i8253/vcs/C2/CNTREG/OUTEN_1584 )
  );
  FDCPE   \s8/i8253/vcs/C2/CNTREG/LOAD  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/pclka1 ),
    .CLR(\s8/i8253/vcs/C2/CNTREG/LOAD_or0000_1583 ),
    .D(N0),
    .PRE(\s8/i8253/vcs/C2/CNTREG/LOAD_and0000 ),
    .Q(\s8/i8253/vcs/C2/CNTREG/LOAD_1581 )
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_7  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[7]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [7])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_6  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[6]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [6])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [5])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [4])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [3])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [2])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [1])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTMSB_0  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[0]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [0])
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \s8/i8253/vcs/C2/CNTREG/lsbflag  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/lsbflag_and0001 ),
    .D(N0),
    .S(\s8/i8253/vcs/C2/CNTREG/lsbflag_and0000 ),
    .Q(\s8/i8253/vcs/C2/CNTREG/lsbflag_1585 )
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_7  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[7]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [7])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_6  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[6]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [6])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [5])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [4])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [3])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [2])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [1])
  );
  FDCE   \s8/i8253/vcs/C2/CNTREG/COUNTLSB_0  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C2/MODEWRITE ),
    .D(xd[0]),
    .Q(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [0])
  );
  FDE   \s8/i8253/vcs/C2/MODEREG/MODE_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/MODEREG/MODE_and0000 ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C2/MODEREG/MODE [5])
  );
  FDE   \s8/i8253/vcs/C2/MODEREG/MODE_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/MODEREG/MODE_and0000 ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C2/MODEREG/MODE [4])
  );
  FDE   \s8/i8253/vcs/C2/MODEREG/MODE_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/MODEREG/MODE_and0000 ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C2/MODEREG/MODE [3])
  );
  FDE   \s8/i8253/vcs/C2/MODEREG/MODE_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/MODEREG/MODE_and0000 ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C2/MODEREG/MODE [2])
  );
  FDE   \s8/i8253/vcs/C2/MODEREG/MODE_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C2/MODEREG/MODE_and0000 ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C2/MODEREG/MODE [1])
  );
  FDC   \s8/i8253/vcs/C2/DOWNCNTR/VLOADCNT  (
    .C(\s8/i8253/vcs/C2/LOADCNT ),
    .CLR(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .D(\s1/rqgti_n ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/VLOADCNT_1639 )
  );
  FDS   \s8/i8253/vcs/C2/DOWNCNTR/LOAD  (
    .C(\s8/pclka_1781 ),
    .D(N0),
    .S(\s8/i8253/vcs/C2/DOWNCNTR/VLOADCNT_1639 ),
    .Q(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 )
  );
  FDCPE   \s8/i8253/vcs/C2/OUTCTRL/TRIG  (
    .C(\s8/i8253/vcs/C2/MODETRIG ),
    .CE(\s8/i8253/vcs/C2/MODETRIG ),
    .CLR(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_1649 ),
    .D(\s1/rqgti_n ),
    .PRE(N0),
    .Q(\s8/i8253/vcs/C2/OUTCTRL/TRIG_1666 )
  );
  FDSE_1   \s8/i8253/vcs/C2/OUTCTRL/OUT  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C2/OUTCTRL/OUT_not0001 ),
    .D(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000 ),
    .S(\s8/i8253/vcs/C2/OUTCTRL/SETOUT__inv ),
    .Q(\s8/i8253/vcs/C2/OUTCTRL/OUT_1653 )
  );
  FDR_1   \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG  (
    .C(\s8/pclka_1781 ),
    .D(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_mux0000 ),
    .R(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_or0000 ),
    .Q(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_1649 )
  );
  FDR_1   \s8/i8253/vcs/C2/OUTCTRL/RELOAD  (
    .C(\s8/pclka_1781 ),
    .D(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_mux0000_1663 ),
    .R(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_or0000 ),
    .Q(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_1662 )
  );
  LD   \s8/i8253/vcs/C2/READ/CLRREADLSB  (
    .D(\s8/i8253/vcs/C2/READ/CLRREADLSB_mux0000 ),
    .G(\s8/i8253/vcs/C2/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C2/READ/CLRREADLSB_1667 )
  );
  LDP   \s8/i8253/vcs/C2/READ/READLSB  (
    .D(N0),
    .G(\s8/i8253/vcs/C2/READ/CLRREADLSB_1667 ),
    .PRE(\s8/i8253/vcs/C2/MODEWRITE ),
    .Q(\s8/i8253/vcs/C2/READ/READLSB_1687 )
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/OUTEN  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/LOAD_and0000 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(\s1/rqgti_n ),
    .Q(\s8/i8253/vcs/C1/CNTREG/OUTEN_1459 )
  );
  FDCPE   \s8/i8253/vcs/C1/CNTREG/LOAD  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/pclka1 ),
    .CLR(\s8/i8253/vcs/C1/CNTREG/LOAD_or0000_1458 ),
    .D(N0),
    .PRE(\s8/i8253/vcs/C1/CNTREG/LOAD_and0000 ),
    .Q(\s8/i8253/vcs/C1/CNTREG/LOAD_1456 )
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_7  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[7]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [7])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_6  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[6]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [6])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [5])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [4])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [3])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [2])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [1])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTMSB_0  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[0]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [0])
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \s8/i8253/vcs/C1/CNTREG/lsbflag  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/lsbflag_and0001 ),
    .D(N0),
    .S(\s8/i8253/vcs/C1/CNTREG/lsbflag_and0000 ),
    .Q(\s8/i8253/vcs/C1/CNTREG/lsbflag_1460 )
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_7  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[7]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [7])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_6  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[6]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [6])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [5])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [4])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [3])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [2])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [1])
  );
  FDCE   \s8/i8253/vcs/C1/CNTREG/COUNTLSB_0  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C1/MODEWRITE ),
    .D(xd[0]),
    .Q(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [0])
  );
  FDE   \s8/i8253/vcs/C1/MODEREG/MODE_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/MODEREG/MODE_and0000 ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C1/MODEREG/MODE [5])
  );
  FDE   \s8/i8253/vcs/C1/MODEREG/MODE_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/MODEREG/MODE_and0000 ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C1/MODEREG/MODE [4])
  );
  FDE   \s8/i8253/vcs/C1/MODEREG/MODE_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/MODEREG/MODE_and0000 ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C1/MODEREG/MODE [3])
  );
  FDE   \s8/i8253/vcs/C1/MODEREG/MODE_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/MODEREG/MODE_and0000 ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C1/MODEREG/MODE [2])
  );
  FDE   \s8/i8253/vcs/C1/MODEREG/MODE_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C1/MODEREG/MODE_and0000 ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C1/MODEREG/MODE [1])
  );
  FDC   \s8/i8253/vcs/C1/DOWNCNTR/VLOADCNT  (
    .C(\s8/i8253/vcs/C1/LOADCNT ),
    .CLR(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .D(\s1/rqgti_n ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/VLOADCNT_1513 )
  );
  FDS   \s8/i8253/vcs/C1/DOWNCNTR/LOAD  (
    .C(\s8/pclka_1781 ),
    .D(N0),
    .S(\s8/i8253/vcs/C1/DOWNCNTR/VLOADCNT_1513 ),
    .Q(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 )
  );
  FDCPE   \s8/i8253/vcs/C1/OUTCTRL/TRIG  (
    .C(\s8/i8253/vcs/C1/MODETRIG ),
    .CE(\s8/i8253/vcs/C1/MODETRIG ),
    .CLR(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_1523 ),
    .D(\s1/rqgti_n ),
    .PRE(\s8/i8253/vcs/C1/OUTCTRL/TRIG_or0000 ),
    .Q(\s8/i8253/vcs/C1/OUTCTRL/TRIG_1539 )
  );
  FDSE_1   \s8/i8253/vcs/C1/OUTCTRL/OUT  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C1/OUTCTRL/OUT_not0001 ),
    .D(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000 ),
    .S(\s8/i8253/vcs/C1/OUTCTRL/SETOUT__inv ),
    .Q(\s8/i8253/vcs/C1/OUTCTRL/OUT_1527 )
  );
  FDR_1   \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG  (
    .C(\s8/pclka_1781 ),
    .D(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_mux0000 ),
    .R(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_or0000 ),
    .Q(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_1523 )
  );
  FDR_1   \s8/i8253/vcs/C1/OUTCTRL/RELOAD  (
    .C(\s8/pclka_1781 ),
    .D(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_mux0000 ),
    .R(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_or0000 ),
    .Q(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_1535 )
  );
  LD   \s8/i8253/vcs/C1/READ/CLRREADLSB  (
    .D(\s8/i8253/vcs/C1/READ/CLRREADLSB_mux0000 ),
    .G(\s8/i8253/vcs/C1/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C1/READ/CLRREADLSB_1541 )
  );
  LDP   \s8/i8253/vcs/C1/READ/READLSB  (
    .D(N0),
    .G(\s8/i8253/vcs/C1/READ/CLRREADLSB_1541 ),
    .PRE(\s8/i8253/vcs/C1/MODEWRITE ),
    .Q(\s8/i8253/vcs/C1/READ/READLSB_1561 )
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/OUTEN  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/LOAD_and0000 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(\s1/rqgti_n ),
    .Q(\s8/i8253/vcs/C0/CNTREG/OUTEN_1332 )
  );
  FDCPE   \s8/i8253/vcs/C0/CNTREG/LOAD  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/pclka1 ),
    .CLR(\s8/i8253/vcs/C0/CNTREG/LOAD_or0000_1331 ),
    .D(N0),
    .PRE(\s8/i8253/vcs/C0/CNTREG/LOAD_and0000 ),
    .Q(\s8/i8253/vcs/C0/CNTREG/LOAD_1329 )
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_7  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[7]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [7])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_6  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[6]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [6])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [5])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [4])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [3])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [2])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [1])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTMSB_0  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[0]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [0])
  );
  FDSE #(
    .INIT ( 1'b0 ))
  \s8/i8253/vcs/C0/CNTREG/lsbflag  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/lsbflag_and0001 ),
    .D(N0),
    .S(\s8/i8253/vcs/C0/CNTREG/lsbflag_and0000 ),
    .Q(\s8/i8253/vcs/C0/CNTREG/lsbflag_1333 )
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_7  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[7]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [7])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_6  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[6]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [6])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [5])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [4])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [3])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [2])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [1])
  );
  FDCE   \s8/i8253/vcs/C0/CNTREG/COUNTLSB_0  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 ),
    .CLR(\s8/i8253/vcs/C0/MODEWRITE ),
    .D(xd[0]),
    .Q(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [0])
  );
  FDE   \s8/i8253/vcs/C0/MODEREG/MODE_5  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/MODEREG/MODE_and0000 ),
    .D(xd[5]),
    .Q(\s8/i8253/vcs/C0/MODEREG/MODE [5])
  );
  FDE   \s8/i8253/vcs/C0/MODEREG/MODE_4  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/MODEREG/MODE_and0000 ),
    .D(xd[4]),
    .Q(\s8/i8253/vcs/C0/MODEREG/MODE [4])
  );
  FDE   \s8/i8253/vcs/C0/MODEREG/MODE_3  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/MODEREG/MODE_and0000 ),
    .D(xd[3]),
    .Q(\s8/i8253/vcs/C0/MODEREG/MODE [3])
  );
  FDE   \s8/i8253/vcs/C0/MODEREG/MODE_2  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/MODEREG/MODE_and0000 ),
    .D(xd[2]),
    .Q(\s8/i8253/vcs/C0/MODEREG/MODE [2])
  );
  FDE   \s8/i8253/vcs/C0/MODEREG/MODE_1  (
    .C(xiow_n),
    .CE(\s8/i8253/vcs/C0/MODEREG/MODE_and0000 ),
    .D(xd[1]),
    .Q(\s8/i8253/vcs/C0/MODEREG/MODE [1])
  );
  FDC   \s8/i8253/vcs/C0/DOWNCNTR/VLOADCNT  (
    .C(\s8/i8253/vcs/C0/LOADCNT ),
    .CLR(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .D(\s1/rqgti_n ),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/VLOADCNT_1386 )
  );
  FDS   \s8/i8253/vcs/C0/DOWNCNTR/LOAD  (
    .C(\s8/pclka_1781 ),
    .D(N0),
    .S(\s8/i8253/vcs/C0/DOWNCNTR/VLOADCNT_1386 ),
    .Q(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 )
  );
  FDCPE   \s8/i8253/vcs/C0/OUTCTRL/TRIG  (
    .C(\s8/i8253/vcs/C0/MODETRIG ),
    .CE(\s8/i8253/vcs/C0/MODETRIG ),
    .CLR(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_1398 ),
    .D(\s1/rqgti_n ),
    .PRE(\s8/i8253/vcs/C0/OUTCTRL/TRIG_or0000 ),
    .Q(\s8/i8253/vcs/C0/OUTCTRL/TRIG_1414 )
  );
  FDSE_1   \s8/i8253/vcs/C0/OUTCTRL/OUT  (
    .C(\s8/pclka_1781 ),
    .CE(\s8/i8253/vcs/C0/OUTCTRL/OUT_not0001 ),
    .D(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000 ),
    .S(\s8/i8253/vcs/C0/OUTCTRL/SETOUT__inv ),
    .Q(\s8/i8253/vcs/C0/OUTCTRL/OUT_1402 )
  );
  FDR_1   \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG  (
    .C(\s8/pclka_1781 ),
    .D(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_mux0000 ),
    .R(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_or0000 ),
    .Q(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_1398 )
  );
  FDR_1   \s8/i8253/vcs/C0/OUTCTRL/RELOAD  (
    .C(\s8/pclka_1781 ),
    .D(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_mux0000 ),
    .R(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_or0000 ),
    .Q(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_1410 )
  );
  LD   \s8/i8253/vcs/C0/READ/CLRREADLSB  (
    .D(\s8/i8253/vcs/C0/READ/CLRREADLSB_mux0000 ),
    .G(\s8/i8253/vcs/C0/READ/DREG_not0001 ),
    .Q(\s8/i8253/vcs/C0/READ/CLRREADLSB_1416 )
  );
  LDP   \s8/i8253/vcs/C0/READ/READLSB  (
    .D(N0),
    .G(\s8/i8253/vcs/C0/READ/CLRREADLSB_1416 ),
    .PRE(\s8/i8253/vcs/C0/MODEWRITE ),
    .Q(\s8/i8253/vcs/C0/READ/READLSB_1436 )
  );
  FDR   \s6/rb3/central_ram_core/fsm_FSM_FFd2  (
    .C(clk),
    .D(\s6/rb3/central_ram_core/fsm_FSM_FFd2-In ),
    .R(N0),
    .Q(\s6/rb3/central_ram_core/fsm_FSM_FFd2_1297 )
  );
  FDR   \s6/rb3/central_ram_core/fsm_FSM_FFd1  (
    .C(clk),
    .D(\s6/rb3/central_ram_core/fsm_FSM_FFd1-In ),
    .R(N0),
    .Q(\s6/rb3/central_ram_core/fsm_FSM_FFd1_1295 )
  );
  FDR   \s6/rb2/central_ram_core/fsm_FSM_FFd2  (
    .C(clk),
    .D(\s6/rb2/central_ram_core/fsm_FSM_FFd2-In ),
    .R(N0),
    .Q(\s6/rb2/central_ram_core/fsm_FSM_FFd2_1283 )
  );
  FDR   \s6/rb2/central_ram_core/fsm_FSM_FFd1  (
    .C(clk),
    .D(\s6/rb2/central_ram_core/fsm_FSM_FFd1-In ),
    .R(N0),
    .Q(\s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 )
  );
  FDR   \s6/rb1/central_ram_core/fsm_FSM_FFd2  (
    .C(clk),
    .D(\s6/rb1/central_ram_core/fsm_FSM_FFd2-In ),
    .R(N0),
    .Q(\s6/rb1/central_ram_core/fsm_FSM_FFd2_1269 )
  );
  FDR   \s6/rb1/central_ram_core/fsm_FSM_FFd1  (
    .C(clk),
    .D(\s6/rb1/central_ram_core/fsm_FSM_FFd1-In ),
    .R(N0),
    .Q(\s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 )
  );
  FDR   \s6/rb0/central_ram_core/fsm_FSM_FFd2  (
    .C(clk),
    .D(\s6/rb0/central_ram_core/fsm_FSM_FFd2-In ),
    .R(N0),
    .Q(\s6/rb0/central_ram_core/fsm_FSM_FFd2_1254 )
  );
  FDR   \s6/rb0/central_ram_core/fsm_FSM_FFd1  (
    .C(clk),
    .D(\s6/rb0/central_ram_core/fsm_FSM_FFd1-In ),
    .R(N0),
    .Q(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 )
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_1  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd9_1820 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [1])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_0  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd10_1811 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [0])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_2  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd8_1819 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [2])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_3  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd7_1818 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [3])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_6  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd4_1815 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [6])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_4  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd6_1817 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [4])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_5  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd5_1816 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [5])
  );
  FDE_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/dataout_7  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .CE(\s9/keyboard/keyinmod/b_FSM_FFd3_1814 ),
    .D(KEYBOARD_DATA_IBUF_12),
    .Q(\s9/keyboard/keyinmod/dataout [7])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd10  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd11_1812 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd10_1811 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd9  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd10_1811 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd9_1820 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd8  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd9_1820 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd8_1819 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd7  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd8_1819 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd7_1818 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd6  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd7_1818 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd6_1817 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd5  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd6_1817 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd5_1816 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd4  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd5_1816 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd4_1815 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd3  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd4_1815 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd3_1814 )
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/b_FSM_FFd2  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd3_1814 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd2_1813 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \s9/keyboard/state_FSM_FFd2  (
    .C(pclk),
    .D(\s9/keyboard/state_FSM_FFd2-In ),
    .R(reset),
    .Q(\s9/keyboard/state_FSM_FFd2_1851 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \s9/keyboard/state_FSM_FFd1  (
    .C(pclk),
    .D(\s9/keyboard/state_FSM_FFd1-In ),
    .R(reset),
    .Q(\s9/keyboard/state_FSM_FFd1_1849 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \s9/keyboard/state_FSM_FFd3  (
    .C(pclk),
    .D(\s9/keyboard/state_FSM_FFd3-In ),
    .R(reset),
    .Q(\s9/keyboard/state_FSM_FFd3_1853 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_6  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000 [1]),
    .Q(\s9/keyboard/pa [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_5  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000 [2]),
    .Q(\s9/keyboard/pa [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_4  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000 [3]),
    .Q(\s9/keyboard/pa [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_3  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000 [4]),
    .Q(\s9/keyboard/pa [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_2  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000 [5]),
    .Q(\s9/keyboard/pa [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_1  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000 [6]),
    .Q(\s9/keyboard/pa [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_0  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000 [7]),
    .Q(\s9/keyboard/pa [0])
  );
  FDR   \s2/td2/td5/q  (
    .C(USER_CLK_BUFGP_129),
    .D(clk_LUT1),
    .R(N0),
    .Q(\s2/td2/td5/q_773 )
  );
  FDR   \s2/b5  (
    .C(clk),
    .D(\s2/aen_brd_763 ),
    .R(reset),
    .Q(\s2/b5_768 )
  );
  FDR   \s2/aen_brd  (
    .C(clk),
    .D(\s2/holda_770 ),
    .R(reset),
    .Q(\s2/aen_brd_763 )
  );
  FDS   \s2/holda  (
    .C(\s2/clk_n ),
    .D(N0),
    .S(\s2/holda_770 ),
    .Q(\s2/holda_770 )
  );
  FDS   \s2/b3  (
    .C(clk),
    .D(\s2/b2 ),
    .S(reset),
    .Q(\s2/b3_767 )
  );
  FDS   \s2/rdy_wait  (
    .C(\s2/b1 ),
    .D(\s2/rdy_wait_mux0000 ),
    .S(\s1/rqgti_n ),
    .Q(\s2/rdy_wait_771 )
  );
  FDR   \s3/td0/td5/q  (
    .C(USER_CLK_BUFGP_129),
    .D(\s3/rasc ),
    .R(N0),
    .Q(\s3/td0/td5/q_781 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux00001411  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .O(N164)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/C2/DOWNCNTR/COUNT_or00001  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_or0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000161  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [2]),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .O(N157)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000161  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [2]),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .O(N158)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s2/rdy_wait_mux00001  (
    .I0(\s2/b3_767 ),
    .I1(\s4/i8237/dack [0]),
    .O(\s2/rdy_wait_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \s2/dclk1  (
    .I0(\s2/td2/td5/q_773 ),
    .I1(clk1),
    .O(dclk1)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s8/i8253/vcs/SELMODE011  (
    .I0(\xa[0] ),
    .I1(\xa[1] ),
    .I2(tc_cs_n),
    .O(N129)
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  \s1/i8259/dout_not00011  (
    .I0(\s1/i8259/eoir[4] ),
    .I1(\s1/i8259/eoir[3] ),
    .I2(\s1/i8259/eoir[1] ),
    .O(\s1/i8259/dout_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \s0/vgamod/wr_adr21  (
    .I0(a[2]),
    .I1(a[1]),
    .I2(a[3]),
    .O(N131)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  iow_nLogicTrst1 (
    .I0(\s2/aen_brd_763 ),
    .I1(dma_aen_n),
    .I2(xiow_n),
    .O(iow_n)
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \s1/i8259/dout_mux0000<1>1  (
    .I0(\s1/i8259/irr [1]),
    .I1(\s1/i8259/eoir[4] ),
    .I2(\s1/i8259/eoir[3] ),
    .I3(\s1/i8259/eoir[1] ),
    .I4(\s1/i8259/eoir[0] ),
    .O(\s1/i8259/dout_mux0000 [1])
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \s1/i8259/dout_mux0000<0>1  (
    .I0(\s1/i8259/irr [0]),
    .I1(\s1/i8259/eoir[4] ),
    .I2(\s1/i8259/eoir[3] ),
    .I3(\s1/i8259/eoir[1] ),
    .I4(\s1/i8259/eoir[0] ),
    .O(\s1/i8259/dout_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFB ))
  \s8/i8253/vcs/C2/READ/DREG_not00011  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I1(\xa[1] ),
    .I2(tc_cs_n),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I4(\xa[0] ),
    .I5(N811),
    .O(\s8/i8253/vcs/C2/READ/DREG_not0001 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFB ))
  \s8/i8253/vcs/C1/READ/DREG_not00011  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I1(\xa[0] ),
    .I2(tc_cs_n),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I4(\xa[1] ),
    .I5(N811),
    .O(\s8/i8253/vcs/C1/READ/DREG_not0001 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \s8/i8253/vcs/C0/READ/DREG_not00011  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I2(tc_cs_n),
    .I3(\xa[1] ),
    .I4(\xa[0] ),
    .I5(N811),
    .O(\s8/i8253/vcs/C0/READ/DREG_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s0/vgamod/wr_adr14  (
    .I0(a[10]),
    .I1(a[4]),
    .I2(a[5]),
    .I3(N128),
    .I4(N1511),
    .I5(N170),
    .O(\s0/vgamod/dataout_and0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s3/wrt_dma_pg_reg_n_SW0  (
    .I0(xiow_n),
    .I1(\s2/aen_brd_763 ),
    .O(N171)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFB ))
  \s3/wrt_dma_pg_reg_n  (
    .I0(\xa[6] ),
    .I1(\xa[7] ),
    .I2(\xa[5] ),
    .I3(a[9]),
    .I4(a[8]),
    .I5(N171),
    .O(wrt_dma_pg_reg_n)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000010 ))
  \s1/i8259/icws_and0000  (
    .I0(\xa[7] ),
    .I1(\xa[6] ),
    .I2(\xa[5] ),
    .I3(a[9]),
    .I4(a[8]),
    .I5(N171),
    .O(\s1/i8259/icws_and0000_718 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \s9/keyboard/state_cmp_eq0000_SW0  (
    .I0(\s9/keyboard/tdata [2]),
    .I1(\s9/keyboard/tdata [1]),
    .I2(\s9/keyboard/tdata [0]),
    .O(N175)
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s9/keyboard/state_cmp_eq0000  (
    .I0(\s9/keyboard/tdata [3]),
    .I1(\s9/keyboard/tdata [5]),
    .I2(N175),
    .I3(\s9/keyboard/tdata [4]),
    .I4(\s9/keyboard/tdata [7]),
    .I5(\s9/keyboard/tdata [6]),
    .O(\s9/keyboard/state_cmp_eq0000_1855 )
  );
  LUT5 #(
    .INIT ( 32'h00044004 ))
  \s8/i8253/vcs/C2/CNTREG/LOAD_or0000_SW0  (
    .I0(\xa[0] ),
    .I1(\xa[1] ),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I4(\s8/i8253/vcs/C2/CNTREG/lsbflag_1585 ),
    .O(N177)
  );
  LUT6 #(
    .INIT ( 64'hCCCC400040004000 ))
  \s8/i8253/vcs/C2/CNTREG/LOAD_or0000  (
    .I0(tc_cs_n),
    .I1(xiow_n),
    .I2(xior_n),
    .I3(N177),
    .I4(\s8/pclka1 ),
    .I5(N75),
    .O(\s8/i8253/vcs/C2/CNTREG/LOAD_or0000_1583 )
  );
  LUT5 #(
    .INIT ( 32'h00044004 ))
  \s8/i8253/vcs/C1/CNTREG/LOAD_or0000_SW0  (
    .I0(\xa[1] ),
    .I1(\xa[0] ),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I4(\s8/i8253/vcs/C1/CNTREG/lsbflag_1460 ),
    .O(N179)
  );
  LUT6 #(
    .INIT ( 64'hCCCC400040004000 ))
  \s8/i8253/vcs/C1/CNTREG/LOAD_or0000  (
    .I0(tc_cs_n),
    .I1(xiow_n),
    .I2(xior_n),
    .I3(N179),
    .I4(\s8/pclka1 ),
    .I5(N76),
    .O(\s8/i8253/vcs/C1/CNTREG/LOAD_or0000_1458 )
  );
  LUT5 #(
    .INIT ( 32'h00011001 ))
  \s8/i8253/vcs/C0/CNTREG/LOAD_or0000_SW0  (
    .I0(\xa[0] ),
    .I1(\xa[1] ),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I4(\s8/i8253/vcs/C0/CNTREG/lsbflag_1333 ),
    .O(N181)
  );
  LUT6 #(
    .INIT ( 64'hCCCC400040004000 ))
  \s8/i8253/vcs/C0/CNTREG/LOAD_or0000  (
    .I0(tc_cs_n),
    .I1(xiow_n),
    .I2(xior_n),
    .I3(N181),
    .I4(\s8/pclka1 ),
    .I5(N77),
    .O(\s8/i8253/vcs/C0/CNTREG/LOAD_or0000_1331 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \s0/vgamod/buff0_addr_not00011  (
    .I0(\s0/vgamod/mem_range ),
    .I1(a[0]),
    .I2(memw_n),
    .O(\s0/vgamod/buff0_addr_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s0/vgamod/attr0_addr_not00011  (
    .I0(a[0]),
    .I1(\s0/vgamod/mem_range ),
    .I2(memw_n),
    .O(\s0/vgamod/attr0_addr_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s0/vgamod/video_on11  (
    .I0(\s0/vgamod/video_on_h_668 ),
    .I1(\s0/vgamod/video_on_v_672 ),
    .O(\s0/vgamod/video_on1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/buff_addr_mux0000<3>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [3]),
    .I2(\s0/vgamod/buff0_addr [3]),
    .O(\s0/vgamod/buff_addr_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/buff_addr_mux0000<2>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [2]),
    .I2(\s0/vgamod/buff0_addr [2]),
    .O(\s0/vgamod/buff_addr_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/buff_addr_mux0000<1>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [1]),
    .I2(\s0/vgamod/buff0_addr [1]),
    .O(\s0/vgamod/buff_addr_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/buff_addr_mux0000<0>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [0]),
    .I2(\s0/vgamod/buff0_addr [0]),
    .O(\s0/vgamod/buff_addr_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/attr_addr_mux0000<3>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [3]),
    .I2(\s0/vgamod/attr0_addr [3]),
    .O(\s0/vgamod/attr_addr_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/attr_addr_mux0000<2>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [2]),
    .I2(\s0/vgamod/attr0_addr [2]),
    .O(\s0/vgamod/attr_addr_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/attr_addr_mux0000<1>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [1]),
    .I2(\s0/vgamod/attr0_addr [1]),
    .O(\s0/vgamod/attr_addr_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/attr_addr_mux0000<0>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [0]),
    .I2(\s0/vgamod/attr0_addr [0]),
    .O(\s0/vgamod/attr_addr_mux0000 [0])
  );
  LUT5 #(
    .INIT ( 32'h0002AAAA ))
  \s0/vgamod/row1_addr_mux0000<4>1  (
    .I0(\s0/vgamod/row_addr [4]),
    .I1(\s0/vgamod/row_addr [2]),
    .I2(\s0/vgamod/row_addr [0]),
    .I3(\s0/vgamod/row_addr [1]),
    .I4(\s0/vgamod/row_addr [3]),
    .O(\s0/vgamod/row1_addr_mux0000 [4])
  );
  LUT5 #(
    .INIT ( 32'h0002AAAA ))
  \s0/vgamod/row1_addr_mux0000<3>1  (
    .I0(\s0/vgamod/row_addr [3]),
    .I1(\s0/vgamod/row_addr [2]),
    .I2(\s0/vgamod/row_addr [0]),
    .I3(\s0/vgamod/row_addr [1]),
    .I4(\s0/vgamod/row_addr [4]),
    .O(\s0/vgamod/row1_addr_mux0000 [3])
  );
  LUT5 #(
    .INIT ( 32'hAAAA8AAA ))
  \s0/vgamod/row1_addr_mux0000<2>1  (
    .I0(\s0/vgamod/row_addr [2]),
    .I1(\s0/vgamod/row_addr [0]),
    .I2(\s0/vgamod/row_addr [3]),
    .I3(\s0/vgamod/row_addr [4]),
    .I4(\s0/vgamod/row_addr [1]),
    .O(\s0/vgamod/row1_addr_mux0000 [2])
  );
  LUT5 #(
    .INIT ( 32'h7F307520 ))
  \s9/keyboard/state_FSM_FFd3-In1  (
    .I0(\s9/keyboard/state_FSM_FFd2_1851 ),
    .I1(\s9/i8255/pb[7] ),
    .I2(\s9/keyboard/state_FSM_FFd3_1853 ),
    .I3(\s9/keyboard/keyinmod/newdata_1829 ),
    .I4(\s9/keyboard/state_FSM_FFd1_1849 ),
    .O(\s9/keyboard/state_FSM_FFd3-In )
  );
  LUT5 #(
    .INIT ( 32'h3CCC2CCC ))
  \s0/vgamod/row1_addr_mux0000<0>1  (
    .I0(\s0/vgamod/row_addr [1]),
    .I1(\s0/vgamod/row_addr [0]),
    .I2(\s0/vgamod/row_addr [3]),
    .I3(\s0/vgamod/row_addr [4]),
    .I4(\s0/vgamod/row_addr [2]),
    .O(\s0/vgamod/row1_addr_mux0000 [0])
  );
  LUT5 #(
    .INIT ( 32'h9CCC8CCC ))
  \s0/vgamod/row1_addr_mux0000<1>1  (
    .I0(\s0/vgamod/row_addr [0]),
    .I1(\s0/vgamod/row_addr [1]),
    .I2(\s0/vgamod/row_addr [3]),
    .I3(\s0/vgamod/row_addr [4]),
    .I4(\s0/vgamod/row_addr [2]),
    .O(\s0/vgamod/row1_addr_mux0000 [1])
  );
  LUT5 #(
    .INIT ( 32'hDFFCDF1C ))
  \s9/keyboard/state_FSM_FFd2-In1  (
    .I0(\s9/keyboard/state_cmp_eq0000_1855 ),
    .I1(\s9/keyboard/state_FSM_FFd3_1853 ),
    .I2(\s9/keyboard/keyinmod/newdata_1829 ),
    .I3(\s9/keyboard/state_FSM_FFd1_1849 ),
    .I4(\s9/keyboard/state_FSM_FFd2_1851 ),
    .O(\s9/keyboard/state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s1/i8259/icws_mux0000<2>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/i8259/icws [1]),
    .O(\s1/i8259/icws_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \s8/i8253/vcs/C2/CNTREG/lsbflag_and00011  (
    .I0(\s8/i8253/vcs/C2/CNTREG/lsbflag_1585 ),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I3(N75),
    .O(\s8/i8253/vcs/C2/CNTREG/lsbflag_and0001 )
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \s8/i8253/vcs/C2/CNTREG/COUNTMSB_not00011  (
    .I0(N75),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C2/CNTREG/lsbflag_1585 ),
    .O(\s8/i8253/vcs/C2/CNTREG/COUNTMSB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \s8/i8253/vcs/C2/CNTREG/COUNTLSB_not00011  (
    .I0(N75),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I2(\s8/i8253/vcs/C2/CNTREG/lsbflag_1585 ),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C2/CNTREG/COUNTLSB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \s8/i8253/vcs/C1/CNTREG/lsbflag_and00011  (
    .I0(\s8/i8253/vcs/C1/CNTREG/lsbflag_1460 ),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I3(N76),
    .O(\s8/i8253/vcs/C1/CNTREG/lsbflag_and0001 )
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \s8/i8253/vcs/C1/CNTREG/COUNTMSB_not00011  (
    .I0(N76),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C1/CNTREG/lsbflag_1460 ),
    .O(\s8/i8253/vcs/C1/CNTREG/COUNTMSB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \s8/i8253/vcs/C1/CNTREG/COUNTLSB_not00011  (
    .I0(N76),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I2(\s8/i8253/vcs/C1/CNTREG/lsbflag_1460 ),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C1/CNTREG/COUNTLSB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \s8/i8253/vcs/C0/CNTREG/lsbflag_and00011  (
    .I0(\s8/i8253/vcs/C0/CNTREG/lsbflag_1333 ),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I3(N77),
    .O(\s8/i8253/vcs/C0/CNTREG/lsbflag_and0001 )
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \s8/i8253/vcs/C0/CNTREG/COUNTMSB_not00011  (
    .I0(N77),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C0/CNTREG/lsbflag_1333 ),
    .O(\s8/i8253/vcs/C0/CNTREG/COUNTMSB_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \s8/i8253/vcs/C0/CNTREG/COUNTLSB_not00011  (
    .I0(N77),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I2(\s8/i8253/vcs/C0/CNTREG/lsbflag_1333 ),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C0/CNTREG/COUNTLSB_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s8/sdata_and00001  (
    .I0(\s8/i8253/vcs/C2/OUTCTRL/OUT_1653 ),
    .I1(\s9/i8255/pb[1] ),
    .O(PIEZO_SPEAKER_OBUF_127)
  );
  LUT5 #(
    .INIT ( 32'h44044040 ))
  \s8/i8253/vcs/C2/CNTREG/LOAD_and00001  (
    .I0(N75),
    .I1(xiow_n),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C2/CNTREG/lsbflag_1585 ),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C2/CNTREG/LOAD_and0000 )
  );
  LUT5 #(
    .INIT ( 32'h44044040 ))
  \s8/i8253/vcs/C1/CNTREG/LOAD_and00001  (
    .I0(N76),
    .I1(xiow_n),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C1/CNTREG/lsbflag_1460 ),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C1/CNTREG/LOAD_and0000 )
  );
  LUT5 #(
    .INIT ( 32'h44044040 ))
  \s8/i8253/vcs/C0/CNTREG/LOAD_and00001  (
    .I0(N77),
    .I1(xiow_n),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C0/CNTREG/lsbflag_1333 ),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C0/CNTREG/LOAD_and0000 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/new_attr_addr<2>1  (
    .I0(\s0/vgamod/new_attr ),
    .I1(\s0/vgamod/attr_addr [2]),
    .I2(a[3]),
    .O(\s0/vgamod/new_attr_addr [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/new_attr_addr<1>1  (
    .I0(\s0/vgamod/new_attr ),
    .I1(\s0/vgamod/attr_addr [1]),
    .I2(a[2]),
    .O(\s0/vgamod/new_attr_addr [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/new_attr_addr<10>1  (
    .I0(\s0/vgamod/new_attr ),
    .I1(\s0/vgamod/attr_addr [10]),
    .I2(a[11]),
    .O(\s0/vgamod/new_attr_addr [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s0/vgamod/new_attr_addr<0>1  (
    .I0(\s0/vgamod/new_attr ),
    .I1(\s0/vgamod/attr_addr [0]),
    .I2(a[1]),
    .O(\s0/vgamod/new_attr_addr [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \s0/vgamod/Madd_ver_addr_add0000_lut<2>1  (
    .I0(\s0/vgamod/row1_addr [2]),
    .I1(\s0/vgamod/row1_addr [0]),
    .O(\s0/vgamod/Madd_ver_addr_add0000_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \s0/vgamod/Mxor_fg_or_bg_Result1  (
    .I0(\s0/vgamod/cursor_on_457 ),
    .I1(\s0/vgamod/vga_shift [7]),
    .O(\s0/vgamod/fg_or_bg )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s9/keyboard/pa_mux0000<7>1  (
    .I0(\s9/keyboard/N5 ),
    .I1(\s9/keyboard/tdata [0]),
    .I2(\s9/keyboard/pa [0]),
    .I3(\s9/keyboard/N6 ),
    .O(\s9/keyboard/pa_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s9/keyboard/pa_mux0000<6>1  (
    .I0(\s9/keyboard/N5 ),
    .I1(\s9/keyboard/tdata [1]),
    .I2(\s9/keyboard/pa [1]),
    .I3(\s9/keyboard/N6 ),
    .O(\s9/keyboard/pa_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s9/keyboard/pa_mux0000<5>1  (
    .I0(\s9/keyboard/N5 ),
    .I1(\s9/keyboard/tdata [2]),
    .I2(\s9/keyboard/pa [2]),
    .I3(\s9/keyboard/N6 ),
    .O(\s9/keyboard/pa_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s9/keyboard/pa_mux0000<4>1  (
    .I0(\s9/keyboard/N5 ),
    .I1(\s9/keyboard/tdata [3]),
    .I2(\s9/keyboard/pa [3]),
    .I3(\s9/keyboard/N6 ),
    .O(\s9/keyboard/pa_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s9/keyboard/pa_mux0000<3>1  (
    .I0(\s9/keyboard/N5 ),
    .I1(\s9/keyboard/tdata [4]),
    .I2(\s9/keyboard/pa [4]),
    .I3(\s9/keyboard/N6 ),
    .O(\s9/keyboard/pa_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s9/keyboard/pa_mux0000<2>1  (
    .I0(\s9/keyboard/N5 ),
    .I1(\s9/keyboard/tdata [5]),
    .I2(\s9/keyboard/pa [5]),
    .I3(\s9/keyboard/N6 ),
    .O(\s9/keyboard/pa_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s9/keyboard/pa_mux0000<1>1  (
    .I0(\s9/keyboard/N5 ),
    .I1(\s9/keyboard/tdata [6]),
    .I2(\s9/keyboard/pa [6]),
    .I3(\s9/keyboard/N6 ),
    .O(\s9/keyboard/pa_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \s0/vgamod/brown_fg1  (
    .I0(\s0/vgamod/intense_527 ),
    .I1(\s0/vgamod/vga_fg_colour [2]),
    .I2(\s0/vgamod/vga_fg_colour [1]),
    .I3(\s0/vgamod/vga_fg_colour [0]),
    .O(\s0/vgamod/brown_fg )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \s4/i8237/ff_mux00001  (
    .I0(\s4/i8237/ff_1139 ),
    .I1(\xa[1] ),
    .I2(\xa[2] ),
    .I3(\xa[3] ),
    .O(\s4/i8237/ff_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h0004000400000004 ))
  \s9/keyboard/pa_mux0000<1>31  (
    .I0(\s9/keyboard/state_FSM_FFd3_1853 ),
    .I1(\s9/keyboard/keyinmod/newdata_1829 ),
    .I2(\s9/keyboard/state_cmp_eq0000_1855 ),
    .I3(reset),
    .I4(\s9/keyboard/state_FSM_FFd2_1851 ),
    .I5(\s9/keyboard/state_FSM_FFd1_1849 ),
    .O(\s9/keyboard/N5 )
  );
  LUT6 #(
    .INIT ( 64'hA8FDA8A8A8A8A8A8 ))
  \s0/vgamod/vga_green_o_mux0000<1>1  (
    .I0(\s0/vgamod/fg_or_bg ),
    .I1(\s0/vgamod/intense_527 ),
    .I2(\s0/vgamod/brown_fg ),
    .I3(\s0/vgamod/vga_bg_colour [0]),
    .I4(\s0/vgamod/vga_bg_colour [1]),
    .I5(\s0/vgamod/vga_bg_colour [2]),
    .O(\s0/vgamod/vga_green_o_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'h4044EAEE40444044 ))
  \s0/vgamod/vga_green_o_mux0000<0>1  (
    .I0(\s0/vgamod/fg_or_bg ),
    .I1(\s0/vgamod/vga_bg_colour [1]),
    .I2(\s0/vgamod/vga_bg_colour [0]),
    .I3(\s0/vgamod/vga_bg_colour [2]),
    .I4(\s0/vgamod/brown_fg ),
    .I5(\s0/vgamod/vga_fg_colour [1]),
    .O(\s0/vgamod/vga_green_o_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'h0004400000004000 ))
  \s4/i8237/Mtridata_iow_mux00001  (
    .I0(\s4/i8237/mode [0]),
    .I1(\s4/i8237/mode [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [1]),
    .I4(\s4/i8237/state [2]),
    .I5(\s4/i8237/drequest [0]),
    .O(\s4/i8237/Mtridata_iow_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h0004400000004000 ))
  \s4/i8237/Mtridata_ior_mux00001  (
    .I0(\s4/i8237/mode [1]),
    .I1(\s4/i8237/mode [0]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [1]),
    .I4(\s4/i8237/state [2]),
    .I5(\s4/i8237/drequest [0]),
    .O(\s4/i8237/Mtridata_ior_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hCCCC4CCDCCCCCCCC ))
  \s0/vgamod/video_on_v_mux00001  (
    .I0(\s0/vgamod/v_count [4]),
    .I1(\s0/vgamod/video_on_v_672 ),
    .I2(\s0/vgamod/v_count [7]),
    .I3(\s0/vgamod/v_count [8]),
    .I4(\s0/vgamod/v_count [6]),
    .I5(N127),
    .O(\s0/vgamod/video_on_v_mux0000 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \s0/vgamod/vga_red_o_or00001  (
    .I0(\s0/vgamod/video_on_666 ),
    .I1(reset),
    .O(\s0/vgamod/vga_red_o_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \s8/i8253/vcs/C2/CNTREG/lsbflag_and00001  (
    .I0(\s8/i8253/vcs/C2/CNTREG/lsbflag_1585 ),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I3(N75),
    .O(\s8/i8253/vcs/C2/CNTREG/lsbflag_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \s8/i8253/vcs/C1/CNTREG/lsbflag_and00001  (
    .I0(\s8/i8253/vcs/C1/CNTREG/lsbflag_1460 ),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I3(N76),
    .O(\s8/i8253/vcs/C1/CNTREG/lsbflag_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \s8/i8253/vcs/C0/CNTREG/lsbflag_and00001  (
    .I0(\s8/i8253/vcs/C0/CNTREG/lsbflag_1333 ),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I3(N77),
    .O(\s8/i8253/vcs/C0/CNTREG/lsbflag_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \s0/vgamod/new_buff1  (
    .I0(a[0]),
    .I1(\s0/vgamod/mem_range ),
    .I2(memr_n),
    .I3(memw_n),
    .O(\s0/vgamod/new_buff )
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \s0/vgamod/new_attr1  (
    .I0(a[0]),
    .I1(\s0/vgamod/mem_range ),
    .I2(memr_n),
    .I3(memw_n),
    .O(\s0/vgamod/new_attr )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_14_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [14]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_14_mand1_1705 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_142_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [14]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_142_mand1_1704 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_141_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [14]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_141_mand1_1703 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_13_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_13_mand1_1702 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_132_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_132_mand1_1701 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_131_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_131_mand1_1700 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<7>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [7]),
    .O(\s1/i8259/imr_mux0000 [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<6>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [6]),
    .O(\s1/i8259/imr_mux0000 [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<5>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [5]),
    .O(\s1/i8259/imr_mux0000 [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<4>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [4]),
    .O(\s1/i8259/imr_mux0000 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<3>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [3]),
    .O(\s1/i8259/imr_mux0000 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<2>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [2]),
    .O(\s1/i8259/imr_mux0000 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<1>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [1]),
    .O(\s1/i8259/imr_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s1/i8259/imr_mux0000<0>1  (
    .I0(\s1/i8259/icws [0]),
    .I1(\s1/adp [0]),
    .O(\s1/i8259/imr_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_12_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [12]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_12_mand1_1699 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_122_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [12]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_122_mand1_1698 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_121_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [12]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_121_mand1_1697 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s0/vgamod/wr_vcursor1  (
    .I0(N68),
    .I1(\s0/vgamod/reg_adr [2]),
    .I2(\s0/vgamod/reg_adr [0]),
    .O(\s0/vgamod/wr_vcursor )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \s0/vgamod/wr_hcursor1  (
    .I0(\s0/vgamod/reg_adr [0]),
    .I1(\s0/vgamod/reg_adr [2]),
    .I2(N68),
    .O(\s0/vgamod/wr_hcursor )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \s0/vgamod/wr_cur_start1  (
    .I0(N68),
    .I1(\s0/vgamod/reg_adr [0]),
    .I2(\s0/vgamod/reg_adr [2]),
    .O(\s0/vgamod/wr_cur_start )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s0/vgamod/wr_cur_end2  (
    .I0(N68),
    .I1(\s0/vgamod/reg_adr [0]),
    .I2(\s0/vgamod/reg_adr [2]),
    .O(\s0/vgamod/wr_cur_end )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \s0/vgamod/video_on_not0001_inv1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/h_count [1]),
    .I2(\s0/vgamod/h_count [2]),
    .O(\s0/vgamod/video_on_not0001_inv )
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  \s0/vgamod/wr_cur_end11  (
    .I0(\s0/vgamod/reg_adr [3]),
    .I1(iow_n),
    .I2(a[0]),
    .I3(\s0/vgamod/dataout_and0000 ),
    .I4(\s0/vgamod/reg_adr [1]),
    .I5(N131),
    .O(N68)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_11_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [11]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_11_mand1_1696 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_112_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [11]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_112_mand1_1695 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_111_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [11]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_111_mand1_1694 )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \s0/vgamod/dataout_mux0000<0>31  (
    .I0(\s0/vgamod/dataout_and0000 ),
    .I1(a[0]),
    .I2(N131),
    .I3(\s0/vgamod/reg_adr [3]),
    .I4(\s0/vgamod/reg_adr [1]),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \s0/vgamod/dataout_mux0000<6>1  (
    .I0(\s0/vgamod/reg_hcursor [6]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_adr [2]),
    .I4(N7),
    .I5(\s0/vgamod/dataout [6]),
    .O(\s0/vgamod/dataout_mux0000[6] )
  );
  LUT6 #(
    .INIT ( 64'hFFFF800080008000 ))
  \s0/vgamod/dataout_mux0000<5>1  (
    .I0(\s0/vgamod/reg_hcursor [5]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_adr [2]),
    .I4(N7),
    .I5(\s0/vgamod/dataout [5]),
    .O(\s0/vgamod/dataout_mux0000[5] )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \s4/i8237/adstb_needed_mux0000_SW0  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/curr_addr [6]),
    .I2(\s4/i8237/curr_addr [7]),
    .I3(\s4/i8237/curr_addr [0]),
    .I4(\s4/i8237/curr_addr [5]),
    .O(N183)
  );
  LUT5 #(
    .INIT ( 32'hFF7FFFFF ))
  \s4/i8237/adstb_needed_mux0000_SW1  (
    .I0(\s4/i8237/curr_addr [5]),
    .I1(\s4/i8237/curr_addr [6]),
    .I2(\s4/i8237/curr_addr [7]),
    .I3(\s4/i8237/mode [3]),
    .I4(\s4/i8237/curr_addr [0]),
    .O(N184)
  );
  LUT6 #(
    .INIT ( 64'h0000800000018001 ))
  \s4/i8237/adstb_needed_mux0000  (
    .I0(\s4/i8237/curr_addr [1]),
    .I1(\s4/i8237/curr_addr [2]),
    .I2(\s4/i8237/curr_addr [3]),
    .I3(\s4/i8237/curr_addr [4]),
    .I4(N184),
    .I5(N183),
    .O(\s4/i8237/adstb_needed_mux0000_977 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \s0/vgamod/cursor_on_h_cmp_eq0000749  (
    .I0(\s0/vgamod/h_count [7]),
    .I1(\s0/vgamod/reg_hcursor [4]),
    .I2(\s0/vgamod/h_count [8]),
    .I3(\s0/vgamod/reg_hcursor [5]),
    .I4(\s0/vgamod/h_count [9]),
    .I5(\s0/vgamod/reg_hcursor [6]),
    .O(\s0/vgamod/cursor_on_h_cmp_eq0000749_461 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \s0/vgamod/cursor_on_h_cmp_eq0000794  (
    .I0(\s0/vgamod/h_count [5]),
    .I1(\s0/vgamod/reg_hcursor [2]),
    .I2(\s0/vgamod/h_count [6]),
    .I3(\s0/vgamod/reg_hcursor [3]),
    .O(\s0/vgamod/cursor_on_h_cmp_eq0000794_462 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_10_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [10]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_10_mand1_1693 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_102_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [10]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_102_mand1_1692 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_101_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [10]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_101_mand1_1691 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_9_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [9]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_9_mand1_1732 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_92_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [9]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_92_mand1_1731 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_91_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [9]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_91_mand1_1730 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_8_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [8]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_8_mand1_1729 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_82_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [8]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_82_mand1_1728 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_81_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [8]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_81_mand1_1727 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_7_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [7]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_7_mand1_1726 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_72_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [7]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_72_mand1_1725 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_71_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [7]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_71_mand1_1724 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_6_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [6]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_6_mand1_1723 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_62_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [6]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_62_mand1_1722 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_61_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [6]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_61_mand1_1721 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_5_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [5]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_5_mand1_1720 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_52_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [5]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_52_mand1_1719 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_51_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [5]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_51_mand1_1718 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_4_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [4]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_4_mand1_1717 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_42_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [4]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_42_mand1_1716 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_41_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [4]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_41_mand1_1715 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_3_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_3_mand1_1714 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_32_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_32_mand1_1713 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_31_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_31_mand1_1712 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_2_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_2_mand1_1711 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_22_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_22_mand1_1710 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_21_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_21_mand1_1709 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_1_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_1_mand1_1708 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_17_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_17_mand1_1707 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_16_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_16_mand1_1706 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_0_mand1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [0]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/Eqn_0_mand1_1690 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_02_mand1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [0]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/Eqn_02_mand1_1689 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/Eqn_01_mand1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [0]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/Eqn_01_mand1_1688 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \s9/keyboard/keyinmod/newdata_mux0000_SW0  (
    .I0(\s9/keyboard/keyinmod/b_FSM_FFd7_1818 ),
    .I1(\s9/keyboard/keyinmod/b_FSM_FFd10_1811 ),
    .I2(\s9/keyboard/keyinmod/b_FSM_FFd4_1815 ),
    .I3(\s9/keyboard/keyinmod/b_FSM_FFd5_1816 ),
    .I4(\s9/keyboard/keyinmod/b_FSM_FFd11_1812 ),
    .I5(\s9/keyboard/keyinmod/b_FSM_FFd3_1814 ),
    .O(N190)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s4/i8237/state_or00041  (
    .I0(reset),
    .I1(\s4/i8237/mast_clr_1142 ),
    .O(\s4/i8237/state_or0004 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \s4/i8237/Mtrien_iow_mux00001  (
    .I0(\s4/i8237/mode [0]),
    .I1(\s4/i8237/mode [1]),
    .I2(\s4/i8237/Mtrien_a3_0_mux0000 ),
    .O(\s4/i8237/Mtrien_iow_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \s4/i8237/Mtrien_ior_mux00001  (
    .I0(\s4/i8237/Mtrien_a3_0_mux0000 ),
    .I1(\s4/i8237/mode [0]),
    .I2(\s4/i8237/mode [1]),
    .O(\s4/i8237/Mtrien_ior_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \s4/i8237/command_cmp_eq00001  (
    .I0(\xa[0] ),
    .I1(\xa[1] ),
    .I2(\xa[2] ),
    .I3(\xa[3] ),
    .O(\s4/i8237/command_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h4DCC ))
  \s0/vgamod/video_on_h_mux00001  (
    .I0(\s0/vgamod/h_count [7]),
    .I1(\s0/vgamod/video_on_h_668 ),
    .I2(\s0/vgamod/h_count [9]),
    .I3(\s0/vgamod/video_on_h_and0000 ),
    .O(\s0/vgamod/video_on_h_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8ECC ))
  \s0/vgamod/vert_sync_mux00001  (
    .I0(\s0/vgamod/v_count [2]),
    .I1(\s0/vgamod/vert_sync_619 ),
    .I2(\s0/vgamod/v_count [1]),
    .I3(\s0/vgamod/vert_sync_and0000_620 ),
    .O(\s0/vgamod/vert_sync_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hE8CC ))
  \s0/vgamod/horiz_sync_mux00001  (
    .I0(\s0/vgamod/h_count [5]),
    .I1(\s0/vgamod/horiz_sync_524 ),
    .I2(\s0/vgamod/h_count [6]),
    .I3(\s0/vgamod/horiz_sync_and0000 ),
    .O(\s0/vgamod/horiz_sync_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000010 ))
  \s0/vgamod/video_on_h_and00002  (
    .I0(\s0/vgamod/h_count [3]),
    .I1(\s0/vgamod/h_count [4]),
    .I2(N147),
    .I3(\s0/vgamod/h_count [5]),
    .I4(\s0/vgamod/h_count [6]),
    .I5(\s0/vgamod/h_count [8]),
    .O(\s0/vgamod/video_on_h_and0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<4>  (
    .I0(\s0/vgamod/reg_hcursor [4]),
    .I1(N192),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_vcursor [4]),
    .I4(N7),
    .I5(\s0/vgamod/dataout [4]),
    .O(\s0/vgamod/dataout_mux0000[4] )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \s0/vgamod/vert_sync_and0000_SW0  (
    .I0(\s0/vgamod/v_count [3]),
    .I1(\s0/vgamod/v_count [6]),
    .I2(\s0/vgamod/v_count [4]),
    .O(N196)
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s0/vgamod/vert_sync_and0000  (
    .I0(\s0/vgamod/v_count [0]),
    .I1(\s0/vgamod/v_count [9]),
    .I2(\s0/vgamod/v_count [8]),
    .I3(\s0/vgamod/v_count [7]),
    .I4(\s0/vgamod/v_count [5]),
    .I5(N196),
    .O(\s0/vgamod/vert_sync_and0000_620 )
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \s9/i8255/pdo_mux0000<7>1  (
    .I0(\xa[1] ),
    .I1(N150),
    .I2(\s9/i8255/pb[7] ),
    .I3(\s9/keyboard/pa [7]),
    .O(\s9/i8255/pdo_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \s9/i8255/pdo_mux0000<6>1  (
    .I0(\xa[1] ),
    .I1(N150),
    .I2(\s9/i8255/pb[7] ),
    .I3(\s9/keyboard/pa [6]),
    .O(\s9/i8255/pdo_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \s9/i8255/pdo_mux0000<5>1  (
    .I0(N150),
    .I1(\s9/keyboard/pa [5]),
    .I2(\s9/i8255/pb[7] ),
    .I3(\xa[1] ),
    .O(\s9/i8255/pdo_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'h4404 ))
  \s9/i8255/pdo_mux0000<4>1  (
    .I0(\xa[1] ),
    .I1(N150),
    .I2(\s9/i8255/pb[7] ),
    .I3(\s9/keyboard/pa [4]),
    .O(\s9/i8255/pdo_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hC888 ))
  \s9/i8255/pdo_mux0000<2>1  (
    .I0(\xa[1] ),
    .I1(N150),
    .I2(\s9/i8255/pb[7] ),
    .I3(\s9/keyboard/pa [2]),
    .O(\s9/i8255/pdo_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hCC8C ))
  \s9/i8255/pdo_mux0000<1>1  (
    .I0(\s9/keyboard/pa [1]),
    .I1(N150),
    .I2(\s9/i8255/pb[7] ),
    .I3(\xa[1] ),
    .O(\s9/i8255/pdo_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hCC8C ))
  \s9/i8255/pdo_mux0000<0>1  (
    .I0(\s9/keyboard/pa [0]),
    .I1(N150),
    .I2(\s9/i8255/pb[7] ),
    .I3(\xa[1] ),
    .O(\s9/i8255/pdo_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \s8/i8253/vcs/C2/READ/CLRREADLSB_mux00001  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C2/READ/CLRREADLSB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \s8/i8253/vcs/C1/READ/CLRREADLSB_mux00001  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C1/READ/CLRREADLSB_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \s8/i8253/vcs/C0/READ/CLRREADLSB_mux00001  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .O(\s8/i8253/vcs/C0/READ/CLRREADLSB_mux0000 )
  );
  LUT5 #(
    .INIT ( 32'h70202020 ))
  \s9/i8255/pdo_mux0000<3>1  (
    .I0(\xa[1] ),
    .I1(\s9/i8255/pb[2] ),
    .I2(N150),
    .I3(\s9/keyboard/pa [3]),
    .I4(\s9/i8255/pb[7] ),
    .O(\s9/i8255/pdo_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<7>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [15]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [7]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [7])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<6>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [14]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [6]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [6])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<5>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [13]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [5]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [5])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<4>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [12]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [4]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [4])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<3>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [11]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [3]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<2>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [10]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [2])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<1>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [9]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C2/READ/DREG_mux0000<0>1  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/READLSB_1687 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [8]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [0]),
    .O(\s8/i8253/vcs/C2/READ/DREG_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<7>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [15]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [7]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [7])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<6>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [14]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [6]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [6])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<5>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [13]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [5]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [5])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<4>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [12]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [4]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [4])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<3>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [11]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [3]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<2>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [10]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [2])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<1>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [9]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C1/READ/DREG_mux0000<0>1  (
    .I0(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C1/READ/READLSB_1561 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [8]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [0]),
    .O(\s8/i8253/vcs/C1/READ/DREG_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<7>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [15]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [7]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [7])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<6>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [14]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [6]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [6])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<5>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [13]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [5]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [5])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<4>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [12]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [4]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [4])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<3>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [11]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [3]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<2>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [10]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [2])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<1>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [9]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'hA8AAA0002000A000 ))
  \s8/i8253/vcs/C0/READ/DREG_mux0000<0>1  (
    .I0(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C0/READ/READLSB_1436 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [8]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [5]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [4]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [0]),
    .O(\s8/i8253/vcs/C0/READ/DREG_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \s0/vgamod/v_count_cmp_eq00002  (
    .I0(\s0/vgamod/h_count [5]),
    .I1(\s0/vgamod/h_count [6]),
    .I2(\s0/vgamod/horiz_sync_and0000 ),
    .O(\s0/vgamod/v_count_cmp_eq0000 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s0/vgamod/v_count_cmp_eq000011  (
    .I0(\s0/vgamod/h_count [4]),
    .I1(\s0/vgamod/h_count [7]),
    .I2(\s0/vgamod/h_count [8]),
    .I3(\s0/vgamod/h_count [3]),
    .I4(\s0/vgamod/h_count [9]),
    .I5(N147),
    .O(\s0/vgamod/horiz_sync_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s0/vgamod/dataout_mux0000<3>91  (
    .I0(a[3]),
    .I1(a[2]),
    .I2(\s0/vgamod/dataout_and0000 ),
    .I3(a[1]),
    .I4(a[0]),
    .I5(\s0/vgamod/video_on_v_672 ),
    .O(\s0/vgamod/dataout_mux0000<3>91_497 )
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \a<3>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s1/u7/rq [3]),
    .I2(dma_aen_n),
    .I3(\xa[3] ),
    .O(a[3])
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \a<2>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s1/u7/rq [2]),
    .I2(dma_aen_n),
    .I3(\xa[2] ),
    .O(a[2])
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \a<1>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s1/u7/rq [1]),
    .I2(dma_aen_n),
    .I3(\xa[1] ),
    .O(a[1])
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \a<0>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s1/u7/rq [0]),
    .I2(dma_aen_n),
    .I3(\xa[0] ),
    .O(a[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \s4/i8237/Mxor_drequest<0>_Result1  (
    .I0(\s8/drq0_1309 ),
    .I1(\s4/i8237/command [6]),
    .O(\s4/i8237/drequest [0])
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \s0/vgamod/buff_addr_mux0000<8>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[7] ),
    .I2(\s0/vgamod/ver_addr [4]),
    .I3(\s0/vgamod/buff0_addr [8]),
    .O(\s0/vgamod/buff_addr_mux0000 [8])
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \s0/vgamod/attr_addr_mux0000<8>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[7] ),
    .I2(\s0/vgamod/ver_addr [4]),
    .I3(\s0/vgamod/attr0_addr [8]),
    .O(\s0/vgamod/attr_addr_mux0000 [8])
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \s4/i8237/Mtridata_db_mux0000<0>211  (
    .I0(\s4/i8237/ff_1139 ),
    .I1(\xa[0] ),
    .I2(\xa[1] ),
    .I3(\xa[3] ),
    .I4(\xa[2] ),
    .O(N61)
  );
  LUT5 #(
    .INIT ( 32'hBEFA1450 ))
  \s0/vgamod/buff_addr_mux0000<9>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[7] ),
    .I2(\s0/vgamod/ver_addr [5]),
    .I3(\s0/vgamod/ver_addr [4]),
    .I4(\s0/vgamod/buff0_addr [9]),
    .O(\s0/vgamod/buff_addr_mux0000 [9])
  );
  LUT5 #(
    .INIT ( 32'hBEFA1450 ))
  \s0/vgamod/attr_addr_mux0000<9>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[7] ),
    .I2(\s0/vgamod/ver_addr [5]),
    .I3(\s0/vgamod/ver_addr [4]),
    .I4(\s0/vgamod/attr0_addr [9]),
    .O(\s0/vgamod/attr_addr_mux0000 [9])
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \s0/vgamod/buff_addr_mux0000<10>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[7] ),
    .I2(\s0/vgamod/ver_addr [6]),
    .I3(\s0/vgamod/ver_addr [4]),
    .I4(\s0/vgamod/ver_addr [5]),
    .I5(\s0/vgamod/buff0_addr [10]),
    .O(\s0/vgamod/buff_addr_mux0000 [10])
  );
  LUT6 #(
    .INIT ( 64'hBEFAFAFA14505050 ))
  \s0/vgamod/attr_addr_mux0000<10>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[7] ),
    .I2(\s0/vgamod/ver_addr [6]),
    .I3(\s0/vgamod/ver_addr [4]),
    .I4(\s0/vgamod/ver_addr [5]),
    .I5(\s0/vgamod/attr0_addr [10]),
    .O(\s0/vgamod/attr_addr_mux0000 [10])
  );
  LUT4 #(
    .INIT ( 16'h8AEF ))
  \s0/vgamod/cursor_on_v_and000033  (
    .I0(\s0/vgamod/v_count [1]),
    .I1(\s0/vgamod/v_count [0]),
    .I2(\s0/vgamod/reg_cur_start [0]),
    .I3(\s0/vgamod/reg_cur_start [1]),
    .O(\s0/vgamod/cursor_on_v_and000033_468 )
  );
  LUT4 #(
    .INIT ( 16'h8AEF ))
  \s0/vgamod/cursor_on_v_and0000125  (
    .I0(\s0/vgamod/reg_cur_end [1]),
    .I1(\s0/vgamod/reg_cur_end [0]),
    .I2(\s0/vgamod/v_count [0]),
    .I3(\s0/vgamod/v_count [1]),
    .O(\s0/vgamod/cursor_on_v_and0000125_465 )
  );
  LUT5 #(
    .INIT ( 32'h8A08EFAE ))
  \s0/vgamod/cursor_on_v_and0000179  (
    .I0(\s0/vgamod/reg_cur_end [3]),
    .I1(\s0/vgamod/cursor_on_v_and0000125_465 ),
    .I2(\s0/vgamod/v_count [2]),
    .I3(\s0/vgamod/reg_cur_end [2]),
    .I4(\s0/vgamod/v_count [3]),
    .O(\s0/vgamod/cursor_on_v_and0000179_466 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \s0/vgamod/cursor_on_v_and0000260  (
    .I0(\s0/vgamod/v_count [6]),
    .I1(\s0/vgamod/reg_vcursor [2]),
    .I2(\s0/vgamod/v_count [7]),
    .I3(\s0/vgamod/reg_vcursor [3]),
    .I4(\s0/vgamod/v_count [8]),
    .I5(\s0/vgamod/reg_vcursor [4]),
    .O(\s0/vgamod/cursor_on_v_and0000260_467 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \s0/vgamod/video_on_h_and000011  (
    .I0(\s0/vgamod/h_count [1]),
    .I1(\s0/vgamod/h_count [2]),
    .I2(\s0/vgamod/h_count [0]),
    .O(N147)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s0/vgamod/v_count_or000011  (
    .I0(\s0/vgamod/v_count [1]),
    .I1(\s0/vgamod/v_count [2]),
    .I2(\s0/vgamod/v_count [3]),
    .I3(\s0/vgamod/v_count [0]),
    .I4(\s0/vgamod/v_count [5]),
    .I5(\s0/vgamod/v_count [9]),
    .O(N127)
  );
  LUT4 #(
    .INIT ( 16'hC888 ))
  \s0/vgamod/cursor_on_and00001  (
    .I0(\s0/vgamod/attr_data_out [7]),
    .I1(\s0/vgamod/blink_count [22]),
    .I2(\s0/vgamod/cursor_on_h_459 ),
    .I3(\s0/vgamod/cursor_on_v_463 ),
    .O(\s0/vgamod/cursor_on_and0000 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s4/i8237/state_cmp_eq00081  (
    .I0(\s4/i8237/state [2]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .O(\s4/i8237/state_cmp_eq0008 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \s4/i8237/state_cmp_eq00021  (
    .I0(\s4/i8237/state [0]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [2]),
    .O(\s4/i8237/state_cmp_eq0002 )
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  \s4/i8237/state_and00001  (
    .I0(\s4/i8237/command [6]),
    .I1(\s2/holda_770 ),
    .I2(\s8/drq0_1309 ),
    .O(\s4/i8237/state_and0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s0/vgamod/h_count_or00001  (
    .I0(reset),
    .I1(\s0/vgamod/h_count_cmp_eq0000_515 ),
    .O(\s0/vgamod/h_count_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s0/vgamod/h_count_cmp_eq0000  (
    .I0(\s0/vgamod/h_count [5]),
    .I1(\s0/vgamod/h_count [8]),
    .I2(N208),
    .I3(\s0/vgamod/h_count [4]),
    .I4(\s0/vgamod/h_count [3]),
    .I5(\s0/vgamod/h_count [9]),
    .O(\s0/vgamod/h_count_cmp_eq0000_515 )
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \s4/i8237/ff_not0001111  (
    .I0(\s4/i8237/state_cmp_eq0002 ),
    .I1(\s2/holda_770 ),
    .I2(dma_cs_n),
    .I3(\s4/i8237/command [6]),
    .I4(\s8/drq0_1309 ),
    .O(N132)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s4/i8237/ff_not0001121  (
    .I0(xior_n),
    .I1(xiow_n),
    .O(\s4/i8237/Mtridata_db_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \s4/i8237/Mtridata_db_cmp_eq00011  (
    .I0(\xa[1] ),
    .I1(\xa[3] ),
    .I2(\xa[2] ),
    .I3(\xa[0] ),
    .O(\s4/i8237/Mtridata_db_cmp_eq0001 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \s4/i8237/Mtridata_db_cmp_eq00001  (
    .I0(\xa[0] ),
    .I1(\xa[1] ),
    .I2(\xa[3] ),
    .I3(\xa[2] ),
    .O(\s4/i8237/Mtridata_db_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \xa<3>LogicTrst1  (
    .I0(\s4/i8237/Mtrien_a3_0_916 ),
    .I1(\s4/i8237/Mtridata_a3_0 [3]),
    .I2(\s2/aen_brd_763 ),
    .I3(a[3]),
    .O(\xa[3] )
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \xa<2>LogicTrst1  (
    .I0(\s4/i8237/Mtrien_a3_0_916 ),
    .I1(\s4/i8237/Mtridata_a3_0 [2]),
    .I2(\s2/aen_brd_763 ),
    .I3(a[2]),
    .O(\xa[2] )
  );
  LUT4 #(
    .INIT ( 16'h2AFF ))
  \s6/rb3/central_ram_core/fsm_FSM_FFd2-In1  (
    .I0(\s6/rb3/central_ram_core/fsm_FSM_FFd2_1297 ),
    .I1(\s6/rb3/central_ram_core/fsm_FSM_FFd1_1295 ),
    .I2(cas_n[3]),
    .I3(ras_n[3]),
    .O(\s6/rb3/central_ram_core/fsm_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \s6/rb3/central_ram_core/fsm_FSM_FFd1-In1  (
    .I0(ras_n[3]),
    .I1(\s6/rb3/central_ram_core/fsm_FSM_FFd1_1295 ),
    .I2(cas_n[3]),
    .I3(\s6/rb3/central_ram_core/fsm_FSM_FFd2_1297 ),
    .O(\s6/rb3/central_ram_core/fsm_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h2AFF ))
  \s6/rb2/central_ram_core/fsm_FSM_FFd2-In1  (
    .I0(\s6/rb2/central_ram_core/fsm_FSM_FFd2_1283 ),
    .I1(\s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 ),
    .I2(cas_n[2]),
    .I3(ras_n[2]),
    .O(\s6/rb2/central_ram_core/fsm_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \s6/rb2/central_ram_core/fsm_FSM_FFd1-In1  (
    .I0(ras_n[2]),
    .I1(\s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 ),
    .I2(cas_n[2]),
    .I3(\s6/rb2/central_ram_core/fsm_FSM_FFd2_1283 ),
    .O(\s6/rb2/central_ram_core/fsm_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h2AFF ))
  \s6/rb1/central_ram_core/fsm_FSM_FFd2-In1  (
    .I0(\s6/rb1/central_ram_core/fsm_FSM_FFd2_1269 ),
    .I1(\s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 ),
    .I2(cas_n[1]),
    .I3(ras_n[1]),
    .O(\s6/rb1/central_ram_core/fsm_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \s6/rb1/central_ram_core/fsm_FSM_FFd1-In1  (
    .I0(ras_n[1]),
    .I1(\s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 ),
    .I2(cas_n[1]),
    .I3(\s6/rb1/central_ram_core/fsm_FSM_FFd2_1269 ),
    .O(\s6/rb1/central_ram_core/fsm_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h2AFF ))
  \s6/rb0/central_ram_core/fsm_FSM_FFd2-In1  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd2_1254 ),
    .I1(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I2(cas_n[0]),
    .I3(ras_n[0]),
    .O(\s6/rb0/central_ram_core/fsm_FSM_FFd2-In )
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \s6/rb0/central_ram_core/fsm_FSM_FFd1-In1  (
    .I0(ras_n[0]),
    .I1(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I2(cas_n[0]),
    .I3(\s6/rb0/central_ram_core/fsm_FSM_FFd2_1254 ),
    .O(\s6/rb0/central_ram_core/fsm_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  \s4/i8237/curr_word_10_mux000021  (
    .I0(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I1(\s4/i8237/state_and0000 ),
    .I2(\s4/i8237/Mtridata_db_and0000 ),
    .I3(\s4/i8237/state_cmp_eq0002 ),
    .I4(\s4/i8237/ff_1139 ),
    .I5(\s4/i8237/state_and0001 ),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s4/i8237/curr_word_0_mux000031  (
    .I0(\s4/i8237/ff_1139 ),
    .I1(\s4/i8237/Mtridata_db_and0000 ),
    .I2(\s4/i8237/state_and0000 ),
    .I3(\s4/i8237/state_cmp_eq0002 ),
    .I4(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I5(\s4/i8237/state_and0001 ),
    .O(N89)
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  \s4/i8237/curr_addr_10_mux000021  (
    .I0(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I1(\s4/i8237/state_and0000 ),
    .I2(\s4/i8237/Mtridata_db_and0000 ),
    .I3(\s4/i8237/state_cmp_eq0002 ),
    .I4(\s4/i8237/ff_1139 ),
    .I5(\s4/i8237/state_and0001 ),
    .O(N91)
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s4/i8237/curr_addr_0_mux000091  (
    .I0(\s4/i8237/ff_1139 ),
    .I1(\s4/i8237/Mtridata_db_and0000 ),
    .I2(\s4/i8237/state_and0000 ),
    .I3(\s4/i8237/state_cmp_eq0002 ),
    .I4(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I5(\s4/i8237/state_and0001 ),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \xa<1>LogicTrst1  (
    .I0(\s4/i8237/Mtrien_a3_0_916 ),
    .I1(\s4/i8237/Mtridata_a3_0 [1]),
    .I2(\s2/aen_brd_763 ),
    .I3(a[1]),
    .O(\xa[1] )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s4/i8237/state_cmp_eq000935  (
    .I0(\s4/i8237/curr_word [2]),
    .I1(\s4/i8237/curr_word [3]),
    .I2(\s4/i8237/curr_word [1]),
    .I3(\s4/i8237/curr_word [0]),
    .I4(\s4/i8237/curr_word [9]),
    .I5(\s4/i8237/curr_word [8]),
    .O(\s4/i8237/state_cmp_eq000935_1168 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s4/i8237/state_cmp_eq0009104  (
    .I0(\s4/i8237/curr_word [14]),
    .I1(\s4/i8237/curr_word [15]),
    .I2(\s4/i8237/curr_word [13]),
    .I3(\s4/i8237/curr_word [12]),
    .I4(\s4/i8237/curr_word [11]),
    .I5(\s4/i8237/curr_word [10]),
    .O(\s4/i8237/state_cmp_eq0009104_1167 )
  );
  LUT4 #(
    .INIT ( 16'hEFE4 ))
  \xa<0>LogicTrst1  (
    .I0(\s4/i8237/Mtrien_a3_0_916 ),
    .I1(\s4/i8237/Mtridata_a3_0 [0]),
    .I2(\s2/aen_brd_763 ),
    .I3(a[0]),
    .O(\xa[0] )
  );
  LUT5 #(
    .INIT ( 32'h08000000 ))
  \s4/i8237/mode_mux0000<0>41  (
    .I0(\xa[1] ),
    .I1(\xa[0] ),
    .I2(\xa[2] ),
    .I3(N58),
    .I4(\xa[3] ),
    .O(N167)
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \s4/i8237/mode_mux0000<0>221  (
    .I0(\xa[0] ),
    .I1(\xa[2] ),
    .I2(N49),
    .I3(\xa[1] ),
    .I4(\xa[3] ),
    .O(N102)
  );
  LUT5 #(
    .INIT ( 32'h808080FF ))
  \s4/i8237/Mtridata_db_mux0000<0>11  (
    .I0(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I1(N52),
    .I2(\s4/i8237/ff_1139 ),
    .I3(N38),
    .I4(\s4/i8237/state_cmp_eq0002 ),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h0400040000000400 ))
  \s4/i8237/mode_mux0000<0>31  (
    .I0(\s4/i8237/state [1]),
    .I1(\s4/i8237/Mtridata_db_and0000 ),
    .I2(\s4/i8237/state [2]),
    .I3(\s4/i8237/state_and0001 ),
    .I4(\s4/i8237/state_and0000 ),
    .I5(\s4/i8237/state [0]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'hFDFFFDFFFFFFFDFF ))
  \s4/i8237/mode_mux0000<0>211  (
    .I0(\s4/i8237/Mtridata_db_and0000 ),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [2]),
    .I3(\s4/i8237/state_and0001 ),
    .I4(\s4/i8237/state_and0000 ),
    .I5(\s4/i8237/state [0]),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'h4880800000000000 ))
  \s5/rommod/upaddr<0>  (
    .I0(cs_n[5]),
    .I1(cs_n[4]),
    .I2(cs_n[1]),
    .I3(cs_n[7]),
    .I4(cs_n[3]),
    .I5(N216),
    .O(\s5/rommod/upaddr [0])
  );
  LUT6 #(
    .INIT ( 64'h4880800000000000 ))
  \s5/rommod/upaddr<2>  (
    .I0(cs_n[5]),
    .I1(cs_n[1]),
    .I2(cs_n[4]),
    .I3(cs_n[7]),
    .I4(cs_n[6]),
    .I5(N218),
    .O(\s5/rommod/upaddr [2])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \s4/i8237/state_and00011  (
    .I0(\s2/holda_770 ),
    .I1(dma_cs_n),
    .O(\s4/i8237/state_and0001 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s0/vgamod/mem_range1  (
    .I0(a[18]),
    .I1(a[17]),
    .I2(a[14]),
    .I3(a[19]),
    .I4(a[15]),
    .I5(a[16]),
    .O(\s0/vgamod/mem_range )
  );
  LUT6 #(
    .INIT ( 64'hFFFDDDFDBBB888B8 ))
  \s1/adp<0>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(xior_n),
    .I2(\s1/i8259/dout [0]),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [0]),
    .I5(d[0]),
    .O(\s1/adp [0])
  );
  LUT5 #(
    .INIT ( 32'hFFFF13DF ))
  \s4/i8237/Mtridata_db_mux0000<3>_SW0  (
    .I0(\s4/i8237/curr_word [4]),
    .I1(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I2(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I3(\s4/i8237/curr_addr [4]),
    .I4(\s4/i8237/ff_1139 ),
    .O(N232)
  );
  LUT6 #(
    .INIT ( 64'hFF888F888F888F88 ))
  \s4/i8237/Mtridata_db_mux0000<3>  (
    .I0(\s4/i8237/curr_addr [12]),
    .I1(N5),
    .I2(N232),
    .I3(N52),
    .I4(N61),
    .I5(\s4/i8237/curr_word [12]),
    .O(\s4/i8237/Mtridata_db_mux0000 [3])
  );
  LUT5 #(
    .INIT ( 32'hFFFF13DF ))
  \s4/i8237/Mtridata_db_mux0000<2>_SW0  (
    .I0(\s4/i8237/curr_word [5]),
    .I1(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I2(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I3(\s4/i8237/curr_addr [5]),
    .I4(\s4/i8237/ff_1139 ),
    .O(N234)
  );
  LUT6 #(
    .INIT ( 64'hFF888F888F888F88 ))
  \s4/i8237/Mtridata_db_mux0000<2>  (
    .I0(\s4/i8237/curr_addr [13]),
    .I1(N5),
    .I2(N234),
    .I3(N52),
    .I4(N61),
    .I5(\s4/i8237/curr_word [13]),
    .O(\s4/i8237/Mtridata_db_mux0000 [2])
  );
  LUT5 #(
    .INIT ( 32'hFFFF13DF ))
  \s4/i8237/Mtridata_db_mux0000<1>_SW0  (
    .I0(\s4/i8237/curr_word [6]),
    .I1(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I2(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I3(\s4/i8237/curr_addr [6]),
    .I4(\s4/i8237/ff_1139 ),
    .O(N236)
  );
  LUT6 #(
    .INIT ( 64'hFF888F888F888F88 ))
  \s4/i8237/Mtridata_db_mux0000<1>  (
    .I0(\s4/i8237/curr_addr [14]),
    .I1(N5),
    .I2(N236),
    .I3(N52),
    .I4(N61),
    .I5(\s4/i8237/curr_word [14]),
    .O(\s4/i8237/Mtridata_db_mux0000 [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFF13DF ))
  \s4/i8237/Mtridata_db_mux0000<0>_SW0  (
    .I0(\s4/i8237/curr_word [7]),
    .I1(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I2(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I3(\s4/i8237/curr_addr [7]),
    .I4(\s4/i8237/ff_1139 ),
    .O(N238)
  );
  LUT6 #(
    .INIT ( 64'hFF888F888F888F88 ))
  \s4/i8237/Mtridata_db_mux0000<0>  (
    .I0(\s4/i8237/curr_addr [15]),
    .I1(N5),
    .I2(N238),
    .I3(N52),
    .I4(N61),
    .I5(\s4/i8237/curr_word [15]),
    .O(\s4/i8237/Mtridata_db_mux0000 [0])
  );
  LUT5 #(
    .INIT ( 32'h28808000 ))
  \s5/rommod/upaddr<1>1  (
    .I0(N135),
    .I1(cs_n[2]),
    .I2(cs_n[3]),
    .I3(cs_n[6]),
    .I4(cs_n[7]),
    .O(\s5/rommod/upaddr [1])
  );
  LUT5 #(
    .INIT ( 32'hEFE4E4E4 ))
  \s1/adp<7>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(d[7]),
    .I2(xior_n),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [7]),
    .O(\s1/adp [7])
  );
  LUT5 #(
    .INIT ( 32'hEFE4E4E4 ))
  \s1/adp<6>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(d[6]),
    .I2(xior_n),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [6]),
    .O(\s1/adp [6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \s8/i8253/vcs/C2/OUTCTRL/RELOAD_mux0000_SW0  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .O(N240)
  );
  LUT6 #(
    .INIT ( 64'h0000000000200A00 ))
  \s8/i8253/vcs/C2/OUTCTRL/RELOAD_mux0000  (
    .I0(N55),
    .I1(\s8/i8253/vcs/C2/LOADCNT ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .I3(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I5(N240),
    .O(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_mux0000_1663 )
  );
  LUT5 #(
    .INIT ( 32'hEFE4E4E4 ))
  \s1/adp<3>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(d[3]),
    .I2(xior_n),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [3]),
    .O(\s1/adp [3])
  );
  LUT5 #(
    .INIT ( 32'hEFE4E4E4 ))
  \s1/adp<2>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(d[2]),
    .I2(xior_n),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [2]),
    .O(\s1/adp [2])
  );
  LUT6 #(
    .INIT ( 64'hFFFDDDFDBBB888B8 ))
  \s1/adp<1>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(xior_n),
    .I2(\s1/i8259/dout [1]),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [1]),
    .I5(d[1]),
    .O(\s1/adp [1])
  );
  LUT6 #(
    .INIT ( 64'hBAAAFAAA10005000 ))
  \s8/i8253/vcs/C2/COUNTLSB<1>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [0]),
    .I2(N164),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I4(\s8/i8253/vcs/C2/OUTCTRL/OUT_1653 ),
    .I5(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [1]),
    .O(\s8/i8253/vcs/C2/COUNTLSB<1>1_1588 )
  );
  LUT6 #(
    .INIT ( 64'hBAAAFAAA10005000 ))
  \s8/i8253/vcs/C1/COUNTLSB<1>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [0]),
    .I2(N157),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .I4(\s8/i8253/vcs/C1/OUTCTRL/OUT_1527 ),
    .I5(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [1]),
    .O(\s8/i8253/vcs/C1/COUNTLSB<1>1_1463 )
  );
  LUT6 #(
    .INIT ( 64'hBAAAFAAA10005000 ))
  \s8/i8253/vcs/C0/COUNTLSB<1>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I1(\s8/i8253/vcs/C0/OUTCTRL/OUT_1402 ),
    .I2(N158),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .I4(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [0]),
    .I5(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [1]),
    .O(\s8/i8253/vcs/C0/COUNTLSB<1>1_1336 )
  );
  LUT5 #(
    .INIT ( 32'hEFE4E4E4 ))
  \s1/adp<5>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(d[5]),
    .I2(xior_n),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [5]),
    .O(\s1/adp [5])
  );
  LUT5 #(
    .INIT ( 32'hEFE4E4E4 ))
  \s1/adp<4>LogicTrst1  (
    .I0(\s1/u8/ba_inv ),
    .I1(d[4]),
    .I2(xior_n),
    .I3(\xa[0] ),
    .I4(\s1/i8259/imr [4]),
    .O(\s1/adp [4])
  );
  LUT6 #(
    .INIT ( 64'h0242000000000000 ))
  \s8/i8253/vcs/C1/OUTCTRL/RELOAD_mux00001  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .I3(\s8/i8253/vcs/C1/LOADCNT ),
    .I4(N56),
    .I5(N157),
    .O(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h0242000000000000 ))
  \s8/i8253/vcs/C0/OUTCTRL/RELOAD_mux00001  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .I3(\s8/i8253/vcs/C0/LOADCNT ),
    .I4(N57),
    .I5(N158),
    .O(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \s0/vgamod/wr_adr121  (
    .I0(a[9]),
    .I1(a[8]),
    .I2(a[7]),
    .I3(a[6]),
    .O(N1511)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \s3/ls4/y<7>1  (
    .I0(a[13]),
    .I1(a[15]),
    .I2(a[14]),
    .I3(\s3/ls4/y_and0000 ),
    .O(cs_n[7])
  );
  LUT4 #(
    .INIT ( 16'hBFFF ))
  \s3/ls4/y<6>1  (
    .I0(a[13]),
    .I1(a[15]),
    .I2(a[14]),
    .I3(\s3/ls4/y_and0000 ),
    .O(cs_n[6])
  );
  LUT4 #(
    .INIT ( 16'hDFFF ))
  \s3/ls4/y<3>1  (
    .I0(a[13]),
    .I1(a[15]),
    .I2(a[14]),
    .I3(\s3/ls4/y_and0000 ),
    .O(cs_n[3])
  );
  LUT4 #(
    .INIT ( 16'hEFFF ))
  \s3/ls4/y<2>1  (
    .I0(a[13]),
    .I1(a[15]),
    .I2(a[14]),
    .I3(\s3/ls4/y_and0000 ),
    .O(cs_n[2])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s0/vgamod/wr_adr111  (
    .I0(a[13]),
    .I1(a[15]),
    .I2(a[14]),
    .I3(a[12]),
    .I4(a[11]),
    .I5(a[16]),
    .O(N128)
  );
  LUT4 #(
    .INIT ( 16'hF7FF ))
  \s3/ls4/y<5>1  (
    .I0(\s3/ls4/y_and0000 ),
    .I1(a[15]),
    .I2(a[14]),
    .I3(a[13]),
    .O(cs_n[5])
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \s3/ls4/y<4>1  (
    .I0(\s3/ls4/y_and0000 ),
    .I1(a[14]),
    .I2(a[13]),
    .I3(a[15]),
    .O(cs_n[4])
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \s3/ls4/y<1>1  (
    .I0(\s3/ls4/y_and0000 ),
    .I1(a[15]),
    .I2(a[14]),
    .I3(a[13]),
    .O(cs_n[1])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \s5/rommod/csv_inv1  (
    .I0(cs_n[2]),
    .I1(cs_n[3]),
    .I2(N135),
    .I3(cs_n[7]),
    .I4(cs_n[6]),
    .O(\s5/rommod/csv_inv )
  );
  LUT5 #(
    .INIT ( 32'hFBFFFB40 ))
  xiow_nLogicTrst1 (
    .I0(\s2/aen_brd_763 ),
    .I1(dma_aen_n),
    .I2(iow_n),
    .I3(\s4/i8237/Mtrien_iow_924 ),
    .I4(\s4/i8237/Mtridata_iow_913 ),
    .O(xiow_n)
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \s3/ls4/y_and00001  (
    .I0(reset),
    .I1(xmemr_n),
    .I2(a[19]),
    .I3(a[18]),
    .I4(a[17]),
    .I5(a[16]),
    .O(\s3/ls4/y_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \xd<0>LogicTrst1  (
    .I0(\s9/i8255/pds_inv ),
    .I1(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I2(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I3(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I4(\s4/i8237/Mtrien_db_919 ),
    .I5(N242),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<0>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[0]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [0]),
    .O(\d<0>LogicTrst10_166 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEEFE ))
  \d<0>LogicTrst74  (
    .I0(\d<0>LogicTrst47_167 ),
    .I1(N125),
    .I2(\s6/md [0]),
    .I3(\s6/ls2450/ba_inv ),
    .I4(\d<0>LogicTrst10_166 ),
    .O(d[0])
  );
  LUT3 #(
    .INIT ( 8'h51 ))
  \s0/vgamod/d_or0000_inv1  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(\s0/vgamod/mem_range ),
    .I2(memr_n),
    .O(\s0/vgamod/d_or0000_inv )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \d<0>LogicTrst110  (
    .I0(\s0/vgamod/d_or0000_inv ),
    .I1(\s5/ls2450/ba_inv ),
    .I2(\s1/u8/ab_inv ),
    .I3(\s6/ls2450/ba_inv ),
    .O(N125)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \s0/vgamod/d_and000012  (
    .I0(a[13]),
    .I1(a[14]),
    .I2(a[15]),
    .I3(a[10]),
    .I4(a[11]),
    .I5(a[12]),
    .O(\s0/vgamod/d_and000012_472 )
  );
  LUT6 #(
    .INIT ( 64'h1333333333333333 ))
  \s0/vgamod/d_and000079  (
    .I0(a[8]),
    .I1(a[10]),
    .I2(a[9]),
    .I3(a[6]),
    .I4(a[7]),
    .I5(a[5]),
    .O(\s0/vgamod/d_and000079_473 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s8/i8253/vcs/C2/LOADCNT1  (
    .I0(\s8/i8253/vcs/C2/CNTREG/LOAD_1581 ),
    .I1(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_1662 ),
    .O(\s8/i8253/vcs/C2/LOADCNT )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s8/i8253/vcs/C1/LOADCNT1  (
    .I0(\s8/i8253/vcs/C1/CNTREG/LOAD_1456 ),
    .I1(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_1535 ),
    .O(\s8/i8253/vcs/C1/LOADCNT )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s8/i8253/vcs/C0/LOADCNT1  (
    .I0(\s8/i8253/vcs/C0/CNTREG/LOAD_1329 ),
    .I1(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_1410 ),
    .O(\s8/i8253/vcs/C0/LOADCNT )
  );
  LUT6 #(
    .INIT ( 64'h0000005100000040 ))
  \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_mux00001  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [2]),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .I2(\s8/i8253/vcs/C1/OUTCTRL/TRIG_1539 ),
    .I3(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .I4(N152),
    .I5(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000005100000040 ))
  \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_mux00001  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [2]),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .I2(\s8/i8253/vcs/C0/OUTCTRL/TRIG_1414 ),
    .I3(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .I4(N154),
    .I5(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_mux0000 )
  );
  LUT5 #(
    .INIT ( 32'hAAEEA0A0 ))
  \s4/i8237/mode_mux0000<1>1  (
    .I0(\s4/i8237/mode [1]),
    .I1(N167),
    .I2(N102),
    .I3(xd[2]),
    .I4(xd[3]),
    .O(\s4/i8237/mode_mux0000 [1])
  );
  LUT5 #(
    .INIT ( 32'hAAEEA0A0 ))
  \s4/i8237/mode_mux0000<0>1  (
    .I0(\s4/i8237/mode [0]),
    .I1(N167),
    .I2(N102),
    .I3(xd[3]),
    .I4(xd[2]),
    .O(\s4/i8237/mode_mux0000 [0])
  );
  LUT5 #(
    .INIT ( 32'hEAE2AA22 ))
  \s4/i8237/command_mux0000<7>1  (
    .I0(\s4/i8237/command [7]),
    .I1(\s4/i8237/command_cmp_eq0000 ),
    .I2(N58),
    .I3(N49),
    .I4(xd[7]),
    .O(\s4/i8237/command_mux0000 [7])
  );
  LUT5 #(
    .INIT ( 32'hEAE2AA22 ))
  \s4/i8237/command_mux0000<6>1  (
    .I0(\s4/i8237/command [6]),
    .I1(\s4/i8237/command_cmp_eq0000 ),
    .I2(N58),
    .I3(N49),
    .I4(xd[6]),
    .O(\s4/i8237/command_mux0000 [6])
  );
  LUT6 #(
    .INIT ( 64'hAAAAECA0ECA0ECA0 ))
  \s4/i8237/mode_mux0000<5>1  (
    .I0(\s4/i8237/mode [5]),
    .I1(N167),
    .I2(N102),
    .I3(xd[7]),
    .I4(xd[3]),
    .I5(xd[2]),
    .O(\s4/i8237/mode_mux0000 [5])
  );
  LUT6 #(
    .INIT ( 64'hAAECECECAAA0A0A0 ))
  \s4/i8237/mode_mux0000<4>1  (
    .I0(\s4/i8237/mode [4]),
    .I1(N167),
    .I2(N102),
    .I3(xd[3]),
    .I4(xd[2]),
    .I5(xd[6]),
    .O(\s4/i8237/mode_mux0000 [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAECA0ECA0ECA0 ))
  \s4/i8237/mode_mux0000<3>1  (
    .I0(\s4/i8237/mode [3]),
    .I1(N167),
    .I2(N102),
    .I3(xd[5]),
    .I4(xd[3]),
    .I5(xd[2]),
    .O(\s4/i8237/mode_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'hAAECECECAAA0A0A0 ))
  \s4/i8237/mode_mux0000<2>1  (
    .I0(\s4/i8237/mode [2]),
    .I1(N167),
    .I2(N102),
    .I3(xd[3]),
    .I4(xd[2]),
    .I5(xd[4]),
    .O(\s4/i8237/mode_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<0>LogicTrst69  (
    .I0(\xd<0>LogicTrst52_1906 ),
    .I1(d[0]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[0])
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_9_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [9]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [9]),
    .O(N244)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_9_mux0000  (
    .I0(\s4/i8237/curr_word [9]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N244),
    .I5(xd[1]),
    .O(\s4/i8237/curr_word_9_mux0000_1133 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_8_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [8]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [8]),
    .O(N246)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_8_mux0000  (
    .I0(\s4/i8237/curr_word [8]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N246),
    .I5(xd[0]),
    .O(\s4/i8237/curr_word_8_mux0000_1131 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_7_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [7]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [7]),
    .O(N248)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_7_mux0000  (
    .I0(\s4/i8237/curr_word [7]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N248),
    .I5(xd[7]),
    .O(\s4/i8237/curr_word_7_mux0000_1129 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_6_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [6]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [6]),
    .O(N250)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_6_mux0000  (
    .I0(\s4/i8237/curr_word [6]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N250),
    .I5(xd[6]),
    .O(\s4/i8237/curr_word_6_mux0000_1127 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_5_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [5]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [5]),
    .O(N252)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_5_mux0000  (
    .I0(\s4/i8237/curr_word [5]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N252),
    .I5(xd[5]),
    .O(\s4/i8237/curr_word_5_mux0000_1125 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_4_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [4]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [4]),
    .O(N254)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_4_mux0000  (
    .I0(\s4/i8237/curr_word [4]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N254),
    .I5(xd[4]),
    .O(\s4/i8237/curr_word_4_mux0000_1123 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_3_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [3]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [3]),
    .O(N256)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_3_mux0000  (
    .I0(\s4/i8237/curr_word [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N256),
    .I5(xd[3]),
    .O(\s4/i8237/curr_word_3_mux0000_1121 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_2_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [2]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [2]),
    .O(N258)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_2_mux0000  (
    .I0(\s4/i8237/curr_word [2]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N258),
    .I5(xd[2]),
    .O(\s4/i8237/curr_word_2_mux0000_1119 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_1_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [1]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [1]),
    .O(N260)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_1_mux0000  (
    .I0(\s4/i8237/curr_word [1]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N260),
    .I5(xd[1]),
    .O(\s4/i8237/curr_word_1_mux0000_1117 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_15_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [15]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [15]),
    .O(N262)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_15_mux0000  (
    .I0(\s4/i8237/curr_word [15]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N262),
    .I5(xd[7]),
    .O(\s4/i8237/curr_word_15_mux0000_1116 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_14_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [14]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [14]),
    .O(N264)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_14_mux0000  (
    .I0(\s4/i8237/curr_word [14]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N264),
    .I5(xd[6]),
    .O(\s4/i8237/curr_word_14_mux0000_1114 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_13_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [13]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [13]),
    .O(N266)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_13_mux0000  (
    .I0(\s4/i8237/curr_word [13]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N266),
    .I5(xd[5]),
    .O(\s4/i8237/curr_word_13_mux0000_1112 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_12_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [12]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [12]),
    .O(N268)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_12_mux0000  (
    .I0(\s4/i8237/curr_word [12]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N268),
    .I5(xd[4]),
    .O(\s4/i8237/curr_word_12_mux0000_1110 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_11_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [11]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [11]),
    .O(N270)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_11_mux0000  (
    .I0(\s4/i8237/curr_word [11]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N270),
    .I5(xd[3]),
    .O(\s4/i8237/curr_word_11_mux0000_1108 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_10_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [10]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [10]),
    .O(N272)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_10_mux0000  (
    .I0(\s4/i8237/curr_word [10]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N88),
    .I3(N4),
    .I4(N272),
    .I5(xd[2]),
    .O(\s4/i8237/curr_word_10_mux0000_1106 )
  );
  LUT4 #(
    .INIT ( 16'hEC4C ))
  \s4/i8237/curr_word_0_mux0000_SW0  (
    .I0(\s4/i8237/state_cmp_eq0009 ),
    .I1(\s4/i8237/_sub0000 [0]),
    .I2(\s4/i8237/mode [2]),
    .I3(\s4/i8237/base_word [0]),
    .O(N274)
  );
  LUT6 #(
    .INIT ( 64'hFEFCFAF0EECCAA00 ))
  \s4/i8237/curr_word_0_mux0000  (
    .I0(\s4/i8237/curr_word [0]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(N89),
    .I3(N3),
    .I4(N274),
    .I5(xd[0]),
    .O(\s4/i8237/curr_word_0_mux0000_1103 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_9_mux000068  (
    .I0(\s4/i8237/curr_addr [9]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_9_mux000024 ),
    .I4(N91),
    .I5(xd[1]),
    .O(\s4/i8237/curr_addr_9_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_8_mux000068  (
    .I0(\s4/i8237/curr_addr [8]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_8_mux000024 ),
    .I4(N91),
    .I5(xd[0]),
    .O(\s4/i8237/curr_addr_8_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_7_mux000067  (
    .I0(\s4/i8237/curr_addr [7]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_7_mux000024 ),
    .I4(N92),
    .I5(xd[7]),
    .O(\s4/i8237/curr_addr_7_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_6_mux000073  (
    .I0(\s4/i8237/curr_addr [6]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_6_mux000029 ),
    .I4(N92),
    .I5(xd[6]),
    .O(\s4/i8237/curr_addr_6_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_5_mux000073  (
    .I0(\s4/i8237/curr_addr [5]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_5_mux000028 ),
    .I4(N92),
    .I5(xd[5]),
    .O(\s4/i8237/curr_addr_5_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_4_mux000073  (
    .I0(\s4/i8237/curr_addr [4]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_4_mux000028 ),
    .I4(N92),
    .I5(xd[4]),
    .O(\s4/i8237/curr_addr_4_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_3_mux000073  (
    .I0(\s4/i8237/curr_addr [3]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_3_mux000028 ),
    .I4(N92),
    .I5(xd[3]),
    .O(\s4/i8237/curr_addr_3_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_2_mux000073  (
    .I0(\s4/i8237/curr_addr [2]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_2_mux000029 ),
    .I4(N92),
    .I5(xd[2]),
    .O(\s4/i8237/curr_addr_2_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_1_mux000073  (
    .I0(\s4/i8237/curr_addr [1]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_1_mux000029 ),
    .I4(N92),
    .I5(xd[1]),
    .O(\s4/i8237/curr_addr_1_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_15_mux000068  (
    .I0(\s4/i8237/curr_addr [15]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_15_mux000024 ),
    .I4(N91),
    .I5(xd[7]),
    .O(\s4/i8237/curr_addr_15_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_14_mux000068  (
    .I0(\s4/i8237/curr_addr [14]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_14_mux000024 ),
    .I4(N91),
    .I5(xd[6]),
    .O(\s4/i8237/curr_addr_14_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_13_mux000068  (
    .I0(\s4/i8237/curr_addr [13]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_13_mux000024 ),
    .I4(N91),
    .I5(xd[5]),
    .O(\s4/i8237/curr_addr_13_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_12_mux000068  (
    .I0(\s4/i8237/curr_addr [12]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_12_mux000024 ),
    .I4(N91),
    .I5(xd[4]),
    .O(\s4/i8237/curr_addr_12_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_11_mux000068  (
    .I0(\s4/i8237/curr_addr [11]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_11_mux000024 ),
    .I4(N91),
    .I5(xd[3]),
    .O(\s4/i8237/curr_addr_11_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_10_mux000068  (
    .I0(\s4/i8237/curr_addr [10]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_10_mux000040 ),
    .I3(\s4/i8237/curr_addr_10_mux000024 ),
    .I4(N91),
    .I5(xd[2]),
    .O(\s4/i8237/curr_addr_10_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFA8FFA8FFA8 ))
  \s4/i8237/curr_addr_0_mux000072  (
    .I0(\s4/i8237/curr_addr [0]),
    .I1(N23),
    .I2(\s4/i8237/curr_addr_0_mux000043 ),
    .I3(\s4/i8237/curr_addr_0_mux000028 ),
    .I4(N92),
    .I5(xd[0]),
    .O(\s4/i8237/curr_addr_0_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<7>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[7]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [7]),
    .O(\d<7>LogicTrst10_187 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \d<7>LogicTrst65  (
    .I0(N125),
    .I1(\d<7>LogicTrst27_188 ),
    .I2(\s0/vgamod/d_or0000_inv ),
    .I3(\s6/md [7]),
    .I4(\s6/ls2450/ba_inv ),
    .I5(\d<7>LogicTrst10_187 ),
    .O(d[7])
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<6>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[6]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [6]),
    .O(\d<6>LogicTrst10_184 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \d<6>LogicTrst76  (
    .I0(N125),
    .I1(\d<6>LogicTrst36_185 ),
    .I2(\s0/vgamod/d_or0000_inv ),
    .I3(\s6/md [6]),
    .I4(\s6/ls2450/ba_inv ),
    .I5(\d<6>LogicTrst10_184 ),
    .O(d[6])
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<3>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[3]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [3]),
    .O(\d<3>LogicTrst10_175 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \d<3>LogicTrst76  (
    .I0(N125),
    .I1(\d<3>LogicTrst36_176 ),
    .I2(\s0/vgamod/d_or0000_inv ),
    .I3(\s6/md [3]),
    .I4(\s6/ls2450/ba_inv ),
    .I5(\d<3>LogicTrst10_175 ),
    .O(d[3])
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<2>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[2]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [2]),
    .O(\d<2>LogicTrst10_172 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \d<2>LogicTrst76  (
    .I0(N125),
    .I1(\d<2>LogicTrst36_173 ),
    .I2(\s0/vgamod/d_or0000_inv ),
    .I3(\s6/md [2]),
    .I4(\s6/ls2450/ba_inv ),
    .I5(\d<2>LogicTrst10_172 ),
    .O(d[2])
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<1>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[1]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [1]),
    .O(\d<1>LogicTrst10_169 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \d<1>LogicTrst76  (
    .I0(N125),
    .I1(\d<1>LogicTrst36_170 ),
    .I2(\s0/vgamod/d_or0000_inv ),
    .I3(\s6/md [1]),
    .I4(\s6/ls2450/ba_inv ),
    .I5(\d<1>LogicTrst10_169 ),
    .O(d[1])
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s8/i8253/vcs/C2/OUTCTRL/SETOUT__inv1  (
    .I0(xd[7]),
    .I1(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I2(N129),
    .I3(\s4/i8237/Mtridata_db_and0000 ),
    .I4(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 ),
    .I5(xd[6]),
    .O(\s8/i8253/vcs/C2/OUTCTRL/SETOUT__inv )
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s8/i8253/vcs/C1/OUTCTRL/SETOUT__inv1  (
    .I0(\s4/i8237/Mtridata_db_and0000 ),
    .I1(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I2(N129),
    .I3(xd[6]),
    .I4(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 ),
    .I5(xd[7]),
    .O(\s8/i8253/vcs/C1/OUTCTRL/SETOUT__inv )
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \s8/i8253/vcs/C0/OUTCTRL/SETOUT__inv1  (
    .I0(N129),
    .I1(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I2(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 ),
    .I3(xd[6]),
    .I4(\s4/i8237/Mtridata_db_and0000 ),
    .I5(xd[7]),
    .O(\s8/i8253/vcs/C0/OUTCTRL/SETOUT__inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF222F222F222 ))
  \xd<7>LogicTrst14  (
    .I0(\s4/i8237/Mtridata_db [7]),
    .I1(\s4/i8237/Mtrien_db_919 ),
    .I2(\s8/i8253/vcs/C1/READ/DREG [7]),
    .I3(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I4(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I5(\s8/i8253/vcs/C0/READ/DREG [7]),
    .O(\xd<7>LogicTrst14_1932 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \xd<7>LogicTrst22  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [7]),
    .I2(\s9/i8255/pdo [7]),
    .I3(\s9/i8255/pds_inv ),
    .O(\xd<7>LogicTrst22_1933 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<7>LogicTrst67  (
    .I0(\xd<7>LogicTrst52_1934 ),
    .I1(d[7]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF222F222F222 ))
  \xd<6>LogicTrst14  (
    .I0(\s4/i8237/Mtridata_db [6]),
    .I1(\s4/i8237/Mtrien_db_919 ),
    .I2(\s8/i8253/vcs/C1/READ/DREG [6]),
    .I3(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I4(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I5(\s8/i8253/vcs/C0/READ/DREG [6]),
    .O(\xd<6>LogicTrst14_1928 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \xd<6>LogicTrst22  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [6]),
    .I2(\s9/i8255/pdo [6]),
    .I3(\s9/i8255/pds_inv ),
    .O(\xd<6>LogicTrst22_1929 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<6>LogicTrst67  (
    .I0(\xd<6>LogicTrst52_1930 ),
    .I1(d[6]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[6])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_not00011  (
    .I0(\s8/i8253/vcs/C1/CLROUT_ ),
    .I1(\s8/i8253/vcs/C1/CNTREG/OUTEN_1459 ),
    .O(\s8/i8253/vcs/C1/OUTCTRL/OUT_not0001 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_not00011  (
    .I0(\s8/i8253/vcs/C0/CLROUT_ ),
    .I1(\s8/i8253/vcs/C0/CNTREG/OUTEN_1332 ),
    .O(\s8/i8253/vcs/C0/OUTCTRL/OUT_not0001 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \s8/i8253/vcs/C0/MODEREG/SETOUT__and00021  (
    .I0(xd[1]),
    .I1(xd[2]),
    .I2(xd[3]),
    .O(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \s8/i8253/vcs/C2/MODEREG/MODETRIG1  (
    .I0(xd[1]),
    .I1(xd[3]),
    .I2(\s8/i8253/vcs/C2/MODEWRITE ),
    .I3(xd[2]),
    .O(\s8/i8253/vcs/C2/MODETRIG )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \s8/i8253/vcs/C1/MODEREG/MODETRIG2  (
    .I0(xd[1]),
    .I1(xd[3]),
    .I2(\s8/i8253/vcs/C1/MODEWRITE ),
    .I3(xd[2]),
    .O(\s8/i8253/vcs/C1/MODETRIG )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \s8/i8253/vcs/C0/MODEREG/MODETRIG2  (
    .I0(xd[1]),
    .I1(xd[3]),
    .I2(\s8/i8253/vcs/C0/MODEWRITE ),
    .I3(xd[2]),
    .O(\s8/i8253/vcs/C0/MODETRIG )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDFFFFFFFFFFF ))
  \s8/i8253/vcs/C2/MODEREG/CLROUT_1  (
    .I0(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 ),
    .I1(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I2(\s4/i8237/Mtridata_db_and0000 ),
    .I3(xd[7]),
    .I4(xd[6]),
    .I5(N129),
    .O(\s8/i8253/vcs/C2/CLROUT_ )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDFFFFFFFFFFF ))
  \s8/i8253/vcs/C1/MODEREG/CLROUT_1  (
    .I0(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 ),
    .I1(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I2(\s4/i8237/Mtridata_db_and0000 ),
    .I3(xd[6]),
    .I4(xd[7]),
    .I5(N129),
    .O(\s8/i8253/vcs/C1/CLROUT_ )
  );
  LUT6 #(
    .INIT ( 64'hFFFBFFFFFFFFFFFF ))
  \s8/i8253/vcs/C0/MODEREG/CLROUT_1  (
    .I0(xd[6]),
    .I1(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0002 ),
    .I2(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I3(xd[7]),
    .I4(\s4/i8237/Mtridata_db_and0000 ),
    .I5(N129),
    .O(\s8/i8253/vcs/C0/CLROUT_ )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF222F222F222 ))
  \xd<3>LogicTrst14  (
    .I0(\s4/i8237/Mtridata_db [3]),
    .I1(\s4/i8237/Mtrien_db_919 ),
    .I2(\s8/i8253/vcs/C1/READ/DREG [3]),
    .I3(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I4(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I5(\s8/i8253/vcs/C0/READ/DREG [3]),
    .O(\xd<3>LogicTrst14_1916 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \xd<3>LogicTrst22  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [3]),
    .I2(\s9/i8255/pdo [3]),
    .I3(\s9/i8255/pds_inv ),
    .O(\xd<3>LogicTrst22_1917 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<3>LogicTrst67  (
    .I0(\xd<3>LogicTrst52_1918 ),
    .I1(d[3]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF222F222F222 ))
  \xd<2>LogicTrst14  (
    .I0(\s4/i8237/Mtridata_db [2]),
    .I1(\s4/i8237/Mtrien_db_919 ),
    .I2(\s8/i8253/vcs/C1/READ/DREG [2]),
    .I3(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I4(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I5(\s8/i8253/vcs/C0/READ/DREG [2]),
    .O(\xd<2>LogicTrst14_1912 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \xd<2>LogicTrst22  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [2]),
    .I2(\s9/i8255/pdo [2]),
    .I3(\s9/i8255/pds_inv ),
    .O(\xd<2>LogicTrst22_1913 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<2>LogicTrst67  (
    .I0(\xd<2>LogicTrst52_1914 ),
    .I1(d[2]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF222F222F222 ))
  \xd<1>LogicTrst14  (
    .I0(\s4/i8237/Mtridata_db [1]),
    .I1(\s4/i8237/Mtrien_db_919 ),
    .I2(\s8/i8253/vcs/C1/READ/DREG [1]),
    .I3(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I4(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I5(\s8/i8253/vcs/C0/READ/DREG [1]),
    .O(\xd<1>LogicTrst14_1908 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \xd<1>LogicTrst22  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [1]),
    .I2(\s9/i8255/pdo [1]),
    .I3(\s9/i8255/pds_inv ),
    .O(\xd<1>LogicTrst22_1909 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<1>LogicTrst67  (
    .I0(\xd<1>LogicTrst52_1910 ),
    .I1(d[1]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s6/md<7>LogicTrst0  (
    .I0(\s6/rb1/md_out [7]),
    .I1(\s6/rb1/enexp ),
    .O(\s6/md<7>LogicTrst0_1243 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<7>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[7]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<7>LogicTrst5_1246 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<7>LogicTrst75  (
    .I0(\s6/md<7>LogicTrst23_1245 ),
    .I1(\s6/md<7>LogicTrst0_1243 ),
    .I2(\s6/md<7>LogicTrst11_1244 ),
    .I3(\s6/md<3>LogicTrst58 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<7>LogicTrst5_1246 ),
    .O(\s6/md [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s6/md<6>LogicTrst0  (
    .I0(\s6/rb1/md_out [6]),
    .I1(\s6/rb1/enexp ),
    .O(\s6/md<6>LogicTrst0_1238 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<6>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[6]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<6>LogicTrst5_1241 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \s6/md<6>LogicTrst23  (
    .I0(\s6/rb2/enexp ),
    .I1(\s6/rb2/md_out [6]),
    .I2(\s6/rb3/enexp ),
    .I3(\s6/rb3/md_out [6]),
    .O(\s6/md<6>LogicTrst23_1240 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<6>LogicTrst75  (
    .I0(\s6/md<6>LogicTrst23_1240 ),
    .I1(\s6/md<6>LogicTrst0_1238 ),
    .I2(\s6/md<6>LogicTrst11_1239 ),
    .I3(\s6/md<3>LogicTrst58 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<6>LogicTrst5_1241 ),
    .O(\s6/md [6])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s6/md<5>LogicTrst0  (
    .I0(\s6/rb1/md_out [5]),
    .I1(\s6/rb1/enexp ),
    .O(\s6/md<5>LogicTrst0_1233 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<5>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[5]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<5>LogicTrst5_1236 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<5>LogicTrst75  (
    .I0(\s6/md<5>LogicTrst23_1235 ),
    .I1(\s6/md<5>LogicTrst0_1233 ),
    .I2(\s6/md<5>LogicTrst11_1234 ),
    .I3(\s6/md<3>LogicTrst58 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<5>LogicTrst5_1236 ),
    .O(\s6/md [5])
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<5>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[5]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [5]),
    .O(\d<5>LogicTrst10_181 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \d<5>LogicTrst76  (
    .I0(N125),
    .I1(\d<5>LogicTrst36_182 ),
    .I2(\s0/vgamod/d_or0000_inv ),
    .I3(\s6/md [5]),
    .I4(\s6/ls2450/ba_inv ),
    .I5(\d<5>LogicTrst10_181 ),
    .O(d[5])
  );
  LUT4 #(
    .INIT ( 16'h4F44 ))
  \d<4>LogicTrst10  (
    .I0(\s5/ls2450/ba_inv ),
    .I1(xd[4]),
    .I2(\s1/u8/ab_inv ),
    .I3(\s1/adp [4]),
    .O(\d<4>LogicTrst10_178 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAEFFAE ))
  \d<4>LogicTrst76  (
    .I0(N125),
    .I1(\d<4>LogicTrst36_179 ),
    .I2(\s0/vgamod/d_or0000_inv ),
    .I3(\s6/md [4]),
    .I4(\s6/ls2450/ba_inv ),
    .I5(\d<4>LogicTrst10_178 ),
    .O(d[4])
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \s3/ls1/y<0>1  (
    .I0(\s4/i8237/dack [0]),
    .I1(a[19]),
    .I2(a[18]),
    .O(ram_addr_sel_n)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \s8/i8253/vcs/C0/MODEREG/SETOUT__and00011  (
    .I0(xd[4]),
    .I1(xd[5]),
    .O(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \s8/i8253/vcs/C2/OUTCTRL/RELOAD_or00002  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C2/MODEWRITE ),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I3(\s8/i8253/vcs/C2/CNTREG/OUTEN_1584 ),
    .O(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_or0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFF222F222F222 ))
  \xd<5>LogicTrst14  (
    .I0(\s4/i8237/Mtridata_db [5]),
    .I1(\s4/i8237/Mtrien_db_919 ),
    .I2(\s8/i8253/vcs/C1/READ/DREG [5]),
    .I3(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I4(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I5(\s8/i8253/vcs/C0/READ/DREG [5]),
    .O(\xd<5>LogicTrst14_1924 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \xd<5>LogicTrst22  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [5]),
    .I2(\s9/i8255/pdo [5]),
    .I3(\s9/i8255/pds_inv ),
    .O(\xd<5>LogicTrst22_1925 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<5>LogicTrst67  (
    .I0(\xd<5>LogicTrst52_1926 ),
    .I1(d[5]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[5])
  );
  LUT6 #(
    .INIT ( 64'hFFFFF222F222F222 ))
  \xd<4>LogicTrst14  (
    .I0(\s4/i8237/Mtridata_db [4]),
    .I1(\s4/i8237/Mtrien_db_919 ),
    .I2(\s8/i8253/vcs/C1/READ/DREG [4]),
    .I3(\s8/i8253/vcs/C1/READ/D_and0000 ),
    .I4(\s8/i8253/vcs/C0/READ/D_and0000 ),
    .I5(\s8/i8253/vcs/C0/READ/DREG [4]),
    .O(\xd<4>LogicTrst14_1920 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \xd<4>LogicTrst22  (
    .I0(\s8/i8253/vcs/C2/READ/D_and0000 ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [4]),
    .I2(\s9/i8255/pdo [4]),
    .I3(\s9/i8255/pds_inv ),
    .O(\xd<4>LogicTrst22_1921 )
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \xd<4>LogicTrst67  (
    .I0(\xd<4>LogicTrst52_1922 ),
    .I1(d[4]),
    .I2(\s5/ls2450/ab_inv ),
    .O(xd[4])
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \s6/rb2/central_ram_core/enexp1  (
    .I0(\s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 ),
    .I1(xmemw_n),
    .I2(cas_n[2]),
    .I3(ras_n[2]),
    .O(\s6/rb2/enexp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s6/md<4>LogicTrst0  (
    .I0(\s6/rb1/md_out [4]),
    .I1(\s6/rb1/enexp ),
    .O(\s6/md<4>LogicTrst0_1228 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<4>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[4]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<4>LogicTrst5_1231 )
  );
  LUT4 #(
    .INIT ( 16'hECA0 ))
  \s6/md<4>LogicTrst23  (
    .I0(\s6/rb3/md_out [4]),
    .I1(\s6/rb2/md_out [4]),
    .I2(\s6/rb3/enexp ),
    .I3(\s6/rb2/enexp ),
    .O(\s6/md<4>LogicTrst23_1230 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<4>LogicTrst75  (
    .I0(\s6/md<4>LogicTrst23_1230 ),
    .I1(\s6/md<4>LogicTrst0_1228 ),
    .I2(\s6/md<4>LogicTrst11_1229 ),
    .I3(\s6/md<3>LogicTrst58 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<4>LogicTrst5_1231 ),
    .O(\s6/md [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s6/md<3>LogicTrst0  (
    .I0(\s6/rb1/md_out [3]),
    .I1(\s6/rb1/enexp ),
    .O(\s6/md<3>LogicTrst0_1222 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<3>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[3]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<3>LogicTrst5_1225 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<3>LogicTrst75  (
    .I0(\s6/md<3>LogicTrst23_1224 ),
    .I1(\s6/md<3>LogicTrst0_1222 ),
    .I2(\s6/md<3>LogicTrst11_1223 ),
    .I3(\s6/md<3>LogicTrst58 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<3>LogicTrst5_1225 ),
    .O(\s6/md [3])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \s3/rasc1  (
    .I0(xmemw_n),
    .I1(xmemr_n),
    .O(\s3/rasc )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \s2/dma_aen_n1  (
    .I0(\s2/b5_768 ),
    .I1(\s2/aen_brd_1_764 ),
    .O(dma_aen_n)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  memw_nLogicTrst1 (
    .I0(\s2/aen_brd_763 ),
    .I1(dma_aen_n),
    .I2(xmemw_n),
    .O(memw_n)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  memr_nLogicTrst1 (
    .I0(\s2/aen_brd_763 ),
    .I1(dma_aen_n),
    .I2(xmemr_n),
    .O(memr_n)
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  xmemw_nLogicTrst1 (
    .I0(dma_aen_n),
    .I1(\s2/aen_brd_763 ),
    .I2(memw_n),
    .I3(\s4/i8237/memw_1146 ),
    .O(xmemw_n)
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  xmemr_nLogicTrst1 (
    .I0(dma_aen_n),
    .I1(\s2/aen_brd_763 ),
    .I2(memr_n),
    .I3(\s4/i8237/memr_1145 ),
    .O(xmemr_n)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF888F888F888 ))
  \s6/mdpLogicTrst10  (
    .I0(\s6/rb1/enexp ),
    .I1(\s6/rb1/mdp_out ),
    .I2(\s6/rb2/enexp ),
    .I3(\s6/rb2/mdp_out ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/rb0/mdp_out ),
    .O(\s6/mdpLogicTrst10_1248 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAE00000004 ))
  \s6/mdpLogicTrst45  (
    .I0(\s6/rb3/enexp ),
    .I1(xmemw_n),
    .I2(\s6/rb2/enexp ),
    .I3(\s6/rb1/enexp ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/rb3/mdp_out ),
    .O(\s6/mdpLogicTrst45_1249 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s6/mdpLogicTrst62  (
    .I0(\s6/mdp ),
    .I1(xmemr_n),
    .O(\s6/mdpLogicTrst62_1250 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \s6/mdpLogicTrst68  (
    .I0(\s6/mdp ),
    .I1(xmemr_n),
    .O(\s6/mdpLogicTrst68_1251 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAFBAAEA ))
  \s6/mdpLogicTrst100  (
    .I0(\s6/mdpLogicTrst10_1248 ),
    .I1(\s6/ls2800/Madd_sum_Madd_Madd_lut [0]),
    .I2(\s6/mdpLogicTrst62_1250 ),
    .I3(xmemw_n),
    .I4(\s6/mdpLogicTrst68_1251 ),
    .I5(\s6/mdpLogicTrst45_1249 ),
    .O(\s6/mdp )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \s6/ls2800/Madd_sum_addsub0002_Madd_lut<0>1  (
    .I0(\s6/md [2]),
    .I1(\s6/md [0]),
    .I2(\s6/md [1]),
    .O(\s6/ls2800/Madd_sum_addsub0002_Madd_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<2>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[2]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<2>LogicTrst5_1220 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<2>LogicTrst75  (
    .I0(\s6/md<2>LogicTrst23_1219 ),
    .I1(\s6/md<2>LogicTrst0_1217 ),
    .I2(\s6/md<2>LogicTrst11_1218 ),
    .I3(\s6/md<0>LogicTrst54 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<2>LogicTrst5_1220 ),
    .O(\s6/md [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<1>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[1]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<1>LogicTrst5_1215 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<1>LogicTrst75  (
    .I0(\s6/md<1>LogicTrst23_1214 ),
    .I1(\s6/md<1>LogicTrst0_1212 ),
    .I2(\s6/md<1>LogicTrst11_1213 ),
    .I3(\s6/md<0>LogicTrst54 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<1>LogicTrst5_1215 ),
    .O(\s6/md [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \s6/md<0>LogicTrst5  (
    .I0(xmemr_n),
    .I1(d[0]),
    .I2(ram_addr_sel_n),
    .O(\s6/md<0>LogicTrst5_1209 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFEFFFE ))
  \s6/md<0>LogicTrst75  (
    .I0(\s6/md<0>LogicTrst23_1208 ),
    .I1(\s6/md<0>LogicTrst0_1206 ),
    .I2(\s6/md<0>LogicTrst11_1207 ),
    .I3(\s6/md<0>LogicTrst54 ),
    .I4(\s6/rb0/enexp ),
    .I5(\s6/md<0>LogicTrst5_1209 ),
    .O(\s6/md [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000069  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000069_1659 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000172  (
    .I0(\s8/i8253/vcs/C2/CLROUT_ ),
    .I1(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000150_1656 ),
    .I2(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000039_1657 ),
    .I3(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000075_1660 ),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000181  (
    .I0(\s8/i8253/vcs/C1/CLROUT_ ),
    .I1(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000158_1530 ),
    .I2(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux000088_1533 ),
    .I3(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux000027_1532 ),
    .O(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000181  (
    .I0(\s8/i8253/vcs/C0/CLROUT_ ),
    .I1(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000158_1405 ),
    .I2(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux000088_1408 ),
    .I3(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux000027_1407 ),
    .O(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000135  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [0]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [13]),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [8]),
    .I3(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [9]),
    .I4(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [10]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [11]),
    .O(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000135_1650 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000188  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [15]),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [4]),
    .I3(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [5]),
    .I4(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [7]),
    .I5(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [6]),
    .O(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000188_1651 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000135  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [0]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [14]),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [8]),
    .I3(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [9]),
    .I4(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [10]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [11]),
    .O(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000135_1524 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000188  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [15]),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [4]),
    .I3(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [6]),
    .I4(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [5]),
    .I5(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [7]),
    .O(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000188_1525 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000135  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [0]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [14]),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [8]),
    .I3(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [9]),
    .I4(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [10]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [11]),
    .O(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000135_1399 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000188  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [15]),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [4]),
    .I3(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [6]),
    .I4(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [5]),
    .I5(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [7]),
    .O(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000188_1400 )
  );
  IBUF   KEYBOARD_DATA_IBUF (
    .I(KEYBOARD_DATA),
    .O(KEYBOARD_DATA_IBUF_12)
  );
  OBUF   HDR1_10_OBUF (
    .I(\s0/vgamod/vga_blue_o [0]),
    .O(HDR1_10)
  );
  OBUF   HDR1_12_OBUF (
    .I(\s0/vgamod/vga_blue_o [1]),
    .O(HDR1_12)
  );
  OBUF   HDR1_14_OBUF (
    .I(\s0/vgamod/horiz_sync_524 ),
    .O(HDR1_14)
  );
  OBUF   HDR1_16_OBUF (
    .I(\s0/vgamod/vert_sync_619 ),
    .O(HDR1_16)
  );
  OBUF   HDR1_2_OBUF (
    .I(\s0/vgamod/vga_blue_o [0]),
    .O(HDR1_2)
  );
  OBUF   HDR1_4_OBUF (
    .I(\s0/vgamod/vga_red_o [1]),
    .O(HDR1_4)
  );
  OBUF   HDR1_6_OBUF (
    .I(\s0/vgamod/vga_green_o [0]),
    .O(HDR1_6)
  );
  OBUF   HDR1_8_OBUF (
    .I(\s0/vgamod/vga_green_o [1]),
    .O(HDR1_8)
  );
  OBUF   PIEZO_SPEAKER_OBUF (
    .I(PIEZO_SPEAKER_OBUF_127),
    .O(PIEZO_SPEAKER)
  );
  FDR   \s4/i8237/Mtridata_iow  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_iow_mux00001_915 ),
    .R(\s4/i8237/mode [0]),
    .Q(\s4/i8237/Mtridata_iow_913 )
  );
  FDR   \s4/i8237/Mtridata_ior  (
    .C(dclk),
    .D(\s4/i8237/Mtridata_ior_mux00001_912 ),
    .R(\s4/i8237/mode [1]),
    .Q(\s4/i8237/Mtridata_ior_910 )
  );
  FDS_1 #(
    .INIT ( 1'b0 ))
  \s9/keyboard/keyinmod/newdata  (
    .C(KEYBOARD_CLK_BUFGP_9),
    .D(\s9/keyboard/keyinmod/newdata_mux00001_1830 ),
    .S(\s9/keyboard/keyinmod/b_FSM_FFd2_1813 ),
    .Q(\s9/keyboard/keyinmod/newdata_1829 )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA8 ))
  \s9/keyboard/keyinmod/newdata_mux00001  (
    .I0(\s9/keyboard/keyinmod/newdata_1829 ),
    .I1(\s9/keyboard/keyinmod/b_FSM_FFd8_1819 ),
    .I2(\s9/keyboard/keyinmod/b_FSM_FFd9_1820 ),
    .I3(\s9/keyboard/keyinmod/b_FSM_FFd6_1817 ),
    .I4(N190),
    .O(\s9/keyboard/keyinmod/newdata_mux00001_1830 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \s9/keyboard/irq1  (
    .C(pclk),
    .D(\s9/keyboard/irq1_mux00001 ),
    .R(\s9/i8255/pb[7] ),
    .Q(\s9/keyboard/irq1_1808 )
  );
  LUT4 #(
    .INIT ( 16'h0C08 ))
  \s9/keyboard/irq1_mux000011  (
    .I0(\s9/keyboard/state_FSM_FFd1_1849 ),
    .I1(\s9/keyboard/state_FSM_FFd3_1853 ),
    .I2(reset),
    .I3(\s9/keyboard/state_FSM_FFd2_1851 ),
    .O(\s9/keyboard/irq1_mux00001 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \s9/keyboard/pa_7  (
    .C(pclk),
    .D(\s9/keyboard/pa_mux0000<0>1_1839 ),
    .R(reset),
    .Q(\s9/keyboard/pa [7])
  );
  FDRS   \s4/i8237/mast_clr  (
    .C(dclk),
    .D(\s4/i8237/mast_clr_mux00001 ),
    .R(\s4/i8237/state_or0004 ),
    .S(\s4/i8237/mast_clr_1142 ),
    .Q(\s4/i8237/mast_clr_1142 )
  );
  LUT5 #(
    .INIT ( 32'h08000000 ))
  \s4/i8237/mast_clr_mux000011  (
    .I0(\xa[3] ),
    .I1(\xa[2] ),
    .I2(\xa[1] ),
    .I3(\xa[0] ),
    .I4(N58),
    .O(\s4/i8237/mast_clr_mux00001 )
  );
  FDRS   \s0/vgamod/dataout_3  (
    .C(vga_clk),
    .D(\s0/vgamod/dataout_mux0000<3>95 ),
    .R(reset),
    .S(\s0/vgamod/dataout_mux0000<3>91_497 ),
    .Q(\s0/vgamod/dataout [3])
  );
  FDRS   \s0/vgamod/dataout_0  (
    .C(vga_clk),
    .D(\s0/vgamod/dataout_mux0000<0>99 ),
    .R(reset),
    .S(\s0/vgamod/dataout_mux0000<0>89 ),
    .Q(\s0/vgamod/dataout [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<14>_rt  (
    .I0(\s4/i8237/curr_addr [14]),
    .O(\s4/i8237/Madd__add0000_cy<14>_rt_792 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<13>_rt  (
    .I0(\s4/i8237/curr_addr [13]),
    .O(\s4/i8237/Madd__add0000_cy<13>_rt_790 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<12>_rt  (
    .I0(\s4/i8237/curr_addr [12]),
    .O(\s4/i8237/Madd__add0000_cy<12>_rt_788 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<11>_rt  (
    .I0(\s4/i8237/curr_addr [11]),
    .O(\s4/i8237/Madd__add0000_cy<11>_rt_786 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<10>_rt  (
    .I0(\s4/i8237/curr_addr [10]),
    .O(\s4/i8237/Madd__add0000_cy<10>_rt_784 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<9>_rt  (
    .I0(\s4/i8237/curr_addr [9]),
    .O(\s4/i8237/Madd__add0000_cy<9>_rt_810 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<8>_rt  (
    .I0(\s4/i8237/curr_addr [8]),
    .O(\s4/i8237/Madd__add0000_cy<8>_rt_808 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<7>_rt  (
    .I0(\s4/i8237/curr_addr [7]),
    .O(\s4/i8237/Madd__add0000_cy<7>_rt_806 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<6>_rt  (
    .I0(\s4/i8237/curr_addr [6]),
    .O(\s4/i8237/Madd__add0000_cy<6>_rt_804 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<5>_rt  (
    .I0(\s4/i8237/curr_addr [5]),
    .O(\s4/i8237/Madd__add0000_cy<5>_rt_802 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<4>_rt  (
    .I0(\s4/i8237/curr_addr [4]),
    .O(\s4/i8237/Madd__add0000_cy<4>_rt_800 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<3>_rt  (
    .I0(\s4/i8237/curr_addr [3]),
    .O(\s4/i8237/Madd__add0000_cy<3>_rt_798 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<2>_rt  (
    .I0(\s4/i8237/curr_addr [2]),
    .O(\s4/i8237/Madd__add0000_cy<2>_rt_796 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_cy<1>_rt  (
    .I0(\s4/i8237/curr_addr [1]),
    .O(\s4/i8237/Madd__add0000_cy<1>_rt_794 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Msub__sub0000_cy<0>_rt  (
    .I0(\s4/i8237/curr_word [0]),
    .O(\s4/i8237/Msub__sub0000_cy<0>_rt_814 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Msub__sub0001_cy<0>_rt  (
    .I0(\s4/i8237/curr_addr [0]),
    .O(\s4/i8237/Msub__sub0001_cy<0>_rt_845 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<8>_rt  (
    .I0(\s0/vgamod/v_count [8]),
    .O(\s0/vgamod/Mcount_v_count_cy<8>_rt_289 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<7>_rt  (
    .I0(\s0/vgamod/v_count [7]),
    .O(\s0/vgamod/Mcount_v_count_cy<7>_rt_287 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<6>_rt  (
    .I0(\s0/vgamod/v_count [6]),
    .O(\s0/vgamod/Mcount_v_count_cy<6>_rt_285 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<5>_rt  (
    .I0(\s0/vgamod/v_count [5]),
    .O(\s0/vgamod/Mcount_v_count_cy<5>_rt_283 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<4>_rt  (
    .I0(\s0/vgamod/v_count [4]),
    .O(\s0/vgamod/Mcount_v_count_cy<4>_rt_281 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<3>_rt  (
    .I0(\s0/vgamod/v_count [3]),
    .O(\s0/vgamod/Mcount_v_count_cy<3>_rt_279 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<2>_rt  (
    .I0(\s0/vgamod/v_count [2]),
    .O(\s0/vgamod/Mcount_v_count_cy<2>_rt_277 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_cy<1>_rt  (
    .I0(\s0/vgamod/v_count [1]),
    .O(\s0/vgamod/Mcount_v_count_cy<1>_rt_275 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<8>_rt  (
    .I0(\s0/vgamod/h_count [8]),
    .O(\s0/vgamod/Mcount_h_count_cy<8>_rt_270 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<7>_rt  (
    .I0(\s0/vgamod/h_count [7]),
    .O(\s0/vgamod/Mcount_h_count_cy<7>_rt_268 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<6>_rt  (
    .I0(\s0/vgamod/h_count [6]),
    .O(\s0/vgamod/Mcount_h_count_cy<6>_rt_266 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<5>_rt  (
    .I0(\s0/vgamod/h_count [5]),
    .O(\s0/vgamod/Mcount_h_count_cy<5>_rt_264 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<4>_rt  (
    .I0(\s0/vgamod/h_count [4]),
    .O(\s0/vgamod/Mcount_h_count_cy<4>_rt_262 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<3>_rt  (
    .I0(\s0/vgamod/h_count [3]),
    .O(\s0/vgamod/Mcount_h_count_cy<3>_rt_260 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<2>_rt  (
    .I0(\s0/vgamod/h_count [2]),
    .O(\s0/vgamod/Mcount_h_count_cy<2>_rt_258 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_cy<1>_rt  (
    .I0(\s0/vgamod/h_count [1]),
    .O(\s0/vgamod/Mcount_h_count_cy<1>_rt_256 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<21>_rt  (
    .I0(\s0/vgamod/blink_count [21]),
    .O(\s0/vgamod/Mcount_blink_count_cy<21>_rt_235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<20>_rt  (
    .I0(\s0/vgamod/blink_count [20]),
    .O(\s0/vgamod/Mcount_blink_count_cy<20>_rt_233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<19>_rt  (
    .I0(\s0/vgamod/blink_count [19]),
    .O(\s0/vgamod/Mcount_blink_count_cy<19>_rt_229 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<18>_rt  (
    .I0(\s0/vgamod/blink_count [18]),
    .O(\s0/vgamod/Mcount_blink_count_cy<18>_rt_227 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<17>_rt  (
    .I0(\s0/vgamod/blink_count [17]),
    .O(\s0/vgamod/Mcount_blink_count_cy<17>_rt_225 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<16>_rt  (
    .I0(\s0/vgamod/blink_count [16]),
    .O(\s0/vgamod/Mcount_blink_count_cy<16>_rt_223 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<15>_rt  (
    .I0(\s0/vgamod/blink_count [15]),
    .O(\s0/vgamod/Mcount_blink_count_cy<15>_rt_221 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<14>_rt  (
    .I0(\s0/vgamod/blink_count [14]),
    .O(\s0/vgamod/Mcount_blink_count_cy<14>_rt_219 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<13>_rt  (
    .I0(\s0/vgamod/blink_count [13]),
    .O(\s0/vgamod/Mcount_blink_count_cy<13>_rt_217 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<12>_rt  (
    .I0(\s0/vgamod/blink_count [12]),
    .O(\s0/vgamod/Mcount_blink_count_cy<12>_rt_215 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<11>_rt  (
    .I0(\s0/vgamod/blink_count [11]),
    .O(\s0/vgamod/Mcount_blink_count_cy<11>_rt_213 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<10>_rt  (
    .I0(\s0/vgamod/blink_count [10]),
    .O(\s0/vgamod/Mcount_blink_count_cy<10>_rt_211 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<9>_rt  (
    .I0(\s0/vgamod/blink_count [9]),
    .O(\s0/vgamod/Mcount_blink_count_cy<9>_rt_251 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<8>_rt  (
    .I0(\s0/vgamod/blink_count [8]),
    .O(\s0/vgamod/Mcount_blink_count_cy<8>_rt_249 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<7>_rt  (
    .I0(\s0/vgamod/blink_count [7]),
    .O(\s0/vgamod/Mcount_blink_count_cy<7>_rt_247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<6>_rt  (
    .I0(\s0/vgamod/blink_count [6]),
    .O(\s0/vgamod/Mcount_blink_count_cy<6>_rt_245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<5>_rt  (
    .I0(\s0/vgamod/blink_count [5]),
    .O(\s0/vgamod/Mcount_blink_count_cy<5>_rt_243 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<4>_rt  (
    .I0(\s0/vgamod/blink_count [4]),
    .O(\s0/vgamod/Mcount_blink_count_cy<4>_rt_241 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<3>_rt  (
    .I0(\s0/vgamod/blink_count [3]),
    .O(\s0/vgamod/Mcount_blink_count_cy<3>_rt_239 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<2>_rt  (
    .I0(\s0/vgamod/blink_count [2]),
    .O(\s0/vgamod/Mcount_blink_count_cy<2>_rt_237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_cy<1>_rt  (
    .I0(\s0/vgamod/blink_count [1]),
    .O(\s0/vgamod/Mcount_blink_count_cy<1>_rt_231 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s4/i8237/Madd__add0000_xor<15>_rt  (
    .I0(\s4/i8237/curr_addr [15]),
    .O(\s4/i8237/Madd__add0000_xor<15>_rt_812 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_v_count_xor<9>_rt  (
    .I0(\s0/vgamod/v_count [9]),
    .O(\s0/vgamod/Mcount_v_count_xor<9>_rt_291 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_h_count_xor<9>_rt  (
    .I0(\s0/vgamod/h_count [9]),
    .O(\s0/vgamod/Mcount_h_count_xor<9>_rt_272 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s0/vgamod/Mcount_blink_count_xor<22>_rt  (
    .I0(\s0/vgamod/blink_count [22]),
    .O(\s0/vgamod/Mcount_blink_count_xor<22>_rt_253 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \s6/ls2800/Madd_sum_Madd_Madd_lut<0>1  (
    .I0(\s6/md [5]),
    .I1(\s6/md [3]),
    .I2(\s6/md [7]),
    .I3(\s6/md [6]),
    .I4(\s6/md [4]),
    .I5(\s6/ls2800/Madd_sum_addsub0002_Madd_lut [0]),
    .O(\s6/ls2800/Madd_sum_Madd_Madd_lut [0])
  );
  LUT5 #(
    .INIT ( 32'hFFEFEFEF ))
  \s3/ls3/y<6>1  (
    .I0(a[16]),
    .I1(ram_addr_sel_n),
    .I2(a[17]),
    .I3(xmemr_n),
    .I4(xmemw_n),
    .O(ras_n[2])
  );
  LUT5 #(
    .INIT ( 32'hFFFEFEFE ))
  \s3/ls3/y<4>1  (
    .I0(a[17]),
    .I1(a[16]),
    .I2(ram_addr_sel_n),
    .I3(xmemw_n),
    .I4(xmemr_n),
    .O(ras_n[0])
  );
  LUT5 #(
    .INIT ( 32'hFFEFEFEF ))
  \s3/ls3/y<5>1  (
    .I0(a[17]),
    .I1(ram_addr_sel_n),
    .I2(a[16]),
    .I3(xmemr_n),
    .I4(xmemw_n),
    .O(ras_n[1])
  );
  LUT5 #(
    .INIT ( 32'hF8FFFFFF ))
  \s3/ls3/y<7>1  (
    .I0(xmemr_n),
    .I1(xmemw_n),
    .I2(ram_addr_sel_n),
    .I3(a[16]),
    .I4(a[17]),
    .O(ras_n[3])
  );
  LUT5 #(
    .INIT ( 32'hFF0CAEAE ))
  \a<19>LogicTrst1  (
    .I0(\s1/u10/rq [7]),
    .I1(\s4/ls6700/q0 [3]),
    .I2(\s4/i8237/dack [1]),
    .I3(\s2/b5_768 ),
    .I4(\s2/aen_brd_763 ),
    .O(a[19])
  );
  LUT5 #(
    .INIT ( 32'hFF0CAEAE ))
  \a<18>LogicTrst1  (
    .I0(\s1/u10/rq [6]),
    .I1(\s4/ls6700/q0 [2]),
    .I2(\s4/i8237/dack [1]),
    .I3(\s2/b5_768 ),
    .I4(\s2/aen_brd_763 ),
    .O(a[18])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFBFFFFFFFFF ))
  \s3/ls2/y<3>1  (
    .I0(\s3/td0/td25/q_778 ),
    .I1(\s4/i8237/dack [0]),
    .I2(a[17]),
    .I3(a[18]),
    .I4(a[19]),
    .I5(a[16]),
    .O(cas_n[3])
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000190  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [12]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [14]),
    .I2(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000188_1651 ),
    .I3(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000135_1650 ),
    .O(N55)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000190  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [12]),
    .I2(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000188_1525 ),
    .I3(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000135_1524 ),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000190  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [12]),
    .I2(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000188_1400 ),
    .I3(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000135_1399 ),
    .O(N57)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<7>LogicTrst52  (
    .I0(\s5/rommod/outputval [7]),
    .I1(\xd<7>LogicTrst14_1932 ),
    .I2(\xd<7>LogicTrst22_1933 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<7>LogicTrst52_1934 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<6>LogicTrst52  (
    .I0(\s5/rommod/outputval [6]),
    .I1(\xd<6>LogicTrst14_1928 ),
    .I2(\xd<6>LogicTrst22_1929 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<6>LogicTrst52_1930 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<3>LogicTrst52  (
    .I0(\s5/rommod/outputval [3]),
    .I1(\xd<3>LogicTrst14_1916 ),
    .I2(\xd<3>LogicTrst22_1917 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<3>LogicTrst52_1918 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<2>LogicTrst52  (
    .I0(\s5/rommod/outputval [2]),
    .I1(\xd<2>LogicTrst14_1912 ),
    .I2(\xd<2>LogicTrst22_1913 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<2>LogicTrst52_1914 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<1>LogicTrst52  (
    .I0(\s5/rommod/outputval [1]),
    .I1(\xd<1>LogicTrst14_1908 ),
    .I2(\xd<1>LogicTrst22_1909 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<1>LogicTrst52_1910 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<5>LogicTrst52  (
    .I0(\s5/rommod/outputval [5]),
    .I1(\xd<5>LogicTrst14_1924 ),
    .I2(\xd<5>LogicTrst22_1925 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<5>LogicTrst52_1926 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<4>LogicTrst52  (
    .I0(\s5/rommod/outputval [4]),
    .I1(\xd<4>LogicTrst14_1920 ),
    .I2(\xd<4>LogicTrst22_1921 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<4>LogicTrst52_1922 )
  );
  LUT6 #(
    .INIT ( 64'h0A0B0A040A0A0A0A ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux000088  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [2]),
    .I3(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .I4(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .I5(N56),
    .O(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux000088_1533 )
  );
  LUT6 #(
    .INIT ( 64'h0A0B0A040A0A0A0A ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux000088  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [2]),
    .I3(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .I4(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .I5(N57),
    .O(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux000088_1408 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \xd<0>LogicTrst1_SW0  (
    .I0(\s5/ls2450/ab_inv ),
    .I1(N135),
    .I2(cs_n[2]),
    .I3(cs_n[6]),
    .I4(cs_n[3]),
    .I5(cs_n[7]),
    .O(N242)
  );
  LUT6 #(
    .INIT ( 64'h00AA000008AA0000 ))
  \s6/rb3/central_ram_core/enexp1  (
    .I0(\s6/rb3/central_ram_core/fsm_FSM_FFd1_1295 ),
    .I1(a[17]),
    .I2(N278),
    .I3(cas_n[3]),
    .I4(xmemw_n),
    .I5(xmemr_n),
    .O(\s6/rb3/enexp )
  );
  LUT6 #(
    .INIT ( 64'h00AA000002AA0000 ))
  \s6/rb1/central_ram_core/enexp1  (
    .I0(\s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 ),
    .I1(a[17]),
    .I2(N278),
    .I3(cas_n[1]),
    .I4(xmemw_n),
    .I5(xmemr_n),
    .O(\s6/rb1/enexp )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux00001231_SW0  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .O(N282)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux00001231_SW1  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .O(N283)
  );
  LUT6 #(
    .INIT ( 64'hF0C03000B080B080 ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000150  (
    .I0(N282),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I2(\s8/i8253/vcs/C2/OUTCTRL/OUT_1653 ),
    .I3(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000120_1655 ),
    .I4(N283),
    .I5(N55),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000150_1656 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux00001231_SW0  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .O(N285)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux00001231_SW1  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .O(N286)
  );
  LUT6 #(
    .INIT ( 64'hF0C03000B080B080 ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000158  (
    .I0(N285),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [2]),
    .I2(\s8/i8253/vcs/C1/OUTCTRL/OUT_1527 ),
    .I3(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000128_1529 ),
    .I4(N286),
    .I5(N56),
    .O(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000158_1530 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux00001231_SW0  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .O(N288)
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux00001231_SW1  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .O(N289)
  );
  LUT6 #(
    .INIT ( 64'hF0C03000B080B080 ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000158  (
    .I0(N288),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [2]),
    .I2(\s8/i8253/vcs/C0/OUTCTRL/OUT_1402 ),
    .I3(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000128_1404 ),
    .I4(N289),
    .I5(N57),
    .O(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000158_1405 )
  );
  LUT5 #(
    .INIT ( 32'hFF0CAEAE ))
  \a<17>LogicTrst1  (
    .I0(\s1/u10/rq [5]),
    .I1(\s4/ls6700/q0 [1]),
    .I2(\s4/i8237/dack [1]),
    .I3(\s2/b5_768 ),
    .I4(\s2/aen_brd_763 ),
    .O(a[17])
  );
  LUT5 #(
    .INIT ( 32'hFF0CAEAE ))
  \a<16>LogicTrst1  (
    .I0(\s1/u10/rq [4]),
    .I1(\s4/ls6700/q0 [0]),
    .I2(\s4/i8237/dack [1]),
    .I3(\s2/b5_768 ),
    .I4(\s2/aen_brd_763 ),
    .O(a[16])
  );
  LUT6 #(
    .INIT ( 64'h4C04440444444444 ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000075  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000069_1659 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .I3(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .I4(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000047_1658 ),
    .I5(N55),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000075_1660 )
  );
  LUT6 #(
    .INIT ( 64'h4C04440444444444 ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux000027  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .I1(N157),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .I3(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .I4(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux00002_1531 ),
    .I5(N56),
    .O(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux000027_1532 )
  );
  LUT6 #(
    .INIT ( 64'h4C04440444444444 ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux000027  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .I1(N158),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .I3(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .I4(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux00002_1406 ),
    .I5(N57),
    .O(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux000027_1407 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s6/rb2/central_ram_core/enexp1_SW0  (
    .I0(\s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 ),
    .I1(xmemw_n),
    .O(N293)
  );
  LUT6 #(
    .INIT ( 64'hF4F0FCF04400CC00 ))
  \s6/md<2>LogicTrst23  (
    .I0(cas_n[2]),
    .I1(N293),
    .I2(\s6/rb3/md_out [2]),
    .I3(\s6/rb2/md_out [2]),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<2>LogicTrst23_1219 )
  );
  LUT6 #(
    .INIT ( 64'hF4F0FCF04400CC00 ))
  \s6/md<1>LogicTrst23  (
    .I0(cas_n[2]),
    .I1(N293),
    .I2(\s6/rb3/md_out [1]),
    .I3(\s6/rb2/md_out [1]),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<1>LogicTrst23_1214 )
  );
  LUT6 #(
    .INIT ( 64'hF4F0FCF04400CC00 ))
  \s6/md<0>LogicTrst23  (
    .I0(cas_n[2]),
    .I1(N293),
    .I2(\s6/rb3/md_out [0]),
    .I3(\s6/rb2/md_out [0]),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<0>LogicTrst23_1208 )
  );
  LUT6 #(
    .INIT ( 64'h00000000008D000F ))
  \s6/md<2>LogicTrst54  (
    .I0(cas_n[2]),
    .I1(N300),
    .I2(N299),
    .I3(\s6/rb1/enexp ),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<0>LogicTrst54 )
  );
  LUT5 #(
    .INIT ( 32'h00011111 ))
  \s0/vgamod/d_and0000111_SW0  (
    .I0(\s0/vgamod/d_and00001_471 ),
    .I1(\s0/vgamod/d_and00000_470 ),
    .I2(a[4]),
    .I3(a[5]),
    .I4(N1511),
    .O(N302)
  );
  LUT6 #(
    .INIT ( 64'h4000000050000000 ))
  \s0/vgamod/d_and0000111  (
    .I0(ior_n),
    .I1(\s0/vgamod/d_and000012_472 ),
    .I2(N170),
    .I3(\s0/vgamod/d_and000079_473 ),
    .I4(N128),
    .I5(N302),
    .O(\s0/vgamod/d_and0000 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFCFE ))
  \xd<0>LogicTrst52  (
    .I0(\s5/rommod/outputval [0]),
    .I1(\xd<0>LogicTrst22_1905 ),
    .I2(\xd<0>LogicTrst14_1904 ),
    .I3(\s5/rommod/csv_inv ),
    .I4(N51),
    .O(\xd<0>LogicTrst52_1906 )
  );
  LUT5 #(
    .INIT ( 32'h08008800 ))
  \s6/md<7>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(xmemw_n),
    .I2(cas_n[0]),
    .I3(\s6/rb0/md_out [7]),
    .I4(ras_n[0]),
    .O(\s6/md<7>LogicTrst11_1244 )
  );
  LUT5 #(
    .INIT ( 32'h08008800 ))
  \s6/md<6>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(xmemw_n),
    .I2(cas_n[0]),
    .I3(\s6/rb0/md_out [6]),
    .I4(ras_n[0]),
    .O(\s6/md<6>LogicTrst11_1239 )
  );
  LUT5 #(
    .INIT ( 32'h08008800 ))
  \s6/md<5>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(xmemw_n),
    .I2(cas_n[0]),
    .I3(\s6/rb0/md_out [5]),
    .I4(ras_n[0]),
    .O(\s6/md<5>LogicTrst11_1234 )
  );
  LUT5 #(
    .INIT ( 32'h08008800 ))
  \s6/md<4>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(xmemw_n),
    .I2(cas_n[0]),
    .I3(\s6/rb0/md_out [4]),
    .I4(ras_n[0]),
    .O(\s6/md<4>LogicTrst11_1229 )
  );
  LUT5 #(
    .INIT ( 32'h08008800 ))
  \s6/md<3>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(xmemw_n),
    .I2(cas_n[0]),
    .I3(\s6/rb0/md_out [3]),
    .I4(ras_n[0]),
    .O(\s6/md<3>LogicTrst11_1223 )
  );
  LUT5 #(
    .INIT ( 32'h77757777 ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000120  (
    .I0(\s8/i8253/vcs/C2/OUTCTRL/TRIG_1666 ),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .I2(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_1662 ),
    .I3(\s8/i8253/vcs/C2/CNTREG/LOAD_1581 ),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux0000120_1655 )
  );
  LUT5 #(
    .INIT ( 32'h77757777 ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000128  (
    .I0(\s8/i8253/vcs/C1/OUTCTRL/TRIG_1539 ),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .I2(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_1535 ),
    .I3(\s8/i8253/vcs/C1/CNTREG/LOAD_1456 ),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux0000128_1529 )
  );
  LUT5 #(
    .INIT ( 32'h77757777 ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000128  (
    .I0(\s8/i8253/vcs/C0/OUTCTRL/TRIG_1414 ),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .I2(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_1410 ),
    .I3(\s8/i8253/vcs/C0/CNTREG/LOAD_1329 ),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux0000128_1404 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000047  (
    .I0(\s8/i8253/vcs/C2/CNTREG/LOAD_1581 ),
    .I1(\s8/i8253/vcs/C2/OUTCTRL/OUT_1653 ),
    .I2(\s8/i8253/vcs/C2/OUTCTRL/RELOAD_1662 ),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000047_1658 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux00002  (
    .I0(\s8/i8253/vcs/C1/CNTREG/LOAD_1456 ),
    .I1(\s8/i8253/vcs/C1/OUTCTRL/OUT_1527 ),
    .I2(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_1535 ),
    .O(\s8/i8253/vcs/C1/OUTCTRL/OUT_mux00002_1531 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux00002  (
    .I0(\s8/i8253/vcs/C0/CNTREG/LOAD_1329 ),
    .I1(\s8/i8253/vcs/C0/OUTCTRL/OUT_1402 ),
    .I2(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_1410 ),
    .O(\s8/i8253/vcs/C0/OUTCTRL/OUT_mux00002_1406 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFBFFFF ))
  \s3/ls2/y<1>1  (
    .I0(\s3/td0/td25/q_778 ),
    .I1(\s4/i8237/dack [0]),
    .I2(a[18]),
    .I3(a[19]),
    .I4(a[16]),
    .I5(a[17]),
    .O(cas_n[1])
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \s3/ls3/y<7>1_SW0  (
    .I0(\s4/i8237/dack [0]),
    .I1(a[18]),
    .I2(a[19]),
    .I3(a[16]),
    .O(N278)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFBFFFF ))
  \s3/ls2/y<2>1  (
    .I0(\s3/td0/td25/q_778 ),
    .I1(\s4/i8237/dack [0]),
    .I2(a[18]),
    .I3(a[19]),
    .I4(a[17]),
    .I5(a[16]),
    .O(cas_n[2])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFDFF ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux00001511  (
    .I0(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000188_1651 ),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [12]),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [14]),
    .I3(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_and0000135_1650 ),
    .I4(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .O(N153)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFDFF ))
  \s8/i8253/vcs/C1/OUTCTRL/OUT_mux00001511  (
    .I0(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000188_1525 ),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [13]),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [12]),
    .I3(\s8/i8253/vcs/C1/OUTCTRL/CLRTRIG_and0000135_1524 ),
    .I4(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .O(N152)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFDFF ))
  \s8/i8253/vcs/C0/OUTCTRL/OUT_mux00001511  (
    .I0(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000188_1400 ),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [13]),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [12]),
    .I3(\s8/i8253/vcs/C0/OUTCTRL/CLRTRIG_and0000135_1399 ),
    .I4(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .O(N154)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFB ))
  \s3/ls2/y<0>1  (
    .I0(\s3/td0/td25/q_778 ),
    .I1(\s4/i8237/dack [0]),
    .I2(a[19]),
    .I3(a[18]),
    .I4(a[17]),
    .I5(a[16]),
    .O(cas_n[0])
  );
  LUT5 #(
    .INIT ( 32'hFFFE5554 ))
  \s0/vgamod/wr_adr131_SW0  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s1/u10/rq [7]),
    .I2(\s1/u10/rq [6]),
    .I3(\s1/u10/rq [5]),
    .I4(\s2/b5_768 ),
    .O(N308)
  );
  LUT5 #(
    .INIT ( 32'h22222223 ))
  \s0/vgamod/wr_adr131  (
    .I0(\s4/i8237/dack [1]),
    .I1(N308),
    .I2(\s4/ls6700/q0 [3]),
    .I3(\s4/ls6700/q0 [2]),
    .I4(\s4/ls6700/q0 [1]),
    .O(N170)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \s0/vgamod/d_and00000_SW0  (
    .I0(\s1/u10/rq [7]),
    .I1(\s1/u10/rq [4]),
    .O(N310)
  );
  LUT6 #(
    .INIT ( 64'hD1D1D1D1FFFFFFD1 ))
  \s0/vgamod/d_and00000  (
    .I0(N310),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls6700/q0 [0]),
    .I4(\s4/ls6700/q0 [3]),
    .I5(\s4/i8237/dack [1]),
    .O(\s0/vgamod/d_and00000_470 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \s0/vgamod/d_and00001_SW0  (
    .I0(\s1/u10/rq [6]),
    .I1(\s1/u10/rq [5]),
    .O(N312)
  );
  LUT6 #(
    .INIT ( 64'hD1D1D1D1FFFFFFD1 ))
  \s0/vgamod/d_and00001  (
    .I0(N312),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls6700/q0 [2]),
    .I4(\s4/ls6700/q0 [1]),
    .I5(\s4/i8237/dack [1]),
    .O(\s0/vgamod/d_and00001_471 )
  );
  LUT6 #(
    .INIT ( 64'h0000005100000040 ))
  \s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_mux00001  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .I2(\s8/i8253/vcs/C2/OUTCTRL/TRIG_1666 ),
    .I3(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .I4(N153),
    .I5(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C2/OUTCTRL/CLRTRIG_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h22002A0000000000 ))
  \s6/md<2>LogicTrst0  (
    .I0(\s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 ),
    .I1(cas_n[1]),
    .I2(N314),
    .I3(xmemw_n),
    .I4(xmemr_n),
    .I5(\s6/rb1/md_out [2]),
    .O(\s6/md<2>LogicTrst0_1217 )
  );
  LUT6 #(
    .INIT ( 64'h22002A0000000000 ))
  \s6/md<1>LogicTrst0  (
    .I0(\s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 ),
    .I1(cas_n[1]),
    .I2(N314),
    .I3(xmemw_n),
    .I4(xmemr_n),
    .I5(\s6/rb1/md_out [1]),
    .O(\s6/md<1>LogicTrst0_1212 )
  );
  LUT6 #(
    .INIT ( 64'h22002A0000000000 ))
  \s6/md<0>LogicTrst0  (
    .I0(\s6/rb1/central_ram_core/fsm_FSM_FFd1_1267 ),
    .I1(cas_n[1]),
    .I2(N314),
    .I3(xmemw_n),
    .I4(xmemr_n),
    .I5(\s6/rb1/md_out [0]),
    .O(\s6/md<0>LogicTrst0_1206 )
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \s6/rb2/central_ram_core/enexp1_SW4  (
    .I0(\s4/i8237/dack [0]),
    .I1(a[18]),
    .I2(a[19]),
    .I3(xmemr_n),
    .O(N300)
  );
  LUT6 #(
    .INIT ( 64'hCCCE000ACCCC0000 ))
  \s6/rb2/central_ram_core/enexp1_SW3  (
    .I0(\s4/i8237/dack [0]),
    .I1(\s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 ),
    .I2(a[19]),
    .I3(a[18]),
    .I4(xmemw_n),
    .I5(xmemr_n),
    .O(N299)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \s0/vgamod/d_or0000_inv1_SW0  (
    .I0(\s0/vgamod/mem_range ),
    .I1(memr_n),
    .O(N320)
  );
  LUT6 #(
    .INIT ( 64'hAFAEAAAE05040004 ))
  \d<0>LogicTrst47  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(\s0/vgamod/vga_data_out [0]),
    .I2(N320),
    .I3(a[0]),
    .I4(\s0/vgamod/attr_data_out [0]),
    .I5(\s0/vgamod/dataout [0]),
    .O(\d<0>LogicTrst47_167 )
  );
  LUT6 #(
    .INIT ( 64'h00AA000002AA0000 ))
  \s6/rb0/central_ram_core/enexp1  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(N322),
    .I2(ram_addr_sel_n),
    .I3(cas_n[0]),
    .I4(xmemw_n),
    .I5(xmemr_n),
    .O(\s6/rb0/enexp )
  );
  LUT6 #(
    .INIT ( 64'h0020A0A000000000 ))
  \s6/md<2>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(N324),
    .I2(xmemw_n),
    .I3(xmemr_n),
    .I4(cas_n[0]),
    .I5(\s6/rb0/md_out [2]),
    .O(\s6/md<2>LogicTrst11_1218 )
  );
  LUT6 #(
    .INIT ( 64'h0020A0A000000000 ))
  \s6/md<1>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(N324),
    .I2(xmemw_n),
    .I3(xmemr_n),
    .I4(cas_n[0]),
    .I5(\s6/rb0/md_out [1]),
    .O(\s6/md<1>LogicTrst11_1213 )
  );
  LUT6 #(
    .INIT ( 64'h0020A0A000000000 ))
  \s6/md<0>LogicTrst11  (
    .I0(\s6/rb0/central_ram_core/fsm_FSM_FFd1_1252 ),
    .I1(N324),
    .I2(xmemw_n),
    .I3(xmemr_n),
    .I4(cas_n[0]),
    .I5(\s6/rb0/md_out [0]),
    .O(\s6/md<0>LogicTrst11_1207 )
  );
  LUT6 #(
    .INIT ( 64'hF4F0FCF04400CC00 ))
  \s6/md<7>LogicTrst23  (
    .I0(cas_n[2]),
    .I1(N293),
    .I2(\s6/rb3/md_out [7]),
    .I3(\s6/rb2/md_out [7]),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<7>LogicTrst23_1245 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000D800F0 ))
  \s6/md<7>LogicTrst58  (
    .I0(cas_n[2]),
    .I1(N300),
    .I2(N332),
    .I3(\s6/rb1/enexp ),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<3>LogicTrst58 )
  );
  LUT6 #(
    .INIT ( 64'hF4F0FCF04400CC00 ))
  \s6/md<5>LogicTrst23  (
    .I0(cas_n[2]),
    .I1(N293),
    .I2(\s6/rb3/md_out [5]),
    .I3(\s6/rb2/md_out [5]),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<5>LogicTrst23_1235 )
  );
  LUT6 #(
    .INIT ( 64'hF4F0FCF04400CC00 ))
  \s6/md<3>LogicTrst23  (
    .I0(cas_n[2]),
    .I1(N293),
    .I2(\s6/rb3/md_out [3]),
    .I3(\s6/rb2/md_out [3]),
    .I4(ras_n[2]),
    .I5(\s6/rb3/enexp ),
    .O(\s6/md<3>LogicTrst23_1224 )
  );
  LUT5 #(
    .INIT ( 32'hFAFAFA3A ))
  \a<6>LogicTrst1  (
    .I0(\s1/u7/rq [6]),
    .I1(\s2/b5_768 ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/i8237/Mtridata_a7_4 [2]),
    .I4(\s4/i8237/Mtrien_a7_4_918 ),
    .O(a[6])
  );
  LUT5 #(
    .INIT ( 32'hFAFAFA3A ))
  \a<7>LogicTrst1  (
    .I0(\s1/u7/rq [7]),
    .I1(\s2/b5_768 ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/i8237/Mtridata_a7_4 [3]),
    .I4(\s4/i8237/Mtrien_a7_4_918 ),
    .O(a[7])
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \d<7>LogicTrst27  (
    .I0(a[0]),
    .I1(\s0/vgamod/vga_data_out [7]),
    .I2(\s0/vgamod/d_and0000 ),
    .I3(\s0/vgamod/attr_data_out [7]),
    .O(\d<7>LogicTrst27_188 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \d<6>LogicTrst36  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(a[0]),
    .I2(\s0/vgamod/attr_data_out [6]),
    .I3(\s0/vgamod/vga_data_out [6]),
    .I4(\s0/vgamod/dataout [6]),
    .O(\d<6>LogicTrst36_185 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \d<3>LogicTrst36  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(a[0]),
    .I2(\s0/vgamod/attr_data_out [3]),
    .I3(\s0/vgamod/vga_data_out [3]),
    .I4(\s0/vgamod/dataout [3]),
    .O(\d<3>LogicTrst36_176 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \d<2>LogicTrst36  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(a[0]),
    .I2(\s0/vgamod/attr_data_out [2]),
    .I3(\s0/vgamod/vga_data_out [2]),
    .I4(\s0/vgamod/dataout [2]),
    .O(\d<2>LogicTrst36_173 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \d<1>LogicTrst36  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(a[0]),
    .I2(\s0/vgamod/attr_data_out [1]),
    .I3(\s0/vgamod/vga_data_out [1]),
    .I4(\s0/vgamod/dataout [1]),
    .O(\d<1>LogicTrst36_170 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \d<5>LogicTrst36  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(a[0]),
    .I2(\s0/vgamod/attr_data_out [5]),
    .I3(\s0/vgamod/vga_data_out [5]),
    .I4(\s0/vgamod/dataout [5]),
    .O(\d<5>LogicTrst36_182 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \d<4>LogicTrst36  (
    .I0(\s0/vgamod/d_and0000 ),
    .I1(a[0]),
    .I2(\s0/vgamod/attr_data_out [4]),
    .I3(\s0/vgamod/vga_data_out [4]),
    .I4(\s0/vgamod/dataout [4]),
    .O(\d<4>LogicTrst36_179 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \s3/ls3/y<4>1_SW1  (
    .I0(\s4/i8237/dack [0]),
    .I1(a[18]),
    .I2(a[19]),
    .I3(a[17]),
    .I4(a[16]),
    .O(N324)
  );
  LUT5 #(
    .INIT ( 32'hFFFDFFFF ))
  \s3/ls3/y<5>1_SW1  (
    .I0(\s4/i8237/dack [0]),
    .I1(a[19]),
    .I2(a[18]),
    .I3(a[17]),
    .I4(a[16]),
    .O(N314)
  );
  LUT4 #(
    .INIT ( 16'hBAFF ))
  \s5/rommod/upaddr<2>_SW0  (
    .I0(a[15]),
    .I1(a[14]),
    .I2(a[13]),
    .I3(\s3/ls4/y_and0000 ),
    .O(N218)
  );
  LUT4 #(
    .INIT ( 16'hBAFF ))
  \s5/rommod/upaddr<0>_SW0  (
    .I0(a[13]),
    .I1(a[14]),
    .I2(a[15]),
    .I3(\s3/ls4/y_and0000 ),
    .O(N216)
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \a<9>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s2/b5_768 ),
    .I2(\s4/ls3730/rq [1]),
    .I3(\s1/u9/rq [1]),
    .O(a[9])
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \a<8>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s2/b5_768 ),
    .I2(\s4/ls3730/rq [0]),
    .I3(\s1/u9/rq [0]),
    .O(a[8])
  );
  LUT5 #(
    .INIT ( 32'hFAFAFA3A ))
  \a<4>LogicTrst1  (
    .I0(\s1/u7/rq [4]),
    .I1(\s2/b5_768 ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/i8237/Mtridata_a7_4 [0]),
    .I4(\s4/i8237/Mtrien_a7_4_918 ),
    .O(a[4])
  );
  LUT5 #(
    .INIT ( 32'hFAFAFA3A ))
  \a<5>LogicTrst1  (
    .I0(\s1/u7/rq [5]),
    .I1(\s2/b5_768 ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/i8237/Mtridata_a7_4 [1]),
    .I4(\s4/i8237/Mtrien_a7_4_918 ),
    .O(a[5])
  );
  LUT6 #(
    .INIT ( 64'h3331FFF53333FFFF ))
  \s6/rb2/central_ram_core/enexp1_SW6  (
    .I0(\s4/i8237/dack [0]),
    .I1(\s6/rb2/central_ram_core/fsm_FSM_FFd1_1281 ),
    .I2(a[18]),
    .I3(a[19]),
    .I4(xmemw_n),
    .I5(xmemr_n),
    .O(N332)
  );
  LUT5 #(
    .INIT ( 32'hFA3AFFFF ))
  \s5/rommod/csv_inv11  (
    .I0(\s1/u9/rq [6]),
    .I1(\s2/b5_768 ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/ls3730/rq [6]),
    .I4(\s3/ls4/y_and0000 ),
    .O(N135)
  );
  LUT6 #(
    .INIT ( 64'h9009000000000000 ))
  \s0/vgamod/cursor_on_h_cmp_eq00007122  (
    .I0(\s0/vgamod/h_count [3]),
    .I1(\s0/vgamod/reg_hcursor [0]),
    .I2(\s0/vgamod/h_count [4]),
    .I3(\s0/vgamod/reg_hcursor [1]),
    .I4(\s0/vgamod/cursor_on_h_cmp_eq0000749_461 ),
    .I5(\s0/vgamod/cursor_on_h_cmp_eq0000794_462 ),
    .O(\s0/vgamod/cursor_on_h_cmp_eq0000 )
  );
  LUT5 #(
    .INIT ( 32'h0D080808 ))
  \s4/i8237/Mtridata_db_mux0000<7>_SW2  (
    .I0(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I1(\s4/i8237/curr_addr [0]),
    .I2(\s4/i8237/ff_1139 ),
    .I3(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I4(\s4/i8237/curr_word [0]),
    .O(N343)
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA80AA80AA80 ))
  \s4/i8237/Mtridata_db_mux0000<7>  (
    .I0(N52),
    .I1(N61),
    .I2(\s4/i8237/curr_word [8]),
    .I3(N343),
    .I4(N5),
    .I5(\s4/i8237/curr_addr [8]),
    .O(\s4/i8237/Mtridata_db_mux0000 [7])
  );
  LUT5 #(
    .INIT ( 32'h0D080808 ))
  \s4/i8237/Mtridata_db_mux0000<6>_SW2  (
    .I0(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I1(\s4/i8237/curr_addr [1]),
    .I2(\s4/i8237/ff_1139 ),
    .I3(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I4(\s4/i8237/curr_word [1]),
    .O(N345)
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA80AA80AA80 ))
  \s4/i8237/Mtridata_db_mux0000<6>  (
    .I0(N52),
    .I1(N61),
    .I2(\s4/i8237/curr_word [9]),
    .I3(N345),
    .I4(N5),
    .I5(\s4/i8237/curr_addr [9]),
    .O(\s4/i8237/Mtridata_db_mux0000 [6])
  );
  LUT5 #(
    .INIT ( 32'h0D080808 ))
  \s4/i8237/Mtridata_db_mux0000<5>_SW2  (
    .I0(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I1(\s4/i8237/curr_addr [2]),
    .I2(\s4/i8237/ff_1139 ),
    .I3(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I4(\s4/i8237/curr_word [2]),
    .O(N347)
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA80AA80AA80 ))
  \s4/i8237/Mtridata_db_mux0000<5>  (
    .I0(N52),
    .I1(N61),
    .I2(\s4/i8237/curr_word [10]),
    .I3(N347),
    .I4(N5),
    .I5(\s4/i8237/curr_addr [10]),
    .O(\s4/i8237/Mtridata_db_mux0000 [5])
  );
  LUT5 #(
    .INIT ( 32'h0D080808 ))
  \s4/i8237/Mtridata_db_mux0000<4>_SW2  (
    .I0(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I1(\s4/i8237/curr_addr [3]),
    .I2(\s4/i8237/ff_1139 ),
    .I3(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I4(\s4/i8237/curr_word [3]),
    .O(N349)
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA80AA80AA80 ))
  \s4/i8237/Mtridata_db_mux0000<4>  (
    .I0(N52),
    .I1(N61),
    .I2(\s4/i8237/curr_word [11]),
    .I3(N349),
    .I4(N5),
    .I5(\s4/i8237/curr_addr [11]),
    .O(\s4/i8237/Mtridata_db_mux0000 [4])
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \s4/i8237/state_cmp_eq0009106  (
    .I0(\s4/i8237/state_cmp_eq0009104_1167 ),
    .I1(\s4/i8237/curr_word [6]),
    .I2(\s4/i8237/curr_word [7]),
    .I3(\s4/i8237/curr_word [5]),
    .I4(\s4/i8237/state_cmp_eq000935_1168 ),
    .I5(\s4/i8237/curr_word [4]),
    .O(\s4/i8237/state_cmp_eq0009 )
  );
  LUT6 #(
    .INIT ( 64'h2222F222AAAAFAAA ))
  \s4/i8237/curr_addr_9_mux000040  (
    .I0(\s4/i8237/state_cmp_eq0002 ),
    .I1(\s4/i8237/ff_1139 ),
    .I2(\s4/i8237/state_cmp_eq0008 ),
    .I3(\s4/i8237/mode [3]),
    .I4(\s4/i8237/state_cmp_eq0009 ),
    .I5(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .O(\s4/i8237/curr_addr_10_mux000040 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \s5/xa<4>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s1/u7/rq [4]),
    .O(\s5/xa [4])
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \s6/ls2450/ba_inv1  (
    .I0(\s4/i8237/dack [0]),
    .I1(a[18]),
    .I2(a[19]),
    .I3(xmemr_n),
    .O(\s6/ls2450/ba_inv )
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<2>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [2]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<2>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [2]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [2]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<2>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [2]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [2]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<3>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [3]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<3>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [3]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<3>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [3]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [3]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<4>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [4]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [4]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<4>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [4]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [4]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<4>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [4]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [4]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<5>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [5]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [5]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<5>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [5]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [5]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<5>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [5]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [5]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [5])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<6>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [6]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [6]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<6>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [6]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [6]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<6>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [6]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [6]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [6])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<7>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [7]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [7]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<7>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [7]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [7]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<7>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [7]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [7]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [7])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<8>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [8]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [0]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<8>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [8]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [0]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<8>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [8]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [0]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<9>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [9]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [1]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [9])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<9>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [9]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [1]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [9])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<9>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [9]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [1]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [9])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<10>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [10]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [2]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [10])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<10>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [10]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [2]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [10])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<10>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [10]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [2]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [10])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<11>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [11]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [3]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [11])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<11>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [11]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [3]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [11])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<11>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [11]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [3]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [11])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<12>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [12]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [4]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [12])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<12>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [12]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [4]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [12])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<12>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [12]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [4]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [12])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<13>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [5]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [13])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<13>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [5]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [13])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<13>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [13]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [5]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [13])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<14>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [14]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [6]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [14])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<14>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [14]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [6]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [14])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<14>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [14]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [6]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [14])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \s0/vgamod/row_addr_not00011  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/h_count [1]),
    .I2(\s0/vgamod/h_count [2]),
    .O(\s0/vgamod/row_addr_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<15>1  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [15]),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTMSB [7]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [15])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<15>1  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [15]),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTMSB [7]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [15])
  );
  LUT3 #(
    .INIT ( 8'hD1 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<15>1  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [15]),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTMSB [7]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [15])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \s0/vgamod/vga_blue_o_mux0000<0>1  (
    .I0(\s0/vgamod/intense_527 ),
    .I1(\s0/vgamod/cursor_on_457 ),
    .I2(\s0/vgamod/vga_shift [7]),
    .O(\s0/vgamod/vga_blue_o_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \s0/vgamod/intense_or0000_inv1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/h_count [1]),
    .I2(\s0/vgamod/h_count [2]),
    .I3(reset),
    .O(\s0/vgamod/intense_or0000_inv )
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \s0/vgamod/vga_red_o_mux0000<1>1  (
    .I0(\s0/vgamod/cursor_on_457 ),
    .I1(\s0/vgamod/vga_shift [7]),
    .I2(\s0/vgamod/vga_bg_colour [2]),
    .I3(\s0/vgamod/vga_fg_colour [2]),
    .O(\s0/vgamod/vga_red_o_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \s0/vgamod/vga_blue_o_mux0000<1>1  (
    .I0(\s0/vgamod/cursor_on_457 ),
    .I1(\s0/vgamod/vga_shift [7]),
    .I2(\s0/vgamod/vga_bg_colour [0]),
    .I3(\s0/vgamod/vga_fg_colour [0]),
    .O(\s0/vgamod/vga_blue_o_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \s0/vgamod/buff_addr_mux0000<4>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [4]),
    .I2(\s0/vgamod/ver_addr [0]),
    .I3(\s0/vgamod/buff0_addr [4]),
    .O(\s0/vgamod/buff_addr_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \s0/vgamod/attr_addr_mux0000<4>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/hor_addr [4]),
    .I2(\s0/vgamod/ver_addr [0]),
    .I3(\s0/vgamod/attr0_addr [4]),
    .O(\s0/vgamod/attr_addr_mux0000 [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAFFFFA8AAFDFF ))
  \s4/i8237/curr_addr_0_mux0000111  (
    .I0(\s4/i8237/state_cmp_eq0002 ),
    .I1(dma_cs_n),
    .I2(\s4/i8237/state_and0000 ),
    .I3(\s4/i8237/Mtridata_db_and0000 ),
    .I4(\s4/i8237/state_cmp_eq0008 ),
    .I5(\s2/holda_770 ),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'hAAAAFAAA2222F222 ))
  \s4/i8237/curr_addr_7_mux000039  (
    .I0(\s4/i8237/state_cmp_eq0002 ),
    .I1(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I2(\s4/i8237/mode [3]),
    .I3(\s4/i8237/state_cmp_eq0008 ),
    .I4(\s4/i8237/state_cmp_eq0009 ),
    .I5(\s4/i8237/ff_1139 ),
    .O(\s4/i8237/curr_addr_0_mux000043 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \s0/vgamod/h_count_cmp_eq0000_SW0  (
    .I0(\s0/vgamod/h_count [1]),
    .I1(\s0/vgamod/h_count [7]),
    .I2(\s0/vgamod/h_count [6]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/h_count [0]),
    .O(N208)
  );
  LUT5 #(
    .INIT ( 32'h66660660 ))
  \s4/i8237/state_mux0000<0>1  (
    .I0(\s4/i8237/state [1]),
    .I1(\s4/i8237/state [2]),
    .I2(\s8/drq0_1309 ),
    .I3(\s4/i8237/command [6]),
    .I4(\s4/i8237/state [0]),
    .O(\s4/i8237/state_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFB ))
  \s4/i8237/Mtrien_db_mux0000_SW1  (
    .I0(\xa[1] ),
    .I1(xiow_n),
    .I2(\xa[2] ),
    .I3(\xa[3] ),
    .I4(xior_n),
    .I5(\s4/i8237/state_and0000 ),
    .O(N353)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFAFAFFFDFAF8 ))
  \s4/i8237/Mtrien_db_mux0000  (
    .I0(\s4/i8237/state_cmp_eq0002 ),
    .I1(dma_cs_n),
    .I2(\s4/i8237/state_or0004 ),
    .I3(\s2/holda_770 ),
    .I4(N38),
    .I5(N353),
    .O(\s4/i8237/Mtrien_db_mux0000_920 )
  );
  LUT4 #(
    .INIT ( 16'hEA80 ))
  \s0/vgamod/Madd_vga_addr_cy<5>11  (
    .I0(\s0/vgamod/hor_addr [5]),
    .I1(\s0/vgamod/hor_addr [4]),
    .I2(\s0/vgamod/ver_addr [0]),
    .I3(\s0/vgamod/ver_addr [1]),
    .O(\s0/vgamod/Madd_vga_addr_cy[5] )
  );
  LUT5 #(
    .INIT ( 32'h26CC24CC ))
  \s0/vgamod/Madd_ver_addr_add0000_xor<6>11  (
    .I0(\s0/vgamod/row1_addr [2]),
    .I1(\s0/vgamod/row1_addr [4]),
    .I2(\s0/vgamod/row1_addr [1]),
    .I3(\s0/vgamod/row1_addr [3]),
    .I4(\s0/vgamod/row1_addr [0]),
    .O(\s0/vgamod/ver_addr_add0000 [6])
  );
  LUT5 #(
    .INIT ( 32'h32264C4C ))
  \s0/vgamod/Madd_ver_addr_add0000_xor<5>11  (
    .I0(\s0/vgamod/row1_addr [4]),
    .I1(\s0/vgamod/row1_addr [3]),
    .I2(\s0/vgamod/row1_addr [1]),
    .I3(\s0/vgamod/row1_addr [0]),
    .I4(\s0/vgamod/row1_addr [2]),
    .O(\s0/vgamod/ver_addr_add0000 [5])
  );
  LUT5 #(
    .INIT ( 32'hB496D25A ))
  \s0/vgamod/Madd_ver_addr_add0000_xor<4>11  (
    .I0(\s0/vgamod/row1_addr [2]),
    .I1(\s0/vgamod/row1_addr [3]),
    .I2(\s0/vgamod/row1_addr [4]),
    .I3(\s0/vgamod/row1_addr [0]),
    .I4(\s0/vgamod/row1_addr [1]),
    .O(\s0/vgamod/ver_addr_add0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h9666 ))
  \s0/vgamod/Madd_ver_addr_add0000_xor<3>11  (
    .I0(\s0/vgamod/row1_addr [1]),
    .I1(\s0/vgamod/row1_addr [3]),
    .I2(\s0/vgamod/row1_addr [2]),
    .I3(\s0/vgamod/row1_addr [0]),
    .O(\s0/vgamod/ver_addr_add0000 [3])
  );
  LUT6 #(
    .INIT ( 64'hFF96FF6600960066 ))
  \s0/vgamod/buff_addr_mux0000<5>1  (
    .I0(\s0/vgamod/hor_addr [5]),
    .I1(\s0/vgamod/ver_addr [1]),
    .I2(\s0/vgamod/hor_addr [4]),
    .I3(\s0/vgamod/vga2_rw_624 ),
    .I4(\s0/vgamod/ver_addr [0]),
    .I5(\s0/vgamod/buff0_addr [5]),
    .O(\s0/vgamod/buff_addr_mux0000 [5])
  );
  LUT6 #(
    .INIT ( 64'hFF96FF6600960066 ))
  \s0/vgamod/attr_addr_mux0000<5>1  (
    .I0(\s0/vgamod/hor_addr [5]),
    .I1(\s0/vgamod/ver_addr [1]),
    .I2(\s0/vgamod/hor_addr [4]),
    .I3(\s0/vgamod/vga2_rw_624 ),
    .I4(\s0/vgamod/ver_addr [0]),
    .I5(\s0/vgamod/attr0_addr [5]),
    .O(\s0/vgamod/attr_addr_mux0000 [5])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \s0/vgamod/dataout_mux0000<4>_SW0  (
    .I0(\s0/vgamod/reg_adr [2]),
    .I1(\s0/vgamod/dataout_and0000 ),
    .I2(a[0]),
    .I3(N131),
    .I4(\s0/vgamod/reg_adr [3]),
    .I5(\s0/vgamod/reg_adr [1]),
    .O(N192)
  );
  LUT6 #(
    .INIT ( 64'h0080028002800080 ))
  \s4/i8237/Mtridata_iow_mux000011  (
    .I0(\s4/i8237/mode [1]),
    .I1(\s4/i8237/state [0]),
    .I2(\s4/i8237/state [1]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_iow_mux00001_915 )
  );
  LUT6 #(
    .INIT ( 64'h0080028002800080 ))
  \s4/i8237/Mtridata_ior_mux000011  (
    .I0(\s4/i8237/mode [0]),
    .I1(\s4/i8237/state [0]),
    .I2(\s4/i8237/state [1]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_ior_mux00001_912 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \xa<7>LogicTrst1  (
    .I0(\s1/u7/rq [7]),
    .I1(\s2/aen_brd_763 ),
    .O(\xa[7] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \xa<6>LogicTrst1  (
    .I0(\s1/u7/rq [6]),
    .I1(\s2/aen_brd_763 ),
    .O(\xa[6] )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \xa<5>LogicTrst1  (
    .I0(\s1/u7/rq [5]),
    .I1(\s2/aen_brd_763 ),
    .O(\xa[5] )
  );
  LUT4 #(
    .INIT ( 16'hA880 ))
  \s0/vgamod/Madd_vga_addr_cy<7>11  (
    .I0(\s0/vgamod/ver_addr [3]),
    .I1(\s0/vgamod/hor_addr [6]),
    .I2(\s0/vgamod/ver_addr [2]),
    .I3(\s0/vgamod/Madd_vga_addr_cy[5] ),
    .O(\s0/vgamod/Madd_vga_addr_cy[7] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFBFFFF ))
  \s4/i8237/adstb_needed_or00001  (
    .I0(reset),
    .I1(\s4/i8237/state [2]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/mast_clr_1142 ),
    .I4(\s4/i8237/state [1]),
    .I5(\s4/i8237/state_cmp_eq0009 ),
    .O(\s4/i8237/adstb_needed_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \s0/vgamod/vga_shift_mux0000<0>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/h_count [1]),
    .I2(\s0/vgamod/h_count [2]),
    .I3(\s0/vgamod/char_data_out [0]),
    .O(\s0/vgamod/vga_shift_mux0000 [0])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \s0/vgamod/vga_shift_mux0000<6>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/vga_shift [5]),
    .I2(\s0/vgamod/h_count [1]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/char_data_out [6]),
    .O(\s0/vgamod/vga_shift_mux0000 [6])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \s0/vgamod/vga_shift_mux0000<4>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/vga_shift [3]),
    .I2(\s0/vgamod/h_count [1]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/char_data_out [4]),
    .O(\s0/vgamod/vga_shift_mux0000 [4])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \s0/vgamod/vga_shift_mux0000<2>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/vga_shift [1]),
    .I2(\s0/vgamod/h_count [1]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/char_data_out [2]),
    .O(\s0/vgamod/vga_shift_mux0000 [2])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \s0/vgamod/vga_shift_mux0000<7>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/vga_shift [6]),
    .I2(\s0/vgamod/h_count [1]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/char_data_out [7]),
    .O(\s0/vgamod/vga_shift_mux0000 [7])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \s0/vgamod/vga_shift_mux0000<5>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/vga_shift [4]),
    .I2(\s0/vgamod/h_count [1]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/char_data_out [5]),
    .O(\s0/vgamod/vga_shift_mux0000 [5])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \s0/vgamod/vga_shift_mux0000<3>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/vga_shift [2]),
    .I2(\s0/vgamod/h_count [1]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/char_data_out [3]),
    .O(\s0/vgamod/vga_shift_mux0000 [3])
  );
  LUT5 #(
    .INIT ( 32'hCCCDCCC8 ))
  \s0/vgamod/vga_shift_mux0000<1>1  (
    .I0(\s0/vgamod/h_count [0]),
    .I1(\s0/vgamod/vga_shift [0]),
    .I2(\s0/vgamod/h_count [1]),
    .I3(\s0/vgamod/h_count [2]),
    .I4(\s0/vgamod/char_data_out [1]),
    .O(\s0/vgamod/vga_shift_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF97939397 ))
  \s4/i8237/Mtrien_a3_0_mux00001  (
    .I0(\s4/i8237/state [1]),
    .I1(\s4/i8237/state [2]),
    .I2(\s4/i8237/state [0]),
    .I3(\s8/drq0_1309 ),
    .I4(\s4/i8237/command [6]),
    .I5(\s4/i8237/state_or0004 ),
    .O(\s4/i8237/Mtrien_a3_0_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFF7FDD5DAA2A8808 ))
  \s0/vgamod/new_buff_addr<8>1  (
    .I0(\s0/vgamod/new_buff ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls3730/rq [1]),
    .I4(\s1/u9/rq [1]),
    .I5(\s0/vgamod/buff_addr [8]),
    .O(\s0/vgamod/new_buff_addr [8])
  );
  LUT6 #(
    .INIT ( 64'hFF7FDD5DAA2A8808 ))
  \s0/vgamod/new_buff_addr<7>1  (
    .I0(\s0/vgamod/new_buff ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls3730/rq [0]),
    .I4(\s1/u9/rq [0]),
    .I5(\s0/vgamod/buff_addr [7]),
    .O(\s0/vgamod/new_buff_addr [7])
  );
  LUT6 #(
    .INIT ( 64'hFF7FDD5DAA2A8808 ))
  \s0/vgamod/new_attr_addr<8>1  (
    .I0(\s0/vgamod/new_attr ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls3730/rq [1]),
    .I4(\s1/u9/rq [1]),
    .I5(\s0/vgamod/attr_addr [8]),
    .O(\s0/vgamod/new_attr_addr [8])
  );
  LUT6 #(
    .INIT ( 64'hFF7FDD5DAA2A8808 ))
  \s0/vgamod/new_attr_addr<7>1  (
    .I0(\s0/vgamod/new_attr ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls3730/rq [0]),
    .I4(\s1/u9/rq [0]),
    .I5(\s0/vgamod/attr_addr [7]),
    .O(\s0/vgamod/new_attr_addr [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFF0CAEAE ))
  \s3/ls3/y<4>1_SW0  (
    .I0(\s1/u10/rq [5]),
    .I1(\s4/ls6700/q0 [1]),
    .I2(\s4/i8237/dack [1]),
    .I3(\s2/b5_768 ),
    .I4(\s2/aen_brd_763 ),
    .I5(a[16]),
    .O(N322)
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \a<14>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s2/b5_768 ),
    .I2(\s4/ls3730/rq [6]),
    .I3(\s1/u9/rq [6]),
    .O(a[14])
  );
  LUT4 #(
    .INIT ( 16'hFA3A ))
  \a<13>LogicTrst1  (
    .I0(\s1/u9/rq [5]),
    .I1(\s2/b5_768 ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/ls3730/rq [5]),
    .O(a[13])
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \a<15>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s2/b5_768 ),
    .I2(\s4/ls3730/rq [7]),
    .I3(\s1/u9/rq [7]),
    .O(a[15])
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \a<12>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s2/b5_768 ),
    .I2(\s4/ls3730/rq [4]),
    .I3(\s1/u9/rq [4]),
    .O(a[12])
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<1>  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C2/COUNTLSB<1>1_1588 ),
    .I2(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<1>  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C0/COUNTLSB<1>1_1336 ),
    .I2(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [1])
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<1>  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [1]),
    .I1(\s8/i8253/vcs/C1/COUNTLSB<1>1_1463 ),
    .I2(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [1])
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \s8/i8253/vcs/C2/READ/D_and00001  (
    .I0(\xa[1] ),
    .I1(xiow_n),
    .I2(xior_n),
    .I3(tc_cs_n),
    .I4(\xa[0] ),
    .O(\s8/i8253/vcs/C2/READ/D_and0000 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \s8/i8253/vcs/C1/READ/D_and00001  (
    .I0(\xa[0] ),
    .I1(xiow_n),
    .I2(xior_n),
    .I3(tc_cs_n),
    .I4(\xa[1] ),
    .O(\s8/i8253/vcs/C1/READ/D_and0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF0001FFFF0101 ))
  \s4/i8237/curr_word_10_mux000011  (
    .I0(\s4/i8237/state [0]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [2]),
    .I3(\s4/i8237/ff_1139 ),
    .I4(N23),
    .I5(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFFFF0101FFFF0001 ))
  \s4/i8237/curr_word_0_mux000011  (
    .I0(\s4/i8237/state [0]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [2]),
    .I3(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I4(N23),
    .I5(\s4/i8237/ff_1139 ),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'hABFEBFEA01541540 ))
  \s0/vgamod/buff_addr_mux0000<7>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/ver_addr [2]),
    .I2(\s0/vgamod/hor_addr [6]),
    .I3(\s0/vgamod/ver_addr [3]),
    .I4(\s0/vgamod/Madd_vga_addr_cy[5] ),
    .I5(\s0/vgamod/buff0_addr [7]),
    .O(\s0/vgamod/buff_addr_mux0000 [7])
  );
  LUT6 #(
    .INIT ( 64'hABFEBFEA01541540 ))
  \s0/vgamod/attr_addr_mux0000<7>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/ver_addr [2]),
    .I2(\s0/vgamod/hor_addr [6]),
    .I3(\s0/vgamod/ver_addr [3]),
    .I4(\s0/vgamod/Madd_vga_addr_cy[5] ),
    .I5(\s0/vgamod/attr0_addr [7]),
    .O(\s0/vgamod/attr_addr_mux0000 [7])
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \s8/i8253/vcs/C0/READ/D_and00001  (
    .I0(xiow_n),
    .I1(xior_n),
    .I2(tc_cs_n),
    .I3(\xa[1] ),
    .I4(\xa[0] ),
    .O(\s8/i8253/vcs/C0/READ/D_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s4/i8237/base_word_15_not00011  (
    .I0(\s4/i8237/mast_clr_1142 ),
    .I1(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I2(xiow_n),
    .I3(N132),
    .I4(xior_n),
    .I5(\s4/i8237/ff_1139 ),
    .O(\s4/i8237/base_word_15_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s4/i8237/base_addr_15_not00011  (
    .I0(\s4/i8237/mast_clr_1142 ),
    .I1(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I2(xiow_n),
    .I3(N132),
    .I4(xior_n),
    .I5(\s4/i8237/ff_1139 ),
    .O(\s4/i8237/base_addr_15_not0001 )
  );
  LUT5 #(
    .INIT ( 32'hEBBE4114 ))
  \s0/vgamod/buff_addr_mux0000<6>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[5] ),
    .I2(\s0/vgamod/hor_addr [6]),
    .I3(\s0/vgamod/ver_addr [2]),
    .I4(\s0/vgamod/buff0_addr [6]),
    .O(\s0/vgamod/buff_addr_mux0000 [6])
  );
  LUT5 #(
    .INIT ( 32'hEBBE4114 ))
  \s0/vgamod/attr_addr_mux0000<6>1  (
    .I0(\s0/vgamod/vga2_rw_624 ),
    .I1(\s0/vgamod/Madd_vga_addr_cy[5] ),
    .I2(\s0/vgamod/hor_addr [6]),
    .I3(\s0/vgamod/ver_addr [2]),
    .I4(\s0/vgamod/attr0_addr [6]),
    .O(\s0/vgamod/attr_addr_mux0000 [6])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCEEECCCCC444 ))
  \s0/vgamod/new_buff_addr<6>1  (
    .I0(\s0/vgamod/mem_range ),
    .I1(\s0/vgamod/buff_addr [6]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(a[0]),
    .I5(a[7]),
    .O(\s0/vgamod/new_buff_addr [6])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCEEECCCCC444 ))
  \s0/vgamod/new_buff_addr<5>1  (
    .I0(\s0/vgamod/mem_range ),
    .I1(\s0/vgamod/buff_addr [5]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(a[0]),
    .I5(a[6]),
    .O(\s0/vgamod/new_buff_addr [5])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCEEECCCCC444 ))
  \s0/vgamod/new_buff_addr<4>1  (
    .I0(\s0/vgamod/mem_range ),
    .I1(\s0/vgamod/buff_addr [4]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(a[0]),
    .I5(a[5]),
    .O(\s0/vgamod/new_buff_addr [4])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCEEECCCCC444 ))
  \s0/vgamod/new_buff_addr<3>1  (
    .I0(\s0/vgamod/mem_range ),
    .I1(\s0/vgamod/buff_addr [3]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(a[0]),
    .I5(a[4]),
    .O(\s0/vgamod/new_buff_addr [3])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCEEECCCCC444 ))
  \s0/vgamod/new_buff_addr<2>1  (
    .I0(\s0/vgamod/mem_range ),
    .I1(\s0/vgamod/buff_addr [2]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(a[0]),
    .I5(a[3]),
    .O(\s0/vgamod/new_buff_addr [2])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCEEECCCCC444 ))
  \s0/vgamod/new_buff_addr<1>1  (
    .I0(\s0/vgamod/mem_range ),
    .I1(\s0/vgamod/buff_addr [1]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(a[0]),
    .I5(a[2]),
    .O(\s0/vgamod/new_buff_addr [1])
  );
  LUT6 #(
    .INIT ( 64'hCCCCCEEECCCCC444 ))
  \s0/vgamod/new_buff_addr<0>1  (
    .I0(\s0/vgamod/mem_range ),
    .I1(\s0/vgamod/buff_addr [0]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(a[0]),
    .I5(a[1]),
    .O(\s0/vgamod/new_buff_addr [0])
  );
  LUT6 #(
    .INIT ( 64'hCEEECCCCC444CCCC ))
  \s0/vgamod/new_attr_addr<6>1  (
    .I0(a[0]),
    .I1(\s0/vgamod/attr_addr [6]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(\s0/vgamod/mem_range ),
    .I5(a[7]),
    .O(\s0/vgamod/new_attr_addr [6])
  );
  LUT6 #(
    .INIT ( 64'hCEEECCCCC444CCCC ))
  \s0/vgamod/new_attr_addr<5>1  (
    .I0(a[0]),
    .I1(\s0/vgamod/attr_addr [5]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(\s0/vgamod/mem_range ),
    .I5(a[6]),
    .O(\s0/vgamod/new_attr_addr [5])
  );
  LUT6 #(
    .INIT ( 64'hCEEECCCCC444CCCC ))
  \s0/vgamod/new_attr_addr<4>1  (
    .I0(a[0]),
    .I1(\s0/vgamod/attr_addr [4]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(\s0/vgamod/mem_range ),
    .I5(a[5]),
    .O(\s0/vgamod/new_attr_addr [4])
  );
  LUT6 #(
    .INIT ( 64'hCEEECCCCC444CCCC ))
  \s0/vgamod/new_attr_addr<3>1  (
    .I0(a[0]),
    .I1(\s0/vgamod/attr_addr [3]),
    .I2(memr_n),
    .I3(memw_n),
    .I4(\s0/vgamod/mem_range ),
    .I5(a[4]),
    .O(\s0/vgamod/new_attr_addr [3])
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s4/i8237/base_word_7_not00011  (
    .I0(N132),
    .I1(xiow_n),
    .I2(xior_n),
    .I3(\s4/i8237/Mtridata_db_cmp_eq0001 ),
    .I4(\s4/i8237/ff_1139 ),
    .I5(\s4/i8237/mast_clr_1142 ),
    .O(\s4/i8237/base_word_7_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s4/i8237/base_addr_7_not00011  (
    .I0(N132),
    .I1(xiow_n),
    .I2(xior_n),
    .I3(\s4/i8237/Mtridata_db_cmp_eq0000 ),
    .I4(\s4/i8237/ff_1139 ),
    .I5(\s4/i8237/mast_clr_1142 ),
    .O(\s4/i8237/base_addr_7_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h048C44CC048CEEEE ))
  \s9/keyboard/state_FSM_FFd1-In1  (
    .I0(\s9/keyboard/state_FSM_FFd3_1853 ),
    .I1(\s9/keyboard/state_FSM_FFd1_1849 ),
    .I2(\s9/keyboard/state_cmp_eq0000_1855 ),
    .I3(\s9/i8255/pb[7] ),
    .I4(\s9/keyboard/keyinmod/newdata_1829 ),
    .I5(\s9/keyboard/state_FSM_FFd2_1851 ),
    .O(\s9/keyboard/state_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'hFF26 ))
  \s8/i8253/vcs/C1/OUTCTRL/TRIG_or00001  (
    .I0(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C1/MODEREG/MODE [2]),
    .I2(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .I3(\s8/i8253/vcs/C1/MODETRIG ),
    .O(\s8/i8253/vcs/C1/OUTCTRL/TRIG_or0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF26 ))
  \s8/i8253/vcs/C0/OUTCTRL/TRIG_or00001  (
    .I0(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C0/MODEREG/MODE [2]),
    .I2(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .I3(\s8/i8253/vcs/C0/MODETRIG ),
    .O(\s8/i8253/vcs/C0/OUTCTRL/TRIG_or0000 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFB ))
  \s1/i8259/eoir_not00011  (
    .I0(\xa[6] ),
    .I1(\xa[5] ),
    .I2(\xa[7] ),
    .I3(a[9]),
    .I4(a[8]),
    .I5(N171),
    .O(\s1/i8259/eoir_not0001 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0010 ))
  \s9/i8255/pdo_not00011  (
    .I0(ppi_cs_n),
    .I1(\xa[0] ),
    .I2(xiow_n),
    .I3(xior_n),
    .I4(reset),
    .O(\s9/i8255/pdo_not0001 )
  );
  LUT5 #(
    .INIT ( 32'h00000008 ))
  \s9/i8255/pb_cmp_eq00001  (
    .I0(xior_n),
    .I1(\xa[0] ),
    .I2(ppi_cs_n),
    .I3(xiow_n),
    .I4(\xa[1] ),
    .O(\s9/i8255/pb_cmp_eq0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \s0/vgamod/wr_adr1  (
    .I0(a[2]),
    .I1(a[0]),
    .I2(a[1]),
    .I3(a[3]),
    .I4(\s0/vgamod/dataout_and0000 ),
    .I5(iow_n),
    .O(\s0/vgamod/wr_adr )
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \s9/i8255/pdo_mux0000<0>21  (
    .I0(xiow_n),
    .I1(reset),
    .I2(ppi_cs_n),
    .I3(\xa[0] ),
    .I4(xior_n),
    .O(N150)
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s8/i8253/vcs/C2/MODEREG/MODE_and00001  (
    .I0(tc_cs_n),
    .I1(\xa[0] ),
    .I2(xd[6]),
    .I3(xior_n),
    .I4(xd[7]),
    .I5(\xa[1] ),
    .O(\s8/i8253/vcs/C2/MODEREG/MODE_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h0400000000000000 ))
  \s8/i8253/vcs/C1/MODEREG/MODE_and00001  (
    .I0(tc_cs_n),
    .I1(\xa[0] ),
    .I2(xd[7]),
    .I3(xd[6]),
    .I4(xior_n),
    .I5(\xa[1] ),
    .O(\s8/i8253/vcs/C1/MODEREG/MODE_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s8/i8253/vcs/C0/MODEREG/MODE_and00001  (
    .I0(xior_n),
    .I1(xd[6]),
    .I2(\xa[1] ),
    .I3(\xa[0] ),
    .I4(tc_cs_n),
    .I5(xd[7]),
    .O(\s8/i8253/vcs/C0/MODEREG/MODE_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h08FF ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_not00011  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I1(\s8/i8253/vcs/C2/CNTREG/OUTEN_1584 ),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I3(\s8/i8253/vcs/C2/CLROUT_ ),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_not0001 )
  );
  LUT6 #(
    .INIT ( 64'h00002000FFFFFFFF ))
  \s8/i8253/vcs/C1/OUTCTRL/RELOAD_or00001  (
    .I0(\s4/i8237/Mtridata_db_and0000 ),
    .I1(xd[7]),
    .I2(N129),
    .I3(xd[6]),
    .I4(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I5(\s8/i8253/vcs/C1/CNTREG/OUTEN_1459 ),
    .O(\s8/i8253/vcs/C1/OUTCTRL/RELOAD_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h00000008FFFFFFFF ))
  \s8/i8253/vcs/C0/OUTCTRL/RELOAD_or00001  (
    .I0(\s4/i8237/Mtridata_db_and0000 ),
    .I1(N129),
    .I2(xd[7]),
    .I3(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I4(xd[6]),
    .I5(\s8/i8253/vcs/C0/CNTREG/OUTEN_1332 ),
    .O(\s8/i8253/vcs/C0/OUTCTRL/RELOAD_or0000 )
  );
  LUT6 #(
    .INIT ( 64'h4000400040000000 ))
  \s8/i8253/vcs/C2/OUTCTRL/RELOAD_or000011  (
    .I0(xd[6]),
    .I1(xd[7]),
    .I2(N129),
    .I3(\s4/i8237/Mtridata_db_and0000 ),
    .I4(xd[5]),
    .I5(xd[4]),
    .O(\s8/i8253/vcs/C2/MODEWRITE )
  );
  LUT6 #(
    .INIT ( 64'h0D080D08FFFF0D08 ))
  \xd<0>LogicTrst14  (
    .I0(\xa[0] ),
    .I1(\s8/i8253/vcs/C1/READ/DREG [0]),
    .I2(N355),
    .I3(\s8/i8253/vcs/C0/READ/DREG [0]),
    .I4(\s4/i8237/Mtridata_db [0]),
    .I5(\s4/i8237/Mtrien_db_919 ),
    .O(\xd<0>LogicTrst14_1904 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \xd<0>LogicTrst22_SW1  (
    .I0(\xa[1] ),
    .I1(\s8/i8253/vcs/C2/READ/DREG [0]),
    .I2(tc_cs_n),
    .O(N357)
  );
  LUT6 #(
    .INIT ( 64'h1010101000100000 ))
  \xd<0>LogicTrst22  (
    .I0(\xa[0] ),
    .I1(xior_n),
    .I2(xiow_n),
    .I3(ppi_cs_n),
    .I4(\s9/i8255/pdo [0]),
    .I5(N357),
    .O(\xd<0>LogicTrst22_1905 )
  );
  LUT6 #(
    .INIT ( 64'h0A0B0A040A0A0A0A ))
  \s8/i8253/vcs/C2/OUTCTRL/OUT_mux000039  (
    .I0(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .I1(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I2(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .I3(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [2]),
    .I4(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [1]),
    .I5(N55),
    .O(\s8/i8253/vcs/C2/OUTCTRL/OUT_mux000039_1657 )
  );
  LUT6 #(
    .INIT ( 64'h7F1F0701FFFFFFFF ))
  \s0/vgamod/cursor_on_v_and0000290_SW0  (
    .I0(\s0/vgamod/cursor_on_v_and000033_468 ),
    .I1(\s0/vgamod/v_count [2]),
    .I2(\s0/vgamod/v_count [3]),
    .I3(\s0/vgamod/reg_cur_start [2]),
    .I4(\s0/vgamod/reg_cur_start [3]),
    .I5(\s0/vgamod/cursor_on_v_and0000179_466 ),
    .O(N361)
  );
  LUT6 #(
    .INIT ( 64'h0000000080200802 ))
  \s0/vgamod/cursor_on_v_and0000290  (
    .I0(\s0/vgamod/cursor_on_v_and0000260_467 ),
    .I1(\s0/vgamod/reg_vcursor [0]),
    .I2(\s0/vgamod/reg_vcursor [1]),
    .I3(\s0/vgamod/v_count [4]),
    .I4(\s0/vgamod/v_count [5]),
    .I5(N361),
    .O(\s0/vgamod/cursor_on_v_and0000 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \s4/i8237/Mtridata_db_mux0000<0>111  (
    .I0(xiow_n),
    .I1(xior_n),
    .I2(\s2/holda_770 ),
    .I3(dma_cs_n),
    .I4(\s4/i8237/state_cmp_eq0002 ),
    .I5(\s4/i8237/state_and0000 ),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'hF7E7E7F7FFEFEFFF ))
  \s4/i8237/Mtrien_db_mux000011  (
    .I0(\s4/i8237/state [1]),
    .I1(\s4/i8237/state [0]),
    .I2(\s4/i8237/state [2]),
    .I3(\s8/drq0_1309 ),
    .I4(\s4/i8237/command [6]),
    .I5(\s4/i8237/adstb_needed_976 ),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h0818180800101000 ))
  \s4/i8237/adstb_mux00001  (
    .I0(\s4/i8237/state [0]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [2]),
    .I3(\s8/drq0_1309 ),
    .I4(\s4/i8237/command [6]),
    .I5(\s4/i8237/adstb_needed_976 ),
    .O(\s4/i8237/adstb_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a7_4_mux0000<3>1  (
    .I0(\s4/i8237/curr_addr [4]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a7_4_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a7_4_mux0000<2>1  (
    .I0(\s4/i8237/curr_addr [5]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a7_4_mux0000 [2])
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a7_4_mux0000<1>1  (
    .I0(\s4/i8237/curr_addr [6]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a7_4_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a7_4_mux0000<0>1  (
    .I0(\s4/i8237/curr_addr [7]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a7_4_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a3_0_mux0000<3>1  (
    .I0(\s4/i8237/curr_addr [0]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a3_0_mux0000 [3])
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a3_0_mux0000<2>1  (
    .I0(\s4/i8237/curr_addr [1]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a3_0_mux0000 [2])
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a3_0_mux0000<1>1  (
    .I0(\s4/i8237/curr_addr [2]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a3_0_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'h28802A802A802880 ))
  \s4/i8237/Mtridata_a3_0_mux0000<0>1  (
    .I0(\s4/i8237/curr_addr [3]),
    .I1(\s4/i8237/state [1]),
    .I2(\s4/i8237/state [0]),
    .I3(\s4/i8237/state [2]),
    .I4(\s8/drq0_1309 ),
    .I5(\s4/i8237/command [6]),
    .O(\s4/i8237/Mtridata_a3_0_mux0000 [0])
  );
  LUT6 #(
    .INIT ( 64'h696C6C6993939393 ))
  \s4/i8237/dack_0_mux00002  (
    .I0(\s4/i8237/state [0]),
    .I1(\s4/i8237/command [7]),
    .I2(\s4/i8237/state [1]),
    .I3(\s8/drq0_1309 ),
    .I4(\s4/i8237/command [6]),
    .I5(\s4/i8237/state [2]),
    .O(\s4/i8237/dack_0_mux0000 )
  );
  LUT6 #(
    .INIT ( 64'hFF7FDD5DAA2A8808 ))
  \s0/vgamod/new_buff_addr<9>1  (
    .I0(\s0/vgamod/new_buff ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls3730/rq [2]),
    .I4(\s1/u9/rq [2]),
    .I5(\s0/vgamod/buff_addr [9]),
    .O(\s0/vgamod/new_buff_addr [9])
  );
  LUT6 #(
    .INIT ( 64'hFF7FDD5DAA2A8808 ))
  \s0/vgamod/new_buff_addr<10>1  (
    .I0(\s0/vgamod/new_buff ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls3730/rq [3]),
    .I4(\s1/u9/rq [3]),
    .I5(\s0/vgamod/buff_addr [10]),
    .O(\s0/vgamod/new_buff_addr [10])
  );
  LUT6 #(
    .INIT ( 64'hFF7FDD5DAA2A8808 ))
  \s0/vgamod/new_attr_addr<9>1  (
    .I0(\s0/vgamod/new_attr ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s2/b5_768 ),
    .I3(\s4/ls3730/rq [2]),
    .I4(\s1/u9/rq [2]),
    .I5(\s0/vgamod/attr_addr [9]),
    .O(\s0/vgamod/new_attr_addr [9])
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \a<11>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s2/b5_768 ),
    .I2(\s4/ls3730/rq [3]),
    .I3(\s1/u9/rq [3]),
    .O(a[11])
  );
  LUT4 #(
    .INIT ( 16'hF7A2 ))
  \a<10>LogicTrst1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s2/b5_768 ),
    .I2(\s4/ls3730/rq [2]),
    .I3(\s1/u9/rq [2]),
    .O(a[10])
  );
  LUT5 #(
    .INIT ( 32'hBBBBBBFB ))
  \s1/u8/ba_inv1  (
    .I0(\s1/dtr ),
    .I1(\s1/den ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/i8237/Mtridata_ior_910 ),
    .I4(\s4/i8237/Mtrien_ior_922 ),
    .O(\s1/u8/ba_inv )
  );
  LUT5 #(
    .INIT ( 32'h777777F7 ))
  \s1/u8/ab_inv1  (
    .I0(\s1/dtr ),
    .I1(\s1/den ),
    .I2(\s2/aen_brd_763 ),
    .I3(\s4/i8237/Mtridata_ior_910 ),
    .I4(\s4/i8237/Mtrien_ior_922 ),
    .O(\s1/u8/ab_inv )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  xior_nLogicTrst1 (
    .I0(\s4/i8237/Mtrien_ior_922 ),
    .I1(\s2/aen_brd_763 ),
    .I2(\s4/i8237/Mtridata_ior_910 ),
    .O(xior_n)
  );
  LUT5 #(
    .INIT ( 32'h0A0A0A82 ))
  \s4/i8237/ff_not00011  (
    .I0(N132),
    .I1(\s2/aen_brd_763 ),
    .I2(xiow_n),
    .I3(\s4/i8237/Mtridata_ior_910 ),
    .I4(\s4/i8237/Mtrien_ior_922 ),
    .O(\s4/i8237/ff_not0001 )
  );
  LUT6 #(
    .INIT ( 64'hE4E4F5E4E4E4E4E4 ))
  \s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut<0>  (
    .I0(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .I1(\s8/i8253/vcs/C2/DOWNCNTR/COUNT [0]),
    .I2(\s8/i8253/vcs/C2/CNTREG/COUNTLSB [0]),
    .I3(\s8/i8253/vcs/C2/MODEREG/MODE [1]),
    .I4(\s8/i8253/vcs/C2/MODEREG/MODE [3]),
    .I5(\s8/i8253/vcs/C2/MODEREG/MODE [2]),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/Maccum_COUNT_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hE4E4F5E4E4E4E4E4 ))
  \s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut<0>  (
    .I0(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .I1(\s8/i8253/vcs/C0/DOWNCNTR/COUNT [0]),
    .I2(\s8/i8253/vcs/C0/CNTREG/COUNTLSB [0]),
    .I3(\s8/i8253/vcs/C0/MODEREG/MODE [2]),
    .I4(\s8/i8253/vcs/C0/MODEREG/MODE [3]),
    .I5(\s8/i8253/vcs/C0/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/Maccum_COUNT_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hE4E4F5E4E4E4E4E4 ))
  \s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut<0>  (
    .I0(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .I1(\s8/i8253/vcs/C1/DOWNCNTR/COUNT [0]),
    .I2(\s8/i8253/vcs/C1/CNTREG/COUNTLSB [0]),
    .I3(\s8/i8253/vcs/C1/MODEREG/MODE [2]),
    .I4(\s8/i8253/vcs/C1/MODEREG/MODE [3]),
    .I5(\s8/i8253/vcs/C1/MODEREG/MODE [1]),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/Maccum_COUNT_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h4000400040000000 ))
  \s8/i8253/vcs/C1/MODEREG/MODETRIG11  (
    .I0(xd[7]),
    .I1(\s4/i8237/Mtridata_db_and0000 ),
    .I2(N129),
    .I3(xd[6]),
    .I4(xd[5]),
    .I5(xd[4]),
    .O(\s8/i8253/vcs/C1/MODEWRITE )
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \s8/i8253/vcs/C0/MODEREG/MODETRIG11  (
    .I0(xior_n),
    .I1(xiow_n),
    .I2(\s8/i8253/vcs/C0/MODEREG/SETOUT__and0001 ),
    .I3(xd[6]),
    .I4(N129),
    .I5(xd[7]),
    .O(\s8/i8253/vcs/C0/MODEWRITE )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFBFFFF ))
  \s9/i8255/pds_inv1  (
    .I0(ppi_cs_n),
    .I1(xiow_n),
    .I2(\s4/i8237/Mtrien_ior_922 ),
    .I3(\s4/i8237/Mtridata_ior_910 ),
    .I4(\s2/aen_brd_763 ),
    .I5(\xa[0] ),
    .O(\s9/i8255/pds_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFBFFFF ))
  \xd<0>LogicTrst14_SW1  (
    .I0(\s4/i8237/Mtridata_ior_910 ),
    .I1(xiow_n),
    .I2(\s4/i8237/Mtrien_ior_922 ),
    .I3(\xa[1] ),
    .I4(\s2/aen_brd_763 ),
    .I5(tc_cs_n),
    .O(N355)
  );
  LUT6 #(
    .INIT ( 64'h5D555D555D55DDDD ))
  \s2/b11  (
    .I0(xiow_n),
    .I1(\s2/aen_brd_763 ),
    .I2(xmemr_n),
    .I3(\s4/i8237/dack [0]),
    .I4(\s4/i8237/Mtrien_ior_922 ),
    .I5(\s4/i8237/Mtridata_ior_910 ),
    .O(\s2/b1 )
  );
  LUT6 #(
    .INIT ( 64'hEEEEEFEEFFFFFFFF ))
  \s8/i8253/vcs/C2/CNTREG/LOAD_or000011  (
    .I0(\xa[0] ),
    .I1(tc_cs_n),
    .I2(\s4/i8237/Mtridata_ior_910 ),
    .I3(\s2/aen_brd_763 ),
    .I4(\s4/i8237/Mtrien_ior_922 ),
    .I5(\xa[1] ),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'hEEEEEFEEFFFFFFFF ))
  \s8/i8253/vcs/C1/CNTREG/LOAD_or000011  (
    .I0(\xa[1] ),
    .I1(tc_cs_n),
    .I2(\s4/i8237/Mtridata_ior_910 ),
    .I3(\s2/aen_brd_763 ),
    .I4(\s4/i8237/Mtrien_ior_922 ),
    .I5(\xa[0] ),
    .O(N76)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEFEFEFFFEFE ))
  \s8/i8253/vcs/C0/CNTREG/LOAD_or000011  (
    .I0(\xa[1] ),
    .I1(\xa[0] ),
    .I2(tc_cs_n),
    .I3(\s4/i8237/Mtrien_ior_922 ),
    .I4(\s2/aen_brd_763 ),
    .I5(\s4/i8237/Mtridata_ior_910 ),
    .O(N77)
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \s4/i8237/Mtrien_db_mux0000211  (
    .I0(xiow_n),
    .I1(\s4/i8237/Mtridata_ior_910 ),
    .I2(\s4/i8237/Mtrien_ior_922 ),
    .I3(\s2/aen_brd_763 ),
    .O(N811)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAEAAAAAAA ))
  \s5/ls2450/ba_inv1  (
    .I0(\s2/aen_brd_763 ),
    .I1(a[17]),
    .I2(a[18]),
    .I3(a[19]),
    .I4(a[16]),
    .I5(xmemr_n),
    .O(\s5/ls2450/ba_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDFFFFFFFFFFF ))
  \s5/ls2450/ab_inv1  (
    .I0(a[17]),
    .I1(xmemr_n),
    .I2(a[18]),
    .I3(a[19]),
    .I4(\s2/aen_brd_763 ),
    .I5(a[16]),
    .O(\s5/ls2450/ab_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFBFFFF ))
  \s3/ls0/y<3>1  (
    .I0(\s1/u9/rq [0]),
    .I1(\s1/u7/rq [5]),
    .I2(\s2/aen_brd_763 ),
    .I3(\s1/u9/rq [1]),
    .I4(\s1/u7/rq [6]),
    .I5(\s1/u7/rq [7]),
    .O(ppi_cs_n)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFB ))
  \s3/ls0/y<2>1  (
    .I0(\s2/aen_brd_763 ),
    .I1(\s1/u7/rq [6]),
    .I2(\s1/u7/rq [7]),
    .I3(\s1/u9/rq [1]),
    .I4(\s1/u9/rq [0]),
    .I5(\s1/u7/rq [5]),
    .O(tc_cs_n)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \s3/ls0/y<0>1  (
    .I0(\s1/u7/rq [6]),
    .I1(\s2/aen_brd_763 ),
    .I2(\s1/u7/rq [7]),
    .I3(\s1/u9/rq [1]),
    .I4(\s1/u9/rq [0]),
    .I5(\s1/u7/rq [5]),
    .O(dma_cs_n)
  );
  FDR   \s2/aen_brd_1  (
    .C(clk),
    .D(\s2/holda_770 ),
    .R(reset),
    .Q(\s2/aen_brd_1_764 )
  );
  BUFG   clk_BUFG (
    .I(clk1),
    .O(clk)
  );
  BUFG   vga_clk_BUFG (
    .I(vga_clk1),
    .O(vga_clk)
  );
  BUFG   dclk_BUFG (
    .I(dclk1),
    .O(dclk)
  );
  BUFG   \s8/pclka_BUFG  (
    .I(\s8/pclka1 ),
    .O(\s8/pclka_1781 )
  );
  BUFG   \s1/ale_BUFG  (
    .I(\s1/ale1 ),
    .O(\s1/ale )
  );
  BUFGP   KEYBOARD_CLK_BUFGP (
    .I(KEYBOARD_CLK),
    .O(KEYBOARD_CLK_BUFGP_9)
  );
  BUFGP   USER_CLK_BUFGP (
    .I(USER_CLK),
    .O(USER_CLK_BUFGP_129)
  );
  INV   \s4/i8237/Madd__add0000_lut<0>_INV_0  (
    .I(\s4/i8237/curr_addr [0]),
    .O(\s4/i8237/Madd__add0000_lut [0])
  );
  INV   \s4/i8237/Msub__sub0000_lut<15>_INV_0  (
    .I(\s4/i8237/curr_word [15]),
    .O(\s4/i8237/Msub__sub0000_lut [15])
  );
  INV   \s4/i8237/Msub__sub0000_lut<14>_INV_0  (
    .I(\s4/i8237/curr_word [14]),
    .O(\s4/i8237/Msub__sub0000_lut [14])
  );
  INV   \s4/i8237/Msub__sub0000_lut<13>_INV_0  (
    .I(\s4/i8237/curr_word [13]),
    .O(\s4/i8237/Msub__sub0000_lut [13])
  );
  INV   \s4/i8237/Msub__sub0000_lut<12>_INV_0  (
    .I(\s4/i8237/curr_word [12]),
    .O(\s4/i8237/Msub__sub0000_lut [12])
  );
  INV   \s4/i8237/Msub__sub0000_lut<11>_INV_0  (
    .I(\s4/i8237/curr_word [11]),
    .O(\s4/i8237/Msub__sub0000_lut [11])
  );
  INV   \s4/i8237/Msub__sub0000_lut<10>_INV_0  (
    .I(\s4/i8237/curr_word [10]),
    .O(\s4/i8237/Msub__sub0000_lut [10])
  );
  INV   \s4/i8237/Msub__sub0000_lut<9>_INV_0  (
    .I(\s4/i8237/curr_word [9]),
    .O(\s4/i8237/Msub__sub0000_lut [9])
  );
  INV   \s4/i8237/Msub__sub0000_lut<8>_INV_0  (
    .I(\s4/i8237/curr_word [8]),
    .O(\s4/i8237/Msub__sub0000_lut [8])
  );
  INV   \s4/i8237/Msub__sub0000_lut<7>_INV_0  (
    .I(\s4/i8237/curr_word [7]),
    .O(\s4/i8237/Msub__sub0000_lut [7])
  );
  INV   \s4/i8237/Msub__sub0000_lut<6>_INV_0  (
    .I(\s4/i8237/curr_word [6]),
    .O(\s4/i8237/Msub__sub0000_lut [6])
  );
  INV   \s4/i8237/Msub__sub0000_lut<5>_INV_0  (
    .I(\s4/i8237/curr_word [5]),
    .O(\s4/i8237/Msub__sub0000_lut [5])
  );
  INV   \s4/i8237/Msub__sub0000_lut<4>_INV_0  (
    .I(\s4/i8237/curr_word [4]),
    .O(\s4/i8237/Msub__sub0000_lut [4])
  );
  INV   \s4/i8237/Msub__sub0000_lut<3>_INV_0  (
    .I(\s4/i8237/curr_word [3]),
    .O(\s4/i8237/Msub__sub0000_lut [3])
  );
  INV   \s4/i8237/Msub__sub0000_lut<2>_INV_0  (
    .I(\s4/i8237/curr_word [2]),
    .O(\s4/i8237/Msub__sub0000_lut [2])
  );
  INV   \s4/i8237/Msub__sub0000_lut<1>_INV_0  (
    .I(\s4/i8237/curr_word [1]),
    .O(\s4/i8237/Msub__sub0000_lut [1])
  );
  INV   \s4/i8237/Msub__sub0001_lut<15>_INV_0  (
    .I(\s4/i8237/curr_addr [15]),
    .O(\s4/i8237/Msub__sub0001_lut [15])
  );
  INV   \s4/i8237/Msub__sub0001_lut<14>_INV_0  (
    .I(\s4/i8237/curr_addr [14]),
    .O(\s4/i8237/Msub__sub0001_lut [14])
  );
  INV   \s4/i8237/Msub__sub0001_lut<13>_INV_0  (
    .I(\s4/i8237/curr_addr [13]),
    .O(\s4/i8237/Msub__sub0001_lut [13])
  );
  INV   \s4/i8237/Msub__sub0001_lut<12>_INV_0  (
    .I(\s4/i8237/curr_addr [12]),
    .O(\s4/i8237/Msub__sub0001_lut [12])
  );
  INV   \s4/i8237/Msub__sub0001_lut<11>_INV_0  (
    .I(\s4/i8237/curr_addr [11]),
    .O(\s4/i8237/Msub__sub0001_lut [11])
  );
  INV   \s4/i8237/Msub__sub0001_lut<10>_INV_0  (
    .I(\s4/i8237/curr_addr [10]),
    .O(\s4/i8237/Msub__sub0001_lut [10])
  );
  INV   \s4/i8237/Msub__sub0001_lut<9>_INV_0  (
    .I(\s4/i8237/curr_addr [9]),
    .O(\s4/i8237/Msub__sub0001_lut [9])
  );
  INV   \s4/i8237/Msub__sub0001_lut<8>_INV_0  (
    .I(\s4/i8237/curr_addr [8]),
    .O(\s4/i8237/Msub__sub0001_lut [8])
  );
  INV   \s4/i8237/Msub__sub0001_lut<7>_INV_0  (
    .I(\s4/i8237/curr_addr [7]),
    .O(\s4/i8237/Msub__sub0001_lut [7])
  );
  INV   \s4/i8237/Msub__sub0001_lut<6>_INV_0  (
    .I(\s4/i8237/curr_addr [6]),
    .O(\s4/i8237/Msub__sub0001_lut [6])
  );
  INV   \s4/i8237/Msub__sub0001_lut<5>_INV_0  (
    .I(\s4/i8237/curr_addr [5]),
    .O(\s4/i8237/Msub__sub0001_lut [5])
  );
  INV   \s4/i8237/Msub__sub0001_lut<4>_INV_0  (
    .I(\s4/i8237/curr_addr [4]),
    .O(\s4/i8237/Msub__sub0001_lut [4])
  );
  INV   \s4/i8237/Msub__sub0001_lut<3>_INV_0  (
    .I(\s4/i8237/curr_addr [3]),
    .O(\s4/i8237/Msub__sub0001_lut [3])
  );
  INV   \s4/i8237/Msub__sub0001_lut<2>_INV_0  (
    .I(\s4/i8237/curr_addr [2]),
    .O(\s4/i8237/Msub__sub0001_lut [2])
  );
  INV   \s4/i8237/Msub__sub0001_lut<1>_INV_0  (
    .I(\s4/i8237/curr_addr [1]),
    .O(\s4/i8237/Msub__sub0001_lut [1])
  );
  INV   \s0/vgamod/Mcount_v_count_lut<0>_INV_0  (
    .I(\s0/vgamod/v_count [0]),
    .O(\s0/vgamod/Mcount_v_count_lut [0])
  );
  INV   \s0/vgamod/Mcount_h_count_lut<0>_INV_0  (
    .I(\s0/vgamod/h_count [0]),
    .O(\s0/vgamod/Mcount_h_count_lut [0])
  );
  INV   \s0/vgamod/Mcount_blink_count_lut<0>_INV_0  (
    .I(\s0/vgamod/blink_count [0]),
    .O(\s0/vgamod/Mcount_blink_count_lut [0])
  );
  INV   \s2/clk_n1_INV_0  (
    .I(clk),
    .O(\s2/clk_n )
  );
  INV   \s2/b21_INV_0  (
    .I(\s2/rdy_wait_771 ),
    .O(\s2/b2 )
  );
  INV   \s1/i8259/eoir_0_0_not00001_INV_0  (
    .I(\xa[0] ),
    .O(\s1/i8259/eoir_0_0_not0000 )
  );
  INV   dack_01_INV_0 (
    .I(\s4/i8237/dack [0]),
    .O(dack_0)
  );
  INV   \s8/pclka_not00011_INV_0  (
    .I(\s8/pclka1 ),
    .O(\s8/pclka_not0001 )
  );
  INV   \s4/i8237/dack_1_mux00001_INV_0  (
    .I(\s4/i8237/command [7]),
    .O(\s4/i8237/dack_1_mux0000 )
  );
  INV   \s2/aen_n1_INV_0  (
    .I(\s2/aen_brd_763 ),
    .O(aen_n)
  );
  INV   \s0/vgamod/rst_inv1_INV_0  (
    .I(reset),
    .O(\s0/vgamod/rst_inv )
  );
  INV   \s4/i8237/mast_clr_inv1_INV_0  (
    .I(\s4/i8237/mast_clr_1142 ),
    .O(\s4/i8237/mast_clr_inv )
  );
  INV   \s8/i8253/vcs/C2/DOWNCNTR/COUNT_eqn_inv2_INV_0  (
    .I(\s8/i8253/vcs/C2/DOWNCNTR/LOAD_1607 ),
    .O(\s8/i8253/vcs/C2/DOWNCNTR/COUNT_eqn_inv )
  );
  INV   \s8/i8253/vcs/C1/DOWNCNTR/COUNT_eqn_inv2_INV_0  (
    .I(\s8/i8253/vcs/C1/DOWNCNTR/LOAD_1481 ),
    .O(\s8/i8253/vcs/C1/DOWNCNTR/COUNT_eqn_inv )
  );
  INV   \s8/i8253/vcs/C0/DOWNCNTR/COUNT_eqn_inv2_INV_0  (
    .I(\s8/i8253/vcs/C0/DOWNCNTR/LOAD_1354 ),
    .O(\s8/i8253/vcs/C0/DOWNCNTR/COUNT_eqn_inv )
  );
  INV   \s6/rb3/central_ram_core/we1_INV_0  (
    .I(xmemw_n),
    .O(\s6/rb0/central_ram_core/we )
  );
  INV   clk_LUT1_INV_0 (
    .I(clk1),
    .O(clk_LUT1)
  );
  MUXF7   \s4/i8237/state_mux0000<2>  (
    .I0(N363),
    .I1(N364),
    .S(\s4/i8237/state [2]),
    .O(\s4/i8237/state_mux0000 [2])
  );
  LUT6 #(
    .INIT ( 64'hABBA1110BBBB1110 ))
  \s4/i8237/state_mux0000<2>_F  (
    .I0(\s4/i8237/state [1]),
    .I1(\s2/holda_770 ),
    .I2(\s8/drq0_1309 ),
    .I3(\s4/i8237/command [6]),
    .I4(\s4/i8237/state [0]),
    .I5(dma_cs_n),
    .O(N363)
  );
  LUT6 #(
    .INIT ( 64'h0000575500000200 ))
  \s4/i8237/state_mux0000<2>_G  (
    .I0(\s4/i8237/state [1]),
    .I1(\s4/i8237/mode [4]),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [5]),
    .I4(\s4/i8237/state [0]),
    .I5(\s4/i8237/drequest [0]),
    .O(N364)
  );
  MUXF7   \s9/keyboard/pa_mux0000<0>1  (
    .I0(N365),
    .I1(N366),
    .S(\s9/keyboard/state_FSM_FFd3_1853 ),
    .O(\s9/keyboard/pa_mux0000<0>1_1839 )
  );
  LUT6 #(
    .INIT ( 64'hA020AA22A020A820 ))
  \s9/keyboard/pa_mux0000<0>1_F  (
    .I0(\s9/keyboard/keyinmod/newdata_1829 ),
    .I1(\s9/keyboard/state_cmp_eq0000_1855 ),
    .I2(\s9/keyboard/state_FSM_FFd1_1849 ),
    .I3(\s9/keyboard/pa [7]),
    .I4(\s9/keyboard/state_FSM_FFd2_1851 ),
    .I5(\s9/keyboard/tdata [7]),
    .O(N365)
  );
  LUT3 #(
    .INIT ( 8'h4C ))
  \s9/keyboard/pa_mux0000<0>1_G  (
    .I0(\s9/keyboard/state_FSM_FFd2_1851 ),
    .I1(\s9/keyboard/pa [7]),
    .I2(\s9/i8255/pb[7] ),
    .O(N366)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \s9/keyboard_Mrom_tdata18_f8  (
    .I0(\s9/keyboard/keyinmod/dataout [6]),
    .I1(\s9/keyboard_Mrom_tdata18_f7_1877 ),
    .I2(\s9/keyboard/keyinmod/dataout [7]),
    .O(\s9/keyboard/tdata [7])
  );
  MUXF7   \s9/keyboard_Mrom_tdata18_f7  (
    .I0(\s9/keyboard_Mrom_tdata181_1876 ),
    .I1(\s9/keyboard_Mrom_tdata18_1875 ),
    .S(\s9/keyboard/keyinmod/dataout [7]),
    .O(\s9/keyboard_Mrom_tdata18_f7_1877 )
  );
  MUXF7   \s9/keyboard_Mrom_tdata11_f7  (
    .I0(\s9/keyboard_Mrom_tdata11 ),
    .I1(\s9/keyboard_Mrom_tdata11_f7_rt_1869 ),
    .S(\s9/keyboard/keyinmod/dataout [6]),
    .O(\s9/keyboard_Mrom_tdata11_f7_1867 )
  );
  MUXF7   \s9/keyboard_Mrom_tdata11_f7_0  (
    .I0(\s9/keyboard_Mrom_tdata112_1866 ),
    .I1(\s9/keyboard_Mrom_tdata111_1865 ),
    .S(\s9/keyboard/keyinmod/dataout [6]),
    .O(\s9/keyboard_Mrom_tdata11_f71 )
  );
  MUXF7   \s9/keyboard_Mrom_tdata3_f7  (
    .I0(\s9/keyboard_Mrom_tdata3_1878 ),
    .I1(\s9/keyboard_Mrom_tdata3_f7_rt_1883 ),
    .S(\s9/keyboard/keyinmod/dataout [6]),
    .O(\s9/keyboard_Mrom_tdata3_f7_1881 )
  );
  MUXF7   \s9/keyboard_Mrom_tdata3_f7_0  (
    .I0(\s9/keyboard_Mrom_tdata32_1880 ),
    .I1(\s9/keyboard_Mrom_tdata31_1879 ),
    .S(\s9/keyboard/keyinmod/dataout [6]),
    .O(\s9/keyboard_Mrom_tdata3_f71 )
  );
  MUXF8   \s9/keyboard_Mrom_tdata11_f8  (
    .I0(\s9/keyboard_Mrom_tdata11_f71 ),
    .I1(\s9/keyboard_Mrom_tdata11_f7_1867 ),
    .S(\s9/keyboard/keyinmod/dataout [7]),
    .O(\s9/keyboard/tdata [4])
  );
  MUXF8   \s9/keyboard_Mrom_tdata3_f8  (
    .I0(\s9/keyboard_Mrom_tdata3_f71 ),
    .I1(\s9/keyboard_Mrom_tdata3_f7_1881 ),
    .S(\s9/keyboard/keyinmod/dataout [7]),
    .O(\s9/keyboard/tdata [1])
  );
  MUXF7   \s9/keyboard_Mrom_tdata16_f7_0  (
    .I0(\s9/keyboard_Mrom_tdata162_1872 ),
    .I1(\s9/keyboard_Mrom_tdata161_1871 ),
    .S(\s9/keyboard/keyinmod/dataout [6]),
    .O(\s9/keyboard_Mrom_tdata16_f71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s9/keyboard_Mrom_tdata11_f7_rt  (
    .I0(\s9/keyboard/keyinmod/dataout [4]),
    .O(\s9/keyboard_Mrom_tdata11_f7_rt_1869 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \s9/keyboard_Mrom_tdata3_f7_rt  (
    .I0(\s9/keyboard/keyinmod/dataout [1]),
    .O(\s9/keyboard_Mrom_tdata3_f7_rt_1883 )
  );
  LUT5 #(
    .INIT ( 32'hABEF0145 ))
  \s9/keyboard_Mrom_tdata212  (
    .I0(\s9/keyboard/keyinmod/dataout [7]),
    .I1(\s9/keyboard/keyinmod/dataout [6]),
    .I2(\s9/keyboard_N9 ),
    .I3(\s9/keyboard_N10 ),
    .I4(\s9/keyboard/keyinmod/dataout [0]),
    .O(\s9/keyboard/tdata [0])
  );
  LUT6 #(
    .INIT ( 64'h9A81874B3D4AC8F8 ))
  \s9/keyboard_Mrom_tdata212_SW1  (
    .I0(\s9/keyboard/keyinmod/dataout [4]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [2]),
    .I3(\s9/keyboard/keyinmod/dataout [0]),
    .I4(\s9/keyboard/keyinmod/dataout [5]),
    .I5(\s9/keyboard/keyinmod/dataout [3]),
    .O(\s9/keyboard_N10 )
  );
  LUT6 #(
    .INIT ( 64'h2A7BC578053FEAC8 ))
  \s9/keyboard_Mrom_tdata212_SW0  (
    .I0(\s9/keyboard/keyinmod/dataout [4]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [2]),
    .I3(\s9/keyboard/keyinmod/dataout [0]),
    .I4(\s9/keyboard/keyinmod/dataout [3]),
    .I5(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard_N9 )
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \s9/keyboard_Mrom_tdata712  (
    .I0(\s9/keyboard/keyinmod/dataout [7]),
    .I1(\s9/keyboard/keyinmod/dataout [6]),
    .I2(\s9/keyboard_N7 ),
    .I3(\s9/keyboard_N6 ),
    .I4(\s9/keyboard/keyinmod/dataout [2]),
    .O(\s9/keyboard/tdata [2])
  );
  LUT6 #(
    .INIT ( 64'hD387F77D89AC6506 ))
  \s9/keyboard_Mrom_tdata712_SW1  (
    .I0(\s9/keyboard/keyinmod/dataout [4]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [2]),
    .I3(\s9/keyboard/keyinmod/dataout [5]),
    .I4(\s9/keyboard/keyinmod/dataout [0]),
    .I5(\s9/keyboard/keyinmod/dataout [3]),
    .O(\s9/keyboard_N7 )
  );
  LUT6 #(
    .INIT ( 64'hA2C0478585D2E5BD ))
  \s9/keyboard_Mrom_tdata712_SW0  (
    .I0(\s9/keyboard/keyinmod/dataout [1]),
    .I1(\s9/keyboard/keyinmod/dataout [2]),
    .I2(\s9/keyboard/keyinmod/dataout [5]),
    .I3(\s9/keyboard/keyinmod/dataout [3]),
    .I4(\s9/keyboard/keyinmod/dataout [0]),
    .I5(\s9/keyboard/keyinmod/dataout [4]),
    .O(\s9/keyboard_N6 )
  );
  LUT5 #(
    .INIT ( 32'hABEF0145 ))
  \s9/keyboard_Mrom_tdata1012  (
    .I0(\s9/keyboard/keyinmod/dataout [7]),
    .I1(\s9/keyboard/keyinmod/dataout [6]),
    .I2(\s9/keyboard_N3 ),
    .I3(\s9/keyboard_N4 ),
    .I4(\s9/keyboard/keyinmod/dataout [3]),
    .O(\s9/keyboard/tdata [3])
  );
  LUT6 #(
    .INIT ( 64'h8F9B9C380413B6B2 ))
  \s9/keyboard_Mrom_tdata1012_SW1  (
    .I0(\s9/keyboard/keyinmod/dataout [1]),
    .I1(\s9/keyboard/keyinmod/dataout [2]),
    .I2(\s9/keyboard/keyinmod/dataout [0]),
    .I3(\s9/keyboard/keyinmod/dataout [3]),
    .I4(\s9/keyboard/keyinmod/dataout [5]),
    .I5(\s9/keyboard/keyinmod/dataout [4]),
    .O(\s9/keyboard_N4 )
  );
  LUT6 #(
    .INIT ( 64'h1E7827873EF92986 ))
  \s9/keyboard_Mrom_tdata1012_SW0  (
    .I0(\s9/keyboard/keyinmod/dataout [4]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [2]),
    .I3(\s9/keyboard/keyinmod/dataout [0]),
    .I4(\s9/keyboard/keyinmod/dataout [5]),
    .I5(\s9/keyboard/keyinmod/dataout [3]),
    .O(\s9/keyboard_N3 )
  );
  LUT5 #(
    .INIT ( 32'hABEF0145 ))
  \s9/keyboard_Mrom_tdata1512  (
    .I0(\s9/keyboard/keyinmod/dataout [7]),
    .I1(\s9/keyboard/keyinmod/dataout [6]),
    .I2(\s9/keyboard_N01 ),
    .I3(\s9/keyboard_N11 ),
    .I4(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard/tdata [5])
  );
  LUT6 #(
    .INIT ( 64'hAFAB18349AEB4870 ))
  \s9/keyboard_Mrom_tdata1512_SW1  (
    .I0(\s9/keyboard/keyinmod/dataout [4]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [2]),
    .I3(\s9/keyboard/keyinmod/dataout [3]),
    .I4(\s9/keyboard/keyinmod/dataout [5]),
    .I5(\s9/keyboard/keyinmod/dataout [0]),
    .O(\s9/keyboard_N11 )
  );
  LUT6 #(
    .INIT ( 64'hFFEFFCF808000E06 ))
  \s9/keyboard_Mrom_tdata1512_SW0  (
    .I0(\s9/keyboard/keyinmod/dataout [1]),
    .I1(\s9/keyboard/keyinmod/dataout [0]),
    .I2(\s9/keyboard/keyinmod/dataout [5]),
    .I3(\s9/keyboard/keyinmod/dataout [3]),
    .I4(\s9/keyboard/keyinmod/dataout [4]),
    .I5(\s9/keyboard/keyinmod/dataout [2]),
    .O(\s9/keyboard_N01 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \s9/keyboard_Mrom_tdata181  (
    .I0(\s9/keyboard/keyinmod/dataout [0]),
    .I1(\s9/keyboard/keyinmod/dataout [2]),
    .I2(\s9/keyboard/keyinmod/dataout [1]),
    .I3(\s9/keyboard/keyinmod/dataout [3]),
    .I4(\s9/keyboard/keyinmod/dataout [4]),
    .I5(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard_Mrom_tdata181_1876 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFDB ))
  \s9/keyboard_Mrom_tdata18  (
    .I0(\s9/keyboard/keyinmod/dataout [0]),
    .I1(\s9/keyboard/keyinmod/dataout [2]),
    .I2(\s9/keyboard/keyinmod/dataout [1]),
    .I3(\s9/keyboard/keyinmod/dataout [3]),
    .I4(\s9/keyboard/keyinmod/dataout [4]),
    .I5(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard_Mrom_tdata18_1875 )
  );
  MUXF8   \s9/keyboard_Mrom_tdata16_f8  (
    .I0(\s9/keyboard_Mrom_tdata16_f71 ),
    .I1(\s9/keyboard_Mrom_tdata16_f7_1873 ),
    .S(\s9/keyboard/keyinmod/dataout [7]),
    .O(\s9/keyboard/tdata [6])
  );
  LUT6 #(
    .INIT ( 64'hAB014555AE010155 ))
  \s9/keyboard_Mrom_tdata162  (
    .I0(\s9/keyboard/keyinmod/dataout [2]),
    .I1(\s9/keyboard/keyinmod/dataout [4]),
    .I2(\s9/keyboard/keyinmod/dataout [5]),
    .I3(\s9/keyboard/keyinmod/dataout [0]),
    .I4(\s9/keyboard/keyinmod/dataout [1]),
    .I5(\s9/keyboard/keyinmod/dataout [3]),
    .O(\s9/keyboard_Mrom_tdata162_1872 )
  );
  LUT6 #(
    .INIT ( 64'hEFFFBFBFD081CB81 ))
  \s9/keyboard_Mrom_tdata161  (
    .I0(\s9/keyboard/keyinmod/dataout [0]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [2]),
    .I3(\s9/keyboard/keyinmod/dataout [4]),
    .I4(\s9/keyboard/keyinmod/dataout [3]),
    .I5(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard_Mrom_tdata161_1871 )
  );
  MUXF7   \s9/keyboard_Mrom_tdata16_f7  (
    .I0(\s9/keyboard_Mrom_tdata16_1870 ),
    .I1(\s1/rqgti_n ),
    .S(\s9/keyboard/keyinmod/dataout [6]),
    .O(\s9/keyboard_Mrom_tdata16_f7_1873 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000018 ))
  \s9/keyboard_Mrom_tdata16  (
    .I0(\s9/keyboard/keyinmod/dataout [0]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [2]),
    .I3(\s9/keyboard/keyinmod/dataout [3]),
    .I4(\s9/keyboard/keyinmod/dataout [4]),
    .I5(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard_Mrom_tdata16_1870 )
  );
  LUT6 #(
    .INIT ( 64'h9ABBB99F66AA2009 ))
  \s9/keyboard_Mrom_tdata113  (
    .I0(\s9/keyboard/keyinmod/dataout [0]),
    .I1(\s9/keyboard/keyinmod/dataout [1]),
    .I2(\s9/keyboard/keyinmod/dataout [3]),
    .I3(\s9/keyboard/keyinmod/dataout [5]),
    .I4(\s9/keyboard/keyinmod/dataout [4]),
    .I5(\s9/keyboard/keyinmod/dataout [2]),
    .O(\s9/keyboard_Mrom_tdata112_1866 )
  );
  LUT6 #(
    .INIT ( 64'h886045B95E767E7A ))
  \s9/keyboard_Mrom_tdata112  (
    .I0(\s9/keyboard/keyinmod/dataout [0]),
    .I1(\s9/keyboard/keyinmod/dataout [3]),
    .I2(\s9/keyboard/keyinmod/dataout [5]),
    .I3(\s9/keyboard/keyinmod/dataout [4]),
    .I4(\s9/keyboard/keyinmod/dataout [1]),
    .I5(\s9/keyboard/keyinmod/dataout [2]),
    .O(\s9/keyboard_Mrom_tdata111_1865 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAABAA ))
  \s9/keyboard_Mrom_tdata111  (
    .I0(\s9/keyboard/keyinmod/dataout [4]),
    .I1(\s9/keyboard/keyinmod/dataout [0]),
    .I2(\s9/keyboard/keyinmod/dataout [1]),
    .I3(\s9/keyboard/keyinmod/dataout [2]),
    .I4(\s9/keyboard/keyinmod/dataout [3]),
    .I5(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard_Mrom_tdata11 )
  );
  LUT6 #(
    .INIT ( 64'h9A417CA5A847DA61 ))
  \s9/keyboard_Mrom_tdata32  (
    .I0(\s9/keyboard/keyinmod/dataout [1]),
    .I1(\s9/keyboard/keyinmod/dataout [2]),
    .I2(\s9/keyboard/keyinmod/dataout [3]),
    .I3(\s9/keyboard/keyinmod/dataout [4]),
    .I4(\s9/keyboard/keyinmod/dataout [0]),
    .I5(\s9/keyboard/keyinmod/dataout [5]),
    .O(\s9/keyboard_Mrom_tdata32_1880 )
  );
  LUT6 #(
    .INIT ( 64'h31F9D19CFD27CA49 ))
  \s9/keyboard_Mrom_tdata31  (
    .I0(\s9/keyboard/keyinmod/dataout [1]),
    .I1(\s9/keyboard/keyinmod/dataout [2]),
    .I2(\s9/keyboard/keyinmod/dataout [3]),
    .I3(\s9/keyboard/keyinmod/dataout [5]),
    .I4(\s9/keyboard/keyinmod/dataout [0]),
    .I5(\s9/keyboard/keyinmod/dataout [4]),
    .O(\s9/keyboard_Mrom_tdata31_1879 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAA8AAAA ))
  \s9/keyboard_Mrom_tdata3  (
    .I0(\s9/keyboard/keyinmod/dataout [1]),
    .I1(\s9/keyboard/keyinmod/dataout [5]),
    .I2(\s9/keyboard/keyinmod/dataout [3]),
    .I3(\s9/keyboard/keyinmod/dataout [4]),
    .I4(\s9/keyboard/keyinmod/dataout [0]),
    .I5(\s9/keyboard/keyinmod/dataout [2]),
    .O(\s9/keyboard_Mrom_tdata3_1878 )
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \s9/keyboard/pa_mux0000<1>411  (
    .I0(reset),
    .I1(\s9/i8255/pb[7] ),
    .I2(\s9/keyboard/state_FSM_FFd2_1851 ),
    .O(\s9/keyboard/pa_mux0000<1>41 )
  );
  LUT5 #(
    .INIT ( 32'h00880008 ))
  \s9/keyboard/pa_mux0000<1>412  (
    .I0(\s9/keyboard/keyinmod/newdata_1829 ),
    .I1(\s9/keyboard/state_cmp_eq0000_1855 ),
    .I2(\s9/keyboard/state_FSM_FFd2_1851 ),
    .I3(reset),
    .I4(\s9/keyboard/state_FSM_FFd1_1849 ),
    .O(\s9/keyboard/pa_mux0000<1>411_1842 )
  );
  MUXF7   \s9/keyboard/pa_mux0000<1>41_f7  (
    .I0(\s9/keyboard/pa_mux0000<1>411_1842 ),
    .I1(\s9/keyboard/pa_mux0000<1>41 ),
    .S(\s9/keyboard/state_FSM_FFd3_1853 ),
    .O(\s9/keyboard/N6 )
  );
  LUT6 #(
    .INIT ( 64'hEFFFF7FFFFFFF7FF ))
  \s0/vgamod/dataout_mux0000<0>11  (
    .I0(a[3]),
    .I1(a[1]),
    .I2(a[0]),
    .I3(\s0/vgamod/dataout_and0000 ),
    .I4(a[2]),
    .I5(\s0/vgamod/reg_adr [1]),
    .O(\s0/vgamod/dataout_mux0000<0>1 )
  );
  LUT5 #(
    .INIT ( 32'hFDFFFFFF ))
  \s0/vgamod/dataout_mux0000<0>12  (
    .I0(a[3]),
    .I1(a[0]),
    .I2(a[2]),
    .I3(a[1]),
    .I4(\s0/vgamod/dataout_and0000 ),
    .O(\s0/vgamod/dataout_mux0000<0>11_484 )
  );
  MUXF7   \s0/vgamod/dataout_mux0000<0>1_f7  (
    .I0(\s0/vgamod/dataout_mux0000<0>11_484 ),
    .I1(\s0/vgamod/dataout_mux0000<0>1 ),
    .S(\s0/vgamod/reg_adr [3]),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \s0/vgamod/dataout_mux0000<0>891  (
    .I0(a[1]),
    .I1(\s0/vgamod/video_on_h_668 ),
    .I2(a[3]),
    .I3(\s0/vgamod/dataout_and0000 ),
    .I4(a[2]),
    .I5(a[0]),
    .O(\s0/vgamod/dataout_mux0000<0>891_486 )
  );
  LUT5 #(
    .INIT ( 32'h00002000 ))
  \s0/vgamod/dataout_mux0000<0>892  (
    .I0(a[3]),
    .I1(a[2]),
    .I2(\s0/vgamod/dataout_and0000 ),
    .I3(a[1]),
    .I4(a[0]),
    .O(\s0/vgamod/dataout_mux0000<0>892_487 )
  );
  MUXF7   \s0/vgamod/dataout_mux0000<0>89_f7  (
    .I0(\s0/vgamod/dataout_mux0000<0>892_487 ),
    .I1(\s0/vgamod/dataout_mux0000<0>891_486 ),
    .S(\s0/vgamod/video_on_v_672 ),
    .O(\s0/vgamod/dataout_mux0000<0>89 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAEAAAAAAA ))
  \s0/vgamod/v_count_or00001  (
    .I0(reset),
    .I1(\s0/vgamod/h_count_cmp_eq0000_515 ),
    .I2(\s0/vgamod/v_count [7]),
    .I3(\s0/vgamod/v_count [6]),
    .I4(N127),
    .I5(\s0/vgamod/v_count [4]),
    .O(\s0/vgamod/v_count_or00001_607 )
  );
  MUXF7   \s0/vgamod/v_count_or0000_f7  (
    .I0(reset),
    .I1(\s0/vgamod/v_count_or00001_607 ),
    .S(\s0/vgamod/v_count [8]),
    .O(\s0/vgamod/v_count_or0000 )
  );
  LUT5 #(
    .INIT ( 32'h44464444 ))
  \s4/i8237/state_mux0000<1>11  (
    .I0(\s4/i8237/state [1]),
    .I1(\s4/i8237/state [0]),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [4]),
    .I4(\s4/i8237/mode [5]),
    .O(\s4/i8237/state_mux0000<1>1 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \s4/i8237/state_mux0000<1>12  (
    .I0(\s4/i8237/drequest [0]),
    .I1(\s4/i8237/state [0]),
    .I2(\s2/holda_770 ),
    .I3(\s4/i8237/state [1]),
    .O(\s4/i8237/state_mux0000<1>11_1172 )
  );
  MUXF7   \s4/i8237/state_mux0000<1>1_f7  (
    .I0(\s4/i8237/state_mux0000<1>11_1172 ),
    .I1(\s4/i8237/state_mux0000<1>1 ),
    .S(\s4/i8237/state [2]),
    .O(\s4/i8237/state_mux0000 [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<3>9511  (
    .I0(\s0/vgamod/reg_hcursor [3]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_vcursor [3]),
    .I4(N7),
    .I5(\s0/vgamod/dataout [3]),
    .O(\s0/vgamod/dataout_mux0000<3>951 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<3>9512  (
    .I0(\s0/vgamod/reg_cur_end [3]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_cur_start [3]),
    .I4(\s0/vgamod/dataout [3]),
    .I5(N7),
    .O(\s0/vgamod/dataout_mux0000<3>9511_500 )
  );
  MUXF7   \s0/vgamod/dataout_mux0000<3>951_f7  (
    .I0(\s0/vgamod/dataout_mux0000<3>9511_500 ),
    .I1(\s0/vgamod/dataout_mux0000<3>951 ),
    .S(\s0/vgamod/reg_adr [2]),
    .O(\s0/vgamod/dataout_mux0000<3>95 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<0>9911  (
    .I0(\s0/vgamod/reg_hcursor [0]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_vcursor [0]),
    .I4(N7),
    .I5(\s0/vgamod/dataout [0]),
    .O(\s0/vgamod/dataout_mux0000<0>991 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<0>9912  (
    .I0(\s0/vgamod/reg_cur_end [0]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_cur_start [0]),
    .I4(\s0/vgamod/dataout [0]),
    .I5(N7),
    .O(\s0/vgamod/dataout_mux0000<0>9911_490 )
  );
  MUXF7   \s0/vgamod/dataout_mux0000<0>991_f7  (
    .I0(\s0/vgamod/dataout_mux0000<0>9911_490 ),
    .I1(\s0/vgamod/dataout_mux0000<0>991 ),
    .S(\s0/vgamod/reg_adr [2]),
    .O(\s0/vgamod/dataout_mux0000<0>99 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<2>1  (
    .I0(\s0/vgamod/reg_hcursor [2]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_vcursor [2]),
    .I4(N7),
    .I5(\s0/vgamod/dataout [2]),
    .O(\s0/vgamod/dataout_mux0000<2>1_495 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<2>2  (
    .I0(\s0/vgamod/reg_cur_end [2]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_cur_start [2]),
    .I4(\s0/vgamod/dataout [2]),
    .I5(N7),
    .O(\s0/vgamod/dataout_mux0000<2>2_496 )
  );
  MUXF7   \s0/vgamod/dataout_mux0000<2>_f7  (
    .I0(\s0/vgamod/dataout_mux0000<2>2_496 ),
    .I1(\s0/vgamod/dataout_mux0000<2>1_495 ),
    .S(\s0/vgamod/reg_adr [2]),
    .O(\s0/vgamod/dataout_mux0000[2] )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<1>1  (
    .I0(\s0/vgamod/reg_hcursor [1]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_vcursor [1]),
    .I4(N7),
    .I5(\s0/vgamod/dataout [1]),
    .O(\s0/vgamod/dataout_mux0000<1>1_492 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF8C808C808C80 ))
  \s0/vgamod/dataout_mux0000<1>2  (
    .I0(\s0/vgamod/reg_cur_end [1]),
    .I1(N65),
    .I2(\s0/vgamod/reg_adr [0]),
    .I3(\s0/vgamod/reg_cur_start [1]),
    .I4(\s0/vgamod/dataout [1]),
    .I5(N7),
    .O(\s0/vgamod/dataout_mux0000<1>2_493 )
  );
  MUXF7   \s0/vgamod/dataout_mux0000<1>_f7  (
    .I0(\s0/vgamod/dataout_mux0000<1>2_493 ),
    .I1(\s0/vgamod/dataout_mux0000<1>1_492 ),
    .S(\s0/vgamod/reg_adr [2]),
    .O(\s0/vgamod/dataout_mux0000[1] )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_1_mux0000291  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [1]),
    .I5(\s4/i8237/_add0000 [1]),
    .O(\s4/i8237/curr_addr_1_mux0000291_1060 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_1_mux0000292  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [1]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [1]),
    .O(\s4/i8237/curr_addr_1_mux0000292_1061 )
  );
  MUXF7   \s4/i8237/curr_addr_1_mux000029_f7  (
    .I0(\s4/i8237/curr_addr_1_mux0000292_1061 ),
    .I1(\s4/i8237/curr_addr_1_mux0000291_1060 ),
    .S(\s4/i8237/_sub0001 [1]),
    .O(\s4/i8237/curr_addr_1_mux000029 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_0_mux0000281  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [0]),
    .I5(\s4/i8237/_add0000 [0]),
    .O(\s4/i8237/curr_addr_0_mux0000281_1023 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_0_mux0000282  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [0]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [0]),
    .O(\s4/i8237/curr_addr_0_mux0000282_1024 )
  );
  MUXF7   \s4/i8237/curr_addr_0_mux000028_f7  (
    .I0(\s4/i8237/curr_addr_0_mux0000282_1024 ),
    .I1(\s4/i8237/curr_addr_0_mux0000281_1023 ),
    .S(\s4/i8237/_sub0001 [0]),
    .O(\s4/i8237/curr_addr_0_mux000028 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_2_mux0000291  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [2]),
    .I5(\s4/i8237/_add0000 [2]),
    .O(\s4/i8237/curr_addr_2_mux0000291_1065 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_2_mux0000292  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [2]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [2]),
    .O(\s4/i8237/curr_addr_2_mux0000292_1066 )
  );
  MUXF7   \s4/i8237/curr_addr_2_mux000029_f7  (
    .I0(\s4/i8237/curr_addr_2_mux0000292_1066 ),
    .I1(\s4/i8237/curr_addr_2_mux0000291_1065 ),
    .S(\s4/i8237/_sub0001 [2]),
    .O(\s4/i8237/curr_addr_2_mux000029 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_3_mux0000281  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [3]),
    .I5(\s4/i8237/_add0000 [3]),
    .O(\s4/i8237/curr_addr_3_mux0000281_1070 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_3_mux0000282  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [3]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [3]),
    .O(\s4/i8237/curr_addr_3_mux0000282_1071 )
  );
  MUXF7   \s4/i8237/curr_addr_3_mux000028_f7  (
    .I0(\s4/i8237/curr_addr_3_mux0000282_1071 ),
    .I1(\s4/i8237/curr_addr_3_mux0000281_1070 ),
    .S(\s4/i8237/_sub0001 [3]),
    .O(\s4/i8237/curr_addr_3_mux000028 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_4_mux0000281  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [4]),
    .I5(\s4/i8237/_add0000 [4]),
    .O(\s4/i8237/curr_addr_4_mux0000281_1075 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_4_mux0000282  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [4]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [4]),
    .O(\s4/i8237/curr_addr_4_mux0000282_1076 )
  );
  MUXF7   \s4/i8237/curr_addr_4_mux000028_f7  (
    .I0(\s4/i8237/curr_addr_4_mux0000282_1076 ),
    .I1(\s4/i8237/curr_addr_4_mux0000281_1075 ),
    .S(\s4/i8237/_sub0001 [4]),
    .O(\s4/i8237/curr_addr_4_mux000028 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_5_mux0000281  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [5]),
    .I5(\s4/i8237/_add0000 [5]),
    .O(\s4/i8237/curr_addr_5_mux0000281_1080 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_5_mux0000282  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [5]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [5]),
    .O(\s4/i8237/curr_addr_5_mux0000282_1081 )
  );
  MUXF7   \s4/i8237/curr_addr_5_mux000028_f7  (
    .I0(\s4/i8237/curr_addr_5_mux0000282_1081 ),
    .I1(\s4/i8237/curr_addr_5_mux0000281_1080 ),
    .S(\s4/i8237/_sub0001 [5]),
    .O(\s4/i8237/curr_addr_5_mux000028 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_15_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [15]),
    .I5(\s4/i8237/_add0000 [15]),
    .O(\s4/i8237/curr_addr_15_mux0000241_1056 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_15_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [15]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [15]),
    .O(\s4/i8237/curr_addr_15_mux0000242_1057 )
  );
  MUXF7   \s4/i8237/curr_addr_15_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_15_mux0000242_1057 ),
    .I1(\s4/i8237/curr_addr_15_mux0000241_1056 ),
    .S(\s4/i8237/_sub0001 [15]),
    .O(\s4/i8237/curr_addr_15_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_14_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [14]),
    .I5(\s4/i8237/_add0000 [14]),
    .O(\s4/i8237/curr_addr_14_mux0000241_1051 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_14_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [14]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [14]),
    .O(\s4/i8237/curr_addr_14_mux0000242_1052 )
  );
  MUXF7   \s4/i8237/curr_addr_14_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_14_mux0000242_1052 ),
    .I1(\s4/i8237/curr_addr_14_mux0000241_1051 ),
    .S(\s4/i8237/_sub0001 [14]),
    .O(\s4/i8237/curr_addr_14_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_13_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [13]),
    .I5(\s4/i8237/_add0000 [13]),
    .O(\s4/i8237/curr_addr_13_mux0000241_1046 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_13_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [13]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [13]),
    .O(\s4/i8237/curr_addr_13_mux0000242_1047 )
  );
  MUXF7   \s4/i8237/curr_addr_13_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_13_mux0000242_1047 ),
    .I1(\s4/i8237/curr_addr_13_mux0000241_1046 ),
    .S(\s4/i8237/_sub0001 [13]),
    .O(\s4/i8237/curr_addr_13_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_12_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [12]),
    .I5(\s4/i8237/_add0000 [12]),
    .O(\s4/i8237/curr_addr_12_mux0000241_1041 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_12_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [12]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [12]),
    .O(\s4/i8237/curr_addr_12_mux0000242_1042 )
  );
  MUXF7   \s4/i8237/curr_addr_12_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_12_mux0000242_1042 ),
    .I1(\s4/i8237/curr_addr_12_mux0000241_1041 ),
    .S(\s4/i8237/_sub0001 [12]),
    .O(\s4/i8237/curr_addr_12_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_11_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [11]),
    .I5(\s4/i8237/_add0000 [11]),
    .O(\s4/i8237/curr_addr_11_mux0000241_1036 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_11_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [11]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [11]),
    .O(\s4/i8237/curr_addr_11_mux0000242_1037 )
  );
  MUXF7   \s4/i8237/curr_addr_11_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_11_mux0000242_1037 ),
    .I1(\s4/i8237/curr_addr_11_mux0000241_1036 ),
    .S(\s4/i8237/_sub0001 [11]),
    .O(\s4/i8237/curr_addr_11_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_10_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [10]),
    .I5(\s4/i8237/_add0000 [10]),
    .O(\s4/i8237/curr_addr_10_mux0000241_1030 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_10_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [10]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [10]),
    .O(\s4/i8237/curr_addr_10_mux0000242_1031 )
  );
  MUXF7   \s4/i8237/curr_addr_10_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_10_mux0000242_1031 ),
    .I1(\s4/i8237/curr_addr_10_mux0000241_1030 ),
    .S(\s4/i8237/_sub0001 [10]),
    .O(\s4/i8237/curr_addr_10_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_9_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [9]),
    .I5(\s4/i8237/_add0000 [9]),
    .O(\s4/i8237/curr_addr_9_mux0000241_1100 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_9_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [9]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [9]),
    .O(\s4/i8237/curr_addr_9_mux0000242_1101 )
  );
  MUXF7   \s4/i8237/curr_addr_9_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_9_mux0000242_1101 ),
    .I1(\s4/i8237/curr_addr_9_mux0000241_1100 ),
    .S(\s4/i8237/_sub0001 [9]),
    .O(\s4/i8237/curr_addr_9_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_8_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [8]),
    .I5(\s4/i8237/_add0000 [8]),
    .O(\s4/i8237/curr_addr_8_mux0000241_1095 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_8_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [8]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [8]),
    .O(\s4/i8237/curr_addr_8_mux0000242_1096 )
  );
  MUXF7   \s4/i8237/curr_addr_8_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_8_mux0000242_1096 ),
    .I1(\s4/i8237/curr_addr_8_mux0000241_1095 ),
    .S(\s4/i8237/_sub0001 [8]),
    .O(\s4/i8237/curr_addr_8_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_7_mux0000241  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [7]),
    .I5(\s4/i8237/_add0000 [7]),
    .O(\s4/i8237/curr_addr_7_mux0000241_1090 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_7_mux0000242  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [7]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [7]),
    .O(\s4/i8237/curr_addr_7_mux0000242_1091 )
  );
  MUXF7   \s4/i8237/curr_addr_7_mux000024_f7  (
    .I0(\s4/i8237/curr_addr_7_mux0000242_1091 ),
    .I1(\s4/i8237/curr_addr_7_mux0000241_1090 ),
    .S(\s4/i8237/_sub0001 [7]),
    .O(\s4/i8237/curr_addr_7_mux000024 )
  );
  LUT6 #(
    .INIT ( 64'hC4C404C4C0800080 ))
  \s4/i8237/curr_addr_6_mux0000291  (
    .I0(\s4/i8237/mode [3]),
    .I1(\s4/i8237/state_cmp_eq0008 ),
    .I2(\s4/i8237/state_cmp_eq0009 ),
    .I3(\s4/i8237/mode [2]),
    .I4(\s4/i8237/base_addr [6]),
    .I5(\s4/i8237/_add0000 [6]),
    .O(\s4/i8237/curr_addr_6_mux0000291_1085 )
  );
  LUT6 #(
    .INIT ( 64'h8000A2AA80008000 ))
  \s4/i8237/curr_addr_6_mux0000292  (
    .I0(\s4/i8237/state_cmp_eq0008 ),
    .I1(\s4/i8237/mode [2]),
    .I2(\s4/i8237/base_addr [6]),
    .I3(\s4/i8237/state_cmp_eq0009 ),
    .I4(\s4/i8237/mode [3]),
    .I5(\s4/i8237/_add0000 [6]),
    .O(\s4/i8237/curr_addr_6_mux0000292_1086 )
  );
  MUXF7   \s4/i8237/curr_addr_6_mux000029_f7  (
    .I0(\s4/i8237/curr_addr_6_mux0000292_1086 ),
    .I1(\s4/i8237/curr_addr_6_mux0000291_1085 ),
    .S(\s4/i8237/_sub0001 [6]),
    .O(\s4/i8237/curr_addr_6_mux000029 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \s3/td0/td25/Mshreg_q  (
    .A0(\s1/rqgti_n ),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(\s1/rqgti_n ),
    .CLK(USER_CLK_BUFGP_129),
    .D(\s3/td0/td5/q_781 ),
    .Q(\s3/td0/td25/Mshreg_q_777 ),
    .Q15(\NLW_s3/td0/td25/Mshreg_q_Q15_UNCONNECTED )
  );
  FDE   \s3/td0/td25/q1  (
    .C(USER_CLK_BUFGP_129),
    .CE(\s1/rqgti_n ),
    .D(\s3/td0/td25/Mshreg_q_777 ),
    .Q(\s3/td0/td25/q1_779 )
  );
  SRLC16E #(
    .INIT ( 16'h0001 ))
  \s1/i8259/Mshreg_icws_1  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(\xa[0] ),
    .CLK(\s1/i8259/icws_and0000_718 ),
    .D(N0),
    .Q(\s1/i8259/Mshreg_icws_1_704 ),
    .Q15(\NLW_s1/i8259/Mshreg_icws_1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \s1/i8259/icws_1  (
    .C(\s1/i8259/icws_and0000_718 ),
    .CE(\xa[0] ),
    .D(\s1/i8259/Mshreg_icws_1_704 ),
    .Q(\s1/i8259/icws [1])
  );
  INV   KEYBOARD_CLK_BUFGP_inv (
    .I(KEYBOARD_CLK_BUFGP_9),
    .O(KEYBOARD_CLK_BUFGP_inv_10)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \s9/keyboard/keyinmod/Mshreg_b_FSM_FFd11  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CE(\s1/rqgti_n ),
    .CLK(KEYBOARD_CLK_BUFGP_inv_10),
    .D(\s9/keyboard/keyinmod/b_FSM_FFd2_1813 ),
    .Q(\s9/keyboard/keyinmod/Mshreg_b_FSM_FFd11_1810 ),
    .Q15(\NLW_s9/keyboard/keyinmod/Mshreg_b_FSM_FFd11_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \s9/keyboard/keyinmod/b_FSM_FFd11  (
    .C(KEYBOARD_CLK_BUFGP_inv_10),
    .CE(\s1/rqgti_n ),
    .D(\s9/keyboard/keyinmod/Mshreg_b_FSM_FFd11_1810 ),
    .Q(\s9/keyboard/keyinmod/b_FSM_FFd11_1812 )
  );
  FDRE   N0_shift1 (
    .C(USER_CLK_BUFGP_129),
    .CE(\s1/rqgti_n ),
    .D(\s1/rqgti_n ),
    .R(N0),
    .Q(N0_shift1_14)
  );
  FDRE   N0_shift2 (
    .C(USER_CLK_BUFGP_129),
    .CE(\s1/rqgti_n ),
    .D(N0_shift1_14),
    .R(N0),
    .Q(N0_shift2_15)
  );
  FDRE   N0_shift3 (
    .C(USER_CLK_BUFGP_129),
    .CE(\s1/rqgti_n ),
    .D(N0_shift2_15),
    .R(N0),
    .Q(N0_shift3_16)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \s3/td0/td25/q11  (
    .I0(\s3/td0/td25/q1_779 ),
    .I1(N0_shift3_16),
    .O(\s3/td0/td25/q11_780 )
  );
  FDRE   \s3/td0/td25/q  (
    .C(USER_CLK_BUFGP_129),
    .CE(\s1/rqgti_n ),
    .D(\s3/td0/td25/q11_780 ),
    .R(N0),
    .Q(\s3/td0/td25/q_778 )
  );
  attrram   \s0/vgamod/ram_2k_attr  (
    .clka(vga_clk),
    .rsta(reset),
    .wea({\s0/vgamod/attr0_addr_not0001 }),
    .addra({\s0/vgamod/new_attr_addr [10], \s0/vgamod/new_attr_addr [9], \s0/vgamod/new_attr_addr [8], \s0/vgamod/new_attr_addr [7], 
\s0/vgamod/new_attr_addr [6], \s0/vgamod/new_attr_addr [5], \s0/vgamod/new_attr_addr [4], \s0/vgamod/new_attr_addr [3], \s0/vgamod/new_attr_addr [2], 
\s0/vgamod/new_attr_addr [1], \s0/vgamod/new_attr_addr [0]}),
    .dina({d[7], d[6], d[5], d[4], d[3], d[2], d[1], d[0]}),
    .douta({\s0/vgamod/attr_data_out [7], \s0/vgamod/attr_data_out [6], \s0/vgamod/attr_data_out [5], \s0/vgamod/attr_data_out [4], 
\s0/vgamod/attr_data_out [3], \s0/vgamod/attr_data_out [2], \s0/vgamod/attr_data_out [1], \s0/vgamod/attr_data_out [0]})
  );
  charram   \s0/vgamod/ram_2k_char  (
    .clka(vga_clk),
    .rsta(reset),
    .wea({\s0/vgamod/buff0_addr_not0001 }),
    .addra({\s0/vgamod/new_buff_addr [10], \s0/vgamod/new_buff_addr [9], \s0/vgamod/new_buff_addr [8], \s0/vgamod/new_buff_addr [7], 
\s0/vgamod/new_buff_addr [6], \s0/vgamod/new_buff_addr [5], \s0/vgamod/new_buff_addr [4], \s0/vgamod/new_buff_addr [3], \s0/vgamod/new_buff_addr [2], 
\s0/vgamod/new_buff_addr [1], \s0/vgamod/new_buff_addr [0]}),
    .dina({d[7], d[6], d[5], d[4], d[3], d[2], d[1], d[0]}),
    .douta({\s0/vgamod/vga_data_out [7], \s0/vgamod/vga_data_out [6], \s0/vgamod/vga_data_out [5], \s0/vgamod/vga_data_out [4], 
\s0/vgamod/vga_data_out [3], \s0/vgamod/vga_data_out [2], \s0/vgamod/vga_data_out [1], \s0/vgamod/vga_data_out [0]})
  );
  charcore   \s0/vgamod/char_rom  (
    .clka(vga_clk),
    .wea({N0}),
    .addra({\s0/vgamod/vga_data_out [7], \s0/vgamod/vga_data_out [6], \s0/vgamod/vga_data_out [5], \s0/vgamod/vga_data_out [4], 
\s0/vgamod/vga_data_out [3], \s0/vgamod/vga_data_out [2], \s0/vgamod/vga_data_out [1], \s0/vgamod/vga_data_out [0], \s0/vgamod/v_count [3], 
\s0/vgamod/v_count [2], \s0/vgamod/v_count [1], \s0/vgamod/v_count [0]}),
    .dina({N0, N0, N0, N0, N0, N0, N0, N0}),
    .douta({\s0/vgamod/char_data_out [7], \s0/vgamod/char_data_out [6], \s0/vgamod/char_data_out [5], \s0/vgamod/char_data_out [4], 
\s0/vgamod/char_data_out [3], \s0/vgamod/char_data_out [2], \s0/vgamod/char_data_out [1], \s0/vgamod/char_data_out [0]})
  );
  romcore   \s5/rommod/crc  (
    .clka(clk),
    .wea({N0}),
    .addra({\s5/rommod/upaddr [2], \s5/rommod/upaddr [1], \s5/rommod/upaddr [0], a[12], a[11], a[10], a[9], a[8], \xa[7] , \xa[6] , \xa[5] , 
\s5/xa [4], \xa[3] , \xa[2] , \xa[1] , \xa[0] }),
    .dina({N0, N0, N0, N0, N0, N0, N0, N0}),
    .douta({\s5/rommod/outputval [7], \s5/rommod/outputval [6], \s5/rommod/outputval [5], \s5/rommod/outputval [4], \s5/rommod/outputval [3], 
\s5/rommod/outputval [2], \s5/rommod/outputval [1], \s5/rommod/outputval [0]})
  );
  ramcore   \s6/rb3/central_ram_core/central_ram_core  (
    .clka(clk),
    .wea({\s6/rb0/central_ram_core/we }),
    .addra({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0}),
    .dina({\s6/md [7], \s6/md [6], \s6/md [5], \s6/md [4], \s6/md [3], \s6/md [2], \s6/md [1], \s6/md [0], \s6/mdp }),
    .douta({\s6/rb3/md_out [7], \s6/rb3/md_out [6], \s6/rb3/md_out [5], \s6/rb3/md_out [4], \s6/rb3/md_out [3], \s6/rb3/md_out [2], \s6/rb3/md_out [1]
, \s6/rb3/md_out [0], \s6/rb3/mdp_out })
  );
  ramcore   \s6/rb2/central_ram_core/central_ram_core  (
    .clka(clk),
    .wea({\s6/rb0/central_ram_core/we }),
    .addra({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0}),
    .dina({\s6/md [7], \s6/md [6], \s6/md [5], \s6/md [4], \s6/md [3], \s6/md [2], \s6/md [1], \s6/md [0], \s6/mdp }),
    .douta({\s6/rb2/md_out [7], \s6/rb2/md_out [6], \s6/rb2/md_out [5], \s6/rb2/md_out [4], \s6/rb2/md_out [3], \s6/rb2/md_out [2], \s6/rb2/md_out [1]
, \s6/rb2/md_out [0], \s6/rb2/mdp_out })
  );
  ramcore   \s6/rb1/central_ram_core/central_ram_core  (
    .clka(clk),
    .wea({\s6/rb0/central_ram_core/we }),
    .addra({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0}),
    .dina({\s6/md [7], \s6/md [6], \s6/md [5], \s6/md [4], \s6/md [3], \s6/md [2], \s6/md [1], \s6/md [0], \s6/mdp }),
    .douta({\s6/rb1/md_out [7], \s6/rb1/md_out [6], \s6/rb1/md_out [5], \s6/rb1/md_out [4], \s6/rb1/md_out [3], \s6/rb1/md_out [2], \s6/rb1/md_out [1]
, \s6/rb1/md_out [0], \s6/rb1/mdp_out })
  );
  ramcore   \s6/rb0/central_ram_core/central_ram_core  (
    .clka(clk),
    .wea({\s6/rb0/central_ram_core/we }),
    .addra({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0}),
    .dina({\s6/md [7], \s6/md [6], \s6/md [5], \s6/md [4], \s6/md [3], \s6/md [2], \s6/md [1], \s6/md [0], \s6/mdp }),
    .douta({\s6/rb0/md_out [7], \s6/rb0/md_out [6], \s6/rb0/md_out [5], \s6/rb0/md_out [4], \s6/rb0/md_out [3], \s6/rb0/md_out [2], \s6/rb0/md_out [1]
, \s6/rb0/md_out [0], \s6/rb0/mdp_out })
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
