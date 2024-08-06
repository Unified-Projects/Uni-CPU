// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ZYNQ_wrapper:1.0
// IP Revision: 1

(* X_CORE_INFO = "ZYNQ_wrapper,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "Everything_ZYNQ_wrapper_0_0,ZYNQ_wrapper,{}" *)
(* CORE_GENERATION_INFO = "Everything_ZYNQ_wrapper_0_0,ZYNQ_wrapper,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ZYNQ_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Everything_ZYNQ_wrapper_0_0 (
  DDR_addr,
  DDR_ba,
  DDR_cas_n,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cke,
  DDR_cs_n,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  DDR_odt,
  DDR_ras_n,
  DDR_reset_n,
  DDR_we_n,
  FCLK_CLK0_0,
  FCLK_RESET0_N_0,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_mio,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  FIXED_IO_ps_srstb,
  MDIO_PHY_0_mdc,
  MDIO_PHY_0_mdio_io,
  RGMII_0_rd,
  RGMII_0_rx_ctl,
  RGMII_0_rxc,
  RGMII_0_td,
  RGMII_0_tx_ctl,
  RGMII_0_txc,
  TMDS_0_tmds_clk_n,
  TMDS_0_tmds_clk_p,
  TMDS_0_tmds_data_n,
  TMDS_0_tmds_data_p
);

inout wire [14 : 0] DDR_addr;
inout wire [2 : 0] DDR_ba;
inout wire DDR_cas_n;
inout wire DDR_ck_n;
inout wire DDR_ck_p;
inout wire DDR_cke;
inout wire DDR_cs_n;
inout wire [3 : 0] DDR_dm;
inout wire [31 : 0] DDR_dq;
inout wire [3 : 0] DDR_dqs_n;
inout wire [3 : 0] DDR_dqs_p;
inout wire DDR_odt;
inout wire DDR_ras_n;
inout wire DDR_reset_n;
inout wire DDR_we_n;
output wire FCLK_CLK0_0;
output wire FCLK_RESET0_N_0;
inout wire FIXED_IO_ddr_vrn;
inout wire FIXED_IO_ddr_vrp;
inout wire [53 : 0] FIXED_IO_mio;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO_ps_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 FIXED_IO_ps_clk CLK" *)
inout wire FIXED_IO_ps_clk;
inout wire FIXED_IO_ps_porb;
inout wire FIXED_IO_ps_srstb;
output wire MDIO_PHY_0_mdc;
inout wire MDIO_PHY_0_mdio_io;
input wire [3 : 0] RGMII_0_rd;
input wire RGMII_0_rx_ctl;
input wire RGMII_0_rxc;
output wire [3 : 0] RGMII_0_td;
output wire RGMII_0_tx_ctl;
output wire RGMII_0_txc;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS_0 TMDS_CLK_N" *)
output wire TMDS_0_tmds_clk_n;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS_0 TMDS_CLK_P" *)
output wire TMDS_0_tmds_clk_p;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS_0 TMDS_DATA_N" *)
output wire [2 : 0] TMDS_0_tmds_data_n;
(* X_INTERFACE_INFO = "openedv.com:user:TMDS:1.0 TMDS_0 TMDS_DATA_P" *)
output wire [2 : 0] TMDS_0_tmds_data_p;

  ZYNQ_wrapper inst (
    .DDR_addr(DDR_addr),
    .DDR_ba(DDR_ba),
    .DDR_cas_n(DDR_cas_n),
    .DDR_ck_n(DDR_ck_n),
    .DDR_ck_p(DDR_ck_p),
    .DDR_cke(DDR_cke),
    .DDR_cs_n(DDR_cs_n),
    .DDR_dm(DDR_dm),
    .DDR_dq(DDR_dq),
    .DDR_dqs_n(DDR_dqs_n),
    .DDR_dqs_p(DDR_dqs_p),
    .DDR_odt(DDR_odt),
    .DDR_ras_n(DDR_ras_n),
    .DDR_reset_n(DDR_reset_n),
    .DDR_we_n(DDR_we_n),
    .FCLK_CLK0_0(FCLK_CLK0_0),
    .FCLK_RESET0_N_0(FCLK_RESET0_N_0),
    .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
    .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
    .FIXED_IO_mio(FIXED_IO_mio),
    .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
    .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
    .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
    .MDIO_PHY_0_mdc(MDIO_PHY_0_mdc),
    .MDIO_PHY_0_mdio_io(MDIO_PHY_0_mdio_io),
    .RGMII_0_rd(RGMII_0_rd),
    .RGMII_0_rx_ctl(RGMII_0_rx_ctl),
    .RGMII_0_rxc(RGMII_0_rxc),
    .RGMII_0_td(RGMII_0_td),
    .RGMII_0_tx_ctl(RGMII_0_tx_ctl),
    .RGMII_0_txc(RGMII_0_txc),
    .TMDS_0_tmds_clk_n(TMDS_0_tmds_clk_n),
    .TMDS_0_tmds_clk_p(TMDS_0_tmds_clk_p),
    .TMDS_0_tmds_data_n(TMDS_0_tmds_data_n),
    .TMDS_0_tmds_data_p(TMDS_0_tmds_data_p)
  );
endmodule
