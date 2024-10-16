-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Wed Oct 16 14:07:19 2024
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
    fb_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    scl : out STD_LOGIC;
    sda : out STD_LOGIC;
    cd : out STD_LOGIC;
    res : out STD_LOGIC;
    fb_en : out STD_LOGIC;
    blk : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fb_din : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of CPU_LCD_Controller_0_0_LCD_Controller : entity is "LCD_Controller";
end CPU_LCD_Controller_0_0_LCD_Controller;

architecture STRUCTURE of CPU_LCD_Controller_0_0_LCD_Controller is
  signal DataShort : STD_LOGIC;
  signal \DataShort[0]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[10]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[11]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[12]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[13]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[14]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[15]_i_2_n_0\ : STD_LOGIC;
  signal \DataShort[15]_i_3_n_0\ : STD_LOGIC;
  signal \DataShort[15]_i_4_n_0\ : STD_LOGIC;
  signal \DataShort[15]_i_5_n_0\ : STD_LOGIC;
  signal \DataShort[1]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[2]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[3]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[4]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[5]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[6]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[8]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort[9]_i_1_n_0\ : STD_LOGIC;
  signal \DataShort__0\ : STD_LOGIC;
  signal \DataShort_reg_n_0_[0]\ : STD_LOGIC;
  signal \Data[0]_i_1_n_0\ : STD_LOGIC;
  signal \Data[1]_i_1_n_0\ : STD_LOGIC;
  signal \Data[2]_i_1_n_0\ : STD_LOGIC;
  signal \Data[3]_i_1_n_0\ : STD_LOGIC;
  signal \Data[4]_i_1_n_0\ : STD_LOGIC;
  signal \Data[5]_i_1_n_0\ : STD_LOGIC;
  signal \Data[6]_i_1_n_0\ : STD_LOGIC;
  signal \Data[7]_i_2_n_0\ : STD_LOGIC;
  signal \Data[7]_i_3_n_0\ : STD_LOGIC;
  signal \Data[7]_i_4_n_0\ : STD_LOGIC;
  signal \Data[7]_i_5_n_0\ : STD_LOGIC;
  signal \Data[7]_i_6_n_0\ : STD_LOGIC;
  signal \Data[7]_i_7_n_0\ : STD_LOGIC;
  signal \Data__0\ : STD_LOGIC;
  signal \Data_reg_n_0_[0]\ : STD_LOGIC;
  signal \Data_reg_n_0_[1]\ : STD_LOGIC;
  signal \Data_reg_n_0_[2]\ : STD_LOGIC;
  signal \Data_reg_n_0_[3]\ : STD_LOGIC;
  signal \Data_reg_n_0_[4]\ : STD_LOGIC;
  signal \Data_reg_n_0_[5]\ : STD_LOGIC;
  signal \Data_reg_n_0_[6]\ : STD_LOGIC;
  signal \Data_reg_n_0_[7]\ : STD_LOGIC;
  signal \DelayCount[12]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[12]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[12]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[12]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[12]_i_7_n_0\ : STD_LOGIC;
  signal \DelayCount[12]_i_8_n_0\ : STD_LOGIC;
  signal \DelayCount[16]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[16]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[16]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[16]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[16]_i_7_n_0\ : STD_LOGIC;
  signal \DelayCount[20]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[20]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[20]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[20]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[24]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[24]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[24]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[24]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[28]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[28]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[28]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[28]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[32]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[32]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[32]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[32]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[36]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[36]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[36]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[36]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[40]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[40]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[40]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[40]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[44]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[44]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[44]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[44]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[48]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[48]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[48]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[48]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[4]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[4]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[4]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[4]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[4]_i_7_n_0\ : STD_LOGIC;
  signal \DelayCount[52]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[52]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[52]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[52]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[56]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[56]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[56]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[56]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[60]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[60]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[60]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[60]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_10_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_11_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_12_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_13_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_14_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_15_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_16_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_17_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_18_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_19_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_20_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_8_n_0\ : STD_LOGIC;
  signal \DelayCount[63]_i_9_n_0\ : STD_LOGIC;
  signal \DelayCount[8]_i_3_n_0\ : STD_LOGIC;
  signal \DelayCount[8]_i_4_n_0\ : STD_LOGIC;
  signal \DelayCount[8]_i_5_n_0\ : STD_LOGIC;
  signal \DelayCount[8]_i_6_n_0\ : STD_LOGIC;
  signal \DelayCount__0\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[32]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[36]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[40]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[44]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[48]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[52]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[56]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[60]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[63]_i_7_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[63]_i_7_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[63]_i_7_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[63]_i_7_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[63]_i_7_n_7\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \DelayCount_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[10]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[11]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[12]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[13]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[14]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[15]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[16]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[17]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[18]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[19]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[20]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[21]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[22]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[23]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[24]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[25]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[26]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[27]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[28]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[29]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[30]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[31]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[32]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[33]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[34]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[35]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[36]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[37]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[38]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[39]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[40]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[41]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[42]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[43]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[44]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[45]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[46]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[47]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[48]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[49]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[50]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[51]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[52]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[53]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[54]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[55]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[56]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[57]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[58]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[59]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[60]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[61]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[62]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[63]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[7]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[8]\ : STD_LOGIC;
  signal \DelayCount_reg_n_0_[9]\ : STD_LOGIC;
  signal DelayStarted_i_1_n_0 : STD_LOGIC;
  signal DelayStarted_i_2_n_0 : STD_LOGIC;
  signal DelayStarted_i_3_n_0 : STD_LOGIC;
  signal DelayStarted_i_4_n_0 : STD_LOGIC;
  signal DelayStarted_i_5_n_0 : STD_LOGIC;
  signal DelayStarted_i_6_n_0 : STD_LOGIC;
  signal DelayStarted_i_7_n_0 : STD_LOGIC;
  signal DelayStarted_i_8_n_0 : STD_LOGIC;
  signal DelayStarted_i_9_n_0 : STD_LOGIC;
  signal DelayStarted_reg_n_0 : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_26_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_27_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_29_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_30_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_31_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_32_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_34_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_35_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_36_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_37_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_38_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_39_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_40_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_41_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_42_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[2]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage[5]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_13_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_13_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_13_n_3\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_18_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_18_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_18_n_3\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_23_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_23_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_23_n_3\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_28_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_28_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_28_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_28_n_3\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_33_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_33_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_33_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_33_n_3\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_3_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_3_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_3_n_3\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_8_n_1\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_8_n_2\ : STD_LOGIC;
  signal \FSM_onehot_drawStage_reg[2]_i_8_n_3\ : STD_LOGIC;
  signal \FSM_onehot_fbStage[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fbStage[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fbStage[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fbStage[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fbStage[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fbStage[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fbStage[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fbStage_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_addrStage[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_addrStage[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_addrStage[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_addrStage[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_addrStage[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_addrStage[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_addrStage[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage[6]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_initStage_reg_n_0_[1]\ : STD_LOGIC;
  signal \Pixel[12]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[12]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[12]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[12]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[16]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[16]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[16]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[16]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[20]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[20]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[20]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[20]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[24]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[24]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[24]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[24]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[28]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[28]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[28]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[28]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[32]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[32]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[32]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[32]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[36]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[36]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[36]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[36]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[40]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[40]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[40]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[40]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[44]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[44]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[44]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[44]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[48]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[48]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[48]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[48]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[4]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[4]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[4]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[4]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[52]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[52]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[52]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[52]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[56]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[56]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[56]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[56]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[60]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[60]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[60]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[60]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[63]_i_1_n_0\ : STD_LOGIC;
  signal \Pixel[63]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[63]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[63]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel[8]_i_3_n_0\ : STD_LOGIC;
  signal \Pixel[8]_i_4_n_0\ : STD_LOGIC;
  signal \Pixel[8]_i_5_n_0\ : STD_LOGIC;
  signal \Pixel[8]_i_6_n_0\ : STD_LOGIC;
  signal \Pixel__0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \Pixel_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[32]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[32]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[32]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[32]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[36]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[36]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[36]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[36]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[40]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[40]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[40]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[40]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[44]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[44]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[44]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[44]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[48]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[48]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[48]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[48]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[52]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[52]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[52]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[52]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[56]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[56]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[56]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[56]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[60]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[60]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[60]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[60]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg[63]_i_3_n_2\ : STD_LOGIC;
  signal \Pixel_reg[63]_i_3_n_3\ : STD_LOGIC;
  signal \Pixel_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Pixel_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \Pixel_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \Pixel_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[0]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[10]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[11]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[12]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[13]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[14]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[15]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[16]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[17]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[18]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[19]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[1]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[20]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[21]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[22]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[23]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[24]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[25]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[26]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[27]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[28]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[29]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[2]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[30]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[31]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[32]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[33]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[34]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[35]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[36]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[37]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[38]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[39]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[3]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[40]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[41]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[42]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[43]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[44]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[45]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[46]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[47]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[48]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[49]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[4]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[50]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[51]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[52]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[53]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[54]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[55]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[56]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[57]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[58]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[59]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[5]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[60]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[61]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[62]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[63]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[6]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[7]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[8]\ : STD_LOGIC;
  signal \Pixel_reg_n_0_[9]\ : STD_LOGIC;
  signal ReadAddr : STD_LOGIC;
  signal ReadAddr0 : STD_LOGIC;
  signal \ReadAddr__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ReadData0 : STD_LOGIC;
  signal \ReadData_reg_n_0_[0]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[10]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[11]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[12]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[13]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[14]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[15]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[1]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[2]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[3]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[4]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[5]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[6]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[8]\ : STD_LOGIC;
  signal \ReadData_reg_n_0_[9]\ : STD_LOGIC;
  signal \addrStage__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \backState[1]_i_1_n_0\ : STD_LOGIC;
  signal \backState[1]_i_2_n_0\ : STD_LOGIC;
  signal \backState[2]_i_1_n_0\ : STD_LOGIC;
  signal \backState[2]_i_2_n_0\ : STD_LOGIC;
  signal \backState[2]_i_3_n_0\ : STD_LOGIC;
  signal \backState[2]_i_4_n_0\ : STD_LOGIC;
  signal \backState[2]_i_5_n_0\ : STD_LOGIC;
  signal \backState[2]_i_6_n_0\ : STD_LOGIC;
  signal \backState[2]_i_7_n_0\ : STD_LOGIC;
  signal \backState[2]_i_8_n_0\ : STD_LOGIC;
  signal \backState_reg_n_0_[1]\ : STD_LOGIC;
  signal \backState_reg_n_0_[2]\ : STD_LOGIC;
  signal \^blk\ : STD_LOGIC;
  signal blk_i_1_n_0 : STD_LOGIC;
  signal blk_i_2_n_0 : STD_LOGIC;
  signal blk_i_3_n_0 : STD_LOGIC;
  signal \^cd\ : STD_LOGIC;
  signal cd_i_10_n_0 : STD_LOGIC;
  signal cd_i_11_n_0 : STD_LOGIC;
  signal cd_i_12_n_0 : STD_LOGIC;
  signal cd_i_13_n_0 : STD_LOGIC;
  signal cd_i_14_n_0 : STD_LOGIC;
  signal cd_i_15_n_0 : STD_LOGIC;
  signal cd_i_1_n_0 : STD_LOGIC;
  signal cd_i_2_n_0 : STD_LOGIC;
  signal cd_i_3_n_0 : STD_LOGIC;
  signal cd_i_4_n_0 : STD_LOGIC;
  signal cd_i_5_n_0 : STD_LOGIC;
  signal cd_i_6_n_0 : STD_LOGIC;
  signal cd_i_7_n_0 : STD_LOGIC;
  signal cd_i_8_n_0 : STD_LOGIC;
  signal cd_i_9_n_0 : STD_LOGIC;
  signal cycle_count : STD_LOGIC;
  signal \cycle_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[16]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[16]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[16]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[16]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[17]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[18]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[19]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[20]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[20]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[20]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[20]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[20]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[21]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[22]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[23]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[24]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[24]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[24]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[24]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[24]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[25]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[26]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[27]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[28]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[28]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[28]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[28]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[28]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[29]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[30]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[31]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[32]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[32]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[32]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[32]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[32]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[33]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[34]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[35]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[36]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[36]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[36]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[36]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[36]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[37]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[38]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[39]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[40]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[40]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[40]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[40]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[40]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[41]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[42]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[43]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[44]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[44]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[44]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[44]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[44]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[45]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[46]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[47]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[48]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[48]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[48]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[48]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[48]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[49]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[50]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[51]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[52]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[52]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[52]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[52]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[52]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[53]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[54]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[55]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[56]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[56]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[56]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[56]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[56]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[57]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[58]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[59]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[60]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[60]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[60]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[60]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[60]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[61]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[62]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_10_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_11_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_12_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_13_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_14_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_15_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_16_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_7_n_0\ : STD_LOGIC;
  signal \cycle_count[63]_i_8_n_0\ : STD_LOGIC;
  signal \cycle_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count__0\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[32]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[36]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[40]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[44]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[48]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[52]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[56]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[60]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[63]_i_9_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[63]_i_9_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[63]_i_9_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[63]_i_9_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[63]_i_9_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[19]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[20]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[21]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[22]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[23]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[24]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[25]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[26]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[27]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[28]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[29]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[30]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[31]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[32]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[33]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[34]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[35]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[36]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[37]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[38]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[39]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[40]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[41]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[42]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[43]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[44]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[45]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[46]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[47]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[48]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[49]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[50]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[51]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[52]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[53]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[54]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[55]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[56]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[57]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[58]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[59]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[60]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[61]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[62]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[63]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \cycle_count_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data1 : STD_LOGIC;
  signal data10 : STD_LOGIC;
  signal data11 : STD_LOGIC;
  signal data12 : STD_LOGIC;
  signal data13 : STD_LOGIC;
  signal data14 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal data9 : STD_LOGIC;
  signal drawStage : STD_LOGIC;
  signal \drawStage__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \drawStage__1\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \fb_addr[15]_i_10_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_11_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_12_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_13_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_14_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_15_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_16_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_17_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_18_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_19_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_20_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_21_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_2_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_3_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_4_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_5_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_6_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_7_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_8_n_0\ : STD_LOGIC;
  signal \fb_addr[15]_i_9_n_0\ : STD_LOGIC;
  signal \^fb_en\ : STD_LOGIC;
  signal fb_en_i_1_n_0 : STD_LOGIC;
  signal fb_en_i_2_n_0 : STD_LOGIC;
  signal fb_en_i_3_n_0 : STD_LOGIC;
  signal fb_en_i_4_n_0 : STD_LOGIC;
  signal fb_en_i_5_n_0 : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal g1_b3_n_0 : STD_LOGIC;
  signal g1_b4_n_0 : STD_LOGIC;
  signal g1_b5_n_0 : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 63 downto 1 );
  signal initStage : STD_LOGIC;
  signal \initStage__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \initStage__1\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^res\ : STD_LOGIC;
  signal res_i_1_n_0 : STD_LOGIC;
  signal res_i_2_n_0 : STD_LOGIC;
  signal \^scl\ : STD_LOGIC;
  signal scl_i_10_n_0 : STD_LOGIC;
  signal scl_i_11_n_0 : STD_LOGIC;
  signal scl_i_12_n_0 : STD_LOGIC;
  signal scl_i_13_n_0 : STD_LOGIC;
  signal scl_i_14_n_0 : STD_LOGIC;
  signal scl_i_1_n_0 : STD_LOGIC;
  signal scl_i_2_n_0 : STD_LOGIC;
  signal scl_i_3_n_0 : STD_LOGIC;
  signal scl_i_4_n_0 : STD_LOGIC;
  signal scl_i_5_n_0 : STD_LOGIC;
  signal scl_i_6_n_0 : STD_LOGIC;
  signal scl_i_7_n_0 : STD_LOGIC;
  signal scl_i_8_n_0 : STD_LOGIC;
  signal scl_i_9_n_0 : STD_LOGIC;
  signal \^sda\ : STD_LOGIC;
  signal sda_i_10_n_0 : STD_LOGIC;
  signal sda_i_11_n_0 : STD_LOGIC;
  signal sda_i_12_n_0 : STD_LOGIC;
  signal sda_i_1_n_0 : STD_LOGIC;
  signal sda_i_2_n_0 : STD_LOGIC;
  signal sda_i_3_n_0 : STD_LOGIC;
  signal sda_i_7_n_0 : STD_LOGIC;
  signal sda_i_8_n_0 : STD_LOGIC;
  signal sda_i_9_n_0 : STD_LOGIC;
  signal sda_reg_i_4_n_0 : STD_LOGIC;
  signal sda_reg_i_5_n_0 : STD_LOGIC;
  signal sda_reg_i_6_n_0 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_10_n_0\ : STD_LOGIC;
  signal \state[2]_i_11_n_0\ : STD_LOGIC;
  signal \state[2]_i_12_n_0\ : STD_LOGIC;
  signal \state[2]_i_13_n_0\ : STD_LOGIC;
  signal \state[2]_i_14_n_0\ : STD_LOGIC;
  signal \state[2]_i_15_n_0\ : STD_LOGIC;
  signal \state[2]_i_16_n_0\ : STD_LOGIC;
  signal \state[2]_i_17_n_0\ : STD_LOGIC;
  signal \state[2]_i_18_n_0\ : STD_LOGIC;
  signal \state[2]_i_19_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_20_n_0\ : STD_LOGIC;
  signal \state[2]_i_21_n_0\ : STD_LOGIC;
  signal \state[2]_i_22_n_0\ : STD_LOGIC;
  signal \state[2]_i_23_n_0\ : STD_LOGIC;
  signal \state[2]_i_24_n_0\ : STD_LOGIC;
  signal \state[2]_i_25_n_0\ : STD_LOGIC;
  signal \state[2]_i_26_n_0\ : STD_LOGIC;
  signal \state[2]_i_27_n_0\ : STD_LOGIC;
  signal \state[2]_i_28_n_0\ : STD_LOGIC;
  signal \state[2]_i_29_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_30_n_0\ : STD_LOGIC;
  signal \state[2]_i_31_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[2]_i_7_n_0\ : STD_LOGIC;
  signal \state[2]_i_8_n_0\ : STD_LOGIC;
  signal \state[2]_i_9_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal writeStage : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \writeStage[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeStage[1]_i_1_n_0\ : STD_LOGIC;
  signal \writeStage[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeStage[2]_i_2_n_0\ : STD_LOGIC;
  signal \writeStage[2]_i_3_n_0\ : STD_LOGIC;
  signal \writeStage[3]_i_1_n_0\ : STD_LOGIC;
  signal \writeStage[4]_i_1_n_0\ : STD_LOGIC;
  signal \writeStage[5]_i_1_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_10_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_1_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_2_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_3_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_4_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_5_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_6_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_7_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_8_n_0\ : STD_LOGIC;
  signal \writeStage[63]_i_9_n_0\ : STD_LOGIC;
  signal \writeStage_inferred__1/writeStage[0]_i_3_n_0\ : STD_LOGIC;
  signal \writeStage_inferred__1/writeStage[3]_i_3_n_0\ : STD_LOGIC;
  signal \writeStage_inferred__1/writeStage[4]_i_3_n_0\ : STD_LOGIC;
  signal \writeStage_inferred__1/writeStage[5]_i_2_n_0\ : STD_LOGIC;
  signal \writeStage_inferred__2/writeStage[0]_i_2_n_0\ : STD_LOGIC;
  signal \writeStage_inferred__2/writeStage[3]_i_2_n_0\ : STD_LOGIC;
  signal \writeStage_inferred__2/writeStage[4]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_DelayCount_reg[63]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DelayCount_reg[63]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_onehot_drawStage_reg[2]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Pixel_reg[63]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Pixel_reg[63]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cycle_count_reg[63]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cycle_count_reg[63]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DataShort[10]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \DataShort[11]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \DataShort[12]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \DataShort[13]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \DataShort[14]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \DataShort[15]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \DataShort[15]_i_5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \DataShort[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \DataShort[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \DataShort[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \DataShort[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \DataShort[8]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \DataShort[9]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \Data[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Data[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \Data[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Data[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Data[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Data[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Data[7]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Data[7]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Data[7]_i_7\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \DelayCount[0]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \DelayCount[10]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \DelayCount[11]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \DelayCount[12]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \DelayCount[13]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \DelayCount[14]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \DelayCount[15]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \DelayCount[16]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \DelayCount[17]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \DelayCount[18]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \DelayCount[19]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \DelayCount[20]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \DelayCount[21]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \DelayCount[22]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \DelayCount[23]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \DelayCount[24]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \DelayCount[25]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \DelayCount[26]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \DelayCount[27]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \DelayCount[28]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \DelayCount[29]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \DelayCount[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \DelayCount[30]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \DelayCount[31]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \DelayCount[32]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \DelayCount[33]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \DelayCount[34]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \DelayCount[35]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \DelayCount[36]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \DelayCount[37]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \DelayCount[38]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \DelayCount[39]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \DelayCount[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \DelayCount[40]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \DelayCount[41]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \DelayCount[42]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \DelayCount[43]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \DelayCount[44]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \DelayCount[45]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \DelayCount[46]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \DelayCount[47]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \DelayCount[48]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \DelayCount[49]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \DelayCount[50]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \DelayCount[51]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \DelayCount[52]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \DelayCount[53]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \DelayCount[54]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \DelayCount[55]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \DelayCount[56]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \DelayCount[57]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \DelayCount[58]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \DelayCount[59]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \DelayCount[60]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \DelayCount[61]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \DelayCount[62]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_15\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_19\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_20\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DelayCount[63]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \DelayCount[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \DelayCount[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \DelayCount[8]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \DelayCount[9]_i_1\ : label is "soft_lutpair40";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \DelayCount_reg[12]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[12]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[16]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[16]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[20]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[20]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[24]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[24]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[28]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[28]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[32]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[32]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[36]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[36]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[40]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[40]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[44]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[44]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[48]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[48]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[4]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[4]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[52]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[52]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[56]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[56]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[60]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[60]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[63]_i_7\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[63]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \DelayCount_reg[8]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \DelayCount_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of DelayStarted_i_5 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of DelayStarted_i_9 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_drawStage[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_onehot_drawStage[5]_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_drawStage[5]_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_drawStage[5]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_drawStage[5]_i_9\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_drawStage_reg[1]\ : label is "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drawStage_reg[2]\ : label is "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_13\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_13\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_18\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_18\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_2\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_23\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_23\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_28\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_28\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_3\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_33\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_33\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD of \FSM_onehot_drawStage_reg[2]_i_8\ : label is 11;
  attribute METHODOLOGY_DRC_VIOS of \FSM_onehot_drawStage_reg[2]_i_8\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drawStage_reg[3]\ : label is "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drawStage_reg[4]\ : label is "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_drawStage_reg[5]\ : label is "iSTATE:001000,iSTATE0:010000,iSTATE1:100000,iSTATE2:000100,iSTATE3:000010,iSTATE4:000001";
  attribute SOFT_HLUTNM of \FSM_onehot_fbStage[2]_i_6\ : label is "soft_lutpair37";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fbStage_reg[1]\ : label is "iSTATE:010,iSTATE0:100,iSTATE1:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fbStage_reg[2]\ : label is "iSTATE:010,iSTATE0:100,iSTATE1:001";
  attribute SOFT_HLUTNM of \FSM_sequential_addrStage[2]_i_5\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES of \FSM_sequential_addrStage_reg[0]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:111,iSTATE6:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_addrStage_reg[1]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:111,iSTATE6:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_addrStage_reg[2]\ : label is "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:101,iSTATE4:110,iSTATE5:111,iSTATE6:000";
  attribute SOFT_HLUTNM of \FSM_sequential_initStage[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_initStage[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_initStage[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_initStage[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_initStage[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_initStage[6]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSM_sequential_initStage[6]_i_5\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES of \FSM_sequential_initStage_reg[0]\ : label is "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_initStage_reg[1]\ : label is "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_initStage_reg[2]\ : label is "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_initStage_reg[3]\ : label is "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_initStage_reg[4]\ : label is "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_initStage_reg[5]\ : label is "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_initStage_reg[6]\ : label is "iSTATE:0000001,iSTATE0:0110100,iSTATE1:0000101,iSTATE2:0111011,iSTATE3:0111000,iSTATE4:0111111,iSTATE5:0000010,iSTATE6:0001001,iSTATE7:0000110,iSTATE8:0111100,iSTATE9:0001101,iSTATE10:1000000,iSTATE11:0001010,iSTATE12:0001110,iSTATE13:0000011,iSTATE14:0000111,iSTATE15:0000100,iSTATE16:0010001,iSTATE17:0001011,iSTATE18:0001000,iSTATE19:0100001,iSTATE20:0010101,iSTATE21:0001111,iSTATE22:0100101,iSTATE23:0010010,iSTATE24:0001100,iSTATE25:0100010,iSTATE26:0011001,iSTATE27:0010110,iSTATE28:0010000,iSTATE29:0101001,iSTATE30:0100110,iSTATE31:0011101,iSTATE32:1000001,iSTATE33:0101101,iSTATE34:1000101,iSTATE35:0011010,iSTATE36:0101010,iSTATE37:0011110,iSTATE38:1000010,iSTATE39:0101110,iSTATE40:0010011,iSTATE41:0100011,iSTATE42:0010111,iSTATE43:0100111,iSTATE44:0010100,iSTATE45:0100100,iSTATE46:0011011,iSTATE47:0011000,iSTATE48:0101011,iSTATE49:0101000,iSTATE50:0011111,iSTATE51:1000011,iSTATE52:0110001,iSTATE53:0101111,iSTATE54:0110101,iSTATE55:0011100,iSTATE56:0101100,iSTATE57:0100000,iSTATE58:1000100,iSTATE59:0110010,iSTATE60:0110000,iSTATE61:0111001,iSTATE62:0110110,iSTATE63:0111101,iSTATE64:0111010,iSTATE65:0111110,iSTATE66:0110011,iSTATE67:0110111,iSTATE68:0000000";
  attribute SOFT_HLUTNM of \Pixel[0]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \Pixel[10]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \Pixel[11]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \Pixel[12]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \Pixel[13]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \Pixel[14]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \Pixel[15]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \Pixel[16]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \Pixel[17]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \Pixel[18]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \Pixel[19]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \Pixel[1]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \Pixel[20]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \Pixel[21]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \Pixel[22]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \Pixel[23]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \Pixel[24]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \Pixel[25]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \Pixel[26]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \Pixel[27]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \Pixel[28]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \Pixel[29]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \Pixel[2]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \Pixel[30]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \Pixel[31]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \Pixel[32]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \Pixel[33]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \Pixel[34]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \Pixel[35]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \Pixel[36]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \Pixel[37]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \Pixel[38]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \Pixel[39]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \Pixel[3]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \Pixel[40]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \Pixel[41]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \Pixel[42]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \Pixel[43]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \Pixel[44]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \Pixel[45]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \Pixel[46]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \Pixel[47]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \Pixel[48]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \Pixel[49]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \Pixel[4]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \Pixel[50]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \Pixel[51]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \Pixel[52]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \Pixel[53]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \Pixel[54]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \Pixel[55]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \Pixel[56]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \Pixel[57]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \Pixel[58]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \Pixel[59]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \Pixel[5]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \Pixel[60]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \Pixel[61]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \Pixel[62]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \Pixel[63]_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \Pixel[6]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \Pixel[7]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \Pixel[8]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \Pixel[9]_i_1\ : label is "soft_lutpair138";
  attribute ADDER_THRESHOLD of \Pixel_reg[12]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[12]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[16]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[16]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[20]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[20]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[24]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[24]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[28]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[28]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[32]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[32]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[36]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[36]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[40]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[40]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[44]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[44]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[48]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[48]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[4]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[4]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[52]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[52]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[56]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[56]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[60]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[60]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[63]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[63]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \Pixel_reg[8]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \Pixel_reg[8]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \backState[1]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \backState[2]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \backState[2]_i_4\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \backState[2]_i_5\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \backState[2]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of blk_i_3 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of cd_i_11 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of cd_i_12 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of cd_i_13 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of cd_i_15 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of cd_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of cd_i_9 : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of cs_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of cs_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \cycle_count[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cycle_count[10]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cycle_count[11]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cycle_count[12]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \cycle_count[13]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \cycle_count[14]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \cycle_count[15]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \cycle_count[16]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \cycle_count[17]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \cycle_count[18]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cycle_count[19]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cycle_count[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cycle_count[20]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cycle_count[21]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cycle_count[22]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \cycle_count[23]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \cycle_count[24]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \cycle_count[25]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \cycle_count[26]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cycle_count[27]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \cycle_count[28]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cycle_count[29]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \cycle_count[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cycle_count[30]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \cycle_count[31]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \cycle_count[32]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \cycle_count[33]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \cycle_count[34]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \cycle_count[35]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \cycle_count[36]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \cycle_count[37]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \cycle_count[38]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \cycle_count[39]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \cycle_count[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cycle_count[40]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \cycle_count[41]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \cycle_count[42]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \cycle_count[43]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \cycle_count[44]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \cycle_count[45]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \cycle_count[46]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \cycle_count[47]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \cycle_count[48]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \cycle_count[49]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \cycle_count[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cycle_count[50]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \cycle_count[51]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \cycle_count[52]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \cycle_count[53]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \cycle_count[54]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \cycle_count[55]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \cycle_count[56]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \cycle_count[57]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \cycle_count[58]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \cycle_count[59]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \cycle_count[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cycle_count[60]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \cycle_count[61]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \cycle_count[62]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_13\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cycle_count[63]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cycle_count[6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cycle_count[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cycle_count[8]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cycle_count[9]_i_1\ : label is "soft_lutpair55";
  attribute ADDER_THRESHOLD of \cycle_count_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[32]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[36]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[40]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[44]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[48]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[52]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[56]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[60]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[63]_i_9\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \fb_addr[15]_i_13\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fb_addr[15]_i_20\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \fb_addr[15]_i_21\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \fb_addr[15]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \fb_addr[15]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of fb_en_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of fb_en_i_5 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of res_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of scl_i_10 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of scl_i_12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of scl_i_14 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of scl_i_2 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of scl_i_6 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[2]_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[2]_i_14\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \state[2]_i_17\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \state[2]_i_18\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \state[2]_i_25\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \state[2]_i_26\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \state[2]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state[2]_i_7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \writeStage[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \writeStage[2]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \writeStage[2]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \writeStage[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \writeStage[63]_i_10\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \writeStage[63]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \writeStage[63]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \writeStage[63]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \writeStage[63]_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \writeStage[63]_i_9\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \writeStage_inferred__1/writeStage[3]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \writeStage_inferred__1/writeStage[5]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \writeStage_inferred__2/writeStage[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \writeStage_inferred__2/writeStage[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \writeStage_inferred__2/writeStage[4]_i_2\ : label is "soft_lutpair44";
begin
  blk <= \^blk\;
  cd <= \^cd\;
  fb_en <= \^fb_en\;
  res <= \^res\;
  scl <= \^scl\;
  sda <= \^sda\;
\DataShort[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA800"
    )
        port map (
      I0 => \addrStage__0\(1),
      I1 => \addrStage__0\(2),
      I2 => \addrStage__0\(0),
      I3 => \state_reg_n_0_[1]\,
      I4 => \ReadData_reg_n_0_[0]\,
      O => \DataShort[0]_i_1_n_0\
    );
\DataShort[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData_reg_n_0_[10]\,
      I1 => \state_reg_n_0_[1]\,
      O => \DataShort[10]_i_1_n_0\
    );
\DataShort[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData_reg_n_0_[11]\,
      I1 => \state_reg_n_0_[1]\,
      O => \DataShort[11]_i_1_n_0\
    );
\DataShort[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData_reg_n_0_[12]\,
      I1 => \state_reg_n_0_[1]\,
      O => \DataShort[12]_i_1_n_0\
    );
\DataShort[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData_reg_n_0_[13]\,
      I1 => \state_reg_n_0_[1]\,
      O => \DataShort[13]_i_1_n_0\
    );
\DataShort[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData_reg_n_0_[14]\,
      I1 => \state_reg_n_0_[1]\,
      O => \DataShort[14]_i_1_n_0\
    );
\DataShort[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_sequential_addrStage[2]_i_3_n_0\,
      I1 => \DataShort[15]_i_3_n_0\,
      I2 => \DataShort[15]_i_4_n_0\,
      I3 => \cycle_count_reg_n_0_[4]\,
      I4 => \cycle_count_reg_n_0_[5]\,
      I5 => \fb_addr[15]_i_3_n_0\,
      O => \DataShort__0\
    );
\DataShort[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData_reg_n_0_[15]\,
      I1 => \state_reg_n_0_[1]\,
      O => \DataShort[15]_i_2_n_0\
    );
\DataShort[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_12_n_0\,
      I1 => \cycle_count[63]_i_4_n_0\,
      I2 => \cycle_count_reg_n_0_[63]\,
      I3 => \cycle_count_reg_n_0_[61]\,
      I4 => \cycle_count_reg_n_0_[62]\,
      O => \DataShort[15]_i_3_n_0\
    );
\DataShort[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"939300FFFFFFFFFF"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \addrStage__0\(1),
      I2 => \addrStage__0\(2),
      I3 => DataShort,
      I4 => \state_reg_n_0_[1]\,
      I5 => \DataShort[15]_i_5_n_0\,
      O => \DataShort[15]_i_4_n_0\
    );
\DataShort[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      O => \DataShort[15]_i_5_n_0\
    );
\DataShort[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \state_reg_n_0_[1]\,
      I2 => \ReadData_reg_n_0_[1]\,
      O => \DataShort[1]_i_1_n_0\
    );
\DataShort[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA800"
    )
        port map (
      I0 => \addrStage__0\(1),
      I1 => \addrStage__0\(2),
      I2 => \addrStage__0\(0),
      I3 => \state_reg_n_0_[1]\,
      I4 => \ReadData_reg_n_0_[2]\,
      O => \DataShort[2]_i_1_n_0\
    );
\DataShort[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FFA800"
    )
        port map (
      I0 => \addrStage__0\(1),
      I1 => \addrStage__0\(2),
      I2 => \addrStage__0\(0),
      I3 => \state_reg_n_0_[1]\,
      I4 => \ReadData_reg_n_0_[3]\,
      O => \DataShort[3]_i_1_n_0\
    );
\DataShort[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \addrStage__0\(2),
      I2 => \state_reg_n_0_[1]\,
      I3 => \ReadData_reg_n_0_[4]\,
      O => \DataShort[4]_i_1_n_0\
    );
\DataShort[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \state_reg_n_0_[1]\,
      I2 => \ReadData_reg_n_0_[5]\,
      O => \DataShort[5]_i_1_n_0\
    );
\DataShort[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \addrStage__0\(2),
      I1 => \addrStage__0\(1),
      I2 => \state_reg_n_0_[1]\,
      I3 => \ReadData_reg_n_0_[6]\,
      O => \DataShort[6]_i_1_n_0\
    );
\DataShort[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \addrStage__0\(2),
      I2 => \state_reg_n_0_[1]\,
      I3 => \ReadData_reg_n_0_[8]\,
      O => \DataShort[8]_i_1_n_0\
    );
\DataShort[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ReadData_reg_n_0_[9]\,
      I1 => \state_reg_n_0_[1]\,
      O => \DataShort[9]_i_1_n_0\
    );
\DataShort_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[0]_i_1_n_0\,
      Q => \DataShort_reg_n_0_[0]\
    );
\DataShort_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[10]_i_1_n_0\,
      Q => data5
    );
\DataShort_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[11]_i_1_n_0\,
      Q => data4
    );
\DataShort_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[12]_i_1_n_0\,
      Q => data3
    );
\DataShort_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[13]_i_1_n_0\,
      Q => data2
    );
\DataShort_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[14]_i_1_n_0\,
      Q => data1
    );
\DataShort_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[15]_i_2_n_0\,
      Q => data0
    );
\DataShort_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[1]_i_1_n_0\,
      Q => data14
    );
\DataShort_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[2]_i_1_n_0\,
      Q => data13
    );
\DataShort_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[3]_i_1_n_0\,
      Q => data12
    );
\DataShort_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[4]_i_1_n_0\,
      Q => data11
    );
\DataShort_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[5]_i_1_n_0\,
      Q => data10
    );
\DataShort_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[6]_i_1_n_0\,
      Q => data9
    );
\DataShort_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[8]_i_1_n_0\,
      Q => data7
    );
\DataShort_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \DataShort__0\,
      CLR => reset,
      D => \DataShort[9]_i_1_n_0\,
      Q => data6
    );
\Data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \addrStage__0\(2),
      I1 => \addrStage__0\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => g1_b0_n_0,
      I4 => \initStage__0\(6),
      I5 => g0_b0_n_0,
      O => \Data[0]_i_1_n_0\
    );
\Data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4474"
    )
        port map (
      I0 => \addrStage__0\(1),
      I1 => \state_reg_n_0_[2]\,
      I2 => g0_b1_n_0,
      I3 => \initStage__0\(6),
      O => \Data[1]_i_1_n_0\
    );
\Data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \addrStage__0\(1),
      I1 => \state_reg_n_0_[2]\,
      I2 => g0_b2_n_0,
      I3 => \initStage__0\(6),
      O => \Data[2]_i_1_n_0\
    );
\Data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => g0_b3_n_0,
      I2 => \initStage__0\(6),
      I3 => g1_b3_n_0,
      O => \Data[3]_i_1_n_0\
    );
\Data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => g0_b4_n_0,
      I1 => \initStage__0\(6),
      I2 => g1_b4_n_0,
      I3 => \state_reg_n_0_[2]\,
      O => \Data[4]_i_1_n_0\
    );
\Data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => g0_b5_n_0,
      I2 => \initStage__0\(6),
      I3 => g1_b5_n_0,
      O => \Data[5]_i_1_n_0\
    );
\Data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => g0_b6_n_0,
      I2 => \state_reg_n_0_[2]\,
      O => \Data[6]_i_1_n_0\
    );
\Data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B11B11B1"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \writeStage[63]_i_3_n_0\,
      I2 => \addrStage__0\(0),
      I3 => \addrStage__0\(1),
      I4 => \addrStage__0\(2),
      I5 => \Data[7]_i_3_n_0\,
      O => \Data__0\
    );
\Data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => g0_b7_n_0,
      I2 => \state_reg_n_0_[2]\,
      O => \Data[7]_i_2_n_0\
    );
\Data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \FSM_sequential_initStage[6]_i_5_n_0\,
      I1 => \Data[7]_i_4_n_0\,
      I2 => cd_i_5_n_0,
      I3 => \FSM_onehot_drawStage[5]_i_3_n_0\,
      I4 => \Data[7]_i_5_n_0\,
      I5 => \Data[7]_i_6_n_0\,
      O => \Data[7]_i_3_n_0\
    );
\Data[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fb_addr[15]_i_13_n_0\,
      I1 => \FSM_onehot_fbStage[2]_i_5_n_0\,
      I2 => cd_i_14_n_0,
      I3 => cd_i_15_n_0,
      I4 => \FSM_sequential_addrStage[2]_i_5_n_0\,
      I5 => \fb_addr[15]_i_20_n_0\,
      O => \Data[7]_i_4_n_0\
    );
\Data[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[62]\,
      I1 => \cycle_count_reg_n_0_[61]\,
      I2 => \cycle_count_reg_n_0_[63]\,
      I3 => \cycle_count[63]_i_4_n_0\,
      I4 => \FSM_onehot_drawStage[5]_i_12_n_0\,
      I5 => \Data[7]_i_7_n_0\,
      O => \Data[7]_i_5_n_0\
    );
\Data[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => cd_i_12_n_0,
      I3 => cd_i_8_n_0,
      I4 => \FSM_onehot_drawStage[5]_i_9_n_0\,
      O => \Data[7]_i_6_n_0\
    );
\Data[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \Data[7]_i_7_n_0\
    );
\Data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[0]_i_1_n_0\,
      Q => \Data_reg_n_0_[0]\
    );
\Data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[1]_i_1_n_0\,
      Q => \Data_reg_n_0_[1]\
    );
\Data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[2]_i_1_n_0\,
      Q => \Data_reg_n_0_[2]\
    );
\Data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[3]_i_1_n_0\,
      Q => \Data_reg_n_0_[3]\
    );
\Data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[4]_i_1_n_0\,
      Q => \Data_reg_n_0_[4]\
    );
\Data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[5]_i_1_n_0\,
      Q => \Data_reg_n_0_[5]\
    );
\Data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[6]_i_1_n_0\,
      Q => \Data_reg_n_0_[6]\
    );
\Data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Data__0\,
      CLR => reset,
      D => \Data[7]_i_2_n_0\,
      Q => \Data_reg_n_0_[7]\
    );
\DelayCount[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \DelayCount_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\DelayCount[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[12]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(10)
    );
\DelayCount[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[12]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(11)
    );
\DelayCount[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[12]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(12)
    );
\DelayCount[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[11]\,
      I1 => DelayStarted_reg_n_0,
      O => \DelayCount[12]_i_3_n_0\
    );
\DelayCount[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DelayStarted_reg_n_0,
      I1 => \DelayCount_reg_n_0_[8]\,
      O => \DelayCount[12]_i_4_n_0\
    );
\DelayCount[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => DelayStarted_reg_n_0,
      I1 => \DelayCount_reg_n_0_[11]\,
      I2 => \DelayCount_reg_n_0_[12]\,
      O => \DelayCount[12]_i_5_n_0\
    );
\DelayCount[12]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[11]\,
      I1 => DelayStarted_reg_n_0,
      I2 => \DelayCount_reg_n_0_[10]\,
      O => \DelayCount[12]_i_6_n_0\
    );
\DelayCount[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[9]\,
      I1 => \DelayCount_reg_n_0_[10]\,
      O => \DelayCount[12]_i_7_n_0\
    );
\DelayCount[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[8]\,
      I1 => DelayStarted_reg_n_0,
      I2 => \DelayCount_reg_n_0_[9]\,
      O => \DelayCount[12]_i_8_n_0\
    );
\DelayCount[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[16]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(13)
    );
\DelayCount[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[16]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(14)
    );
\DelayCount[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[16]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(15)
    );
\DelayCount[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[16]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(16)
    );
\DelayCount[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[13]\,
      I1 => DelayStarted_reg_n_0,
      O => \DelayCount[16]_i_3_n_0\
    );
\DelayCount[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[15]\,
      I1 => \DelayCount_reg_n_0_[16]\,
      O => \DelayCount[16]_i_4_n_0\
    );
\DelayCount[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[14]\,
      I1 => \DelayCount_reg_n_0_[15]\,
      O => \DelayCount[16]_i_5_n_0\
    );
\DelayCount[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => DelayStarted_reg_n_0,
      I1 => \DelayCount_reg_n_0_[13]\,
      I2 => \DelayCount_reg_n_0_[14]\,
      O => \DelayCount[16]_i_6_n_0\
    );
\DelayCount[16]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[13]\,
      I1 => DelayStarted_reg_n_0,
      I2 => \DelayCount_reg_n_0_[12]\,
      O => \DelayCount[16]_i_7_n_0\
    );
\DelayCount[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[20]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(17)
    );
\DelayCount[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[20]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(18)
    );
\DelayCount[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[20]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(19)
    );
\DelayCount[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFAB00"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => \initStage__0\(2),
      I2 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \DelayCount_reg[4]_i_2_n_7\,
      O => p_0_in(1)
    );
\DelayCount[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[20]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(20)
    );
\DelayCount[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[19]\,
      I1 => \DelayCount_reg_n_0_[20]\,
      O => \DelayCount[20]_i_3_n_0\
    );
\DelayCount[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[18]\,
      I1 => \DelayCount_reg_n_0_[19]\,
      O => \DelayCount[20]_i_4_n_0\
    );
\DelayCount[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[17]\,
      I1 => \DelayCount_reg_n_0_[18]\,
      O => \DelayCount[20]_i_5_n_0\
    );
\DelayCount[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[16]\,
      I1 => \DelayCount_reg_n_0_[17]\,
      O => \DelayCount[20]_i_6_n_0\
    );
\DelayCount[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[24]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(21)
    );
\DelayCount[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[24]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(22)
    );
\DelayCount[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[24]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(23)
    );
\DelayCount[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[24]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(24)
    );
\DelayCount[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[23]\,
      I1 => \DelayCount_reg_n_0_[24]\,
      O => \DelayCount[24]_i_3_n_0\
    );
\DelayCount[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[22]\,
      I1 => \DelayCount_reg_n_0_[23]\,
      O => \DelayCount[24]_i_4_n_0\
    );
\DelayCount[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[21]\,
      I1 => \DelayCount_reg_n_0_[22]\,
      O => \DelayCount[24]_i_5_n_0\
    );
\DelayCount[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[20]\,
      I1 => \DelayCount_reg_n_0_[21]\,
      O => \DelayCount[24]_i_6_n_0\
    );
\DelayCount[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[28]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(25)
    );
\DelayCount[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[28]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(26)
    );
\DelayCount[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[28]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(27)
    );
\DelayCount[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[28]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(28)
    );
\DelayCount[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[27]\,
      I1 => \DelayCount_reg_n_0_[28]\,
      O => \DelayCount[28]_i_3_n_0\
    );
\DelayCount[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[26]\,
      I1 => \DelayCount_reg_n_0_[27]\,
      O => \DelayCount[28]_i_4_n_0\
    );
\DelayCount[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[25]\,
      I1 => \DelayCount_reg_n_0_[26]\,
      O => \DelayCount[28]_i_5_n_0\
    );
\DelayCount[28]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[24]\,
      I1 => \DelayCount_reg_n_0_[25]\,
      O => \DelayCount[28]_i_6_n_0\
    );
\DelayCount[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[32]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(29)
    );
\DelayCount[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDF0"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(6),
      I2 => \DelayCount_reg[4]_i_2_n_6\,
      I3 => \state_reg_n_0_[0]\,
      O => p_0_in(2)
    );
\DelayCount[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[32]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(30)
    );
\DelayCount[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[32]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(31)
    );
\DelayCount[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[32]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(32)
    );
\DelayCount[32]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[31]\,
      I1 => \DelayCount_reg_n_0_[32]\,
      O => \DelayCount[32]_i_3_n_0\
    );
\DelayCount[32]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[30]\,
      I1 => \DelayCount_reg_n_0_[31]\,
      O => \DelayCount[32]_i_4_n_0\
    );
\DelayCount[32]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[29]\,
      I1 => \DelayCount_reg_n_0_[30]\,
      O => \DelayCount[32]_i_5_n_0\
    );
\DelayCount[32]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[28]\,
      I1 => \DelayCount_reg_n_0_[29]\,
      O => \DelayCount[32]_i_6_n_0\
    );
\DelayCount[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[36]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(33)
    );
\DelayCount[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[36]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(34)
    );
\DelayCount[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[36]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(35)
    );
\DelayCount[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[36]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(36)
    );
\DelayCount[36]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[35]\,
      I1 => \DelayCount_reg_n_0_[36]\,
      O => \DelayCount[36]_i_3_n_0\
    );
\DelayCount[36]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[34]\,
      I1 => \DelayCount_reg_n_0_[35]\,
      O => \DelayCount[36]_i_4_n_0\
    );
\DelayCount[36]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[33]\,
      I1 => \DelayCount_reg_n_0_[34]\,
      O => \DelayCount[36]_i_5_n_0\
    );
\DelayCount[36]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[32]\,
      I1 => \DelayCount_reg_n_0_[33]\,
      O => \DelayCount[36]_i_6_n_0\
    );
\DelayCount[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[40]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(37)
    );
\DelayCount[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[40]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(38)
    );
\DelayCount[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[40]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(39)
    );
\DelayCount[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0DFF0D00"
    )
        port map (
      I0 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I1 => \initStage__0\(2),
      I2 => \initStage__0\(6),
      I3 => \state_reg_n_0_[0]\,
      I4 => \DelayCount_reg[4]_i_2_n_5\,
      O => p_0_in(3)
    );
\DelayCount[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[40]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(40)
    );
\DelayCount[40]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[39]\,
      I1 => \DelayCount_reg_n_0_[40]\,
      O => \DelayCount[40]_i_3_n_0\
    );
\DelayCount[40]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[38]\,
      I1 => \DelayCount_reg_n_0_[39]\,
      O => \DelayCount[40]_i_4_n_0\
    );
\DelayCount[40]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[37]\,
      I1 => \DelayCount_reg_n_0_[38]\,
      O => \DelayCount[40]_i_5_n_0\
    );
\DelayCount[40]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[36]\,
      I1 => \DelayCount_reg_n_0_[37]\,
      O => \DelayCount[40]_i_6_n_0\
    );
