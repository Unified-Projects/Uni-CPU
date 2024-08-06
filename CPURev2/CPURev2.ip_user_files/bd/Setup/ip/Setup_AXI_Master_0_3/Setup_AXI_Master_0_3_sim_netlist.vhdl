-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Aug  6 12:45:02 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_AXI_Master_0_3/Setup_AXI_Master_0_3_sim_netlist.vhdl
-- Design      : Setup_AXI_Master_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_AXI_Master_0_3_AXI_Master is
  port (
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    done : out STD_LOGIC;
    start_write : in STD_LOGIC;
    start_read : in STD_LOGIC;
    reset : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_AXI_Master_0_3_AXI_Master : entity is "AXI_Master";
end Setup_AXI_Master_0_3_AXI_Master;

architecture STRUCTURE of Setup_AXI_Master_0_3_AXI_Master is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_ARADDR[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal M_AXI_ARVALID_i_1_n_0 : STD_LOGIC;
  signal M_AXI_ARVALID_i_2_n_0 : STD_LOGIC;
  signal M_AXI_ARVALID_i_3_n_0 : STD_LOGIC;
  signal \M_AXI_AWADDR[31]_i_1_n_0\ : STD_LOGIC;
  signal M_AXI_AWVALID_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal M_AXI_BREADY_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal M_AXI_RREADY_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \^done\ : STD_LOGIC;
  signal done_i_1_n_0 : STD_LOGIC;
  signal \read_data[31]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state0__0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,write_resp:010,read_resp:100,read:011,write:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,write_resp:010,read_resp:100,read:011,write:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,write_resp:010,read_resp:100,read:011,write:001";
  attribute SOFT_HLUTNM of M_AXI_ARVALID_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of M_AXI_ARVALID_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of M_AXI_AWVALID_i_2 : label is "soft_lutpair1";
begin
  M_AXI_ARVALID <= \^m_axi_arvalid\;
  M_AXI_BREADY <= \^m_axi_bready\;
  M_AXI_RREADY <= \^m_axi_rready\;
  M_AXI_WVALID <= \^m_axi_wvalid\;
  done <= \^done\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744477700330000"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(1),
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABF8A8ABABF8080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => M_AXI_RVALID,
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => state(1),
      I5 => \FSM_sequential_state[1]_i_3_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => start_write,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8F80"
    )
        port map (
      I0 => M_AXI_AWREADY,
      I1 => M_AXI_WREADY,
      I2 => state(0),
      I3 => start_write,
      I4 => start_read,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3A303030"
    )
        port map (
      I0 => state(0),
      I1 => M_AXI_RVALID,
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => state(1),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => state(0),
      I2 => M_AXI_BVALID,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2)
    );
\M_AXI_ARADDR[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => state(1),
      I1 => start_write,
      I2 => start_read,
      I3 => state(2),
      I4 => state(0),
      I5 => reset,
      O => \M_AXI_ARADDR[31]_i_1_n_0\
    );
\M_AXI_ARADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(0),
      Q => M_AXI_ARADDR(0),
      R => '0'
    );
\M_AXI_ARADDR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(10),
      Q => M_AXI_ARADDR(10),
      R => '0'
    );
\M_AXI_ARADDR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(11),
      Q => M_AXI_ARADDR(11),
      R => '0'
    );
\M_AXI_ARADDR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(12),
      Q => M_AXI_ARADDR(12),
      R => '0'
    );
\M_AXI_ARADDR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(13),
      Q => M_AXI_ARADDR(13),
      R => '0'
    );
\M_AXI_ARADDR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(14),
      Q => M_AXI_ARADDR(14),
      R => '0'
    );
\M_AXI_ARADDR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(15),
      Q => M_AXI_ARADDR(15),
      R => '0'
    );
\M_AXI_ARADDR_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(16),
      Q => M_AXI_ARADDR(16),
      R => '0'
    );
\M_AXI_ARADDR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(17),
      Q => M_AXI_ARADDR(17),
      R => '0'
    );
\M_AXI_ARADDR_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(18),
      Q => M_AXI_ARADDR(18),
      R => '0'
    );
\M_AXI_ARADDR_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(19),
      Q => M_AXI_ARADDR(19),
      R => '0'
    );
