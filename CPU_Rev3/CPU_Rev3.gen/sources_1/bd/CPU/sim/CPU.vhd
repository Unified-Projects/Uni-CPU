--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
--Date        : Fri Oct 11 13:20:51 2024
--Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
--Command     : generate_target CPU.bd
--Design      : CPU
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU is
  port (
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
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    MDIO_PHY_0_mdc : out STD_LOGIC;
    MDIO_PHY_0_mdio_i : in STD_LOGIC;
    MDIO_PHY_0_mdio_o : out STD_LOGIC;
    MDIO_PHY_0_mdio_t : out STD_LOGIC;
    RGMII_0_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_0_rx_ctl : in STD_LOGIC;
    RGMII_0_rxc : in STD_LOGIC;
    RGMII_0_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_0_tx_ctl : out STD_LOGIC;
    RGMII_0_txc : out STD_LOGIC;
    UART_0_0_rxd : in STD_LOGIC;
    UART_0_0_txd : out STD_LOGIC;
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    led_0 : out STD_LOGIC;
    led_1 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of CPU : entity is "CPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CPU,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=1,da_clkrst_cnt=2,da_ps7_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of CPU : entity is "CPU.hwdef";
end CPU;

architecture STRUCTURE of CPU is
  component CPU_processing_system7_0_0 is
  port (
    ENET0_GMII_TX_EN : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_GMII_TX_ER : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET0_MDIO_MDC : out STD_LOGIC;
    ENET0_MDIO_O : out STD_LOGIC;
    ENET0_MDIO_T : out STD_LOGIC;
    ENET0_GMII_TXD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET0_GMII_COL : in STD_LOGIC;
    ENET0_GMII_CRS : in STD_LOGIC;
    ENET0_GMII_RX_CLK : in STD_LOGIC;
    ENET0_GMII_RX_DV : in STD_LOGIC;
    ENET0_GMII_RX_ER : in STD_LOGIC;
    ENET0_GMII_TX_CLK : in STD_LOGIC;
    ENET0_MDIO_I : in STD_LOGIC;
    ENET0_EXT_INTIN : in STD_LOGIC;
    ENET0_GMII_RXD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    UART0_TX : out STD_LOGIC;
    UART0_RX : in STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component CPU_processing_system7_0_0;
  component CPU_gmii_to_rgmii_0_0 is
  port (
    tx_reset : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    clkin : in STD_LOGIC;
    ref_clk_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    gmii_clk_125m_out : out STD_LOGIC;
    gmii_clk_25m_out : out STD_LOGIC;
    gmii_clk_2_5m_out : out STD_LOGIC;
    rgmii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_tx_ctl : out STD_LOGIC;
    rgmii_txc : out STD_LOGIC;
    rgmii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rx_ctl : in STD_LOGIC;
    rgmii_rxc : in STD_LOGIC;
    link_status : out STD_LOGIC;
    clock_speed : out STD_LOGIC_VECTOR ( 1 downto 0 );
    duplex_status : out STD_LOGIC;
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
    mdio_phy_mdc : out STD_LOGIC;
    mdio_phy_i : in STD_LOGIC;
    mdio_phy_o : out STD_LOGIC;
    mdio_phy_t : out STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_tx_clk : out STD_LOGIC;
    gmii_crs : out STD_LOGIC;
    gmii_col : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_rx_clk : out STD_LOGIC;
    speed_mode : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component CPU_gmii_to_rgmii_0_0;
  component CPU_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component CPU_util_vector_logic_0_0;
  component CPU_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component CPU_proc_sys_reset_0_0;
  component CPU_IO_Controller_0_0 is
  port (
    clk : in STD_LOGIC;
    ena : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC;
    reset : in STD_LOGIC;
    led_0 : out STD_LOGIC;
    led_1 : out STD_LOGIC;
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    done : out STD_LOGIC
  );
  end component CPU_IO_Controller_0_0;
  component CPU_ClockSplitter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_0 : out STD_LOGIC;
    clk_1 : out STD_LOGIC
  );
  end component CPU_ClockSplitter_0_0;
  component CPU_ClockDivider_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  end component CPU_ClockDivider_0_0;
  component CPU_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component CPU_blk_mem_gen_0_0;
  component CPU_CPU_Module_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    interrupt : in STD_LOGIC_VECTOR ( 31 downto 0 );
    resetOut : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_en : out STD_LOGIC;
    bram_din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    IO_Enable : out STD_LOGIC;
    IO_DONE : in STD_LOGIC;
    IO_In : in STD_LOGIC;
    IO_Out : out STD_LOGIC;
    IO_Select : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component CPU_CPU_Module_0_1;
  signal CPU_Module_0_IO_Enable : STD_LOGIC;
  signal CPU_Module_0_IO_Out : STD_LOGIC;
  signal CPU_Module_0_IO_Select : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CPU_Module_0_bram_addr : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal CPU_Module_0_bram_dout : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal CPU_Module_0_bram_en : STD_LOGIC;
  signal CPU_Module_0_bram_we : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal CPU_Module_0_resetOut : STD_LOGIC;
  signal ClockDivider_0_clk_div : STD_LOGIC;
  signal ClockSplitter_0_clk_0 : STD_LOGIC;
  signal ClockSplitter_0_clk_1 : STD_LOGIC;
  signal IO_Controller_0_data_out : STD_LOGIC;
  signal IO_Controller_0_done : STD_LOGIC;
  signal IO_Controller_0_led_0 : STD_LOGIC;
  signal IO_Controller_0_led_1 : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal btn_0_1 : STD_LOGIC;
  signal btn_1_0_1 : STD_LOGIC;
  signal gmii_to_rgmii_0_MDIO_PHY_MDC : STD_LOGIC;
  signal gmii_to_rgmii_0_MDIO_PHY_MDIO_I : STD_LOGIC;
  signal gmii_to_rgmii_0_MDIO_PHY_MDIO_O : STD_LOGIC;
  signal gmii_to_rgmii_0_MDIO_PHY_MDIO_T : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_0_RGMII_RXC : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_RX_CTL : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_0_RGMII_TXC : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_TX_CTL : STD_LOGIC;
  signal proc_sys_reset_0_mb_reset : STD_LOGIC;
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_GMII_ETHERNET_0_COL : STD_LOGIC;
  signal processing_system7_0_GMII_ETHERNET_0_CRS : STD_LOGIC;
  signal processing_system7_0_GMII_ETHERNET_0_RXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal processing_system7_0_GMII_ETHERNET_0_RX_CLK : STD_LOGIC;
  signal processing_system7_0_GMII_ETHERNET_0_RX_DV : STD_LOGIC;
  signal processing_system7_0_GMII_ETHERNET_0_RX_ER : STD_LOGIC;
  signal processing_system7_0_GMII_ETHERNET_0_TXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal processing_system7_0_GMII_ETHERNET_0_TX_CLK : STD_LOGIC;
  signal processing_system7_0_GMII_ETHERNET_0_TX_EN : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_GMII_ETHERNET_0_TX_ER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_MDIO_ETHERNET_0_MDC : STD_LOGIC;
  signal processing_system7_0_MDIO_ETHERNET_0_MDIO_I : STD_LOGIC;
  signal processing_system7_0_MDIO_ETHERNET_0_MDIO_O : STD_LOGIC;
  signal processing_system7_0_MDIO_ETHERNET_0_MDIO_T : STD_LOGIC;
  signal processing_system7_0_UART_0_RxD : STD_LOGIC;
  signal processing_system7_0_UART_0_TxD : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_clk_125m_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_clk_25m_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_clk_2_5m_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_link_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mmcm_locked_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_ref_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_0_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of MDIO_PHY_0_mdc : signal is "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDC";
  attribute X_INTERFACE_PARAMETER of MDIO_PHY_0_mdc : signal is "XIL_INTERFACENAME MDIO_PHY_0, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of MDIO_PHY_0_mdio_i : signal is "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDIO_I";
  attribute X_INTERFACE_INFO of MDIO_PHY_0_mdio_o : signal is "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDIO_O";
  attribute X_INTERFACE_INFO of MDIO_PHY_0_mdio_t : signal is "xilinx.com:interface:mdio:1.0 MDIO_PHY_0 MDIO_T";
  attribute X_INTERFACE_INFO of RGMII_0_rx_ctl : signal is "xilinx.com:interface:rgmii:1.0 RGMII_0 RX_CTL";
  attribute X_INTERFACE_INFO of RGMII_0_rxc : signal is "xilinx.com:interface:rgmii:1.0 RGMII_0 RXC";
  attribute X_INTERFACE_INFO of RGMII_0_tx_ctl : signal is "xilinx.com:interface:rgmii:1.0 RGMII_0 TX_CTL";
  attribute X_INTERFACE_INFO of RGMII_0_txc : signal is "xilinx.com:interface:rgmii:1.0 RGMII_0 TXC";
  attribute X_INTERFACE_INFO of UART_0_0_rxd : signal is "xilinx.com:interface:uart:1.0 UART_0_0 RxD";
  attribute X_INTERFACE_INFO of UART_0_0_txd : signal is "xilinx.com:interface:uart:1.0 UART_0_0 TxD";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of RGMII_0_rd : signal is "xilinx.com:interface:rgmii:1.0 RGMII_0 RD";
  attribute X_INTERFACE_INFO of RGMII_0_td : signal is "xilinx.com:interface:rgmii:1.0 RGMII_0 TD";
begin
  MDIO_PHY_0_mdc <= gmii_to_rgmii_0_MDIO_PHY_MDC;
  MDIO_PHY_0_mdio_o <= gmii_to_rgmii_0_MDIO_PHY_MDIO_O;
  MDIO_PHY_0_mdio_t <= gmii_to_rgmii_0_MDIO_PHY_MDIO_T;
  RGMII_0_td(3 downto 0) <= gmii_to_rgmii_0_RGMII_TD(3 downto 0);
  RGMII_0_tx_ctl <= gmii_to_rgmii_0_RGMII_TX_CTL;
  RGMII_0_txc <= gmii_to_rgmii_0_RGMII_TXC;
  UART_0_0_txd <= processing_system7_0_UART_0_TxD;
  btn_0_1 <= btn_0;
  btn_1_0_1 <= btn_1;
  gmii_to_rgmii_0_MDIO_PHY_MDIO_I <= MDIO_PHY_0_mdio_i;
  gmii_to_rgmii_0_RGMII_RD(3 downto 0) <= RGMII_0_rd(3 downto 0);
  gmii_to_rgmii_0_RGMII_RXC <= RGMII_0_rxc;
  gmii_to_rgmii_0_RGMII_RX_CTL <= RGMII_0_rx_ctl;
  led_0 <= IO_Controller_0_led_0;
  led_1 <= IO_Controller_0_led_1;
  processing_system7_0_UART_0_RxD <= UART_0_0_rxd;
CPU_Module_0: component CPU_CPU_Module_0_1
     port map (
      IO_DONE => IO_Controller_0_done,
      IO_Enable => CPU_Module_0_IO_Enable,
      IO_In => IO_Controller_0_data_out,
      IO_Out => CPU_Module_0_IO_Out,
      IO_Select(4 downto 0) => CPU_Module_0_IO_Select(4 downto 0),
      bram_addr(12 downto 0) => CPU_Module_0_bram_addr(12 downto 0),
      bram_din(63 downto 0) => blk_mem_gen_0_douta(63 downto 0),
      bram_dout(63 downto 0) => CPU_Module_0_bram_dout(63 downto 0),
      bram_en => CPU_Module_0_bram_en,
      bram_we(7 downto 0) => CPU_Module_0_bram_we(7 downto 0),
      clk => ClockSplitter_0_clk_0,
      interrupt(31 downto 0) => B"00000000000000000000000000000000",
      reset => proc_sys_reset_0_mb_reset,
      resetOut => CPU_Module_0_resetOut
    );
ClockDivider_0: component CPU_ClockDivider_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK0,
      clk_div => ClockDivider_0_clk_div,
      reset => proc_sys_reset_0_mb_reset
    );
ClockSplitter_0: component CPU_ClockSplitter_0_0
     port map (
      clk => ClockDivider_0_clk_div,
      clk_0 => ClockSplitter_0_clk_0,
      clk_1 => ClockSplitter_0_clk_1,
      reset => proc_sys_reset_0_mb_reset
    );
IO_Controller_0: component CPU_IO_Controller_0_0
     port map (
      btn_0 => btn_0_1,
      btn_1 => btn_1_0_1,
      clk => ClockSplitter_0_clk_1,
      data_in => CPU_Module_0_IO_Out,
      data_out => IO_Controller_0_data_out,
      done => IO_Controller_0_done,
      ena => CPU_Module_0_IO_Enable,
      led_0 => IO_Controller_0_led_0,
      led_1 => IO_Controller_0_led_1,
      reset => proc_sys_reset_0_mb_reset,
      sel(4 downto 0) => CPU_Module_0_IO_Select(4 downto 0)
    );
blk_mem_gen_0: component CPU_blk_mem_gen_0_0
     port map (
      addra(12 downto 0) => CPU_Module_0_bram_addr(12 downto 0),
      clka => ClockSplitter_0_clk_1,
      dina(63 downto 0) => CPU_Module_0_bram_dout(63 downto 0),
      douta(63 downto 0) => blk_mem_gen_0_douta(63 downto 0),
      ena => CPU_Module_0_bram_en,
      wea(7 downto 0) => CPU_Module_0_bram_we(7 downto 0)
    );
gmii_to_rgmii_0: component CPU_gmii_to_rgmii_0_0
     port map (
      clkin => processing_system7_0_FCLK_CLK0,
      clock_speed(1 downto 0) => NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED(1 downto 0),
      duplex_status => NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED,
      gmii_clk_125m_out => NLW_gmii_to_rgmii_0_gmii_clk_125m_out_UNCONNECTED,
      gmii_clk_25m_out => NLW_gmii_to_rgmii_0_gmii_clk_25m_out_UNCONNECTED,
      gmii_clk_2_5m_out => NLW_gmii_to_rgmii_0_gmii_clk_2_5m_out_UNCONNECTED,
      gmii_col => processing_system7_0_GMII_ETHERNET_0_COL,
      gmii_crs => processing_system7_0_GMII_ETHERNET_0_CRS,
      gmii_rx_clk => processing_system7_0_GMII_ETHERNET_0_RX_CLK,
      gmii_rx_dv => processing_system7_0_GMII_ETHERNET_0_RX_DV,
      gmii_rx_er => processing_system7_0_GMII_ETHERNET_0_RX_ER,
      gmii_rxd(7 downto 0) => processing_system7_0_GMII_ETHERNET_0_RXD(7 downto 0),
      gmii_tx_clk => processing_system7_0_GMII_ETHERNET_0_TX_CLK,
      gmii_tx_en => processing_system7_0_GMII_ETHERNET_0_TX_EN(0),
      gmii_tx_er => processing_system7_0_GMII_ETHERNET_0_TX_ER(0),
      gmii_txd(7 downto 0) => processing_system7_0_GMII_ETHERNET_0_TXD(7 downto 0),
      link_status => NLW_gmii_to_rgmii_0_link_status_UNCONNECTED,
      mdio_gem_i => processing_system7_0_MDIO_ETHERNET_0_MDIO_I,
      mdio_gem_mdc => processing_system7_0_MDIO_ETHERNET_0_MDC,
      mdio_gem_o => processing_system7_0_MDIO_ETHERNET_0_MDIO_O,
      mdio_gem_t => processing_system7_0_MDIO_ETHERNET_0_MDIO_T,
      mdio_phy_i => gmii_to_rgmii_0_MDIO_PHY_MDIO_I,
      mdio_phy_mdc => gmii_to_rgmii_0_MDIO_PHY_MDC,
      mdio_phy_o => gmii_to_rgmii_0_MDIO_PHY_MDIO_O,
      mdio_phy_t => gmii_to_rgmii_0_MDIO_PHY_MDIO_T,
      mmcm_locked_out => NLW_gmii_to_rgmii_0_mmcm_locked_out_UNCONNECTED,
      ref_clk_out => NLW_gmii_to_rgmii_0_ref_clk_out_UNCONNECTED,
      rgmii_rx_ctl => gmii_to_rgmii_0_RGMII_RX_CTL,
      rgmii_rxc => gmii_to_rgmii_0_RGMII_RXC,
      rgmii_rxd(3 downto 0) => gmii_to_rgmii_0_RGMII_RD(3 downto 0),
      rgmii_tx_ctl => gmii_to_rgmii_0_RGMII_TX_CTL,
      rgmii_txc => gmii_to_rgmii_0_RGMII_TXC,
      rgmii_txd(3 downto 0) => gmii_to_rgmii_0_RGMII_TD(3 downto 0),
      rx_reset => util_vector_logic_0_Res(0),
      speed_mode(1 downto 0) => NLW_gmii_to_rgmii_0_speed_mode_UNCONNECTED(1 downto 0),
      tx_reset => util_vector_logic_0_Res(0)
    );
proc_sys_reset_0: component CPU_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => CPU_Module_0_resetOut,
      mb_reset => proc_sys_reset_0_mb_reset,
      peripheral_aresetn(0) => NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
processing_system7_0: component CPU_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      ENET0_EXT_INTIN => '0',
      ENET0_GMII_COL => processing_system7_0_GMII_ETHERNET_0_COL,
      ENET0_GMII_CRS => processing_system7_0_GMII_ETHERNET_0_CRS,
      ENET0_GMII_RXD(7 downto 0) => processing_system7_0_GMII_ETHERNET_0_RXD(7 downto 0),
      ENET0_GMII_RX_CLK => processing_system7_0_GMII_ETHERNET_0_RX_CLK,
      ENET0_GMII_RX_DV => processing_system7_0_GMII_ETHERNET_0_RX_DV,
      ENET0_GMII_RX_ER => processing_system7_0_GMII_ETHERNET_0_RX_ER,
      ENET0_GMII_TXD(7 downto 0) => processing_system7_0_GMII_ETHERNET_0_TXD(7 downto 0),
      ENET0_GMII_TX_CLK => processing_system7_0_GMII_ETHERNET_0_TX_CLK,
      ENET0_GMII_TX_EN(0) => processing_system7_0_GMII_ETHERNET_0_TX_EN(0),
      ENET0_GMII_TX_ER(0) => processing_system7_0_GMII_ETHERNET_0_TX_ER(0),
      ENET0_MDIO_I => processing_system7_0_MDIO_ETHERNET_0_MDIO_I,
      ENET0_MDIO_MDC => processing_system7_0_MDIO_ETHERNET_0_MDC,
      ENET0_MDIO_O => processing_system7_0_MDIO_ETHERNET_0_MDIO_O,
      ENET0_MDIO_T => processing_system7_0_MDIO_ETHERNET_0_MDIO_T,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      UART0_RX => processing_system7_0_UART_0_RxD,
      UART0_TX => processing_system7_0_UART_0_TxD,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
util_vector_logic_0: component CPU_util_vector_logic_0_0
     port map (
      Op1(0) => processing_system7_0_FCLK_RESET0_N,
      Res(0) => util_vector_logic_0_Res(0)
    );
end STRUCTURE;