\DelayCount[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[44]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(41)
    );
\DelayCount[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[44]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(42)
    );
\DelayCount[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[44]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(43)
    );
\DelayCount[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[44]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(44)
    );
\DelayCount[44]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[43]\,
      I1 => \DelayCount_reg_n_0_[44]\,
      O => \DelayCount[44]_i_3_n_0\
    );
\DelayCount[44]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[42]\,
      I1 => \DelayCount_reg_n_0_[43]\,
      O => \DelayCount[44]_i_4_n_0\
    );
\DelayCount[44]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[41]\,
      I1 => \DelayCount_reg_n_0_[42]\,
      O => \DelayCount[44]_i_5_n_0\
    );
\DelayCount[44]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[40]\,
      I1 => \DelayCount_reg_n_0_[41]\,
      O => \DelayCount[44]_i_6_n_0\
    );
\DelayCount[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[48]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(45)
    );
\DelayCount[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[48]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(46)
    );
\DelayCount[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[48]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(47)
    );
\DelayCount[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[48]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(48)
    );
\DelayCount[48]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[47]\,
      I1 => \DelayCount_reg_n_0_[48]\,
      O => \DelayCount[48]_i_3_n_0\
    );
\DelayCount[48]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[46]\,
      I1 => \DelayCount_reg_n_0_[47]\,
      O => \DelayCount[48]_i_4_n_0\
    );
\DelayCount[48]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[45]\,
      I1 => \DelayCount_reg_n_0_[46]\,
      O => \DelayCount[48]_i_5_n_0\
    );
\DelayCount[48]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[44]\,
      I1 => \DelayCount_reg_n_0_[45]\,
      O => \DelayCount[48]_i_6_n_0\
    );
\DelayCount[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[52]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(49)
    );
\DelayCount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFAB00"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => \initStage__0\(2),
      I2 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \DelayCount_reg[4]_i_2_n_4\,
      O => p_0_in(4)
    );
\DelayCount[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DelayStarted_reg_n_0,
      O => \DelayCount[4]_i_3_n_0\
    );
\DelayCount[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[4]\,
      I1 => DelayStarted_reg_n_0,
      O => \DelayCount[4]_i_4_n_0\
    );
\DelayCount[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[3]\,
      O => \DelayCount[4]_i_5_n_0\
    );
\DelayCount[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[2]\,
      O => \DelayCount[4]_i_6_n_0\
    );
\DelayCount[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[1]\,
      O => \DelayCount[4]_i_7_n_0\
    );
\DelayCount[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[52]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(50)
    );
\DelayCount[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[52]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(51)
    );
\DelayCount[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[52]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(52)
    );
\DelayCount[52]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[51]\,
      I1 => \DelayCount_reg_n_0_[52]\,
      O => \DelayCount[52]_i_3_n_0\
    );
\DelayCount[52]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[50]\,
      I1 => \DelayCount_reg_n_0_[51]\,
      O => \DelayCount[52]_i_4_n_0\
    );
\DelayCount[52]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[49]\,
      I1 => \DelayCount_reg_n_0_[50]\,
      O => \DelayCount[52]_i_5_n_0\
    );
\DelayCount[52]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[48]\,
      I1 => \DelayCount_reg_n_0_[49]\,
      O => \DelayCount[52]_i_6_n_0\
    );
\DelayCount[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[56]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(53)
    );
\DelayCount[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[56]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(54)
    );
\DelayCount[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[56]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(55)
    );
\DelayCount[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[56]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(56)
    );
\DelayCount[56]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[55]\,
      I1 => \DelayCount_reg_n_0_[56]\,
      O => \DelayCount[56]_i_3_n_0\
    );
\DelayCount[56]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[54]\,
      I1 => \DelayCount_reg_n_0_[55]\,
      O => \DelayCount[56]_i_4_n_0\
    );
\DelayCount[56]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[53]\,
      I1 => \DelayCount_reg_n_0_[54]\,
      O => \DelayCount[56]_i_5_n_0\
    );
\DelayCount[56]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[52]\,
      I1 => \DelayCount_reg_n_0_[53]\,
      O => \DelayCount[56]_i_6_n_0\
    );
\DelayCount[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[60]_i_2_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(57)
    );
\DelayCount[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[60]_i_2_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(58)
    );
\DelayCount[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[60]_i_2_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(59)
    );
\DelayCount[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EFF0E00"
    )
        port map (
      I0 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I1 => \initStage__0\(2),
      I2 => \initStage__0\(6),
      I3 => \state_reg_n_0_[0]\,
      I4 => \DelayCount_reg[8]_i_2_n_7\,
      O => p_0_in(5)
    );
\DelayCount[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[60]_i_2_n_4\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(60)
    );
\DelayCount[60]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[59]\,
      I1 => \DelayCount_reg_n_0_[60]\,
      O => \DelayCount[60]_i_3_n_0\
    );
\DelayCount[60]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[58]\,
      I1 => \DelayCount_reg_n_0_[59]\,
      O => \DelayCount[60]_i_4_n_0\
    );
\DelayCount[60]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[57]\,
      I1 => \DelayCount_reg_n_0_[58]\,
      O => \DelayCount[60]_i_5_n_0\
    );
\DelayCount[60]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[56]\,
      I1 => \DelayCount_reg_n_0_[57]\,
      O => \DelayCount[60]_i_6_n_0\
    );
\DelayCount[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[63]_i_7_n_7\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(61)
    );
\DelayCount[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[63]_i_7_n_6\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(62)
    );
\DelayCount[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F707"
    )
        port map (
      I0 => \DelayCount[63]_i_3_n_0\,
      I1 => \DelayCount_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \DelayCount[63]_i_4_n_0\,
      I4 => \DelayCount[63]_i_5_n_0\,
      I5 => \DelayCount[63]_i_6_n_0\,
      O => \DelayCount__0\
    );
\DelayCount[63]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[50]\,
      I1 => \DelayCount_reg_n_0_[51]\,
      I2 => \DelayCount_reg_n_0_[48]\,
      I3 => \DelayCount_reg_n_0_[49]\,
      I4 => \state[2]_i_24_n_0\,
      O => \DelayCount[63]_i_10_n_0\
    );
\DelayCount[63]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \state[2]_i_27_n_0\,
      I1 => \DelayCount_reg_n_0_[63]\,
      I2 => DelayStarted_reg_n_0,
      I3 => \DelayCount_reg_n_0_[60]\,
      I4 => \DelayCount_reg_n_0_[61]\,
      O => \DelayCount[63]_i_11_n_0\
    );
\DelayCount[63]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[62]\,
      I1 => \cycle_count_reg_n_0_[61]\,
      I2 => \cycle_count_reg_n_0_[63]\,
      I3 => \cycle_count[63]_i_4_n_0\,
      O => \DelayCount[63]_i_12_n_0\
    );
\DelayCount[63]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[26]\,
      I1 => \cycle_count_reg_n_0_[25]\,
      I2 => \fb_addr[15]_i_21_n_0\,
      I3 => \cycle_count[63]_i_5_n_0\,
      I4 => \cycle_count_reg_n_0_[2]\,
      I5 => \cycle_count_reg_n_0_[1]\,
      O => \DelayCount[63]_i_13_n_0\
    );
\DelayCount[63]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \DelayCount[63]_i_19_n_0\,
      I1 => \cycle_count_reg_n_0_[29]\,
      I2 => \cycle_count_reg_n_0_[28]\,
      I3 => \cycle_count_reg_n_0_[27]\,
      I4 => \DelayCount[63]_i_20_n_0\,
      I5 => cd_i_8_n_0,
      O => \DelayCount[63]_i_14_n_0\
    );
