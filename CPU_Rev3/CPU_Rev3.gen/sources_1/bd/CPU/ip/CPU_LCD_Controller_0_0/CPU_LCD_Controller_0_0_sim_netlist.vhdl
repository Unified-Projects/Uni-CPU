-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Sat Oct 12 17:48:37 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_LCD_Controller_0_0/CPU_LCD_Controller_0_0_sim_netlist.vhdl
-- Design      : CPU_LCD_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_LCD_Controller_0_0_LCD_Controller is
  port (
    cs : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of CPU_LCD_Controller_0_0_LCD_Controller : entity is "LCD_Controller";
end CPU_LCD_Controller_0_0_LCD_Controller;

architecture STRUCTURE of CPU_LCD_Controller_0_0_LCD_Controller is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of cs_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of cs_reg : label is "VCC:GE GND:CLR";
begin
cs_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => reset,
      G => reset,
      GE => '1',
      Q => cs
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_LCD_Controller_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    scl : out STD_LOGIC;
    sda : out STD_LOGIC;
    cs : out STD_LOGIC;
    dc : out STD_LOGIC;
    blk : out STD_LOGIC;
    res : out STD_LOGIC;
    fb_we : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fb_en : out STD_LOGIC;
    fb_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fb_dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fb_addr : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CPU_LCD_Controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CPU_LCD_Controller_0_0 : entity is "CPU_LCD_Controller_0_0,LCD_Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of CPU_LCD_Controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of CPU_LCD_Controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of CPU_LCD_Controller_0_0 : entity is "LCD_Controller,Vivado 2024.1.2";
end CPU_LCD_Controller_0_0;

architecture STRUCTURE of CPU_LCD_Controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN CPU_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  blk <= \<const0>\;
  dc <= \<const0>\;
  fb_addr(15) <= \<const0>\;
  fb_addr(14) <= \<const0>\;
  fb_addr(13) <= \<const0>\;
  fb_addr(12) <= \<const0>\;
  fb_addr(11) <= \<const0>\;
  fb_addr(10) <= \<const0>\;
  fb_addr(9) <= \<const0>\;
  fb_addr(8) <= \<const0>\;
  fb_addr(7) <= \<const0>\;
  fb_addr(6) <= \<const0>\;
  fb_addr(5) <= \<const0>\;
  fb_addr(4) <= \<const0>\;
  fb_addr(3) <= \<const0>\;
  fb_addr(2) <= \<const0>\;
  fb_addr(1) <= \<const0>\;
  fb_addr(0) <= \<const0>\;
  fb_dout(15) <= \<const0>\;
  fb_dout(14) <= \<const0>\;
  fb_dout(13) <= \<const0>\;
  fb_dout(12) <= \<const0>\;
  fb_dout(11) <= \<const0>\;
  fb_dout(10) <= \<const0>\;
  fb_dout(9) <= \<const0>\;
  fb_dout(8) <= \<const0>\;
  fb_dout(7) <= \<const0>\;
  fb_dout(6) <= \<const0>\;
  fb_dout(5) <= \<const0>\;
  fb_dout(4) <= \<const0>\;
  fb_dout(3) <= \<const0>\;
  fb_dout(2) <= \<const0>\;
  fb_dout(1) <= \<const0>\;
  fb_dout(0) <= \<const0>\;
  fb_en <= \<const0>\;
  fb_we(7) <= \<const0>\;
  fb_we(6) <= \<const0>\;
  fb_we(5) <= \<const0>\;
  fb_we(4) <= \<const0>\;
  fb_we(3) <= \<const0>\;
  fb_we(2) <= \<const0>\;
  fb_we(1) <= \<const0>\;
  fb_we(0) <= \<const0>\;
  res <= \<const0>\;
  scl <= \<const0>\;
  sda <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.CPU_LCD_Controller_0_0_LCD_Controller
     port map (
      cs => cs,
      reset => reset
    );
end STRUCTURE;