\M_AXI_ARADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(1),
      Q => M_AXI_ARADDR(1),
      R => '0'
    );
\M_AXI_ARADDR_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(20),
      Q => M_AXI_ARADDR(20),
      R => '0'
    );
\M_AXI_ARADDR_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(21),
      Q => M_AXI_ARADDR(21),
      R => '0'
    );
\M_AXI_ARADDR_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(22),
      Q => M_AXI_ARADDR(22),
      R => '0'
    );
\M_AXI_ARADDR_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(23),
      Q => M_AXI_ARADDR(23),
      R => '0'
    );
\M_AXI_ARADDR_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(24),
      Q => M_AXI_ARADDR(24),
      R => '0'
    );
\M_AXI_ARADDR_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(25),
      Q => M_AXI_ARADDR(25),
      R => '0'
    );
\M_AXI_ARADDR_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(26),
      Q => M_AXI_ARADDR(26),
      R => '0'
    );
\M_AXI_ARADDR_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(27),
      Q => M_AXI_ARADDR(27),
      R => '0'
    );
\M_AXI_ARADDR_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(28),
      Q => M_AXI_ARADDR(28),
      R => '0'
    );
\M_AXI_ARADDR_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(29),
      Q => M_AXI_ARADDR(29),
      R => '0'
    );
\M_AXI_ARADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(2),
      Q => M_AXI_ARADDR(2),
      R => '0'
    );
\M_AXI_ARADDR_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(30),
      Q => M_AXI_ARADDR(30),
      R => '0'
    );
\M_AXI_ARADDR_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(31),
      Q => M_AXI_ARADDR(31),
      R => '0'
    );
\M_AXI_ARADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(3),
      Q => M_AXI_ARADDR(3),
      R => '0'
    );
\M_AXI_ARADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(4),
      Q => M_AXI_ARADDR(4),
      R => '0'
    );
\M_AXI_ARADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(5),
      Q => M_AXI_ARADDR(5),
      R => '0'
    );
\M_AXI_ARADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(6),
      Q => M_AXI_ARADDR(6),
      R => '0'
    );
\M_AXI_ARADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(7),
      Q => M_AXI_ARADDR(7),
      R => '0'
    );
\M_AXI_ARADDR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(8),
      Q => M_AXI_ARADDR(8),
      R => '0'
    );
\M_AXI_ARADDR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_ARADDR[31]_i_1_n_0\,
      D => address(9),
      Q => M_AXI_ARADDR(9),
      R => '0'
    );
M_AXI_ARVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7777778B000000"
    )
        port map (
      I0 => M_AXI_ARVALID_i_2_n_0,
      I1 => state(0),
      I2 => start_write,
      I3 => start_read,
      I4 => M_AXI_ARVALID_i_3_n_0,
      I5 => \^m_axi_arvalid\,
      O => M_AXI_ARVALID_i_1_n_0
    );
M_AXI_ARVALID_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => M_AXI_ARREADY,
      O => M_AXI_ARVALID_i_2_n_0
    );
M_AXI_ARVALID_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => M_AXI_ARVALID_i_3_n_0
    );
M_AXI_ARVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => M_AXI_ARVALID_i_1_n_0,
      Q => \^m_axi_arvalid\
    );
\M_AXI_AWADDR[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => state(1),
      I1 => start_write,
      I2 => state(2),
      I3 => state(0),
      I4 => reset,
      O => \M_AXI_AWADDR[31]_i_1_n_0\
    );
\M_AXI_AWADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(0),
      Q => M_AXI_AWADDR(0),
      R => '0'
    );
\M_AXI_AWADDR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(10),
      Q => M_AXI_AWADDR(10),
      R => '0'
    );
\M_AXI_AWADDR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(11),
      Q => M_AXI_AWADDR(11),
      R => '0'
    );
\M_AXI_AWADDR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(12),
      Q => M_AXI_AWADDR(12),
      R => '0'
    );
\M_AXI_AWADDR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(13),
      Q => M_AXI_AWADDR(13),
      R => '0'
    );
\M_AXI_AWADDR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(14),
      Q => M_AXI_AWADDR(14),
      R => '0'
    );
\M_AXI_AWADDR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(15),
      Q => M_AXI_AWADDR(15),
      R => '0'
    );
