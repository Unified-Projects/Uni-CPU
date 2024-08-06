// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Aug  6 12:45:02 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_AXI_Master_0_3/Setup_AXI_Master_0_3_stub.v
// Design      : Setup_AXI_Master_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_Master,Vivado 2024.1" *)
module Setup_AXI_Master_0_3(M_AXI_AWADDR, M_AXI_AWVALID, M_AXI_AWREADY, 
  M_AXI_WDATA, M_AXI_WSTRB, M_AXI_WVALID, M_AXI_WREADY, M_AXI_BRESP, M_AXI_BVALID, 
  M_AXI_BREADY, M_AXI_ARADDR, M_AXI_ARVALID, M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RRESP, 
  M_AXI_RVALID, M_AXI_RREADY, clk, reset, start_read, start_write, write_data, read_data, address, 
  done, err, interrupt)
/* synthesis syn_black_box black_box_pad_pin="M_AXI_AWADDR[31:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY,reset,start_read,start_write,write_data[31:0],read_data[31:0],address[31:0],done,err,interrupt" */
/* synthesis syn_force_seq_prim="clk" */;
  output [31:0]M_AXI_AWADDR;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
  input clk /* synthesis syn_isclock = 1 */;
  input reset;
  input start_read;
  input start_write;
  input [31:0]write_data;
  output [31:0]read_data;
  input [31:0]address;
  output done;
  output err;
  output interrupt;
endmodule
