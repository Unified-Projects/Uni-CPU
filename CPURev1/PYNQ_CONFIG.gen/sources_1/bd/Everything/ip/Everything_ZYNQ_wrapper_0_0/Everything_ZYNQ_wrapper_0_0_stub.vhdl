-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Aug  1 22:15:12 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPURev1/PYNQ_CONFIG.gen/sources_1/bd/Everything/ip/Everything_ZYNQ_wrapper_0_0/Everything_ZYNQ_wrapper_0_0_stub.vhdl
-- Design      : Everything_ZYNQ_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Everything_ZYNQ_wrapper_0_0 is
  Port ( 
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FCLK_CLK0_0 : out STD_LOGIC;
    FCLK_RESET0_N_0 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    MDIO_PHY_0_mdc : out STD_LOGIC;
    MDIO_PHY_0_mdio_io : inout STD_LOGIC;
    RGMII_0_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_0_rx_ctl : in STD_LOGIC;
    RGMII_0_rxc : in STD_LOGIC;
    RGMII_0_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_0_tx_ctl : out STD_LOGIC;
    RGMII_0_txc : out STD_LOGIC;
    TMDS_0_tmds_clk_n : out STD_LOGIC;
    TMDS_0_tmds_clk_p : out STD_LOGIC;
    TMDS_0_tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_0_tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end Everything_ZYNQ_wrapper_0_0;

architecture stub of Everything_ZYNQ_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FCLK_CLK0_0,FCLK_RESET0_N_0,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,MDIO_PHY_0_mdc,MDIO_PHY_0_mdio_io,RGMII_0_rd[3:0],RGMII_0_rx_ctl,RGMII_0_rxc,RGMII_0_td[3:0],RGMII_0_tx_ctl,RGMII_0_txc,TMDS_0_tmds_clk_n,TMDS_0_tmds_clk_p,TMDS_0_tmds_data_n[2:0],TMDS_0_tmds_data_p[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ZYNQ_wrapper,Vivado 2024.1";
begin
end;
