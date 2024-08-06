// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DeviceSelector,Vivado 2024.1" *)
module ZYNQ_DeviceSelector_0_1(CU_clk, MM_clk, ALU_clk, IO_clk, clk, dev);
  input CU_clk;
  input MM_clk;
  input ALU_clk;
  input IO_clk;
  output clk;
  output [1:0]dev;
endmodule