\DelayCount[63]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cd_i_15_n_0,
      I1 => cd_i_14_n_0,
      I2 => \cycle_count_reg_n_0_[38]\,
      I3 => \cycle_count_reg_n_0_[37]\,
      I4 => cd_i_12_n_0,
      O => \DelayCount[63]_i_15_n_0\
    );
\DelayCount[63]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[62]\,
      I1 => \DelayCount_reg_n_0_[63]\,
      O => \DelayCount[63]_i_16_n_0\
    );
\DelayCount[63]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[61]\,
      I1 => \DelayCount_reg_n_0_[62]\,
      O => \DelayCount[63]_i_17_n_0\
    );
\DelayCount[63]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[60]\,
      I1 => \DelayCount_reg_n_0_[61]\,
      O => \DelayCount[63]_i_18_n_0\
    );
\DelayCount[63]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[20]\,
      I1 => \cycle_count_reg_n_0_[19]\,
      O => \DelayCount[63]_i_19_n_0\
    );
\DelayCount[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \DelayCount_reg[63]_i_7_n_5\,
      I1 => \state_reg_n_0_[0]\,
      O => p_0_in(63)
    );
\DelayCount[63]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[7]\,
      I1 => \cycle_count_reg_n_0_[8]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      O => \DelayCount[63]_i_20_n_0\
    );
\DelayCount[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \state[2]_i_10_n_0\,
      I1 => \DelayCount[63]_i_8_n_0\,
      I2 => \DelayCount[63]_i_9_n_0\,
      I3 => \DelayCount[63]_i_10_n_0\,
      I4 => \DelayCount[63]_i_11_n_0\,
      I5 => \state[2]_i_12_n_0\,
      O => \DelayCount[63]_i_3_n_0\
    );
\DelayCount[63]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01011014"
    )
        port map (
      I0 => blk_i_2_n_0,
      I1 => \initStage__0\(0),
      I2 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I3 => \initStage__0\(6),
      I4 => \initStage__0\(2),
      O => \DelayCount[63]_i_4_n_0\
    );
\DelayCount[63]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_12_n_0\,
      I1 => \FSM_sequential_initStage[6]_i_10_n_0\,
      I2 => \DelayCount[63]_i_12_n_0\,
      I3 => \DelayCount[63]_i_13_n_0\,
      I4 => \DelayCount[63]_i_14_n_0\,
      I5 => \DelayCount[63]_i_15_n_0\,
      O => \DelayCount[63]_i_5_n_0\
    );
\DelayCount[63]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \fb_addr[15]_i_18_n_0\,
      I1 => scl_i_6_n_0,
      I2 => \FSM_sequential_initStage[6]_i_4_n_0\,
      I3 => \FSM_sequential_initStage[6]_i_5_n_0\,
      O => \DelayCount[63]_i_6_n_0\
    );
\DelayCount[63]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[2]\,
      I1 => \DelayCount_reg_n_0_[3]\,
      I2 => \DelayCount_reg_n_0_[62]\,
      I3 => \DelayCount_reg_n_0_[1]\,
      I4 => \state[2]_i_19_n_0\,
      O => \DelayCount[63]_i_8_n_0\
    );
\DelayCount[63]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[12]\,
      I1 => \DelayCount_reg_n_0_[15]\,
      I2 => \DelayCount_reg_n_0_[13]\,
      I3 => \DelayCount_reg_n_0_[14]\,
      I4 => \state[2]_i_16_n_0\,
      O => \DelayCount[63]_i_9_n_0\
    );
\DelayCount[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EFF0E00"
    )
        port map (
      I0 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I1 => \initStage__0\(2),
      I2 => \initStage__0\(6),
      I3 => \state_reg_n_0_[0]\,
      I4 => \DelayCount_reg[8]_i_2_n_6\,
      O => p_0_in(6)
    );
\DelayCount[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(6),
      I2 => \state_reg_n_0_[0]\,
      I3 => \DelayCount_reg[8]_i_2_n_5\,
      O => p_0_in(7)
    );
\DelayCount[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(6),
      I2 => \state_reg_n_0_[0]\,
      I3 => \DelayCount_reg[8]_i_2_n_4\,
      O => p_0_in(8)
    );
\DelayCount[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[7]\,
      I1 => \DelayCount_reg_n_0_[8]\,
      I2 => DelayStarted_reg_n_0,
      O => \DelayCount[8]_i_3_n_0\
    );
\DelayCount[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[6]\,
      I1 => \DelayCount_reg_n_0_[7]\,
      O => \DelayCount[8]_i_4_n_0\
    );
\DelayCount[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[5]\,
      I1 => \DelayCount_reg_n_0_[6]\,
      O => \DelayCount[8]_i_5_n_0\
    );
\DelayCount[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[4]\,
      I1 => \DelayCount_reg_n_0_[5]\,
      O => \DelayCount[8]_i_6_n_0\
    );
\DelayCount[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(6),
      I2 => \state_reg_n_0_[0]\,
      I3 => \DelayCount_reg[12]_i_2_n_7\,
      O => p_0_in(9)
    );
\DelayCount_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(0),
      Q => \DelayCount_reg_n_0_[0]\
    );
\DelayCount_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(10),
      Q => \DelayCount_reg_n_0_[10]\
    );
\DelayCount_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(11),
      Q => \DelayCount_reg_n_0_[11]\
    );
\DelayCount_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(12),
      Q => \DelayCount_reg_n_0_[12]\
    );
\DelayCount_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[8]_i_2_n_0\,
      CO(3) => \DelayCount_reg[12]_i_2_n_0\,
      CO(2) => \DelayCount_reg[12]_i_2_n_1\,
      CO(1) => \DelayCount_reg[12]_i_2_n_2\,
      CO(0) => \DelayCount_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount[12]_i_3_n_0\,
      DI(2) => \DelayCount_reg_n_0_[10]\,
      DI(1) => \DelayCount_reg_n_0_[9]\,
      DI(0) => \DelayCount[12]_i_4_n_0\,
      O(3) => \DelayCount_reg[12]_i_2_n_4\,
      O(2) => \DelayCount_reg[12]_i_2_n_5\,
      O(1) => \DelayCount_reg[12]_i_2_n_6\,
      O(0) => \DelayCount_reg[12]_i_2_n_7\,
      S(3) => \DelayCount[12]_i_5_n_0\,
      S(2) => \DelayCount[12]_i_6_n_0\,
      S(1) => \DelayCount[12]_i_7_n_0\,
      S(0) => \DelayCount[12]_i_8_n_0\
    );
\DelayCount_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(13),
      Q => \DelayCount_reg_n_0_[13]\
    );
\DelayCount_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(14),
      Q => \DelayCount_reg_n_0_[14]\
    );
\DelayCount_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(15),
      Q => \DelayCount_reg_n_0_[15]\
    );
\DelayCount_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(16),
      Q => \DelayCount_reg_n_0_[16]\
    );
\DelayCount_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[12]_i_2_n_0\,
      CO(3) => \DelayCount_reg[16]_i_2_n_0\,
      CO(2) => \DelayCount_reg[16]_i_2_n_1\,
      CO(1) => \DelayCount_reg[16]_i_2_n_2\,
      CO(0) => \DelayCount_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[15]\,
      DI(2) => \DelayCount_reg_n_0_[14]\,
      DI(1) => \DelayCount[16]_i_3_n_0\,
      DI(0) => \DelayCount_reg_n_0_[12]\,
      O(3) => \DelayCount_reg[16]_i_2_n_4\,
      O(2) => \DelayCount_reg[16]_i_2_n_5\,
      O(1) => \DelayCount_reg[16]_i_2_n_6\,
      O(0) => \DelayCount_reg[16]_i_2_n_7\,
      S(3) => \DelayCount[16]_i_4_n_0\,
      S(2) => \DelayCount[16]_i_5_n_0\,
      S(1) => \DelayCount[16]_i_6_n_0\,
      S(0) => \DelayCount[16]_i_7_n_0\
    );
\DelayCount_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(17),
      Q => \DelayCount_reg_n_0_[17]\
    );
\DelayCount_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(18),
      Q => \DelayCount_reg_n_0_[18]\
    );
\DelayCount_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(19),
      Q => \DelayCount_reg_n_0_[19]\
    );
\DelayCount_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(1),
      Q => \DelayCount_reg_n_0_[1]\
    );
\DelayCount_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(20),
      Q => \DelayCount_reg_n_0_[20]\
    );
\DelayCount_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[16]_i_2_n_0\,
      CO(3) => \DelayCount_reg[20]_i_2_n_0\,
      CO(2) => \DelayCount_reg[20]_i_2_n_1\,
      CO(1) => \DelayCount_reg[20]_i_2_n_2\,
      CO(0) => \DelayCount_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[19]\,
      DI(2) => \DelayCount_reg_n_0_[18]\,
      DI(1) => \DelayCount_reg_n_0_[17]\,
      DI(0) => \DelayCount_reg_n_0_[16]\,
      O(3) => \DelayCount_reg[20]_i_2_n_4\,
      O(2) => \DelayCount_reg[20]_i_2_n_5\,
      O(1) => \DelayCount_reg[20]_i_2_n_6\,
      O(0) => \DelayCount_reg[20]_i_2_n_7\,
      S(3) => \DelayCount[20]_i_3_n_0\,
      S(2) => \DelayCount[20]_i_4_n_0\,
      S(1) => \DelayCount[20]_i_5_n_0\,
      S(0) => \DelayCount[20]_i_6_n_0\
    );
\DelayCount_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(21),
      Q => \DelayCount_reg_n_0_[21]\
    );
\DelayCount_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(22),
      Q => \DelayCount_reg_n_0_[22]\
    );
\DelayCount_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(23),
      Q => \DelayCount_reg_n_0_[23]\
    );
\DelayCount_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(24),
      Q => \DelayCount_reg_n_0_[24]\
    );
\DelayCount_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[20]_i_2_n_0\,
      CO(3) => \DelayCount_reg[24]_i_2_n_0\,
      CO(2) => \DelayCount_reg[24]_i_2_n_1\,
      CO(1) => \DelayCount_reg[24]_i_2_n_2\,
      CO(0) => \DelayCount_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[23]\,
      DI(2) => \DelayCount_reg_n_0_[22]\,
      DI(1) => \DelayCount_reg_n_0_[21]\,
      DI(0) => \DelayCount_reg_n_0_[20]\,
      O(3) => \DelayCount_reg[24]_i_2_n_4\,
      O(2) => \DelayCount_reg[24]_i_2_n_5\,
      O(1) => \DelayCount_reg[24]_i_2_n_6\,
      O(0) => \DelayCount_reg[24]_i_2_n_7\,
      S(3) => \DelayCount[24]_i_3_n_0\,
      S(2) => \DelayCount[24]_i_4_n_0\,
      S(1) => \DelayCount[24]_i_5_n_0\,
      S(0) => \DelayCount[24]_i_6_n_0\
    );
\DelayCount_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(25),
      Q => \DelayCount_reg_n_0_[25]\
    );
\DelayCount_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(26),
      Q => \DelayCount_reg_n_0_[26]\
    );
\DelayCount_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(27),
      Q => \DelayCount_reg_n_0_[27]\
    );
\DelayCount_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(28),
      Q => \DelayCount_reg_n_0_[28]\
    );
\DelayCount_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[24]_i_2_n_0\,
      CO(3) => \DelayCount_reg[28]_i_2_n_0\,
      CO(2) => \DelayCount_reg[28]_i_2_n_1\,
      CO(1) => \DelayCount_reg[28]_i_2_n_2\,
      CO(0) => \DelayCount_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[27]\,
      DI(2) => \DelayCount_reg_n_0_[26]\,
      DI(1) => \DelayCount_reg_n_0_[25]\,
      DI(0) => \DelayCount_reg_n_0_[24]\,
      O(3) => \DelayCount_reg[28]_i_2_n_4\,
      O(2) => \DelayCount_reg[28]_i_2_n_5\,
      O(1) => \DelayCount_reg[28]_i_2_n_6\,
      O(0) => \DelayCount_reg[28]_i_2_n_7\,
      S(3) => \DelayCount[28]_i_3_n_0\,
      S(2) => \DelayCount[28]_i_4_n_0\,
      S(1) => \DelayCount[28]_i_5_n_0\,
      S(0) => \DelayCount[28]_i_6_n_0\
    );
\DelayCount_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(29),
      Q => \DelayCount_reg_n_0_[29]\
    );
\DelayCount_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(2),
      Q => \DelayCount_reg_n_0_[2]\
    );
\DelayCount_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(30),
      Q => \DelayCount_reg_n_0_[30]\
    );
\DelayCount_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(31),
      Q => \DelayCount_reg_n_0_[31]\
    );
\DelayCount_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(32),
      Q => \DelayCount_reg_n_0_[32]\
    );
\DelayCount_reg[32]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[28]_i_2_n_0\,
      CO(3) => \DelayCount_reg[32]_i_2_n_0\,
      CO(2) => \DelayCount_reg[32]_i_2_n_1\,
      CO(1) => \DelayCount_reg[32]_i_2_n_2\,
      CO(0) => \DelayCount_reg[32]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[31]\,
      DI(2) => \DelayCount_reg_n_0_[30]\,
      DI(1) => \DelayCount_reg_n_0_[29]\,
      DI(0) => \DelayCount_reg_n_0_[28]\,
      O(3) => \DelayCount_reg[32]_i_2_n_4\,
      O(2) => \DelayCount_reg[32]_i_2_n_5\,
      O(1) => \DelayCount_reg[32]_i_2_n_6\,
      O(0) => \DelayCount_reg[32]_i_2_n_7\,
      S(3) => \DelayCount[32]_i_3_n_0\,
      S(2) => \DelayCount[32]_i_4_n_0\,
      S(1) => \DelayCount[32]_i_5_n_0\,
      S(0) => \DelayCount[32]_i_6_n_0\
    );
\DelayCount_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(33),
      Q => \DelayCount_reg_n_0_[33]\
    );
\DelayCount_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(34),
      Q => \DelayCount_reg_n_0_[34]\
    );
\DelayCount_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(35),
      Q => \DelayCount_reg_n_0_[35]\
    );
\DelayCount_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(36),
      Q => \DelayCount_reg_n_0_[36]\
    );
\DelayCount_reg[36]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[32]_i_2_n_0\,
      CO(3) => \DelayCount_reg[36]_i_2_n_0\,
      CO(2) => \DelayCount_reg[36]_i_2_n_1\,
      CO(1) => \DelayCount_reg[36]_i_2_n_2\,
      CO(0) => \DelayCount_reg[36]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[35]\,
      DI(2) => \DelayCount_reg_n_0_[34]\,
      DI(1) => \DelayCount_reg_n_0_[33]\,
      DI(0) => \DelayCount_reg_n_0_[32]\,
      O(3) => \DelayCount_reg[36]_i_2_n_4\,
      O(2) => \DelayCount_reg[36]_i_2_n_5\,
      O(1) => \DelayCount_reg[36]_i_2_n_6\,
      O(0) => \DelayCount_reg[36]_i_2_n_7\,
      S(3) => \DelayCount[36]_i_3_n_0\,
      S(2) => \DelayCount[36]_i_4_n_0\,
      S(1) => \DelayCount[36]_i_5_n_0\,
      S(0) => \DelayCount[36]_i_6_n_0\
    );
\DelayCount_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(37),
      Q => \DelayCount_reg_n_0_[37]\
    );
\DelayCount_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(38),
      Q => \DelayCount_reg_n_0_[38]\
    );
\DelayCount_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(39),
      Q => \DelayCount_reg_n_0_[39]\
    );
\DelayCount_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(3),
      Q => \DelayCount_reg_n_0_[3]\
    );
\DelayCount_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(40),
      Q => \DelayCount_reg_n_0_[40]\
    );
\DelayCount_reg[40]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[36]_i_2_n_0\,
      CO(3) => \DelayCount_reg[40]_i_2_n_0\,
      CO(2) => \DelayCount_reg[40]_i_2_n_1\,
      CO(1) => \DelayCount_reg[40]_i_2_n_2\,
      CO(0) => \DelayCount_reg[40]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[39]\,
      DI(2) => \DelayCount_reg_n_0_[38]\,
      DI(1) => \DelayCount_reg_n_0_[37]\,
      DI(0) => \DelayCount_reg_n_0_[36]\,
      O(3) => \DelayCount_reg[40]_i_2_n_4\,
      O(2) => \DelayCount_reg[40]_i_2_n_5\,
      O(1) => \DelayCount_reg[40]_i_2_n_6\,
      O(0) => \DelayCount_reg[40]_i_2_n_7\,
      S(3) => \DelayCount[40]_i_3_n_0\,
      S(2) => \DelayCount[40]_i_4_n_0\,
      S(1) => \DelayCount[40]_i_5_n_0\,
      S(0) => \DelayCount[40]_i_6_n_0\
    );
\DelayCount_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(41),
      Q => \DelayCount_reg_n_0_[41]\
    );
\DelayCount_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(42),
      Q => \DelayCount_reg_n_0_[42]\
    );
\DelayCount_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(43),
      Q => \DelayCount_reg_n_0_[43]\
    );
\DelayCount_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(44),
      Q => \DelayCount_reg_n_0_[44]\
    );
\DelayCount_reg[44]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[40]_i_2_n_0\,
      CO(3) => \DelayCount_reg[44]_i_2_n_0\,
      CO(2) => \DelayCount_reg[44]_i_2_n_1\,
      CO(1) => \DelayCount_reg[44]_i_2_n_2\,
      CO(0) => \DelayCount_reg[44]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[43]\,
      DI(2) => \DelayCount_reg_n_0_[42]\,
      DI(1) => \DelayCount_reg_n_0_[41]\,
      DI(0) => \DelayCount_reg_n_0_[40]\,
      O(3) => \DelayCount_reg[44]_i_2_n_4\,
      O(2) => \DelayCount_reg[44]_i_2_n_5\,
      O(1) => \DelayCount_reg[44]_i_2_n_6\,
      O(0) => \DelayCount_reg[44]_i_2_n_7\,
      S(3) => \DelayCount[44]_i_3_n_0\,
      S(2) => \DelayCount[44]_i_4_n_0\,
      S(1) => \DelayCount[44]_i_5_n_0\,
      S(0) => \DelayCount[44]_i_6_n_0\
    );
\DelayCount_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(45),
      Q => \DelayCount_reg_n_0_[45]\
    );
\DelayCount_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(46),
      Q => \DelayCount_reg_n_0_[46]\
    );
\DelayCount_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(47),
      Q => \DelayCount_reg_n_0_[47]\
    );
\DelayCount_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(48),
      Q => \DelayCount_reg_n_0_[48]\
    );
\DelayCount_reg[48]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[44]_i_2_n_0\,
      CO(3) => \DelayCount_reg[48]_i_2_n_0\,
      CO(2) => \DelayCount_reg[48]_i_2_n_1\,
      CO(1) => \DelayCount_reg[48]_i_2_n_2\,
      CO(0) => \DelayCount_reg[48]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[47]\,
      DI(2) => \DelayCount_reg_n_0_[46]\,
      DI(1) => \DelayCount_reg_n_0_[45]\,
      DI(0) => \DelayCount_reg_n_0_[44]\,
      O(3) => \DelayCount_reg[48]_i_2_n_4\,
      O(2) => \DelayCount_reg[48]_i_2_n_5\,
      O(1) => \DelayCount_reg[48]_i_2_n_6\,
      O(0) => \DelayCount_reg[48]_i_2_n_7\,
      S(3) => \DelayCount[48]_i_3_n_0\,
      S(2) => \DelayCount[48]_i_4_n_0\,
      S(1) => \DelayCount[48]_i_5_n_0\,
      S(0) => \DelayCount[48]_i_6_n_0\
    );
\DelayCount_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(49),
      Q => \DelayCount_reg_n_0_[49]\
    );
\DelayCount_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(4),
      Q => \DelayCount_reg_n_0_[4]\
    );
\DelayCount_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DelayCount_reg[4]_i_2_n_0\,
      CO(2) => \DelayCount_reg[4]_i_2_n_1\,
      CO(1) => \DelayCount_reg[4]_i_2_n_2\,
      CO(0) => \DelayCount_reg[4]_i_2_n_3\,
      CYINIT => \DelayCount_reg_n_0_[0]\,
      DI(3) => \DelayCount[4]_i_3_n_0\,
      DI(2) => \DelayCount_reg_n_0_[3]\,
      DI(1) => \DelayCount_reg_n_0_[2]\,
      DI(0) => \DelayCount_reg_n_0_[1]\,
      O(3) => \DelayCount_reg[4]_i_2_n_4\,
      O(2) => \DelayCount_reg[4]_i_2_n_5\,
      O(1) => \DelayCount_reg[4]_i_2_n_6\,
      O(0) => \DelayCount_reg[4]_i_2_n_7\,
      S(3) => \DelayCount[4]_i_4_n_0\,
      S(2) => \DelayCount[4]_i_5_n_0\,
      S(1) => \DelayCount[4]_i_6_n_0\,
      S(0) => \DelayCount[4]_i_7_n_0\
    );
\DelayCount_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(50),
      Q => \DelayCount_reg_n_0_[50]\
    );
\DelayCount_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(51),
      Q => \DelayCount_reg_n_0_[51]\
    );
\DelayCount_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(52),
      Q => \DelayCount_reg_n_0_[52]\
    );
\DelayCount_reg[52]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[48]_i_2_n_0\,
      CO(3) => \DelayCount_reg[52]_i_2_n_0\,
      CO(2) => \DelayCount_reg[52]_i_2_n_1\,
      CO(1) => \DelayCount_reg[52]_i_2_n_2\,
      CO(0) => \DelayCount_reg[52]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[51]\,
      DI(2) => \DelayCount_reg_n_0_[50]\,
      DI(1) => \DelayCount_reg_n_0_[49]\,
      DI(0) => \DelayCount_reg_n_0_[48]\,
      O(3) => \DelayCount_reg[52]_i_2_n_4\,
      O(2) => \DelayCount_reg[52]_i_2_n_5\,
      O(1) => \DelayCount_reg[52]_i_2_n_6\,
      O(0) => \DelayCount_reg[52]_i_2_n_7\,
      S(3) => \DelayCount[52]_i_3_n_0\,
      S(2) => \DelayCount[52]_i_4_n_0\,
      S(1) => \DelayCount[52]_i_5_n_0\,
      S(0) => \DelayCount[52]_i_6_n_0\
    );
\DelayCount_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(53),
      Q => \DelayCount_reg_n_0_[53]\
    );
\DelayCount_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(54),
      Q => \DelayCount_reg_n_0_[54]\
    );
\DelayCount_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(55),
      Q => \DelayCount_reg_n_0_[55]\
    );
\DelayCount_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(56),
      Q => \DelayCount_reg_n_0_[56]\
    );
\DelayCount_reg[56]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[52]_i_2_n_0\,
      CO(3) => \DelayCount_reg[56]_i_2_n_0\,
      CO(2) => \DelayCount_reg[56]_i_2_n_1\,
      CO(1) => \DelayCount_reg[56]_i_2_n_2\,
      CO(0) => \DelayCount_reg[56]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[55]\,
      DI(2) => \DelayCount_reg_n_0_[54]\,
      DI(1) => \DelayCount_reg_n_0_[53]\,
      DI(0) => \DelayCount_reg_n_0_[52]\,
      O(3) => \DelayCount_reg[56]_i_2_n_4\,
      O(2) => \DelayCount_reg[56]_i_2_n_5\,
      O(1) => \DelayCount_reg[56]_i_2_n_6\,
      O(0) => \DelayCount_reg[56]_i_2_n_7\,
      S(3) => \DelayCount[56]_i_3_n_0\,
      S(2) => \DelayCount[56]_i_4_n_0\,
      S(1) => \DelayCount[56]_i_5_n_0\,
      S(0) => \DelayCount[56]_i_6_n_0\
    );
\DelayCount_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(57),
      Q => \DelayCount_reg_n_0_[57]\
    );
\DelayCount_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(58),
      Q => \DelayCount_reg_n_0_[58]\
    );
\DelayCount_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(59),
      Q => \DelayCount_reg_n_0_[59]\
    );
\DelayCount_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(5),
      Q => \DelayCount_reg_n_0_[5]\
    );
\DelayCount_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(60),
      Q => \DelayCount_reg_n_0_[60]\
    );
\DelayCount_reg[60]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[56]_i_2_n_0\,
      CO(3) => \DelayCount_reg[60]_i_2_n_0\,
      CO(2) => \DelayCount_reg[60]_i_2_n_1\,
      CO(1) => \DelayCount_reg[60]_i_2_n_2\,
      CO(0) => \DelayCount_reg[60]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[59]\,
      DI(2) => \DelayCount_reg_n_0_[58]\,
      DI(1) => \DelayCount_reg_n_0_[57]\,
      DI(0) => \DelayCount_reg_n_0_[56]\,
      O(3) => \DelayCount_reg[60]_i_2_n_4\,
      O(2) => \DelayCount_reg[60]_i_2_n_5\,
      O(1) => \DelayCount_reg[60]_i_2_n_6\,
      O(0) => \DelayCount_reg[60]_i_2_n_7\,
      S(3) => \DelayCount[60]_i_3_n_0\,
      S(2) => \DelayCount[60]_i_4_n_0\,
      S(1) => \DelayCount[60]_i_5_n_0\,
      S(0) => \DelayCount[60]_i_6_n_0\
    );
\DelayCount_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(61),
      Q => \DelayCount_reg_n_0_[61]\
    );
\DelayCount_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(62),
      Q => \DelayCount_reg_n_0_[62]\
    );
\DelayCount_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(63),
      Q => \DelayCount_reg_n_0_[63]\
    );
\DelayCount_reg[63]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[60]_i_2_n_0\,
      CO(3 downto 2) => \NLW_DelayCount_reg[63]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \DelayCount_reg[63]_i_7_n_2\,
      CO(0) => \DelayCount_reg[63]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \DelayCount_reg_n_0_[61]\,
      DI(0) => \DelayCount_reg_n_0_[60]\,
      O(3) => \NLW_DelayCount_reg[63]_i_7_O_UNCONNECTED\(3),
      O(2) => \DelayCount_reg[63]_i_7_n_5\,
      O(1) => \DelayCount_reg[63]_i_7_n_6\,
      O(0) => \DelayCount_reg[63]_i_7_n_7\,
      S(3) => '0',
      S(2) => \DelayCount[63]_i_16_n_0\,
      S(1) => \DelayCount[63]_i_17_n_0\,
      S(0) => \DelayCount[63]_i_18_n_0\
    );
\DelayCount_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(6),
      Q => \DelayCount_reg_n_0_[6]\
    );
\DelayCount_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(7),
      Q => \DelayCount_reg_n_0_[7]\
    );
\DelayCount_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(8),
      Q => \DelayCount_reg_n_0_[8]\
    );
\DelayCount_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \DelayCount_reg[4]_i_2_n_0\,
      CO(3) => \DelayCount_reg[8]_i_2_n_0\,
      CO(2) => \DelayCount_reg[8]_i_2_n_1\,
      CO(1) => \DelayCount_reg[8]_i_2_n_2\,
      CO(0) => \DelayCount_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \DelayCount_reg_n_0_[7]\,
      DI(2) => \DelayCount_reg_n_0_[6]\,
      DI(1) => \DelayCount_reg_n_0_[5]\,
      DI(0) => \DelayCount_reg_n_0_[4]\,
      O(3) => \DelayCount_reg[8]_i_2_n_4\,
      O(2) => \DelayCount_reg[8]_i_2_n_5\,
      O(1) => \DelayCount_reg[8]_i_2_n_6\,
      O(0) => \DelayCount_reg[8]_i_2_n_7\,
      S(3) => \DelayCount[8]_i_3_n_0\,
      S(2) => \DelayCount[8]_i_4_n_0\,
      S(1) => \DelayCount[8]_i_5_n_0\,
      S(0) => \DelayCount[8]_i_6_n_0\
    );
