-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Fri Oct 11 12:35:07 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_IO_Controller_0_0/CPU_IO_Controller_0_0_stub.vhdl
-- Design      : CPU_IO_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_IO_Controller_0_0 is
  Port ( 
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

end CPU_IO_Controller_0_0;

architecture stub of CPU_IO_Controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ena,sel[4:0],data_in,data_out,reset,led_0,led_1,btn_0,btn_1,done";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "IO_Controller,Vivado 2024.1.2";
begin
end;
