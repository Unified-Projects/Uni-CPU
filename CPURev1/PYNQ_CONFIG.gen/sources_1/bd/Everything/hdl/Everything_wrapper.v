//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Aug  1 22:13:39 2024
//Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
//Command     : generate_target Everything_wrapper.bd
//Design      : Everything_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Everything_wrapper
   (CurrentStageDBG_0,
    DDR_addr_0,
    DDR_ba_0,
    DDR_cas_n_0,
    DDR_ck_n_0,
    DDR_ck_p_0,
    DDR_cke_0,
    DDR_cs_n_0,
    DDR_dm_0,
    DDR_dq_0,
    DDR_dqs_n_0,
    DDR_dqs_p_0,
    DDR_odt_0,
    DDR_ras_n_0,
    DDR_reset_n_0,
    DDR_we_n_0,
    FIXED_IO_ddr_vrn_0,
    FIXED_IO_ddr_vrp_0,
    FIXED_IO_mio_0,
    FIXED_IO_ps_clk_0,
    FIXED_IO_ps_porb_0,
    FIXED_IO_ps_srstb_0,
    MDIO_PHY_0_mdio_io_0,
    RGMII_0_rd_0,
    RGMII_0_rx_ctl_0,
    RGMII_0_rxc_0,
    TMDS_0_tmds_clk_n_0,
    TMDS_0_tmds_clk_p_0,
    TMDS_0_tmds_data_n_0,
    TMDS_0_tmds_data_p_0);
  output [5:0]CurrentStageDBG_0;
  inout [14:0]DDR_addr_0;
  inout [2:0]DDR_ba_0;
  inout DDR_cas_n_0;
  inout DDR_ck_n_0;
  inout DDR_ck_p_0;
  inout DDR_cke_0;
  inout DDR_cs_n_0;
  inout [3:0]DDR_dm_0;
  inout [31:0]DDR_dq_0;
  inout [3:0]DDR_dqs_n_0;
  inout [3:0]DDR_dqs_p_0;
  inout DDR_odt_0;
  inout DDR_ras_n_0;
  inout DDR_reset_n_0;
  inout DDR_we_n_0;
  inout FIXED_IO_ddr_vrn_0;
  inout FIXED_IO_ddr_vrp_0;
  inout [53:0]FIXED_IO_mio_0;
  inout FIXED_IO_ps_clk_0;
  inout FIXED_IO_ps_porb_0;
  inout FIXED_IO_ps_srstb_0;
  inout MDIO_PHY_0_mdio_io_0;
  input [3:0]RGMII_0_rd_0;
  input RGMII_0_rx_ctl_0;
  input RGMII_0_rxc_0;
  output TMDS_0_tmds_clk_n_0;
  output TMDS_0_tmds_clk_p_0;
  output [2:0]TMDS_0_tmds_data_n_0;
  output [2:0]TMDS_0_tmds_data_p_0;

  wire [5:0]CurrentStageDBG_0;
  wire [14:0]DDR_addr_0;
  wire [2:0]DDR_ba_0;
  wire DDR_cas_n_0;
  wire DDR_ck_n_0;
  wire DDR_ck_p_0;
  wire DDR_cke_0;
  wire DDR_cs_n_0;
  wire [3:0]DDR_dm_0;
  wire [31:0]DDR_dq_0;
  wire [3:0]DDR_dqs_n_0;
  wire [3:0]DDR_dqs_p_0;
  wire DDR_odt_0;
  wire DDR_ras_n_0;
  wire DDR_reset_n_0;
  wire DDR_we_n_0;
  wire FIXED_IO_ddr_vrn_0;
  wire FIXED_IO_ddr_vrp_0;
  wire [53:0]FIXED_IO_mio_0;
  wire FIXED_IO_ps_clk_0;
  wire FIXED_IO_ps_porb_0;
  wire FIXED_IO_ps_srstb_0;
  wire MDIO_PHY_0_mdio_io_0;
  wire [3:0]RGMII_0_rd_0;
  wire RGMII_0_rx_ctl_0;
  wire RGMII_0_rxc_0;
  wire TMDS_0_tmds_clk_n_0;
  wire TMDS_0_tmds_clk_p_0;
  wire [2:0]TMDS_0_tmds_data_n_0;
  wire [2:0]TMDS_0_tmds_data_p_0;

  Everything Everything_i
       (.CurrentStageDBG_0(CurrentStageDBG_0),
        .DDR_addr_0(DDR_addr_0),
        .DDR_ba_0(DDR_ba_0),
        .DDR_cas_n_0(DDR_cas_n_0),
        .DDR_ck_n_0(DDR_ck_n_0),
        .DDR_ck_p_0(DDR_ck_p_0),
        .DDR_cke_0(DDR_cke_0),
        .DDR_cs_n_0(DDR_cs_n_0),
        .DDR_dm_0(DDR_dm_0),
        .DDR_dq_0(DDR_dq_0),
        .DDR_dqs_n_0(DDR_dqs_n_0),
        .DDR_dqs_p_0(DDR_dqs_p_0),
        .DDR_odt_0(DDR_odt_0),
        .DDR_ras_n_0(DDR_ras_n_0),
        .DDR_reset_n_0(DDR_reset_n_0),
        .DDR_we_n_0(DDR_we_n_0),
        .FIXED_IO_ddr_vrn_0(FIXED_IO_ddr_vrn_0),
        .FIXED_IO_ddr_vrp_0(FIXED_IO_ddr_vrp_0),
        .FIXED_IO_mio_0(FIXED_IO_mio_0),
        .FIXED_IO_ps_clk_0(FIXED_IO_ps_clk_0),
        .FIXED_IO_ps_porb_0(FIXED_IO_ps_porb_0),
        .FIXED_IO_ps_srstb_0(FIXED_IO_ps_srstb_0),
        .MDIO_PHY_0_mdio_io_0(MDIO_PHY_0_mdio_io_0),
        .RGMII_0_rd_0(RGMII_0_rd_0),
        .RGMII_0_rx_ctl_0(RGMII_0_rx_ctl_0),
        .RGMII_0_rxc_0(RGMII_0_rxc_0),
        .TMDS_0_tmds_clk_n_0(TMDS_0_tmds_clk_n_0),
        .TMDS_0_tmds_clk_p_0(TMDS_0_tmds_clk_p_0),
        .TMDS_0_tmds_data_n_0(TMDS_0_tmds_data_n_0),
        .TMDS_0_tmds_data_p_0(TMDS_0_tmds_data_p_0));
endmodule
