-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Aug  6 22:47:12 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_CPU_0_2/Setup_CPU_0_2_stub.vhdl
-- Design      : Setup_CPU_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Setup_CPU_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    interrupt : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_write : out STD_LOGIC;
    mem_read : out STD_LOGIC;
    mem_err : in STD_LOGIC;
    mem_done : in STD_LOGIC;
    bram_we : out STD_LOGIC;
    bram_en : out STD_LOGIC;
    bram_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );

end Setup_CPU_0_2;

architecture stub of Setup_CPU_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,interrupt,data_in[31:0],data_out[31:0],addr[31:0],mem_write,mem_read,mem_err,mem_done,bram_we,bram_en,bram_din[7:0],bram_dout[7:0],bram_addr[12:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CPU,Vivado 2024.1";
begin
end;
