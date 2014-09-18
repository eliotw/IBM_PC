////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: fsm_translate.v
// /___/   /\     Timestamp: Thu Sep 18 17:25:33 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim fsm.ngd fsm_translate.v 
// Device	: 5vlx110tff1136-1
// Input file	: fsm.ngd
// Output file	: /afs/ece.cmu.edu/usr/pmbrown/Private/IBM/IBM_PC/labs/2/test/TestLab1/netgen/translate/fsm_translate.v
// # of Modules	: 1
// Design Name	: fsm
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

module fsm (
  USER_CLK, GPIO_LED_0, GPIO_LED_1, GPIO_LED_2, GPIO_LED_3, GPIO_LED_4, GPIO_SW_C, GPIO_SW_E
);
  input USER_CLK;
  output GPIO_LED_0;
  output GPIO_LED_1;
  output GPIO_LED_2;
  output GPIO_LED_3;
  output GPIO_LED_4;
  input GPIO_SW_C;
  input GPIO_SW_E;
  wire GPIO_LED_0_OBUF_4;
  wire GPIO_LED_1_OBUF_6;
  wire GPIO_LED_2_OBUF_8;
  wire GPIO_LED_3_OBUF_10;
  wire GPIO_LED_4_OBUF_12;
  wire GPIO_SW_C_IBUF_14;
  wire GPIO_SW_E_IBUF_16;
  wire USER_CLK_BUFGP;
  wire state_FSM_FFd1_19;
  wire state_FSM_FFd2_20;
  wire \state_FSM_FFd2-In1 ;
  wire \USER_CLK_BUFGP/IBUFG_2 ;
  wire GND;
  X_ZERO   XST_GND (
    .O(GPIO_LED_4_OBUF_12)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  state_FSM_Out31 (
    .ADR0(state_FSM_FFd2_20),
    .ADR1(state_FSM_FFd1_19),
    .O(GPIO_LED_3_OBUF_10)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  state_FSM_Out21 (
    .ADR0(state_FSM_FFd2_20),
    .ADR1(state_FSM_FFd1_19),
    .O(GPIO_LED_2_OBUF_8)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  state_FSM_Out11 (
    .ADR0(state_FSM_FFd1_19),
    .ADR1(state_FSM_FFd2_20),
    .O(GPIO_LED_1_OBUF_6)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  state_FSM_Out01 (
    .ADR0(state_FSM_FFd2_20),
    .ADR1(state_FSM_FFd1_19),
    .O(GPIO_LED_0_OBUF_4)
  );
  X_BUF   GPIO_SW_C_IBUF (
    .I(GPIO_SW_C),
    .O(GPIO_SW_C_IBUF_14)
  );
  X_BUF   GPIO_SW_E_IBUF (
    .I(GPIO_SW_E),
    .O(GPIO_SW_E_IBUF_16)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .CLK(USER_CLK_BUFGP),
    .CE(GPIO_SW_C_IBUF_14),
    .I(state_FSM_FFd2_20),
    .SRST(GPIO_SW_E_IBUF_16),
    .O(state_FSM_FFd1_19),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .CLK(USER_CLK_BUFGP),
    .CE(GPIO_SW_C_IBUF_14),
    .I(\state_FSM_FFd2-In1 ),
    .SRST(GPIO_SW_E_IBUF_16),
    .O(state_FSM_FFd2_20),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_INV   \state_FSM_FFd2-In11_INV_0  (
    .I(state_FSM_FFd1_19),
    .O(\state_FSM_FFd2-In1 )
  );
  X_OPAD #(
    .LOC ( "H18" ))
  GPIO_LED_0_19 (
    .PAD(GPIO_LED_0)
  );
  X_OPAD #(
    .LOC ( "L18" ))
  GPIO_LED_1_20 (
    .PAD(GPIO_LED_1)
  );
  X_OPAD #(
    .LOC ( "G15" ))
  GPIO_LED_2_21 (
    .PAD(GPIO_LED_2)
  );
  X_OPAD #(
    .LOC ( "AD26" ))
  GPIO_LED_3_22 (
    .PAD(GPIO_LED_3)
  );
  X_OPAD #(
    .LOC ( "G16" ))
  GPIO_LED_4_23 (
    .PAD(GPIO_LED_4)
  );
  X_IPAD #(
    .LOC ( "AJ6" ))
  GPIO_SW_C_24 (
    .PAD(GPIO_SW_C)
  );
  X_IPAD #(
    .LOC ( "AK7" ))
  GPIO_SW_E_25 (
    .PAD(GPIO_SW_E)
  );
  X_IPAD #(
    .LOC ( "AH15" ))
  USER_CLK_26 (
    .PAD(USER_CLK)
  );
  X_CKBUF   \USER_CLK_BUFGP/BUFG  (
    .I(\USER_CLK_BUFGP/IBUFG_2 ),
    .O(USER_CLK_BUFGP)
  );
  X_CKBUF   \USER_CLK_BUFGP/IBUFG  (
    .I(USER_CLK),
    .O(\USER_CLK_BUFGP/IBUFG_2 )
  );
  X_OBUF   GPIO_LED_0_OBUF (
    .I(GPIO_LED_0_OBUF_4),
    .O(GPIO_LED_0)
  );
  X_OBUF   GPIO_LED_1_OBUF (
    .I(GPIO_LED_1_OBUF_6),
    .O(GPIO_LED_1)
  );
  X_OBUF   GPIO_LED_2_OBUF (
    .I(GPIO_LED_2_OBUF_8),
    .O(GPIO_LED_2)
  );
  X_OBUF   GPIO_LED_3_OBUF (
    .I(GPIO_LED_3_OBUF_10),
    .O(GPIO_LED_3)
  );
  X_OBUF   GPIO_LED_4_OBUF (
    .I(GPIO_LED_4_OBUF_12),
    .O(GPIO_LED_4)
  );
  X_ZERO   NlwBlock_fsm_GND (
    .O(GND)
  );
endmodule


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

