// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BUS,Vivado 2024.1" *)
module ZYNQ_BUS_2_0(ClockIn, ClockOut, data_in, device_select, CU, MM, 
  ALU, IO);
  input ClockIn;
  output ClockOut;
  input [63:0]data_in;
  input [1:0]device_select;
  output [63:0]CU;
  output [63:0]MM;
  output [63:0]ALU;
  output [63:0]IO;
endmodule
