// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Sat Oct 12 17:48:37 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_LCD_Controller_0_0/CPU_LCD_Controller_0_0_sim_netlist.v
// Design      : CPU_LCD_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CPU_LCD_Controller_0_0,LCD_Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "LCD_Controller,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module CPU_LCD_Controller_0_0
   (reset,
    clk,
    scl,
    sda,
    cs,
    dc,
    blk,
    res,
    fb_we,
    fb_en,
    fb_din,
    fb_dout,
    fb_addr);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN CPU_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  output scl;
  output sda;
  output cs;
  output dc;
  output blk;
  output res;
  output [7:0]fb_we;
  output fb_en;
  input [15:0]fb_din;
  output [15:0]fb_dout;
  output [15:0]fb_addr;

  wire \<const0> ;
  wire cs;
  wire reset;

  assign blk = \<const0> ;
  assign dc = \<const0> ;
  assign fb_addr[15] = \<const0> ;
  assign fb_addr[14] = \<const0> ;
  assign fb_addr[13] = \<const0> ;
  assign fb_addr[12] = \<const0> ;
  assign fb_addr[11] = \<const0> ;
  assign fb_addr[10] = \<const0> ;
  assign fb_addr[9] = \<const0> ;
  assign fb_addr[8] = \<const0> ;
  assign fb_addr[7] = \<const0> ;
  assign fb_addr[6] = \<const0> ;
  assign fb_addr[5] = \<const0> ;
  assign fb_addr[4] = \<const0> ;
  assign fb_addr[3] = \<const0> ;
  assign fb_addr[2] = \<const0> ;
  assign fb_addr[1] = \<const0> ;
  assign fb_addr[0] = \<const0> ;
  assign fb_dout[15] = \<const0> ;
  assign fb_dout[14] = \<const0> ;
  assign fb_dout[13] = \<const0> ;
  assign fb_dout[12] = \<const0> ;
  assign fb_dout[11] = \<const0> ;
  assign fb_dout[10] = \<const0> ;
  assign fb_dout[9] = \<const0> ;
  assign fb_dout[8] = \<const0> ;
  assign fb_dout[7] = \<const0> ;
  assign fb_dout[6] = \<const0> ;
  assign fb_dout[5] = \<const0> ;
  assign fb_dout[4] = \<const0> ;
  assign fb_dout[3] = \<const0> ;
  assign fb_dout[2] = \<const0> ;
  assign fb_dout[1] = \<const0> ;
  assign fb_dout[0] = \<const0> ;
  assign fb_en = \<const0> ;
  assign fb_we[7] = \<const0> ;
  assign fb_we[6] = \<const0> ;
  assign fb_we[5] = \<const0> ;
  assign fb_we[4] = \<const0> ;
  assign fb_we[3] = \<const0> ;
  assign fb_we[2] = \<const0> ;
  assign fb_we[1] = \<const0> ;
  assign fb_we[0] = \<const0> ;
  assign res = \<const0> ;
  assign scl = \<const0> ;
  assign sda = \<const0> ;
  GND GND
       (.G(\<const0> ));
  CPU_LCD_Controller_0_0_LCD_Controller U0
       (.cs(cs),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "LCD_Controller" *) 
module CPU_LCD_Controller_0_0_LCD_Controller
   (cs,
    reset);
  output cs;
  input reset;

  wire cs;
  wire reset;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    cs_reg
       (.CLR(1'b0),
        .D(reset),
        .G(reset),
        .GE(1'b1),
        .Q(cs));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
