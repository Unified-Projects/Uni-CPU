// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Aug  1 22:14:11 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/C++/Uni-CPU/CPURev1/PYNQ_CONFIG.gen/sources_1/bd/Everything/ip/Everything_CPU_0_0/Everything_CPU_0_0_stub.v
// Design      : Everything_CPU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CPU,Vivado 2024.1" *)
module Everything_CPU_0_0(clk, rst_n, CurrentStageDBG)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,CurrentStageDBG[5:0]" */;
  input clk;
  input rst_n;
  output [5:0]CurrentStageDBG;
endmodule