\DelayCount_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \DelayCount__0\,
      CLR => reset,
      D => p_0_in(9),
      Q => \DelayCount_reg_n_0_[9]\
    );
DelayStarted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA07A7"
    )
        port map (
      I0 => DelayStarted_reg_n_0,
      I1 => DelayStarted_i_2_n_0,
      I2 => \state_reg_n_0_[0]\,
      I3 => \DelayCount[63]_i_4_n_0\,
      I4 => DelayStarted_i_3_n_0,
      I5 => DelayStarted_i_4_n_0,
      O => DelayStarted_i_1_n_0
    );
DelayStarted_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \DelayCount[63]_i_9_n_0\,
      I1 => DelayStarted_i_5_n_0,
      I2 => \state[2]_i_10_n_0\,
      I3 => \DelayCount[63]_i_10_n_0\,
      I4 => DelayStarted_i_6_n_0,
      I5 => \state[2]_i_12_n_0\,
      O => DelayStarted_i_2_n_0
    );
DelayStarted_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_initStage[6]_i_5_n_0\,
      I1 => \fb_addr[15]_i_3_n_0\,
      I2 => \FSM_sequential_addrStage[2]_i_4_n_0\,
      I3 => \DataShort[15]_i_3_n_0\,
      I4 => DelayStarted_i_7_n_0,
      I5 => \FSM_sequential_addrStage[2]_i_5_n_0\,
      O => DelayStarted_i_3_n_0
    );
DelayStarted_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cd_i_5_n_0,
      I1 => \fb_addr[15]_i_16_n_0\,
      I2 => DelayStarted_i_8_n_0,
      I3 => DelayStarted_i_9_n_0,
      I4 => \FSM_onehot_drawStage[5]_i_7_n_0\,
      I5 => \FSM_sequential_initStage[6]_i_4_n_0\,
      O => DelayStarted_i_4_n_0
    );
DelayStarted_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \state[2]_i_19_n_0\,
      I1 => \DelayCount_reg_n_0_[1]\,
      I2 => \DelayCount_reg_n_0_[0]\,
      I3 => \DelayCount_reg_n_0_[2]\,
      I4 => \DelayCount_reg_n_0_[3]\,
      O => DelayStarted_i_5_n_0
    );
DelayStarted_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \state[2]_i_27_n_0\,
      I1 => \DelayCount_reg_n_0_[60]\,
      I2 => \DelayCount_reg_n_0_[61]\,
      I3 => \DelayCount_reg_n_0_[62]\,
      I4 => \DelayCount_reg_n_0_[63]\,
      O => DelayStarted_i_6_n_0
    );
DelayStarted_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \cycle_count_reg_n_0_[8]\,
      I5 => \cycle_count_reg_n_0_[7]\,
      O => DelayStarted_i_7_n_0
    );
DelayStarted_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[62]\,
      I1 => \cycle_count_reg_n_0_[61]\,
      I2 => \cycle_count_reg_n_0_[60]\,
      O => DelayStarted_i_8_n_0
    );
DelayStarted_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[29]\,
      I1 => \cycle_count_reg_n_0_[28]\,
      I2 => \cycle_count_reg_n_0_[27]\,
      O => DelayStarted_i_9_n_0
    );
DelayStarted_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => DelayStarted_i_1_n_0,
      Q => DelayStarted_reg_n_0
    );
\FSM_onehot_drawStage[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888B"
    )
        port map (
      I0 => \FSM_onehot_drawStage_reg[2]_i_2_n_0\,
      I1 => \drawStage__0\(5),
      I2 => \drawStage__0\(4),
      I3 => DataShort,
      I4 => \drawStage__0\(1),
      I5 => ReadAddr,
      O => \drawStage__1\(1)
    );
\FSM_onehot_drawStage[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \drawStage__0\(1),
      I1 => \FSM_onehot_drawStage_reg[2]_i_2_n_0\,
      I2 => \drawStage__0\(5),
      O => \drawStage__1\(2)
    );
\FSM_onehot_drawStage[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[53]\,
      I1 => \Pixel_reg_n_0_[52]\,
      O => \FSM_onehot_drawStage[2]_i_10_n_0\
    );
\FSM_onehot_drawStage[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[51]\,
      I1 => \Pixel_reg_n_0_[50]\,
      O => \FSM_onehot_drawStage[2]_i_11_n_0\
    );
\FSM_onehot_drawStage[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[49]\,
      I1 => \Pixel_reg_n_0_[48]\,
      O => \FSM_onehot_drawStage[2]_i_12_n_0\
    );
\FSM_onehot_drawStage[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[47]\,
      I1 => \Pixel_reg_n_0_[46]\,
      O => \FSM_onehot_drawStage[2]_i_14_n_0\
    );
\FSM_onehot_drawStage[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[45]\,
      I1 => \Pixel_reg_n_0_[44]\,
      O => \FSM_onehot_drawStage[2]_i_15_n_0\
    );
\FSM_onehot_drawStage[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[43]\,
      I1 => \Pixel_reg_n_0_[42]\,
      O => \FSM_onehot_drawStage[2]_i_16_n_0\
    );
\FSM_onehot_drawStage[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[41]\,
      I1 => \Pixel_reg_n_0_[40]\,
      O => \FSM_onehot_drawStage[2]_i_17_n_0\
    );
\FSM_onehot_drawStage[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[39]\,
      I1 => \Pixel_reg_n_0_[38]\,
      O => \FSM_onehot_drawStage[2]_i_19_n_0\
    );
\FSM_onehot_drawStage[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[37]\,
      I1 => \Pixel_reg_n_0_[36]\,
      O => \FSM_onehot_drawStage[2]_i_20_n_0\
    );
\FSM_onehot_drawStage[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[35]\,
      I1 => \Pixel_reg_n_0_[34]\,
      O => \FSM_onehot_drawStage[2]_i_21_n_0\
    );
\FSM_onehot_drawStage[2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[33]\,
      I1 => \Pixel_reg_n_0_[32]\,
      O => \FSM_onehot_drawStage[2]_i_22_n_0\
    );
\FSM_onehot_drawStage[2]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[31]\,
      I1 => \Pixel_reg_n_0_[30]\,
      O => \FSM_onehot_drawStage[2]_i_24_n_0\
    );
\FSM_onehot_drawStage[2]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[29]\,
      I1 => \Pixel_reg_n_0_[28]\,
      O => \FSM_onehot_drawStage[2]_i_25_n_0\
    );
\FSM_onehot_drawStage[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[27]\,
      I1 => \Pixel_reg_n_0_[26]\,
      O => \FSM_onehot_drawStage[2]_i_26_n_0\
    );
\FSM_onehot_drawStage[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[25]\,
      I1 => \Pixel_reg_n_0_[24]\,
      O => \FSM_onehot_drawStage[2]_i_27_n_0\
    );
\FSM_onehot_drawStage[2]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[23]\,
      I1 => \Pixel_reg_n_0_[22]\,
      O => \FSM_onehot_drawStage[2]_i_29_n_0\
    );
\FSM_onehot_drawStage[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[21]\,
      I1 => \Pixel_reg_n_0_[20]\,
      O => \FSM_onehot_drawStage[2]_i_30_n_0\
    );
\FSM_onehot_drawStage[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[19]\,
      I1 => \Pixel_reg_n_0_[18]\,
      O => \FSM_onehot_drawStage[2]_i_31_n_0\
    );
\FSM_onehot_drawStage[2]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[17]\,
      I1 => \Pixel_reg_n_0_[16]\,
      O => \FSM_onehot_drawStage[2]_i_32_n_0\
    );
\FSM_onehot_drawStage[2]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[15]\,
      I1 => \Pixel_reg_n_0_[14]\,
      O => \FSM_onehot_drawStage[2]_i_34_n_0\
    );
\FSM_onehot_drawStage[2]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[13]\,
      I1 => \Pixel_reg_n_0_[12]\,
      O => \FSM_onehot_drawStage[2]_i_35_n_0\
    );
\FSM_onehot_drawStage[2]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[11]\,
      I1 => \Pixel_reg_n_0_[10]\,
      O => \FSM_onehot_drawStage[2]_i_36_n_0\
    );
\FSM_onehot_drawStage[2]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[9]\,
      I1 => \Pixel_reg_n_0_[8]\,
      O => \FSM_onehot_drawStage[2]_i_37_n_0\
    );
\FSM_onehot_drawStage[2]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[0]\,
      I1 => \Pixel_reg_n_0_[1]\,
      O => \FSM_onehot_drawStage[2]_i_38_n_0\
    );
\FSM_onehot_drawStage[2]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[7]\,
      I1 => \Pixel_reg_n_0_[6]\,
      O => \FSM_onehot_drawStage[2]_i_39_n_0\
    );
\FSM_onehot_drawStage[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[63]\,
      I1 => \Pixel_reg_n_0_[62]\,
      O => \FSM_onehot_drawStage[2]_i_4_n_0\
    );
\FSM_onehot_drawStage[2]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[5]\,
      I1 => \Pixel_reg_n_0_[4]\,
      O => \FSM_onehot_drawStage[2]_i_40_n_0\
    );
\FSM_onehot_drawStage[2]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[3]\,
      I1 => \Pixel_reg_n_0_[2]\,
      O => \FSM_onehot_drawStage[2]_i_41_n_0\
    );
\FSM_onehot_drawStage[2]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Pixel_reg_n_0_[0]\,
      I1 => \Pixel_reg_n_0_[1]\,
      O => \FSM_onehot_drawStage[2]_i_42_n_0\
    );
\FSM_onehot_drawStage[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[61]\,
      I1 => \Pixel_reg_n_0_[60]\,
      O => \FSM_onehot_drawStage[2]_i_5_n_0\
    );
\FSM_onehot_drawStage[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[59]\,
      I1 => \Pixel_reg_n_0_[58]\,
      O => \FSM_onehot_drawStage[2]_i_6_n_0\
    );
\FSM_onehot_drawStage[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[57]\,
      I1 => \Pixel_reg_n_0_[56]\,
      O => \FSM_onehot_drawStage[2]_i_7_n_0\
    );
\FSM_onehot_drawStage[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[55]\,
      I1 => \Pixel_reg_n_0_[54]\,
      O => \FSM_onehot_drawStage[2]_i_9_n_0\
    );
\FSM_onehot_drawStage[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_2_n_0\,
      I1 => \FSM_onehot_drawStage[5]_i_3_n_0\,
      I2 => \FSM_onehot_drawStage[5]_i_4_n_0\,
      I3 => \FSM_onehot_drawStage[5]_i_5_n_0\,
      I4 => \FSM_onehot_drawStage[5]_i_6_n_0\,
      O => drawStage
    );
\FSM_onehot_drawStage[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => \cycle_count_reg_n_0_[7]\,
      I3 => \cycle_count_reg_n_0_[8]\,
      O => \FSM_onehot_drawStage[5]_i_10_n_0\
    );
\FSM_onehot_drawStage[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \cycle_count_reg_n_0_[63]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cycle_count_reg_n_0_[62]\,
      I5 => \cycle_count_reg_n_0_[61]\,
      O => \FSM_onehot_drawStage[5]_i_11_n_0\
    );
\FSM_onehot_drawStage[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[18]\,
      I1 => \cycle_count_reg_n_0_[19]\,
      I2 => \cycle_count_reg_n_0_[20]\,
      I3 => \cycle_count_reg_n_0_[42]\,
      I4 => \cycle_count_reg_n_0_[43]\,
      I5 => \cycle_count_reg_n_0_[44]\,
      O => \FSM_onehot_drawStage[5]_i_12_n_0\
    );
\FSM_onehot_drawStage[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[33]\,
      I1 => \cycle_count_reg_n_0_[34]\,
      I2 => \cycle_count_reg_n_0_[35]\,
      I3 => \cycle_count_reg_n_0_[36]\,
      I4 => \cycle_count_reg_n_0_[37]\,
      I5 => \cycle_count_reg_n_0_[38]\,
      O => \FSM_onehot_drawStage[5]_i_2_n_0\
    );
\FSM_onehot_drawStage[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \fb_addr[15]_i_8_n_0\,
      I1 => \fb_addr[15]_i_9_n_0\,
      I2 => \fb_addr[15]_i_10_n_0\,
      I3 => \FSM_onehot_drawStage[5]_i_7_n_0\,
      I4 => \FSM_onehot_drawStage[5]_i_8_n_0\,
      I5 => \fb_addr[15]_i_16_n_0\,
      O => \FSM_onehot_drawStage[5]_i_3_n_0\
    );
\FSM_onehot_drawStage[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cd_i_14_n_0,
      I1 => cd_i_12_n_0,
      I2 => cd_i_15_n_0,
      I3 => \FSM_onehot_drawStage[5]_i_9_n_0\,
      I4 => cd_i_10_n_0,
      I5 => \FSM_onehot_drawStage[5]_i_10_n_0\,
      O => \FSM_onehot_drawStage[5]_i_4_n_0\
    );
\FSM_onehot_drawStage[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cd_i_8_n_0,
      I1 => \fb_addr[15]_i_14_n_0\,
      I2 => \FSM_onehot_drawStage[5]_i_11_n_0\,
      I3 => \fb_addr[15]_i_13_n_0\,
      I4 => \cycle_count[63]_i_4_n_0\,
      I5 => cd_i_5_n_0,
      O => \FSM_onehot_drawStage[5]_i_5_n_0\
    );
\FSM_onehot_drawStage[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_12_n_0\,
      I1 => \fb_addr[15]_i_12_n_0\,
      I2 => \fb_addr[15]_i_19_n_0\,
      I3 => \fb_addr[15]_i_15_n_0\,
      O => \FSM_onehot_drawStage[5]_i_6_n_0\
    );
\FSM_onehot_drawStage[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[23]\,
      I1 => \cycle_count_reg_n_0_[22]\,
      I2 => \cycle_count_reg_n_0_[21]\,
      O => \FSM_onehot_drawStage[5]_i_7_n_0\
    );
\FSM_onehot_drawStage[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[60]\,
      I1 => \cycle_count_reg_n_0_[61]\,
      I2 => \cycle_count_reg_n_0_[62]\,
      I3 => \cycle_count_reg_n_0_[27]\,
      I4 => \cycle_count_reg_n_0_[28]\,
      I5 => \cycle_count_reg_n_0_[29]\,
      O => \FSM_onehot_drawStage[5]_i_8_n_0\
    );
\FSM_onehot_drawStage[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[25]\,
      I1 => \cycle_count_reg_n_0_[26]\,
      I2 => \cycle_count_reg_n_0_[55]\,
      I3 => \cycle_count_reg_n_0_[56]\,
      O => \FSM_onehot_drawStage[5]_i_9_n_0\
    );
\FSM_onehot_drawStage_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => drawStage,
      D => \drawStage__1\(1),
      PRE => reset,
      Q => \drawStage__0\(1)
    );
\FSM_onehot_drawStage_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => drawStage,
      CLR => reset,
      D => \drawStage__1\(2),
      Q => ReadAddr
    );
\FSM_onehot_drawStage_reg[2]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_drawStage_reg[2]_i_18_n_0\,
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_13_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_13_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_13_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_19_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_20_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_21_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_22_n_0\
    );
\FSM_onehot_drawStage_reg[2]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_drawStage_reg[2]_i_23_n_0\,
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_18_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_18_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_18_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_18_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_18_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_24_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_25_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_26_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_27_n_0\
    );
\FSM_onehot_drawStage_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_drawStage_reg[2]_i_3_n_0\,
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_2_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_2_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_2_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[63]\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_4_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_5_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_6_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_7_n_0\
    );
\FSM_onehot_drawStage_reg[2]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_drawStage_reg[2]_i_28_n_0\,
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_23_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_23_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_23_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_29_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_30_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_31_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_32_n_0\
    );
\FSM_onehot_drawStage_reg[2]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_drawStage_reg[2]_i_33_n_0\,
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_28_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_28_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_28_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_28_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_28_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_34_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_35_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_36_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_37_n_0\
    );
\FSM_onehot_drawStage_reg[2]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_drawStage_reg[2]_i_8_n_0\,
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_3_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_3_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_3_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_9_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_10_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_11_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_12_n_0\
    );
\FSM_onehot_drawStage_reg[2]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_33_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_33_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_33_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_33_n_3\,
      CYINIT => '1',
      DI(3 downto 1) => B"000",
      DI(0) => \FSM_onehot_drawStage[2]_i_38_n_0\,
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_33_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_39_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_40_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_41_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_42_n_0\
    );
\FSM_onehot_drawStage_reg[2]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_onehot_drawStage_reg[2]_i_13_n_0\,
      CO(3) => \FSM_onehot_drawStage_reg[2]_i_8_n_0\,
      CO(2) => \FSM_onehot_drawStage_reg[2]_i_8_n_1\,
      CO(1) => \FSM_onehot_drawStage_reg[2]_i_8_n_2\,
      CO(0) => \FSM_onehot_drawStage_reg[2]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_onehot_drawStage_reg[2]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_onehot_drawStage[2]_i_14_n_0\,
      S(2) => \FSM_onehot_drawStage[2]_i_15_n_0\,
      S(1) => \FSM_onehot_drawStage[2]_i_16_n_0\,
      S(0) => \FSM_onehot_drawStage[2]_i_17_n_0\
    );
\FSM_onehot_drawStage_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => drawStage,
      CLR => reset,
      D => ReadAddr,
      Q => DataShort
    );
\FSM_onehot_drawStage_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => drawStage,
      CLR => reset,
      D => DataShort,
      Q => \drawStage__0\(4)
    );
\FSM_onehot_drawStage_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => drawStage,
      CLR => reset,
      D => \drawStage__0\(4),
      Q => \drawStage__0\(5)
    );
\FSM_onehot_fbStage[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \FSM_onehot_fbStage[2]_i_2_n_0\,
      I1 => cycle_count,
      O => \FSM_onehot_fbStage[1]_i_1_n_0\
    );
\FSM_onehot_fbStage[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cycle_count,
      I1 => \FSM_onehot_fbStage[2]_i_2_n_0\,
      I2 => \FSM_onehot_fbStage_reg_n_0_[2]\,
      O => \FSM_onehot_fbStage[2]_i_1_n_0\
    );
\FSM_onehot_fbStage[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_2_n_0\,
      I1 => \FSM_onehot_drawStage[5]_i_3_n_0\,
      I2 => cd_i_4_n_0,
      I3 => \FSM_onehot_fbStage[2]_i_3_n_0\,
      I4 => \FSM_onehot_fbStage[2]_i_4_n_0\,
      I5 => \FSM_onehot_drawStage[5]_i_6_n_0\,
      O => \FSM_onehot_fbStage[2]_i_2_n_0\
    );
\FSM_onehot_fbStage[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_fbStage[2]_i_5_n_0\,
      I1 => cd_i_7_n_0,
      I2 => cd_i_8_n_0,
      I3 => scl_i_12_n_0,
      I4 => cd_i_5_n_0,
      O => \FSM_onehot_fbStage[2]_i_3_n_0\
    );
\FSM_onehot_fbStage[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \FSM_onehot_fbStage[2]_i_6_n_0\,
      I1 => fb_en_i_5_n_0,
      I2 => \state_reg_n_0_[1]\,
      I3 => \cycle_count_reg_n_0_[63]\,
      I4 => scl_i_11_n_0,
      I5 => \cycle_count[63]_i_4_n_0\,
      O => \FSM_onehot_fbStage[2]_i_4_n_0\
    );
\FSM_onehot_fbStage[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[1]\,
      I1 => \cycle_count_reg_n_0_[2]\,
      I2 => \cycle_count_reg_n_0_[34]\,
      I3 => \cycle_count_reg_n_0_[35]\,
      O => \FSM_onehot_fbStage[2]_i_5_n_0\
    );
\FSM_onehot_fbStage[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[19]\,
      I1 => \cycle_count_reg_n_0_[20]\,
      I2 => cycle_count,
      I3 => \FSM_onehot_fbStage_reg_n_0_[2]\,
      O => \FSM_onehot_fbStage[2]_i_6_n_0\
    );
\FSM_onehot_fbStage_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_fbStage[1]_i_1_n_0\,
      PRE => reset,
      Q => cycle_count
    );
\FSM_onehot_fbStage_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_onehot_fbStage[2]_i_1_n_0\,
      Q => \FSM_onehot_fbStage_reg_n_0_[2]\
    );
\FSM_sequential_addrStage[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \addrStage__0\(1),
      I2 => \addrStage__0\(2),
      I3 => \state_reg_n_0_[2]\,
      I4 => \FSM_sequential_addrStage[2]_i_2_n_0\,
      I5 => \FSM_sequential_addrStage[2]_i_3_n_0\,
      O => \FSM_sequential_addrStage[0]_i_1_n_0\
    );
\FSM_sequential_addrStage[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \addrStage__0\(1),
      I2 => \state_reg_n_0_[2]\,
      I3 => \FSM_sequential_addrStage[2]_i_2_n_0\,
      I4 => \FSM_sequential_addrStage[2]_i_3_n_0\,
      O => \FSM_sequential_addrStage[1]_i_1_n_0\
    );
\FSM_sequential_addrStage[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78F0F0F0F0F0F0F0"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \addrStage__0\(1),
      I2 => \addrStage__0\(2),
      I3 => \state_reg_n_0_[2]\,
      I4 => \FSM_sequential_addrStage[2]_i_2_n_0\,
      I5 => \FSM_sequential_addrStage[2]_i_3_n_0\,
      O => \FSM_sequential_addrStage[2]_i_1_n_0\
    );
\FSM_sequential_addrStage[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \fb_addr[15]_i_3_n_0\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => \cycle_count_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \DataShort[15]_i_3_n_0\,
      O => \FSM_sequential_addrStage[2]_i_2_n_0\
    );
\FSM_sequential_addrStage[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_3_n_0\,
      I1 => cd_i_5_n_0,
      I2 => \FSM_sequential_addrStage[2]_i_4_n_0\,
      I3 => \FSM_sequential_addrStage[2]_i_5_n_0\,
      I4 => \fb_addr[15]_i_20_n_0\,
      I5 => \FSM_sequential_initStage[6]_i_5_n_0\,
      O => \FSM_sequential_addrStage[2]_i_3_n_0\
    );
\FSM_sequential_addrStage[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cd_i_15_n_0,
      I1 => cd_i_14_n_0,
      I2 => \cycle_count_reg_n_0_[1]\,
      I3 => \cycle_count_reg_n_0_[2]\,
      I4 => \cycle_count[63]_i_5_n_0\,
      I5 => \fb_addr[15]_i_13_n_0\,
      O => \FSM_sequential_addrStage[2]_i_4_n_0\
    );
\FSM_sequential_addrStage[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[19]\,
      I1 => \cycle_count_reg_n_0_[20]\,
      I2 => \cycle_count_reg_n_0_[37]\,
      I3 => \cycle_count_reg_n_0_[38]\,
      O => \FSM_sequential_addrStage[2]_i_5_n_0\
    );
\FSM_sequential_addrStage_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_addrStage[0]_i_1_n_0\,
      PRE => reset,
      Q => \addrStage__0\(0)
    );
\FSM_sequential_addrStage_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_addrStage[1]_i_1_n_0\,
      Q => \addrStage__0\(1)
    );
\FSM_sequential_addrStage_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_addrStage[2]_i_1_n_0\,
      Q => \addrStage__0\(2)
    );
\FSM_sequential_initStage[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCC8FFFFFFFF"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(6),
      I2 => \initStage__0\(3),
      I3 => \initStage__0\(4),
      I4 => \initStage__0\(5),
      I5 => \initStage__0\(0),
      O => \FSM_sequential_initStage[0]_i_1_n_0\
    );
\FSM_sequential_initStage[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00660666"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(6),
      I4 => blk_i_2_n_0,
      O => \initStage__1\(1)
    );
\FSM_sequential_initStage[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07303070"
    )
        port map (
      I0 => blk_i_2_n_0,
      I1 => \initStage__0\(6),
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(0),
      I4 => \FSM_sequential_initStage_reg_n_0_[1]\,
      O => \initStage__1\(2)
    );
\FSM_sequential_initStage[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(0),
      I4 => \initStage__0\(3),
      O => \FSM_sequential_initStage[3]_i_1_n_0\
    );
\FSM_sequential_initStage[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => \initStage__0\(0),
      I2 => \initStage__0\(2),
      I3 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I4 => \initStage__0\(3),
      I5 => \initStage__0\(4),
      O => \FSM_sequential_initStage[4]_i_1_n_0\
    );
\FSM_sequential_initStage[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45551000"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => \FSM_sequential_initStage[5]_i_2_n_0\,
      I2 => \initStage__0\(4),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(5),
      O => \FSM_sequential_initStage[5]_i_1_n_0\
    );
\FSM_sequential_initStage[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I1 => \initStage__0\(2),
      I2 => \initStage__0\(0),
      O => \FSM_sequential_initStage[5]_i_2_n_0\
    );
\FSM_sequential_initStage[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \FSM_sequential_initStage[6]_i_3_n_0\,
      I1 => \FSM_sequential_initStage[6]_i_4_n_0\,
      I2 => \FSM_sequential_initStage[6]_i_5_n_0\,
      I3 => \FSM_sequential_initStage[6]_i_6_n_0\,
      I4 => \FSM_sequential_initStage[6]_i_7_n_0\,
      I5 => \FSM_sequential_initStage[6]_i_8_n_0\,
      O => initStage
    );
\FSM_sequential_initStage[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[10]\,
      I1 => \cycle_count_reg_n_0_[11]\,
      I2 => \cycle_count_reg_n_0_[14]\,
      I3 => \cycle_count_reg_n_0_[13]\,
      I4 => \cycle_count_reg_n_0_[56]\,
      I5 => \cycle_count_reg_n_0_[55]\,
      O => \FSM_sequential_initStage[6]_i_10_n_0\
    );
\FSM_sequential_initStage[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[25]\,
      I1 => \cycle_count_reg_n_0_[26]\,
      I2 => \cycle_count_reg_n_0_[37]\,
      I3 => \cycle_count_reg_n_0_[38]\,
      O => \FSM_sequential_initStage[6]_i_11_n_0\
    );
\FSM_sequential_initStage[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A0A3A3A3A3A3A"
    )
        port map (
      I0 => \FSM_sequential_initStage[6]_i_9_n_0\,
      I1 => blk_i_2_n_0,
      I2 => \initStage__0\(6),
      I3 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I4 => \initStage__0\(0),
      I5 => \initStage__0\(2),
      O => \initStage__1\(6)
    );
\FSM_sequential_initStage[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \fb_addr[15]_i_18_n_0\,
      I1 => \fb_addr[15]_i_16_n_0\,
      I2 => cd_i_5_n_0,
      O => \FSM_sequential_initStage[6]_i_3_n_0\
    );
\FSM_sequential_initStage[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[50]\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => \cycle_count_reg_n_0_[53]\,
      I3 => \cycle_count_reg_n_0_[8]\,
      I4 => \fb_addr[15]_i_9_n_0\,
      I5 => \fb_addr[15]_i_8_n_0\,
      O => \FSM_sequential_initStage[6]_i_4_n_0\
    );
\FSM_sequential_initStage[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \fb_addr[15]_i_12_n_0\,
      I1 => \fb_addr[15]_i_19_n_0\,
      I2 => \fb_addr[15]_i_15_n_0\,
      I3 => \FSM_onehot_drawStage[5]_i_2_n_0\,
      O => \FSM_sequential_initStage[6]_i_5_n_0\
    );
\FSM_sequential_initStage[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => \fb_addr[15]_i_20_n_0\,
      I3 => cd_i_10_n_0,
      I4 => \fb_addr[15]_i_17_n_0\,
      I5 => \fb_addr[15]_i_11_n_0\,
      O => \FSM_sequential_initStage[6]_i_6_n_0\
    );
\FSM_sequential_initStage[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \FSM_sequential_initStage[6]_i_10_n_0\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \cycle_count_reg_n_0_[35]\,
      I5 => \cycle_count_reg_n_0_[34]\,
      O => \FSM_sequential_initStage[6]_i_7_n_0\
    );
