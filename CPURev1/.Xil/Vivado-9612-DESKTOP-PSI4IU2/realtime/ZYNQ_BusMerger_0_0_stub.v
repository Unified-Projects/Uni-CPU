// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BusMerger,Vivado 2024.1" *)
module ZYNQ_BusMerger_0_0(CU_IN, MM_IN, ALU_IN, IO_IN, clk, select_in, OutBus);
  input [63:0]CU_IN;
  input [63:0]MM_IN;
  input [63:0]ALU_IN;
  input [63:0]IO_IN;
  input clk /* synthesis syn_isclock = 1 */;
  input [1:0]select_in;
  output [63:0]OutBus;
endmodule
