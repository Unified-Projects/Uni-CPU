-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Oct 10 17:11:11 2024
-- Host        : PopTop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Git/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_Buttn_LED_Switch_0_0/CPU_Buttn_LED_Switch_0_0_sim_netlist.vhdl
-- Design      : CPU_Buttn_LED_Switch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_Buttn_LED_Switch_0_0_Buttn_LED_Switch is
  port (
    led2 : out STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of CPU_Buttn_LED_Switch_0_0_Buttn_LED_Switch : entity is "Buttn_LED_Switch";
end CPU_Buttn_LED_Switch_0_0_Buttn_LED_Switch;

architecture STRUCTURE of CPU_Buttn_LED_Switch_0_0_Buttn_LED_Switch is
  signal \^led2\ : STD_LOGIC;
  signal led2_i_1_n_0 : STD_LOGIC;
begin
  led2 <= \^led2\;
led2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => btn1,
      I1 => btn2,
      I2 => \^led2\,
      O => led2_i_1_n_0
    );
led2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => led2_i_1_n_0,
      Q => \^led2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_Buttn_LED_Switch_0_0 is
  port (
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    led2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CPU_Buttn_LED_Switch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CPU_Buttn_LED_Switch_0_0 : entity is "CPU_Buttn_LED_Switch_0_0,Buttn_LED_Switch,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of CPU_Buttn_LED_Switch_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of CPU_Buttn_LED_Switch_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of CPU_Buttn_LED_Switch_0_0 : entity is "Buttn_LED_Switch,Vivado 2024.1";
end CPU_Buttn_LED_Switch_0_0;

architecture STRUCTURE of CPU_Buttn_LED_Switch_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN CPU_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.CPU_Buttn_LED_Switch_0_0_Buttn_LED_Switch
     port map (
      btn1 => btn1,
      btn2 => btn2,
      clk => clk,
      led2 => led2,
      reset => reset
    );
end STRUCTURE;