\FSM_sequential_initStage[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cd_i_14_n_0,
      I1 => cd_i_12_n_0,
      I2 => cd_i_8_n_0,
      I3 => \FSM_sequential_initStage[6]_i_11_n_0\,
      I4 => cd_i_15_n_0,
      I5 => \cycle_count[63]_i_4_n_0\,
      O => \FSM_sequential_initStage[6]_i_8_n_0\
    );
\FSM_sequential_initStage[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \initStage__0\(5),
      I1 => \initStage__0\(3),
      I2 => \initStage__0\(4),
      I3 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I4 => \initStage__0\(2),
      I5 => \initStage__0\(0),
      O => \FSM_sequential_initStage[6]_i_9_n_0\
    );
\FSM_sequential_initStage_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => initStage,
      D => \FSM_sequential_initStage[0]_i_1_n_0\,
      PRE => reset,
      Q => \initStage__0\(0)
    );
\FSM_sequential_initStage_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => initStage,
      CLR => reset,
      D => \initStage__1\(1),
      Q => \FSM_sequential_initStage_reg_n_0_[1]\
    );
\FSM_sequential_initStage_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => initStage,
      CLR => reset,
      D => \initStage__1\(2),
      Q => \initStage__0\(2)
    );
\FSM_sequential_initStage_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => initStage,
      CLR => reset,
      D => \FSM_sequential_initStage[3]_i_1_n_0\,
      Q => \initStage__0\(3)
    );
\FSM_sequential_initStage_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => initStage,
      CLR => reset,
      D => \FSM_sequential_initStage[4]_i_1_n_0\,
      Q => \initStage__0\(4)
    );
\FSM_sequential_initStage_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => initStage,
      CLR => reset,
      D => \FSM_sequential_initStage[5]_i_1_n_0\,
      Q => \initStage__0\(5)
    );
\FSM_sequential_initStage_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => initStage,
      CLR => reset,
      D => \initStage__1\(6),
      Q => \initStage__0\(6)
    );
\Pixel[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => \Pixel_reg_n_0_[0]\,
      O => \Pixel__0\(0)
    );
\Pixel[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \drawStage__0\(5),
      I1 => in4(10),
      O => \Pixel__0\(10)
    );
\Pixel[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(11),
      O => \Pixel__0\(11)
    );
\Pixel[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \drawStage__0\(5),
      I1 => in4(12),
      O => \Pixel__0\(12)
    );
\Pixel[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[12]\,
      O => \Pixel[12]_i_3_n_0\
    );
\Pixel[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[11]\,
      O => \Pixel[12]_i_4_n_0\
    );
\Pixel[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[10]\,
      O => \Pixel[12]_i_5_n_0\
    );
\Pixel[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[9]\,
      O => \Pixel[12]_i_6_n_0\
    );
\Pixel[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(13),
      O => \Pixel__0\(13)
    );
\Pixel[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \drawStage__0\(5),
      I1 => in4(14),
      O => \Pixel__0\(14)
    );
\Pixel[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \drawStage__0\(5),
      I1 => in4(15),
      O => \Pixel__0\(15)
    );
\Pixel[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(16),
      O => \Pixel__0\(16)
    );
\Pixel[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[16]\,
      O => \Pixel[16]_i_3_n_0\
    );
\Pixel[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[15]\,
      O => \Pixel[16]_i_4_n_0\
    );
\Pixel[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[14]\,
      O => \Pixel[16]_i_5_n_0\
    );
\Pixel[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[13]\,
      O => \Pixel[16]_i_6_n_0\
    );
\Pixel[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(17),
      O => \Pixel__0\(17)
    );
\Pixel[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(18),
      O => \Pixel__0\(18)
    );
\Pixel[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(19),
      O => \Pixel__0\(19)
    );
\Pixel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(1),
      O => \Pixel__0\(1)
    );
\Pixel[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(20),
      O => \Pixel__0\(20)
    );
\Pixel[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[20]\,
      O => \Pixel[20]_i_3_n_0\
    );
\Pixel[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[19]\,
      O => \Pixel[20]_i_4_n_0\
    );
\Pixel[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[18]\,
      O => \Pixel[20]_i_5_n_0\
    );
\Pixel[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[17]\,
      O => \Pixel[20]_i_6_n_0\
    );
\Pixel[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(21),
      O => \Pixel__0\(21)
    );
\Pixel[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(22),
      O => \Pixel__0\(22)
    );
\Pixel[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(23),
      O => \Pixel__0\(23)
    );
\Pixel[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(24),
      O => \Pixel__0\(24)
    );
\Pixel[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[24]\,
      O => \Pixel[24]_i_3_n_0\
    );
\Pixel[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[23]\,
      O => \Pixel[24]_i_4_n_0\
    );
\Pixel[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[22]\,
      O => \Pixel[24]_i_5_n_0\
    );
\Pixel[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[21]\,
      O => \Pixel[24]_i_6_n_0\
    );
\Pixel[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(25),
      O => \Pixel__0\(25)
    );
\Pixel[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(26),
      O => \Pixel__0\(26)
    );
\Pixel[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(27),
      O => \Pixel__0\(27)
    );
\Pixel[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(28),
      O => \Pixel__0\(28)
    );
\Pixel[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[28]\,
      O => \Pixel[28]_i_3_n_0\
    );
\Pixel[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[27]\,
      O => \Pixel[28]_i_4_n_0\
    );
\Pixel[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[26]\,
      O => \Pixel[28]_i_5_n_0\
    );
\Pixel[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[25]\,
      O => \Pixel[28]_i_6_n_0\
    );
\Pixel[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(29),
      O => \Pixel__0\(29)
    );
\Pixel[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(2),
      O => \Pixel__0\(2)
    );
\Pixel[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(30),
      O => \Pixel__0\(30)
    );
\Pixel[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(31),
      O => \Pixel__0\(31)
    );
\Pixel[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(32),
      O => \Pixel__0\(32)
    );
\Pixel[32]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[32]\,
      O => \Pixel[32]_i_3_n_0\
    );
\Pixel[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[31]\,
      O => \Pixel[32]_i_4_n_0\
    );
\Pixel[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[30]\,
      O => \Pixel[32]_i_5_n_0\
    );
\Pixel[32]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[29]\,
      O => \Pixel[32]_i_6_n_0\
    );
\Pixel[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(33),
      O => \Pixel__0\(33)
    );
\Pixel[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(34),
      O => \Pixel__0\(34)
    );
\Pixel[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(35),
      O => \Pixel__0\(35)
    );
\Pixel[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(36),
      O => \Pixel__0\(36)
    );
\Pixel[36]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[36]\,
      O => \Pixel[36]_i_3_n_0\
    );
\Pixel[36]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[35]\,
      O => \Pixel[36]_i_4_n_0\
    );
\Pixel[36]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[34]\,
      O => \Pixel[36]_i_5_n_0\
    );
\Pixel[36]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[33]\,
      O => \Pixel[36]_i_6_n_0\
    );
\Pixel[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(37),
      O => \Pixel__0\(37)
    );
\Pixel[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(38),
      O => \Pixel__0\(38)
    );
\Pixel[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(39),
      O => \Pixel__0\(39)
    );
\Pixel[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(3),
      O => \Pixel__0\(3)
    );
\Pixel[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(40),
      O => \Pixel__0\(40)
    );
\Pixel[40]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[40]\,
      O => \Pixel[40]_i_3_n_0\
    );
\Pixel[40]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[39]\,
      O => \Pixel[40]_i_4_n_0\
    );
\Pixel[40]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[38]\,
      O => \Pixel[40]_i_5_n_0\
    );
\Pixel[40]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[37]\,
      O => \Pixel[40]_i_6_n_0\
    );
\Pixel[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(41),
      O => \Pixel__0\(41)
    );
\Pixel[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(42),
      O => \Pixel__0\(42)
    );
\Pixel[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(43),
      O => \Pixel__0\(43)
    );
\Pixel[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(44),
      O => \Pixel__0\(44)
    );
\Pixel[44]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[44]\,
      O => \Pixel[44]_i_3_n_0\
    );
\Pixel[44]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[43]\,
      O => \Pixel[44]_i_4_n_0\
    );
\Pixel[44]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[42]\,
      O => \Pixel[44]_i_5_n_0\
    );
\Pixel[44]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[41]\,
      O => \Pixel[44]_i_6_n_0\
    );
\Pixel[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(45),
      O => \Pixel__0\(45)
    );
\Pixel[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(46),
      O => \Pixel__0\(46)
    );
\Pixel[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(47),
      O => \Pixel__0\(47)
    );
\Pixel[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(48),
      O => \Pixel__0\(48)
    );
\Pixel[48]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[48]\,
      O => \Pixel[48]_i_3_n_0\
    );
\Pixel[48]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[47]\,
      O => \Pixel[48]_i_4_n_0\
    );
\Pixel[48]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[46]\,
      O => \Pixel[48]_i_5_n_0\
    );
\Pixel[48]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[45]\,
      O => \Pixel[48]_i_6_n_0\
    );
\Pixel[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(49),
      O => \Pixel__0\(49)
    );
\Pixel[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(4),
      O => \Pixel__0\(4)
    );
\Pixel[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[4]\,
      O => \Pixel[4]_i_3_n_0\
    );
\Pixel[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[3]\,
      O => \Pixel[4]_i_4_n_0\
    );
\Pixel[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[2]\,
      O => \Pixel[4]_i_5_n_0\
    );
\Pixel[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[1]\,
      O => \Pixel[4]_i_6_n_0\
    );
\Pixel[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(50),
      O => \Pixel__0\(50)
    );
\Pixel[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(51),
      O => \Pixel__0\(51)
    );
\Pixel[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(52),
      O => \Pixel__0\(52)
    );
\Pixel[52]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[52]\,
      O => \Pixel[52]_i_3_n_0\
    );
\Pixel[52]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[51]\,
      O => \Pixel[52]_i_4_n_0\
    );
\Pixel[52]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[50]\,
      O => \Pixel[52]_i_5_n_0\
    );
\Pixel[52]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[49]\,
      O => \Pixel[52]_i_6_n_0\
    );
\Pixel[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(53),
      O => \Pixel__0\(53)
    );
\Pixel[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(54),
      O => \Pixel__0\(54)
    );
\Pixel[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(55),
      O => \Pixel__0\(55)
    );
\Pixel[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(56),
      O => \Pixel__0\(56)
    );
\Pixel[56]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[56]\,
      O => \Pixel[56]_i_3_n_0\
    );
\Pixel[56]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[55]\,
      O => \Pixel[56]_i_4_n_0\
    );
\Pixel[56]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[54]\,
      O => \Pixel[56]_i_5_n_0\
    );
\Pixel[56]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[53]\,
      O => \Pixel[56]_i_6_n_0\
    );
\Pixel[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(57),
      O => \Pixel__0\(57)
    );
\Pixel[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(58),
      O => \Pixel__0\(58)
    );
\Pixel[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(59),
      O => \Pixel__0\(59)
    );
\Pixel[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(5),
      O => \Pixel__0\(5)
    );
\Pixel[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(60),
      O => \Pixel__0\(60)
    );
\Pixel[60]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[60]\,
      O => \Pixel[60]_i_3_n_0\
    );
\Pixel[60]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[59]\,
      O => \Pixel[60]_i_4_n_0\
    );
\Pixel[60]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[58]\,
      O => \Pixel[60]_i_5_n_0\
    );
\Pixel[60]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[57]\,
      O => \Pixel[60]_i_6_n_0\
    );
\Pixel[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(61),
      O => \Pixel__0\(61)
    );
\Pixel[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(62),
      O => \Pixel__0\(62)
    );
\Pixel[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => drawStage,
      I1 => \drawStage__0\(4),
      I2 => \FSM_onehot_drawStage_reg[2]_i_2_n_0\,
      I3 => \drawStage__0\(5),
      O => \Pixel[63]_i_1_n_0\
    );
\Pixel[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(63),
      O => \Pixel__0\(63)
    );
\Pixel[63]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[63]\,
      O => \Pixel[63]_i_4_n_0\
    );
\Pixel[63]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[62]\,
      O => \Pixel[63]_i_5_n_0\
    );
\Pixel[63]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[61]\,
      O => \Pixel[63]_i_6_n_0\
    );
\Pixel[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(6),
      O => \Pixel__0\(6)
    );
\Pixel[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \drawStage__0\(4),
      I1 => in4(7),
      O => \Pixel__0\(7)
    );
\Pixel[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \drawStage__0\(5),
      I1 => in4(8),
      O => \Pixel__0\(8)
    );
\Pixel[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[8]\,
      O => \Pixel[8]_i_3_n_0\
    );
\Pixel[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[7]\,
      O => \Pixel[8]_i_4_n_0\
    );
\Pixel[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[6]\,
      O => \Pixel[8]_i_5_n_0\
    );
\Pixel[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Pixel_reg_n_0_[5]\,
      O => \Pixel[8]_i_6_n_0\
    );
\Pixel[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \drawStage__0\(5),
      I1 => in4(9),
      O => \Pixel__0\(9)
    );
\Pixel_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(0),
      Q => \Pixel_reg_n_0_[0]\
    );
\Pixel_reg[10]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      D => \Pixel__0\(10),
      PRE => reset,
      Q => \Pixel_reg_n_0_[10]\
    );
\Pixel_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(11),
      Q => \Pixel_reg_n_0_[11]\
    );
\Pixel_reg[12]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      D => \Pixel__0\(12),
      PRE => reset,
      Q => \Pixel_reg_n_0_[12]\
    );
\Pixel_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[8]_i_2_n_0\,
      CO(3) => \Pixel_reg[12]_i_2_n_0\,
      CO(2) => \Pixel_reg[12]_i_2_n_1\,
      CO(1) => \Pixel_reg[12]_i_2_n_2\,
      CO(0) => \Pixel_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[12]\,
      DI(2) => \Pixel_reg_n_0_[11]\,
      DI(1) => \Pixel_reg_n_0_[10]\,
      DI(0) => \Pixel_reg_n_0_[9]\,
      O(3 downto 0) => in4(12 downto 9),
      S(3) => \Pixel[12]_i_3_n_0\,
      S(2) => \Pixel[12]_i_4_n_0\,
      S(1) => \Pixel[12]_i_5_n_0\,
      S(0) => \Pixel[12]_i_6_n_0\
    );
\Pixel_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(13),
      Q => \Pixel_reg_n_0_[13]\
    );
\Pixel_reg[14]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      D => \Pixel__0\(14),
      PRE => reset,
      Q => \Pixel_reg_n_0_[14]\
    );
\Pixel_reg[15]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      D => \Pixel__0\(15),
      PRE => reset,
      Q => \Pixel_reg_n_0_[15]\
    );
\Pixel_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(16),
      Q => \Pixel_reg_n_0_[16]\
    );
\Pixel_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[12]_i_2_n_0\,
      CO(3) => \Pixel_reg[16]_i_2_n_0\,
      CO(2) => \Pixel_reg[16]_i_2_n_1\,
      CO(1) => \Pixel_reg[16]_i_2_n_2\,
      CO(0) => \Pixel_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[16]\,
      DI(2) => \Pixel_reg_n_0_[15]\,
      DI(1) => \Pixel_reg_n_0_[14]\,
      DI(0) => \Pixel_reg_n_0_[13]\,
      O(3 downto 0) => in4(16 downto 13),
      S(3) => \Pixel[16]_i_3_n_0\,
      S(2) => \Pixel[16]_i_4_n_0\,
      S(1) => \Pixel[16]_i_5_n_0\,
      S(0) => \Pixel[16]_i_6_n_0\
    );
\Pixel_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(17),
      Q => \Pixel_reg_n_0_[17]\
    );
\Pixel_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(18),
      Q => \Pixel_reg_n_0_[18]\
    );
\Pixel_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(19),
      Q => \Pixel_reg_n_0_[19]\
    );
\Pixel_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(1),
      Q => \Pixel_reg_n_0_[1]\
    );
\Pixel_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(20),
      Q => \Pixel_reg_n_0_[20]\
    );
\Pixel_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[16]_i_2_n_0\,
      CO(3) => \Pixel_reg[20]_i_2_n_0\,
      CO(2) => \Pixel_reg[20]_i_2_n_1\,
      CO(1) => \Pixel_reg[20]_i_2_n_2\,
      CO(0) => \Pixel_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[20]\,
      DI(2) => \Pixel_reg_n_0_[19]\,
      DI(1) => \Pixel_reg_n_0_[18]\,
      DI(0) => \Pixel_reg_n_0_[17]\,
      O(3 downto 0) => in4(20 downto 17),
      S(3) => \Pixel[20]_i_3_n_0\,
      S(2) => \Pixel[20]_i_4_n_0\,
      S(1) => \Pixel[20]_i_5_n_0\,
      S(0) => \Pixel[20]_i_6_n_0\
    );
\Pixel_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(21),
      Q => \Pixel_reg_n_0_[21]\
    );
\Pixel_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(22),
      Q => \Pixel_reg_n_0_[22]\
    );
\Pixel_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(23),
      Q => \Pixel_reg_n_0_[23]\
    );
\Pixel_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(24),
      Q => \Pixel_reg_n_0_[24]\
    );
\Pixel_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[20]_i_2_n_0\,
      CO(3) => \Pixel_reg[24]_i_2_n_0\,
      CO(2) => \Pixel_reg[24]_i_2_n_1\,
      CO(1) => \Pixel_reg[24]_i_2_n_2\,
      CO(0) => \Pixel_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[24]\,
      DI(2) => \Pixel_reg_n_0_[23]\,
      DI(1) => \Pixel_reg_n_0_[22]\,
      DI(0) => \Pixel_reg_n_0_[21]\,
      O(3 downto 0) => in4(24 downto 21),
      S(3) => \Pixel[24]_i_3_n_0\,
      S(2) => \Pixel[24]_i_4_n_0\,
      S(1) => \Pixel[24]_i_5_n_0\,
      S(0) => \Pixel[24]_i_6_n_0\
    );
\Pixel_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(25),
      Q => \Pixel_reg_n_0_[25]\
    );
\Pixel_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(26),
      Q => \Pixel_reg_n_0_[26]\
    );
\Pixel_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(27),
      Q => \Pixel_reg_n_0_[27]\
    );
\Pixel_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(28),
      Q => \Pixel_reg_n_0_[28]\
    );
\Pixel_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[24]_i_2_n_0\,
      CO(3) => \Pixel_reg[28]_i_2_n_0\,
      CO(2) => \Pixel_reg[28]_i_2_n_1\,
      CO(1) => \Pixel_reg[28]_i_2_n_2\,
      CO(0) => \Pixel_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[28]\,
      DI(2) => \Pixel_reg_n_0_[27]\,
      DI(1) => \Pixel_reg_n_0_[26]\,
      DI(0) => \Pixel_reg_n_0_[25]\,
      O(3 downto 0) => in4(28 downto 25),
      S(3) => \Pixel[28]_i_3_n_0\,
      S(2) => \Pixel[28]_i_4_n_0\,
      S(1) => \Pixel[28]_i_5_n_0\,
      S(0) => \Pixel[28]_i_6_n_0\
    );
\Pixel_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(29),
      Q => \Pixel_reg_n_0_[29]\
    );
\Pixel_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(2),
      Q => \Pixel_reg_n_0_[2]\
    );
\Pixel_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(30),
      Q => \Pixel_reg_n_0_[30]\
    );
\Pixel_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(31),
      Q => \Pixel_reg_n_0_[31]\
    );
\Pixel_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(32),
      Q => \Pixel_reg_n_0_[32]\
    );
\Pixel_reg[32]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[28]_i_2_n_0\,
      CO(3) => \Pixel_reg[32]_i_2_n_0\,
      CO(2) => \Pixel_reg[32]_i_2_n_1\,
      CO(1) => \Pixel_reg[32]_i_2_n_2\,
      CO(0) => \Pixel_reg[32]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[32]\,
      DI(2) => \Pixel_reg_n_0_[31]\,
      DI(1) => \Pixel_reg_n_0_[30]\,
      DI(0) => \Pixel_reg_n_0_[29]\,
      O(3 downto 0) => in4(32 downto 29),
      S(3) => \Pixel[32]_i_3_n_0\,
      S(2) => \Pixel[32]_i_4_n_0\,
      S(1) => \Pixel[32]_i_5_n_0\,
      S(0) => \Pixel[32]_i_6_n_0\
    );
\Pixel_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(33),
      Q => \Pixel_reg_n_0_[33]\
    );
\Pixel_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(34),
      Q => \Pixel_reg_n_0_[34]\
    );
\Pixel_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(35),
      Q => \Pixel_reg_n_0_[35]\
    );
\Pixel_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(36),
      Q => \Pixel_reg_n_0_[36]\
    );
\Pixel_reg[36]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[32]_i_2_n_0\,
      CO(3) => \Pixel_reg[36]_i_2_n_0\,
      CO(2) => \Pixel_reg[36]_i_2_n_1\,
      CO(1) => \Pixel_reg[36]_i_2_n_2\,
      CO(0) => \Pixel_reg[36]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[36]\,
      DI(2) => \Pixel_reg_n_0_[35]\,
      DI(1) => \Pixel_reg_n_0_[34]\,
      DI(0) => \Pixel_reg_n_0_[33]\,
      O(3 downto 0) => in4(36 downto 33),
      S(3) => \Pixel[36]_i_3_n_0\,
      S(2) => \Pixel[36]_i_4_n_0\,
      S(1) => \Pixel[36]_i_5_n_0\,
      S(0) => \Pixel[36]_i_6_n_0\
    );
\Pixel_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(37),
      Q => \Pixel_reg_n_0_[37]\
    );
\Pixel_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(38),
      Q => \Pixel_reg_n_0_[38]\
    );
\Pixel_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(39),
      Q => \Pixel_reg_n_0_[39]\
    );
\Pixel_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(3),
      Q => \Pixel_reg_n_0_[3]\
    );
\Pixel_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(40),
      Q => \Pixel_reg_n_0_[40]\
    );
\Pixel_reg[40]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[36]_i_2_n_0\,
      CO(3) => \Pixel_reg[40]_i_2_n_0\,
      CO(2) => \Pixel_reg[40]_i_2_n_1\,
      CO(1) => \Pixel_reg[40]_i_2_n_2\,
      CO(0) => \Pixel_reg[40]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[40]\,
      DI(2) => \Pixel_reg_n_0_[39]\,
      DI(1) => \Pixel_reg_n_0_[38]\,
      DI(0) => \Pixel_reg_n_0_[37]\,
      O(3 downto 0) => in4(40 downto 37),
      S(3) => \Pixel[40]_i_3_n_0\,
      S(2) => \Pixel[40]_i_4_n_0\,
      S(1) => \Pixel[40]_i_5_n_0\,
      S(0) => \Pixel[40]_i_6_n_0\
    );
\Pixel_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(41),
      Q => \Pixel_reg_n_0_[41]\
    );
\Pixel_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(42),
      Q => \Pixel_reg_n_0_[42]\
    );
\Pixel_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(43),
      Q => \Pixel_reg_n_0_[43]\
    );
\Pixel_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(44),
      Q => \Pixel_reg_n_0_[44]\
    );
\Pixel_reg[44]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[40]_i_2_n_0\,
      CO(3) => \Pixel_reg[44]_i_2_n_0\,
      CO(2) => \Pixel_reg[44]_i_2_n_1\,
      CO(1) => \Pixel_reg[44]_i_2_n_2\,
      CO(0) => \Pixel_reg[44]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[44]\,
      DI(2) => \Pixel_reg_n_0_[43]\,
      DI(1) => \Pixel_reg_n_0_[42]\,
      DI(0) => \Pixel_reg_n_0_[41]\,
      O(3 downto 0) => in4(44 downto 41),
      S(3) => \Pixel[44]_i_3_n_0\,
      S(2) => \Pixel[44]_i_4_n_0\,
      S(1) => \Pixel[44]_i_5_n_0\,
      S(0) => \Pixel[44]_i_6_n_0\
    );
\Pixel_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(45),
      Q => \Pixel_reg_n_0_[45]\
    );
\Pixel_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(46),
      Q => \Pixel_reg_n_0_[46]\
    );
\Pixel_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(47),
      Q => \Pixel_reg_n_0_[47]\
    );
\Pixel_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(48),
      Q => \Pixel_reg_n_0_[48]\
    );
\Pixel_reg[48]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[44]_i_2_n_0\,
      CO(3) => \Pixel_reg[48]_i_2_n_0\,
      CO(2) => \Pixel_reg[48]_i_2_n_1\,
      CO(1) => \Pixel_reg[48]_i_2_n_2\,
      CO(0) => \Pixel_reg[48]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[48]\,
      DI(2) => \Pixel_reg_n_0_[47]\,
      DI(1) => \Pixel_reg_n_0_[46]\,
      DI(0) => \Pixel_reg_n_0_[45]\,
      O(3 downto 0) => in4(48 downto 45),
      S(3) => \Pixel[48]_i_3_n_0\,
      S(2) => \Pixel[48]_i_4_n_0\,
      S(1) => \Pixel[48]_i_5_n_0\,
      S(0) => \Pixel[48]_i_6_n_0\
    );
\Pixel_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(49),
      Q => \Pixel_reg_n_0_[49]\
    );
\Pixel_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(4),
      Q => \Pixel_reg_n_0_[4]\
    );
\Pixel_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Pixel_reg[4]_i_2_n_0\,
      CO(2) => \Pixel_reg[4]_i_2_n_1\,
      CO(1) => \Pixel_reg[4]_i_2_n_2\,
      CO(0) => \Pixel_reg[4]_i_2_n_3\,
      CYINIT => \Pixel_reg_n_0_[0]\,
      DI(3) => \Pixel_reg_n_0_[4]\,
      DI(2) => \Pixel_reg_n_0_[3]\,
      DI(1) => \Pixel_reg_n_0_[2]\,
      DI(0) => \Pixel_reg_n_0_[1]\,
      O(3 downto 0) => in4(4 downto 1),
      S(3) => \Pixel[4]_i_3_n_0\,
      S(2) => \Pixel[4]_i_4_n_0\,
      S(1) => \Pixel[4]_i_5_n_0\,
      S(0) => \Pixel[4]_i_6_n_0\
    );
\Pixel_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(50),
      Q => \Pixel_reg_n_0_[50]\
    );
\Pixel_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(51),
      Q => \Pixel_reg_n_0_[51]\
    );
\Pixel_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(52),
      Q => \Pixel_reg_n_0_[52]\
    );
\Pixel_reg[52]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[48]_i_2_n_0\,
      CO(3) => \Pixel_reg[52]_i_2_n_0\,
      CO(2) => \Pixel_reg[52]_i_2_n_1\,
      CO(1) => \Pixel_reg[52]_i_2_n_2\,
      CO(0) => \Pixel_reg[52]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[52]\,
      DI(2) => \Pixel_reg_n_0_[51]\,
      DI(1) => \Pixel_reg_n_0_[50]\,
      DI(0) => \Pixel_reg_n_0_[49]\,
      O(3 downto 0) => in4(52 downto 49),
      S(3) => \Pixel[52]_i_3_n_0\,
      S(2) => \Pixel[52]_i_4_n_0\,
      S(1) => \Pixel[52]_i_5_n_0\,
      S(0) => \Pixel[52]_i_6_n_0\
    );
\Pixel_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(53),
      Q => \Pixel_reg_n_0_[53]\
    );
\Pixel_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(54),
      Q => \Pixel_reg_n_0_[54]\
    );
\Pixel_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(55),
      Q => \Pixel_reg_n_0_[55]\
    );
\Pixel_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(56),
      Q => \Pixel_reg_n_0_[56]\
    );
