// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "InoutBusSplitter,Vivado 2024.1" *)
module ZYNQ_InoutBusSplitter_0_0(Data, Address, Control, InData, InAddress, 
  InControl, OutData, OutAddress, OutControl);
  inout [63:0]Data;
  inout [63:0]Address;
  inout [63:0]Control;
  input [63:0]InData;
  input [63:0]InAddress;
  input [63:0]InControl;
  output [63:0]OutData;
  output [63:0]OutAddress;
  output [63:0]OutControl;
endmodule
