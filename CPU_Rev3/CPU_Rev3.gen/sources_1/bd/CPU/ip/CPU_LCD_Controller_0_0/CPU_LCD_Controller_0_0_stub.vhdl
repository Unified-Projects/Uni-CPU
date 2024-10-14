-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Sat Oct 12 17:48:37 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_LCD_Controller_0_0/CPU_LCD_Controller_0_0_stub.vhdl
-- Design      : CPU_LCD_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_LCD_Controller_0_0 is
  Port ( 
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

end CPU_LCD_Controller_0_0;

architecture stub of CPU_LCD_Controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,clk,scl,sda,cs,dc,blk,res,fb_we[7:0],fb_en,fb_din[15:0],fb_dout[15:0],fb_addr[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "LCD_Controller,Vivado 2024.1.2";
begin
end;
