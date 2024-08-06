//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Wed Jul 31 21:47:59 2024
//Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
//Command     : generate_target ZYNQ.bd
//Design      : ZYNQ
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ZYNQ,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ZYNQ,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=13,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=3,synth_mode=None}" *) (* HW_HANDOFF = "ZYNQ.hwdef" *) 
module ZYNQ
   (DDR_addr,
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
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;

  wire ALU_0_ClockPulse;
  wire [63:0]ALU_0_ResultAddr;
  wire [63:0]ALU_0_ResultCtrl;
  wire [63:0]ALU_0_ResultData;
  wire [63:0]BUS_Address_ALU;
  wire [63:0]BUS_Address_CU;
  wire [63:0]BUS_Address_IO;
  wire [63:0]BUS_Address_MM;
  wire [63:0]BUS_Control_ALU;
  wire [63:0]BUS_Control_CU;
  wire BUS_Control_ClockOut;
  wire [63:0]BUS_Control_IO;
  wire [63:0]BUS_Control_MM;
  wire [63:0]BUS_Data_ALU;
  wire [63:0]BUS_Data_CU;
  wire [63:0]BUS_Data_IO;
  wire [63:0]BUS_Data_MM;
  wire [63:0]BusMerger_Address_OutBus;
  wire [63:0]BusMerger_Control_OutBus;
  wire [63:0]BusMerger_Data_OutBus;
  wire [63:0]CU_0_Address;
  wire [63:0]CU_0_Control;
  wire [63:0]CU_0_Data;
  wire CU_0_SendClock;
  wire DeviceSelector_Address_clk;
  wire [1:0]DeviceSelector_Address_dev;
  wire DeviceSelector_Control_clk;
  wire [1:0]DeviceSelector_Control_dev;
  wire DeviceSelector_Data_clk;
  wire [1:0]DeviceSelector_Data_dev;
  wire [63:0]IOController_0_ResultAddr;
  wire [63:0]IOController_0_ResultCtrl;
  wire [63:0]IOController_0_ResultData;
  wire IOController_0_SendClock;
  wire MM_0_ClockPulse;
  wire [63:0]MM_0_ResultAddr;
  wire [63:0]MM_0_ResultCtrl;
  wire [63:0]MM_0_ResultData;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire processing_system7_0_GMII_ETHERNET_0_COL;
  wire processing_system7_0_GMII_ETHERNET_0_CRS;
  wire [7:0]processing_system7_0_GMII_ETHERNET_0_RXD;
  wire processing_system7_0_GMII_ETHERNET_0_RX_CLK;
  wire processing_system7_0_GMII_ETHERNET_0_RX_DV;
  wire processing_system7_0_GMII_ETHERNET_0_RX_ER;
  wire [7:0]processing_system7_0_GMII_ETHERNET_0_TXD;
  wire processing_system7_0_GMII_ETHERNET_0_TX_CLK;
  wire [0:0]processing_system7_0_GMII_ETHERNET_0_TX_EN;
  wire [0:0]processing_system7_0_GMII_ETHERNET_0_TX_ER;
  wire processing_system7_0_MDIO_ETHERNET_0_MDC;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_I;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_O;
  wire processing_system7_0_MDIO_ETHERNET_0_MDIO_T;
  wire [0:0]util_vector_logic_0_Res;

  ZYNQ_ALU_0_1 ALU_0
       (.Address(BUS_Address_ALU),
        .ClockPulse(ALU_0_ClockPulse),
        .Control(BUS_Control_ALU),
        .Data(BUS_Data_ALU),
        .ResultAddr(ALU_0_ResultAddr),
        .ResultCtrl(ALU_0_ResultCtrl),
        .ResultData(ALU_0_ResultData),
        .clk(BUS_Control_ClockOut),
        .rst_n(processing_system7_0_FCLK_RESET0_N));
  ZYNQ_BUS_2_0 BUS_Address
       (.ALU(BUS_Address_ALU),
        .CU(BUS_Address_CU),
        .ClockIn(DeviceSelector_Address_clk),
        .IO(BUS_Address_IO),
        .MM(BUS_Address_MM),
        .data_in(BusMerger_Address_OutBus),
        .device_select(DeviceSelector_Address_dev));
  ZYNQ_BUS_0_0 BUS_Control
       (.ALU(BUS_Control_ALU),
        .CU(BUS_Control_CU),
        .ClockIn(DeviceSelector_Control_clk),
        .ClockOut(BUS_Control_ClockOut),
        .IO(BUS_Control_IO),
        .MM(BUS_Control_MM),
        .data_in(BusMerger_Control_OutBus),
        .device_select(DeviceSelector_Control_dev));
  ZYNQ_BUS_1_0 BUS_Data
       (.ALU(BUS_Data_ALU),
        .CU(BUS_Data_CU),
        .ClockIn(DeviceSelector_Data_clk),
        .IO(BUS_Data_IO),
        .MM(BUS_Data_MM),
        .data_in(BusMerger_Data_OutBus),
        .device_select(DeviceSelector_Data_dev));
  ZYNQ_BusMerger_2_0 BusMerger_Address
       (.ALU_IN(ALU_0_ResultAddr),
        .CU_IN(CU_0_Address),
        .IO_IN(IOController_0_ResultAddr),
        .MM_IN(MM_0_ResultAddr),
        .OutBus(BusMerger_Address_OutBus),
        .clk(DeviceSelector_Address_clk),
        .select_in(DeviceSelector_Address_dev));
  ZYNQ_BusMerger_1_0 BusMerger_Control
       (.ALU_IN(ALU_0_ResultCtrl),
        .CU_IN(CU_0_Control),
        .IO_IN(IOController_0_ResultCtrl),
        .MM_IN(MM_0_ResultCtrl),
        .OutBus(BusMerger_Control_OutBus),
        .clk(DeviceSelector_Control_clk),
        .select_in(DeviceSelector_Control_dev));
  ZYNQ_BusMerger_0_0 BusMerger_Data
       (.ALU_IN(ALU_0_ResultData),
        .CU_IN(CU_0_Data),
        .IO_IN(IOController_0_ResultData),
        .MM_IN(MM_0_ResultData),
        .OutBus(BusMerger_Data_OutBus),
        .clk(DeviceSelector_Data_clk),
        .select_in(DeviceSelector_Data_dev));
  ZYNQ_CU_0_1 CU_0
       (.Address(CU_0_Address),
        .Control(CU_0_Control),
        .CtrlClock(BUS_Control_ClockOut),
        .Data(CU_0_Data),
        .InAddress(BUS_Address_CU),
        .InControl(BUS_Control_CU),
        .InData(BUS_Data_CU),
        .SendClock(CU_0_SendClock),
        .clk(BUS_Control_ClockOut),
        .rst_n(processing_system7_0_FCLK_RESET0_N));
  ZYNQ_DeviceSelector_0_1 DeviceSelector_Address
       (.ALU_clk(ALU_0_ClockPulse),
        .CU_clk(CU_0_SendClock),
        .IO_clk(IOController_0_SendClock),
        .MM_clk(MM_0_ClockPulse),
        .clk(DeviceSelector_Address_clk),
        .dev(DeviceSelector_Address_dev));
  ZYNQ_DeviceSelector_1_0 DeviceSelector_Control
       (.ALU_clk(ALU_0_ClockPulse),
        .CU_clk(CU_0_SendClock),
        .IO_clk(IOController_0_SendClock),
        .MM_clk(MM_0_ClockPulse),
        .clk(DeviceSelector_Control_clk),
        .dev(DeviceSelector_Control_dev));
  ZYNQ_DeviceSelector_0_0 DeviceSelector_Data
       (.ALU_clk(ALU_0_ClockPulse),
        .CU_clk(CU_0_SendClock),
        .IO_clk(IOController_0_SendClock),
        .MM_clk(MM_0_ClockPulse),
        .clk(DeviceSelector_Data_clk),
        .dev(DeviceSelector_Data_dev));
  ZYNQ_IOController_0_0 IOController_0
       (.Address(BUS_Address_IO),
        .ClockPulse(IOController_0_SendClock),
        .Control(BUS_Control_IO),
        .Data(BUS_Data_IO),
        .ResultAddr(IOController_0_ResultAddr),
        .ResultCtrl(IOController_0_ResultCtrl),
        .ResultData(IOController_0_ResultData),
        .clk(BUS_Control_ClockOut),
        .rst_n(processing_system7_0_FCLK_RESET0_N));
  ZYNQ_MM_0_1 MM_0
       (.Address(BUS_Address_MM),
        .ClockPulse(MM_0_ClockPulse),
        .Control(BUS_Control_MM),
        .Data(BUS_Data_MM),
        .ResultAddr(MM_0_ResultAddr),
        .ResultCtrl(MM_0_ResultCtrl),
        .ResultData(MM_0_ResultData),
        .clk(BUS_Control_ClockOut),
        .rst_n(processing_system7_0_FCLK_RESET0_N));
  ZYNQ_gmii_to_rgmii_0_0 gmii_to_rgmii_0
       (.clkin(processing_system7_0_FCLK_CLK0),
        .gmii_col(processing_system7_0_GMII_ETHERNET_0_COL),
        .gmii_crs(processing_system7_0_GMII_ETHERNET_0_CRS),
        .gmii_rx_clk(processing_system7_0_GMII_ETHERNET_0_RX_CLK),
        .gmii_rx_dv(processing_system7_0_GMII_ETHERNET_0_RX_DV),
        .gmii_rx_er(processing_system7_0_GMII_ETHERNET_0_RX_ER),
        .gmii_rxd(processing_system7_0_GMII_ETHERNET_0_RXD),
        .gmii_tx_clk(processing_system7_0_GMII_ETHERNET_0_TX_CLK),
        .gmii_tx_en(processing_system7_0_GMII_ETHERNET_0_TX_EN),
        .gmii_tx_er(processing_system7_0_GMII_ETHERNET_0_TX_ER),
        .gmii_txd(processing_system7_0_GMII_ETHERNET_0_TXD),
        .mdio_gem_i(processing_system7_0_MDIO_ETHERNET_0_MDIO_O),
        .mdio_gem_mdc(processing_system7_0_MDIO_ETHERNET_0_MDC),
        .mdio_gem_o(processing_system7_0_MDIO_ETHERNET_0_MDIO_I),
        .mdio_gem_t(processing_system7_0_MDIO_ETHERNET_0_MDIO_T),
        .mdio_phy_i(1'b0),
        .rgmii_rx_ctl(1'b0),
        .rgmii_rxc(1'b0),
        .rgmii_rxd({1'b0,1'b0,1'b0,1'b0}),
        .rx_reset(util_vector_logic_0_Res),
        .tx_reset(util_vector_logic_0_Res));
  ZYNQ_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .ENET0_EXT_INTIN(1'b0),
        .ENET0_GMII_COL(processing_system7_0_GMII_ETHERNET_0_COL),
        .ENET0_GMII_CRS(processing_system7_0_GMII_ETHERNET_0_CRS),
        .ENET0_GMII_RXD(processing_system7_0_GMII_ETHERNET_0_RXD),
        .ENET0_GMII_RX_CLK(processing_system7_0_GMII_ETHERNET_0_RX_CLK),
        .ENET0_GMII_RX_DV(processing_system7_0_GMII_ETHERNET_0_RX_DV),
        .ENET0_GMII_RX_ER(processing_system7_0_GMII_ETHERNET_0_RX_ER),
        .ENET0_GMII_TXD(processing_system7_0_GMII_ETHERNET_0_TXD),
        .ENET0_GMII_TX_CLK(processing_system7_0_GMII_ETHERNET_0_TX_CLK),
        .ENET0_GMII_TX_EN(processing_system7_0_GMII_ETHERNET_0_TX_EN),
        .ENET0_GMII_TX_ER(processing_system7_0_GMII_ETHERNET_0_TX_ER),
        .ENET0_MDIO_I(processing_system7_0_MDIO_ETHERNET_0_MDIO_O),
        .ENET0_MDIO_MDC(processing_system7_0_MDIO_ETHERNET_0_MDC),
        .ENET0_MDIO_O(processing_system7_0_MDIO_ETHERNET_0_MDIO_I),
        .ENET0_MDIO_T(processing_system7_0_MDIO_ETHERNET_0_MDIO_T),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .UART0_RX(1'b1),
        .USB0_VBUS_PWRFAULT(1'b0));
  ZYNQ_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(processing_system7_0_FCLK_RESET0_N),
        .Res(util_vector_logic_0_Res));
endmodule
