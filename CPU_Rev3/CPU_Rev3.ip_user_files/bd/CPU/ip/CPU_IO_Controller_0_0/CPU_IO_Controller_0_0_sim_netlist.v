// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Sat Oct 12 00:19:52 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_IO_Controller_0_0/CPU_IO_Controller_0_0_sim_netlist.v
// Design      : CPU_IO_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CPU_IO_Controller_0_0,IO_Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "IO_Controller,Vivado 2024.1.2" *) 
(* NotValidForBitStream *)
module CPU_IO_Controller_0_0
   (clk,
    ena,
    sel,
    data_in,
    data_out,
    reset,
    led_0,
    led_1,
    btn_0,
    btn_1,
    done);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input ena;
  input [4:0]sel;
  input [63:0]data_in;
  output [63:0]data_out;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  output led_0;
  output led_1;
  input btn_0;
  input btn_1;
  output done;

  wire \<const0> ;
  wire btn_0;
  wire btn_1;
  wire clk;
  wire [63:0]data_in;
  wire [0:0]\^data_out ;
  wire done;
  wire ena;
  wire led_0;
  wire led_1;
  wire reset;
  wire [4:0]sel;

  assign data_out[63] = \<const0> ;
  assign data_out[62] = \<const0> ;
  assign data_out[61] = \<const0> ;
  assign data_out[60] = \<const0> ;
  assign data_out[59] = \<const0> ;
  assign data_out[58] = \<const0> ;
  assign data_out[57] = \<const0> ;
  assign data_out[56] = \<const0> ;
  assign data_out[55] = \<const0> ;
  assign data_out[54] = \<const0> ;
  assign data_out[53] = \<const0> ;
  assign data_out[52] = \<const0> ;
  assign data_out[51] = \<const0> ;
  assign data_out[50] = \<const0> ;
  assign data_out[49] = \<const0> ;
  assign data_out[48] = \<const0> ;
  assign data_out[47] = \<const0> ;
  assign data_out[46] = \<const0> ;
  assign data_out[45] = \<const0> ;
  assign data_out[44] = \<const0> ;
  assign data_out[43] = \<const0> ;
  assign data_out[42] = \<const0> ;
  assign data_out[41] = \<const0> ;
  assign data_out[40] = \<const0> ;
  assign data_out[39] = \<const0> ;
  assign data_out[38] = \<const0> ;
  assign data_out[37] = \<const0> ;
  assign data_out[36] = \<const0> ;
  assign data_out[35] = \<const0> ;
  assign data_out[34] = \<const0> ;
  assign data_out[33] = \<const0> ;
  assign data_out[32] = \<const0> ;
  assign data_out[31] = \<const0> ;
  assign data_out[30] = \<const0> ;
  assign data_out[29] = \<const0> ;
  assign data_out[28] = \<const0> ;
  assign data_out[27] = \<const0> ;
  assign data_out[26] = \<const0> ;
  assign data_out[25] = \<const0> ;
  assign data_out[24] = \<const0> ;
  assign data_out[23] = \<const0> ;
  assign data_out[22] = \<const0> ;
  assign data_out[21] = \<const0> ;
  assign data_out[20] = \<const0> ;
  assign data_out[19] = \<const0> ;
  assign data_out[18] = \<const0> ;
  assign data_out[17] = \<const0> ;
  assign data_out[16] = \<const0> ;
  assign data_out[15] = \<const0> ;
  assign data_out[14] = \<const0> ;
  assign data_out[13] = \<const0> ;
  assign data_out[12] = \<const0> ;
  assign data_out[11] = \<const0> ;
  assign data_out[10] = \<const0> ;
  assign data_out[9] = \<const0> ;
  assign data_out[8] = \<const0> ;
  assign data_out[7] = \<const0> ;
  assign data_out[6] = \<const0> ;
  assign data_out[5] = \<const0> ;
  assign data_out[4] = \<const0> ;
  assign data_out[3] = \<const0> ;
  assign data_out[2] = \<const0> ;
  assign data_out[1] = \<const0> ;
  assign data_out[0] = \^data_out [0];
  GND GND
       (.G(\<const0> ));
  CPU_IO_Controller_0_0_IO_Controller U0
       (.btn_0(btn_0),
        .btn_1(btn_1),
        .clk(clk),
        .data_in(data_in[0]),
        .data_out(\^data_out ),
        .done(done),
        .ena(ena),
        .led_0(led_0),
        .led_1(led_1),
        .reset(reset),
        .sel(sel));
endmodule

(* ORIG_REF_NAME = "IO_Controller" *) 
module CPU_IO_Controller_0_0_IO_Controller
   (done,
    data_out,
    led_0,
    led_1,
    ena,
    sel,
    clk,
    reset,
    btn_1,
    btn_0,
    data_in);
  output done;
  output [0:0]data_out;
  output led_0;
  output led_1;
  input ena;
  input [4:0]sel;
  input clk;
  input reset;
  input btn_1;
  input btn_0;
  input [0:0]data_in;

  wire \U0/_n_0 ;
  wire btn_0;
  wire btn_1;
  wire clk;
  wire [0:0]data_in;
  wire [0:0]data_out;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[0]_i_2_n_0 ;
  wire done;
  wire done_i_1_n_0;
  wire ena;
  wire led_0;
  wire led_0_i_1_n_0;
  wire led_1;
  wire led_1_i_1_n_0;
  wire reset;
  wire [4:0]sel;

  LUT3 #(
    .INIT(8'hFE)) 
    \U0/ 
       (.I0(sel[4]),
        .I1(sel[2]),
        .I2(sel[3]),
        .O(\U0/_n_0 ));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    \data_out[0]_i_1 
       (.I0(btn_1),
        .I1(sel[0]),
        .I2(btn_0),
        .I3(\data_out[0]_i_2_n_0 ),
        .I4(data_out),
        .O(\data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \data_out[0]_i_2 
       (.I0(ena),
        .I1(sel[1]),
        .I2(sel[4]),
        .I3(sel[2]),
        .I4(sel[3]),
        .O(\data_out[0]_i_2_n_0 ));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    done_i_1
       (.I0(ena),
        .I1(sel[3]),
        .I2(sel[2]),
        .I3(sel[4]),
        .O(done_i_1_n_0));
  FDCE done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(done_i_1_n_0),
        .Q(done));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    led_0_i_1
       (.I0(data_in),
        .I1(ena),
        .I2(\U0/_n_0 ),
        .I3(sel[1]),
        .I4(sel[0]),
        .I5(led_0),
        .O(led_0_i_1_n_0));
  FDCE led_0_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(led_0_i_1_n_0),
        .Q(led_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    led_1_i_1
       (.I0(data_in),
        .I1(ena),
        .I2(\U0/_n_0 ),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(led_1),
        .O(led_1_i_1_n_0));
  FDCE led_1_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(led_1_i_1_n_0),
        .Q(led_1));
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