\M_AXI_AWADDR_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(16),
      Q => M_AXI_AWADDR(16),
      R => '0'
    );
\M_AXI_AWADDR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(17),
      Q => M_AXI_AWADDR(17),
      R => '0'
    );
\M_AXI_AWADDR_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(18),
      Q => M_AXI_AWADDR(18),
      R => '0'
    );
\M_AXI_AWADDR_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(19),
      Q => M_AXI_AWADDR(19),
      R => '0'
    );
\M_AXI_AWADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(1),
      Q => M_AXI_AWADDR(1),
      R => '0'
    );
\M_AXI_AWADDR_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(20),
      Q => M_AXI_AWADDR(20),
      R => '0'
    );
\M_AXI_AWADDR_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(21),
      Q => M_AXI_AWADDR(21),
      R => '0'
    );
\M_AXI_AWADDR_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(22),
      Q => M_AXI_AWADDR(22),
      R => '0'
    );
\M_AXI_AWADDR_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(23),
      Q => M_AXI_AWADDR(23),
      R => '0'
    );
\M_AXI_AWADDR_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(24),
      Q => M_AXI_AWADDR(24),
      R => '0'
    );
\M_AXI_AWADDR_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(25),
      Q => M_AXI_AWADDR(25),
      R => '0'
    );
\M_AXI_AWADDR_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(26),
      Q => M_AXI_AWADDR(26),
      R => '0'
    );
\M_AXI_AWADDR_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(27),
      Q => M_AXI_AWADDR(27),
      R => '0'
    );
\M_AXI_AWADDR_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(28),
      Q => M_AXI_AWADDR(28),
      R => '0'
    );
\M_AXI_AWADDR_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(29),
      Q => M_AXI_AWADDR(29),
      R => '0'
    );
\M_AXI_AWADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(2),
      Q => M_AXI_AWADDR(2),
      R => '0'
    );
\M_AXI_AWADDR_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(30),
      Q => M_AXI_AWADDR(30),
      R => '0'
    );
\M_AXI_AWADDR_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(31),
      Q => M_AXI_AWADDR(31),
      R => '0'
    );
\M_AXI_AWADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(3),
      Q => M_AXI_AWADDR(3),
      R => '0'
    );
\M_AXI_AWADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(4),
      Q => M_AXI_AWADDR(4),
      R => '0'
    );
\M_AXI_AWADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(5),
      Q => M_AXI_AWADDR(5),
      R => '0'
    );
\M_AXI_AWADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(6),
      Q => M_AXI_AWADDR(6),
      R => '0'
    );
\M_AXI_AWADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(7),
      Q => M_AXI_AWADDR(7),
      R => '0'
    );
\M_AXI_AWADDR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(8),
      Q => M_AXI_AWADDR(8),
      R => '0'
    );
\M_AXI_AWADDR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => address(9),
      Q => M_AXI_AWADDR(9),
      R => '0'
    );
M_AXI_AWVALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFFFFF00100010"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => start_write,
      I3 => state(0),
      I4 => \state0__0\,
      I5 => \^m_axi_wvalid\,
      O => M_AXI_AWVALID_i_1_n_0
    );
M_AXI_AWVALID_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXI_AWREADY,
      I1 => M_AXI_WREADY,
      O => \state0__0\
    );
M_AXI_AWVALID_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => M_AXI_AWVALID_i_1_n_0,
      Q => \^m_axi_wvalid\
    );
M_AXI_BREADY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFFFF00080008"
    )
        port map (
      I0 => \state0__0\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => M_AXI_BVALID,
      I5 => \^m_axi_bready\,
      O => M_AXI_BREADY_i_1_n_0
    );
M_AXI_BREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => M_AXI_BREADY_i_1_n_0,
      Q => \^m_axi_bready\
    );
M_AXI_RREADY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFFFF00008080"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => state(0),
      I2 => state(1),
      I3 => M_AXI_RVALID,
      I4 => state(2),
      I5 => \^m_axi_rready\,
      O => M_AXI_RREADY_i_1_n_0
    );
M_AXI_RREADY_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => M_AXI_RREADY_i_1_n_0,
      Q => \^m_axi_rready\
    );
\M_AXI_WDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(0),
      Q => M_AXI_WDATA(0),
      R => '0'
    );
