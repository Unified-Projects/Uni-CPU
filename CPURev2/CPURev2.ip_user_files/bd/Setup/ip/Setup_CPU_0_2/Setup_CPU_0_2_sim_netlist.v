// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug  6 22:47:12 2024
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_sim_clk_gen_0_0_clk, INSERT_VIP 0" *) input clk;
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
  input [7:0]bram_din;
  output [7:0]bram_dout;
  output [12:0]bram_addr;

  wire \<const0> ;
  wire [12:0]bram_addr;
  wire [7:0]bram_din;
  wire [7:0]bram_dout;
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
       (.bram_addr(bram_addr),
        .bram_din(bram_din),
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
    CLK,
    reset,
    Q,
    \LocalRIP_reg[63] ,
    \resultBuf_reg[63]_0 ,
    \resultBuf_reg[4]_0 );
  output [63:0]D;
  input CLK;
  input reset;
  input [0:0]Q;
  input [63:0]\LocalRIP_reg[63] ;
  input [63:0]\resultBuf_reg[63]_0 ;
  input \resultBuf_reg[4]_0 ;

  wire CLK;
  wire [63:0]D;
  wire [63:0]\LocalRIP_reg[63] ;
  wire [0:0]Q;
  wire [63:1]plusOp;
  wire reset;
  wire [63:0]resultBuf;
  wire \resultBuf[4]_i_2_n_0 ;
  wire \resultBuf_reg[12]_i_1_n_0 ;
  wire \resultBuf_reg[12]_i_1_n_1 ;
  wire \resultBuf_reg[12]_i_1_n_2 ;
  wire \resultBuf_reg[12]_i_1_n_3 ;
  wire \resultBuf_reg[16]_i_1_n_0 ;
  wire \resultBuf_reg[16]_i_1_n_1 ;
  wire \resultBuf_reg[16]_i_1_n_2 ;
  wire \resultBuf_reg[16]_i_1_n_3 ;
  wire \resultBuf_reg[20]_i_1_n_0 ;
  wire \resultBuf_reg[20]_i_1_n_1 ;
  wire \resultBuf_reg[20]_i_1_n_2 ;
  wire \resultBuf_reg[20]_i_1_n_3 ;
  wire \resultBuf_reg[24]_i_1_n_0 ;
  wire \resultBuf_reg[24]_i_1_n_1 ;
  wire \resultBuf_reg[24]_i_1_n_2 ;
  wire \resultBuf_reg[24]_i_1_n_3 ;
  wire \resultBuf_reg[28]_i_1_n_0 ;
  wire \resultBuf_reg[28]_i_1_n_1 ;
  wire \resultBuf_reg[28]_i_1_n_2 ;
  wire \resultBuf_reg[28]_i_1_n_3 ;
  wire \resultBuf_reg[32]_i_1_n_0 ;
  wire \resultBuf_reg[32]_i_1_n_1 ;
  wire \resultBuf_reg[32]_i_1_n_2 ;
  wire \resultBuf_reg[32]_i_1_n_3 ;
  wire \resultBuf_reg[36]_i_1_n_0 ;
  wire \resultBuf_reg[36]_i_1_n_1 ;
  wire \resultBuf_reg[36]_i_1_n_2 ;
  wire \resultBuf_reg[36]_i_1_n_3 ;
  wire \resultBuf_reg[40]_i_1_n_0 ;
  wire \resultBuf_reg[40]_i_1_n_1 ;
  wire \resultBuf_reg[40]_i_1_n_2 ;
  wire \resultBuf_reg[40]_i_1_n_3 ;
  wire \resultBuf_reg[44]_i_1_n_0 ;
  wire \resultBuf_reg[44]_i_1_n_1 ;
  wire \resultBuf_reg[44]_i_1_n_2 ;
  wire \resultBuf_reg[44]_i_1_n_3 ;
  wire \resultBuf_reg[48]_i_1_n_0 ;
  wire \resultBuf_reg[48]_i_1_n_1 ;
  wire \resultBuf_reg[48]_i_1_n_2 ;
  wire \resultBuf_reg[48]_i_1_n_3 ;
  wire \resultBuf_reg[4]_0 ;
  wire \resultBuf_reg[4]_i_1_n_0 ;
  wire \resultBuf_reg[4]_i_1_n_1 ;
  wire \resultBuf_reg[4]_i_1_n_2 ;
  wire \resultBuf_reg[4]_i_1_n_3 ;
  wire \resultBuf_reg[52]_i_1_n_0 ;
  wire \resultBuf_reg[52]_i_1_n_1 ;
  wire \resultBuf_reg[52]_i_1_n_2 ;
  wire \resultBuf_reg[52]_i_1_n_3 ;
  wire \resultBuf_reg[56]_i_1_n_0 ;
  wire \resultBuf_reg[56]_i_1_n_1 ;
  wire \resultBuf_reg[56]_i_1_n_2 ;
  wire \resultBuf_reg[56]_i_1_n_3 ;
  wire \resultBuf_reg[60]_i_1_n_0 ;
  wire \resultBuf_reg[60]_i_1_n_1 ;
  wire \resultBuf_reg[60]_i_1_n_2 ;
  wire \resultBuf_reg[60]_i_1_n_3 ;
  wire [63:0]\resultBuf_reg[63]_0 ;
  wire \resultBuf_reg[63]_i_1_n_2 ;
  wire \resultBuf_reg[63]_i_1_n_3 ;
  wire \resultBuf_reg[8]_i_1_n_0 ;
  wire \resultBuf_reg[8]_i_1_n_1 ;
  wire \resultBuf_reg[8]_i_1_n_2 ;
  wire \resultBuf_reg[8]_i_1_n_3 ;
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
  wire [3:2]\NLW_resultBuf_reg[63]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_resultBuf_reg[63]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[0]_i_1 
       (.I0(\result_reg[0]_P_n_0 ),
        .I1(\result_reg[0]_LDC_n_0 ),
        .I2(\result_reg[0]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[10]_i_1 
       (.I0(\result_reg[10]_P_n_0 ),
        .I1(\result_reg[10]_LDC_n_0 ),
        .I2(\result_reg[10]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[11]_i_1 
       (.I0(\result_reg[11]_P_n_0 ),
        .I1(\result_reg[11]_LDC_n_0 ),
        .I2(\result_reg[11]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[12]_i_1 
       (.I0(\result_reg[12]_P_n_0 ),
        .I1(\result_reg[12]_LDC_n_0 ),
        .I2(\result_reg[12]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[13]_i_1 
       (.I0(\result_reg[13]_P_n_0 ),
        .I1(\result_reg[13]_LDC_n_0 ),
        .I2(\result_reg[13]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[14]_i_1 
       (.I0(\result_reg[14]_P_n_0 ),
        .I1(\result_reg[14]_LDC_n_0 ),
        .I2(\result_reg[14]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[15]_i_1 
       (.I0(\result_reg[15]_P_n_0 ),
        .I1(\result_reg[15]_LDC_n_0 ),
        .I2(\result_reg[15]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[16]_i_1 
       (.I0(\result_reg[16]_P_n_0 ),
        .I1(\result_reg[16]_LDC_n_0 ),
        .I2(\result_reg[16]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [16]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[17]_i_1 
       (.I0(\result_reg[17]_P_n_0 ),
        .I1(\result_reg[17]_LDC_n_0 ),
        .I2(\result_reg[17]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[18]_i_1 
       (.I0(\result_reg[18]_P_n_0 ),
        .I1(\result_reg[18]_LDC_n_0 ),
        .I2(\result_reg[18]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[19]_i_1 
       (.I0(\result_reg[19]_P_n_0 ),
        .I1(\result_reg[19]_LDC_n_0 ),
        .I2(\result_reg[19]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[1]_i_1 
       (.I0(\result_reg[1]_P_n_0 ),
        .I1(\result_reg[1]_LDC_n_0 ),
        .I2(\result_reg[1]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[20]_i_1 
       (.I0(\result_reg[20]_P_n_0 ),
        .I1(\result_reg[20]_LDC_n_0 ),
        .I2(\result_reg[20]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [20]),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[21]_i_1 
       (.I0(\result_reg[21]_P_n_0 ),
        .I1(\result_reg[21]_LDC_n_0 ),
        .I2(\result_reg[21]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [21]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[22]_i_1 
       (.I0(\result_reg[22]_P_n_0 ),
        .I1(\result_reg[22]_LDC_n_0 ),
        .I2(\result_reg[22]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [22]),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[23]_i_1 
       (.I0(\result_reg[23]_P_n_0 ),
        .I1(\result_reg[23]_LDC_n_0 ),
        .I2(\result_reg[23]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [23]),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[24]_i_1 
       (.I0(\result_reg[24]_P_n_0 ),
        .I1(\result_reg[24]_LDC_n_0 ),
        .I2(\result_reg[24]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [24]),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[25]_i_1 
       (.I0(\result_reg[25]_P_n_0 ),
        .I1(\result_reg[25]_LDC_n_0 ),
        .I2(\result_reg[25]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [25]),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[26]_i_1 
       (.I0(\result_reg[26]_P_n_0 ),
        .I1(\result_reg[26]_LDC_n_0 ),
        .I2(\result_reg[26]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [26]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[27]_i_1 
       (.I0(\result_reg[27]_P_n_0 ),
        .I1(\result_reg[27]_LDC_n_0 ),
        .I2(\result_reg[27]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [27]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[28]_i_1 
       (.I0(\result_reg[28]_P_n_0 ),
        .I1(\result_reg[28]_LDC_n_0 ),
        .I2(\result_reg[28]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [28]),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[29]_i_1 
       (.I0(\result_reg[29]_P_n_0 ),
        .I1(\result_reg[29]_LDC_n_0 ),
        .I2(\result_reg[29]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [29]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[2]_i_1 
       (.I0(\result_reg[2]_P_n_0 ),
        .I1(\result_reg[2]_LDC_n_0 ),
        .I2(\result_reg[2]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[30]_i_1 
       (.I0(\result_reg[30]_P_n_0 ),
        .I1(\result_reg[30]_LDC_n_0 ),
        .I2(\result_reg[30]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [30]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[31]_i_1 
       (.I0(\result_reg[31]_P_n_0 ),
        .I1(\result_reg[31]_LDC_n_0 ),
        .I2(\result_reg[31]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [31]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[32]_i_1 
       (.I0(\result_reg[32]_P_n_0 ),
        .I1(\result_reg[32]_LDC_n_0 ),
        .I2(\result_reg[32]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [32]),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[33]_i_1 
       (.I0(\result_reg[33]_P_n_0 ),
        .I1(\result_reg[33]_LDC_n_0 ),
        .I2(\result_reg[33]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [33]),
        .O(D[33]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[34]_i_1 
       (.I0(\result_reg[34]_P_n_0 ),
        .I1(\result_reg[34]_LDC_n_0 ),
        .I2(\result_reg[34]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [34]),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[35]_i_1 
       (.I0(\result_reg[35]_P_n_0 ),
        .I1(\result_reg[35]_LDC_n_0 ),
        .I2(\result_reg[35]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [35]),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[36]_i_1 
       (.I0(\result_reg[36]_P_n_0 ),
        .I1(\result_reg[36]_LDC_n_0 ),
        .I2(\result_reg[36]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [36]),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[37]_i_1 
       (.I0(\result_reg[37]_P_n_0 ),
        .I1(\result_reg[37]_LDC_n_0 ),
        .I2(\result_reg[37]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [37]),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[38]_i_1 
       (.I0(\result_reg[38]_P_n_0 ),
        .I1(\result_reg[38]_LDC_n_0 ),
        .I2(\result_reg[38]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [38]),
        .O(D[38]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[39]_i_1 
       (.I0(\result_reg[39]_P_n_0 ),
        .I1(\result_reg[39]_LDC_n_0 ),
        .I2(\result_reg[39]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [39]),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[3]_i_1 
       (.I0(\result_reg[3]_P_n_0 ),
        .I1(\result_reg[3]_LDC_n_0 ),
        .I2(\result_reg[3]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[40]_i_1 
       (.I0(\result_reg[40]_P_n_0 ),
        .I1(\result_reg[40]_LDC_n_0 ),
        .I2(\result_reg[40]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [40]),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[41]_i_1 
       (.I0(\result_reg[41]_P_n_0 ),
        .I1(\result_reg[41]_LDC_n_0 ),
        .I2(\result_reg[41]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [41]),
        .O(D[41]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[42]_i_1 
       (.I0(\result_reg[42]_P_n_0 ),
        .I1(\result_reg[42]_LDC_n_0 ),
        .I2(\result_reg[42]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [42]),
        .O(D[42]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[43]_i_1 
       (.I0(\result_reg[43]_P_n_0 ),
        .I1(\result_reg[43]_LDC_n_0 ),
        .I2(\result_reg[43]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [43]),
        .O(D[43]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[44]_i_1 
       (.I0(\result_reg[44]_P_n_0 ),
        .I1(\result_reg[44]_LDC_n_0 ),
        .I2(\result_reg[44]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [44]),
        .O(D[44]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[45]_i_1 
       (.I0(\result_reg[45]_P_n_0 ),
        .I1(\result_reg[45]_LDC_n_0 ),
        .I2(\result_reg[45]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [45]),
        .O(D[45]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[46]_i_1 
       (.I0(\result_reg[46]_P_n_0 ),
        .I1(\result_reg[46]_LDC_n_0 ),
        .I2(\result_reg[46]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [46]),
        .O(D[46]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[47]_i_1 
       (.I0(\result_reg[47]_P_n_0 ),
        .I1(\result_reg[47]_LDC_n_0 ),
        .I2(\result_reg[47]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [47]),
        .O(D[47]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[48]_i_1 
       (.I0(\result_reg[48]_P_n_0 ),
        .I1(\result_reg[48]_LDC_n_0 ),
        .I2(\result_reg[48]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [48]),
        .O(D[48]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[49]_i_1 
       (.I0(\result_reg[49]_P_n_0 ),
        .I1(\result_reg[49]_LDC_n_0 ),
        .I2(\result_reg[49]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [49]),
        .O(D[49]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[4]_i_1 
       (.I0(\result_reg[4]_P_n_0 ),
        .I1(\result_reg[4]_LDC_n_0 ),
        .I2(\result_reg[4]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[50]_i_1 
       (.I0(\result_reg[50]_P_n_0 ),
        .I1(\result_reg[50]_LDC_n_0 ),
        .I2(\result_reg[50]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [50]),
        .O(D[50]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[51]_i_1 
       (.I0(\result_reg[51]_P_n_0 ),
        .I1(\result_reg[51]_LDC_n_0 ),
        .I2(\result_reg[51]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [51]),
        .O(D[51]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[52]_i_1 
       (.I0(\result_reg[52]_P_n_0 ),
        .I1(\result_reg[52]_LDC_n_0 ),
        .I2(\result_reg[52]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [52]),
        .O(D[52]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[53]_i_1 
       (.I0(\result_reg[53]_P_n_0 ),
        .I1(\result_reg[53]_LDC_n_0 ),
        .I2(\result_reg[53]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [53]),
        .O(D[53]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[54]_i_1 
       (.I0(\result_reg[54]_P_n_0 ),
        .I1(\result_reg[54]_LDC_n_0 ),
        .I2(\result_reg[54]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [54]),
        .O(D[54]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[55]_i_1 
       (.I0(\result_reg[55]_P_n_0 ),
        .I1(\result_reg[55]_LDC_n_0 ),
        .I2(\result_reg[55]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [55]),
        .O(D[55]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[56]_i_1 
       (.I0(\result_reg[56]_P_n_0 ),
        .I1(\result_reg[56]_LDC_n_0 ),
        .I2(\result_reg[56]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [56]),
        .O(D[56]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[57]_i_1 
       (.I0(\result_reg[57]_P_n_0 ),
        .I1(\result_reg[57]_LDC_n_0 ),
        .I2(\result_reg[57]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [57]),
        .O(D[57]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[58]_i_1 
       (.I0(\result_reg[58]_P_n_0 ),
        .I1(\result_reg[58]_LDC_n_0 ),
        .I2(\result_reg[58]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [58]),
        .O(D[58]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[59]_i_1 
       (.I0(\result_reg[59]_P_n_0 ),
        .I1(\result_reg[59]_LDC_n_0 ),
        .I2(\result_reg[59]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [59]),
        .O(D[59]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[5]_i_1 
       (.I0(\result_reg[5]_P_n_0 ),
        .I1(\result_reg[5]_LDC_n_0 ),
        .I2(\result_reg[5]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[60]_i_1 
       (.I0(\result_reg[60]_P_n_0 ),
        .I1(\result_reg[60]_LDC_n_0 ),
        .I2(\result_reg[60]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [60]),
        .O(D[60]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[61]_i_1 
       (.I0(\result_reg[61]_P_n_0 ),
        .I1(\result_reg[61]_LDC_n_0 ),
        .I2(\result_reg[61]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [61]),
        .O(D[61]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[62]_i_1 
       (.I0(\result_reg[62]_P_n_0 ),
        .I1(\result_reg[62]_LDC_n_0 ),
        .I2(\result_reg[62]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [62]),
        .O(D[62]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[63]_i_2 
       (.I0(\result_reg[63]_P_n_0 ),
        .I1(\result_reg[63]_LDC_n_0 ),
        .I2(\result_reg[63]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [63]),
        .O(D[63]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[6]_i_1 
       (.I0(\result_reg[6]_P_n_0 ),
        .I1(\result_reg[6]_LDC_n_0 ),
        .I2(\result_reg[6]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[7]_i_1 
       (.I0(\result_reg[7]_P_n_0 ),
        .I1(\result_reg[7]_LDC_n_0 ),
        .I2(\result_reg[7]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[8]_i_1 
       (.I0(\result_reg[8]_P_n_0 ),
        .I1(\result_reg[8]_LDC_n_0 ),
        .I2(\result_reg[8]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \LocalRIP[9]_i_1 
       (.I0(\result_reg[9]_P_n_0 ),
        .I1(\result_reg[9]_LDC_n_0 ),
        .I2(\result_reg[9]_C_n_0 ),
        .I3(Q),
        .I4(\LocalRIP_reg[63] [9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \resultBuf[4]_i_2 
       (.I0(\resultBuf_reg[63]_0 [1]),
        .I1(\resultBuf_reg[4]_0 ),
        .O(\resultBuf[4]_i_2_n_0 ));
  FDCE \resultBuf_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(\resultBuf_reg[63]_0 [0]),
        .Q(resultBuf[0]));
  FDCE \resultBuf_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[10]),
        .Q(resultBuf[10]));
  FDCE \resultBuf_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[11]),
        .Q(resultBuf[11]));
  FDCE \resultBuf_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[12]),
        .Q(resultBuf[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[12]_i_1 
       (.CI(\resultBuf_reg[8]_i_1_n_0 ),
        .CO({\resultBuf_reg[12]_i_1_n_0 ,\resultBuf_reg[12]_i_1_n_1 ,\resultBuf_reg[12]_i_1_n_2 ,\resultBuf_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [12:9]),
        .O(plusOp[12:9]),
        .S(\resultBuf_reg[63]_0 [12:9]));
  FDCE \resultBuf_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[13]),
        .Q(resultBuf[13]));
  FDCE \resultBuf_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[14]),
        .Q(resultBuf[14]));
  FDCE \resultBuf_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[15]),
        .Q(resultBuf[15]));
  FDCE \resultBuf_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[16]),
        .Q(resultBuf[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[16]_i_1 
       (.CI(\resultBuf_reg[12]_i_1_n_0 ),
        .CO({\resultBuf_reg[16]_i_1_n_0 ,\resultBuf_reg[16]_i_1_n_1 ,\resultBuf_reg[16]_i_1_n_2 ,\resultBuf_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [16:13]),
        .O(plusOp[16:13]),
        .S(\resultBuf_reg[63]_0 [16:13]));
  FDCE \resultBuf_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[17]),
        .Q(resultBuf[17]));
  FDCE \resultBuf_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[18]),
        .Q(resultBuf[18]));
  FDCE \resultBuf_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[19]),
        .Q(resultBuf[19]));
  FDCE \resultBuf_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[1]),
        .Q(resultBuf[1]));
  FDCE \resultBuf_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[20]),
        .Q(resultBuf[20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[20]_i_1 
       (.CI(\resultBuf_reg[16]_i_1_n_0 ),
        .CO({\resultBuf_reg[20]_i_1_n_0 ,\resultBuf_reg[20]_i_1_n_1 ,\resultBuf_reg[20]_i_1_n_2 ,\resultBuf_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [20:17]),
        .O(plusOp[20:17]),
        .S(\resultBuf_reg[63]_0 [20:17]));
  FDCE \resultBuf_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[21]),
        .Q(resultBuf[21]));
  FDCE \resultBuf_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[22]),
        .Q(resultBuf[22]));
  FDCE \resultBuf_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[23]),
        .Q(resultBuf[23]));
  FDCE \resultBuf_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[24]),
        .Q(resultBuf[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[24]_i_1 
       (.CI(\resultBuf_reg[20]_i_1_n_0 ),
        .CO({\resultBuf_reg[24]_i_1_n_0 ,\resultBuf_reg[24]_i_1_n_1 ,\resultBuf_reg[24]_i_1_n_2 ,\resultBuf_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [24:21]),
        .O(plusOp[24:21]),
        .S(\resultBuf_reg[63]_0 [24:21]));
  FDCE \resultBuf_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[25]),
        .Q(resultBuf[25]));
  FDCE \resultBuf_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[26]),
        .Q(resultBuf[26]));
  FDCE \resultBuf_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[27]),
        .Q(resultBuf[27]));
  FDCE \resultBuf_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[28]),
        .Q(resultBuf[28]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[28]_i_1 
       (.CI(\resultBuf_reg[24]_i_1_n_0 ),
        .CO({\resultBuf_reg[28]_i_1_n_0 ,\resultBuf_reg[28]_i_1_n_1 ,\resultBuf_reg[28]_i_1_n_2 ,\resultBuf_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [28:25]),
        .O(plusOp[28:25]),
        .S(\resultBuf_reg[63]_0 [28:25]));
  FDCE \resultBuf_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[29]),
        .Q(resultBuf[29]));
  FDCE \resultBuf_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[2]),
        .Q(resultBuf[2]));
  FDCE \resultBuf_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[30]),
        .Q(resultBuf[30]));
  FDCE \resultBuf_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[31]),
        .Q(resultBuf[31]));
  FDCE \resultBuf_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[32]),
        .Q(resultBuf[32]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[32]_i_1 
       (.CI(\resultBuf_reg[28]_i_1_n_0 ),
        .CO({\resultBuf_reg[32]_i_1_n_0 ,\resultBuf_reg[32]_i_1_n_1 ,\resultBuf_reg[32]_i_1_n_2 ,\resultBuf_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [32:29]),
        .O(plusOp[32:29]),
        .S(\resultBuf_reg[63]_0 [32:29]));
  FDCE \resultBuf_reg[33] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[33]),
        .Q(resultBuf[33]));
  FDCE \resultBuf_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[34]),
        .Q(resultBuf[34]));
  FDCE \resultBuf_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[35]),
        .Q(resultBuf[35]));
  FDCE \resultBuf_reg[36] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[36]),
        .Q(resultBuf[36]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[36]_i_1 
       (.CI(\resultBuf_reg[32]_i_1_n_0 ),
        .CO({\resultBuf_reg[36]_i_1_n_0 ,\resultBuf_reg[36]_i_1_n_1 ,\resultBuf_reg[36]_i_1_n_2 ,\resultBuf_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [36:33]),
        .O(plusOp[36:33]),
        .S(\resultBuf_reg[63]_0 [36:33]));
  FDCE \resultBuf_reg[37] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[37]),
        .Q(resultBuf[37]));
  FDCE \resultBuf_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[38]),
        .Q(resultBuf[38]));
  FDCE \resultBuf_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[39]),
        .Q(resultBuf[39]));
  FDCE \resultBuf_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[3]),
        .Q(resultBuf[3]));
  FDCE \resultBuf_reg[40] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[40]),
        .Q(resultBuf[40]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[40]_i_1 
       (.CI(\resultBuf_reg[36]_i_1_n_0 ),
        .CO({\resultBuf_reg[40]_i_1_n_0 ,\resultBuf_reg[40]_i_1_n_1 ,\resultBuf_reg[40]_i_1_n_2 ,\resultBuf_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [40:37]),
        .O(plusOp[40:37]),
        .S(\resultBuf_reg[63]_0 [40:37]));
  FDCE \resultBuf_reg[41] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[41]),
        .Q(resultBuf[41]));
  FDCE \resultBuf_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[42]),
        .Q(resultBuf[42]));
  FDCE \resultBuf_reg[43] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[43]),
        .Q(resultBuf[43]));
  FDCE \resultBuf_reg[44] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[44]),
        .Q(resultBuf[44]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[44]_i_1 
       (.CI(\resultBuf_reg[40]_i_1_n_0 ),
        .CO({\resultBuf_reg[44]_i_1_n_0 ,\resultBuf_reg[44]_i_1_n_1 ,\resultBuf_reg[44]_i_1_n_2 ,\resultBuf_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [44:41]),
        .O(plusOp[44:41]),
        .S(\resultBuf_reg[63]_0 [44:41]));
  FDCE \resultBuf_reg[45] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[45]),
        .Q(resultBuf[45]));
  FDCE \resultBuf_reg[46] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[46]),
        .Q(resultBuf[46]));
  FDCE \resultBuf_reg[47] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[47]),
        .Q(resultBuf[47]));
  FDCE \resultBuf_reg[48] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[48]),
        .Q(resultBuf[48]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[48]_i_1 
       (.CI(\resultBuf_reg[44]_i_1_n_0 ),
        .CO({\resultBuf_reg[48]_i_1_n_0 ,\resultBuf_reg[48]_i_1_n_1 ,\resultBuf_reg[48]_i_1_n_2 ,\resultBuf_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [48:45]),
        .O(plusOp[48:45]),
        .S(\resultBuf_reg[63]_0 [48:45]));
  FDCE \resultBuf_reg[49] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[49]),
        .Q(resultBuf[49]));
  FDCE \resultBuf_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[4]),
        .Q(resultBuf[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\resultBuf_reg[4]_i_1_n_0 ,\resultBuf_reg[4]_i_1_n_1 ,\resultBuf_reg[4]_i_1_n_2 ,\resultBuf_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [4:1]),
        .O(plusOp[4:1]),
        .S({\resultBuf_reg[63]_0 [4:2],\resultBuf[4]_i_2_n_0 }));
  FDCE \resultBuf_reg[50] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[50]),
        .Q(resultBuf[50]));
  FDCE \resultBuf_reg[51] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[51]),
        .Q(resultBuf[51]));
  FDCE \resultBuf_reg[52] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[52]),
        .Q(resultBuf[52]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[52]_i_1 
       (.CI(\resultBuf_reg[48]_i_1_n_0 ),
        .CO({\resultBuf_reg[52]_i_1_n_0 ,\resultBuf_reg[52]_i_1_n_1 ,\resultBuf_reg[52]_i_1_n_2 ,\resultBuf_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [52:49]),
        .O(plusOp[52:49]),
        .S(\resultBuf_reg[63]_0 [52:49]));
  FDCE \resultBuf_reg[53] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[53]),
        .Q(resultBuf[53]));
  FDCE \resultBuf_reg[54] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[54]),
        .Q(resultBuf[54]));
  FDCE \resultBuf_reg[55] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[55]),
        .Q(resultBuf[55]));
  FDCE \resultBuf_reg[56] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[56]),
        .Q(resultBuf[56]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[56]_i_1 
       (.CI(\resultBuf_reg[52]_i_1_n_0 ),
        .CO({\resultBuf_reg[56]_i_1_n_0 ,\resultBuf_reg[56]_i_1_n_1 ,\resultBuf_reg[56]_i_1_n_2 ,\resultBuf_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [56:53]),
        .O(plusOp[56:53]),
        .S(\resultBuf_reg[63]_0 [56:53]));
  FDCE \resultBuf_reg[57] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[57]),
        .Q(resultBuf[57]));
  FDCE \resultBuf_reg[58] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[58]),
        .Q(resultBuf[58]));
  FDCE \resultBuf_reg[59] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[59]),
        .Q(resultBuf[59]));
  FDCE \resultBuf_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[5]),
        .Q(resultBuf[5]));
  FDCE \resultBuf_reg[60] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[60]),
        .Q(resultBuf[60]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[60]_i_1 
       (.CI(\resultBuf_reg[56]_i_1_n_0 ),
        .CO({\resultBuf_reg[60]_i_1_n_0 ,\resultBuf_reg[60]_i_1_n_1 ,\resultBuf_reg[60]_i_1_n_2 ,\resultBuf_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [60:57]),
        .O(plusOp[60:57]),
        .S(\resultBuf_reg[63]_0 [60:57]));
  FDCE \resultBuf_reg[61] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[61]),
        .Q(resultBuf[61]));
  FDCE \resultBuf_reg[62] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[62]),
        .Q(resultBuf[62]));
  FDCE \resultBuf_reg[63] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[63]),
        .Q(resultBuf[63]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[63]_i_1 
       (.CI(\resultBuf_reg[60]_i_1_n_0 ),
        .CO({\NLW_resultBuf_reg[63]_i_1_CO_UNCONNECTED [3:2],\resultBuf_reg[63]_i_1_n_2 ,\resultBuf_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\resultBuf_reg[63]_0 [62:61]}),
        .O({\NLW_resultBuf_reg[63]_i_1_O_UNCONNECTED [3],plusOp[63:61]}),
        .S({1'b0,\resultBuf_reg[63]_0 [63:61]}));
  FDCE \resultBuf_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[6]),
        .Q(resultBuf[6]));
  FDCE \resultBuf_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[7]),
        .Q(resultBuf[7]));
  FDCE \resultBuf_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[8]),
        .Q(resultBuf[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \resultBuf_reg[8]_i_1 
       (.CI(\resultBuf_reg[4]_i_1_n_0 ),
        .CO({\resultBuf_reg[8]_i_1_n_0 ,\resultBuf_reg[8]_i_1_n_1 ,\resultBuf_reg[8]_i_1_n_2 ,\resultBuf_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\resultBuf_reg[63]_0 [8:5]),
        .O(plusOp[8:5]),
        .S(\resultBuf_reg[63]_0 [8:5]));
  FDCE \resultBuf_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset),
        .D(plusOp[9]),
        .Q(resultBuf[9]));
  FDCE \result_reg[0]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[0]),
        .O(\result_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[0]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[0]),
        .O(\result_reg[0]_LDC_i_2_n_0 ));
  FDPE \result_reg[0]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[0]),
        .PRE(\result_reg[0]_LDC_i_1_n_0 ),
        .Q(\result_reg[0]_P_n_0 ));
  FDCE \result_reg[10]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[10]),
        .O(\result_reg[10]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[10]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[10]),
        .O(\result_reg[10]_LDC_i_2_n_0 ));
  FDPE \result_reg[10]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[10]),
        .PRE(\result_reg[10]_LDC_i_1_n_0 ),
        .Q(\result_reg[10]_P_n_0 ));
  FDCE \result_reg[11]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[11]),
        .O(\result_reg[11]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[11]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[11]),
        .O(\result_reg[11]_LDC_i_2_n_0 ));
  FDPE \result_reg[11]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[11]),
        .PRE(\result_reg[11]_LDC_i_1_n_0 ),
        .Q(\result_reg[11]_P_n_0 ));
  FDCE \result_reg[12]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[12]),
        .O(\result_reg[12]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[12]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[12]),
        .O(\result_reg[12]_LDC_i_2_n_0 ));
  FDPE \result_reg[12]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[12]),
        .PRE(\result_reg[12]_LDC_i_1_n_0 ),
        .Q(\result_reg[12]_P_n_0 ));
  FDCE \result_reg[13]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[13]),
        .O(\result_reg[13]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[13]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[13]),
        .O(\result_reg[13]_LDC_i_2_n_0 ));
  FDPE \result_reg[13]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[13]),
        .PRE(\result_reg[13]_LDC_i_1_n_0 ),
        .Q(\result_reg[13]_P_n_0 ));
  FDCE \result_reg[14]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[14]),
        .O(\result_reg[14]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[14]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[14]),
        .O(\result_reg[14]_LDC_i_2_n_0 ));
  FDPE \result_reg[14]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[14]),
        .PRE(\result_reg[14]_LDC_i_1_n_0 ),
        .Q(\result_reg[14]_P_n_0 ));
  FDCE \result_reg[15]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[15]),
        .O(\result_reg[15]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[15]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[15]),
        .O(\result_reg[15]_LDC_i_2_n_0 ));
  FDPE \result_reg[15]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[15]),
        .PRE(\result_reg[15]_LDC_i_1_n_0 ),
        .Q(\result_reg[15]_P_n_0 ));
  FDCE \result_reg[16]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[16]),
        .O(\result_reg[16]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[16]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[16]),
        .O(\result_reg[16]_LDC_i_2_n_0 ));
  FDPE \result_reg[16]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[16]),
        .PRE(\result_reg[16]_LDC_i_1_n_0 ),
        .Q(\result_reg[16]_P_n_0 ));
  FDCE \result_reg[17]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[17]),
        .O(\result_reg[17]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[17]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[17]),
        .O(\result_reg[17]_LDC_i_2_n_0 ));
  FDPE \result_reg[17]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[17]),
        .PRE(\result_reg[17]_LDC_i_1_n_0 ),
        .Q(\result_reg[17]_P_n_0 ));
  FDCE \result_reg[18]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[18]),
        .O(\result_reg[18]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[18]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[18]),
        .O(\result_reg[18]_LDC_i_2_n_0 ));
  FDPE \result_reg[18]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[18]),
        .PRE(\result_reg[18]_LDC_i_1_n_0 ),
        .Q(\result_reg[18]_P_n_0 ));
  FDCE \result_reg[19]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[19]),
        .O(\result_reg[19]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[19]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[19]),
        .O(\result_reg[19]_LDC_i_2_n_0 ));
  FDPE \result_reg[19]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[19]),
        .PRE(\result_reg[19]_LDC_i_1_n_0 ),
        .Q(\result_reg[19]_P_n_0 ));
  FDCE \result_reg[1]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[1]),
        .O(\result_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[1]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[1]),
        .O(\result_reg[1]_LDC_i_2_n_0 ));
  FDPE \result_reg[1]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[1]),
        .PRE(\result_reg[1]_LDC_i_1_n_0 ),
        .Q(\result_reg[1]_P_n_0 ));
  FDCE \result_reg[20]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[20]),
        .O(\result_reg[20]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[20]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[20]),
        .O(\result_reg[20]_LDC_i_2_n_0 ));
  FDPE \result_reg[20]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[20]),
        .PRE(\result_reg[20]_LDC_i_1_n_0 ),
        .Q(\result_reg[20]_P_n_0 ));
  FDCE \result_reg[21]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[21]),
        .O(\result_reg[21]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[21]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[21]),
        .O(\result_reg[21]_LDC_i_2_n_0 ));
  FDPE \result_reg[21]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[21]),
        .PRE(\result_reg[21]_LDC_i_1_n_0 ),
        .Q(\result_reg[21]_P_n_0 ));
  FDCE \result_reg[22]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[22]),
        .O(\result_reg[22]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[22]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[22]),
        .O(\result_reg[22]_LDC_i_2_n_0 ));
  FDPE \result_reg[22]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[22]),
        .PRE(\result_reg[22]_LDC_i_1_n_0 ),
        .Q(\result_reg[22]_P_n_0 ));
  FDCE \result_reg[23]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[23]),
        .O(\result_reg[23]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[23]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[23]),
        .O(\result_reg[23]_LDC_i_2_n_0 ));
  FDPE \result_reg[23]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[23]),
        .PRE(\result_reg[23]_LDC_i_1_n_0 ),
        .Q(\result_reg[23]_P_n_0 ));
  FDCE \result_reg[24]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[24]),
        .O(\result_reg[24]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[24]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[24]),
        .O(\result_reg[24]_LDC_i_2_n_0 ));
  FDPE \result_reg[24]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[24]),
        .PRE(\result_reg[24]_LDC_i_1_n_0 ),
        .Q(\result_reg[24]_P_n_0 ));
  FDCE \result_reg[25]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[25]),
        .O(\result_reg[25]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[25]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[25]),
        .O(\result_reg[25]_LDC_i_2_n_0 ));
  FDPE \result_reg[25]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[25]),
        .PRE(\result_reg[25]_LDC_i_1_n_0 ),
        .Q(\result_reg[25]_P_n_0 ));
  FDCE \result_reg[26]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[26]),
        .O(\result_reg[26]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[26]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[26]),
        .O(\result_reg[26]_LDC_i_2_n_0 ));
  FDPE \result_reg[26]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[26]),
        .PRE(\result_reg[26]_LDC_i_1_n_0 ),
        .Q(\result_reg[26]_P_n_0 ));
  FDCE \result_reg[27]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[27]),
        .O(\result_reg[27]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[27]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[27]),
        .O(\result_reg[27]_LDC_i_2_n_0 ));
  FDPE \result_reg[27]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[27]),
        .PRE(\result_reg[27]_LDC_i_1_n_0 ),
        .Q(\result_reg[27]_P_n_0 ));
  FDCE \result_reg[28]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[28]),
        .O(\result_reg[28]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[28]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[28]),
        .O(\result_reg[28]_LDC_i_2_n_0 ));
  FDPE \result_reg[28]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[28]),
        .PRE(\result_reg[28]_LDC_i_1_n_0 ),
        .Q(\result_reg[28]_P_n_0 ));
  FDCE \result_reg[29]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[29]),
        .O(\result_reg[29]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[29]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[29]),
        .O(\result_reg[29]_LDC_i_2_n_0 ));
  FDPE \result_reg[29]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[29]),
        .PRE(\result_reg[29]_LDC_i_1_n_0 ),
        .Q(\result_reg[29]_P_n_0 ));
  FDCE \result_reg[2]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[2]),
        .O(\result_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[2]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[2]),
        .O(\result_reg[2]_LDC_i_2_n_0 ));
  FDPE \result_reg[2]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[2]),
        .PRE(\result_reg[2]_LDC_i_1_n_0 ),
        .Q(\result_reg[2]_P_n_0 ));
  FDCE \result_reg[30]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[30]),
        .O(\result_reg[30]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[30]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[30]),
        .O(\result_reg[30]_LDC_i_2_n_0 ));
  FDPE \result_reg[30]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[30]),
        .PRE(\result_reg[30]_LDC_i_1_n_0 ),
        .Q(\result_reg[30]_P_n_0 ));
  FDCE \result_reg[31]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[31]),
        .O(\result_reg[31]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[31]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[31]),
        .O(\result_reg[31]_LDC_i_2_n_0 ));
  FDPE \result_reg[31]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[31]),
        .PRE(\result_reg[31]_LDC_i_1_n_0 ),
        .Q(\result_reg[31]_P_n_0 ));
  FDCE \result_reg[32]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[32]),
        .O(\result_reg[32]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[32]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[32]),
        .O(\result_reg[32]_LDC_i_2_n_0 ));
  FDPE \result_reg[32]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[32]),
        .PRE(\result_reg[32]_LDC_i_1_n_0 ),
        .Q(\result_reg[32]_P_n_0 ));
  FDCE \result_reg[33]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[33]),
        .O(\result_reg[33]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[33]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[33]),
        .O(\result_reg[33]_LDC_i_2_n_0 ));
  FDPE \result_reg[33]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[33]),
        .PRE(\result_reg[33]_LDC_i_1_n_0 ),
        .Q(\result_reg[33]_P_n_0 ));
  FDCE \result_reg[34]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[34]),
        .O(\result_reg[34]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[34]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[34]),
        .O(\result_reg[34]_LDC_i_2_n_0 ));
  FDPE \result_reg[34]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[34]),
        .PRE(\result_reg[34]_LDC_i_1_n_0 ),
        .Q(\result_reg[34]_P_n_0 ));
  FDCE \result_reg[35]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[35]),
        .O(\result_reg[35]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[35]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[35]),
        .O(\result_reg[35]_LDC_i_2_n_0 ));
  FDPE \result_reg[35]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[35]),
        .PRE(\result_reg[35]_LDC_i_1_n_0 ),
        .Q(\result_reg[35]_P_n_0 ));
  FDCE \result_reg[36]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[36]),
        .O(\result_reg[36]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[36]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[36]),
        .O(\result_reg[36]_LDC_i_2_n_0 ));
  FDPE \result_reg[36]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[36]),
        .PRE(\result_reg[36]_LDC_i_1_n_0 ),
        .Q(\result_reg[36]_P_n_0 ));
  FDCE \result_reg[37]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[37]),
        .O(\result_reg[37]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[37]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[37]),
        .O(\result_reg[37]_LDC_i_2_n_0 ));
  FDPE \result_reg[37]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[37]),
        .PRE(\result_reg[37]_LDC_i_1_n_0 ),
        .Q(\result_reg[37]_P_n_0 ));
  FDCE \result_reg[38]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[38]),
        .O(\result_reg[38]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[38]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[38]),
        .O(\result_reg[38]_LDC_i_2_n_0 ));
  FDPE \result_reg[38]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[38]),
        .PRE(\result_reg[38]_LDC_i_1_n_0 ),
        .Q(\result_reg[38]_P_n_0 ));
  FDCE \result_reg[39]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[39]),
        .O(\result_reg[39]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[39]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[39]),
        .O(\result_reg[39]_LDC_i_2_n_0 ));
  FDPE \result_reg[39]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[39]),
        .PRE(\result_reg[39]_LDC_i_1_n_0 ),
        .Q(\result_reg[39]_P_n_0 ));
  FDCE \result_reg[3]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[3]),
        .O(\result_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[3]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[3]),
        .O(\result_reg[3]_LDC_i_2_n_0 ));
  FDPE \result_reg[3]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[3]),
        .PRE(\result_reg[3]_LDC_i_1_n_0 ),
        .Q(\result_reg[3]_P_n_0 ));
  FDCE \result_reg[40]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[40]),
        .O(\result_reg[40]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[40]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[40]),
        .O(\result_reg[40]_LDC_i_2_n_0 ));
  FDPE \result_reg[40]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[40]),
        .PRE(\result_reg[40]_LDC_i_1_n_0 ),
        .Q(\result_reg[40]_P_n_0 ));
  FDCE \result_reg[41]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[41]),
        .O(\result_reg[41]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[41]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[41]),
        .O(\result_reg[41]_LDC_i_2_n_0 ));
  FDPE \result_reg[41]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[41]),
        .PRE(\result_reg[41]_LDC_i_1_n_0 ),
        .Q(\result_reg[41]_P_n_0 ));
  FDCE \result_reg[42]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[42]),
        .O(\result_reg[42]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[42]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[42]),
        .O(\result_reg[42]_LDC_i_2_n_0 ));
  FDPE \result_reg[42]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[42]),
        .PRE(\result_reg[42]_LDC_i_1_n_0 ),
        .Q(\result_reg[42]_P_n_0 ));
  FDCE \result_reg[43]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[43]),
        .O(\result_reg[43]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[43]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[43]),
        .O(\result_reg[43]_LDC_i_2_n_0 ));
  FDPE \result_reg[43]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[43]),
        .PRE(\result_reg[43]_LDC_i_1_n_0 ),
        .Q(\result_reg[43]_P_n_0 ));
  FDCE \result_reg[44]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[44]),
        .O(\result_reg[44]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[44]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[44]),
        .O(\result_reg[44]_LDC_i_2_n_0 ));
  FDPE \result_reg[44]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[44]),
        .PRE(\result_reg[44]_LDC_i_1_n_0 ),
        .Q(\result_reg[44]_P_n_0 ));
  FDCE \result_reg[45]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[45]),
        .O(\result_reg[45]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[45]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[45]),
        .O(\result_reg[45]_LDC_i_2_n_0 ));
  FDPE \result_reg[45]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[45]),
        .PRE(\result_reg[45]_LDC_i_1_n_0 ),
        .Q(\result_reg[45]_P_n_0 ));
  FDCE \result_reg[46]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[46]),
        .O(\result_reg[46]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[46]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[46]),
        .O(\result_reg[46]_LDC_i_2_n_0 ));
  FDPE \result_reg[46]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[46]),
        .PRE(\result_reg[46]_LDC_i_1_n_0 ),
        .Q(\result_reg[46]_P_n_0 ));
  FDCE \result_reg[47]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[47]),
        .O(\result_reg[47]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[47]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[47]),
        .O(\result_reg[47]_LDC_i_2_n_0 ));
  FDPE \result_reg[47]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[47]),
        .PRE(\result_reg[47]_LDC_i_1_n_0 ),
        .Q(\result_reg[47]_P_n_0 ));
  FDCE \result_reg[48]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[48]),
        .O(\result_reg[48]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[48]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[48]),
        .O(\result_reg[48]_LDC_i_2_n_0 ));
  FDPE \result_reg[48]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[48]),
        .PRE(\result_reg[48]_LDC_i_1_n_0 ),
        .Q(\result_reg[48]_P_n_0 ));
  FDCE \result_reg[49]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[49]),
        .O(\result_reg[49]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[49]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[49]),
        .O(\result_reg[49]_LDC_i_2_n_0 ));
  FDPE \result_reg[49]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[49]),
        .PRE(\result_reg[49]_LDC_i_1_n_0 ),
        .Q(\result_reg[49]_P_n_0 ));
  FDCE \result_reg[4]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[4]),
        .O(\result_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[4]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[4]),
        .O(\result_reg[4]_LDC_i_2_n_0 ));
  FDPE \result_reg[4]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[4]),
        .PRE(\result_reg[4]_LDC_i_1_n_0 ),
        .Q(\result_reg[4]_P_n_0 ));
  FDCE \result_reg[50]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[50]),
        .O(\result_reg[50]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[50]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[50]),
        .O(\result_reg[50]_LDC_i_2_n_0 ));
  FDPE \result_reg[50]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[50]),
        .PRE(\result_reg[50]_LDC_i_1_n_0 ),
        .Q(\result_reg[50]_P_n_0 ));
  FDCE \result_reg[51]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[51]),
        .O(\result_reg[51]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[51]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[51]),
        .O(\result_reg[51]_LDC_i_2_n_0 ));
  FDPE \result_reg[51]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[51]),
        .PRE(\result_reg[51]_LDC_i_1_n_0 ),
        .Q(\result_reg[51]_P_n_0 ));
  FDCE \result_reg[52]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[52]),
        .O(\result_reg[52]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[52]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[52]),
        .O(\result_reg[52]_LDC_i_2_n_0 ));
  FDPE \result_reg[52]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[52]),
        .PRE(\result_reg[52]_LDC_i_1_n_0 ),
        .Q(\result_reg[52]_P_n_0 ));
  FDCE \result_reg[53]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[53]),
        .O(\result_reg[53]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[53]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[53]),
        .O(\result_reg[53]_LDC_i_2_n_0 ));
  FDPE \result_reg[53]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[53]),
        .PRE(\result_reg[53]_LDC_i_1_n_0 ),
        .Q(\result_reg[53]_P_n_0 ));
  FDCE \result_reg[54]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[54]),
        .O(\result_reg[54]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[54]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[54]),
        .O(\result_reg[54]_LDC_i_2_n_0 ));
  FDPE \result_reg[54]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[54]),
        .PRE(\result_reg[54]_LDC_i_1_n_0 ),
        .Q(\result_reg[54]_P_n_0 ));
  FDCE \result_reg[55]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[55]),
        .O(\result_reg[55]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[55]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[55]),
        .O(\result_reg[55]_LDC_i_2_n_0 ));
  FDPE \result_reg[55]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[55]),
        .PRE(\result_reg[55]_LDC_i_1_n_0 ),
        .Q(\result_reg[55]_P_n_0 ));
  FDCE \result_reg[56]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[56]),
        .O(\result_reg[56]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[56]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[56]),
        .O(\result_reg[56]_LDC_i_2_n_0 ));
  FDPE \result_reg[56]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[56]),
        .PRE(\result_reg[56]_LDC_i_1_n_0 ),
        .Q(\result_reg[56]_P_n_0 ));
  FDCE \result_reg[57]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[57]),
        .O(\result_reg[57]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[57]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[57]),
        .O(\result_reg[57]_LDC_i_2_n_0 ));
  FDPE \result_reg[57]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[57]),
        .PRE(\result_reg[57]_LDC_i_1_n_0 ),
        .Q(\result_reg[57]_P_n_0 ));
  FDCE \result_reg[58]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[58]),
        .O(\result_reg[58]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[58]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[58]),
        .O(\result_reg[58]_LDC_i_2_n_0 ));
  FDPE \result_reg[58]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[58]),
        .PRE(\result_reg[58]_LDC_i_1_n_0 ),
        .Q(\result_reg[58]_P_n_0 ));
  FDCE \result_reg[59]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[59]),
        .O(\result_reg[59]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[59]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[59]),
        .O(\result_reg[59]_LDC_i_2_n_0 ));
  FDPE \result_reg[59]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[59]),
        .PRE(\result_reg[59]_LDC_i_1_n_0 ),
        .Q(\result_reg[59]_P_n_0 ));
  FDCE \result_reg[5]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[5]),
        .O(\result_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[5]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[5]),
        .O(\result_reg[5]_LDC_i_2_n_0 ));
  FDPE \result_reg[5]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[5]),
        .PRE(\result_reg[5]_LDC_i_1_n_0 ),
        .Q(\result_reg[5]_P_n_0 ));
  FDCE \result_reg[60]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[60]),
        .O(\result_reg[60]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[60]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[60]),
        .O(\result_reg[60]_LDC_i_2_n_0 ));
  FDPE \result_reg[60]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[60]),
        .PRE(\result_reg[60]_LDC_i_1_n_0 ),
        .Q(\result_reg[60]_P_n_0 ));
  FDCE \result_reg[61]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[61]),
        .O(\result_reg[61]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[61]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[61]),
        .O(\result_reg[61]_LDC_i_2_n_0 ));
  FDPE \result_reg[61]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[61]),
        .PRE(\result_reg[61]_LDC_i_1_n_0 ),
        .Q(\result_reg[61]_P_n_0 ));
  FDCE \result_reg[62]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[62]),
        .O(\result_reg[62]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[62]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[62]),
        .O(\result_reg[62]_LDC_i_2_n_0 ));
  FDPE \result_reg[62]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[62]),
        .PRE(\result_reg[62]_LDC_i_1_n_0 ),
        .Q(\result_reg[62]_P_n_0 ));
  FDCE \result_reg[63]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[63]),
        .O(\result_reg[63]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[63]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[63]),
        .O(\result_reg[63]_LDC_i_2_n_0 ));
  FDPE \result_reg[63]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[63]),
        .PRE(\result_reg[63]_LDC_i_1_n_0 ),
        .Q(\result_reg[63]_P_n_0 ));
  FDCE \result_reg[6]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[6]),
        .O(\result_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[6]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[6]),
        .O(\result_reg[6]_LDC_i_2_n_0 ));
  FDPE \result_reg[6]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[6]),
        .PRE(\result_reg[6]_LDC_i_1_n_0 ),
        .Q(\result_reg[6]_P_n_0 ));
  FDCE \result_reg[7]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[7]),
        .O(\result_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[7]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[7]),
        .O(\result_reg[7]_LDC_i_2_n_0 ));
  FDPE \result_reg[7]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[7]),
        .PRE(\result_reg[7]_LDC_i_1_n_0 ),
        .Q(\result_reg[7]_P_n_0 ));
  FDCE \result_reg[8]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[8]),
        .O(\result_reg[8]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[8]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[8]),
        .O(\result_reg[8]_LDC_i_2_n_0 ));
  FDPE \result_reg[8]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[8]),
        .PRE(\result_reg[8]_LDC_i_1_n_0 ),
        .Q(\result_reg[8]_P_n_0 ));
  FDCE \result_reg[9]_C 
       (.C(CLK),
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
       (.I0(reset),
        .I1(resultBuf[9]),
        .O(\result_reg[9]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \result_reg[9]_LDC_i_2 
       (.I0(reset),
        .I1(resultBuf[9]),
        .O(\result_reg[9]_LDC_i_2_n_0 ));
  FDPE \result_reg[9]_P 
       (.C(CLK),
        .CE(1'b1),
        .D(resultBuf[9]),
        .PRE(\result_reg[9]_LDC_i_1_n_0 ),
        .Q(\result_reg[9]_P_n_0 ));
endmodule

(* ORIG_REF_NAME = "CPU" *) 
module Setup_CPU_0_2_CPU
   (bram_dout,
    bram_addr,
    bram_en,
    bram_we,
    bram_din,
    reset,
    clk,
    interrupt);
  output [7:0]bram_dout;
  output [12:0]bram_addr;
  output bram_en;
  output bram_we;
  input [7:0]bram_din;
  input reset;
  input clk;
  input interrupt;

  wire \Argument1[0]_i_1_n_0 ;
  wire \Argument1[10]_i_1_n_0 ;
  wire \Argument1[11]_i_1_n_0 ;
  wire \Argument1[12]_i_1_n_0 ;
  wire \Argument1[1]_i_1_n_0 ;
  wire \Argument1[2]_i_1_n_0 ;
  wire \Argument1[3]_i_1_n_0 ;
  wire \Argument1[4]_i_1_n_0 ;
  wire \Argument1[5]_i_1_n_0 ;
  wire \Argument1[6]_i_1_n_0 ;
  wire \Argument1[7]_i_1_n_0 ;
  wire \Argument1[8]_i_1_n_0 ;
  wire \Argument1[9]_i_1_n_0 ;
  wire \Argument1_reg_n_0_[0] ;
  wire \Argument1_reg_n_0_[10] ;
  wire \Argument1_reg_n_0_[11] ;
  wire \Argument1_reg_n_0_[12] ;
  wire \Argument1_reg_n_0_[1] ;
  wire \Argument1_reg_n_0_[2] ;
  wire \Argument1_reg_n_0_[3] ;
  wire \Argument1_reg_n_0_[4] ;
  wire \Argument1_reg_n_0_[5] ;
  wire \Argument1_reg_n_0_[6] ;
  wire \Argument1_reg_n_0_[7] ;
  wire \Argument1_reg_n_0_[8] ;
  wire \Argument1_reg_n_0_[9] ;
  wire Argument2;
  wire \Argument2_reg_n_0_[0] ;
  wire \Argument2_reg_n_0_[1] ;
  wire \Argument2_reg_n_0_[2] ;
  wire \Argument2_reg_n_0_[3] ;
  wire \Argument2_reg_n_0_[4] ;
  wire \Argument2_reg_n_0_[5] ;
  wire \Argument2_reg_n_0_[6] ;
  wire \Argument2_reg_n_0_[7] ;
  wire CIR;
  wire \CIR_reg_n_0_[10] ;
  wire \CIR_reg_n_0_[11] ;
  wire \CIR_reg_n_0_[12] ;
  wire \CIR_reg_n_0_[13] ;
  wire \CIR_reg_n_0_[14] ;
  wire \CIR_reg_n_0_[15] ;
  wire \CIR_reg_n_0_[9] ;
  wire ClockDivider_inst_n_0;
  wire [63:0]LocalRIP;
  wire \LocalRIP[63]_i_1_n_0 ;
  wire \LocalRIP_reg_n_0_[0] ;
  wire \LocalRIP_reg_n_0_[10] ;
  wire \LocalRIP_reg_n_0_[11] ;
  wire \LocalRIP_reg_n_0_[12] ;
  wire \LocalRIP_reg_n_0_[13] ;
  wire \LocalRIP_reg_n_0_[14] ;
  wire \LocalRIP_reg_n_0_[15] ;
  wire \LocalRIP_reg_n_0_[16] ;
  wire \LocalRIP_reg_n_0_[17] ;
  wire \LocalRIP_reg_n_0_[18] ;
  wire \LocalRIP_reg_n_0_[19] ;
  wire \LocalRIP_reg_n_0_[1] ;
  wire \LocalRIP_reg_n_0_[20] ;
  wire \LocalRIP_reg_n_0_[21] ;
  wire \LocalRIP_reg_n_0_[22] ;
  wire \LocalRIP_reg_n_0_[23] ;
  wire \LocalRIP_reg_n_0_[24] ;
  wire \LocalRIP_reg_n_0_[25] ;
  wire \LocalRIP_reg_n_0_[26] ;
  wire \LocalRIP_reg_n_0_[27] ;
  wire \LocalRIP_reg_n_0_[28] ;
  wire \LocalRIP_reg_n_0_[29] ;
  wire \LocalRIP_reg_n_0_[2] ;
  wire \LocalRIP_reg_n_0_[30] ;
  wire \LocalRIP_reg_n_0_[31] ;
  wire \LocalRIP_reg_n_0_[32] ;
  wire \LocalRIP_reg_n_0_[33] ;
  wire \LocalRIP_reg_n_0_[34] ;
  wire \LocalRIP_reg_n_0_[35] ;
  wire \LocalRIP_reg_n_0_[36] ;
  wire \LocalRIP_reg_n_0_[37] ;
  wire \LocalRIP_reg_n_0_[38] ;
  wire \LocalRIP_reg_n_0_[39] ;
  wire \LocalRIP_reg_n_0_[3] ;
  wire \LocalRIP_reg_n_0_[40] ;
  wire \LocalRIP_reg_n_0_[41] ;
  wire \LocalRIP_reg_n_0_[42] ;
  wire \LocalRIP_reg_n_0_[43] ;
  wire \LocalRIP_reg_n_0_[44] ;
  wire \LocalRIP_reg_n_0_[45] ;
  wire \LocalRIP_reg_n_0_[46] ;
  wire \LocalRIP_reg_n_0_[47] ;
  wire \LocalRIP_reg_n_0_[48] ;
  wire \LocalRIP_reg_n_0_[49] ;
  wire \LocalRIP_reg_n_0_[4] ;
  wire \LocalRIP_reg_n_0_[50] ;
  wire \LocalRIP_reg_n_0_[51] ;
  wire \LocalRIP_reg_n_0_[52] ;
  wire \LocalRIP_reg_n_0_[53] ;
  wire \LocalRIP_reg_n_0_[54] ;
  wire \LocalRIP_reg_n_0_[55] ;
  wire \LocalRIP_reg_n_0_[56] ;
  wire \LocalRIP_reg_n_0_[57] ;
  wire \LocalRIP_reg_n_0_[58] ;
  wire \LocalRIP_reg_n_0_[59] ;
  wire \LocalRIP_reg_n_0_[5] ;
  wire \LocalRIP_reg_n_0_[60] ;
  wire \LocalRIP_reg_n_0_[61] ;
  wire \LocalRIP_reg_n_0_[62] ;
  wire \LocalRIP_reg_n_0_[63] ;
  wire \LocalRIP_reg_n_0_[6] ;
  wire \LocalRIP_reg_n_0_[7] ;
  wire \LocalRIP_reg_n_0_[8] ;
  wire \LocalRIP_reg_n_0_[9] ;
  wire \Result[0]_i_1_n_0 ;
  wire \Result[10]_i_1_n_0 ;
  wire \Result[11]_i_1_n_0 ;
  wire \Result[12]_i_1_n_0 ;
  wire \Result[13]_i_1_n_0 ;
  wire \Result[14]_i_1_n_0 ;
  wire \Result[15]_i_2_n_0 ;
  wire \Result[15]_i_3_n_0 ;
  wire \Result[16]_i_1_n_0 ;
  wire \Result[17]_i_1_n_0 ;
  wire \Result[18]_i_1_n_0 ;
  wire \Result[19]_i_1_n_0 ;
  wire \Result[1]_i_1_n_0 ;
  wire \Result[20]_i_1_n_0 ;
  wire \Result[21]_i_1_n_0 ;
  wire \Result[22]_i_1_n_0 ;
  wire \Result[23]_i_2_n_0 ;
  wire \Result[23]_i_3_n_0 ;
  wire \Result[23]_i_4_n_0 ;
  wire \Result[24]_i_1_n_0 ;
  wire \Result[25]_i_1_n_0 ;
  wire \Result[26]_i_1_n_0 ;
  wire \Result[27]_i_1_n_0 ;
  wire \Result[28]_i_1_n_0 ;
  wire \Result[29]_i_1_n_0 ;
  wire \Result[2]_i_1_n_0 ;
  wire \Result[30]_i_1_n_0 ;
  wire \Result[31]_i_2_n_0 ;
  wire \Result[31]_i_3_n_0 ;
  wire \Result[32]_i_1_n_0 ;
  wire \Result[33]_i_1_n_0 ;
  wire \Result[34]_i_1_n_0 ;
  wire \Result[35]_i_1_n_0 ;
  wire \Result[36]_i_1_n_0 ;
  wire \Result[37]_i_1_n_0 ;
  wire \Result[38]_i_1_n_0 ;
  wire \Result[39]_i_2_n_0 ;
  wire \Result[39]_i_3_n_0 ;
  wire \Result[3]_i_1_n_0 ;
  wire \Result[47]_i_2_n_0 ;
  wire \Result[47]_i_3_n_0 ;
  wire \Result[48]_i_1_n_0 ;
  wire \Result[49]_i_1_n_0 ;
  wire \Result[4]_i_1_n_0 ;
  wire \Result[50]_i_1_n_0 ;
  wire \Result[51]_i_1_n_0 ;
  wire \Result[52]_i_1_n_0 ;
  wire \Result[53]_i_1_n_0 ;
  wire \Result[54]_i_1_n_0 ;
  wire \Result[55]_i_2_n_0 ;
  wire \Result[55]_i_3_n_0 ;
  wire \Result[55]_i_4_n_0 ;
  wire \Result[55]_i_5_n_0 ;
  wire \Result[56]_i_1_n_0 ;
  wire \Result[57]_i_1_n_0 ;
  wire \Result[58]_i_1_n_0 ;
  wire \Result[59]_i_1_n_0 ;
  wire \Result[5]_i_1_n_0 ;
  wire \Result[60]_i_1_n_0 ;
  wire \Result[61]_i_1_n_0 ;
  wire \Result[62]_i_1_n_0 ;
  wire \Result[63]_i_2_n_0 ;
  wire \Result[63]_i_3_n_0 ;
  wire \Result[6]_i_1_n_0 ;
  wire \Result[7]_i_2_n_0 ;
  wire \Result[7]_i_3_n_0 ;
  wire \Result[7]_i_4_n_0 ;
  wire \Result[7]_i_5_n_0 ;
  wire \Result[7]_i_6_n_0 ;
  wire \Result[7]_i_7_n_0 ;
  wire \Result[8]_i_1_n_0 ;
  wire \Result[9]_i_1_n_0 ;
  wire \Result_reg_n_0_[0] ;
  wire \Result_reg_n_0_[10] ;
  wire \Result_reg_n_0_[11] ;
  wire \Result_reg_n_0_[12] ;
  wire \Result_reg_n_0_[13] ;
  wire \Result_reg_n_0_[14] ;
  wire \Result_reg_n_0_[15] ;
  wire \Result_reg_n_0_[16] ;
  wire \Result_reg_n_0_[17] ;
  wire \Result_reg_n_0_[18] ;
  wire \Result_reg_n_0_[19] ;
  wire \Result_reg_n_0_[1] ;
  wire \Result_reg_n_0_[20] ;
  wire \Result_reg_n_0_[21] ;
  wire \Result_reg_n_0_[22] ;
  wire \Result_reg_n_0_[23] ;
  wire \Result_reg_n_0_[24] ;
  wire \Result_reg_n_0_[25] ;
  wire \Result_reg_n_0_[26] ;
  wire \Result_reg_n_0_[27] ;
  wire \Result_reg_n_0_[28] ;
  wire \Result_reg_n_0_[29] ;
  wire \Result_reg_n_0_[2] ;
  wire \Result_reg_n_0_[30] ;
  wire \Result_reg_n_0_[31] ;
  wire \Result_reg_n_0_[32] ;
  wire \Result_reg_n_0_[33] ;
  wire \Result_reg_n_0_[34] ;
  wire \Result_reg_n_0_[35] ;
  wire \Result_reg_n_0_[36] ;
  wire \Result_reg_n_0_[37] ;
  wire \Result_reg_n_0_[38] ;
  wire \Result_reg_n_0_[39] ;
  wire \Result_reg_n_0_[3] ;
  wire \Result_reg_n_0_[40] ;
  wire \Result_reg_n_0_[41] ;
  wire \Result_reg_n_0_[42] ;
  wire \Result_reg_n_0_[43] ;
  wire \Result_reg_n_0_[44] ;
  wire \Result_reg_n_0_[45] ;
  wire \Result_reg_n_0_[46] ;
  wire \Result_reg_n_0_[47] ;
  wire \Result_reg_n_0_[48] ;
  wire \Result_reg_n_0_[49] ;
  wire \Result_reg_n_0_[4] ;
  wire \Result_reg_n_0_[50] ;
  wire \Result_reg_n_0_[51] ;
  wire \Result_reg_n_0_[52] ;
  wire \Result_reg_n_0_[53] ;
  wire \Result_reg_n_0_[54] ;
  wire \Result_reg_n_0_[55] ;
  wire \Result_reg_n_0_[56] ;
  wire \Result_reg_n_0_[57] ;
  wire \Result_reg_n_0_[58] ;
  wire \Result_reg_n_0_[59] ;
  wire \Result_reg_n_0_[5] ;
  wire \Result_reg_n_0_[60] ;
  wire \Result_reg_n_0_[61] ;
  wire \Result_reg_n_0_[62] ;
  wire \Result_reg_n_0_[63] ;
  wire \Result_reg_n_0_[6] ;
  wire \Result_reg_n_0_[7] ;
  wire \Result_reg_n_0_[8] ;
  wire \Result_reg_n_0_[9] ;
  wire [63:0]alu_a;
  wire \alu_b_reg_n_0_[1] ;
  wire [12:0]bram_addr;
  wire \bram_addr[0]_i_1_n_0 ;
  wire \bram_addr[0]_i_2_n_0 ;
  wire \bram_addr[0]_i_3_n_0 ;
  wire \bram_addr[0]_i_4_n_0 ;
  wire \bram_addr[0]_i_5_n_0 ;
  wire \bram_addr[0]_i_6_n_0 ;
  wire \bram_addr[0]_i_7_n_0 ;
  wire \bram_addr[0]_i_8_n_0 ;
  wire \bram_addr[0]_i_9_n_0 ;
  wire \bram_addr[10]_i_1_n_0 ;
  wire \bram_addr[10]_i_2_n_0 ;
  wire \bram_addr[10]_i_3_n_0 ;
  wire \bram_addr[11]_i_1_n_0 ;
  wire \bram_addr[11]_i_2_n_0 ;
  wire \bram_addr[11]_i_3_n_0 ;
  wire \bram_addr[12]_i_10_n_0 ;
  wire \bram_addr[12]_i_13_n_0 ;
  wire \bram_addr[12]_i_1_n_0 ;
  wire \bram_addr[12]_i_2_n_0 ;
  wire \bram_addr[12]_i_3_n_0 ;
  wire \bram_addr[12]_i_4_n_0 ;
  wire \bram_addr[12]_i_6_n_0 ;
  wire \bram_addr[12]_i_7_n_0 ;
  wire \bram_addr[12]_i_8_n_0 ;
  wire \bram_addr[12]_i_9_n_0 ;
  wire \bram_addr[1]_i_1_n_0 ;
  wire \bram_addr[1]_i_2_n_0 ;
  wire \bram_addr[1]_i_3_n_0 ;
  wire \bram_addr[1]_i_4_n_0 ;
  wire \bram_addr[2]_i_1_n_0 ;
  wire \bram_addr[2]_i_2_n_0 ;
  wire \bram_addr[2]_i_3_n_0 ;
  wire \bram_addr[3]_i_1_n_0 ;
  wire \bram_addr[3]_i_2_n_0 ;
  wire \bram_addr[3]_i_3_n_0 ;
  wire \bram_addr[3]_i_6_n_0 ;
  wire \bram_addr[3]_i_7_n_0 ;
  wire \bram_addr[3]_i_8_n_0 ;
  wire \bram_addr[4]_i_10_n_0 ;
  wire \bram_addr[4]_i_11_n_0 ;
  wire \bram_addr[4]_i_12_n_0 ;
  wire \bram_addr[4]_i_1_n_0 ;
  wire \bram_addr[4]_i_3_n_0 ;
  wire \bram_addr[4]_i_4_n_0 ;
  wire \bram_addr[4]_i_5_n_0 ;
  wire \bram_addr[4]_i_6_n_0 ;
  wire \bram_addr[5]_i_1_n_0 ;
  wire \bram_addr[5]_i_2_n_0 ;
  wire \bram_addr[5]_i_3_n_0 ;
  wire \bram_addr[6]_i_1_n_0 ;
  wire \bram_addr[6]_i_2_n_0 ;
  wire \bram_addr[6]_i_3_n_0 ;
  wire \bram_addr[7]_i_1_n_0 ;
  wire \bram_addr[7]_i_2_n_0 ;
  wire \bram_addr[7]_i_3_n_0 ;
  wire \bram_addr[8]_i_1_n_0 ;
  wire \bram_addr[8]_i_3_n_0 ;
  wire \bram_addr[8]_i_4_n_0 ;
  wire \bram_addr[9]_i_1_n_0 ;
  wire \bram_addr[9]_i_2_n_0 ;
  wire \bram_addr[9]_i_3_n_0 ;
  wire \bram_addr_reg[11]_i_4_n_0 ;
  wire \bram_addr_reg[11]_i_4_n_1 ;
  wire \bram_addr_reg[11]_i_4_n_2 ;
  wire \bram_addr_reg[11]_i_4_n_3 ;
  wire \bram_addr_reg[11]_i_4_n_4 ;
  wire \bram_addr_reg[11]_i_4_n_5 ;
  wire \bram_addr_reg[11]_i_4_n_6 ;
  wire \bram_addr_reg[11]_i_4_n_7 ;
  wire \bram_addr_reg[11]_i_5_n_0 ;
  wire \bram_addr_reg[11]_i_5_n_1 ;
  wire \bram_addr_reg[11]_i_5_n_2 ;
  wire \bram_addr_reg[11]_i_5_n_3 ;
  wire \bram_addr_reg[11]_i_5_n_4 ;
  wire \bram_addr_reg[11]_i_5_n_5 ;
  wire \bram_addr_reg[11]_i_5_n_6 ;
  wire \bram_addr_reg[11]_i_5_n_7 ;
  wire \bram_addr_reg[12]_i_11_n_7 ;
  wire \bram_addr_reg[12]_i_12_n_1 ;
  wire \bram_addr_reg[12]_i_12_n_2 ;
  wire \bram_addr_reg[12]_i_12_n_3 ;
  wire \bram_addr_reg[12]_i_12_n_4 ;
  wire \bram_addr_reg[12]_i_12_n_5 ;
  wire \bram_addr_reg[12]_i_12_n_6 ;
  wire \bram_addr_reg[12]_i_12_n_7 ;
  wire \bram_addr_reg[12]_i_14_n_1 ;
  wire \bram_addr_reg[12]_i_14_n_2 ;
  wire \bram_addr_reg[12]_i_14_n_3 ;
  wire \bram_addr_reg[12]_i_14_n_4 ;
  wire \bram_addr_reg[12]_i_14_n_5 ;
  wire \bram_addr_reg[12]_i_14_n_6 ;
  wire \bram_addr_reg[12]_i_14_n_7 ;
  wire \bram_addr_reg[12]_i_15_n_1 ;
  wire \bram_addr_reg[12]_i_15_n_2 ;
  wire \bram_addr_reg[12]_i_15_n_3 ;
  wire \bram_addr_reg[12]_i_15_n_4 ;
  wire \bram_addr_reg[12]_i_15_n_5 ;
  wire \bram_addr_reg[12]_i_15_n_6 ;
  wire \bram_addr_reg[12]_i_15_n_7 ;
  wire \bram_addr_reg[12]_i_16_n_7 ;
  wire \bram_addr_reg[12]_i_5_n_1 ;
  wire \bram_addr_reg[12]_i_5_n_2 ;
  wire \bram_addr_reg[12]_i_5_n_3 ;
  wire \bram_addr_reg[3]_i_4_n_0 ;
  wire \bram_addr_reg[3]_i_4_n_1 ;
  wire \bram_addr_reg[3]_i_4_n_2 ;
  wire \bram_addr_reg[3]_i_4_n_3 ;
  wire \bram_addr_reg[3]_i_4_n_4 ;
  wire \bram_addr_reg[3]_i_4_n_5 ;
  wire \bram_addr_reg[3]_i_4_n_6 ;
  wire \bram_addr_reg[3]_i_4_n_7 ;
  wire \bram_addr_reg[3]_i_5_n_0 ;
  wire \bram_addr_reg[3]_i_5_n_1 ;
  wire \bram_addr_reg[3]_i_5_n_2 ;
  wire \bram_addr_reg[3]_i_5_n_3 ;
  wire \bram_addr_reg[3]_i_5_n_4 ;
  wire \bram_addr_reg[3]_i_5_n_5 ;
  wire \bram_addr_reg[3]_i_5_n_6 ;
  wire \bram_addr_reg[4]_i_2_n_0 ;
  wire \bram_addr_reg[4]_i_2_n_1 ;
  wire \bram_addr_reg[4]_i_2_n_2 ;
  wire \bram_addr_reg[4]_i_2_n_3 ;
  wire \bram_addr_reg[4]_i_7_n_0 ;
  wire \bram_addr_reg[4]_i_7_n_1 ;
  wire \bram_addr_reg[4]_i_7_n_2 ;
  wire \bram_addr_reg[4]_i_7_n_3 ;
  wire \bram_addr_reg[4]_i_7_n_4 ;
  wire \bram_addr_reg[4]_i_7_n_5 ;
  wire \bram_addr_reg[4]_i_7_n_6 ;
  wire \bram_addr_reg[4]_i_7_n_7 ;
  wire \bram_addr_reg[4]_i_8_n_0 ;
  wire \bram_addr_reg[4]_i_8_n_1 ;
  wire \bram_addr_reg[4]_i_8_n_2 ;
  wire \bram_addr_reg[4]_i_8_n_3 ;
  wire \bram_addr_reg[4]_i_8_n_4 ;
  wire \bram_addr_reg[4]_i_8_n_5 ;
  wire \bram_addr_reg[4]_i_8_n_6 ;
  wire \bram_addr_reg[4]_i_8_n_7 ;
  wire \bram_addr_reg[4]_i_9_n_0 ;
  wire \bram_addr_reg[4]_i_9_n_1 ;
  wire \bram_addr_reg[4]_i_9_n_2 ;
  wire \bram_addr_reg[4]_i_9_n_3 ;
  wire \bram_addr_reg[4]_i_9_n_4 ;
  wire \bram_addr_reg[4]_i_9_n_5 ;
  wire \bram_addr_reg[4]_i_9_n_6 ;
  wire \bram_addr_reg[7]_i_4_n_0 ;
  wire \bram_addr_reg[7]_i_4_n_1 ;
  wire \bram_addr_reg[7]_i_4_n_2 ;
  wire \bram_addr_reg[7]_i_4_n_3 ;
  wire \bram_addr_reg[7]_i_4_n_4 ;
  wire \bram_addr_reg[7]_i_4_n_5 ;
  wire \bram_addr_reg[7]_i_4_n_6 ;
  wire \bram_addr_reg[7]_i_4_n_7 ;
  wire \bram_addr_reg[7]_i_5_n_0 ;
  wire \bram_addr_reg[7]_i_5_n_1 ;
  wire \bram_addr_reg[7]_i_5_n_2 ;
  wire \bram_addr_reg[7]_i_5_n_3 ;
  wire \bram_addr_reg[7]_i_5_n_4 ;
  wire \bram_addr_reg[7]_i_5_n_5 ;
  wire \bram_addr_reg[7]_i_5_n_6 ;
  wire \bram_addr_reg[7]_i_5_n_7 ;
  wire \bram_addr_reg[8]_i_2_n_0 ;
  wire \bram_addr_reg[8]_i_2_n_1 ;
  wire \bram_addr_reg[8]_i_2_n_2 ;
  wire \bram_addr_reg[8]_i_2_n_3 ;
  wire \bram_addr_reg[8]_i_5_n_0 ;
  wire \bram_addr_reg[8]_i_5_n_1 ;
  wire \bram_addr_reg[8]_i_5_n_2 ;
  wire \bram_addr_reg[8]_i_5_n_3 ;
  wire \bram_addr_reg[8]_i_5_n_4 ;
  wire \bram_addr_reg[8]_i_5_n_5 ;
  wire \bram_addr_reg[8]_i_5_n_6 ;
  wire \bram_addr_reg[8]_i_5_n_7 ;
  wire \bram_addr_reg[8]_i_6_n_0 ;
  wire \bram_addr_reg[8]_i_6_n_1 ;
  wire \bram_addr_reg[8]_i_6_n_2 ;
  wire \bram_addr_reg[8]_i_6_n_3 ;
  wire \bram_addr_reg[8]_i_6_n_4 ;
  wire \bram_addr_reg[8]_i_6_n_5 ;
  wire \bram_addr_reg[8]_i_6_n_6 ;
  wire \bram_addr_reg[8]_i_6_n_7 ;
  wire \bram_addr_reg[8]_i_7_n_0 ;
  wire \bram_addr_reg[8]_i_7_n_1 ;
  wire \bram_addr_reg[8]_i_7_n_2 ;
  wire \bram_addr_reg[8]_i_7_n_3 ;
  wire \bram_addr_reg[8]_i_7_n_4 ;
  wire \bram_addr_reg[8]_i_7_n_5 ;
  wire \bram_addr_reg[8]_i_7_n_6 ;
  wire \bram_addr_reg[8]_i_7_n_7 ;
  wire [7:0]bram_din;
  wire [7:0]bram_dout;
  wire \bram_dout[0]_i_1_n_0 ;
  wire \bram_dout[0]_i_2_n_0 ;
  wire \bram_dout[0]_i_3_n_0 ;
  wire \bram_dout[1]_i_1_n_0 ;
  wire \bram_dout[1]_i_2_n_0 ;
  wire \bram_dout[1]_i_3_n_0 ;
  wire \bram_dout[2]_i_1_n_0 ;
  wire \bram_dout[2]_i_2_n_0 ;
  wire \bram_dout[2]_i_3_n_0 ;
  wire \bram_dout[3]_i_1_n_0 ;
  wire \bram_dout[3]_i_2_n_0 ;
  wire \bram_dout[3]_i_3_n_0 ;
  wire \bram_dout[4]_i_1_n_0 ;
  wire \bram_dout[4]_i_2_n_0 ;
  wire \bram_dout[4]_i_3_n_0 ;
  wire \bram_dout[5]_i_1_n_0 ;
  wire \bram_dout[5]_i_2_n_0 ;
  wire \bram_dout[5]_i_3_n_0 ;
  wire \bram_dout[6]_i_1_n_0 ;
  wire \bram_dout[6]_i_2_n_0 ;
  wire \bram_dout[6]_i_3_n_0 ;
  wire \bram_dout[7]_i_1_n_0 ;
  wire \bram_dout[7]_i_2_n_0 ;
  wire \bram_dout[7]_i_3_n_0 ;
  wire \bram_dout[7]_i_4_n_0 ;
  wire \bram_dout[7]_i_5_n_0 ;
  wire \bram_dout[7]_i_6_n_0 ;
  wire \bram_dout[7]_i_7_n_0 ;
  wire bram_en;
  wire bram_en_i_1_n_0;
  wire bram_en_i_2_n_0;
  wire bram_en_i_3_n_0;
  wire bram_en_i_4_n_0;
  wire bram_we;
  wire bram_we_i_1_n_0;
  wire bram_we_i_2_n_0;
  wire clk;
  wire \cycle_count[0]_i_1_n_0 ;
  wire \cycle_count[0]_i_2_n_0 ;
  wire \cycle_count[0]_i_3_n_0 ;
  wire [0:0]cycle_count_reg;
  wire [7:0]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data3;
  wire [7:0]data4;
  wire [7:0]data5;
  wire [7:0]data6;
  wire [12:2]data7;
  wire interrupt;
  wire nextState;
  wire \nextState[0]_i_1_n_0 ;
  wire \nextState[3]_i_1_n_0 ;
  wire \nextState_reg_n_0_[0] ;
  wire \nextState_reg_n_0_[3] ;
  wire \nextState_reg_n_0_[4] ;
  wire [2:0]p_0_in;
  wire [63:0]p_0_in__0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire reset;
  wire [4:0]state;
  wire [3:0]stateIndex;
  wire \stateIndex[0]_i_2_n_0 ;
  wire \stateIndex[0]_i_3_n_0 ;
  wire \stateIndex[0]_i_4_n_0 ;
  wire \stateIndex[1]_i_2_n_0 ;
  wire \stateIndex[2]_i_2_n_0 ;
  wire \stateIndex[2]_i_3_n_0 ;
  wire \stateIndex[2]_i_4_n_0 ;
  wire \stateIndex[2]_i_5_n_0 ;
  wire \stateIndex[3]_i_1_n_0 ;
  wire \stateIndex_reg_n_0_[0] ;
  wire \stateIndex_reg_n_0_[1] ;
  wire \stateIndex_reg_n_0_[2] ;
  wire \stateIndex_reg_n_0_[3] ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state[4]_i_10_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state[4]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire \state_reg_n_0_[4] ;
  wire [3:0]\NLW_bram_addr_reg[12]_i_11_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram_addr_reg[12]_i_11_O_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[12]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[12]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[12]_i_15_CO_UNCONNECTED ;
  wire [3:0]\NLW_bram_addr_reg[12]_i_16_CO_UNCONNECTED ;
  wire [3:1]\NLW_bram_addr_reg[12]_i_16_O_UNCONNECTED ;
  wire [3:3]\NLW_bram_addr_reg[12]_i_5_CO_UNCONNECTED ;
  wire [0:0]\NLW_bram_addr_reg[3]_i_5_O_UNCONNECTED ;
  wire [0:0]\NLW_bram_addr_reg[4]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_bram_addr_reg[4]_i_9_O_UNCONNECTED ;
  wire [3:3]NLW_plusOp_carry__1_CO_UNCONNECTED;

  Setup_CPU_0_2_ALU ALU_inst
       (.CLK(ClockDivider_inst_n_0),
        .D(LocalRIP),
        .\LocalRIP_reg[63] ({\Result_reg_n_0_[63] ,\Result_reg_n_0_[62] ,\Result_reg_n_0_[61] ,\Result_reg_n_0_[60] ,\Result_reg_n_0_[59] ,\Result_reg_n_0_[58] ,\Result_reg_n_0_[57] ,\Result_reg_n_0_[56] ,\Result_reg_n_0_[55] ,\Result_reg_n_0_[54] ,\Result_reg_n_0_[53] ,\Result_reg_n_0_[52] ,\Result_reg_n_0_[51] ,\Result_reg_n_0_[50] ,\Result_reg_n_0_[49] ,\Result_reg_n_0_[48] ,\Result_reg_n_0_[47] ,\Result_reg_n_0_[46] ,\Result_reg_n_0_[45] ,\Result_reg_n_0_[44] ,\Result_reg_n_0_[43] ,\Result_reg_n_0_[42] ,\Result_reg_n_0_[41] ,\Result_reg_n_0_[40] ,\Result_reg_n_0_[39] ,\Result_reg_n_0_[38] ,\Result_reg_n_0_[37] ,\Result_reg_n_0_[36] ,\Result_reg_n_0_[35] ,\Result_reg_n_0_[34] ,\Result_reg_n_0_[33] ,\Result_reg_n_0_[32] ,\Result_reg_n_0_[31] ,\Result_reg_n_0_[30] ,\Result_reg_n_0_[29] ,\Result_reg_n_0_[28] ,\Result_reg_n_0_[27] ,\Result_reg_n_0_[26] ,\Result_reg_n_0_[25] ,\Result_reg_n_0_[24] ,\Result_reg_n_0_[23] ,\Result_reg_n_0_[22] ,\Result_reg_n_0_[21] ,\Result_reg_n_0_[20] ,\Result_reg_n_0_[19] ,\Result_reg_n_0_[18] ,\Result_reg_n_0_[17] ,\Result_reg_n_0_[16] ,\Result_reg_n_0_[15] ,\Result_reg_n_0_[14] ,\Result_reg_n_0_[13] ,\Result_reg_n_0_[12] ,\Result_reg_n_0_[11] ,\Result_reg_n_0_[10] ,\Result_reg_n_0_[9] ,\Result_reg_n_0_[8] ,\Result_reg_n_0_[7] ,\Result_reg_n_0_[6] ,\Result_reg_n_0_[5] ,\Result_reg_n_0_[4] ,\Result_reg_n_0_[3] ,\Result_reg_n_0_[2] ,\Result_reg_n_0_[1] ,\Result_reg_n_0_[0] }),
        .Q(\state_reg_n_0_[1] ),
        .reset(reset),
        .\resultBuf_reg[4]_0 (\alu_b_reg_n_0_[1] ),
        .\resultBuf_reg[63]_0 (alu_a));
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[0]_i_1 
       (.I0(\Result_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[10]_i_1 
       (.I0(\Result_reg_n_0_[10] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[11]_i_1 
       (.I0(\Result_reg_n_0_[11] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[12]_i_1 
       (.I0(\Result_reg_n_0_[12] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[1]_i_1 
       (.I0(\Result_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[2]_i_1 
       (.I0(\Result_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[3]_i_1 
       (.I0(\Result_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Argument1[4]_i_1 
       (.I0(\Result_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\Argument1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Argument1[5]_i_1 
       (.I0(\Result_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\Argument1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Argument1[6]_i_1 
       (.I0(\Result_reg_n_0_[6] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\Argument1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[7]_i_1 
       (.I0(\Result_reg_n_0_[7] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[8]_i_1 
       (.I0(\Result_reg_n_0_[8] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Argument1[9]_i_1 
       (.I0(\Result_reg_n_0_[9] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\Argument1[9]_i_1_n_0 ));
  FDCE \Argument1_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[0]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[0] ));
  FDCE \Argument1_reg[10] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[10]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[10] ));
  FDCE \Argument1_reg[11] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[11]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[11] ));
  FDCE \Argument1_reg[12] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[12]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[12] ));
  FDCE \Argument1_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[1]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[1] ));
  FDCE \Argument1_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[2]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[2] ));
  FDCE \Argument1_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[3]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[3] ));
  FDCE \Argument1_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[4]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[4] ));
  FDCE \Argument1_reg[5] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[5]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[5] ));
  FDCE \Argument1_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[6]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[6] ));
  FDCE \Argument1_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[7]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[7] ));
  FDCE \Argument1_reg[8] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[8]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[8] ));
  FDCE \Argument1_reg[9] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\Argument1[9]_i_1_n_0 ),
        .Q(\Argument1_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \Argument2[63]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(cycle_count_reg),
        .O(Argument2));
  FDCE \Argument2_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[0] ),
        .Q(\Argument2_reg_n_0_[0] ));
  FDCE \Argument2_reg[10] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[10] ),
        .Q(data6[2]));
  FDCE \Argument2_reg[11] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[11] ),
        .Q(data6[3]));
  FDCE \Argument2_reg[12] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[12] ),
        .Q(data6[4]));
  FDCE \Argument2_reg[13] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[13] ),
        .Q(data6[5]));
  FDCE \Argument2_reg[14] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[14] ),
        .Q(data6[6]));
  FDCE \Argument2_reg[15] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[15] ),
        .Q(data6[7]));
  FDCE \Argument2_reg[16] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[16] ),
        .Q(data5[0]));
  FDCE \Argument2_reg[17] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[17] ),
        .Q(data5[1]));
  FDCE \Argument2_reg[18] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[18] ),
        .Q(data5[2]));
  FDCE \Argument2_reg[19] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[19] ),
        .Q(data5[3]));
  FDCE \Argument2_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[1] ),
        .Q(\Argument2_reg_n_0_[1] ));
  FDCE \Argument2_reg[20] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[20] ),
        .Q(data5[4]));
  FDCE \Argument2_reg[21] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[21] ),
        .Q(data5[5]));
  FDCE \Argument2_reg[22] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[22] ),
        .Q(data5[6]));
  FDCE \Argument2_reg[23] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[23] ),
        .Q(data5[7]));
  FDCE \Argument2_reg[24] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[24] ),
        .Q(data4[0]));
  FDCE \Argument2_reg[25] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[25] ),
        .Q(data4[1]));
  FDCE \Argument2_reg[26] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[26] ),
        .Q(data4[2]));
  FDCE \Argument2_reg[27] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[27] ),
        .Q(data4[3]));
  FDCE \Argument2_reg[28] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[28] ),
        .Q(data4[4]));
  FDCE \Argument2_reg[29] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[29] ),
        .Q(data4[5]));
  FDCE \Argument2_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[2] ),
        .Q(\Argument2_reg_n_0_[2] ));
  FDCE \Argument2_reg[30] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[30] ),
        .Q(data4[6]));
  FDCE \Argument2_reg[31] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[31] ),
        .Q(data4[7]));
  FDCE \Argument2_reg[32] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[32] ),
        .Q(data3[0]));
  FDCE \Argument2_reg[33] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[33] ),
        .Q(data3[1]));
  FDCE \Argument2_reg[34] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[34] ),
        .Q(data3[2]));
  FDCE \Argument2_reg[35] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[35] ),
        .Q(data3[3]));
  FDCE \Argument2_reg[36] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[36] ),
        .Q(data3[4]));
  FDCE \Argument2_reg[37] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[37] ),
        .Q(data3[5]));
  FDCE \Argument2_reg[38] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[38] ),
        .Q(data3[6]));
  FDCE \Argument2_reg[39] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[39] ),
        .Q(data3[7]));
  FDCE \Argument2_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[3] ),
        .Q(\Argument2_reg_n_0_[3] ));
  FDCE \Argument2_reg[40] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[40] ),
        .Q(data2[0]));
  FDCE \Argument2_reg[41] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[41] ),
        .Q(data2[1]));
  FDCE \Argument2_reg[42] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[42] ),
        .Q(data2[2]));
  FDCE \Argument2_reg[43] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[43] ),
        .Q(data2[3]));
  FDCE \Argument2_reg[44] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[44] ),
        .Q(data2[4]));
  FDCE \Argument2_reg[45] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[45] ),
        .Q(data2[5]));
  FDCE \Argument2_reg[46] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[46] ),
        .Q(data2[6]));
  FDCE \Argument2_reg[47] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[47] ),
        .Q(data2[7]));
  FDCE \Argument2_reg[48] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[48] ),
        .Q(data1[0]));
  FDCE \Argument2_reg[49] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[49] ),
        .Q(data1[1]));
  FDCE \Argument2_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[4] ),
        .Q(\Argument2_reg_n_0_[4] ));
  FDCE \Argument2_reg[50] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[50] ),
        .Q(data1[2]));
  FDCE \Argument2_reg[51] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[51] ),
        .Q(data1[3]));
  FDCE \Argument2_reg[52] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[52] ),
        .Q(data1[4]));
  FDCE \Argument2_reg[53] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[53] ),
        .Q(data1[5]));
  FDCE \Argument2_reg[54] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[54] ),
        .Q(data1[6]));
  FDCE \Argument2_reg[55] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[55] ),
        .Q(data1[7]));
  FDCE \Argument2_reg[56] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[56] ),
        .Q(data0[0]));
  FDCE \Argument2_reg[57] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[57] ),
        .Q(data0[1]));
  FDCE \Argument2_reg[58] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[58] ),
        .Q(data0[2]));
  FDCE \Argument2_reg[59] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[59] ),
        .Q(data0[3]));
  FDCE \Argument2_reg[5] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[5] ),
        .Q(\Argument2_reg_n_0_[5] ));
  FDCE \Argument2_reg[60] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[60] ),
        .Q(data0[4]));
  FDCE \Argument2_reg[61] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[61] ),
        .Q(data0[5]));
  FDCE \Argument2_reg[62] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[62] ),
        .Q(data0[6]));
  FDCE \Argument2_reg[63] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[63] ),
        .Q(data0[7]));
  FDCE \Argument2_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[6] ),
        .Q(\Argument2_reg_n_0_[6] ));
  FDCE \Argument2_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[7] ),
        .Q(\Argument2_reg_n_0_[7] ));
  FDCE \Argument2_reg[8] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[8] ),
        .Q(data6[0]));
  FDCE \Argument2_reg[9] 
       (.C(ClockDivider_inst_n_0),
        .CE(Argument2),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[9] ),
        .Q(data6[1]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \CIR[15]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(cycle_count_reg),
        .O(CIR));
  FDCE \CIR_reg[10] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[10] ),
        .Q(\CIR_reg_n_0_[10] ));
  FDCE \CIR_reg[11] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[11] ),
        .Q(\CIR_reg_n_0_[11] ));
  FDCE \CIR_reg[12] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[12] ),
        .Q(\CIR_reg_n_0_[12] ));
  FDCE \CIR_reg[13] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[13] ),
        .Q(\CIR_reg_n_0_[13] ));
  FDCE \CIR_reg[14] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[14] ),
        .Q(\CIR_reg_n_0_[14] ));
  FDCE \CIR_reg[15] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[15] ),
        .Q(\CIR_reg_n_0_[15] ));
  FDCE \CIR_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[6] ),
        .Q(p_0_in[0]));
  FDCE \CIR_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[7] ),
        .Q(p_0_in[1]));
  FDCE \CIR_reg[8] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[8] ),
        .Q(p_0_in[2]));
  FDCE \CIR_reg[9] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\Result_reg_n_0_[9] ),
        .Q(\CIR_reg_n_0_[9] ));
  Setup_CPU_0_2_ClockDivider ClockDivider_inst
       (.CLK(ClockDivider_inst_n_0),
        .clk(clk),
        .reset(reset));
  LUT6 #(
    .INIT(64'h0000000000000220)) 
    \LocalRIP[63]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(cycle_count_reg),
        .O(\LocalRIP[63]_i_1_n_0 ));
  FDCE \LocalRIP_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[0]),
        .Q(\LocalRIP_reg_n_0_[0] ));
  FDCE \LocalRIP_reg[10] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[10]),
        .Q(\LocalRIP_reg_n_0_[10] ));
  FDCE \LocalRIP_reg[11] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[11]),
        .Q(\LocalRIP_reg_n_0_[11] ));
  FDCE \LocalRIP_reg[12] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[12]),
        .Q(\LocalRIP_reg_n_0_[12] ));
  FDCE \LocalRIP_reg[13] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[13]),
        .Q(\LocalRIP_reg_n_0_[13] ));
  FDCE \LocalRIP_reg[14] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[14]),
        .Q(\LocalRIP_reg_n_0_[14] ));
  FDCE \LocalRIP_reg[15] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[15]),
        .Q(\LocalRIP_reg_n_0_[15] ));
  FDCE \LocalRIP_reg[16] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[16]),
        .Q(\LocalRIP_reg_n_0_[16] ));
  FDCE \LocalRIP_reg[17] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[17]),
        .Q(\LocalRIP_reg_n_0_[17] ));
  FDCE \LocalRIP_reg[18] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[18]),
        .Q(\LocalRIP_reg_n_0_[18] ));
  FDCE \LocalRIP_reg[19] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[19]),
        .Q(\LocalRIP_reg_n_0_[19] ));
  FDCE \LocalRIP_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[1]),
        .Q(\LocalRIP_reg_n_0_[1] ));
  FDCE \LocalRIP_reg[20] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[20]),
        .Q(\LocalRIP_reg_n_0_[20] ));
  FDCE \LocalRIP_reg[21] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[21]),
        .Q(\LocalRIP_reg_n_0_[21] ));
  FDCE \LocalRIP_reg[22] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[22]),
        .Q(\LocalRIP_reg_n_0_[22] ));
  FDCE \LocalRIP_reg[23] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[23]),
        .Q(\LocalRIP_reg_n_0_[23] ));
  FDCE \LocalRIP_reg[24] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[24]),
        .Q(\LocalRIP_reg_n_0_[24] ));
  FDCE \LocalRIP_reg[25] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[25]),
        .Q(\LocalRIP_reg_n_0_[25] ));
  FDCE \LocalRIP_reg[26] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[26]),
        .Q(\LocalRIP_reg_n_0_[26] ));
  FDCE \LocalRIP_reg[27] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[27]),
        .Q(\LocalRIP_reg_n_0_[27] ));
  FDCE \LocalRIP_reg[28] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[28]),
        .Q(\LocalRIP_reg_n_0_[28] ));
  FDCE \LocalRIP_reg[29] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[29]),
        .Q(\LocalRIP_reg_n_0_[29] ));
  FDCE \LocalRIP_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[2]),
        .Q(\LocalRIP_reg_n_0_[2] ));
  FDCE \LocalRIP_reg[30] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[30]),
        .Q(\LocalRIP_reg_n_0_[30] ));
  FDCE \LocalRIP_reg[31] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[31]),
        .Q(\LocalRIP_reg_n_0_[31] ));
  FDCE \LocalRIP_reg[32] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[32]),
        .Q(\LocalRIP_reg_n_0_[32] ));
  FDCE \LocalRIP_reg[33] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[33]),
        .Q(\LocalRIP_reg_n_0_[33] ));
  FDCE \LocalRIP_reg[34] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[34]),
        .Q(\LocalRIP_reg_n_0_[34] ));
  FDCE \LocalRIP_reg[35] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[35]),
        .Q(\LocalRIP_reg_n_0_[35] ));
  FDCE \LocalRIP_reg[36] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[36]),
        .Q(\LocalRIP_reg_n_0_[36] ));
  FDCE \LocalRIP_reg[37] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[37]),
        .Q(\LocalRIP_reg_n_0_[37] ));
  FDCE \LocalRIP_reg[38] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[38]),
        .Q(\LocalRIP_reg_n_0_[38] ));
  FDCE \LocalRIP_reg[39] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[39]),
        .Q(\LocalRIP_reg_n_0_[39] ));
  FDCE \LocalRIP_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[3]),
        .Q(\LocalRIP_reg_n_0_[3] ));
  FDCE \LocalRIP_reg[40] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[40]),
        .Q(\LocalRIP_reg_n_0_[40] ));
  FDCE \LocalRIP_reg[41] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[41]),
        .Q(\LocalRIP_reg_n_0_[41] ));
  FDCE \LocalRIP_reg[42] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[42]),
        .Q(\LocalRIP_reg_n_0_[42] ));
  FDCE \LocalRIP_reg[43] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[43]),
        .Q(\LocalRIP_reg_n_0_[43] ));
  FDCE \LocalRIP_reg[44] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[44]),
        .Q(\LocalRIP_reg_n_0_[44] ));
  FDCE \LocalRIP_reg[45] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[45]),
        .Q(\LocalRIP_reg_n_0_[45] ));
  FDCE \LocalRIP_reg[46] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[46]),
        .Q(\LocalRIP_reg_n_0_[46] ));
  FDCE \LocalRIP_reg[47] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[47]),
        .Q(\LocalRIP_reg_n_0_[47] ));
  FDCE \LocalRIP_reg[48] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[48]),
        .Q(\LocalRIP_reg_n_0_[48] ));
  FDCE \LocalRIP_reg[49] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[49]),
        .Q(\LocalRIP_reg_n_0_[49] ));
  FDCE \LocalRIP_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[4]),
        .Q(\LocalRIP_reg_n_0_[4] ));
  FDCE \LocalRIP_reg[50] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[50]),
        .Q(\LocalRIP_reg_n_0_[50] ));
  FDCE \LocalRIP_reg[51] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[51]),
        .Q(\LocalRIP_reg_n_0_[51] ));
  FDCE \LocalRIP_reg[52] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[52]),
        .Q(\LocalRIP_reg_n_0_[52] ));
  FDCE \LocalRIP_reg[53] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[53]),
        .Q(\LocalRIP_reg_n_0_[53] ));
  FDCE \LocalRIP_reg[54] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[54]),
        .Q(\LocalRIP_reg_n_0_[54] ));
  FDCE \LocalRIP_reg[55] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[55]),
        .Q(\LocalRIP_reg_n_0_[55] ));
  FDCE \LocalRIP_reg[56] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[56]),
        .Q(\LocalRIP_reg_n_0_[56] ));
  FDCE \LocalRIP_reg[57] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[57]),
        .Q(\LocalRIP_reg_n_0_[57] ));
  FDCE \LocalRIP_reg[58] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[58]),
        .Q(\LocalRIP_reg_n_0_[58] ));
  FDCE \LocalRIP_reg[59] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[59]),
        .Q(\LocalRIP_reg_n_0_[59] ));
  FDCE \LocalRIP_reg[5] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[5]),
        .Q(\LocalRIP_reg_n_0_[5] ));
  FDCE \LocalRIP_reg[60] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[60]),
        .Q(\LocalRIP_reg_n_0_[60] ));
  FDCE \LocalRIP_reg[61] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[61]),
        .Q(\LocalRIP_reg_n_0_[61] ));
  FDCE \LocalRIP_reg[62] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[62]),
        .Q(\LocalRIP_reg_n_0_[62] ));
  FDCE \LocalRIP_reg[63] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[63]),
        .Q(\LocalRIP_reg_n_0_[63] ));
  FDCE \LocalRIP_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[6]),
        .Q(\LocalRIP_reg_n_0_[6] ));
  FDCE \LocalRIP_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[7]),
        .Q(\LocalRIP_reg_n_0_[7] ));
  FDCE \LocalRIP_reg[8] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[8]),
        .Q(\LocalRIP_reg_n_0_[8] ));
  FDCE \LocalRIP_reg[9] 
       (.C(ClockDivider_inst_n_0),
        .CE(\LocalRIP[63]_i_1_n_0 ),
        .CLR(reset),
        .D(LocalRIP[9]),
        .Q(\LocalRIP_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[0]_i_1 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[0]),
        .O(\Result[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[10]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[2]),
        .O(\Result[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[11]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[3]),
        .O(\Result[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[12]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[4]),
        .O(\Result[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[13]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[5]),
        .O(\Result[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[14]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[6]),
        .O(\Result[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20080000)) 
    \Result[15]_i_1 
       (.I0(\bram_dout[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\bram_dout[7]_i_5_n_0 ),
        .I5(\Result[15]_i_3_n_0 ),
        .O(p_0_in__0[12]));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[15]_i_2 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[7]),
        .O(\Result[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAA00C0AA0000)) 
    \Result[15]_i_3 
       (.I0(\Result[7]_i_3_n_0 ),
        .I1(\Result[47]_i_3_n_0 ),
        .I2(\stateIndex_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\Result[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[16]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[0]),
        .O(\Result[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[17]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[1]),
        .O(\Result[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[18]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[2]),
        .O(\Result[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[19]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[3]),
        .O(\Result[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[1]_i_1 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[1]),
        .O(\Result[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[20]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[4]),
        .O(\Result[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[21]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[5]),
        .O(\Result[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[22]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[6]),
        .O(\Result[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20080000)) 
    \Result[23]_i_1 
       (.I0(\bram_dout[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\bram_dout[7]_i_4_n_0 ),
        .I5(\Result[23]_i_3_n_0 ),
        .O(p_0_in__0[23]));
  LUT6 #(
    .INIT(64'h8F83838300000000)) 
    \Result[23]_i_2 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(bram_din[7]),
        .O(\Result[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AA0A0CA0A0000)) 
    \Result[23]_i_3 
       (.I0(\Result[7]_i_3_n_0 ),
        .I1(\Result[47]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\Result[23]_i_4_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\Result[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Result[23]_i_4 
       (.I0(\stateIndex_reg_n_0_[0] ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .O(\Result[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[24]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[0]),
        .O(\Result[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[25]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[1]),
        .O(\Result[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[26]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[2]),
        .O(\Result[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[27]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[3]),
        .O(\Result[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[28]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[4]),
        .O(\Result[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[29]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[5]),
        .O(\Result[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[2]_i_1 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[2]),
        .O(\Result[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[30]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[6]),
        .O(\Result[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4278000000000000)) 
    \Result[31]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\stateIndex_reg_n_0_[2] ),
        .I4(\Result[31]_i_3_n_0 ),
        .I5(\bram_dout[7]_i_3_n_0 ),
        .O(p_0_in__0[31]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8F830000)) 
    \Result[31]_i_2 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(bram_din[7]),
        .O(\Result[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Result[31]_i_3 
       (.I0(\stateIndex_reg_n_0_[0] ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .O(\Result[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[32]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[0]),
        .O(\Result[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[33]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[1]),
        .O(\Result[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[34]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[2]),
        .O(\Result[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[35]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[3]),
        .O(\Result[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[36]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[4]),
        .O(\Result[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[37]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[5]),
        .O(\Result[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[38]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[6]),
        .O(\Result[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C8088C008808800)) 
    \Result[39]_i_1 
       (.I0(\Result[63]_i_3_n_0 ),
        .I1(\bram_dout[7]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\Result[39]_i_3_n_0 ),
        .O(p_0_in__0[39]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[39]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(bram_din[7]),
        .O(\Result[39]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \Result[39]_i_3 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .O(\Result[39]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[3]_i_1 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[3]),
        .O(\Result[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \Result[47]_i_1 
       (.I0(\bram_dout[7]_i_3_n_0 ),
        .I1(\stateIndex[2]_i_4_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\Result[47]_i_2_n_0 ),
        .O(p_0_in__0[47]));
  LUT6 #(
    .INIT(64'h08FFF00008000000)) 
    \Result[47]_i_2 
       (.I0(\Result[47]_i_3_n_0 ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\Result[7]_i_3_n_0 ),
        .O(\Result[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \Result[47]_i_3 
       (.I0(cycle_count_reg),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\stateIndex_reg_n_0_[3] ),
        .I4(\stateIndex_reg_n_0_[2] ),
        .O(\Result[47]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[48]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[0]),
        .O(\Result[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[49]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[1]),
        .O(\Result[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[4]_i_1 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[4]),
        .O(\Result[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[50]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[2]),
        .O(\Result[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[51]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[3]),
        .O(\Result[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[52]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[4]),
        .O(\Result[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[53]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[5]),
        .O(\Result[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[54]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[6]),
        .O(\Result[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8FFF8F0F0F0F0)) 
    \Result[55]_i_1 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(\Result[55]_i_3_n_0 ),
        .I2(\Result[55]_i_4_n_0 ),
        .I3(\Result[55]_i_5_n_0 ),
        .I4(\stateIndex_reg_n_0_[2] ),
        .I5(\bram_dout[7]_i_3_n_0 ),
        .O(p_0_in__0[55]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h9100)) 
    \Result[55]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(bram_din[7]),
        .O(\Result[55]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Result[55]_i_3 
       (.I0(\stateIndex_reg_n_0_[0] ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .O(\Result[55]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08800080)) 
    \Result[55]_i_4 
       (.I0(\bram_dout[7]_i_3_n_0 ),
        .I1(\Result[63]_i_3_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\Result[55]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00280000)) 
    \Result[55]_i_5 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .I2(\stateIndex_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\Result[55]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[56]_i_1 
       (.I0(bram_din[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[57]_i_1 
       (.I0(bram_din[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[58]_i_1 
       (.I0(bram_din[2]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[59]_i_1 
       (.I0(bram_din[3]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[5]_i_1 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[5]),
        .O(\Result[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[60]_i_1 
       (.I0(bram_din[4]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[61]_i_1 
       (.I0(bram_din[5]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[62]_i_1 
       (.I0(bram_din[6]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6E000000)) 
    \Result[63]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\bram_dout[7]_i_3_n_0 ),
        .I4(\Result[63]_i_3_n_0 ),
        .O(p_0_in__0[63]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \Result[63]_i_2 
       (.I0(bram_din[7]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\Result[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Result[63]_i_3 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .O(\Result[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[6]_i_1 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[6]),
        .O(\Result[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2800)) 
    \Result[7]_i_1 
       (.I0(\Result[7]_i_3_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\Result[7]_i_4_n_0 ),
        .I5(\Result[7]_i_5_n_0 ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Result[7]_i_2 
       (.I0(\Result[7]_i_6_n_0 ),
        .I1(bram_din[7]),
        .O(\Result[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Result[7]_i_3 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(\bram_dout[7]_i_3_n_0 ),
        .O(\Result[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAAAA)) 
    \Result[7]_i_4 
       (.I0(\Result[7]_i_7_n_0 ),
        .I1(bram_en_i_2_n_0),
        .I2(\stateIndex[0]_i_4_n_0 ),
        .I3(\nextState[0]_i_1_n_0 ),
        .I4(\stateIndex_reg_n_0_[3] ),
        .I5(cycle_count_reg),
        .O(\Result[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000044000000000)) 
    \Result[7]_i_5 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\bram_addr[0]_i_7_n_0 ),
        .I5(\bram_dout[7]_i_3_n_0 ),
        .O(\Result[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E2FFFFFFFF)) 
    \Result[7]_i_6 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\Result[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001400000000)) 
    \Result[7]_i_7 
       (.I0(\bram_addr[0]_i_7_n_0 ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .I2(\stateIndex_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[2] ),
        .I5(\bram_dout[7]_i_3_n_0 ),
        .O(\Result[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[8]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[0]),
        .O(\Result[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F838F00000000)) 
    \Result[9]_i_1 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_din[1]),
        .O(\Result[9]_i_1_n_0 ));
  FDCE \Result_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[0]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[0] ));
  FDCE \Result_reg[10] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[10]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[10] ));
  FDCE \Result_reg[11] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[11]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[11] ));
  FDCE \Result_reg[12] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[12]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[12] ));
  FDCE \Result_reg[13] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[13]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[13] ));
  FDCE \Result_reg[14] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[14]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[14] ));
  FDCE \Result_reg[15] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[15]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[15] ));
  FDCE \Result_reg[16] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[16]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[16] ));
  FDCE \Result_reg[17] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[17]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[17] ));
  FDCE \Result_reg[18] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[18]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[18] ));
  FDCE \Result_reg[19] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[19]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[19] ));
  FDCE \Result_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[1]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[1] ));
  FDCE \Result_reg[20] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[20]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[20] ));
  FDCE \Result_reg[21] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[21]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[21] ));
  FDCE \Result_reg[22] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[22]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[22] ));
  FDCE \Result_reg[23] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[23]),
        .CLR(reset),
        .D(\Result[23]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[23] ));
  FDCE \Result_reg[24] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[24]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[24] ));
  FDCE \Result_reg[25] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[25]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[25] ));
  FDCE \Result_reg[26] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[26]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[26] ));
  FDCE \Result_reg[27] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[27]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[27] ));
  FDCE \Result_reg[28] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[28]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[28] ));
  FDCE \Result_reg[29] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[29]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[29] ));
  FDCE \Result_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[2]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[2] ));
  FDCE \Result_reg[30] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[30]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[30] ));
  FDCE \Result_reg[31] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[31]),
        .CLR(reset),
        .D(\Result[31]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[31] ));
  FDCE \Result_reg[32] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[32]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[32] ));
  FDCE \Result_reg[33] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[33]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[33] ));
  FDCE \Result_reg[34] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[34]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[34] ));
  FDCE \Result_reg[35] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[35]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[35] ));
  FDCE \Result_reg[36] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[36]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[36] ));
  FDCE \Result_reg[37] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[37]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[37] ));
  FDCE \Result_reg[38] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[38]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[38] ));
  FDCE \Result_reg[39] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[39]),
        .CLR(reset),
        .D(\Result[39]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[39] ));
  FDCE \Result_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[3]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[3] ));
  FDCE \Result_reg[40] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[48]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[40] ));
  FDCE \Result_reg[41] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[49]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[41] ));
  FDCE \Result_reg[42] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[50]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[42] ));
  FDCE \Result_reg[43] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[51]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[43] ));
  FDCE \Result_reg[44] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[52]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[44] ));
  FDCE \Result_reg[45] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[53]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[45] ));
  FDCE \Result_reg[46] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[54]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[46] ));
  FDCE \Result_reg[47] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[47]),
        .CLR(reset),
        .D(\Result[55]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[47] ));
  FDCE \Result_reg[48] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[48]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[48] ));
  FDCE \Result_reg[49] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[49]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[49] ));
  FDCE \Result_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[4]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[4] ));
  FDCE \Result_reg[50] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[50]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[50] ));
  FDCE \Result_reg[51] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[51]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[51] ));
  FDCE \Result_reg[52] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[52]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[52] ));
  FDCE \Result_reg[53] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[53]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[53] ));
  FDCE \Result_reg[54] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[54]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[54] ));
  FDCE \Result_reg[55] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[55]),
        .CLR(reset),
        .D(\Result[55]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[55] ));
  FDCE \Result_reg[56] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[56]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[56] ));
  FDCE \Result_reg[57] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[57]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[57] ));
  FDCE \Result_reg[58] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[58]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[58] ));
  FDCE \Result_reg[59] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[59]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[59] ));
  FDCE \Result_reg[5] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[5]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[5] ));
  FDCE \Result_reg[60] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[60]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[60] ));
  FDCE \Result_reg[61] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[61]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[61] ));
  FDCE \Result_reg[62] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[62]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[62] ));
  FDCE \Result_reg[63] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[63]),
        .CLR(reset),
        .D(\Result[63]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[63] ));
  FDCE \Result_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[6]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[6] ));
  FDCE \Result_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[0]),
        .CLR(reset),
        .D(\Result[7]_i_2_n_0 ),
        .Q(\Result_reg_n_0_[7] ));
  FDCE \Result_reg[8] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[8]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[8] ));
  FDCE \Result_reg[9] 
       (.C(ClockDivider_inst_n_0),
        .CE(p_0_in__0[12]),
        .CLR(reset),
        .D(\Result[9]_i_1_n_0 ),
        .Q(\Result_reg_n_0_[9] ));
  FDCE \alu_a_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[0] ),
        .Q(alu_a[0]));
  FDCE \alu_a_reg[10] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[10] ),
        .Q(alu_a[10]));
  FDCE \alu_a_reg[11] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[11] ),
        .Q(alu_a[11]));
  FDCE \alu_a_reg[12] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[12] ),
        .Q(alu_a[12]));
  FDCE \alu_a_reg[13] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[13] ),
        .Q(alu_a[13]));
  FDCE \alu_a_reg[14] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[14] ),
        .Q(alu_a[14]));
  FDCE \alu_a_reg[15] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[15] ),
        .Q(alu_a[15]));
  FDCE \alu_a_reg[16] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[16] ),
        .Q(alu_a[16]));
  FDCE \alu_a_reg[17] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[17] ),
        .Q(alu_a[17]));
  FDCE \alu_a_reg[18] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[18] ),
        .Q(alu_a[18]));
  FDCE \alu_a_reg[19] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[19] ),
        .Q(alu_a[19]));
  FDCE \alu_a_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[1] ),
        .Q(alu_a[1]));
  FDCE \alu_a_reg[20] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[20] ),
        .Q(alu_a[20]));
  FDCE \alu_a_reg[21] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[21] ),
        .Q(alu_a[21]));
  FDCE \alu_a_reg[22] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[22] ),
        .Q(alu_a[22]));
  FDCE \alu_a_reg[23] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[23] ),
        .Q(alu_a[23]));
  FDCE \alu_a_reg[24] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[24] ),
        .Q(alu_a[24]));
  FDCE \alu_a_reg[25] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[25] ),
        .Q(alu_a[25]));
  FDCE \alu_a_reg[26] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[26] ),
        .Q(alu_a[26]));
  FDCE \alu_a_reg[27] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[27] ),
        .Q(alu_a[27]));
  FDCE \alu_a_reg[28] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[28] ),
        .Q(alu_a[28]));
  FDCE \alu_a_reg[29] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[29] ),
        .Q(alu_a[29]));
  FDCE \alu_a_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[2] ),
        .Q(alu_a[2]));
  FDCE \alu_a_reg[30] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[30] ),
        .Q(alu_a[30]));
  FDCE \alu_a_reg[31] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[31] ),
        .Q(alu_a[31]));
  FDCE \alu_a_reg[32] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[32] ),
        .Q(alu_a[32]));
  FDCE \alu_a_reg[33] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[33] ),
        .Q(alu_a[33]));
  FDCE \alu_a_reg[34] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[34] ),
        .Q(alu_a[34]));
  FDCE \alu_a_reg[35] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[35] ),
        .Q(alu_a[35]));
  FDCE \alu_a_reg[36] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[36] ),
        .Q(alu_a[36]));
  FDCE \alu_a_reg[37] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[37] ),
        .Q(alu_a[37]));
  FDCE \alu_a_reg[38] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[38] ),
        .Q(alu_a[38]));
  FDCE \alu_a_reg[39] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[39] ),
        .Q(alu_a[39]));
  FDCE \alu_a_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[3] ),
        .Q(alu_a[3]));
  FDCE \alu_a_reg[40] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[40] ),
        .Q(alu_a[40]));
  FDCE \alu_a_reg[41] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[41] ),
        .Q(alu_a[41]));
  FDCE \alu_a_reg[42] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[42] ),
        .Q(alu_a[42]));
  FDCE \alu_a_reg[43] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[43] ),
        .Q(alu_a[43]));
  FDCE \alu_a_reg[44] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[44] ),
        .Q(alu_a[44]));
  FDCE \alu_a_reg[45] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[45] ),
        .Q(alu_a[45]));
  FDCE \alu_a_reg[46] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[46] ),
        .Q(alu_a[46]));
  FDCE \alu_a_reg[47] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[47] ),
        .Q(alu_a[47]));
  FDCE \alu_a_reg[48] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[48] ),
        .Q(alu_a[48]));
  FDCE \alu_a_reg[49] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[49] ),
        .Q(alu_a[49]));
  FDCE \alu_a_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[4] ),
        .Q(alu_a[4]));
  FDCE \alu_a_reg[50] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[50] ),
        .Q(alu_a[50]));
  FDCE \alu_a_reg[51] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[51] ),
        .Q(alu_a[51]));
  FDCE \alu_a_reg[52] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[52] ),
        .Q(alu_a[52]));
  FDCE \alu_a_reg[53] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[53] ),
        .Q(alu_a[53]));
  FDCE \alu_a_reg[54] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[54] ),
        .Q(alu_a[54]));
  FDCE \alu_a_reg[55] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[55] ),
        .Q(alu_a[55]));
  FDCE \alu_a_reg[56] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[56] ),
        .Q(alu_a[56]));
  FDCE \alu_a_reg[57] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[57] ),
        .Q(alu_a[57]));
  FDCE \alu_a_reg[58] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[58] ),
        .Q(alu_a[58]));
  FDCE \alu_a_reg[59] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[59] ),
        .Q(alu_a[59]));
  FDCE \alu_a_reg[5] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[5] ),
        .Q(alu_a[5]));
  FDCE \alu_a_reg[60] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[60] ),
        .Q(alu_a[60]));
  FDCE \alu_a_reg[61] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[61] ),
        .Q(alu_a[61]));
  FDCE \alu_a_reg[62] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[62] ),
        .Q(alu_a[62]));
  FDCE \alu_a_reg[63] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[63] ),
        .Q(alu_a[63]));
  FDCE \alu_a_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[6] ),
        .Q(alu_a[6]));
  FDCE \alu_a_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[7] ),
        .Q(alu_a[7]));
  FDCE \alu_a_reg[8] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[8] ),
        .Q(alu_a[8]));
  FDCE \alu_a_reg[9] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(\LocalRIP_reg_n_0_[9] ),
        .Q(alu_a[9]));
  FDCE \alu_b_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(CIR),
        .CLR(reset),
        .D(1'b1),
        .Q(\alu_b_reg_n_0_[1] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \bram_addr[0]_i_1 
       (.I0(\bram_addr[0]_i_2_n_0 ),
        .I1(\bram_addr[0]_i_3_n_0 ),
        .I2(\bram_addr[0]_i_4_n_0 ),
        .I3(\bram_addr[0]_i_5_n_0 ),
        .I4(\bram_addr[0]_i_6_n_0 ),
        .O(\bram_addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0300000012121212)) 
    \bram_addr[0]_i_2 
       (.I0(\Argument1_reg_n_0_[0] ),
        .I1(\bram_addr[0]_i_7_n_0 ),
        .I2(\stateIndex_reg_n_0_[0] ),
        .I3(\bram_addr_reg[3]_i_4_n_7 ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\bram_addr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A0008000000000)) 
    \bram_addr[0]_i_3 
       (.I0(\bram_addr[0]_i_7_n_0 ),
        .I1(\stateIndex_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\bram_addr_reg[3]_i_4_n_7 ),
        .I5(\Argument1_reg_n_0_[0] ),
        .O(\bram_addr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800080008F7FF00)) 
    \bram_addr[0]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\Argument1_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[1] ),
        .O(\bram_addr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001010100)) 
    \bram_addr[0]_i_5 
       (.I0(\bram_addr[0]_i_8_n_0 ),
        .I1(\Argument1_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\bram_addr_reg[3]_i_4_n_7 ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_addr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4000440040004000)) 
    \bram_addr[0]_i_6 
       (.I0(\Argument1_reg_n_0_[0] ),
        .I1(\bram_addr[0]_i_9_n_0 ),
        .I2(\stateIndex_reg_n_0_[0] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[2] ),
        .I5(\bram_addr_reg[3]_i_4_n_7 ),
        .O(\bram_addr[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bram_addr[0]_i_7 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\bram_addr[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr[0]_i_8 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .O(\bram_addr[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE5)) 
    \bram_addr[0]_i_9 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\bram_addr[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[10]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[10]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[10] ),
        .I4(\bram_addr[10]_i_2_n_0 ),
        .I5(\bram_addr[10]_i_3_n_0 ),
        .O(\bram_addr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[10]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__1_n_6),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[11]_i_4_n_5 ),
        .I4(\bram_addr_reg[12]_i_12_n_6 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[10]_i_3 
       (.I0(\bram_addr_reg[12]_i_14_n_6 ),
        .I1(\bram_addr_reg[12]_i_15_n_6 ),
        .I2(\bram_addr_reg[11]_i_5_n_5 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[11]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[11]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[11] ),
        .I4(\bram_addr[11]_i_2_n_0 ),
        .I5(\bram_addr[11]_i_3_n_0 ),
        .O(\bram_addr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[11]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__1_n_5),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[11]_i_4_n_4 ),
        .I4(\bram_addr_reg[12]_i_12_n_5 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[11]_i_3 
       (.I0(\bram_addr_reg[12]_i_14_n_5 ),
        .I1(\bram_addr_reg[12]_i_15_n_5 ),
        .I2(\bram_addr_reg[11]_i_5_n_4 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008F0000008800)) 
    \bram_addr[12]_i_1 
       (.I0(bram_en_i_2_n_0),
        .I1(bram_en_i_3_n_0),
        .I2(\stateIndex_reg_n_0_[3] ),
        .I3(\nextState[0]_i_1_n_0 ),
        .I4(cycle_count_reg),
        .I5(\bram_addr[12]_i_3_n_0 ),
        .O(\bram_addr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000004D000B00)) 
    \bram_addr[12]_i_10 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[0] ),
        .O(\bram_addr[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4D000B0000000000)) 
    \bram_addr[12]_i_13 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[0] ),
        .O(\bram_addr[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[12]_i_2 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[12]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[12] ),
        .I4(\bram_addr[12]_i_7_n_0 ),
        .I5(\bram_addr[12]_i_8_n_0 ),
        .O(\bram_addr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF33FF1100)) 
    \bram_addr[12]_i_3 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\bram_addr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000808080)) 
    \bram_addr[12]_i_4 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\bram_addr[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0C100C101C105D55)) 
    \bram_addr[12]_i_6 
       (.I0(\stateIndex_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[2] ),
        .I5(\stateIndex_reg_n_0_[1] ),
        .O(\bram_addr[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[12]_i_7 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__1_n_4),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[12]_i_11_n_7 ),
        .I4(\bram_addr_reg[12]_i_12_n_4 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[12]_i_8 
       (.I0(\bram_addr_reg[12]_i_14_n_4 ),
        .I1(\bram_addr_reg[12]_i_15_n_4 ),
        .I2(\bram_addr_reg[12]_i_16_n_7 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h040400040CCC0404)) 
    \bram_addr[12]_i_9 
       (.I0(\stateIndex_reg_n_0_[2] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\bram_addr[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF282)) 
    \bram_addr[1]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(\Argument1_reg_n_0_[0] ),
        .I2(\Argument1_reg_n_0_[1] ),
        .I3(\bram_addr[12]_i_6_n_0 ),
        .I4(\bram_addr[1]_i_2_n_0 ),
        .I5(\bram_addr[1]_i_3_n_0 ),
        .O(\bram_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[1]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(\bram_addr[1]_i_4_n_0 ),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[3]_i_4_n_6 ),
        .I4(\bram_addr_reg[4]_i_7_n_7 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[1]_i_3 
       (.I0(\bram_addr_reg[4]_i_8_n_7 ),
        .I1(plusOp_carry_n_7),
        .I2(\bram_addr_reg[3]_i_5_n_6 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bram_addr[1]_i_4 
       (.I0(\Argument1_reg_n_0_[0] ),
        .I1(\Argument1_reg_n_0_[1] ),
        .O(\bram_addr[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[2]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[2]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[2] ),
        .I4(\bram_addr[2]_i_2_n_0 ),
        .I5(\bram_addr[2]_i_3_n_0 ),
        .O(\bram_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[2]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry_n_6),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[3]_i_4_n_5 ),
        .I4(\bram_addr_reg[4]_i_7_n_6 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[2]_i_3 
       (.I0(\bram_addr_reg[4]_i_8_n_6 ),
        .I1(\bram_addr_reg[4]_i_9_n_6 ),
        .I2(\bram_addr_reg[3]_i_5_n_5 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[3]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[3]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[3] ),
        .I4(\bram_addr[3]_i_2_n_0 ),
        .I5(\bram_addr[3]_i_3_n_0 ),
        .O(\bram_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[3]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry_n_5),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[3]_i_4_n_4 ),
        .I4(\bram_addr_reg[4]_i_7_n_5 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[3]_i_3 
       (.I0(\bram_addr_reg[4]_i_8_n_5 ),
        .I1(\bram_addr_reg[4]_i_9_n_5 ),
        .I2(\bram_addr_reg[3]_i_5_n_4 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[3]_i_6 
       (.I0(\Argument1_reg_n_0_[1] ),
        .O(\bram_addr[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[3]_i_7 
       (.I0(\Argument1_reg_n_0_[2] ),
        .O(\bram_addr[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[3]_i_8 
       (.I0(\Argument1_reg_n_0_[1] ),
        .O(\bram_addr[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[4]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[4]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[4] ),
        .I4(\bram_addr[4]_i_3_n_0 ),
        .I5(\bram_addr[4]_i_4_n_0 ),
        .O(\bram_addr[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[4]_i_10 
       (.I0(\Argument1_reg_n_0_[1] ),
        .O(\bram_addr[4]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[4]_i_11 
       (.I0(\Argument1_reg_n_0_[2] ),
        .O(\bram_addr[4]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[4]_i_12 
       (.I0(\Argument1_reg_n_0_[2] ),
        .O(\bram_addr[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[4]_i_3 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry_n_4),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[7]_i_4_n_7 ),
        .I4(\bram_addr_reg[4]_i_7_n_4 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[4]_i_4 
       (.I0(\bram_addr_reg[4]_i_8_n_4 ),
        .I1(\bram_addr_reg[4]_i_9_n_4 ),
        .I2(\bram_addr_reg[7]_i_5_n_7 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[4]_i_5 
       (.I0(\Argument1_reg_n_0_[2] ),
        .O(\bram_addr[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[4]_i_6 
       (.I0(\Argument1_reg_n_0_[1] ),
        .O(\bram_addr[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[5]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[5]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[5] ),
        .I4(\bram_addr[5]_i_2_n_0 ),
        .I5(\bram_addr[5]_i_3_n_0 ),
        .O(\bram_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[5]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__0_n_7),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[7]_i_4_n_6 ),
        .I4(\bram_addr_reg[8]_i_5_n_7 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[5]_i_3 
       (.I0(\bram_addr_reg[8]_i_6_n_7 ),
        .I1(\bram_addr_reg[8]_i_7_n_7 ),
        .I2(\bram_addr_reg[7]_i_5_n_6 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[6]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[6]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[6] ),
        .I4(\bram_addr[6]_i_2_n_0 ),
        .I5(\bram_addr[6]_i_3_n_0 ),
        .O(\bram_addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[6]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__0_n_6),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[7]_i_4_n_5 ),
        .I4(\bram_addr_reg[8]_i_5_n_6 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[6]_i_3 
       (.I0(\bram_addr_reg[8]_i_6_n_6 ),
        .I1(\bram_addr_reg[8]_i_7_n_6 ),
        .I2(\bram_addr_reg[7]_i_5_n_5 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[7]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[7]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[7] ),
        .I4(\bram_addr[7]_i_2_n_0 ),
        .I5(\bram_addr[7]_i_3_n_0 ),
        .O(\bram_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[7]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__0_n_5),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[7]_i_4_n_4 ),
        .I4(\bram_addr_reg[8]_i_5_n_5 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[7]_i_3 
       (.I0(\bram_addr_reg[8]_i_6_n_5 ),
        .I1(\bram_addr_reg[8]_i_7_n_5 ),
        .I2(\bram_addr_reg[7]_i_5_n_4 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[8]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[8]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[8] ),
        .I4(\bram_addr[8]_i_3_n_0 ),
        .I5(\bram_addr[8]_i_4_n_0 ),
        .O(\bram_addr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[8]_i_3 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__0_n_4),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[11]_i_4_n_7 ),
        .I4(\bram_addr_reg[8]_i_5_n_4 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[8]_i_4 
       (.I0(\bram_addr_reg[8]_i_6_n_4 ),
        .I1(\bram_addr_reg[8]_i_7_n_4 ),
        .I2(\bram_addr_reg[11]_i_5_n_7 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_addr[9]_i_1 
       (.I0(\bram_addr[12]_i_4_n_0 ),
        .I1(data7[9]),
        .I2(\bram_addr[12]_i_6_n_0 ),
        .I3(\Argument1_reg_n_0_[9] ),
        .I4(\bram_addr[9]_i_2_n_0 ),
        .I5(\bram_addr[9]_i_3_n_0 ),
        .O(\bram_addr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \bram_addr[9]_i_2 
       (.I0(\bram_addr[12]_i_9_n_0 ),
        .I1(plusOp_carry__1_n_7),
        .I2(\bram_addr[12]_i_10_n_0 ),
        .I3(\bram_addr_reg[11]_i_4_n_6 ),
        .I4(\bram_addr_reg[12]_i_12_n_7 ),
        .I5(\bram_addr[12]_i_13_n_0 ),
        .O(\bram_addr[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \bram_addr[9]_i_3 
       (.I0(\bram_addr_reg[12]_i_14_n_7 ),
        .I1(\bram_addr_reg[12]_i_15_n_7 ),
        .I2(\bram_addr_reg[11]_i_5_n_6 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex[2]_i_3_n_0 ),
        .O(\bram_addr[9]_i_3_n_0 ));
  FDCE \bram_addr_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[0]_i_1_n_0 ),
        .Q(bram_addr[0]));
  FDCE \bram_addr_reg[10] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[10]_i_1_n_0 ),
        .Q(bram_addr[10]));
  FDCE \bram_addr_reg[11] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[11]_i_1_n_0 ),
        .Q(bram_addr[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[11]_i_4 
       (.CI(\bram_addr_reg[7]_i_4_n_0 ),
        .CO({\bram_addr_reg[11]_i_4_n_0 ,\bram_addr_reg[11]_i_4_n_1 ,\bram_addr_reg[11]_i_4_n_2 ,\bram_addr_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[11]_i_4_n_4 ,\bram_addr_reg[11]_i_4_n_5 ,\bram_addr_reg[11]_i_4_n_6 ,\bram_addr_reg[11]_i_4_n_7 }),
        .S({\Argument1_reg_n_0_[11] ,\Argument1_reg_n_0_[10] ,\Argument1_reg_n_0_[9] ,\Argument1_reg_n_0_[8] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[11]_i_5 
       (.CI(\bram_addr_reg[7]_i_5_n_0 ),
        .CO({\bram_addr_reg[11]_i_5_n_0 ,\bram_addr_reg[11]_i_5_n_1 ,\bram_addr_reg[11]_i_5_n_2 ,\bram_addr_reg[11]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[11]_i_5_n_4 ,\bram_addr_reg[11]_i_5_n_5 ,\bram_addr_reg[11]_i_5_n_6 ,\bram_addr_reg[11]_i_5_n_7 }),
        .S({\Argument1_reg_n_0_[11] ,\Argument1_reg_n_0_[10] ,\Argument1_reg_n_0_[9] ,\Argument1_reg_n_0_[8] }));
  FDCE \bram_addr_reg[12] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[12]_i_2_n_0 ),
        .Q(bram_addr[12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[12]_i_11 
       (.CI(\bram_addr_reg[11]_i_4_n_0 ),
        .CO(\NLW_bram_addr_reg[12]_i_11_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_reg[12]_i_11_O_UNCONNECTED [3:1],\bram_addr_reg[12]_i_11_n_7 }),
        .S({1'b0,1'b0,1'b0,\Argument1_reg_n_0_[12] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[12]_i_12 
       (.CI(\bram_addr_reg[8]_i_5_n_0 ),
        .CO({\NLW_bram_addr_reg[12]_i_12_CO_UNCONNECTED [3],\bram_addr_reg[12]_i_12_n_1 ,\bram_addr_reg[12]_i_12_n_2 ,\bram_addr_reg[12]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[12]_i_12_n_4 ,\bram_addr_reg[12]_i_12_n_5 ,\bram_addr_reg[12]_i_12_n_6 ,\bram_addr_reg[12]_i_12_n_7 }),
        .S({\Argument1_reg_n_0_[12] ,\Argument1_reg_n_0_[11] ,\Argument1_reg_n_0_[10] ,\Argument1_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[12]_i_14 
       (.CI(\bram_addr_reg[8]_i_6_n_0 ),
        .CO({\NLW_bram_addr_reg[12]_i_14_CO_UNCONNECTED [3],\bram_addr_reg[12]_i_14_n_1 ,\bram_addr_reg[12]_i_14_n_2 ,\bram_addr_reg[12]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[12]_i_14_n_4 ,\bram_addr_reg[12]_i_14_n_5 ,\bram_addr_reg[12]_i_14_n_6 ,\bram_addr_reg[12]_i_14_n_7 }),
        .S({\Argument1_reg_n_0_[12] ,\Argument1_reg_n_0_[11] ,\Argument1_reg_n_0_[10] ,\Argument1_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[12]_i_15 
       (.CI(\bram_addr_reg[8]_i_7_n_0 ),
        .CO({\NLW_bram_addr_reg[12]_i_15_CO_UNCONNECTED [3],\bram_addr_reg[12]_i_15_n_1 ,\bram_addr_reg[12]_i_15_n_2 ,\bram_addr_reg[12]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[12]_i_15_n_4 ,\bram_addr_reg[12]_i_15_n_5 ,\bram_addr_reg[12]_i_15_n_6 ,\bram_addr_reg[12]_i_15_n_7 }),
        .S({\Argument1_reg_n_0_[12] ,\Argument1_reg_n_0_[11] ,\Argument1_reg_n_0_[10] ,\Argument1_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[12]_i_16 
       (.CI(\bram_addr_reg[11]_i_5_n_0 ),
        .CO(\NLW_bram_addr_reg[12]_i_16_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_reg[12]_i_16_O_UNCONNECTED [3:1],\bram_addr_reg[12]_i_16_n_7 }),
        .S({1'b0,1'b0,1'b0,\Argument1_reg_n_0_[12] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[12]_i_5 
       (.CI(\bram_addr_reg[8]_i_2_n_0 ),
        .CO({\NLW_bram_addr_reg[12]_i_5_CO_UNCONNECTED [3],\bram_addr_reg[12]_i_5_n_1 ,\bram_addr_reg[12]_i_5_n_2 ,\bram_addr_reg[12]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data7[12:9]),
        .S({\Argument1_reg_n_0_[12] ,\Argument1_reg_n_0_[11] ,\Argument1_reg_n_0_[10] ,\Argument1_reg_n_0_[9] }));
  FDCE \bram_addr_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[1]_i_1_n_0 ),
        .Q(bram_addr[1]));
  FDCE \bram_addr_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[2]_i_1_n_0 ),
        .Q(bram_addr[2]));
  FDCE \bram_addr_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[3]_i_1_n_0 ),
        .Q(bram_addr[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\bram_addr_reg[3]_i_4_n_0 ,\bram_addr_reg[3]_i_4_n_1 ,\bram_addr_reg[3]_i_4_n_2 ,\bram_addr_reg[3]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Argument1_reg_n_0_[1] ,1'b0}),
        .O({\bram_addr_reg[3]_i_4_n_4 ,\bram_addr_reg[3]_i_4_n_5 ,\bram_addr_reg[3]_i_4_n_6 ,\bram_addr_reg[3]_i_4_n_7 }),
        .S({\Argument1_reg_n_0_[3] ,\Argument1_reg_n_0_[2] ,\bram_addr[3]_i_6_n_0 ,\Argument1_reg_n_0_[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\bram_addr_reg[3]_i_5_n_0 ,\bram_addr_reg[3]_i_5_n_1 ,\bram_addr_reg[3]_i_5_n_2 ,\bram_addr_reg[3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Argument1_reg_n_0_[2] ,\Argument1_reg_n_0_[1] ,1'b0}),
        .O({\bram_addr_reg[3]_i_5_n_4 ,\bram_addr_reg[3]_i_5_n_5 ,\bram_addr_reg[3]_i_5_n_6 ,\NLW_bram_addr_reg[3]_i_5_O_UNCONNECTED [0]}),
        .S({\Argument1_reg_n_0_[3] ,\bram_addr[3]_i_7_n_0 ,\bram_addr[3]_i_8_n_0 ,\Argument1_reg_n_0_[0] }));
  FDCE \bram_addr_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[4]_i_1_n_0 ),
        .Q(bram_addr[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\bram_addr_reg[4]_i_2_n_0 ,\bram_addr_reg[4]_i_2_n_1 ,\bram_addr_reg[4]_i_2_n_2 ,\bram_addr_reg[4]_i_2_n_3 }),
        .CYINIT(\Argument1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,\Argument1_reg_n_0_[2] ,\Argument1_reg_n_0_[1] }),
        .O({data7[4:2],\NLW_bram_addr_reg[4]_i_2_O_UNCONNECTED [0]}),
        .S({\Argument1_reg_n_0_[4] ,\Argument1_reg_n_0_[3] ,\bram_addr[4]_i_5_n_0 ,\bram_addr[4]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[4]_i_7 
       (.CI(1'b0),
        .CO({\bram_addr_reg[4]_i_7_n_0 ,\bram_addr_reg[4]_i_7_n_1 ,\bram_addr_reg[4]_i_7_n_2 ,\bram_addr_reg[4]_i_7_n_3 }),
        .CYINIT(\Argument1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,\Argument1_reg_n_0_[1] }),
        .O({\bram_addr_reg[4]_i_7_n_4 ,\bram_addr_reg[4]_i_7_n_5 ,\bram_addr_reg[4]_i_7_n_6 ,\bram_addr_reg[4]_i_7_n_7 }),
        .S({\Argument1_reg_n_0_[4] ,\Argument1_reg_n_0_[3] ,\Argument1_reg_n_0_[2] ,\bram_addr[4]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[4]_i_8 
       (.CI(1'b0),
        .CO({\bram_addr_reg[4]_i_8_n_0 ,\bram_addr_reg[4]_i_8_n_1 ,\bram_addr_reg[4]_i_8_n_2 ,\bram_addr_reg[4]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Argument1_reg_n_0_[2] ,1'b0}),
        .O({\bram_addr_reg[4]_i_8_n_4 ,\bram_addr_reg[4]_i_8_n_5 ,\bram_addr_reg[4]_i_8_n_6 ,\bram_addr_reg[4]_i_8_n_7 }),
        .S({\Argument1_reg_n_0_[4] ,\Argument1_reg_n_0_[3] ,\bram_addr[4]_i_11_n_0 ,\Argument1_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[4]_i_9 
       (.CI(1'b0),
        .CO({\bram_addr_reg[4]_i_9_n_0 ,\bram_addr_reg[4]_i_9_n_1 ,\bram_addr_reg[4]_i_9_n_2 ,\bram_addr_reg[4]_i_9_n_3 }),
        .CYINIT(\Argument1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,\Argument1_reg_n_0_[2] ,1'b0}),
        .O({\bram_addr_reg[4]_i_9_n_4 ,\bram_addr_reg[4]_i_9_n_5 ,\bram_addr_reg[4]_i_9_n_6 ,\NLW_bram_addr_reg[4]_i_9_O_UNCONNECTED [0]}),
        .S({\Argument1_reg_n_0_[4] ,\Argument1_reg_n_0_[3] ,\bram_addr[4]_i_12_n_0 ,\Argument1_reg_n_0_[1] }));
  FDCE \bram_addr_reg[5] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[5]_i_1_n_0 ),
        .Q(bram_addr[5]));
  FDCE \bram_addr_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[6]_i_1_n_0 ),
        .Q(bram_addr[6]));
  FDCE \bram_addr_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[7]_i_1_n_0 ),
        .Q(bram_addr[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[7]_i_4 
       (.CI(\bram_addr_reg[3]_i_4_n_0 ),
        .CO({\bram_addr_reg[7]_i_4_n_0 ,\bram_addr_reg[7]_i_4_n_1 ,\bram_addr_reg[7]_i_4_n_2 ,\bram_addr_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[7]_i_4_n_4 ,\bram_addr_reg[7]_i_4_n_5 ,\bram_addr_reg[7]_i_4_n_6 ,\bram_addr_reg[7]_i_4_n_7 }),
        .S({\Argument1_reg_n_0_[7] ,\Argument1_reg_n_0_[6] ,\Argument1_reg_n_0_[5] ,\Argument1_reg_n_0_[4] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[7]_i_5 
       (.CI(\bram_addr_reg[3]_i_5_n_0 ),
        .CO({\bram_addr_reg[7]_i_5_n_0 ,\bram_addr_reg[7]_i_5_n_1 ,\bram_addr_reg[7]_i_5_n_2 ,\bram_addr_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[7]_i_5_n_4 ,\bram_addr_reg[7]_i_5_n_5 ,\bram_addr_reg[7]_i_5_n_6 ,\bram_addr_reg[7]_i_5_n_7 }),
        .S({\Argument1_reg_n_0_[7] ,\Argument1_reg_n_0_[6] ,\Argument1_reg_n_0_[5] ,\Argument1_reg_n_0_[4] }));
  FDCE \bram_addr_reg[8] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[8]_i_1_n_0 ),
        .Q(bram_addr[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[8]_i_2 
       (.CI(\bram_addr_reg[4]_i_2_n_0 ),
        .CO({\bram_addr_reg[8]_i_2_n_0 ,\bram_addr_reg[8]_i_2_n_1 ,\bram_addr_reg[8]_i_2_n_2 ,\bram_addr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data7[8:5]),
        .S({\Argument1_reg_n_0_[8] ,\Argument1_reg_n_0_[7] ,\Argument1_reg_n_0_[6] ,\Argument1_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[8]_i_5 
       (.CI(\bram_addr_reg[4]_i_7_n_0 ),
        .CO({\bram_addr_reg[8]_i_5_n_0 ,\bram_addr_reg[8]_i_5_n_1 ,\bram_addr_reg[8]_i_5_n_2 ,\bram_addr_reg[8]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[8]_i_5_n_4 ,\bram_addr_reg[8]_i_5_n_5 ,\bram_addr_reg[8]_i_5_n_6 ,\bram_addr_reg[8]_i_5_n_7 }),
        .S({\Argument1_reg_n_0_[8] ,\Argument1_reg_n_0_[7] ,\Argument1_reg_n_0_[6] ,\Argument1_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[8]_i_6 
       (.CI(\bram_addr_reg[4]_i_8_n_0 ),
        .CO({\bram_addr_reg[8]_i_6_n_0 ,\bram_addr_reg[8]_i_6_n_1 ,\bram_addr_reg[8]_i_6_n_2 ,\bram_addr_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[8]_i_6_n_4 ,\bram_addr_reg[8]_i_6_n_5 ,\bram_addr_reg[8]_i_6_n_6 ,\bram_addr_reg[8]_i_6_n_7 }),
        .S({\Argument1_reg_n_0_[8] ,\Argument1_reg_n_0_[7] ,\Argument1_reg_n_0_[6] ,\Argument1_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_addr_reg[8]_i_7 
       (.CI(\bram_addr_reg[4]_i_9_n_0 ),
        .CO({\bram_addr_reg[8]_i_7_n_0 ,\bram_addr_reg[8]_i_7_n_1 ,\bram_addr_reg[8]_i_7_n_2 ,\bram_addr_reg[8]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[8]_i_7_n_4 ,\bram_addr_reg[8]_i_7_n_5 ,\bram_addr_reg[8]_i_7_n_6 ,\bram_addr_reg[8]_i_7_n_7 }),
        .S({\Argument1_reg_n_0_[8] ,\Argument1_reg_n_0_[7] ,\Argument1_reg_n_0_[6] ,\Argument1_reg_n_0_[5] }));
  FDCE \bram_addr_reg[9] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_addr[12]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_addr[9]_i_1_n_0 ),
        .Q(bram_addr[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[0]_i_1 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[0]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[0] ),
        .I4(\bram_dout[0]_i_2_n_0 ),
        .I5(\bram_dout[0]_i_3_n_0 ),
        .O(\bram_dout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[0]_i_2 
       (.I0(data0[0]),
        .I1(data1[0]),
        .I2(data2[0]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[0]_i_3 
       (.I0(data3[0]),
        .I1(data4[0]),
        .I2(data5[0]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[1]_i_1 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[1]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[1] ),
        .I4(\bram_dout[1]_i_2_n_0 ),
        .I5(\bram_dout[1]_i_3_n_0 ),
        .O(\bram_dout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[1]_i_2 
       (.I0(data0[1]),
        .I1(data1[1]),
        .I2(data2[1]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[1]_i_3 
       (.I0(data3[1]),
        .I1(data4[1]),
        .I2(data5[1]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[2]_i_1 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[2]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[2] ),
        .I4(\bram_dout[2]_i_2_n_0 ),
        .I5(\bram_dout[2]_i_3_n_0 ),
        .O(\bram_dout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[2]_i_2 
       (.I0(data0[2]),
        .I1(data1[2]),
        .I2(data2[2]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[2]_i_3 
       (.I0(data3[2]),
        .I1(data4[2]),
        .I2(data5[2]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[3]_i_1 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[3]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[3] ),
        .I4(\bram_dout[3]_i_2_n_0 ),
        .I5(\bram_dout[3]_i_3_n_0 ),
        .O(\bram_dout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[3]_i_2 
       (.I0(data0[3]),
        .I1(data1[3]),
        .I2(data2[3]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[3]_i_3 
       (.I0(data3[3]),
        .I1(data4[3]),
        .I2(data5[3]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[4]_i_1 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[4]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[4] ),
        .I4(\bram_dout[4]_i_2_n_0 ),
        .I5(\bram_dout[4]_i_3_n_0 ),
        .O(\bram_dout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[4]_i_2 
       (.I0(data0[4]),
        .I1(data1[4]),
        .I2(data2[4]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[4]_i_3 
       (.I0(data3[4]),
        .I1(data4[4]),
        .I2(data5[4]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[5]_i_1 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[5]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[5] ),
        .I4(\bram_dout[5]_i_2_n_0 ),
        .I5(\bram_dout[5]_i_3_n_0 ),
        .O(\bram_dout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[5]_i_2 
       (.I0(data0[5]),
        .I1(data1[5]),
        .I2(data2[5]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[5]_i_3 
       (.I0(data3[5]),
        .I1(data4[5]),
        .I2(data5[5]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[6]_i_1 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[6]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[6] ),
        .I4(\bram_dout[6]_i_2_n_0 ),
        .I5(\bram_dout[6]_i_3_n_0 ),
        .O(\bram_dout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[6]_i_2 
       (.I0(data0[6]),
        .I1(data1[6]),
        .I2(data2[6]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[6]_i_3 
       (.I0(data3[6]),
        .I1(data4[6]),
        .I2(data5[6]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \bram_dout[7]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\bram_dout[7]_i_3_n_0 ),
        .O(\bram_dout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \bram_dout[7]_i_2 
       (.I0(\bram_dout[7]_i_4_n_0 ),
        .I1(data6[7]),
        .I2(\bram_dout[7]_i_5_n_0 ),
        .I3(\Argument2_reg_n_0_[7] ),
        .I4(\bram_dout[7]_i_6_n_0 ),
        .I5(\bram_dout[7]_i_7_n_0 ),
        .O(\bram_dout[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \bram_dout[7]_i_3 
       (.I0(\stateIndex_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[4] ),
        .I3(cycle_count_reg),
        .O(\bram_dout[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \bram_dout[7]_i_4 
       (.I0(\stateIndex_reg_n_0_[0] ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \bram_dout[7]_i_5 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \bram_dout[7]_i_6 
       (.I0(data0[7]),
        .I1(data1[7]),
        .I2(data2[7]),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \bram_dout[7]_i_7 
       (.I0(data3[7]),
        .I1(data4[7]),
        .I2(data5[7]),
        .I3(\stateIndex_reg_n_0_[1] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[2] ),
        .O(\bram_dout[7]_i_7_n_0 ));
  FDCE \bram_dout_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[0]_i_1_n_0 ),
        .Q(bram_dout[0]));
  FDCE \bram_dout_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[1]_i_1_n_0 ),
        .Q(bram_dout[1]));
  FDCE \bram_dout_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[2]_i_1_n_0 ),
        .Q(bram_dout[2]));
  FDCE \bram_dout_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[3]_i_1_n_0 ),
        .Q(bram_dout[3]));
  FDCE \bram_dout_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[4]_i_1_n_0 ),
        .Q(bram_dout[4]));
  FDCE \bram_dout_reg[5] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[5]_i_1_n_0 ),
        .Q(bram_dout[5]));
  FDCE \bram_dout_reg[6] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[6]_i_1_n_0 ),
        .Q(bram_dout[6]));
  FDCE \bram_dout_reg[7] 
       (.C(ClockDivider_inst_n_0),
        .CE(\bram_dout[7]_i_1_n_0 ),
        .CLR(reset),
        .D(\bram_dout[7]_i_2_n_0 ),
        .Q(bram_dout[7]));
  LUT6 #(
    .INIT(64'hFFFFFF800000FF80)) 
    bram_en_i_1
       (.I0(bram_en_i_2_n_0),
        .I1(\nextState[0]_i_1_n_0 ),
        .I2(bram_en_i_3_n_0),
        .I3(bram_en_i_4_n_0),
        .I4(cycle_count_reg),
        .I5(bram_en),
        .O(bram_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h18)) 
    bram_en_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .O(bram_en_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    bram_en_i_3
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .O(bram_en_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    bram_en_i_4
       (.I0(\bram_addr[12]_i_3_n_0 ),
        .I1(\stateIndex_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .O(bram_en_i_4_n_0));
  FDCE bram_en_reg
       (.C(ClockDivider_inst_n_0),
        .CE(1'b1),
        .CLR(reset),
        .D(bram_en_i_1_n_0),
        .Q(bram_en));
  LUT6 #(
    .INIT(64'hFFFF000200000002)) 
    bram_we_i_1
       (.I0(bram_we_i_2_n_0),
        .I1(\stateIndex_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(cycle_count_reg),
        .I5(bram_we),
        .O(bram_we_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bram_we_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .O(bram_we_i_2_n_0));
  FDCE bram_we_reg
       (.C(ClockDivider_inst_n_0),
        .CE(1'b1),
        .CLR(reset),
        .D(bram_we_i_1_n_0),
        .Q(bram_we));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0200)) 
    \cycle_count[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\nextState[0]_i_1_n_0 ),
        .I4(bram_en_i_4_n_0),
        .I5(\cycle_count[0]_i_3_n_0 ),
        .O(\cycle_count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cycle_count[0]_i_2 
       (.I0(cycle_count_reg),
        .O(\cycle_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF12000000)) 
    \cycle_count[0]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\stateIndex[0]_i_4_n_0 ),
        .I4(\nextState[0]_i_1_n_0 ),
        .I5(cycle_count_reg),
        .O(\cycle_count[0]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cycle_count_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(\cycle_count[0]_i_1_n_0 ),
        .CLR(reset),
        .D(\cycle_count[0]_i_2_n_0 ),
        .Q(cycle_count_reg));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \nextState[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\nextState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \nextState[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\nextState[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000044000040000)) 
    \nextState[4]_i_1 
       (.I0(cycle_count_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(nextState));
  FDCE #(
    .INIT(1'b0)) 
    \nextState_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\nextState[0]_i_1_n_0 ),
        .Q(\nextState_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \nextState_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\nextState[3]_i_1_n_0 ),
        .Q(\nextState_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \nextState_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(nextState),
        .CLR(reset),
        .D(\state_reg_n_0_[4] ),
        .Q(\nextState_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\Argument1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\Argument1_reg_n_0_[4] ,\Argument1_reg_n_0_[3] ,\Argument1_reg_n_0_[2] ,\Argument1_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\Argument1_reg_n_0_[8] ,\Argument1_reg_n_0_[7] ,\Argument1_reg_n_0_[6] ,\Argument1_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3],plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({\Argument1_reg_n_0_[12] ,\Argument1_reg_n_0_[11] ,\Argument1_reg_n_0_[10] ,\Argument1_reg_n_0_[9] }));
  LUT6 #(
    .INIT(64'h0000FFFF000000F8)) 
    \stateIndex[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\stateIndex[0]_i_2_n_0 ),
        .I2(\stateIndex[0]_i_3_n_0 ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[3] ),
        .I5(\stateIndex[0]_i_4_n_0 ),
        .O(stateIndex[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \stateIndex[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[2] ),
        .O(\stateIndex[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    \stateIndex[0]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(\stateIndex[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \stateIndex[0]_i_4 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .O(\stateIndex[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFCFCCCCCDCDCC)) 
    \stateIndex[1]_i_1 
       (.I0(bram_en_i_3_n_0),
        .I1(\stateIndex[1]_i_2_n_0 ),
        .I2(\stateIndex_reg_n_0_[3] ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(bram_we_i_2_n_0),
        .O(stateIndex[1]));
  LUT6 #(
    .INIT(64'h0001010000000100)) 
    \stateIndex[1]_i_2 
       (.I0(\stateIndex_reg_n_0_[3] ),
        .I1(\bram_addr[0]_i_7_n_0 ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\stateIndex_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\stateIndex[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABABAFFBA)) 
    \stateIndex[2]_i_1 
       (.I0(\stateIndex[2]_i_2_n_0 ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex[2]_i_3_n_0 ),
        .I3(\stateIndex[2]_i_4_n_0 ),
        .I4(bram_en_i_3_n_0),
        .I5(\stateIndex_reg_n_0_[3] ),
        .O(stateIndex[2]));
  LUT6 #(
    .INIT(64'h00000000FF040404)) 
    \stateIndex[2]_i_2 
       (.I0(bram_en_i_3_n_0),
        .I1(\stateIndex_reg_n_0_[2] ),
        .I2(\stateIndex_reg_n_0_[1] ),
        .I3(\stateIndex[2]_i_5_n_0 ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[3] ),
        .O(\stateIndex[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9D00)) 
    \stateIndex[2]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\stateIndex_reg_n_0_[2] ),
        .O(\stateIndex[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \stateIndex[2]_i_4 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .O(\stateIndex[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h02020060)) 
    \stateIndex[2]_i_5 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\stateIndex[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000300030002)) 
    \stateIndex[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(cycle_count_reg),
        .I2(\state_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\stateIndex[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4100000000000000)) 
    \stateIndex[3]_i_2 
       (.I0(\stateIndex_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\stateIndex_reg_n_0_[2] ),
        .I4(\stateIndex_reg_n_0_[0] ),
        .I5(\stateIndex_reg_n_0_[1] ),
        .O(stateIndex[3]));
  FDCE #(
    .INIT(1'b0)) 
    \stateIndex_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(\stateIndex[3]_i_1_n_0 ),
        .CLR(reset),
        .D(stateIndex[0]),
        .Q(\stateIndex_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \stateIndex_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(\stateIndex[3]_i_1_n_0 ),
        .CLR(reset),
        .D(stateIndex[1]),
        .Q(\stateIndex_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \stateIndex_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(\stateIndex[3]_i_1_n_0 ),
        .CLR(reset),
        .D(stateIndex[2]),
        .Q(\stateIndex_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \stateIndex_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(\stateIndex[3]_i_1_n_0 ),
        .CLR(reset),
        .D(stateIndex[3]),
        .Q(\stateIndex_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF08280000)) 
    \state[0]_i_1 
       (.I0(\state[3]_i_2_n_0 ),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[0]_i_2_n_0 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'hF0F0F010A0000010)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(interrupt),
        .I2(\nextState[0]_i_1_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\nextState_reg_n_0_[0] ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0800)) 
    \state[1]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\state[3]_i_2_n_0 ),
        .I4(\state[1]_i_2_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404000000000003)) 
    \state[1]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(interrupt),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[4] ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \state[2]_i_1 
       (.I0(state[4]),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state[2]_i_4_n_0 ),
        .I4(\state[3]_i_2_n_0 ),
        .I5(\state[2]_i_5_n_0 ),
        .O(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[4] ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[2]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(interrupt),
        .I4(\state_reg_n_0_[4] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \state[2]_i_5 
       (.I0(p_0_in[0]),
        .I1(\state_reg_n_0_[1] ),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(\state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF3400)) 
    \state[3]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(\state[3]_i_2_n_0 ),
        .I4(\state[3]_i_3_n_0 ),
        .O(state[3]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_4_n_0 ),
        .I1(\CIR_reg_n_0_[11] ),
        .I2(\CIR_reg_n_0_[12] ),
        .I3(\CIR_reg_n_0_[13] ),
        .I4(\CIR_reg_n_0_[14] ),
        .O(\state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001007C00010000)) 
    \state[3]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\nextState_reg_n_0_[3] ),
        .O(\state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \state[3]_i_4 
       (.I0(\CIR_reg_n_0_[15] ),
        .I1(\state_reg_n_0_[4] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state[3]_i_5_n_0 ),
        .I4(\CIR_reg_n_0_[10] ),
        .I5(\CIR_reg_n_0_[9] ),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_i_5 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAFAFABAA)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_3_n_0 ),
        .I1(\stateIndex_reg_n_0_[3] ),
        .I2(cycle_count_reg),
        .I3(\state[4]_i_4_n_0 ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state[4]_i_5_n_0 ),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \state[4]_i_10 
       (.I0(\state_reg_n_0_[4] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF70A00000)) 
    \state[4]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\nextState_reg_n_0_[4] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\nextState[0]_i_1_n_0 ),
        .I5(\state[4]_i_6_n_0 ),
        .O(state[4]));
  LUT6 #(
    .INIT(64'h00F800AA00AA00FF)) 
    \state[4]_i_3 
       (.I0(\state_reg_n_0_[4] ),
        .I1(interrupt),
        .I2(\state[4]_i_7_n_0 ),
        .I3(cycle_count_reg),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02000004)) 
    \state[4]_i_4 
       (.I0(\stateIndex_reg_n_0_[0] ),
        .I1(\stateIndex_reg_n_0_[1] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002A20000)) 
    \state[4]_i_5 
       (.I0(\stateIndex[0]_i_4_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\stateIndex_reg_n_0_[3] ),
        .I5(cycle_count_reg),
        .O(\state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \state[4]_i_6 
       (.I0(\state[4]_i_8_n_0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[4]_i_9_n_0 ),
        .I5(\state[4]_i_10_n_0 ),
        .O(\state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000010)) 
    \state[4]_i_7 
       (.I0(\stateIndex_reg_n_0_[1] ),
        .I1(\stateIndex_reg_n_0_[0] ),
        .I2(\stateIndex_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[4] ),
        .I4(\stateIndex_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[4]_i_8 
       (.I0(\CIR_reg_n_0_[11] ),
        .I1(\CIR_reg_n_0_[10] ),
        .I2(\CIR_reg_n_0_[9] ),
        .I3(p_0_in[2]),
        .O(\state[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state[4]_i_9 
       (.I0(\CIR_reg_n_0_[15] ),
        .I1(\CIR_reg_n_0_[14] ),
        .I2(\CIR_reg_n_0_[13] ),
        .I3(\CIR_reg_n_0_[12] ),
        .O(\state[4]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ClockDivider_inst_n_0),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ClockDivider_inst_n_0),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(ClockDivider_inst_n_0),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(ClockDivider_inst_n_0),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(ClockDivider_inst_n_0),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(reset),
        .D(state[4]),
        .Q(\state_reg_n_0_[4] ));
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
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
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
       (.I0(\counter_reg_n_0_[0] ),
        .O(counter[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(counter[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[17]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[19]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(counter[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[20]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[21]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[22]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[23]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[25]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(counter[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(counter[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_10 
       (.I0(\counter_reg_n_0_[21] ),
        .I1(\counter_reg_n_0_[20] ),
        .I2(\counter_reg_n_0_[23] ),
        .I3(\counter_reg_n_0_[22] ),
        .O(\counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_2 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter[31]_i_7_n_0 ),
        .O(\counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \counter[31]_i_3 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter[31]_i_8_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_4 
       (.I0(\counter_reg_n_0_[26] ),
        .I1(\counter_reg_n_0_[27] ),
        .I2(\counter_reg_n_0_[24] ),
        .I3(\counter_reg_n_0_[25] ),
        .I4(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_5 
       (.I0(\counter_reg_n_0_[18] ),
        .I1(\counter_reg_n_0_[19] ),
        .I2(\counter_reg_n_0_[16] ),
        .I3(\counter_reg_n_0_[17] ),
        .I4(\counter[31]_i_10_n_0 ),
        .O(\counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_7 
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(\counter_reg_n_0_[15] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_8 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[6] ),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(\counter_reg_n_0_[29] ),
        .I1(\counter_reg_n_0_[28] ),
        .I2(\counter_reg_n_0_[31] ),
        .I3(\counter_reg_n_0_[30] ),
        .O(\counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(counter[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(counter[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(\counter[31]_i_2_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_4_n_0 ),
        .I3(\counter[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[0]),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[10]),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[11]),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[12]),
        .Q(\counter_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[13]),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[14]),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[15]),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[16]),
        .Q(\counter_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[17]),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[18]),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[19]),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[1]),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[20]),
        .Q(\counter_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_2 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CO({\counter_reg[20]_i_2_n_0 ,\counter_reg[20]_i_2_n_1 ,\counter_reg[20]_i_2_n_2 ,\counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[21]),
        .Q(\counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[22]),
        .Q(\counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[23]),
        .Q(\counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[24]),
        .Q(\counter_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_2 
       (.CI(\counter_reg[20]_i_2_n_0 ),
        .CO({\counter_reg[24]_i_2_n_0 ,\counter_reg[24]_i_2_n_1 ,\counter_reg[24]_i_2_n_2 ,\counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[25]),
        .Q(\counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[26]),
        .Q(\counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[27]),
        .Q(\counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[28]),
        .Q(\counter_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_2_n_0 ),
        .CO({\counter_reg[28]_i_2_n_0 ,\counter_reg[28]_i_2_n_1 ,\counter_reg[28]_i_2_n_2 ,\counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[29]),
        .Q(\counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[2]),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[30]),
        .Q(\counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[31]),
        .Q(\counter_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[31]_i_6 
       (.CI(\counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter_reg[31]_i_6_CO_UNCONNECTED [3:2],\counter_reg[31]_i_6_n_2 ,\counter_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[4]),
        .Q(\counter_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[5]),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[6]),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[7]),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[8]),
        .Q(\counter_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(counter[9]),
        .Q(\counter_reg_n_0_[9] ));
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
