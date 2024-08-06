library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PL_DDR_RW is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Master Bus Interface DDR_AXI
		C_DDR_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_DDR_AXI_BURST_LEN	: integer	:= 16;
		C_DDR_AXI_ID_WIDTH	: integer	:= 1;
		C_DDR_AXI_ADDR_WIDTH	: integer	:= 32;
		C_DDR_AXI_DATA_WIDTH	: integer	:= 32;
		C_DDR_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_DDR_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_DDR_AXI_WUSER_WIDTH	: integer	:= 0;
		C_DDR_AXI_RUSER_WIDTH	: integer	:= 0;
		C_DDR_AXI_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Master Bus Interface DDR_AXI
		ddr_axi_init_axi_txn	: in std_logic;
		ddr_axi_txn_done	: out std_logic;
		ddr_axi_error	: out std_logic;
		ddr_axi_aclk	: in std_logic;
		ddr_axi_aresetn	: in std_logic;
		ddr_axi_awid	: out std_logic_vector(C_DDR_AXI_ID_WIDTH-1 downto 0);
		ddr_axi_awaddr	: out std_logic_vector(C_DDR_AXI_ADDR_WIDTH-1 downto 0);
		ddr_axi_awlen	: out std_logic_vector(7 downto 0);
		ddr_axi_awsize	: out std_logic_vector(2 downto 0);
		ddr_axi_awburst	: out std_logic_vector(1 downto 0);
		ddr_axi_awlock	: out std_logic;
		ddr_axi_awcache	: out std_logic_vector(3 downto 0);
		ddr_axi_awprot	: out std_logic_vector(2 downto 0);
		ddr_axi_awqos	: out std_logic_vector(3 downto 0);
		ddr_axi_awuser	: out std_logic_vector(C_DDR_AXI_AWUSER_WIDTH-1 downto 0);
		ddr_axi_awvalid	: out std_logic;
		ddr_axi_awready	: in std_logic;
		ddr_axi_wdata	: out std_logic_vector(C_DDR_AXI_DATA_WIDTH-1 downto 0);
		ddr_axi_wstrb	: out std_logic_vector(C_DDR_AXI_DATA_WIDTH/8-1 downto 0);
		ddr_axi_wlast	: out std_logic;
		ddr_axi_wuser	: out std_logic_vector(C_DDR_AXI_WUSER_WIDTH-1 downto 0);
		ddr_axi_wvalid	: out std_logic;
		ddr_axi_wready	: in std_logic;
		ddr_axi_bid	: in std_logic_vector(C_DDR_AXI_ID_WIDTH-1 downto 0);
		ddr_axi_bresp	: in std_logic_vector(1 downto 0);
		ddr_axi_buser	: in std_logic_vector(C_DDR_AXI_BUSER_WIDTH-1 downto 0);
		ddr_axi_bvalid	: in std_logic;
		ddr_axi_bready	: out std_logic;
		ddr_axi_arid	: out std_logic_vector(C_DDR_AXI_ID_WIDTH-1 downto 0);
		ddr_axi_araddr	: out std_logic_vector(C_DDR_AXI_ADDR_WIDTH-1 downto 0);
		ddr_axi_arlen	: out std_logic_vector(7 downto 0);
		ddr_axi_arsize	: out std_logic_vector(2 downto 0);
		ddr_axi_arburst	: out std_logic_vector(1 downto 0);
		ddr_axi_arlock	: out std_logic;
		ddr_axi_arcache	: out std_logic_vector(3 downto 0);
		ddr_axi_arprot	: out std_logic_vector(2 downto 0);
		ddr_axi_arqos	: out std_logic_vector(3 downto 0);
		ddr_axi_aruser	: out std_logic_vector(C_DDR_AXI_ARUSER_WIDTH-1 downto 0);
		ddr_axi_arvalid	: out std_logic;
		ddr_axi_arready	: in std_logic;
		ddr_axi_rid	: in std_logic_vector(C_DDR_AXI_ID_WIDTH-1 downto 0);
		ddr_axi_rdata	: in std_logic_vector(C_DDR_AXI_DATA_WIDTH-1 downto 0);
		ddr_axi_rresp	: in std_logic_vector(1 downto 0);
		ddr_axi_rlast	: in std_logic;
		ddr_axi_ruser	: in std_logic_vector(C_DDR_AXI_RUSER_WIDTH-1 downto 0);
		ddr_axi_rvalid	: in std_logic;
		ddr_axi_rready	: out std_logic
	);
end PL_DDR_RW;

