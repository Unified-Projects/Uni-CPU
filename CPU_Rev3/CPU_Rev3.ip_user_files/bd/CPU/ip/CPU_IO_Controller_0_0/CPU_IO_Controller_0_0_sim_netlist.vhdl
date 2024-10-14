-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
-- Date        : Sat Oct 12 00:19:52 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               y:/C++/Uni-CPU/CPU_Rev3/CPU_Rev3.gen/sources_1/bd/CPU/ip/CPU_IO_Controller_0_0/CPU_IO_Controller_0_0_sim_netlist.vhdl
-- Design      : CPU_IO_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_IO_Controller_0_0_IO_Controller is
  port (
    done : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_0 : out STD_LOGIC;
    led_1 : out STD_LOGIC;
    ena : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    btn_0 : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of CPU_IO_Controller_0_0_IO_Controller : entity is "IO_Controller";
end CPU_IO_Controller_0_0_IO_Controller;

architecture STRUCTURE of CPU_IO_Controller_0_0_IO_Controller is
  signal \U0/_n_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal \^led_0\ : STD_LOGIC;
  signal led_0_i_1_n_0 : STD_LOGIC;
  signal \^led_1\ : STD_LOGIC;
  signal led_1_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair0";
begin
  data_out(0) <= \^data_out\(0);
  led_0 <= \^led_0\;
  led_1 <= \^led_1\;
\U0/\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(3),
      O => \U0/_n_0\
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF4700"
    )
        port map (
      I0 => btn_1,
      I1 => sel(0),
      I2 => btn_0,
      I3 => \data_out[0]_i_2_n_0\,
      I4 => \^data_out\(0),
      O => \data_out[0]_i_1_n_0\
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => ena,
      I1 => sel(1),
      I2 => sel(4),
      I3 => sel(2),
      I4 => sel(3),
      O => \data_out[0]_i_2_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \data_out[0]_i_1_n_0\,
      Q => \^data_out\(0)
    );
done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => ena,
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(4),
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => done_i_1_n_0,
      Q => done
    );
led_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => data_in(0),
      I1 => ena,
      I2 => \U0/_n_0\,
      I3 => sel(1),
      I4 => sel(0),
      I5 => \^led_0\,
      O => led_0_i_1_n_0
    );
led_0_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => led_0_i_1_n_0,
      Q => \^led_0\
    );
led_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => data_in(0),
      I1 => ena,
      I2 => \U0/_n_0\,
      I3 => sel(0),
      I4 => sel(1),
      I5 => \^led_1\,
      O => led_1_i_1_n_0
    );
led_1_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => led_1_i_1_n_0,
      Q => \^led_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_IO_Controller_0_0 is
  port (
    clk : in STD_LOGIC;
    ena : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    reset : in STD_LOGIC;
    led_0 : out STD_LOGIC;
    led_1 : out STD_LOGIC;
    btn_0 : in STD_LOGIC;
    btn_1 : in STD_LOGIC;
    done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CPU_IO_Controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CPU_IO_Controller_0_0 : entity is "CPU_IO_Controller_0_0,IO_Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of CPU_IO_Controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of CPU_IO_Controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of CPU_IO_Controller_0_0 : entity is "IO_Controller,Vivado 2024.1.2";
end CPU_IO_Controller_0_0;

architecture STRUCTURE of CPU_IO_Controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  data_out(63) <= \<const0>\;
  data_out(62) <= \<const0>\;
  data_out(61) <= \<const0>\;
  data_out(60) <= \<const0>\;
  data_out(59) <= \<const0>\;
  data_out(58) <= \<const0>\;
  data_out(57) <= \<const0>\;
  data_out(56) <= \<const0>\;
  data_out(55) <= \<const0>\;
  data_out(54) <= \<const0>\;
  data_out(53) <= \<const0>\;
  data_out(52) <= \<const0>\;
  data_out(51) <= \<const0>\;
  data_out(50) <= \<const0>\;
  data_out(49) <= \<const0>\;
  data_out(48) <= \<const0>\;
  data_out(47) <= \<const0>\;
  data_out(46) <= \<const0>\;
  data_out(45) <= \<const0>\;
  data_out(44) <= \<const0>\;
  data_out(43) <= \<const0>\;
  data_out(42) <= \<const0>\;
  data_out(41) <= \<const0>\;
  data_out(40) <= \<const0>\;
  data_out(39) <= \<const0>\;
  data_out(38) <= \<const0>\;
  data_out(37) <= \<const0>\;
  data_out(36) <= \<const0>\;
  data_out(35) <= \<const0>\;
  data_out(34) <= \<const0>\;
  data_out(33) <= \<const0>\;
  data_out(32) <= \<const0>\;
  data_out(31) <= \<const0>\;
  data_out(30) <= \<const0>\;
  data_out(29) <= \<const0>\;
  data_out(28) <= \<const0>\;
  data_out(27) <= \<const0>\;
  data_out(26) <= \<const0>\;
  data_out(25) <= \<const0>\;
  data_out(24) <= \<const0>\;
  data_out(23) <= \<const0>\;
  data_out(22) <= \<const0>\;
  data_out(21) <= \<const0>\;
  data_out(20) <= \<const0>\;
  data_out(19) <= \<const0>\;
  data_out(18) <= \<const0>\;
  data_out(17) <= \<const0>\;
  data_out(16) <= \<const0>\;
  data_out(15) <= \<const0>\;
  data_out(14) <= \<const0>\;
  data_out(13) <= \<const0>\;
  data_out(12) <= \<const0>\;
  data_out(11) <= \<const0>\;
  data_out(10) <= \<const0>\;
  data_out(9) <= \<const0>\;
  data_out(8) <= \<const0>\;
  data_out(7) <= \<const0>\;
  data_out(6) <= \<const0>\;
  data_out(5) <= \<const0>\;
  data_out(4) <= \<const0>\;
  data_out(3) <= \<const0>\;
  data_out(2) <= \<const0>\;
  data_out(1) <= \<const0>\;
  data_out(0) <= \^data_out\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.CPU_IO_Controller_0_0_IO_Controller
     port map (
      btn_0 => btn_0,
      btn_1 => btn_1,
      clk => clk,
      data_in(0) => data_in(0),
      data_out(0) => \^data_out\(0),
      done => done,
      ena => ena,
      led_0 => led_0,
      led_1 => led_1,
      reset => reset,
      sel(4 downto 0) => sel(4 downto 0)
    );
end STRUCTURE;
