// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug  6 15:00:53 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_CPU_0_2/Setup_CPU_0_2_sim_netlist.v
// Design      : Setup_CPU_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Setup_CPU_0_2,CPU,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CPU,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module Setup_CPU_0_2
   (clk,
    reset,
    interrupt,
    data_in,
    data_out,
    addr,
    mem_write,
    mem_read,
    mem_err,
    mem_done,
    bram_we,
    bram_en,
    bram_din,
    bram_dout,
    bram_addr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_sim_clk_gen_0_0_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) input interrupt;
  input [31:0]data_in;
  output [31:0]data_out;
  output [31:0]addr;
  output mem_write;
  output mem_read;
  input mem_err;
  input mem_done;
  output bram_we;
  output bram_en;
  input [63:0]bram_din;
  output [63:0]bram_dout;
  output [12:0]bram_addr;

  wire \<const0> ;
  wire [63:0]bram_din;
  wire [63:0]bram_dout;
  wire bram_en;
  wire bram_we;
  wire clk;
  wire interrupt;
  wire reset;

  assign addr[31] = \<const0> ;
  assign addr[30] = \<const0> ;
  assign addr[29] = \<const0> ;
  assign addr[28] = \<const0> ;
  assign addr[27] = \<const0> ;
  assign addr[26] = \<const0> ;
  assign addr[25] = \<const0> ;
  assign addr[24] = \<const0> ;
  assign addr[23] = \<const0> ;
  assign addr[22] = \<const0> ;
  assign addr[21] = \<const0> ;
  assign addr[20] = \<const0> ;
  assign addr[19] = \<const0> ;
  assign addr[18] = \<const0> ;
  assign addr[17] = \<const0> ;
  assign addr[16] = \<const0> ;
  assign addr[15] = \<const0> ;
  assign addr[14] = \<const0> ;
  assign addr[13] = \<const0> ;
  assign addr[12] = \<const0> ;
  assign addr[11] = \<const0> ;
  assign addr[10] = \<const0> ;
  assign addr[9] = \<const0> ;
  assign addr[8] = \<const0> ;
  assign addr[7] = \<const0> ;
  assign addr[6] = \<const0> ;
  assign addr[5] = \<const0> ;
  assign addr[4] = \<const0> ;
  assign addr[3] = \<const0> ;
  assign addr[2] = \<const0> ;
  assign addr[1] = \<const0> ;
  assign addr[0] = \<const0> ;
  assign bram_addr[12] = \<const0> ;
  assign bram_addr[11] = \<const0> ;
  assign bram_addr[10] = \<const0> ;
  assign bram_addr[9] = \<const0> ;
  assign bram_addr[8] = \<const0> ;
  assign bram_addr[7] = \<const0> ;
  assign bram_addr[6] = \<const0> ;
  assign bram_addr[5] = \<const0> ;
  assign bram_addr[4] = \<const0> ;
  assign bram_addr[3] = bram_en;
  assign bram_addr[2] = bram_en;
  assign bram_addr[1] = bram_en;
  assign bram_addr[0] = \<const0> ;
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
  assign data_out[0] = \<const0> ;
  assign mem_read = \<const0> ;
  assign mem_write = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Setup_CPU_0_2_CPU U0
       (.bram_din(bram_din),
        .bram_dout(bram_dout),
        .bram_en(bram_en),
        .bram_we(bram_we),
        .clk(clk),
        .interrupt(interrupt),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "ALU" *) 
