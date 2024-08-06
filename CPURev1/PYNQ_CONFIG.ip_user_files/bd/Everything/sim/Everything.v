//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Aug  1 22:13:39 2024
//Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
//Command     : generate_target Everything.bd
//Design      : Everything
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Everything,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Everything,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Everything.hwdef" *) 
module Everything
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FIXED_IO_PS_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FIXED_IO_PS_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) inout FIXED_IO_ps_clk_0;
  inout FIXED_IO_ps_porb_0;
  inout FIXED_IO_ps_srstb_0;
  inout MDIO_PHY_0_mdio_io_0;
  input [3:0]RGMII_0_rd_0;
  input RGMII_0_rx_ctl_0;
  input RGMII_0_rxc_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_0_TMDS_CLK_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_0_TMDS_CLK_N_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output TMDS_0_tmds_clk_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_0_TMDS_CLK_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_0_TMDS_CLK_P_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output TMDS_0_tmds_clk_p_0;
  output [2:0]TMDS_0_tmds_data_n_0;
  output [2:0]TMDS_0_tmds_data_p_0;

  wire [5:0]CPU_0_CurrentStageDBG;
  wire [14:0]Net;
  wire [2:0]Net1;
  wire [3:0]Net10;
  wire Net11;
  wire Net12;
  wire Net13;
  wire Net14;
  wire Net15;
  wire Net16;
  wire [53:0]Net17;
  wire Net18;
  wire Net19;
  wire Net2;
  wire Net20;
  wire Net21;
  wire Net3;
  wire Net4;
  wire Net5;
  wire Net6;
  wire [3:0]Net7;
  wire [31:0]Net8;
  wire [3:0]Net9;
  wire [3:0]RGMII_0_rd_0_1;
  wire RGMII_0_rx_ctl_0_1;
  wire RGMII_0_rxc_0_1;
  wire ZYNQ_wrapper_0_FCLK_CLK0_0;
  wire ZYNQ_wrapper_0_FCLK_RESET0_N_0;
  wire ZYNQ_wrapper_0_TMDS_0_tmds_clk_n;
  wire ZYNQ_wrapper_0_TMDS_0_tmds_clk_p;
  wire [2:0]ZYNQ_wrapper_0_TMDS_0_tmds_data_n;
  wire [2:0]ZYNQ_wrapper_0_TMDS_0_tmds_data_p;

  assign CurrentStageDBG_0[5:0] = CPU_0_CurrentStageDBG;
  assign RGMII_0_rd_0_1 = RGMII_0_rd_0[3:0];
  assign RGMII_0_rx_ctl_0_1 = RGMII_0_rx_ctl_0;
  assign RGMII_0_rxc_0_1 = RGMII_0_rxc_0;
  assign TMDS_0_tmds_clk_n_0 = ZYNQ_wrapper_0_TMDS_0_tmds_clk_n;
  assign TMDS_0_tmds_clk_p_0 = ZYNQ_wrapper_0_TMDS_0_tmds_clk_p;
  assign TMDS_0_tmds_data_n_0[2:0] = ZYNQ_wrapper_0_TMDS_0_tmds_data_n;
  assign TMDS_0_tmds_data_p_0[2:0] = ZYNQ_wrapper_0_TMDS_0_tmds_data_p;
  Everything_CPU_0_0 CPU_0
       (.CurrentStageDBG(CPU_0_CurrentStageDBG),
        .clk(ZYNQ_wrapper_0_FCLK_CLK0_0),
        .rst_n(ZYNQ_wrapper_0_FCLK_RESET0_N_0));
  Everything_ZYNQ_wrapper_0_0 ZYNQ_wrapper_0
       (.DDR_addr(DDR_addr_0[14:0]),
        .DDR_ba(DDR_ba_0[2:0]),
        .DDR_cas_n(DDR_cas_n_0),
        .DDR_ck_n(DDR_ck_n_0),
        .DDR_ck_p(DDR_ck_p_0),
        .DDR_cke(DDR_cke_0),
        .DDR_cs_n(DDR_cs_n_0),
        .DDR_dm(DDR_dm_0[3:0]),
        .DDR_dq(DDR_dq_0[31:0]),
        .DDR_dqs_n(DDR_dqs_n_0[3:0]),
        .DDR_dqs_p(DDR_dqs_p_0[3:0]),
        .DDR_odt(DDR_odt_0),
        .DDR_ras_n(DDR_ras_n_0),
        .DDR_reset_n(DDR_reset_n_0),
        .DDR_we_n(DDR_we_n_0),
        .FCLK_CLK0_0(ZYNQ_wrapper_0_FCLK_CLK0_0),
        .FCLK_RESET0_N_0(ZYNQ_wrapper_0_FCLK_RESET0_N_0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn_0),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp_0),
        .FIXED_IO_mio(FIXED_IO_mio_0[53:0]),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk_0),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb_0),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb_0),
        .MDIO_PHY_0_mdio_io(MDIO_PHY_0_mdio_io_0),
        .RGMII_0_rd(RGMII_0_rd_0_1),
        .RGMII_0_rx_ctl(RGMII_0_rx_ctl_0_1),
        .RGMII_0_rxc(RGMII_0_rxc_0_1),
        .TMDS_0_tmds_clk_n(ZYNQ_wrapper_0_TMDS_0_tmds_clk_n),
        .TMDS_0_tmds_clk_p(ZYNQ_wrapper_0_TMDS_0_tmds_clk_p),
        .TMDS_0_tmds_data_n(ZYNQ_wrapper_0_TMDS_0_tmds_data_n),
        .TMDS_0_tmds_data_p(ZYNQ_wrapper_0_TMDS_0_tmds_data_p));
endmodule
