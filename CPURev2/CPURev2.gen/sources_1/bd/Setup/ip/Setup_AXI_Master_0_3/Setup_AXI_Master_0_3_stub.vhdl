-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Aug  6 12:45:02 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_AXI_Master_0_3/Setup_AXI_Master_0_3_stub.vhdl
-- Design      : Setup_AXI_Master_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Setup_AXI_Master_0_3 is
  Port ( 
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    start_read : in STD_LOGIC;
    start_write : in STD_LOGIC;
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    err : out STD_LOGIC;
    interrupt : out STD_LOGIC
  );

end Setup_AXI_Master_0_3;

architecture stub of Setup_AXI_Master_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M_AXI_AWADDR[31:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY,clk,reset,start_read,start_write,write_data[31:0],read_data[31:0],address[31:0],done,err,interrupt";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI_Master,Vivado 2024.1";
begin
end;
