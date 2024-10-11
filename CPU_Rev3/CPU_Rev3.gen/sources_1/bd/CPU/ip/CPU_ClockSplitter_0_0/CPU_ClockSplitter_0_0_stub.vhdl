-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Fri Oct 11 11:24:10 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_ClockSplitter_0_0/CPU_ClockSplitter_0_0_stub.vhdl
-- Design      : CPU_ClockSplitter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_ClockSplitter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_0 : out STD_LOGIC;
    clk_1 : out STD_LOGIC
  );

end CPU_ClockSplitter_0_0;

architecture stub of CPU_ClockSplitter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,clk_0,clk_1";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ClockSplitter,Vivado 2024.1.2";
begin
end;
