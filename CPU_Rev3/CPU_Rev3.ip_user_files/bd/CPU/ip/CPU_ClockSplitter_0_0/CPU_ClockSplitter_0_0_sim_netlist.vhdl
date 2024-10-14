-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Fri Oct 11 11:24:10 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_ClockSplitter_0_0/CPU_ClockSplitter_0_0_sim_netlist.vhdl
-- Design      : CPU_ClockSplitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_ClockSplitter_0_0_ClockSplitter is
  port (
    clk_0 : out STD_LOGIC;
    clk_1 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of CPU_ClockSplitter_0_0_ClockSplitter : entity is "ClockSplitter";
end CPU_ClockSplitter_0_0_ClockSplitter;

architecture STRUCTURE of CPU_ClockSplitter_0_0_ClockSplitter is
  signal \^clk_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  clk_0 <= \^clk_0\;
clk_1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \^clk_0\,
      Q => clk_1
    );
counter_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_0\,
      O => p_0_in
    );
counter_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in,
      Q => \^clk_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_ClockSplitter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_0 : out STD_LOGIC;
    clk_1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CPU_ClockSplitter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CPU_ClockSplitter_0_0 : entity is "CPU_ClockSplitter_0_0,ClockSplitter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of CPU_ClockSplitter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of CPU_ClockSplitter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of CPU_ClockSplitter_0_0 : entity is "ClockSplitter,Vivado 2024.1.2";
end CPU_ClockSplitter_0_0;

architecture STRUCTURE of CPU_ClockSplitter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN CPU_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.CPU_ClockSplitter_0_0_ClockSplitter
     port map (
      clk => clk,
      clk_0 => clk_0,
      clk_1 => clk_1,
      reset => reset
    );
end STRUCTURE;
