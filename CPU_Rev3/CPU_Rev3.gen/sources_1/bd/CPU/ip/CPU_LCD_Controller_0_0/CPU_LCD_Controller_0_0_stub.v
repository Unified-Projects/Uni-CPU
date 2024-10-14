// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Sat Oct 12 17:48:37 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_LCD_Controller_0_0/CPU_LCD_Controller_0_0_stub.v
// Design      : CPU_LCD_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "LCD_Controller,Vivado 2024.1.2" *)
module CPU_LCD_Controller_0_0(reset, clk, scl, sda, cs, dc, blk, res, fb_we, fb_en, fb_din, 
  fb_dout, fb_addr)
/* synthesis syn_black_box black_box_pad_pin="clk,scl,sda,cs,dc,blk,res,fb_we[7:0],fb_en,fb_din[15:0],fb_dout[15:0],fb_addr[15:0]" */
/* synthesis syn_force_seq_prim="reset" */;
  input reset /* synthesis syn_isclock = 1 */;
  input clk;
  output scl;
  output sda;
  output cs;
  output dc;
  output blk;
  output res;
  output [7:0]fb_we;
  output fb_en;
  input [15:0]fb_din;
  output [15:0]fb_dout;
  output [15:0]fb_addr;
endmodule