module Setup_CPU_0_2_ALU
   (D,
    clk_div,
    reset,
    Q,
    bram_en);
  output [63:0]D;
  input clk_div;
  input reset;
  input [63:0]Q;
  input bram_en;

  wire [63:0]D;
  wire [63:0]Q;
  wire bram_en;
  wire clk_div;
  wire [63:0]plusOp;
  wire reset;
  wire [63:0]resultBuf;
  wire \resultBuf[3]_i_2_n_0 ;
  wire \resultBuf_reg[11]_i_1_n_0 ;
  wire \resultBuf_reg[11]_i_1_n_1 ;
  wire \resultBuf_reg[11]_i_1_n_2 ;
  wire \resultBuf_reg[11]_i_1_n_3 ;
  wire \resultBuf_reg[15]_i_1_n_0 ;
  wire \resultBuf_reg[15]_i_1_n_1 ;
  wire \resultBuf_reg[15]_i_1_n_2 ;
  wire \resultBuf_reg[15]_i_1_n_3 ;
  wire \resultBuf_reg[19]_i_1_n_0 ;
  wire \resultBuf_reg[19]_i_1_n_1 ;
  wire \resultBuf_reg[19]_i_1_n_2 ;
  wire \resultBuf_reg[19]_i_1_n_3 ;
  wire \resultBuf_reg[23]_i_1_n_0 ;
  wire \resultBuf_reg[23]_i_1_n_1 ;
  wire \resultBuf_reg[23]_i_1_n_2 ;
  wire \resultBuf_reg[23]_i_1_n_3 ;
  wire \resultBuf_reg[27]_i_1_n_0 ;
  wire \resultBuf_reg[27]_i_1_n_1 ;
  wire \resultBuf_reg[27]_i_1_n_2 ;
  wire \resultBuf_reg[27]_i_1_n_3 ;
  wire \resultBuf_reg[31]_i_1_n_0 ;
  wire \resultBuf_reg[31]_i_1_n_1 ;
  wire \resultBuf_reg[31]_i_1_n_2 ;
  wire \resultBuf_reg[31]_i_1_n_3 ;
  wire \resultBuf_reg[35]_i_1_n_0 ;
  wire \resultBuf_reg[35]_i_1_n_1 ;
  wire \resultBuf_reg[35]_i_1_n_2 ;
  wire \resultBuf_reg[35]_i_1_n_3 ;
  wire \resultBuf_reg[39]_i_1_n_0 ;
  wire \resultBuf_reg[39]_i_1_n_1 ;
  wire \resultBuf_reg[39]_i_1_n_2 ;
  wire \resultBuf_reg[39]_i_1_n_3 ;
  wire \resultBuf_reg[3]_i_1_n_0 ;
  wire \resultBuf_reg[3]_i_1_n_1 ;
  wire \resultBuf_reg[3]_i_1_n_2 ;
  wire \resultBuf_reg[3]_i_1_n_3 ;
  wire \resultBuf_reg[43]_i_1_n_0 ;
  wire \resultBuf_reg[43]_i_1_n_1 ;
  wire \resultBuf_reg[43]_i_1_n_2 ;
  wire \resultBuf_reg[43]_i_1_n_3 ;
  wire \resultBuf_reg[47]_i_1_n_0 ;
  wire \resultBuf_reg[47]_i_1_n_1 ;
  wire \resultBuf_reg[47]_i_1_n_2 ;
  wire \resultBuf_reg[47]_i_1_n_3 ;
  wire \resultBuf_reg[51]_i_1_n_0 ;
  wire \resultBuf_reg[51]_i_1_n_1 ;
  wire \resultBuf_reg[51]_i_1_n_2 ;
  wire \resultBuf_reg[51]_i_1_n_3 ;
  wire \resultBuf_reg[55]_i_1_n_0 ;
  wire \resultBuf_reg[55]_i_1_n_1 ;
  wire \resultBuf_reg[55]_i_1_n_2 ;
  wire \resultBuf_reg[55]_i_1_n_3 ;
  wire \resultBuf_reg[59]_i_1_n_0 ;
  wire \resultBuf_reg[59]_i_1_n_1 ;
  wire \resultBuf_reg[59]_i_1_n_2 ;
  wire \resultBuf_reg[59]_i_1_n_3 ;
  wire \resultBuf_reg[63]_i_1_n_1 ;
  wire \resultBuf_reg[63]_i_1_n_2 ;
  wire \resultBuf_reg[63]_i_1_n_3 ;
  wire \resultBuf_reg[7]_i_1_n_0 ;
  wire \resultBuf_reg[7]_i_1_n_1 ;
  wire \resultBuf_reg[7]_i_1_n_2 ;
  wire \resultBuf_reg[7]_i_1_n_3 ;
  wire \result_reg[0]_C_n_0 ;
  wire \result_reg[0]_LDC_i_1_n_0 ;
  wire \result_reg[0]_LDC_i_2_n_0 ;
  wire \result_reg[0]_LDC_n_0 ;
  wire \result_reg[0]_P_n_0 ;
  wire \result_reg[10]_C_n_0 ;
  wire \result_reg[10]_LDC_i_1_n_0 ;
  wire \result_reg[10]_LDC_i_2_n_0 ;
  wire \result_reg[10]_LDC_n_0 ;
  wire \result_reg[10]_P_n_0 ;
  wire \result_reg[11]_C_n_0 ;
  wire \result_reg[11]_LDC_i_1_n_0 ;
  wire \result_reg[11]_LDC_i_2_n_0 ;
  wire \result_reg[11]_LDC_n_0 ;
  wire \result_reg[11]_P_n_0 ;
  wire \result_reg[12]_C_n_0 ;
  wire \result_reg[12]_LDC_i_1_n_0 ;
  wire \result_reg[12]_LDC_i_2_n_0 ;
  wire \result_reg[12]_LDC_n_0 ;
  wire \result_reg[12]_P_n_0 ;
  wire \result_reg[13]_C_n_0 ;
  wire \result_reg[13]_LDC_i_1_n_0 ;
  wire \result_reg[13]_LDC_i_2_n_0 ;
  wire \result_reg[13]_LDC_n_0 ;
  wire \result_reg[13]_P_n_0 ;
  wire \result_reg[14]_C_n_0 ;
  wire \result_reg[14]_LDC_i_1_n_0 ;
  wire \result_reg[14]_LDC_i_2_n_0 ;
  wire \result_reg[14]_LDC_n_0 ;
  wire \result_reg[14]_P_n_0 ;
  wire \result_reg[15]_C_n_0 ;
  wire \result_reg[15]_LDC_i_1_n_0 ;
  wire \result_reg[15]_LDC_i_2_n_0 ;
  wire \result_reg[15]_LDC_n_0 ;
  wire \result_reg[15]_P_n_0 ;
  wire \result_reg[16]_C_n_0 ;
  wire \result_reg[16]_LDC_i_1_n_0 ;
  wire \result_reg[16]_LDC_i_2_n_0 ;
  wire \result_reg[16]_LDC_n_0 ;
  wire \result_reg[16]_P_n_0 ;
  wire \result_reg[17]_C_n_0 ;
  wire \result_reg[17]_LDC_i_1_n_0 ;
  wire \result_reg[17]_LDC_i_2_n_0 ;
  wire \result_reg[17]_LDC_n_0 ;
  wire \result_reg[17]_P_n_0 ;
  wire \result_reg[18]_C_n_0 ;
  wire \result_reg[18]_LDC_i_1_n_0 ;
  wire \result_reg[18]_LDC_i_2_n_0 ;
  wire \result_reg[18]_LDC_n_0 ;
  wire \result_reg[18]_P_n_0 ;
  wire \result_reg[19]_C_n_0 ;
  wire \result_reg[19]_LDC_i_1_n_0 ;
  wire \result_reg[19]_LDC_i_2_n_0 ;
  wire \result_reg[19]_LDC_n_0 ;
  wire \result_reg[19]_P_n_0 ;
  wire \result_reg[1]_C_n_0 ;
  wire \result_reg[1]_LDC_i_1_n_0 ;
  wire \result_reg[1]_LDC_i_2_n_0 ;
  wire \result_reg[1]_LDC_n_0 ;
  wire \result_reg[1]_P_n_0 ;
  wire \result_reg[20]_C_n_0 ;
  wire \result_reg[20]_LDC_i_1_n_0 ;
  wire \result_reg[20]_LDC_i_2_n_0 ;
  wire \result_reg[20]_LDC_n_0 ;
  wire \result_reg[20]_P_n_0 ;
  wire \result_reg[21]_C_n_0 ;
  wire \result_reg[21]_LDC_i_1_n_0 ;
  wire \result_reg[21]_LDC_i_2_n_0 ;
  wire \result_reg[21]_LDC_n_0 ;
  wire \result_reg[21]_P_n_0 ;
  wire \result_reg[22]_C_n_0 ;
  wire \result_reg[22]_LDC_i_1_n_0 ;
  wire \result_reg[22]_LDC_i_2_n_0 ;
  wire \result_reg[22]_LDC_n_0 ;
  wire \result_reg[22]_P_n_0 ;
  wire \result_reg[23]_C_n_0 ;
  wire \result_reg[23]_LDC_i_1_n_0 ;
  wire \result_reg[23]_LDC_i_2_n_0 ;
  wire \result_reg[23]_LDC_n_0 ;
  wire \result_reg[23]_P_n_0 ;
  wire \result_reg[24]_C_n_0 ;
  wire \result_reg[24]_LDC_i_1_n_0 ;
  wire \result_reg[24]_LDC_i_2_n_0 ;
  wire \result_reg[24]_LDC_n_0 ;
  wire \result_reg[24]_P_n_0 ;
  wire \result_reg[25]_C_n_0 ;
  wire \result_reg[25]_LDC_i_1_n_0 ;
  wire \result_reg[25]_LDC_i_2_n_0 ;
  wire \result_reg[25]_LDC_n_0 ;
  wire \result_reg[25]_P_n_0 ;
  wire \result_reg[26]_C_n_0 ;
  wire \result_reg[26]_LDC_i_1_n_0 ;
  wire \result_reg[26]_LDC_i_2_n_0 ;
  wire \result_reg[26]_LDC_n_0 ;
  wire \result_reg[26]_P_n_0 ;
  wire \result_reg[27]_C_n_0 ;
  wire \result_reg[27]_LDC_i_1_n_0 ;
  wire \result_reg[27]_LDC_i_2_n_0 ;
  wire \result_reg[27]_LDC_n_0 ;
  wire \result_reg[27]_P_n_0 ;
  wire \result_reg[28]_C_n_0 ;
  wire \result_reg[28]_LDC_i_1_n_0 ;
  wire \result_reg[28]_LDC_i_2_n_0 ;
  wire \result_reg[28]_LDC_n_0 ;
  wire \result_reg[28]_P_n_0 ;
  wire \result_reg[29]_C_n_0 ;
  wire \result_reg[29]_LDC_i_1_n_0 ;
  wire \result_reg[29]_LDC_i_2_n_0 ;
  wire \result_reg[29]_LDC_n_0 ;
  wire \result_reg[29]_P_n_0 ;
  wire \result_reg[2]_C_n_0 ;
  wire \result_reg[2]_LDC_i_1_n_0 ;
  wire \result_reg[2]_LDC_i_2_n_0 ;
  wire \result_reg[2]_LDC_n_0 ;
  wire \result_reg[2]_P_n_0 ;
  wire \result_reg[30]_C_n_0 ;
  wire \result_reg[30]_LDC_i_1_n_0 ;
  wire \result_reg[30]_LDC_i_2_n_0 ;
  wire \result_reg[30]_LDC_n_0 ;
  wire \result_reg[30]_P_n_0 ;
  wire \result_reg[31]_C_n_0 ;
  wire \result_reg[31]_LDC_i_1_n_0 ;
  wire \result_reg[31]_LDC_i_2_n_0 ;
  wire \result_reg[31]_LDC_n_0 ;
  wire \result_reg[31]_P_n_0 ;
  wire \result_reg[32]_C_n_0 ;
  wire \result_reg[32]_LDC_i_1_n_0 ;
  wire \result_reg[32]_LDC_i_2_n_0 ;
  wire \result_reg[32]_LDC_n_0 ;
  wire \result_reg[32]_P_n_0 ;
  wire \result_reg[33]_C_n_0 ;
  wire \result_reg[33]_LDC_i_1_n_0 ;
  wire \result_reg[33]_LDC_i_2_n_0 ;
  wire \result_reg[33]_LDC_n_0 ;
  wire \result_reg[33]_P_n_0 ;
  wire \result_reg[34]_C_n_0 ;
  wire \result_reg[34]_LDC_i_1_n_0 ;
  wire \result_reg[34]_LDC_i_2_n_0 ;
  wire \result_reg[34]_LDC_n_0 ;
  wire \result_reg[34]_P_n_0 ;
  wire \result_reg[35]_C_n_0 ;
  wire \result_reg[35]_LDC_i_1_n_0 ;
  wire \result_reg[35]_LDC_i_2_n_0 ;
  wire \result_reg[35]_LDC_n_0 ;
  wire \result_reg[35]_P_n_0 ;
  wire \result_reg[36]_C_n_0 ;
  wire \result_reg[36]_LDC_i_1_n_0 ;
  wire \result_reg[36]_LDC_i_2_n_0 ;
  wire \result_reg[36]_LDC_n_0 ;
  wire \result_reg[36]_P_n_0 ;
  wire \result_reg[37]_C_n_0 ;
  wire \result_reg[37]_LDC_i_1_n_0 ;
  wire \result_reg[37]_LDC_i_2_n_0 ;
  wire \result_reg[37]_LDC_n_0 ;
  wire \result_reg[37]_P_n_0 ;
  wire \result_reg[38]_C_n_0 ;
  wire \result_reg[38]_LDC_i_1_n_0 ;
  wire \result_reg[38]_LDC_i_2_n_0 ;
  wire \result_reg[38]_LDC_n_0 ;
  wire \result_reg[38]_P_n_0 ;
  wire \result_reg[39]_C_n_0 ;
  wire \result_reg[39]_LDC_i_1_n_0 ;
  wire \result_reg[39]_LDC_i_2_n_0 ;
  wire \result_reg[39]_LDC_n_0 ;
  wire \result_reg[39]_P_n_0 ;
  wire \result_reg[3]_C_n_0 ;
  wire \result_reg[3]_LDC_i_1_n_0 ;
  wire \result_reg[3]_LDC_i_2_n_0 ;
  wire \result_reg[3]_LDC_n_0 ;
  wire \result_reg[3]_P_n_0 ;
  wire \result_reg[40]_C_n_0 ;
  wire \result_reg[40]_LDC_i_1_n_0 ;
  wire \result_reg[40]_LDC_i_2_n_0 ;
  wire \result_reg[40]_LDC_n_0 ;
  wire \result_reg[40]_P_n_0 ;
  wire \result_reg[41]_C_n_0 ;
  wire \result_reg[41]_LDC_i_1_n_0 ;
  wire \result_reg[41]_LDC_i_2_n_0 ;
  wire \result_reg[41]_LDC_n_0 ;
  wire \result_reg[41]_P_n_0 ;
  wire \result_reg[42]_C_n_0 ;
  wire \result_reg[42]_LDC_i_1_n_0 ;
  wire \result_reg[42]_LDC_i_2_n_0 ;
  wire \result_reg[42]_LDC_n_0 ;
  wire \result_reg[42]_P_n_0 ;
  wire \result_reg[43]_C_n_0 ;
  wire \result_reg[43]_LDC_i_1_n_0 ;
  wire \result_reg[43]_LDC_i_2_n_0 ;
  wire \result_reg[43]_LDC_n_0 ;
  wire \result_reg[43]_P_n_0 ;
  wire \result_reg[44]_C_n_0 ;
  wire \result_reg[44]_LDC_i_1_n_0 ;
  wire \result_reg[44]_LDC_i_2_n_0 ;
  wire \result_reg[44]_LDC_n_0 ;
  wire \result_reg[44]_P_n_0 ;
  wire \result_reg[45]_C_n_0 ;
  wire \result_reg[45]_LDC_i_1_n_0 ;
  wire \result_reg[45]_LDC_i_2_n_0 ;
  wire \result_reg[45]_LDC_n_0 ;
  wire \result_reg[45]_P_n_0 ;
  wire \result_reg[46]_C_n_0 ;
  wire \result_reg[46]_LDC_i_1_n_0 ;
  wire \result_reg[46]_LDC_i_2_n_0 ;
  wire \result_reg[46]_LDC_n_0 ;
  wire \result_reg[46]_P_n_0 ;
  wire \result_reg[47]_C_n_0 ;
  wire \result_reg[47]_LDC_i_1_n_0 ;
  wire \result_reg[47]_LDC_i_2_n_0 ;
  wire \result_reg[47]_LDC_n_0 ;
  wire \result_reg[47]_P_n_0 ;
  wire \result_reg[48]_C_n_0 ;
  wire \result_reg[48]_LDC_i_1_n_0 ;
  wire \result_reg[48]_LDC_i_2_n_0 ;
  wire \result_reg[48]_LDC_n_0 ;
  wire \result_reg[48]_P_n_0 ;
  wire \result_reg[49]_C_n_0 ;
  wire \result_reg[49]_LDC_i_1_n_0 ;
  wire \result_reg[49]_LDC_i_2_n_0 ;
  wire \result_reg[49]_LDC_n_0 ;
  wire \result_reg[49]_P_n_0 ;
  wire \result_reg[4]_C_n_0 ;
  wire \result_reg[4]_LDC_i_1_n_0 ;
  wire \result_reg[4]_LDC_i_2_n_0 ;
  wire \result_reg[4]_LDC_n_0 ;
  wire \result_reg[4]_P_n_0 ;
  wire \result_reg[50]_C_n_0 ;
  wire \result_reg[50]_LDC_i_1_n_0 ;
  wire \result_reg[50]_LDC_i_2_n_0 ;
  wire \result_reg[50]_LDC_n_0 ;
  wire \result_reg[50]_P_n_0 ;
  wire \result_reg[51]_C_n_0 ;
  wire \result_reg[51]_LDC_i_1_n_0 ;
  wire \result_reg[51]_LDC_i_2_n_0 ;
  wire \result_reg[51]_LDC_n_0 ;
  wire \result_reg[51]_P_n_0 ;
  wire \result_reg[52]_C_n_0 ;
  wire \result_reg[52]_LDC_i_1_n_0 ;
  wire \result_reg[52]_LDC_i_2_n_0 ;
  wire \result_reg[52]_LDC_n_0 ;
  wire \result_reg[52]_P_n_0 ;
  wire \result_reg[53]_C_n_0 ;
  wire \result_reg[53]_LDC_i_1_n_0 ;
  wire \result_reg[53]_LDC_i_2_n_0 ;
  wire \result_reg[53]_LDC_n_0 ;
  wire \result_reg[53]_P_n_0 ;
  wire \result_reg[54]_C_n_0 ;
  wire \result_reg[54]_LDC_i_1_n_0 ;
  wire \result_reg[54]_LDC_i_2_n_0 ;
  wire \result_reg[54]_LDC_n_0 ;
  wire \result_reg[54]_P_n_0 ;
  wire \result_reg[55]_C_n_0 ;
  wire \result_reg[55]_LDC_i_1_n_0 ;
  wire \result_reg[55]_LDC_i_2_n_0 ;
  wire \result_reg[55]_LDC_n_0 ;
  wire \result_reg[55]_P_n_0 ;
  wire \result_reg[56]_C_n_0 ;
  wire \result_reg[56]_LDC_i_1_n_0 ;
  wire \result_reg[56]_LDC_i_2_n_0 ;
  wire \result_reg[56]_LDC_n_0 ;
  wire \result_reg[56]_P_n_0 ;
  wire \result_reg[57]_C_n_0 ;
  wire \result_reg[57]_LDC_i_1_n_0 ;
  wire \result_reg[57]_LDC_i_2_n_0 ;
  wire \result_reg[57]_LDC_n_0 ;
  wire \result_reg[57]_P_n_0 ;
  wire \result_reg[58]_C_n_0 ;
  wire \result_reg[58]_LDC_i_1_n_0 ;
  wire \result_reg[58]_LDC_i_2_n_0 ;
  wire \result_reg[58]_LDC_n_0 ;
  wire \result_reg[58]_P_n_0 ;
  wire \result_reg[59]_C_n_0 ;
  wire \result_reg[59]_LDC_i_1_n_0 ;
  wire \result_reg[59]_LDC_i_2_n_0 ;
  wire \result_reg[59]_LDC_n_0 ;
  wire \result_reg[59]_P_n_0 ;
  wire \result_reg[5]_C_n_0 ;
  wire \result_reg[5]_LDC_i_1_n_0 ;
  wire \result_reg[5]_LDC_i_2_n_0 ;
  wire \result_reg[5]_LDC_n_0 ;
  wire \result_reg[5]_P_n_0 ;
  wire \result_reg[60]_C_n_0 ;
  wire \result_reg[60]_LDC_i_1_n_0 ;
  wire \result_reg[60]_LDC_i_2_n_0 ;
  wire \result_reg[60]_LDC_n_0 ;
  wire \result_reg[60]_P_n_0 ;
  wire \result_reg[61]_C_n_0 ;
  wire \result_reg[61]_LDC_i_1_n_0 ;
  wire \result_reg[61]_LDC_i_2_n_0 ;
  wire \result_reg[61]_LDC_n_0 ;
  wire \result_reg[61]_P_n_0 ;
  wire \result_reg[62]_C_n_0 ;
  wire \result_reg[62]_LDC_i_1_n_0 ;
  wire \result_reg[62]_LDC_i_2_n_0 ;
  wire \result_reg[62]_LDC_n_0 ;
  wire \result_reg[62]_P_n_0 ;
  wire \result_reg[63]_C_n_0 ;
  wire \result_reg[63]_LDC_i_1_n_0 ;
  wire \result_reg[63]_LDC_i_2_n_0 ;
  wire \result_reg[63]_LDC_n_0 ;
  wire \result_reg[63]_P_n_0 ;
  wire \result_reg[6]_C_n_0 ;
  wire \result_reg[6]_LDC_i_1_n_0 ;
  wire \result_reg[6]_LDC_i_2_n_0 ;
  wire \result_reg[6]_LDC_n_0 ;
  wire \result_reg[6]_P_n_0 ;
  wire \result_reg[7]_C_n_0 ;
  wire \result_reg[7]_LDC_i_1_n_0 ;
  wire \result_reg[7]_LDC_i_2_n_0 ;
  wire \result_reg[7]_LDC_n_0 ;
  wire \result_reg[7]_P_n_0 ;
  wire \result_reg[8]_C_n_0 ;
  wire \result_reg[8]_LDC_i_1_n_0 ;
  wire \result_reg[8]_LDC_i_2_n_0 ;
  wire \result_reg[8]_LDC_n_0 ;
  wire \result_reg[8]_P_n_0 ;
  wire \result_reg[9]_C_n_0 ;
  wire \result_reg[9]_LDC_i_1_n_0 ;
  wire \result_reg[9]_LDC_i_2_n_0 ;
  wire \result_reg[9]_LDC_n_0 ;
  wire \result_reg[9]_P_n_0 ;
  wire [3:3]\NLW_resultBuf_reg[63]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[0]_i_1 
       (.I0(\result_reg[0]_P_n_0 ),
        .I1(\result_reg[0]_LDC_n_0 ),
        .I2(\result_reg[0]_C_n_0 ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[10]_i_1 
       (.I0(\result_reg[10]_P_n_0 ),
        .I1(\result_reg[10]_LDC_n_0 ),
        .I2(\result_reg[10]_C_n_0 ),
        .O(D[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[11]_i_1 
       (.I0(\result_reg[11]_P_n_0 ),
        .I1(\result_reg[11]_LDC_n_0 ),
        .I2(\result_reg[11]_C_n_0 ),
        .O(D[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[12]_i_1 
       (.I0(\result_reg[12]_P_n_0 ),
        .I1(\result_reg[12]_LDC_n_0 ),
        .I2(\result_reg[12]_C_n_0 ),
        .O(D[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[13]_i_1 
       (.I0(\result_reg[13]_P_n_0 ),
        .I1(\result_reg[13]_LDC_n_0 ),
        .I2(\result_reg[13]_C_n_0 ),
        .O(D[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[14]_i_1 
       (.I0(\result_reg[14]_P_n_0 ),
        .I1(\result_reg[14]_LDC_n_0 ),
        .I2(\result_reg[14]_C_n_0 ),
        .O(D[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[15]_i_1 
       (.I0(\result_reg[15]_P_n_0 ),
        .I1(\result_reg[15]_LDC_n_0 ),
        .I2(\result_reg[15]_C_n_0 ),
        .O(D[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[16]_i_1 
       (.I0(\result_reg[16]_P_n_0 ),
        .I1(\result_reg[16]_LDC_n_0 ),
        .I2(\result_reg[16]_C_n_0 ),
        .O(D[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[17]_i_1 
       (.I0(\result_reg[17]_P_n_0 ),
        .I1(\result_reg[17]_LDC_n_0 ),
        .I2(\result_reg[17]_C_n_0 ),
        .O(D[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[18]_i_1 
       (.I0(\result_reg[18]_P_n_0 ),
        .I1(\result_reg[18]_LDC_n_0 ),
        .I2(\result_reg[18]_C_n_0 ),
        .O(D[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[19]_i_1 
       (.I0(\result_reg[19]_P_n_0 ),
        .I1(\result_reg[19]_LDC_n_0 ),
        .I2(\result_reg[19]_C_n_0 ),
        .O(D[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[1]_i_1 
       (.I0(\result_reg[1]_P_n_0 ),
        .I1(\result_reg[1]_LDC_n_0 ),
        .I2(\result_reg[1]_C_n_0 ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[20]_i_1 
       (.I0(\result_reg[20]_P_n_0 ),
        .I1(\result_reg[20]_LDC_n_0 ),
        .I2(\result_reg[20]_C_n_0 ),
        .O(D[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[21]_i_1 
       (.I0(\result_reg[21]_P_n_0 ),
        .I1(\result_reg[21]_LDC_n_0 ),
        .I2(\result_reg[21]_C_n_0 ),
        .O(D[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[22]_i_1 
       (.I0(\result_reg[22]_P_n_0 ),
        .I1(\result_reg[22]_LDC_n_0 ),
        .I2(\result_reg[22]_C_n_0 ),
        .O(D[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[23]_i_1 
       (.I0(\result_reg[23]_P_n_0 ),
        .I1(\result_reg[23]_LDC_n_0 ),
        .I2(\result_reg[23]_C_n_0 ),
        .O(D[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[24]_i_1 
       (.I0(\result_reg[24]_P_n_0 ),
        .I1(\result_reg[24]_LDC_n_0 ),
        .I2(\result_reg[24]_C_n_0 ),
        .O(D[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[25]_i_1 
       (.I0(\result_reg[25]_P_n_0 ),
        .I1(\result_reg[25]_LDC_n_0 ),
        .I2(\result_reg[25]_C_n_0 ),
        .O(D[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[26]_i_1 
       (.I0(\result_reg[26]_P_n_0 ),
        .I1(\result_reg[26]_LDC_n_0 ),
        .I2(\result_reg[26]_C_n_0 ),
        .O(D[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[27]_i_1 
       (.I0(\result_reg[27]_P_n_0 ),
        .I1(\result_reg[27]_LDC_n_0 ),
        .I2(\result_reg[27]_C_n_0 ),
        .O(D[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[28]_i_1 
       (.I0(\result_reg[28]_P_n_0 ),
        .I1(\result_reg[28]_LDC_n_0 ),
        .I2(\result_reg[28]_C_n_0 ),
        .O(D[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[29]_i_1 
       (.I0(\result_reg[29]_P_n_0 ),
        .I1(\result_reg[29]_LDC_n_0 ),
        .I2(\result_reg[29]_C_n_0 ),
        .O(D[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[2]_i_1 
       (.I0(\result_reg[2]_P_n_0 ),
        .I1(\result_reg[2]_LDC_n_0 ),
        .I2(\result_reg[2]_C_n_0 ),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[30]_i_1 
       (.I0(\result_reg[30]_P_n_0 ),
        .I1(\result_reg[30]_LDC_n_0 ),
        .I2(\result_reg[30]_C_n_0 ),
        .O(D[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[31]_i_1 
       (.I0(\result_reg[31]_P_n_0 ),
        .I1(\result_reg[31]_LDC_n_0 ),
        .I2(\result_reg[31]_C_n_0 ),
        .O(D[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[32]_i_1 
       (.I0(\result_reg[32]_P_n_0 ),
        .I1(\result_reg[32]_LDC_n_0 ),
        .I2(\result_reg[32]_C_n_0 ),
        .O(D[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[33]_i_1 
       (.I0(\result_reg[33]_P_n_0 ),
        .I1(\result_reg[33]_LDC_n_0 ),
        .I2(\result_reg[33]_C_n_0 ),
        .O(D[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[34]_i_1 
       (.I0(\result_reg[34]_P_n_0 ),
        .I1(\result_reg[34]_LDC_n_0 ),
        .I2(\result_reg[34]_C_n_0 ),
        .O(D[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[35]_i_1 
       (.I0(\result_reg[35]_P_n_0 ),
        .I1(\result_reg[35]_LDC_n_0 ),
        .I2(\result_reg[35]_C_n_0 ),
        .O(D[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[36]_i_1 
       (.I0(\result_reg[36]_P_n_0 ),
        .I1(\result_reg[36]_LDC_n_0 ),
        .I2(\result_reg[36]_C_n_0 ),
        .O(D[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[37]_i_1 
       (.I0(\result_reg[37]_P_n_0 ),
        .I1(\result_reg[37]_LDC_n_0 ),
        .I2(\result_reg[37]_C_n_0 ),
        .O(D[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[38]_i_1 
       (.I0(\result_reg[38]_P_n_0 ),
        .I1(\result_reg[38]_LDC_n_0 ),
        .I2(\result_reg[38]_C_n_0 ),
        .O(D[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[39]_i_1 
       (.I0(\result_reg[39]_P_n_0 ),
        .I1(\result_reg[39]_LDC_n_0 ),
        .I2(\result_reg[39]_C_n_0 ),
        .O(D[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[3]_i_1 
       (.I0(\result_reg[3]_P_n_0 ),
        .I1(\result_reg[3]_LDC_n_0 ),
        .I2(\result_reg[3]_C_n_0 ),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[40]_i_1 
       (.I0(\result_reg[40]_P_n_0 ),
        .I1(\result_reg[40]_LDC_n_0 ),
        .I2(\result_reg[40]_C_n_0 ),
        .O(D[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[41]_i_1 
       (.I0(\result_reg[41]_P_n_0 ),
        .I1(\result_reg[41]_LDC_n_0 ),
        .I2(\result_reg[41]_C_n_0 ),
        .O(D[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[42]_i_1 
       (.I0(\result_reg[42]_P_n_0 ),
        .I1(\result_reg[42]_LDC_n_0 ),
        .I2(\result_reg[42]_C_n_0 ),
        .O(D[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[43]_i_1 
       (.I0(\result_reg[43]_P_n_0 ),
        .I1(\result_reg[43]_LDC_n_0 ),
        .I2(\result_reg[43]_C_n_0 ),
        .O(D[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[44]_i_1 
       (.I0(\result_reg[44]_P_n_0 ),
        .I1(\result_reg[44]_LDC_n_0 ),
        .I2(\result_reg[44]_C_n_0 ),
        .O(D[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[45]_i_1 
       (.I0(\result_reg[45]_P_n_0 ),
        .I1(\result_reg[45]_LDC_n_0 ),
        .I2(\result_reg[45]_C_n_0 ),
        .O(D[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[46]_i_1 
       (.I0(\result_reg[46]_P_n_0 ),
        .I1(\result_reg[46]_LDC_n_0 ),
        .I2(\result_reg[46]_C_n_0 ),
        .O(D[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[47]_i_1 
       (.I0(\result_reg[47]_P_n_0 ),
        .I1(\result_reg[47]_LDC_n_0 ),
        .I2(\result_reg[47]_C_n_0 ),
        .O(D[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[48]_i_1 
       (.I0(\result_reg[48]_P_n_0 ),
        .I1(\result_reg[48]_LDC_n_0 ),
        .I2(\result_reg[48]_C_n_0 ),
        .O(D[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[49]_i_1 
       (.I0(\result_reg[49]_P_n_0 ),
        .I1(\result_reg[49]_LDC_n_0 ),
        .I2(\result_reg[49]_C_n_0 ),
        .O(D[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[4]_i_1 
       (.I0(\result_reg[4]_P_n_0 ),
        .I1(\result_reg[4]_LDC_n_0 ),
        .I2(\result_reg[4]_C_n_0 ),
        .O(D[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[50]_i_1 
       (.I0(\result_reg[50]_P_n_0 ),
        .I1(\result_reg[50]_LDC_n_0 ),
        .I2(\result_reg[50]_C_n_0 ),
        .O(D[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[51]_i_1 
       (.I0(\result_reg[51]_P_n_0 ),
        .I1(\result_reg[51]_LDC_n_0 ),
        .I2(\result_reg[51]_C_n_0 ),
        .O(D[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[52]_i_1 
       (.I0(\result_reg[52]_P_n_0 ),
        .I1(\result_reg[52]_LDC_n_0 ),
        .I2(\result_reg[52]_C_n_0 ),
        .O(D[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[53]_i_1 
       (.I0(\result_reg[53]_P_n_0 ),
        .I1(\result_reg[53]_LDC_n_0 ),
        .I2(\result_reg[53]_C_n_0 ),
        .O(D[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[54]_i_1 
       (.I0(\result_reg[54]_P_n_0 ),
        .I1(\result_reg[54]_LDC_n_0 ),
        .I2(\result_reg[54]_C_n_0 ),
        .O(D[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[55]_i_1 
       (.I0(\result_reg[55]_P_n_0 ),
        .I1(\result_reg[55]_LDC_n_0 ),
        .I2(\result_reg[55]_C_n_0 ),
        .O(D[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[56]_i_1 
       (.I0(\result_reg[56]_P_n_0 ),
        .I1(\result_reg[56]_LDC_n_0 ),
        .I2(\result_reg[56]_C_n_0 ),
        .O(D[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[57]_i_1 
       (.I0(\result_reg[57]_P_n_0 ),
        .I1(\result_reg[57]_LDC_n_0 ),
        .I2(\result_reg[57]_C_n_0 ),
        .O(D[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[58]_i_1 
       (.I0(\result_reg[58]_P_n_0 ),
        .I1(\result_reg[58]_LDC_n_0 ),
        .I2(\result_reg[58]_C_n_0 ),
        .O(D[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[59]_i_1 
       (.I0(\result_reg[59]_P_n_0 ),
        .I1(\result_reg[59]_LDC_n_0 ),
        .I2(\result_reg[59]_C_n_0 ),
        .O(D[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[5]_i_1 
       (.I0(\result_reg[5]_P_n_0 ),
        .I1(\result_reg[5]_LDC_n_0 ),
        .I2(\result_reg[5]_C_n_0 ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[60]_i_1 
       (.I0(\result_reg[60]_P_n_0 ),
        .I1(\result_reg[60]_LDC_n_0 ),
        .I2(\result_reg[60]_C_n_0 ),
        .O(D[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[61]_i_1 
       (.I0(\result_reg[61]_P_n_0 ),
        .I1(\result_reg[61]_LDC_n_0 ),
        .I2(\result_reg[61]_C_n_0 ),
        .O(D[61]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[62]_i_1 
       (.I0(\result_reg[62]_P_n_0 ),
        .I1(\result_reg[62]_LDC_n_0 ),
        .I2(\result_reg[62]_C_n_0 ),
        .O(D[62]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[63]_i_1 
       (.I0(\result_reg[63]_P_n_0 ),
        .I1(\result_reg[63]_LDC_n_0 ),
        .I2(\result_reg[63]_C_n_0 ),
        .O(D[63]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[6]_i_1 
       (.I0(\result_reg[6]_P_n_0 ),
        .I1(\result_reg[6]_LDC_n_0 ),
        .I2(\result_reg[6]_C_n_0 ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[7]_i_1 
       (.I0(\result_reg[7]_P_n_0 ),
        .I1(\result_reg[7]_LDC_n_0 ),
        .I2(\result_reg[7]_C_n_0 ),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[8]_i_1 
       (.I0(\result_reg[8]_P_n_0 ),
        .I1(\result_reg[8]_LDC_n_0 ),
        .I2(\result_reg[8]_C_n_0 ),
        .O(D[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_dout[9]_i_1 
       (.I0(\result_reg[9]_P_n_0 ),
        .I1(\result_reg[9]_LDC_n_0 ),
        .I2(\result_reg[9]_C_n_0 ),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \resultBuf[3]_i_2 
       (.I0(Q[0]),
        .I1(bram_en),
        .O(\resultBuf[3]_i_2_n_0 ));
  FDCE \resultBuf_reg[0] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[0]),
        .Q(resultBuf[0]));
  FDCE \resultBuf_reg[10] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[10]),
        .Q(resultBuf[10]));
  FDCE \resultBuf_reg[11] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[11]),
        .Q(resultBuf[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[11]_i_1 
       (.CI(\resultBuf_reg[7]_i_1_n_0 ),
        .CO({\resultBuf_reg[11]_i_1_n_0 ,\resultBuf_reg[11]_i_1_n_1 ,\resultBuf_reg[11]_i_1_n_2 ,\resultBuf_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(plusOp[11:8]),
        .S(Q[11:8]));
  FDCE \resultBuf_reg[12] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[12]),
        .Q(resultBuf[12]));
  FDCE \resultBuf_reg[13] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[13]),
        .Q(resultBuf[13]));
  FDCE \resultBuf_reg[14] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[14]),
        .Q(resultBuf[14]));
  FDCE \resultBuf_reg[15] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[15]),
        .Q(resultBuf[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[15]_i_1 
       (.CI(\resultBuf_reg[11]_i_1_n_0 ),
        .CO({\resultBuf_reg[15]_i_1_n_0 ,\resultBuf_reg[15]_i_1_n_1 ,\resultBuf_reg[15]_i_1_n_2 ,\resultBuf_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(plusOp[15:12]),
        .S(Q[15:12]));
  FDCE \resultBuf_reg[16] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[16]),
        .Q(resultBuf[16]));
  FDCE \resultBuf_reg[17] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[17]),
        .Q(resultBuf[17]));
  FDCE \resultBuf_reg[18] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[18]),
        .Q(resultBuf[18]));
  FDCE \resultBuf_reg[19] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[19]),
        .Q(resultBuf[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[19]_i_1 
       (.CI(\resultBuf_reg[15]_i_1_n_0 ),
        .CO({\resultBuf_reg[19]_i_1_n_0 ,\resultBuf_reg[19]_i_1_n_1 ,\resultBuf_reg[19]_i_1_n_2 ,\resultBuf_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(plusOp[19:16]),
        .S(Q[19:16]));
  FDCE \resultBuf_reg[1] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[1]),
        .Q(resultBuf[1]));
  FDCE \resultBuf_reg[20] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[20]),
        .Q(resultBuf[20]));
  FDCE \resultBuf_reg[21] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[21]),
        .Q(resultBuf[21]));
  FDCE \resultBuf_reg[22] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[22]),
        .Q(resultBuf[22]));
  FDCE \resultBuf_reg[23] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[23]),
        .Q(resultBuf[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[23]_i_1 
       (.CI(\resultBuf_reg[19]_i_1_n_0 ),
        .CO({\resultBuf_reg[23]_i_1_n_0 ,\resultBuf_reg[23]_i_1_n_1 ,\resultBuf_reg[23]_i_1_n_2 ,\resultBuf_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(plusOp[23:20]),
        .S(Q[23:20]));
  FDCE \resultBuf_reg[24] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[24]),
        .Q(resultBuf[24]));
  FDCE \resultBuf_reg[25] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[25]),
        .Q(resultBuf[25]));
  FDCE \resultBuf_reg[26] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[26]),
        .Q(resultBuf[26]));
  FDCE \resultBuf_reg[27] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[27]),
        .Q(resultBuf[27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[27]_i_1 
       (.CI(\resultBuf_reg[23]_i_1_n_0 ),
        .CO({\resultBuf_reg[27]_i_1_n_0 ,\resultBuf_reg[27]_i_1_n_1 ,\resultBuf_reg[27]_i_1_n_2 ,\resultBuf_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(plusOp[27:24]),
        .S(Q[27:24]));
  FDCE \resultBuf_reg[28] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[28]),
        .Q(resultBuf[28]));
  FDCE \resultBuf_reg[29] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[29]),
        .Q(resultBuf[29]));
  FDCE \resultBuf_reg[2] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[2]),
        .Q(resultBuf[2]));
  FDCE \resultBuf_reg[30] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[30]),
        .Q(resultBuf[30]));
  FDCE \resultBuf_reg[31] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[31]),
        .Q(resultBuf[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[31]_i_1 
       (.CI(\resultBuf_reg[27]_i_1_n_0 ),
        .CO({\resultBuf_reg[31]_i_1_n_0 ,\resultBuf_reg[31]_i_1_n_1 ,\resultBuf_reg[31]_i_1_n_2 ,\resultBuf_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[31:28]),
        .O(plusOp[31:28]),
        .S(Q[31:28]));
  FDCE \resultBuf_reg[32] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[32]),
        .Q(resultBuf[32]));
  FDCE \resultBuf_reg[33] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[33]),
        .Q(resultBuf[33]));
  FDCE \resultBuf_reg[34] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[34]),
        .Q(resultBuf[34]));
  FDCE \resultBuf_reg[35] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[35]),
        .Q(resultBuf[35]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[35]_i_1 
       (.CI(\resultBuf_reg[31]_i_1_n_0 ),
        .CO({\resultBuf_reg[35]_i_1_n_0 ,\resultBuf_reg[35]_i_1_n_1 ,\resultBuf_reg[35]_i_1_n_2 ,\resultBuf_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[35:32]),
        .O(plusOp[35:32]),
        .S(Q[35:32]));
  FDCE \resultBuf_reg[36] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[36]),
        .Q(resultBuf[36]));
  FDCE \resultBuf_reg[37] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[37]),
        .Q(resultBuf[37]));
  FDCE \resultBuf_reg[38] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[38]),
        .Q(resultBuf[38]));
  FDCE \resultBuf_reg[39] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[39]),
        .Q(resultBuf[39]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[39]_i_1 
       (.CI(\resultBuf_reg[35]_i_1_n_0 ),
        .CO({\resultBuf_reg[39]_i_1_n_0 ,\resultBuf_reg[39]_i_1_n_1 ,\resultBuf_reg[39]_i_1_n_2 ,\resultBuf_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[39:36]),
        .O(plusOp[39:36]),
        .S(Q[39:36]));
  FDCE \resultBuf_reg[3] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[3]),
        .Q(resultBuf[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\resultBuf_reg[3]_i_1_n_0 ,\resultBuf_reg[3]_i_1_n_1 ,\resultBuf_reg[3]_i_1_n_2 ,\resultBuf_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(plusOp[3:0]),
        .S({Q[3:1],\resultBuf[3]_i_2_n_0 }));
  FDCE \resultBuf_reg[40] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[40]),
        .Q(resultBuf[40]));
  FDCE \resultBuf_reg[41] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[41]),
        .Q(resultBuf[41]));
  FDCE \resultBuf_reg[42] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[42]),
        .Q(resultBuf[42]));
  FDCE \resultBuf_reg[43] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[43]),
        .Q(resultBuf[43]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[43]_i_1 
       (.CI(\resultBuf_reg[39]_i_1_n_0 ),
        .CO({\resultBuf_reg[43]_i_1_n_0 ,\resultBuf_reg[43]_i_1_n_1 ,\resultBuf_reg[43]_i_1_n_2 ,\resultBuf_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[43:40]),
        .O(plusOp[43:40]),
        .S(Q[43:40]));
  FDCE \resultBuf_reg[44] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[44]),
        .Q(resultBuf[44]));
  FDCE \resultBuf_reg[45] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[45]),
        .Q(resultBuf[45]));
  FDCE \resultBuf_reg[46] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[46]),
        .Q(resultBuf[46]));
  FDCE \resultBuf_reg[47] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[47]),
        .Q(resultBuf[47]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[47]_i_1 
       (.CI(\resultBuf_reg[43]_i_1_n_0 ),
        .CO({\resultBuf_reg[47]_i_1_n_0 ,\resultBuf_reg[47]_i_1_n_1 ,\resultBuf_reg[47]_i_1_n_2 ,\resultBuf_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[47:44]),
        .O(plusOp[47:44]),
        .S(Q[47:44]));
  FDCE \resultBuf_reg[48] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[48]),
        .Q(resultBuf[48]));
  FDCE \resultBuf_reg[49] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[49]),
        .Q(resultBuf[49]));
  FDCE \resultBuf_reg[4] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[4]),
        .Q(resultBuf[4]));
  FDCE \resultBuf_reg[50] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[50]),
        .Q(resultBuf[50]));
  FDCE \resultBuf_reg[51] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[51]),
        .Q(resultBuf[51]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[51]_i_1 
       (.CI(\resultBuf_reg[47]_i_1_n_0 ),
        .CO({\resultBuf_reg[51]_i_1_n_0 ,\resultBuf_reg[51]_i_1_n_1 ,\resultBuf_reg[51]_i_1_n_2 ,\resultBuf_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[51:48]),
        .O(plusOp[51:48]),
        .S(Q[51:48]));
  FDCE \resultBuf_reg[52] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[52]),
        .Q(resultBuf[52]));
  FDCE \resultBuf_reg[53] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[53]),
        .Q(resultBuf[53]));
  FDCE \resultBuf_reg[54] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[54]),
        .Q(resultBuf[54]));
  FDCE \resultBuf_reg[55] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[55]),
        .Q(resultBuf[55]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[55]_i_1 
       (.CI(\resultBuf_reg[51]_i_1_n_0 ),
        .CO({\resultBuf_reg[55]_i_1_n_0 ,\resultBuf_reg[55]_i_1_n_1 ,\resultBuf_reg[55]_i_1_n_2 ,\resultBuf_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[55:52]),
        .O(plusOp[55:52]),
        .S(Q[55:52]));
  FDCE \resultBuf_reg[56] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[56]),
        .Q(resultBuf[56]));
  FDCE \resultBuf_reg[57] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[57]),
        .Q(resultBuf[57]));
  FDCE \resultBuf_reg[58] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[58]),
        .Q(resultBuf[58]));
  FDCE \resultBuf_reg[59] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[59]),
        .Q(resultBuf[59]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[59]_i_1 
       (.CI(\resultBuf_reg[55]_i_1_n_0 ),
        .CO({\resultBuf_reg[59]_i_1_n_0 ,\resultBuf_reg[59]_i_1_n_1 ,\resultBuf_reg[59]_i_1_n_2 ,\resultBuf_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[59:56]),
        .O(plusOp[59:56]),
        .S(Q[59:56]));
  FDCE \resultBuf_reg[5] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[5]),
        .Q(resultBuf[5]));
  FDCE \resultBuf_reg[60] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[60]),
        .Q(resultBuf[60]));
  FDCE \resultBuf_reg[61] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[61]),
        .Q(resultBuf[61]));
  FDCE \resultBuf_reg[62] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[62]),
        .Q(resultBuf[62]));
  FDCE \resultBuf_reg[63] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[63]),
        .Q(resultBuf[63]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[63]_i_1 
       (.CI(\resultBuf_reg[59]_i_1_n_0 ),
        .CO({\NLW_resultBuf_reg[63]_i_1_CO_UNCONNECTED [3],\resultBuf_reg[63]_i_1_n_1 ,\resultBuf_reg[63]_i_1_n_2 ,\resultBuf_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[62:60]}),
        .O(plusOp[63:60]),
        .S(Q[63:60]));
  FDCE \resultBuf_reg[6] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[6]),
        .Q(resultBuf[6]));
  FDCE \resultBuf_reg[7] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[7]),
        .Q(resultBuf[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[7]_i_1 
       (.CI(\resultBuf_reg[3]_i_1_n_0 ),
        .CO({\resultBuf_reg[7]_i_1_n_0 ,\resultBuf_reg[7]_i_1_n_1 ,\resultBuf_reg[7]_i_1_n_2 ,\resultBuf_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(plusOp[7:4]),
        .S(Q[7:4]));
  FDCE \resultBuf_reg[8] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[8]),
        .Q(resultBuf[8]));
  FDCE \resultBuf_reg[9] 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[9]),
        .Q(resultBuf[9]));
  FDCE \result_reg[0]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[0]_LDC_i_2_n_0 ),
        .D(resultBuf[0]),
        .Q(\result_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[0]_LDC 
       (.CLR(\result_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[0]_LDC_i_1 
       (.I0(resultBuf[0]),
        .I1(reset),
        .O(\result_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[0]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[0]),
        .O(\result_reg[0]_LDC_i_2_n_0 ));
  FDPE \result_reg[0]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[0]),
        .PRE(\result_reg[0]_LDC_i_1_n_0 ),
        .Q(\result_reg[0]_P_n_0 ));
  FDCE \result_reg[10]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[10]_LDC_i_2_n_0 ),
        .D(resultBuf[10]),
        .Q(\result_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[10]_LDC 
       (.CLR(\result_reg[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[10]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[10]_LDC_i_1 
       (.I0(resultBuf[10]),
        .I1(reset),
        .O(\result_reg[10]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[10]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[10]),
        .O(\result_reg[10]_LDC_i_2_n_0 ));
  FDPE \result_reg[10]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[10]),
        .PRE(\result_reg[10]_LDC_i_1_n_0 ),
        .Q(\result_reg[10]_P_n_0 ));
  FDCE \result_reg[11]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[11]_LDC_i_2_n_0 ),
        .D(resultBuf[11]),
        .Q(\result_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[11]_LDC 
       (.CLR(\result_reg[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[11]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[11]_LDC_i_1 
       (.I0(resultBuf[11]),
        .I1(reset),
        .O(\result_reg[11]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[11]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[11]),
        .O(\result_reg[11]_LDC_i_2_n_0 ));
  FDPE \result_reg[11]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[11]),
        .PRE(\result_reg[11]_LDC_i_1_n_0 ),
        .Q(\result_reg[11]_P_n_0 ));
  FDCE \result_reg[12]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[12]_LDC_i_2_n_0 ),
        .D(resultBuf[12]),
        .Q(\result_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[12]_LDC 
       (.CLR(\result_reg[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[12]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[12]_LDC_i_1 
       (.I0(resultBuf[12]),
        .I1(reset),
        .O(\result_reg[12]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[12]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[12]),
        .O(\result_reg[12]_LDC_i_2_n_0 ));
  FDPE \result_reg[12]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[12]),
        .PRE(\result_reg[12]_LDC_i_1_n_0 ),
        .Q(\result_reg[12]_P_n_0 ));
  FDCE \result_reg[13]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[13]_LDC_i_2_n_0 ),
        .D(resultBuf[13]),
        .Q(\result_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[13]_LDC 
       (.CLR(\result_reg[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[13]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[13]_LDC_i_1 
       (.I0(resultBuf[13]),
        .I1(reset),
        .O(\result_reg[13]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[13]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[13]),
        .O(\result_reg[13]_LDC_i_2_n_0 ));
  FDPE \result_reg[13]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[13]),
        .PRE(\result_reg[13]_LDC_i_1_n_0 ),
        .Q(\result_reg[13]_P_n_0 ));
  FDCE \result_reg[14]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[14]_LDC_i_2_n_0 ),
        .D(resultBuf[14]),
        .Q(\result_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[14]_LDC 
       (.CLR(\result_reg[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[14]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[14]_LDC_i_1 
       (.I0(resultBuf[14]),
        .I1(reset),
        .O(\result_reg[14]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[14]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[14]),
        .O(\result_reg[14]_LDC_i_2_n_0 ));
  FDPE \result_reg[14]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[14]),
        .PRE(\result_reg[14]_LDC_i_1_n_0 ),
        .Q(\result_reg[14]_P_n_0 ));
  FDCE \result_reg[15]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[15]_LDC_i_2_n_0 ),
        .D(resultBuf[15]),
        .Q(\result_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[15]_LDC 
       (.CLR(\result_reg[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[15]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[15]_LDC_i_1 
       (.I0(resultBuf[15]),
        .I1(reset),
        .O(\result_reg[15]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[15]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[15]),
        .O(\result_reg[15]_LDC_i_2_n_0 ));
  FDPE \result_reg[15]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[15]),
        .PRE(\result_reg[15]_LDC_i_1_n_0 ),
        .Q(\result_reg[15]_P_n_0 ));
  FDCE \result_reg[16]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[16]_LDC_i_2_n_0 ),
        .D(resultBuf[16]),
        .Q(\result_reg[16]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[16]_LDC 
       (.CLR(\result_reg[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[16]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[16]_LDC_i_1 
       (.I0(resultBuf[16]),
        .I1(reset),
        .O(\result_reg[16]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[16]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[16]),
        .O(\result_reg[16]_LDC_i_2_n_0 ));
  FDPE \result_reg[16]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[16]),
        .PRE(\result_reg[16]_LDC_i_1_n_0 ),
        .Q(\result_reg[16]_P_n_0 ));
  FDCE \result_reg[17]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[17]_LDC_i_2_n_0 ),
        .D(resultBuf[17]),
        .Q(\result_reg[17]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[17]_LDC 
       (.CLR(\result_reg[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[17]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[17]_LDC_i_1 
       (.I0(resultBuf[17]),
        .I1(reset),
        .O(\result_reg[17]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[17]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[17]),
        .O(\result_reg[17]_LDC_i_2_n_0 ));
  FDPE \result_reg[17]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[17]),
        .PRE(\result_reg[17]_LDC_i_1_n_0 ),
        .Q(\result_reg[17]_P_n_0 ));
  FDCE \result_reg[18]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[18]_LDC_i_2_n_0 ),
        .D(resultBuf[18]),
        .Q(\result_reg[18]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[18]_LDC 
       (.CLR(\result_reg[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[18]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[18]_LDC_i_1 
       (.I0(resultBuf[18]),
        .I1(reset),
        .O(\result_reg[18]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[18]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[18]),
        .O(\result_reg[18]_LDC_i_2_n_0 ));
  FDPE \result_reg[18]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[18]),
        .PRE(\result_reg[18]_LDC_i_1_n_0 ),
        .Q(\result_reg[18]_P_n_0 ));
  FDCE \result_reg[19]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[19]_LDC_i_2_n_0 ),
        .D(resultBuf[19]),
        .Q(\result_reg[19]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[19]_LDC 
       (.CLR(\result_reg[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[19]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[19]_LDC_i_1 
       (.I0(resultBuf[19]),
        .I1(reset),
        .O(\result_reg[19]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[19]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[19]),
        .O(\result_reg[19]_LDC_i_2_n_0 ));
  FDPE \result_reg[19]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[19]),
        .PRE(\result_reg[19]_LDC_i_1_n_0 ),
        .Q(\result_reg[19]_P_n_0 ));
  FDCE \result_reg[1]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[1]_LDC_i_2_n_0 ),
        .D(resultBuf[1]),
        .Q(\result_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[1]_LDC 
       (.CLR(\result_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[1]_LDC_i_1 
       (.I0(resultBuf[1]),
        .I1(reset),
        .O(\result_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[1]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[1]),
        .O(\result_reg[1]_LDC_i_2_n_0 ));
  FDPE \result_reg[1]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[1]),
        .PRE(\result_reg[1]_LDC_i_1_n_0 ),
        .Q(\result_reg[1]_P_n_0 ));
  FDCE \result_reg[20]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[20]_LDC_i_2_n_0 ),
        .D(resultBuf[20]),
        .Q(\result_reg[20]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[20]_LDC 
       (.CLR(\result_reg[20]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[20]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[20]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[20]_LDC_i_1 
       (.I0(resultBuf[20]),
        .I1(reset),
        .O(\result_reg[20]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[20]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[20]),
        .O(\result_reg[20]_LDC_i_2_n_0 ));
  FDPE \result_reg[20]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[20]),
        .PRE(\result_reg[20]_LDC_i_1_n_0 ),
        .Q(\result_reg[20]_P_n_0 ));
  FDCE \result_reg[21]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[21]_LDC_i_2_n_0 ),
        .D(resultBuf[21]),
        .Q(\result_reg[21]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[21]_LDC 
       (.CLR(\result_reg[21]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[21]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[21]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[21]_LDC_i_1 
       (.I0(resultBuf[21]),
        .I1(reset),
        .O(\result_reg[21]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[21]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[21]),
        .O(\result_reg[21]_LDC_i_2_n_0 ));
  FDPE \result_reg[21]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[21]),
        .PRE(\result_reg[21]_LDC_i_1_n_0 ),
        .Q(\result_reg[21]_P_n_0 ));
  FDCE \result_reg[22]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[22]_LDC_i_2_n_0 ),
        .D(resultBuf[22]),
        .Q(\result_reg[22]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[22]_LDC 
       (.CLR(\result_reg[22]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[22]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[22]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[22]_LDC_i_1 
       (.I0(resultBuf[22]),
        .I1(reset),
        .O(\result_reg[22]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[22]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[22]),
        .O(\result_reg[22]_LDC_i_2_n_0 ));
  FDPE \result_reg[22]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[22]),
        .PRE(\result_reg[22]_LDC_i_1_n_0 ),
        .Q(\result_reg[22]_P_n_0 ));
  FDCE \result_reg[23]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[23]_LDC_i_2_n_0 ),
        .D(resultBuf[23]),
        .Q(\result_reg[23]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[23]_LDC 
       (.CLR(\result_reg[23]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[23]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[23]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[23]_LDC_i_1 
       (.I0(resultBuf[23]),
        .I1(reset),
        .O(\result_reg[23]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[23]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[23]),
        .O(\result_reg[23]_LDC_i_2_n_0 ));
  FDPE \result_reg[23]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[23]),
        .PRE(\result_reg[23]_LDC_i_1_n_0 ),
        .Q(\result_reg[23]_P_n_0 ));
  FDCE \result_reg[24]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[24]_LDC_i_2_n_0 ),
        .D(resultBuf[24]),
        .Q(\result_reg[24]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[24]_LDC 
       (.CLR(\result_reg[24]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[24]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[24]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[24]_LDC_i_1 
       (.I0(resultBuf[24]),
        .I1(reset),
        .O(\result_reg[24]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[24]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[24]),
        .O(\result_reg[24]_LDC_i_2_n_0 ));
  FDPE \result_reg[24]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[24]),
        .PRE(\result_reg[24]_LDC_i_1_n_0 ),
        .Q(\result_reg[24]_P_n_0 ));
  FDCE \result_reg[25]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[25]_LDC_i_2_n_0 ),
        .D(resultBuf[25]),
        .Q(\result_reg[25]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[25]_LDC 
       (.CLR(\result_reg[25]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[25]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[25]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[25]_LDC_i_1 
       (.I0(resultBuf[25]),
        .I1(reset),
        .O(\result_reg[25]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[25]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[25]),
        .O(\result_reg[25]_LDC_i_2_n_0 ));
  FDPE \result_reg[25]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[25]),
        .PRE(\result_reg[25]_LDC_i_1_n_0 ),
        .Q(\result_reg[25]_P_n_0 ));
  FDCE \result_reg[26]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[26]_LDC_i_2_n_0 ),
        .D(resultBuf[26]),
        .Q(\result_reg[26]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[26]_LDC 
       (.CLR(\result_reg[26]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[26]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[26]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[26]_LDC_i_1 
       (.I0(resultBuf[26]),
        .I1(reset),
        .O(\result_reg[26]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[26]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[26]),
        .O(\result_reg[26]_LDC_i_2_n_0 ));
  FDPE \result_reg[26]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[26]),
        .PRE(\result_reg[26]_LDC_i_1_n_0 ),
        .Q(\result_reg[26]_P_n_0 ));
  FDCE \result_reg[27]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[27]_LDC_i_2_n_0 ),
        .D(resultBuf[27]),
        .Q(\result_reg[27]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[27]_LDC 
       (.CLR(\result_reg[27]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[27]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[27]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[27]_LDC_i_1 
       (.I0(resultBuf[27]),
        .I1(reset),
        .O(\result_reg[27]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[27]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[27]),
        .O(\result_reg[27]_LDC_i_2_n_0 ));
  FDPE \result_reg[27]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[27]),
        .PRE(\result_reg[27]_LDC_i_1_n_0 ),
        .Q(\result_reg[27]_P_n_0 ));
  FDCE \result_reg[28]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[28]_LDC_i_2_n_0 ),
        .D(resultBuf[28]),
        .Q(\result_reg[28]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[28]_LDC 
       (.CLR(\result_reg[28]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[28]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[28]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[28]_LDC_i_1 
       (.I0(resultBuf[28]),
        .I1(reset),
        .O(\result_reg[28]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[28]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[28]),
        .O(\result_reg[28]_LDC_i_2_n_0 ));
  FDPE \result_reg[28]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[28]),
        .PRE(\result_reg[28]_LDC_i_1_n_0 ),
        .Q(\result_reg[28]_P_n_0 ));
  FDCE \result_reg[29]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[29]_LDC_i_2_n_0 ),
        .D(resultBuf[29]),
        .Q(\result_reg[29]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[29]_LDC 
       (.CLR(\result_reg[29]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[29]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[29]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[29]_LDC_i_1 
       (.I0(resultBuf[29]),
        .I1(reset),
        .O(\result_reg[29]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[29]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[29]),
        .O(\result_reg[29]_LDC_i_2_n_0 ));
  FDPE \result_reg[29]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[29]),
        .PRE(\result_reg[29]_LDC_i_1_n_0 ),
        .Q(\result_reg[29]_P_n_0 ));
  FDCE \result_reg[2]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[2]_LDC_i_2_n_0 ),
        .D(resultBuf[2]),
        .Q(\result_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[2]_LDC 
       (.CLR(\result_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[2]_LDC_i_1 
       (.I0(resultBuf[2]),
        .I1(reset),
        .O(\result_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[2]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[2]),
        .O(\result_reg[2]_LDC_i_2_n_0 ));
  FDPE \result_reg[2]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[2]),
        .PRE(\result_reg[2]_LDC_i_1_n_0 ),
        .Q(\result_reg[2]_P_n_0 ));
  FDCE \result_reg[30]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[30]_LDC_i_2_n_0 ),
        .D(resultBuf[30]),
        .Q(\result_reg[30]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[30]_LDC 
       (.CLR(\result_reg[30]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[30]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[30]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[30]_LDC_i_1 
       (.I0(resultBuf[30]),
        .I1(reset),
        .O(\result_reg[30]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[30]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[30]),
        .O(\result_reg[30]_LDC_i_2_n_0 ));
  FDPE \result_reg[30]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[30]),
        .PRE(\result_reg[30]_LDC_i_1_n_0 ),
        .Q(\result_reg[30]_P_n_0 ));
  FDCE \result_reg[31]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[31]_LDC_i_2_n_0 ),
        .D(resultBuf[31]),
        .Q(\result_reg[31]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[31]_LDC 
       (.CLR(\result_reg[31]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[31]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[31]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[31]_LDC_i_1 
       (.I0(resultBuf[31]),
        .I1(reset),
        .O(\result_reg[31]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[31]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[31]),
        .O(\result_reg[31]_LDC_i_2_n_0 ));
  FDPE \result_reg[31]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[31]),
        .PRE(\result_reg[31]_LDC_i_1_n_0 ),
        .Q(\result_reg[31]_P_n_0 ));
  FDCE \result_reg[32]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[32]_LDC_i_2_n_0 ),
        .D(resultBuf[32]),
        .Q(\result_reg[32]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[32]_LDC 
       (.CLR(\result_reg[32]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[32]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[32]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[32]_LDC_i_1 
       (.I0(resultBuf[32]),
        .I1(reset),
        .O(\result_reg[32]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[32]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[32]),
        .O(\result_reg[32]_LDC_i_2_n_0 ));
  FDPE \result_reg[32]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[32]),
        .PRE(\result_reg[32]_LDC_i_1_n_0 ),
        .Q(\result_reg[32]_P_n_0 ));
  FDCE \result_reg[33]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[33]_LDC_i_2_n_0 ),
        .D(resultBuf[33]),
        .Q(\result_reg[33]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[33]_LDC 
       (.CLR(\result_reg[33]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[33]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[33]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[33]_LDC_i_1 
       (.I0(resultBuf[33]),
        .I1(reset),
        .O(\result_reg[33]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[33]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[33]),
        .O(\result_reg[33]_LDC_i_2_n_0 ));
  FDPE \result_reg[33]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[33]),
        .PRE(\result_reg[33]_LDC_i_1_n_0 ),
        .Q(\result_reg[33]_P_n_0 ));
  FDCE \result_reg[34]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[34]_LDC_i_2_n_0 ),
        .D(resultBuf[34]),
        .Q(\result_reg[34]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[34]_LDC 
       (.CLR(\result_reg[34]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[34]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[34]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[34]_LDC_i_1 
       (.I0(resultBuf[34]),
        .I1(reset),
        .O(\result_reg[34]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[34]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[34]),
        .O(\result_reg[34]_LDC_i_2_n_0 ));
  FDPE \result_reg[34]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[34]),
        .PRE(\result_reg[34]_LDC_i_1_n_0 ),
        .Q(\result_reg[34]_P_n_0 ));
  FDCE \result_reg[35]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[35]_LDC_i_2_n_0 ),
        .D(resultBuf[35]),
        .Q(\result_reg[35]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[35]_LDC 
       (.CLR(\result_reg[35]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[35]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[35]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[35]_LDC_i_1 
       (.I0(resultBuf[35]),
        .I1(reset),
        .O(\result_reg[35]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[35]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[35]),
        .O(\result_reg[35]_LDC_i_2_n_0 ));
  FDPE \result_reg[35]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[35]),
        .PRE(\result_reg[35]_LDC_i_1_n_0 ),
        .Q(\result_reg[35]_P_n_0 ));
  FDCE \result_reg[36]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[36]_LDC_i_2_n_0 ),
        .D(resultBuf[36]),
        .Q(\result_reg[36]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[36]_LDC 
       (.CLR(\result_reg[36]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[36]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[36]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[36]_LDC_i_1 
       (.I0(resultBuf[36]),
        .I1(reset),
        .O(\result_reg[36]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[36]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[36]),
        .O(\result_reg[36]_LDC_i_2_n_0 ));
  FDPE \result_reg[36]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[36]),
        .PRE(\result_reg[36]_LDC_i_1_n_0 ),
        .Q(\result_reg[36]_P_n_0 ));
  FDCE \result_reg[37]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[37]_LDC_i_2_n_0 ),
        .D(resultBuf[37]),
        .Q(\result_reg[37]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[37]_LDC 
       (.CLR(\result_reg[37]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[37]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[37]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[37]_LDC_i_1 
       (.I0(resultBuf[37]),
        .I1(reset),
        .O(\result_reg[37]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[37]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[37]),
        .O(\result_reg[37]_LDC_i_2_n_0 ));
  FDPE \result_reg[37]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[37]),
        .PRE(\result_reg[37]_LDC_i_1_n_0 ),
        .Q(\result_reg[37]_P_n_0 ));
  FDCE \result_reg[38]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[38]_LDC_i_2_n_0 ),
        .D(resultBuf[38]),
        .Q(\result_reg[38]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[38]_LDC 
       (.CLR(\result_reg[38]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[38]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[38]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[38]_LDC_i_1 
       (.I0(resultBuf[38]),
        .I1(reset),
        .O(\result_reg[38]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[38]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[38]),
        .O(\result_reg[38]_LDC_i_2_n_0 ));
  FDPE \result_reg[38]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[38]),
        .PRE(\result_reg[38]_LDC_i_1_n_0 ),
        .Q(\result_reg[38]_P_n_0 ));
  FDCE \result_reg[39]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[39]_LDC_i_2_n_0 ),
        .D(resultBuf[39]),
        .Q(\result_reg[39]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[39]_LDC 
       (.CLR(\result_reg[39]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[39]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[39]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[39]_LDC_i_1 
       (.I0(resultBuf[39]),
        .I1(reset),
        .O(\result_reg[39]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[39]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[39]),
        .O(\result_reg[39]_LDC_i_2_n_0 ));
  FDPE \result_reg[39]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[39]),
        .PRE(\result_reg[39]_LDC_i_1_n_0 ),
        .Q(\result_reg[39]_P_n_0 ));
  FDCE \result_reg[3]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[3]_LDC_i_2_n_0 ),
        .D(resultBuf[3]),
        .Q(\result_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[3]_LDC 
       (.CLR(\result_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[3]_LDC_i_1 
       (.I0(resultBuf[3]),
        .I1(reset),
        .O(\result_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[3]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[3]),
        .O(\result_reg[3]_LDC_i_2_n_0 ));
  FDPE \result_reg[3]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[3]),
        .PRE(\result_reg[3]_LDC_i_1_n_0 ),
        .Q(\result_reg[3]_P_n_0 ));
  FDCE \result_reg[40]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[40]_LDC_i_2_n_0 ),
        .D(resultBuf[40]),
        .Q(\result_reg[40]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[40]_LDC 
       (.CLR(\result_reg[40]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[40]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[40]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[40]_LDC_i_1 
       (.I0(resultBuf[40]),
        .I1(reset),
        .O(\result_reg[40]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[40]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[40]),
        .O(\result_reg[40]_LDC_i_2_n_0 ));
  FDPE \result_reg[40]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[40]),
        .PRE(\result_reg[40]_LDC_i_1_n_0 ),
        .Q(\result_reg[40]_P_n_0 ));
  FDCE \result_reg[41]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[41]_LDC_i_2_n_0 ),
        .D(resultBuf[41]),
        .Q(\result_reg[41]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[41]_LDC 
       (.CLR(\result_reg[41]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[41]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[41]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[41]_LDC_i_1 
       (.I0(resultBuf[41]),
        .I1(reset),
        .O(\result_reg[41]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[41]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[41]),
        .O(\result_reg[41]_LDC_i_2_n_0 ));
  FDPE \result_reg[41]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[41]),
        .PRE(\result_reg[41]_LDC_i_1_n_0 ),
        .Q(\result_reg[41]_P_n_0 ));
  FDCE \result_reg[42]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[42]_LDC_i_2_n_0 ),
        .D(resultBuf[42]),
        .Q(\result_reg[42]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[42]_LDC 
       (.CLR(\result_reg[42]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[42]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[42]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[42]_LDC_i_1 
       (.I0(resultBuf[42]),
        .I1(reset),
        .O(\result_reg[42]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[42]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[42]),
        .O(\result_reg[42]_LDC_i_2_n_0 ));
  FDPE \result_reg[42]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[42]),
        .PRE(\result_reg[42]_LDC_i_1_n_0 ),
        .Q(\result_reg[42]_P_n_0 ));
  FDCE \result_reg[43]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[43]_LDC_i_2_n_0 ),
        .D(resultBuf[43]),
        .Q(\result_reg[43]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[43]_LDC 
       (.CLR(\result_reg[43]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[43]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[43]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[43]_LDC_i_1 
       (.I0(resultBuf[43]),
        .I1(reset),
        .O(\result_reg[43]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[43]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[43]),
        .O(\result_reg[43]_LDC_i_2_n_0 ));
  FDPE \result_reg[43]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[43]),
        .PRE(\result_reg[43]_LDC_i_1_n_0 ),
        .Q(\result_reg[43]_P_n_0 ));
  FDCE \result_reg[44]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[44]_LDC_i_2_n_0 ),
        .D(resultBuf[44]),
        .Q(\result_reg[44]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[44]_LDC 
       (.CLR(\result_reg[44]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[44]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[44]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[44]_LDC_i_1 
       (.I0(resultBuf[44]),
        .I1(reset),
        .O(\result_reg[44]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[44]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[44]),
        .O(\result_reg[44]_LDC_i_2_n_0 ));
  FDPE \result_reg[44]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[44]),
        .PRE(\result_reg[44]_LDC_i_1_n_0 ),
        .Q(\result_reg[44]_P_n_0 ));
  FDCE \result_reg[45]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[45]_LDC_i_2_n_0 ),
        .D(resultBuf[45]),
        .Q(\result_reg[45]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[45]_LDC 
       (.CLR(\result_reg[45]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[45]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[45]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[45]_LDC_i_1 
       (.I0(resultBuf[45]),
        .I1(reset),
        .O(\result_reg[45]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[45]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[45]),
        .O(\result_reg[45]_LDC_i_2_n_0 ));
  FDPE \result_reg[45]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[45]),
        .PRE(\result_reg[45]_LDC_i_1_n_0 ),
        .Q(\result_reg[45]_P_n_0 ));
  FDCE \result_reg[46]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[46]_LDC_i_2_n_0 ),
        .D(resultBuf[46]),
        .Q(\result_reg[46]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[46]_LDC 
       (.CLR(\result_reg[46]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[46]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[46]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[46]_LDC_i_1 
       (.I0(resultBuf[46]),
        .I1(reset),
        .O(\result_reg[46]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[46]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[46]),
        .O(\result_reg[46]_LDC_i_2_n_0 ));
  FDPE \result_reg[46]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[46]),
        .PRE(\result_reg[46]_LDC_i_1_n_0 ),
        .Q(\result_reg[46]_P_n_0 ));
  FDCE \result_reg[47]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[47]_LDC_i_2_n_0 ),
        .D(resultBuf[47]),
        .Q(\result_reg[47]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[47]_LDC 
       (.CLR(\result_reg[47]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[47]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[47]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[47]_LDC_i_1 
       (.I0(resultBuf[47]),
        .I1(reset),
        .O(\result_reg[47]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[47]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[47]),
        .O(\result_reg[47]_LDC_i_2_n_0 ));
  FDPE \result_reg[47]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[47]),
        .PRE(\result_reg[47]_LDC_i_1_n_0 ),
        .Q(\result_reg[47]_P_n_0 ));
  FDCE \result_reg[48]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[48]_LDC_i_2_n_0 ),
        .D(resultBuf[48]),
        .Q(\result_reg[48]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[48]_LDC 
       (.CLR(\result_reg[48]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[48]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[48]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[48]_LDC_i_1 
       (.I0(resultBuf[48]),
        .I1(reset),
        .O(\result_reg[48]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[48]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[48]),
        .O(\result_reg[48]_LDC_i_2_n_0 ));
  FDPE \result_reg[48]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[48]),
        .PRE(\result_reg[48]_LDC_i_1_n_0 ),
        .Q(\result_reg[48]_P_n_0 ));
  FDCE \result_reg[49]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[49]_LDC_i_2_n_0 ),
        .D(resultBuf[49]),
        .Q(\result_reg[49]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[49]_LDC 
       (.CLR(\result_reg[49]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[49]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[49]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[49]_LDC_i_1 
       (.I0(resultBuf[49]),
        .I1(reset),
        .O(\result_reg[49]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[49]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[49]),
        .O(\result_reg[49]_LDC_i_2_n_0 ));
  FDPE \result_reg[49]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[49]),
        .PRE(\result_reg[49]_LDC_i_1_n_0 ),
        .Q(\result_reg[49]_P_n_0 ));
  FDCE \result_reg[4]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[4]_LDC_i_2_n_0 ),
        .D(resultBuf[4]),
        .Q(\result_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[4]_LDC 
       (.CLR(\result_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[4]_LDC_i_1 
       (.I0(resultBuf[4]),
        .I1(reset),
        .O(\result_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[4]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[4]),
        .O(\result_reg[4]_LDC_i_2_n_0 ));
  FDPE \result_reg[4]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[4]),
        .PRE(\result_reg[4]_LDC_i_1_n_0 ),
        .Q(\result_reg[4]_P_n_0 ));
  FDCE \result_reg[50]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[50]_LDC_i_2_n_0 ),
        .D(resultBuf[50]),
        .Q(\result_reg[50]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[50]_LDC 
       (.CLR(\result_reg[50]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[50]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[50]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[50]_LDC_i_1 
       (.I0(resultBuf[50]),
        .I1(reset),
        .O(\result_reg[50]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[50]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[50]),
        .O(\result_reg[50]_LDC_i_2_n_0 ));
  FDPE \result_reg[50]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[50]),
        .PRE(\result_reg[50]_LDC_i_1_n_0 ),
        .Q(\result_reg[50]_P_n_0 ));
  FDCE \result_reg[51]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[51]_LDC_i_2_n_0 ),
        .D(resultBuf[51]),
        .Q(\result_reg[51]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[51]_LDC 
       (.CLR(\result_reg[51]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[51]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[51]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[51]_LDC_i_1 
       (.I0(resultBuf[51]),
        .I1(reset),
        .O(\result_reg[51]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[51]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[51]),
        .O(\result_reg[51]_LDC_i_2_n_0 ));
  FDPE \result_reg[51]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[51]),
        .PRE(\result_reg[51]_LDC_i_1_n_0 ),
        .Q(\result_reg[51]_P_n_0 ));
  FDCE \result_reg[52]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[52]_LDC_i_2_n_0 ),
        .D(resultBuf[52]),
        .Q(\result_reg[52]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[52]_LDC 
       (.CLR(\result_reg[52]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[52]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[52]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[52]_LDC_i_1 
       (.I0(resultBuf[52]),
        .I1(reset),
        .O(\result_reg[52]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[52]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[52]),
        .O(\result_reg[52]_LDC_i_2_n_0 ));
  FDPE \result_reg[52]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[52]),
        .PRE(\result_reg[52]_LDC_i_1_n_0 ),
        .Q(\result_reg[52]_P_n_0 ));
  FDCE \result_reg[53]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[53]_LDC_i_2_n_0 ),
        .D(resultBuf[53]),
        .Q(\result_reg[53]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[53]_LDC 
       (.CLR(\result_reg[53]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[53]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[53]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[53]_LDC_i_1 
       (.I0(resultBuf[53]),
        .I1(reset),
        .O(\result_reg[53]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[53]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[53]),
        .O(\result_reg[53]_LDC_i_2_n_0 ));
  FDPE \result_reg[53]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[53]),
        .PRE(\result_reg[53]_LDC_i_1_n_0 ),
        .Q(\result_reg[53]_P_n_0 ));
  FDCE \result_reg[54]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[54]_LDC_i_2_n_0 ),
        .D(resultBuf[54]),
        .Q(\result_reg[54]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[54]_LDC 
       (.CLR(\result_reg[54]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[54]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[54]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[54]_LDC_i_1 
       (.I0(resultBuf[54]),
        .I1(reset),
        .O(\result_reg[54]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[54]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[54]),
        .O(\result_reg[54]_LDC_i_2_n_0 ));
  FDPE \result_reg[54]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[54]),
        .PRE(\result_reg[54]_LDC_i_1_n_0 ),
        .Q(\result_reg[54]_P_n_0 ));
  FDCE \result_reg[55]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[55]_LDC_i_2_n_0 ),
        .D(resultBuf[55]),
        .Q(\result_reg[55]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[55]_LDC 
       (.CLR(\result_reg[55]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[55]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[55]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[55]_LDC_i_1 
       (.I0(resultBuf[55]),
        .I1(reset),
        .O(\result_reg[55]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[55]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[55]),
        .O(\result_reg[55]_LDC_i_2_n_0 ));
  FDPE \result_reg[55]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[55]),
        .PRE(\result_reg[55]_LDC_i_1_n_0 ),
        .Q(\result_reg[55]_P_n_0 ));
  FDCE \result_reg[56]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[56]_LDC_i_2_n_0 ),
        .D(resultBuf[56]),
        .Q(\result_reg[56]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[56]_LDC 
       (.CLR(\result_reg[56]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[56]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[56]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[56]_LDC_i_1 
       (.I0(resultBuf[56]),
        .I1(reset),
        .O(\result_reg[56]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[56]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[56]),
        .O(\result_reg[56]_LDC_i_2_n_0 ));
  FDPE \result_reg[56]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[56]),
        .PRE(\result_reg[56]_LDC_i_1_n_0 ),
        .Q(\result_reg[56]_P_n_0 ));
  FDCE \result_reg[57]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[57]_LDC_i_2_n_0 ),
        .D(resultBuf[57]),
        .Q(\result_reg[57]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[57]_LDC 
       (.CLR(\result_reg[57]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[57]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[57]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[57]_LDC_i_1 
       (.I0(resultBuf[57]),
        .I1(reset),
        .O(\result_reg[57]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[57]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[57]),
        .O(\result_reg[57]_LDC_i_2_n_0 ));
  FDPE \result_reg[57]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[57]),
        .PRE(\result_reg[57]_LDC_i_1_n_0 ),
        .Q(\result_reg[57]_P_n_0 ));
  FDCE \result_reg[58]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[58]_LDC_i_2_n_0 ),
        .D(resultBuf[58]),
        .Q(\result_reg[58]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[58]_LDC 
       (.CLR(\result_reg[58]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[58]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[58]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[58]_LDC_i_1 
       (.I0(resultBuf[58]),
        .I1(reset),
        .O(\result_reg[58]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[58]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[58]),
        .O(\result_reg[58]_LDC_i_2_n_0 ));
  FDPE \result_reg[58]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[58]),
        .PRE(\result_reg[58]_LDC_i_1_n_0 ),
        .Q(\result_reg[58]_P_n_0 ));
  FDCE \result_reg[59]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[59]_LDC_i_2_n_0 ),
        .D(resultBuf[59]),
        .Q(\result_reg[59]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[59]_LDC 
       (.CLR(\result_reg[59]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[59]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[59]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[59]_LDC_i_1 
       (.I0(resultBuf[59]),
        .I1(reset),
        .O(\result_reg[59]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[59]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[59]),
        .O(\result_reg[59]_LDC_i_2_n_0 ));
  FDPE \result_reg[59]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[59]),
        .PRE(\result_reg[59]_LDC_i_1_n_0 ),
        .Q(\result_reg[59]_P_n_0 ));
  FDCE \result_reg[5]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[5]_LDC_i_2_n_0 ),
        .D(resultBuf[5]),
        .Q(\result_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[5]_LDC 
       (.CLR(\result_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[5]_LDC_i_1 
       (.I0(resultBuf[5]),
        .I1(reset),
        .O(\result_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[5]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[5]),
        .O(\result_reg[5]_LDC_i_2_n_0 ));
  FDPE \result_reg[5]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[5]),
        .PRE(\result_reg[5]_LDC_i_1_n_0 ),
        .Q(\result_reg[5]_P_n_0 ));
  FDCE \result_reg[60]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[60]_LDC_i_2_n_0 ),
        .D(resultBuf[60]),
        .Q(\result_reg[60]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[60]_LDC 
       (.CLR(\result_reg[60]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[60]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[60]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[60]_LDC_i_1 
       (.I0(resultBuf[60]),
        .I1(reset),
        .O(\result_reg[60]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[60]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[60]),
        .O(\result_reg[60]_LDC_i_2_n_0 ));
  FDPE \result_reg[60]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[60]),
        .PRE(\result_reg[60]_LDC_i_1_n_0 ),
        .Q(\result_reg[60]_P_n_0 ));
  FDCE \result_reg[61]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[61]_LDC_i_2_n_0 ),
        .D(resultBuf[61]),
        .Q(\result_reg[61]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[61]_LDC 
       (.CLR(\result_reg[61]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[61]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[61]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[61]_LDC_i_1 
       (.I0(resultBuf[61]),
        .I1(reset),
        .O(\result_reg[61]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[61]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[61]),
        .O(\result_reg[61]_LDC_i_2_n_0 ));
  FDPE \result_reg[61]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[61]),
        .PRE(\result_reg[61]_LDC_i_1_n_0 ),
        .Q(\result_reg[61]_P_n_0 ));
  FDCE \result_reg[62]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[62]_LDC_i_2_n_0 ),
        .D(resultBuf[62]),
        .Q(\result_reg[62]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[62]_LDC 
       (.CLR(\result_reg[62]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[62]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[62]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[62]_LDC_i_1 
       (.I0(resultBuf[62]),
        .I1(reset),
        .O(\result_reg[62]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[62]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[62]),
        .O(\result_reg[62]_LDC_i_2_n_0 ));
  FDPE \result_reg[62]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[62]),
        .PRE(\result_reg[62]_LDC_i_1_n_0 ),
        .Q(\result_reg[62]_P_n_0 ));
  FDCE \result_reg[63]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[63]_LDC_i_2_n_0 ),
        .D(resultBuf[63]),
        .Q(\result_reg[63]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[63]_LDC 
       (.CLR(\result_reg[63]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[63]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[63]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[63]_LDC_i_1 
       (.I0(resultBuf[63]),
        .I1(reset),
        .O(\result_reg[63]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[63]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[63]),
        .O(\result_reg[63]_LDC_i_2_n_0 ));
  FDPE \result_reg[63]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[63]),
        .PRE(\result_reg[63]_LDC_i_1_n_0 ),
        .Q(\result_reg[63]_P_n_0 ));
  FDCE \result_reg[6]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[6]_LDC_i_2_n_0 ),
        .D(resultBuf[6]),
        .Q(\result_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[6]_LDC 
       (.CLR(\result_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[6]_LDC_i_1 
       (.I0(resultBuf[6]),
        .I1(reset),
        .O(\result_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[6]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[6]),
        .O(\result_reg[6]_LDC_i_2_n_0 ));
  FDPE \result_reg[6]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[6]),
        .PRE(\result_reg[6]_LDC_i_1_n_0 ),
        .Q(\result_reg[6]_P_n_0 ));
  FDCE \result_reg[7]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[7]_LDC_i_2_n_0 ),
        .D(resultBuf[7]),
        .Q(\result_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[7]_LDC 
       (.CLR(\result_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[7]_LDC_i_1 
       (.I0(resultBuf[7]),
        .I1(reset),
        .O(\result_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[7]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[7]),
        .O(\result_reg[7]_LDC_i_2_n_0 ));
  FDPE \result_reg[7]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[7]),
        .PRE(\result_reg[7]_LDC_i_1_n_0 ),
        .Q(\result_reg[7]_P_n_0 ));
  FDCE \result_reg[8]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[8]_LDC_i_2_n_0 ),
        .D(resultBuf[8]),
        .Q(\result_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[8]_LDC 
       (.CLR(\result_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[8]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[8]_LDC_i_1 
       (.I0(resultBuf[8]),
        .I1(reset),
        .O(\result_reg[8]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[8]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[8]),
        .O(\result_reg[8]_LDC_i_2_n_0 ));
  FDPE \result_reg[8]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[8]),
        .PRE(\result_reg[8]_LDC_i_1_n_0 ),
        .Q(\result_reg[8]_P_n_0 ));
  FDCE \result_reg[9]_C 
       (.C(clk_div),
        .CE(1'b1),
        .CLR(\result_reg[9]_LDC_i_2_n_0 ),
        .D(resultBuf[9]),
        .Q(\result_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \result_reg[9]_LDC 
       (.CLR(\result_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\result_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\result_reg[9]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \result_reg[9]_LDC_i_1 
       (.I0(resultBuf[9]),
        .I1(reset),
        .O(\result_reg[9]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[9]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[9]),
        .O(\result_reg[9]_LDC_i_2_n_0 ));
  FDPE \result_reg[9]_P 
       (.C(clk_div),
        .CE(1'b1),
        .D(resultBuf[9]),
        .PRE(\result_reg[9]_LDC_i_1_n_0 ),
        .Q(\result_reg[9]_P_n_0 ));
endmodule

(* ORIG_REF_NAME = "CPU" *) 
module Setup_CPU_0_2_CPU
   (bram_we,
    bram_en,
    bram_dout,
    reset,
    clk,
    bram_din,
    interrupt);
  output bram_we;
  output bram_en;
  output [63:0]bram_dout;
  input reset;
  input clk;
  input [63:0]bram_din;
  input interrupt;

  wire [63:0]alu_a;
  wire [63:0]bram_din;
  wire [63:0]bram_dout;
  wire bram_en;
  wire bram_we;
  wire bram_we_i_1_n_0;
  wire clk;
  wire clk_div;
  wire interrupt;
  wire reset;
  wire [63:0]result;

  Setup_CPU_0_2_ALU ALU_inst
       (.D(result),
        .Q(alu_a),
        .bram_en(bram_en),
        .clk_div(clk_div),
        .reset(reset));
  Setup_CPU_0_2_ClockDivider ClockDivider_inst
       (.CLK(clk_div),
        .clk(clk),
        .reset(reset));
  FDCE \alu_a_reg[0] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[0]),
        .Q(alu_a[0]));
  FDCE \alu_a_reg[10] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[10]),
        .Q(alu_a[10]));
  FDCE \alu_a_reg[11] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[11]),
        .Q(alu_a[11]));
  FDCE \alu_a_reg[12] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[12]),
        .Q(alu_a[12]));
  FDCE \alu_a_reg[13] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[13]),
        .Q(alu_a[13]));
  FDCE \alu_a_reg[14] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[14]),
        .Q(alu_a[14]));
  FDCE \alu_a_reg[15] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[15]),
        .Q(alu_a[15]));
  FDCE \alu_a_reg[16] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[16]),
        .Q(alu_a[16]));
  FDCE \alu_a_reg[17] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[17]),
        .Q(alu_a[17]));
  FDCE \alu_a_reg[18] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[18]),
        .Q(alu_a[18]));
  FDCE \alu_a_reg[19] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[19]),
        .Q(alu_a[19]));
  FDCE \alu_a_reg[1] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[1]),
        .Q(alu_a[1]));
  FDCE \alu_a_reg[20] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[20]),
        .Q(alu_a[20]));
  FDCE \alu_a_reg[21] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[21]),
        .Q(alu_a[21]));
  FDCE \alu_a_reg[22] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[22]),
        .Q(alu_a[22]));
  FDCE \alu_a_reg[23] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[23]),
        .Q(alu_a[23]));
  FDCE \alu_a_reg[24] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[24]),
        .Q(alu_a[24]));
  FDCE \alu_a_reg[25] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[25]),
        .Q(alu_a[25]));
  FDCE \alu_a_reg[26] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[26]),
        .Q(alu_a[26]));
  FDCE \alu_a_reg[27] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[27]),
        .Q(alu_a[27]));
  FDCE \alu_a_reg[28] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[28]),
        .Q(alu_a[28]));
  FDCE \alu_a_reg[29] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[29]),
        .Q(alu_a[29]));
  FDCE \alu_a_reg[2] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[2]),
        .Q(alu_a[2]));
  FDCE \alu_a_reg[30] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[30]),
        .Q(alu_a[30]));
  FDCE \alu_a_reg[31] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[31]),
        .Q(alu_a[31]));
  FDCE \alu_a_reg[32] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[32]),
        .Q(alu_a[32]));
  FDCE \alu_a_reg[33] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[33]),
        .Q(alu_a[33]));
  FDCE \alu_a_reg[34] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[34]),
        .Q(alu_a[34]));
  FDCE \alu_a_reg[35] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[35]),
        .Q(alu_a[35]));
  FDCE \alu_a_reg[36] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[36]),
        .Q(alu_a[36]));
  FDCE \alu_a_reg[37] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[37]),
        .Q(alu_a[37]));
  FDCE \alu_a_reg[38] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[38]),
        .Q(alu_a[38]));
  FDCE \alu_a_reg[39] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[39]),
        .Q(alu_a[39]));
  FDCE \alu_a_reg[3] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[3]),
        .Q(alu_a[3]));
  FDCE \alu_a_reg[40] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[40]),
        .Q(alu_a[40]));
  FDCE \alu_a_reg[41] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[41]),
        .Q(alu_a[41]));
  FDCE \alu_a_reg[42] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[42]),
        .Q(alu_a[42]));
  FDCE \alu_a_reg[43] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[43]),
        .Q(alu_a[43]));
  FDCE \alu_a_reg[44] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[44]),
        .Q(alu_a[44]));
  FDCE \alu_a_reg[45] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[45]),
        .Q(alu_a[45]));
  FDCE \alu_a_reg[46] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[46]),
        .Q(alu_a[46]));
  FDCE \alu_a_reg[47] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[47]),
        .Q(alu_a[47]));
  FDCE \alu_a_reg[48] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[48]),
        .Q(alu_a[48]));
  FDCE \alu_a_reg[49] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[49]),
        .Q(alu_a[49]));
  FDCE \alu_a_reg[4] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[4]),
        .Q(alu_a[4]));
  FDCE \alu_a_reg[50] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[50]),
        .Q(alu_a[50]));
  FDCE \alu_a_reg[51] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[51]),
        .Q(alu_a[51]));
  FDCE \alu_a_reg[52] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[52]),
        .Q(alu_a[52]));
  FDCE \alu_a_reg[53] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[53]),
        .Q(alu_a[53]));
  FDCE \alu_a_reg[54] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[54]),
        .Q(alu_a[54]));
  FDCE \alu_a_reg[55] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[55]),
        .Q(alu_a[55]));
  FDCE \alu_a_reg[56] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[56]),
        .Q(alu_a[56]));
  FDCE \alu_a_reg[57] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[57]),
        .Q(alu_a[57]));
  FDCE \alu_a_reg[58] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[58]),
        .Q(alu_a[58]));
  FDCE \alu_a_reg[59] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[59]),
        .Q(alu_a[59]));
  FDCE \alu_a_reg[5] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[5]),
        .Q(alu_a[5]));
  FDCE \alu_a_reg[60] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[60]),
        .Q(alu_a[60]));
  FDCE \alu_a_reg[61] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[61]),
        .Q(alu_a[61]));
  FDCE \alu_a_reg[62] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[62]),
        .Q(alu_a[62]));
  FDCE \alu_a_reg[63] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[63]),
        .Q(alu_a[63]));
  FDCE \alu_a_reg[6] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[6]),
        .Q(alu_a[6]));
  FDCE \alu_a_reg[7] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[7]),
        .Q(alu_a[7]));
  FDCE \alu_a_reg[8] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[8]),
        .Q(alu_a[8]));
  FDCE \alu_a_reg[9] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(bram_din[9]),
        .Q(alu_a[9]));
  FDCE \bram_dout_reg[0] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[0]),
        .Q(bram_dout[0]));
  FDCE \bram_dout_reg[10] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[10]),
        .Q(bram_dout[10]));
  FDCE \bram_dout_reg[11] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[11]),
        .Q(bram_dout[11]));
  FDCE \bram_dout_reg[12] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[12]),
        .Q(bram_dout[12]));
  FDCE \bram_dout_reg[13] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[13]),
        .Q(bram_dout[13]));
  FDCE \bram_dout_reg[14] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[14]),
        .Q(bram_dout[14]));
  FDCE \bram_dout_reg[15] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[15]),
        .Q(bram_dout[15]));
  FDCE \bram_dout_reg[16] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[16]),
        .Q(bram_dout[16]));
  FDCE \bram_dout_reg[17] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[17]),
        .Q(bram_dout[17]));
  FDCE \bram_dout_reg[18] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[18]),
        .Q(bram_dout[18]));
  FDCE \bram_dout_reg[19] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[19]),
        .Q(bram_dout[19]));
  FDCE \bram_dout_reg[1] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[1]),
        .Q(bram_dout[1]));
  FDCE \bram_dout_reg[20] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[20]),
        .Q(bram_dout[20]));
  FDCE \bram_dout_reg[21] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[21]),
        .Q(bram_dout[21]));
  FDCE \bram_dout_reg[22] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[22]),
        .Q(bram_dout[22]));
  FDCE \bram_dout_reg[23] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[23]),
        .Q(bram_dout[23]));
  FDCE \bram_dout_reg[24] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[24]),
        .Q(bram_dout[24]));
  FDCE \bram_dout_reg[25] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[25]),
        .Q(bram_dout[25]));
  FDCE \bram_dout_reg[26] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[26]),
        .Q(bram_dout[26]));
  FDCE \bram_dout_reg[27] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[27]),
        .Q(bram_dout[27]));
  FDCE \bram_dout_reg[28] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[28]),
        .Q(bram_dout[28]));
  FDCE \bram_dout_reg[29] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[29]),
        .Q(bram_dout[29]));
  FDCE \bram_dout_reg[2] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[2]),
        .Q(bram_dout[2]));
  FDCE \bram_dout_reg[30] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[30]),
        .Q(bram_dout[30]));
  FDCE \bram_dout_reg[31] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[31]),
        .Q(bram_dout[31]));
  FDCE \bram_dout_reg[32] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[32]),
        .Q(bram_dout[32]));
  FDCE \bram_dout_reg[33] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[33]),
        .Q(bram_dout[33]));
  FDCE \bram_dout_reg[34] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[34]),
        .Q(bram_dout[34]));
  FDCE \bram_dout_reg[35] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[35]),
        .Q(bram_dout[35]));
  FDCE \bram_dout_reg[36] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[36]),
        .Q(bram_dout[36]));
  FDCE \bram_dout_reg[37] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[37]),
        .Q(bram_dout[37]));
  FDCE \bram_dout_reg[38] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[38]),
        .Q(bram_dout[38]));
  FDCE \bram_dout_reg[39] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[39]),
        .Q(bram_dout[39]));
  FDCE \bram_dout_reg[3] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[3]),
        .Q(bram_dout[3]));
  FDCE \bram_dout_reg[40] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[40]),
        .Q(bram_dout[40]));
  FDCE \bram_dout_reg[41] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[41]),
        .Q(bram_dout[41]));
  FDCE \bram_dout_reg[42] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[42]),
        .Q(bram_dout[42]));
  FDCE \bram_dout_reg[43] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[43]),
        .Q(bram_dout[43]));
  FDCE \bram_dout_reg[44] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[44]),
        .Q(bram_dout[44]));
  FDCE \bram_dout_reg[45] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[45]),
        .Q(bram_dout[45]));
  FDCE \bram_dout_reg[46] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[46]),
        .Q(bram_dout[46]));
  FDCE \bram_dout_reg[47] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[47]),
        .Q(bram_dout[47]));
  FDCE \bram_dout_reg[48] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[48]),
        .Q(bram_dout[48]));
  FDCE \bram_dout_reg[49] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[49]),
        .Q(bram_dout[49]));
  FDCE \bram_dout_reg[4] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[4]),
        .Q(bram_dout[4]));
  FDCE \bram_dout_reg[50] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[50]),
        .Q(bram_dout[50]));
  FDCE \bram_dout_reg[51] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[51]),
        .Q(bram_dout[51]));
  FDCE \bram_dout_reg[52] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[52]),
        .Q(bram_dout[52]));
  FDCE \bram_dout_reg[53] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[53]),
        .Q(bram_dout[53]));
  FDCE \bram_dout_reg[54] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[54]),
        .Q(bram_dout[54]));
  FDCE \bram_dout_reg[55] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[55]),
        .Q(bram_dout[55]));
  FDCE \bram_dout_reg[56] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[56]),
        .Q(bram_dout[56]));
  FDCE \bram_dout_reg[57] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[57]),
        .Q(bram_dout[57]));
  FDCE \bram_dout_reg[58] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[58]),
        .Q(bram_dout[58]));
  FDCE \bram_dout_reg[59] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[59]),
        .Q(bram_dout[59]));
  FDCE \bram_dout_reg[5] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[5]),
        .Q(bram_dout[5]));
  FDCE \bram_dout_reg[60] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[60]),
        .Q(bram_dout[60]));
  FDCE \bram_dout_reg[61] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[61]),
        .Q(bram_dout[61]));
  FDCE \bram_dout_reg[62] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[62]),
        .Q(bram_dout[62]));
  FDCE \bram_dout_reg[63] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[63]),
        .Q(bram_dout[63]));
  FDCE \bram_dout_reg[6] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[6]),
        .Q(bram_dout[6]));
  FDCE \bram_dout_reg[7] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[7]),
        .Q(bram_dout[7]));
  FDCE \bram_dout_reg[8] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[8]),
        .Q(bram_dout[8]));
  FDCE \bram_dout_reg[9] 
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(result[9]),
        .Q(bram_dout[9]));
  FDCE bram_en_reg
       (.C(clk_div),
        .CE(bram_we_i_1_n_0),
        .CLR(reset),
        .D(1'b1),
        .Q(bram_en));
  LUT1 #(
    .INIT(2'h1)) 
    bram_we_i_1
       (.I0(interrupt),
        .O(bram_we_i_1_n_0));
  FDCE bram_we_reg
       (.C(clk_div),
        .CE(1'b1),
        .CLR(reset),
        .D(bram_we_i_1_n_0),
        .Q(bram_we));
endmodule

(* ORIG_REF_NAME = "ClockDivider" *) 
module Setup_CPU_0_2_ClockDivider
   (CLK,
    clk,
    reset);
  output CLK;
  input clk;
  input reset;

  wire CLK;
  wire clk;
  wire clk_div_i_1_n_0;
  wire [31:0]counter;
  wire \counter[31]_i_10_n_0 ;
  wire \counter[31]_i_2_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire [31:0]counter_0;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_2_n_1 ;
  wire \counter_reg[16]_i_2_n_2 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg[20]_i_2_n_0 ;
  wire \counter_reg[20]_i_2_n_1 ;
  wire \counter_reg[20]_i_2_n_2 ;
  wire \counter_reg[20]_i_2_n_3 ;
  wire \counter_reg[24]_i_2_n_0 ;
  wire \counter_reg[24]_i_2_n_1 ;
  wire \counter_reg[24]_i_2_n_2 ;
  wire \counter_reg[24]_i_2_n_3 ;
  wire \counter_reg[28]_i_2_n_0 ;
  wire \counter_reg[28]_i_2_n_1 ;
  wire \counter_reg[28]_i_2_n_2 ;
  wire \counter_reg[28]_i_2_n_3 ;
  wire \counter_reg[31]_i_6_n_2 ;
  wire \counter_reg[31]_i_6_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire [31:1]data0;
  wire reset;
  wire [3:2]\NLW_counter_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_6_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_div_i_1
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(CLK),
        .O(clk_div_i_1_n_0));
  FDCE clk_div_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(clk_div_i_1_n_0),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[17]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[19]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[20]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[21]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[22]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[23]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[25]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(counter_0[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_10 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(\counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_2 
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(\counter[31]_i_7_n_0 ),
        .O(\counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_3 
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(\counter[31]_i_8_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \counter[31]_i_4 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_5 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .I4(\counter[31]_i_10_n_0 ),
        .O(\counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_7 
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .O(\counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_8 
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(\counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[12]),
        .Q(counter[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[16]),
        .Q(counter[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[20]),
        .Q(counter[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_2 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CO({\counter_reg[20]_i_2_n_0 ,\counter_reg[20]_i_2_n_1 ,\counter_reg[20]_i_2_n_2 ,\counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[24]),
        .Q(counter[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_2 
       (.CI(\counter_reg[20]_i_2_n_0 ),
        .CO({\counter_reg[24]_i_2_n_0 ,\counter_reg[24]_i_2_n_1 ,\counter_reg[24]_i_2_n_2 ,\counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[28]),
        .Q(counter[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_2_n_0 ),
        .CO({\counter_reg[28]_i_2_n_0 ,\counter_reg[28]_i_2_n_1 ,\counter_reg[28]_i_2_n_2 ,\counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(counter[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[31]),
        .Q(counter[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[31]_i_6 
       (.CI(\counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter_reg[31]_i_6_CO_UNCONNECTED [3:2],\counter_reg[31]_i_6_n_2 ,\counter_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,counter[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[4]),
        .Q(counter[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[8]),
        .Q(counter[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter_0[9]),
        .Q(counter[9]));
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