\Pixel_reg[56]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[52]_i_2_n_0\,
      CO(3) => \Pixel_reg[56]_i_2_n_0\,
      CO(2) => \Pixel_reg[56]_i_2_n_1\,
      CO(1) => \Pixel_reg[56]_i_2_n_2\,
      CO(0) => \Pixel_reg[56]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[56]\,
      DI(2) => \Pixel_reg_n_0_[55]\,
      DI(1) => \Pixel_reg_n_0_[54]\,
      DI(0) => \Pixel_reg_n_0_[53]\,
      O(3 downto 0) => in4(56 downto 53),
      S(3) => \Pixel[56]_i_3_n_0\,
      S(2) => \Pixel[56]_i_4_n_0\,
      S(1) => \Pixel[56]_i_5_n_0\,
      S(0) => \Pixel[56]_i_6_n_0\
    );
\Pixel_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(57),
      Q => \Pixel_reg_n_0_[57]\
    );
\Pixel_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(58),
      Q => \Pixel_reg_n_0_[58]\
    );
\Pixel_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(59),
      Q => \Pixel_reg_n_0_[59]\
    );
\Pixel_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(5),
      Q => \Pixel_reg_n_0_[5]\
    );
\Pixel_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(60),
      Q => \Pixel_reg_n_0_[60]\
    );
\Pixel_reg[60]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[56]_i_2_n_0\,
      CO(3) => \Pixel_reg[60]_i_2_n_0\,
      CO(2) => \Pixel_reg[60]_i_2_n_1\,
      CO(1) => \Pixel_reg[60]_i_2_n_2\,
      CO(0) => \Pixel_reg[60]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[60]\,
      DI(2) => \Pixel_reg_n_0_[59]\,
      DI(1) => \Pixel_reg_n_0_[58]\,
      DI(0) => \Pixel_reg_n_0_[57]\,
      O(3 downto 0) => in4(60 downto 57),
      S(3) => \Pixel[60]_i_3_n_0\,
      S(2) => \Pixel[60]_i_4_n_0\,
      S(1) => \Pixel[60]_i_5_n_0\,
      S(0) => \Pixel[60]_i_6_n_0\
    );
\Pixel_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(61),
      Q => \Pixel_reg_n_0_[61]\
    );
\Pixel_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(62),
      Q => \Pixel_reg_n_0_[62]\
    );
\Pixel_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(63),
      Q => \Pixel_reg_n_0_[63]\
    );
\Pixel_reg[63]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[60]_i_2_n_0\,
      CO(3 downto 2) => \NLW_Pixel_reg[63]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Pixel_reg[63]_i_3_n_2\,
      CO(0) => \Pixel_reg[63]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Pixel_reg_n_0_[62]\,
      DI(0) => \Pixel_reg_n_0_[61]\,
      O(3) => \NLW_Pixel_reg[63]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in4(63 downto 61),
      S(3) => '0',
      S(2) => \Pixel[63]_i_4_n_0\,
      S(1) => \Pixel[63]_i_5_n_0\,
      S(0) => \Pixel[63]_i_6_n_0\
    );
\Pixel_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(6),
      Q => \Pixel_reg_n_0_[6]\
    );
\Pixel_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      CLR => reset,
      D => \Pixel__0\(7),
      Q => \Pixel_reg_n_0_[7]\
    );
\Pixel_reg[8]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      D => \Pixel__0\(8),
      PRE => reset,
      Q => \Pixel_reg_n_0_[8]\
    );
\Pixel_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Pixel_reg[4]_i_2_n_0\,
      CO(3) => \Pixel_reg[8]_i_2_n_0\,
      CO(2) => \Pixel_reg[8]_i_2_n_1\,
      CO(1) => \Pixel_reg[8]_i_2_n_2\,
      CO(0) => \Pixel_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \Pixel_reg_n_0_[8]\,
      DI(2) => \Pixel_reg_n_0_[7]\,
      DI(1) => \Pixel_reg_n_0_[6]\,
      DI(0) => \Pixel_reg_n_0_[5]\,
      O(3 downto 0) => in4(8 downto 5),
      S(3) => \Pixel[8]_i_3_n_0\,
      S(2) => \Pixel[8]_i_4_n_0\,
      S(1) => \Pixel[8]_i_5_n_0\,
      S(0) => \Pixel[8]_i_6_n_0\
    );
\Pixel_reg[9]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Pixel[63]_i_1_n_0\,
      D => \Pixel__0\(9),
      PRE => reset,
      Q => \Pixel_reg_n_0_[9]\
    );
\ReadAddr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => drawStage,
      I1 => ReadAddr,
      I2 => reset,
      O => ReadAddr0
    );
\ReadAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[0]\,
      Q => \ReadAddr__0\(0),
      R => '0'
    );
\ReadAddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[10]\,
      Q => \ReadAddr__0\(10),
      R => '0'
    );
\ReadAddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[11]\,
      Q => \ReadAddr__0\(11),
      R => '0'
    );
\ReadAddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[12]\,
      Q => \ReadAddr__0\(12),
      R => '0'
    );
\ReadAddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[13]\,
      Q => \ReadAddr__0\(13),
      R => '0'
    );
\ReadAddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[14]\,
      Q => \ReadAddr__0\(14),
      R => '0'
    );
\ReadAddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[15]\,
      Q => \ReadAddr__0\(15),
      R => '0'
    );
\ReadAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[1]\,
      Q => \ReadAddr__0\(1),
      R => '0'
    );
\ReadAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[2]\,
      Q => \ReadAddr__0\(2),
      R => '0'
    );
\ReadAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[3]\,
      Q => \ReadAddr__0\(3),
      R => '0'
    );
\ReadAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[4]\,
      Q => \ReadAddr__0\(4),
      R => '0'
    );
\ReadAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[5]\,
      Q => \ReadAddr__0\(5),
      R => '0'
    );
\ReadAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[6]\,
      Q => \ReadAddr__0\(6),
      R => '0'
    );
\ReadAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[7]\,
      Q => \ReadAddr__0\(7),
      R => '0'
    );
\ReadAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[8]\,
      Q => \ReadAddr__0\(8),
      R => '0'
    );
\ReadAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadAddr0,
      D => \Pixel_reg_n_0_[9]\,
      Q => \ReadAddr__0\(9),
      R => '0'
    );
\ReadData[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fb_en_i_2_n_0,
      I1 => reset,
      O => ReadData0
    );
\ReadData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(0),
      Q => \ReadData_reg_n_0_[0]\,
      R => '0'
    );
\ReadData_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(9),
      Q => \ReadData_reg_n_0_[10]\,
      R => '0'
    );
\ReadData_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(10),
      Q => \ReadData_reg_n_0_[11]\,
      R => '0'
    );
\ReadData_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(11),
      Q => \ReadData_reg_n_0_[12]\,
      R => '0'
    );
\ReadData_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(12),
      Q => \ReadData_reg_n_0_[13]\,
      R => '0'
    );
\ReadData_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(13),
      Q => \ReadData_reg_n_0_[14]\,
      R => '0'
    );
\ReadData_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(14),
      Q => \ReadData_reg_n_0_[15]\,
      R => '0'
    );
\ReadData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(1),
      Q => \ReadData_reg_n_0_[1]\,
      R => '0'
    );
\ReadData_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(2),
      Q => \ReadData_reg_n_0_[2]\,
      R => '0'
    );
\ReadData_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(3),
      Q => \ReadData_reg_n_0_[3]\,
      R => '0'
    );
\ReadData_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(4),
      Q => \ReadData_reg_n_0_[4]\,
      R => '0'
    );
\ReadData_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(5),
      Q => \ReadData_reg_n_0_[5]\,
      R => '0'
    );
\ReadData_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(6),
      Q => \ReadData_reg_n_0_[6]\,
      R => '0'
    );
\ReadData_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(7),
      Q => \ReadData_reg_n_0_[8]\,
      R => '0'
    );
\ReadData_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ReadData0,
      D => fb_din(8),
      Q => \ReadData_reg_n_0_[9]\,
      R => '0'
    );
\backState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \backState[1]_i_2_n_0\,
      I1 => \backState[2]_i_2_n_0\,
      I2 => \backState[2]_i_3_n_0\,
      I3 => \backState[2]_i_4_n_0\,
      I4 => scl_i_3_n_0,
      I5 => \backState_reg_n_0_[1]\,
      O => \backState[1]_i_1_n_0\
    );
\backState[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \addrStage__0\(0),
      I3 => \addrStage__0\(2),
      I4 => \addrStage__0\(1),
      O => \backState[1]_i_2_n_0\
    );
\backState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \backState[2]_i_2_n_0\,
      I2 => \backState[2]_i_3_n_0\,
      I3 => \backState[2]_i_4_n_0\,
      I4 => scl_i_3_n_0,
      I5 => \backState_reg_n_0_[2]\,
      O => \backState[2]_i_1_n_0\
    );
\backState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFE0EFE0E0E0"
    )
        port map (
      I0 => \backState[2]_i_5_n_0\,
      I1 => \backState[2]_i_6_n_0\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => DataShort,
      I5 => ReadAddr,
      O => \backState[2]_i_2_n_0\
    );
\backState[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[29]\,
      I1 => \cycle_count_reg_n_0_[28]\,
      O => \backState[2]_i_3_n_0\
    );
\backState[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[63]\,
      I1 => \state_reg_n_0_[0]\,
      O => \backState[2]_i_4_n_0\
    );
\backState[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \addrStage__0\(2),
      I2 => \addrStage__0\(1),
      I3 => \addrStage__0\(0),
      O => \backState[2]_i_5_n_0\
    );
\backState[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005775"
    )
        port map (
      I0 => \backState[2]_i_7_n_0\,
      I1 => \initStage__0\(0),
      I2 => \initStage__0\(2),
      I3 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I4 => \backState[2]_i_8_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => \backState[2]_i_6_n_0\
    );
\backState[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0F00001"
    )
        port map (
      I0 => \initStage__0\(4),
      I1 => \initStage__0\(5),
      I2 => \initStage__0\(6),
      I3 => \initStage__0\(0),
      I4 => \initStage__0\(2),
      I5 => \initStage__0\(3),
      O => \backState[2]_i_7_n_0\
    );
\backState[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \initStage__0\(3),
      I1 => \initStage__0\(4),
      I2 => \initStage__0\(5),
      I3 => \initStage__0\(6),
      O => \backState[2]_i_8_n_0\
    );
\backState_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \backState[1]_i_1_n_0\,
      PRE => reset,
      Q => \backState_reg_n_0_[1]\
    );
\backState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \backState[2]_i_1_n_0\,
      Q => \backState_reg_n_0_[2]\
    );
blk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => blk_i_2_n_0,
      I1 => blk_i_3_n_0,
      I2 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I3 => \initStage__0\(0),
      I4 => initStage,
      I5 => \^blk\,
      O => blk_i_1_n_0
    );
blk_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \initStage__0\(5),
      I1 => \initStage__0\(4),
      I2 => \initStage__0\(3),
      O => blk_i_2_n_0
    );
blk_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(6),
      O => blk_i_3_n_0
    );
blk_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => blk_i_1_n_0,
      Q => \^blk\
    );
cd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF000000E0"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => cd_i_2_n_0,
      I3 => cd_i_3_n_0,
      I4 => cd_i_4_n_0,
      I5 => \^cd\,
      O => cd_i_1_n_0
    );
cd_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[1]\,
      I1 => \cycle_count_reg_n_0_[2]\,
      I2 => \cycle_count_reg_n_0_[19]\,
      I3 => \cycle_count_reg_n_0_[20]\,
      O => cd_i_10_n_0
    );
cd_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[62]\,
      I1 => \cycle_count_reg_n_0_[61]\,
      I2 => \cycle_count_reg_n_0_[11]\,
      I3 => \cycle_count_reg_n_0_[10]\,
      I4 => scl_i_11_n_0,
      O => cd_i_11_n_0
    );
cd_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[43]\,
      I1 => \cycle_count_reg_n_0_[44]\,
      I2 => \cycle_count_reg_n_0_[31]\,
      I3 => \cycle_count_reg_n_0_[32]\,
      O => cd_i_12_n_0
    );
cd_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[38]\,
      I1 => \cycle_count_reg_n_0_[37]\,
      O => cd_i_13_n_0
    );
cd_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[17]\,
      I1 => \cycle_count_reg_n_0_[41]\,
      I2 => \cycle_count_reg_n_0_[40]\,
      I3 => \cycle_count_reg_n_0_[16]\,
      O => cd_i_14_n_0
    );
cd_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[46]\,
      I1 => \cycle_count_reg_n_0_[47]\,
      I2 => \cycle_count_reg_n_0_[22]\,
      I3 => \cycle_count_reg_n_0_[23]\,
      O => cd_i_15_n_0
    );
cd_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_6_n_0\,
      I1 => \FSM_onehot_drawStage[5]_i_3_n_0\,
      I2 => cd_i_5_n_0,
      O => cd_i_2_n_0
    );
cd_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cd_i_6_n_0,
      I1 => cd_i_7_n_0,
      I2 => cd_i_8_n_0,
      I3 => cd_i_9_n_0,
      I4 => cd_i_10_n_0,
      I5 => cd_i_11_n_0,
      O => cd_i_3_n_0
    );
cd_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[7]\,
      I1 => \cycle_count_reg_n_0_[8]\,
      I2 => cd_i_12_n_0,
      I3 => cd_i_13_n_0,
      I4 => cd_i_14_n_0,
      I5 => cd_i_15_n_0,
      O => cd_i_4_n_0
    );
cd_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF44F4"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[55]\,
      I1 => \cycle_count_reg_n_0_[54]\,
      I2 => \cycle_count_reg_n_0_[24]\,
      I3 => \cycle_count_reg_n_0_[25]\,
      I4 => \cycle_count_reg_n_0_[56]\,
      I5 => \cycle_count_reg_n_0_[26]\,
      O => cd_i_5_n_0
    );
cd_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \FSM_onehot_drawStage[5]_i_2_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \writeStage[63]_i_9_n_0\,
      I4 => scl_i_2_n_0,
      I5 => \writeStage[63]_i_10_n_0\,
      O => cd_i_6_n_0
    );
cd_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => \cycle_count_reg_n_0_[25]\,
      I3 => \cycle_count_reg_n_0_[26]\,
      O => cd_i_7_n_0
    );
cd_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[49]\,
      I1 => \cycle_count_reg_n_0_[50]\,
      I2 => \cycle_count_reg_n_0_[52]\,
      I3 => \cycle_count_reg_n_0_[53]\,
      O => cd_i_8_n_0
    );
cd_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[34]\,
      I1 => \cycle_count_reg_n_0_[35]\,
      I2 => \cycle_count_reg_n_0_[58]\,
      I3 => \cycle_count_reg_n_0_[59]\,
      O => cd_i_9_n_0
    );
cd_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => cd_i_1_n_0,
      Q => \^cd\
    );
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
\cycle_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[0]\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[0]_i_1_n_0\
    );
\cycle_count[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[12]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[10]_i_1_n_0\
    );
\cycle_count[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[12]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[11]_i_1_n_0\
    );
\cycle_count[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[12]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[12]_i_1_n_0\
    );
\cycle_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[12]\,
      O => \cycle_count[12]_i_3_n_0\
    );
\cycle_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[11]\,
      O => \cycle_count[12]_i_4_n_0\
    );
\cycle_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[10]\,
      O => \cycle_count[12]_i_5_n_0\
    );
\cycle_count[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[9]\,
      O => \cycle_count[12]_i_6_n_0\
    );
\cycle_count[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[16]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[13]_i_1_n_0\
    );
\cycle_count[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[16]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[14]_i_1_n_0\
    );
\cycle_count[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[16]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[15]_i_1_n_0\
    );
\cycle_count[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[16]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[16]_i_1_n_0\
    );
\cycle_count[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[16]\,
      O => \cycle_count[16]_i_3_n_0\
    );
\cycle_count[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[15]\,
      O => \cycle_count[16]_i_4_n_0\
    );
\cycle_count[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[14]\,
      O => \cycle_count[16]_i_5_n_0\
    );
\cycle_count[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[13]\,
      O => \cycle_count[16]_i_6_n_0\
    );
\cycle_count[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[20]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[17]_i_1_n_0\
    );
\cycle_count[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[20]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[18]_i_1_n_0\
    );
\cycle_count[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[20]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[19]_i_1_n_0\
    );
\cycle_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg[4]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[1]_i_1_n_0\
    );
\cycle_count[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[20]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[20]_i_1_n_0\
    );
\cycle_count[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[20]\,
      O => \cycle_count[20]_i_3_n_0\
    );
\cycle_count[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[19]\,
      O => \cycle_count[20]_i_4_n_0\
    );
\cycle_count[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[18]\,
      O => \cycle_count[20]_i_5_n_0\
    );
\cycle_count[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[17]\,
      O => \cycle_count[20]_i_6_n_0\
    );
\cycle_count[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[24]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[21]_i_1_n_0\
    );
\cycle_count[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[24]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[22]_i_1_n_0\
    );
\cycle_count[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[24]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[23]_i_1_n_0\
    );
\cycle_count[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[24]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[24]_i_1_n_0\
    );
\cycle_count[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[24]\,
      O => \cycle_count[24]_i_3_n_0\
    );
\cycle_count[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[23]\,
      O => \cycle_count[24]_i_4_n_0\
    );
\cycle_count[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[22]\,
      O => \cycle_count[24]_i_5_n_0\
    );
\cycle_count[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[21]\,
      O => \cycle_count[24]_i_6_n_0\
    );
\cycle_count[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[28]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[25]_i_1_n_0\
    );
\cycle_count[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[28]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[26]_i_1_n_0\
    );
\cycle_count[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[28]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[27]_i_1_n_0\
    );
\cycle_count[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[28]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[28]_i_1_n_0\
    );
\cycle_count[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[28]\,
      O => \cycle_count[28]_i_3_n_0\
    );
\cycle_count[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[27]\,
      O => \cycle_count[28]_i_4_n_0\
    );
\cycle_count[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[26]\,
      O => \cycle_count[28]_i_5_n_0\
    );
\cycle_count[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[25]\,
      O => \cycle_count[28]_i_6_n_0\
    );
\cycle_count[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[32]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[29]_i_1_n_0\
    );
\cycle_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[4]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[2]_i_1_n_0\
    );
\cycle_count[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[32]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[30]_i_1_n_0\
    );
\cycle_count[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[32]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[31]_i_1_n_0\
    );
\cycle_count[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[32]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[32]_i_1_n_0\
    );
\cycle_count[32]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[32]\,
      O => \cycle_count[32]_i_3_n_0\
    );
\cycle_count[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[31]\,
      O => \cycle_count[32]_i_4_n_0\
    );
\cycle_count[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[30]\,
      O => \cycle_count[32]_i_5_n_0\
    );
\cycle_count[32]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[29]\,
      O => \cycle_count[32]_i_6_n_0\
    );
\cycle_count[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[36]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[33]_i_1_n_0\
    );
\cycle_count[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[36]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[34]_i_1_n_0\
    );
\cycle_count[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[36]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[35]_i_1_n_0\
    );
\cycle_count[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[36]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[36]_i_1_n_0\
    );
\cycle_count[36]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[36]\,
      O => \cycle_count[36]_i_3_n_0\
    );
\cycle_count[36]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[35]\,
      O => \cycle_count[36]_i_4_n_0\
    );
\cycle_count[36]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[34]\,
      O => \cycle_count[36]_i_5_n_0\
    );
\cycle_count[36]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[33]\,
      O => \cycle_count[36]_i_6_n_0\
    );
\cycle_count[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[40]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[37]_i_1_n_0\
    );
\cycle_count[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[40]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[38]_i_1_n_0\
    );
\cycle_count[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[40]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[39]_i_1_n_0\
    );
\cycle_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[4]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[3]_i_1_n_0\
    );
\cycle_count[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[40]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[40]_i_1_n_0\
    );
\cycle_count[40]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[40]\,
      O => \cycle_count[40]_i_3_n_0\
    );
\cycle_count[40]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[39]\,
      O => \cycle_count[40]_i_4_n_0\
    );
\cycle_count[40]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[38]\,
      O => \cycle_count[40]_i_5_n_0\
    );
\cycle_count[40]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[37]\,
      O => \cycle_count[40]_i_6_n_0\
    );
\cycle_count[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[44]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[41]_i_1_n_0\
    );
\cycle_count[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[44]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[42]_i_1_n_0\
    );
\cycle_count[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[44]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[43]_i_1_n_0\
    );
\cycle_count[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[44]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[44]_i_1_n_0\
    );
\cycle_count[44]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[44]\,
      O => \cycle_count[44]_i_3_n_0\
    );
\cycle_count[44]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[43]\,
      O => \cycle_count[44]_i_4_n_0\
    );
\cycle_count[44]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[42]\,
      O => \cycle_count[44]_i_5_n_0\
    );
\cycle_count[44]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[41]\,
      O => \cycle_count[44]_i_6_n_0\
    );
\cycle_count[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[48]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[45]_i_1_n_0\
    );
\cycle_count[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[48]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[46]_i_1_n_0\
    );
\cycle_count[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[48]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[47]_i_1_n_0\
    );
\cycle_count[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[48]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[48]_i_1_n_0\
    );
\cycle_count[48]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[48]\,
      O => \cycle_count[48]_i_3_n_0\
    );
\cycle_count[48]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[47]\,
      O => \cycle_count[48]_i_4_n_0\
    );
\cycle_count[48]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[46]\,
      O => \cycle_count[48]_i_5_n_0\
    );
\cycle_count[48]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[45]\,
      O => \cycle_count[48]_i_6_n_0\
    );
\cycle_count[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[52]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[49]_i_1_n_0\
    );
\cycle_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[4]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[4]_i_1_n_0\
    );
\cycle_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      O => \cycle_count[4]_i_3_n_0\
    );
\cycle_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[3]\,
      O => \cycle_count[4]_i_4_n_0\
    );
\cycle_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[2]\,
      O => \cycle_count[4]_i_5_n_0\
    );
\cycle_count[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[1]\,
      O => \cycle_count[4]_i_6_n_0\
    );
\cycle_count[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[52]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[50]_i_1_n_0\
    );
\cycle_count[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[52]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[51]_i_1_n_0\
    );
\cycle_count[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[52]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[52]_i_1_n_0\
    );
\cycle_count[52]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[52]\,
      O => \cycle_count[52]_i_3_n_0\
    );
\cycle_count[52]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[51]\,
      O => \cycle_count[52]_i_4_n_0\
    );
\cycle_count[52]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[50]\,
      O => \cycle_count[52]_i_5_n_0\
    );
\cycle_count[52]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[49]\,
      O => \cycle_count[52]_i_6_n_0\
    );
\cycle_count[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[56]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[53]_i_1_n_0\
    );
\cycle_count[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[56]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[54]_i_1_n_0\
    );
\cycle_count[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[56]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[55]_i_1_n_0\
    );
\cycle_count[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[56]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[56]_i_1_n_0\
    );
\cycle_count[56]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[56]\,
      O => \cycle_count[56]_i_3_n_0\
    );
\cycle_count[56]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[55]\,
      O => \cycle_count[56]_i_4_n_0\
    );
\cycle_count[56]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[54]\,
      O => \cycle_count[56]_i_5_n_0\
    );
\cycle_count[56]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[53]\,
      O => \cycle_count[56]_i_6_n_0\
    );
\cycle_count[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[60]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[57]_i_1_n_0\
    );
\cycle_count[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[60]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[58]_i_1_n_0\
    );
\cycle_count[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[60]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[59]_i_1_n_0\
    );
\cycle_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[8]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[5]_i_1_n_0\
    );
\cycle_count[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[60]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[60]_i_1_n_0\
    );
\cycle_count[60]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[60]\,
      O => \cycle_count[60]_i_3_n_0\
    );
\cycle_count[60]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[59]\,
      O => \cycle_count[60]_i_4_n_0\
    );
\cycle_count[60]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[58]\,
      O => \cycle_count[60]_i_5_n_0\
    );
\cycle_count[60]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[57]\,
      O => \cycle_count[60]_i_6_n_0\
    );
\cycle_count[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[63]_i_9_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[61]_i_1_n_0\
    );
\cycle_count[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[63]_i_9_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[62]_i_1_n_0\
    );
\cycle_count[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \cycle_count[63]_i_3_n_0\,
      I1 => \cycle_count[63]_i_4_n_0\,
      I2 => \cycle_count[63]_i_5_n_0\,
      I3 => \cycle_count[63]_i_6_n_0\,
      I4 => \cycle_count[63]_i_7_n_0\,
      I5 => \cycle_count[63]_i_8_n_0\,
      O => \cycle_count__0\
    );
\cycle_count[63]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEE"
    )
        port map (
      I0 => DelayStarted_i_9_n_0,
      I1 => \cycle_count_reg_n_0_[44]\,
      I2 => \cycle_count_reg_n_0_[43]\,
      I3 => \cycle_count_reg_n_0_[42]\,
      I4 => \fb_addr[15]_i_17_n_0\,
      O => \cycle_count[63]_i_10_n_0\
    );
\cycle_count[63]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cd_i_10_n_0,
      I1 => \cycle_count_reg_n_0_[8]\,
      I2 => \cycle_count_reg_n_0_[7]\,
      I3 => \cycle_count_reg_n_0_[5]\,
      I4 => \cycle_count_reg_n_0_[4]\,
      O => \cycle_count[63]_i_11_n_0\
    );
\cycle_count[63]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[32]\,
      I1 => \cycle_count_reg_n_0_[31]\,
      I2 => \cycle_count_reg_n_0_[44]\,
      I3 => \cycle_count_reg_n_0_[43]\,
      I4 => cd_i_8_n_0,
      O => \cycle_count[63]_i_12_n_0\
    );
\cycle_count[63]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cd_i_15_n_0,
      I1 => \cycle_count_reg_n_0_[56]\,
      I2 => \cycle_count_reg_n_0_[55]\,
      I3 => \cycle_count_reg_n_0_[26]\,
      I4 => \cycle_count_reg_n_0_[25]\,
      O => \cycle_count[63]_i_13_n_0\
    );
\cycle_count[63]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[63]\,
      O => \cycle_count[63]_i_14_n_0\
    );
\cycle_count[63]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[62]\,
      O => \cycle_count[63]_i_15_n_0\
    );
\cycle_count[63]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[61]\,
      O => \cycle_count[63]_i_16_n_0\
    );
\cycle_count[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[63]_i_9_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[63]_i_2_n_0\
    );
\cycle_count[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \cycle_count[63]_i_10_n_0\,
      I1 => \cycle_count[63]_i_11_n_0\,
      I2 => \FSM_sequential_initStage[6]_i_5_n_0\,
      I3 => \FSM_sequential_initStage[6]_i_4_n_0\,
      I4 => scl_i_6_n_0,
      I5 => \fb_addr[15]_i_18_n_0\,
      O => \cycle_count[63]_i_3_n_0\
    );
\cycle_count[63]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[28]\,
      I1 => \cycle_count_reg_n_0_[29]\,
      I2 => \cycle_count_reg_n_0_[58]\,
      I3 => \cycle_count_reg_n_0_[59]\,
      O => \cycle_count[63]_i_4_n_0\
    );
\cycle_count[63]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[35]\,
      I1 => \cycle_count_reg_n_0_[34]\,
      O => \cycle_count[63]_i_5_n_0\
    );
\cycle_count[63]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[11]\,
      I1 => \cycle_count_reg_n_0_[10]\,
      O => \cycle_count[63]_i_6_n_0\
    );
\cycle_count[63]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => cycle_count,
      O => \cycle_count[63]_i_7_n_0\
    );
\cycle_count[63]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => cd_i_13_n_0,
      I1 => \cycle_count_reg_n_0_[13]\,
      I2 => \cycle_count_reg_n_0_[14]\,
      I3 => cd_i_14_n_0,
      I4 => \cycle_count[63]_i_12_n_0\,
      I5 => \cycle_count[63]_i_13_n_0\,
      O => \cycle_count[63]_i_8_n_0\
    );
\cycle_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[8]_i_2_n_6\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[6]_i_1_n_0\
    );
\cycle_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[8]_i_2_n_5\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[7]_i_1_n_0\
    );
\cycle_count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[8]_i_2_n_4\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[8]_i_1_n_0\
    );
\cycle_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[8]\,
      O => \cycle_count[8]_i_3_n_0\
    );
