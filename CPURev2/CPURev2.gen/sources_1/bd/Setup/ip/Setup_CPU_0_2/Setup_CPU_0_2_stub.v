// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Aug  9 23:36:05 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_CPU_0_2/Setup_CPU_0_2_stub.v
// Design      : Setup_CPU_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CPU,Vivado 2024.1" *)
module Setup_CPU_0_2(clk, reset, interrupt, data_in, data_out, addr, 
  mem_write, mem_read, mem_err, mem_done, bram_we, bram_en, bram_din, bram_dout, bram_addr)
/* synthesis syn_black_box black_box_pad_pin="reset,interrupt,data_in[31:0],data_out[31:0],addr[31:0],mem_write,mem_read,mem_err,mem_done,bram_we[7:0],bram_en,bram_din[63:0],bram_dout[63:0],bram_addr[12:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input interrupt;
  input [31:0]data_in;
  output [31:0]data_out;
  output [31:0]addr;
  output mem_write;
  output mem_read;
  input mem_err;
  input mem_done;
  output [7:0]bram_we;
  output bram_en;
  input [63:0]bram_din;
  output [63:0]bram_dout;
  output [12:0]bram_addr;
endmodule
