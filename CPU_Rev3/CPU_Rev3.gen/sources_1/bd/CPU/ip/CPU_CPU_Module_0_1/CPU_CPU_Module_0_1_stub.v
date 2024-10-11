// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Oct 11 18:46:07 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_CPU_Module_0_1/CPU_CPU_Module_0_1_stub.v
// Design      : CPU_CPU_Module_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CPU_Module,Vivado 2024.1.2" *)
module CPU_CPU_Module_0_1(clk, reset, interrupt, resetOut, bram_we, bram_en, 
  bram_din, bram_dout, bram_addr, IO_Enable, IO_DONE, IO_In, IO_Out, IO_Select)
/* synthesis syn_black_box black_box_pad_pin="reset,interrupt[31:0],resetOut,bram_we[7:0],bram_en,bram_din[63:0],bram_dout[63:0],bram_addr[12:0],IO_Enable,IO_DONE,IO_In,IO_Out,IO_Select[4:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input [31:0]interrupt;
  output resetOut;
  output [7:0]bram_we;
  output bram_en;
  input [63:0]bram_din;
  output [63:0]bram_dout;
  output [12:0]bram_addr;
  output IO_Enable;
  input IO_DONE;
  input IO_In;
  output IO_Out;
  output [4:0]IO_Select;
endmodule