\M_AXI_WDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(10),
      Q => M_AXI_WDATA(10),
      R => '0'
    );
\M_AXI_WDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(11),
      Q => M_AXI_WDATA(11),
      R => '0'
    );
\M_AXI_WDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(12),
      Q => M_AXI_WDATA(12),
      R => '0'
    );
\M_AXI_WDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(13),
      Q => M_AXI_WDATA(13),
      R => '0'
    );
\M_AXI_WDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(14),
      Q => M_AXI_WDATA(14),
      R => '0'
    );
\M_AXI_WDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(15),
      Q => M_AXI_WDATA(15),
      R => '0'
    );
\M_AXI_WDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(16),
      Q => M_AXI_WDATA(16),
      R => '0'
    );
\M_AXI_WDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(17),
      Q => M_AXI_WDATA(17),
      R => '0'
    );
\M_AXI_WDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(18),
      Q => M_AXI_WDATA(18),
      R => '0'
    );
\M_AXI_WDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(19),
      Q => M_AXI_WDATA(19),
      R => '0'
    );
\M_AXI_WDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(1),
      Q => M_AXI_WDATA(1),
      R => '0'
    );
\M_AXI_WDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(20),
      Q => M_AXI_WDATA(20),
      R => '0'
    );
\M_AXI_WDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(21),
      Q => M_AXI_WDATA(21),
      R => '0'
    );
\M_AXI_WDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(22),
      Q => M_AXI_WDATA(22),
      R => '0'
    );
\M_AXI_WDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(23),
      Q => M_AXI_WDATA(23),
      R => '0'
    );
\M_AXI_WDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(24),
      Q => M_AXI_WDATA(24),
      R => '0'
    );
\M_AXI_WDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(25),
      Q => M_AXI_WDATA(25),
      R => '0'
    );
\M_AXI_WDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(26),
      Q => M_AXI_WDATA(26),
      R => '0'
    );
\M_AXI_WDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(27),
      Q => M_AXI_WDATA(27),
      R => '0'
    );
\M_AXI_WDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(28),
      Q => M_AXI_WDATA(28),
      R => '0'
    );
\M_AXI_WDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(29),
      Q => M_AXI_WDATA(29),
      R => '0'
    );
\M_AXI_WDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(2),
      Q => M_AXI_WDATA(2),
      R => '0'
    );
\M_AXI_WDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(30),
      Q => M_AXI_WDATA(30),
      R => '0'
    );
\M_AXI_WDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(31),
      Q => M_AXI_WDATA(31),
      R => '0'
    );
\M_AXI_WDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(3),
      Q => M_AXI_WDATA(3),
      R => '0'
    );
\M_AXI_WDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(4),
      Q => M_AXI_WDATA(4),
      R => '0'
    );
\M_AXI_WDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(5),
      Q => M_AXI_WDATA(5),
      R => '0'
    );
\M_AXI_WDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(6),
      Q => M_AXI_WDATA(6),
      R => '0'
    );
\M_AXI_WDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(7),
      Q => M_AXI_WDATA(7),
      R => '0'
    );
\M_AXI_WDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(8),
      Q => M_AXI_WDATA(8),
      R => '0'
    );
\M_AXI_WDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => write_data(9),
      Q => M_AXI_WDATA(9),
      R => '0'
    );
\M_AXI_WSTRB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \M_AXI_AWADDR[31]_i_1_n_0\,
      D => start_write,
      Q => M_AXI_WSTRB(0),
      R => '0'
    );
done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF05400040"
    )
        port map (
      I0 => state(0),
      I1 => M_AXI_RVALID,
      I2 => state(2),
      I3 => state(1),
      I4 => M_AXI_BVALID,
      I5 => \^done\,
      O => done_i_1_n_0
    );
done_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => done_i_1_n_0,
      Q => \^done\
    );
\read_data[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => state(2),
      I1 => M_AXI_RVALID,
      I2 => state(1),
      I3 => state(0),
      I4 => reset,
      O => \read_data[31]_i_1_n_0\
    );
\read_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(0),
      Q => read_data(0),
      R => '0'
    );
\read_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(10),
      Q => read_data(10),
      R => '0'
    );
\read_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(11),
      Q => read_data(11),
      R => '0'
    );
