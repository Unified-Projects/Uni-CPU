// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Wed Oct 16 14:07:19 2024
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
    cd,
    blk,
    res,
    fb_we,
    fb_en,
    fb_din,
    fb_addr);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  output scl;
  output sda;
  output cs;
  output cd;
  output blk;
  output res;
  output [7:0]fb_we;
  output fb_en;
  input [15:0]fb_din;
  output [15:0]fb_addr;

  wire \<const0> ;
  wire blk;
  wire cd;
  wire clk;
  wire cs;
  wire [15:0]fb_addr;
  wire [15:0]fb_din;
  wire fb_en;
  wire res;
  wire reset;
  wire scl;
  wire sda;

  assign fb_we[7] = \<const0> ;
  assign fb_we[6] = \<const0> ;
  assign fb_we[5] = \<const0> ;
  assign fb_we[4] = \<const0> ;
  assign fb_we[3] = \<const0> ;
  assign fb_we[2] = \<const0> ;
  assign fb_we[1] = \<const0> ;
  assign fb_we[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  CPU_LCD_Controller_0_0_LCD_Controller U0
       (.blk(blk),
        .cd(cd),
        .clk(clk),
        .cs(cs),
        .fb_addr(fb_addr),
        .fb_din({fb_din[15:8],fb_din[6:0]}),
        .fb_en(fb_en),
        .res(res),
        .reset(reset),
        .scl(scl),
        .sda(sda));
endmodule

(* ORIG_REF_NAME = "LCD_Controller" *) 
module CPU_LCD_Controller_0_0_LCD_Controller
   (cs,
    fb_addr,
    scl,
    sda,
    cd,
    res,
    fb_en,
    blk,
    clk,
    reset,
    fb_din);
  output cs;
  output [15:0]fb_addr;
  output scl;
  output sda;
  output cd;
  output res;
  output fb_en;
  output blk;
  input clk;
  input reset;
  input [14:0]fb_din;

  wire DataShort;
  wire \DataShort[0]_i_1_n_0 ;
  wire \DataShort[10]_i_1_n_0 ;
  wire \DataShort[11]_i_1_n_0 ;
  wire \DataShort[12]_i_1_n_0 ;
  wire \DataShort[13]_i_1_n_0 ;
  wire \DataShort[14]_i_1_n_0 ;
  wire \DataShort[15]_i_2_n_0 ;
  wire \DataShort[15]_i_3_n_0 ;
  wire \DataShort[15]_i_4_n_0 ;
  wire \DataShort[15]_i_5_n_0 ;
  wire \DataShort[1]_i_1_n_0 ;
  wire \DataShort[2]_i_1_n_0 ;
  wire \DataShort[3]_i_1_n_0 ;
  wire \DataShort[4]_i_1_n_0 ;
  wire \DataShort[5]_i_1_n_0 ;
  wire \DataShort[6]_i_1_n_0 ;
  wire \DataShort[8]_i_1_n_0 ;
  wire \DataShort[9]_i_1_n_0 ;
  wire DataShort__0;
  wire \DataShort_reg_n_0_[0] ;
  wire \Data[0]_i_1_n_0 ;
  wire \Data[1]_i_1_n_0 ;
  wire \Data[2]_i_1_n_0 ;
  wire \Data[3]_i_1_n_0 ;
  wire \Data[4]_i_1_n_0 ;
  wire \Data[5]_i_1_n_0 ;
  wire \Data[6]_i_1_n_0 ;
  wire \Data[7]_i_2_n_0 ;
  wire \Data[7]_i_3_n_0 ;
  wire \Data[7]_i_4_n_0 ;
  wire \Data[7]_i_5_n_0 ;
  wire \Data[7]_i_6_n_0 ;
  wire \Data[7]_i_7_n_0 ;
  wire Data__0;
  wire \Data_reg_n_0_[0] ;
  wire \Data_reg_n_0_[1] ;
  wire \Data_reg_n_0_[2] ;
  wire \Data_reg_n_0_[3] ;
  wire \Data_reg_n_0_[4] ;
  wire \Data_reg_n_0_[5] ;
  wire \Data_reg_n_0_[6] ;
  wire \Data_reg_n_0_[7] ;
  wire \DelayCount[12]_i_3_n_0 ;
  wire \DelayCount[12]_i_4_n_0 ;
  wire \DelayCount[12]_i_5_n_0 ;
  wire \DelayCount[12]_i_6_n_0 ;
  wire \DelayCount[12]_i_7_n_0 ;
  wire \DelayCount[12]_i_8_n_0 ;
  wire \DelayCount[16]_i_3_n_0 ;
  wire \DelayCount[16]_i_4_n_0 ;
  wire \DelayCount[16]_i_5_n_0 ;
  wire \DelayCount[16]_i_6_n_0 ;
  wire \DelayCount[16]_i_7_n_0 ;
  wire \DelayCount[20]_i_3_n_0 ;
  wire \DelayCount[20]_i_4_n_0 ;
  wire \DelayCount[20]_i_5_n_0 ;
  wire \DelayCount[20]_i_6_n_0 ;
  wire \DelayCount[24]_i_3_n_0 ;
  wire \DelayCount[24]_i_4_n_0 ;
  wire \DelayCount[24]_i_5_n_0 ;
  wire \DelayCount[24]_i_6_n_0 ;
  wire \DelayCount[28]_i_3_n_0 ;
  wire \DelayCount[28]_i_4_n_0 ;
  wire \DelayCount[28]_i_5_n_0 ;
  wire \DelayCount[28]_i_6_n_0 ;
  wire \DelayCount[32]_i_3_n_0 ;
  wire \DelayCount[32]_i_4_n_0 ;
  wire \DelayCount[32]_i_5_n_0 ;
  wire \DelayCount[32]_i_6_n_0 ;
  wire \DelayCount[36]_i_3_n_0 ;
  wire \DelayCount[36]_i_4_n_0 ;
  wire \DelayCount[36]_i_5_n_0 ;
  wire \DelayCount[36]_i_6_n_0 ;
  wire \DelayCount[40]_i_3_n_0 ;
  wire \DelayCount[40]_i_4_n_0 ;
  wire \DelayCount[40]_i_5_n_0 ;
  wire \DelayCount[40]_i_6_n_0 ;
  wire \DelayCount[44]_i_3_n_0 ;
  wire \DelayCount[44]_i_4_n_0 ;
  wire \DelayCount[44]_i_5_n_0 ;
  wire \DelayCount[44]_i_6_n_0 ;
  wire \DelayCount[48]_i_3_n_0 ;
  wire \DelayCount[48]_i_4_n_0 ;
  wire \DelayCount[48]_i_5_n_0 ;
  wire \DelayCount[48]_i_6_n_0 ;
  wire \DelayCount[4]_i_3_n_0 ;
  wire \DelayCount[4]_i_4_n_0 ;
  wire \DelayCount[4]_i_5_n_0 ;
  wire \DelayCount[4]_i_6_n_0 ;
  wire \DelayCount[4]_i_7_n_0 ;
  wire \DelayCount[52]_i_3_n_0 ;
  wire \DelayCount[52]_i_4_n_0 ;
  wire \DelayCount[52]_i_5_n_0 ;
  wire \DelayCount[52]_i_6_n_0 ;
  wire \DelayCount[56]_i_3_n_0 ;
  wire \DelayCount[56]_i_4_n_0 ;
  wire \DelayCount[56]_i_5_n_0 ;
  wire \DelayCount[56]_i_6_n_0 ;
  wire \DelayCount[60]_i_3_n_0 ;
  wire \DelayCount[60]_i_4_n_0 ;
  wire \DelayCount[60]_i_5_n_0 ;
  wire \DelayCount[60]_i_6_n_0 ;
  wire \DelayCount[63]_i_10_n_0 ;
  wire \DelayCount[63]_i_11_n_0 ;
  wire \DelayCount[63]_i_12_n_0 ;
  wire \DelayCount[63]_i_13_n_0 ;
  wire \DelayCount[63]_i_14_n_0 ;
  wire \DelayCount[63]_i_15_n_0 ;
  wire \DelayCount[63]_i_16_n_0 ;
  wire \DelayCount[63]_i_17_n_0 ;
  wire \DelayCount[63]_i_18_n_0 ;
  wire \DelayCount[63]_i_19_n_0 ;
  wire \DelayCount[63]_i_20_n_0 ;
  wire \DelayCount[63]_i_3_n_0 ;
  wire \DelayCount[63]_i_4_n_0 ;
  wire \DelayCount[63]_i_5_n_0 ;
  wire \DelayCount[63]_i_6_n_0 ;
  wire \DelayCount[63]_i_8_n_0 ;
  wire \DelayCount[63]_i_9_n_0 ;
  wire \DelayCount[8]_i_3_n_0 ;
  wire \DelayCount[8]_i_4_n_0 ;
  wire \DelayCount[8]_i_5_n_0 ;
  wire \DelayCount[8]_i_6_n_0 ;
  wire DelayCount__0;
  wire \DelayCount_reg[12]_i_2_n_0 ;
  wire \DelayCount_reg[12]_i_2_n_1 ;
  wire \DelayCount_reg[12]_i_2_n_2 ;
  wire \DelayCount_reg[12]_i_2_n_3 ;
  wire \DelayCount_reg[12]_i_2_n_4 ;
  wire \DelayCount_reg[12]_i_2_n_5 ;
  wire \DelayCount_reg[12]_i_2_n_6 ;
  wire \DelayCount_reg[12]_i_2_n_7 ;
  wire \DelayCount_reg[16]_i_2_n_0 ;
  wire \DelayCount_reg[16]_i_2_n_1 ;
  wire \DelayCount_reg[16]_i_2_n_2 ;
  wire \DelayCount_reg[16]_i_2_n_3 ;
  wire \DelayCount_reg[16]_i_2_n_4 ;
  wire \DelayCount_reg[16]_i_2_n_5 ;
  wire \DelayCount_reg[16]_i_2_n_6 ;
  wire \DelayCount_reg[16]_i_2_n_7 ;
  wire \DelayCount_reg[20]_i_2_n_0 ;
  wire \DelayCount_reg[20]_i_2_n_1 ;
  wire \DelayCount_reg[20]_i_2_n_2 ;
  wire \DelayCount_reg[20]_i_2_n_3 ;
  wire \DelayCount_reg[20]_i_2_n_4 ;
  wire \DelayCount_reg[20]_i_2_n_5 ;
  wire \DelayCount_reg[20]_i_2_n_6 ;
  wire \DelayCount_reg[20]_i_2_n_7 ;
  wire \DelayCount_reg[24]_i_2_n_0 ;
  wire \DelayCount_reg[24]_i_2_n_1 ;
  wire \DelayCount_reg[24]_i_2_n_2 ;
  wire \DelayCount_reg[24]_i_2_n_3 ;
  wire \DelayCount_reg[24]_i_2_n_4 ;
  wire \DelayCount_reg[24]_i_2_n_5 ;
  wire \DelayCount_reg[24]_i_2_n_6 ;
  wire \DelayCount_reg[24]_i_2_n_7 ;
  wire \DelayCount_reg[28]_i_2_n_0 ;
  wire \DelayCount_reg[28]_i_2_n_1 ;
  wire \DelayCount_reg[28]_i_2_n_2 ;
  wire \DelayCount_reg[28]_i_2_n_3 ;
  wire \DelayCount_reg[28]_i_2_n_4 ;
  wire \DelayCount_reg[28]_i_2_n_5 ;
  wire \DelayCount_reg[28]_i_2_n_6 ;
  wire \DelayCount_reg[28]_i_2_n_7 ;
  wire \DelayCount_reg[32]_i_2_n_0 ;
  wire \DelayCount_reg[32]_i_2_n_1 ;
  wire \DelayCount_reg[32]_i_2_n_2 ;
  wire \DelayCount_reg[32]_i_2_n_3 ;
  wire \DelayCount_reg[32]_i_2_n_4 ;
  wire \DelayCount_reg[32]_i_2_n_5 ;
  wire \DelayCount_reg[32]_i_2_n_6 ;
  wire \DelayCount_reg[32]_i_2_n_7 ;
  wire \DelayCount_reg[36]_i_2_n_0 ;
  wire \DelayCount_reg[36]_i_2_n_1 ;
  wire \DelayCount_reg[36]_i_2_n_2 ;
  wire \DelayCount_reg[36]_i_2_n_3 ;
  wire \DelayCount_reg[36]_i_2_n_4 ;
  wire \DelayCount_reg[36]_i_2_n_5 ;
  wire \DelayCount_reg[36]_i_2_n_6 ;
  wire \DelayCount_reg[36]_i_2_n_7 ;
  wire \DelayCount_reg[40]_i_2_n_0 ;
  wire \DelayCount_reg[40]_i_2_n_1 ;
  wire \DelayCount_reg[40]_i_2_n_2 ;
  wire \DelayCount_reg[40]_i_2_n_3 ;
  wire \DelayCount_reg[40]_i_2_n_4 ;
  wire \DelayCount_reg[40]_i_2_n_5 ;
  wire \DelayCount_reg[40]_i_2_n_6 ;
  wire \DelayCount_reg[40]_i_2_n_7 ;
  wire \DelayCount_reg[44]_i_2_n_0 ;
  wire \DelayCount_reg[44]_i_2_n_1 ;
  wire \DelayCount_reg[44]_i_2_n_2 ;
  wire \DelayCount_reg[44]_i_2_n_3 ;
  wire \DelayCount_reg[44]_i_2_n_4 ;
  wire \DelayCount_reg[44]_i_2_n_5 ;
  wire \DelayCount_reg[44]_i_2_n_6 ;
  wire \DelayCount_reg[44]_i_2_n_7 ;
  wire \DelayCount_reg[48]_i_2_n_0 ;
  wire \DelayCount_reg[48]_i_2_n_1 ;
  wire \DelayCount_reg[48]_i_2_n_2 ;
  wire \DelayCount_reg[48]_i_2_n_3 ;
  wire \DelayCount_reg[48]_i_2_n_4 ;
  wire \DelayCount_reg[48]_i_2_n_5 ;
  wire \DelayCount_reg[48]_i_2_n_6 ;
  wire \DelayCount_reg[48]_i_2_n_7 ;
  wire \DelayCount_reg[4]_i_2_n_0 ;
  wire \DelayCount_reg[4]_i_2_n_1 ;
  wire \DelayCount_reg[4]_i_2_n_2 ;
  wire \DelayCount_reg[4]_i_2_n_3 ;
  wire \DelayCount_reg[4]_i_2_n_4 ;
  wire \DelayCount_reg[4]_i_2_n_5 ;
  wire \DelayCount_reg[4]_i_2_n_6 ;
  wire \DelayCount_reg[4]_i_2_n_7 ;
  wire \DelayCount_reg[52]_i_2_n_0 ;
  wire \DelayCount_reg[52]_i_2_n_1 ;
  wire \DelayCount_reg[52]_i_2_n_2 ;
  wire \DelayCount_reg[52]_i_2_n_3 ;
  wire \DelayCount_reg[52]_i_2_n_4 ;
  wire \DelayCount_reg[52]_i_2_n_5 ;
  wire \DelayCount_reg[52]_i_2_n_6 ;
  wire \DelayCount_reg[52]_i_2_n_7 ;
  wire \DelayCount_reg[56]_i_2_n_0 ;
  wire \DelayCount_reg[56]_i_2_n_1 ;
  wire \DelayCount_reg[56]_i_2_n_2 ;
  wire \DelayCount_reg[56]_i_2_n_3 ;
  wire \DelayCount_reg[56]_i_2_n_4 ;
  wire \DelayCount_reg[56]_i_2_n_5 ;
  wire \DelayCount_reg[56]_i_2_n_6 ;
  wire \DelayCount_reg[56]_i_2_n_7 ;
  wire \DelayCount_reg[60]_i_2_n_0 ;
  wire \DelayCount_reg[60]_i_2_n_1 ;
  wire \DelayCount_reg[60]_i_2_n_2 ;
  wire \DelayCount_reg[60]_i_2_n_3 ;
  wire \DelayCount_reg[60]_i_2_n_4 ;
  wire \DelayCount_reg[60]_i_2_n_5 ;
  wire \DelayCount_reg[60]_i_2_n_6 ;
  wire \DelayCount_reg[60]_i_2_n_7 ;
  wire \DelayCount_reg[63]_i_7_n_2 ;
  wire \DelayCount_reg[63]_i_7_n_3 ;
  wire \DelayCount_reg[63]_i_7_n_5 ;
  wire \DelayCount_reg[63]_i_7_n_6 ;
  wire \DelayCount_reg[63]_i_7_n_7 ;
  wire \DelayCount_reg[8]_i_2_n_0 ;
  wire \DelayCount_reg[8]_i_2_n_1 ;
  wire \DelayCount_reg[8]_i_2_n_2 ;
  wire \DelayCount_reg[8]_i_2_n_3 ;
  wire \DelayCount_reg[8]_i_2_n_4 ;
  wire \DelayCount_reg[8]_i_2_n_5 ;
  wire \DelayCount_reg[8]_i_2_n_6 ;
  wire \DelayCount_reg[8]_i_2_n_7 ;
  wire \DelayCount_reg_n_0_[0] ;
  wire \DelayCount_reg_n_0_[10] ;
  wire \DelayCount_reg_n_0_[11] ;
  wire \DelayCount_reg_n_0_[12] ;
  wire \DelayCount_reg_n_0_[13] ;
  wire \DelayCount_reg_n_0_[14] ;
  wire \DelayCount_reg_n_0_[15] ;
  wire \DelayCount_reg_n_0_[16] ;
  wire \DelayCount_reg_n_0_[17] ;
  wire \DelayCount_reg_n_0_[18] ;
  wire \DelayCount_reg_n_0_[19] ;
  wire \DelayCount_reg_n_0_[1] ;
  wire \DelayCount_reg_n_0_[20] ;
  wire \DelayCount_reg_n_0_[21] ;
  wire \DelayCount_reg_n_0_[22] ;
  wire \DelayCount_reg_n_0_[23] ;
  wire \DelayCount_reg_n_0_[24] ;
  wire \DelayCount_reg_n_0_[25] ;
  wire \DelayCount_reg_n_0_[26] ;
  wire \DelayCount_reg_n_0_[27] ;
  wire \DelayCount_reg_n_0_[28] ;
  wire \DelayCount_reg_n_0_[29] ;
  wire \DelayCount_reg_n_0_[2] ;
  wire \DelayCount_reg_n_0_[30] ;
  wire \DelayCount_reg_n_0_[31] ;
  wire \DelayCount_reg_n_0_[32] ;
  wire \DelayCount_reg_n_0_[33] ;
  wire \DelayCount_reg_n_0_[34] ;
  wire \DelayCount_reg_n_0_[35] ;
  wire \DelayCount_reg_n_0_[36] ;
  wire \DelayCount_reg_n_0_[37] ;
  wire \DelayCount_reg_n_0_[38] ;
  wire \DelayCount_reg_n_0_[39] ;
  wire \DelayCount_reg_n_0_[3] ;
  wire \DelayCount_reg_n_0_[40] ;
  wire \DelayCount_reg_n_0_[41] ;
  wire \DelayCount_reg_n_0_[42] ;
  wire \DelayCount_reg_n_0_[43] ;
  wire \DelayCount_reg_n_0_[44] ;
  wire \DelayCount_reg_n_0_[45] ;
  wire \DelayCount_reg_n_0_[46] ;
  wire \DelayCount_reg_n_0_[47] ;
  wire \DelayCount_reg_n_0_[48] ;
  wire \DelayCount_reg_n_0_[49] ;
  wire \DelayCount_reg_n_0_[4] ;
  wire \DelayCount_reg_n_0_[50] ;
  wire \DelayCount_reg_n_0_[51] ;
  wire \DelayCount_reg_n_0_[52] ;
  wire \DelayCount_reg_n_0_[53] ;
  wire \DelayCount_reg_n_0_[54] ;
  wire \DelayCount_reg_n_0_[55] ;
  wire \DelayCount_reg_n_0_[56] ;
  wire \DelayCount_reg_n_0_[57] ;
  wire \DelayCount_reg_n_0_[58] ;
  wire \DelayCount_reg_n_0_[59] ;
  wire \DelayCount_reg_n_0_[5] ;
  wire \DelayCount_reg_n_0_[60] ;
  wire \DelayCount_reg_n_0_[61] ;
  wire \DelayCount_reg_n_0_[62] ;
  wire \DelayCount_reg_n_0_[63] ;
  wire \DelayCount_reg_n_0_[6] ;
  wire \DelayCount_reg_n_0_[7] ;
  wire \DelayCount_reg_n_0_[8] ;
  wire \DelayCount_reg_n_0_[9] ;
  wire DelayStarted_i_1_n_0;
  wire DelayStarted_i_2_n_0;
  wire DelayStarted_i_3_n_0;
  wire DelayStarted_i_4_n_0;
  wire DelayStarted_i_5_n_0;
  wire DelayStarted_i_6_n_0;
  wire DelayStarted_i_7_n_0;
  wire DelayStarted_i_8_n_0;
  wire DelayStarted_i_9_n_0;
  wire DelayStarted_reg_n_0;
  wire \FSM_onehot_drawStage[2]_i_10_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_11_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_12_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_14_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_15_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_16_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_17_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_19_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_20_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_21_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_22_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_24_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_25_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_26_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_27_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_29_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_30_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_31_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_32_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_34_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_35_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_36_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_37_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_38_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_39_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_40_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_41_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_42_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_4_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_5_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_6_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_7_n_0 ;
  wire \FSM_onehot_drawStage[2]_i_9_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_10_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_11_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_12_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_2_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_3_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_4_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_5_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_6_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_7_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_8_n_0 ;
  wire \FSM_onehot_drawStage[5]_i_9_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_13_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_13_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_13_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_13_n_3 ;
  wire \FSM_onehot_drawStage_reg[2]_i_18_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_18_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_18_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_18_n_3 ;
  wire \FSM_onehot_drawStage_reg[2]_i_23_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_23_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_23_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_23_n_3 ;
  wire \FSM_onehot_drawStage_reg[2]_i_28_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_28_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_28_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_28_n_3 ;
  wire \FSM_onehot_drawStage_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_2_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_2_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_2_n_3 ;
  wire \FSM_onehot_drawStage_reg[2]_i_33_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_33_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_33_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_33_n_3 ;
  wire \FSM_onehot_drawStage_reg[2]_i_3_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_3_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_3_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_3_n_3 ;
  wire \FSM_onehot_drawStage_reg[2]_i_8_n_0 ;
  wire \FSM_onehot_drawStage_reg[2]_i_8_n_1 ;
  wire \FSM_onehot_drawStage_reg[2]_i_8_n_2 ;
  wire \FSM_onehot_drawStage_reg[2]_i_8_n_3 ;
  wire \FSM_onehot_fbStage[1]_i_1_n_0 ;
  wire \FSM_onehot_fbStage[2]_i_1_n_0 ;
  wire \FSM_onehot_fbStage[2]_i_2_n_0 ;
  wire \FSM_onehot_fbStage[2]_i_3_n_0 ;
  wire \FSM_onehot_fbStage[2]_i_4_n_0 ;
  wire \FSM_onehot_fbStage[2]_i_5_n_0 ;
  wire \FSM_onehot_fbStage[2]_i_6_n_0 ;
  wire \FSM_onehot_fbStage_reg_n_0_[2] ;
  wire \FSM_sequential_addrStage[0]_i_1_n_0 ;
  wire \FSM_sequential_addrStage[1]_i_1_n_0 ;
  wire \FSM_sequential_addrStage[2]_i_1_n_0 ;
  wire \FSM_sequential_addrStage[2]_i_2_n_0 ;
  wire \FSM_sequential_addrStage[2]_i_3_n_0 ;
  wire \FSM_sequential_addrStage[2]_i_4_n_0 ;
  wire \FSM_sequential_addrStage[2]_i_5_n_0 ;
  wire \FSM_sequential_initStage[0]_i_1_n_0 ;
  wire \FSM_sequential_initStage[3]_i_1_n_0 ;
  wire \FSM_sequential_initStage[4]_i_1_n_0 ;
  wire \FSM_sequential_initStage[5]_i_1_n_0 ;
  wire \FSM_sequential_initStage[5]_i_2_n_0 ;
  wire \FSM_sequential_initStage[6]_i_10_n_0 ;
  wire \FSM_sequential_initStage[6]_i_11_n_0 ;
  wire \FSM_sequential_initStage[6]_i_3_n_0 ;
  wire \FSM_sequential_initStage[6]_i_4_n_0 ;
  wire \FSM_sequential_initStage[6]_i_5_n_0 ;
  wire \FSM_sequential_initStage[6]_i_6_n_0 ;
  wire \FSM_sequential_initStage[6]_i_7_n_0 ;
  wire \FSM_sequential_initStage[6]_i_8_n_0 ;
  wire \FSM_sequential_initStage[6]_i_9_n_0 ;
  wire \FSM_sequential_initStage_reg_n_0_[1] ;
  wire \Pixel[12]_i_3_n_0 ;
  wire \Pixel[12]_i_4_n_0 ;
  wire \Pixel[12]_i_5_n_0 ;
  wire \Pixel[12]_i_6_n_0 ;
  wire \Pixel[16]_i_3_n_0 ;
  wire \Pixel[16]_i_4_n_0 ;
  wire \Pixel[16]_i_5_n_0 ;
  wire \Pixel[16]_i_6_n_0 ;
  wire \Pixel[20]_i_3_n_0 ;
  wire \Pixel[20]_i_4_n_0 ;
  wire \Pixel[20]_i_5_n_0 ;
  wire \Pixel[20]_i_6_n_0 ;
  wire \Pixel[24]_i_3_n_0 ;
  wire \Pixel[24]_i_4_n_0 ;
  wire \Pixel[24]_i_5_n_0 ;
  wire \Pixel[24]_i_6_n_0 ;
  wire \Pixel[28]_i_3_n_0 ;
  wire \Pixel[28]_i_4_n_0 ;
  wire \Pixel[28]_i_5_n_0 ;
  wire \Pixel[28]_i_6_n_0 ;
  wire \Pixel[32]_i_3_n_0 ;
  wire \Pixel[32]_i_4_n_0 ;
  wire \Pixel[32]_i_5_n_0 ;
  wire \Pixel[32]_i_6_n_0 ;
  wire \Pixel[36]_i_3_n_0 ;
  wire \Pixel[36]_i_4_n_0 ;
  wire \Pixel[36]_i_5_n_0 ;
  wire \Pixel[36]_i_6_n_0 ;
  wire \Pixel[40]_i_3_n_0 ;
  wire \Pixel[40]_i_4_n_0 ;
  wire \Pixel[40]_i_5_n_0 ;
  wire \Pixel[40]_i_6_n_0 ;
  wire \Pixel[44]_i_3_n_0 ;
  wire \Pixel[44]_i_4_n_0 ;
  wire \Pixel[44]_i_5_n_0 ;
  wire \Pixel[44]_i_6_n_0 ;
  wire \Pixel[48]_i_3_n_0 ;
  wire \Pixel[48]_i_4_n_0 ;
  wire \Pixel[48]_i_5_n_0 ;
  wire \Pixel[48]_i_6_n_0 ;
  wire \Pixel[4]_i_3_n_0 ;
  wire \Pixel[4]_i_4_n_0 ;
  wire \Pixel[4]_i_5_n_0 ;
  wire \Pixel[4]_i_6_n_0 ;
  wire \Pixel[52]_i_3_n_0 ;
  wire \Pixel[52]_i_4_n_0 ;
  wire \Pixel[52]_i_5_n_0 ;
  wire \Pixel[52]_i_6_n_0 ;
  wire \Pixel[56]_i_3_n_0 ;
  wire \Pixel[56]_i_4_n_0 ;
  wire \Pixel[56]_i_5_n_0 ;
  wire \Pixel[56]_i_6_n_0 ;
  wire \Pixel[60]_i_3_n_0 ;
  wire \Pixel[60]_i_4_n_0 ;
  wire \Pixel[60]_i_5_n_0 ;
  wire \Pixel[60]_i_6_n_0 ;
  wire \Pixel[63]_i_1_n_0 ;
  wire \Pixel[63]_i_4_n_0 ;
  wire \Pixel[63]_i_5_n_0 ;
  wire \Pixel[63]_i_6_n_0 ;
  wire \Pixel[8]_i_3_n_0 ;
  wire \Pixel[8]_i_4_n_0 ;
  wire \Pixel[8]_i_5_n_0 ;
  wire \Pixel[8]_i_6_n_0 ;
  wire [63:0]Pixel__0;
  wire \Pixel_reg[12]_i_2_n_0 ;
  wire \Pixel_reg[12]_i_2_n_1 ;
  wire \Pixel_reg[12]_i_2_n_2 ;
  wire \Pixel_reg[12]_i_2_n_3 ;
  wire \Pixel_reg[16]_i_2_n_0 ;
  wire \Pixel_reg[16]_i_2_n_1 ;
  wire \Pixel_reg[16]_i_2_n_2 ;
  wire \Pixel_reg[16]_i_2_n_3 ;
  wire \Pixel_reg[20]_i_2_n_0 ;
  wire \Pixel_reg[20]_i_2_n_1 ;
  wire \Pixel_reg[20]_i_2_n_2 ;
  wire \Pixel_reg[20]_i_2_n_3 ;
  wire \Pixel_reg[24]_i_2_n_0 ;
  wire \Pixel_reg[24]_i_2_n_1 ;
  wire \Pixel_reg[24]_i_2_n_2 ;
  wire \Pixel_reg[24]_i_2_n_3 ;
  wire \Pixel_reg[28]_i_2_n_0 ;
  wire \Pixel_reg[28]_i_2_n_1 ;
  wire \Pixel_reg[28]_i_2_n_2 ;
  wire \Pixel_reg[28]_i_2_n_3 ;
  wire \Pixel_reg[32]_i_2_n_0 ;
  wire \Pixel_reg[32]_i_2_n_1 ;
  wire \Pixel_reg[32]_i_2_n_2 ;
  wire \Pixel_reg[32]_i_2_n_3 ;
  wire \Pixel_reg[36]_i_2_n_0 ;
  wire \Pixel_reg[36]_i_2_n_1 ;
  wire \Pixel_reg[36]_i_2_n_2 ;
  wire \Pixel_reg[36]_i_2_n_3 ;
  wire \Pixel_reg[40]_i_2_n_0 ;
  wire \Pixel_reg[40]_i_2_n_1 ;
  wire \Pixel_reg[40]_i_2_n_2 ;
  wire \Pixel_reg[40]_i_2_n_3 ;
  wire \Pixel_reg[44]_i_2_n_0 ;
  wire \Pixel_reg[44]_i_2_n_1 ;
  wire \Pixel_reg[44]_i_2_n_2 ;
  wire \Pixel_reg[44]_i_2_n_3 ;
  wire \Pixel_reg[48]_i_2_n_0 ;
  wire \Pixel_reg[48]_i_2_n_1 ;
  wire \Pixel_reg[48]_i_2_n_2 ;
  wire \Pixel_reg[48]_i_2_n_3 ;
  wire \Pixel_reg[4]_i_2_n_0 ;
  wire \Pixel_reg[4]_i_2_n_1 ;
  wire \Pixel_reg[4]_i_2_n_2 ;
  wire \Pixel_reg[4]_i_2_n_3 ;
  wire \Pixel_reg[52]_i_2_n_0 ;
  wire \Pixel_reg[52]_i_2_n_1 ;
  wire \Pixel_reg[52]_i_2_n_2 ;
  wire \Pixel_reg[52]_i_2_n_3 ;
  wire \Pixel_reg[56]_i_2_n_0 ;
  wire \Pixel_reg[56]_i_2_n_1 ;
  wire \Pixel_reg[56]_i_2_n_2 ;
  wire \Pixel_reg[56]_i_2_n_3 ;
  wire \Pixel_reg[60]_i_2_n_0 ;
  wire \Pixel_reg[60]_i_2_n_1 ;
  wire \Pixel_reg[60]_i_2_n_2 ;
  wire \Pixel_reg[60]_i_2_n_3 ;
  wire \Pixel_reg[63]_i_3_n_2 ;
  wire \Pixel_reg[63]_i_3_n_3 ;
  wire \Pixel_reg[8]_i_2_n_0 ;
  wire \Pixel_reg[8]_i_2_n_1 ;
  wire \Pixel_reg[8]_i_2_n_2 ;
  wire \Pixel_reg[8]_i_2_n_3 ;
  wire \Pixel_reg_n_0_[0] ;
  wire \Pixel_reg_n_0_[10] ;
  wire \Pixel_reg_n_0_[11] ;
  wire \Pixel_reg_n_0_[12] ;
  wire \Pixel_reg_n_0_[13] ;
  wire \Pixel_reg_n_0_[14] ;
  wire \Pixel_reg_n_0_[15] ;
  wire \Pixel_reg_n_0_[16] ;
  wire \Pixel_reg_n_0_[17] ;
  wire \Pixel_reg_n_0_[18] ;
  wire \Pixel_reg_n_0_[19] ;
  wire \Pixel_reg_n_0_[1] ;
  wire \Pixel_reg_n_0_[20] ;
  wire \Pixel_reg_n_0_[21] ;
  wire \Pixel_reg_n_0_[22] ;
  wire \Pixel_reg_n_0_[23] ;
  wire \Pixel_reg_n_0_[24] ;
  wire \Pixel_reg_n_0_[25] ;
  wire \Pixel_reg_n_0_[26] ;
  wire \Pixel_reg_n_0_[27] ;
  wire \Pixel_reg_n_0_[28] ;
  wire \Pixel_reg_n_0_[29] ;
  wire \Pixel_reg_n_0_[2] ;
  wire \Pixel_reg_n_0_[30] ;
  wire \Pixel_reg_n_0_[31] ;
  wire \Pixel_reg_n_0_[32] ;
  wire \Pixel_reg_n_0_[33] ;
  wire \Pixel_reg_n_0_[34] ;
  wire \Pixel_reg_n_0_[35] ;
  wire \Pixel_reg_n_0_[36] ;
  wire \Pixel_reg_n_0_[37] ;
  wire \Pixel_reg_n_0_[38] ;
  wire \Pixel_reg_n_0_[39] ;
  wire \Pixel_reg_n_0_[3] ;
  wire \Pixel_reg_n_0_[40] ;
  wire \Pixel_reg_n_0_[41] ;
  wire \Pixel_reg_n_0_[42] ;
  wire \Pixel_reg_n_0_[43] ;
  wire \Pixel_reg_n_0_[44] ;
  wire \Pixel_reg_n_0_[45] ;
  wire \Pixel_reg_n_0_[46] ;
  wire \Pixel_reg_n_0_[47] ;
  wire \Pixel_reg_n_0_[48] ;
  wire \Pixel_reg_n_0_[49] ;
  wire \Pixel_reg_n_0_[4] ;
  wire \Pixel_reg_n_0_[50] ;
  wire \Pixel_reg_n_0_[51] ;
  wire \Pixel_reg_n_0_[52] ;
  wire \Pixel_reg_n_0_[53] ;
  wire \Pixel_reg_n_0_[54] ;
  wire \Pixel_reg_n_0_[55] ;
  wire \Pixel_reg_n_0_[56] ;
  wire \Pixel_reg_n_0_[57] ;
  wire \Pixel_reg_n_0_[58] ;
  wire \Pixel_reg_n_0_[59] ;
  wire \Pixel_reg_n_0_[5] ;
  wire \Pixel_reg_n_0_[60] ;
  wire \Pixel_reg_n_0_[61] ;
  wire \Pixel_reg_n_0_[62] ;
  wire \Pixel_reg_n_0_[63] ;
  wire \Pixel_reg_n_0_[6] ;
  wire \Pixel_reg_n_0_[7] ;
  wire \Pixel_reg_n_0_[8] ;
  wire \Pixel_reg_n_0_[9] ;
  wire ReadAddr;
  wire ReadAddr0;
  wire [15:0]ReadAddr__0;
  wire ReadData0;
  wire \ReadData_reg_n_0_[0] ;
  wire \ReadData_reg_n_0_[10] ;
  wire \ReadData_reg_n_0_[11] ;
  wire \ReadData_reg_n_0_[12] ;
  wire \ReadData_reg_n_0_[13] ;
  wire \ReadData_reg_n_0_[14] ;
  wire \ReadData_reg_n_0_[15] ;
  wire \ReadData_reg_n_0_[1] ;
  wire \ReadData_reg_n_0_[2] ;
  wire \ReadData_reg_n_0_[3] ;
  wire \ReadData_reg_n_0_[4] ;
  wire \ReadData_reg_n_0_[5] ;
  wire \ReadData_reg_n_0_[6] ;
  wire \ReadData_reg_n_0_[8] ;
  wire \ReadData_reg_n_0_[9] ;
  wire [2:0]addrStage__0;
  wire \backState[1]_i_1_n_0 ;
  wire \backState[1]_i_2_n_0 ;
  wire \backState[2]_i_1_n_0 ;
  wire \backState[2]_i_2_n_0 ;
  wire \backState[2]_i_3_n_0 ;
  wire \backState[2]_i_4_n_0 ;
  wire \backState[2]_i_5_n_0 ;
  wire \backState[2]_i_6_n_0 ;
  wire \backState[2]_i_7_n_0 ;
  wire \backState[2]_i_8_n_0 ;
  wire \backState_reg_n_0_[1] ;
  wire \backState_reg_n_0_[2] ;
  wire blk;
  wire blk_i_1_n_0;
  wire blk_i_2_n_0;
  wire blk_i_3_n_0;
  wire cd;
  wire cd_i_10_n_0;
  wire cd_i_11_n_0;
  wire cd_i_12_n_0;
  wire cd_i_13_n_0;
  wire cd_i_14_n_0;
  wire cd_i_15_n_0;
  wire cd_i_1_n_0;
  wire cd_i_2_n_0;
  wire cd_i_3_n_0;
  wire cd_i_4_n_0;
  wire cd_i_5_n_0;
  wire cd_i_6_n_0;
  wire cd_i_7_n_0;
  wire cd_i_8_n_0;
  wire cd_i_9_n_0;
  wire clk;
  wire cs;
  wire cycle_count;
  wire \cycle_count[0]_i_1_n_0 ;
  wire \cycle_count[10]_i_1_n_0 ;
  wire \cycle_count[11]_i_1_n_0 ;
  wire \cycle_count[12]_i_1_n_0 ;
  wire \cycle_count[12]_i_3_n_0 ;
  wire \cycle_count[12]_i_4_n_0 ;
  wire \cycle_count[12]_i_5_n_0 ;
  wire \cycle_count[12]_i_6_n_0 ;
  wire \cycle_count[13]_i_1_n_0 ;
  wire \cycle_count[14]_i_1_n_0 ;
  wire \cycle_count[15]_i_1_n_0 ;
  wire \cycle_count[16]_i_1_n_0 ;
  wire \cycle_count[16]_i_3_n_0 ;
  wire \cycle_count[16]_i_4_n_0 ;
  wire \cycle_count[16]_i_5_n_0 ;
  wire \cycle_count[16]_i_6_n_0 ;
  wire \cycle_count[17]_i_1_n_0 ;
  wire \cycle_count[18]_i_1_n_0 ;
  wire \cycle_count[19]_i_1_n_0 ;
  wire \cycle_count[1]_i_1_n_0 ;
  wire \cycle_count[20]_i_1_n_0 ;
  wire \cycle_count[20]_i_3_n_0 ;
  wire \cycle_count[20]_i_4_n_0 ;
  wire \cycle_count[20]_i_5_n_0 ;
  wire \cycle_count[20]_i_6_n_0 ;
  wire \cycle_count[21]_i_1_n_0 ;
  wire \cycle_count[22]_i_1_n_0 ;
  wire \cycle_count[23]_i_1_n_0 ;
  wire \cycle_count[24]_i_1_n_0 ;
  wire \cycle_count[24]_i_3_n_0 ;
  wire \cycle_count[24]_i_4_n_0 ;
  wire \cycle_count[24]_i_5_n_0 ;
  wire \cycle_count[24]_i_6_n_0 ;
  wire \cycle_count[25]_i_1_n_0 ;
  wire \cycle_count[26]_i_1_n_0 ;
  wire \cycle_count[27]_i_1_n_0 ;
  wire \cycle_count[28]_i_1_n_0 ;
  wire \cycle_count[28]_i_3_n_0 ;
  wire \cycle_count[28]_i_4_n_0 ;
  wire \cycle_count[28]_i_5_n_0 ;
  wire \cycle_count[28]_i_6_n_0 ;
  wire \cycle_count[29]_i_1_n_0 ;
  wire \cycle_count[2]_i_1_n_0 ;
  wire \cycle_count[30]_i_1_n_0 ;
  wire \cycle_count[31]_i_1_n_0 ;
  wire \cycle_count[32]_i_1_n_0 ;
  wire \cycle_count[32]_i_3_n_0 ;
  wire \cycle_count[32]_i_4_n_0 ;
  wire \cycle_count[32]_i_5_n_0 ;
  wire \cycle_count[32]_i_6_n_0 ;
  wire \cycle_count[33]_i_1_n_0 ;
  wire \cycle_count[34]_i_1_n_0 ;
  wire \cycle_count[35]_i_1_n_0 ;
  wire \cycle_count[36]_i_1_n_0 ;
  wire \cycle_count[36]_i_3_n_0 ;
  wire \cycle_count[36]_i_4_n_0 ;
  wire \cycle_count[36]_i_5_n_0 ;
  wire \cycle_count[36]_i_6_n_0 ;
  wire \cycle_count[37]_i_1_n_0 ;
  wire \cycle_count[38]_i_1_n_0 ;
  wire \cycle_count[39]_i_1_n_0 ;
  wire \cycle_count[3]_i_1_n_0 ;
  wire \cycle_count[40]_i_1_n_0 ;
  wire \cycle_count[40]_i_3_n_0 ;
  wire \cycle_count[40]_i_4_n_0 ;
  wire \cycle_count[40]_i_5_n_0 ;
  wire \cycle_count[40]_i_6_n_0 ;
  wire \cycle_count[41]_i_1_n_0 ;
  wire \cycle_count[42]_i_1_n_0 ;
  wire \cycle_count[43]_i_1_n_0 ;
  wire \cycle_count[44]_i_1_n_0 ;
  wire \cycle_count[44]_i_3_n_0 ;
  wire \cycle_count[44]_i_4_n_0 ;
  wire \cycle_count[44]_i_5_n_0 ;
  wire \cycle_count[44]_i_6_n_0 ;
  wire \cycle_count[45]_i_1_n_0 ;
  wire \cycle_count[46]_i_1_n_0 ;
  wire \cycle_count[47]_i_1_n_0 ;
  wire \cycle_count[48]_i_1_n_0 ;
  wire \cycle_count[48]_i_3_n_0 ;
  wire \cycle_count[48]_i_4_n_0 ;
  wire \cycle_count[48]_i_5_n_0 ;
  wire \cycle_count[48]_i_6_n_0 ;
  wire \cycle_count[49]_i_1_n_0 ;
  wire \cycle_count[4]_i_1_n_0 ;
  wire \cycle_count[4]_i_3_n_0 ;
  wire \cycle_count[4]_i_4_n_0 ;
  wire \cycle_count[4]_i_5_n_0 ;
  wire \cycle_count[4]_i_6_n_0 ;
  wire \cycle_count[50]_i_1_n_0 ;
  wire \cycle_count[51]_i_1_n_0 ;
  wire \cycle_count[52]_i_1_n_0 ;
  wire \cycle_count[52]_i_3_n_0 ;
  wire \cycle_count[52]_i_4_n_0 ;
  wire \cycle_count[52]_i_5_n_0 ;
  wire \cycle_count[52]_i_6_n_0 ;
  wire \cycle_count[53]_i_1_n_0 ;
  wire \cycle_count[54]_i_1_n_0 ;
  wire \cycle_count[55]_i_1_n_0 ;
  wire \cycle_count[56]_i_1_n_0 ;
  wire \cycle_count[56]_i_3_n_0 ;
  wire \cycle_count[56]_i_4_n_0 ;
  wire \cycle_count[56]_i_5_n_0 ;
  wire \cycle_count[56]_i_6_n_0 ;
  wire \cycle_count[57]_i_1_n_0 ;
  wire \cycle_count[58]_i_1_n_0 ;
  wire \cycle_count[59]_i_1_n_0 ;
  wire \cycle_count[5]_i_1_n_0 ;
  wire \cycle_count[60]_i_1_n_0 ;
  wire \cycle_count[60]_i_3_n_0 ;
  wire \cycle_count[60]_i_4_n_0 ;
  wire \cycle_count[60]_i_5_n_0 ;
  wire \cycle_count[60]_i_6_n_0 ;
  wire \cycle_count[61]_i_1_n_0 ;
  wire \cycle_count[62]_i_1_n_0 ;
  wire \cycle_count[63]_i_10_n_0 ;
  wire \cycle_count[63]_i_11_n_0 ;
  wire \cycle_count[63]_i_12_n_0 ;
  wire \cycle_count[63]_i_13_n_0 ;
  wire \cycle_count[63]_i_14_n_0 ;
  wire \cycle_count[63]_i_15_n_0 ;
  wire \cycle_count[63]_i_16_n_0 ;
  wire \cycle_count[63]_i_2_n_0 ;
  wire \cycle_count[63]_i_3_n_0 ;
  wire \cycle_count[63]_i_4_n_0 ;
  wire \cycle_count[63]_i_5_n_0 ;
  wire \cycle_count[63]_i_6_n_0 ;
  wire \cycle_count[63]_i_7_n_0 ;
  wire \cycle_count[63]_i_8_n_0 ;
  wire \cycle_count[6]_i_1_n_0 ;
  wire \cycle_count[7]_i_1_n_0 ;
  wire \cycle_count[8]_i_1_n_0 ;
  wire \cycle_count[8]_i_3_n_0 ;
  wire \cycle_count[8]_i_4_n_0 ;
  wire \cycle_count[8]_i_5_n_0 ;
  wire \cycle_count[8]_i_6_n_0 ;
  wire \cycle_count[9]_i_1_n_0 ;
  wire cycle_count__0;
  wire \cycle_count_reg[12]_i_2_n_0 ;
  wire \cycle_count_reg[12]_i_2_n_1 ;
  wire \cycle_count_reg[12]_i_2_n_2 ;
  wire \cycle_count_reg[12]_i_2_n_3 ;
  wire \cycle_count_reg[12]_i_2_n_4 ;
  wire \cycle_count_reg[12]_i_2_n_5 ;
  wire \cycle_count_reg[12]_i_2_n_6 ;
  wire \cycle_count_reg[12]_i_2_n_7 ;
  wire \cycle_count_reg[16]_i_2_n_0 ;
  wire \cycle_count_reg[16]_i_2_n_1 ;
  wire \cycle_count_reg[16]_i_2_n_2 ;
  wire \cycle_count_reg[16]_i_2_n_3 ;
  wire \cycle_count_reg[16]_i_2_n_4 ;
  wire \cycle_count_reg[16]_i_2_n_5 ;
  wire \cycle_count_reg[16]_i_2_n_6 ;
  wire \cycle_count_reg[16]_i_2_n_7 ;
  wire \cycle_count_reg[20]_i_2_n_0 ;
  wire \cycle_count_reg[20]_i_2_n_1 ;
  wire \cycle_count_reg[20]_i_2_n_2 ;
  wire \cycle_count_reg[20]_i_2_n_3 ;
  wire \cycle_count_reg[20]_i_2_n_4 ;
  wire \cycle_count_reg[20]_i_2_n_5 ;
  wire \cycle_count_reg[20]_i_2_n_6 ;
  wire \cycle_count_reg[20]_i_2_n_7 ;
  wire \cycle_count_reg[24]_i_2_n_0 ;
  wire \cycle_count_reg[24]_i_2_n_1 ;
  wire \cycle_count_reg[24]_i_2_n_2 ;
  wire \cycle_count_reg[24]_i_2_n_3 ;
  wire \cycle_count_reg[24]_i_2_n_4 ;
  wire \cycle_count_reg[24]_i_2_n_5 ;
  wire \cycle_count_reg[24]_i_2_n_6 ;
  wire \cycle_count_reg[24]_i_2_n_7 ;
  wire \cycle_count_reg[28]_i_2_n_0 ;
  wire \cycle_count_reg[28]_i_2_n_1 ;
  wire \cycle_count_reg[28]_i_2_n_2 ;
  wire \cycle_count_reg[28]_i_2_n_3 ;
  wire \cycle_count_reg[28]_i_2_n_4 ;
  wire \cycle_count_reg[28]_i_2_n_5 ;
  wire \cycle_count_reg[28]_i_2_n_6 ;
  wire \cycle_count_reg[28]_i_2_n_7 ;
  wire \cycle_count_reg[32]_i_2_n_0 ;
  wire \cycle_count_reg[32]_i_2_n_1 ;
  wire \cycle_count_reg[32]_i_2_n_2 ;
  wire \cycle_count_reg[32]_i_2_n_3 ;
  wire \cycle_count_reg[32]_i_2_n_4 ;
  wire \cycle_count_reg[32]_i_2_n_5 ;
  wire \cycle_count_reg[32]_i_2_n_6 ;
  wire \cycle_count_reg[32]_i_2_n_7 ;
  wire \cycle_count_reg[36]_i_2_n_0 ;
  wire \cycle_count_reg[36]_i_2_n_1 ;
  wire \cycle_count_reg[36]_i_2_n_2 ;
  wire \cycle_count_reg[36]_i_2_n_3 ;
  wire \cycle_count_reg[36]_i_2_n_4 ;
  wire \cycle_count_reg[36]_i_2_n_5 ;
  wire \cycle_count_reg[36]_i_2_n_6 ;
  wire \cycle_count_reg[36]_i_2_n_7 ;
  wire \cycle_count_reg[40]_i_2_n_0 ;
  wire \cycle_count_reg[40]_i_2_n_1 ;
  wire \cycle_count_reg[40]_i_2_n_2 ;
  wire \cycle_count_reg[40]_i_2_n_3 ;
  wire \cycle_count_reg[40]_i_2_n_4 ;
  wire \cycle_count_reg[40]_i_2_n_5 ;
  wire \cycle_count_reg[40]_i_2_n_6 ;
  wire \cycle_count_reg[40]_i_2_n_7 ;
  wire \cycle_count_reg[44]_i_2_n_0 ;
  wire \cycle_count_reg[44]_i_2_n_1 ;
  wire \cycle_count_reg[44]_i_2_n_2 ;
  wire \cycle_count_reg[44]_i_2_n_3 ;
  wire \cycle_count_reg[44]_i_2_n_4 ;
  wire \cycle_count_reg[44]_i_2_n_5 ;
  wire \cycle_count_reg[44]_i_2_n_6 ;
  wire \cycle_count_reg[44]_i_2_n_7 ;
  wire \cycle_count_reg[48]_i_2_n_0 ;
  wire \cycle_count_reg[48]_i_2_n_1 ;
  wire \cycle_count_reg[48]_i_2_n_2 ;
  wire \cycle_count_reg[48]_i_2_n_3 ;
  wire \cycle_count_reg[48]_i_2_n_4 ;
  wire \cycle_count_reg[48]_i_2_n_5 ;
  wire \cycle_count_reg[48]_i_2_n_6 ;
  wire \cycle_count_reg[48]_i_2_n_7 ;
  wire \cycle_count_reg[4]_i_2_n_0 ;
  wire \cycle_count_reg[4]_i_2_n_1 ;
  wire \cycle_count_reg[4]_i_2_n_2 ;
  wire \cycle_count_reg[4]_i_2_n_3 ;
  wire \cycle_count_reg[4]_i_2_n_4 ;
  wire \cycle_count_reg[4]_i_2_n_5 ;
  wire \cycle_count_reg[4]_i_2_n_6 ;
  wire \cycle_count_reg[4]_i_2_n_7 ;
  wire \cycle_count_reg[52]_i_2_n_0 ;
  wire \cycle_count_reg[52]_i_2_n_1 ;
  wire \cycle_count_reg[52]_i_2_n_2 ;
  wire \cycle_count_reg[52]_i_2_n_3 ;
  wire \cycle_count_reg[52]_i_2_n_4 ;
  wire \cycle_count_reg[52]_i_2_n_5 ;
  wire \cycle_count_reg[52]_i_2_n_6 ;
  wire \cycle_count_reg[52]_i_2_n_7 ;
  wire \cycle_count_reg[56]_i_2_n_0 ;
  wire \cycle_count_reg[56]_i_2_n_1 ;
  wire \cycle_count_reg[56]_i_2_n_2 ;
  wire \cycle_count_reg[56]_i_2_n_3 ;
  wire \cycle_count_reg[56]_i_2_n_4 ;
  wire \cycle_count_reg[56]_i_2_n_5 ;
  wire \cycle_count_reg[56]_i_2_n_6 ;
  wire \cycle_count_reg[56]_i_2_n_7 ;
  wire \cycle_count_reg[60]_i_2_n_0 ;
  wire \cycle_count_reg[60]_i_2_n_1 ;
  wire \cycle_count_reg[60]_i_2_n_2 ;
  wire \cycle_count_reg[60]_i_2_n_3 ;
  wire \cycle_count_reg[60]_i_2_n_4 ;
  wire \cycle_count_reg[60]_i_2_n_5 ;
  wire \cycle_count_reg[60]_i_2_n_6 ;
  wire \cycle_count_reg[60]_i_2_n_7 ;
  wire \cycle_count_reg[63]_i_9_n_2 ;
  wire \cycle_count_reg[63]_i_9_n_3 ;
  wire \cycle_count_reg[63]_i_9_n_5 ;
  wire \cycle_count_reg[63]_i_9_n_6 ;
  wire \cycle_count_reg[63]_i_9_n_7 ;
  wire \cycle_count_reg[8]_i_2_n_0 ;
  wire \cycle_count_reg[8]_i_2_n_1 ;
  wire \cycle_count_reg[8]_i_2_n_2 ;
  wire \cycle_count_reg[8]_i_2_n_3 ;
  wire \cycle_count_reg[8]_i_2_n_4 ;
  wire \cycle_count_reg[8]_i_2_n_5 ;
  wire \cycle_count_reg[8]_i_2_n_6 ;
  wire \cycle_count_reg[8]_i_2_n_7 ;
  wire \cycle_count_reg_n_0_[0] ;
  wire \cycle_count_reg_n_0_[10] ;
  wire \cycle_count_reg_n_0_[11] ;
  wire \cycle_count_reg_n_0_[12] ;
  wire \cycle_count_reg_n_0_[13] ;
  wire \cycle_count_reg_n_0_[14] ;
  wire \cycle_count_reg_n_0_[15] ;
  wire \cycle_count_reg_n_0_[16] ;
  wire \cycle_count_reg_n_0_[17] ;
  wire \cycle_count_reg_n_0_[18] ;
  wire \cycle_count_reg_n_0_[19] ;
  wire \cycle_count_reg_n_0_[1] ;
  wire \cycle_count_reg_n_0_[20] ;
  wire \cycle_count_reg_n_0_[21] ;
  wire \cycle_count_reg_n_0_[22] ;
  wire \cycle_count_reg_n_0_[23] ;
  wire \cycle_count_reg_n_0_[24] ;
  wire \cycle_count_reg_n_0_[25] ;
  wire \cycle_count_reg_n_0_[26] ;
  wire \cycle_count_reg_n_0_[27] ;
  wire \cycle_count_reg_n_0_[28] ;
  wire \cycle_count_reg_n_0_[29] ;
  wire \cycle_count_reg_n_0_[2] ;
  wire \cycle_count_reg_n_0_[30] ;
  wire \cycle_count_reg_n_0_[31] ;
  wire \cycle_count_reg_n_0_[32] ;
  wire \cycle_count_reg_n_0_[33] ;
  wire \cycle_count_reg_n_0_[34] ;
  wire \cycle_count_reg_n_0_[35] ;
  wire \cycle_count_reg_n_0_[36] ;
  wire \cycle_count_reg_n_0_[37] ;
  wire \cycle_count_reg_n_0_[38] ;
  wire \cycle_count_reg_n_0_[39] ;
  wire \cycle_count_reg_n_0_[3] ;
  wire \cycle_count_reg_n_0_[40] ;
  wire \cycle_count_reg_n_0_[41] ;
  wire \cycle_count_reg_n_0_[42] ;
  wire \cycle_count_reg_n_0_[43] ;
  wire \cycle_count_reg_n_0_[44] ;
  wire \cycle_count_reg_n_0_[45] ;
  wire \cycle_count_reg_n_0_[46] ;
  wire \cycle_count_reg_n_0_[47] ;
  wire \cycle_count_reg_n_0_[48] ;
  wire \cycle_count_reg_n_0_[49] ;
  wire \cycle_count_reg_n_0_[4] ;
  wire \cycle_count_reg_n_0_[50] ;
  wire \cycle_count_reg_n_0_[51] ;
  wire \cycle_count_reg_n_0_[52] ;
  wire \cycle_count_reg_n_0_[53] ;
  wire \cycle_count_reg_n_0_[54] ;
  wire \cycle_count_reg_n_0_[55] ;
  wire \cycle_count_reg_n_0_[56] ;
  wire \cycle_count_reg_n_0_[57] ;
  wire \cycle_count_reg_n_0_[58] ;
  wire \cycle_count_reg_n_0_[59] ;
  wire \cycle_count_reg_n_0_[5] ;
  wire \cycle_count_reg_n_0_[60] ;
  wire \cycle_count_reg_n_0_[61] ;
  wire \cycle_count_reg_n_0_[62] ;
  wire \cycle_count_reg_n_0_[63] ;
  wire \cycle_count_reg_n_0_[6] ;
  wire \cycle_count_reg_n_0_[7] ;
  wire \cycle_count_reg_n_0_[8] ;
  wire \cycle_count_reg_n_0_[9] ;
  wire data0;
  wire data1;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data9;
  wire drawStage;
  wire [5:1]drawStage__0;
  wire [2:1]drawStage__1;
  wire [15:0]fb_addr;
  wire \fb_addr[15]_i_10_n_0 ;
  wire \fb_addr[15]_i_11_n_0 ;
  wire \fb_addr[15]_i_12_n_0 ;
  wire \fb_addr[15]_i_13_n_0 ;
  wire \fb_addr[15]_i_14_n_0 ;
  wire \fb_addr[15]_i_15_n_0 ;
  wire \fb_addr[15]_i_16_n_0 ;
  wire \fb_addr[15]_i_17_n_0 ;
  wire \fb_addr[15]_i_18_n_0 ;
  wire \fb_addr[15]_i_19_n_0 ;
  wire \fb_addr[15]_i_1_n_0 ;
  wire \fb_addr[15]_i_20_n_0 ;
  wire \fb_addr[15]_i_21_n_0 ;
  wire \fb_addr[15]_i_2_n_0 ;
  wire \fb_addr[15]_i_3_n_0 ;
  wire \fb_addr[15]_i_4_n_0 ;
  wire \fb_addr[15]_i_5_n_0 ;
  wire \fb_addr[15]_i_6_n_0 ;
  wire \fb_addr[15]_i_7_n_0 ;
  wire \fb_addr[15]_i_8_n_0 ;
  wire \fb_addr[15]_i_9_n_0 ;
  wire [14:0]fb_din;
  wire fb_en;
  wire fb_en_i_1_n_0;
  wire fb_en_i_2_n_0;
  wire fb_en_i_3_n_0;
  wire fb_en_i_4_n_0;
  wire fb_en_i_5_n_0;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g1_b0_n_0;
  wire g1_b3_n_0;
  wire g1_b4_n_0;
  wire g1_b5_n_0;
  wire [63:1]in4;
  wire initStage;
  wire [6:0]initStage__0;
  wire [6:1]initStage__1;
  wire [63:0]p_0_in;
  wire res;
  wire res_i_1_n_0;
  wire res_i_2_n_0;
  wire reset;
  wire scl;
  wire scl_i_10_n_0;
  wire scl_i_11_n_0;
  wire scl_i_12_n_0;
  wire scl_i_13_n_0;
  wire scl_i_14_n_0;
  wire scl_i_1_n_0;
  wire scl_i_2_n_0;
  wire scl_i_3_n_0;
  wire scl_i_4_n_0;
  wire scl_i_5_n_0;
  wire scl_i_6_n_0;
  wire scl_i_7_n_0;
  wire scl_i_8_n_0;
  wire scl_i_9_n_0;
  wire sda;
  wire sda_i_10_n_0;
  wire sda_i_11_n_0;
  wire sda_i_12_n_0;
  wire sda_i_1_n_0;
  wire sda_i_2_n_0;
  wire sda_i_3_n_0;
  wire sda_i_7_n_0;
  wire sda_i_8_n_0;
  wire sda_i_9_n_0;
  wire sda_reg_i_4_n_0;
  wire sda_reg_i_5_n_0;
  wire sda_reg_i_6_n_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_10_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_13_n_0 ;
  wire \state[2]_i_14_n_0 ;
  wire \state[2]_i_15_n_0 ;
  wire \state[2]_i_16_n_0 ;
  wire \state[2]_i_17_n_0 ;
  wire \state[2]_i_18_n_0 ;
  wire \state[2]_i_19_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_20_n_0 ;
  wire \state[2]_i_21_n_0 ;
  wire \state[2]_i_22_n_0 ;
  wire \state[2]_i_23_n_0 ;
  wire \state[2]_i_24_n_0 ;
  wire \state[2]_i_25_n_0 ;
  wire \state[2]_i_26_n_0 ;
  wire \state[2]_i_27_n_0 ;
  wire \state[2]_i_28_n_0 ;
  wire \state[2]_i_29_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_30_n_0 ;
  wire \state[2]_i_31_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[2]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [63:0]writeStage;
  wire \writeStage[0]_i_1_n_0 ;
  wire \writeStage[1]_i_1_n_0 ;
  wire \writeStage[2]_i_1_n_0 ;
  wire \writeStage[2]_i_2_n_0 ;
  wire \writeStage[2]_i_3_n_0 ;
  wire \writeStage[3]_i_1_n_0 ;
  wire \writeStage[4]_i_1_n_0 ;
  wire \writeStage[5]_i_1_n_0 ;
  wire \writeStage[63]_i_10_n_0 ;
  wire \writeStage[63]_i_1_n_0 ;
  wire \writeStage[63]_i_2_n_0 ;
  wire \writeStage[63]_i_3_n_0 ;
  wire \writeStage[63]_i_4_n_0 ;
  wire \writeStage[63]_i_5_n_0 ;
  wire \writeStage[63]_i_6_n_0 ;
  wire \writeStage[63]_i_7_n_0 ;
  wire \writeStage[63]_i_8_n_0 ;
  wire \writeStage[63]_i_9_n_0 ;
  wire \writeStage_inferred__1/writeStage[0]_i_3_n_0 ;
  wire \writeStage_inferred__1/writeStage[3]_i_3_n_0 ;
  wire \writeStage_inferred__1/writeStage[4]_i_3_n_0 ;
  wire \writeStage_inferred__1/writeStage[5]_i_2_n_0 ;
  wire \writeStage_inferred__2/writeStage[0]_i_2_n_0 ;
  wire \writeStage_inferred__2/writeStage[3]_i_2_n_0 ;
  wire \writeStage_inferred__2/writeStage[4]_i_2_n_0 ;
  wire [3:2]\NLW_DelayCount_reg[63]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_DelayCount_reg[63]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_drawStage_reg[2]_i_8_O_UNCONNECTED ;
  wire [3:2]\NLW_Pixel_reg[63]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_Pixel_reg[63]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_cycle_count_reg[63]_i_9_CO_UNCONNECTED ;
  wire [3:3]\NLW_cycle_count_reg[63]_i_9_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hA8FFA800)) 
    \DataShort[0]_i_1 
       (.I0(addrStage__0[1]),
        .I1(addrStage__0[2]),
        .I2(addrStage__0[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\ReadData_reg_n_0_[0] ),
        .O(\DataShort[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DataShort[10]_i_1 
       (.I0(\ReadData_reg_n_0_[10] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\DataShort[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DataShort[11]_i_1 
       (.I0(\ReadData_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\DataShort[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DataShort[12]_i_1 
       (.I0(\ReadData_reg_n_0_[12] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\DataShort[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DataShort[13]_i_1 
       (.I0(\ReadData_reg_n_0_[13] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\DataShort[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DataShort[14]_i_1 
       (.I0(\ReadData_reg_n_0_[14] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\DataShort[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \DataShort[15]_i_1 
       (.I0(\FSM_sequential_addrStage[2]_i_3_n_0 ),
        .I1(\DataShort[15]_i_3_n_0 ),
        .I2(\DataShort[15]_i_4_n_0 ),
        .I3(\cycle_count_reg_n_0_[4] ),
        .I4(\cycle_count_reg_n_0_[5] ),
        .I5(\fb_addr[15]_i_3_n_0 ),
        .O(DataShort__0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DataShort[15]_i_2 
       (.I0(\ReadData_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\DataShort[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DataShort[15]_i_3 
       (.I0(\FSM_onehot_drawStage[5]_i_12_n_0 ),
        .I1(\cycle_count[63]_i_4_n_0 ),
        .I2(\cycle_count_reg_n_0_[63] ),
        .I3(\cycle_count_reg_n_0_[61] ),
        .I4(\cycle_count_reg_n_0_[62] ),
        .O(\DataShort[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h939300FFFFFFFFFF)) 
    \DataShort[15]_i_4 
       (.I0(addrStage__0[0]),
        .I1(addrStage__0[1]),
        .I2(addrStage__0[2]),
        .I3(DataShort),
        .I4(\state_reg_n_0_[1] ),
        .I5(\DataShort[15]_i_5_n_0 ),
        .O(\DataShort[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DataShort[15]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\DataShort[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DataShort[1]_i_1 
       (.I0(addrStage__0[0]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\ReadData_reg_n_0_[1] ),
        .O(\DataShort[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8FFA800)) 
    \DataShort[2]_i_1 
       (.I0(addrStage__0[1]),
        .I1(addrStage__0[2]),
        .I2(addrStage__0[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\ReadData_reg_n_0_[2] ),
        .O(\DataShort[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8FFA800)) 
    \DataShort[3]_i_1 
       (.I0(addrStage__0[1]),
        .I1(addrStage__0[2]),
        .I2(addrStage__0[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\ReadData_reg_n_0_[3] ),
        .O(\DataShort[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \DataShort[4]_i_1 
       (.I0(addrStage__0[0]),
        .I1(addrStage__0[2]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\ReadData_reg_n_0_[4] ),
        .O(\DataShort[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \DataShort[5]_i_1 
       (.I0(addrStage__0[0]),
        .I1(\state_reg_n_0_[1] ),
        .I2(\ReadData_reg_n_0_[5] ),
        .O(\DataShort[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \DataShort[6]_i_1 
       (.I0(addrStage__0[2]),
        .I1(addrStage__0[1]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\ReadData_reg_n_0_[6] ),
        .O(\DataShort[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \DataShort[8]_i_1 
       (.I0(addrStage__0[0]),
        .I1(addrStage__0[2]),
        .I2(\state_reg_n_0_[1] ),
        .I3(\ReadData_reg_n_0_[8] ),
        .O(\DataShort[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DataShort[9]_i_1 
       (.I0(\ReadData_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\DataShort[9]_i_1_n_0 ));
  FDCE \DataShort_reg[0] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[0]_i_1_n_0 ),
        .Q(\DataShort_reg_n_0_[0] ));
  FDCE \DataShort_reg[10] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[10]_i_1_n_0 ),
        .Q(data5));
  FDCE \DataShort_reg[11] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[11]_i_1_n_0 ),
        .Q(data4));
  FDCE \DataShort_reg[12] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[12]_i_1_n_0 ),
        .Q(data3));
  FDCE \DataShort_reg[13] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[13]_i_1_n_0 ),
        .Q(data2));
  FDCE \DataShort_reg[14] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[14]_i_1_n_0 ),
        .Q(data1));
  FDCE \DataShort_reg[15] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[15]_i_2_n_0 ),
        .Q(data0));
  FDCE \DataShort_reg[1] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[1]_i_1_n_0 ),
        .Q(data14));
  FDCE \DataShort_reg[2] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[2]_i_1_n_0 ),
        .Q(data13));
  FDCE \DataShort_reg[3] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[3]_i_1_n_0 ),
        .Q(data12));
  FDCE \DataShort_reg[4] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[4]_i_1_n_0 ),
        .Q(data11));
  FDCE \DataShort_reg[5] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[5]_i_1_n_0 ),
        .Q(data10));
  FDCE \DataShort_reg[6] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[6]_i_1_n_0 ),
        .Q(data9));
  FDCE \DataShort_reg[8] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[8]_i_1_n_0 ),
        .Q(data7));
  FDCE \DataShort_reg[9] 
       (.C(clk),
        .CE(DataShort__0),
        .CLR(reset),
        .D(\DataShort[9]_i_1_n_0 ),
        .Q(data6));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \Data[0]_i_1 
       (.I0(addrStage__0[2]),
        .I1(addrStage__0[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(g1_b0_n_0),
        .I4(initStage__0[6]),
        .I5(g0_b0_n_0),
        .O(\Data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h4474)) 
    \Data[1]_i_1 
       (.I0(addrStage__0[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(g0_b1_n_0),
        .I3(initStage__0[6]),
        .O(\Data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \Data[2]_i_1 
       (.I0(addrStage__0[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(g0_b2_n_0),
        .I3(initStage__0[6]),
        .O(\Data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \Data[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(g0_b3_n_0),
        .I2(initStage__0[6]),
        .I3(g1_b3_n_0),
        .O(\Data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \Data[4]_i_1 
       (.I0(g0_b4_n_0),
        .I1(initStage__0[6]),
        .I2(g1_b4_n_0),
        .I3(\state_reg_n_0_[2] ),
        .O(\Data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \Data[5]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(g0_b5_n_0),
        .I2(initStage__0[6]),
        .I3(g1_b5_n_0),
        .O(\Data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Data[6]_i_1 
       (.I0(initStage__0[6]),
        .I1(g0_b6_n_0),
        .I2(\state_reg_n_0_[2] ),
        .O(\Data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B11B11B1)) 
    \Data[7]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\writeStage[63]_i_3_n_0 ),
        .I2(addrStage__0[0]),
        .I3(addrStage__0[1]),
        .I4(addrStage__0[2]),
        .I5(\Data[7]_i_3_n_0 ),
        .O(Data__0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Data[7]_i_2 
       (.I0(initStage__0[6]),
        .I1(g0_b7_n_0),
        .I2(\state_reg_n_0_[2] ),
        .O(\Data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \Data[7]_i_3 
       (.I0(\FSM_sequential_initStage[6]_i_5_n_0 ),
        .I1(\Data[7]_i_4_n_0 ),
        .I2(cd_i_5_n_0),
        .I3(\FSM_onehot_drawStage[5]_i_3_n_0 ),
        .I4(\Data[7]_i_5_n_0 ),
        .I5(\Data[7]_i_6_n_0 ),
        .O(\Data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Data[7]_i_4 
       (.I0(\fb_addr[15]_i_13_n_0 ),
        .I1(\FSM_onehot_fbStage[2]_i_5_n_0 ),
        .I2(cd_i_14_n_0),
        .I3(cd_i_15_n_0),
        .I4(\FSM_sequential_addrStage[2]_i_5_n_0 ),
        .I5(\fb_addr[15]_i_20_n_0 ),
        .O(\Data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \Data[7]_i_5 
       (.I0(\cycle_count_reg_n_0_[62] ),
        .I1(\cycle_count_reg_n_0_[61] ),
        .I2(\cycle_count_reg_n_0_[63] ),
        .I3(\cycle_count[63]_i_4_n_0 ),
        .I4(\FSM_onehot_drawStage[5]_i_12_n_0 ),
        .I5(\Data[7]_i_7_n_0 ),
        .O(\Data[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Data[7]_i_6 
       (.I0(\cycle_count_reg_n_0_[4] ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(cd_i_12_n_0),
        .I3(cd_i_8_n_0),
        .I4(\FSM_onehot_drawStage[5]_i_9_n_0 ),
        .O(\Data[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Data[7]_i_7 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\Data[7]_i_7_n_0 ));
  FDCE \Data_reg[0] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[0]_i_1_n_0 ),
        .Q(\Data_reg_n_0_[0] ));
  FDCE \Data_reg[1] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[1]_i_1_n_0 ),
        .Q(\Data_reg_n_0_[1] ));
  FDCE \Data_reg[2] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[2]_i_1_n_0 ),
        .Q(\Data_reg_n_0_[2] ));
  FDCE \Data_reg[3] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[3]_i_1_n_0 ),
        .Q(\Data_reg_n_0_[3] ));
  FDCE \Data_reg[4] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[4]_i_1_n_0 ),
        .Q(\Data_reg_n_0_[4] ));
  FDCE \Data_reg[5] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[5]_i_1_n_0 ),
        .Q(\Data_reg_n_0_[5] ));
  FDCE \Data_reg[6] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[6]_i_1_n_0 ),
        .Q(\Data_reg_n_0_[6] ));
  FDCE \Data_reg[7] 
       (.C(clk),
        .CE(Data__0),
        .CLR(reset),
        .D(\Data[7]_i_2_n_0 ),
        .Q(\Data_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \DelayCount[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\DelayCount_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[10]_i_1 
       (.I0(\DelayCount_reg[12]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[11]_i_1 
       (.I0(\DelayCount_reg[12]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[12]_i_1 
       (.I0(\DelayCount_reg[12]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[12]));
  LUT2 #(
    .INIT(4'hB)) 
    \DelayCount[12]_i_3 
       (.I0(\DelayCount_reg_n_0_[11] ),
        .I1(DelayStarted_reg_n_0),
        .O(\DelayCount[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DelayCount[12]_i_4 
       (.I0(DelayStarted_reg_n_0),
        .I1(\DelayCount_reg_n_0_[8] ),
        .O(\DelayCount[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \DelayCount[12]_i_5 
       (.I0(DelayStarted_reg_n_0),
        .I1(\DelayCount_reg_n_0_[11] ),
        .I2(\DelayCount_reg_n_0_[12] ),
        .O(\DelayCount[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \DelayCount[12]_i_6 
       (.I0(\DelayCount_reg_n_0_[11] ),
        .I1(DelayStarted_reg_n_0),
        .I2(\DelayCount_reg_n_0_[10] ),
        .O(\DelayCount[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[12]_i_7 
       (.I0(\DelayCount_reg_n_0_[9] ),
        .I1(\DelayCount_reg_n_0_[10] ),
        .O(\DelayCount[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h87)) 
    \DelayCount[12]_i_8 
       (.I0(\DelayCount_reg_n_0_[8] ),
        .I1(DelayStarted_reg_n_0),
        .I2(\DelayCount_reg_n_0_[9] ),
        .O(\DelayCount[12]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[13]_i_1 
       (.I0(\DelayCount_reg[16]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[14]_i_1 
       (.I0(\DelayCount_reg[16]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[15]_i_1 
       (.I0(\DelayCount_reg[16]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[16]_i_1 
       (.I0(\DelayCount_reg[16]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[16]));
  LUT2 #(
    .INIT(4'hB)) 
    \DelayCount[16]_i_3 
       (.I0(\DelayCount_reg_n_0_[13] ),
        .I1(DelayStarted_reg_n_0),
        .O(\DelayCount[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[16]_i_4 
       (.I0(\DelayCount_reg_n_0_[15] ),
        .I1(\DelayCount_reg_n_0_[16] ),
        .O(\DelayCount[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[16]_i_5 
       (.I0(\DelayCount_reg_n_0_[14] ),
        .I1(\DelayCount_reg_n_0_[15] ),
        .O(\DelayCount[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \DelayCount[16]_i_6 
       (.I0(DelayStarted_reg_n_0),
        .I1(\DelayCount_reg_n_0_[13] ),
        .I2(\DelayCount_reg_n_0_[14] ),
        .O(\DelayCount[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \DelayCount[16]_i_7 
       (.I0(\DelayCount_reg_n_0_[13] ),
        .I1(DelayStarted_reg_n_0),
        .I2(\DelayCount_reg_n_0_[12] ),
        .O(\DelayCount[16]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[17]_i_1 
       (.I0(\DelayCount_reg[20]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[18]_i_1 
       (.I0(\DelayCount_reg[20]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[19]_i_1 
       (.I0(\DelayCount_reg[20]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[19]));
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \DelayCount[1]_i_1 
       (.I0(initStage__0[6]),
        .I1(initStage__0[2]),
        .I2(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\DelayCount_reg[4]_i_2_n_7 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[20]_i_1 
       (.I0(\DelayCount_reg[20]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[20]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[20]_i_3 
       (.I0(\DelayCount_reg_n_0_[19] ),
        .I1(\DelayCount_reg_n_0_[20] ),
        .O(\DelayCount[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[20]_i_4 
       (.I0(\DelayCount_reg_n_0_[18] ),
        .I1(\DelayCount_reg_n_0_[19] ),
        .O(\DelayCount[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[20]_i_5 
       (.I0(\DelayCount_reg_n_0_[17] ),
        .I1(\DelayCount_reg_n_0_[18] ),
        .O(\DelayCount[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[20]_i_6 
       (.I0(\DelayCount_reg_n_0_[16] ),
        .I1(\DelayCount_reg_n_0_[17] ),
        .O(\DelayCount[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[21]_i_1 
       (.I0(\DelayCount_reg[24]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[22]_i_1 
       (.I0(\DelayCount_reg[24]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[23]_i_1 
       (.I0(\DelayCount_reg[24]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[24]_i_1 
       (.I0(\DelayCount_reg[24]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[24]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[24]_i_3 
       (.I0(\DelayCount_reg_n_0_[23] ),
        .I1(\DelayCount_reg_n_0_[24] ),
        .O(\DelayCount[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[24]_i_4 
       (.I0(\DelayCount_reg_n_0_[22] ),
        .I1(\DelayCount_reg_n_0_[23] ),
        .O(\DelayCount[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[24]_i_5 
       (.I0(\DelayCount_reg_n_0_[21] ),
        .I1(\DelayCount_reg_n_0_[22] ),
        .O(\DelayCount[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[24]_i_6 
       (.I0(\DelayCount_reg_n_0_[20] ),
        .I1(\DelayCount_reg_n_0_[21] ),
        .O(\DelayCount[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[25]_i_1 
       (.I0(\DelayCount_reg[28]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[26]_i_1 
       (.I0(\DelayCount_reg[28]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[27]_i_1 
       (.I0(\DelayCount_reg[28]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[28]_i_1 
       (.I0(\DelayCount_reg[28]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[28]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[28]_i_3 
       (.I0(\DelayCount_reg_n_0_[27] ),
        .I1(\DelayCount_reg_n_0_[28] ),
        .O(\DelayCount[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[28]_i_4 
       (.I0(\DelayCount_reg_n_0_[26] ),
        .I1(\DelayCount_reg_n_0_[27] ),
        .O(\DelayCount[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[28]_i_5 
       (.I0(\DelayCount_reg_n_0_[25] ),
        .I1(\DelayCount_reg_n_0_[26] ),
        .O(\DelayCount[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[28]_i_6 
       (.I0(\DelayCount_reg_n_0_[24] ),
        .I1(\DelayCount_reg_n_0_[25] ),
        .O(\DelayCount[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[29]_i_1 
       (.I0(\DelayCount_reg[32]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hDDF0)) 
    \DelayCount[2]_i_1 
       (.I0(initStage__0[2]),
        .I1(initStage__0[6]),
        .I2(\DelayCount_reg[4]_i_2_n_6 ),
        .I3(\state_reg_n_0_[0] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[30]_i_1 
       (.I0(\DelayCount_reg[32]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[31]_i_1 
       (.I0(\DelayCount_reg[32]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[32]_i_1 
       (.I0(\DelayCount_reg[32]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[32]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[32]_i_3 
       (.I0(\DelayCount_reg_n_0_[31] ),
        .I1(\DelayCount_reg_n_0_[32] ),
        .O(\DelayCount[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[32]_i_4 
       (.I0(\DelayCount_reg_n_0_[30] ),
        .I1(\DelayCount_reg_n_0_[31] ),
        .O(\DelayCount[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[32]_i_5 
       (.I0(\DelayCount_reg_n_0_[29] ),
        .I1(\DelayCount_reg_n_0_[30] ),
        .O(\DelayCount[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[32]_i_6 
       (.I0(\DelayCount_reg_n_0_[28] ),
        .I1(\DelayCount_reg_n_0_[29] ),
        .O(\DelayCount[32]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[33]_i_1 
       (.I0(\DelayCount_reg[36]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[34]_i_1 
       (.I0(\DelayCount_reg[36]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[35]_i_1 
       (.I0(\DelayCount_reg[36]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[36]_i_1 
       (.I0(\DelayCount_reg[36]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[36]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[36]_i_3 
       (.I0(\DelayCount_reg_n_0_[35] ),
        .I1(\DelayCount_reg_n_0_[36] ),
        .O(\DelayCount[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[36]_i_4 
       (.I0(\DelayCount_reg_n_0_[34] ),
        .I1(\DelayCount_reg_n_0_[35] ),
        .O(\DelayCount[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[36]_i_5 
       (.I0(\DelayCount_reg_n_0_[33] ),
        .I1(\DelayCount_reg_n_0_[34] ),
        .O(\DelayCount[36]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[36]_i_6 
       (.I0(\DelayCount_reg_n_0_[32] ),
        .I1(\DelayCount_reg_n_0_[33] ),
        .O(\DelayCount[36]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[37]_i_1 
       (.I0(\DelayCount_reg[40]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[38]_i_1 
       (.I0(\DelayCount_reg[40]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[39]_i_1 
       (.I0(\DelayCount_reg[40]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0DFF0D00)) 
    \DelayCount[3]_i_1 
       (.I0(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I1(initStage__0[2]),
        .I2(initStage__0[6]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\DelayCount_reg[4]_i_2_n_5 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[40]_i_1 
       (.I0(\DelayCount_reg[40]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[40]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[40]_i_3 
       (.I0(\DelayCount_reg_n_0_[39] ),
        .I1(\DelayCount_reg_n_0_[40] ),
        .O(\DelayCount[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[40]_i_4 
       (.I0(\DelayCount_reg_n_0_[38] ),
        .I1(\DelayCount_reg_n_0_[39] ),
        .O(\DelayCount[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[40]_i_5 
       (.I0(\DelayCount_reg_n_0_[37] ),
        .I1(\DelayCount_reg_n_0_[38] ),
        .O(\DelayCount[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[40]_i_6 
       (.I0(\DelayCount_reg_n_0_[36] ),
        .I1(\DelayCount_reg_n_0_[37] ),
        .O(\DelayCount[40]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[41]_i_1 
       (.I0(\DelayCount_reg[44]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[42]_i_1 
       (.I0(\DelayCount_reg[44]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[43]_i_1 
       (.I0(\DelayCount_reg[44]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[44]_i_1 
       (.I0(\DelayCount_reg[44]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[44]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[44]_i_3 
       (.I0(\DelayCount_reg_n_0_[43] ),
        .I1(\DelayCount_reg_n_0_[44] ),
        .O(\DelayCount[44]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[44]_i_4 
       (.I0(\DelayCount_reg_n_0_[42] ),
        .I1(\DelayCount_reg_n_0_[43] ),
        .O(\DelayCount[44]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[44]_i_5 
       (.I0(\DelayCount_reg_n_0_[41] ),
        .I1(\DelayCount_reg_n_0_[42] ),
        .O(\DelayCount[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[44]_i_6 
       (.I0(\DelayCount_reg_n_0_[40] ),
        .I1(\DelayCount_reg_n_0_[41] ),
        .O(\DelayCount[44]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[45]_i_1 
       (.I0(\DelayCount_reg[48]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[46]_i_1 
       (.I0(\DelayCount_reg[48]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[46]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[47]_i_1 
       (.I0(\DelayCount_reg[48]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[48]_i_1 
       (.I0(\DelayCount_reg[48]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[48]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[48]_i_3 
       (.I0(\DelayCount_reg_n_0_[47] ),
        .I1(\DelayCount_reg_n_0_[48] ),
        .O(\DelayCount[48]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[48]_i_4 
       (.I0(\DelayCount_reg_n_0_[46] ),
        .I1(\DelayCount_reg_n_0_[47] ),
        .O(\DelayCount[48]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[48]_i_5 
       (.I0(\DelayCount_reg_n_0_[45] ),
        .I1(\DelayCount_reg_n_0_[46] ),
        .O(\DelayCount[48]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[48]_i_6 
       (.I0(\DelayCount_reg_n_0_[44] ),
        .I1(\DelayCount_reg_n_0_[45] ),
        .O(\DelayCount[48]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[49]_i_1 
       (.I0(\DelayCount_reg[52]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[49]));
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \DelayCount[4]_i_1 
       (.I0(initStage__0[6]),
        .I1(initStage__0[2]),
        .I2(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\DelayCount_reg[4]_i_2_n_4 ),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \DelayCount[4]_i_3 
       (.I0(DelayStarted_reg_n_0),
        .O(\DelayCount[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DelayCount[4]_i_4 
       (.I0(\DelayCount_reg_n_0_[4] ),
        .I1(DelayStarted_reg_n_0),
        .O(\DelayCount[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \DelayCount[4]_i_5 
       (.I0(\DelayCount_reg_n_0_[3] ),
        .O(\DelayCount[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \DelayCount[4]_i_6 
       (.I0(\DelayCount_reg_n_0_[2] ),
        .O(\DelayCount[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \DelayCount[4]_i_7 
       (.I0(\DelayCount_reg_n_0_[1] ),
        .O(\DelayCount[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[50]_i_1 
       (.I0(\DelayCount_reg[52]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[51]_i_1 
       (.I0(\DelayCount_reg[52]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[52]_i_1 
       (.I0(\DelayCount_reg[52]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[52]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[52]_i_3 
       (.I0(\DelayCount_reg_n_0_[51] ),
        .I1(\DelayCount_reg_n_0_[52] ),
        .O(\DelayCount[52]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[52]_i_4 
       (.I0(\DelayCount_reg_n_0_[50] ),
        .I1(\DelayCount_reg_n_0_[51] ),
        .O(\DelayCount[52]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[52]_i_5 
       (.I0(\DelayCount_reg_n_0_[49] ),
        .I1(\DelayCount_reg_n_0_[50] ),
        .O(\DelayCount[52]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[52]_i_6 
       (.I0(\DelayCount_reg_n_0_[48] ),
        .I1(\DelayCount_reg_n_0_[49] ),
        .O(\DelayCount[52]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[53]_i_1 
       (.I0(\DelayCount_reg[56]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[54]_i_1 
       (.I0(\DelayCount_reg[56]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[55]_i_1 
       (.I0(\DelayCount_reg[56]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[56]_i_1 
       (.I0(\DelayCount_reg[56]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[56]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[56]_i_3 
       (.I0(\DelayCount_reg_n_0_[55] ),
        .I1(\DelayCount_reg_n_0_[56] ),
        .O(\DelayCount[56]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[56]_i_4 
       (.I0(\DelayCount_reg_n_0_[54] ),
        .I1(\DelayCount_reg_n_0_[55] ),
        .O(\DelayCount[56]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[56]_i_5 
       (.I0(\DelayCount_reg_n_0_[53] ),
        .I1(\DelayCount_reg_n_0_[54] ),
        .O(\DelayCount[56]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[56]_i_6 
       (.I0(\DelayCount_reg_n_0_[52] ),
        .I1(\DelayCount_reg_n_0_[53] ),
        .O(\DelayCount[56]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[57]_i_1 
       (.I0(\DelayCount_reg[60]_i_2_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[58]_i_1 
       (.I0(\DelayCount_reg[60]_i_2_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[59]_i_1 
       (.I0(\DelayCount_reg[60]_i_2_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[59]));
  LUT5 #(
    .INIT(32'h0EFF0E00)) 
    \DelayCount[5]_i_1 
       (.I0(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I1(initStage__0[2]),
        .I2(initStage__0[6]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\DelayCount_reg[8]_i_2_n_7 ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[60]_i_1 
       (.I0(\DelayCount_reg[60]_i_2_n_4 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[60]));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[60]_i_3 
       (.I0(\DelayCount_reg_n_0_[59] ),
        .I1(\DelayCount_reg_n_0_[60] ),
        .O(\DelayCount[60]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[60]_i_4 
       (.I0(\DelayCount_reg_n_0_[58] ),
        .I1(\DelayCount_reg_n_0_[59] ),
        .O(\DelayCount[60]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[60]_i_5 
       (.I0(\DelayCount_reg_n_0_[57] ),
        .I1(\DelayCount_reg_n_0_[58] ),
        .O(\DelayCount[60]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[60]_i_6 
       (.I0(\DelayCount_reg_n_0_[56] ),
        .I1(\DelayCount_reg_n_0_[57] ),
        .O(\DelayCount[60]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[61]_i_1 
       (.I0(\DelayCount_reg[63]_i_7_n_7 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[62]_i_1 
       (.I0(\DelayCount_reg[63]_i_7_n_6 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[62]));
  LUT6 #(
    .INIT(64'h000000000000F707)) 
    \DelayCount[63]_i_1 
       (.I0(\DelayCount[63]_i_3_n_0 ),
        .I1(\DelayCount_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\DelayCount[63]_i_4_n_0 ),
        .I4(\DelayCount[63]_i_5_n_0 ),
        .I5(\DelayCount[63]_i_6_n_0 ),
        .O(DelayCount__0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DelayCount[63]_i_10 
       (.I0(\DelayCount_reg_n_0_[50] ),
        .I1(\DelayCount_reg_n_0_[51] ),
        .I2(\DelayCount_reg_n_0_[48] ),
        .I3(\DelayCount_reg_n_0_[49] ),
        .I4(\state[2]_i_24_n_0 ),
        .O(\DelayCount[63]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \DelayCount[63]_i_11 
       (.I0(\state[2]_i_27_n_0 ),
        .I1(\DelayCount_reg_n_0_[63] ),
        .I2(DelayStarted_reg_n_0),
        .I3(\DelayCount_reg_n_0_[60] ),
        .I4(\DelayCount_reg_n_0_[61] ),
        .O(\DelayCount[63]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DelayCount[63]_i_12 
       (.I0(\cycle_count_reg_n_0_[62] ),
        .I1(\cycle_count_reg_n_0_[61] ),
        .I2(\cycle_count_reg_n_0_[63] ),
        .I3(\cycle_count[63]_i_4_n_0 ),
        .O(\DelayCount[63]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DelayCount[63]_i_13 
       (.I0(\cycle_count_reg_n_0_[26] ),
        .I1(\cycle_count_reg_n_0_[25] ),
        .I2(\fb_addr[15]_i_21_n_0 ),
        .I3(\cycle_count[63]_i_5_n_0 ),
        .I4(\cycle_count_reg_n_0_[2] ),
        .I5(\cycle_count_reg_n_0_[1] ),
        .O(\DelayCount[63]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \DelayCount[63]_i_14 
       (.I0(\DelayCount[63]_i_19_n_0 ),
        .I1(\cycle_count_reg_n_0_[29] ),
        .I2(\cycle_count_reg_n_0_[28] ),
        .I3(\cycle_count_reg_n_0_[27] ),
        .I4(\DelayCount[63]_i_20_n_0 ),
        .I5(cd_i_8_n_0),
        .O(\DelayCount[63]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DelayCount[63]_i_15 
       (.I0(cd_i_15_n_0),
        .I1(cd_i_14_n_0),
        .I2(\cycle_count_reg_n_0_[38] ),
        .I3(\cycle_count_reg_n_0_[37] ),
        .I4(cd_i_12_n_0),
        .O(\DelayCount[63]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[63]_i_16 
       (.I0(\DelayCount_reg_n_0_[62] ),
        .I1(\DelayCount_reg_n_0_[63] ),
        .O(\DelayCount[63]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[63]_i_17 
       (.I0(\DelayCount_reg_n_0_[61] ),
        .I1(\DelayCount_reg_n_0_[62] ),
        .O(\DelayCount[63]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[63]_i_18 
       (.I0(\DelayCount_reg_n_0_[60] ),
        .I1(\DelayCount_reg_n_0_[61] ),
        .O(\DelayCount[63]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \DelayCount[63]_i_19 
       (.I0(\cycle_count_reg_n_0_[20] ),
        .I1(\cycle_count_reg_n_0_[19] ),
        .O(\DelayCount[63]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DelayCount[63]_i_2 
       (.I0(\DelayCount_reg[63]_i_7_n_5 ),
        .I1(\state_reg_n_0_[0] ),
        .O(p_0_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \DelayCount[63]_i_20 
       (.I0(\cycle_count_reg_n_0_[7] ),
        .I1(\cycle_count_reg_n_0_[8] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\DelayCount[63]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \DelayCount[63]_i_3 
       (.I0(\state[2]_i_10_n_0 ),
        .I1(\DelayCount[63]_i_8_n_0 ),
        .I2(\DelayCount[63]_i_9_n_0 ),
        .I3(\DelayCount[63]_i_10_n_0 ),
        .I4(\DelayCount[63]_i_11_n_0 ),
        .I5(\state[2]_i_12_n_0 ),
        .O(\DelayCount[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01011014)) 
    \DelayCount[63]_i_4 
       (.I0(blk_i_2_n_0),
        .I1(initStage__0[0]),
        .I2(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I3(initStage__0[6]),
        .I4(initStage__0[2]),
        .O(\DelayCount[63]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \DelayCount[63]_i_5 
       (.I0(\FSM_onehot_drawStage[5]_i_12_n_0 ),
        .I1(\FSM_sequential_initStage[6]_i_10_n_0 ),
        .I2(\DelayCount[63]_i_12_n_0 ),
        .I3(\DelayCount[63]_i_13_n_0 ),
        .I4(\DelayCount[63]_i_14_n_0 ),
        .I5(\DelayCount[63]_i_15_n_0 ),
        .O(\DelayCount[63]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DelayCount[63]_i_6 
       (.I0(\fb_addr[15]_i_18_n_0 ),
        .I1(scl_i_6_n_0),
        .I2(\FSM_sequential_initStage[6]_i_4_n_0 ),
        .I3(\FSM_sequential_initStage[6]_i_5_n_0 ),
        .O(\DelayCount[63]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \DelayCount[63]_i_8 
       (.I0(\DelayCount_reg_n_0_[2] ),
        .I1(\DelayCount_reg_n_0_[3] ),
        .I2(\DelayCount_reg_n_0_[62] ),
        .I3(\DelayCount_reg_n_0_[1] ),
        .I4(\state[2]_i_19_n_0 ),
        .O(\DelayCount[63]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \DelayCount[63]_i_9 
       (.I0(\DelayCount_reg_n_0_[12] ),
        .I1(\DelayCount_reg_n_0_[15] ),
        .I2(\DelayCount_reg_n_0_[13] ),
        .I3(\DelayCount_reg_n_0_[14] ),
        .I4(\state[2]_i_16_n_0 ),
        .O(\DelayCount[63]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h0EFF0E00)) 
    \DelayCount[6]_i_1 
       (.I0(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I1(initStage__0[2]),
        .I2(initStage__0[6]),
        .I3(\state_reg_n_0_[0] ),
        .I4(\DelayCount_reg[8]_i_2_n_6 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    \DelayCount[7]_i_1 
       (.I0(initStage__0[2]),
        .I1(initStage__0[6]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\DelayCount_reg[8]_i_2_n_5 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \DelayCount[8]_i_1 
       (.I0(initStage__0[2]),
        .I1(initStage__0[6]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\DelayCount_reg[8]_i_2_n_4 ),
        .O(p_0_in[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \DelayCount[8]_i_3 
       (.I0(\DelayCount_reg_n_0_[7] ),
        .I1(\DelayCount_reg_n_0_[8] ),
        .I2(DelayStarted_reg_n_0),
        .O(\DelayCount[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[8]_i_4 
       (.I0(\DelayCount_reg_n_0_[6] ),
        .I1(\DelayCount_reg_n_0_[7] ),
        .O(\DelayCount[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[8]_i_5 
       (.I0(\DelayCount_reg_n_0_[5] ),
        .I1(\DelayCount_reg_n_0_[6] ),
        .O(\DelayCount[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \DelayCount[8]_i_6 
       (.I0(\DelayCount_reg_n_0_[4] ),
        .I1(\DelayCount_reg_n_0_[5] ),
        .O(\DelayCount[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \DelayCount[9]_i_1 
       (.I0(initStage__0[2]),
        .I1(initStage__0[6]),
        .I2(\state_reg_n_0_[0] ),
        .I3(\DelayCount_reg[12]_i_2_n_7 ),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[0] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(\DelayCount_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[10] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[10]),
        .Q(\DelayCount_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[11] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[11]),
        .Q(\DelayCount_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[12] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[12]),
        .Q(\DelayCount_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[12]_i_2 
       (.CI(\DelayCount_reg[8]_i_2_n_0 ),
        .CO({\DelayCount_reg[12]_i_2_n_0 ,\DelayCount_reg[12]_i_2_n_1 ,\DelayCount_reg[12]_i_2_n_2 ,\DelayCount_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount[12]_i_3_n_0 ,\DelayCount_reg_n_0_[10] ,\DelayCount_reg_n_0_[9] ,\DelayCount[12]_i_4_n_0 }),
        .O({\DelayCount_reg[12]_i_2_n_4 ,\DelayCount_reg[12]_i_2_n_5 ,\DelayCount_reg[12]_i_2_n_6 ,\DelayCount_reg[12]_i_2_n_7 }),
        .S({\DelayCount[12]_i_5_n_0 ,\DelayCount[12]_i_6_n_0 ,\DelayCount[12]_i_7_n_0 ,\DelayCount[12]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[13] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[13]),
        .Q(\DelayCount_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[14] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[14]),
        .Q(\DelayCount_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[15] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[15]),
        .Q(\DelayCount_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[16] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[16]),
        .Q(\DelayCount_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[16]_i_2 
       (.CI(\DelayCount_reg[12]_i_2_n_0 ),
        .CO({\DelayCount_reg[16]_i_2_n_0 ,\DelayCount_reg[16]_i_2_n_1 ,\DelayCount_reg[16]_i_2_n_2 ,\DelayCount_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[15] ,\DelayCount_reg_n_0_[14] ,\DelayCount[16]_i_3_n_0 ,\DelayCount_reg_n_0_[12] }),
        .O({\DelayCount_reg[16]_i_2_n_4 ,\DelayCount_reg[16]_i_2_n_5 ,\DelayCount_reg[16]_i_2_n_6 ,\DelayCount_reg[16]_i_2_n_7 }),
        .S({\DelayCount[16]_i_4_n_0 ,\DelayCount[16]_i_5_n_0 ,\DelayCount[16]_i_6_n_0 ,\DelayCount[16]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[17] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[17]),
        .Q(\DelayCount_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[18] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[18]),
        .Q(\DelayCount_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[19] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[19]),
        .Q(\DelayCount_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[1] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(\DelayCount_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[20] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[20]),
        .Q(\DelayCount_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[20]_i_2 
       (.CI(\DelayCount_reg[16]_i_2_n_0 ),
        .CO({\DelayCount_reg[20]_i_2_n_0 ,\DelayCount_reg[20]_i_2_n_1 ,\DelayCount_reg[20]_i_2_n_2 ,\DelayCount_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[19] ,\DelayCount_reg_n_0_[18] ,\DelayCount_reg_n_0_[17] ,\DelayCount_reg_n_0_[16] }),
        .O({\DelayCount_reg[20]_i_2_n_4 ,\DelayCount_reg[20]_i_2_n_5 ,\DelayCount_reg[20]_i_2_n_6 ,\DelayCount_reg[20]_i_2_n_7 }),
        .S({\DelayCount[20]_i_3_n_0 ,\DelayCount[20]_i_4_n_0 ,\DelayCount[20]_i_5_n_0 ,\DelayCount[20]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[21] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[21]),
        .Q(\DelayCount_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[22] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[22]),
        .Q(\DelayCount_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[23] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[23]),
        .Q(\DelayCount_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[24] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[24]),
        .Q(\DelayCount_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[24]_i_2 
       (.CI(\DelayCount_reg[20]_i_2_n_0 ),
        .CO({\DelayCount_reg[24]_i_2_n_0 ,\DelayCount_reg[24]_i_2_n_1 ,\DelayCount_reg[24]_i_2_n_2 ,\DelayCount_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[23] ,\DelayCount_reg_n_0_[22] ,\DelayCount_reg_n_0_[21] ,\DelayCount_reg_n_0_[20] }),
        .O({\DelayCount_reg[24]_i_2_n_4 ,\DelayCount_reg[24]_i_2_n_5 ,\DelayCount_reg[24]_i_2_n_6 ,\DelayCount_reg[24]_i_2_n_7 }),
        .S({\DelayCount[24]_i_3_n_0 ,\DelayCount[24]_i_4_n_0 ,\DelayCount[24]_i_5_n_0 ,\DelayCount[24]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[25] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[25]),
        .Q(\DelayCount_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[26] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[26]),
        .Q(\DelayCount_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[27] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[27]),
        .Q(\DelayCount_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[28] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[28]),
        .Q(\DelayCount_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[28]_i_2 
       (.CI(\DelayCount_reg[24]_i_2_n_0 ),
        .CO({\DelayCount_reg[28]_i_2_n_0 ,\DelayCount_reg[28]_i_2_n_1 ,\DelayCount_reg[28]_i_2_n_2 ,\DelayCount_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[27] ,\DelayCount_reg_n_0_[26] ,\DelayCount_reg_n_0_[25] ,\DelayCount_reg_n_0_[24] }),
        .O({\DelayCount_reg[28]_i_2_n_4 ,\DelayCount_reg[28]_i_2_n_5 ,\DelayCount_reg[28]_i_2_n_6 ,\DelayCount_reg[28]_i_2_n_7 }),
        .S({\DelayCount[28]_i_3_n_0 ,\DelayCount[28]_i_4_n_0 ,\DelayCount[28]_i_5_n_0 ,\DelayCount[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[29] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[29]),
        .Q(\DelayCount_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[2] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(\DelayCount_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[30] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[30]),
        .Q(\DelayCount_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[31] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[31]),
        .Q(\DelayCount_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[32] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[32]),
        .Q(\DelayCount_reg_n_0_[32] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[32]_i_2 
       (.CI(\DelayCount_reg[28]_i_2_n_0 ),
        .CO({\DelayCount_reg[32]_i_2_n_0 ,\DelayCount_reg[32]_i_2_n_1 ,\DelayCount_reg[32]_i_2_n_2 ,\DelayCount_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[31] ,\DelayCount_reg_n_0_[30] ,\DelayCount_reg_n_0_[29] ,\DelayCount_reg_n_0_[28] }),
        .O({\DelayCount_reg[32]_i_2_n_4 ,\DelayCount_reg[32]_i_2_n_5 ,\DelayCount_reg[32]_i_2_n_6 ,\DelayCount_reg[32]_i_2_n_7 }),
        .S({\DelayCount[32]_i_3_n_0 ,\DelayCount[32]_i_4_n_0 ,\DelayCount[32]_i_5_n_0 ,\DelayCount[32]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[33] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[33]),
        .Q(\DelayCount_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[34] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[34]),
        .Q(\DelayCount_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[35] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[35]),
        .Q(\DelayCount_reg_n_0_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[36] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[36]),
        .Q(\DelayCount_reg_n_0_[36] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[36]_i_2 
       (.CI(\DelayCount_reg[32]_i_2_n_0 ),
        .CO({\DelayCount_reg[36]_i_2_n_0 ,\DelayCount_reg[36]_i_2_n_1 ,\DelayCount_reg[36]_i_2_n_2 ,\DelayCount_reg[36]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[35] ,\DelayCount_reg_n_0_[34] ,\DelayCount_reg_n_0_[33] ,\DelayCount_reg_n_0_[32] }),
        .O({\DelayCount_reg[36]_i_2_n_4 ,\DelayCount_reg[36]_i_2_n_5 ,\DelayCount_reg[36]_i_2_n_6 ,\DelayCount_reg[36]_i_2_n_7 }),
        .S({\DelayCount[36]_i_3_n_0 ,\DelayCount[36]_i_4_n_0 ,\DelayCount[36]_i_5_n_0 ,\DelayCount[36]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[37] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[37]),
        .Q(\DelayCount_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[38] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[38]),
        .Q(\DelayCount_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[39] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[39]),
        .Q(\DelayCount_reg_n_0_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[3] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(\DelayCount_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[40] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[40]),
        .Q(\DelayCount_reg_n_0_[40] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[40]_i_2 
       (.CI(\DelayCount_reg[36]_i_2_n_0 ),
        .CO({\DelayCount_reg[40]_i_2_n_0 ,\DelayCount_reg[40]_i_2_n_1 ,\DelayCount_reg[40]_i_2_n_2 ,\DelayCount_reg[40]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[39] ,\DelayCount_reg_n_0_[38] ,\DelayCount_reg_n_0_[37] ,\DelayCount_reg_n_0_[36] }),
        .O({\DelayCount_reg[40]_i_2_n_4 ,\DelayCount_reg[40]_i_2_n_5 ,\DelayCount_reg[40]_i_2_n_6 ,\DelayCount_reg[40]_i_2_n_7 }),
        .S({\DelayCount[40]_i_3_n_0 ,\DelayCount[40]_i_4_n_0 ,\DelayCount[40]_i_5_n_0 ,\DelayCount[40]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[41] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[41]),
        .Q(\DelayCount_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[42] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[42]),
        .Q(\DelayCount_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[43] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[43]),
        .Q(\DelayCount_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[44] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[44]),
        .Q(\DelayCount_reg_n_0_[44] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[44]_i_2 
       (.CI(\DelayCount_reg[40]_i_2_n_0 ),
        .CO({\DelayCount_reg[44]_i_2_n_0 ,\DelayCount_reg[44]_i_2_n_1 ,\DelayCount_reg[44]_i_2_n_2 ,\DelayCount_reg[44]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[43] ,\DelayCount_reg_n_0_[42] ,\DelayCount_reg_n_0_[41] ,\DelayCount_reg_n_0_[40] }),
        .O({\DelayCount_reg[44]_i_2_n_4 ,\DelayCount_reg[44]_i_2_n_5 ,\DelayCount_reg[44]_i_2_n_6 ,\DelayCount_reg[44]_i_2_n_7 }),
        .S({\DelayCount[44]_i_3_n_0 ,\DelayCount[44]_i_4_n_0 ,\DelayCount[44]_i_5_n_0 ,\DelayCount[44]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[45] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[45]),
        .Q(\DelayCount_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[46] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[46]),
        .Q(\DelayCount_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[47] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[47]),
        .Q(\DelayCount_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[48] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[48]),
        .Q(\DelayCount_reg_n_0_[48] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[48]_i_2 
       (.CI(\DelayCount_reg[44]_i_2_n_0 ),
        .CO({\DelayCount_reg[48]_i_2_n_0 ,\DelayCount_reg[48]_i_2_n_1 ,\DelayCount_reg[48]_i_2_n_2 ,\DelayCount_reg[48]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[47] ,\DelayCount_reg_n_0_[46] ,\DelayCount_reg_n_0_[45] ,\DelayCount_reg_n_0_[44] }),
        .O({\DelayCount_reg[48]_i_2_n_4 ,\DelayCount_reg[48]_i_2_n_5 ,\DelayCount_reg[48]_i_2_n_6 ,\DelayCount_reg[48]_i_2_n_7 }),
        .S({\DelayCount[48]_i_3_n_0 ,\DelayCount[48]_i_4_n_0 ,\DelayCount[48]_i_5_n_0 ,\DelayCount[48]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[49] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[49]),
        .Q(\DelayCount_reg_n_0_[49] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[4] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(\DelayCount_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\DelayCount_reg[4]_i_2_n_0 ,\DelayCount_reg[4]_i_2_n_1 ,\DelayCount_reg[4]_i_2_n_2 ,\DelayCount_reg[4]_i_2_n_3 }),
        .CYINIT(\DelayCount_reg_n_0_[0] ),
        .DI({\DelayCount[4]_i_3_n_0 ,\DelayCount_reg_n_0_[3] ,\DelayCount_reg_n_0_[2] ,\DelayCount_reg_n_0_[1] }),
        .O({\DelayCount_reg[4]_i_2_n_4 ,\DelayCount_reg[4]_i_2_n_5 ,\DelayCount_reg[4]_i_2_n_6 ,\DelayCount_reg[4]_i_2_n_7 }),
        .S({\DelayCount[4]_i_4_n_0 ,\DelayCount[4]_i_5_n_0 ,\DelayCount[4]_i_6_n_0 ,\DelayCount[4]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[50] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[50]),
        .Q(\DelayCount_reg_n_0_[50] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[51] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[51]),
        .Q(\DelayCount_reg_n_0_[51] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[52] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[52]),
        .Q(\DelayCount_reg_n_0_[52] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[52]_i_2 
       (.CI(\DelayCount_reg[48]_i_2_n_0 ),
        .CO({\DelayCount_reg[52]_i_2_n_0 ,\DelayCount_reg[52]_i_2_n_1 ,\DelayCount_reg[52]_i_2_n_2 ,\DelayCount_reg[52]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[51] ,\DelayCount_reg_n_0_[50] ,\DelayCount_reg_n_0_[49] ,\DelayCount_reg_n_0_[48] }),
        .O({\DelayCount_reg[52]_i_2_n_4 ,\DelayCount_reg[52]_i_2_n_5 ,\DelayCount_reg[52]_i_2_n_6 ,\DelayCount_reg[52]_i_2_n_7 }),
        .S({\DelayCount[52]_i_3_n_0 ,\DelayCount[52]_i_4_n_0 ,\DelayCount[52]_i_5_n_0 ,\DelayCount[52]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[53] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[53]),
        .Q(\DelayCount_reg_n_0_[53] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[54] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[54]),
        .Q(\DelayCount_reg_n_0_[54] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[55] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[55]),
        .Q(\DelayCount_reg_n_0_[55] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[56] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[56]),
        .Q(\DelayCount_reg_n_0_[56] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[56]_i_2 
       (.CI(\DelayCount_reg[52]_i_2_n_0 ),
        .CO({\DelayCount_reg[56]_i_2_n_0 ,\DelayCount_reg[56]_i_2_n_1 ,\DelayCount_reg[56]_i_2_n_2 ,\DelayCount_reg[56]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[55] ,\DelayCount_reg_n_0_[54] ,\DelayCount_reg_n_0_[53] ,\DelayCount_reg_n_0_[52] }),
        .O({\DelayCount_reg[56]_i_2_n_4 ,\DelayCount_reg[56]_i_2_n_5 ,\DelayCount_reg[56]_i_2_n_6 ,\DelayCount_reg[56]_i_2_n_7 }),
        .S({\DelayCount[56]_i_3_n_0 ,\DelayCount[56]_i_4_n_0 ,\DelayCount[56]_i_5_n_0 ,\DelayCount[56]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[57] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[57]),
        .Q(\DelayCount_reg_n_0_[57] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[58] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[58]),
        .Q(\DelayCount_reg_n_0_[58] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[59] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[59]),
        .Q(\DelayCount_reg_n_0_[59] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[5] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(\DelayCount_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[60] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[60]),
        .Q(\DelayCount_reg_n_0_[60] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[60]_i_2 
       (.CI(\DelayCount_reg[56]_i_2_n_0 ),
        .CO({\DelayCount_reg[60]_i_2_n_0 ,\DelayCount_reg[60]_i_2_n_1 ,\DelayCount_reg[60]_i_2_n_2 ,\DelayCount_reg[60]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[59] ,\DelayCount_reg_n_0_[58] ,\DelayCount_reg_n_0_[57] ,\DelayCount_reg_n_0_[56] }),
        .O({\DelayCount_reg[60]_i_2_n_4 ,\DelayCount_reg[60]_i_2_n_5 ,\DelayCount_reg[60]_i_2_n_6 ,\DelayCount_reg[60]_i_2_n_7 }),
        .S({\DelayCount[60]_i_3_n_0 ,\DelayCount[60]_i_4_n_0 ,\DelayCount[60]_i_5_n_0 ,\DelayCount[60]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[61] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[61]),
        .Q(\DelayCount_reg_n_0_[61] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[62] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[62]),
        .Q(\DelayCount_reg_n_0_[62] ));
  FDCE #(
    .INIT(1'b1)) 
    \DelayCount_reg[63] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[63]),
        .Q(\DelayCount_reg_n_0_[63] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[63]_i_7 
       (.CI(\DelayCount_reg[60]_i_2_n_0 ),
        .CO({\NLW_DelayCount_reg[63]_i_7_CO_UNCONNECTED [3:2],\DelayCount_reg[63]_i_7_n_2 ,\DelayCount_reg[63]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\DelayCount_reg_n_0_[61] ,\DelayCount_reg_n_0_[60] }),
        .O({\NLW_DelayCount_reg[63]_i_7_O_UNCONNECTED [3],\DelayCount_reg[63]_i_7_n_5 ,\DelayCount_reg[63]_i_7_n_6 ,\DelayCount_reg[63]_i_7_n_7 }),
        .S({1'b0,\DelayCount[63]_i_16_n_0 ,\DelayCount[63]_i_17_n_0 ,\DelayCount[63]_i_18_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[6] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(\DelayCount_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[7] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[7]),
        .Q(\DelayCount_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[8] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[8]),
        .Q(\DelayCount_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \DelayCount_reg[8]_i_2 
       (.CI(\DelayCount_reg[4]_i_2_n_0 ),
        .CO({\DelayCount_reg[8]_i_2_n_0 ,\DelayCount_reg[8]_i_2_n_1 ,\DelayCount_reg[8]_i_2_n_2 ,\DelayCount_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\DelayCount_reg_n_0_[7] ,\DelayCount_reg_n_0_[6] ,\DelayCount_reg_n_0_[5] ,\DelayCount_reg_n_0_[4] }),
        .O({\DelayCount_reg[8]_i_2_n_4 ,\DelayCount_reg[8]_i_2_n_5 ,\DelayCount_reg[8]_i_2_n_6 ,\DelayCount_reg[8]_i_2_n_7 }),
        .S({\DelayCount[8]_i_3_n_0 ,\DelayCount[8]_i_4_n_0 ,\DelayCount[8]_i_5_n_0 ,\DelayCount[8]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DelayCount_reg[9] 
       (.C(clk),
        .CE(DelayCount__0),
        .CLR(reset),
        .D(p_0_in[9]),
        .Q(\DelayCount_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA07A7)) 
    DelayStarted_i_1
       (.I0(DelayStarted_reg_n_0),
        .I1(DelayStarted_i_2_n_0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\DelayCount[63]_i_4_n_0 ),
        .I4(DelayStarted_i_3_n_0),
        .I5(DelayStarted_i_4_n_0),
        .O(DelayStarted_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    DelayStarted_i_2
       (.I0(\DelayCount[63]_i_9_n_0 ),
        .I1(DelayStarted_i_5_n_0),
        .I2(\state[2]_i_10_n_0 ),
        .I3(\DelayCount[63]_i_10_n_0 ),
        .I4(DelayStarted_i_6_n_0),
        .I5(\state[2]_i_12_n_0 ),
        .O(DelayStarted_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    DelayStarted_i_3
       (.I0(\FSM_sequential_initStage[6]_i_5_n_0 ),
        .I1(\fb_addr[15]_i_3_n_0 ),
        .I2(\FSM_sequential_addrStage[2]_i_4_n_0 ),
        .I3(\DataShort[15]_i_3_n_0 ),
        .I4(DelayStarted_i_7_n_0),
        .I5(\FSM_sequential_addrStage[2]_i_5_n_0 ),
        .O(DelayStarted_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    DelayStarted_i_4
       (.I0(cd_i_5_n_0),
        .I1(\fb_addr[15]_i_16_n_0 ),
        .I2(DelayStarted_i_8_n_0),
        .I3(DelayStarted_i_9_n_0),
        .I4(\FSM_onehot_drawStage[5]_i_7_n_0 ),
        .I5(\FSM_sequential_initStage[6]_i_4_n_0 ),
        .O(DelayStarted_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    DelayStarted_i_5
       (.I0(\state[2]_i_19_n_0 ),
        .I1(\DelayCount_reg_n_0_[1] ),
        .I2(\DelayCount_reg_n_0_[0] ),
        .I3(\DelayCount_reg_n_0_[2] ),
        .I4(\DelayCount_reg_n_0_[3] ),
        .O(DelayStarted_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    DelayStarted_i_6
       (.I0(\state[2]_i_27_n_0 ),
        .I1(\DelayCount_reg_n_0_[60] ),
        .I2(\DelayCount_reg_n_0_[61] ),
        .I3(\DelayCount_reg_n_0_[62] ),
        .I4(\DelayCount_reg_n_0_[63] ),
        .O(DelayStarted_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    DelayStarted_i_7
       (.I0(\cycle_count_reg_n_0_[4] ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\cycle_count_reg_n_0_[8] ),
        .I5(\cycle_count_reg_n_0_[7] ),
        .O(DelayStarted_i_7_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    DelayStarted_i_8
       (.I0(\cycle_count_reg_n_0_[62] ),
        .I1(\cycle_count_reg_n_0_[61] ),
        .I2(\cycle_count_reg_n_0_[60] ),
        .O(DelayStarted_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    DelayStarted_i_9
       (.I0(\cycle_count_reg_n_0_[29] ),
        .I1(\cycle_count_reg_n_0_[28] ),
        .I2(\cycle_count_reg_n_0_[27] ),
        .O(DelayStarted_i_9_n_0));
  FDCE DelayStarted_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(DelayStarted_i_1_n_0),
        .Q(DelayStarted_reg_n_0));
  LUT6 #(
    .INIT(64'h888888888888888B)) 
    \FSM_onehot_drawStage[1]_i_1 
       (.I0(\FSM_onehot_drawStage_reg[2]_i_2_n_0 ),
        .I1(drawStage__0[5]),
        .I2(drawStage__0[4]),
        .I3(DataShort),
        .I4(drawStage__0[1]),
        .I5(ReadAddr),
        .O(drawStage__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_drawStage[2]_i_1 
       (.I0(drawStage__0[1]),
        .I1(\FSM_onehot_drawStage_reg[2]_i_2_n_0 ),
        .I2(drawStage__0[5]),
        .O(drawStage__1[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_10 
       (.I0(\Pixel_reg_n_0_[53] ),
        .I1(\Pixel_reg_n_0_[52] ),
        .O(\FSM_onehot_drawStage[2]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_11 
       (.I0(\Pixel_reg_n_0_[51] ),
        .I1(\Pixel_reg_n_0_[50] ),
        .O(\FSM_onehot_drawStage[2]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_12 
       (.I0(\Pixel_reg_n_0_[49] ),
        .I1(\Pixel_reg_n_0_[48] ),
        .O(\FSM_onehot_drawStage[2]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_14 
       (.I0(\Pixel_reg_n_0_[47] ),
        .I1(\Pixel_reg_n_0_[46] ),
        .O(\FSM_onehot_drawStage[2]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_15 
       (.I0(\Pixel_reg_n_0_[45] ),
        .I1(\Pixel_reg_n_0_[44] ),
        .O(\FSM_onehot_drawStage[2]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_16 
       (.I0(\Pixel_reg_n_0_[43] ),
        .I1(\Pixel_reg_n_0_[42] ),
        .O(\FSM_onehot_drawStage[2]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_17 
       (.I0(\Pixel_reg_n_0_[41] ),
        .I1(\Pixel_reg_n_0_[40] ),
        .O(\FSM_onehot_drawStage[2]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_19 
       (.I0(\Pixel_reg_n_0_[39] ),
        .I1(\Pixel_reg_n_0_[38] ),
        .O(\FSM_onehot_drawStage[2]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_20 
       (.I0(\Pixel_reg_n_0_[37] ),
        .I1(\Pixel_reg_n_0_[36] ),
        .O(\FSM_onehot_drawStage[2]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_21 
       (.I0(\Pixel_reg_n_0_[35] ),
        .I1(\Pixel_reg_n_0_[34] ),
        .O(\FSM_onehot_drawStage[2]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_22 
       (.I0(\Pixel_reg_n_0_[33] ),
        .I1(\Pixel_reg_n_0_[32] ),
        .O(\FSM_onehot_drawStage[2]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_24 
       (.I0(\Pixel_reg_n_0_[31] ),
        .I1(\Pixel_reg_n_0_[30] ),
        .O(\FSM_onehot_drawStage[2]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_25 
       (.I0(\Pixel_reg_n_0_[29] ),
        .I1(\Pixel_reg_n_0_[28] ),
        .O(\FSM_onehot_drawStage[2]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_26 
       (.I0(\Pixel_reg_n_0_[27] ),
        .I1(\Pixel_reg_n_0_[26] ),
        .O(\FSM_onehot_drawStage[2]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_27 
       (.I0(\Pixel_reg_n_0_[25] ),
        .I1(\Pixel_reg_n_0_[24] ),
        .O(\FSM_onehot_drawStage[2]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_29 
       (.I0(\Pixel_reg_n_0_[23] ),
        .I1(\Pixel_reg_n_0_[22] ),
        .O(\FSM_onehot_drawStage[2]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_30 
       (.I0(\Pixel_reg_n_0_[21] ),
        .I1(\Pixel_reg_n_0_[20] ),
        .O(\FSM_onehot_drawStage[2]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_31 
       (.I0(\Pixel_reg_n_0_[19] ),
        .I1(\Pixel_reg_n_0_[18] ),
        .O(\FSM_onehot_drawStage[2]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_32 
       (.I0(\Pixel_reg_n_0_[17] ),
        .I1(\Pixel_reg_n_0_[16] ),
        .O(\FSM_onehot_drawStage[2]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_34 
       (.I0(\Pixel_reg_n_0_[15] ),
        .I1(\Pixel_reg_n_0_[14] ),
        .O(\FSM_onehot_drawStage[2]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_35 
       (.I0(\Pixel_reg_n_0_[13] ),
        .I1(\Pixel_reg_n_0_[12] ),
        .O(\FSM_onehot_drawStage[2]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_36 
       (.I0(\Pixel_reg_n_0_[11] ),
        .I1(\Pixel_reg_n_0_[10] ),
        .O(\FSM_onehot_drawStage[2]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_37 
       (.I0(\Pixel_reg_n_0_[9] ),
        .I1(\Pixel_reg_n_0_[8] ),
        .O(\FSM_onehot_drawStage[2]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_38 
       (.I0(\Pixel_reg_n_0_[0] ),
        .I1(\Pixel_reg_n_0_[1] ),
        .O(\FSM_onehot_drawStage[2]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_39 
       (.I0(\Pixel_reg_n_0_[7] ),
        .I1(\Pixel_reg_n_0_[6] ),
        .O(\FSM_onehot_drawStage[2]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_4 
       (.I0(\Pixel_reg_n_0_[63] ),
        .I1(\Pixel_reg_n_0_[62] ),
        .O(\FSM_onehot_drawStage[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_40 
       (.I0(\Pixel_reg_n_0_[5] ),
        .I1(\Pixel_reg_n_0_[4] ),
        .O(\FSM_onehot_drawStage[2]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_41 
       (.I0(\Pixel_reg_n_0_[3] ),
        .I1(\Pixel_reg_n_0_[2] ),
        .O(\FSM_onehot_drawStage[2]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_drawStage[2]_i_42 
       (.I0(\Pixel_reg_n_0_[0] ),
        .I1(\Pixel_reg_n_0_[1] ),
        .O(\FSM_onehot_drawStage[2]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_5 
       (.I0(\Pixel_reg_n_0_[61] ),
        .I1(\Pixel_reg_n_0_[60] ),
        .O(\FSM_onehot_drawStage[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_6 
       (.I0(\Pixel_reg_n_0_[59] ),
        .I1(\Pixel_reg_n_0_[58] ),
        .O(\FSM_onehot_drawStage[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_7 
       (.I0(\Pixel_reg_n_0_[57] ),
        .I1(\Pixel_reg_n_0_[56] ),
        .O(\FSM_onehot_drawStage[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_drawStage[2]_i_9 
       (.I0(\Pixel_reg_n_0_[55] ),
        .I1(\Pixel_reg_n_0_[54] ),
        .O(\FSM_onehot_drawStage[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_drawStage[5]_i_1 
       (.I0(\FSM_onehot_drawStage[5]_i_2_n_0 ),
        .I1(\FSM_onehot_drawStage[5]_i_3_n_0 ),
        .I2(\FSM_onehot_drawStage[5]_i_4_n_0 ),
        .I3(\FSM_onehot_drawStage[5]_i_5_n_0 ),
        .I4(\FSM_onehot_drawStage[5]_i_6_n_0 ),
        .O(drawStage));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_drawStage[5]_i_10 
       (.I0(\cycle_count_reg_n_0_[4] ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(\cycle_count_reg_n_0_[7] ),
        .I3(\cycle_count_reg_n_0_[8] ),
        .O(\FSM_onehot_drawStage[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \FSM_onehot_drawStage[5]_i_11 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\cycle_count_reg_n_0_[63] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cycle_count_reg_n_0_[62] ),
        .I5(\cycle_count_reg_n_0_[61] ),
        .O(\FSM_onehot_drawStage[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \FSM_onehot_drawStage[5]_i_12 
       (.I0(\cycle_count_reg_n_0_[18] ),
        .I1(\cycle_count_reg_n_0_[19] ),
        .I2(\cycle_count_reg_n_0_[20] ),
        .I3(\cycle_count_reg_n_0_[42] ),
        .I4(\cycle_count_reg_n_0_[43] ),
        .I5(\cycle_count_reg_n_0_[44] ),
        .O(\FSM_onehot_drawStage[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \FSM_onehot_drawStage[5]_i_2 
       (.I0(\cycle_count_reg_n_0_[33] ),
        .I1(\cycle_count_reg_n_0_[34] ),
        .I2(\cycle_count_reg_n_0_[35] ),
        .I3(\cycle_count_reg_n_0_[36] ),
        .I4(\cycle_count_reg_n_0_[37] ),
        .I5(\cycle_count_reg_n_0_[38] ),
        .O(\FSM_onehot_drawStage[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_drawStage[5]_i_3 
       (.I0(\fb_addr[15]_i_8_n_0 ),
        .I1(\fb_addr[15]_i_9_n_0 ),
        .I2(\fb_addr[15]_i_10_n_0 ),
        .I3(\FSM_onehot_drawStage[5]_i_7_n_0 ),
        .I4(\FSM_onehot_drawStage[5]_i_8_n_0 ),
        .I5(\fb_addr[15]_i_16_n_0 ),
        .O(\FSM_onehot_drawStage[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_drawStage[5]_i_4 
       (.I0(cd_i_14_n_0),
        .I1(cd_i_12_n_0),
        .I2(cd_i_15_n_0),
        .I3(\FSM_onehot_drawStage[5]_i_9_n_0 ),
        .I4(cd_i_10_n_0),
        .I5(\FSM_onehot_drawStage[5]_i_10_n_0 ),
        .O(\FSM_onehot_drawStage[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_drawStage[5]_i_5 
       (.I0(cd_i_8_n_0),
        .I1(\fb_addr[15]_i_14_n_0 ),
        .I2(\FSM_onehot_drawStage[5]_i_11_n_0 ),
        .I3(\fb_addr[15]_i_13_n_0 ),
        .I4(\cycle_count[63]_i_4_n_0 ),
        .I5(cd_i_5_n_0),
        .O(\FSM_onehot_drawStage[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_drawStage[5]_i_6 
       (.I0(\FSM_onehot_drawStage[5]_i_12_n_0 ),
        .I1(\fb_addr[15]_i_12_n_0 ),
        .I2(\fb_addr[15]_i_19_n_0 ),
        .I3(\fb_addr[15]_i_15_n_0 ),
        .O(\FSM_onehot_drawStage[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_drawStage[5]_i_7 
       (.I0(\cycle_count_reg_n_0_[23] ),
        .I1(\cycle_count_reg_n_0_[22] ),
        .I2(\cycle_count_reg_n_0_[21] ),
        .O(\FSM_onehot_drawStage[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \FSM_onehot_drawStage[5]_i_8 
       (.I0(\cycle_count_reg_n_0_[60] ),
        .I1(\cycle_count_reg_n_0_[61] ),
        .I2(\cycle_count_reg_n_0_[62] ),
        .I3(\cycle_count_reg_n_0_[27] ),
        .I4(\cycle_count_reg_n_0_[28] ),
        .I5(\cycle_count_reg_n_0_[29] ),
        .O(\FSM_onehot_drawStage[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_drawStage[5]_i_9 
       (.I0(\cycle_count_reg_n_0_[25] ),
        .I1(\cycle_count_reg_n_0_[26] ),
        .I2(\cycle_count_reg_n_0_[55] ),
        .I3(\cycle_count_reg_n_0_[56] ),
        .O(\FSM_onehot_drawStage[5]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_onehot_drawStage_reg[1] 
       (.C(clk),
        .CE(drawStage),
        .D(drawStage__1[1]),
        .PRE(reset),
        .Q(drawStage__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_drawStage_reg[2] 
       (.C(clk),
        .CE(drawStage),
        .CLR(reset),
        .D(drawStage__1[2]),
        .Q(ReadAddr));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_13 
       (.CI(\FSM_onehot_drawStage_reg[2]_i_18_n_0 ),
        .CO({\FSM_onehot_drawStage_reg[2]_i_13_n_0 ,\FSM_onehot_drawStage_reg[2]_i_13_n_1 ,\FSM_onehot_drawStage_reg[2]_i_13_n_2 ,\FSM_onehot_drawStage_reg[2]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_13_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_19_n_0 ,\FSM_onehot_drawStage[2]_i_20_n_0 ,\FSM_onehot_drawStage[2]_i_21_n_0 ,\FSM_onehot_drawStage[2]_i_22_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_18 
       (.CI(\FSM_onehot_drawStage_reg[2]_i_23_n_0 ),
        .CO({\FSM_onehot_drawStage_reg[2]_i_18_n_0 ,\FSM_onehot_drawStage_reg[2]_i_18_n_1 ,\FSM_onehot_drawStage_reg[2]_i_18_n_2 ,\FSM_onehot_drawStage_reg[2]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_18_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_24_n_0 ,\FSM_onehot_drawStage[2]_i_25_n_0 ,\FSM_onehot_drawStage[2]_i_26_n_0 ,\FSM_onehot_drawStage[2]_i_27_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_2 
       (.CI(\FSM_onehot_drawStage_reg[2]_i_3_n_0 ),
        .CO({\FSM_onehot_drawStage_reg[2]_i_2_n_0 ,\FSM_onehot_drawStage_reg[2]_i_2_n_1 ,\FSM_onehot_drawStage_reg[2]_i_2_n_2 ,\FSM_onehot_drawStage_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[63] ,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_4_n_0 ,\FSM_onehot_drawStage[2]_i_5_n_0 ,\FSM_onehot_drawStage[2]_i_6_n_0 ,\FSM_onehot_drawStage[2]_i_7_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_23 
       (.CI(\FSM_onehot_drawStage_reg[2]_i_28_n_0 ),
        .CO({\FSM_onehot_drawStage_reg[2]_i_23_n_0 ,\FSM_onehot_drawStage_reg[2]_i_23_n_1 ,\FSM_onehot_drawStage_reg[2]_i_23_n_2 ,\FSM_onehot_drawStage_reg[2]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_23_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_29_n_0 ,\FSM_onehot_drawStage[2]_i_30_n_0 ,\FSM_onehot_drawStage[2]_i_31_n_0 ,\FSM_onehot_drawStage[2]_i_32_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_28 
       (.CI(\FSM_onehot_drawStage_reg[2]_i_33_n_0 ),
        .CO({\FSM_onehot_drawStage_reg[2]_i_28_n_0 ,\FSM_onehot_drawStage_reg[2]_i_28_n_1 ,\FSM_onehot_drawStage_reg[2]_i_28_n_2 ,\FSM_onehot_drawStage_reg[2]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_28_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_34_n_0 ,\FSM_onehot_drawStage[2]_i_35_n_0 ,\FSM_onehot_drawStage[2]_i_36_n_0 ,\FSM_onehot_drawStage[2]_i_37_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_3 
       (.CI(\FSM_onehot_drawStage_reg[2]_i_8_n_0 ),
        .CO({\FSM_onehot_drawStage_reg[2]_i_3_n_0 ,\FSM_onehot_drawStage_reg[2]_i_3_n_1 ,\FSM_onehot_drawStage_reg[2]_i_3_n_2 ,\FSM_onehot_drawStage_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_3_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_9_n_0 ,\FSM_onehot_drawStage[2]_i_10_n_0 ,\FSM_onehot_drawStage[2]_i_11_n_0 ,\FSM_onehot_drawStage[2]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_33 
       (.CI(1'b0),
        .CO({\FSM_onehot_drawStage_reg[2]_i_33_n_0 ,\FSM_onehot_drawStage_reg[2]_i_33_n_1 ,\FSM_onehot_drawStage_reg[2]_i_33_n_2 ,\FSM_onehot_drawStage_reg[2]_i_33_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,\FSM_onehot_drawStage[2]_i_38_n_0 }),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_33_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_39_n_0 ,\FSM_onehot_drawStage[2]_i_40_n_0 ,\FSM_onehot_drawStage[2]_i_41_n_0 ,\FSM_onehot_drawStage[2]_i_42_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \FSM_onehot_drawStage_reg[2]_i_8 
       (.CI(\FSM_onehot_drawStage_reg[2]_i_13_n_0 ),
        .CO({\FSM_onehot_drawStage_reg[2]_i_8_n_0 ,\FSM_onehot_drawStage_reg[2]_i_8_n_1 ,\FSM_onehot_drawStage_reg[2]_i_8_n_2 ,\FSM_onehot_drawStage_reg[2]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_FSM_onehot_drawStage_reg[2]_i_8_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_drawStage[2]_i_14_n_0 ,\FSM_onehot_drawStage[2]_i_15_n_0 ,\FSM_onehot_drawStage[2]_i_16_n_0 ,\FSM_onehot_drawStage[2]_i_17_n_0 }));
  (* FSM_ENCODED_STATES = "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_drawStage_reg[3] 
       (.C(clk),
        .CE(drawStage),
        .CLR(reset),
        .D(ReadAddr),
        .Q(DataShort));
  (* FSM_ENCODED_STATES = "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_drawStage_reg[4] 
       (.C(clk),
        .CE(drawStage),
        .CLR(reset),
        .D(DataShort),
        .Q(drawStage__0[4]));
  (* FSM_ENCODED_STATES = "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_drawStage_reg[5] 
       (.C(clk),
        .CE(drawStage),
        .CLR(reset),
        .D(drawStage__0[4]),
        .Q(drawStage__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_fbStage[1]_i_1 
       (.I0(\FSM_onehot_fbStage[2]_i_2_n_0 ),
        .I1(cycle_count),
        .O(\FSM_onehot_fbStage[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_fbStage[2]_i_1 
       (.I0(cycle_count),
        .I1(\FSM_onehot_fbStage[2]_i_2_n_0 ),
        .I2(\FSM_onehot_fbStage_reg_n_0_[2] ),
        .O(\FSM_onehot_fbStage[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_fbStage[2]_i_2 
       (.I0(\FSM_onehot_drawStage[5]_i_2_n_0 ),
        .I1(\FSM_onehot_drawStage[5]_i_3_n_0 ),
        .I2(cd_i_4_n_0),
        .I3(\FSM_onehot_fbStage[2]_i_3_n_0 ),
        .I4(\FSM_onehot_fbStage[2]_i_4_n_0 ),
        .I5(\FSM_onehot_drawStage[5]_i_6_n_0 ),
        .O(\FSM_onehot_fbStage[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_fbStage[2]_i_3 
       (.I0(\FSM_onehot_fbStage[2]_i_5_n_0 ),
        .I1(cd_i_7_n_0),
        .I2(cd_i_8_n_0),
        .I3(scl_i_12_n_0),
        .I4(cd_i_5_n_0),
        .O(\FSM_onehot_fbStage[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_onehot_fbStage[2]_i_4 
       (.I0(\FSM_onehot_fbStage[2]_i_6_n_0 ),
        .I1(fb_en_i_5_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\cycle_count_reg_n_0_[63] ),
        .I4(scl_i_11_n_0),
        .I5(\cycle_count[63]_i_4_n_0 ),
        .O(\FSM_onehot_fbStage[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_fbStage[2]_i_5 
       (.I0(\cycle_count_reg_n_0_[1] ),
        .I1(\cycle_count_reg_n_0_[2] ),
        .I2(\cycle_count_reg_n_0_[34] ),
        .I3(\cycle_count_reg_n_0_[35] ),
        .O(\FSM_onehot_fbStage[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \FSM_onehot_fbStage[2]_i_6 
       (.I0(\cycle_count_reg_n_0_[19] ),
        .I1(\cycle_count_reg_n_0_[20] ),
        .I2(cycle_count),
        .I3(\FSM_onehot_fbStage_reg_n_0_[2] ),
        .O(\FSM_onehot_fbStage[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_onehot_fbStage_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_fbStage[1]_i_1_n_0 ),
        .PRE(reset),
        .Q(cycle_count));
  (* FSM_ENCODED_STATES = "iSTATE:010,iSTATE0:100,iSTATE1:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fbStage_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_onehot_fbStage[2]_i_1_n_0 ),
        .Q(\FSM_onehot_fbStage_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hD4AAAAAAAAAAAAAA)) 
    \FSM_sequential_addrStage[0]_i_1 
       (.I0(addrStage__0[0]),
        .I1(addrStage__0[1]),
        .I2(addrStage__0[2]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\FSM_sequential_addrStage[2]_i_2_n_0 ),
        .I5(\FSM_sequential_addrStage[2]_i_3_n_0 ),
        .O(\FSM_sequential_addrStage[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \FSM_sequential_addrStage[1]_i_1 
       (.I0(addrStage__0[0]),
        .I1(addrStage__0[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\FSM_sequential_addrStage[2]_i_2_n_0 ),
        .I4(\FSM_sequential_addrStage[2]_i_3_n_0 ),
        .O(\FSM_sequential_addrStage[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h78F0F0F0F0F0F0F0)) 
    \FSM_sequential_addrStage[2]_i_1 
       (.I0(addrStage__0[0]),
        .I1(addrStage__0[1]),
        .I2(addrStage__0[2]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\FSM_sequential_addrStage[2]_i_2_n_0 ),
        .I5(\FSM_sequential_addrStage[2]_i_3_n_0 ),
        .O(\FSM_sequential_addrStage[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \FSM_sequential_addrStage[2]_i_2 
       (.I0(\fb_addr[15]_i_3_n_0 ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(\cycle_count_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\DataShort[15]_i_3_n_0 ),
        .O(\FSM_sequential_addrStage[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_addrStage[2]_i_3 
       (.I0(\FSM_onehot_drawStage[5]_i_3_n_0 ),
        .I1(cd_i_5_n_0),
        .I2(\FSM_sequential_addrStage[2]_i_4_n_0 ),
        .I3(\FSM_sequential_addrStage[2]_i_5_n_0 ),
        .I4(\fb_addr[15]_i_20_n_0 ),
        .I5(\FSM_sequential_initStage[6]_i_5_n_0 ),
        .O(\FSM_sequential_addrStage[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_addrStage[2]_i_4 
       (.I0(cd_i_15_n_0),
        .I1(cd_i_14_n_0),
        .I2(\cycle_count_reg_n_0_[1] ),
        .I3(\cycle_count_reg_n_0_[2] ),
        .I4(\cycle_count[63]_i_5_n_0 ),
        .I5(\fb_addr[15]_i_13_n_0 ),
        .O(\FSM_sequential_addrStage[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_addrStage[2]_i_5 
       (.I0(\cycle_count_reg_n_0_[19] ),
        .I1(\cycle_count_reg_n_0_[20] ),
        .I2(\cycle_count_reg_n_0_[37] ),
        .I3(\cycle_count_reg_n_0_[38] ),
        .O(\FSM_sequential_addrStage[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:111,iSTATE6:000" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_sequential_addrStage_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_addrStage[0]_i_1_n_0 ),
        .PRE(reset),
        .Q(addrStage__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:111,iSTATE6:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_addrStage_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_addrStage[1]_i_1_n_0 ),
        .Q(addrStage__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:111,iSTATE6:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_addrStage_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_addrStage[2]_i_1_n_0 ),
        .Q(addrStage__0[2]));
  LUT6 #(
    .INIT(64'hCCCCCCC8FFFFFFFF)) 
    \FSM_sequential_initStage[0]_i_1 
       (.I0(initStage__0[2]),
        .I1(initStage__0[6]),
        .I2(initStage__0[3]),
        .I3(initStage__0[4]),
        .I4(initStage__0[5]),
        .I5(initStage__0[0]),
        .O(\FSM_sequential_initStage[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00660666)) 
    \FSM_sequential_initStage[1]_i_1 
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[6]),
        .I4(blk_i_2_n_0),
        .O(initStage__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h07303070)) 
    \FSM_sequential_initStage[2]_i_1 
       (.I0(blk_i_2_n_0),
        .I1(initStage__0[6]),
        .I2(initStage__0[2]),
        .I3(initStage__0[0]),
        .I4(\FSM_sequential_initStage_reg_n_0_[1] ),
        .O(initStage__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \FSM_sequential_initStage[3]_i_1 
       (.I0(initStage__0[6]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[0]),
        .I4(initStage__0[3]),
        .O(\FSM_sequential_initStage[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \FSM_sequential_initStage[4]_i_1 
       (.I0(initStage__0[6]),
        .I1(initStage__0[0]),
        .I2(initStage__0[2]),
        .I3(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I4(initStage__0[3]),
        .I5(initStage__0[4]),
        .O(\FSM_sequential_initStage[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45551000)) 
    \FSM_sequential_initStage[5]_i_1 
       (.I0(initStage__0[6]),
        .I1(\FSM_sequential_initStage[5]_i_2_n_0 ),
        .I2(initStage__0[4]),
        .I3(initStage__0[3]),
        .I4(initStage__0[5]),
        .O(\FSM_sequential_initStage[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_initStage[5]_i_2 
       (.I0(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I1(initStage__0[2]),
        .I2(initStage__0[0]),
        .O(\FSM_sequential_initStage[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_sequential_initStage[6]_i_1 
       (.I0(\FSM_sequential_initStage[6]_i_3_n_0 ),
        .I1(\FSM_sequential_initStage[6]_i_4_n_0 ),
        .I2(\FSM_sequential_initStage[6]_i_5_n_0 ),
        .I3(\FSM_sequential_initStage[6]_i_6_n_0 ),
        .I4(\FSM_sequential_initStage[6]_i_7_n_0 ),
        .I5(\FSM_sequential_initStage[6]_i_8_n_0 ),
        .O(initStage));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_initStage[6]_i_10 
       (.I0(\cycle_count_reg_n_0_[10] ),
        .I1(\cycle_count_reg_n_0_[11] ),
        .I2(\cycle_count_reg_n_0_[14] ),
        .I3(\cycle_count_reg_n_0_[13] ),
        .I4(\cycle_count_reg_n_0_[56] ),
        .I5(\cycle_count_reg_n_0_[55] ),
        .O(\FSM_sequential_initStage[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_initStage[6]_i_11 
       (.I0(\cycle_count_reg_n_0_[25] ),
        .I1(\cycle_count_reg_n_0_[26] ),
        .I2(\cycle_count_reg_n_0_[37] ),
        .I3(\cycle_count_reg_n_0_[38] ),
        .O(\FSM_sequential_initStage[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A3A3A3A3A3A)) 
    \FSM_sequential_initStage[6]_i_2 
       (.I0(\FSM_sequential_initStage[6]_i_9_n_0 ),
        .I1(blk_i_2_n_0),
        .I2(initStage__0[6]),
        .I3(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I4(initStage__0[0]),
        .I5(initStage__0[2]),
        .O(initStage__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_initStage[6]_i_3 
       (.I0(\fb_addr[15]_i_18_n_0 ),
        .I1(\fb_addr[15]_i_16_n_0 ),
        .I2(cd_i_5_n_0),
        .O(\FSM_sequential_initStage[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_initStage[6]_i_4 
       (.I0(\cycle_count_reg_n_0_[50] ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(\cycle_count_reg_n_0_[53] ),
        .I3(\cycle_count_reg_n_0_[8] ),
        .I4(\fb_addr[15]_i_9_n_0 ),
        .I5(\fb_addr[15]_i_8_n_0 ),
        .O(\FSM_sequential_initStage[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_initStage[6]_i_5 
       (.I0(\fb_addr[15]_i_12_n_0 ),
        .I1(\fb_addr[15]_i_19_n_0 ),
        .I2(\fb_addr[15]_i_15_n_0 ),
        .I3(\FSM_onehot_drawStage[5]_i_2_n_0 ),
        .O(\FSM_sequential_initStage[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_initStage[6]_i_6 
       (.I0(\cycle_count_reg_n_0_[4] ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(\fb_addr[15]_i_20_n_0 ),
        .I3(cd_i_10_n_0),
        .I4(\fb_addr[15]_i_17_n_0 ),
        .I5(\fb_addr[15]_i_11_n_0 ),
        .O(\FSM_sequential_initStage[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \FSM_sequential_initStage[6]_i_7 
       (.I0(\FSM_sequential_initStage[6]_i_10_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cycle_count_reg_n_0_[35] ),
        .I5(\cycle_count_reg_n_0_[34] ),
        .O(\FSM_sequential_initStage[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_initStage[6]_i_8 
       (.I0(cd_i_14_n_0),
        .I1(cd_i_12_n_0),
        .I2(cd_i_8_n_0),
        .I3(\FSM_sequential_initStage[6]_i_11_n_0 ),
        .I4(cd_i_15_n_0),
        .I5(\cycle_count[63]_i_4_n_0 ),
        .O(\FSM_sequential_initStage[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_initStage[6]_i_9 
       (.I0(initStage__0[5]),
        .I1(initStage__0[3]),
        .I2(initStage__0[4]),
        .I3(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I4(initStage__0[2]),
        .I5(initStage__0[0]),
        .O(\FSM_sequential_initStage[6]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000" *) 
  FDPE #(
    .INIT(1'b0)) 
    \FSM_sequential_initStage_reg[0] 
       (.C(clk),
        .CE(initStage),
        .D(\FSM_sequential_initStage[0]_i_1_n_0 ),
        .PRE(reset),
        .Q(initStage__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_initStage_reg[1] 
       (.C(clk),
        .CE(initStage),
        .CLR(reset),
        .D(initStage__1[1]),
        .Q(\FSM_sequential_initStage_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_initStage_reg[2] 
       (.C(clk),
        .CE(initStage),
        .CLR(reset),
        .D(initStage__1[2]),
        .Q(initStage__0[2]));
  (* FSM_ENCODED_STATES = "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_initStage_reg[3] 
       (.C(clk),
        .CE(initStage),
        .CLR(reset),
        .D(\FSM_sequential_initStage[3]_i_1_n_0 ),
        .Q(initStage__0[3]));
  (* FSM_ENCODED_STATES = "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_initStage_reg[4] 
       (.C(clk),
        .CE(initStage),
        .CLR(reset),
        .D(\FSM_sequential_initStage[4]_i_1_n_0 ),
        .Q(initStage__0[4]));
  (* FSM_ENCODED_STATES = "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_initStage_reg[5] 
       (.C(clk),
        .CE(initStage),
        .CLR(reset),
        .D(\FSM_sequential_initStage[5]_i_1_n_0 ),
        .Q(initStage__0[5]));
  (* FSM_ENCODED_STATES = "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_initStage_reg[6] 
       (.C(clk),
        .CE(initStage),
        .CLR(reset),
        .D(initStage__1[6]),
        .Q(initStage__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Pixel[0]_i_1 
       (.I0(drawStage__0[4]),
        .I1(\Pixel_reg_n_0_[0] ),
        .O(Pixel__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Pixel[10]_i_1 
       (.I0(drawStage__0[5]),
        .I1(in4[10]),
        .O(Pixel__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[11]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[11]),
        .O(Pixel__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Pixel[12]_i_1 
       (.I0(drawStage__0[5]),
        .I1(in4[12]),
        .O(Pixel__0[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[12]_i_3 
       (.I0(\Pixel_reg_n_0_[12] ),
        .O(\Pixel[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[12]_i_4 
       (.I0(\Pixel_reg_n_0_[11] ),
        .O(\Pixel[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[12]_i_5 
       (.I0(\Pixel_reg_n_0_[10] ),
        .O(\Pixel[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[12]_i_6 
       (.I0(\Pixel_reg_n_0_[9] ),
        .O(\Pixel[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[13]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[13]),
        .O(Pixel__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Pixel[14]_i_1 
       (.I0(drawStage__0[5]),
        .I1(in4[14]),
        .O(Pixel__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Pixel[15]_i_1 
       (.I0(drawStage__0[5]),
        .I1(in4[15]),
        .O(Pixel__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[16]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[16]),
        .O(Pixel__0[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[16]_i_3 
       (.I0(\Pixel_reg_n_0_[16] ),
        .O(\Pixel[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[16]_i_4 
       (.I0(\Pixel_reg_n_0_[15] ),
        .O(\Pixel[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[16]_i_5 
       (.I0(\Pixel_reg_n_0_[14] ),
        .O(\Pixel[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[16]_i_6 
       (.I0(\Pixel_reg_n_0_[13] ),
        .O(\Pixel[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[17]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[17]),
        .O(Pixel__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[18]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[18]),
        .O(Pixel__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[19]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[19]),
        .O(Pixel__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[1]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[1]),
        .O(Pixel__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[20]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[20]),
        .O(Pixel__0[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[20]_i_3 
       (.I0(\Pixel_reg_n_0_[20] ),
        .O(\Pixel[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[20]_i_4 
       (.I0(\Pixel_reg_n_0_[19] ),
        .O(\Pixel[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[20]_i_5 
       (.I0(\Pixel_reg_n_0_[18] ),
        .O(\Pixel[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[20]_i_6 
       (.I0(\Pixel_reg_n_0_[17] ),
        .O(\Pixel[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[21]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[21]),
        .O(Pixel__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[22]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[22]),
        .O(Pixel__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[23]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[23]),
        .O(Pixel__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[24]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[24]),
        .O(Pixel__0[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[24]_i_3 
       (.I0(\Pixel_reg_n_0_[24] ),
        .O(\Pixel[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[24]_i_4 
       (.I0(\Pixel_reg_n_0_[23] ),
        .O(\Pixel[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[24]_i_5 
       (.I0(\Pixel_reg_n_0_[22] ),
        .O(\Pixel[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[24]_i_6 
       (.I0(\Pixel_reg_n_0_[21] ),
        .O(\Pixel[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[25]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[25]),
        .O(Pixel__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[26]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[26]),
        .O(Pixel__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[27]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[27]),
        .O(Pixel__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[28]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[28]),
        .O(Pixel__0[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[28]_i_3 
       (.I0(\Pixel_reg_n_0_[28] ),
        .O(\Pixel[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[28]_i_4 
       (.I0(\Pixel_reg_n_0_[27] ),
        .O(\Pixel[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[28]_i_5 
       (.I0(\Pixel_reg_n_0_[26] ),
        .O(\Pixel[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[28]_i_6 
       (.I0(\Pixel_reg_n_0_[25] ),
        .O(\Pixel[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[29]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[29]),
        .O(Pixel__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[2]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[2]),
        .O(Pixel__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[30]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[30]),
        .O(Pixel__0[30]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[31]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[31]),
        .O(Pixel__0[31]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[32]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[32]),
        .O(Pixel__0[32]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[32]_i_3 
       (.I0(\Pixel_reg_n_0_[32] ),
        .O(\Pixel[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[32]_i_4 
       (.I0(\Pixel_reg_n_0_[31] ),
        .O(\Pixel[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[32]_i_5 
       (.I0(\Pixel_reg_n_0_[30] ),
        .O(\Pixel[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[32]_i_6 
       (.I0(\Pixel_reg_n_0_[29] ),
        .O(\Pixel[32]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[33]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[33]),
        .O(Pixel__0[33]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[34]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[34]),
        .O(Pixel__0[34]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[35]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[35]),
        .O(Pixel__0[35]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[36]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[36]),
        .O(Pixel__0[36]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[36]_i_3 
       (.I0(\Pixel_reg_n_0_[36] ),
        .O(\Pixel[36]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[36]_i_4 
       (.I0(\Pixel_reg_n_0_[35] ),
        .O(\Pixel[36]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[36]_i_5 
       (.I0(\Pixel_reg_n_0_[34] ),
        .O(\Pixel[36]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[36]_i_6 
       (.I0(\Pixel_reg_n_0_[33] ),
        .O(\Pixel[36]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[37]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[37]),
        .O(Pixel__0[37]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[38]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[38]),
        .O(Pixel__0[38]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[39]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[39]),
        .O(Pixel__0[39]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[3]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[3]),
        .O(Pixel__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[40]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[40]),
        .O(Pixel__0[40]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[40]_i_3 
       (.I0(\Pixel_reg_n_0_[40] ),
        .O(\Pixel[40]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[40]_i_4 
       (.I0(\Pixel_reg_n_0_[39] ),
        .O(\Pixel[40]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[40]_i_5 
       (.I0(\Pixel_reg_n_0_[38] ),
        .O(\Pixel[40]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[40]_i_6 
       (.I0(\Pixel_reg_n_0_[37] ),
        .O(\Pixel[40]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[41]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[41]),
        .O(Pixel__0[41]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[42]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[42]),
        .O(Pixel__0[42]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[43]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[43]),
        .O(Pixel__0[43]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[44]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[44]),
        .O(Pixel__0[44]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[44]_i_3 
       (.I0(\Pixel_reg_n_0_[44] ),
        .O(\Pixel[44]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[44]_i_4 
       (.I0(\Pixel_reg_n_0_[43] ),
        .O(\Pixel[44]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[44]_i_5 
       (.I0(\Pixel_reg_n_0_[42] ),
        .O(\Pixel[44]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[44]_i_6 
       (.I0(\Pixel_reg_n_0_[41] ),
        .O(\Pixel[44]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[45]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[45]),
        .O(Pixel__0[45]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[46]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[46]),
        .O(Pixel__0[46]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[47]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[47]),
        .O(Pixel__0[47]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[48]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[48]),
        .O(Pixel__0[48]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[48]_i_3 
       (.I0(\Pixel_reg_n_0_[48] ),
        .O(\Pixel[48]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[48]_i_4 
       (.I0(\Pixel_reg_n_0_[47] ),
        .O(\Pixel[48]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[48]_i_5 
       (.I0(\Pixel_reg_n_0_[46] ),
        .O(\Pixel[48]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[48]_i_6 
       (.I0(\Pixel_reg_n_0_[45] ),
        .O(\Pixel[48]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[49]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[49]),
        .O(Pixel__0[49]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[4]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[4]),
        .O(Pixel__0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[4]_i_3 
       (.I0(\Pixel_reg_n_0_[4] ),
        .O(\Pixel[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[4]_i_4 
       (.I0(\Pixel_reg_n_0_[3] ),
        .O(\Pixel[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[4]_i_5 
       (.I0(\Pixel_reg_n_0_[2] ),
        .O(\Pixel[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[4]_i_6 
       (.I0(\Pixel_reg_n_0_[1] ),
        .O(\Pixel[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[50]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[50]),
        .O(Pixel__0[50]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[51]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[51]),
        .O(Pixel__0[51]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[52]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[52]),
        .O(Pixel__0[52]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[52]_i_3 
       (.I0(\Pixel_reg_n_0_[52] ),
        .O(\Pixel[52]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[52]_i_4 
       (.I0(\Pixel_reg_n_0_[51] ),
        .O(\Pixel[52]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[52]_i_5 
       (.I0(\Pixel_reg_n_0_[50] ),
        .O(\Pixel[52]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[52]_i_6 
       (.I0(\Pixel_reg_n_0_[49] ),
        .O(\Pixel[52]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[53]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[53]),
        .O(Pixel__0[53]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[54]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[54]),
        .O(Pixel__0[54]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[55]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[55]),
        .O(Pixel__0[55]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[56]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[56]),
        .O(Pixel__0[56]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[56]_i_3 
       (.I0(\Pixel_reg_n_0_[56] ),
        .O(\Pixel[56]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[56]_i_4 
       (.I0(\Pixel_reg_n_0_[55] ),
        .O(\Pixel[56]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[56]_i_5 
       (.I0(\Pixel_reg_n_0_[54] ),
        .O(\Pixel[56]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[56]_i_6 
       (.I0(\Pixel_reg_n_0_[53] ),
        .O(\Pixel[56]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[57]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[57]),
        .O(Pixel__0[57]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[58]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[58]),
        .O(Pixel__0[58]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[59]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[59]),
        .O(Pixel__0[59]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[5]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[5]),
        .O(Pixel__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[60]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[60]),
        .O(Pixel__0[60]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[60]_i_3 
       (.I0(\Pixel_reg_n_0_[60] ),
        .O(\Pixel[60]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[60]_i_4 
       (.I0(\Pixel_reg_n_0_[59] ),
        .O(\Pixel[60]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[60]_i_5 
       (.I0(\Pixel_reg_n_0_[58] ),
        .O(\Pixel[60]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[60]_i_6 
       (.I0(\Pixel_reg_n_0_[57] ),
        .O(\Pixel[60]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[61]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[61]),
        .O(Pixel__0[61]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[62]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[62]),
        .O(Pixel__0[62]));
  LUT4 #(
    .INIT(16'hA888)) 
    \Pixel[63]_i_1 
       (.I0(drawStage),
        .I1(drawStage__0[4]),
        .I2(\FSM_onehot_drawStage_reg[2]_i_2_n_0 ),
        .I3(drawStage__0[5]),
        .O(\Pixel[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[63]_i_2 
       (.I0(drawStage__0[4]),
        .I1(in4[63]),
        .O(Pixel__0[63]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[63]_i_4 
       (.I0(\Pixel_reg_n_0_[63] ),
        .O(\Pixel[63]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[63]_i_5 
       (.I0(\Pixel_reg_n_0_[62] ),
        .O(\Pixel[63]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[63]_i_6 
       (.I0(\Pixel_reg_n_0_[61] ),
        .O(\Pixel[63]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[6]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[6]),
        .O(Pixel__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Pixel[7]_i_1 
       (.I0(drawStage__0[4]),
        .I1(in4[7]),
        .O(Pixel__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Pixel[8]_i_1 
       (.I0(drawStage__0[5]),
        .I1(in4[8]),
        .O(Pixel__0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[8]_i_3 
       (.I0(\Pixel_reg_n_0_[8] ),
        .O(\Pixel[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[8]_i_4 
       (.I0(\Pixel_reg_n_0_[7] ),
        .O(\Pixel[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[8]_i_5 
       (.I0(\Pixel_reg_n_0_[6] ),
        .O(\Pixel[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Pixel[8]_i_6 
       (.I0(\Pixel_reg_n_0_[5] ),
        .O(\Pixel[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Pixel[9]_i_1 
       (.I0(drawStage__0[5]),
        .I1(in4[9]),
        .O(Pixel__0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[0] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[0]),
        .Q(\Pixel_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b0)) 
    \Pixel_reg[10] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .D(Pixel__0[10]),
        .PRE(reset),
        .Q(\Pixel_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[11] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[11]),
        .Q(\Pixel_reg_n_0_[11] ));
  FDPE #(
    .INIT(1'b0)) 
    \Pixel_reg[12] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .D(Pixel__0[12]),
        .PRE(reset),
        .Q(\Pixel_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[12]_i_2 
       (.CI(\Pixel_reg[8]_i_2_n_0 ),
        .CO({\Pixel_reg[12]_i_2_n_0 ,\Pixel_reg[12]_i_2_n_1 ,\Pixel_reg[12]_i_2_n_2 ,\Pixel_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[12] ,\Pixel_reg_n_0_[11] ,\Pixel_reg_n_0_[10] ,\Pixel_reg_n_0_[9] }),
        .O(in4[12:9]),
        .S({\Pixel[12]_i_3_n_0 ,\Pixel[12]_i_4_n_0 ,\Pixel[12]_i_5_n_0 ,\Pixel[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[13] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[13]),
        .Q(\Pixel_reg_n_0_[13] ));
  FDPE #(
    .INIT(1'b0)) 
    \Pixel_reg[14] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .D(Pixel__0[14]),
        .PRE(reset),
        .Q(\Pixel_reg_n_0_[14] ));
  FDPE #(
    .INIT(1'b0)) 
    \Pixel_reg[15] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .D(Pixel__0[15]),
        .PRE(reset),
        .Q(\Pixel_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[16] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[16]),
        .Q(\Pixel_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[16]_i_2 
       (.CI(\Pixel_reg[12]_i_2_n_0 ),
        .CO({\Pixel_reg[16]_i_2_n_0 ,\Pixel_reg[16]_i_2_n_1 ,\Pixel_reg[16]_i_2_n_2 ,\Pixel_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[16] ,\Pixel_reg_n_0_[15] ,\Pixel_reg_n_0_[14] ,\Pixel_reg_n_0_[13] }),
        .O(in4[16:13]),
        .S({\Pixel[16]_i_3_n_0 ,\Pixel[16]_i_4_n_0 ,\Pixel[16]_i_5_n_0 ,\Pixel[16]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[17] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[17]),
        .Q(\Pixel_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[18] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[18]),
        .Q(\Pixel_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[19] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[19]),
        .Q(\Pixel_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[1] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[1]),
        .Q(\Pixel_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[20] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[20]),
        .Q(\Pixel_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[20]_i_2 
       (.CI(\Pixel_reg[16]_i_2_n_0 ),
        .CO({\Pixel_reg[20]_i_2_n_0 ,\Pixel_reg[20]_i_2_n_1 ,\Pixel_reg[20]_i_2_n_2 ,\Pixel_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[20] ,\Pixel_reg_n_0_[19] ,\Pixel_reg_n_0_[18] ,\Pixel_reg_n_0_[17] }),
        .O(in4[20:17]),
        .S({\Pixel[20]_i_3_n_0 ,\Pixel[20]_i_4_n_0 ,\Pixel[20]_i_5_n_0 ,\Pixel[20]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[21] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[21]),
        .Q(\Pixel_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[22] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[22]),
        .Q(\Pixel_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[23] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[23]),
        .Q(\Pixel_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[24] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[24]),
        .Q(\Pixel_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[24]_i_2 
       (.CI(\Pixel_reg[20]_i_2_n_0 ),
        .CO({\Pixel_reg[24]_i_2_n_0 ,\Pixel_reg[24]_i_2_n_1 ,\Pixel_reg[24]_i_2_n_2 ,\Pixel_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[24] ,\Pixel_reg_n_0_[23] ,\Pixel_reg_n_0_[22] ,\Pixel_reg_n_0_[21] }),
        .O(in4[24:21]),
        .S({\Pixel[24]_i_3_n_0 ,\Pixel[24]_i_4_n_0 ,\Pixel[24]_i_5_n_0 ,\Pixel[24]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[25] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[25]),
        .Q(\Pixel_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[26] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[26]),
        .Q(\Pixel_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[27] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[27]),
        .Q(\Pixel_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[28] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[28]),
        .Q(\Pixel_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[28]_i_2 
       (.CI(\Pixel_reg[24]_i_2_n_0 ),
        .CO({\Pixel_reg[28]_i_2_n_0 ,\Pixel_reg[28]_i_2_n_1 ,\Pixel_reg[28]_i_2_n_2 ,\Pixel_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[28] ,\Pixel_reg_n_0_[27] ,\Pixel_reg_n_0_[26] ,\Pixel_reg_n_0_[25] }),
        .O(in4[28:25]),
        .S({\Pixel[28]_i_3_n_0 ,\Pixel[28]_i_4_n_0 ,\Pixel[28]_i_5_n_0 ,\Pixel[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[29] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[29]),
        .Q(\Pixel_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[2] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[2]),
        .Q(\Pixel_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[30] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[30]),
        .Q(\Pixel_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[31] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[31]),
        .Q(\Pixel_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[32] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[32]),
        .Q(\Pixel_reg_n_0_[32] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[32]_i_2 
       (.CI(\Pixel_reg[28]_i_2_n_0 ),
        .CO({\Pixel_reg[32]_i_2_n_0 ,\Pixel_reg[32]_i_2_n_1 ,\Pixel_reg[32]_i_2_n_2 ,\Pixel_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[32] ,\Pixel_reg_n_0_[31] ,\Pixel_reg_n_0_[30] ,\Pixel_reg_n_0_[29] }),
        .O(in4[32:29]),
        .S({\Pixel[32]_i_3_n_0 ,\Pixel[32]_i_4_n_0 ,\Pixel[32]_i_5_n_0 ,\Pixel[32]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[33] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[33]),
        .Q(\Pixel_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[34] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[34]),
        .Q(\Pixel_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[35] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[35]),
        .Q(\Pixel_reg_n_0_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[36] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[36]),
        .Q(\Pixel_reg_n_0_[36] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[36]_i_2 
       (.CI(\Pixel_reg[32]_i_2_n_0 ),
        .CO({\Pixel_reg[36]_i_2_n_0 ,\Pixel_reg[36]_i_2_n_1 ,\Pixel_reg[36]_i_2_n_2 ,\Pixel_reg[36]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[36] ,\Pixel_reg_n_0_[35] ,\Pixel_reg_n_0_[34] ,\Pixel_reg_n_0_[33] }),
        .O(in4[36:33]),
        .S({\Pixel[36]_i_3_n_0 ,\Pixel[36]_i_4_n_0 ,\Pixel[36]_i_5_n_0 ,\Pixel[36]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[37] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[37]),
        .Q(\Pixel_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[38] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[38]),
        .Q(\Pixel_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[39] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[39]),
        .Q(\Pixel_reg_n_0_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[3] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[3]),
        .Q(\Pixel_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[40] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[40]),
        .Q(\Pixel_reg_n_0_[40] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[40]_i_2 
       (.CI(\Pixel_reg[36]_i_2_n_0 ),
        .CO({\Pixel_reg[40]_i_2_n_0 ,\Pixel_reg[40]_i_2_n_1 ,\Pixel_reg[40]_i_2_n_2 ,\Pixel_reg[40]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[40] ,\Pixel_reg_n_0_[39] ,\Pixel_reg_n_0_[38] ,\Pixel_reg_n_0_[37] }),
        .O(in4[40:37]),
        .S({\Pixel[40]_i_3_n_0 ,\Pixel[40]_i_4_n_0 ,\Pixel[40]_i_5_n_0 ,\Pixel[40]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[41] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[41]),
        .Q(\Pixel_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[42] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[42]),
        .Q(\Pixel_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[43] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[43]),
        .Q(\Pixel_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[44] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[44]),
        .Q(\Pixel_reg_n_0_[44] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[44]_i_2 
       (.CI(\Pixel_reg[40]_i_2_n_0 ),
        .CO({\Pixel_reg[44]_i_2_n_0 ,\Pixel_reg[44]_i_2_n_1 ,\Pixel_reg[44]_i_2_n_2 ,\Pixel_reg[44]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[44] ,\Pixel_reg_n_0_[43] ,\Pixel_reg_n_0_[42] ,\Pixel_reg_n_0_[41] }),
        .O(in4[44:41]),
        .S({\Pixel[44]_i_3_n_0 ,\Pixel[44]_i_4_n_0 ,\Pixel[44]_i_5_n_0 ,\Pixel[44]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[45] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[45]),
        .Q(\Pixel_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[46] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[46]),
        .Q(\Pixel_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[47] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[47]),
        .Q(\Pixel_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[48] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[48]),
        .Q(\Pixel_reg_n_0_[48] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[48]_i_2 
       (.CI(\Pixel_reg[44]_i_2_n_0 ),
        .CO({\Pixel_reg[48]_i_2_n_0 ,\Pixel_reg[48]_i_2_n_1 ,\Pixel_reg[48]_i_2_n_2 ,\Pixel_reg[48]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[48] ,\Pixel_reg_n_0_[47] ,\Pixel_reg_n_0_[46] ,\Pixel_reg_n_0_[45] }),
        .O(in4[48:45]),
        .S({\Pixel[48]_i_3_n_0 ,\Pixel[48]_i_4_n_0 ,\Pixel[48]_i_5_n_0 ,\Pixel[48]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[49] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[49]),
        .Q(\Pixel_reg_n_0_[49] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[4] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[4]),
        .Q(\Pixel_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\Pixel_reg[4]_i_2_n_0 ,\Pixel_reg[4]_i_2_n_1 ,\Pixel_reg[4]_i_2_n_2 ,\Pixel_reg[4]_i_2_n_3 }),
        .CYINIT(\Pixel_reg_n_0_[0] ),
        .DI({\Pixel_reg_n_0_[4] ,\Pixel_reg_n_0_[3] ,\Pixel_reg_n_0_[2] ,\Pixel_reg_n_0_[1] }),
        .O(in4[4:1]),
        .S({\Pixel[4]_i_3_n_0 ,\Pixel[4]_i_4_n_0 ,\Pixel[4]_i_5_n_0 ,\Pixel[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[50] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[50]),
        .Q(\Pixel_reg_n_0_[50] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[51] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[51]),
        .Q(\Pixel_reg_n_0_[51] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[52] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[52]),
        .Q(\Pixel_reg_n_0_[52] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[52]_i_2 
       (.CI(\Pixel_reg[48]_i_2_n_0 ),
        .CO({\Pixel_reg[52]_i_2_n_0 ,\Pixel_reg[52]_i_2_n_1 ,\Pixel_reg[52]_i_2_n_2 ,\Pixel_reg[52]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[52] ,\Pixel_reg_n_0_[51] ,\Pixel_reg_n_0_[50] ,\Pixel_reg_n_0_[49] }),
        .O(in4[52:49]),
        .S({\Pixel[52]_i_3_n_0 ,\Pixel[52]_i_4_n_0 ,\Pixel[52]_i_5_n_0 ,\Pixel[52]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[53] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[53]),
        .Q(\Pixel_reg_n_0_[53] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[54] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[54]),
        .Q(\Pixel_reg_n_0_[54] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[55] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[55]),
        .Q(\Pixel_reg_n_0_[55] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[56] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[56]),
        .Q(\Pixel_reg_n_0_[56] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[56]_i_2 
       (.CI(\Pixel_reg[52]_i_2_n_0 ),
        .CO({\Pixel_reg[56]_i_2_n_0 ,\Pixel_reg[56]_i_2_n_1 ,\Pixel_reg[56]_i_2_n_2 ,\Pixel_reg[56]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[56] ,\Pixel_reg_n_0_[55] ,\Pixel_reg_n_0_[54] ,\Pixel_reg_n_0_[53] }),
        .O(in4[56:53]),
        .S({\Pixel[56]_i_3_n_0 ,\Pixel[56]_i_4_n_0 ,\Pixel[56]_i_5_n_0 ,\Pixel[56]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[57] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[57]),
        .Q(\Pixel_reg_n_0_[57] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[58] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[58]),
        .Q(\Pixel_reg_n_0_[58] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[59] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[59]),
        .Q(\Pixel_reg_n_0_[59] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[5] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[5]),
        .Q(\Pixel_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[60] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[60]),
        .Q(\Pixel_reg_n_0_[60] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[60]_i_2 
       (.CI(\Pixel_reg[56]_i_2_n_0 ),
        .CO({\Pixel_reg[60]_i_2_n_0 ,\Pixel_reg[60]_i_2_n_1 ,\Pixel_reg[60]_i_2_n_2 ,\Pixel_reg[60]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[60] ,\Pixel_reg_n_0_[59] ,\Pixel_reg_n_0_[58] ,\Pixel_reg_n_0_[57] }),
        .O(in4[60:57]),
        .S({\Pixel[60]_i_3_n_0 ,\Pixel[60]_i_4_n_0 ,\Pixel[60]_i_5_n_0 ,\Pixel[60]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[61] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[61]),
        .Q(\Pixel_reg_n_0_[61] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[62] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[62]),
        .Q(\Pixel_reg_n_0_[62] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[63] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[63]),
        .Q(\Pixel_reg_n_0_[63] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[63]_i_3 
       (.CI(\Pixel_reg[60]_i_2_n_0 ),
        .CO({\NLW_Pixel_reg[63]_i_3_CO_UNCONNECTED [3:2],\Pixel_reg[63]_i_3_n_2 ,\Pixel_reg[63]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Pixel_reg_n_0_[62] ,\Pixel_reg_n_0_[61] }),
        .O({\NLW_Pixel_reg[63]_i_3_O_UNCONNECTED [3],in4[63:61]}),
        .S({1'b0,\Pixel[63]_i_4_n_0 ,\Pixel[63]_i_5_n_0 ,\Pixel[63]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[6] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[6]),
        .Q(\Pixel_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Pixel_reg[7] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .CLR(reset),
        .D(Pixel__0[7]),
        .Q(\Pixel_reg_n_0_[7] ));
  FDPE #(
    .INIT(1'b0)) 
    \Pixel_reg[8] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .D(Pixel__0[8]),
        .PRE(reset),
        .Q(\Pixel_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Pixel_reg[8]_i_2 
       (.CI(\Pixel_reg[4]_i_2_n_0 ),
        .CO({\Pixel_reg[8]_i_2_n_0 ,\Pixel_reg[8]_i_2_n_1 ,\Pixel_reg[8]_i_2_n_2 ,\Pixel_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\Pixel_reg_n_0_[8] ,\Pixel_reg_n_0_[7] ,\Pixel_reg_n_0_[6] ,\Pixel_reg_n_0_[5] }),
        .O(in4[8:5]),
        .S({\Pixel[8]_i_3_n_0 ,\Pixel[8]_i_4_n_0 ,\Pixel[8]_i_5_n_0 ,\Pixel[8]_i_6_n_0 }));
  FDPE #(
    .INIT(1'b0)) 
    \Pixel_reg[9] 
       (.C(clk),
        .CE(\Pixel[63]_i_1_n_0 ),
        .D(Pixel__0[9]),
        .PRE(reset),
        .Q(\Pixel_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'h08)) 
    \ReadAddr[15]_i_1 
       (.I0(drawStage),
        .I1(ReadAddr),
        .I2(reset),
        .O(ReadAddr0));
  FDRE \ReadAddr_reg[0] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[0] ),
        .Q(ReadAddr__0[0]),
        .R(1'b0));
  FDRE \ReadAddr_reg[10] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[10] ),
        .Q(ReadAddr__0[10]),
        .R(1'b0));
  FDRE \ReadAddr_reg[11] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[11] ),
        .Q(ReadAddr__0[11]),
        .R(1'b0));
  FDRE \ReadAddr_reg[12] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[12] ),
        .Q(ReadAddr__0[12]),
        .R(1'b0));
  FDRE \ReadAddr_reg[13] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[13] ),
        .Q(ReadAddr__0[13]),
        .R(1'b0));
  FDRE \ReadAddr_reg[14] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[14] ),
        .Q(ReadAddr__0[14]),
        .R(1'b0));
  FDRE \ReadAddr_reg[15] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[15] ),
        .Q(ReadAddr__0[15]),
        .R(1'b0));
  FDRE \ReadAddr_reg[1] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[1] ),
        .Q(ReadAddr__0[1]),
        .R(1'b0));
  FDRE \ReadAddr_reg[2] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[2] ),
        .Q(ReadAddr__0[2]),
        .R(1'b0));
  FDRE \ReadAddr_reg[3] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[3] ),
        .Q(ReadAddr__0[3]),
        .R(1'b0));
  FDRE \ReadAddr_reg[4] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[4] ),
        .Q(ReadAddr__0[4]),
        .R(1'b0));
  FDRE \ReadAddr_reg[5] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[5] ),
        .Q(ReadAddr__0[5]),
        .R(1'b0));
  FDRE \ReadAddr_reg[6] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[6] ),
        .Q(ReadAddr__0[6]),
        .R(1'b0));
  FDRE \ReadAddr_reg[7] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[7] ),
        .Q(ReadAddr__0[7]),
        .R(1'b0));
  FDRE \ReadAddr_reg[8] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[8] ),
        .Q(ReadAddr__0[8]),
        .R(1'b0));
  FDRE \ReadAddr_reg[9] 
       (.C(clk),
        .CE(ReadAddr0),
        .D(\Pixel_reg_n_0_[9] ),
        .Q(ReadAddr__0[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ReadData[15]_i_1 
       (.I0(fb_en_i_2_n_0),
        .I1(reset),
        .O(ReadData0));
  FDRE \ReadData_reg[0] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[0]),
        .Q(\ReadData_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ReadData_reg[10] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[9]),
        .Q(\ReadData_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ReadData_reg[11] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[10]),
        .Q(\ReadData_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \ReadData_reg[12] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[11]),
        .Q(\ReadData_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \ReadData_reg[13] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[12]),
        .Q(\ReadData_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \ReadData_reg[14] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[13]),
        .Q(\ReadData_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \ReadData_reg[15] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[14]),
        .Q(\ReadData_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \ReadData_reg[1] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[1]),
        .Q(\ReadData_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ReadData_reg[2] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[2]),
        .Q(\ReadData_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ReadData_reg[3] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[3]),
        .Q(\ReadData_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ReadData_reg[4] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[4]),
        .Q(\ReadData_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ReadData_reg[5] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[5]),
        .Q(\ReadData_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ReadData_reg[6] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[6]),
        .Q(\ReadData_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ReadData_reg[8] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[7]),
        .Q(\ReadData_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \ReadData_reg[9] 
       (.C(clk),
        .CE(ReadData0),
        .D(fb_din[8]),
        .Q(\ReadData_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \backState[1]_i_1 
       (.I0(\backState[1]_i_2_n_0 ),
        .I1(\backState[2]_i_2_n_0 ),
        .I2(\backState[2]_i_3_n_0 ),
        .I3(\backState[2]_i_4_n_0 ),
        .I4(scl_i_3_n_0),
        .I5(\backState_reg_n_0_[1] ),
        .O(\backState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \backState[1]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(addrStage__0[0]),
        .I3(addrStage__0[2]),
        .I4(addrStage__0[1]),
        .O(\backState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \backState[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\backState[2]_i_2_n_0 ),
        .I2(\backState[2]_i_3_n_0 ),
        .I3(\backState[2]_i_4_n_0 ),
        .I4(scl_i_3_n_0),
        .I5(\backState_reg_n_0_[2] ),
        .O(\backState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0EFE0EFE0E0E0)) 
    \backState[2]_i_2 
       (.I0(\backState[2]_i_5_n_0 ),
        .I1(\backState[2]_i_6_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(DataShort),
        .I5(ReadAddr),
        .O(\backState[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \backState[2]_i_3 
       (.I0(\cycle_count_reg_n_0_[29] ),
        .I1(\cycle_count_reg_n_0_[28] ),
        .O(\backState[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \backState[2]_i_4 
       (.I0(\cycle_count_reg_n_0_[63] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\backState[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \backState[2]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(addrStage__0[2]),
        .I2(addrStage__0[1]),
        .I3(addrStage__0[0]),
        .O(\backState[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005775)) 
    \backState[2]_i_6 
       (.I0(\backState[2]_i_7_n_0 ),
        .I1(initStage__0[0]),
        .I2(initStage__0[2]),
        .I3(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I4(\backState[2]_i_8_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\backState[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0F00001)) 
    \backState[2]_i_7 
       (.I0(initStage__0[4]),
        .I1(initStage__0[5]),
        .I2(initStage__0[6]),
        .I3(initStage__0[0]),
        .I4(initStage__0[2]),
        .I5(initStage__0[3]),
        .O(\backState[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \backState[2]_i_8 
       (.I0(initStage__0[3]),
        .I1(initStage__0[4]),
        .I2(initStage__0[5]),
        .I3(initStage__0[6]),
        .O(\backState[2]_i_8_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \backState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\backState[1]_i_1_n_0 ),
        .PRE(reset),
        .Q(\backState_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \backState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\backState[2]_i_1_n_0 ),
        .Q(\backState_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    blk_i_1
       (.I0(blk_i_2_n_0),
        .I1(blk_i_3_n_0),
        .I2(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I3(initStage__0[0]),
        .I4(initStage),
        .I5(blk),
        .O(blk_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    blk_i_2
       (.I0(initStage__0[5]),
        .I1(initStage__0[4]),
        .I2(initStage__0[3]),
        .O(blk_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    blk_i_3
       (.I0(initStage__0[2]),
        .I1(initStage__0[6]),
        .O(blk_i_3_n_0));
  FDCE blk_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(blk_i_1_n_0),
        .Q(blk));
  LUT6 #(
    .INIT(64'hFFFFFFEF000000E0)) 
    cd_i_1
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(cd_i_2_n_0),
        .I3(cd_i_3_n_0),
        .I4(cd_i_4_n_0),
        .I5(cd),
        .O(cd_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cd_i_10
       (.I0(\cycle_count_reg_n_0_[1] ),
        .I1(\cycle_count_reg_n_0_[2] ),
        .I2(\cycle_count_reg_n_0_[19] ),
        .I3(\cycle_count_reg_n_0_[20] ),
        .O(cd_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cd_i_11
       (.I0(\cycle_count_reg_n_0_[62] ),
        .I1(\cycle_count_reg_n_0_[61] ),
        .I2(\cycle_count_reg_n_0_[11] ),
        .I3(\cycle_count_reg_n_0_[10] ),
        .I4(scl_i_11_n_0),
        .O(cd_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    cd_i_12
       (.I0(\cycle_count_reg_n_0_[43] ),
        .I1(\cycle_count_reg_n_0_[44] ),
        .I2(\cycle_count_reg_n_0_[31] ),
        .I3(\cycle_count_reg_n_0_[32] ),
        .O(cd_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    cd_i_13
       (.I0(\cycle_count_reg_n_0_[38] ),
        .I1(\cycle_count_reg_n_0_[37] ),
        .O(cd_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cd_i_14
       (.I0(\cycle_count_reg_n_0_[17] ),
        .I1(\cycle_count_reg_n_0_[41] ),
        .I2(\cycle_count_reg_n_0_[40] ),
        .I3(\cycle_count_reg_n_0_[16] ),
        .O(cd_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    cd_i_15
       (.I0(\cycle_count_reg_n_0_[46] ),
        .I1(\cycle_count_reg_n_0_[47] ),
        .I2(\cycle_count_reg_n_0_[22] ),
        .I3(\cycle_count_reg_n_0_[23] ),
        .O(cd_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h04)) 
    cd_i_2
       (.I0(\FSM_onehot_drawStage[5]_i_6_n_0 ),
        .I1(\FSM_onehot_drawStage[5]_i_3_n_0 ),
        .I2(cd_i_5_n_0),
        .O(cd_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cd_i_3
       (.I0(cd_i_6_n_0),
        .I1(cd_i_7_n_0),
        .I2(cd_i_8_n_0),
        .I3(cd_i_9_n_0),
        .I4(cd_i_10_n_0),
        .I5(cd_i_11_n_0),
        .O(cd_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cd_i_4
       (.I0(\cycle_count_reg_n_0_[7] ),
        .I1(\cycle_count_reg_n_0_[8] ),
        .I2(cd_i_12_n_0),
        .I3(cd_i_13_n_0),
        .I4(cd_i_14_n_0),
        .I5(cd_i_15_n_0),
        .O(cd_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF44F4)) 
    cd_i_5
       (.I0(\cycle_count_reg_n_0_[55] ),
        .I1(\cycle_count_reg_n_0_[54] ),
        .I2(\cycle_count_reg_n_0_[24] ),
        .I3(\cycle_count_reg_n_0_[25] ),
        .I4(\cycle_count_reg_n_0_[56] ),
        .I5(\cycle_count_reg_n_0_[26] ),
        .O(cd_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    cd_i_6
       (.I0(\FSM_onehot_drawStage[5]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\writeStage[63]_i_9_n_0 ),
        .I4(scl_i_2_n_0),
        .I5(\writeStage[63]_i_10_n_0 ),
        .O(cd_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cd_i_7
       (.I0(\cycle_count_reg_n_0_[4] ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(\cycle_count_reg_n_0_[25] ),
        .I3(\cycle_count_reg_n_0_[26] ),
        .O(cd_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cd_i_8
       (.I0(\cycle_count_reg_n_0_[49] ),
        .I1(\cycle_count_reg_n_0_[50] ),
        .I2(\cycle_count_reg_n_0_[52] ),
        .I3(\cycle_count_reg_n_0_[53] ),
        .O(cd_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    cd_i_9
       (.I0(\cycle_count_reg_n_0_[34] ),
        .I1(\cycle_count_reg_n_0_[35] ),
        .I2(\cycle_count_reg_n_0_[58] ),
        .I3(\cycle_count_reg_n_0_[59] ),
        .O(cd_i_9_n_0));
  FDCE cd_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(cd_i_1_n_0),
        .Q(cd));
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
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cycle_count[0]_i_1 
       (.I0(\cycle_count_reg_n_0_[0] ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[10]_i_1 
       (.I0(\cycle_count_reg[12]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[11]_i_1 
       (.I0(\cycle_count_reg[12]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[12]_i_1 
       (.I0(\cycle_count_reg[12]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[12]_i_3 
       (.I0(\cycle_count_reg_n_0_[12] ),
        .O(\cycle_count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[12]_i_4 
       (.I0(\cycle_count_reg_n_0_[11] ),
        .O(\cycle_count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[12]_i_5 
       (.I0(\cycle_count_reg_n_0_[10] ),
        .O(\cycle_count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[12]_i_6 
       (.I0(\cycle_count_reg_n_0_[9] ),
        .O(\cycle_count[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[13]_i_1 
       (.I0(\cycle_count_reg[16]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[14]_i_1 
       (.I0(\cycle_count_reg[16]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[15]_i_1 
       (.I0(\cycle_count_reg[16]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[16]_i_1 
       (.I0(\cycle_count_reg[16]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[16]_i_3 
       (.I0(\cycle_count_reg_n_0_[16] ),
        .O(\cycle_count[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[16]_i_4 
       (.I0(\cycle_count_reg_n_0_[15] ),
        .O(\cycle_count[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[16]_i_5 
       (.I0(\cycle_count_reg_n_0_[14] ),
        .O(\cycle_count[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[16]_i_6 
       (.I0(\cycle_count_reg_n_0_[13] ),
        .O(\cycle_count[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[17]_i_1 
       (.I0(\cycle_count_reg[20]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[18]_i_1 
       (.I0(\cycle_count_reg[20]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[19]_i_1 
       (.I0(\cycle_count_reg[20]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cycle_count[1]_i_1 
       (.I0(\cycle_count_reg[4]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[20]_i_1 
       (.I0(\cycle_count_reg[20]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[20]_i_3 
       (.I0(\cycle_count_reg_n_0_[20] ),
        .O(\cycle_count[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[20]_i_4 
       (.I0(\cycle_count_reg_n_0_[19] ),
        .O(\cycle_count[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[20]_i_5 
       (.I0(\cycle_count_reg_n_0_[18] ),
        .O(\cycle_count[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[20]_i_6 
       (.I0(\cycle_count_reg_n_0_[17] ),
        .O(\cycle_count[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[21]_i_1 
       (.I0(\cycle_count_reg[24]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[22]_i_1 
       (.I0(\cycle_count_reg[24]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[23]_i_1 
       (.I0(\cycle_count_reg[24]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[24]_i_1 
       (.I0(\cycle_count_reg[24]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[24]_i_3 
       (.I0(\cycle_count_reg_n_0_[24] ),
        .O(\cycle_count[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[24]_i_4 
       (.I0(\cycle_count_reg_n_0_[23] ),
        .O(\cycle_count[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[24]_i_5 
       (.I0(\cycle_count_reg_n_0_[22] ),
        .O(\cycle_count[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[24]_i_6 
       (.I0(\cycle_count_reg_n_0_[21] ),
        .O(\cycle_count[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[25]_i_1 
       (.I0(\cycle_count_reg[28]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[26]_i_1 
       (.I0(\cycle_count_reg[28]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[27]_i_1 
       (.I0(\cycle_count_reg[28]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[28]_i_1 
       (.I0(\cycle_count_reg[28]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[28]_i_3 
       (.I0(\cycle_count_reg_n_0_[28] ),
        .O(\cycle_count[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[28]_i_4 
       (.I0(\cycle_count_reg_n_0_[27] ),
        .O(\cycle_count[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[28]_i_5 
       (.I0(\cycle_count_reg_n_0_[26] ),
        .O(\cycle_count[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[28]_i_6 
       (.I0(\cycle_count_reg_n_0_[25] ),
        .O(\cycle_count[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[29]_i_1 
       (.I0(\cycle_count_reg[32]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[2]_i_1 
       (.I0(\cycle_count_reg[4]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[30]_i_1 
       (.I0(\cycle_count_reg[32]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[31]_i_1 
       (.I0(\cycle_count_reg[32]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[32]_i_1 
       (.I0(\cycle_count_reg[32]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[32]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[32]_i_3 
       (.I0(\cycle_count_reg_n_0_[32] ),
        .O(\cycle_count[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[32]_i_4 
       (.I0(\cycle_count_reg_n_0_[31] ),
        .O(\cycle_count[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[32]_i_5 
       (.I0(\cycle_count_reg_n_0_[30] ),
        .O(\cycle_count[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[32]_i_6 
       (.I0(\cycle_count_reg_n_0_[29] ),
        .O(\cycle_count[32]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[33]_i_1 
       (.I0(\cycle_count_reg[36]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[34]_i_1 
       (.I0(\cycle_count_reg[36]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[35]_i_1 
       (.I0(\cycle_count_reg[36]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[36]_i_1 
       (.I0(\cycle_count_reg[36]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[36]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[36]_i_3 
       (.I0(\cycle_count_reg_n_0_[36] ),
        .O(\cycle_count[36]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[36]_i_4 
       (.I0(\cycle_count_reg_n_0_[35] ),
        .O(\cycle_count[36]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[36]_i_5 
       (.I0(\cycle_count_reg_n_0_[34] ),
        .O(\cycle_count[36]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[36]_i_6 
       (.I0(\cycle_count_reg_n_0_[33] ),
        .O(\cycle_count[36]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[37]_i_1 
       (.I0(\cycle_count_reg[40]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[38]_i_1 
       (.I0(\cycle_count_reg[40]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[39]_i_1 
       (.I0(\cycle_count_reg[40]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[3]_i_1 
       (.I0(\cycle_count_reg[4]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[40]_i_1 
       (.I0(\cycle_count_reg[40]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[40]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[40]_i_3 
       (.I0(\cycle_count_reg_n_0_[40] ),
        .O(\cycle_count[40]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[40]_i_4 
       (.I0(\cycle_count_reg_n_0_[39] ),
        .O(\cycle_count[40]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[40]_i_5 
       (.I0(\cycle_count_reg_n_0_[38] ),
        .O(\cycle_count[40]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[40]_i_6 
       (.I0(\cycle_count_reg_n_0_[37] ),
        .O(\cycle_count[40]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[41]_i_1 
       (.I0(\cycle_count_reg[44]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[42]_i_1 
       (.I0(\cycle_count_reg[44]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[43]_i_1 
       (.I0(\cycle_count_reg[44]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[44]_i_1 
       (.I0(\cycle_count_reg[44]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[44]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[44]_i_3 
       (.I0(\cycle_count_reg_n_0_[44] ),
        .O(\cycle_count[44]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[44]_i_4 
       (.I0(\cycle_count_reg_n_0_[43] ),
        .O(\cycle_count[44]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[44]_i_5 
       (.I0(\cycle_count_reg_n_0_[42] ),
        .O(\cycle_count[44]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[44]_i_6 
       (.I0(\cycle_count_reg_n_0_[41] ),
        .O(\cycle_count[44]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[45]_i_1 
       (.I0(\cycle_count_reg[48]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[46]_i_1 
       (.I0(\cycle_count_reg[48]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[47]_i_1 
       (.I0(\cycle_count_reg[48]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[48]_i_1 
       (.I0(\cycle_count_reg[48]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[48]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[48]_i_3 
       (.I0(\cycle_count_reg_n_0_[48] ),
        .O(\cycle_count[48]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[48]_i_4 
       (.I0(\cycle_count_reg_n_0_[47] ),
        .O(\cycle_count[48]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[48]_i_5 
       (.I0(\cycle_count_reg_n_0_[46] ),
        .O(\cycle_count[48]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[48]_i_6 
       (.I0(\cycle_count_reg_n_0_[45] ),
        .O(\cycle_count[48]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[49]_i_1 
       (.I0(\cycle_count_reg[52]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[4]_i_1 
       (.I0(\cycle_count_reg[4]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[4]_i_3 
       (.I0(\cycle_count_reg_n_0_[4] ),
        .O(\cycle_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[4]_i_4 
       (.I0(\cycle_count_reg_n_0_[3] ),
        .O(\cycle_count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[4]_i_5 
       (.I0(\cycle_count_reg_n_0_[2] ),
        .O(\cycle_count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[4]_i_6 
       (.I0(\cycle_count_reg_n_0_[1] ),
        .O(\cycle_count[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[50]_i_1 
       (.I0(\cycle_count_reg[52]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[51]_i_1 
       (.I0(\cycle_count_reg[52]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[52]_i_1 
       (.I0(\cycle_count_reg[52]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[52]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[52]_i_3 
       (.I0(\cycle_count_reg_n_0_[52] ),
        .O(\cycle_count[52]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[52]_i_4 
       (.I0(\cycle_count_reg_n_0_[51] ),
        .O(\cycle_count[52]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[52]_i_5 
       (.I0(\cycle_count_reg_n_0_[50] ),
        .O(\cycle_count[52]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[52]_i_6 
       (.I0(\cycle_count_reg_n_0_[49] ),
        .O(\cycle_count[52]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[53]_i_1 
       (.I0(\cycle_count_reg[56]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[54]_i_1 
       (.I0(\cycle_count_reg[56]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[55]_i_1 
       (.I0(\cycle_count_reg[56]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[56]_i_1 
       (.I0(\cycle_count_reg[56]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[56]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[56]_i_3 
       (.I0(\cycle_count_reg_n_0_[56] ),
        .O(\cycle_count[56]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[56]_i_4 
       (.I0(\cycle_count_reg_n_0_[55] ),
        .O(\cycle_count[56]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[56]_i_5 
       (.I0(\cycle_count_reg_n_0_[54] ),
        .O(\cycle_count[56]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[56]_i_6 
       (.I0(\cycle_count_reg_n_0_[53] ),
        .O(\cycle_count[56]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[57]_i_1 
       (.I0(\cycle_count_reg[60]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[58]_i_1 
       (.I0(\cycle_count_reg[60]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[59]_i_1 
       (.I0(\cycle_count_reg[60]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[5]_i_1 
       (.I0(\cycle_count_reg[8]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[60]_i_1 
       (.I0(\cycle_count_reg[60]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[60]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[60]_i_3 
       (.I0(\cycle_count_reg_n_0_[60] ),
        .O(\cycle_count[60]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[60]_i_4 
       (.I0(\cycle_count_reg_n_0_[59] ),
        .O(\cycle_count[60]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[60]_i_5 
       (.I0(\cycle_count_reg_n_0_[58] ),
        .O(\cycle_count[60]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[60]_i_6 
       (.I0(\cycle_count_reg_n_0_[57] ),
        .O(\cycle_count[60]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[61]_i_1 
       (.I0(\cycle_count_reg[63]_i_9_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[62]_i_1 
       (.I0(\cycle_count_reg[63]_i_9_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \cycle_count[63]_i_1 
       (.I0(\cycle_count[63]_i_3_n_0 ),
        .I1(\cycle_count[63]_i_4_n_0 ),
        .I2(\cycle_count[63]_i_5_n_0 ),
        .I3(\cycle_count[63]_i_6_n_0 ),
        .I4(\cycle_count[63]_i_7_n_0 ),
        .I5(\cycle_count[63]_i_8_n_0 ),
        .O(cycle_count__0));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \cycle_count[63]_i_10 
       (.I0(DelayStarted_i_9_n_0),
        .I1(\cycle_count_reg_n_0_[44] ),
        .I2(\cycle_count_reg_n_0_[43] ),
        .I3(\cycle_count_reg_n_0_[42] ),
        .I4(\fb_addr[15]_i_17_n_0 ),
        .O(\cycle_count[63]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cycle_count[63]_i_11 
       (.I0(cd_i_10_n_0),
        .I1(\cycle_count_reg_n_0_[8] ),
        .I2(\cycle_count_reg_n_0_[7] ),
        .I3(\cycle_count_reg_n_0_[5] ),
        .I4(\cycle_count_reg_n_0_[4] ),
        .O(\cycle_count[63]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cycle_count[63]_i_12 
       (.I0(\cycle_count_reg_n_0_[32] ),
        .I1(\cycle_count_reg_n_0_[31] ),
        .I2(\cycle_count_reg_n_0_[44] ),
        .I3(\cycle_count_reg_n_0_[43] ),
        .I4(cd_i_8_n_0),
        .O(\cycle_count[63]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cycle_count[63]_i_13 
       (.I0(cd_i_15_n_0),
        .I1(\cycle_count_reg_n_0_[56] ),
        .I2(\cycle_count_reg_n_0_[55] ),
        .I3(\cycle_count_reg_n_0_[26] ),
        .I4(\cycle_count_reg_n_0_[25] ),
        .O(\cycle_count[63]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[63]_i_14 
       (.I0(\cycle_count_reg_n_0_[63] ),
        .O(\cycle_count[63]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[63]_i_15 
       (.I0(\cycle_count_reg_n_0_[62] ),
        .O(\cycle_count[63]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[63]_i_16 
       (.I0(\cycle_count_reg_n_0_[61] ),
        .O(\cycle_count[63]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[63]_i_2 
       (.I0(\cycle_count_reg[63]_i_9_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cycle_count[63]_i_3 
       (.I0(\cycle_count[63]_i_10_n_0 ),
        .I1(\cycle_count[63]_i_11_n_0 ),
        .I2(\FSM_sequential_initStage[6]_i_5_n_0 ),
        .I3(\FSM_sequential_initStage[6]_i_4_n_0 ),
        .I4(scl_i_6_n_0),
        .I5(\fb_addr[15]_i_18_n_0 ),
        .O(\cycle_count[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cycle_count[63]_i_4 
       (.I0(\cycle_count_reg_n_0_[28] ),
        .I1(\cycle_count_reg_n_0_[29] ),
        .I2(\cycle_count_reg_n_0_[58] ),
        .I3(\cycle_count_reg_n_0_[59] ),
        .O(\cycle_count[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cycle_count[63]_i_5 
       (.I0(\cycle_count_reg_n_0_[35] ),
        .I1(\cycle_count_reg_n_0_[34] ),
        .O(\cycle_count[63]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cycle_count[63]_i_6 
       (.I0(\cycle_count_reg_n_0_[11] ),
        .I1(\cycle_count_reg_n_0_[10] ),
        .O(\cycle_count[63]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cycle_count[63]_i_7 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(cycle_count),
        .O(\cycle_count[63]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cycle_count[63]_i_8 
       (.I0(cd_i_13_n_0),
        .I1(\cycle_count_reg_n_0_[13] ),
        .I2(\cycle_count_reg_n_0_[14] ),
        .I3(cd_i_14_n_0),
        .I4(\cycle_count[63]_i_12_n_0 ),
        .I5(\cycle_count[63]_i_13_n_0 ),
        .O(\cycle_count[63]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[6]_i_1 
       (.I0(\cycle_count_reg[8]_i_2_n_6 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[7]_i_1 
       (.I0(\cycle_count_reg[8]_i_2_n_5 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[8]_i_1 
       (.I0(\cycle_count_reg[8]_i_2_n_4 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[8]_i_3 
       (.I0(\cycle_count_reg_n_0_[8] ),
        .O(\cycle_count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[8]_i_4 
       (.I0(\cycle_count_reg_n_0_[7] ),
        .O(\cycle_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[8]_i_5 
       (.I0(\cycle_count_reg_n_0_[6] ),
        .O(\cycle_count[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[8]_i_6 
       (.I0(\cycle_count_reg_n_0_[5] ),
        .O(\cycle_count[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cycle_count[9]_i_1 
       (.I0(\cycle_count_reg[12]_i_2_n_7 ),
        .I1(\writeStage[63]_i_2_n_0 ),
        .O(\cycle_count[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[0] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[0]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[10] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[10]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[11] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[11]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[12] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[12]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[12]_i_2 
       (.CI(\cycle_count_reg[8]_i_2_n_0 ),
        .CO({\cycle_count_reg[12]_i_2_n_0 ,\cycle_count_reg[12]_i_2_n_1 ,\cycle_count_reg[12]_i_2_n_2 ,\cycle_count_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[12] ,\cycle_count_reg_n_0_[11] ,\cycle_count_reg_n_0_[10] ,\cycle_count_reg_n_0_[9] }),
        .O({\cycle_count_reg[12]_i_2_n_4 ,\cycle_count_reg[12]_i_2_n_5 ,\cycle_count_reg[12]_i_2_n_6 ,\cycle_count_reg[12]_i_2_n_7 }),
        .S({\cycle_count[12]_i_3_n_0 ,\cycle_count[12]_i_4_n_0 ,\cycle_count[12]_i_5_n_0 ,\cycle_count[12]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[13] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[13]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[14] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[14]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[15] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[15]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[16] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[16]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[16]_i_2 
       (.CI(\cycle_count_reg[12]_i_2_n_0 ),
        .CO({\cycle_count_reg[16]_i_2_n_0 ,\cycle_count_reg[16]_i_2_n_1 ,\cycle_count_reg[16]_i_2_n_2 ,\cycle_count_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[16] ,\cycle_count_reg_n_0_[15] ,\cycle_count_reg_n_0_[14] ,\cycle_count_reg_n_0_[13] }),
        .O({\cycle_count_reg[16]_i_2_n_4 ,\cycle_count_reg[16]_i_2_n_5 ,\cycle_count_reg[16]_i_2_n_6 ,\cycle_count_reg[16]_i_2_n_7 }),
        .S({\cycle_count[16]_i_3_n_0 ,\cycle_count[16]_i_4_n_0 ,\cycle_count[16]_i_5_n_0 ,\cycle_count[16]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[17] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[17]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[18] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[18]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[19] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[19]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[1] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[1]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[20] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[20]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[20]_i_2 
       (.CI(\cycle_count_reg[16]_i_2_n_0 ),
        .CO({\cycle_count_reg[20]_i_2_n_0 ,\cycle_count_reg[20]_i_2_n_1 ,\cycle_count_reg[20]_i_2_n_2 ,\cycle_count_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[20] ,\cycle_count_reg_n_0_[19] ,\cycle_count_reg_n_0_[18] ,\cycle_count_reg_n_0_[17] }),
        .O({\cycle_count_reg[20]_i_2_n_4 ,\cycle_count_reg[20]_i_2_n_5 ,\cycle_count_reg[20]_i_2_n_6 ,\cycle_count_reg[20]_i_2_n_7 }),
        .S({\cycle_count[20]_i_3_n_0 ,\cycle_count[20]_i_4_n_0 ,\cycle_count[20]_i_5_n_0 ,\cycle_count[20]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[21] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[21]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[22] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[22]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[23] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[23]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[24] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[24]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[24]_i_2 
       (.CI(\cycle_count_reg[20]_i_2_n_0 ),
        .CO({\cycle_count_reg[24]_i_2_n_0 ,\cycle_count_reg[24]_i_2_n_1 ,\cycle_count_reg[24]_i_2_n_2 ,\cycle_count_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[24] ,\cycle_count_reg_n_0_[23] ,\cycle_count_reg_n_0_[22] ,\cycle_count_reg_n_0_[21] }),
        .O({\cycle_count_reg[24]_i_2_n_4 ,\cycle_count_reg[24]_i_2_n_5 ,\cycle_count_reg[24]_i_2_n_6 ,\cycle_count_reg[24]_i_2_n_7 }),
        .S({\cycle_count[24]_i_3_n_0 ,\cycle_count[24]_i_4_n_0 ,\cycle_count[24]_i_5_n_0 ,\cycle_count[24]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[25] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[25]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[26] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[26]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[27] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[27]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[28] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[28]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[28]_i_2 
       (.CI(\cycle_count_reg[24]_i_2_n_0 ),
        .CO({\cycle_count_reg[28]_i_2_n_0 ,\cycle_count_reg[28]_i_2_n_1 ,\cycle_count_reg[28]_i_2_n_2 ,\cycle_count_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[28] ,\cycle_count_reg_n_0_[27] ,\cycle_count_reg_n_0_[26] ,\cycle_count_reg_n_0_[25] }),
        .O({\cycle_count_reg[28]_i_2_n_4 ,\cycle_count_reg[28]_i_2_n_5 ,\cycle_count_reg[28]_i_2_n_6 ,\cycle_count_reg[28]_i_2_n_7 }),
        .S({\cycle_count[28]_i_3_n_0 ,\cycle_count[28]_i_4_n_0 ,\cycle_count[28]_i_5_n_0 ,\cycle_count[28]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[29] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[29]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[2] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[2]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[30] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[30]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[31] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[31]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[32] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[32]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[32] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[32]_i_2 
       (.CI(\cycle_count_reg[28]_i_2_n_0 ),
        .CO({\cycle_count_reg[32]_i_2_n_0 ,\cycle_count_reg[32]_i_2_n_1 ,\cycle_count_reg[32]_i_2_n_2 ,\cycle_count_reg[32]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[32] ,\cycle_count_reg_n_0_[31] ,\cycle_count_reg_n_0_[30] ,\cycle_count_reg_n_0_[29] }),
        .O({\cycle_count_reg[32]_i_2_n_4 ,\cycle_count_reg[32]_i_2_n_5 ,\cycle_count_reg[32]_i_2_n_6 ,\cycle_count_reg[32]_i_2_n_7 }),
        .S({\cycle_count[32]_i_3_n_0 ,\cycle_count[32]_i_4_n_0 ,\cycle_count[32]_i_5_n_0 ,\cycle_count[32]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[33] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[33]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[34] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[34]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[35] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[35]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[36] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[36]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[36] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[36]_i_2 
       (.CI(\cycle_count_reg[32]_i_2_n_0 ),
        .CO({\cycle_count_reg[36]_i_2_n_0 ,\cycle_count_reg[36]_i_2_n_1 ,\cycle_count_reg[36]_i_2_n_2 ,\cycle_count_reg[36]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[36] ,\cycle_count_reg_n_0_[35] ,\cycle_count_reg_n_0_[34] ,\cycle_count_reg_n_0_[33] }),
        .O({\cycle_count_reg[36]_i_2_n_4 ,\cycle_count_reg[36]_i_2_n_5 ,\cycle_count_reg[36]_i_2_n_6 ,\cycle_count_reg[36]_i_2_n_7 }),
        .S({\cycle_count[36]_i_3_n_0 ,\cycle_count[36]_i_4_n_0 ,\cycle_count[36]_i_5_n_0 ,\cycle_count[36]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[37] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[37]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[38] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[38]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[39] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[39]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[3] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[3]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[40] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[40]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[40] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[40]_i_2 
       (.CI(\cycle_count_reg[36]_i_2_n_0 ),
        .CO({\cycle_count_reg[40]_i_2_n_0 ,\cycle_count_reg[40]_i_2_n_1 ,\cycle_count_reg[40]_i_2_n_2 ,\cycle_count_reg[40]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[40] ,\cycle_count_reg_n_0_[39] ,\cycle_count_reg_n_0_[38] ,\cycle_count_reg_n_0_[37] }),
        .O({\cycle_count_reg[40]_i_2_n_4 ,\cycle_count_reg[40]_i_2_n_5 ,\cycle_count_reg[40]_i_2_n_6 ,\cycle_count_reg[40]_i_2_n_7 }),
        .S({\cycle_count[40]_i_3_n_0 ,\cycle_count[40]_i_4_n_0 ,\cycle_count[40]_i_5_n_0 ,\cycle_count[40]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[41] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[41]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[42] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[42]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[43] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[43]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[44] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[44]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[44] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[44]_i_2 
       (.CI(\cycle_count_reg[40]_i_2_n_0 ),
        .CO({\cycle_count_reg[44]_i_2_n_0 ,\cycle_count_reg[44]_i_2_n_1 ,\cycle_count_reg[44]_i_2_n_2 ,\cycle_count_reg[44]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[44] ,\cycle_count_reg_n_0_[43] ,\cycle_count_reg_n_0_[42] ,\cycle_count_reg_n_0_[41] }),
        .O({\cycle_count_reg[44]_i_2_n_4 ,\cycle_count_reg[44]_i_2_n_5 ,\cycle_count_reg[44]_i_2_n_6 ,\cycle_count_reg[44]_i_2_n_7 }),
        .S({\cycle_count[44]_i_3_n_0 ,\cycle_count[44]_i_4_n_0 ,\cycle_count[44]_i_5_n_0 ,\cycle_count[44]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[45] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[45]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[46] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[46]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[47] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[47]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[48] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[48]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[48] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[48]_i_2 
       (.CI(\cycle_count_reg[44]_i_2_n_0 ),
        .CO({\cycle_count_reg[48]_i_2_n_0 ,\cycle_count_reg[48]_i_2_n_1 ,\cycle_count_reg[48]_i_2_n_2 ,\cycle_count_reg[48]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[48] ,\cycle_count_reg_n_0_[47] ,\cycle_count_reg_n_0_[46] ,\cycle_count_reg_n_0_[45] }),
        .O({\cycle_count_reg[48]_i_2_n_4 ,\cycle_count_reg[48]_i_2_n_5 ,\cycle_count_reg[48]_i_2_n_6 ,\cycle_count_reg[48]_i_2_n_7 }),
        .S({\cycle_count[48]_i_3_n_0 ,\cycle_count[48]_i_4_n_0 ,\cycle_count[48]_i_5_n_0 ,\cycle_count[48]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[49] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[49]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[49] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[4] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[4]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cycle_count_reg[4]_i_2_n_0 ,\cycle_count_reg[4]_i_2_n_1 ,\cycle_count_reg[4]_i_2_n_2 ,\cycle_count_reg[4]_i_2_n_3 }),
        .CYINIT(\cycle_count_reg_n_0_[0] ),
        .DI({\cycle_count_reg_n_0_[4] ,\cycle_count_reg_n_0_[3] ,\cycle_count_reg_n_0_[2] ,\cycle_count_reg_n_0_[1] }),
        .O({\cycle_count_reg[4]_i_2_n_4 ,\cycle_count_reg[4]_i_2_n_5 ,\cycle_count_reg[4]_i_2_n_6 ,\cycle_count_reg[4]_i_2_n_7 }),
        .S({\cycle_count[4]_i_3_n_0 ,\cycle_count[4]_i_4_n_0 ,\cycle_count[4]_i_5_n_0 ,\cycle_count[4]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[50] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[50]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[50] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[51] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[51]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[51] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[52] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[52]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[52] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[52]_i_2 
       (.CI(\cycle_count_reg[48]_i_2_n_0 ),
        .CO({\cycle_count_reg[52]_i_2_n_0 ,\cycle_count_reg[52]_i_2_n_1 ,\cycle_count_reg[52]_i_2_n_2 ,\cycle_count_reg[52]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[52] ,\cycle_count_reg_n_0_[51] ,\cycle_count_reg_n_0_[50] ,\cycle_count_reg_n_0_[49] }),
        .O({\cycle_count_reg[52]_i_2_n_4 ,\cycle_count_reg[52]_i_2_n_5 ,\cycle_count_reg[52]_i_2_n_6 ,\cycle_count_reg[52]_i_2_n_7 }),
        .S({\cycle_count[52]_i_3_n_0 ,\cycle_count[52]_i_4_n_0 ,\cycle_count[52]_i_5_n_0 ,\cycle_count[52]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[53] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[53]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[53] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[54] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[54]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[54] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[55] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[55]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[55] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[56] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[56]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[56] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[56]_i_2 
       (.CI(\cycle_count_reg[52]_i_2_n_0 ),
        .CO({\cycle_count_reg[56]_i_2_n_0 ,\cycle_count_reg[56]_i_2_n_1 ,\cycle_count_reg[56]_i_2_n_2 ,\cycle_count_reg[56]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[56] ,\cycle_count_reg_n_0_[55] ,\cycle_count_reg_n_0_[54] ,\cycle_count_reg_n_0_[53] }),
        .O({\cycle_count_reg[56]_i_2_n_4 ,\cycle_count_reg[56]_i_2_n_5 ,\cycle_count_reg[56]_i_2_n_6 ,\cycle_count_reg[56]_i_2_n_7 }),
        .S({\cycle_count[56]_i_3_n_0 ,\cycle_count[56]_i_4_n_0 ,\cycle_count[56]_i_5_n_0 ,\cycle_count[56]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[57] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[57]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[57] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[58] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[58]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[58] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[59] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[59]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[59] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[5] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[5]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[60] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[60]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[60] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[60]_i_2 
       (.CI(\cycle_count_reg[56]_i_2_n_0 ),
        .CO({\cycle_count_reg[60]_i_2_n_0 ,\cycle_count_reg[60]_i_2_n_1 ,\cycle_count_reg[60]_i_2_n_2 ,\cycle_count_reg[60]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[60] ,\cycle_count_reg_n_0_[59] ,\cycle_count_reg_n_0_[58] ,\cycle_count_reg_n_0_[57] }),
        .O({\cycle_count_reg[60]_i_2_n_4 ,\cycle_count_reg[60]_i_2_n_5 ,\cycle_count_reg[60]_i_2_n_6 ,\cycle_count_reg[60]_i_2_n_7 }),
        .S({\cycle_count[60]_i_3_n_0 ,\cycle_count[60]_i_4_n_0 ,\cycle_count[60]_i_5_n_0 ,\cycle_count[60]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[61] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[61]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[61] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[62] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[62]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[62] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[63] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[63]_i_2_n_0 ),
        .Q(\cycle_count_reg_n_0_[63] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[63]_i_9 
       (.CI(\cycle_count_reg[60]_i_2_n_0 ),
        .CO({\NLW_cycle_count_reg[63]_i_9_CO_UNCONNECTED [3:2],\cycle_count_reg[63]_i_9_n_2 ,\cycle_count_reg[63]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\cycle_count_reg_n_0_[62] ,\cycle_count_reg_n_0_[61] }),
        .O({\NLW_cycle_count_reg[63]_i_9_O_UNCONNECTED [3],\cycle_count_reg[63]_i_9_n_5 ,\cycle_count_reg[63]_i_9_n_6 ,\cycle_count_reg[63]_i_9_n_7 }),
        .S({1'b0,\cycle_count[63]_i_14_n_0 ,\cycle_count[63]_i_15_n_0 ,\cycle_count[63]_i_16_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[6] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[6]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[7] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[7]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[8] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[8]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[8]_i_2 
       (.CI(\cycle_count_reg[4]_i_2_n_0 ),
        .CO({\cycle_count_reg[8]_i_2_n_0 ,\cycle_count_reg[8]_i_2_n_1 ,\cycle_count_reg[8]_i_2_n_2 ,\cycle_count_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\cycle_count_reg_n_0_[8] ,\cycle_count_reg_n_0_[7] ,\cycle_count_reg_n_0_[6] ,\cycle_count_reg_n_0_[5] }),
        .O({\cycle_count_reg[8]_i_2_n_4 ,\cycle_count_reg[8]_i_2_n_5 ,\cycle_count_reg[8]_i_2_n_6 ,\cycle_count_reg[8]_i_2_n_7 }),
        .S({\cycle_count[8]_i_3_n_0 ,\cycle_count[8]_i_4_n_0 ,\cycle_count[8]_i_5_n_0 ,\cycle_count[8]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[9] 
       (.C(clk),
        .CE(cycle_count__0),
        .CLR(reset),
        .D(\cycle_count[9]_i_1_n_0 ),
        .Q(\cycle_count_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fb_addr[15]_i_1 
       (.I0(\fb_addr[15]_i_2_n_0 ),
        .I1(\fb_addr[15]_i_3_n_0 ),
        .I2(\fb_addr[15]_i_4_n_0 ),
        .I3(\fb_addr[15]_i_5_n_0 ),
        .I4(\fb_addr[15]_i_6_n_0 ),
        .I5(\fb_addr[15]_i_7_n_0 ),
        .O(\fb_addr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fb_addr[15]_i_10 
       (.I0(\cycle_count_reg_n_0_[8] ),
        .I1(\cycle_count_reg_n_0_[53] ),
        .I2(\cycle_count_reg_n_0_[5] ),
        .I3(\cycle_count_reg_n_0_[50] ),
        .O(\fb_addr[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \fb_addr[15]_i_11 
       (.I0(\cycle_count_reg_n_0_[42] ),
        .I1(\cycle_count_reg_n_0_[43] ),
        .I2(\cycle_count_reg_n_0_[44] ),
        .I3(\cycle_count_reg_n_0_[27] ),
        .I4(\cycle_count_reg_n_0_[28] ),
        .I5(\cycle_count_reg_n_0_[29] ),
        .O(\fb_addr[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF44F4)) 
    \fb_addr[15]_i_12 
       (.I0(\cycle_count_reg_n_0_[46] ),
        .I1(\cycle_count_reg_n_0_[45] ),
        .I2(\cycle_count_reg_n_0_[39] ),
        .I3(\cycle_count_reg_n_0_[40] ),
        .I4(\cycle_count_reg_n_0_[47] ),
        .I5(\cycle_count_reg_n_0_[41] ),
        .O(\fb_addr[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fb_addr[15]_i_13 
       (.I0(\cycle_count_reg_n_0_[10] ),
        .I1(\cycle_count_reg_n_0_[11] ),
        .I2(\cycle_count_reg_n_0_[13] ),
        .I3(\cycle_count_reg_n_0_[14] ),
        .O(\fb_addr[15]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fb_addr[15]_i_14 
       (.I0(\cycle_count_reg_n_0_[34] ),
        .I1(\cycle_count_reg_n_0_[35] ),
        .I2(\cycle_count_reg_n_0_[37] ),
        .I3(\cycle_count_reg_n_0_[38] ),
        .O(\fb_addr[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \fb_addr[15]_i_15 
       (.I0(\cycle_count_reg_n_0_[15] ),
        .I1(\cycle_count_reg_n_0_[16] ),
        .I2(\cycle_count_reg_n_0_[17] ),
        .I3(\cycle_count_reg_n_0_[30] ),
        .I4(\cycle_count_reg_n_0_[31] ),
        .I5(\cycle_count_reg_n_0_[32] ),
        .O(\fb_addr[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \fb_addr[15]_i_16 
       (.I0(\cycle_count_reg_n_0_[1] ),
        .I1(\cycle_count_reg_n_0_[0] ),
        .I2(\cycle_count_reg_n_0_[11] ),
        .I3(\cycle_count_reg_n_0_[2] ),
        .I4(\cycle_count_reg_n_0_[9] ),
        .I5(\cycle_count_reg_n_0_[10] ),
        .O(\fb_addr[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \fb_addr[15]_i_17 
       (.I0(\cycle_count_reg_n_0_[18] ),
        .I1(\cycle_count_reg_n_0_[19] ),
        .I2(\cycle_count_reg_n_0_[20] ),
        .I3(\cycle_count_reg_n_0_[62] ),
        .I4(\cycle_count_reg_n_0_[61] ),
        .I5(\cycle_count_reg_n_0_[63] ),
        .O(\fb_addr[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \fb_addr[15]_i_18 
       (.I0(\cycle_count_reg_n_0_[21] ),
        .I1(\cycle_count_reg_n_0_[22] ),
        .I2(\cycle_count_reg_n_0_[23] ),
        .I3(\cycle_count_reg_n_0_[60] ),
        .I4(\cycle_count_reg_n_0_[61] ),
        .I5(\cycle_count_reg_n_0_[62] ),
        .O(\fb_addr[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF44F4)) 
    \fb_addr[15]_i_19 
       (.I0(\cycle_count_reg_n_0_[58] ),
        .I1(\cycle_count_reg_n_0_[57] ),
        .I2(\cycle_count_reg_n_0_[12] ),
        .I3(\cycle_count_reg_n_0_[13] ),
        .I4(\cycle_count_reg_n_0_[59] ),
        .I5(\cycle_count_reg_n_0_[14] ),
        .O(\fb_addr[15]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fb_addr[15]_i_2 
       (.I0(\fb_addr[15]_i_8_n_0 ),
        .I1(\fb_addr[15]_i_9_n_0 ),
        .I2(\fb_addr[15]_i_10_n_0 ),
        .I3(\fb_addr[15]_i_11_n_0 ),
        .I4(\fb_addr[15]_i_12_n_0 ),
        .O(\fb_addr[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fb_addr[15]_i_20 
       (.I0(\cycle_count_reg_n_0_[8] ),
        .I1(\cycle_count_reg_n_0_[7] ),
        .O(\fb_addr[15]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fb_addr[15]_i_21 
       (.I0(\cycle_count_reg_n_0_[5] ),
        .I1(\cycle_count_reg_n_0_[4] ),
        .O(\fb_addr[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fb_addr[15]_i_3 
       (.I0(\cycle_count_reg_n_0_[56] ),
        .I1(\cycle_count_reg_n_0_[55] ),
        .I2(\cycle_count_reg_n_0_[26] ),
        .I3(\cycle_count_reg_n_0_[25] ),
        .I4(cd_i_8_n_0),
        .I5(cd_i_12_n_0),
        .O(\fb_addr[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fb_addr[15]_i_4 
       (.I0(\cycle_count[63]_i_4_n_0 ),
        .I1(\fb_addr[15]_i_13_n_0 ),
        .I2(cd_i_14_n_0),
        .I3(cd_i_15_n_0),
        .I4(\fb_addr[15]_i_14_n_0 ),
        .O(\fb_addr[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \fb_addr[15]_i_5 
       (.I0(\fb_addr[15]_i_15_n_0 ),
        .I1(\fb_addr[15]_i_16_n_0 ),
        .I2(cd_i_5_n_0),
        .O(\fb_addr[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \fb_addr[15]_i_6 
       (.I0(\fb_addr[15]_i_17_n_0 ),
        .I1(cycle_count),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\fb_addr[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fb_addr[15]_i_7 
       (.I0(\fb_addr[15]_i_18_n_0 ),
        .I1(\fb_addr[15]_i_19_n_0 ),
        .I2(\FSM_onehot_drawStage[5]_i_2_n_0 ),
        .I3(cd_i_10_n_0),
        .I4(\fb_addr[15]_i_20_n_0 ),
        .I5(\fb_addr[15]_i_21_n_0 ),
        .O(\fb_addr[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fb_addr[15]_i_8 
       (.I0(\cycle_count_reg_n_0_[49] ),
        .I1(\cycle_count_reg_n_0_[48] ),
        .I2(\cycle_count_reg_n_0_[52] ),
        .I3(\cycle_count_reg_n_0_[51] ),
        .O(\fb_addr[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \fb_addr[15]_i_9 
       (.I0(\cycle_count_reg_n_0_[4] ),
        .I1(\cycle_count_reg_n_0_[3] ),
        .I2(\cycle_count_reg_n_0_[7] ),
        .I3(\cycle_count_reg_n_0_[6] ),
        .O(\fb_addr[15]_i_9_n_0 ));
  FDCE \fb_addr_reg[0] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[0]),
        .Q(fb_addr[0]));
  FDCE \fb_addr_reg[10] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[10]),
        .Q(fb_addr[10]));
  FDCE \fb_addr_reg[11] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[11]),
        .Q(fb_addr[11]));
  FDCE \fb_addr_reg[12] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[12]),
        .Q(fb_addr[12]));
  FDCE \fb_addr_reg[13] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[13]),
        .Q(fb_addr[13]));
  FDCE \fb_addr_reg[14] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[14]),
        .Q(fb_addr[14]));
  FDCE \fb_addr_reg[15] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[15]),
        .Q(fb_addr[15]));
  FDCE \fb_addr_reg[1] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[1]),
        .Q(fb_addr[1]));
  FDCE \fb_addr_reg[2] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[2]),
        .Q(fb_addr[2]));
  FDCE \fb_addr_reg[3] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[3]),
        .Q(fb_addr[3]));
  FDCE \fb_addr_reg[4] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[4]),
        .Q(fb_addr[4]));
  FDCE \fb_addr_reg[5] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[5]),
        .Q(fb_addr[5]));
  FDCE \fb_addr_reg[6] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[6]),
        .Q(fb_addr[6]));
  FDCE \fb_addr_reg[7] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[7]),
        .Q(fb_addr[7]));
  FDCE \fb_addr_reg[8] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[8]),
        .Q(fb_addr[8]));
  FDCE \fb_addr_reg[9] 
       (.C(clk),
        .CE(\fb_addr[15]_i_1_n_0 ),
        .CLR(reset),
        .D(ReadAddr__0[9]),
        .Q(fb_addr[9]));
  LUT4 #(
    .INIT(16'hABA8)) 
    fb_en_i_1
       (.I0(cycle_count),
        .I1(fb_en_i_2_n_0),
        .I2(\fb_addr[15]_i_1_n_0 ),
        .I3(fb_en),
        .O(fb_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    fb_en_i_2
       (.I0(cd_i_5_n_0),
        .I1(\FSM_onehot_drawStage[5]_i_3_n_0 ),
        .I2(\FSM_onehot_drawStage[5]_i_6_n_0 ),
        .I3(fb_en_i_3_n_0),
        .I4(fb_en_i_4_n_0),
        .I5(\FSM_onehot_drawStage[5]_i_4_n_0 ),
        .O(fb_en_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    fb_en_i_3
       (.I0(fb_en_i_5_n_0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\FSM_onehot_fbStage_reg_n_0_[2] ),
        .I3(cd_i_8_n_0),
        .I4(\fb_addr[15]_i_13_n_0 ),
        .I5(\fb_addr[15]_i_14_n_0 ),
        .O(fb_en_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    fb_en_i_4
       (.I0(\cycle_count[63]_i_4_n_0 ),
        .I1(\cycle_count_reg_n_0_[63] ),
        .I2(\cycle_count_reg_n_0_[61] ),
        .I3(\cycle_count_reg_n_0_[62] ),
        .I4(\FSM_onehot_drawStage[5]_i_2_n_0 ),
        .O(fb_en_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    fb_en_i_5
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(fb_en_i_5_n_0));
  FDCE fb_en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(fb_en_i_1_n_0),
        .Q(fb_en));
  LUT6 #(
    .INIT(64'h42EA070291C7E108)) 
    g0_b0
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'h8ED86C0119A2E2A0)) 
    g0_b1
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h3CA809E15A158D20)) 
    g0_b2
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h45709A0010120C80)) 
    g0_b3
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'hBE057C092107E2E8)) 
    g0_b4
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'hCF079E0EC417E2E0)) 
    g0_b5
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h0006000D2AA80040)) 
    g0_b6
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h0006000FEAAA8200)) 
    g0_b7
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h000000000000000B)) 
    g1_b0
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g1_b0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    g1_b3
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    g1_b4
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000009)) 
    g1_b5
       (.I0(initStage__0[0]),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[2]),
        .I3(initStage__0[3]),
        .I4(initStage__0[4]),
        .I5(initStage__0[5]),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000200)) 
    res_i_1
       (.I0(initStage),
        .I1(res_i_2_n_0),
        .I2(initStage__0[0]),
        .I3(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I4(blk_i_2_n_0),
        .I5(res),
        .O(res_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    res_i_2
       (.I0(initStage__0[2]),
        .I1(initStage__0[6]),
        .O(res_i_2_n_0));
  FDCE res_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(res_i_1_n_0),
        .Q(res));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    scl_i_1
       (.I0(writeStage[0]),
        .I1(scl_i_2_n_0),
        .I2(scl_i_3_n_0),
        .I3(scl_i_4_n_0),
        .I4(scl),
        .O(scl_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    scl_i_10
       (.I0(writeStage[2]),
        .I1(writeStage[1]),
        .I2(writeStage[3]),
        .I3(writeStage[0]),
        .O(scl_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_11
       (.I0(\cycle_count_reg_n_0_[55] ),
        .I1(\cycle_count_reg_n_0_[56] ),
        .I2(\cycle_count_reg_n_0_[13] ),
        .I3(\cycle_count_reg_n_0_[14] ),
        .O(scl_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_12
       (.I0(\cycle_count_reg_n_0_[10] ),
        .I1(\cycle_count_reg_n_0_[11] ),
        .I2(\cycle_count_reg_n_0_[61] ),
        .I3(\cycle_count_reg_n_0_[62] ),
        .O(scl_i_12_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    scl_i_13
       (.I0(\cycle_count_reg_n_0_[32] ),
        .I1(\cycle_count_reg_n_0_[31] ),
        .I2(\cycle_count_reg_n_0_[30] ),
        .O(scl_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    scl_i_14
       (.I0(\cycle_count_reg_n_0_[20] ),
        .I1(\cycle_count_reg_n_0_[19] ),
        .I2(\cycle_count_reg_n_0_[18] ),
        .O(scl_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_i_2
       (.I0(\cycle_count_reg_n_0_[28] ),
        .I1(\cycle_count_reg_n_0_[29] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\cycle_count_reg_n_0_[63] ),
        .O(scl_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    scl_i_3
       (.I0(scl_i_5_n_0),
        .I1(scl_i_6_n_0),
        .I2(\fb_addr[15]_i_2_n_0 ),
        .I3(scl_i_7_n_0),
        .I4(scl_i_8_n_0),
        .I5(scl_i_9_n_0),
        .O(scl_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBAEFFFFFF3C)) 
    scl_i_4
       (.I0(\state_reg_n_0_[0] ),
        .I1(scl_i_10_n_0),
        .I2(writeStage[4]),
        .I3(writeStage[5]),
        .I4(writeStage[63]),
        .I5(\state_reg_n_0_[2] ),
        .O(scl_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    scl_i_5
       (.I0(scl_i_11_n_0),
        .I1(scl_i_12_n_0),
        .I2(scl_i_13_n_0),
        .I3(cd_i_9_n_0),
        .I4(scl_i_14_n_0),
        .O(scl_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    scl_i_6
       (.I0(cd_i_5_n_0),
        .I1(\fb_addr[15]_i_16_n_0 ),
        .O(scl_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    scl_i_7
       (.I0(\fb_addr[15]_i_18_n_0 ),
        .I1(\cycle_count_reg_n_0_[25] ),
        .I2(\cycle_count_reg_n_0_[26] ),
        .I3(\cycle_count_reg_n_0_[37] ),
        .I4(\cycle_count_reg_n_0_[38] ),
        .I5(cd_i_8_n_0),
        .O(scl_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    scl_i_8
       (.I0(cd_i_15_n_0),
        .I1(cd_i_14_n_0),
        .I2(cd_i_12_n_0),
        .I3(\cycle_count_reg_n_0_[17] ),
        .I4(\cycle_count_reg_n_0_[16] ),
        .I5(\cycle_count_reg_n_0_[15] ),
        .O(scl_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    scl_i_9
       (.I0(\cycle_count_reg_n_0_[4] ),
        .I1(\cycle_count_reg_n_0_[5] ),
        .I2(\fb_addr[15]_i_20_n_0 ),
        .I3(cd_i_10_n_0),
        .I4(\FSM_onehot_drawStage[5]_i_2_n_0 ),
        .I5(\fb_addr[15]_i_19_n_0 ),
        .O(scl_i_9_n_0));
  FDCE scl_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(scl_i_1_n_0),
        .Q(scl));
  LUT5 #(
    .INIT(32'hFFFE0002)) 
    sda_i_1
       (.I0(sda_i_2_n_0),
        .I1(scl_i_2_n_0),
        .I2(scl_i_3_n_0),
        .I3(sda_i_3_n_0),
        .I4(sda),
        .O(sda_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_i_10
       (.I0(data7),
        .I1(data6),
        .I2(writeStage[2]),
        .I3(data5),
        .I4(writeStage[1]),
        .I5(data4),
        .O(sda_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_i_11
       (.I0(\Data_reg_n_0_[4] ),
        .I1(\Data_reg_n_0_[5] ),
        .I2(writeStage[2]),
        .I3(\Data_reg_n_0_[6] ),
        .I4(writeStage[1]),
        .I5(\Data_reg_n_0_[7] ),
        .O(sda_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_i_12
       (.I0(\Data_reg_n_0_[0] ),
        .I1(\Data_reg_n_0_[1] ),
        .I2(writeStage[2]),
        .I3(\Data_reg_n_0_[2] ),
        .I4(writeStage[1]),
        .I5(\Data_reg_n_0_[3] ),
        .O(sda_i_12_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    sda_i_2
       (.I0(sda_reg_i_4_n_0),
        .I1(writeStage[4]),
        .I2(sda_reg_i_5_n_0),
        .I3(\state_reg_n_0_[2] ),
        .I4(sda_reg_i_6_n_0),
        .O(sda_i_2_n_0));
  LUT6 #(
    .INIT(64'hFEFEFFFFFFFCFFFF)) 
    sda_i_3
       (.I0(\state_reg_n_0_[0] ),
        .I1(writeStage[5]),
        .I2(writeStage[63]),
        .I3(writeStage[4]),
        .I4(writeStage[0]),
        .I5(\state_reg_n_0_[2] ),
        .O(sda_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_i_7
       (.I0(data11),
        .I1(data10),
        .I2(writeStage[2]),
        .I3(data9),
        .I4(writeStage[1]),
        .I5(\Data_reg_n_0_[7] ),
        .O(sda_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_i_8
       (.I0(\DataShort_reg_n_0_[0] ),
        .I1(data14),
        .I2(writeStage[2]),
        .I3(data13),
        .I4(writeStage[1]),
        .I5(data12),
        .O(sda_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_i_9
       (.I0(data3),
        .I1(data2),
        .I2(writeStage[2]),
        .I3(data1),
        .I4(writeStage[1]),
        .I5(data0),
        .O(sda_i_9_n_0));
  FDCE sda_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(sda_i_1_n_0),
        .Q(sda));
  MUXF7 sda_reg_i_4
       (.I0(sda_i_7_n_0),
        .I1(sda_i_8_n_0),
        .O(sda_reg_i_4_n_0),
        .S(writeStage[3]));
  MUXF7 sda_reg_i_5
       (.I0(sda_i_9_n_0),
        .I1(sda_i_10_n_0),
        .O(sda_reg_i_5_n_0),
        .S(writeStage[3]));
  MUXF7 sda_reg_i_6
       (.I0(sda_i_11_n_0),
        .I1(sda_i_12_n_0),
        .O(sda_reg_i_6_n_0),
        .S(writeStage[3]));
  LUT6 #(
    .INIT(64'hFFFFABFF0000A800)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\writeStage[63]_i_2_n_0 ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDD0DDDDDDDD)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state[0]_i_5_n_0 ),
        .I4(\state[0]_i_6_n_0 ),
        .I5(\state[0]_i_7_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003FFFFAAAAFFFF)) 
    \state[0]_i_3 
       (.I0(drawStage__0[1]),
        .I1(addrStage__0[0]),
        .I2(addrStage__0[1]),
        .I3(addrStage__0[2]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888AAAAA8A8)) 
    \state[0]_i_4 
       (.I0(initStage__0[5]),
        .I1(initStage__0[2]),
        .I2(initStage__0[0]),
        .I3(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I4(initStage__0[3]),
        .I5(initStage__0[4]),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFDFFFDFFFDFDF)) 
    \state[0]_i_5 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(initStage__0[0]),
        .I4(initStage__0[3]),
        .I5(initStage__0[4]),
        .O(\state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000008080808)) 
    \state[0]_i_6 
       (.I0(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I1(initStage__0[3]),
        .I2(initStage__0[4]),
        .I3(initStage__0[6]),
        .I4(initStage__0[0]),
        .I5(initStage__0[2]),
        .O(\state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h3FB3BFBF)) 
    \state[0]_i_7 
       (.I0(initStage__0[0]),
        .I1(initStage__0[2]),
        .I2(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I3(initStage__0[4]),
        .I4(initStage__0[3]),
        .O(\state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABFF0000A800)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\writeStage[63]_i_2_n_0 ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0AFCCCCC0A0CCCCC)) 
    \state[1]_i_2 
       (.I0(\state[2]_i_14_n_0 ),
        .I1(\backState_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00011145)) 
    \state[1]_i_3 
       (.I0(blk_i_2_n_0),
        .I1(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I2(initStage__0[6]),
        .I3(initStage__0[2]),
        .I4(initStage__0[0]),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABFF0000A800)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(\writeStage[63]_i_2_n_0 ),
        .I4(\state[2]_i_5_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \state[2]_i_10 
       (.I0(\state[2]_i_20_n_0 ),
        .I1(\state[2]_i_21_n_0 ),
        .I2(\state[2]_i_22_n_0 ),
        .I3(\state[2]_i_23_n_0 ),
        .O(\state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_11 
       (.I0(\state[2]_i_24_n_0 ),
        .I1(\state[2]_i_25_n_0 ),
        .I2(\DelayCount_reg_n_0_[63] ),
        .I3(\DelayCount_reg_n_0_[62] ),
        .I4(\state[2]_i_26_n_0 ),
        .I5(\state[2]_i_27_n_0 ),
        .O(\state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_12 
       (.I0(\state[2]_i_28_n_0 ),
        .I1(\state[2]_i_29_n_0 ),
        .I2(\state[2]_i_30_n_0 ),
        .I3(\state[2]_i_31_n_0 ),
        .O(\state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[2]_i_13 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[2]_i_14 
       (.I0(ReadAddr),
        .I1(drawStage__0[1]),
        .O(\state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFEEF000FFEE)) 
    \state[2]_i_15 
       (.I0(writeStage[4]),
        .I1(\writeStage[63]_i_9_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\FSM_onehot_fbStage_reg_n_0_[2] ),
        .O(\state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_16 
       (.I0(\DelayCount_reg_n_0_[10] ),
        .I1(\DelayCount_reg_n_0_[9] ),
        .I2(\DelayCount_reg_n_0_[11] ),
        .I3(\DelayCount_reg_n_0_[8] ),
        .O(\state[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_17 
       (.I0(\DelayCount_reg_n_0_[14] ),
        .I1(\DelayCount_reg_n_0_[13] ),
        .I2(\DelayCount_reg_n_0_[15] ),
        .I3(\DelayCount_reg_n_0_[12] ),
        .O(\state[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[2]_i_18 
       (.I0(\DelayCount_reg_n_0_[2] ),
        .I1(\DelayCount_reg_n_0_[3] ),
        .O(\state[2]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_19 
       (.I0(\DelayCount_reg_n_0_[6] ),
        .I1(\DelayCount_reg_n_0_[5] ),
        .I2(\DelayCount_reg_n_0_[7] ),
        .I3(\DelayCount_reg_n_0_[4] ),
        .O(\state[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h5F1FFFFF5010F000)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_6_n_0 ),
        .I1(\state[2]_i_7_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\backState_reg_n_0_[2] ),
        .O(\state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_20 
       (.I0(\DelayCount_reg_n_0_[26] ),
        .I1(\DelayCount_reg_n_0_[25] ),
        .I2(\DelayCount_reg_n_0_[27] ),
        .I3(\DelayCount_reg_n_0_[24] ),
        .O(\state[2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_21 
       (.I0(\DelayCount_reg_n_0_[30] ),
        .I1(\DelayCount_reg_n_0_[29] ),
        .I2(\DelayCount_reg_n_0_[31] ),
        .I3(\DelayCount_reg_n_0_[28] ),
        .O(\state[2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_22 
       (.I0(\DelayCount_reg_n_0_[22] ),
        .I1(\DelayCount_reg_n_0_[21] ),
        .I2(\DelayCount_reg_n_0_[23] ),
        .I3(\DelayCount_reg_n_0_[20] ),
        .O(\state[2]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[2]_i_23 
       (.I0(\DelayCount_reg_n_0_[19] ),
        .I1(\DelayCount_reg_n_0_[16] ),
        .I2(\DelayCount_reg_n_0_[18] ),
        .I3(\DelayCount_reg_n_0_[17] ),
        .O(\state[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_24 
       (.I0(\DelayCount_reg_n_0_[54] ),
        .I1(\DelayCount_reg_n_0_[53] ),
        .I2(\DelayCount_reg_n_0_[55] ),
        .I3(\DelayCount_reg_n_0_[52] ),
        .O(\state[2]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_25 
       (.I0(\DelayCount_reg_n_0_[49] ),
        .I1(\DelayCount_reg_n_0_[48] ),
        .I2(\DelayCount_reg_n_0_[51] ),
        .I3(\DelayCount_reg_n_0_[50] ),
        .O(\state[2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[2]_i_26 
       (.I0(\DelayCount_reg_n_0_[60] ),
        .I1(\DelayCount_reg_n_0_[61] ),
        .O(\state[2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_27 
       (.I0(\DelayCount_reg_n_0_[58] ),
        .I1(\DelayCount_reg_n_0_[57] ),
        .I2(\DelayCount_reg_n_0_[59] ),
        .I3(\DelayCount_reg_n_0_[56] ),
        .O(\state[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_28 
       (.I0(\DelayCount_reg_n_0_[34] ),
        .I1(\DelayCount_reg_n_0_[33] ),
        .I2(\DelayCount_reg_n_0_[35] ),
        .I3(\DelayCount_reg_n_0_[32] ),
        .O(\state[2]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_29 
       (.I0(\DelayCount_reg_n_0_[38] ),
        .I1(\DelayCount_reg_n_0_[37] ),
        .I2(\DelayCount_reg_n_0_[39] ),
        .I3(\DelayCount_reg_n_0_[36] ),
        .O(\state[2]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state[2]_i_8_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_30 
       (.I0(\DelayCount_reg_n_0_[46] ),
        .I1(\DelayCount_reg_n_0_[45] ),
        .I2(\DelayCount_reg_n_0_[47] ),
        .I3(\DelayCount_reg_n_0_[44] ),
        .O(\state[2]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[2]_i_31 
       (.I0(\DelayCount_reg_n_0_[42] ),
        .I1(\DelayCount_reg_n_0_[41] ),
        .I2(\DelayCount_reg_n_0_[43] ),
        .I3(\DelayCount_reg_n_0_[40] ),
        .O(\state[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state[2]_i_4 
       (.I0(\writeStage[63]_i_4_n_0 ),
        .I1(\state[2]_i_9_n_0 ),
        .I2(\state[2]_i_10_n_0 ),
        .I3(\state[2]_i_11_n_0 ),
        .I4(\state[2]_i_12_n_0 ),
        .I5(DelayStarted_reg_n_0),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000ABABABFB)) 
    \state[2]_i_5 
       (.I0(\state[2]_i_13_n_0 ),
        .I1(\writeStage[63]_i_9_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[2]_i_14_n_0 ),
        .I4(DataShort),
        .I5(\state[2]_i_15_n_0 ),
        .O(\state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h9200)) 
    \state[2]_i_6 
       (.I0(addrStage__0[0]),
        .I1(addrStage__0[1]),
        .I2(addrStage__0[2]),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \state[2]_i_7 
       (.I0(initStage__0[2]),
        .I1(initStage__0[0]),
        .I2(initStage__0[6]),
        .O(\state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000333303333332)) 
    \state[2]_i_8 
       (.I0(initStage__0[0]),
        .I1(\writeStage[63]_i_4_n_0 ),
        .I2(initStage__0[2]),
        .I3(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I4(initStage__0[6]),
        .I5(blk_i_2_n_0),
        .O(\state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \state[2]_i_9 
       (.I0(\state[2]_i_16_n_0 ),
        .I1(\state[2]_i_17_n_0 ),
        .I2(\state[2]_i_18_n_0 ),
        .I3(\DelayCount_reg_n_0_[0] ),
        .I4(\DelayCount_reg_n_0_[1] ),
        .I5(\state[2]_i_19_n_0 ),
        .O(\state[2]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .PRE(reset),
        .Q(\state_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .PRE(reset),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \writeStage[0]_i_1 
       (.I0(\writeStage_inferred__2/writeStage[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\writeStage_inferred__1/writeStage[0]_i_3_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .O(\writeStage[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000044404)) 
    \writeStage[1]_i_1 
       (.I0(writeStage[1]),
        .I1(writeStage[0]),
        .I2(writeStage[4]),
        .I3(\state_reg_n_0_[2] ),
        .I4(writeStage[5]),
        .I5(\state_reg_n_0_[1] ),
        .O(\writeStage[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005A480048)) 
    \writeStage[2]_i_1 
       (.I0(writeStage[1]),
        .I1(\writeStage[2]_i_2_n_0 ),
        .I2(writeStage[2]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\writeStage[2]_i_3_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\writeStage[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeStage[2]_i_2 
       (.I0(writeStage[0]),
        .I1(writeStage[4]),
        .O(\writeStage[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \writeStage[2]_i_3 
       (.I0(writeStage[0]),
        .I1(writeStage[5]),
        .O(\writeStage[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \writeStage[3]_i_1 
       (.I0(\writeStage_inferred__2/writeStage[3]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\writeStage_inferred__1/writeStage[5]_i_2_n_0 ),
        .I3(writeStage[3]),
        .I4(\writeStage_inferred__1/writeStage[3]_i_3_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\writeStage[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \writeStage[4]_i_1 
       (.I0(writeStage[2]),
        .I1(\writeStage_inferred__2/writeStage[4]_i_2_n_0 ),
        .I2(writeStage[1]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\writeStage_inferred__1/writeStage[4]_i_3_n_0 ),
        .I5(\state_reg_n_0_[1] ),
        .O(\writeStage[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \writeStage[5]_i_1 
       (.I0(writeStage[3]),
        .I1(\writeStage_inferred__1/writeStage[5]_i_2_n_0 ),
        .I2(writeStage[4]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\writeStage[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA020002AA02AA02)) 
    \writeStage[63]_i_1 
       (.I0(\writeStage[63]_i_2_n_0 ),
        .I1(\writeStage[63]_i_3_n_0 ),
        .I2(\writeStage[63]_i_4_n_0 ),
        .I3(\writeStage[63]_i_5_n_0 ),
        .I4(\writeStage[63]_i_6_n_0 ),
        .I5(\writeStage[63]_i_7_n_0 ),
        .O(\writeStage[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \writeStage[63]_i_10 
       (.I0(writeStage[4]),
        .I1(writeStage[0]),
        .I2(writeStage[3]),
        .I3(writeStage[1]),
        .I4(writeStage[2]),
        .O(\writeStage[63]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \writeStage[63]_i_2 
       (.I0(\fb_addr[15]_i_2_n_0 ),
        .I1(\fb_addr[15]_i_3_n_0 ),
        .I2(\fb_addr[15]_i_4_n_0 ),
        .I3(\fb_addr[15]_i_17_n_0 ),
        .I4(\fb_addr[15]_i_5_n_0 ),
        .I5(\fb_addr[15]_i_7_n_0 ),
        .O(\writeStage[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAA89ABB9)) 
    \writeStage[63]_i_3 
       (.I0(initStage__0[6]),
        .I1(blk_i_2_n_0),
        .I2(\FSM_sequential_initStage_reg_n_0_[1] ),
        .I3(initStage__0[2]),
        .I4(initStage__0[0]),
        .O(\writeStage[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \writeStage[63]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\writeStage[63]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \writeStage[63]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\writeStage[63]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABABABAAABAAA)) 
    \writeStage[63]_i_6 
       (.I0(\writeStage[63]_i_8_n_0 ),
        .I1(\writeStage[63]_i_9_n_0 ),
        .I2(\writeStage[63]_i_4_n_0 ),
        .I3(scl_i_10_n_0),
        .I4(writeStage[4]),
        .I5(writeStage[0]),
        .O(\writeStage[63]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF4FF)) 
    \writeStage[63]_i_7 
       (.I0(\writeStage[2]_i_3_n_0 ),
        .I1(\writeStage[63]_i_10_n_0 ),
        .I2(writeStage[63]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\writeStage[63]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \writeStage[63]_i_8 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(addrStage__0[2]),
        .I3(addrStage__0[1]),
        .I4(addrStage__0[0]),
        .O(\writeStage[63]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \writeStage[63]_i_9 
       (.I0(writeStage[5]),
        .I1(writeStage[63]),
        .O(\writeStage[63]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \writeStage_inferred__1/writeStage[0]_i_3 
       (.I0(writeStage[4]),
        .I1(writeStage[1]),
        .I2(writeStage[5]),
        .I3(writeStage[0]),
        .I4(writeStage[2]),
        .I5(writeStage[3]),
        .O(\writeStage_inferred__1/writeStage[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \writeStage_inferred__1/writeStage[3]_i_3 
       (.I0(writeStage[1]),
        .I1(writeStage[2]),
        .I2(writeStage[0]),
        .I3(writeStage[5]),
        .O(\writeStage_inferred__1/writeStage[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \writeStage_inferred__1/writeStage[4]_i_3 
       (.I0(writeStage[1]),
        .I1(writeStage[2]),
        .I2(writeStage[3]),
        .I3(writeStage[5]),
        .I4(writeStage[0]),
        .I5(writeStage[4]),
        .O(\writeStage_inferred__1/writeStage[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \writeStage_inferred__1/writeStage[5]_i_2 
       (.I0(writeStage[1]),
        .I1(writeStage[0]),
        .I2(writeStage[5]),
        .I3(writeStage[2]),
        .O(\writeStage_inferred__1/writeStage[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \writeStage_inferred__2/writeStage[0]_i_2 
       (.I0(writeStage[1]),
        .I1(writeStage[4]),
        .I2(writeStage[3]),
        .I3(writeStage[0]),
        .I4(writeStage[2]),
        .O(\writeStage_inferred__2/writeStage[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h07080000)) 
    \writeStage_inferred__2/writeStage[3]_i_2 
       (.I0(writeStage[1]),
        .I1(writeStage[2]),
        .I2(writeStage[4]),
        .I3(writeStage[3]),
        .I4(writeStage[0]),
        .O(\writeStage_inferred__2/writeStage[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \writeStage_inferred__2/writeStage[4]_i_2 
       (.I0(writeStage[4]),
        .I1(writeStage[3]),
        .I2(writeStage[0]),
        .O(\writeStage_inferred__2/writeStage[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \writeStage_reg[0] 
       (.C(clk),
        .CE(\writeStage[63]_i_1_n_0 ),
        .CLR(reset),
        .D(\writeStage[0]_i_1_n_0 ),
        .Q(writeStage[0]));
  FDCE #(
    .INIT(1'b0)) 
    \writeStage_reg[1] 
       (.C(clk),
        .CE(\writeStage[63]_i_1_n_0 ),
        .CLR(reset),
        .D(\writeStage[1]_i_1_n_0 ),
        .Q(writeStage[1]));
  FDCE #(
    .INIT(1'b0)) 
    \writeStage_reg[2] 
       (.C(clk),
        .CE(\writeStage[63]_i_1_n_0 ),
        .CLR(reset),
        .D(\writeStage[2]_i_1_n_0 ),
        .Q(writeStage[2]));
  FDCE #(
    .INIT(1'b0)) 
    \writeStage_reg[3] 
       (.C(clk),
        .CE(\writeStage[63]_i_1_n_0 ),
        .CLR(reset),
        .D(\writeStage[3]_i_1_n_0 ),
        .Q(writeStage[3]));
  FDCE #(
    .INIT(1'b0)) 
    \writeStage_reg[4] 
       (.C(clk),
        .CE(\writeStage[63]_i_1_n_0 ),
        .CLR(reset),
        .D(\writeStage[4]_i_1_n_0 ),
        .Q(writeStage[4]));
  FDCE #(
    .INIT(1'b0)) 
    \writeStage_reg[5] 
       (.C(clk),
        .CE(\writeStage[63]_i_1_n_0 ),
        .CLR(reset),
        .D(\writeStage[5]_i_1_n_0 ),
        .Q(writeStage[5]));
  FDCE #(
    .INIT(1'b1)) 
    \writeStage_reg[63] 
       (.C(clk),
        .CE(\writeStage[63]_i_1_n_0 ),
        .CLR(reset),
        .D(1'b0),
        .Q(writeStage[63]));
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