architecture arch_imp of PL_DDR_RW is

	-- component declaration
	component PL_DDR_RW_master_full_v1_0_DDR_AXI is
		generic (
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_BURST_LEN	: integer	:= 16;
		C_M_AXI_ID_WIDTH	: integer	:= 1;
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		INIT_AXI_TXN	: in std_logic;
		TXN_DONE	: out std_logic;
		ERROR	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWLEN	: out std_logic_vector(7 downto 0);
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		M_AXI_AWLOCK	: out std_logic;
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WLAST	: out std_logic;
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARLEN	: out std_logic_vector(7 downto 0);
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		M_AXI_ARLOCK	: out std_logic;
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RLAST	: in std_logic;
		M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component PL_DDR_RW_master_full_v1_0_DDR_AXI;

begin

-- Instantiation of Axi Bus Interface DDR_AXI
PL_DDR_RW_master_full_v1_0_DDR_AXI_inst : PL_DDR_RW_master_full_v1_0_DDR_AXI
	generic map (
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_DDR_AXI_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_BURST_LEN	=> C_DDR_AXI_BURST_LEN,
		C_M_AXI_ID_WIDTH	=> C_DDR_AXI_ID_WIDTH,
		C_M_AXI_ADDR_WIDTH	=> C_DDR_AXI_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_DDR_AXI_DATA_WIDTH,
		C_M_AXI_AWUSER_WIDTH	=> C_DDR_AXI_AWUSER_WIDTH,
		C_M_AXI_ARUSER_WIDTH	=> C_DDR_AXI_ARUSER_WIDTH,
		C_M_AXI_WUSER_WIDTH	=> C_DDR_AXI_WUSER_WIDTH,
		C_M_AXI_RUSER_WIDTH	=> C_DDR_AXI_RUSER_WIDTH,
		C_M_AXI_BUSER_WIDTH	=> C_DDR_AXI_BUSER_WIDTH
	)
	port map (
		INIT_AXI_TXN	=> ddr_axi_init_axi_txn,
		TXN_DONE	=> ddr_axi_txn_done,
		ERROR	=> ddr_axi_error,
		M_AXI_ACLK	=> ddr_axi_aclk,
		M_AXI_ARESETN	=> ddr_axi_aresetn,
		M_AXI_AWID	=> ddr_axi_awid,
		M_AXI_AWADDR	=> ddr_axi_awaddr,
		M_AXI_AWLEN	=> ddr_axi_awlen,
		M_AXI_AWSIZE	=> ddr_axi_awsize,
		M_AXI_AWBURST	=> ddr_axi_awburst,
		M_AXI_AWLOCK	=> ddr_axi_awlock,
		M_AXI_AWCACHE	=> ddr_axi_awcache,
		M_AXI_AWPROT	=> ddr_axi_awprot,
		M_AXI_AWQOS	=> ddr_axi_awqos,
		M_AXI_AWUSER	=> ddr_axi_awuser,
		M_AXI_AWVALID	=> ddr_axi_awvalid,
		M_AXI_AWREADY	=> ddr_axi_awready,
		M_AXI_WDATA	=> ddr_axi_wdata,
		M_AXI_WSTRB	=> ddr_axi_wstrb,
		M_AXI_WLAST	=> ddr_axi_wlast,
		M_AXI_WUSER	=> ddr_axi_wuser,
		M_AXI_WVALID	=> ddr_axi_wvalid,
		M_AXI_WREADY	=> ddr_axi_wready,
		M_AXI_BID	=> ddr_axi_bid,
		M_AXI_BRESP	=> ddr_axi_bresp,
		M_AXI_BUSER	=> ddr_axi_buser,
		M_AXI_BVALID	=> ddr_axi_bvalid,
		M_AXI_BREADY	=> ddr_axi_bready,
		M_AXI_ARID	=> ddr_axi_arid,
		M_AXI_ARADDR	=> ddr_axi_araddr,
		M_AXI_ARLEN	=> ddr_axi_arlen,
		M_AXI_ARSIZE	=> ddr_axi_arsize,
		M_AXI_ARBURST	=> ddr_axi_arburst,
		M_AXI_ARLOCK	=> ddr_axi_arlock,
		M_AXI_ARCACHE	=> ddr_axi_arcache,
		M_AXI_ARPROT	=> ddr_axi_arprot,
		M_AXI_ARQOS	=> ddr_axi_arqos,
		M_AXI_ARUSER	=> ddr_axi_aruser,
		M_AXI_ARVALID	=> ddr_axi_arvalid,
		M_AXI_ARREADY	=> ddr_axi_arready,
		M_AXI_RID	=> ddr_axi_rid,
		M_AXI_RDATA	=> ddr_axi_rdata,
		M_AXI_RRESP	=> ddr_axi_rresp,
		M_AXI_RLAST	=> ddr_axi_rlast,
		M_AXI_RUSER	=> ddr_axi_ruser,
		M_AXI_RVALID	=> ddr_axi_rvalid,
		M_AXI_RREADY	=> ddr_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
