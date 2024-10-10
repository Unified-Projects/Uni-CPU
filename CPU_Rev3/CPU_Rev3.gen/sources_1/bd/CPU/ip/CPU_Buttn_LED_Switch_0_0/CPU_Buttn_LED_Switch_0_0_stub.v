// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Oct 10 17:11:10 2024
// Host        : PopTop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Git/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_Buttn_LED_Switch_0_0/CPU_Buttn_LED_Switch_0_0_stub.v
// Design      : CPU_Buttn_LED_Switch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Buttn_LED_Switch,Vivado 2024.1" *)
module CPU_Buttn_LED_Switch_0_0(btn1, btn2, reset, clk, led2)
/* synthesis syn_black_box black_box_pad_pin="btn1,btn2,reset,led2" */
/* synthesis syn_force_seq_prim="clk" */;
  input btn1;
  input btn2;
  input reset;
  input clk /* synthesis syn_isclock = 1 */;
  output led2;
endmodule
