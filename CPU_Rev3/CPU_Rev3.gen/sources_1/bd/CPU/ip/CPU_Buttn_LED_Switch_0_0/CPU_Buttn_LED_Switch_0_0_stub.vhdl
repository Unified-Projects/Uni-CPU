-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Oct 10 17:11:10 2024
-- Host        : PopTop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Git/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_Buttn_LED_Switch_0_0/CPU_Buttn_LED_Switch_0_0_stub.vhdl
-- Design      : CPU_Buttn_LED_Switch_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_Buttn_LED_Switch_0_0 is
  Port ( 
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    led2 : out STD_LOGIC
  );

end CPU_Buttn_LED_Switch_0_0;

architecture stub of CPU_Buttn_LED_Switch_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "btn1,btn2,reset,clk,led2";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Buttn_LED_Switch,Vivado 2024.1";
begin
end;
