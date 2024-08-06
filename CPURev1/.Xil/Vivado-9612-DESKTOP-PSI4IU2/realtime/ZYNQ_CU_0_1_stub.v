// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CU,Vivado 2024.1" *)
module ZYNQ_CU_0_1(clk, rst_n, Control, Data, Address, SendClock, 
  CtrlClock);
  input clk;
  input rst_n;
  inout [63:0]Control;
  inout [63:0]Data;
  inout [63:0]Address;
  output SendClock;
  input CtrlClock;
endmodule