\cycle_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[7]\,
      O => \cycle_count[8]_i_4_n_0\
    );
\cycle_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[6]\,
      O => \cycle_count[8]_i_5_n_0\
    );
\cycle_count[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[5]\,
      O => \cycle_count[8]_i_6_n_0\
    );
\cycle_count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cycle_count_reg[12]_i_2_n_7\,
      I1 => \writeStage[63]_i_2_n_0\,
      O => \cycle_count[9]_i_1_n_0\
    );
\cycle_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[0]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[0]\
    );
\cycle_count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[10]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[10]\
    );
\cycle_count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[11]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[11]\
    );
\cycle_count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[12]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[12]\
    );
\cycle_count_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[8]_i_2_n_0\,
      CO(3) => \cycle_count_reg[12]_i_2_n_0\,
      CO(2) => \cycle_count_reg[12]_i_2_n_1\,
      CO(1) => \cycle_count_reg[12]_i_2_n_2\,
      CO(0) => \cycle_count_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[12]\,
      DI(2) => \cycle_count_reg_n_0_[11]\,
      DI(1) => \cycle_count_reg_n_0_[10]\,
      DI(0) => \cycle_count_reg_n_0_[9]\,
      O(3) => \cycle_count_reg[12]_i_2_n_4\,
      O(2) => \cycle_count_reg[12]_i_2_n_5\,
      O(1) => \cycle_count_reg[12]_i_2_n_6\,
      O(0) => \cycle_count_reg[12]_i_2_n_7\,
      S(3) => \cycle_count[12]_i_3_n_0\,
      S(2) => \cycle_count[12]_i_4_n_0\,
      S(1) => \cycle_count[12]_i_5_n_0\,
      S(0) => \cycle_count[12]_i_6_n_0\
    );
\cycle_count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[13]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[13]\
    );
\cycle_count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[14]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[14]\
    );
\cycle_count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[15]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[15]\
    );
\cycle_count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[16]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[16]\
    );
\cycle_count_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[12]_i_2_n_0\,
      CO(3) => \cycle_count_reg[16]_i_2_n_0\,
      CO(2) => \cycle_count_reg[16]_i_2_n_1\,
      CO(1) => \cycle_count_reg[16]_i_2_n_2\,
      CO(0) => \cycle_count_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[16]\,
      DI(2) => \cycle_count_reg_n_0_[15]\,
      DI(1) => \cycle_count_reg_n_0_[14]\,
      DI(0) => \cycle_count_reg_n_0_[13]\,
      O(3) => \cycle_count_reg[16]_i_2_n_4\,
      O(2) => \cycle_count_reg[16]_i_2_n_5\,
      O(1) => \cycle_count_reg[16]_i_2_n_6\,
      O(0) => \cycle_count_reg[16]_i_2_n_7\,
      S(3) => \cycle_count[16]_i_3_n_0\,
      S(2) => \cycle_count[16]_i_4_n_0\,
      S(1) => \cycle_count[16]_i_5_n_0\,
      S(0) => \cycle_count[16]_i_6_n_0\
    );
\cycle_count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[17]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[17]\
    );
\cycle_count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[18]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[18]\
    );
\cycle_count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[19]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[19]\
    );
\cycle_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[1]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[1]\
    );
\cycle_count_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[20]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[20]\
    );
\cycle_count_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[16]_i_2_n_0\,
      CO(3) => \cycle_count_reg[20]_i_2_n_0\,
      CO(2) => \cycle_count_reg[20]_i_2_n_1\,
      CO(1) => \cycle_count_reg[20]_i_2_n_2\,
      CO(0) => \cycle_count_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[20]\,
      DI(2) => \cycle_count_reg_n_0_[19]\,
      DI(1) => \cycle_count_reg_n_0_[18]\,
      DI(0) => \cycle_count_reg_n_0_[17]\,
      O(3) => \cycle_count_reg[20]_i_2_n_4\,
      O(2) => \cycle_count_reg[20]_i_2_n_5\,
      O(1) => \cycle_count_reg[20]_i_2_n_6\,
      O(0) => \cycle_count_reg[20]_i_2_n_7\,
      S(3) => \cycle_count[20]_i_3_n_0\,
      S(2) => \cycle_count[20]_i_4_n_0\,
      S(1) => \cycle_count[20]_i_5_n_0\,
      S(0) => \cycle_count[20]_i_6_n_0\
    );
\cycle_count_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[21]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[21]\
    );
\cycle_count_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[22]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[22]\
    );
\cycle_count_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[23]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[23]\
    );
\cycle_count_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[24]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[24]\
    );
\cycle_count_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[20]_i_2_n_0\,
      CO(3) => \cycle_count_reg[24]_i_2_n_0\,
      CO(2) => \cycle_count_reg[24]_i_2_n_1\,
      CO(1) => \cycle_count_reg[24]_i_2_n_2\,
      CO(0) => \cycle_count_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[24]\,
      DI(2) => \cycle_count_reg_n_0_[23]\,
      DI(1) => \cycle_count_reg_n_0_[22]\,
      DI(0) => \cycle_count_reg_n_0_[21]\,
      O(3) => \cycle_count_reg[24]_i_2_n_4\,
      O(2) => \cycle_count_reg[24]_i_2_n_5\,
      O(1) => \cycle_count_reg[24]_i_2_n_6\,
      O(0) => \cycle_count_reg[24]_i_2_n_7\,
      S(3) => \cycle_count[24]_i_3_n_0\,
      S(2) => \cycle_count[24]_i_4_n_0\,
      S(1) => \cycle_count[24]_i_5_n_0\,
      S(0) => \cycle_count[24]_i_6_n_0\
    );
\cycle_count_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[25]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[25]\
    );
\cycle_count_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[26]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[26]\
    );
\cycle_count_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[27]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[27]\
    );
\cycle_count_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[28]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[28]\
    );
\cycle_count_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[24]_i_2_n_0\,
      CO(3) => \cycle_count_reg[28]_i_2_n_0\,
      CO(2) => \cycle_count_reg[28]_i_2_n_1\,
      CO(1) => \cycle_count_reg[28]_i_2_n_2\,
      CO(0) => \cycle_count_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[28]\,
      DI(2) => \cycle_count_reg_n_0_[27]\,
      DI(1) => \cycle_count_reg_n_0_[26]\,
      DI(0) => \cycle_count_reg_n_0_[25]\,
      O(3) => \cycle_count_reg[28]_i_2_n_4\,
      O(2) => \cycle_count_reg[28]_i_2_n_5\,
      O(1) => \cycle_count_reg[28]_i_2_n_6\,
      O(0) => \cycle_count_reg[28]_i_2_n_7\,
      S(3) => \cycle_count[28]_i_3_n_0\,
      S(2) => \cycle_count[28]_i_4_n_0\,
      S(1) => \cycle_count[28]_i_5_n_0\,
      S(0) => \cycle_count[28]_i_6_n_0\
    );
\cycle_count_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[29]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[29]\
    );
\cycle_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[2]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[2]\
    );
\cycle_count_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[30]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[30]\
    );
\cycle_count_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[31]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[31]\
    );
\cycle_count_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[32]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[32]\
    );
\cycle_count_reg[32]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[28]_i_2_n_0\,
      CO(3) => \cycle_count_reg[32]_i_2_n_0\,
      CO(2) => \cycle_count_reg[32]_i_2_n_1\,
      CO(1) => \cycle_count_reg[32]_i_2_n_2\,
      CO(0) => \cycle_count_reg[32]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[32]\,
      DI(2) => \cycle_count_reg_n_0_[31]\,
      DI(1) => \cycle_count_reg_n_0_[30]\,
      DI(0) => \cycle_count_reg_n_0_[29]\,
      O(3) => \cycle_count_reg[32]_i_2_n_4\,
      O(2) => \cycle_count_reg[32]_i_2_n_5\,
      O(1) => \cycle_count_reg[32]_i_2_n_6\,
      O(0) => \cycle_count_reg[32]_i_2_n_7\,
      S(3) => \cycle_count[32]_i_3_n_0\,
      S(2) => \cycle_count[32]_i_4_n_0\,
      S(1) => \cycle_count[32]_i_5_n_0\,
      S(0) => \cycle_count[32]_i_6_n_0\
    );
\cycle_count_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[33]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[33]\
    );
\cycle_count_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[34]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[34]\
    );
\cycle_count_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[35]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[35]\
    );
\cycle_count_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[36]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[36]\
    );
\cycle_count_reg[36]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[32]_i_2_n_0\,
      CO(3) => \cycle_count_reg[36]_i_2_n_0\,
      CO(2) => \cycle_count_reg[36]_i_2_n_1\,
      CO(1) => \cycle_count_reg[36]_i_2_n_2\,
      CO(0) => \cycle_count_reg[36]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[36]\,
      DI(2) => \cycle_count_reg_n_0_[35]\,
      DI(1) => \cycle_count_reg_n_0_[34]\,
      DI(0) => \cycle_count_reg_n_0_[33]\,
      O(3) => \cycle_count_reg[36]_i_2_n_4\,
      O(2) => \cycle_count_reg[36]_i_2_n_5\,
      O(1) => \cycle_count_reg[36]_i_2_n_6\,
      O(0) => \cycle_count_reg[36]_i_2_n_7\,
      S(3) => \cycle_count[36]_i_3_n_0\,
      S(2) => \cycle_count[36]_i_4_n_0\,
      S(1) => \cycle_count[36]_i_5_n_0\,
      S(0) => \cycle_count[36]_i_6_n_0\
    );
\cycle_count_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[37]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[37]\
    );
\cycle_count_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[38]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[38]\
    );
\cycle_count_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[39]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[39]\
    );
\cycle_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[3]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[3]\
    );
\cycle_count_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[40]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[40]\
    );
\cycle_count_reg[40]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[36]_i_2_n_0\,
      CO(3) => \cycle_count_reg[40]_i_2_n_0\,
      CO(2) => \cycle_count_reg[40]_i_2_n_1\,
      CO(1) => \cycle_count_reg[40]_i_2_n_2\,
      CO(0) => \cycle_count_reg[40]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[40]\,
      DI(2) => \cycle_count_reg_n_0_[39]\,
      DI(1) => \cycle_count_reg_n_0_[38]\,
      DI(0) => \cycle_count_reg_n_0_[37]\,
      O(3) => \cycle_count_reg[40]_i_2_n_4\,
      O(2) => \cycle_count_reg[40]_i_2_n_5\,
      O(1) => \cycle_count_reg[40]_i_2_n_6\,
      O(0) => \cycle_count_reg[40]_i_2_n_7\,
      S(3) => \cycle_count[40]_i_3_n_0\,
      S(2) => \cycle_count[40]_i_4_n_0\,
      S(1) => \cycle_count[40]_i_5_n_0\,
      S(0) => \cycle_count[40]_i_6_n_0\
    );
\cycle_count_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[41]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[41]\
    );
\cycle_count_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[42]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[42]\
    );
\cycle_count_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[43]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[43]\
    );
\cycle_count_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[44]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[44]\
    );
\cycle_count_reg[44]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[40]_i_2_n_0\,
      CO(3) => \cycle_count_reg[44]_i_2_n_0\,
      CO(2) => \cycle_count_reg[44]_i_2_n_1\,
      CO(1) => \cycle_count_reg[44]_i_2_n_2\,
      CO(0) => \cycle_count_reg[44]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[44]\,
      DI(2) => \cycle_count_reg_n_0_[43]\,
      DI(1) => \cycle_count_reg_n_0_[42]\,
      DI(0) => \cycle_count_reg_n_0_[41]\,
      O(3) => \cycle_count_reg[44]_i_2_n_4\,
      O(2) => \cycle_count_reg[44]_i_2_n_5\,
      O(1) => \cycle_count_reg[44]_i_2_n_6\,
      O(0) => \cycle_count_reg[44]_i_2_n_7\,
      S(3) => \cycle_count[44]_i_3_n_0\,
      S(2) => \cycle_count[44]_i_4_n_0\,
      S(1) => \cycle_count[44]_i_5_n_0\,
      S(0) => \cycle_count[44]_i_6_n_0\
    );
\cycle_count_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[45]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[45]\
    );
\cycle_count_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[46]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[46]\
    );
\cycle_count_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[47]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[47]\
    );
\cycle_count_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[48]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[48]\
    );
\cycle_count_reg[48]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[44]_i_2_n_0\,
      CO(3) => \cycle_count_reg[48]_i_2_n_0\,
      CO(2) => \cycle_count_reg[48]_i_2_n_1\,
      CO(1) => \cycle_count_reg[48]_i_2_n_2\,
      CO(0) => \cycle_count_reg[48]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[48]\,
      DI(2) => \cycle_count_reg_n_0_[47]\,
      DI(1) => \cycle_count_reg_n_0_[46]\,
      DI(0) => \cycle_count_reg_n_0_[45]\,
      O(3) => \cycle_count_reg[48]_i_2_n_4\,
      O(2) => \cycle_count_reg[48]_i_2_n_5\,
      O(1) => \cycle_count_reg[48]_i_2_n_6\,
      O(0) => \cycle_count_reg[48]_i_2_n_7\,
      S(3) => \cycle_count[48]_i_3_n_0\,
      S(2) => \cycle_count[48]_i_4_n_0\,
      S(1) => \cycle_count[48]_i_5_n_0\,
      S(0) => \cycle_count[48]_i_6_n_0\
    );
\cycle_count_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[49]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[49]\
    );
\cycle_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[4]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[4]\
    );
\cycle_count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cycle_count_reg[4]_i_2_n_0\,
      CO(2) => \cycle_count_reg[4]_i_2_n_1\,
      CO(1) => \cycle_count_reg[4]_i_2_n_2\,
      CO(0) => \cycle_count_reg[4]_i_2_n_3\,
      CYINIT => \cycle_count_reg_n_0_[0]\,
      DI(3) => \cycle_count_reg_n_0_[4]\,
      DI(2) => \cycle_count_reg_n_0_[3]\,
      DI(1) => \cycle_count_reg_n_0_[2]\,
      DI(0) => \cycle_count_reg_n_0_[1]\,
      O(3) => \cycle_count_reg[4]_i_2_n_4\,
      O(2) => \cycle_count_reg[4]_i_2_n_5\,
      O(1) => \cycle_count_reg[4]_i_2_n_6\,
      O(0) => \cycle_count_reg[4]_i_2_n_7\,
      S(3) => \cycle_count[4]_i_3_n_0\,
      S(2) => \cycle_count[4]_i_4_n_0\,
      S(1) => \cycle_count[4]_i_5_n_0\,
      S(0) => \cycle_count[4]_i_6_n_0\
    );
\cycle_count_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[50]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[50]\
    );
\cycle_count_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[51]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[51]\
    );
\cycle_count_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[52]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[52]\
    );
\cycle_count_reg[52]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[48]_i_2_n_0\,
      CO(3) => \cycle_count_reg[52]_i_2_n_0\,
      CO(2) => \cycle_count_reg[52]_i_2_n_1\,
      CO(1) => \cycle_count_reg[52]_i_2_n_2\,
      CO(0) => \cycle_count_reg[52]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[52]\,
      DI(2) => \cycle_count_reg_n_0_[51]\,
      DI(1) => \cycle_count_reg_n_0_[50]\,
      DI(0) => \cycle_count_reg_n_0_[49]\,
      O(3) => \cycle_count_reg[52]_i_2_n_4\,
      O(2) => \cycle_count_reg[52]_i_2_n_5\,
      O(1) => \cycle_count_reg[52]_i_2_n_6\,
      O(0) => \cycle_count_reg[52]_i_2_n_7\,
      S(3) => \cycle_count[52]_i_3_n_0\,
      S(2) => \cycle_count[52]_i_4_n_0\,
      S(1) => \cycle_count[52]_i_5_n_0\,
      S(0) => \cycle_count[52]_i_6_n_0\
    );
\cycle_count_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[53]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[53]\
    );
\cycle_count_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[54]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[54]\
    );
\cycle_count_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[55]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[55]\
    );
\cycle_count_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[56]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[56]\
    );
\cycle_count_reg[56]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[52]_i_2_n_0\,
      CO(3) => \cycle_count_reg[56]_i_2_n_0\,
      CO(2) => \cycle_count_reg[56]_i_2_n_1\,
      CO(1) => \cycle_count_reg[56]_i_2_n_2\,
      CO(0) => \cycle_count_reg[56]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[56]\,
      DI(2) => \cycle_count_reg_n_0_[55]\,
      DI(1) => \cycle_count_reg_n_0_[54]\,
      DI(0) => \cycle_count_reg_n_0_[53]\,
      O(3) => \cycle_count_reg[56]_i_2_n_4\,
      O(2) => \cycle_count_reg[56]_i_2_n_5\,
      O(1) => \cycle_count_reg[56]_i_2_n_6\,
      O(0) => \cycle_count_reg[56]_i_2_n_7\,
      S(3) => \cycle_count[56]_i_3_n_0\,
      S(2) => \cycle_count[56]_i_4_n_0\,
      S(1) => \cycle_count[56]_i_5_n_0\,
      S(0) => \cycle_count[56]_i_6_n_0\
    );
\cycle_count_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[57]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[57]\
    );
\cycle_count_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[58]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[58]\
    );
\cycle_count_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[59]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[59]\
    );
\cycle_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[5]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[5]\
    );
\cycle_count_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[60]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[60]\
    );
\cycle_count_reg[60]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[56]_i_2_n_0\,
      CO(3) => \cycle_count_reg[60]_i_2_n_0\,
      CO(2) => \cycle_count_reg[60]_i_2_n_1\,
      CO(1) => \cycle_count_reg[60]_i_2_n_2\,
      CO(0) => \cycle_count_reg[60]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[60]\,
      DI(2) => \cycle_count_reg_n_0_[59]\,
      DI(1) => \cycle_count_reg_n_0_[58]\,
      DI(0) => \cycle_count_reg_n_0_[57]\,
      O(3) => \cycle_count_reg[60]_i_2_n_4\,
      O(2) => \cycle_count_reg[60]_i_2_n_5\,
      O(1) => \cycle_count_reg[60]_i_2_n_6\,
      O(0) => \cycle_count_reg[60]_i_2_n_7\,
      S(3) => \cycle_count[60]_i_3_n_0\,
      S(2) => \cycle_count[60]_i_4_n_0\,
      S(1) => \cycle_count[60]_i_5_n_0\,
      S(0) => \cycle_count[60]_i_6_n_0\
    );
\cycle_count_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[61]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[61]\
    );
\cycle_count_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[62]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[62]\
    );
\cycle_count_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[63]_i_2_n_0\,
      Q => \cycle_count_reg_n_0_[63]\
    );
\cycle_count_reg[63]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[60]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cycle_count_reg[63]_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cycle_count_reg[63]_i_9_n_2\,
      CO(0) => \cycle_count_reg[63]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \cycle_count_reg_n_0_[62]\,
      DI(0) => \cycle_count_reg_n_0_[61]\,
      O(3) => \NLW_cycle_count_reg[63]_i_9_O_UNCONNECTED\(3),
      O(2) => \cycle_count_reg[63]_i_9_n_5\,
      O(1) => \cycle_count_reg[63]_i_9_n_6\,
      O(0) => \cycle_count_reg[63]_i_9_n_7\,
      S(3) => '0',
      S(2) => \cycle_count[63]_i_14_n_0\,
      S(1) => \cycle_count[63]_i_15_n_0\,
      S(0) => \cycle_count[63]_i_16_n_0\
    );
\cycle_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[6]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[6]\
    );
\cycle_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[7]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[7]\
    );
\cycle_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[8]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[8]\
    );
\cycle_count_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[4]_i_2_n_0\,
      CO(3) => \cycle_count_reg[8]_i_2_n_0\,
      CO(2) => \cycle_count_reg[8]_i_2_n_1\,
      CO(1) => \cycle_count_reg[8]_i_2_n_2\,
      CO(0) => \cycle_count_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \cycle_count_reg_n_0_[8]\,
      DI(2) => \cycle_count_reg_n_0_[7]\,
      DI(1) => \cycle_count_reg_n_0_[6]\,
      DI(0) => \cycle_count_reg_n_0_[5]\,
      O(3) => \cycle_count_reg[8]_i_2_n_4\,
      O(2) => \cycle_count_reg[8]_i_2_n_5\,
      O(1) => \cycle_count_reg[8]_i_2_n_6\,
      O(0) => \cycle_count_reg[8]_i_2_n_7\,
      S(3) => \cycle_count[8]_i_3_n_0\,
      S(2) => \cycle_count[8]_i_4_n_0\,
      S(1) => \cycle_count[8]_i_5_n_0\,
      S(0) => \cycle_count[8]_i_6_n_0\
    );
\cycle_count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \cycle_count__0\,
      CLR => reset,
      D => \cycle_count[9]_i_1_n_0\,
      Q => \cycle_count_reg_n_0_[9]\
    );
\fb_addr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \fb_addr[15]_i_2_n_0\,
      I1 => \fb_addr[15]_i_3_n_0\,
      I2 => \fb_addr[15]_i_4_n_0\,
      I3 => \fb_addr[15]_i_5_n_0\,
      I4 => \fb_addr[15]_i_6_n_0\,
      I5 => \fb_addr[15]_i_7_n_0\,
      O => \fb_addr[15]_i_1_n_0\
    );
\fb_addr[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[8]\,
      I1 => \cycle_count_reg_n_0_[53]\,
      I2 => \cycle_count_reg_n_0_[5]\,
      I3 => \cycle_count_reg_n_0_[50]\,
      O => \fb_addr[15]_i_10_n_0\
    );
\fb_addr[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[42]\,
      I1 => \cycle_count_reg_n_0_[43]\,
      I2 => \cycle_count_reg_n_0_[44]\,
      I3 => \cycle_count_reg_n_0_[27]\,
      I4 => \cycle_count_reg_n_0_[28]\,
      I5 => \cycle_count_reg_n_0_[29]\,
      O => \fb_addr[15]_i_11_n_0\
    );
\fb_addr[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF44F4"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[46]\,
      I1 => \cycle_count_reg_n_0_[45]\,
      I2 => \cycle_count_reg_n_0_[39]\,
      I3 => \cycle_count_reg_n_0_[40]\,
      I4 => \cycle_count_reg_n_0_[47]\,
      I5 => \cycle_count_reg_n_0_[41]\,
      O => \fb_addr[15]_i_12_n_0\
    );
\fb_addr[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[10]\,
      I1 => \cycle_count_reg_n_0_[11]\,
      I2 => \cycle_count_reg_n_0_[13]\,
      I3 => \cycle_count_reg_n_0_[14]\,
      O => \fb_addr[15]_i_13_n_0\
    );
\fb_addr[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[34]\,
      I1 => \cycle_count_reg_n_0_[35]\,
      I2 => \cycle_count_reg_n_0_[37]\,
      I3 => \cycle_count_reg_n_0_[38]\,
      O => \fb_addr[15]_i_14_n_0\
    );
\fb_addr[15]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[15]\,
      I1 => \cycle_count_reg_n_0_[16]\,
      I2 => \cycle_count_reg_n_0_[17]\,
      I3 => \cycle_count_reg_n_0_[30]\,
      I4 => \cycle_count_reg_n_0_[31]\,
      I5 => \cycle_count_reg_n_0_[32]\,
      O => \fb_addr[15]_i_15_n_0\
    );
\fb_addr[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[1]\,
      I1 => \cycle_count_reg_n_0_[0]\,
      I2 => \cycle_count_reg_n_0_[11]\,
      I3 => \cycle_count_reg_n_0_[2]\,
      I4 => \cycle_count_reg_n_0_[9]\,
      I5 => \cycle_count_reg_n_0_[10]\,
      O => \fb_addr[15]_i_16_n_0\
    );
\fb_addr[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[18]\,
      I1 => \cycle_count_reg_n_0_[19]\,
      I2 => \cycle_count_reg_n_0_[20]\,
      I3 => \cycle_count_reg_n_0_[62]\,
      I4 => \cycle_count_reg_n_0_[61]\,
      I5 => \cycle_count_reg_n_0_[63]\,
      O => \fb_addr[15]_i_17_n_0\
    );
\fb_addr[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF2F2FFF2"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[21]\,
      I1 => \cycle_count_reg_n_0_[22]\,
      I2 => \cycle_count_reg_n_0_[23]\,
      I3 => \cycle_count_reg_n_0_[60]\,
      I4 => \cycle_count_reg_n_0_[61]\,
      I5 => \cycle_count_reg_n_0_[62]\,
      O => \fb_addr[15]_i_18_n_0\
    );
\fb_addr[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF44F4"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[58]\,
      I1 => \cycle_count_reg_n_0_[57]\,
      I2 => \cycle_count_reg_n_0_[12]\,
      I3 => \cycle_count_reg_n_0_[13]\,
      I4 => \cycle_count_reg_n_0_[59]\,
      I5 => \cycle_count_reg_n_0_[14]\,
      O => \fb_addr[15]_i_19_n_0\
    );
\fb_addr[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \fb_addr[15]_i_8_n_0\,
      I1 => \fb_addr[15]_i_9_n_0\,
      I2 => \fb_addr[15]_i_10_n_0\,
      I3 => \fb_addr[15]_i_11_n_0\,
      I4 => \fb_addr[15]_i_12_n_0\,
      O => \fb_addr[15]_i_2_n_0\
    );
\fb_addr[15]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[8]\,
      I1 => \cycle_count_reg_n_0_[7]\,
      O => \fb_addr[15]_i_20_n_0\
    );
\fb_addr[15]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[5]\,
      I1 => \cycle_count_reg_n_0_[4]\,
      O => \fb_addr[15]_i_21_n_0\
    );
\fb_addr[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[56]\,
      I1 => \cycle_count_reg_n_0_[55]\,
      I2 => \cycle_count_reg_n_0_[26]\,
      I3 => \cycle_count_reg_n_0_[25]\,
      I4 => cd_i_8_n_0,
      I5 => cd_i_12_n_0,
      O => \fb_addr[15]_i_3_n_0\
    );
\fb_addr[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cycle_count[63]_i_4_n_0\,
      I1 => \fb_addr[15]_i_13_n_0\,
      I2 => cd_i_14_n_0,
      I3 => cd_i_15_n_0,
      I4 => \fb_addr[15]_i_14_n_0\,
      O => \fb_addr[15]_i_4_n_0\
    );
\fb_addr[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \fb_addr[15]_i_15_n_0\,
      I1 => \fb_addr[15]_i_16_n_0\,
      I2 => cd_i_5_n_0,
      O => \fb_addr[15]_i_5_n_0\
    );
\fb_addr[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => \fb_addr[15]_i_17_n_0\,
      I1 => cycle_count,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[2]\,
      O => \fb_addr[15]_i_6_n_0\
    );
\fb_addr[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fb_addr[15]_i_18_n_0\,
      I1 => \fb_addr[15]_i_19_n_0\,
      I2 => \FSM_onehot_drawStage[5]_i_2_n_0\,
      I3 => cd_i_10_n_0,
      I4 => \fb_addr[15]_i_20_n_0\,
      I5 => \fb_addr[15]_i_21_n_0\,
      O => \fb_addr[15]_i_7_n_0\
    );
\fb_addr[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[49]\,
      I1 => \cycle_count_reg_n_0_[48]\,
      I2 => \cycle_count_reg_n_0_[52]\,
      I3 => \cycle_count_reg_n_0_[51]\,
      O => \fb_addr[15]_i_8_n_0\
    );
\fb_addr[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      I1 => \cycle_count_reg_n_0_[3]\,
      I2 => \cycle_count_reg_n_0_[7]\,
      I3 => \cycle_count_reg_n_0_[6]\,
      O => \fb_addr[15]_i_9_n_0\
    );
\fb_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(0),
      Q => fb_addr(0)
    );
\fb_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(10),
      Q => fb_addr(10)
    );
\fb_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(11),
      Q => fb_addr(11)
    );
\fb_addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(12),
      Q => fb_addr(12)
    );
\fb_addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(13),
      Q => fb_addr(13)
    );
\fb_addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(14),
      Q => fb_addr(14)
    );
\fb_addr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(15),
      Q => fb_addr(15)
    );
