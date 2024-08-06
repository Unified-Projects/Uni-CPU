-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Aug  1 22:14:11 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPURev1/PYNQ_CONFIG.gen/sources_1/bd/Everything/ip/Everything_CPU_0_0/Everything_CPU_0_0_stub.vhdl
-- Design      : Everything_CPU_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Everything_CPU_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    CurrentStageDBG : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end Everything_CPU_0_0;

architecture stub of Everything_CPU_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,CurrentStageDBG[5:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CPU,Vivado 2024.1";
begin
end;
