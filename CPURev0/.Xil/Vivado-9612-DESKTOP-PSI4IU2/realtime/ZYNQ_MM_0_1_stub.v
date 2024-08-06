// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MM,Vivado 2024.1" *)
module ZYNQ_MM_0_1(clk, rst_n, Control, Data, Address, ResultData, 
  ResultAddr, ResultCtrl, ClockPulse);
  input clk;
  input rst_n;
  input [63:0]Control;
  input [63:0]Data;
  input [63:0]Address;
  output [63:0]ResultData;
  output [63:0]ResultAddr;
  output [63:0]ResultCtrl;
  output ClockPulse;
endmodule