\read_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(12),
      Q => read_data(12),
      R => '0'
    );
\read_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(13),
      Q => read_data(13),
      R => '0'
    );
\read_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(14),
      Q => read_data(14),
      R => '0'
    );
\read_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(15),
      Q => read_data(15),
      R => '0'
    );
\read_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(16),
      Q => read_data(16),
      R => '0'
    );
\read_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(17),
      Q => read_data(17),
      R => '0'
    );
\read_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(18),
      Q => read_data(18),
      R => '0'
    );
\read_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(19),
      Q => read_data(19),
      R => '0'
    );
\read_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(1),
      Q => read_data(1),
      R => '0'
    );
\read_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(20),
      Q => read_data(20),
      R => '0'
    );
\read_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(21),
      Q => read_data(21),
      R => '0'
    );
\read_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(22),
      Q => read_data(22),
      R => '0'
    );
\read_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(23),
      Q => read_data(23),
      R => '0'
    );
\read_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(24),
      Q => read_data(24),
      R => '0'
    );
\read_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(25),
      Q => read_data(25),
      R => '0'
    );
\read_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(26),
      Q => read_data(26),
      R => '0'
    );
\read_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(27),
      Q => read_data(27),
      R => '0'
    );
\read_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(28),
      Q => read_data(28),
      R => '0'
    );
\read_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(29),
      Q => read_data(29),
      R => '0'
    );
\read_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(2),
      Q => read_data(2),
      R => '0'
    );
\read_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(30),
      Q => read_data(30),
      R => '0'
    );
\read_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(31),
      Q => read_data(31),
      R => '0'
    );
\read_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(3),
      Q => read_data(3),
      R => '0'
    );
\read_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(4),
      Q => read_data(4),
      R => '0'
    );
\read_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(5),
      Q => read_data(5),
      R => '0'
    );
\read_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(6),
      Q => read_data(6),
      R => '0'
    );
\read_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(7),
      Q => read_data(7),
      R => '0'
    );
\read_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(8),
      Q => read_data(8),
      R => '0'
    );
\read_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(9),
      Q => read_data(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_AXI_Master_0_3 is
  port (
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    start_read : in STD_LOGIC;
    start_write : in STD_LOGIC;
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    done : out STD_LOGIC;
    err : out STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Setup_AXI_Master_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_AXI_Master_0_3 : entity is "Setup_AXI_Master_0_3,AXI_Master,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_AXI_Master_0_3 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Setup_AXI_Master_0_3 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Setup_AXI_Master_0_3 : entity is "AXI_Master,Vivado 2024.1";
end Setup_AXI_Master_0_3;

architecture STRUCTURE of Setup_AXI_Master_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute x_interface_info of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute x_interface_info of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute x_interface_info of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute x_interface_info of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute x_interface_info of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute x_interface_info of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute x_interface_info of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute x_interface_info of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute x_interface_info of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET reset, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute x_interface_info of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute x_interface_parameter of M_AXI_AWADDR : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute x_interface_info of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute x_interface_info of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute x_interface_info of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute x_interface_info of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
  M_AXI_AWVALID <= \^m_axi_wvalid\;
  M_AXI_WSTRB(3) <= \^m_axi_wstrb\(2);
  M_AXI_WSTRB(2) <= \^m_axi_wstrb\(2);
  M_AXI_WSTRB(1) <= \^m_axi_wstrb\(2);
  M_AXI_WSTRB(0) <= \^m_axi_wstrb\(2);
  M_AXI_WVALID <= \^m_axi_wvalid\;
  err <= \<const0>\;
  interrupt <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Setup_AXI_Master_0_3_AXI_Master
     port map (
      M_AXI_ARADDR(31 downto 0) => M_AXI_ARADDR(31 downto 0),
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_RDATA(31 downto 0) => M_AXI_RDATA(31 downto 0),
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(0) => \^m_axi_wstrb\(2),
      M_AXI_WVALID => \^m_axi_wvalid\,
      address(31 downto 0) => address(31 downto 0),
      clk => clk,
      done => done,
      read_data(31 downto 0) => read_data(31 downto 0),
      reset => reset,
      start_read => start_read,
      start_write => start_write,
      write_data(31 downto 0) => write_data(31 downto 0)
    );
end STRUCTURE;