\fb_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(1),
      Q => fb_addr(1)
    );
\fb_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(2),
      Q => fb_addr(2)
    );
\fb_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(3),
      Q => fb_addr(3)
    );
\fb_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(4),
      Q => fb_addr(4)
    );
\fb_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(5),
      Q => fb_addr(5)
    );
\fb_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(6),
      Q => fb_addr(6)
    );
\fb_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(7),
      Q => fb_addr(7)
    );
\fb_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(8),
      Q => fb_addr(8)
    );
\fb_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fb_addr[15]_i_1_n_0\,
      CLR => reset,
      D => \ReadAddr__0\(9),
      Q => fb_addr(9)
    );
fb_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => cycle_count,
      I1 => fb_en_i_2_n_0,
      I2 => \fb_addr[15]_i_1_n_0\,
      I3 => \^fb_en\,
      O => fb_en_i_1_n_0
    );
fb_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => cd_i_5_n_0,
      I1 => \FSM_onehot_drawStage[5]_i_3_n_0\,
      I2 => \FSM_onehot_drawStage[5]_i_6_n_0\,
      I3 => fb_en_i_3_n_0,
      I4 => fb_en_i_4_n_0,
      I5 => \FSM_onehot_drawStage[5]_i_4_n_0\,
      O => fb_en_i_2_n_0
    );
fb_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFBF"
    )
        port map (
      I0 => fb_en_i_5_n_0,
      I1 => \state_reg_n_0_[1]\,
      I2 => \FSM_onehot_fbStage_reg_n_0_[2]\,
      I3 => cd_i_8_n_0,
      I4 => \fb_addr[15]_i_13_n_0\,
      I5 => \fb_addr[15]_i_14_n_0\,
      O => fb_en_i_3_n_0
    );
fb_en_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cycle_count[63]_i_4_n_0\,
      I1 => \cycle_count_reg_n_0_[63]\,
      I2 => \cycle_count_reg_n_0_[61]\,
      I3 => \cycle_count_reg_n_0_[62]\,
      I4 => \FSM_onehot_drawStage[5]_i_2_n_0\,
      O => fb_en_i_4_n_0
    );
fb_en_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      O => fb_en_i_5_n_0
    );
fb_en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => fb_en_i_1_n_0,
      Q => \^fb_en\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42EA070291C7E108"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ED86C0119A2E2A0"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b1_n_0
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CA809E15A158D20"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45709A0010120C80"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE057C092107E2E8"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF079E0EC417E2E0"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006000D2AA80040"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006000FEAAA8200"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g0_b7_n_0
    );
g1_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000B"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g1_b0_n_0
    );
g1_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g1_b3_n_0
    );
g1_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g1_b4_n_0
    );
g1_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000009"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(2),
      I3 => \initStage__0\(3),
      I4 => \initStage__0\(4),
      I5 => \initStage__0\(5),
      O => g1_b5_n_0
    );
res_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000200"
    )
        port map (
      I0 => initStage,
      I1 => res_i_2_n_0,
      I2 => \initStage__0\(0),
      I3 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I4 => blk_i_2_n_0,
      I5 => \^res\,
      O => res_i_1_n_0
    );
res_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(6),
      O => res_i_2_n_0
    );
res_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => res_i_1_n_0,
      Q => \^res\
    );
scl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => writeStage(0),
      I1 => scl_i_2_n_0,
      I2 => scl_i_3_n_0,
      I3 => scl_i_4_n_0,
      I4 => \^scl\,
      O => scl_i_1_n_0
    );
scl_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => writeStage(2),
      I1 => writeStage(1),
      I2 => writeStage(3),
      I3 => writeStage(0),
      O => scl_i_10_n_0
    );
scl_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[55]\,
      I1 => \cycle_count_reg_n_0_[56]\,
      I2 => \cycle_count_reg_n_0_[13]\,
      I3 => \cycle_count_reg_n_0_[14]\,
      O => scl_i_11_n_0
    );
scl_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[10]\,
      I1 => \cycle_count_reg_n_0_[11]\,
      I2 => \cycle_count_reg_n_0_[61]\,
      I3 => \cycle_count_reg_n_0_[62]\,
      O => scl_i_12_n_0
    );
scl_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[32]\,
      I1 => \cycle_count_reg_n_0_[31]\,
      I2 => \cycle_count_reg_n_0_[30]\,
      O => scl_i_13_n_0
    );
scl_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[20]\,
      I1 => \cycle_count_reg_n_0_[19]\,
      I2 => \cycle_count_reg_n_0_[18]\,
      O => scl_i_14_n_0
    );
scl_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[28]\,
      I1 => \cycle_count_reg_n_0_[29]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \cycle_count_reg_n_0_[63]\,
      O => scl_i_2_n_0
    );
scl_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => scl_i_6_n_0,
      I2 => \fb_addr[15]_i_2_n_0\,
      I3 => scl_i_7_n_0,
      I4 => scl_i_8_n_0,
      I5 => scl_i_9_n_0,
      O => scl_i_3_n_0
    );
scl_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBAEFFFFFF3C"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => scl_i_10_n_0,
      I2 => writeStage(4),
      I3 => writeStage(5),
      I4 => writeStage(63),
      I5 => \state_reg_n_0_[2]\,
      O => scl_i_4_n_0
    );
scl_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => scl_i_11_n_0,
      I1 => scl_i_12_n_0,
      I2 => scl_i_13_n_0,
      I3 => cd_i_9_n_0,
      I4 => scl_i_14_n_0,
      O => scl_i_5_n_0
    );
scl_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cd_i_5_n_0,
      I1 => \fb_addr[15]_i_16_n_0\,
      O => scl_i_6_n_0
    );
scl_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \fb_addr[15]_i_18_n_0\,
      I1 => \cycle_count_reg_n_0_[25]\,
      I2 => \cycle_count_reg_n_0_[26]\,
      I3 => \cycle_count_reg_n_0_[37]\,
      I4 => \cycle_count_reg_n_0_[38]\,
      I5 => cd_i_8_n_0,
      O => scl_i_7_n_0
    );
scl_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFEFFFE"
    )
        port map (
      I0 => cd_i_15_n_0,
      I1 => cd_i_14_n_0,
      I2 => cd_i_12_n_0,
      I3 => \cycle_count_reg_n_0_[17]\,
      I4 => \cycle_count_reg_n_0_[16]\,
      I5 => \cycle_count_reg_n_0_[15]\,
      O => scl_i_8_n_0
    );
scl_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \cycle_count_reg_n_0_[4]\,
      I1 => \cycle_count_reg_n_0_[5]\,
      I2 => \fb_addr[15]_i_20_n_0\,
      I3 => cd_i_10_n_0,
      I4 => \FSM_onehot_drawStage[5]_i_2_n_0\,
      I5 => \fb_addr[15]_i_19_n_0\,
      O => scl_i_9_n_0
    );
scl_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => scl_i_1_n_0,
      Q => \^scl\
    );
sda_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0002"
    )
        port map (
      I0 => sda_i_2_n_0,
      I1 => scl_i_2_n_0,
      I2 => scl_i_3_n_0,
      I3 => sda_i_3_n_0,
      I4 => \^sda\,
      O => sda_i_1_n_0
    );
sda_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data7,
      I1 => data6,
      I2 => writeStage(2),
      I3 => data5,
      I4 => writeStage(1),
      I5 => data4,
      O => sda_i_10_n_0
    );
sda_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Data_reg_n_0_[4]\,
      I1 => \Data_reg_n_0_[5]\,
      I2 => writeStage(2),
      I3 => \Data_reg_n_0_[6]\,
      I4 => writeStage(1),
      I5 => \Data_reg_n_0_[7]\,
      O => sda_i_11_n_0
    );
sda_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Data_reg_n_0_[0]\,
      I1 => \Data_reg_n_0_[1]\,
      I2 => writeStage(2),
      I3 => \Data_reg_n_0_[2]\,
      I4 => writeStage(1),
      I5 => \Data_reg_n_0_[3]\,
      O => sda_i_12_n_0
    );
sda_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => sda_reg_i_4_n_0,
      I1 => writeStage(4),
      I2 => sda_reg_i_5_n_0,
      I3 => \state_reg_n_0_[2]\,
      I4 => sda_reg_i_6_n_0,
      O => sda_i_2_n_0
    );
sda_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFFFFFCFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => writeStage(5),
      I2 => writeStage(63),
      I3 => writeStage(4),
      I4 => writeStage(0),
      I5 => \state_reg_n_0_[2]\,
      O => sda_i_3_n_0
    );
sda_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data11,
      I1 => data10,
      I2 => writeStage(2),
      I3 => data9,
      I4 => writeStage(1),
      I5 => \Data_reg_n_0_[7]\,
      O => sda_i_7_n_0
    );
sda_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \DataShort_reg_n_0_[0]\,
      I1 => data14,
      I2 => writeStage(2),
      I3 => data13,
      I4 => writeStage(1),
      I5 => data12,
      O => sda_i_8_n_0
    );
sda_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3,
      I1 => data2,
      I2 => writeStage(2),
      I3 => data1,
      I4 => writeStage(1),
      I5 => data0,
      O => sda_i_9_n_0
    );
sda_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => sda_i_1_n_0,
      Q => \^sda\
    );
sda_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_i_7_n_0,
      I1 => sda_i_8_n_0,
      O => sda_reg_i_4_n_0,
      S => writeStage(3)
    );
sda_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_i_9_n_0,
      I1 => sda_i_10_n_0,
      O => sda_reg_i_5_n_0,
      S => writeStage(3)
    );
sda_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_i_11_n_0,
      I1 => sda_i_12_n_0,
      O => sda_reg_i_6_n_0,
      S => writeStage(3)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFF0000A800"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => \state[2]_i_4_n_0\,
      I3 => \writeStage[63]_i_2_n_0\,
      I4 => \state[2]_i_5_n_0\,
      I5 => \state_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDD0DDDDDDDD"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state[0]_i_3_n_0\,
      I2 => \state[0]_i_4_n_0\,
      I3 => \state[0]_i_5_n_0\,
      I4 => \state[0]_i_6_n_0\,
      I5 => \state[0]_i_7_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003FFFFAAAAFFFF"
    )
        port map (
      I0 => \drawStage__0\(1),
      I1 => \addrStage__0\(0),
      I2 => \addrStage__0\(1),
      I3 => \addrStage__0\(2),
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888AAAAA8A8"
    )
        port map (
      I0 => \initStage__0\(5),
      I1 => \initStage__0\(2),
      I2 => \initStage__0\(0),
      I3 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I4 => \initStage__0\(3),
      I5 => \initStage__0\(4),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDFFFDFFFDFDF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \initStage__0\(0),
      I4 => \initStage__0\(3),
      I5 => \initStage__0\(4),
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00000008080808"
    )
        port map (
      I0 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I1 => \initStage__0\(3),
      I2 => \initStage__0\(4),
      I3 => \initStage__0\(6),
      I4 => \initStage__0\(0),
      I5 => \initStage__0\(2),
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FB3BFBF"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \initStage__0\(2),
      I2 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I3 => \initStage__0\(4),
      I4 => \initStage__0\(3),
      O => \state[0]_i_7_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFF0000A800"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => \state[2]_i_4_n_0\,
      I3 => \writeStage[63]_i_2_n_0\,
      I4 => \state[2]_i_5_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFCCCCC0A0CCCCC"
    )
        port map (
      I0 => \state[2]_i_14_n_0\,
      I1 => \backState_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state[1]_i_3_n_0\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011145"
    )
        port map (
      I0 => blk_i_2_n_0,
      I1 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I2 => \initStage__0\(6),
      I3 => \initStage__0\(2),
      I4 => \initStage__0\(0),
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFF0000A800"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[2]_i_3_n_0\,
      I2 => \state[2]_i_4_n_0\,
      I3 => \writeStage[63]_i_2_n_0\,
      I4 => \state[2]_i_5_n_0\,
      I5 => \state_reg_n_0_[2]\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \state[2]_i_20_n_0\,
      I1 => \state[2]_i_21_n_0\,
      I2 => \state[2]_i_22_n_0\,
      I3 => \state[2]_i_23_n_0\,
      O => \state[2]_i_10_n_0\
    );
\state[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \state[2]_i_24_n_0\,
      I1 => \state[2]_i_25_n_0\,
      I2 => \DelayCount_reg_n_0_[63]\,
      I3 => \DelayCount_reg_n_0_[62]\,
      I4 => \state[2]_i_26_n_0\,
      I5 => \state[2]_i_27_n_0\,
      O => \state[2]_i_11_n_0\
    );
\state[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state[2]_i_28_n_0\,
      I1 => \state[2]_i_29_n_0\,
      I2 => \state[2]_i_30_n_0\,
      I3 => \state[2]_i_31_n_0\,
      O => \state[2]_i_12_n_0\
    );
\state[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      O => \state[2]_i_13_n_0\
    );
\state[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ReadAddr,
      I1 => \drawStage__0\(1),
      O => \state[2]_i_14_n_0\
    );
\state[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFEEF000FFEE"
    )
        port map (
      I0 => writeStage(4),
      I1 => \writeStage[63]_i_9_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[2]\,
      I5 => \FSM_onehot_fbStage_reg_n_0_[2]\,
      O => \state[2]_i_15_n_0\
    );
\state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[10]\,
      I1 => \DelayCount_reg_n_0_[9]\,
      I2 => \DelayCount_reg_n_0_[11]\,
      I3 => \DelayCount_reg_n_0_[8]\,
      O => \state[2]_i_16_n_0\
    );
\state[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[14]\,
      I1 => \DelayCount_reg_n_0_[13]\,
      I2 => \DelayCount_reg_n_0_[15]\,
      I3 => \DelayCount_reg_n_0_[12]\,
      O => \state[2]_i_17_n_0\
    );
\state[2]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[2]\,
      I1 => \DelayCount_reg_n_0_[3]\,
      O => \state[2]_i_18_n_0\
    );
\state[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[6]\,
      I1 => \DelayCount_reg_n_0_[5]\,
      I2 => \DelayCount_reg_n_0_[7]\,
      I3 => \DelayCount_reg_n_0_[4]\,
      O => \state[2]_i_19_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F1FFFFF5010F000"
    )
        port map (
      I0 => \state[2]_i_6_n_0\,
      I1 => \state[2]_i_7_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      I5 => \backState_reg_n_0_[2]\,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[26]\,
      I1 => \DelayCount_reg_n_0_[25]\,
      I2 => \DelayCount_reg_n_0_[27]\,
      I3 => \DelayCount_reg_n_0_[24]\,
      O => \state[2]_i_20_n_0\
    );
\state[2]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[30]\,
      I1 => \DelayCount_reg_n_0_[29]\,
      I2 => \DelayCount_reg_n_0_[31]\,
      I3 => \DelayCount_reg_n_0_[28]\,
      O => \state[2]_i_21_n_0\
    );
\state[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[22]\,
      I1 => \DelayCount_reg_n_0_[21]\,
      I2 => \DelayCount_reg_n_0_[23]\,
      I3 => \DelayCount_reg_n_0_[20]\,
      O => \state[2]_i_22_n_0\
    );
\state[2]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[19]\,
      I1 => \DelayCount_reg_n_0_[16]\,
      I2 => \DelayCount_reg_n_0_[18]\,
      I3 => \DelayCount_reg_n_0_[17]\,
      O => \state[2]_i_23_n_0\
    );
\state[2]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[54]\,
      I1 => \DelayCount_reg_n_0_[53]\,
      I2 => \DelayCount_reg_n_0_[55]\,
      I3 => \DelayCount_reg_n_0_[52]\,
      O => \state[2]_i_24_n_0\
    );
\state[2]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[49]\,
      I1 => \DelayCount_reg_n_0_[48]\,
      I2 => \DelayCount_reg_n_0_[51]\,
      I3 => \DelayCount_reg_n_0_[50]\,
      O => \state[2]_i_25_n_0\
    );
\state[2]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[60]\,
      I1 => \DelayCount_reg_n_0_[61]\,
      O => \state[2]_i_26_n_0\
    );
\state[2]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[58]\,
      I1 => \DelayCount_reg_n_0_[57]\,
      I2 => \DelayCount_reg_n_0_[59]\,
      I3 => \DelayCount_reg_n_0_[56]\,
      O => \state[2]_i_27_n_0\
    );
\state[2]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[34]\,
      I1 => \DelayCount_reg_n_0_[33]\,
      I2 => \DelayCount_reg_n_0_[35]\,
      I3 => \DelayCount_reg_n_0_[32]\,
      O => \state[2]_i_28_n_0\
    );
\state[2]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[38]\,
      I1 => \DelayCount_reg_n_0_[37]\,
      I2 => \DelayCount_reg_n_0_[39]\,
      I3 => \DelayCount_reg_n_0_[36]\,
      O => \state[2]_i_29_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state[2]_i_8_n_0\,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[46]\,
      I1 => \DelayCount_reg_n_0_[45]\,
      I2 => \DelayCount_reg_n_0_[47]\,
      I3 => \DelayCount_reg_n_0_[44]\,
      O => \state[2]_i_30_n_0\
    );
\state[2]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \DelayCount_reg_n_0_[42]\,
      I1 => \DelayCount_reg_n_0_[41]\,
      I2 => \DelayCount_reg_n_0_[43]\,
      I3 => \DelayCount_reg_n_0_[40]\,
      O => \state[2]_i_31_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \writeStage[63]_i_4_n_0\,
      I1 => \state[2]_i_9_n_0\,
      I2 => \state[2]_i_10_n_0\,
      I3 => \state[2]_i_11_n_0\,
      I4 => \state[2]_i_12_n_0\,
      I5 => DelayStarted_reg_n_0,
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABABABFB"
    )
        port map (
      I0 => \state[2]_i_13_n_0\,
      I1 => \writeStage[63]_i_9_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state[2]_i_14_n_0\,
      I4 => DataShort,
      I5 => \state[2]_i_15_n_0\,
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9200"
    )
        port map (
      I0 => \addrStage__0\(0),
      I1 => \addrStage__0\(1),
      I2 => \addrStage__0\(2),
      I3 => \state_reg_n_0_[2]\,
      O => \state[2]_i_6_n_0\
    );
\state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \initStage__0\(2),
      I1 => \initStage__0\(0),
      I2 => \initStage__0\(6),
      O => \state[2]_i_7_n_0\
    );
\state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000333303333332"
    )
        port map (
      I0 => \initStage__0\(0),
      I1 => \writeStage[63]_i_4_n_0\,
      I2 => \initStage__0\(2),
      I3 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I4 => \initStage__0\(6),
      I5 => blk_i_2_n_0,
      O => \state[2]_i_8_n_0\
    );
\state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \state[2]_i_16_n_0\,
      I1 => \state[2]_i_17_n_0\,
      I2 => \state[2]_i_18_n_0\,
      I3 => \DelayCount_reg_n_0_[0]\,
      I4 => \DelayCount_reg_n_0_[1]\,
      I5 => \state[2]_i_19_n_0\,
      O => \state[2]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      PRE => reset,
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      PRE => reset,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \state[2]_i_1_n_0\,
      Q => \state_reg_n_0_[2]\
    );
\writeStage[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \writeStage_inferred__2/writeStage[0]_i_2_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \writeStage_inferred__1/writeStage[0]_i_3_n_0\,
      I3 => \state_reg_n_0_[1]\,
      O => \writeStage[0]_i_1_n_0\
    );
\writeStage[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => writeStage(1),
      I1 => writeStage(0),
      I2 => writeStage(4),
      I3 => \state_reg_n_0_[2]\,
      I4 => writeStage(5),
      I5 => \state_reg_n_0_[1]\,
      O => \writeStage[1]_i_1_n_0\
    );
\writeStage[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005A480048"
    )
        port map (
      I0 => writeStage(1),
      I1 => \writeStage[2]_i_2_n_0\,
      I2 => writeStage(2),
      I3 => \state_reg_n_0_[2]\,
      I4 => \writeStage[2]_i_3_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \writeStage[2]_i_1_n_0\
    );
\writeStage[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeStage(0),
      I1 => writeStage(4),
      O => \writeStage[2]_i_2_n_0\
    );
\writeStage[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeStage(0),
      I1 => writeStage(5),
      O => \writeStage[2]_i_3_n_0\
    );
\writeStage[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \writeStage_inferred__2/writeStage[3]_i_2_n_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \writeStage_inferred__1/writeStage[5]_i_2_n_0\,
      I3 => writeStage(3),
      I4 => \writeStage_inferred__1/writeStage[3]_i_3_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \writeStage[3]_i_1_n_0\
    );
\writeStage[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => writeStage(2),
      I1 => \writeStage_inferred__2/writeStage[4]_i_2_n_0\,
      I2 => writeStage(1),
      I3 => \state_reg_n_0_[2]\,
      I4 => \writeStage_inferred__1/writeStage[4]_i_3_n_0\,
      I5 => \state_reg_n_0_[1]\,
      O => \writeStage[4]_i_1_n_0\
    );
\writeStage[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => writeStage(3),
      I1 => \writeStage_inferred__1/writeStage[5]_i_2_n_0\,
      I2 => writeStage(4),
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[1]\,
      O => \writeStage[5]_i_1_n_0\
    );
\writeStage[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA020002AA02AA02"
    )
        port map (
      I0 => \writeStage[63]_i_2_n_0\,
      I1 => \writeStage[63]_i_3_n_0\,
      I2 => \writeStage[63]_i_4_n_0\,
      I3 => \writeStage[63]_i_5_n_0\,
      I4 => \writeStage[63]_i_6_n_0\,
      I5 => \writeStage[63]_i_7_n_0\,
      O => \writeStage[63]_i_1_n_0\
    );
\writeStage[63]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => writeStage(4),
      I1 => writeStage(0),
      I2 => writeStage(3),
      I3 => writeStage(1),
      I4 => writeStage(2),
      O => \writeStage[63]_i_10_n_0\
    );
\writeStage[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \fb_addr[15]_i_2_n_0\,
      I1 => \fb_addr[15]_i_3_n_0\,
      I2 => \fb_addr[15]_i_4_n_0\,
      I3 => \fb_addr[15]_i_17_n_0\,
      I4 => \fb_addr[15]_i_5_n_0\,
      I5 => \fb_addr[15]_i_7_n_0\,
      O => \writeStage[63]_i_2_n_0\
    );
\writeStage[63]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA89ABB9"
    )
        port map (
      I0 => \initStage__0\(6),
      I1 => blk_i_2_n_0,
      I2 => \FSM_sequential_initStage_reg_n_0_[1]\,
      I3 => \initStage__0\(2),
      I4 => \initStage__0\(0),
      O => \writeStage[63]_i_3_n_0\
    );
\writeStage[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      O => \writeStage[63]_i_4_n_0\
    );
\writeStage[63]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[1]\,
      O => \writeStage[63]_i_5_n_0\
    );
\writeStage[63]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABABABAAABAAA"
    )
        port map (
      I0 => \writeStage[63]_i_8_n_0\,
      I1 => \writeStage[63]_i_9_n_0\,
      I2 => \writeStage[63]_i_4_n_0\,
      I3 => scl_i_10_n_0,
      I4 => writeStage(4),
      I5 => writeStage(0),
      O => \writeStage[63]_i_6_n_0\
    );
\writeStage[63]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF4FF"
    )
        port map (
      I0 => \writeStage[2]_i_3_n_0\,
      I1 => \writeStage[63]_i_10_n_0\,
      I2 => writeStage(63),
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \writeStage[63]_i_7_n_0\
    );
\writeStage[63]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \addrStage__0\(2),
      I3 => \addrStage__0\(1),
      I4 => \addrStage__0\(0),
      O => \writeStage[63]_i_8_n_0\
    );
\writeStage[63]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => writeStage(5),
      I1 => writeStage(63),
      O => \writeStage[63]_i_9_n_0\
    );
\writeStage_inferred__1/writeStage[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => writeStage(4),
      I1 => writeStage(1),
      I2 => writeStage(5),
      I3 => writeStage(0),
      I4 => writeStage(2),
      I5 => writeStage(3),
      O => \writeStage_inferred__1/writeStage[0]_i_3_n_0\
    );
\writeStage_inferred__1/writeStage[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => writeStage(1),
      I1 => writeStage(2),
      I2 => writeStage(0),
      I3 => writeStage(5),
      O => \writeStage_inferred__1/writeStage[3]_i_3_n_0\
    );
\writeStage_inferred__1/writeStage[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F000000800000"
    )
        port map (
      I0 => writeStage(1),
      I1 => writeStage(2),
      I2 => writeStage(3),
      I3 => writeStage(5),
      I4 => writeStage(0),
      I5 => writeStage(4),
      O => \writeStage_inferred__1/writeStage[4]_i_3_n_0\
    );
\writeStage_inferred__1/writeStage[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => writeStage(1),
      I1 => writeStage(0),
      I2 => writeStage(5),
      I3 => writeStage(2),
      O => \writeStage_inferred__1/writeStage[5]_i_2_n_0\
    );
\writeStage_inferred__2/writeStage[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => writeStage(1),
      I1 => writeStage(4),
      I2 => writeStage(3),
      I3 => writeStage(0),
      I4 => writeStage(2),
      O => \writeStage_inferred__2/writeStage[0]_i_2_n_0\
    );
\writeStage_inferred__2/writeStage[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07080000"
    )
        port map (
      I0 => writeStage(1),
      I1 => writeStage(2),
      I2 => writeStage(4),
      I3 => writeStage(3),
      I4 => writeStage(0),
      O => \writeStage_inferred__2/writeStage[3]_i_2_n_0\
    );
\writeStage_inferred__2/writeStage[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => writeStage(4),
      I1 => writeStage(3),
      I2 => writeStage(0),
      O => \writeStage_inferred__2/writeStage[4]_i_2_n_0\
    );
\writeStage_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \writeStage[63]_i_1_n_0\,
      CLR => reset,
      D => \writeStage[0]_i_1_n_0\,
      Q => writeStage(0)
    );
\writeStage_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \writeStage[63]_i_1_n_0\,
      CLR => reset,
      D => \writeStage[1]_i_1_n_0\,
      Q => writeStage(1)
    );
\writeStage_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \writeStage[63]_i_1_n_0\,
      CLR => reset,
      D => \writeStage[2]_i_1_n_0\,
      Q => writeStage(2)
    );
\writeStage_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \writeStage[63]_i_1_n_0\,
      CLR => reset,
      D => \writeStage[3]_i_1_n_0\,
      Q => writeStage(3)
    );
\writeStage_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \writeStage[63]_i_1_n_0\,
      CLR => reset,
      D => \writeStage[4]_i_1_n_0\,
      Q => writeStage(4)
    );
\writeStage_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \writeStage[63]_i_1_n_0\,
      CLR => reset,
      D => \writeStage[5]_i_1_n_0\,
      Q => writeStage(5)
    );
\writeStage_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \writeStage[63]_i_1_n_0\,
      CLR => reset,
      D => '0',
      Q => writeStage(63)
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
    cd : out STD_LOGIC;
    blk : out STD_LOGIC;
    res : out STD_LOGIC;
    fb_we : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fb_en : out STD_LOGIC;
    fb_din : in STD_LOGIC_VECTOR ( 15 downto 0 );
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
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  fb_we(7) <= \<const0>\;
  fb_we(6) <= \<const0>\;
  fb_we(5) <= \<const0>\;
  fb_we(4) <= \<const0>\;
  fb_we(3) <= \<const0>\;
  fb_we(2) <= \<const0>\;
  fb_we(1) <= \<const0>\;
  fb_we(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.CPU_LCD_Controller_0_0_LCD_Controller
     port map (
      blk => blk,
      cd => cd,
      clk => clk,
      cs => cs,
      fb_addr(15 downto 0) => fb_addr(15 downto 0),
      fb_din(14 downto 7) => fb_din(15 downto 8),
      fb_din(6 downto 0) => fb_din(6 downto 0),
      fb_en => fb_en,
      res => res,
      reset => reset,
      scl => scl,
      sda => sda
    );
end STRUCTURE;
