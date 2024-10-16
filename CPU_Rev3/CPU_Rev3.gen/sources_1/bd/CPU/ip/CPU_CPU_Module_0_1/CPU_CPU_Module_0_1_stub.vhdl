-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Wed Oct 16 17:33:06 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_CPU_Module_0_1/CPU_CPU_Module_0_1_stub.vhdl
-- Design      : CPU_CPU_Module_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_CPU_Module_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    interrupt : in STD_LOGIC_VECTOR ( 31 downto 0 );
    resetOut : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_en : out STD_LOGIC;
    bram_din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    framebuffer_en : out STD_LOGIC;
    fb_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    IO_Enable : out STD_LOGIC;
    IO_DONE : in STD_LOGIC;
    IO_In : in STD_LOGIC_VECTOR ( 63 downto 0 );
    IO_Out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    IO_Select : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end CPU_CPU_Module_0_1;

architecture stub of CPU_CPU_Module_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,interrupt[31:0],resetOut,bram_we[7:0],bram_en,bram_din[63:0],bram_dout[63:0],bram_addr[15:0],framebuffer_en,fb_din[15:0],IO_Enable,IO_DONE,IO_In[63:0],IO_Out[63:0],IO_Select[4:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CPU_Module,Vivado 2024.1.2";
begin
end;
