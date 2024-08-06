// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Aug  1 22:15:12 2024
// Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/C++/Uni-CPU/CPURev1/PYNQ_CONFIG.gen/sources_1/bd/Everything/ip/Everything_ZYNQ_wrapper_0_0/Everything_ZYNQ_wrapper_0_0_stub.v
// Design      : Everything_ZYNQ_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ZYNQ_wrapper,Vivado 2024.1" *)
module Everything_ZYNQ_wrapper_0_0(DDR_addr, DDR_ba, DDR_cas_n, DDR_ck_n, DDR_ck_p, 
  DDR_cke, DDR_cs_n, DDR_dm, DDR_dq, DDR_dqs_n, DDR_dqs_p, DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, 
  FCLK_CLK0_0, FCLK_RESET0_N_0, FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, FIXED_IO_mio, 
  FIXED_IO_ps_clk, FIXED_IO_ps_porb, FIXED_IO_ps_srstb, MDIO_PHY_0_mdc, MDIO_PHY_0_mdio_io, 
  RGMII_0_rd, RGMII_0_rx_ctl, RGMII_0_rxc, RGMII_0_td, RGMII_0_tx_ctl, RGMII_0_txc, 
  TMDS_0_tmds_clk_n, TMDS_0_tmds_clk_p, TMDS_0_tmds_data_n, TMDS_0_tmds_data_p)
/* synthesis syn_black_box black_box_pad_pin="DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FCLK_RESET0_N_0,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,MDIO_PHY_0_mdc,MDIO_PHY_0_mdio_io,RGMII_0_rd[3:0],RGMII_0_rx_ctl,RGMII_0_rxc,RGMII_0_td[3:0],RGMII_0_tx_ctl,RGMII_0_txc,TMDS_0_tmds_clk_n,TMDS_0_tmds_clk_p,TMDS_0_tmds_data_n[2:0],TMDS_0_tmds_data_p[2:0]" */
/* synthesis syn_force_seq_prim="FCLK_CLK0_0" */;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FCLK_CLK0_0 /* synthesis syn_isclock = 1 */;
  output FCLK_RESET0_N_0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output MDIO_PHY_0_mdc;
  inout MDIO_PHY_0_mdio_io;
  input [3:0]RGMII_0_rd;
  input RGMII_0_rx_ctl;
  input RGMII_0_rxc;
  output [3:0]RGMII_0_td;
  output RGMII_0_tx_ctl;
  output RGMII_0_txc;
  output TMDS_0_tmds_clk_n;
  output TMDS_0_tmds_clk_p;
  output [2:0]TMDS_0_tmds_data_n;
  output [2:0]TMDS_0_tmds_data_p;
endmodule
