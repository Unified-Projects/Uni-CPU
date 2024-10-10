// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Oct 10 15:28:07 2024
// Host        : PopTop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Git/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_ClockDivider_0_0/CPU_ClockDivider_0_0_stub.v
// Design      : CPU_ClockDivider_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ClockDivider,Vivado 2024.1" *)
module CPU_ClockDivider_0_0(clk, reset, clk_div)
/* synthesis syn_black_box black_box_pad_pin="reset,clk_div" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  inout clk_div;
endmodule
