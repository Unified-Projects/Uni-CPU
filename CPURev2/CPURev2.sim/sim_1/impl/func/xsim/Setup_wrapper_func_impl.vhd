-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Aug  6 14:18:21 2024
-- Host        : DESKTOP-PSI4IU2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               Y:/C++/Uni-CPU/CPURev2/CPURev2.sim/sim_1/impl/func/xsim/Setup_wrapper_func_impl.vhd
-- Design      : Setup_wrapper
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
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal M_AXI_ARVALID_i_1_n_0 : STD_LOGIC;
  signal M_AXI_ARVALID_i_2_n_0 : STD_LOGIC;
  signal M_AXI_AWVALID_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal M_AXI_BREADY_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal M_AXI_RREADY_i_1_n_0 : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal \read_data[31]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state0__0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \FSM_sequential_state[1]_i_2\ : label is "RETARGET";
  attribute OPT_MODIFIED of \FSM_sequential_state[1]_i_3\ : label is "RETARGET";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,write_resp:010,read_resp:100,read:011,write:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,write_resp:010,read_resp:100,read:011,write:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,write_resp:010,read_resp:100,read:011,write:001";
  attribute OPT_MODIFIED of M_AXI_ARVALID_i_1 : label is "RETARGET";
  attribute OPT_MODIFIED of M_AXI_AWVALID_i_1 : label is "RETARGET";
begin
  M_AXI_ARVALID <= \^m_axi_arvalid\;
  M_AXI_BREADY <= \^m_axi_bready\;
  M_AXI_RREADY <= \^m_axi_rready\;
  M_AXI_WVALID <= \^m_axi_wvalid\;
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
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => M_AXI_AWREADY,
      I1 => M_AXI_WREADY,
      I2 => state(0),
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
M_AXI_ARVALID_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => M_AXI_ARVALID_i_2_n_0,
      I1 => state(0),
      I2 => \^m_axi_arvalid\,
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
M_AXI_ARVALID_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => M_AXI_ARVALID_i_1_n_0,
      Q => \^m_axi_arvalid\
    );
M_AXI_AWVALID_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF0000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \state0__0\,
      I4 => \^m_axi_wvalid\,
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
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
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
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => M_AXI_RREADY_i_1_n_0,
      Q => \^m_axi_rready\
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
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(0),
      Q => read_data(0),
      R => '0'
    );
\read_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(10),
      Q => read_data(10),
      R => '0'
    );
\read_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(11),
      Q => read_data(11),
      R => '0'
    );
\read_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(12),
      Q => read_data(12),
      R => '0'
    );
\read_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(13),
      Q => read_data(13),
      R => '0'
    );
\read_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(14),
      Q => read_data(14),
      R => '0'
    );
\read_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(15),
      Q => read_data(15),
      R => '0'
    );
\read_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(16),
      Q => read_data(16),
      R => '0'
    );
\read_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(17),
      Q => read_data(17),
      R => '0'
    );
\read_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(18),
      Q => read_data(18),
      R => '0'
    );
\read_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(19),
      Q => read_data(19),
      R => '0'
    );
\read_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(1),
      Q => read_data(1),
      R => '0'
    );
\read_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(20),
      Q => read_data(20),
      R => '0'
    );
\read_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(21),
      Q => read_data(21),
      R => '0'
    );
\read_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(22),
      Q => read_data(22),
      R => '0'
    );
\read_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(23),
      Q => read_data(23),
      R => '0'
    );
\read_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(24),
      Q => read_data(24),
      R => '0'
    );
\read_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(25),
      Q => read_data(25),
      R => '0'
    );
\read_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(26),
      Q => read_data(26),
      R => '0'
    );
\read_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(27),
      Q => read_data(27),
      R => '0'
    );
\read_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(28),
      Q => read_data(28),
      R => '0'
    );
\read_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(29),
      Q => read_data(29),
      R => '0'
    );
\read_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(2),
      Q => read_data(2),
      R => '0'
    );
\read_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(30),
      Q => read_data(30),
      R => '0'
    );
\read_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(31),
      Q => read_data(31),
      R => '0'
    );
\read_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(3),
      Q => read_data(3),
      R => '0'
    );
\read_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(4),
      Q => read_data(4),
      R => '0'
    );
\read_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(5),
      Q => read_data(5),
      R => '0'
    );
\read_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(6),
      Q => read_data(6),
      R => '0'
    );
\read_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(7),
      Q => read_data(7),
      R => '0'
    );
\read_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \read_data[31]_i_1_n_0\,
      D => M_AXI_RDATA(8),
      Q => read_data(8),
      R => '0'
    );
\read_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
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
entity Setup_CPU_0_2 is
  port (
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
    bram_din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_CPU_0_2 : entity is "Setup_CPU_0_2,CPU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_CPU_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Setup_CPU_0_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Setup_CPU_0_2 : entity is "CPU,Vivado 2024.1";
end Setup_CPU_0_2;

architecture STRUCTURE of Setup_CPU_0_2 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  addr(31) <= \<const0>\;
  addr(30) <= \<const0>\;
  addr(29) <= \<const0>\;
  addr(28) <= \<const0>\;
  addr(27) <= \<const0>\;
  addr(26) <= \<const0>\;
  addr(25) <= \<const0>\;
  addr(24) <= \<const0>\;
  addr(23) <= \<const0>\;
  addr(22) <= \<const0>\;
  addr(21) <= \<const0>\;
  addr(20) <= \<const0>\;
  addr(19) <= \<const0>\;
  addr(18) <= \<const0>\;
  addr(17) <= \<const0>\;
  addr(16) <= \<const0>\;
  addr(15) <= \<const0>\;
  addr(14) <= \<const0>\;
  addr(13) <= \<const0>\;
  addr(12) <= \<const0>\;
  addr(11) <= \<const0>\;
  addr(10) <= \<const0>\;
  addr(9) <= \<const0>\;
  addr(8) <= \<const0>\;
  addr(7) <= \<const0>\;
  addr(6) <= \<const0>\;
  addr(5) <= \<const0>\;
  addr(4) <= \<const0>\;
  addr(3) <= \<const0>\;
  addr(2) <= \<const0>\;
  addr(1) <= \<const0>\;
  addr(0) <= \<const0>\;
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
  data_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "axi_protocol_converter_v2_1_31_axi_protocol_converter";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "2'b10";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter : entity is "yes";
end Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter;

architecture STRUCTURE of Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter is
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_arvalid\ : STD_LOGIC;
  signal \^s_axi_awvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  \^m_axi_arready\ <= m_axi_arready;
  \^m_axi_awready\ <= m_axi_awready;
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^m_axi_rdata\(31 downto 0) <= m_axi_rdata(31 downto 0);
  \^m_axi_rvalid\ <= m_axi_rvalid;
  \^m_axi_wready\ <= m_axi_wready;
  \^s_axi_arvalid\ <= s_axi_arvalid;
  \^s_axi_awvalid\ <= s_axi_awvalid;
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wvalid\ <= s_axi_wvalid;
  m_axi_arvalid <= \^s_axi_arvalid\;
  m_axi_awvalid <= \^s_axi_awvalid\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wvalid <= \^s_axi_wvalid\;
  s_axi_arready <= \^m_axi_arready\;
  s_axi_awready <= \^m_axi_awready\;
  s_axi_bvalid <= \^m_axi_bvalid\;
  s_axi_rdata(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
  s_axi_rvalid <= \^m_axi_rvalid\;
  s_axi_wready <= \^m_axi_wready\;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_axi_dwidth_converter_v2_1_31_r_upsizer is
  port (
    first_word : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    use_wrap_buffer : out STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : out STD_LOGIC;
    wrap_buffer_available : out STD_LOGIC;
    \last_beat__6\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sel_first_word__0\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \pre_next_word_1_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_word_1_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    first_word_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q_reg_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \USE_READ.rd_cmd_valid\ : in STD_LOGIC;
    mr_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[2]_0\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[2]_1\ : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    use_wrap_buffer_reg_0 : in STD_LOGIC;
    \rresp_wrap_buffer_reg[1]_0\ : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \MULTIPLE_WORD.current_index\ : in STD_LOGIC;
    use_wrap_buffer_reg_1 : in STD_LOGIC;
    use_wrap_buffer_reg_2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \current_word_1_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_r_upsizer : entity is "axi_dwidth_converter_v2_1_31_r_upsizer";
end Setup_auto_us_0_axi_dwidth_converter_v2_1_31_r_upsizer;

architecture STRUCTURE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_r_upsizer is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^use_rtl_length.first_mi_word_q\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.length_counter_q_reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^first_word\ : STD_LOGIC;
  signal \^last_beat__6\ : STD_LOGIC;
  signal \length_counter__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_rlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal \^use_wrap_buffer\ : STD_LOGIC;
  signal use_wrap_buffer_i_1_n_0 : STD_LOGIC;
  signal \^wrap_buffer_available\ : STD_LOGIC;
  signal \wrap_buffer_available_i_1__0_n_0\ : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[0]_i_1__0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[1]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[1]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[2]_i_1__0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[2]_i_2__0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[3]_i_2__0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[3]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[4]_i_2__0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[0]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[10]_INST_0\ : label is "PROPCONST";
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \s_axi_rdata[10]_INST_0\ : label is 166;
  attribute OPT_MODIFIED of \s_axi_rdata[11]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[12]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[13]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[14]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[15]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[16]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[17]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[18]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[19]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[1]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[20]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[21]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[22]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[23]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[24]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[25]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[26]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[27]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[28]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[29]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[2]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[30]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[31]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[3]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[4]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[5]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[6]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[7]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[8]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[9]_INST_0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of s_axi_rlast_INST_0_i_3 : label is "PROPCONST";
  attribute OPT_MODIFIED of \wrap_buffer_available_i_1__0\ : label is "PROPCONST";
begin
  E(0) <= \^e\(0);
  \USE_RTL_LENGTH.first_mi_word_q\ <= \^use_rtl_length.first_mi_word_q\;
  first_word <= \^first_word\;
  \last_beat__6\ <= \^last_beat__6\;
  use_wrap_buffer <= \^use_wrap_buffer\;
  wrap_buffer_available <= \^wrap_buffer_available\;
\USE_RTL_LENGTH.first_mi_word_q_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.first_mi_word_q_reg_0\,
      Q => \^use_rtl_length.first_mi_word_q\,
      S => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFC000"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I2 => s_axi_rready,
      I3 => p_13_in,
      I4 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      O => \USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA2AAAEAAA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I2 => s_axi_rready,
      I3 => p_13_in,
      I4 => \length_counter__0\(0),
      I5 => \length_counter__0\(1),
      O => \USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      O => \length_counter__0\(0)
    );
\USE_RTL_LENGTH.length_counter_q[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      O => \length_counter__0\(1)
    );
\USE_RTL_LENGTH.length_counter_q[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAABA9A"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg[2]_0\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      I2 => \^use_rtl_length.first_mi_word_q\,
      O => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAA2AAA2AAAEAAA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I2 => s_axi_rready,
      I3 => p_13_in,
      I4 => \USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0\,
      I5 => \length_counter__0\(3),
      O => \USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[3]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      O => \length_counter__0\(3)
    );
\USE_RTL_LENGTH.length_counter_q[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFF7F00800080"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I1 => s_axi_rready,
      I2 => p_13_in,
      I3 => \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\,
      I4 => \^use_rtl_length.first_mi_word_q\,
      I5 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      O => \USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[2]_i_2__0_n_0\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I3 => \^use_rtl_length.first_mi_word_q\,
      O => \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AAAAAAA9AAAAAAA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I1 => \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\,
      I2 => p_13_in,
      I3 => s_axi_rready,
      I4 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      I5 => \^use_rtl_length.first_mi_word_q\,
      O => \USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[4]_i_2__0_n_0\,
      I1 => \^use_rtl_length.first_mi_word_q\,
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      O => \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59CCCCCCCCCCCCCC"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      I2 => \^use_rtl_length.first_mi_word_q\,
      I3 => p_13_in,
      I4 => s_axi_rready,
      I5 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      O => \USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC55C9CCCCCCCC"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      I3 => \^use_rtl_length.first_mi_word_q\,
      I4 => \USE_RTL_LENGTH.length_counter_q_reg[2]_0\,
      I5 => \USE_RTL_LENGTH.length_counter_q_reg[2]_1\,
      O => \USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^use_rtl_length.first_mi_word_q\,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I2 => \USE_RTL_LENGTH.length_counter_q[5]_i_2_n_0\,
      O => \USE_RTL_LENGTH.length_counter_q[7]_i_2__0_n_0\
    );
\USE_RTL_LENGTH.length_counter_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[0]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[1]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[2]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[3]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[4]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[5]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[6]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      R => SR(0)
    );
\USE_RTL_LENGTH.length_counter_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_LENGTH.length_counter_q[7]_i_1__0_n_0\,
      Q => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      R => SR(0)
    );
\current_word_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => \current_word_1_reg[2]_1\(0),
      Q => \current_word_1_reg[2]_0\(0),
      R => SR(0)
    );
\current_word_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => \current_word_1_reg[2]_1\(1),
      Q => \current_word_1_reg[2]_0\(1),
      R => SR(0)
    );
\current_word_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => \current_word_1_reg[2]_1\(2),
      Q => \current_word_1_reg[2]_0\(2),
      R => SR(0)
    );
first_word_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => first_word_reg_0,
      Q => \^first_word\,
      S => SR(0)
    );
\pre_next_word_1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \^use_wrap_buffer\,
      I1 => mr_rvalid,
      I2 => \USE_READ.rd_cmd_valid\,
      I3 => s_axi_rready,
      O => \^e\(0)
    );
\pre_next_word_1[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^first_word\,
      I1 => Q(5),
      O => \sel_first_word__0\
    );
\pre_next_word_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => D(0),
      Q => \pre_next_word_1_reg[2]_0\(0),
      R => SR(0)
    );
\pre_next_word_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => D(1),
      Q => \pre_next_word_1_reg[2]_0\(1),
      R => SR(0)
    );
\pre_next_word_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => D(2),
      Q => \pre_next_word_1_reg[2]_0\(2),
      R => SR(0)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(32),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(42),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(10),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(43),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(11),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(44),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(12),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(45),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(13),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(46),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(14),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(47),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(15),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(48),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(16),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(49),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(17),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(50),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(18),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(51),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(19),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(33),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(52),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(20),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(53),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(21),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(54),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(22),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(55),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(23),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(56),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(24),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(57),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(25),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(58),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(26),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(59),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(27),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(60),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(28),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(61),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(29),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(34),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(2),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(62),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(30),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(63),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(31),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(35),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(3),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(36),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(4),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(37),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(5),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(38),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(6),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(39),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(7),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(40),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(8),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \rresp_wrap_buffer_reg[1]_0\(41),
      I1 => \^use_wrap_buffer\,
      I2 => \MULTIPLE_WORD.current_index\,
      I3 => \rresp_wrap_buffer_reg[1]_0\(9),
      O => s_axi_rdata(9)
    );
s_axi_rlast_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => use_wrap_buffer_reg_0,
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(1),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(0),
      I3 => s_axi_rlast_INST_0_i_6_n_0,
      O => \^last_beat__6\
    );
s_axi_rlast_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg\(2),
      I1 => \USE_RTL_LENGTH.length_counter_q_reg\(3),
      I2 => \USE_RTL_LENGTH.length_counter_q_reg\(4),
      I3 => \USE_RTL_LENGTH.length_counter_q_reg\(5),
      I4 => \USE_RTL_LENGTH.length_counter_q_reg\(7),
      I5 => \USE_RTL_LENGTH.length_counter_q_reg\(6),
      O => s_axi_rlast_INST_0_i_6_n_0
    );
use_wrap_buffer_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => use_wrap_buffer_reg_1,
      I1 => \^last_beat__6\,
      I2 => \^wrap_buffer_available\,
      I3 => use_wrap_buffer_reg_2,
      I4 => \^use_wrap_buffer\,
      O => use_wrap_buffer_i_1_n_0
    );
use_wrap_buffer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => use_wrap_buffer_i_1_n_0,
      Q => \^use_wrap_buffer\,
      R => SR(0)
    );
\wrap_buffer_available_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^last_beat__6\,
      I1 => use_wrap_buffer_reg_1,
      I2 => \^wrap_buffer_available\,
      O => \wrap_buffer_available_i_1__0_n_0\
    );
wrap_buffer_available_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \wrap_buffer_available_i_1__0_n_0\,
      Q => \^wrap_buffer_available\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_axi_dwidth_converter_v2_1_31_w_upsizer is
  port (
    \USE_RTL_CURR_WORD.first_word_q\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_REGISTER.M_AXI_WVALID_q_reg_0\ : out STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : out STD_LOGIC;
    wrap_buffer_available : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wready_0 : out STD_LOGIC;
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]_1\ : out STD_LOGIC;
    \sel_first_word__0\ : out STD_LOGIC;
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]_2\ : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg_1\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q_reg_0\ : in STD_LOGIC;
    wrap_buffer_available_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    p_89_in : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \USE_WRITE.wr_cmd_valid\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_79_in : in STD_LOGIC;
    \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\ : in STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_CURR_WORD.current_word_q_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_w_upsizer : entity is "axi_dwidth_converter_v2_1_31_w_upsizer";
end Setup_auto_us_0_axi_dwidth_converter_v2_1_31_w_upsizer;

architecture STRUCTURE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_w_upsizer is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0\ : STD_LOGIC;
  signal \^use_register.m_axi_wvalid_q_reg_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0\ : STD_LOGIC;
  signal \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\ : STD_LOGIC;
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wstrb_wrap_buffer_3 : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of GND : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_REGISTER.M_AXI_WLAST_q_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1\ : label is "PROPCONST";
begin
  SR(0) <= \^sr\(0);
  \USE_REGISTER.M_AXI_WVALID_q_reg_0\ <= \^use_register.m_axi_wvalid_q_reg_0\;
  m_axi_wdata(63) <= wstrb_wrap_buffer_3;
  m_axi_wdata(62) <= wstrb_wrap_buffer_3;
  m_axi_wdata(61) <= wstrb_wrap_buffer_3;
  m_axi_wdata(60) <= wstrb_wrap_buffer_3;
  m_axi_wdata(59) <= wstrb_wrap_buffer_3;
  m_axi_wdata(58) <= wstrb_wrap_buffer_3;
  m_axi_wdata(57) <= wstrb_wrap_buffer_3;
  m_axi_wdata(56) <= wstrb_wrap_buffer_3;
  m_axi_wdata(55) <= wstrb_wrap_buffer_3;
  m_axi_wdata(54) <= wstrb_wrap_buffer_3;
  m_axi_wdata(53) <= wstrb_wrap_buffer_3;
  m_axi_wdata(52) <= wstrb_wrap_buffer_3;
  m_axi_wdata(51) <= wstrb_wrap_buffer_3;
  m_axi_wdata(50) <= wstrb_wrap_buffer_3;
  m_axi_wdata(49) <= wstrb_wrap_buffer_3;
  m_axi_wdata(48) <= wstrb_wrap_buffer_3;
  m_axi_wdata(47) <= wstrb_wrap_buffer_3;
  m_axi_wdata(46) <= wstrb_wrap_buffer_3;
  m_axi_wdata(45) <= wstrb_wrap_buffer_3;
  m_axi_wdata(44) <= wstrb_wrap_buffer_3;
  m_axi_wdata(43) <= wstrb_wrap_buffer_3;
  m_axi_wdata(42) <= wstrb_wrap_buffer_3;
  m_axi_wdata(41) <= wstrb_wrap_buffer_3;
  m_axi_wdata(40) <= wstrb_wrap_buffer_3;
  m_axi_wdata(39) <= wstrb_wrap_buffer_3;
  m_axi_wdata(38) <= wstrb_wrap_buffer_3;
  m_axi_wdata(37) <= wstrb_wrap_buffer_3;
  m_axi_wdata(36) <= wstrb_wrap_buffer_3;
  m_axi_wdata(35) <= wstrb_wrap_buffer_3;
  m_axi_wdata(34) <= wstrb_wrap_buffer_3;
  m_axi_wdata(33) <= wstrb_wrap_buffer_3;
  m_axi_wdata(32) <= wstrb_wrap_buffer_3;
  m_axi_wdata(31) <= wstrb_wrap_buffer_3;
  m_axi_wdata(30) <= wstrb_wrap_buffer_3;
  m_axi_wdata(29) <= wstrb_wrap_buffer_3;
  m_axi_wdata(28) <= wstrb_wrap_buffer_3;
  m_axi_wdata(27) <= wstrb_wrap_buffer_3;
  m_axi_wdata(26) <= wstrb_wrap_buffer_3;
  m_axi_wdata(25) <= wstrb_wrap_buffer_3;
  m_axi_wdata(24) <= wstrb_wrap_buffer_3;
  m_axi_wdata(23) <= wstrb_wrap_buffer_3;
  m_axi_wdata(22) <= wstrb_wrap_buffer_3;
  m_axi_wdata(21) <= wstrb_wrap_buffer_3;
  m_axi_wdata(20) <= wstrb_wrap_buffer_3;
  m_axi_wdata(19) <= wstrb_wrap_buffer_3;
  m_axi_wdata(18) <= wstrb_wrap_buffer_3;
  m_axi_wdata(17) <= wstrb_wrap_buffer_3;
  m_axi_wdata(16) <= wstrb_wrap_buffer_3;
  m_axi_wdata(15) <= wstrb_wrap_buffer_3;
  m_axi_wdata(14) <= wstrb_wrap_buffer_3;
  m_axi_wdata(13) <= wstrb_wrap_buffer_3;
  m_axi_wdata(12) <= wstrb_wrap_buffer_3;
  m_axi_wdata(11) <= wstrb_wrap_buffer_3;
  m_axi_wdata(10) <= wstrb_wrap_buffer_3;
  m_axi_wdata(9) <= wstrb_wrap_buffer_3;
  m_axi_wdata(8) <= wstrb_wrap_buffer_3;
  m_axi_wdata(7) <= wstrb_wrap_buffer_3;
  m_axi_wdata(6) <= wstrb_wrap_buffer_3;
  m_axi_wdata(5) <= wstrb_wrap_buffer_3;
  m_axi_wdata(4) <= wstrb_wrap_buffer_3;
  m_axi_wdata(3) <= wstrb_wrap_buffer_3;
  m_axi_wdata(2) <= wstrb_wrap_buffer_3;
  m_axi_wdata(1) <= wstrb_wrap_buffer_3;
  m_axi_wdata(0) <= wstrb_wrap_buffer_3;
  m_axi_wlast <= \^m_axi_wlast\;
  m_axi_wstrb(7 downto 0) <= \^m_axi_wstrb\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => wstrb_wrap_buffer_3
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B000"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^use_register.m_axi_wvalid_q_reg_0\,
      I2 => s_axi_wvalid,
      I3 => \USE_WRITE.wr_cmd_valid\,
      O => m_axi_wready_0
    );
\USE_REGISTER.M_AXI_WLAST_q_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^use_register.m_axi_wvalid_q_reg_0\,
      I2 => \^m_axi_wlast\,
      O => \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0\
    );
\USE_REGISTER.M_AXI_WLAST_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_REGISTER.M_AXI_WLAST_q_i_1_n_0\,
      Q => \^m_axi_wlast\,
      R => \^sr\(0)
    );
\USE_REGISTER.M_AXI_WVALID_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_REGISTER.M_AXI_WVALID_q_reg_1\,
      Q => \^use_register.m_axi_wvalid_q_reg_0\,
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(0),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[0]_i_1_n_0\,
      Q => \^m_axi_wstrb\(0),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(1),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[1]_i_1_n_0\,
      Q => \^m_axi_wstrb\(1),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(2),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[2]_i_1_n_0\,
      Q => \^m_axi_wstrb\(2),
      R => \^sr\(0)
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(3),
      O => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0\
    );
\WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[3]_i_1_n_0\,
      Q => \^m_axi_wstrb\(3),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(4),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[4]_i_1_n_0\,
      Q => \^m_axi_wstrb\(4),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(5),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[5]_i_1_n_0\,
      Q => \^m_axi_wstrb\(5),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(6),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[6]_i_1_n_0\,
      Q => \^m_axi_wstrb\(6),
      R => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_RTL_LENGTH.length_counter_q_reg[0]_0\,
      O => \^sr\(0)
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\,
      I1 => \^m_axi_wstrb\(7),
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \^use_register.m_axi_wvalid_q_reg_0\,
      O => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_3_n_0\
    );
\WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WSTRB_I[7]_i_1_n_0\,
      Q => \^m_axi_wstrb\(7),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\ is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    \m_payload_i_reg[66]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 65 downto 0 );
    \out\ : in STD_LOGIC;
    \USE_READ.rd_cmd_valid\ : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rready : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_valid_i_reg_2 : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_31_axic_register_slice";
end \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\;

architecture STRUCTURE of \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\ is
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 66 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[66]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair27";
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of \m_payload_i[12]_i_1\ : label is 196;
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair24";
  attribute \PinAttr:I2:HOLD_DETOUR\ of \m_payload_i[18]_i_1\ : label is 195;
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair19";
  attribute \PinAttr:I2:HOLD_DETOUR\ of \m_payload_i[28]_i_1\ : label is 195;
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair15";
  attribute \PinAttr:I2:HOLD_DETOUR\ of \m_payload_i[36]_i_1\ : label is 180;
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1\ : label is "soft_lutpair14";
  attribute \PinAttr:I2:HOLD_DETOUR\ of \m_payload_i[38]_i_1\ : label is 196;
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[39]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[40]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[41]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_payload_i[42]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_payload_i[43]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_payload_i[44]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_payload_i[45]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_payload_i[46]_i_1\ : label is "soft_lutpair10";
  attribute \PinAttr:I2:HOLD_DETOUR\ of \m_payload_i[47]_i_1\ : label is 171;
  attribute SOFT_HLUTNM of \m_payload_i[47]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[49]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[50]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_payload_i[51]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_payload_i[52]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_payload_i[53]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_payload_i[54]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_payload_i[55]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_payload_i[56]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_payload_i[57]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_payload_i[58]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_payload_i[59]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[60]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_payload_i[61]_i_1\ : label is "soft_lutpair2";
  attribute \PinAttr:I2:HOLD_DETOUR\ of \m_payload_i[62]_i_1\ : label is 181;
  attribute SOFT_HLUTNM of \m_payload_i[62]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_payload_i[63]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_payload_i[66]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair28";
begin
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\USE_RTL_LENGTH.first_mi_word_q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \^m_axi_rlast\,
      I1 => \USE_READ.rd_cmd_valid\,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => p_13_in,
      I5 => \USE_RTL_LENGTH.first_mi_word_q\,
      O => \m_payload_i_reg[66]_0\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \USE_READ.rd_cmd_valid\,
      O => m_valid_i_reg_1
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(32),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(33),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(34),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(35),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(36),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(37),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => skid_buffer(37)
    );
\m_payload_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(38),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => skid_buffer(38)
    );
\m_payload_i[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(39),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[39]\,
      O => skid_buffer(39)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(40),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[40]\,
      O => skid_buffer(40)
    );
\m_payload_i[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(41),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[41]\,
      O => skid_buffer(41)
    );
\m_payload_i[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(42),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[42]\,
      O => skid_buffer(42)
    );
\m_payload_i[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(43),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[43]\,
      O => skid_buffer(43)
    );
\m_payload_i[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(44),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[44]\,
      O => skid_buffer(44)
    );
\m_payload_i[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(45),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[45]\,
      O => skid_buffer(45)
    );
\m_payload_i[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(46),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[46]\,
      O => skid_buffer(46)
    );
\m_payload_i[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(47),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[47]\,
      O => skid_buffer(47)
    );
\m_payload_i[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(48),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[48]\,
      O => skid_buffer(48)
    );
\m_payload_i[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(49),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[49]\,
      O => skid_buffer(49)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(50),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[50]\,
      O => skid_buffer(50)
    );
\m_payload_i[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(51),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[51]\,
      O => skid_buffer(51)
    );
\m_payload_i[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(52),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[52]\,
      O => skid_buffer(52)
    );
\m_payload_i[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(53),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[53]\,
      O => skid_buffer(53)
    );
\m_payload_i[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(54),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[54]\,
      O => skid_buffer(54)
    );
\m_payload_i[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(55),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[55]\,
      O => skid_buffer(55)
    );
\m_payload_i[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(56),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[56]\,
      O => skid_buffer(56)
    );
\m_payload_i[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(57),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[57]\,
      O => skid_buffer(57)
    );
\m_payload_i[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(58),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[58]\,
      O => skid_buffer(58)
    );
\m_payload_i[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(59),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[59]\,
      O => skid_buffer(59)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(60),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[60]\,
      O => skid_buffer(60)
    );
\m_payload_i[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(61),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[61]\,
      O => skid_buffer(61)
    );
\m_payload_i[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(62),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[62]\,
      O => skid_buffer(62)
    );
\m_payload_i[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(63),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[63]\,
      O => skid_buffer(63)
    );
\m_payload_i[66]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[66]\,
      O => skid_buffer(66)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(0),
      Q => Q(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(10),
      Q => Q(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(11),
      Q => Q(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(12),
      Q => Q(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(13),
      Q => Q(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(14),
      Q => Q(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(15),
      Q => Q(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(16),
      Q => Q(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(17),
      Q => Q(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(18),
      Q => Q(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(19),
      Q => Q(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(1),
      Q => Q(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(20),
      Q => Q(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(21),
      Q => Q(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(22),
      Q => Q(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(23),
      Q => Q(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(24),
      Q => Q(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(25),
      Q => Q(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(26),
      Q => Q(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(27),
      Q => Q(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(28),
      Q => Q(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(29),
      Q => Q(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(2),
      Q => Q(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(30),
      Q => Q(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(31),
      Q => Q(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(32),
      Q => Q(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(33),
      Q => Q(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(34),
      Q => Q(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(35),
      Q => Q(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(36),
      Q => Q(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(37),
      Q => Q(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(38),
      Q => Q(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(39),
      Q => Q(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(3),
      Q => Q(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(40),
      Q => Q(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(41),
      Q => Q(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(42),
      Q => Q(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(43),
      Q => Q(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(44),
      Q => Q(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(45),
      Q => Q(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(46),
      Q => Q(46),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(47),
      Q => Q(47),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(48),
      Q => Q(48),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(49),
      Q => Q(49),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(4),
      Q => Q(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(50),
      Q => Q(50),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(51),
      Q => Q(51),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(52),
      Q => Q(52),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(53),
      Q => Q(53),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(54),
      Q => Q(54),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(55),
      Q => Q(55),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(56),
      Q => Q(56),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(57),
      Q => Q(57),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(58),
      Q => Q(58),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(59),
      Q => Q(59),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(5),
      Q => Q(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(60),
      Q => Q(60),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(61),
      Q => Q(61),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(62),
      Q => Q(62),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(63),
      Q => Q(63),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(66),
      Q => \^m_axi_rlast\,
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(6),
      Q => Q(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(7),
      Q => Q(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(8),
      Q => Q(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => E(0),
      D => skid_buffer(9),
      Q => Q(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF70FFFF00000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => p_13_in,
      I2 => \^m_valid_i_reg_0\,
      I3 => m_axi_rvalid,
      I4 => \^s_ready_i_reg_0\,
      I5 => m_valid_i_reg_2,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => \^m_valid_i_reg_0\,
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFF00000000"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \^s_ready_i_reg_0\,
      I2 => s_axi_rready,
      I3 => p_13_in,
      I4 => \^m_valid_i_reg_0\,
      I5 => s_ready_i_reg_1,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_ready_i_reg_0\,
      R => '0'
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(32),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(33),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(34),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(35),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(36),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(37),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(38),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(39),
      Q => \skid_buffer_reg_n_0_[39]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(40),
      Q => \skid_buffer_reg_n_0_[40]\,
      R => '0'
    );
\skid_buffer_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(41),
      Q => \skid_buffer_reg_n_0_[41]\,
      R => '0'
    );
\skid_buffer_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(42),
      Q => \skid_buffer_reg_n_0_[42]\,
      R => '0'
    );
\skid_buffer_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(43),
      Q => \skid_buffer_reg_n_0_[43]\,
      R => '0'
    );
\skid_buffer_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(44),
      Q => \skid_buffer_reg_n_0_[44]\,
      R => '0'
    );
\skid_buffer_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(45),
      Q => \skid_buffer_reg_n_0_[45]\,
      R => '0'
    );
\skid_buffer_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(46),
      Q => \skid_buffer_reg_n_0_[46]\,
      R => '0'
    );
\skid_buffer_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(47),
      Q => \skid_buffer_reg_n_0_[47]\,
      R => '0'
    );
\skid_buffer_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(48),
      Q => \skid_buffer_reg_n_0_[48]\,
      R => '0'
    );
\skid_buffer_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(49),
      Q => \skid_buffer_reg_n_0_[49]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(50),
      Q => \skid_buffer_reg_n_0_[50]\,
      R => '0'
    );
\skid_buffer_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(51),
      Q => \skid_buffer_reg_n_0_[51]\,
      R => '0'
    );
\skid_buffer_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(52),
      Q => \skid_buffer_reg_n_0_[52]\,
      R => '0'
    );
\skid_buffer_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(53),
      Q => \skid_buffer_reg_n_0_[53]\,
      R => '0'
    );
\skid_buffer_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(54),
      Q => \skid_buffer_reg_n_0_[54]\,
      R => '0'
    );
\skid_buffer_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(55),
      Q => \skid_buffer_reg_n_0_[55]\,
      R => '0'
    );
\skid_buffer_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(56),
      Q => \skid_buffer_reg_n_0_[56]\,
      R => '0'
    );
\skid_buffer_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(57),
      Q => \skid_buffer_reg_n_0_[57]\,
      R => '0'
    );
\skid_buffer_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(58),
      Q => \skid_buffer_reg_n_0_[58]\,
      R => '0'
    );
\skid_buffer_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(59),
      Q => \skid_buffer_reg_n_0_[59]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(60),
      Q => \skid_buffer_reg_n_0_[60]\,
      R => '0'
    );
\skid_buffer_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(61),
      Q => \skid_buffer_reg_n_0_[61]\,
      R => '0'
    );
\skid_buffer_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(62),
      Q => \skid_buffer_reg_n_0_[62]\,
      R => '0'
    );
\skid_buffer_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(63),
      Q => \skid_buffer_reg_n_0_[63]\,
      R => '0'
    );
\skid_buffer_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast,
      Q => \skid_buffer_reg_n_0_[66]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[38]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    \m_payload_i_reg[54]_0\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_valid_i_reg_inv_1 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    \m_payload_i_reg[54]_1\ : in STD_LOGIC_VECTOR ( 53 downto 0 );
    s_ready_i_reg_1 : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3\ : entity is "axi_register_slice_v2_1_31_axic_register_slice";
end \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3\;

architecture STRUCTURE of \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_payload_i_reg[38]_0\ : STD_LOGIC_VECTOR ( 23 downto 4 );
  signal m_valid_i_inv_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_araddr : STD_LOGIC_VECTOR ( 2 to 2 );
  signal sr_arburst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sr_arsize : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of GND_1 : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1__0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1__0\ : label is "PROPCONST";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1__0\ : label is "soft_lutpair63";
  attribute OPT_MODIFIED of VCC_1 : label is "PROPCONST";
  attribute OPT_MODIFIED of \m_axi_araddr[0]_INST_0_i_1\ : label is "PROPCONST";
  attribute inverted : string;
  attribute inverted of m_valid_i_reg_inv : label is "yes";
begin
  E(0) <= \^e\(0);
  m_axi_araddr(31) <= sr_araddr(2);
  m_axi_araddr(30) <= sr_araddr(2);
  m_axi_araddr(29) <= sr_araddr(2);
  m_axi_araddr(28) <= sr_araddr(2);
  m_axi_araddr(27) <= sr_araddr(2);
  m_axi_araddr(26) <= sr_araddr(2);
  m_axi_araddr(25) <= sr_araddr(2);
  m_axi_araddr(24) <= sr_araddr(2);
  m_axi_araddr(23) <= sr_araddr(2);
  m_axi_araddr(22) <= sr_araddr(2);
  m_axi_araddr(21) <= sr_araddr(2);
  m_axi_araddr(20) <= sr_araddr(2);
  m_axi_araddr(19) <= sr_araddr(2);
  m_axi_araddr(18) <= sr_araddr(2);
  m_axi_araddr(17) <= sr_araddr(2);
  m_axi_araddr(16) <= sr_araddr(2);
  m_axi_araddr(15) <= sr_araddr(2);
  m_axi_araddr(14) <= sr_araddr(2);
  m_axi_araddr(13) <= sr_araddr(2);
  m_axi_araddr(12) <= sr_araddr(2);
  m_axi_araddr(11) <= sr_araddr(2);
  m_axi_araddr(10) <= sr_araddr(2);
  m_axi_araddr(9) <= sr_araddr(2);
  m_axi_araddr(8) <= sr_araddr(2);
  m_axi_araddr(7) <= sr_araddr(2);
  m_axi_araddr(6) <= sr_araddr(2);
  m_axi_araddr(5) <= sr_araddr(2);
  m_axi_araddr(4) <= sr_araddr(2);
  m_axi_araddr(3) <= sr_araddr(2);
  m_axi_araddr(2) <= sr_araddr(2);
  m_axi_araddr(1) <= sr_araddr(2);
  m_axi_araddr(0) <= sr_araddr(2);
  m_axi_arburst(1) <= sr_araddr(2);
  m_axi_arburst(0) <= sr_arburst(0);
  m_axi_arsize(1) <= sr_arsize(1);
  m_axi_arsize(0) <= sr_araddr(2);
  \m_payload_i_reg[38]_0\(23) <= \^m_payload_i_reg[38]_0\(23);
  \m_payload_i_reg[38]_0\(16) <= sr_arsize(1);
  \m_payload_i_reg[38]_0\(14) <= \^m_payload_i_reg[38]_0\(14);
  \m_payload_i_reg[38]_0\(9) <= \^m_payload_i_reg[38]_0\(9);
  \m_payload_i_reg[38]_0\(8) <= \^m_payload_i_reg[38]_0\(9);
  \m_payload_i_reg[38]_0\(7) <= \^m_payload_i_reg[38]_0\(9);
  \m_payload_i_reg[38]_0\(6) <= sr_arsize(1);
  \m_payload_i_reg[38]_0\(4) <= \^m_payload_i_reg[38]_0\(4);
  \m_payload_i_reg[38]_0\(3) <= sr_araddr(2);
  \m_payload_i_reg[38]_0\(2) <= sr_araddr(2);
  \m_payload_i_reg[38]_0\(1) <= sr_araddr(2);
  \m_payload_i_reg[38]_0\(0) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(12) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(11) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(10) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(9) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(8) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(7) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(6) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(5) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(4) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(3) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(2) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(1) <= sr_araddr(2);
  \m_payload_i_reg[54]_0\(0) <= sr_araddr(2);
  s_axi_arready <= \^s_axi_arready\;
GND_1: unisim.vcomponents.GND
     port map (
      G => sr_araddr(2)
    );
\USE_RTL_FIFO.data_srl_reg[31][20]_srl32_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_arsize(1),
      O => \^m_payload_i_reg[38]_0\(14)
    );
\USE_RTL_FIFO.data_srl_reg[31][29]_srl32_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_arburst(0),
      O => \^m_payload_i_reg[38]_0\(23)
    );
VCC_1: unisim.vcomponents.VCC
     port map (
      P => \^m_payload_i_reg[38]_0\(9)
    );
\m_axi_araddr[0]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sr_arsize(1),
      O => \^m_payload_i_reg[38]_0\(4)
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[54]_1\(36),
      Q => sr_arsize(1),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => \m_payload_i_reg[54]_1\(38),
      Q => sr_arburst(0),
      R => '0'
    );
m_valid_i_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FF80FFFFFFFF"
    )
        port map (
      I0 => m_valid_i_reg_inv_0,
      I1 => m_axi_arready,
      I2 => m_valid_i_reg_inv_1,
      I3 => \^s_axi_arready\,
      I4 => s_axi_arvalid,
      I5 => s_ready_i_reg_0,
      O => m_valid_i_inv_i_1_n_0
    );
m_valid_i_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => '1',
      D => m_valid_i_inv_i_1_n_0,
      Q => \^e\(0),
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57F70000"
    )
        port map (
      I0 => s_ready_i_reg_0,
      I1 => s_ready_i_reg_1,
      I2 => \^e\(0),
      I3 => s_axi_arvalid,
      I4 => s_ready_i_reg_2,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_axi_arready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3_0\ is
  port (
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC;
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_valid_i_reg_inv_1 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 53 downto 0 );
    s_ready_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3_0\ : entity is "axi_register_slice_v2_1_31_axic_register_slice";
end \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3_0\;

architecture STRUCTURE of \Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3_0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \m_valid_i_inv_i_1__0_n_0\ : STD_LOGIC;
  signal s_axi_awlen_ii : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_awburst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sr_awsize : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of GND_1 : label is "PROPCONST";
  attribute inverted : string;
  attribute inverted of m_valid_i_reg_inv : label is "yes";
begin
  E(0) <= \^e\(0);
  Q(38) <= s_axi_awlen_ii(3);
  Q(37) <= s_axi_awlen_ii(3);
  Q(36) <= s_axi_awlen_ii(3);
  Q(35) <= s_axi_awlen_ii(3);
  Q(34) <= s_axi_awlen_ii(3);
  Q(33) <= s_axi_awlen_ii(3);
  Q(32) <= s_axi_awlen_ii(3);
  Q(31) <= s_axi_awlen_ii(3);
  Q(30) <= s_axi_awlen_ii(3);
  Q(29) <= s_axi_awlen_ii(3);
  Q(28) <= s_axi_awlen_ii(3);
  Q(27) <= s_axi_awlen_ii(3);
  Q(26) <= s_axi_awlen_ii(3);
  Q(25) <= s_axi_awlen_ii(3);
  Q(24) <= s_axi_awlen_ii(3);
  Q(23) <= s_axi_awlen_ii(3);
  Q(22) <= s_axi_awlen_ii(3);
  Q(21) <= s_axi_awlen_ii(3);
  Q(20) <= s_axi_awlen_ii(3);
  Q(19) <= s_axi_awlen_ii(3);
  Q(18) <= s_axi_awlen_ii(3);
  Q(17) <= s_axi_awlen_ii(3);
  Q(16) <= s_axi_awlen_ii(3);
  Q(15) <= s_axi_awlen_ii(3);
  Q(14) <= s_axi_awlen_ii(3);
  Q(13) <= s_axi_awlen_ii(3);
  Q(12) <= s_axi_awlen_ii(3);
  Q(11) <= s_axi_awlen_ii(3);
  Q(10) <= s_axi_awlen_ii(3);
  Q(9) <= s_axi_awlen_ii(3);
  Q(8) <= s_axi_awlen_ii(3);
  Q(7) <= s_axi_awlen_ii(3);
  Q(6) <= s_axi_awlen_ii(3);
  Q(5) <= s_axi_awlen_ii(3);
  Q(4) <= s_axi_awlen_ii(3);
  Q(3) <= s_axi_awlen_ii(3);
  Q(2) <= s_axi_awlen_ii(3);
  Q(1) <= s_axi_awlen_ii(3);
  Q(0) <= s_axi_awlen_ii(3);
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \in\(3) <= s_axi_awlen_ii(3);
  \in\(2) <= s_axi_awlen_ii(3);
  \in\(1) <= s_axi_awlen_ii(3);
  \in\(0) <= s_axi_awlen_ii(3);
  m_axi_awaddr(5) <= s_axi_awlen_ii(3);
  m_axi_awaddr(4) <= s_axi_awlen_ii(3);
  m_axi_awaddr(3) <= s_axi_awlen_ii(3);
  m_axi_awaddr(2) <= s_axi_awlen_ii(3);
  m_axi_awaddr(1) <= s_axi_awlen_ii(3);
  m_axi_awaddr(0) <= s_axi_awlen_ii(3);
  m_axi_awburst(1) <= s_axi_awlen_ii(3);
  m_axi_awburst(0) <= sr_awburst(0);
  m_axi_awsize(1) <= sr_awsize(1);
  m_axi_awsize(0) <= s_axi_awlen_ii(3);
  s_axi_awready <= \^s_axi_awready\;
GND_1: unisim.vcomponents.GND
     port map (
      G => s_axi_awlen_ii(3)
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => '1',
      Q => \^aresetn_d_reg[0]_0\,
      R => SR(0)
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \^aresetn_d_reg[0]_0\,
      Q => \^aresetn_d_reg[1]_0\,
      R => SR(0)
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => D(36),
      Q => sr_awsize(1),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \^e\(0),
      D => D(38),
      Q => sr_awburst(0),
      R => '0'
    );
\m_valid_i_inv_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FF80FFFFFFFF"
    )
        port map (
      I0 => m_valid_i_reg_inv_0,
      I1 => m_axi_awready,
      I2 => m_valid_i_reg_inv_1,
      I3 => \^s_axi_awready\,
      I4 => s_axi_awvalid,
      I5 => \^aresetn_d_reg[1]_0\,
      O => \m_valid_i_inv_i_1__0_n_0\
    );
m_valid_i_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \m_valid_i_inv_i_1__0_n_0\,
      Q => \^e\(0),
      R => '0'
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57F70000"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      I1 => s_ready_i_reg_0,
      I2 => \^e\(0),
      I3 => s_axi_awvalid,
      I4 => \^aresetn_d_reg[0]_0\,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_axi_awready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo is
  port (
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ : out STD_LOGIC;
    s_axi_wlast_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0\ : out STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    p_79_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : out STD_LOGIC;
    cmd_push_block0 : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    s_axi_wlast_1 : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ : out STD_LOGIC;
    s_axi_wlast_2 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg_0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.current_word_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.first_word_q\ : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo : entity is "generic_baseblocks_v2_1_2_command_fifo";
end Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo;

architecture STRUCTURE of Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo is
  signal M_READY_I : STD_LOGIC;
  signal \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\ : STD_LOGIC;
  signal \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_3_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \USE_RTL_VALID_WRITE.buffer_Full_q\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\ : STD_LOGIC;
  signal \buffer_Empty__3\ : STD_LOGIC;
  signal data_Exists_I : STD_LOGIC;
  signal next_Data_Exists : STD_LOGIC;
  signal valid_Write : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \USE_REGISTER.M_AXI_WVALID_q_i_1\ : label is "PROPCONST";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[2]_i_1\ : label is "soft_lutpair53";
  attribute OPT_MODIFIED of \USE_RTL_ADDR.addr_q[4]_i_3\ : label is "RETARGET";
  attribute OPT_MODIFIED of s_axi_wready_INST_0 : label is "PROPCONST";
begin
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ <= \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\;
  \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\ <= \USE_RTL_LENGTH.length_counter_q_reg[1]_0\;
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => M_READY_I
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => data_Exists_I,
      Q => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      R => SR(0)
    );
\USE_REGISTER.M_AXI_WVALID_q_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => s_axi_wvalid,
      I2 => m_axi_wready,
      I3 => \USE_REGISTER.M_AXI_WVALID_q_reg_0\,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\
    );
\USE_RTL_ADDR.addr_q[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_ADDR.addr_q[0]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(1),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => cmd_push_block,
      I3 => E(0),
      I4 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I5 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[1]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9A96AA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[2]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAA9A9AAA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(3),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      I5 => \USE_RTL_ADDR.addr_q_reg\(2),
      O => \USE_RTL_ADDR.addr_q[3]_i_1_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444300000000"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => M_READY_I,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => E(0),
      I4 => cmd_push_block,
      I5 => data_Exists_I,
      O => \USE_RTL_ADDR.addr_q\
    );
\USE_RTL_ADDR.addr_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(4),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => \USE_RTL_ADDR.addr_q[4]_i_3_n_0\,
      I4 => \USE_RTL_ADDR.addr_q_reg\(2),
      I5 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \USE_RTL_ADDR.addr_q[4]_i_2_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[29]_0\,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => E(0),
      I4 => cmd_push_block,
      O => \USE_RTL_ADDR.addr_q[4]_i_3_n_0\
    );
\USE_RTL_ADDR.addr_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[0]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(0),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[1]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(1),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[2]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(2),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[3]_i_1_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(3),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[4]_i_2_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(4),
      R => SR(0)
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cmd_push_block,
      I1 => E(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => valid_Write
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00100000"
    )
        port map (
      I0 => E(0),
      I1 => cmd_push_block,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\,
      I3 => M_READY_I,
      I4 => data_Exists_I,
      I5 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(3),
      I2 => \USE_RTL_ADDR.addr_q_reg\(4),
      I3 => \USE_RTL_ADDR.addr_q_reg\(1),
      I4 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1_n_0\,
      Q => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      R => SR(0)
    );
cmd_push_block_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1101"
    )
        port map (
      I0 => m_axi_awready,
      I1 => E(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => cmd_push_block0
    );
data_Exists_I_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FFFF00020002"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I2 => E(0),
      I3 => cmd_push_block,
      I4 => M_READY_I,
      I5 => data_Exists_I,
      O => next_Data_Exists
    );
data_Exists_I_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      I1 => \USE_RTL_ADDR.addr_q_reg\(1),
      I2 => \USE_RTL_ADDR.addr_q_reg\(2),
      I3 => \USE_RTL_ADDR.addr_q_reg\(4),
      I4 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \buffer_Empty__3\
    );
data_Exists_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => next_Data_Exists,
      Q => data_Exists_I,
      R => SR(0)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I1 => cmd_push_block,
      I2 => E(0),
      O => m_axi_awvalid
    );
m_valid_i_inv_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cmd_push_block,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => cmd_push_block_reg
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => m_axi_wready,
      I1 => \USE_REGISTER.M_AXI_WVALID_q_reg_0\,
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => s_axi_wready
    );
s_ready_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F7"
    )
        port map (
      I0 => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\,
      I1 => m_axi_awready,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => s_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo_1 is
  port (
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_13_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pre_next_word_1_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \MULTIPLE_WORD.current_index\ : out STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC;
    cmd_push_block0 : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    use_wrap_buffer : in STD_LOGIC;
    mr_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    m_axi_arvalid_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_beat__6\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    \current_word_1_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    first_word : in STD_LOGIC;
    first_word_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo_1 : entity is "generic_baseblocks_v2_1_2_command_fifo";
end Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo_1;

architecture STRUCTURE of Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo_1 is
  signal M_READY_I : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\ : STD_LOGIC;
  signal \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \USE_READ.rd_cmd_mask\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_RTL_ADDR.addr_q\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_ADDR.addr_q_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\ : STD_LOGIC;
  signal \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\ : STD_LOGIC;
  signal \^use_rtl_length.first_mi_word_q\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0\ : STD_LOGIC;
  signal \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0\ : STD_LOGIC;
  signal \buffer_Empty__3\ : STD_LOGIC;
  signal data_Exists_I : STD_LOGIC;
  signal next_Data_Exists : STD_LOGIC;
  signal \^p_13_in\ : STD_LOGIC;
  signal \pre_next_word_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \pre_next_word_1[2]_i_3_n_0\ : STD_LOGIC;
  signal \^pre_next_word_1_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_axi_rlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axi_rlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_ready_i_i_3_n_0 : STD_LOGIC;
  signal valid_Write : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \USE_RTL_ADDR.addr_q[0]_i_1__0\ : label is 192;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[0]_i_1__0\ : label is "soft_lutpair38";
  attribute \PinAttr:I1:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I1:HOLD_DETOUR\ of \USE_RTL_ADDR.addr_q[2]_i_1__0\ : label is 192;
  attribute SOFT_HLUTNM of \USE_RTL_ADDR.addr_q[2]_i_1__0\ : label is "soft_lutpair38";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][10]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][10]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][10]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][11]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][11]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][11]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][12]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][12]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][12]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][13]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][13]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][13]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][20]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][20]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][22]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][22]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][29]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][29]_srl32 ";
  attribute srl_bus_name of \USE_RTL_FIFO.data_srl_reg[31][8]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31] ";
  attribute srl_name of \USE_RTL_FIFO.data_srl_reg[31][8]_srl32\ : label is "inst/\gen_upsizer.gen_full_upsizer.axi_upsizer_inst/USE_READ.read_addr_inst/GEN_CMD_QUEUE.cmd_queue/USE_RTL_FIFO.data_srl_reg[31][8]_srl32 ";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \USE_RTL_LENGTH.length_counter_q[7]_i_3\ : label is "PROPCONST";
  attribute \PinAttr:I1:HOLD_DETOUR\ of \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0\ : label is 245;
  attribute OPT_MODIFIED of \current_word_1[1]_i_1\ : label is "PROPCONST";
  attribute \PinAttr:I0:HOLD_DETOUR\ of \current_word_1[1]_i_1\ : label is 171;
  attribute \PinAttr:I3:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I3:HOLD_DETOUR\ of \current_word_1[1]_i_1\ : label is 189;
  attribute \PinAttr:I3:HOLD_DETOUR\ of \data_Exists_I_i_1__0\ : label is 246;
  attribute OPT_MODIFIED of \pre_next_word_1[1]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \pre_next_word_1[2]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_axi_rdata[31]_INST_0_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of s_axi_rlast_INST_0 : label is "PROPCONST";
  attribute OPT_MODIFIED of s_axi_rlast_INST_0_i_1 : label is "PROPCONST";
  attribute OPT_MODIFIED of s_axi_rlast_INST_0_i_2 : label is "PROPCONST";
  attribute OPT_MODIFIED of s_axi_rlast_INST_0_i_4 : label is "PROPCONST";
  attribute OPT_MODIFIED of \s_ready_i_i_2__0\ : label is "PROPCONST";
  attribute OPT_MODIFIED of s_ready_i_i_3 : label is "PROPCONST";
  attribute OPT_MODIFIED of s_ready_i_i_4 : label is "PROPCONST";
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of s_ready_i_i_4 : label is 189;
  attribute OPT_MODIFIED of use_wrap_buffer_i_2 : label is "PROPCONST";
begin
  Q(5) <= \^q\(5);
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0\ <= \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\;
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ <= \^use_rtl_length.first_mi_word_q\;
  \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ <= \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\;
  \^use_rtl_length.first_mi_word_q\ <= \USE_RTL_LENGTH.first_mi_word_q\;
  p_13_in <= \^p_13_in\;
  \pre_next_word_1_reg[2]\(2 downto 0) <= \^pre_next_word_1_reg[2]\(2 downto 0);
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A800FFFF"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      I1 => use_wrap_buffer,
      I2 => mr_rvalid,
      I3 => s_axi_rready,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => M_READY_I
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_mask\(0),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_mask\(1),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\,
      Q => \USE_READ.rd_cmd_mask\(2),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\,
      Q => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\,
      R => SR(0)
    );
\USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => M_READY_I,
      D => data_Exists_I,
      Q => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_ADDR.addr_q[0]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999996"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(1),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => cmd_push_block,
      I3 => m_axi_arvalid_0(0),
      I4 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I5 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[1]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9A96AA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      O => \USE_RTL_ADDR.addr_q[2]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAA9A9AAA9"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(3),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => valid_Write,
      I4 => M_READY_I,
      I5 => \USE_RTL_ADDR.addr_q_reg\(2),
      O => \USE_RTL_ADDR.addr_q[3]_i_1__0_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444300000000"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => M_READY_I,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => m_axi_arvalid_0(0),
      I4 => cmd_push_block,
      I5 => data_Exists_I,
      O => \USE_RTL_ADDR.addr_q\
    );
\USE_RTL_ADDR.addr_q[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(4),
      I1 => \USE_RTL_ADDR.addr_q_reg\(0),
      I2 => \USE_RTL_ADDR.addr_q_reg\(1),
      I3 => \USE_RTL_ADDR.addr_q[4]_i_3__0_n_0\,
      I4 => \USE_RTL_ADDR.addr_q_reg\(2),
      I5 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \USE_RTL_ADDR.addr_q[4]_i_2__0_n_0\
    );
\USE_RTL_ADDR.addr_q[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD55555FFFFFFFF"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => s_axi_rready,
      I2 => mr_rvalid,
      I3 => use_wrap_buffer,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      I5 => valid_Write,
      O => \USE_RTL_ADDR.addr_q[4]_i_3__0_n_0\
    );
\USE_RTL_ADDR.addr_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[0]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(0),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[1]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(1),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[2]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(2),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[3]_i_1__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(3),
      R => SR(0)
    );
\USE_RTL_ADDR.addr_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => \USE_RTL_ADDR.addr_q\,
      D => \USE_RTL_ADDR.addr_q[4]_i_2__0_n_0\,
      Q => \USE_RTL_ADDR.addr_q_reg\(4),
      R => SR(0)
    );
\USE_RTL_FIFO.data_srl_reg[31][0]_srl32_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => cmd_push_block,
      I1 => m_axi_arvalid_0(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => valid_Write
    );
\USE_RTL_FIFO.data_srl_reg[31][10]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(6),
      Q => \USE_RTL_FIFO.data_srl_reg[31][10]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][10]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][11]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(7),
      Q => \USE_RTL_FIFO.data_srl_reg[31][11]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][11]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][12]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(8),
      Q => \USE_RTL_FIFO.data_srl_reg[31][12]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][12]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][13]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(9),
      Q => \USE_RTL_FIFO.data_srl_reg[31][13]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][13]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][20]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(14),
      Q => \USE_RTL_FIFO.data_srl_reg[31][20]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][20]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][22]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(16),
      Q => \USE_RTL_FIFO.data_srl_reg[31][22]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][22]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][29]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(23),
      Q => \USE_RTL_FIFO.data_srl_reg[31][29]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][29]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_FIFO.data_srl_reg[31][8]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => \USE_RTL_ADDR.addr_q_reg\(4 downto 0),
      CE => valid_Write,
      CLK => \out\,
      D => \in\(4),
      Q => \USE_RTL_FIFO.data_srl_reg[31][8]_srl32_n_0\,
      Q31 => \NLW_USE_RTL_FIFO.data_srl_reg[31][8]_srl32_Q31_UNCONNECTED\
    );
\USE_RTL_LENGTH.length_counter_q[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => s_ready_i_i_3_n_0,
      I2 => s_axi_rready,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00100000"
    )
        port map (
      I0 => m_axi_arvalid_0(0),
      I1 => cmd_push_block,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0\,
      I3 => M_READY_I,
      I4 => data_Exists_I,
      I5 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(2),
      I1 => \USE_RTL_ADDR.addr_q_reg\(3),
      I2 => \USE_RTL_ADDR.addr_q_reg\(4),
      I3 => \USE_RTL_ADDR.addr_q_reg\(1),
      I4 => \USE_RTL_ADDR.addr_q_reg\(0),
      O => \USE_RTL_VALID_WRITE.buffer_Full_q_i_2__0_n_0\
    );
\USE_RTL_VALID_WRITE.buffer_Full_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \USE_RTL_VALID_WRITE.buffer_Full_q_i_1__0_n_0\,
      Q => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      R => SR(0)
    );
\cmd_push_block_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1101"
    )
        port map (
      I0 => m_axi_arready,
      I1 => m_axi_arvalid_0(0),
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => cmd_push_block0
    );
\current_word_1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE020000"
    )
        port map (
      I0 => \current_word_1_reg[2]\(0),
      I1 => \^q\(5),
      I2 => first_word,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      I4 => \USE_READ.rd_cmd_mask\(0),
      O => \^pre_next_word_1_reg[2]\(0)
    );
\current_word_1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \USE_READ.rd_cmd_mask\(1),
      I1 => first_word,
      I2 => \^q\(5),
      I3 => \current_word_1_reg[2]\(1),
      O => \^pre_next_word_1_reg[2]\(1)
    );
\current_word_1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE020000"
    )
        port map (
      I0 => \current_word_1_reg[2]\(2),
      I1 => \^q\(5),
      I2 => first_word,
      I3 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      I4 => \USE_READ.rd_cmd_mask\(2),
      O => \^pre_next_word_1_reg[2]\(2)
    );
\data_Exists_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FFFF00020002"
    )
        port map (
      I0 => \buffer_Empty__3\,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I2 => m_axi_arvalid_0(0),
      I3 => cmd_push_block,
      I4 => M_READY_I,
      I5 => data_Exists_I,
      O => next_Data_Exists
    );
\data_Exists_I_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \USE_RTL_ADDR.addr_q_reg\(0),
      I1 => \USE_RTL_ADDR.addr_q_reg\(1),
      I2 => \USE_RTL_ADDR.addr_q_reg\(2),
      I3 => \USE_RTL_ADDR.addr_q_reg\(4),
      I4 => \USE_RTL_ADDR.addr_q_reg\(3),
      O => \buffer_Empty__3\
    );
data_Exists_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => next_Data_Exists,
      Q => data_Exists_I,
      R => SR(0)
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I1 => cmd_push_block,
      I2 => m_axi_arvalid_0(0),
      O => m_axi_arvalid
    );
\m_payload_i[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^p_13_in\,
      I2 => mr_rvalid,
      O => s_axi_rready_0(0)
    );
\m_valid_i_inv_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cmd_push_block,
      I1 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      O => cmd_push_block_reg
    );
\pre_next_word_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54570000ABA80000"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      I1 => first_word,
      I2 => \^q\(5),
      I3 => \current_word_1_reg[2]\(0),
      I4 => \USE_READ.rd_cmd_mask\(0),
      I5 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\,
      O => D(0)
    );
\pre_next_word_1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20D0"
    )
        port map (
      I0 => \current_word_1_reg[2]\(1),
      I1 => \sel_first_word__0\,
      I2 => \USE_READ.rd_cmd_mask\(1),
      I3 => \pre_next_word_1[1]_i_2_n_0\,
      O => D(1)
    );
\pre_next_word_1[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557FFF7"
    )
        port map (
      I0 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[8]\,
      I1 => \current_word_1_reg[2]\(0),
      I2 => \^q\(5),
      I3 => first_word,
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[20]\,
      O => \pre_next_word_1[1]_i_2_n_0\
    );
\pre_next_word_1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A95656A00000000"
    )
        port map (
      I0 => \pre_next_word_1[2]_i_3_n_0\,
      I1 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[22]\,
      I2 => \sel_first_word__0\,
      I3 => \current_word_1_reg[2]\(2),
      I4 => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg_n_0_[10]\,
      I5 => \USE_READ.rd_cmd_mask\(2),
      O => D(2)
    );
\pre_next_word_1[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \pre_next_word_1[1]_i_2_n_0\,
      I1 => first_word,
      I2 => \^q\(5),
      I3 => \current_word_1_reg[2]\(1),
      O => \pre_next_word_1[2]_i_3_n_0\
    );
\s_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => first_word_reg(2),
      I1 => \^q\(5),
      I2 => first_word,
      O => \MULTIPLE_WORD.current_index\
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404440"
    )
        port map (
      I0 => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2\(2),
      I1 => s_axi_rlast_INST_0_i_2_n_0,
      I2 => use_wrap_buffer,
      I3 => \last_beat__6\,
      I4 => wrap_buffer_available,
      O => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\
    );
s_axi_rlast_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => first_word,
      I1 => \^q\(5),
      I2 => first_word_reg(2),
      O => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/current_word__2\(2)
    );
s_axi_rlast_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => first_word,
      I1 => \^q\(5),
      I2 => first_word_reg(0),
      I3 => s_axi_rlast_INST_0_i_4_n_0,
      O => s_axi_rlast_INST_0_i_2_n_0
    );
s_axi_rlast_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => first_word_reg(1),
      I1 => \^q\(5),
      I2 => first_word,
      O => s_axi_rlast_INST_0_i_4_n_0
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => mr_rvalid,
      I2 => use_wrap_buffer,
      O => s_axi_rvalid
    );
\s_ready_i_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_ready_i_i_3_n_0,
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      O => \^p_13_in\
    );
\s_ready_i_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F7"
    )
        port map (
      I0 => s_ready_i_reg,
      I1 => m_axi_arready,
      I2 => \USE_RTL_VALID_WRITE.buffer_Full_q\,
      I3 => cmd_push_block,
      O => s_axi_aresetn
    );
s_ready_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2\(1),
      I1 => \USE_READ.rd_cmd_mask\(1),
      I2 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I3 => \^pre_next_word_1_reg[2]\(2),
      I4 => \^pre_next_word_1_reg[2]\(0),
      O => s_ready_i_i_3_n_0
    );
s_ready_i_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => first_word,
      I1 => \^q\(5),
      I2 => \current_word_1_reg[2]\(1),
      O => \USE_READ.gen_non_fifo_r_upsizer.read_data_inst/next_word_i__2\(1)
    );
use_wrap_buffer_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => E(0),
      I1 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I2 => s_ready_i_i_3_n_0,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\
    );
use_wrap_buffer_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => \^use_ff_out.use_rtl_output_pipeline.m_valid_q_reg_0\,
      I1 => use_wrap_buffer,
      I2 => mr_rvalid,
      I3 => s_axi_rready,
      I4 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]_0\,
      O => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 is
  port (
    CAN0_PHY_TX : out STD_LOGIC;
    CAN0_PHY_RX : in STD_LOGIC;
    CAN1_PHY_TX : out STD_LOGIC;
    CAN1_PHY_RX : in STD_LOGIC;
    ENET0_GMII_TX_EN : out STD_LOGIC;
    ENET0_GMII_TX_ER : out STD_LOGIC;
    ENET0_MDIO_MDC : out STD_LOGIC;
    ENET0_MDIO_O : out STD_LOGIC;
    ENET0_MDIO_T : out STD_LOGIC;
    ENET0_PTP_DELAY_REQ_RX : out STD_LOGIC;
    ENET0_PTP_DELAY_REQ_TX : out STD_LOGIC;
    ENET0_PTP_PDELAY_REQ_RX : out STD_LOGIC;
    ENET0_PTP_PDELAY_REQ_TX : out STD_LOGIC;
    ENET0_PTP_PDELAY_RESP_RX : out STD_LOGIC;
    ENET0_PTP_PDELAY_RESP_TX : out STD_LOGIC;
    ENET0_PTP_SYNC_FRAME_RX : out STD_LOGIC;
    ENET0_PTP_SYNC_FRAME_TX : out STD_LOGIC;
    ENET0_SOF_RX : out STD_LOGIC;
    ENET0_SOF_TX : out STD_LOGIC;
    ENET0_GMII_TXD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET0_GMII_COL : in STD_LOGIC;
    ENET0_GMII_CRS : in STD_LOGIC;
    ENET0_GMII_RX_CLK : in STD_LOGIC;
    ENET0_GMII_RX_DV : in STD_LOGIC;
    ENET0_GMII_RX_ER : in STD_LOGIC;
    ENET0_GMII_TX_CLK : in STD_LOGIC;
    ENET0_MDIO_I : in STD_LOGIC;
    ENET0_EXT_INTIN : in STD_LOGIC;
    ENET0_GMII_RXD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET1_GMII_TX_EN : out STD_LOGIC;
    ENET1_GMII_TX_ER : out STD_LOGIC;
    ENET1_MDIO_MDC : out STD_LOGIC;
    ENET1_MDIO_O : out STD_LOGIC;
    ENET1_MDIO_T : out STD_LOGIC;
    ENET1_PTP_DELAY_REQ_RX : out STD_LOGIC;
    ENET1_PTP_DELAY_REQ_TX : out STD_LOGIC;
    ENET1_PTP_PDELAY_REQ_RX : out STD_LOGIC;
    ENET1_PTP_PDELAY_REQ_TX : out STD_LOGIC;
    ENET1_PTP_PDELAY_RESP_RX : out STD_LOGIC;
    ENET1_PTP_PDELAY_RESP_TX : out STD_LOGIC;
    ENET1_PTP_SYNC_FRAME_RX : out STD_LOGIC;
    ENET1_PTP_SYNC_FRAME_TX : out STD_LOGIC;
    ENET1_SOF_RX : out STD_LOGIC;
    ENET1_SOF_TX : out STD_LOGIC;
    ENET1_GMII_TXD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET1_GMII_COL : in STD_LOGIC;
    ENET1_GMII_CRS : in STD_LOGIC;
    ENET1_GMII_RX_CLK : in STD_LOGIC;
    ENET1_GMII_RX_DV : in STD_LOGIC;
    ENET1_GMII_RX_ER : in STD_LOGIC;
    ENET1_GMII_TX_CLK : in STD_LOGIC;
    ENET1_MDIO_I : in STD_LOGIC;
    ENET1_EXT_INTIN : in STD_LOGIC;
    ENET1_GMII_RXD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GPIO_I : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GPIO_T : out STD_LOGIC_VECTOR ( 63 downto 0 );
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    I2C1_SDA_I : in STD_LOGIC;
    I2C1_SDA_O : out STD_LOGIC;
    I2C1_SDA_T : out STD_LOGIC;
    I2C1_SCL_I : in STD_LOGIC;
    I2C1_SCL_O : out STD_LOGIC;
    I2C1_SCL_T : out STD_LOGIC;
    PJTAG_TCK : in STD_LOGIC;
    PJTAG_TMS : in STD_LOGIC;
    PJTAG_TDI : in STD_LOGIC;
    PJTAG_TDO : out STD_LOGIC;
    SDIO0_CLK : out STD_LOGIC;
    SDIO0_CLK_FB : in STD_LOGIC;
    SDIO0_CMD_O : out STD_LOGIC;
    SDIO0_CMD_I : in STD_LOGIC;
    SDIO0_CMD_T : out STD_LOGIC;
    SDIO0_DATA_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO0_DATA_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO0_DATA_T : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO0_LED : out STD_LOGIC;
    SDIO0_CDN : in STD_LOGIC;
    SDIO0_WP : in STD_LOGIC;
    SDIO0_BUSPOW : out STD_LOGIC;
    SDIO0_BUSVOLT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SDIO1_CLK : out STD_LOGIC;
    SDIO1_CLK_FB : in STD_LOGIC;
    SDIO1_CMD_O : out STD_LOGIC;
    SDIO1_CMD_I : in STD_LOGIC;
    SDIO1_CMD_T : out STD_LOGIC;
    SDIO1_DATA_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO1_DATA_O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO1_DATA_T : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SDIO1_LED : out STD_LOGIC;
    SDIO1_CDN : in STD_LOGIC;
    SDIO1_WP : in STD_LOGIC;
    SDIO1_BUSPOW : out STD_LOGIC;
    SDIO1_BUSVOLT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SPI0_SCLK_I : in STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SCLK_T : out STD_LOGIC;
    SPI0_MOSI_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MOSI_T : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MISO_O : out STD_LOGIC;
    SPI0_MISO_T : out STD_LOGIC;
    SPI0_SS_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_T : out STD_LOGIC;
    SPI1_SCLK_I : in STD_LOGIC;
    SPI1_SCLK_O : out STD_LOGIC;
    SPI1_SCLK_T : out STD_LOGIC;
    SPI1_MOSI_I : in STD_LOGIC;
    SPI1_MOSI_O : out STD_LOGIC;
    SPI1_MOSI_T : out STD_LOGIC;
    SPI1_MISO_I : in STD_LOGIC;
    SPI1_MISO_O : out STD_LOGIC;
    SPI1_MISO_T : out STD_LOGIC;
    SPI1_SS_I : in STD_LOGIC;
    SPI1_SS_O : out STD_LOGIC;
    SPI1_SS1_O : out STD_LOGIC;
    SPI1_SS2_O : out STD_LOGIC;
    SPI1_SS_T : out STD_LOGIC;
    UART0_DTRN : out STD_LOGIC;
    UART0_RTSN : out STD_LOGIC;
    UART0_TX : out STD_LOGIC;
    UART0_CTSN : in STD_LOGIC;
    UART0_DCDN : in STD_LOGIC;
    UART0_DSRN : in STD_LOGIC;
    UART0_RIN : in STD_LOGIC;
    UART0_RX : in STD_LOGIC;
    UART1_DTRN : out STD_LOGIC;
    UART1_RTSN : out STD_LOGIC;
    UART1_TX : out STD_LOGIC;
    UART1_CTSN : in STD_LOGIC;
    UART1_DCDN : in STD_LOGIC;
    UART1_DSRN : in STD_LOGIC;
    UART1_RIN : in STD_LOGIC;
    UART1_RX : in STD_LOGIC;
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    TTC0_CLK0_IN : in STD_LOGIC;
    TTC0_CLK1_IN : in STD_LOGIC;
    TTC0_CLK2_IN : in STD_LOGIC;
    TTC1_WAVE0_OUT : out STD_LOGIC;
    TTC1_WAVE1_OUT : out STD_LOGIC;
    TTC1_WAVE2_OUT : out STD_LOGIC;
    TTC1_CLK0_IN : in STD_LOGIC;
    TTC1_CLK1_IN : in STD_LOGIC;
    TTC1_CLK2_IN : in STD_LOGIC;
    WDT_CLK_IN : in STD_LOGIC;
    WDT_RST_OUT : out STD_LOGIC;
    TRACE_CLK : in STD_LOGIC;
    TRACE_CTL : out STD_LOGIC;
    TRACE_DATA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TRACE_CLK_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    USB1_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB1_VBUS_PWRSELECT : out STD_LOGIC;
    USB1_VBUS_PWRFAULT : in STD_LOGIC;
    SRAM_INTIN : in STD_LOGIC;
    M_AXI_GP0_ARESETN : out STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_ARESETN : out STD_LOGIC;
    M_AXI_GP1_ARVALID : out STD_LOGIC;
    M_AXI_GP1_AWVALID : out STD_LOGIC;
    M_AXI_GP1_BREADY : out STD_LOGIC;
    M_AXI_GP1_RREADY : out STD_LOGIC;
    M_AXI_GP1_WLAST : out STD_LOGIC;
    M_AXI_GP1_WVALID : out STD_LOGIC;
    M_AXI_GP1_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP1_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP1_ACLK : in STD_LOGIC;
    M_AXI_GP1_ARREADY : in STD_LOGIC;
    M_AXI_GP1_AWREADY : in STD_LOGIC;
    M_AXI_GP1_BVALID : in STD_LOGIC;
    M_AXI_GP1_RLAST : in STD_LOGIC;
    M_AXI_GP1_RVALID : in STD_LOGIC;
    M_AXI_GP1_WREADY : in STD_LOGIC;
    M_AXI_GP1_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_ARESETN : out STD_LOGIC;
    S_AXI_GP0_ARREADY : out STD_LOGIC;
    S_AXI_GP0_AWREADY : out STD_LOGIC;
    S_AXI_GP0_BVALID : out STD_LOGIC;
    S_AXI_GP0_RLAST : out STD_LOGIC;
    S_AXI_GP0_RVALID : out STD_LOGIC;
    S_AXI_GP0_WREADY : out STD_LOGIC;
    S_AXI_GP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_ACLK : in STD_LOGIC;
    S_AXI_GP0_ARVALID : in STD_LOGIC;
    S_AXI_GP0_AWVALID : in STD_LOGIC;
    S_AXI_GP0_BREADY : in STD_LOGIC;
    S_AXI_GP0_RREADY : in STD_LOGIC;
    S_AXI_GP0_WLAST : in STD_LOGIC;
    S_AXI_GP0_WVALID : in STD_LOGIC;
    S_AXI_GP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP1_ARESETN : out STD_LOGIC;
    S_AXI_GP1_ARREADY : out STD_LOGIC;
    S_AXI_GP1_AWREADY : out STD_LOGIC;
    S_AXI_GP1_BVALID : out STD_LOGIC;
    S_AXI_GP1_RLAST : out STD_LOGIC;
    S_AXI_GP1_RVALID : out STD_LOGIC;
    S_AXI_GP1_WREADY : out STD_LOGIC;
    S_AXI_GP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP1_ACLK : in STD_LOGIC;
    S_AXI_GP1_ARVALID : in STD_LOGIC;
    S_AXI_GP1_AWVALID : in STD_LOGIC;
    S_AXI_GP1_BREADY : in STD_LOGIC;
    S_AXI_GP1_RREADY : in STD_LOGIC;
    S_AXI_GP1_WLAST : in STD_LOGIC;
    S_AXI_GP1_WVALID : in STD_LOGIC;
    S_AXI_GP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ACP_ARESETN : out STD_LOGIC;
    S_AXI_ACP_ARREADY : out STD_LOGIC;
    S_AXI_ACP_AWREADY : out STD_LOGIC;
    S_AXI_ACP_BVALID : out STD_LOGIC;
    S_AXI_ACP_RLAST : out STD_LOGIC;
    S_AXI_ACP_RVALID : out STD_LOGIC;
    S_AXI_ACP_WREADY : out STD_LOGIC;
    S_AXI_ACP_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_BID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_RID : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_ACP_ACLK : in STD_LOGIC;
    S_AXI_ACP_ARVALID : in STD_LOGIC;
    S_AXI_ACP_AWVALID : in STD_LOGIC;
    S_AXI_ACP_BREADY : in STD_LOGIC;
    S_AXI_ACP_RREADY : in STD_LOGIC;
    S_AXI_ACP_WLAST : in STD_LOGIC;
    S_AXI_ACP_WVALID : in STD_LOGIC;
    S_AXI_ACP_ARID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_AWID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_WID : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACP_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACP_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACP_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ACP_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ACP_ARUSER : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ACP_AWUSER : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ACP_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_ACP_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_ARESETN : out STD_LOGIC;
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_ARESETN : out STD_LOGIC;
    S_AXI_HP1_ARREADY : out STD_LOGIC;
    S_AXI_HP1_AWREADY : out STD_LOGIC;
    S_AXI_HP1_BVALID : out STD_LOGIC;
    S_AXI_HP1_RLAST : out STD_LOGIC;
    S_AXI_HP1_RVALID : out STD_LOGIC;
    S_AXI_HP1_WREADY : out STD_LOGIC;
    S_AXI_HP1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP1_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_ACLK : in STD_LOGIC;
    S_AXI_HP1_ARVALID : in STD_LOGIC;
    S_AXI_HP1_AWVALID : in STD_LOGIC;
    S_AXI_HP1_BREADY : in STD_LOGIC;
    S_AXI_HP1_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_RREADY : in STD_LOGIC;
    S_AXI_HP1_WLAST : in STD_LOGIC;
    S_AXI_HP1_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP1_WVALID : in STD_LOGIC;
    S_AXI_HP1_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP1_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP1_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP1_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP1_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP1_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_ARESETN : out STD_LOGIC;
    S_AXI_HP2_ARREADY : out STD_LOGIC;
    S_AXI_HP2_AWREADY : out STD_LOGIC;
    S_AXI_HP2_BVALID : out STD_LOGIC;
    S_AXI_HP2_RLAST : out STD_LOGIC;
    S_AXI_HP2_RVALID : out STD_LOGIC;
    S_AXI_HP2_WREADY : out STD_LOGIC;
    S_AXI_HP2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP2_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP2_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_ACLK : in STD_LOGIC;
    S_AXI_HP2_ARVALID : in STD_LOGIC;
    S_AXI_HP2_AWVALID : in STD_LOGIC;
    S_AXI_HP2_BREADY : in STD_LOGIC;
    S_AXI_HP2_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_RREADY : in STD_LOGIC;
    S_AXI_HP2_WLAST : in STD_LOGIC;
    S_AXI_HP2_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP2_WVALID : in STD_LOGIC;
    S_AXI_HP2_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP2_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP2_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP2_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP2_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP2_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP3_ARESETN : out STD_LOGIC;
    S_AXI_HP3_ARREADY : out STD_LOGIC;
    S_AXI_HP3_AWREADY : out STD_LOGIC;
    S_AXI_HP3_BVALID : out STD_LOGIC;
    S_AXI_HP3_RLAST : out STD_LOGIC;
    S_AXI_HP3_RVALID : out STD_LOGIC;
    S_AXI_HP3_WREADY : out STD_LOGIC;
    S_AXI_HP3_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP3_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP3_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP3_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_ACLK : in STD_LOGIC;
    S_AXI_HP3_ARVALID : in STD_LOGIC;
    S_AXI_HP3_AWVALID : in STD_LOGIC;
    S_AXI_HP3_BREADY : in STD_LOGIC;
    S_AXI_HP3_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP3_RREADY : in STD_LOGIC;
    S_AXI_HP3_WLAST : in STD_LOGIC;
    S_AXI_HP3_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP3_WVALID : in STD_LOGIC;
    S_AXI_HP3_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP3_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP3_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP3_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP3_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP3_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP3_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP3_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_P2F_DMAC_ABORT : out STD_LOGIC;
    IRQ_P2F_DMAC0 : out STD_LOGIC;
    IRQ_P2F_DMAC1 : out STD_LOGIC;
    IRQ_P2F_DMAC2 : out STD_LOGIC;
    IRQ_P2F_DMAC3 : out STD_LOGIC;
    IRQ_P2F_DMAC4 : out STD_LOGIC;
    IRQ_P2F_DMAC5 : out STD_LOGIC;
    IRQ_P2F_DMAC6 : out STD_LOGIC;
    IRQ_P2F_DMAC7 : out STD_LOGIC;
    IRQ_P2F_SMC : out STD_LOGIC;
    IRQ_P2F_QSPI : out STD_LOGIC;
    IRQ_P2F_CTI : out STD_LOGIC;
    IRQ_P2F_GPIO : out STD_LOGIC;
    IRQ_P2F_USB0 : out STD_LOGIC;
    IRQ_P2F_ENET0 : out STD_LOGIC;
    IRQ_P2F_ENET_WAKE0 : out STD_LOGIC;
    IRQ_P2F_SDIO0 : out STD_LOGIC;
    IRQ_P2F_I2C0 : out STD_LOGIC;
    IRQ_P2F_SPI0 : out STD_LOGIC;
    IRQ_P2F_UART0 : out STD_LOGIC;
    IRQ_P2F_CAN0 : out STD_LOGIC;
    IRQ_P2F_USB1 : out STD_LOGIC;
    IRQ_P2F_ENET1 : out STD_LOGIC;
    IRQ_P2F_ENET_WAKE1 : out STD_LOGIC;
    IRQ_P2F_SDIO1 : out STD_LOGIC;
    IRQ_P2F_I2C1 : out STD_LOGIC;
    IRQ_P2F_SPI1 : out STD_LOGIC;
    IRQ_P2F_UART1 : out STD_LOGIC;
    IRQ_P2F_CAN1 : out STD_LOGIC;
    IRQ_F2P : in STD_LOGIC_VECTOR ( 0 to 0 );
    Core0_nFIQ : in STD_LOGIC;
    Core0_nIRQ : in STD_LOGIC;
    Core1_nFIQ : in STD_LOGIC;
    Core1_nIRQ : in STD_LOGIC;
    DMA0_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA0_DAVALID : out STD_LOGIC;
    DMA0_DRREADY : out STD_LOGIC;
    DMA0_RSTN : out STD_LOGIC;
    DMA1_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA1_DAVALID : out STD_LOGIC;
    DMA1_DRREADY : out STD_LOGIC;
    DMA1_RSTN : out STD_LOGIC;
    DMA2_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA2_DAVALID : out STD_LOGIC;
    DMA2_DRREADY : out STD_LOGIC;
    DMA2_RSTN : out STD_LOGIC;
    DMA3_DATYPE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA3_DAVALID : out STD_LOGIC;
    DMA3_DRREADY : out STD_LOGIC;
    DMA3_RSTN : out STD_LOGIC;
    DMA0_ACLK : in STD_LOGIC;
    DMA0_DAREADY : in STD_LOGIC;
    DMA0_DRLAST : in STD_LOGIC;
    DMA0_DRVALID : in STD_LOGIC;
    DMA1_ACLK : in STD_LOGIC;
    DMA1_DAREADY : in STD_LOGIC;
    DMA1_DRLAST : in STD_LOGIC;
    DMA1_DRVALID : in STD_LOGIC;
    DMA2_ACLK : in STD_LOGIC;
    DMA2_DAREADY : in STD_LOGIC;
    DMA2_DRLAST : in STD_LOGIC;
    DMA2_DRVALID : in STD_LOGIC;
    DMA3_ACLK : in STD_LOGIC;
    DMA3_DAREADY : in STD_LOGIC;
    DMA3_DRLAST : in STD_LOGIC;
    DMA3_DRVALID : in STD_LOGIC;
    DMA0_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA1_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA2_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DMA3_DRTYPE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK3 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLKTRIG3_N : in STD_LOGIC;
    FCLK_CLKTRIG2_N : in STD_LOGIC;
    FCLK_CLKTRIG1_N : in STD_LOGIC;
    FCLK_CLKTRIG0_N : in STD_LOGIC;
    FCLK_RESET3_N : out STD_LOGIC;
    FCLK_RESET2_N : out STD_LOGIC;
    FCLK_RESET1_N : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    FTMD_TRACEIN_DATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FTMD_TRACEIN_VALID : in STD_LOGIC;
    FTMD_TRACEIN_CLK : in STD_LOGIC;
    FTMD_TRACEIN_ATID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    FTMT_F2P_TRIG_0 : in STD_LOGIC;
    FTMT_F2P_TRIGACK_0 : out STD_LOGIC;
    FTMT_F2P_TRIG_1 : in STD_LOGIC;
    FTMT_F2P_TRIGACK_1 : out STD_LOGIC;
    FTMT_F2P_TRIG_2 : in STD_LOGIC;
    FTMT_F2P_TRIGACK_2 : out STD_LOGIC;
    FTMT_F2P_TRIG_3 : in STD_LOGIC;
    FTMT_F2P_TRIGACK_3 : out STD_LOGIC;
    FTMT_F2P_DEBUG : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FTMT_P2F_TRIGACK_0 : in STD_LOGIC;
    FTMT_P2F_TRIG_0 : out STD_LOGIC;
    FTMT_P2F_TRIGACK_1 : in STD_LOGIC;
    FTMT_P2F_TRIG_1 : out STD_LOGIC;
    FTMT_P2F_TRIGACK_2 : in STD_LOGIC;
    FTMT_P2F_TRIG_2 : out STD_LOGIC;
    FTMT_P2F_TRIGACK_3 : in STD_LOGIC;
    FTMT_P2F_TRIG_3 : out STD_LOGIC;
    FTMT_P2F_DEBUG : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FPGA_IDLE_N : in STD_LOGIC;
    EVENT_EVENTO : out STD_LOGIC;
    EVENT_STANDBYWFE : out STD_LOGIC_VECTOR ( 1 downto 0 );
    EVENT_STANDBYWFI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    EVENT_EVENTI : in STD_LOGIC;
    DDR_ARB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  attribute C_DM_WIDTH : integer;
  attribute C_DM_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 4;
  attribute C_DQS_WIDTH : integer;
  attribute C_DQS_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 4;
  attribute C_DQ_WIDTH : integer;
  attribute C_DQ_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 32;
  attribute C_EMIO_GPIO_WIDTH : integer;
  attribute C_EMIO_GPIO_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 64;
  attribute C_EN_EMIO_ENET0 : integer;
  attribute C_EN_EMIO_ENET0 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_EN_EMIO_ENET1 : integer;
  attribute C_EN_EMIO_ENET1 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_EN_EMIO_PJTAG : integer;
  attribute C_EN_EMIO_PJTAG of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_EN_EMIO_TRACE : integer;
  attribute C_EN_EMIO_TRACE of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_FCLK_CLK0_BUF : string;
  attribute C_FCLK_CLK0_BUF of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "TRUE";
  attribute C_FCLK_CLK1_BUF : string;
  attribute C_FCLK_CLK1_BUF of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "FALSE";
  attribute C_FCLK_CLK2_BUF : string;
  attribute C_FCLK_CLK2_BUF of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "FALSE";
  attribute C_FCLK_CLK3_BUF : string;
  attribute C_FCLK_CLK3_BUF of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "FALSE";
  attribute C_GP0_EN_MODIFIABLE_TXN : integer;
  attribute C_GP0_EN_MODIFIABLE_TXN of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 1;
  attribute C_GP1_EN_MODIFIABLE_TXN : integer;
  attribute C_GP1_EN_MODIFIABLE_TXN of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 1;
  attribute C_INCLUDE_ACP_TRANS_CHECK : integer;
  attribute C_INCLUDE_ACP_TRANS_CHECK of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_INCLUDE_TRACE_BUFFER : integer;
  attribute C_INCLUDE_TRACE_BUFFER of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_IRQ_F2P_MODE : string;
  attribute C_IRQ_F2P_MODE of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "DIRECT";
  attribute C_MIO_PRIMITIVE : integer;
  attribute C_MIO_PRIMITIVE of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 54;
  attribute C_M_AXI_GP0_ENABLE_STATIC_REMAP : integer;
  attribute C_M_AXI_GP0_ENABLE_STATIC_REMAP of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_M_AXI_GP0_ID_WIDTH : integer;
  attribute C_M_AXI_GP0_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 12;
  attribute C_M_AXI_GP0_THREAD_ID_WIDTH : integer;
  attribute C_M_AXI_GP0_THREAD_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 12;
  attribute C_M_AXI_GP1_ENABLE_STATIC_REMAP : integer;
  attribute C_M_AXI_GP1_ENABLE_STATIC_REMAP of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_M_AXI_GP1_ID_WIDTH : integer;
  attribute C_M_AXI_GP1_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 12;
  attribute C_M_AXI_GP1_THREAD_ID_WIDTH : integer;
  attribute C_M_AXI_GP1_THREAD_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 12;
  attribute C_NUM_F2P_INTR_INPUTS : integer;
  attribute C_NUM_F2P_INTR_INPUTS of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 1;
  attribute C_PACKAGE_NAME : string;
  attribute C_PACKAGE_NAME of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "clg484";
  attribute C_PS7_SI_REV : string;
  attribute C_PS7_SI_REV of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "PRODUCTION";
  attribute C_S_AXI_ACP_ARUSER_VAL : integer;
  attribute C_S_AXI_ACP_ARUSER_VAL of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 31;
  attribute C_S_AXI_ACP_AWUSER_VAL : integer;
  attribute C_S_AXI_ACP_AWUSER_VAL of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 31;
  attribute C_S_AXI_ACP_ID_WIDTH : integer;
  attribute C_S_AXI_ACP_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 3;
  attribute C_S_AXI_GP0_ID_WIDTH : integer;
  attribute C_S_AXI_GP0_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 6;
  attribute C_S_AXI_GP1_ID_WIDTH : integer;
  attribute C_S_AXI_GP1_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 6;
  attribute C_S_AXI_HP0_DATA_WIDTH : integer;
  attribute C_S_AXI_HP0_DATA_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 64;
  attribute C_S_AXI_HP0_ID_WIDTH : integer;
  attribute C_S_AXI_HP0_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 6;
  attribute C_S_AXI_HP1_DATA_WIDTH : integer;
  attribute C_S_AXI_HP1_DATA_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 64;
  attribute C_S_AXI_HP1_ID_WIDTH : integer;
  attribute C_S_AXI_HP1_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 6;
  attribute C_S_AXI_HP2_DATA_WIDTH : integer;
  attribute C_S_AXI_HP2_DATA_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 64;
  attribute C_S_AXI_HP2_ID_WIDTH : integer;
  attribute C_S_AXI_HP2_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 6;
  attribute C_S_AXI_HP3_DATA_WIDTH : integer;
  attribute C_S_AXI_HP3_DATA_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 64;
  attribute C_S_AXI_HP3_ID_WIDTH : integer;
  attribute C_S_AXI_HP3_ID_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 6;
  attribute C_TRACE_BUFFER_CLOCK_DELAY : integer;
  attribute C_TRACE_BUFFER_CLOCK_DELAY of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 12;
  attribute C_TRACE_BUFFER_FIFO_SIZE : integer;
  attribute C_TRACE_BUFFER_FIFO_SIZE of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 128;
  attribute C_TRACE_INTERNAL_WIDTH : integer;
  attribute C_TRACE_INTERNAL_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 2;
  attribute C_TRACE_PIPELINE_WIDTH : integer;
  attribute C_TRACE_PIPELINE_WIDTH of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 8;
  attribute C_USE_AXI_NONSECURE : integer;
  attribute C_USE_AXI_NONSECURE of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_DEFAULT_ACP_USER_VAL : integer;
  attribute C_USE_DEFAULT_ACP_USER_VAL of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_M_AXI_GP0 : integer;
  attribute C_USE_M_AXI_GP0 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 1;
  attribute C_USE_M_AXI_GP1 : integer;
  attribute C_USE_M_AXI_GP1 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_S_AXI_ACP : integer;
  attribute C_USE_S_AXI_ACP of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_S_AXI_GP0 : integer;
  attribute C_USE_S_AXI_GP0 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_S_AXI_GP1 : integer;
  attribute C_USE_S_AXI_GP1 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_S_AXI_HP0 : integer;
  attribute C_USE_S_AXI_HP0 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 1;
  attribute C_USE_S_AXI_HP1 : integer;
  attribute C_USE_S_AXI_HP1 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_S_AXI_HP2 : integer;
  attribute C_USE_S_AXI_HP2 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute C_USE_S_AXI_HP3 : integer;
  attribute C_USE_S_AXI_HP3 of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "Setup_processing_system7_0_0.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "processing_system7_v5_5_processing_system7";
  attribute POWER : string;
  attribute POWER of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is "<PROCESSOR name={system} numA9Cores={2} clockFreq={666.666666} load={0.5} /><MEMORY name={code} memType={DDR3} dataWidth={16} clockFreq={533.333333} readRate={0.5} writeRate={0.5} /><IO interface={UART} ioStandard={LVCMOS33} bidis={2} ioBank={Vcco_p1} clockFreq={100.000000} usageRate={0.5} /><PLL domain={Processor} vco={1333.333} /><PLL domain={Memory} vco={1066.667} /><PLL domain={IO} vco={1600.000} /><AXI interface={S_AXI_HP0} dataWidth={64} clockFreq={50.0} usageRate={0.5} /><AXI interface={M_AXI_GP0} dataWidth={32} clockFreq={50.0} usageRate={0.5} />/>";
  attribute USE_TRACE_DATA_EDGE_DETECTOR : integer;
  attribute USE_TRACE_DATA_EDGE_DETECTOR of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 : entity is 0;
end Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7;

architecture STRUCTURE of Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7 is
  signal FCLK_CLK_unbuffered : STD_LOGIC_VECTOR ( 0 to 0 );
  signal buffered_DDR_Addr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal buffered_DDR_BankAddr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal buffered_DDR_CAS_n : STD_LOGIC;
  signal buffered_DDR_CKE : STD_LOGIC;
  signal buffered_DDR_CS_n : STD_LOGIC;
  signal buffered_DDR_Clk : STD_LOGIC;
  signal buffered_DDR_Clk_n : STD_LOGIC;
  signal buffered_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal buffered_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal buffered_DDR_DQS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal buffered_DDR_DQS_n : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal buffered_DDR_DRSTB : STD_LOGIC;
  signal buffered_DDR_ODT : STD_LOGIC;
  signal buffered_DDR_RAS_n : STD_LOGIC;
  signal buffered_DDR_VRN : STD_LOGIC;
  signal buffered_DDR_VRP : STD_LOGIC;
  signal buffered_DDR_WEB : STD_LOGIC;
  signal buffered_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal buffered_PS_CLK : STD_LOGIC;
  signal buffered_PS_PORB : STD_LOGIC;
  signal buffered_PS_SRSTB : STD_LOGIC;
  signal NLW_PS7_i_DMA0DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA0DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA0RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA1DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA1DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA1RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA2DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA2DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA2RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA3DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA3DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA3RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOCAN0PHYTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOCAN1PHYTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0GMIITXEN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0GMIITXER_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0MDIOMDC_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0MDIOO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0MDIOTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPDELAYREQRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPDELAYREQTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPPDELAYREQRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPPDELAYREQTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPPDELAYRESPRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPPDELAYRESPTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPSYNCFRAMERX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0PTPSYNCFRAMETX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0SOFRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET0SOFTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1GMIITXEN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1GMIITXER_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1MDIOMDC_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1MDIOO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1MDIOTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPDELAYREQRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPDELAYREQTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPPDELAYREQRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPPDELAYREQTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPPDELAYRESPRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPPDELAYRESPTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPSYNCFRAMERX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1PTPSYNCFRAMETX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1SOFRX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOENET1SOFTX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C0SCLO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C0SCLTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C0SDAO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C0SDATN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C1SCLO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C1SCLTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C1SDAO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOI2C1SDATN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOPJTAGTDO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOPJTAGTDTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO0BUSPOW_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO0CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO0CMDO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO0CMDTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO0LED_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO1BUSPOW_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO1CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO1CMDO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO1CMDTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSDIO1LED_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI0MO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI0MOTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI0SCLKO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI0SCLKTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI0SO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI0SSNTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI0STN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI1MO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI1MOTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI1SCLKO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI1SCLKTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI1SO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI1SSNTN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOSPI1STN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOTRACECTL_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUART0DTRN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUART0RTSN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUART0TX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUART1DTRN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUART1RTSN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUART1TX_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUSB0VBUSPWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOUSB1VBUSPWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EMIOWDTRSTO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_EVENTEVENTO_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP0ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP0ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP0AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP0BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP0RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP0WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP0WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP1ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP1ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP1AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP1BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP1RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP1WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_MAXIGP1WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIACPARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIACPARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIACPAWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIACPBVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIACPRLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIACPRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIACPWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP0ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP0ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP0AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP0BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP0RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP0RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP0WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP1ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP1ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP1AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP1BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP1RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP1RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIGP1WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP0ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP1ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP1ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP1AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP1BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP1RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP1RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP1WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP2ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP2ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP2AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP2BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP2RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP2RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP2WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP3ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP3ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP3AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP3BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP3RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP3RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_SAXIHP3WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_PS7_i_DMA0DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_DMA1DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_DMA2DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_DMA3DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_EMIOENET0GMIITXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_EMIOENET1GMIITXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_EMIOGPIOO_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_PS7_i_EMIOGPIOTN_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_PS7_i_EMIOSDIO0BUSVOLT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_EMIOSDIO0DATAO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_EMIOSDIO0DATATN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_EMIOSDIO1BUSVOLT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_EMIOSDIO1DATAO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_EMIOSDIO1DATATN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_EMIOSPI0SSON_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_EMIOSPI1SSON_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_EMIOTRACEDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_EMIOTTC0WAVEO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_EMIOTTC1WAVEO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_EMIOUSB0PORTINDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_EMIOUSB1PORTINDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_EVENTSTANDBYWFE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_EVENTSTANDBYWFI_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_FCLKCLK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_PS7_i_FCLKRESETN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_PS7_i_FTMTF2PTRIGACK_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_FTMTP2FDEBUG_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_FTMTP2FTRIG_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_IRQP2F_UNCONNECTED : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP0ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP0AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP0WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_MAXIGP0WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_PS7_i_MAXIGP0WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP1ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_MAXIGP1AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_MAXIGP1WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_MAXIGP1WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_PS7_i_MAXIGP1WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_PS7_i_SAXIACPBID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_SAXIACPBRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIACPRDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_PS7_i_SAXIACPRID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_SAXIACPRRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIGP0BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIGP0BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIGP0RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_SAXIGP0RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIGP0RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIGP1BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIGP1BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIGP1RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_PS7_i_SAXIGP1RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIGP1RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP0BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP0BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP0RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_SAXIHP0RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_SAXIHP0RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP0RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP0WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP0WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_SAXIHP1BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP1BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP1RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_SAXIHP1RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_SAXIHP1RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_PS7_i_SAXIHP1RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP1RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP1WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP1WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_SAXIHP2BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP2BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP2RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_SAXIHP2RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_SAXIHP2RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_PS7_i_SAXIHP2RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP2RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP2WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP2WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_SAXIHP3BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP3BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP3RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_PS7_i_SAXIHP3RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_PS7_i_SAXIHP3RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_PS7_i_SAXIHP3RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP3RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_PS7_i_SAXIHP3WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_PS7_i_SAXIHP3WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of DDR_CAS_n_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_CKE_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_CS_n_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_Clk_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_Clk_n_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_DRSTB_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_ODT_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_RAS_n_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_VRN_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_VRP_BIBUF : label is "PRIMITIVE";
  attribute box_type of DDR_WEB_BIBUF : label is "PRIMITIVE";
  attribute box_type of PS7_i : label is "PRIMITIVE";
  attribute box_type of PS_CLK_BIBUF : label is "PRIMITIVE";
  attribute box_type of PS_PORB_BIBUF : label is "PRIMITIVE";
  attribute box_type of PS_SRSTB_BIBUF : label is "PRIMITIVE";
  attribute box_type of \buffer_fclk_clk_0.FCLK_CLK_0_BUFG\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[0].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[10].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[11].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[12].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[13].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[14].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[15].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[16].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[17].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[18].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[19].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[1].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[20].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[21].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[22].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[23].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[24].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[25].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[26].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[27].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[28].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[29].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[2].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[30].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[31].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[32].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[33].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[34].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[35].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[36].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[37].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[38].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[39].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[3].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[40].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[41].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[42].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[43].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[44].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[45].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[46].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[47].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[48].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[49].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[4].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[50].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[51].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[52].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[53].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[5].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[6].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[7].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[8].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk13[9].MIO_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk14[0].DDR_BankAddr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk14[1].DDR_BankAddr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk14[2].DDR_BankAddr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[0].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[10].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[11].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[12].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[13].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[14].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[1].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[2].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[3].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[4].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[5].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[6].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[7].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[8].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk15[9].DDR_Addr_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk16[0].DDR_DM_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk16[1].DDR_DM_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk16[2].DDR_DM_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk16[3].DDR_DM_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[0].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[10].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[11].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[12].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[13].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[14].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[15].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[16].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[17].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[18].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[19].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[1].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[20].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[21].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[22].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[23].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[24].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[25].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[26].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[27].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[28].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[29].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[2].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[30].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[31].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[3].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[4].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[5].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[6].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[7].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[8].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk17[9].DDR_DQ_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk18[0].DDR_DQS_n_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk18[1].DDR_DQS_n_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk18[2].DDR_DQS_n_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk18[3].DDR_DQS_n_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk19[0].DDR_DQS_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk19[1].DDR_DQS_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk19[2].DDR_DQS_BIBUF\ : label is "PRIMITIVE";
  attribute box_type of \genblk19[3].DDR_DQS_BIBUF\ : label is "PRIMITIVE";
begin
DDR_CAS_n_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_CAS_n,
      PAD => DDR_CAS_n
    );
DDR_CKE_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_CKE,
      PAD => DDR_CKE
    );
DDR_CS_n_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_CS_n,
      PAD => DDR_CS_n
    );
DDR_Clk_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Clk,
      PAD => DDR_Clk
    );
DDR_Clk_n_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Clk_n,
      PAD => DDR_Clk_n
    );
DDR_DRSTB_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DRSTB,
      PAD => DDR_DRSTB
    );
DDR_ODT_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_ODT,
      PAD => DDR_ODT
    );
DDR_RAS_n_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_RAS_n,
      PAD => DDR_RAS_n
    );
DDR_VRN_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_VRN,
      PAD => DDR_VRN
    );
DDR_VRP_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_VRP,
      PAD => DDR_VRP
    );
DDR_WEB_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_WEB,
      PAD => DDR_WEB
    );
PS7_i: unisim.vcomponents.PS7
     port map (
      DDRA(14 downto 0) => buffered_DDR_Addr(14 downto 0),
      DDRARB(3 downto 0) => B"0000",
      DDRBA(2 downto 0) => buffered_DDR_BankAddr(2 downto 0),
      DDRCASB => buffered_DDR_CAS_n,
      DDRCKE => buffered_DDR_CKE,
      DDRCKN => buffered_DDR_Clk_n,
      DDRCKP => buffered_DDR_Clk,
      DDRCSB => buffered_DDR_CS_n,
      DDRDM(3 downto 0) => buffered_DDR_DM(3 downto 0),
      DDRDQ(31 downto 0) => buffered_DDR_DQ(31 downto 0),
      DDRDQSN(3 downto 0) => buffered_DDR_DQS_n(3 downto 0),
      DDRDQSP(3 downto 0) => buffered_DDR_DQS(3 downto 0),
      DDRDRSTB => buffered_DDR_DRSTB,
      DDRODT => buffered_DDR_ODT,
      DDRRASB => buffered_DDR_RAS_n,
      DDRVRN => buffered_DDR_VRN,
      DDRVRP => buffered_DDR_VRP,
      DDRWEB => buffered_DDR_WEB,
      DMA0ACLK => '0',
      DMA0DAREADY => '0',
      DMA0DATYPE(1 downto 0) => NLW_PS7_i_DMA0DATYPE_UNCONNECTED(1 downto 0),
      DMA0DAVALID => NLW_PS7_i_DMA0DAVALID_UNCONNECTED,
      DMA0DRLAST => '0',
      DMA0DRREADY => NLW_PS7_i_DMA0DRREADY_UNCONNECTED,
      DMA0DRTYPE(1 downto 0) => B"00",
      DMA0DRVALID => '0',
      DMA0RSTN => NLW_PS7_i_DMA0RSTN_UNCONNECTED,
      DMA1ACLK => '0',
      DMA1DAREADY => '0',
      DMA1DATYPE(1 downto 0) => NLW_PS7_i_DMA1DATYPE_UNCONNECTED(1 downto 0),
      DMA1DAVALID => NLW_PS7_i_DMA1DAVALID_UNCONNECTED,
      DMA1DRLAST => '0',
      DMA1DRREADY => NLW_PS7_i_DMA1DRREADY_UNCONNECTED,
      DMA1DRTYPE(1 downto 0) => B"00",
      DMA1DRVALID => '0',
      DMA1RSTN => NLW_PS7_i_DMA1RSTN_UNCONNECTED,
      DMA2ACLK => '0',
      DMA2DAREADY => '0',
      DMA2DATYPE(1 downto 0) => NLW_PS7_i_DMA2DATYPE_UNCONNECTED(1 downto 0),
      DMA2DAVALID => NLW_PS7_i_DMA2DAVALID_UNCONNECTED,
      DMA2DRLAST => '0',
      DMA2DRREADY => NLW_PS7_i_DMA2DRREADY_UNCONNECTED,
      DMA2DRTYPE(1 downto 0) => B"00",
      DMA2DRVALID => '0',
      DMA2RSTN => NLW_PS7_i_DMA2RSTN_UNCONNECTED,
      DMA3ACLK => '0',
      DMA3DAREADY => '0',
      DMA3DATYPE(1 downto 0) => NLW_PS7_i_DMA3DATYPE_UNCONNECTED(1 downto 0),
      DMA3DAVALID => NLW_PS7_i_DMA3DAVALID_UNCONNECTED,
      DMA3DRLAST => '0',
      DMA3DRREADY => NLW_PS7_i_DMA3DRREADY_UNCONNECTED,
      DMA3DRTYPE(1 downto 0) => B"00",
      DMA3DRVALID => '0',
      DMA3RSTN => NLW_PS7_i_DMA3RSTN_UNCONNECTED,
      EMIOCAN0PHYRX => '0',
      EMIOCAN0PHYTX => NLW_PS7_i_EMIOCAN0PHYTX_UNCONNECTED,
      EMIOCAN1PHYRX => '0',
      EMIOCAN1PHYTX => NLW_PS7_i_EMIOCAN1PHYTX_UNCONNECTED,
      EMIOENET0EXTINTIN => '0',
      EMIOENET0GMIICOL => '0',
      EMIOENET0GMIICRS => '0',
      EMIOENET0GMIIRXCLK => '0',
      EMIOENET0GMIIRXD(7 downto 0) => B"00000000",
      EMIOENET0GMIIRXDV => '0',
      EMIOENET0GMIIRXER => '0',
      EMIOENET0GMIITXCLK => '0',
      EMIOENET0GMIITXD(7 downto 0) => NLW_PS7_i_EMIOENET0GMIITXD_UNCONNECTED(7 downto 0),
      EMIOENET0GMIITXEN => NLW_PS7_i_EMIOENET0GMIITXEN_UNCONNECTED,
      EMIOENET0GMIITXER => NLW_PS7_i_EMIOENET0GMIITXER_UNCONNECTED,
      EMIOENET0MDIOI => '0',
      EMIOENET0MDIOMDC => NLW_PS7_i_EMIOENET0MDIOMDC_UNCONNECTED,
      EMIOENET0MDIOO => NLW_PS7_i_EMIOENET0MDIOO_UNCONNECTED,
      EMIOENET0MDIOTN => NLW_PS7_i_EMIOENET0MDIOTN_UNCONNECTED,
      EMIOENET0PTPDELAYREQRX => NLW_PS7_i_EMIOENET0PTPDELAYREQRX_UNCONNECTED,
      EMIOENET0PTPDELAYREQTX => NLW_PS7_i_EMIOENET0PTPDELAYREQTX_UNCONNECTED,
      EMIOENET0PTPPDELAYREQRX => NLW_PS7_i_EMIOENET0PTPPDELAYREQRX_UNCONNECTED,
      EMIOENET0PTPPDELAYREQTX => NLW_PS7_i_EMIOENET0PTPPDELAYREQTX_UNCONNECTED,
      EMIOENET0PTPPDELAYRESPRX => NLW_PS7_i_EMIOENET0PTPPDELAYRESPRX_UNCONNECTED,
      EMIOENET0PTPPDELAYRESPTX => NLW_PS7_i_EMIOENET0PTPPDELAYRESPTX_UNCONNECTED,
      EMIOENET0PTPSYNCFRAMERX => NLW_PS7_i_EMIOENET0PTPSYNCFRAMERX_UNCONNECTED,
      EMIOENET0PTPSYNCFRAMETX => NLW_PS7_i_EMIOENET0PTPSYNCFRAMETX_UNCONNECTED,
      EMIOENET0SOFRX => NLW_PS7_i_EMIOENET0SOFRX_UNCONNECTED,
      EMIOENET0SOFTX => NLW_PS7_i_EMIOENET0SOFTX_UNCONNECTED,
      EMIOENET1EXTINTIN => '0',
      EMIOENET1GMIICOL => '0',
      EMIOENET1GMIICRS => '0',
      EMIOENET1GMIIRXCLK => '0',
      EMIOENET1GMIIRXD(7 downto 0) => B"00000000",
      EMIOENET1GMIIRXDV => '0',
      EMIOENET1GMIIRXER => '0',
      EMIOENET1GMIITXCLK => '0',
      EMIOENET1GMIITXD(7 downto 0) => NLW_PS7_i_EMIOENET1GMIITXD_UNCONNECTED(7 downto 0),
      EMIOENET1GMIITXEN => NLW_PS7_i_EMIOENET1GMIITXEN_UNCONNECTED,
      EMIOENET1GMIITXER => NLW_PS7_i_EMIOENET1GMIITXER_UNCONNECTED,
      EMIOENET1MDIOI => '0',
      EMIOENET1MDIOMDC => NLW_PS7_i_EMIOENET1MDIOMDC_UNCONNECTED,
      EMIOENET1MDIOO => NLW_PS7_i_EMIOENET1MDIOO_UNCONNECTED,
      EMIOENET1MDIOTN => NLW_PS7_i_EMIOENET1MDIOTN_UNCONNECTED,
      EMIOENET1PTPDELAYREQRX => NLW_PS7_i_EMIOENET1PTPDELAYREQRX_UNCONNECTED,
      EMIOENET1PTPDELAYREQTX => NLW_PS7_i_EMIOENET1PTPDELAYREQTX_UNCONNECTED,
      EMIOENET1PTPPDELAYREQRX => NLW_PS7_i_EMIOENET1PTPPDELAYREQRX_UNCONNECTED,
      EMIOENET1PTPPDELAYREQTX => NLW_PS7_i_EMIOENET1PTPPDELAYREQTX_UNCONNECTED,
      EMIOENET1PTPPDELAYRESPRX => NLW_PS7_i_EMIOENET1PTPPDELAYRESPRX_UNCONNECTED,
      EMIOENET1PTPPDELAYRESPTX => NLW_PS7_i_EMIOENET1PTPPDELAYRESPTX_UNCONNECTED,
      EMIOENET1PTPSYNCFRAMERX => NLW_PS7_i_EMIOENET1PTPSYNCFRAMERX_UNCONNECTED,
      EMIOENET1PTPSYNCFRAMETX => NLW_PS7_i_EMIOENET1PTPSYNCFRAMETX_UNCONNECTED,
      EMIOENET1SOFRX => NLW_PS7_i_EMIOENET1SOFRX_UNCONNECTED,
      EMIOENET1SOFTX => NLW_PS7_i_EMIOENET1SOFTX_UNCONNECTED,
      EMIOGPIOI(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      EMIOGPIOO(63 downto 0) => NLW_PS7_i_EMIOGPIOO_UNCONNECTED(63 downto 0),
      EMIOGPIOTN(63 downto 0) => NLW_PS7_i_EMIOGPIOTN_UNCONNECTED(63 downto 0),
      EMIOI2C0SCLI => '0',
      EMIOI2C0SCLO => NLW_PS7_i_EMIOI2C0SCLO_UNCONNECTED,
      EMIOI2C0SCLTN => NLW_PS7_i_EMIOI2C0SCLTN_UNCONNECTED,
      EMIOI2C0SDAI => '0',
      EMIOI2C0SDAO => NLW_PS7_i_EMIOI2C0SDAO_UNCONNECTED,
      EMIOI2C0SDATN => NLW_PS7_i_EMIOI2C0SDATN_UNCONNECTED,
      EMIOI2C1SCLI => '0',
      EMIOI2C1SCLO => NLW_PS7_i_EMIOI2C1SCLO_UNCONNECTED,
      EMIOI2C1SCLTN => NLW_PS7_i_EMIOI2C1SCLTN_UNCONNECTED,
      EMIOI2C1SDAI => '0',
      EMIOI2C1SDAO => NLW_PS7_i_EMIOI2C1SDAO_UNCONNECTED,
      EMIOI2C1SDATN => NLW_PS7_i_EMIOI2C1SDATN_UNCONNECTED,
      EMIOPJTAGTCK => '0',
      EMIOPJTAGTDI => '0',
      EMIOPJTAGTDO => NLW_PS7_i_EMIOPJTAGTDO_UNCONNECTED,
      EMIOPJTAGTDTN => NLW_PS7_i_EMIOPJTAGTDTN_UNCONNECTED,
      EMIOPJTAGTMS => '0',
      EMIOSDIO0BUSPOW => NLW_PS7_i_EMIOSDIO0BUSPOW_UNCONNECTED,
      EMIOSDIO0BUSVOLT(2 downto 0) => NLW_PS7_i_EMIOSDIO0BUSVOLT_UNCONNECTED(2 downto 0),
      EMIOSDIO0CDN => '0',
      EMIOSDIO0CLK => NLW_PS7_i_EMIOSDIO0CLK_UNCONNECTED,
      EMIOSDIO0CLKFB => '0',
      EMIOSDIO0CMDI => '0',
      EMIOSDIO0CMDO => NLW_PS7_i_EMIOSDIO0CMDO_UNCONNECTED,
      EMIOSDIO0CMDTN => NLW_PS7_i_EMIOSDIO0CMDTN_UNCONNECTED,
      EMIOSDIO0DATAI(3 downto 0) => B"0000",
      EMIOSDIO0DATAO(3 downto 0) => NLW_PS7_i_EMIOSDIO0DATAO_UNCONNECTED(3 downto 0),
      EMIOSDIO0DATATN(3 downto 0) => NLW_PS7_i_EMIOSDIO0DATATN_UNCONNECTED(3 downto 0),
      EMIOSDIO0LED => NLW_PS7_i_EMIOSDIO0LED_UNCONNECTED,
      EMIOSDIO0WP => '0',
      EMIOSDIO1BUSPOW => NLW_PS7_i_EMIOSDIO1BUSPOW_UNCONNECTED,
      EMIOSDIO1BUSVOLT(2 downto 0) => NLW_PS7_i_EMIOSDIO1BUSVOLT_UNCONNECTED(2 downto 0),
      EMIOSDIO1CDN => '0',
      EMIOSDIO1CLK => NLW_PS7_i_EMIOSDIO1CLK_UNCONNECTED,
      EMIOSDIO1CLKFB => '0',
      EMIOSDIO1CMDI => '0',
      EMIOSDIO1CMDO => NLW_PS7_i_EMIOSDIO1CMDO_UNCONNECTED,
      EMIOSDIO1CMDTN => NLW_PS7_i_EMIOSDIO1CMDTN_UNCONNECTED,
      EMIOSDIO1DATAI(3 downto 0) => B"0000",
      EMIOSDIO1DATAO(3 downto 0) => NLW_PS7_i_EMIOSDIO1DATAO_UNCONNECTED(3 downto 0),
      EMIOSDIO1DATATN(3 downto 0) => NLW_PS7_i_EMIOSDIO1DATATN_UNCONNECTED(3 downto 0),
      EMIOSDIO1LED => NLW_PS7_i_EMIOSDIO1LED_UNCONNECTED,
      EMIOSDIO1WP => '0',
      EMIOSPI0MI => '0',
      EMIOSPI0MO => NLW_PS7_i_EMIOSPI0MO_UNCONNECTED,
      EMIOSPI0MOTN => NLW_PS7_i_EMIOSPI0MOTN_UNCONNECTED,
      EMIOSPI0SCLKI => '0',
      EMIOSPI0SCLKO => NLW_PS7_i_EMIOSPI0SCLKO_UNCONNECTED,
      EMIOSPI0SCLKTN => NLW_PS7_i_EMIOSPI0SCLKTN_UNCONNECTED,
      EMIOSPI0SI => '0',
      EMIOSPI0SO => NLW_PS7_i_EMIOSPI0SO_UNCONNECTED,
      EMIOSPI0SSIN => '0',
      EMIOSPI0SSNTN => NLW_PS7_i_EMIOSPI0SSNTN_UNCONNECTED,
      EMIOSPI0SSON(2 downto 0) => NLW_PS7_i_EMIOSPI0SSON_UNCONNECTED(2 downto 0),
      EMIOSPI0STN => NLW_PS7_i_EMIOSPI0STN_UNCONNECTED,
      EMIOSPI1MI => '0',
      EMIOSPI1MO => NLW_PS7_i_EMIOSPI1MO_UNCONNECTED,
      EMIOSPI1MOTN => NLW_PS7_i_EMIOSPI1MOTN_UNCONNECTED,
      EMIOSPI1SCLKI => '0',
      EMIOSPI1SCLKO => NLW_PS7_i_EMIOSPI1SCLKO_UNCONNECTED,
      EMIOSPI1SCLKTN => NLW_PS7_i_EMIOSPI1SCLKTN_UNCONNECTED,
      EMIOSPI1SI => '0',
      EMIOSPI1SO => NLW_PS7_i_EMIOSPI1SO_UNCONNECTED,
      EMIOSPI1SSIN => '0',
      EMIOSPI1SSNTN => NLW_PS7_i_EMIOSPI1SSNTN_UNCONNECTED,
      EMIOSPI1SSON(2 downto 0) => NLW_PS7_i_EMIOSPI1SSON_UNCONNECTED(2 downto 0),
      EMIOSPI1STN => NLW_PS7_i_EMIOSPI1STN_UNCONNECTED,
      EMIOSRAMINTIN => '0',
      EMIOTRACECLK => '0',
      EMIOTRACECTL => NLW_PS7_i_EMIOTRACECTL_UNCONNECTED,
      EMIOTRACEDATA(31 downto 0) => NLW_PS7_i_EMIOTRACEDATA_UNCONNECTED(31 downto 0),
      EMIOTTC0CLKI(2 downto 0) => B"000",
      EMIOTTC0WAVEO(2 downto 0) => NLW_PS7_i_EMIOTTC0WAVEO_UNCONNECTED(2 downto 0),
      EMIOTTC1CLKI(2 downto 0) => B"000",
      EMIOTTC1WAVEO(2 downto 0) => NLW_PS7_i_EMIOTTC1WAVEO_UNCONNECTED(2 downto 0),
      EMIOUART0CTSN => '0',
      EMIOUART0DCDN => '0',
      EMIOUART0DSRN => '0',
      EMIOUART0DTRN => NLW_PS7_i_EMIOUART0DTRN_UNCONNECTED,
      EMIOUART0RIN => '0',
      EMIOUART0RTSN => NLW_PS7_i_EMIOUART0RTSN_UNCONNECTED,
      EMIOUART0RX => '1',
      EMIOUART0TX => NLW_PS7_i_EMIOUART0TX_UNCONNECTED,
      EMIOUART1CTSN => '0',
      EMIOUART1DCDN => '0',
      EMIOUART1DSRN => '0',
      EMIOUART1DTRN => NLW_PS7_i_EMIOUART1DTRN_UNCONNECTED,
      EMIOUART1RIN => '0',
      EMIOUART1RTSN => NLW_PS7_i_EMIOUART1RTSN_UNCONNECTED,
      EMIOUART1RX => '1',
      EMIOUART1TX => NLW_PS7_i_EMIOUART1TX_UNCONNECTED,
      EMIOUSB0PORTINDCTL(1 downto 0) => NLW_PS7_i_EMIOUSB0PORTINDCTL_UNCONNECTED(1 downto 0),
      EMIOUSB0VBUSPWRFAULT => '0',
      EMIOUSB0VBUSPWRSELECT => NLW_PS7_i_EMIOUSB0VBUSPWRSELECT_UNCONNECTED,
      EMIOUSB1PORTINDCTL(1 downto 0) => NLW_PS7_i_EMIOUSB1PORTINDCTL_UNCONNECTED(1 downto 0),
      EMIOUSB1VBUSPWRFAULT => '0',
      EMIOUSB1VBUSPWRSELECT => NLW_PS7_i_EMIOUSB1VBUSPWRSELECT_UNCONNECTED,
      EMIOWDTCLKI => '0',
      EMIOWDTRSTO => NLW_PS7_i_EMIOWDTRSTO_UNCONNECTED,
      EVENTEVENTI => '0',
      EVENTEVENTO => NLW_PS7_i_EVENTEVENTO_UNCONNECTED,
      EVENTSTANDBYWFE(1 downto 0) => NLW_PS7_i_EVENTSTANDBYWFE_UNCONNECTED(1 downto 0),
      EVENTSTANDBYWFI(1 downto 0) => NLW_PS7_i_EVENTSTANDBYWFI_UNCONNECTED(1 downto 0),
      FCLKCLK(3 downto 1) => NLW_PS7_i_FCLKCLK_UNCONNECTED(3 downto 1),
      FCLKCLK(0) => FCLK_CLK_unbuffered(0),
      FCLKCLKTRIGN(3 downto 0) => B"0000",
      FCLKRESETN(3 downto 1) => NLW_PS7_i_FCLKRESETN_UNCONNECTED(3 downto 1),
      FCLKRESETN(0) => FCLK_RESET0_N,
      FPGAIDLEN => '0',
      FTMDTRACEINATID(3 downto 0) => B"0000",
      FTMDTRACEINCLOCK => '0',
      FTMDTRACEINDATA(31 downto 0) => B"00000000000000000000000000000000",
      FTMDTRACEINVALID => '0',
      FTMTF2PDEBUG(31 downto 0) => B"00000000000000000000000000000000",
      FTMTF2PTRIG(3 downto 0) => B"0000",
      FTMTF2PTRIGACK(3 downto 0) => NLW_PS7_i_FTMTF2PTRIGACK_UNCONNECTED(3 downto 0),
      FTMTP2FDEBUG(31 downto 0) => NLW_PS7_i_FTMTP2FDEBUG_UNCONNECTED(31 downto 0),
      FTMTP2FTRIG(3 downto 0) => NLW_PS7_i_FTMTP2FTRIG_UNCONNECTED(3 downto 0),
      FTMTP2FTRIGACK(3 downto 0) => B"0000",
      IRQF2P(19 downto 0) => B"00000000000000000000",
      IRQP2F(28 downto 0) => NLW_PS7_i_IRQP2F_UNCONNECTED(28 downto 0),
      MAXIGP0ACLK => M_AXI_GP0_ACLK,
      MAXIGP0ARADDR(31 downto 0) => NLW_PS7_i_MAXIGP0ARADDR_UNCONNECTED(31 downto 0),
      MAXIGP0ARBURST(1 downto 0) => NLW_PS7_i_MAXIGP0ARBURST_UNCONNECTED(1 downto 0),
      MAXIGP0ARCACHE(3 downto 0) => NLW_PS7_i_MAXIGP0ARCACHE_UNCONNECTED(3 downto 0),
      MAXIGP0ARESETN => NLW_PS7_i_MAXIGP0ARESETN_UNCONNECTED,
      MAXIGP0ARID(11 downto 0) => NLW_PS7_i_MAXIGP0ARID_UNCONNECTED(11 downto 0),
      MAXIGP0ARLEN(3 downto 0) => NLW_PS7_i_MAXIGP0ARLEN_UNCONNECTED(3 downto 0),
      MAXIGP0ARLOCK(1 downto 0) => NLW_PS7_i_MAXIGP0ARLOCK_UNCONNECTED(1 downto 0),
      MAXIGP0ARPROT(2 downto 0) => NLW_PS7_i_MAXIGP0ARPROT_UNCONNECTED(2 downto 0),
      MAXIGP0ARQOS(3 downto 0) => NLW_PS7_i_MAXIGP0ARQOS_UNCONNECTED(3 downto 0),
      MAXIGP0ARREADY => M_AXI_GP0_ARREADY,
      MAXIGP0ARSIZE(1 downto 0) => NLW_PS7_i_MAXIGP0ARSIZE_UNCONNECTED(1 downto 0),
      MAXIGP0ARVALID => NLW_PS7_i_MAXIGP0ARVALID_UNCONNECTED,
      MAXIGP0AWADDR(31 downto 0) => NLW_PS7_i_MAXIGP0AWADDR_UNCONNECTED(31 downto 0),
      MAXIGP0AWBURST(1 downto 0) => NLW_PS7_i_MAXIGP0AWBURST_UNCONNECTED(1 downto 0),
      MAXIGP0AWCACHE(3 downto 0) => NLW_PS7_i_MAXIGP0AWCACHE_UNCONNECTED(3 downto 0),
      MAXIGP0AWID(11 downto 0) => NLW_PS7_i_MAXIGP0AWID_UNCONNECTED(11 downto 0),
      MAXIGP0AWLEN(3 downto 0) => NLW_PS7_i_MAXIGP0AWLEN_UNCONNECTED(3 downto 0),
      MAXIGP0AWLOCK(1 downto 0) => NLW_PS7_i_MAXIGP0AWLOCK_UNCONNECTED(1 downto 0),
      MAXIGP0AWPROT(2 downto 0) => NLW_PS7_i_MAXIGP0AWPROT_UNCONNECTED(2 downto 0),
      MAXIGP0AWQOS(3 downto 0) => NLW_PS7_i_MAXIGP0AWQOS_UNCONNECTED(3 downto 0),
      MAXIGP0AWREADY => M_AXI_GP0_AWREADY,
      MAXIGP0AWSIZE(1 downto 0) => NLW_PS7_i_MAXIGP0AWSIZE_UNCONNECTED(1 downto 0),
      MAXIGP0AWVALID => NLW_PS7_i_MAXIGP0AWVALID_UNCONNECTED,
      MAXIGP0BID(11 downto 0) => M_AXI_GP0_BID(11 downto 0),
      MAXIGP0BREADY => NLW_PS7_i_MAXIGP0BREADY_UNCONNECTED,
      MAXIGP0BRESP(1 downto 0) => M_AXI_GP0_BRESP(1 downto 0),
      MAXIGP0BVALID => M_AXI_GP0_BVALID,
      MAXIGP0RDATA(31 downto 0) => M_AXI_GP0_RDATA(31 downto 0),
      MAXIGP0RID(11 downto 0) => M_AXI_GP0_RID(11 downto 0),
      MAXIGP0RLAST => M_AXI_GP0_RLAST,
      MAXIGP0RREADY => NLW_PS7_i_MAXIGP0RREADY_UNCONNECTED,
      MAXIGP0RRESP(1 downto 0) => M_AXI_GP0_RRESP(1 downto 0),
      MAXIGP0RVALID => M_AXI_GP0_RVALID,
      MAXIGP0WDATA(31 downto 0) => NLW_PS7_i_MAXIGP0WDATA_UNCONNECTED(31 downto 0),
      MAXIGP0WID(11 downto 0) => NLW_PS7_i_MAXIGP0WID_UNCONNECTED(11 downto 0),
      MAXIGP0WLAST => NLW_PS7_i_MAXIGP0WLAST_UNCONNECTED,
      MAXIGP0WREADY => M_AXI_GP0_WREADY,
      MAXIGP0WSTRB(3 downto 0) => NLW_PS7_i_MAXIGP0WSTRB_UNCONNECTED(3 downto 0),
      MAXIGP0WVALID => NLW_PS7_i_MAXIGP0WVALID_UNCONNECTED,
      MAXIGP1ACLK => '0',
      MAXIGP1ARADDR(31 downto 0) => NLW_PS7_i_MAXIGP1ARADDR_UNCONNECTED(31 downto 0),
      MAXIGP1ARBURST(1 downto 0) => NLW_PS7_i_MAXIGP1ARBURST_UNCONNECTED(1 downto 0),
      MAXIGP1ARCACHE(3 downto 0) => NLW_PS7_i_MAXIGP1ARCACHE_UNCONNECTED(3 downto 0),
      MAXIGP1ARESETN => NLW_PS7_i_MAXIGP1ARESETN_UNCONNECTED,
      MAXIGP1ARID(11 downto 0) => NLW_PS7_i_MAXIGP1ARID_UNCONNECTED(11 downto 0),
      MAXIGP1ARLEN(3 downto 0) => NLW_PS7_i_MAXIGP1ARLEN_UNCONNECTED(3 downto 0),
      MAXIGP1ARLOCK(1 downto 0) => NLW_PS7_i_MAXIGP1ARLOCK_UNCONNECTED(1 downto 0),
      MAXIGP1ARPROT(2 downto 0) => NLW_PS7_i_MAXIGP1ARPROT_UNCONNECTED(2 downto 0),
      MAXIGP1ARQOS(3 downto 0) => NLW_PS7_i_MAXIGP1ARQOS_UNCONNECTED(3 downto 0),
      MAXIGP1ARREADY => '0',
      MAXIGP1ARSIZE(1 downto 0) => NLW_PS7_i_MAXIGP1ARSIZE_UNCONNECTED(1 downto 0),
      MAXIGP1ARVALID => NLW_PS7_i_MAXIGP1ARVALID_UNCONNECTED,
      MAXIGP1AWADDR(31 downto 0) => NLW_PS7_i_MAXIGP1AWADDR_UNCONNECTED(31 downto 0),
      MAXIGP1AWBURST(1 downto 0) => NLW_PS7_i_MAXIGP1AWBURST_UNCONNECTED(1 downto 0),
      MAXIGP1AWCACHE(3 downto 0) => NLW_PS7_i_MAXIGP1AWCACHE_UNCONNECTED(3 downto 0),
      MAXIGP1AWID(11 downto 0) => NLW_PS7_i_MAXIGP1AWID_UNCONNECTED(11 downto 0),
      MAXIGP1AWLEN(3 downto 0) => NLW_PS7_i_MAXIGP1AWLEN_UNCONNECTED(3 downto 0),
      MAXIGP1AWLOCK(1 downto 0) => NLW_PS7_i_MAXIGP1AWLOCK_UNCONNECTED(1 downto 0),
      MAXIGP1AWPROT(2 downto 0) => NLW_PS7_i_MAXIGP1AWPROT_UNCONNECTED(2 downto 0),
      MAXIGP1AWQOS(3 downto 0) => NLW_PS7_i_MAXIGP1AWQOS_UNCONNECTED(3 downto 0),
      MAXIGP1AWREADY => '0',
      MAXIGP1AWSIZE(1 downto 0) => NLW_PS7_i_MAXIGP1AWSIZE_UNCONNECTED(1 downto 0),
      MAXIGP1AWVALID => NLW_PS7_i_MAXIGP1AWVALID_UNCONNECTED,
      MAXIGP1BID(11 downto 0) => B"000000000000",
      MAXIGP1BREADY => NLW_PS7_i_MAXIGP1BREADY_UNCONNECTED,
      MAXIGP1BRESP(1 downto 0) => B"00",
      MAXIGP1BVALID => '0',
      MAXIGP1RDATA(31 downto 0) => B"00000000000000000000000000000000",
      MAXIGP1RID(11 downto 0) => B"000000000000",
      MAXIGP1RLAST => '0',
      MAXIGP1RREADY => NLW_PS7_i_MAXIGP1RREADY_UNCONNECTED,
      MAXIGP1RRESP(1 downto 0) => B"00",
      MAXIGP1RVALID => '0',
      MAXIGP1WDATA(31 downto 0) => NLW_PS7_i_MAXIGP1WDATA_UNCONNECTED(31 downto 0),
      MAXIGP1WID(11 downto 0) => NLW_PS7_i_MAXIGP1WID_UNCONNECTED(11 downto 0),
      MAXIGP1WLAST => NLW_PS7_i_MAXIGP1WLAST_UNCONNECTED,
      MAXIGP1WREADY => '0',
      MAXIGP1WSTRB(3 downto 0) => NLW_PS7_i_MAXIGP1WSTRB_UNCONNECTED(3 downto 0),
      MAXIGP1WVALID => NLW_PS7_i_MAXIGP1WVALID_UNCONNECTED,
      MIO(53 downto 0) => buffered_MIO(53 downto 0),
      PSCLK => buffered_PS_CLK,
      PSPORB => buffered_PS_PORB,
      PSSRSTB => buffered_PS_SRSTB,
      SAXIACPACLK => '0',
      SAXIACPARADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIACPARBURST(1 downto 0) => B"00",
      SAXIACPARCACHE(3 downto 0) => B"0000",
      SAXIACPARESETN => NLW_PS7_i_SAXIACPARESETN_UNCONNECTED,
      SAXIACPARID(2 downto 0) => B"000",
      SAXIACPARLEN(3 downto 0) => B"0000",
      SAXIACPARLOCK(1 downto 0) => B"00",
      SAXIACPARPROT(2 downto 0) => B"000",
      SAXIACPARQOS(3 downto 0) => B"0000",
      SAXIACPARREADY => NLW_PS7_i_SAXIACPARREADY_UNCONNECTED,
      SAXIACPARSIZE(1 downto 0) => B"00",
      SAXIACPARUSER(4 downto 0) => B"00000",
      SAXIACPARVALID => '0',
      SAXIACPAWADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIACPAWBURST(1 downto 0) => B"00",
      SAXIACPAWCACHE(3 downto 0) => B"0000",
      SAXIACPAWID(2 downto 0) => B"000",
      SAXIACPAWLEN(3 downto 0) => B"0000",
      SAXIACPAWLOCK(1 downto 0) => B"00",
      SAXIACPAWPROT(2 downto 0) => B"000",
      SAXIACPAWQOS(3 downto 0) => B"0000",
      SAXIACPAWREADY => NLW_PS7_i_SAXIACPAWREADY_UNCONNECTED,
      SAXIACPAWSIZE(1 downto 0) => B"00",
      SAXIACPAWUSER(4 downto 0) => B"00000",
      SAXIACPAWVALID => '0',
      SAXIACPBID(2 downto 0) => NLW_PS7_i_SAXIACPBID_UNCONNECTED(2 downto 0),
      SAXIACPBREADY => '0',
      SAXIACPBRESP(1 downto 0) => NLW_PS7_i_SAXIACPBRESP_UNCONNECTED(1 downto 0),
      SAXIACPBVALID => NLW_PS7_i_SAXIACPBVALID_UNCONNECTED,
      SAXIACPRDATA(63 downto 0) => NLW_PS7_i_SAXIACPRDATA_UNCONNECTED(63 downto 0),
      SAXIACPRID(2 downto 0) => NLW_PS7_i_SAXIACPRID_UNCONNECTED(2 downto 0),
      SAXIACPRLAST => NLW_PS7_i_SAXIACPRLAST_UNCONNECTED,
      SAXIACPRREADY => '0',
      SAXIACPRRESP(1 downto 0) => NLW_PS7_i_SAXIACPRRESP_UNCONNECTED(1 downto 0),
      SAXIACPRVALID => NLW_PS7_i_SAXIACPRVALID_UNCONNECTED,
      SAXIACPWDATA(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      SAXIACPWID(2 downto 0) => B"000",
      SAXIACPWLAST => '0',
      SAXIACPWREADY => NLW_PS7_i_SAXIACPWREADY_UNCONNECTED,
      SAXIACPWSTRB(7 downto 0) => B"00000000",
      SAXIACPWVALID => '0',
      SAXIGP0ACLK => '0',
      SAXIGP0ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIGP0ARBURST(1 downto 0) => B"00",
      SAXIGP0ARCACHE(3 downto 0) => B"0000",
      SAXIGP0ARESETN => NLW_PS7_i_SAXIGP0ARESETN_UNCONNECTED,
      SAXIGP0ARID(5 downto 0) => B"000000",
      SAXIGP0ARLEN(3 downto 0) => B"0000",
      SAXIGP0ARLOCK(1 downto 0) => B"00",
      SAXIGP0ARPROT(2 downto 0) => B"000",
      SAXIGP0ARQOS(3 downto 0) => B"0000",
      SAXIGP0ARREADY => NLW_PS7_i_SAXIGP0ARREADY_UNCONNECTED,
      SAXIGP0ARSIZE(1 downto 0) => B"00",
      SAXIGP0ARVALID => '0',
      SAXIGP0AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIGP0AWBURST(1 downto 0) => B"00",
      SAXIGP0AWCACHE(3 downto 0) => B"0000",
      SAXIGP0AWID(5 downto 0) => B"000000",
      SAXIGP0AWLEN(3 downto 0) => B"0000",
      SAXIGP0AWLOCK(1 downto 0) => B"00",
      SAXIGP0AWPROT(2 downto 0) => B"000",
      SAXIGP0AWQOS(3 downto 0) => B"0000",
      SAXIGP0AWREADY => NLW_PS7_i_SAXIGP0AWREADY_UNCONNECTED,
      SAXIGP0AWSIZE(1 downto 0) => B"00",
      SAXIGP0AWVALID => '0',
      SAXIGP0BID(5 downto 0) => NLW_PS7_i_SAXIGP0BID_UNCONNECTED(5 downto 0),
      SAXIGP0BREADY => '0',
      SAXIGP0BRESP(1 downto 0) => NLW_PS7_i_SAXIGP0BRESP_UNCONNECTED(1 downto 0),
      SAXIGP0BVALID => NLW_PS7_i_SAXIGP0BVALID_UNCONNECTED,
      SAXIGP0RDATA(31 downto 0) => NLW_PS7_i_SAXIGP0RDATA_UNCONNECTED(31 downto 0),
      SAXIGP0RID(5 downto 0) => NLW_PS7_i_SAXIGP0RID_UNCONNECTED(5 downto 0),
      SAXIGP0RLAST => NLW_PS7_i_SAXIGP0RLAST_UNCONNECTED,
      SAXIGP0RREADY => '0',
      SAXIGP0RRESP(1 downto 0) => NLW_PS7_i_SAXIGP0RRESP_UNCONNECTED(1 downto 0),
      SAXIGP0RVALID => NLW_PS7_i_SAXIGP0RVALID_UNCONNECTED,
      SAXIGP0WDATA(31 downto 0) => B"00000000000000000000000000000000",
      SAXIGP0WID(5 downto 0) => B"000000",
      SAXIGP0WLAST => '0',
      SAXIGP0WREADY => NLW_PS7_i_SAXIGP0WREADY_UNCONNECTED,
      SAXIGP0WSTRB(3 downto 0) => B"0000",
      SAXIGP0WVALID => '0',
      SAXIGP1ACLK => '0',
      SAXIGP1ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIGP1ARBURST(1 downto 0) => B"00",
      SAXIGP1ARCACHE(3 downto 0) => B"0000",
      SAXIGP1ARESETN => NLW_PS7_i_SAXIGP1ARESETN_UNCONNECTED,
      SAXIGP1ARID(5 downto 0) => B"000000",
      SAXIGP1ARLEN(3 downto 0) => B"0000",
      SAXIGP1ARLOCK(1 downto 0) => B"00",
      SAXIGP1ARPROT(2 downto 0) => B"000",
      SAXIGP1ARQOS(3 downto 0) => B"0000",
      SAXIGP1ARREADY => NLW_PS7_i_SAXIGP1ARREADY_UNCONNECTED,
      SAXIGP1ARSIZE(1 downto 0) => B"00",
      SAXIGP1ARVALID => '0',
      SAXIGP1AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIGP1AWBURST(1 downto 0) => B"00",
      SAXIGP1AWCACHE(3 downto 0) => B"0000",
      SAXIGP1AWID(5 downto 0) => B"000000",
      SAXIGP1AWLEN(3 downto 0) => B"0000",
      SAXIGP1AWLOCK(1 downto 0) => B"00",
      SAXIGP1AWPROT(2 downto 0) => B"000",
      SAXIGP1AWQOS(3 downto 0) => B"0000",
      SAXIGP1AWREADY => NLW_PS7_i_SAXIGP1AWREADY_UNCONNECTED,
      SAXIGP1AWSIZE(1 downto 0) => B"00",
      SAXIGP1AWVALID => '0',
      SAXIGP1BID(5 downto 0) => NLW_PS7_i_SAXIGP1BID_UNCONNECTED(5 downto 0),
      SAXIGP1BREADY => '0',
      SAXIGP1BRESP(1 downto 0) => NLW_PS7_i_SAXIGP1BRESP_UNCONNECTED(1 downto 0),
      SAXIGP1BVALID => NLW_PS7_i_SAXIGP1BVALID_UNCONNECTED,
      SAXIGP1RDATA(31 downto 0) => NLW_PS7_i_SAXIGP1RDATA_UNCONNECTED(31 downto 0),
      SAXIGP1RID(5 downto 0) => NLW_PS7_i_SAXIGP1RID_UNCONNECTED(5 downto 0),
      SAXIGP1RLAST => NLW_PS7_i_SAXIGP1RLAST_UNCONNECTED,
      SAXIGP1RREADY => '0',
      SAXIGP1RRESP(1 downto 0) => NLW_PS7_i_SAXIGP1RRESP_UNCONNECTED(1 downto 0),
      SAXIGP1RVALID => NLW_PS7_i_SAXIGP1RVALID_UNCONNECTED,
      SAXIGP1WDATA(31 downto 0) => B"00000000000000000000000000000000",
      SAXIGP1WID(5 downto 0) => B"000000",
      SAXIGP1WLAST => '0',
      SAXIGP1WREADY => NLW_PS7_i_SAXIGP1WREADY_UNCONNECTED,
      SAXIGP1WSTRB(3 downto 0) => B"0000",
      SAXIGP1WVALID => '0',
      SAXIHP0ACLK => S_AXI_HP0_ACLK,
      SAXIHP0ARADDR(31 downto 0) => S_AXI_HP0_ARADDR(31 downto 0),
      SAXIHP0ARBURST(1 downto 0) => S_AXI_HP0_ARBURST(1 downto 0),
      SAXIHP0ARCACHE(3 downto 0) => S_AXI_HP0_ARCACHE(3 downto 0),
      SAXIHP0ARESETN => NLW_PS7_i_SAXIHP0ARESETN_UNCONNECTED,
      SAXIHP0ARID(5 downto 0) => S_AXI_HP0_ARID(5 downto 0),
      SAXIHP0ARLEN(3 downto 0) => S_AXI_HP0_ARLEN(3 downto 0),
      SAXIHP0ARLOCK(1 downto 0) => S_AXI_HP0_ARLOCK(1 downto 0),
      SAXIHP0ARPROT(2 downto 0) => S_AXI_HP0_ARPROT(2 downto 0),
      SAXIHP0ARQOS(3 downto 0) => S_AXI_HP0_ARQOS(3 downto 0),
      SAXIHP0ARREADY => S_AXI_HP0_ARREADY,
      SAXIHP0ARSIZE(1 downto 0) => S_AXI_HP0_ARSIZE(1 downto 0),
      SAXIHP0ARVALID => S_AXI_HP0_ARVALID,
      SAXIHP0AWADDR(31 downto 0) => S_AXI_HP0_AWADDR(31 downto 0),
      SAXIHP0AWBURST(1 downto 0) => S_AXI_HP0_AWBURST(1 downto 0),
      SAXIHP0AWCACHE(3 downto 0) => S_AXI_HP0_AWCACHE(3 downto 0),
      SAXIHP0AWID(5 downto 0) => S_AXI_HP0_AWID(5 downto 0),
      SAXIHP0AWLEN(3 downto 0) => S_AXI_HP0_AWLEN(3 downto 0),
      SAXIHP0AWLOCK(1 downto 0) => S_AXI_HP0_AWLOCK(1 downto 0),
      SAXIHP0AWPROT(2 downto 0) => S_AXI_HP0_AWPROT(2 downto 0),
      SAXIHP0AWQOS(3 downto 0) => S_AXI_HP0_AWQOS(3 downto 0),
      SAXIHP0AWREADY => S_AXI_HP0_AWREADY,
      SAXIHP0AWSIZE(1 downto 0) => S_AXI_HP0_AWSIZE(1 downto 0),
      SAXIHP0AWVALID => S_AXI_HP0_AWVALID,
      SAXIHP0BID(5 downto 0) => NLW_PS7_i_SAXIHP0BID_UNCONNECTED(5 downto 0),
      SAXIHP0BREADY => S_AXI_HP0_BREADY,
      SAXIHP0BRESP(1 downto 0) => NLW_PS7_i_SAXIHP0BRESP_UNCONNECTED(1 downto 0),
      SAXIHP0BVALID => S_AXI_HP0_BVALID,
      SAXIHP0RACOUNT(2 downto 0) => NLW_PS7_i_SAXIHP0RACOUNT_UNCONNECTED(2 downto 0),
      SAXIHP0RCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP0RCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP0RDATA(63 downto 0) => S_AXI_HP0_RDATA(63 downto 0),
      SAXIHP0RDISSUECAP1EN => S_AXI_HP0_RDISSUECAP1_EN,
      SAXIHP0RID(5 downto 0) => NLW_PS7_i_SAXIHP0RID_UNCONNECTED(5 downto 0),
      SAXIHP0RLAST => S_AXI_HP0_RLAST,
      SAXIHP0RREADY => S_AXI_HP0_RREADY,
      SAXIHP0RRESP(1 downto 0) => NLW_PS7_i_SAXIHP0RRESP_UNCONNECTED(1 downto 0),
      SAXIHP0RVALID => S_AXI_HP0_RVALID,
      SAXIHP0WACOUNT(5 downto 0) => NLW_PS7_i_SAXIHP0WACOUNT_UNCONNECTED(5 downto 0),
      SAXIHP0WCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP0WCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP0WDATA(63 downto 0) => S_AXI_HP0_WDATA(63 downto 0),
      SAXIHP0WID(5 downto 0) => S_AXI_HP0_WID(5 downto 0),
      SAXIHP0WLAST => S_AXI_HP0_WLAST,
      SAXIHP0WREADY => S_AXI_HP0_WREADY,
      SAXIHP0WRISSUECAP1EN => S_AXI_HP0_WRISSUECAP1_EN,
      SAXIHP0WSTRB(7 downto 0) => S_AXI_HP0_WSTRB(7 downto 0),
      SAXIHP0WVALID => S_AXI_HP0_WVALID,
      SAXIHP1ACLK => '0',
      SAXIHP1ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIHP1ARBURST(1 downto 0) => B"00",
      SAXIHP1ARCACHE(3 downto 0) => B"0000",
      SAXIHP1ARESETN => NLW_PS7_i_SAXIHP1ARESETN_UNCONNECTED,
      SAXIHP1ARID(5 downto 0) => B"000000",
      SAXIHP1ARLEN(3 downto 0) => B"0000",
      SAXIHP1ARLOCK(1 downto 0) => B"00",
      SAXIHP1ARPROT(2 downto 0) => B"000",
      SAXIHP1ARQOS(3 downto 0) => B"0000",
      SAXIHP1ARREADY => NLW_PS7_i_SAXIHP1ARREADY_UNCONNECTED,
      SAXIHP1ARSIZE(1 downto 0) => B"00",
      SAXIHP1ARVALID => '0',
      SAXIHP1AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIHP1AWBURST(1 downto 0) => B"00",
      SAXIHP1AWCACHE(3 downto 0) => B"0000",
      SAXIHP1AWID(5 downto 0) => B"000000",
      SAXIHP1AWLEN(3 downto 0) => B"0000",
      SAXIHP1AWLOCK(1 downto 0) => B"00",
      SAXIHP1AWPROT(2 downto 0) => B"000",
      SAXIHP1AWQOS(3 downto 0) => B"0000",
      SAXIHP1AWREADY => NLW_PS7_i_SAXIHP1AWREADY_UNCONNECTED,
      SAXIHP1AWSIZE(1 downto 0) => B"00",
      SAXIHP1AWVALID => '0',
      SAXIHP1BID(5 downto 0) => NLW_PS7_i_SAXIHP1BID_UNCONNECTED(5 downto 0),
      SAXIHP1BREADY => '0',
      SAXIHP1BRESP(1 downto 0) => NLW_PS7_i_SAXIHP1BRESP_UNCONNECTED(1 downto 0),
      SAXIHP1BVALID => NLW_PS7_i_SAXIHP1BVALID_UNCONNECTED,
      SAXIHP1RACOUNT(2 downto 0) => NLW_PS7_i_SAXIHP1RACOUNT_UNCONNECTED(2 downto 0),
      SAXIHP1RCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP1RCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP1RDATA(63 downto 0) => NLW_PS7_i_SAXIHP1RDATA_UNCONNECTED(63 downto 0),
      SAXIHP1RDISSUECAP1EN => '0',
      SAXIHP1RID(5 downto 0) => NLW_PS7_i_SAXIHP1RID_UNCONNECTED(5 downto 0),
      SAXIHP1RLAST => NLW_PS7_i_SAXIHP1RLAST_UNCONNECTED,
      SAXIHP1RREADY => '0',
      SAXIHP1RRESP(1 downto 0) => NLW_PS7_i_SAXIHP1RRESP_UNCONNECTED(1 downto 0),
      SAXIHP1RVALID => NLW_PS7_i_SAXIHP1RVALID_UNCONNECTED,
      SAXIHP1WACOUNT(5 downto 0) => NLW_PS7_i_SAXIHP1WACOUNT_UNCONNECTED(5 downto 0),
      SAXIHP1WCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP1WCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP1WDATA(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      SAXIHP1WID(5 downto 0) => B"000000",
      SAXIHP1WLAST => '0',
      SAXIHP1WREADY => NLW_PS7_i_SAXIHP1WREADY_UNCONNECTED,
      SAXIHP1WRISSUECAP1EN => '0',
      SAXIHP1WSTRB(7 downto 0) => B"00000000",
      SAXIHP1WVALID => '0',
      SAXIHP2ACLK => '0',
      SAXIHP2ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIHP2ARBURST(1 downto 0) => B"00",
      SAXIHP2ARCACHE(3 downto 0) => B"0000",
      SAXIHP2ARESETN => NLW_PS7_i_SAXIHP2ARESETN_UNCONNECTED,
      SAXIHP2ARID(5 downto 0) => B"000000",
      SAXIHP2ARLEN(3 downto 0) => B"0000",
      SAXIHP2ARLOCK(1 downto 0) => B"00",
      SAXIHP2ARPROT(2 downto 0) => B"000",
      SAXIHP2ARQOS(3 downto 0) => B"0000",
      SAXIHP2ARREADY => NLW_PS7_i_SAXIHP2ARREADY_UNCONNECTED,
      SAXIHP2ARSIZE(1 downto 0) => B"00",
      SAXIHP2ARVALID => '0',
      SAXIHP2AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIHP2AWBURST(1 downto 0) => B"00",
      SAXIHP2AWCACHE(3 downto 0) => B"0000",
      SAXIHP2AWID(5 downto 0) => B"000000",
      SAXIHP2AWLEN(3 downto 0) => B"0000",
      SAXIHP2AWLOCK(1 downto 0) => B"00",
      SAXIHP2AWPROT(2 downto 0) => B"000",
      SAXIHP2AWQOS(3 downto 0) => B"0000",
      SAXIHP2AWREADY => NLW_PS7_i_SAXIHP2AWREADY_UNCONNECTED,
      SAXIHP2AWSIZE(1 downto 0) => B"00",
      SAXIHP2AWVALID => '0',
      SAXIHP2BID(5 downto 0) => NLW_PS7_i_SAXIHP2BID_UNCONNECTED(5 downto 0),
      SAXIHP2BREADY => '0',
      SAXIHP2BRESP(1 downto 0) => NLW_PS7_i_SAXIHP2BRESP_UNCONNECTED(1 downto 0),
      SAXIHP2BVALID => NLW_PS7_i_SAXIHP2BVALID_UNCONNECTED,
      SAXIHP2RACOUNT(2 downto 0) => NLW_PS7_i_SAXIHP2RACOUNT_UNCONNECTED(2 downto 0),
      SAXIHP2RCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP2RCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP2RDATA(63 downto 0) => NLW_PS7_i_SAXIHP2RDATA_UNCONNECTED(63 downto 0),
      SAXIHP2RDISSUECAP1EN => '0',
      SAXIHP2RID(5 downto 0) => NLW_PS7_i_SAXIHP2RID_UNCONNECTED(5 downto 0),
      SAXIHP2RLAST => NLW_PS7_i_SAXIHP2RLAST_UNCONNECTED,
      SAXIHP2RREADY => '0',
      SAXIHP2RRESP(1 downto 0) => NLW_PS7_i_SAXIHP2RRESP_UNCONNECTED(1 downto 0),
      SAXIHP2RVALID => NLW_PS7_i_SAXIHP2RVALID_UNCONNECTED,
      SAXIHP2WACOUNT(5 downto 0) => NLW_PS7_i_SAXIHP2WACOUNT_UNCONNECTED(5 downto 0),
      SAXIHP2WCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP2WCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP2WDATA(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      SAXIHP2WID(5 downto 0) => B"000000",
      SAXIHP2WLAST => '0',
      SAXIHP2WREADY => NLW_PS7_i_SAXIHP2WREADY_UNCONNECTED,
      SAXIHP2WRISSUECAP1EN => '0',
      SAXIHP2WSTRB(7 downto 0) => B"00000000",
      SAXIHP2WVALID => '0',
      SAXIHP3ACLK => '0',
      SAXIHP3ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIHP3ARBURST(1 downto 0) => B"00",
      SAXIHP3ARCACHE(3 downto 0) => B"0000",
      SAXIHP3ARESETN => NLW_PS7_i_SAXIHP3ARESETN_UNCONNECTED,
      SAXIHP3ARID(5 downto 0) => B"000000",
      SAXIHP3ARLEN(3 downto 0) => B"0000",
      SAXIHP3ARLOCK(1 downto 0) => B"00",
      SAXIHP3ARPROT(2 downto 0) => B"000",
      SAXIHP3ARQOS(3 downto 0) => B"0000",
      SAXIHP3ARREADY => NLW_PS7_i_SAXIHP3ARREADY_UNCONNECTED,
      SAXIHP3ARSIZE(1 downto 0) => B"00",
      SAXIHP3ARVALID => '0',
      SAXIHP3AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      SAXIHP3AWBURST(1 downto 0) => B"00",
      SAXIHP3AWCACHE(3 downto 0) => B"0000",
      SAXIHP3AWID(5 downto 0) => B"000000",
      SAXIHP3AWLEN(3 downto 0) => B"0000",
      SAXIHP3AWLOCK(1 downto 0) => B"00",
      SAXIHP3AWPROT(2 downto 0) => B"000",
      SAXIHP3AWQOS(3 downto 0) => B"0000",
      SAXIHP3AWREADY => NLW_PS7_i_SAXIHP3AWREADY_UNCONNECTED,
      SAXIHP3AWSIZE(1 downto 0) => B"00",
      SAXIHP3AWVALID => '0',
      SAXIHP3BID(5 downto 0) => NLW_PS7_i_SAXIHP3BID_UNCONNECTED(5 downto 0),
      SAXIHP3BREADY => '0',
      SAXIHP3BRESP(1 downto 0) => NLW_PS7_i_SAXIHP3BRESP_UNCONNECTED(1 downto 0),
      SAXIHP3BVALID => NLW_PS7_i_SAXIHP3BVALID_UNCONNECTED,
      SAXIHP3RACOUNT(2 downto 0) => NLW_PS7_i_SAXIHP3RACOUNT_UNCONNECTED(2 downto 0),
      SAXIHP3RCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP3RCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP3RDATA(63 downto 0) => NLW_PS7_i_SAXIHP3RDATA_UNCONNECTED(63 downto 0),
      SAXIHP3RDISSUECAP1EN => '0',
      SAXIHP3RID(5 downto 0) => NLW_PS7_i_SAXIHP3RID_UNCONNECTED(5 downto 0),
      SAXIHP3RLAST => NLW_PS7_i_SAXIHP3RLAST_UNCONNECTED,
      SAXIHP3RREADY => '0',
      SAXIHP3RRESP(1 downto 0) => NLW_PS7_i_SAXIHP3RRESP_UNCONNECTED(1 downto 0),
      SAXIHP3RVALID => NLW_PS7_i_SAXIHP3RVALID_UNCONNECTED,
      SAXIHP3WACOUNT(5 downto 0) => NLW_PS7_i_SAXIHP3WACOUNT_UNCONNECTED(5 downto 0),
      SAXIHP3WCOUNT(7 downto 0) => NLW_PS7_i_SAXIHP3WCOUNT_UNCONNECTED(7 downto 0),
      SAXIHP3WDATA(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      SAXIHP3WID(5 downto 0) => B"000000",
      SAXIHP3WLAST => '0',
      SAXIHP3WREADY => NLW_PS7_i_SAXIHP3WREADY_UNCONNECTED,
      SAXIHP3WRISSUECAP1EN => '0',
      SAXIHP3WSTRB(7 downto 0) => B"00000000",
      SAXIHP3WVALID => '0'
    );
PS_CLK_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_PS_CLK,
      PAD => PS_CLK
    );
PS_PORB_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_PS_PORB,
      PAD => PS_PORB
    );
PS_SRSTB_BIBUF: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_PS_SRSTB,
      PAD => PS_SRSTB
    );
\buffer_fclk_clk_0.FCLK_CLK_0_BUFG\: unisim.vcomponents.BUFG
     port map (
      I => FCLK_CLK_unbuffered(0),
      O => FCLK_CLK0
    );
\genblk13[0].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(0),
      PAD => MIO(0)
    );
\genblk13[10].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(10),
      PAD => MIO(10)
    );
\genblk13[11].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(11),
      PAD => MIO(11)
    );
\genblk13[12].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(12),
      PAD => MIO(12)
    );
\genblk13[13].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(13),
      PAD => MIO(13)
    );
\genblk13[14].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(14),
      PAD => MIO(14)
    );
\genblk13[15].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(15),
      PAD => MIO(15)
    );
\genblk13[16].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(16),
      PAD => MIO(16)
    );
\genblk13[17].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(17),
      PAD => MIO(17)
    );
\genblk13[18].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(18),
      PAD => MIO(18)
    );
\genblk13[19].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(19),
      PAD => MIO(19)
    );
\genblk13[1].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(1),
      PAD => MIO(1)
    );
\genblk13[20].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(20),
      PAD => MIO(20)
    );
\genblk13[21].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(21),
      PAD => MIO(21)
    );
\genblk13[22].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(22),
      PAD => MIO(22)
    );
\genblk13[23].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(23),
      PAD => MIO(23)
    );
\genblk13[24].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(24),
      PAD => MIO(24)
    );
\genblk13[25].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(25),
      PAD => MIO(25)
    );
\genblk13[26].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(26),
      PAD => MIO(26)
    );
\genblk13[27].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(27),
      PAD => MIO(27)
    );
\genblk13[28].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(28),
      PAD => MIO(28)
    );
\genblk13[29].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(29),
      PAD => MIO(29)
    );
\genblk13[2].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(2),
      PAD => MIO(2)
    );
\genblk13[30].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(30),
      PAD => MIO(30)
    );
\genblk13[31].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(31),
      PAD => MIO(31)
    );
\genblk13[32].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(32),
      PAD => MIO(32)
    );
\genblk13[33].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(33),
      PAD => MIO(33)
    );
\genblk13[34].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(34),
      PAD => MIO(34)
    );
\genblk13[35].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(35),
      PAD => MIO(35)
    );
\genblk13[36].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(36),
      PAD => MIO(36)
    );
\genblk13[37].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(37),
      PAD => MIO(37)
    );
\genblk13[38].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(38),
      PAD => MIO(38)
    );
\genblk13[39].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(39),
      PAD => MIO(39)
    );
\genblk13[3].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(3),
      PAD => MIO(3)
    );
\genblk13[40].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(40),
      PAD => MIO(40)
    );
\genblk13[41].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(41),
      PAD => MIO(41)
    );
\genblk13[42].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(42),
      PAD => MIO(42)
    );
\genblk13[43].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(43),
      PAD => MIO(43)
    );
\genblk13[44].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(44),
      PAD => MIO(44)
    );
\genblk13[45].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(45),
      PAD => MIO(45)
    );
\genblk13[46].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(46),
      PAD => MIO(46)
    );
\genblk13[47].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(47),
      PAD => MIO(47)
    );
\genblk13[48].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(48),
      PAD => MIO(48)
    );
\genblk13[49].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(49),
      PAD => MIO(49)
    );
\genblk13[4].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(4),
      PAD => MIO(4)
    );
\genblk13[50].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(50),
      PAD => MIO(50)
    );
\genblk13[51].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(51),
      PAD => MIO(51)
    );
\genblk13[52].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(52),
      PAD => MIO(52)
    );
\genblk13[53].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(53),
      PAD => MIO(53)
    );
\genblk13[5].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(5),
      PAD => MIO(5)
    );
\genblk13[6].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(6),
      PAD => MIO(6)
    );
\genblk13[7].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(7),
      PAD => MIO(7)
    );
\genblk13[8].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(8),
      PAD => MIO(8)
    );
\genblk13[9].MIO_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_MIO(9),
      PAD => MIO(9)
    );
\genblk14[0].DDR_BankAddr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_BankAddr(0),
      PAD => DDR_BankAddr(0)
    );
\genblk14[1].DDR_BankAddr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_BankAddr(1),
      PAD => DDR_BankAddr(1)
    );
\genblk14[2].DDR_BankAddr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_BankAddr(2),
      PAD => DDR_BankAddr(2)
    );
\genblk15[0].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(0),
      PAD => DDR_Addr(0)
    );
\genblk15[10].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(10),
      PAD => DDR_Addr(10)
    );
\genblk15[11].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(11),
      PAD => DDR_Addr(11)
    );
\genblk15[12].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(12),
      PAD => DDR_Addr(12)
    );
\genblk15[13].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(13),
      PAD => DDR_Addr(13)
    );
\genblk15[14].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(14),
      PAD => DDR_Addr(14)
    );
\genblk15[1].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(1),
      PAD => DDR_Addr(1)
    );
\genblk15[2].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(2),
      PAD => DDR_Addr(2)
    );
\genblk15[3].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(3),
      PAD => DDR_Addr(3)
    );
\genblk15[4].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(4),
      PAD => DDR_Addr(4)
    );
\genblk15[5].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(5),
      PAD => DDR_Addr(5)
    );
\genblk15[6].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(6),
      PAD => DDR_Addr(6)
    );
\genblk15[7].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(7),
      PAD => DDR_Addr(7)
    );
\genblk15[8].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(8),
      PAD => DDR_Addr(8)
    );
\genblk15[9].DDR_Addr_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_Addr(9),
      PAD => DDR_Addr(9)
    );
\genblk16[0].DDR_DM_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DM(0),
      PAD => DDR_DM(0)
    );
\genblk16[1].DDR_DM_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DM(1),
      PAD => DDR_DM(1)
    );
\genblk16[2].DDR_DM_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DM(2),
      PAD => DDR_DM(2)
    );
\genblk16[3].DDR_DM_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DM(3),
      PAD => DDR_DM(3)
    );
\genblk17[0].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(0),
      PAD => DDR_DQ(0)
    );
\genblk17[10].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(10),
      PAD => DDR_DQ(10)
    );
\genblk17[11].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(11),
      PAD => DDR_DQ(11)
    );
\genblk17[12].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(12),
      PAD => DDR_DQ(12)
    );
\genblk17[13].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(13),
      PAD => DDR_DQ(13)
    );
\genblk17[14].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(14),
      PAD => DDR_DQ(14)
    );
\genblk17[15].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(15),
      PAD => DDR_DQ(15)
    );
\genblk17[16].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(16),
      PAD => DDR_DQ(16)
    );
\genblk17[17].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(17),
      PAD => DDR_DQ(17)
    );
\genblk17[18].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(18),
      PAD => DDR_DQ(18)
    );
\genblk17[19].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(19),
      PAD => DDR_DQ(19)
    );
\genblk17[1].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(1),
      PAD => DDR_DQ(1)
    );
\genblk17[20].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(20),
      PAD => DDR_DQ(20)
    );
\genblk17[21].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(21),
      PAD => DDR_DQ(21)
    );
\genblk17[22].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(22),
      PAD => DDR_DQ(22)
    );
\genblk17[23].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(23),
      PAD => DDR_DQ(23)
    );
\genblk17[24].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(24),
      PAD => DDR_DQ(24)
    );
\genblk17[25].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(25),
      PAD => DDR_DQ(25)
    );
\genblk17[26].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(26),
      PAD => DDR_DQ(26)
    );
\genblk17[27].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(27),
      PAD => DDR_DQ(27)
    );
\genblk17[28].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(28),
      PAD => DDR_DQ(28)
    );
\genblk17[29].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(29),
      PAD => DDR_DQ(29)
    );
\genblk17[2].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(2),
      PAD => DDR_DQ(2)
    );
\genblk17[30].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(30),
      PAD => DDR_DQ(30)
    );
\genblk17[31].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(31),
      PAD => DDR_DQ(31)
    );
\genblk17[3].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(3),
      PAD => DDR_DQ(3)
    );
\genblk17[4].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(4),
      PAD => DDR_DQ(4)
    );
\genblk17[5].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(5),
      PAD => DDR_DQ(5)
    );
\genblk17[6].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(6),
      PAD => DDR_DQ(6)
    );
\genblk17[7].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(7),
      PAD => DDR_DQ(7)
    );
\genblk17[8].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(8),
      PAD => DDR_DQ(8)
    );
\genblk17[9].DDR_DQ_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQ(9),
      PAD => DDR_DQ(9)
    );
\genblk18[0].DDR_DQS_n_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS_n(0),
      PAD => DDR_DQS_n(0)
    );
\genblk18[1].DDR_DQS_n_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS_n(1),
      PAD => DDR_DQS_n(1)
    );
\genblk18[2].DDR_DQS_n_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS_n(2),
      PAD => DDR_DQS_n(2)
    );
\genblk18[3].DDR_DQS_n_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS_n(3),
      PAD => DDR_DQS_n(3)
    );
\genblk19[0].DDR_DQS_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS(0),
      PAD => DDR_DQS(0)
    );
\genblk19[1].DDR_DQS_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS(1),
      PAD => DDR_DQS(1)
    );
\genblk19[2].DDR_DQS_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS(2),
      PAD => DDR_DQS(2)
    );
\genblk19[3].DDR_DQS_BIBUF\: unisim.vcomponents.BIBUF
     port map (
      IO => buffered_DDR_DQS(3),
      PAD => DDR_DQS(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_rst_ps7_0_50M_0_cdc_sync is
  port (
    lpf_exr_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    lpf_exr : in STD_LOGIC;
    p_1_in4_in : in STD_LOGIC;
    p_2_in3_in : in STD_LOGIC;
    exr_lpf : in STD_LOGIC_VECTOR ( 0 to 0 );
    ext_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    slowest_sync_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_rst_ps7_0_50M_0_cdc_sync : entity is "cdc_sync";
end Setup_rst_ps7_0_50M_0_cdc_sync;

architecture STRUCTURE of Setup_rst_ps7_0_50M_0_cdc_sync is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PROPCONST";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => ext_reset_in,
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => Q,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \^scndry_out\,
      R => '0'
    );
lpf_exr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAA8"
    )
        port map (
      I0 => lpf_exr,
      I1 => p_1_in4_in,
      I2 => p_2_in3_in,
      I3 => \^scndry_out\,
      I4 => exr_lpf(0),
      O => lpf_exr_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_rst_ps7_0_50M_0_cdc_sync_0 is
  port (
    lpf_asr_reg : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    lpf_asr : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    asr_lpf : in STD_LOGIC_VECTOR ( 0 to 0 );
    aux_reset_in : in STD_LOGIC;
    slowest_sync_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_rst_ps7_0_50M_0_cdc_sync_0 : entity is "cdc_sync";
end Setup_rst_ps7_0_50M_0_cdc_sync_0;

architecture STRUCTURE of Setup_rst_ps7_0_50M_0_cdc_sync_0 is
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\ : STD_LOGIC;
  signal \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "VCC:CE";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => '0',
      Q => Q,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => Q,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2\,
      Q => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3\,
      Q => \^scndry_out\,
      R => '0'
    );
lpf_asr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAA8"
    )
        port map (
      I0 => lpf_asr,
      I1 => p_1_in,
      I2 => p_2_in,
      I3 => \^scndry_out\,
      I4 => asr_lpf(0),
      O => lpf_asr_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_rst_ps7_0_50M_0_upcnt_n is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    seq_clr : in STD_LOGIC;
    seq_cnt_en : in STD_LOGIC;
    slowest_sync_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_rst_ps7_0_50M_0_upcnt_n : entity is "upcnt_n";
end Setup_rst_ps7_0_50M_0_upcnt_n;

architecture STRUCTURE of Setup_rst_ps7_0_50M_0_upcnt_n is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal clear : STD_LOGIC;
  signal q_int0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute \PinAttr:I1:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I1:HOLD_DETOUR\ of \q_int[1]_i_1\ : label is 191;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q_int[1]_i_1\ : label is "soft_lutpair1";
  attribute \PinAttr:I1:HOLD_DETOUR\ of \q_int[2]_i_1\ : label is 191;
  attribute SOFT_HLUTNM of \q_int[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_int[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q_int[4]_i_1\ : label is "soft_lutpair0";
  attribute \PinAttr:I3:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I3:HOLD_DETOUR\ of \q_int[5]_i_2\ : label is 147;
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\q_int[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => q_int0(0)
    );
\q_int[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => q_int0(1)
    );
\q_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => q_int0(2)
    );
\q_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => q_int0(3)
    );
\q_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => q_int0(4)
    );
\q_int[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => seq_clr,
      O => clear
    );
\q_int[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => q_int0(5)
    );
\q_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => seq_cnt_en,
      D => q_int0(0),
      Q => \^q\(0),
      R => clear
    );
\q_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => seq_cnt_en,
      D => q_int0(1),
      Q => \^q\(1),
      R => clear
    );
\q_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => seq_cnt_en,
      D => q_int0(2),
      Q => \^q\(2),
      R => clear
    );
\q_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => seq_cnt_en,
      D => q_int0(3),
      Q => \^q\(3),
      R => clear
    );
\q_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => seq_cnt_en,
      D => q_int0(4),
      Q => \^q\(4),
      R => clear
    );
\q_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => seq_cnt_en,
      D => q_int0(5),
      Q => \^q\(5),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_util_vector_logic_0_0 : entity is "Setup_util_vector_logic_0_0,util_vector_logic_v2_0_4_util_vector_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_util_vector_logic_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Setup_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.1";
end Setup_util_vector_logic_0_0;

architecture STRUCTURE of Setup_util_vector_logic_0_0 is
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Res[0]_INST_0\ : label is "RETARGET";
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_util_vector_logic_1_0 : entity is "Setup_util_vector_logic_0_0,util_vector_logic_v2_0_4_util_vector_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_util_vector_logic_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Setup_util_vector_logic_1_0 : entity is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.1";
end Setup_util_vector_logic_1_0;

architecture STRUCTURE of Setup_util_vector_logic_1_0 is
  signal \^op1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Res(0) <= \^op1\(0);
  \^op1\(0) <= Op1(0);
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
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal NLW_U0_done_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_start_read_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_start_write_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_M_AXI_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_M_AXI_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_write_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_INFO of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET reset, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_PARAMETER of M_AXI_AWADDR : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
  M_AXI_AWVALID <= \^m_axi_wvalid\;
  M_AXI_WVALID <= \^m_axi_wvalid\;
U0: entity work.Setup_AXI_Master_0_3_AXI_Master
     port map (
      M_AXI_ARADDR(31 downto 0) => NLW_U0_M_AXI_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => NLW_U0_M_AXI_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_RDATA(31 downto 0) => M_AXI_RDATA(31 downto 0),
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_WDATA(31 downto 0) => NLW_U0_M_AXI_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(0) => NLW_U0_M_AXI_WSTRB_UNCONNECTED(0),
      M_AXI_WVALID => \^m_axi_wvalid\,
      address(31 downto 0) => NLW_U0_address_UNCONNECTED(31 downto 0),
      clk => clk,
      done => NLW_U0_done_UNCONNECTED,
      read_data(31 downto 0) => read_data(31 downto 0),
      reset => reset,
      start_read => NLW_U0_start_read_UNCONNECTED,
      start_write => NLW_U0_start_write_UNCONNECTED,
      write_data(31 downto 0) => NLW_U0_write_data_UNCONNECTED(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_auto_pc_0 : entity is "Setup_auto_pc_0,axi_protocol_converter_v2_1_31_axi_protocol_converter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_auto_pc_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Setup_auto_pc_0 : entity is "axi_protocol_converter_v2_1_31_axi_protocol_converter,Vivado 2024.1";
end Setup_auto_pc_0;

architecture STRUCTURE of Setup_auto_pc_0 is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_s_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_s_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of inst : label is 1;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of inst : label is 1;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of inst : label is 2;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of inst : label is 2;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of inst : label is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of inst : label is "2'b10";
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 0, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  m_axi_arburst(0) <= \<const1>\;
  m_axi_arsize(1) <= \<const1>\;
  m_axi_awburst(0) <= \<const1>\;
  m_axi_awsize(1) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.Setup_auto_pc_0_axi_protocol_converter_v2_1_31_axi_protocol_converter
     port map (
      aclk => NLW_inst_aclk_UNCONNECTED,
      aresetn => NLW_inst_aresetn_UNCONNECTED,
      m_axi_araddr(31 downto 0) => NLW_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_inst_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(3 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => NLW_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_inst_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(3 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => NLW_inst_m_axi_bid_UNCONNECTED(0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => NLW_inst_m_axi_bresp_UNCONNECTED(1 downto 0),
      m_axi_buser(0) => NLW_inst_m_axi_buser_UNCONNECTED(0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => NLW_inst_m_axi_rid_UNCONNECTED(0),
      m_axi_rlast => NLW_inst_m_axi_rlast_UNCONNECTED,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => NLW_inst_m_axi_rresp_UNCONNECTED(1 downto 0),
      m_axi_ruser(0) => NLW_inst_m_axi_ruser_UNCONNECTED(0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => NLW_inst_m_axi_wdata_UNCONNECTED(31 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => NLW_inst_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => NLW_inst_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_inst_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arcache(3 downto 0) => NLW_inst_s_axi_arcache_UNCONNECTED(3 downto 0),
      s_axi_arid(0) => NLW_inst_s_axi_arid_UNCONNECTED(0),
      s_axi_arlen(7 downto 0) => NLW_inst_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arlock(0) => NLW_inst_s_axi_arlock_UNCONNECTED(0),
      s_axi_arprot(2 downto 0) => NLW_inst_s_axi_arprot_UNCONNECTED(2 downto 0),
      s_axi_arqos(3 downto 0) => NLW_inst_s_axi_arqos_UNCONNECTED(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => NLW_inst_s_axi_arregion_UNCONNECTED(3 downto 0),
      s_axi_arsize(2 downto 0) => NLW_inst_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_aruser(0) => NLW_inst_s_axi_aruser_UNCONNECTED(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => NLW_inst_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_inst_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awcache(3 downto 0) => NLW_inst_s_axi_awcache_UNCONNECTED(3 downto 0),
      s_axi_awid(0) => NLW_inst_s_axi_awid_UNCONNECTED(0),
      s_axi_awlen(7 downto 0) => NLW_inst_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awlock(0) => NLW_inst_s_axi_awlock_UNCONNECTED(0),
      s_axi_awprot(2 downto 0) => NLW_inst_s_axi_awprot_UNCONNECTED(2 downto 0),
      s_axi_awqos(3 downto 0) => NLW_inst_s_axi_awqos_UNCONNECTED(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => NLW_inst_s_axi_awregion_UNCONNECTED(3 downto 0),
      s_axi_awsize(2 downto 0) => NLW_inst_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awuser(0) => NLW_inst_s_axi_awuser_UNCONNECTED(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => NLW_inst_s_axi_wdata_UNCONNECTED(31 downto 0),
      s_axi_wid(0) => NLW_inst_s_axi_wid_UNCONNECTED(0),
      s_axi_wlast => NLW_inst_s_axi_wlast_UNCONNECTED,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => NLW_inst_s_axi_wstrb_UNCONNECTED(3 downto 0),
      s_axi_wuser(0) => NLW_inst_s_axi_wuser_UNCONNECTED(0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer is
  port (
    \USE_WRITE.wr_cmd_valid\ : out STD_LOGIC;
    s_axi_wlast_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_89_in : out STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]\ : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrap_buffer_available_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    p_79_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    cmd_push_block_reg_0 : out STD_LOGIC;
    s_axi_wlast_1 : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ : out STD_LOGIC;
    s_axi_wlast_2 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_RTL_LENGTH.length_counter_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg_0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.current_word_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    \USE_RTL_CURR_WORD.first_word_q\ : in STD_LOGIC;
    \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer : entity is "axi_dwidth_converter_v2_1_31_a_upsizer";
end Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer;

architecture STRUCTURE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer is
  signal cmd_push_block : STD_LOGIC;
  signal cmd_push_block0 : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_REGISTER.M_AXI_WVALID_q_reg_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_CURR_WORD.first_word_q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_LENGTH.first_mi_word_q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_LENGTH.length_counter_q_reg[0]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_p_79_in_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_sel_first_word__0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_D_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_CURR_WORD.current_word_q_reg[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_LENGTH.length_counter_q_reg[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wvalid_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_2_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_3_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_4_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_5_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_6_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
\GEN_CMD_QUEUE.cmd_queue\: entity work.Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo
     port map (
      D(2 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_D_UNCONNECTED\(2 downto 0),
      E(0) => E(0),
      Q(8 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_Q_UNCONNECTED\(8 downto 0),
      SR(0) => SR(0),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0_UNCONNECTED\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0\ => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_0_UNCONNECTED\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0\ => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[29]_0_UNCONNECTED\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ => \USE_WRITE.wr_cmd_valid\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\,
      \USE_REGISTER.M_AXI_WVALID_q_reg\ => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_REGISTER.M_AXI_WVALID_q_reg_UNCONNECTED\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_0\ => \USE_REGISTER.M_AXI_WVALID_q_reg_0\,
      \USE_RTL_CURR_WORD.current_word_q_reg[2]\(2 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_CURR_WORD.current_word_q_reg[2]_UNCONNECTED\(2 downto 0),
      \USE_RTL_CURR_WORD.first_word_q\ => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_CURR_WORD.first_word_q_UNCONNECTED\,
      \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\(2 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_UNCONNECTED\(2 downto 0),
      \USE_RTL_LENGTH.first_mi_word_q\ => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_LENGTH.first_mi_word_q_UNCONNECTED\,
      \USE_RTL_LENGTH.length_counter_q_reg[0]\ => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_LENGTH.length_counter_q_reg[0]_UNCONNECTED\,
      \USE_RTL_LENGTH.length_counter_q_reg[1]\(1 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_USE_RTL_LENGTH.length_counter_q_reg[1]_UNCONNECTED\(1 downto 0),
      \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ => \USE_RTL_LENGTH.length_counter_q_reg[1]_0\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ => \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0_UNCONNECTED\(2 downto 0),
      cmd_push_block => cmd_push_block,
      cmd_push_block0 => cmd_push_block0,
      cmd_push_block_reg => cmd_push_block_reg_0,
      \in\(23 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\(23 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wready => m_axi_wready,
      \out\ => \out\,
      p_79_in => \NLW_GEN_CMD_QUEUE.cmd_queue_p_79_in_UNCONNECTED\,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_wlast => \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_UNCONNECTED\,
      s_axi_wlast_0(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_0_UNCONNECTED\(0),
      s_axi_wlast_1 => \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_1_UNCONNECTED\,
      s_axi_wlast_2 => \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wlast_2_UNCONNECTED\,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wstrb_UNCONNECTED\(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_s_axi_wvalid_0_UNCONNECTED\(0),
      \sel_first_word__0\ => \NLW_GEN_CMD_QUEUE.cmd_queue_sel_first_word__0_UNCONNECTED\,
      wrap_buffer_available => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_UNCONNECTED\,
      wrap_buffer_available_reg(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_UNCONNECTED\(0),
      wrap_buffer_available_reg_0(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_0_UNCONNECTED\(0),
      wrap_buffer_available_reg_1(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_1_UNCONNECTED\(0),
      wrap_buffer_available_reg_2(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_2_UNCONNECTED\(0),
      wrap_buffer_available_reg_3(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_3_UNCONNECTED\(0),
      wrap_buffer_available_reg_4(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_4_UNCONNECTED\(0),
      wrap_buffer_available_reg_5(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_5_UNCONNECTED\(0),
      wrap_buffer_available_reg_6(0) => \NLW_GEN_CMD_QUEUE.cmd_queue_wrap_buffer_available_reg_6_UNCONNECTED\(0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => cmd_push_block0,
      Q => cmd_push_block,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer__parameterized0\ is
  port (
    \USE_READ.rd_cmd_valid\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_13_in : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \pre_next_word_1_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \MULTIPLE_WORD.current_index\ : out STD_LOGIC;
    s_axi_aresetn : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    cmd_push_block_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    use_wrap_buffer : in STD_LOGIC;
    mr_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arvalid_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \last_beat__6\ : in STD_LOGIC;
    wrap_buffer_available : in STD_LOGIC;
    \current_word_1_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \sel_first_word__0\ : in STD_LOGIC;
    first_word : in STD_LOGIC;
    first_word_reg : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer__parameterized0\ : entity is "axi_dwidth_converter_v2_1_31_a_upsizer";
end \Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer__parameterized0\;

architecture STRUCTURE of \Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer__parameterized0\ is
  signal cmd_push_block : STD_LOGIC;
  signal cmd_push_block0 : STD_LOGIC;
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
begin
\GEN_CMD_QUEUE.cmd_queue\: entity work.Setup_auto_us_0_generic_baseblocks_v2_1_2_command_fifo_1
     port map (
      D(2 downto 0) => D(2 downto 0),
      E(0) => E(0),
      \MULTIPLE_WORD.current_index\ => \MULTIPLE_WORD.current_index\,
      Q(5) => Q(5),
      Q(4 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_Q_UNCONNECTED\(4 downto 0),
      SR(0) => SR(0),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_0\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_0\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ => \USE_READ.rd_cmd_valid\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_2\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_3\ => \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q\,
      cmd_push_block => cmd_push_block,
      cmd_push_block0 => cmd_push_block0,
      cmd_push_block_reg => cmd_push_block_reg_0,
      \current_word_1_reg[2]\(2 downto 0) => \current_word_1_reg[2]\(2 downto 0),
      first_word => first_word,
      first_word_reg(2 downto 0) => first_word_reg(2 downto 0),
      \in\(23) => \in\(23),
      \in\(22 downto 17) => \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\(22 downto 17),
      \in\(16) => \in\(16),
      \in\(15) => \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\(15),
      \in\(14) => \in\(14),
      \in\(13 downto 10) => \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\(13 downto 10),
      \in\(9 downto 6) => \in\(9 downto 6),
      \in\(5) => \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\(5),
      \in\(4) => \in\(4),
      \in\(3 downto 0) => \NLW_GEN_CMD_QUEUE.cmd_queue_in_UNCONNECTED\(3 downto 0),
      \last_beat__6\ => \last_beat__6\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arvalid_0(0) => m_axi_arvalid_0(0),
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      \pre_next_word_1_reg[2]\(2 downto 0) => \pre_next_word_1_reg[2]\(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_rready => s_axi_rready,
      s_axi_rready_0(0) => s_axi_rready_0(0),
      s_axi_rvalid => s_axi_rvalid,
      s_ready_i_reg => s_ready_i_reg,
      \sel_first_word__0\ => \sel_first_word__0\,
      use_wrap_buffer => use_wrap_buffer,
      wrap_buffer_available => wrap_buffer_available
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => cmd_push_block0,
      Q => cmd_push_block,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice is
  port (
    s_ready_i_reg : out STD_LOGIC;
    mr_rvalid : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \m_payload_i_reg[66]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 65 downto 0 );
    \out\ : in STD_LOGIC;
    \USE_READ.rd_cmd_valid\ : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rready : in STD_LOGIC;
    p_13_in : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    \USE_RTL_LENGTH.first_mi_word_q\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice : entity is "axi_register_slice_v2_1_31_axi_register_slice";
end Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice;

architecture STRUCTURE of Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice is
  signal \NLW_r.r_pipe_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 65 downto 64 );
  signal \NLW_r.r_pipe_m_axi_rresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\r.r_pipe\: entity work.\Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized2\
     port map (
      E(0) => E(0),
      Q(65 downto 64) => \NLW_r.r_pipe_Q_UNCONNECTED\(65 downto 64),
      Q(63 downto 0) => Q(63 downto 0),
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => \NLW_r.r_pipe_m_axi_rresp_UNCONNECTED\(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[66]_0\ => \m_payload_i_reg[66]\,
      m_valid_i_reg_0 => mr_rvalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      m_valid_i_reg_2 => m_valid_i_reg_0,
      \out\ => \out\,
      p_13_in => p_13_in,
      s_axi_rready => s_axi_rready,
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice__parameterized0\ is
  port (
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_inv : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 38 downto 0 );
    \m_payload_i_reg[38]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \m_payload_i_reg[54]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_valid_i_reg_inv_0 : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_valid_i_reg_inv_1 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_valid_i_reg_inv_2 : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 53 downto 0 );
    \m_payload_i_reg[54]_0\ : in STD_LOGIC_VECTOR ( 53 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice__parameterized0\ : entity is "axi_register_slice_v2_1_31_axi_register_slice";
end \Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice__parameterized0\;

architecture STRUCTURE of \Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice__parameterized0\ is
  signal \^aresetn_d_reg[0]\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]\ : STD_LOGIC;
  signal \NLW_ar.ar_pipe_m_axi_arsize_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_ar.ar_pipe_m_payload_i_reg[38]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 5 );
  signal \NLW_ar.ar_pipe_m_payload_i_reg[54]_1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_aw.aw_pipe_D_UNCONNECTED\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_aw.aw_pipe_in_UNCONNECTED\ : STD_LOGIC_VECTOR ( 23 downto 4 );
  signal \NLW_aw.aw_pipe_m_axi_awsize_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
begin
  \aresetn_d_reg[0]\ <= \^aresetn_d_reg[0]\;
  \aresetn_d_reg[1]\ <= \^aresetn_d_reg[1]\;
\ar.ar_pipe\: entity work.\Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3\
     port map (
      E(0) => m_valid_i_reg_inv(0),
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2) => \NLW_ar.ar_pipe_m_axi_arsize_UNCONNECTED\(2),
      m_axi_arsize(1 downto 0) => m_axi_arsize(1 downto 0),
      \m_payload_i_reg[38]_0\(23) => \m_payload_i_reg[38]\(23),
      \m_payload_i_reg[38]_0\(22 downto 17) => \NLW_ar.ar_pipe_m_payload_i_reg[38]_0_UNCONNECTED\(22 downto 17),
      \m_payload_i_reg[38]_0\(16) => \m_payload_i_reg[38]\(16),
      \m_payload_i_reg[38]_0\(15) => \NLW_ar.ar_pipe_m_payload_i_reg[38]_0_UNCONNECTED\(15),
      \m_payload_i_reg[38]_0\(14) => \m_payload_i_reg[38]\(14),
      \m_payload_i_reg[38]_0\(13 downto 10) => \NLW_ar.ar_pipe_m_payload_i_reg[38]_0_UNCONNECTED\(13 downto 10),
      \m_payload_i_reg[38]_0\(9 downto 6) => \m_payload_i_reg[38]\(9 downto 6),
      \m_payload_i_reg[38]_0\(5) => \NLW_ar.ar_pipe_m_payload_i_reg[38]_0_UNCONNECTED\(5),
      \m_payload_i_reg[38]_0\(4 downto 0) => \m_payload_i_reg[38]\(4 downto 0),
      \m_payload_i_reg[54]_0\(12 downto 0) => \m_payload_i_reg[54]\(12 downto 0),
      \m_payload_i_reg[54]_1\(53 downto 39) => \NLW_ar.ar_pipe_m_payload_i_reg[54]_1_UNCONNECTED\(53 downto 39),
      \m_payload_i_reg[54]_1\(38) => \m_payload_i_reg[54]_0\(38),
      \m_payload_i_reg[54]_1\(37) => \NLW_ar.ar_pipe_m_payload_i_reg[54]_1_UNCONNECTED\(37),
      \m_payload_i_reg[54]_1\(36) => \m_payload_i_reg[54]_0\(36),
      \m_payload_i_reg[54]_1\(35 downto 0) => \NLW_ar.ar_pipe_m_payload_i_reg[54]_1_UNCONNECTED\(35 downto 0),
      m_valid_i_reg_inv_0 => m_valid_i_reg_inv_0,
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv_1,
      \out\ => \out\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_ready_i_reg_0 => \^aresetn_d_reg[1]\,
      s_ready_i_reg_1 => s_ready_i_reg_0,
      s_ready_i_reg_2 => \^aresetn_d_reg[0]\
    );
\aw.aw_pipe\: entity work.\Setup_auto_us_0_axi_register_slice_v2_1_31_axic_register_slice__parameterized3_0\
     port map (
      D(53 downto 39) => \NLW_aw.aw_pipe_D_UNCONNECTED\(53 downto 39),
      D(38) => D(38),
      D(37) => \NLW_aw.aw_pipe_D_UNCONNECTED\(37),
      D(36) => D(36),
      D(35 downto 0) => \NLW_aw.aw_pipe_D_UNCONNECTED\(35 downto 0),
      E(0) => E(0),
      Q(38 downto 0) => Q(38 downto 0),
      SR(0) => SR(0),
      \aresetn_d_reg[0]_0\ => \^aresetn_d_reg[0]\,
      \aresetn_d_reg[1]_0\ => \^aresetn_d_reg[1]\,
      \in\(23 downto 4) => \NLW_aw.aw_pipe_in_UNCONNECTED\(23 downto 4),
      \in\(3 downto 0) => \in\(3 downto 0),
      m_axi_awaddr(5 downto 0) => m_axi_awaddr(5 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2) => \NLW_aw.aw_pipe_m_axi_awsize_UNCONNECTED\(2),
      m_axi_awsize(1 downto 0) => m_axi_awsize(1 downto 0),
      m_valid_i_reg_inv_0 => m_valid_i_reg_inv_2,
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv_1,
      \out\ => \out\,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg_0 => s_ready_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_processing_system7_0_0 is
  port (
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_processing_system7_0_0 : entity is "Setup_processing_system7_0_0,processing_system7_v5_5_processing_system7,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_processing_system7_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Setup_processing_system7_0_0 : entity is "processing_system7_v5_5_processing_system7,Vivado 2024.1";
end Setup_processing_system7_0_0;

architecture STRUCTURE of Setup_processing_system7_0_0 is
  signal NLW_inst_CAN0_PHY_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_CAN0_PHY_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_CAN1_PHY_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_CAN1_PHY_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_Core0_nFIQ_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_Core0_nIRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_Core1_nFIQ_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_Core1_nIRQ_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA0_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA0_DAREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA0_DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA0_DRLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA0_DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA0_DRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA0_RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA1_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA1_DAREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA1_DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA1_DRLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA1_DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA1_DRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA1_RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA2_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA2_DAREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA2_DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA2_DRLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA2_DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA2_DRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA2_RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA3_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA3_DAREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA3_DAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA3_DRLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA3_DRREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA3_DRVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DMA3_RSTN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_EXT_INTIN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_COL_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_CRS_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_RX_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_RX_DV_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_RX_ER_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_TX_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_TX_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_GMII_TX_ER_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_MDIO_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_MDIO_MDC_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_MDIO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_MDIO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_DELAY_REQ_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_DELAY_REQ_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_PDELAY_REQ_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_PDELAY_REQ_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_PDELAY_RESP_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_PDELAY_RESP_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_SYNC_FRAME_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_PTP_SYNC_FRAME_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_SOF_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET0_SOF_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_EXT_INTIN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_COL_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_CRS_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_RX_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_RX_DV_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_RX_ER_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_TX_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_TX_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_GMII_TX_ER_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_MDIO_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_MDIO_MDC_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_MDIO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_MDIO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_DELAY_REQ_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_DELAY_REQ_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_PDELAY_REQ_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_PDELAY_REQ_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_PDELAY_RESP_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_PDELAY_RESP_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_SYNC_FRAME_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_PTP_SYNC_FRAME_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_SOF_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_ENET1_SOF_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_EVENT_EVENTI_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_EVENT_EVENTO_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_CLK1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_CLK2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_CLK3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_CLKTRIG0_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_CLKTRIG1_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_CLKTRIG2_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_CLKTRIG3_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_RESET1_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_RESET2_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FCLK_RESET3_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FPGA_IDLE_N_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMD_TRACEIN_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMD_TRACEIN_VALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIGACK_0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIGACK_1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIGACK_2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIGACK_3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIG_0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIG_1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIG_2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_F2P_TRIG_3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIGACK_0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIGACK_1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIGACK_2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIGACK_3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIG_0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIG_1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIG_2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_FTMT_P2F_TRIG_3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C0_SCL_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C0_SCL_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C0_SCL_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C0_SDA_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C0_SDA_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C0_SDA_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C1_SCL_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C1_SCL_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C1_SCL_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C1_SDA_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C1_SDA_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_I2C1_SDA_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_CAN0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_CAN1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_CTI_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC4_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC5_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC6_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC7_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_DMAC_ABORT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_ENET0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_ENET1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_ENET_WAKE0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_ENET_WAKE1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_GPIO_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_I2C0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_I2C1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_QSPI_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_SDIO0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_SDIO1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_SMC_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_SPI0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_SPI1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_UART0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_UART1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_USB0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_IRQ_P2F_USB1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP0_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_M_AXI_GP1_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_PJTAG_TCK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_PJTAG_TDI_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_PJTAG_TDO_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_PJTAG_TMS_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_BUSPOW_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_CDN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_CLK_FB_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_CMD_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_CMD_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_CMD_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_LED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO0_WP_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_BUSPOW_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_CDN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_CLK_FB_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_CMD_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_CMD_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_CMD_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_LED_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SDIO1_WP_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_MISO_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_MOSI_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_MOSI_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SCLK_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SCLK_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SS1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SS2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SS_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SS_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI0_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_MISO_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_MOSI_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_MOSI_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SCLK_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SCLK_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SS1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SS2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SS_I_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SS_O_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SPI1_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_SRAM_INTIN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_ACP_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_GP1_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP0_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_RDISSUECAP1_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_WRISSUECAP1_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP1_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_RDISSUECAP1_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_WRISSUECAP1_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP2_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_RDISSUECAP1_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_RLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_WRISSUECAP1_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_S_AXI_HP3_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TRACE_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TRACE_CLK_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TRACE_CTL_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC0_CLK0_IN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC0_CLK1_IN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC0_CLK2_IN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC1_CLK0_IN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC1_CLK1_IN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC1_CLK2_IN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC1_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC1_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_TTC1_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_CTSN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_DCDN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_DSRN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_DTRN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_RIN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_RTSN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART0_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_CTSN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_DCDN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_DSRN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_DTRN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_RIN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_RTSN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_UART1_TX_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_USB0_VBUS_PWRFAULT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_USB1_VBUS_PWRFAULT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_USB1_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_WDT_CLK_IN_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_WDT_RST_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_DDR_ARB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_DMA0_DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_DMA0_DRTYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_DMA1_DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_DMA1_DRTYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_DMA2_DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_DMA2_DRTYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_DMA3_DATYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_DMA3_DRTYPE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ENET0_GMII_RXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ENET0_GMII_TXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ENET1_GMII_RXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_ENET1_GMII_TXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_EVENT_STANDBYWFE_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_EVENT_STANDBYWFI_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_FTMD_TRACEIN_ATID_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_FTMD_TRACEIN_DATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_FTMT_F2P_DEBUG_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_FTMT_P2F_DEBUG_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_GPIO_I_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_GPIO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_GPIO_T_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_IRQ_F2P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_M_AXI_GP0_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_M_AXI_GP0_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP1_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_M_AXI_GP1_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_GP1_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP1_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP1_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_M_AXI_GP1_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP1_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_GP1_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_M_AXI_GP1_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_M_AXI_GP1_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_SDIO0_BUSVOLT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_SDIO0_DATA_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_SDIO0_DATA_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_SDIO0_DATA_T_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_SDIO1_BUSVOLT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_SDIO1_DATA_I_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_SDIO1_DATA_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_SDIO1_DATA_T_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_S_AXI_ACP_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_ACP_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_ACP_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_ACP_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_ACP_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_ACP_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP0_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP0_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP1_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_GP1_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_GP1_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP1_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP1_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP1_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP1_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_GP1_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_GP1_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_GP1_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_inst_S_AXI_HP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_inst_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP1_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP1_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP1_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP1_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP1_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP1_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP1_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_HP1_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP1_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP1_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP1_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP1_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_HP1_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP1_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP2_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP2_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP2_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP2_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP2_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP2_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP2_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_HP2_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP2_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP2_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP2_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP2_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_HP2_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP2_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP3_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_S_AXI_HP3_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP3_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP3_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP3_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_S_AXI_HP3_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP3_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_HP3_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP3_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S_AXI_HP3_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP3_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_S_AXI_HP3_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_S_AXI_HP3_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_S_AXI_HP3_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_TRACE_DATA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_USB1_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_DM_WIDTH : integer;
  attribute C_DM_WIDTH of inst : label is 4;
  attribute C_DQS_WIDTH : integer;
  attribute C_DQS_WIDTH of inst : label is 4;
  attribute C_DQ_WIDTH : integer;
  attribute C_DQ_WIDTH of inst : label is 32;
  attribute C_EMIO_GPIO_WIDTH : integer;
  attribute C_EMIO_GPIO_WIDTH of inst : label is 64;
  attribute C_EN_EMIO_ENET0 : integer;
  attribute C_EN_EMIO_ENET0 of inst : label is 0;
  attribute C_EN_EMIO_ENET1 : integer;
  attribute C_EN_EMIO_ENET1 of inst : label is 0;
  attribute C_EN_EMIO_PJTAG : integer;
  attribute C_EN_EMIO_PJTAG of inst : label is 0;
  attribute C_EN_EMIO_TRACE : integer;
  attribute C_EN_EMIO_TRACE of inst : label is 0;
  attribute C_FCLK_CLK0_BUF : string;
  attribute C_FCLK_CLK0_BUF of inst : label is "TRUE";
  attribute C_FCLK_CLK1_BUF : string;
  attribute C_FCLK_CLK1_BUF of inst : label is "FALSE";
  attribute C_FCLK_CLK2_BUF : string;
  attribute C_FCLK_CLK2_BUF of inst : label is "FALSE";
  attribute C_FCLK_CLK3_BUF : string;
  attribute C_FCLK_CLK3_BUF of inst : label is "FALSE";
  attribute C_GP0_EN_MODIFIABLE_TXN : integer;
  attribute C_GP0_EN_MODIFIABLE_TXN of inst : label is 1;
  attribute C_GP1_EN_MODIFIABLE_TXN : integer;
  attribute C_GP1_EN_MODIFIABLE_TXN of inst : label is 1;
  attribute C_INCLUDE_ACP_TRANS_CHECK : integer;
  attribute C_INCLUDE_ACP_TRANS_CHECK of inst : label is 0;
  attribute C_INCLUDE_TRACE_BUFFER : integer;
  attribute C_INCLUDE_TRACE_BUFFER of inst : label is 0;
  attribute C_IRQ_F2P_MODE : string;
  attribute C_IRQ_F2P_MODE of inst : label is "DIRECT";
  attribute C_MIO_PRIMITIVE : integer;
  attribute C_MIO_PRIMITIVE of inst : label is 54;
  attribute C_M_AXI_GP0_ENABLE_STATIC_REMAP : integer;
  attribute C_M_AXI_GP0_ENABLE_STATIC_REMAP of inst : label is 0;
  attribute C_M_AXI_GP0_ID_WIDTH : integer;
  attribute C_M_AXI_GP0_ID_WIDTH of inst : label is 12;
  attribute C_M_AXI_GP0_THREAD_ID_WIDTH : integer;
  attribute C_M_AXI_GP0_THREAD_ID_WIDTH of inst : label is 12;
  attribute C_M_AXI_GP1_ENABLE_STATIC_REMAP : integer;
  attribute C_M_AXI_GP1_ENABLE_STATIC_REMAP of inst : label is 0;
  attribute C_M_AXI_GP1_ID_WIDTH : integer;
  attribute C_M_AXI_GP1_ID_WIDTH of inst : label is 12;
  attribute C_M_AXI_GP1_THREAD_ID_WIDTH : integer;
  attribute C_M_AXI_GP1_THREAD_ID_WIDTH of inst : label is 12;
  attribute C_NUM_F2P_INTR_INPUTS : integer;
  attribute C_NUM_F2P_INTR_INPUTS of inst : label is 1;
  attribute C_PACKAGE_NAME : string;
  attribute C_PACKAGE_NAME of inst : label is "clg484";
  attribute C_PS7_SI_REV : string;
  attribute C_PS7_SI_REV of inst : label is "PRODUCTION";
  attribute C_S_AXI_ACP_ARUSER_VAL : integer;
  attribute C_S_AXI_ACP_ARUSER_VAL of inst : label is 31;
  attribute C_S_AXI_ACP_AWUSER_VAL : integer;
  attribute C_S_AXI_ACP_AWUSER_VAL of inst : label is 31;
  attribute C_S_AXI_ACP_ID_WIDTH : integer;
  attribute C_S_AXI_ACP_ID_WIDTH of inst : label is 3;
  attribute C_S_AXI_GP0_ID_WIDTH : integer;
  attribute C_S_AXI_GP0_ID_WIDTH of inst : label is 6;
  attribute C_S_AXI_GP1_ID_WIDTH : integer;
  attribute C_S_AXI_GP1_ID_WIDTH of inst : label is 6;
  attribute C_S_AXI_HP0_DATA_WIDTH : integer;
  attribute C_S_AXI_HP0_DATA_WIDTH of inst : label is 64;
  attribute C_S_AXI_HP0_ID_WIDTH : integer;
  attribute C_S_AXI_HP0_ID_WIDTH of inst : label is 6;
  attribute C_S_AXI_HP1_DATA_WIDTH : integer;
  attribute C_S_AXI_HP1_DATA_WIDTH of inst : label is 64;
  attribute C_S_AXI_HP1_ID_WIDTH : integer;
  attribute C_S_AXI_HP1_ID_WIDTH of inst : label is 6;
  attribute C_S_AXI_HP2_DATA_WIDTH : integer;
  attribute C_S_AXI_HP2_DATA_WIDTH of inst : label is 64;
  attribute C_S_AXI_HP2_ID_WIDTH : integer;
  attribute C_S_AXI_HP2_ID_WIDTH of inst : label is 6;
  attribute C_S_AXI_HP3_DATA_WIDTH : integer;
  attribute C_S_AXI_HP3_DATA_WIDTH of inst : label is 64;
  attribute C_S_AXI_HP3_ID_WIDTH : integer;
  attribute C_S_AXI_HP3_ID_WIDTH of inst : label is 6;
  attribute C_TRACE_BUFFER_CLOCK_DELAY : integer;
  attribute C_TRACE_BUFFER_CLOCK_DELAY of inst : label is 12;
  attribute C_TRACE_BUFFER_FIFO_SIZE : integer;
  attribute C_TRACE_BUFFER_FIFO_SIZE of inst : label is 128;
  attribute C_TRACE_INTERNAL_WIDTH : integer;
  attribute C_TRACE_INTERNAL_WIDTH of inst : label is 2;
  attribute C_TRACE_PIPELINE_WIDTH : integer;
  attribute C_TRACE_PIPELINE_WIDTH of inst : label is 8;
  attribute C_USE_AXI_NONSECURE : integer;
  attribute C_USE_AXI_NONSECURE of inst : label is 0;
  attribute C_USE_DEFAULT_ACP_USER_VAL : integer;
  attribute C_USE_DEFAULT_ACP_USER_VAL of inst : label is 0;
  attribute C_USE_M_AXI_GP0 : integer;
  attribute C_USE_M_AXI_GP0 of inst : label is 1;
  attribute C_USE_M_AXI_GP1 : integer;
  attribute C_USE_M_AXI_GP1 of inst : label is 0;
  attribute C_USE_S_AXI_ACP : integer;
  attribute C_USE_S_AXI_ACP of inst : label is 0;
  attribute C_USE_S_AXI_GP0 : integer;
  attribute C_USE_S_AXI_GP0 of inst : label is 0;
  attribute C_USE_S_AXI_GP1 : integer;
  attribute C_USE_S_AXI_GP1 of inst : label is 0;
  attribute C_USE_S_AXI_HP0 : integer;
  attribute C_USE_S_AXI_HP0 of inst : label is 1;
  attribute C_USE_S_AXI_HP1 : integer;
  attribute C_USE_S_AXI_HP1 of inst : label is 0;
  attribute C_USE_S_AXI_HP2 : integer;
  attribute C_USE_S_AXI_HP2 of inst : label is 0;
  attribute C_USE_S_AXI_HP3 : integer;
  attribute C_USE_S_AXI_HP3 of inst : label is 0;
  attribute POWER : string;
  attribute POWER of inst : label is "<PROCESSOR name={system} numA9Cores={2} clockFreq={666.666666} load={0.5} /><MEMORY name={code} memType={DDR3} dataWidth={16} clockFreq={533.333333} readRate={0.5} writeRate={0.5} /><IO interface={UART} ioStandard={LVCMOS33} bidis={2} ioBank={Vcco_p1} clockFreq={100.000000} usageRate={0.5} /><PLL domain={Processor} vco={1333.333} /><PLL domain={Memory} vco={1066.667} /><PLL domain={IO} vco={1600.000} /><AXI interface={S_AXI_HP0} dataWidth={64} clockFreq={50.0} usageRate={0.5} /><AXI interface={M_AXI_GP0} dataWidth={32} clockFreq={50.0} usageRate={0.5} />/>";
  attribute USE_TRACE_DATA_EDGE_DETECTOR : integer;
  attribute USE_TRACE_DATA_EDGE_DETECTOR of inst : label is 0;
  attribute hw_handoff : string;
  attribute hw_handoff of inst : label is "Setup_processing_system7_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_CAS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_CKE : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_CS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_Clk : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_Clk_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_DRSTB : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_ODT : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_RAS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_VRN : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_INFO of DDR_VRP : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of DDR_WEB : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FCLK_CLK0 : signal is "xilinx.com:signal:clock:1.0 FCLK_CLK0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FCLK_CLK0 : signal is "XIL_INTERFACENAME FCLK_CLK0, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of FCLK_RESET0_N : signal is "xilinx.com:signal:reset:1.0 FCLK_RESET0_N RST";
  attribute X_INTERFACE_PARAMETER of FCLK_RESET0_N : signal is "XIL_INTERFACENAME FCLK_RESET0_N, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ACLK : signal is "xilinx.com:signal:clock:1.0 M_AXI_GP0_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of M_AXI_GP0_ACLK : signal is "XIL_INTERFACENAME M_AXI_GP0_ACLK, ASSOCIATED_BUSIF M_AXI_GP0, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_RLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RLAST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RVALID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WLAST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WREADY";
  attribute X_INTERFACE_INFO of M_AXI_GP0_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WVALID";
  attribute X_INTERFACE_INFO of PS_CLK : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of PS_PORB : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_PARAMETER of PS_PORB : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of PS_SRSTB : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_HP0_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of S_AXI_HP0_ACLK : signal is "XIL_INTERFACENAME S_AXI_HP0_ACLK, ASSOCIATED_BUSIF S_AXI_HP0, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BREADY";
  attribute X_INTERFACE_INFO of S_AXI_HP0_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BVALID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RDISSUECAP1_EN : signal is "xilinx.com:display_processing_system7:hpstatusctrl:1.0 S_AXI_HP0_FIFO_CTRL RDISSUECAPEN";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RLAST";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RREADY";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RVALID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WLAST";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WREADY";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WRISSUECAP1_EN : signal is "xilinx.com:display_processing_system7:hpstatusctrl:1.0 S_AXI_HP0_FIFO_CTRL WRISSUECAPEN";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WVALID";
  attribute X_INTERFACE_INFO of DDR_Addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_INFO of DDR_BankAddr : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_DM : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_DQ : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_DQS : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_PARAMETER of DDR_DQS : signal is "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11";
  attribute X_INTERFACE_INFO of DDR_DQS_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of MIO : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARADDR";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARBURST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARCACHE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARLEN";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARLOCK";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARPROT";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARQOS";
  attribute X_INTERFACE_INFO of M_AXI_GP0_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 ARSIZE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWBURST";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWCACHE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWLEN";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWLOCK";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWQOS : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWQOS";
  attribute X_INTERFACE_INFO of M_AXI_GP0_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 AWSIZE";
  attribute X_INTERFACE_INFO of M_AXI_GP0_BID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 BRESP";
  attribute X_INTERFACE_INFO of M_AXI_GP0_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RDATA";
  attribute X_INTERFACE_PARAMETER of M_AXI_GP0_RDATA : signal is "XIL_INTERFACENAME M_AXI_GP0, SUPPORTS_NARROW_BURST 0, NUM_WRITE_OUTSTANDING 8, NUM_READ_OUTSTANDING 8, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 5e+07, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_GP0_RID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 RRESP";
  attribute X_INTERFACE_INFO of M_AXI_GP0_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WDATA";
  attribute X_INTERFACE_INFO of M_AXI_GP0_WID : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WID";
  attribute X_INTERFACE_INFO of M_AXI_GP0_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI_GP0 WSTRB";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARBURST";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARCACHE";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARLEN";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARLOCK";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARQOS";
  attribute X_INTERFACE_INFO of S_AXI_HP0_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 ARSIZE";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWBURST";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWCACHE";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWLEN";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWLOCK";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWQOS : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWQOS";
  attribute X_INTERFACE_INFO of S_AXI_HP0_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 AWSIZE";
  attribute X_INTERFACE_INFO of S_AXI_HP0_BID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 BRESP";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RACOUNT : signal is "xilinx.com:display_processing_system7:hpstatusctrl:1.0 S_AXI_HP0_FIFO_CTRL RACOUNT";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RCOUNT : signal is "xilinx.com:display_processing_system7:hpstatusctrl:1.0 S_AXI_HP0_FIFO_CTRL RCOUNT";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RDATA";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 RRESP";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WACOUNT : signal is "xilinx.com:display_processing_system7:hpstatusctrl:1.0 S_AXI_HP0_FIFO_CTRL WACOUNT";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WCOUNT : signal is "xilinx.com:display_processing_system7:hpstatusctrl:1.0 S_AXI_HP0_FIFO_CTRL WCOUNT";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WDATA";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WID : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WID";
  attribute X_INTERFACE_INFO of S_AXI_HP0_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI_HP0 WSTRB";
  attribute X_INTERFACE_PARAMETER of S_AXI_HP0_WSTRB : signal is "XIL_INTERFACENAME S_AXI_HP0, NUM_WRITE_OUTSTANDING 8, NUM_READ_OUTSTANDING 8, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 5e+07, ID_WIDTH 6, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
begin
inst: entity work.Setup_processing_system7_0_0_processing_system7_v5_5_processing_system7
     port map (
      CAN0_PHY_RX => NLW_inst_CAN0_PHY_RX_UNCONNECTED,
      CAN0_PHY_TX => NLW_inst_CAN0_PHY_TX_UNCONNECTED,
      CAN1_PHY_RX => NLW_inst_CAN1_PHY_RX_UNCONNECTED,
      CAN1_PHY_TX => NLW_inst_CAN1_PHY_TX_UNCONNECTED,
      Core0_nFIQ => NLW_inst_Core0_nFIQ_UNCONNECTED,
      Core0_nIRQ => NLW_inst_Core0_nIRQ_UNCONNECTED,
      Core1_nFIQ => NLW_inst_Core1_nFIQ_UNCONNECTED,
      Core1_nIRQ => NLW_inst_Core1_nIRQ_UNCONNECTED,
      DDR_ARB(3 downto 0) => NLW_inst_DDR_ARB_UNCONNECTED(3 downto 0),
      DDR_Addr(14 downto 0) => DDR_Addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_BankAddr(2 downto 0),
      DDR_CAS_n => DDR_CAS_n,
      DDR_CKE => DDR_CKE,
      DDR_CS_n => DDR_CS_n,
      DDR_Clk => DDR_Clk,
      DDR_Clk_n => DDR_Clk_n,
      DDR_DM(3 downto 0) => DDR_DM(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_DQ(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_DQS(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_DQS_n(3 downto 0),
      DDR_DRSTB => DDR_DRSTB,
      DDR_ODT => DDR_ODT,
      DDR_RAS_n => DDR_RAS_n,
      DDR_VRN => DDR_VRN,
      DDR_VRP => DDR_VRP,
      DDR_WEB => DDR_WEB,
      DMA0_ACLK => NLW_inst_DMA0_ACLK_UNCONNECTED,
      DMA0_DAREADY => NLW_inst_DMA0_DAREADY_UNCONNECTED,
      DMA0_DATYPE(1 downto 0) => NLW_inst_DMA0_DATYPE_UNCONNECTED(1 downto 0),
      DMA0_DAVALID => NLW_inst_DMA0_DAVALID_UNCONNECTED,
      DMA0_DRLAST => NLW_inst_DMA0_DRLAST_UNCONNECTED,
      DMA0_DRREADY => NLW_inst_DMA0_DRREADY_UNCONNECTED,
      DMA0_DRTYPE(1 downto 0) => NLW_inst_DMA0_DRTYPE_UNCONNECTED(1 downto 0),
      DMA0_DRVALID => NLW_inst_DMA0_DRVALID_UNCONNECTED,
      DMA0_RSTN => NLW_inst_DMA0_RSTN_UNCONNECTED,
      DMA1_ACLK => NLW_inst_DMA1_ACLK_UNCONNECTED,
      DMA1_DAREADY => NLW_inst_DMA1_DAREADY_UNCONNECTED,
      DMA1_DATYPE(1 downto 0) => NLW_inst_DMA1_DATYPE_UNCONNECTED(1 downto 0),
      DMA1_DAVALID => NLW_inst_DMA1_DAVALID_UNCONNECTED,
      DMA1_DRLAST => NLW_inst_DMA1_DRLAST_UNCONNECTED,
      DMA1_DRREADY => NLW_inst_DMA1_DRREADY_UNCONNECTED,
      DMA1_DRTYPE(1 downto 0) => NLW_inst_DMA1_DRTYPE_UNCONNECTED(1 downto 0),
      DMA1_DRVALID => NLW_inst_DMA1_DRVALID_UNCONNECTED,
      DMA1_RSTN => NLW_inst_DMA1_RSTN_UNCONNECTED,
      DMA2_ACLK => NLW_inst_DMA2_ACLK_UNCONNECTED,
      DMA2_DAREADY => NLW_inst_DMA2_DAREADY_UNCONNECTED,
      DMA2_DATYPE(1 downto 0) => NLW_inst_DMA2_DATYPE_UNCONNECTED(1 downto 0),
      DMA2_DAVALID => NLW_inst_DMA2_DAVALID_UNCONNECTED,
      DMA2_DRLAST => NLW_inst_DMA2_DRLAST_UNCONNECTED,
      DMA2_DRREADY => NLW_inst_DMA2_DRREADY_UNCONNECTED,
      DMA2_DRTYPE(1 downto 0) => NLW_inst_DMA2_DRTYPE_UNCONNECTED(1 downto 0),
      DMA2_DRVALID => NLW_inst_DMA2_DRVALID_UNCONNECTED,
      DMA2_RSTN => NLW_inst_DMA2_RSTN_UNCONNECTED,
      DMA3_ACLK => NLW_inst_DMA3_ACLK_UNCONNECTED,
      DMA3_DAREADY => NLW_inst_DMA3_DAREADY_UNCONNECTED,
      DMA3_DATYPE(1 downto 0) => NLW_inst_DMA3_DATYPE_UNCONNECTED(1 downto 0),
      DMA3_DAVALID => NLW_inst_DMA3_DAVALID_UNCONNECTED,
      DMA3_DRLAST => NLW_inst_DMA3_DRLAST_UNCONNECTED,
      DMA3_DRREADY => NLW_inst_DMA3_DRREADY_UNCONNECTED,
      DMA3_DRTYPE(1 downto 0) => NLW_inst_DMA3_DRTYPE_UNCONNECTED(1 downto 0),
      DMA3_DRVALID => NLW_inst_DMA3_DRVALID_UNCONNECTED,
      DMA3_RSTN => NLW_inst_DMA3_RSTN_UNCONNECTED,
      ENET0_EXT_INTIN => NLW_inst_ENET0_EXT_INTIN_UNCONNECTED,
      ENET0_GMII_COL => NLW_inst_ENET0_GMII_COL_UNCONNECTED,
      ENET0_GMII_CRS => NLW_inst_ENET0_GMII_CRS_UNCONNECTED,
      ENET0_GMII_RXD(7 downto 0) => NLW_inst_ENET0_GMII_RXD_UNCONNECTED(7 downto 0),
      ENET0_GMII_RX_CLK => NLW_inst_ENET0_GMII_RX_CLK_UNCONNECTED,
      ENET0_GMII_RX_DV => NLW_inst_ENET0_GMII_RX_DV_UNCONNECTED,
      ENET0_GMII_RX_ER => NLW_inst_ENET0_GMII_RX_ER_UNCONNECTED,
      ENET0_GMII_TXD(7 downto 0) => NLW_inst_ENET0_GMII_TXD_UNCONNECTED(7 downto 0),
      ENET0_GMII_TX_CLK => NLW_inst_ENET0_GMII_TX_CLK_UNCONNECTED,
      ENET0_GMII_TX_EN => NLW_inst_ENET0_GMII_TX_EN_UNCONNECTED,
      ENET0_GMII_TX_ER => NLW_inst_ENET0_GMII_TX_ER_UNCONNECTED,
      ENET0_MDIO_I => NLW_inst_ENET0_MDIO_I_UNCONNECTED,
      ENET0_MDIO_MDC => NLW_inst_ENET0_MDIO_MDC_UNCONNECTED,
      ENET0_MDIO_O => NLW_inst_ENET0_MDIO_O_UNCONNECTED,
      ENET0_MDIO_T => NLW_inst_ENET0_MDIO_T_UNCONNECTED,
      ENET0_PTP_DELAY_REQ_RX => NLW_inst_ENET0_PTP_DELAY_REQ_RX_UNCONNECTED,
      ENET0_PTP_DELAY_REQ_TX => NLW_inst_ENET0_PTP_DELAY_REQ_TX_UNCONNECTED,
      ENET0_PTP_PDELAY_REQ_RX => NLW_inst_ENET0_PTP_PDELAY_REQ_RX_UNCONNECTED,
      ENET0_PTP_PDELAY_REQ_TX => NLW_inst_ENET0_PTP_PDELAY_REQ_TX_UNCONNECTED,
      ENET0_PTP_PDELAY_RESP_RX => NLW_inst_ENET0_PTP_PDELAY_RESP_RX_UNCONNECTED,
      ENET0_PTP_PDELAY_RESP_TX => NLW_inst_ENET0_PTP_PDELAY_RESP_TX_UNCONNECTED,
      ENET0_PTP_SYNC_FRAME_RX => NLW_inst_ENET0_PTP_SYNC_FRAME_RX_UNCONNECTED,
      ENET0_PTP_SYNC_FRAME_TX => NLW_inst_ENET0_PTP_SYNC_FRAME_TX_UNCONNECTED,
      ENET0_SOF_RX => NLW_inst_ENET0_SOF_RX_UNCONNECTED,
      ENET0_SOF_TX => NLW_inst_ENET0_SOF_TX_UNCONNECTED,
      ENET1_EXT_INTIN => NLW_inst_ENET1_EXT_INTIN_UNCONNECTED,
      ENET1_GMII_COL => NLW_inst_ENET1_GMII_COL_UNCONNECTED,
      ENET1_GMII_CRS => NLW_inst_ENET1_GMII_CRS_UNCONNECTED,
      ENET1_GMII_RXD(7 downto 0) => NLW_inst_ENET1_GMII_RXD_UNCONNECTED(7 downto 0),
      ENET1_GMII_RX_CLK => NLW_inst_ENET1_GMII_RX_CLK_UNCONNECTED,
      ENET1_GMII_RX_DV => NLW_inst_ENET1_GMII_RX_DV_UNCONNECTED,
      ENET1_GMII_RX_ER => NLW_inst_ENET1_GMII_RX_ER_UNCONNECTED,
      ENET1_GMII_TXD(7 downto 0) => NLW_inst_ENET1_GMII_TXD_UNCONNECTED(7 downto 0),
      ENET1_GMII_TX_CLK => NLW_inst_ENET1_GMII_TX_CLK_UNCONNECTED,
      ENET1_GMII_TX_EN => NLW_inst_ENET1_GMII_TX_EN_UNCONNECTED,
      ENET1_GMII_TX_ER => NLW_inst_ENET1_GMII_TX_ER_UNCONNECTED,
      ENET1_MDIO_I => NLW_inst_ENET1_MDIO_I_UNCONNECTED,
      ENET1_MDIO_MDC => NLW_inst_ENET1_MDIO_MDC_UNCONNECTED,
      ENET1_MDIO_O => NLW_inst_ENET1_MDIO_O_UNCONNECTED,
      ENET1_MDIO_T => NLW_inst_ENET1_MDIO_T_UNCONNECTED,
      ENET1_PTP_DELAY_REQ_RX => NLW_inst_ENET1_PTP_DELAY_REQ_RX_UNCONNECTED,
      ENET1_PTP_DELAY_REQ_TX => NLW_inst_ENET1_PTP_DELAY_REQ_TX_UNCONNECTED,
      ENET1_PTP_PDELAY_REQ_RX => NLW_inst_ENET1_PTP_PDELAY_REQ_RX_UNCONNECTED,
      ENET1_PTP_PDELAY_REQ_TX => NLW_inst_ENET1_PTP_PDELAY_REQ_TX_UNCONNECTED,
      ENET1_PTP_PDELAY_RESP_RX => NLW_inst_ENET1_PTP_PDELAY_RESP_RX_UNCONNECTED,
      ENET1_PTP_PDELAY_RESP_TX => NLW_inst_ENET1_PTP_PDELAY_RESP_TX_UNCONNECTED,
      ENET1_PTP_SYNC_FRAME_RX => NLW_inst_ENET1_PTP_SYNC_FRAME_RX_UNCONNECTED,
      ENET1_PTP_SYNC_FRAME_TX => NLW_inst_ENET1_PTP_SYNC_FRAME_TX_UNCONNECTED,
      ENET1_SOF_RX => NLW_inst_ENET1_SOF_RX_UNCONNECTED,
      ENET1_SOF_TX => NLW_inst_ENET1_SOF_TX_UNCONNECTED,
      EVENT_EVENTI => NLW_inst_EVENT_EVENTI_UNCONNECTED,
      EVENT_EVENTO => NLW_inst_EVENT_EVENTO_UNCONNECTED,
      EVENT_STANDBYWFE(1 downto 0) => NLW_inst_EVENT_STANDBYWFE_UNCONNECTED(1 downto 0),
      EVENT_STANDBYWFI(1 downto 0) => NLW_inst_EVENT_STANDBYWFI_UNCONNECTED(1 downto 0),
      FCLK_CLK0 => FCLK_CLK0,
      FCLK_CLK1 => NLW_inst_FCLK_CLK1_UNCONNECTED,
      FCLK_CLK2 => NLW_inst_FCLK_CLK2_UNCONNECTED,
      FCLK_CLK3 => NLW_inst_FCLK_CLK3_UNCONNECTED,
      FCLK_CLKTRIG0_N => NLW_inst_FCLK_CLKTRIG0_N_UNCONNECTED,
      FCLK_CLKTRIG1_N => NLW_inst_FCLK_CLKTRIG1_N_UNCONNECTED,
      FCLK_CLKTRIG2_N => NLW_inst_FCLK_CLKTRIG2_N_UNCONNECTED,
      FCLK_CLKTRIG3_N => NLW_inst_FCLK_CLKTRIG3_N_UNCONNECTED,
      FCLK_RESET0_N => FCLK_RESET0_N,
      FCLK_RESET1_N => NLW_inst_FCLK_RESET1_N_UNCONNECTED,
      FCLK_RESET2_N => NLW_inst_FCLK_RESET2_N_UNCONNECTED,
      FCLK_RESET3_N => NLW_inst_FCLK_RESET3_N_UNCONNECTED,
      FPGA_IDLE_N => NLW_inst_FPGA_IDLE_N_UNCONNECTED,
      FTMD_TRACEIN_ATID(3 downto 0) => NLW_inst_FTMD_TRACEIN_ATID_UNCONNECTED(3 downto 0),
      FTMD_TRACEIN_CLK => NLW_inst_FTMD_TRACEIN_CLK_UNCONNECTED,
      FTMD_TRACEIN_DATA(31 downto 0) => NLW_inst_FTMD_TRACEIN_DATA_UNCONNECTED(31 downto 0),
      FTMD_TRACEIN_VALID => NLW_inst_FTMD_TRACEIN_VALID_UNCONNECTED,
      FTMT_F2P_DEBUG(31 downto 0) => NLW_inst_FTMT_F2P_DEBUG_UNCONNECTED(31 downto 0),
      FTMT_F2P_TRIGACK_0 => NLW_inst_FTMT_F2P_TRIGACK_0_UNCONNECTED,
      FTMT_F2P_TRIGACK_1 => NLW_inst_FTMT_F2P_TRIGACK_1_UNCONNECTED,
      FTMT_F2P_TRIGACK_2 => NLW_inst_FTMT_F2P_TRIGACK_2_UNCONNECTED,
      FTMT_F2P_TRIGACK_3 => NLW_inst_FTMT_F2P_TRIGACK_3_UNCONNECTED,
      FTMT_F2P_TRIG_0 => NLW_inst_FTMT_F2P_TRIG_0_UNCONNECTED,
      FTMT_F2P_TRIG_1 => NLW_inst_FTMT_F2P_TRIG_1_UNCONNECTED,
      FTMT_F2P_TRIG_2 => NLW_inst_FTMT_F2P_TRIG_2_UNCONNECTED,
      FTMT_F2P_TRIG_3 => NLW_inst_FTMT_F2P_TRIG_3_UNCONNECTED,
      FTMT_P2F_DEBUG(31 downto 0) => NLW_inst_FTMT_P2F_DEBUG_UNCONNECTED(31 downto 0),
      FTMT_P2F_TRIGACK_0 => NLW_inst_FTMT_P2F_TRIGACK_0_UNCONNECTED,
      FTMT_P2F_TRIGACK_1 => NLW_inst_FTMT_P2F_TRIGACK_1_UNCONNECTED,
      FTMT_P2F_TRIGACK_2 => NLW_inst_FTMT_P2F_TRIGACK_2_UNCONNECTED,
      FTMT_P2F_TRIGACK_3 => NLW_inst_FTMT_P2F_TRIGACK_3_UNCONNECTED,
      FTMT_P2F_TRIG_0 => NLW_inst_FTMT_P2F_TRIG_0_UNCONNECTED,
      FTMT_P2F_TRIG_1 => NLW_inst_FTMT_P2F_TRIG_1_UNCONNECTED,
      FTMT_P2F_TRIG_2 => NLW_inst_FTMT_P2F_TRIG_2_UNCONNECTED,
      FTMT_P2F_TRIG_3 => NLW_inst_FTMT_P2F_TRIG_3_UNCONNECTED,
      GPIO_I(63 downto 0) => NLW_inst_GPIO_I_UNCONNECTED(63 downto 0),
      GPIO_O(63 downto 0) => NLW_inst_GPIO_O_UNCONNECTED(63 downto 0),
      GPIO_T(63 downto 0) => NLW_inst_GPIO_T_UNCONNECTED(63 downto 0),
      I2C0_SCL_I => NLW_inst_I2C0_SCL_I_UNCONNECTED,
      I2C0_SCL_O => NLW_inst_I2C0_SCL_O_UNCONNECTED,
      I2C0_SCL_T => NLW_inst_I2C0_SCL_T_UNCONNECTED,
      I2C0_SDA_I => NLW_inst_I2C0_SDA_I_UNCONNECTED,
      I2C0_SDA_O => NLW_inst_I2C0_SDA_O_UNCONNECTED,
      I2C0_SDA_T => NLW_inst_I2C0_SDA_T_UNCONNECTED,
      I2C1_SCL_I => NLW_inst_I2C1_SCL_I_UNCONNECTED,
      I2C1_SCL_O => NLW_inst_I2C1_SCL_O_UNCONNECTED,
      I2C1_SCL_T => NLW_inst_I2C1_SCL_T_UNCONNECTED,
      I2C1_SDA_I => NLW_inst_I2C1_SDA_I_UNCONNECTED,
      I2C1_SDA_O => NLW_inst_I2C1_SDA_O_UNCONNECTED,
      I2C1_SDA_T => NLW_inst_I2C1_SDA_T_UNCONNECTED,
      IRQ_F2P(0) => NLW_inst_IRQ_F2P_UNCONNECTED(0),
      IRQ_P2F_CAN0 => NLW_inst_IRQ_P2F_CAN0_UNCONNECTED,
      IRQ_P2F_CAN1 => NLW_inst_IRQ_P2F_CAN1_UNCONNECTED,
      IRQ_P2F_CTI => NLW_inst_IRQ_P2F_CTI_UNCONNECTED,
      IRQ_P2F_DMAC0 => NLW_inst_IRQ_P2F_DMAC0_UNCONNECTED,
      IRQ_P2F_DMAC1 => NLW_inst_IRQ_P2F_DMAC1_UNCONNECTED,
      IRQ_P2F_DMAC2 => NLW_inst_IRQ_P2F_DMAC2_UNCONNECTED,
      IRQ_P2F_DMAC3 => NLW_inst_IRQ_P2F_DMAC3_UNCONNECTED,
      IRQ_P2F_DMAC4 => NLW_inst_IRQ_P2F_DMAC4_UNCONNECTED,
      IRQ_P2F_DMAC5 => NLW_inst_IRQ_P2F_DMAC5_UNCONNECTED,
      IRQ_P2F_DMAC6 => NLW_inst_IRQ_P2F_DMAC6_UNCONNECTED,
      IRQ_P2F_DMAC7 => NLW_inst_IRQ_P2F_DMAC7_UNCONNECTED,
      IRQ_P2F_DMAC_ABORT => NLW_inst_IRQ_P2F_DMAC_ABORT_UNCONNECTED,
      IRQ_P2F_ENET0 => NLW_inst_IRQ_P2F_ENET0_UNCONNECTED,
      IRQ_P2F_ENET1 => NLW_inst_IRQ_P2F_ENET1_UNCONNECTED,
      IRQ_P2F_ENET_WAKE0 => NLW_inst_IRQ_P2F_ENET_WAKE0_UNCONNECTED,
      IRQ_P2F_ENET_WAKE1 => NLW_inst_IRQ_P2F_ENET_WAKE1_UNCONNECTED,
      IRQ_P2F_GPIO => NLW_inst_IRQ_P2F_GPIO_UNCONNECTED,
      IRQ_P2F_I2C0 => NLW_inst_IRQ_P2F_I2C0_UNCONNECTED,
      IRQ_P2F_I2C1 => NLW_inst_IRQ_P2F_I2C1_UNCONNECTED,
      IRQ_P2F_QSPI => NLW_inst_IRQ_P2F_QSPI_UNCONNECTED,
      IRQ_P2F_SDIO0 => NLW_inst_IRQ_P2F_SDIO0_UNCONNECTED,
      IRQ_P2F_SDIO1 => NLW_inst_IRQ_P2F_SDIO1_UNCONNECTED,
      IRQ_P2F_SMC => NLW_inst_IRQ_P2F_SMC_UNCONNECTED,
      IRQ_P2F_SPI0 => NLW_inst_IRQ_P2F_SPI0_UNCONNECTED,
      IRQ_P2F_SPI1 => NLW_inst_IRQ_P2F_SPI1_UNCONNECTED,
      IRQ_P2F_UART0 => NLW_inst_IRQ_P2F_UART0_UNCONNECTED,
      IRQ_P2F_UART1 => NLW_inst_IRQ_P2F_UART1_UNCONNECTED,
      IRQ_P2F_USB0 => NLW_inst_IRQ_P2F_USB0_UNCONNECTED,
      IRQ_P2F_USB1 => NLW_inst_IRQ_P2F_USB1_UNCONNECTED,
      MIO(53 downto 0) => MIO(53 downto 0),
      M_AXI_GP0_ACLK => M_AXI_GP0_ACLK,
      M_AXI_GP0_ARADDR(31 downto 0) => NLW_inst_M_AXI_GP0_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => NLW_inst_M_AXI_GP0_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => NLW_inst_M_AXI_GP0_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARESETN => NLW_inst_M_AXI_GP0_ARESETN_UNCONNECTED,
      M_AXI_GP0_ARID(11 downto 0) => NLW_inst_M_AXI_GP0_ARID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => NLW_inst_M_AXI_GP0_ARLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => NLW_inst_M_AXI_GP0_ARLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => NLW_inst_M_AXI_GP0_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => NLW_inst_M_AXI_GP0_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARREADY => M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => NLW_inst_M_AXI_GP0_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARVALID => NLW_inst_M_AXI_GP0_ARVALID_UNCONNECTED,
      M_AXI_GP0_AWADDR(31 downto 0) => NLW_inst_M_AXI_GP0_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => NLW_inst_M_AXI_GP0_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => NLW_inst_M_AXI_GP0_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => NLW_inst_M_AXI_GP0_AWID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => NLW_inst_M_AXI_GP0_AWLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => NLW_inst_M_AXI_GP0_AWLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => NLW_inst_M_AXI_GP0_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => NLW_inst_M_AXI_GP0_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWREADY => M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => NLW_inst_M_AXI_GP0_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWVALID => NLW_inst_M_AXI_GP0_AWVALID_UNCONNECTED,
      M_AXI_GP0_BID(11 downto 0) => M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => NLW_inst_M_AXI_GP0_BREADY_UNCONNECTED,
      M_AXI_GP0_BRESP(1 downto 0) => M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => NLW_inst_M_AXI_GP0_RREADY_UNCONNECTED,
      M_AXI_GP0_RRESP(1 downto 0) => M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => NLW_inst_M_AXI_GP0_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => NLW_inst_M_AXI_GP0_WID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_WLAST => NLW_inst_M_AXI_GP0_WLAST_UNCONNECTED,
      M_AXI_GP0_WREADY => M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => NLW_inst_M_AXI_GP0_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_GP0_WVALID => NLW_inst_M_AXI_GP0_WVALID_UNCONNECTED,
      M_AXI_GP1_ACLK => NLW_inst_M_AXI_GP1_ACLK_UNCONNECTED,
      M_AXI_GP1_ARADDR(31 downto 0) => NLW_inst_M_AXI_GP1_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP1_ARBURST(1 downto 0) => NLW_inst_M_AXI_GP1_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP1_ARCACHE(3 downto 0) => NLW_inst_M_AXI_GP1_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP1_ARESETN => NLW_inst_M_AXI_GP1_ARESETN_UNCONNECTED,
      M_AXI_GP1_ARID(11 downto 0) => NLW_inst_M_AXI_GP1_ARID_UNCONNECTED(11 downto 0),
      M_AXI_GP1_ARLEN(3 downto 0) => NLW_inst_M_AXI_GP1_ARLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP1_ARLOCK(1 downto 0) => NLW_inst_M_AXI_GP1_ARLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP1_ARPROT(2 downto 0) => NLW_inst_M_AXI_GP1_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP1_ARQOS(3 downto 0) => NLW_inst_M_AXI_GP1_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP1_ARREADY => NLW_inst_M_AXI_GP1_ARREADY_UNCONNECTED,
      M_AXI_GP1_ARSIZE(2 downto 0) => NLW_inst_M_AXI_GP1_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP1_ARVALID => NLW_inst_M_AXI_GP1_ARVALID_UNCONNECTED,
      M_AXI_GP1_AWADDR(31 downto 0) => NLW_inst_M_AXI_GP1_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP1_AWBURST(1 downto 0) => NLW_inst_M_AXI_GP1_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP1_AWCACHE(3 downto 0) => NLW_inst_M_AXI_GP1_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP1_AWID(11 downto 0) => NLW_inst_M_AXI_GP1_AWID_UNCONNECTED(11 downto 0),
      M_AXI_GP1_AWLEN(3 downto 0) => NLW_inst_M_AXI_GP1_AWLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP1_AWLOCK(1 downto 0) => NLW_inst_M_AXI_GP1_AWLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP1_AWPROT(2 downto 0) => NLW_inst_M_AXI_GP1_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP1_AWQOS(3 downto 0) => NLW_inst_M_AXI_GP1_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP1_AWREADY => NLW_inst_M_AXI_GP1_AWREADY_UNCONNECTED,
      M_AXI_GP1_AWSIZE(2 downto 0) => NLW_inst_M_AXI_GP1_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP1_AWVALID => NLW_inst_M_AXI_GP1_AWVALID_UNCONNECTED,
      M_AXI_GP1_BID(11 downto 0) => NLW_inst_M_AXI_GP1_BID_UNCONNECTED(11 downto 0),
      M_AXI_GP1_BREADY => NLW_inst_M_AXI_GP1_BREADY_UNCONNECTED,
      M_AXI_GP1_BRESP(1 downto 0) => NLW_inst_M_AXI_GP1_BRESP_UNCONNECTED(1 downto 0),
      M_AXI_GP1_BVALID => NLW_inst_M_AXI_GP1_BVALID_UNCONNECTED,
      M_AXI_GP1_RDATA(31 downto 0) => NLW_inst_M_AXI_GP1_RDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP1_RID(11 downto 0) => NLW_inst_M_AXI_GP1_RID_UNCONNECTED(11 downto 0),
      M_AXI_GP1_RLAST => NLW_inst_M_AXI_GP1_RLAST_UNCONNECTED,
      M_AXI_GP1_RREADY => NLW_inst_M_AXI_GP1_RREADY_UNCONNECTED,
      M_AXI_GP1_RRESP(1 downto 0) => NLW_inst_M_AXI_GP1_RRESP_UNCONNECTED(1 downto 0),
      M_AXI_GP1_RVALID => NLW_inst_M_AXI_GP1_RVALID_UNCONNECTED,
      M_AXI_GP1_WDATA(31 downto 0) => NLW_inst_M_AXI_GP1_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP1_WID(11 downto 0) => NLW_inst_M_AXI_GP1_WID_UNCONNECTED(11 downto 0),
      M_AXI_GP1_WLAST => NLW_inst_M_AXI_GP1_WLAST_UNCONNECTED,
      M_AXI_GP1_WREADY => NLW_inst_M_AXI_GP1_WREADY_UNCONNECTED,
      M_AXI_GP1_WSTRB(3 downto 0) => NLW_inst_M_AXI_GP1_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_GP1_WVALID => NLW_inst_M_AXI_GP1_WVALID_UNCONNECTED,
      PJTAG_TCK => NLW_inst_PJTAG_TCK_UNCONNECTED,
      PJTAG_TDI => NLW_inst_PJTAG_TDI_UNCONNECTED,
      PJTAG_TDO => NLW_inst_PJTAG_TDO_UNCONNECTED,
      PJTAG_TMS => NLW_inst_PJTAG_TMS_UNCONNECTED,
      PS_CLK => PS_CLK,
      PS_PORB => PS_PORB,
      PS_SRSTB => PS_SRSTB,
      SDIO0_BUSPOW => NLW_inst_SDIO0_BUSPOW_UNCONNECTED,
      SDIO0_BUSVOLT(2 downto 0) => NLW_inst_SDIO0_BUSVOLT_UNCONNECTED(2 downto 0),
      SDIO0_CDN => NLW_inst_SDIO0_CDN_UNCONNECTED,
      SDIO0_CLK => NLW_inst_SDIO0_CLK_UNCONNECTED,
      SDIO0_CLK_FB => NLW_inst_SDIO0_CLK_FB_UNCONNECTED,
      SDIO0_CMD_I => NLW_inst_SDIO0_CMD_I_UNCONNECTED,
      SDIO0_CMD_O => NLW_inst_SDIO0_CMD_O_UNCONNECTED,
      SDIO0_CMD_T => NLW_inst_SDIO0_CMD_T_UNCONNECTED,
      SDIO0_DATA_I(3 downto 0) => NLW_inst_SDIO0_DATA_I_UNCONNECTED(3 downto 0),
      SDIO0_DATA_O(3 downto 0) => NLW_inst_SDIO0_DATA_O_UNCONNECTED(3 downto 0),
      SDIO0_DATA_T(3 downto 0) => NLW_inst_SDIO0_DATA_T_UNCONNECTED(3 downto 0),
      SDIO0_LED => NLW_inst_SDIO0_LED_UNCONNECTED,
      SDIO0_WP => NLW_inst_SDIO0_WP_UNCONNECTED,
      SDIO1_BUSPOW => NLW_inst_SDIO1_BUSPOW_UNCONNECTED,
      SDIO1_BUSVOLT(2 downto 0) => NLW_inst_SDIO1_BUSVOLT_UNCONNECTED(2 downto 0),
      SDIO1_CDN => NLW_inst_SDIO1_CDN_UNCONNECTED,
      SDIO1_CLK => NLW_inst_SDIO1_CLK_UNCONNECTED,
      SDIO1_CLK_FB => NLW_inst_SDIO1_CLK_FB_UNCONNECTED,
      SDIO1_CMD_I => NLW_inst_SDIO1_CMD_I_UNCONNECTED,
      SDIO1_CMD_O => NLW_inst_SDIO1_CMD_O_UNCONNECTED,
      SDIO1_CMD_T => NLW_inst_SDIO1_CMD_T_UNCONNECTED,
      SDIO1_DATA_I(3 downto 0) => NLW_inst_SDIO1_DATA_I_UNCONNECTED(3 downto 0),
      SDIO1_DATA_O(3 downto 0) => NLW_inst_SDIO1_DATA_O_UNCONNECTED(3 downto 0),
      SDIO1_DATA_T(3 downto 0) => NLW_inst_SDIO1_DATA_T_UNCONNECTED(3 downto 0),
      SDIO1_LED => NLW_inst_SDIO1_LED_UNCONNECTED,
      SDIO1_WP => NLW_inst_SDIO1_WP_UNCONNECTED,
      SPI0_MISO_I => NLW_inst_SPI0_MISO_I_UNCONNECTED,
      SPI0_MISO_O => NLW_inst_SPI0_MISO_O_UNCONNECTED,
      SPI0_MISO_T => NLW_inst_SPI0_MISO_T_UNCONNECTED,
      SPI0_MOSI_I => NLW_inst_SPI0_MOSI_I_UNCONNECTED,
      SPI0_MOSI_O => NLW_inst_SPI0_MOSI_O_UNCONNECTED,
      SPI0_MOSI_T => NLW_inst_SPI0_MOSI_T_UNCONNECTED,
      SPI0_SCLK_I => NLW_inst_SPI0_SCLK_I_UNCONNECTED,
      SPI0_SCLK_O => NLW_inst_SPI0_SCLK_O_UNCONNECTED,
      SPI0_SCLK_T => NLW_inst_SPI0_SCLK_T_UNCONNECTED,
      SPI0_SS1_O => NLW_inst_SPI0_SS1_O_UNCONNECTED,
      SPI0_SS2_O => NLW_inst_SPI0_SS2_O_UNCONNECTED,
      SPI0_SS_I => NLW_inst_SPI0_SS_I_UNCONNECTED,
      SPI0_SS_O => NLW_inst_SPI0_SS_O_UNCONNECTED,
      SPI0_SS_T => NLW_inst_SPI0_SS_T_UNCONNECTED,
      SPI1_MISO_I => NLW_inst_SPI1_MISO_I_UNCONNECTED,
      SPI1_MISO_O => NLW_inst_SPI1_MISO_O_UNCONNECTED,
      SPI1_MISO_T => NLW_inst_SPI1_MISO_T_UNCONNECTED,
      SPI1_MOSI_I => NLW_inst_SPI1_MOSI_I_UNCONNECTED,
      SPI1_MOSI_O => NLW_inst_SPI1_MOSI_O_UNCONNECTED,
      SPI1_MOSI_T => NLW_inst_SPI1_MOSI_T_UNCONNECTED,
      SPI1_SCLK_I => NLW_inst_SPI1_SCLK_I_UNCONNECTED,
      SPI1_SCLK_O => NLW_inst_SPI1_SCLK_O_UNCONNECTED,
      SPI1_SCLK_T => NLW_inst_SPI1_SCLK_T_UNCONNECTED,
      SPI1_SS1_O => NLW_inst_SPI1_SS1_O_UNCONNECTED,
      SPI1_SS2_O => NLW_inst_SPI1_SS2_O_UNCONNECTED,
      SPI1_SS_I => NLW_inst_SPI1_SS_I_UNCONNECTED,
      SPI1_SS_O => NLW_inst_SPI1_SS_O_UNCONNECTED,
      SPI1_SS_T => NLW_inst_SPI1_SS_T_UNCONNECTED,
      SRAM_INTIN => NLW_inst_SRAM_INTIN_UNCONNECTED,
      S_AXI_ACP_ACLK => NLW_inst_S_AXI_ACP_ACLK_UNCONNECTED,
      S_AXI_ACP_ARADDR(31 downto 0) => NLW_inst_S_AXI_ACP_ARADDR_UNCONNECTED(31 downto 0),
      S_AXI_ACP_ARBURST(1 downto 0) => NLW_inst_S_AXI_ACP_ARBURST_UNCONNECTED(1 downto 0),
      S_AXI_ACP_ARCACHE(3 downto 0) => NLW_inst_S_AXI_ACP_ARCACHE_UNCONNECTED(3 downto 0),
      S_AXI_ACP_ARESETN => NLW_inst_S_AXI_ACP_ARESETN_UNCONNECTED,
      S_AXI_ACP_ARID(2 downto 0) => NLW_inst_S_AXI_ACP_ARID_UNCONNECTED(2 downto 0),
      S_AXI_ACP_ARLEN(3 downto 0) => NLW_inst_S_AXI_ACP_ARLEN_UNCONNECTED(3 downto 0),
      S_AXI_ACP_ARLOCK(1 downto 0) => NLW_inst_S_AXI_ACP_ARLOCK_UNCONNECTED(1 downto 0),
      S_AXI_ACP_ARPROT(2 downto 0) => NLW_inst_S_AXI_ACP_ARPROT_UNCONNECTED(2 downto 0),
      S_AXI_ACP_ARQOS(3 downto 0) => NLW_inst_S_AXI_ACP_ARQOS_UNCONNECTED(3 downto 0),
      S_AXI_ACP_ARREADY => NLW_inst_S_AXI_ACP_ARREADY_UNCONNECTED,
      S_AXI_ACP_ARSIZE(2 downto 0) => NLW_inst_S_AXI_ACP_ARSIZE_UNCONNECTED(2 downto 0),
      S_AXI_ACP_ARUSER(4 downto 0) => NLW_inst_S_AXI_ACP_ARUSER_UNCONNECTED(4 downto 0),
      S_AXI_ACP_ARVALID => NLW_inst_S_AXI_ACP_ARVALID_UNCONNECTED,
      S_AXI_ACP_AWADDR(31 downto 0) => NLW_inst_S_AXI_ACP_AWADDR_UNCONNECTED(31 downto 0),
      S_AXI_ACP_AWBURST(1 downto 0) => NLW_inst_S_AXI_ACP_AWBURST_UNCONNECTED(1 downto 0),
      S_AXI_ACP_AWCACHE(3 downto 0) => NLW_inst_S_AXI_ACP_AWCACHE_UNCONNECTED(3 downto 0),
      S_AXI_ACP_AWID(2 downto 0) => NLW_inst_S_AXI_ACP_AWID_UNCONNECTED(2 downto 0),
      S_AXI_ACP_AWLEN(3 downto 0) => NLW_inst_S_AXI_ACP_AWLEN_UNCONNECTED(3 downto 0),
      S_AXI_ACP_AWLOCK(1 downto 0) => NLW_inst_S_AXI_ACP_AWLOCK_UNCONNECTED(1 downto 0),
      S_AXI_ACP_AWPROT(2 downto 0) => NLW_inst_S_AXI_ACP_AWPROT_UNCONNECTED(2 downto 0),
      S_AXI_ACP_AWQOS(3 downto 0) => NLW_inst_S_AXI_ACP_AWQOS_UNCONNECTED(3 downto 0),
      S_AXI_ACP_AWREADY => NLW_inst_S_AXI_ACP_AWREADY_UNCONNECTED,
      S_AXI_ACP_AWSIZE(2 downto 0) => NLW_inst_S_AXI_ACP_AWSIZE_UNCONNECTED(2 downto 0),
      S_AXI_ACP_AWUSER(4 downto 0) => NLW_inst_S_AXI_ACP_AWUSER_UNCONNECTED(4 downto 0),
      S_AXI_ACP_AWVALID => NLW_inst_S_AXI_ACP_AWVALID_UNCONNECTED,
      S_AXI_ACP_BID(2 downto 0) => NLW_inst_S_AXI_ACP_BID_UNCONNECTED(2 downto 0),
      S_AXI_ACP_BREADY => NLW_inst_S_AXI_ACP_BREADY_UNCONNECTED,
      S_AXI_ACP_BRESP(1 downto 0) => NLW_inst_S_AXI_ACP_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_ACP_BVALID => NLW_inst_S_AXI_ACP_BVALID_UNCONNECTED,
      S_AXI_ACP_RDATA(63 downto 0) => NLW_inst_S_AXI_ACP_RDATA_UNCONNECTED(63 downto 0),
      S_AXI_ACP_RID(2 downto 0) => NLW_inst_S_AXI_ACP_RID_UNCONNECTED(2 downto 0),
      S_AXI_ACP_RLAST => NLW_inst_S_AXI_ACP_RLAST_UNCONNECTED,
      S_AXI_ACP_RREADY => NLW_inst_S_AXI_ACP_RREADY_UNCONNECTED,
      S_AXI_ACP_RRESP(1 downto 0) => NLW_inst_S_AXI_ACP_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_ACP_RVALID => NLW_inst_S_AXI_ACP_RVALID_UNCONNECTED,
      S_AXI_ACP_WDATA(63 downto 0) => NLW_inst_S_AXI_ACP_WDATA_UNCONNECTED(63 downto 0),
      S_AXI_ACP_WID(2 downto 0) => NLW_inst_S_AXI_ACP_WID_UNCONNECTED(2 downto 0),
      S_AXI_ACP_WLAST => NLW_inst_S_AXI_ACP_WLAST_UNCONNECTED,
      S_AXI_ACP_WREADY => NLW_inst_S_AXI_ACP_WREADY_UNCONNECTED,
      S_AXI_ACP_WSTRB(7 downto 0) => NLW_inst_S_AXI_ACP_WSTRB_UNCONNECTED(7 downto 0),
      S_AXI_ACP_WVALID => NLW_inst_S_AXI_ACP_WVALID_UNCONNECTED,
      S_AXI_GP0_ACLK => NLW_inst_S_AXI_GP0_ACLK_UNCONNECTED,
      S_AXI_GP0_ARADDR(31 downto 0) => NLW_inst_S_AXI_GP0_ARADDR_UNCONNECTED(31 downto 0),
      S_AXI_GP0_ARBURST(1 downto 0) => NLW_inst_S_AXI_GP0_ARBURST_UNCONNECTED(1 downto 0),
      S_AXI_GP0_ARCACHE(3 downto 0) => NLW_inst_S_AXI_GP0_ARCACHE_UNCONNECTED(3 downto 0),
      S_AXI_GP0_ARESETN => NLW_inst_S_AXI_GP0_ARESETN_UNCONNECTED,
      S_AXI_GP0_ARID(5 downto 0) => NLW_inst_S_AXI_GP0_ARID_UNCONNECTED(5 downto 0),
      S_AXI_GP0_ARLEN(3 downto 0) => NLW_inst_S_AXI_GP0_ARLEN_UNCONNECTED(3 downto 0),
      S_AXI_GP0_ARLOCK(1 downto 0) => NLW_inst_S_AXI_GP0_ARLOCK_UNCONNECTED(1 downto 0),
      S_AXI_GP0_ARPROT(2 downto 0) => NLW_inst_S_AXI_GP0_ARPROT_UNCONNECTED(2 downto 0),
      S_AXI_GP0_ARQOS(3 downto 0) => NLW_inst_S_AXI_GP0_ARQOS_UNCONNECTED(3 downto 0),
      S_AXI_GP0_ARREADY => NLW_inst_S_AXI_GP0_ARREADY_UNCONNECTED,
      S_AXI_GP0_ARSIZE(2 downto 0) => NLW_inst_S_AXI_GP0_ARSIZE_UNCONNECTED(2 downto 0),
      S_AXI_GP0_ARVALID => NLW_inst_S_AXI_GP0_ARVALID_UNCONNECTED,
      S_AXI_GP0_AWADDR(31 downto 0) => NLW_inst_S_AXI_GP0_AWADDR_UNCONNECTED(31 downto 0),
      S_AXI_GP0_AWBURST(1 downto 0) => NLW_inst_S_AXI_GP0_AWBURST_UNCONNECTED(1 downto 0),
      S_AXI_GP0_AWCACHE(3 downto 0) => NLW_inst_S_AXI_GP0_AWCACHE_UNCONNECTED(3 downto 0),
      S_AXI_GP0_AWID(5 downto 0) => NLW_inst_S_AXI_GP0_AWID_UNCONNECTED(5 downto 0),
      S_AXI_GP0_AWLEN(3 downto 0) => NLW_inst_S_AXI_GP0_AWLEN_UNCONNECTED(3 downto 0),
      S_AXI_GP0_AWLOCK(1 downto 0) => NLW_inst_S_AXI_GP0_AWLOCK_UNCONNECTED(1 downto 0),
      S_AXI_GP0_AWPROT(2 downto 0) => NLW_inst_S_AXI_GP0_AWPROT_UNCONNECTED(2 downto 0),
      S_AXI_GP0_AWQOS(3 downto 0) => NLW_inst_S_AXI_GP0_AWQOS_UNCONNECTED(3 downto 0),
      S_AXI_GP0_AWREADY => NLW_inst_S_AXI_GP0_AWREADY_UNCONNECTED,
      S_AXI_GP0_AWSIZE(2 downto 0) => NLW_inst_S_AXI_GP0_AWSIZE_UNCONNECTED(2 downto 0),
      S_AXI_GP0_AWVALID => NLW_inst_S_AXI_GP0_AWVALID_UNCONNECTED,
      S_AXI_GP0_BID(5 downto 0) => NLW_inst_S_AXI_GP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_GP0_BREADY => NLW_inst_S_AXI_GP0_BREADY_UNCONNECTED,
      S_AXI_GP0_BRESP(1 downto 0) => NLW_inst_S_AXI_GP0_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_GP0_BVALID => NLW_inst_S_AXI_GP0_BVALID_UNCONNECTED,
      S_AXI_GP0_RDATA(31 downto 0) => NLW_inst_S_AXI_GP0_RDATA_UNCONNECTED(31 downto 0),
      S_AXI_GP0_RID(5 downto 0) => NLW_inst_S_AXI_GP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_GP0_RLAST => NLW_inst_S_AXI_GP0_RLAST_UNCONNECTED,
      S_AXI_GP0_RREADY => NLW_inst_S_AXI_GP0_RREADY_UNCONNECTED,
      S_AXI_GP0_RRESP(1 downto 0) => NLW_inst_S_AXI_GP0_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_GP0_RVALID => NLW_inst_S_AXI_GP0_RVALID_UNCONNECTED,
      S_AXI_GP0_WDATA(31 downto 0) => NLW_inst_S_AXI_GP0_WDATA_UNCONNECTED(31 downto 0),
      S_AXI_GP0_WID(5 downto 0) => NLW_inst_S_AXI_GP0_WID_UNCONNECTED(5 downto 0),
      S_AXI_GP0_WLAST => NLW_inst_S_AXI_GP0_WLAST_UNCONNECTED,
      S_AXI_GP0_WREADY => NLW_inst_S_AXI_GP0_WREADY_UNCONNECTED,
      S_AXI_GP0_WSTRB(3 downto 0) => NLW_inst_S_AXI_GP0_WSTRB_UNCONNECTED(3 downto 0),
      S_AXI_GP0_WVALID => NLW_inst_S_AXI_GP0_WVALID_UNCONNECTED,
      S_AXI_GP1_ACLK => NLW_inst_S_AXI_GP1_ACLK_UNCONNECTED,
      S_AXI_GP1_ARADDR(31 downto 0) => NLW_inst_S_AXI_GP1_ARADDR_UNCONNECTED(31 downto 0),
      S_AXI_GP1_ARBURST(1 downto 0) => NLW_inst_S_AXI_GP1_ARBURST_UNCONNECTED(1 downto 0),
      S_AXI_GP1_ARCACHE(3 downto 0) => NLW_inst_S_AXI_GP1_ARCACHE_UNCONNECTED(3 downto 0),
      S_AXI_GP1_ARESETN => NLW_inst_S_AXI_GP1_ARESETN_UNCONNECTED,
      S_AXI_GP1_ARID(5 downto 0) => NLW_inst_S_AXI_GP1_ARID_UNCONNECTED(5 downto 0),
      S_AXI_GP1_ARLEN(3 downto 0) => NLW_inst_S_AXI_GP1_ARLEN_UNCONNECTED(3 downto 0),
      S_AXI_GP1_ARLOCK(1 downto 0) => NLW_inst_S_AXI_GP1_ARLOCK_UNCONNECTED(1 downto 0),
      S_AXI_GP1_ARPROT(2 downto 0) => NLW_inst_S_AXI_GP1_ARPROT_UNCONNECTED(2 downto 0),
      S_AXI_GP1_ARQOS(3 downto 0) => NLW_inst_S_AXI_GP1_ARQOS_UNCONNECTED(3 downto 0),
      S_AXI_GP1_ARREADY => NLW_inst_S_AXI_GP1_ARREADY_UNCONNECTED,
      S_AXI_GP1_ARSIZE(2 downto 0) => NLW_inst_S_AXI_GP1_ARSIZE_UNCONNECTED(2 downto 0),
      S_AXI_GP1_ARVALID => NLW_inst_S_AXI_GP1_ARVALID_UNCONNECTED,
      S_AXI_GP1_AWADDR(31 downto 0) => NLW_inst_S_AXI_GP1_AWADDR_UNCONNECTED(31 downto 0),
      S_AXI_GP1_AWBURST(1 downto 0) => NLW_inst_S_AXI_GP1_AWBURST_UNCONNECTED(1 downto 0),
      S_AXI_GP1_AWCACHE(3 downto 0) => NLW_inst_S_AXI_GP1_AWCACHE_UNCONNECTED(3 downto 0),
      S_AXI_GP1_AWID(5 downto 0) => NLW_inst_S_AXI_GP1_AWID_UNCONNECTED(5 downto 0),
      S_AXI_GP1_AWLEN(3 downto 0) => NLW_inst_S_AXI_GP1_AWLEN_UNCONNECTED(3 downto 0),
      S_AXI_GP1_AWLOCK(1 downto 0) => NLW_inst_S_AXI_GP1_AWLOCK_UNCONNECTED(1 downto 0),
      S_AXI_GP1_AWPROT(2 downto 0) => NLW_inst_S_AXI_GP1_AWPROT_UNCONNECTED(2 downto 0),
      S_AXI_GP1_AWQOS(3 downto 0) => NLW_inst_S_AXI_GP1_AWQOS_UNCONNECTED(3 downto 0),
      S_AXI_GP1_AWREADY => NLW_inst_S_AXI_GP1_AWREADY_UNCONNECTED,
      S_AXI_GP1_AWSIZE(2 downto 0) => NLW_inst_S_AXI_GP1_AWSIZE_UNCONNECTED(2 downto 0),
      S_AXI_GP1_AWVALID => NLW_inst_S_AXI_GP1_AWVALID_UNCONNECTED,
      S_AXI_GP1_BID(5 downto 0) => NLW_inst_S_AXI_GP1_BID_UNCONNECTED(5 downto 0),
      S_AXI_GP1_BREADY => NLW_inst_S_AXI_GP1_BREADY_UNCONNECTED,
      S_AXI_GP1_BRESP(1 downto 0) => NLW_inst_S_AXI_GP1_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_GP1_BVALID => NLW_inst_S_AXI_GP1_BVALID_UNCONNECTED,
      S_AXI_GP1_RDATA(31 downto 0) => NLW_inst_S_AXI_GP1_RDATA_UNCONNECTED(31 downto 0),
      S_AXI_GP1_RID(5 downto 0) => NLW_inst_S_AXI_GP1_RID_UNCONNECTED(5 downto 0),
      S_AXI_GP1_RLAST => NLW_inst_S_AXI_GP1_RLAST_UNCONNECTED,
      S_AXI_GP1_RREADY => NLW_inst_S_AXI_GP1_RREADY_UNCONNECTED,
      S_AXI_GP1_RRESP(1 downto 0) => NLW_inst_S_AXI_GP1_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_GP1_RVALID => NLW_inst_S_AXI_GP1_RVALID_UNCONNECTED,
      S_AXI_GP1_WDATA(31 downto 0) => NLW_inst_S_AXI_GP1_WDATA_UNCONNECTED(31 downto 0),
      S_AXI_GP1_WID(5 downto 0) => NLW_inst_S_AXI_GP1_WID_UNCONNECTED(5 downto 0),
      S_AXI_GP1_WLAST => NLW_inst_S_AXI_GP1_WLAST_UNCONNECTED,
      S_AXI_GP1_WREADY => NLW_inst_S_AXI_GP1_WREADY_UNCONNECTED,
      S_AXI_GP1_WSTRB(3 downto 0) => NLW_inst_S_AXI_GP1_WSTRB_UNCONNECTED(3 downto 0),
      S_AXI_GP1_WVALID => NLW_inst_S_AXI_GP1_WVALID_UNCONNECTED,
      S_AXI_HP0_ACLK => S_AXI_HP0_ACLK,
      S_AXI_HP0_ARADDR(31 downto 0) => S_AXI_HP0_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => S_AXI_HP0_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => S_AXI_HP0_ARCACHE(3 downto 0),
      S_AXI_HP0_ARESETN => NLW_inst_S_AXI_HP0_ARESETN_UNCONNECTED,
      S_AXI_HP0_ARID(5 downto 0) => S_AXI_HP0_ARID(5 downto 0),
      S_AXI_HP0_ARLEN(3 downto 0) => S_AXI_HP0_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => S_AXI_HP0_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => S_AXI_HP0_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => S_AXI_HP0_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => S_AXI_HP0_ARREADY,
      S_AXI_HP0_ARSIZE(2) => NLW_inst_S_AXI_HP0_ARSIZE_UNCONNECTED(2),
      S_AXI_HP0_ARSIZE(1 downto 0) => S_AXI_HP0_ARSIZE(1 downto 0),
      S_AXI_HP0_ARVALID => S_AXI_HP0_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => S_AXI_HP0_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => S_AXI_HP0_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => S_AXI_HP0_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => S_AXI_HP0_AWID(5 downto 0),
      S_AXI_HP0_AWLEN(3 downto 0) => S_AXI_HP0_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => S_AXI_HP0_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => S_AXI_HP0_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => S_AXI_HP0_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => S_AXI_HP0_AWREADY,
      S_AXI_HP0_AWSIZE(2) => NLW_inst_S_AXI_HP0_AWSIZE_UNCONNECTED(2),
      S_AXI_HP0_AWSIZE(1 downto 0) => S_AXI_HP0_AWSIZE(1 downto 0),
      S_AXI_HP0_AWVALID => S_AXI_HP0_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_inst_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => S_AXI_HP0_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => NLW_inst_S_AXI_HP0_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_BVALID => S_AXI_HP0_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_inst_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_inst_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => S_AXI_HP0_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => S_AXI_HP0_RDISSUECAP1_EN,
      S_AXI_HP0_RID(5 downto 0) => NLW_inst_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => S_AXI_HP0_RLAST,
      S_AXI_HP0_RREADY => S_AXI_HP0_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => NLW_inst_S_AXI_HP0_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_RVALID => S_AXI_HP0_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_inst_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_inst_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => S_AXI_HP0_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => S_AXI_HP0_WID(5 downto 0),
      S_AXI_HP0_WLAST => S_AXI_HP0_WLAST,
      S_AXI_HP0_WREADY => S_AXI_HP0_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => S_AXI_HP0_WRISSUECAP1_EN,
      S_AXI_HP0_WSTRB(7 downto 0) => S_AXI_HP0_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => S_AXI_HP0_WVALID,
      S_AXI_HP1_ACLK => NLW_inst_S_AXI_HP1_ACLK_UNCONNECTED,
      S_AXI_HP1_ARADDR(31 downto 0) => NLW_inst_S_AXI_HP1_ARADDR_UNCONNECTED(31 downto 0),
      S_AXI_HP1_ARBURST(1 downto 0) => NLW_inst_S_AXI_HP1_ARBURST_UNCONNECTED(1 downto 0),
      S_AXI_HP1_ARCACHE(3 downto 0) => NLW_inst_S_AXI_HP1_ARCACHE_UNCONNECTED(3 downto 0),
      S_AXI_HP1_ARESETN => NLW_inst_S_AXI_HP1_ARESETN_UNCONNECTED,
      S_AXI_HP1_ARID(5 downto 0) => NLW_inst_S_AXI_HP1_ARID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_ARLEN(3 downto 0) => NLW_inst_S_AXI_HP1_ARLEN_UNCONNECTED(3 downto 0),
      S_AXI_HP1_ARLOCK(1 downto 0) => NLW_inst_S_AXI_HP1_ARLOCK_UNCONNECTED(1 downto 0),
      S_AXI_HP1_ARPROT(2 downto 0) => NLW_inst_S_AXI_HP1_ARPROT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_ARQOS(3 downto 0) => NLW_inst_S_AXI_HP1_ARQOS_UNCONNECTED(3 downto 0),
      S_AXI_HP1_ARREADY => NLW_inst_S_AXI_HP1_ARREADY_UNCONNECTED,
      S_AXI_HP1_ARSIZE(2 downto 0) => NLW_inst_S_AXI_HP1_ARSIZE_UNCONNECTED(2 downto 0),
      S_AXI_HP1_ARVALID => NLW_inst_S_AXI_HP1_ARVALID_UNCONNECTED,
      S_AXI_HP1_AWADDR(31 downto 0) => NLW_inst_S_AXI_HP1_AWADDR_UNCONNECTED(31 downto 0),
      S_AXI_HP1_AWBURST(1 downto 0) => NLW_inst_S_AXI_HP1_AWBURST_UNCONNECTED(1 downto 0),
      S_AXI_HP1_AWCACHE(3 downto 0) => NLW_inst_S_AXI_HP1_AWCACHE_UNCONNECTED(3 downto 0),
      S_AXI_HP1_AWID(5 downto 0) => NLW_inst_S_AXI_HP1_AWID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_AWLEN(3 downto 0) => NLW_inst_S_AXI_HP1_AWLEN_UNCONNECTED(3 downto 0),
      S_AXI_HP1_AWLOCK(1 downto 0) => NLW_inst_S_AXI_HP1_AWLOCK_UNCONNECTED(1 downto 0),
      S_AXI_HP1_AWPROT(2 downto 0) => NLW_inst_S_AXI_HP1_AWPROT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_AWQOS(3 downto 0) => NLW_inst_S_AXI_HP1_AWQOS_UNCONNECTED(3 downto 0),
      S_AXI_HP1_AWREADY => NLW_inst_S_AXI_HP1_AWREADY_UNCONNECTED,
      S_AXI_HP1_AWSIZE(2 downto 0) => NLW_inst_S_AXI_HP1_AWSIZE_UNCONNECTED(2 downto 0),
      S_AXI_HP1_AWVALID => NLW_inst_S_AXI_HP1_AWVALID_UNCONNECTED,
      S_AXI_HP1_BID(5 downto 0) => NLW_inst_S_AXI_HP1_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_BREADY => NLW_inst_S_AXI_HP1_BREADY_UNCONNECTED,
      S_AXI_HP1_BRESP(1 downto 0) => NLW_inst_S_AXI_HP1_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP1_BVALID => NLW_inst_S_AXI_HP1_BVALID_UNCONNECTED,
      S_AXI_HP1_RACOUNT(2 downto 0) => NLW_inst_S_AXI_HP1_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP1_RCOUNT(7 downto 0) => NLW_inst_S_AXI_HP1_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_RDATA(63 downto 0) => NLW_inst_S_AXI_HP1_RDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP1_RDISSUECAP1_EN => NLW_inst_S_AXI_HP1_RDISSUECAP1_EN_UNCONNECTED,
      S_AXI_HP1_RID(5 downto 0) => NLW_inst_S_AXI_HP1_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_RLAST => NLW_inst_S_AXI_HP1_RLAST_UNCONNECTED,
      S_AXI_HP1_RREADY => NLW_inst_S_AXI_HP1_RREADY_UNCONNECTED,
      S_AXI_HP1_RRESP(1 downto 0) => NLW_inst_S_AXI_HP1_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP1_RVALID => NLW_inst_S_AXI_HP1_RVALID_UNCONNECTED,
      S_AXI_HP1_WACOUNT(5 downto 0) => NLW_inst_S_AXI_HP1_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WCOUNT(7 downto 0) => NLW_inst_S_AXI_HP1_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WDATA(63 downto 0) => NLW_inst_S_AXI_HP1_WDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP1_WID(5 downto 0) => NLW_inst_S_AXI_HP1_WID_UNCONNECTED(5 downto 0),
      S_AXI_HP1_WLAST => NLW_inst_S_AXI_HP1_WLAST_UNCONNECTED,
      S_AXI_HP1_WREADY => NLW_inst_S_AXI_HP1_WREADY_UNCONNECTED,
      S_AXI_HP1_WRISSUECAP1_EN => NLW_inst_S_AXI_HP1_WRISSUECAP1_EN_UNCONNECTED,
      S_AXI_HP1_WSTRB(7 downto 0) => NLW_inst_S_AXI_HP1_WSTRB_UNCONNECTED(7 downto 0),
      S_AXI_HP1_WVALID => NLW_inst_S_AXI_HP1_WVALID_UNCONNECTED,
      S_AXI_HP2_ACLK => NLW_inst_S_AXI_HP2_ACLK_UNCONNECTED,
      S_AXI_HP2_ARADDR(31 downto 0) => NLW_inst_S_AXI_HP2_ARADDR_UNCONNECTED(31 downto 0),
      S_AXI_HP2_ARBURST(1 downto 0) => NLW_inst_S_AXI_HP2_ARBURST_UNCONNECTED(1 downto 0),
      S_AXI_HP2_ARCACHE(3 downto 0) => NLW_inst_S_AXI_HP2_ARCACHE_UNCONNECTED(3 downto 0),
      S_AXI_HP2_ARESETN => NLW_inst_S_AXI_HP2_ARESETN_UNCONNECTED,
      S_AXI_HP2_ARID(5 downto 0) => NLW_inst_S_AXI_HP2_ARID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_ARLEN(3 downto 0) => NLW_inst_S_AXI_HP2_ARLEN_UNCONNECTED(3 downto 0),
      S_AXI_HP2_ARLOCK(1 downto 0) => NLW_inst_S_AXI_HP2_ARLOCK_UNCONNECTED(1 downto 0),
      S_AXI_HP2_ARPROT(2 downto 0) => NLW_inst_S_AXI_HP2_ARPROT_UNCONNECTED(2 downto 0),
      S_AXI_HP2_ARQOS(3 downto 0) => NLW_inst_S_AXI_HP2_ARQOS_UNCONNECTED(3 downto 0),
      S_AXI_HP2_ARREADY => NLW_inst_S_AXI_HP2_ARREADY_UNCONNECTED,
      S_AXI_HP2_ARSIZE(2 downto 0) => NLW_inst_S_AXI_HP2_ARSIZE_UNCONNECTED(2 downto 0),
      S_AXI_HP2_ARVALID => NLW_inst_S_AXI_HP2_ARVALID_UNCONNECTED,
      S_AXI_HP2_AWADDR(31 downto 0) => NLW_inst_S_AXI_HP2_AWADDR_UNCONNECTED(31 downto 0),
      S_AXI_HP2_AWBURST(1 downto 0) => NLW_inst_S_AXI_HP2_AWBURST_UNCONNECTED(1 downto 0),
      S_AXI_HP2_AWCACHE(3 downto 0) => NLW_inst_S_AXI_HP2_AWCACHE_UNCONNECTED(3 downto 0),
      S_AXI_HP2_AWID(5 downto 0) => NLW_inst_S_AXI_HP2_AWID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_AWLEN(3 downto 0) => NLW_inst_S_AXI_HP2_AWLEN_UNCONNECTED(3 downto 0),
      S_AXI_HP2_AWLOCK(1 downto 0) => NLW_inst_S_AXI_HP2_AWLOCK_UNCONNECTED(1 downto 0),
      S_AXI_HP2_AWPROT(2 downto 0) => NLW_inst_S_AXI_HP2_AWPROT_UNCONNECTED(2 downto 0),
      S_AXI_HP2_AWQOS(3 downto 0) => NLW_inst_S_AXI_HP2_AWQOS_UNCONNECTED(3 downto 0),
      S_AXI_HP2_AWREADY => NLW_inst_S_AXI_HP2_AWREADY_UNCONNECTED,
      S_AXI_HP2_AWSIZE(2 downto 0) => NLW_inst_S_AXI_HP2_AWSIZE_UNCONNECTED(2 downto 0),
      S_AXI_HP2_AWVALID => NLW_inst_S_AXI_HP2_AWVALID_UNCONNECTED,
      S_AXI_HP2_BID(5 downto 0) => NLW_inst_S_AXI_HP2_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_BREADY => NLW_inst_S_AXI_HP2_BREADY_UNCONNECTED,
      S_AXI_HP2_BRESP(1 downto 0) => NLW_inst_S_AXI_HP2_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP2_BVALID => NLW_inst_S_AXI_HP2_BVALID_UNCONNECTED,
      S_AXI_HP2_RACOUNT(2 downto 0) => NLW_inst_S_AXI_HP2_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP2_RCOUNT(7 downto 0) => NLW_inst_S_AXI_HP2_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_RDATA(63 downto 0) => NLW_inst_S_AXI_HP2_RDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP2_RDISSUECAP1_EN => NLW_inst_S_AXI_HP2_RDISSUECAP1_EN_UNCONNECTED,
      S_AXI_HP2_RID(5 downto 0) => NLW_inst_S_AXI_HP2_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_RLAST => NLW_inst_S_AXI_HP2_RLAST_UNCONNECTED,
      S_AXI_HP2_RREADY => NLW_inst_S_AXI_HP2_RREADY_UNCONNECTED,
      S_AXI_HP2_RRESP(1 downto 0) => NLW_inst_S_AXI_HP2_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP2_RVALID => NLW_inst_S_AXI_HP2_RVALID_UNCONNECTED,
      S_AXI_HP2_WACOUNT(5 downto 0) => NLW_inst_S_AXI_HP2_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP2_WCOUNT(7 downto 0) => NLW_inst_S_AXI_HP2_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP2_WDATA(63 downto 0) => NLW_inst_S_AXI_HP2_WDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP2_WID(5 downto 0) => NLW_inst_S_AXI_HP2_WID_UNCONNECTED(5 downto 0),
      S_AXI_HP2_WLAST => NLW_inst_S_AXI_HP2_WLAST_UNCONNECTED,
      S_AXI_HP2_WREADY => NLW_inst_S_AXI_HP2_WREADY_UNCONNECTED,
      S_AXI_HP2_WRISSUECAP1_EN => NLW_inst_S_AXI_HP2_WRISSUECAP1_EN_UNCONNECTED,
      S_AXI_HP2_WSTRB(7 downto 0) => NLW_inst_S_AXI_HP2_WSTRB_UNCONNECTED(7 downto 0),
      S_AXI_HP2_WVALID => NLW_inst_S_AXI_HP2_WVALID_UNCONNECTED,
      S_AXI_HP3_ACLK => NLW_inst_S_AXI_HP3_ACLK_UNCONNECTED,
      S_AXI_HP3_ARADDR(31 downto 0) => NLW_inst_S_AXI_HP3_ARADDR_UNCONNECTED(31 downto 0),
      S_AXI_HP3_ARBURST(1 downto 0) => NLW_inst_S_AXI_HP3_ARBURST_UNCONNECTED(1 downto 0),
      S_AXI_HP3_ARCACHE(3 downto 0) => NLW_inst_S_AXI_HP3_ARCACHE_UNCONNECTED(3 downto 0),
      S_AXI_HP3_ARESETN => NLW_inst_S_AXI_HP3_ARESETN_UNCONNECTED,
      S_AXI_HP3_ARID(5 downto 0) => NLW_inst_S_AXI_HP3_ARID_UNCONNECTED(5 downto 0),
      S_AXI_HP3_ARLEN(3 downto 0) => NLW_inst_S_AXI_HP3_ARLEN_UNCONNECTED(3 downto 0),
      S_AXI_HP3_ARLOCK(1 downto 0) => NLW_inst_S_AXI_HP3_ARLOCK_UNCONNECTED(1 downto 0),
      S_AXI_HP3_ARPROT(2 downto 0) => NLW_inst_S_AXI_HP3_ARPROT_UNCONNECTED(2 downto 0),
      S_AXI_HP3_ARQOS(3 downto 0) => NLW_inst_S_AXI_HP3_ARQOS_UNCONNECTED(3 downto 0),
      S_AXI_HP3_ARREADY => NLW_inst_S_AXI_HP3_ARREADY_UNCONNECTED,
      S_AXI_HP3_ARSIZE(2 downto 0) => NLW_inst_S_AXI_HP3_ARSIZE_UNCONNECTED(2 downto 0),
      S_AXI_HP3_ARVALID => NLW_inst_S_AXI_HP3_ARVALID_UNCONNECTED,
      S_AXI_HP3_AWADDR(31 downto 0) => NLW_inst_S_AXI_HP3_AWADDR_UNCONNECTED(31 downto 0),
      S_AXI_HP3_AWBURST(1 downto 0) => NLW_inst_S_AXI_HP3_AWBURST_UNCONNECTED(1 downto 0),
      S_AXI_HP3_AWCACHE(3 downto 0) => NLW_inst_S_AXI_HP3_AWCACHE_UNCONNECTED(3 downto 0),
      S_AXI_HP3_AWID(5 downto 0) => NLW_inst_S_AXI_HP3_AWID_UNCONNECTED(5 downto 0),
      S_AXI_HP3_AWLEN(3 downto 0) => NLW_inst_S_AXI_HP3_AWLEN_UNCONNECTED(3 downto 0),
      S_AXI_HP3_AWLOCK(1 downto 0) => NLW_inst_S_AXI_HP3_AWLOCK_UNCONNECTED(1 downto 0),
      S_AXI_HP3_AWPROT(2 downto 0) => NLW_inst_S_AXI_HP3_AWPROT_UNCONNECTED(2 downto 0),
      S_AXI_HP3_AWQOS(3 downto 0) => NLW_inst_S_AXI_HP3_AWQOS_UNCONNECTED(3 downto 0),
      S_AXI_HP3_AWREADY => NLW_inst_S_AXI_HP3_AWREADY_UNCONNECTED,
      S_AXI_HP3_AWSIZE(2 downto 0) => NLW_inst_S_AXI_HP3_AWSIZE_UNCONNECTED(2 downto 0),
      S_AXI_HP3_AWVALID => NLW_inst_S_AXI_HP3_AWVALID_UNCONNECTED,
      S_AXI_HP3_BID(5 downto 0) => NLW_inst_S_AXI_HP3_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP3_BREADY => NLW_inst_S_AXI_HP3_BREADY_UNCONNECTED,
      S_AXI_HP3_BRESP(1 downto 0) => NLW_inst_S_AXI_HP3_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP3_BVALID => NLW_inst_S_AXI_HP3_BVALID_UNCONNECTED,
      S_AXI_HP3_RACOUNT(2 downto 0) => NLW_inst_S_AXI_HP3_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP3_RCOUNT(7 downto 0) => NLW_inst_S_AXI_HP3_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP3_RDATA(63 downto 0) => NLW_inst_S_AXI_HP3_RDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP3_RDISSUECAP1_EN => NLW_inst_S_AXI_HP3_RDISSUECAP1_EN_UNCONNECTED,
      S_AXI_HP3_RID(5 downto 0) => NLW_inst_S_AXI_HP3_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP3_RLAST => NLW_inst_S_AXI_HP3_RLAST_UNCONNECTED,
      S_AXI_HP3_RREADY => NLW_inst_S_AXI_HP3_RREADY_UNCONNECTED,
      S_AXI_HP3_RRESP(1 downto 0) => NLW_inst_S_AXI_HP3_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP3_RVALID => NLW_inst_S_AXI_HP3_RVALID_UNCONNECTED,
      S_AXI_HP3_WACOUNT(5 downto 0) => NLW_inst_S_AXI_HP3_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP3_WCOUNT(7 downto 0) => NLW_inst_S_AXI_HP3_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP3_WDATA(63 downto 0) => NLW_inst_S_AXI_HP3_WDATA_UNCONNECTED(63 downto 0),
      S_AXI_HP3_WID(5 downto 0) => NLW_inst_S_AXI_HP3_WID_UNCONNECTED(5 downto 0),
      S_AXI_HP3_WLAST => NLW_inst_S_AXI_HP3_WLAST_UNCONNECTED,
      S_AXI_HP3_WREADY => NLW_inst_S_AXI_HP3_WREADY_UNCONNECTED,
      S_AXI_HP3_WRISSUECAP1_EN => NLW_inst_S_AXI_HP3_WRISSUECAP1_EN_UNCONNECTED,
      S_AXI_HP3_WSTRB(7 downto 0) => NLW_inst_S_AXI_HP3_WSTRB_UNCONNECTED(7 downto 0),
      S_AXI_HP3_WVALID => NLW_inst_S_AXI_HP3_WVALID_UNCONNECTED,
      TRACE_CLK => NLW_inst_TRACE_CLK_UNCONNECTED,
      TRACE_CLK_OUT => NLW_inst_TRACE_CLK_OUT_UNCONNECTED,
      TRACE_CTL => NLW_inst_TRACE_CTL_UNCONNECTED,
      TRACE_DATA(1 downto 0) => NLW_inst_TRACE_DATA_UNCONNECTED(1 downto 0),
      TTC0_CLK0_IN => NLW_inst_TTC0_CLK0_IN_UNCONNECTED,
      TTC0_CLK1_IN => NLW_inst_TTC0_CLK1_IN_UNCONNECTED,
      TTC0_CLK2_IN => NLW_inst_TTC0_CLK2_IN_UNCONNECTED,
      TTC0_WAVE0_OUT => NLW_inst_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_inst_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_inst_TTC0_WAVE2_OUT_UNCONNECTED,
      TTC1_CLK0_IN => NLW_inst_TTC1_CLK0_IN_UNCONNECTED,
      TTC1_CLK1_IN => NLW_inst_TTC1_CLK1_IN_UNCONNECTED,
      TTC1_CLK2_IN => NLW_inst_TTC1_CLK2_IN_UNCONNECTED,
      TTC1_WAVE0_OUT => NLW_inst_TTC1_WAVE0_OUT_UNCONNECTED,
      TTC1_WAVE1_OUT => NLW_inst_TTC1_WAVE1_OUT_UNCONNECTED,
      TTC1_WAVE2_OUT => NLW_inst_TTC1_WAVE2_OUT_UNCONNECTED,
      UART0_CTSN => NLW_inst_UART0_CTSN_UNCONNECTED,
      UART0_DCDN => NLW_inst_UART0_DCDN_UNCONNECTED,
      UART0_DSRN => NLW_inst_UART0_DSRN_UNCONNECTED,
      UART0_DTRN => NLW_inst_UART0_DTRN_UNCONNECTED,
      UART0_RIN => NLW_inst_UART0_RIN_UNCONNECTED,
      UART0_RTSN => NLW_inst_UART0_RTSN_UNCONNECTED,
      UART0_RX => NLW_inst_UART0_RX_UNCONNECTED,
      UART0_TX => NLW_inst_UART0_TX_UNCONNECTED,
      UART1_CTSN => NLW_inst_UART1_CTSN_UNCONNECTED,
      UART1_DCDN => NLW_inst_UART1_DCDN_UNCONNECTED,
      UART1_DSRN => NLW_inst_UART1_DSRN_UNCONNECTED,
      UART1_DTRN => NLW_inst_UART1_DTRN_UNCONNECTED,
      UART1_RIN => NLW_inst_UART1_RIN_UNCONNECTED,
      UART1_RTSN => NLW_inst_UART1_RTSN_UNCONNECTED,
      UART1_RX => NLW_inst_UART1_RX_UNCONNECTED,
      UART1_TX => NLW_inst_UART1_TX_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_inst_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => NLW_inst_USB0_VBUS_PWRFAULT_UNCONNECTED,
      USB0_VBUS_PWRSELECT => NLW_inst_USB0_VBUS_PWRSELECT_UNCONNECTED,
      USB1_PORT_INDCTL(1 downto 0) => NLW_inst_USB1_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB1_VBUS_PWRFAULT => NLW_inst_USB1_VBUS_PWRFAULT_UNCONNECTED,
      USB1_VBUS_PWRSELECT => NLW_inst_USB1_VBUS_PWRSELECT_UNCONNECTED,
      WDT_CLK_IN => NLW_inst_WDT_CLK_IN_UNCONNECTED,
      WDT_RST_OUT => NLW_inst_WDT_RST_OUT_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_rst_ps7_0_50M_0_lpf is
  port (
    lpf_int : out STD_LOGIC;
    slowest_sync_clk : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_rst_ps7_0_50M_0_lpf : entity is "lpf";
end Setup_rst_ps7_0_50M_0_lpf;

architecture STRUCTURE of Setup_rst_ps7_0_50M_0_lpf is
  signal \ACTIVE_HIGH_EXT.ACT_HI_EXT_n_0\ : STD_LOGIC;
  signal \ACTIVE_LOW_AUX.ACT_LO_AUX_n_0\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal asr_lpf : STD_LOGIC_VECTOR ( 0 to 0 );
  signal exr_lpf : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lpf_asr : STD_LOGIC;
  signal lpf_exr : STD_LOGIC;
  signal \lpf_int0__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in4_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in3_in : STD_LOGIC;
  signal p_3_in1_in : STD_LOGIC;
  signal p_3_in6_in : STD_LOGIC;
  signal \NLW_ACTIVE_HIGH_EXT.ACT_HI_EXT_mb_debug_sys_rst_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_aux_reset_in_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of POR_SRL_I : label is "SRL16";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of POR_SRL_I : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of POR_SRL_I : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of POR_SRL_I : label is "U0/\EXT_LPF/POR_SRL_I ";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of lpf_int0 : label is "RETARGET";
begin
\ACTIVE_HIGH_EXT.ACT_HI_EXT\: entity work.Setup_rst_ps7_0_50M_0_cdc_sync
     port map (
      exr_lpf(0) => exr_lpf(0),
      ext_reset_in => ext_reset_in,
      lpf_exr => lpf_exr,
      lpf_exr_reg => \ACTIVE_HIGH_EXT.ACT_HI_EXT_n_0\,
      mb_debug_sys_rst => \NLW_ACTIVE_HIGH_EXT.ACT_HI_EXT_mb_debug_sys_rst_UNCONNECTED\,
      p_1_in4_in => p_1_in4_in,
      p_2_in3_in => p_2_in3_in,
      scndry_out => p_3_in6_in,
      slowest_sync_clk => slowest_sync_clk
    );
\ACTIVE_LOW_AUX.ACT_LO_AUX\: entity work.Setup_rst_ps7_0_50M_0_cdc_sync_0
     port map (
      asr_lpf(0) => asr_lpf(0),
      aux_reset_in => \NLW_ACTIVE_LOW_AUX.ACT_LO_AUX_aux_reset_in_UNCONNECTED\,
      lpf_asr => lpf_asr,
      lpf_asr_reg => \ACTIVE_LOW_AUX.ACT_LO_AUX_n_0\,
      p_1_in => p_1_in,
      p_2_in => p_2_in,
      scndry_out => p_3_in1_in,
      slowest_sync_clk => slowest_sync_clk
    );
\AUX_LPF[1].asr_lpf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_3_in1_in,
      Q => p_2_in,
      R => '0'
    );
\AUX_LPF[2].asr_lpf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_2_in,
      Q => p_1_in,
      R => '0'
    );
\AUX_LPF[3].asr_lpf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_1_in,
      Q => asr_lpf(0),
      R => '0'
    );
\EXT_LPF[1].exr_lpf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_3_in6_in,
      Q => p_2_in3_in,
      R => '0'
    );
\EXT_LPF[2].exr_lpf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_2_in3_in,
      Q => p_1_in4_in,
      R => '0'
    );
\EXT_LPF[3].exr_lpf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_1_in4_in,
      Q => exr_lpf(0),
      R => '0'
    );
POR_SRL_I: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"FFFF"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => slowest_sync_clk,
      D => '0',
      Q => Q
    );
lpf_asr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \ACTIVE_LOW_AUX.ACT_LO_AUX_n_0\,
      Q => lpf_asr,
      R => '0'
    );
lpf_exr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \ACTIVE_HIGH_EXT.ACT_HI_EXT_n_0\,
      Q => lpf_exr,
      R => '0'
    );
lpf_int0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => lpf_exr,
      I1 => lpf_asr,
      I2 => Q,
      O => \lpf_int0__0\
    );
lpf_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \lpf_int0__0\,
      Q => lpf_int,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_rst_ps7_0_50M_0_sequence_psr is
  port (
    MB_out : out STD_LOGIC;
    Bsr_out : out STD_LOGIC;
    Pr_out : out STD_LOGIC;
    bsr_reg_0 : out STD_LOGIC;
    pr_reg_0 : out STD_LOGIC;
    lpf_int : in STD_LOGIC;
    slowest_sync_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_rst_ps7_0_50M_0_sequence_psr : entity is "sequence_psr";
end Setup_rst_ps7_0_50M_0_sequence_psr;

architecture STRUCTURE of Setup_rst_ps7_0_50M_0_sequence_psr is
  signal Core_i_1_n_0 : STD_LOGIC;
  signal \^mb_out\ : STD_LOGIC;
  signal \^pr_out\ : STD_LOGIC;
  signal \core_dec[0]_i_1_n_0\ : STD_LOGIC;
  signal \core_dec[2]_i_1_n_0\ : STD_LOGIC;
  signal \core_dec_reg_n_0_[0]\ : STD_LOGIC;
  signal \core_dec_reg_n_0_[1]\ : STD_LOGIC;
  signal from_sys_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pr_dec0__0\ : STD_LOGIC;
  signal \pr_dec_reg_n_0_[0]\ : STD_LOGIC;
  signal \pr_dec_reg_n_0_[2]\ : STD_LOGIC;
  signal pr_i_1_n_0 : STD_LOGIC;
  signal seq_clr : STD_LOGIC;
  signal seq_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal seq_cnt_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1\ : label is "soft_lutpair5";
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of Core_i_1 : label is 193;
  attribute SOFT_HLUTNM of Core_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \core_dec[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \core_dec[2]_i_1\ : label is "soft_lutpair6";
  attribute \PinAttr:I0:HOLD_DETOUR\ of from_sys_i_1 : label is 193;
  attribute SOFT_HLUTNM of from_sys_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of pr_i_1 : label is "soft_lutpair5";
begin
\ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pr_out\,
      O => pr_reg_0
    );
Core_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^mb_out\,
      I1 => p_0_in,
      O => Core_i_1_n_0
    );
Core_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => Core_i_1_n_0,
      Q => \^mb_out\,
      S => lpf_int
    );
SEQ_COUNTER: entity work.Setup_rst_ps7_0_50M_0_upcnt_n
     port map (
      Q(5 downto 0) => seq_cnt(5 downto 0),
      seq_clr => seq_clr,
      seq_cnt_en => seq_cnt_en,
      slowest_sync_clk => slowest_sync_clk
    );
\core_dec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9000"
    )
        port map (
      I0 => seq_cnt_en,
      I1 => seq_cnt(4),
      I2 => seq_cnt(3),
      I3 => seq_cnt(5),
      O => \core_dec[0]_i_1_n_0\
    );
\core_dec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \core_dec_reg_n_0_[1]\,
      I1 => \core_dec_reg_n_0_[0]\,
      O => \core_dec[2]_i_1_n_0\
    );
\core_dec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \core_dec[0]_i_1_n_0\,
      Q => \core_dec_reg_n_0_[0]\,
      R => '0'
    );
\core_dec_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \pr_dec0__0\,
      Q => \core_dec_reg_n_0_[1]\,
      R => '0'
    );
\core_dec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => \core_dec[2]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
from_sys_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^mb_out\,
      I1 => seq_cnt_en,
      O => from_sys_i_1_n_0
    );
from_sys_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => from_sys_i_1_n_0,
      Q => seq_cnt_en,
      S => lpf_int
    );
pr_dec0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0018"
    )
        port map (
      I0 => seq_cnt_en,
      I1 => seq_cnt(0),
      I2 => seq_cnt(2),
      I3 => seq_cnt(1),
      O => \pr_dec0__0\
    );
\pr_dec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0480"
    )
        port map (
      I0 => seq_cnt_en,
      I1 => seq_cnt(3),
      I2 => seq_cnt(5),
      I3 => seq_cnt(4),
      O => p_3_out(0)
    );
\pr_dec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \core_dec_reg_n_0_[1]\,
      I1 => \pr_dec_reg_n_0_[0]\,
      O => p_3_out(2)
    );
\pr_dec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_3_out(0),
      Q => \pr_dec_reg_n_0_[0]\,
      R => '0'
    );
\pr_dec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => p_3_out(2),
      Q => \pr_dec_reg_n_0_[2]\,
      R => '0'
    );
pr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pr_out\,
      I1 => \pr_dec_reg_n_0_[2]\,
      O => pr_i_1_n_0
    );
pr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => pr_i_1_n_0,
      Q => \^pr_out\,
      S => lpf_int
    );
seq_clr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => '1',
      Q => seq_clr,
      R => lpf_int
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_axi_dwidth_converter_v2_1_31_axi_upsizer is
  port (
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_ready_i_reg : out STD_LOGIC;
    \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ : out STD_LOGIC;
    \m_payload_i_reg[54]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    \USE_REGISTER.M_AXI_WVALID_q_reg\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 53 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \m_payload_i_reg[54]_0\ : in STD_LOGIC_VECTOR ( 53 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_valid_i_reg_inv : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_axi_upsizer : entity is "axi_dwidth_converter_v2_1_31_axi_upsizer";
end Setup_auto_us_0_axi_dwidth_converter_v2_1_31_axi_upsizer;

architecture STRUCTURE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_axi_upsizer is
  signal \MULTIPLE_WORD.current_index\ : STD_LOGIC;
  signal \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8\ : STD_LOGIC;
  signal \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9\ : STD_LOGIC;
  signal \USE_READ.rd_cmd_fix\ : STD_LOGIC;
  signal \USE_READ.rd_cmd_valid\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_1\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_10\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_14\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_22\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_24\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_8\ : STD_LOGIC;
  signal \^use_register.m_axi_wvalid_q_reg\ : STD_LOGIC;
  signal \USE_RTL_LENGTH.first_mi_word_q_0\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\ : STD_LOGIC;
  signal \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_valid\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_32\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_34\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_36\ : STD_LOGIC;
  signal cmd_fix_i : STD_LOGIC;
  signal current_word_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal first_word : STD_LOGIC;
  signal \last_beat__6\ : STD_LOGIC;
  signal mr_rvalid : STD_LOGIC;
  signal next_word : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_13_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 22 downto 19 );
  signal pre_next_word : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pre_next_word_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r.r_pipe/p_1_in\ : STD_LOGIC;
  signal \sel_first_word__0\ : STD_LOGIC;
  signal si_register_slice_inst_n_0 : STD_LOGIC;
  signal si_register_slice_inst_n_1 : STD_LOGIC;
  signal si_register_slice_inst_n_81 : STD_LOGIC;
  signal si_register_slice_inst_n_82 : STD_LOGIC;
  signal si_register_slice_inst_n_83 : STD_LOGIC;
  signal si_register_slice_inst_n_84 : STD_LOGIC;
  signal si_register_slice_inst_n_86 : STD_LOGIC;
  signal sr_arvalid : STD_LOGIC;
  signal sr_awvalid : STD_LOGIC;
  signal use_wrap_buffer : STD_LOGIC;
  signal wrap_buffer_available : STD_LOGIC;
  signal \NLW_USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 65 downto 64 );
  signal \NLW_USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_m_axi_rresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_USE_READ.gen_non_fifo_r_upsizer.read_data_inst_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_USE_READ.gen_non_fifo_r_upsizer.read_data_inst_rresp_wrap_buffer_reg[1]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 65 downto 64 );
  signal \NLW_USE_READ.gen_non_fifo_r_upsizer.read_data_inst_s_axi_rresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_USE_READ.read_addr_inst_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_USE_READ.read_addr_inst_in_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.first_word_q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.first_mi_word_q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.first_mi_word_q_reg_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_p_79_in_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_p_89_in_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_s_axi_wlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_sel_first_word__0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_wrap_buffer_available_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_wrap_buffer_available_reg_0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_D_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_E_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.current_word_q_reg[2]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.current_word_q_reg[2]_1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_s_axi_wdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_s_axi_wstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_USE_REGISTER.M_AXI_WVALID_q_reg_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_USE_RTL_CURR_WORD.first_word_q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_USE_RTL_LENGTH.first_mi_word_q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_USE_RTL_LENGTH.length_counter_q_reg[0]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_p_79_in_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_p_89_in_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_sel_first_word__0_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_USE_WRITE.write_addr_inst_D_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_Q_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_USE_RTL_CURR_WORD.current_word_q_reg[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_in_UNCONNECTED\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_s_axi_wstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_USE_WRITE.write_addr_inst_s_axi_wvalid_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_1_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_2_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_3_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_4_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_5_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_6_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_si_register_slice_inst_D_UNCONNECTED : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal NLW_si_register_slice_inst_in_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 4 );
  signal NLW_si_register_slice_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_si_register_slice_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_si_register_slice_inst_m_payload_i_reg[38]_UNCONNECTED\ : STD_LOGIC_VECTOR ( 22 downto 5 );
  signal \NLW_si_register_slice_inst_m_payload_i_reg[54]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 53 downto 0 );
begin
  \USE_REGISTER.M_AXI_WVALID_q_reg\ <= \^use_register.m_axi_wvalid_q_reg\;
\USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst\: entity work.Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice
     port map (
      E(0) => \r.r_pipe/p_1_in\,
      Q(65 downto 64) => \NLW_USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_Q_UNCONNECTED\(65 downto 64),
      Q(63) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6\,
      Q(62) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7\,
      Q(61) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8\,
      Q(60) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9\,
      Q(59) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10\,
      Q(58) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11\,
      Q(57) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12\,
      Q(56) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13\,
      Q(55) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14\,
      Q(54) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15\,
      Q(53) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16\,
      Q(52) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17\,
      Q(51) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18\,
      Q(50) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19\,
      Q(49) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20\,
      Q(48) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21\,
      Q(47) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22\,
      Q(46) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23\,
      Q(45) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24\,
      Q(44) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25\,
      Q(43) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26\,
      Q(42) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27\,
      Q(41) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28\,
      Q(40) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29\,
      Q(39) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30\,
      Q(38) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31\,
      Q(37) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32\,
      Q(36) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33\,
      Q(35) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34\,
      Q(34) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35\,
      Q(33) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36\,
      Q(32) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37\,
      Q(31) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38\,
      Q(30) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39\,
      Q(29) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40\,
      Q(28) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41\,
      Q(27) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42\,
      Q(26) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43\,
      Q(25) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44\,
      Q(24) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45\,
      Q(23) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46\,
      Q(22) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47\,
      Q(21) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48\,
      Q(20) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49\,
      Q(19) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50\,
      Q(18) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51\,
      Q(17) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52\,
      Q(16) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53\,
      Q(15) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54\,
      Q(14) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55\,
      Q(13) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56\,
      Q(12) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57\,
      Q(11) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58\,
      Q(10) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59\,
      Q(9) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60\,
      Q(8) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61\,
      Q(7) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62\,
      Q(6) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63\,
      Q(5) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64\,
      Q(4) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65\,
      Q(3) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66\,
      Q(2) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67\,
      Q(1) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68\,
      Q(0) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69\,
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q_0\,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => \NLW_USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_m_axi_rresp_UNCONNECTED\(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \m_payload_i_reg[66]\ => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3\,
      m_valid_i_reg => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2\,
      m_valid_i_reg_0 => si_register_slice_inst_n_1,
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      s_axi_rready => s_axi_rready,
      s_ready_i_reg => s_ready_i_reg,
      s_ready_i_reg_0 => si_register_slice_inst_n_0
    );
\USE_READ.gen_non_fifo_r_upsizer.read_data_inst\: entity work.Setup_auto_us_0_axi_dwidth_converter_v2_1_31_r_upsizer
     port map (
      D(2 downto 0) => pre_next_word(2 downto 0),
      E(0) => p_15_in,
      \MULTIPLE_WORD.current_index\ => \MULTIPLE_WORD.current_index\,
      Q(5) => \USE_READ.rd_cmd_fix\,
      Q(4 downto 0) => \NLW_USE_READ.gen_non_fifo_r_upsizer.read_data_inst_Q_UNCONNECTED\(4 downto 0),
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q_0\,
      \USE_RTL_LENGTH.first_mi_word_q_reg_0\ => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_3\,
      \USE_RTL_LENGTH.length_counter_q_reg[2]_0\ => \USE_READ.read_addr_inst_n_14\,
      \USE_RTL_LENGTH.length_counter_q_reg[2]_1\ => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_2\,
      \current_word_1_reg[2]_0\(2 downto 0) => current_word_1(2 downto 0),
      \current_word_1_reg[2]_1\(2 downto 0) => next_word(2 downto 0),
      first_word => first_word,
      first_word_reg_0 => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]\,
      \last_beat__6\ => \last_beat__6\,
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      \pre_next_word_1_reg[2]_0\(2 downto 0) => pre_next_word_1(2 downto 0),
      \rresp_wrap_buffer_reg[1]_0\(65 downto 64) => \NLW_USE_READ.gen_non_fifo_r_upsizer.read_data_inst_rresp_wrap_buffer_reg[1]_0_UNCONNECTED\(65 downto 64),
      \rresp_wrap_buffer_reg[1]_0\(63) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_6\,
      \rresp_wrap_buffer_reg[1]_0\(62) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_7\,
      \rresp_wrap_buffer_reg[1]_0\(61) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_8\,
      \rresp_wrap_buffer_reg[1]_0\(60) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_9\,
      \rresp_wrap_buffer_reg[1]_0\(59) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_10\,
      \rresp_wrap_buffer_reg[1]_0\(58) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_11\,
      \rresp_wrap_buffer_reg[1]_0\(57) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_12\,
      \rresp_wrap_buffer_reg[1]_0\(56) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_13\,
      \rresp_wrap_buffer_reg[1]_0\(55) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_14\,
      \rresp_wrap_buffer_reg[1]_0\(54) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_15\,
      \rresp_wrap_buffer_reg[1]_0\(53) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_16\,
      \rresp_wrap_buffer_reg[1]_0\(52) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_17\,
      \rresp_wrap_buffer_reg[1]_0\(51) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_18\,
      \rresp_wrap_buffer_reg[1]_0\(50) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_19\,
      \rresp_wrap_buffer_reg[1]_0\(49) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_20\,
      \rresp_wrap_buffer_reg[1]_0\(48) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_21\,
      \rresp_wrap_buffer_reg[1]_0\(47) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_22\,
      \rresp_wrap_buffer_reg[1]_0\(46) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_23\,
      \rresp_wrap_buffer_reg[1]_0\(45) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_24\,
      \rresp_wrap_buffer_reg[1]_0\(44) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_25\,
      \rresp_wrap_buffer_reg[1]_0\(43) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_26\,
      \rresp_wrap_buffer_reg[1]_0\(42) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_27\,
      \rresp_wrap_buffer_reg[1]_0\(41) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_28\,
      \rresp_wrap_buffer_reg[1]_0\(40) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_29\,
      \rresp_wrap_buffer_reg[1]_0\(39) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_30\,
      \rresp_wrap_buffer_reg[1]_0\(38) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_31\,
      \rresp_wrap_buffer_reg[1]_0\(37) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_32\,
      \rresp_wrap_buffer_reg[1]_0\(36) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_33\,
      \rresp_wrap_buffer_reg[1]_0\(35) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_34\,
      \rresp_wrap_buffer_reg[1]_0\(34) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_35\,
      \rresp_wrap_buffer_reg[1]_0\(33) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_36\,
      \rresp_wrap_buffer_reg[1]_0\(32) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_37\,
      \rresp_wrap_buffer_reg[1]_0\(31) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_38\,
      \rresp_wrap_buffer_reg[1]_0\(30) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_39\,
      \rresp_wrap_buffer_reg[1]_0\(29) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_40\,
      \rresp_wrap_buffer_reg[1]_0\(28) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_41\,
      \rresp_wrap_buffer_reg[1]_0\(27) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_42\,
      \rresp_wrap_buffer_reg[1]_0\(26) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_43\,
      \rresp_wrap_buffer_reg[1]_0\(25) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_44\,
      \rresp_wrap_buffer_reg[1]_0\(24) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_45\,
      \rresp_wrap_buffer_reg[1]_0\(23) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_46\,
      \rresp_wrap_buffer_reg[1]_0\(22) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_47\,
      \rresp_wrap_buffer_reg[1]_0\(21) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_48\,
      \rresp_wrap_buffer_reg[1]_0\(20) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_49\,
      \rresp_wrap_buffer_reg[1]_0\(19) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_50\,
      \rresp_wrap_buffer_reg[1]_0\(18) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_51\,
      \rresp_wrap_buffer_reg[1]_0\(17) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_52\,
      \rresp_wrap_buffer_reg[1]_0\(16) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_53\,
      \rresp_wrap_buffer_reg[1]_0\(15) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_54\,
      \rresp_wrap_buffer_reg[1]_0\(14) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_55\,
      \rresp_wrap_buffer_reg[1]_0\(13) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_56\,
      \rresp_wrap_buffer_reg[1]_0\(12) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_57\,
      \rresp_wrap_buffer_reg[1]_0\(11) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_58\,
      \rresp_wrap_buffer_reg[1]_0\(10) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_59\,
      \rresp_wrap_buffer_reg[1]_0\(9) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_60\,
      \rresp_wrap_buffer_reg[1]_0\(8) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_61\,
      \rresp_wrap_buffer_reg[1]_0\(7) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_62\,
      \rresp_wrap_buffer_reg[1]_0\(6) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_63\,
      \rresp_wrap_buffer_reg[1]_0\(5) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_64\,
      \rresp_wrap_buffer_reg[1]_0\(4) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_65\,
      \rresp_wrap_buffer_reg[1]_0\(3) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_66\,
      \rresp_wrap_buffer_reg[1]_0\(2) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_67\,
      \rresp_wrap_buffer_reg[1]_0\(1) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_68\,
      \rresp_wrap_buffer_reg[1]_0\(0) => \USE_READ.gen_non_fifo_r_upsizer.mi_register_slice_inst_n_69\,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => \NLW_USE_READ.gen_non_fifo_r_upsizer.read_data_inst_s_axi_rresp_UNCONNECTED\(1 downto 0),
      \sel_first_word__0\ => \sel_first_word__0\,
      use_wrap_buffer => use_wrap_buffer,
      use_wrap_buffer_reg_0 => \USE_READ.read_addr_inst_n_1\,
      use_wrap_buffer_reg_1 => \USE_READ.read_addr_inst_n_8\,
      use_wrap_buffer_reg_2 => \USE_READ.read_addr_inst_n_10\,
      wrap_buffer_available => wrap_buffer_available
    );
\USE_READ.read_addr_inst\: entity work.\Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer__parameterized0\
     port map (
      D(2 downto 0) => pre_next_word(2 downto 0),
      E(0) => p_15_in,
      \MULTIPLE_WORD.current_index\ => \MULTIPLE_WORD.current_index\,
      Q(5) => \USE_READ.rd_cmd_fix\,
      Q(4 downto 0) => \NLW_USE_READ.read_addr_inst_Q_UNCONNECTED\(4 downto 0),
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ => \^use_ff_out.use_rtl_output_pipeline.m_mesg_q_reg[19]\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ => \USE_READ.read_addr_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ => \USE_READ.read_addr_inst_n_8\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_0\ => \USE_READ.read_addr_inst_n_10\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg_1\ => \USE_READ.read_addr_inst_n_14\,
      \USE_READ.rd_cmd_valid\ => \USE_READ.rd_cmd_valid\,
      \USE_RTL_LENGTH.first_mi_word_q\ => \USE_RTL_LENGTH.first_mi_word_q_0\,
      cmd_push_block_reg_0 => \USE_READ.read_addr_inst_n_24\,
      \current_word_1_reg[2]\(2 downto 0) => pre_next_word_1(2 downto 0),
      first_word => first_word,
      first_word_reg(2 downto 0) => current_word_1(2 downto 0),
      \in\(23) => cmd_fix_i,
      \in\(22 downto 17) => \NLW_USE_READ.read_addr_inst_in_UNCONNECTED\(22 downto 17),
      \in\(16) => p_1_out(22),
      \in\(15) => \NLW_USE_READ.read_addr_inst_in_UNCONNECTED\(15),
      \in\(14) => p_1_out(20),
      \in\(13 downto 10) => \NLW_USE_READ.read_addr_inst_in_UNCONNECTED\(13 downto 10),
      \in\(9) => si_register_slice_inst_n_81,
      \in\(8) => si_register_slice_inst_n_82,
      \in\(7) => si_register_slice_inst_n_83,
      \in\(6) => si_register_slice_inst_n_84,
      \in\(5) => \NLW_USE_READ.read_addr_inst_in_UNCONNECTED\(5),
      \in\(4) => si_register_slice_inst_n_86,
      \in\(3 downto 0) => \NLW_USE_READ.read_addr_inst_in_UNCONNECTED\(3 downto 0),
      \last_beat__6\ => \last_beat__6\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arvalid_0(0) => sr_arvalid,
      mr_rvalid => mr_rvalid,
      \out\ => \out\,
      p_13_in => p_13_in,
      \pre_next_word_1_reg[2]\(2 downto 0) => next_word(2 downto 0),
      s_axi_aresetn => \USE_READ.read_addr_inst_n_22\,
      s_axi_rready => s_axi_rready,
      s_axi_rready_0(0) => \r.r_pipe/p_1_in\,
      s_axi_rvalid => s_axi_rvalid,
      s_ready_i_reg => m_valid_i_reg_inv,
      \sel_first_word__0\ => \sel_first_word__0\,
      use_wrap_buffer => use_wrap_buffer,
      wrap_buffer_available => wrap_buffer_available
    );
\USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst\: entity work.Setup_auto_us_0_axi_dwidth_converter_v2_1_31_w_upsizer
     port map (
      D(2 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_D_UNCONNECTED\(2 downto 0),
      E(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_E_UNCONNECTED\(0),
      Q(8 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_Q_UNCONNECTED\(8 downto 0),
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q[29]_i_2_UNCONNECTED\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_0\ => \^use_register.m_axi_wvalid_q_reg\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_1\ => \USE_WRITE.write_addr_inst_n_36\,
      \USE_RTL_CURR_WORD.current_word_q_reg[2]_0\(2 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.current_word_q_reg[2]_0_UNCONNECTED\(2 downto 0),
      \USE_RTL_CURR_WORD.current_word_q_reg[2]_1\(2 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.current_word_q_reg[2]_1_UNCONNECTED\(2 downto 0),
      \USE_RTL_CURR_WORD.first_word_q\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.first_word_q_UNCONNECTED\,
      \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0\(2 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_0_UNCONNECTED\(2 downto 0),
      \USE_RTL_LENGTH.first_mi_word_q\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.first_mi_word_q_UNCONNECTED\,
      \USE_RTL_LENGTH.first_mi_word_q_reg_0\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.first_mi_word_q_reg_0_UNCONNECTED\,
      \USE_RTL_LENGTH.length_counter_q_reg[0]_0\ => m_valid_i_reg_inv,
      \USE_RTL_LENGTH.length_counter_q_reg[1]_0\(1 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_0_UNCONNECTED\(1 downto 0),
      \USE_RTL_LENGTH.length_counter_q_reg[1]_1\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_1_UNCONNECTED\,
      \USE_RTL_LENGTH.length_counter_q_reg[1]_2\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_2_UNCONNECTED\,
      \USE_WRITE.wr_cmd_valid\ => \USE_WRITE.wr_cmd_valid\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0_UNCONNECTED\(0),
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_1_UNCONNECTED\(0),
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[1]_0_UNCONNECTED\(0),
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[2]_0_UNCONNECTED\(0),
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[3]_0_UNCONNECTED\(0),
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[4]_0_UNCONNECTED\(0),
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[1].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[5]_0_UNCONNECTED\(0),
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[2].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[6]_0_UNCONNECTED\(0),
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.USE_REGISTER.M_AXI_WDATA_I_reg[56]_0_UNCONNECTED\,
      \WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0\(0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_WORD_LANE[1].USE_ALWAYS_PACKER.BYTE_LANE[3].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[7]_0_UNCONNECTED\(0),
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wready_0 => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16\,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      \out\ => \out\,
      p_79_in => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_p_79_in_UNCONNECTED\,
      p_89_in => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_p_89_in_UNCONNECTED\,
      s_axi_wdata(31 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_s_axi_wdata_UNCONNECTED\(31 downto 0),
      s_axi_wlast => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_s_axi_wlast_UNCONNECTED\,
      s_axi_wstrb(3 downto 0) => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_s_axi_wstrb_UNCONNECTED\(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \sel_first_word__0\ => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_sel_first_word__0_UNCONNECTED\,
      wrap_buffer_available => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_wrap_buffer_available_UNCONNECTED\,
      wrap_buffer_available_reg_0 => \NLW_USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_wrap_buffer_available_reg_0_UNCONNECTED\
    );
\USE_WRITE.write_addr_inst\: entity work.Setup_auto_us_0_axi_dwidth_converter_v2_1_31_a_upsizer
     port map (
      D(2 downto 0) => \NLW_USE_WRITE.write_addr_inst_D_UNCONNECTED\(2 downto 0),
      E(0) => sr_awvalid,
      Q(8 downto 0) => \NLW_USE_WRITE.write_addr_inst_Q_UNCONNECTED\(8 downto 0),
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]\ => \NLW_USE_WRITE.write_addr_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[1]_UNCONNECTED\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]\ => \NLW_USE_WRITE.write_addr_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[28]_UNCONNECTED\,
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_VALID_Q_reg\ => \USE_WRITE.write_addr_inst_n_36\,
      \USE_REGISTER.M_AXI_WVALID_q_reg\ => \NLW_USE_WRITE.write_addr_inst_USE_REGISTER.M_AXI_WVALID_q_reg_UNCONNECTED\,
      \USE_REGISTER.M_AXI_WVALID_q_reg_0\ => \^use_register.m_axi_wvalid_q_reg\,
      \USE_RTL_CURR_WORD.current_word_q_reg[2]\(2 downto 0) => \NLW_USE_WRITE.write_addr_inst_USE_RTL_CURR_WORD.current_word_q_reg[2]_UNCONNECTED\(2 downto 0),
      \USE_RTL_CURR_WORD.first_word_q\ => \NLW_USE_WRITE.write_addr_inst_USE_RTL_CURR_WORD.first_word_q_UNCONNECTED\,
      \USE_RTL_CURR_WORD.pre_next_word_q_reg[2]\(2 downto 0) => \NLW_USE_WRITE.write_addr_inst_USE_RTL_CURR_WORD.pre_next_word_q_reg[2]_UNCONNECTED\(2 downto 0),
      \USE_RTL_LENGTH.first_mi_word_q\ => \NLW_USE_WRITE.write_addr_inst_USE_RTL_LENGTH.first_mi_word_q_UNCONNECTED\,
      \USE_RTL_LENGTH.length_counter_q_reg[0]\ => \NLW_USE_WRITE.write_addr_inst_USE_RTL_LENGTH.length_counter_q_reg[0]_UNCONNECTED\,
      \USE_RTL_LENGTH.length_counter_q_reg[1]\(1 downto 0) => \NLW_USE_WRITE.write_addr_inst_USE_RTL_LENGTH.length_counter_q_reg[1]_UNCONNECTED\(1 downto 0),
      \USE_RTL_LENGTH.length_counter_q_reg[1]_0\ => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_16\,
      \USE_WRITE.wr_cmd_valid\ => \USE_WRITE.wr_cmd_valid\,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]\ => m_valid_i_reg_inv,
      \WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0\(2 downto 0) => \NLW_USE_WRITE.write_addr_inst_WORD_LANE[0].USE_ALWAYS_PACKER.BYTE_LANE[0].USE_RTL_DATA.wstrb_wrap_buffer_q_reg[0]_0_UNCONNECTED\(2 downto 0),
      cmd_push_block_reg_0 => \USE_WRITE.write_addr_inst_n_34\,
      \in\(23 downto 0) => \NLW_USE_WRITE.write_addr_inst_in_UNCONNECTED\(23 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wready => m_axi_wready,
      \out\ => \out\,
      p_79_in => \NLW_USE_WRITE.write_addr_inst_p_79_in_UNCONNECTED\,
      p_89_in => \NLW_USE_WRITE.write_addr_inst_p_89_in_UNCONNECTED\,
      s_axi_aresetn => \USE_WRITE.write_addr_inst_n_32\,
      s_axi_wlast => \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_UNCONNECTED\,
      s_axi_wlast_0(0) => \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_0_UNCONNECTED\(0),
      s_axi_wlast_1 => \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_1_UNCONNECTED\,
      s_axi_wlast_2 => \NLW_USE_WRITE.write_addr_inst_s_axi_wlast_2_UNCONNECTED\,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => \NLW_USE_WRITE.write_addr_inst_s_axi_wstrb_UNCONNECTED\(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0(0) => \NLW_USE_WRITE.write_addr_inst_s_axi_wvalid_0_UNCONNECTED\(0),
      \sel_first_word__0\ => \NLW_USE_WRITE.write_addr_inst_sel_first_word__0_UNCONNECTED\,
      wrap_buffer_available => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_UNCONNECTED\,
      wrap_buffer_available_reg(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_UNCONNECTED\(0),
      wrap_buffer_available_reg_0(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_0_UNCONNECTED\(0),
      wrap_buffer_available_reg_1(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_1_UNCONNECTED\(0),
      wrap_buffer_available_reg_2(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_2_UNCONNECTED\(0),
      wrap_buffer_available_reg_3(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_3_UNCONNECTED\(0),
      wrap_buffer_available_reg_4(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_4_UNCONNECTED\(0),
      wrap_buffer_available_reg_5(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_5_UNCONNECTED\(0),
      wrap_buffer_available_reg_6(0) => \NLW_USE_WRITE.write_addr_inst_wrap_buffer_available_reg_6_UNCONNECTED\(0)
    );
si_register_slice_inst: entity work.\Setup_auto_us_0_axi_register_slice_v2_1_31_axi_register_slice__parameterized0\
     port map (
      D(53 downto 39) => NLW_si_register_slice_inst_D_UNCONNECTED(53 downto 39),
      D(38) => D(38),
      D(37) => NLW_si_register_slice_inst_D_UNCONNECTED(37),
      D(36) => D(36),
      D(35 downto 0) => NLW_si_register_slice_inst_D_UNCONNECTED(35 downto 0),
      E(0) => sr_awvalid,
      Q(38 downto 0) => Q(38 downto 0),
      SR(0) => \USE_WRITE.gen_non_fifo_w_upsizer.write_data_inst_n_1\,
      \aresetn_d_reg[0]\ => si_register_slice_inst_n_0,
      \aresetn_d_reg[1]\ => si_register_slice_inst_n_1,
      \in\(23 downto 4) => NLW_si_register_slice_inst_in_UNCONNECTED(23 downto 4),
      \in\(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2) => NLW_si_register_slice_inst_m_axi_arsize_UNCONNECTED(2),
      m_axi_arsize(1 downto 0) => m_axi_arsize(1 downto 0),
      m_axi_awaddr(5 downto 0) => m_axi_awaddr(5 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2) => NLW_si_register_slice_inst_m_axi_awsize_UNCONNECTED(2),
      m_axi_awsize(1 downto 0) => m_axi_awsize(1 downto 0),
      \m_payload_i_reg[38]\(23) => cmd_fix_i,
      \m_payload_i_reg[38]\(22 downto 17) => \NLW_si_register_slice_inst_m_payload_i_reg[38]_UNCONNECTED\(22 downto 17),
      \m_payload_i_reg[38]\(16) => p_1_out(22),
      \m_payload_i_reg[38]\(15) => \NLW_si_register_slice_inst_m_payload_i_reg[38]_UNCONNECTED\(15),
      \m_payload_i_reg[38]\(14) => p_1_out(20),
      \m_payload_i_reg[38]\(13 downto 10) => \NLW_si_register_slice_inst_m_payload_i_reg[38]_UNCONNECTED\(13 downto 10),
      \m_payload_i_reg[38]\(9) => si_register_slice_inst_n_81,
      \m_payload_i_reg[38]\(8) => si_register_slice_inst_n_82,
      \m_payload_i_reg[38]\(7) => si_register_slice_inst_n_83,
      \m_payload_i_reg[38]\(6) => si_register_slice_inst_n_84,
      \m_payload_i_reg[38]\(5) => \NLW_si_register_slice_inst_m_payload_i_reg[38]_UNCONNECTED\(5),
      \m_payload_i_reg[38]\(4) => si_register_slice_inst_n_86,
      \m_payload_i_reg[38]\(3 downto 0) => m_axi_arlen(3 downto 0),
      \m_payload_i_reg[54]\(12 downto 0) => \m_payload_i_reg[54]\(12 downto 0),
      \m_payload_i_reg[54]_0\(53 downto 39) => \NLW_si_register_slice_inst_m_payload_i_reg[54]_0_UNCONNECTED\(53 downto 39),
      \m_payload_i_reg[54]_0\(38) => \m_payload_i_reg[54]_0\(38),
      \m_payload_i_reg[54]_0\(37) => \NLW_si_register_slice_inst_m_payload_i_reg[54]_0_UNCONNECTED\(37),
      \m_payload_i_reg[54]_0\(36) => \m_payload_i_reg[54]_0\(36),
      \m_payload_i_reg[54]_0\(35 downto 0) => \NLW_si_register_slice_inst_m_payload_i_reg[54]_0_UNCONNECTED\(35 downto 0),
      m_valid_i_reg_inv(0) => sr_arvalid,
      m_valid_i_reg_inv_0 => \USE_READ.read_addr_inst_n_24\,
      m_valid_i_reg_inv_1 => m_valid_i_reg_inv,
      m_valid_i_reg_inv_2 => \USE_WRITE.write_addr_inst_n_34\,
      \out\ => \out\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_ready_i_reg => \USE_WRITE.write_addr_inst_n_32\,
      s_ready_i_reg_0 => \USE_READ.read_addr_inst_n_22\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_rst_ps7_0_50M_0_proc_sys_reset is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AUX_RESET_HIGH : string;
  attribute C_AUX_RESET_HIGH of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is "1'b0";
  attribute C_AUX_RST_WIDTH : integer;
  attribute C_AUX_RST_WIDTH of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is 4;
  attribute C_EXT_RESET_HIGH : string;
  attribute C_EXT_RESET_HIGH of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is "1'b1";
  attribute C_EXT_RST_WIDTH : integer;
  attribute C_EXT_RST_WIDTH of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is "zynq";
  attribute C_NUM_BUS_RST : integer;
  attribute C_NUM_BUS_RST of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is 1;
  attribute C_NUM_INTERCONNECT_ARESETN : integer;
  attribute C_NUM_INTERCONNECT_ARESETN of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is 1;
  attribute C_NUM_PERP_ARESETN : integer;
  attribute C_NUM_PERP_ARESETN of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is 1;
  attribute C_NUM_PERP_RST : integer;
  attribute C_NUM_PERP_RST of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_rst_ps7_0_50M_0_proc_sys_reset : entity is "proc_sys_reset";
end Setup_rst_ps7_0_50M_0_proc_sys_reset;

architecture STRUCTURE of Setup_rst_ps7_0_50M_0_proc_sys_reset is
  signal SEQ_n_4 : STD_LOGIC;
  signal lpf_int : STD_LOGIC;
  signal NLW_EXT_LPF_aux_reset_in_UNCONNECTED : STD_LOGIC;
  signal NLW_EXT_LPF_dcm_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_EXT_LPF_mb_debug_sys_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_SEQ_Bsr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_SEQ_MB_out_UNCONNECTED : STD_LOGIC;
  signal NLW_SEQ_Pr_out_UNCONNECTED : STD_LOGIC;
  signal NLW_SEQ_bsr_reg_0_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N\ : label is "PRIMITIVE";
begin
\ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => slowest_sync_clk,
      CE => '1',
      D => SEQ_n_4,
      Q => peripheral_aresetn(0),
      R => '0'
    );
EXT_LPF: entity work.Setup_rst_ps7_0_50M_0_lpf
     port map (
      aux_reset_in => NLW_EXT_LPF_aux_reset_in_UNCONNECTED,
      dcm_locked => NLW_EXT_LPF_dcm_locked_UNCONNECTED,
      ext_reset_in => ext_reset_in,
      lpf_int => lpf_int,
      mb_debug_sys_rst => NLW_EXT_LPF_mb_debug_sys_rst_UNCONNECTED,
      slowest_sync_clk => slowest_sync_clk
    );
SEQ: entity work.Setup_rst_ps7_0_50M_0_sequence_psr
     port map (
      Bsr_out => NLW_SEQ_Bsr_out_UNCONNECTED,
      MB_out => NLW_SEQ_MB_out_UNCONNECTED,
      Pr_out => NLW_SEQ_Pr_out_UNCONNECTED,
      bsr_reg_0 => NLW_SEQ_bsr_reg_0_UNCONNECTED,
      lpf_int => lpf_int,
      pr_reg_0 => SEQ_n_4,
      slowest_sync_clk => slowest_sync_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is "zynq";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 3;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 64;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 0;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 0;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 2;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is "axi_dwidth_converter_v2_1_31_top";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is 16;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top : entity is "yes";
end Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top;

architecture STRUCTURE of Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top is
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_wlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_D_UNCONNECTED\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_axi_arsize_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_axi_awsize_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_axi_rresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_payload_i_reg[54]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_rresp_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_wdata_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_wstrb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute keep : string;
  attribute keep of m_axi_aclk : signal is "true";
  attribute keep of m_axi_aresetn : signal is "true";
  attribute keep of s_axi_aclk : signal is "true";
  attribute keep of s_axi_aresetn : signal is "true";
begin
  \^m_axi_bvalid\ <= m_axi_bvalid;
  \^s_axi_bready\ <= s_axi_bready;
  m_axi_bready <= \^s_axi_bready\;
  s_axi_bvalid <= \^m_axi_bvalid\;
\gen_upsizer.gen_full_upsizer.axi_upsizer_inst\: entity work.Setup_auto_us_0_axi_dwidth_converter_v2_1_31_axi_upsizer
     port map (
      D(53 downto 39) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_D_UNCONNECTED\(53 downto 39),
      D(38) => s_axi_awburst(0),
      D(37) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_D_UNCONNECTED\(37),
      D(36) => s_axi_awsize(1),
      D(35 downto 0) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_D_UNCONNECTED\(35 downto 0),
      Q(38 downto 35) => m_axi_awqos(3 downto 0),
      Q(34 downto 33) => m_axi_awlock(1 downto 0),
      Q(32 downto 29) => m_axi_awcache(3 downto 0),
      Q(28 downto 26) => m_axi_awprot(2 downto 0),
      Q(25 downto 0) => m_axi_awaddr(31 downto 6),
      \USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]\ => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_USE_FF_OUT.USE_RTL_OUTPUT_PIPELINE.M_MESG_Q_reg[19]_UNCONNECTED\,
      \USE_REGISTER.M_AXI_WVALID_q_reg\ => m_axi_wvalid,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_axi_arsize_UNCONNECTED\(2),
      m_axi_arsize(1 downto 0) => m_axi_arsize(1 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(5 downto 0) => m_axi_awaddr(5 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_axi_awsize_UNCONNECTED\(2),
      m_axi_awsize(1 downto 0) => m_axi_awsize(1 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_axi_rresp_UNCONNECTED\(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      \m_payload_i_reg[54]\(12 downto 9) => m_axi_arqos(3 downto 0),
      \m_payload_i_reg[54]\(8 downto 7) => m_axi_arlock(1 downto 0),
      \m_payload_i_reg[54]\(6 downto 3) => m_axi_arcache(3 downto 0),
      \m_payload_i_reg[54]\(2 downto 0) => m_axi_arprot(2 downto 0),
      \m_payload_i_reg[54]_0\(53 downto 39) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_payload_i_reg[54]_0_UNCONNECTED\(53 downto 39),
      \m_payload_i_reg[54]_0\(38) => s_axi_arburst(0),
      \m_payload_i_reg[54]_0\(37) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_payload_i_reg[54]_0_UNCONNECTED\(37),
      \m_payload_i_reg[54]_0\(36) => s_axi_arsize(1),
      \m_payload_i_reg[54]_0\(35 downto 0) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_m_payload_i_reg[54]_0_UNCONNECTED\(35 downto 0),
      m_valid_i_reg_inv => s_axi_aresetn,
      \out\ => s_axi_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_rresp_UNCONNECTED\(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_wdata_UNCONNECTED\(31 downto 0),
      s_axi_wlast => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_wlast_UNCONNECTED\,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => \NLW_gen_upsizer.gen_full_upsizer.axi_upsizer_inst_s_axi_wstrb_UNCONNECTED\(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_ready_i_reg => m_axi_rready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_rst_ps7_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_rst_ps7_0_50M_0 : entity is "Setup_rst_ps7_0_50M_0,proc_sys_reset,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_rst_ps7_0_50M_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Setup_rst_ps7_0_50M_0 : entity is "proc_sys_reset,Vivado 2024.1";
end Setup_rst_ps7_0_50M_0;

architecture STRUCTURE of Setup_rst_ps7_0_50M_0 is
  signal NLW_U0_aux_reset_in_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dcm_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mb_debug_sys_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AUX_RESET_HIGH : string;
  attribute C_AUX_RESET_HIGH of U0 : label is "1'b0";
  attribute C_AUX_RST_WIDTH : integer;
  attribute C_AUX_RST_WIDTH of U0 : label is 4;
  attribute C_EXT_RESET_HIGH : string;
  attribute C_EXT_RESET_HIGH of U0 : label is "1'b1";
  attribute C_EXT_RST_WIDTH : integer;
  attribute C_EXT_RST_WIDTH of U0 : label is 4;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_NUM_BUS_RST : integer;
  attribute C_NUM_BUS_RST of U0 : label is 1;
  attribute C_NUM_INTERCONNECT_ARESETN : integer;
  attribute C_NUM_INTERCONNECT_ARESETN of U0 : label is 1;
  attribute C_NUM_PERP_ARESETN : integer;
  attribute C_NUM_PERP_ARESETN of U0 : label is 1;
  attribute C_NUM_PERP_RST : integer;
  attribute C_NUM_PERP_RST of U0 : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aux_reset_in : signal is "xilinx.com:signal:reset:1.0 aux_reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aux_reset_in : signal is "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ext_reset_in : signal is "xilinx.com:signal:reset:1.0 ext_reset RST";
  attribute X_INTERFACE_PARAMETER of ext_reset_in : signal is "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mb_debug_sys_rst : signal is "xilinx.com:signal:reset:1.0 dbg_reset RST";
  attribute X_INTERFACE_PARAMETER of mb_debug_sys_rst : signal is "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mb_reset : signal is "xilinx.com:signal:reset:1.0 mb_rst RST";
  attribute X_INTERFACE_PARAMETER of mb_reset : signal is "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of slowest_sync_clk : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute X_INTERFACE_PARAMETER of slowest_sync_clk : signal is "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of bus_struct_reset : signal is "xilinx.com:signal:reset:1.0 bus_struct_reset RST";
  attribute X_INTERFACE_PARAMETER of bus_struct_reset : signal is "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interconnect_aresetn : signal is "xilinx.com:signal:reset:1.0 interconnect_low_rst RST";
  attribute X_INTERFACE_PARAMETER of interconnect_aresetn : signal is "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of peripheral_aresetn : signal is "xilinx.com:signal:reset:1.0 peripheral_low_rst RST";
  attribute X_INTERFACE_PARAMETER of peripheral_aresetn : signal is "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of peripheral_reset : signal is "xilinx.com:signal:reset:1.0 peripheral_high_rst RST";
  attribute X_INTERFACE_PARAMETER of peripheral_reset : signal is "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0";
begin
U0: entity work.Setup_rst_ps7_0_50M_0_proc_sys_reset
     port map (
      aux_reset_in => NLW_U0_aux_reset_in_UNCONNECTED,
      bus_struct_reset(0) => NLW_U0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => NLW_U0_dcm_locked_UNCONNECTED,
      ext_reset_in => ext_reset_in,
      interconnect_aresetn(0) => NLW_U0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => NLW_U0_mb_debug_sys_rst_UNCONNECTED,
      mb_reset => NLW_U0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => peripheral_aresetn(0),
      peripheral_reset(0) => NLW_U0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => slowest_sync_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Setup_auto_us_0 : entity is "Setup_auto_us_0,axi_dwidth_converter_v2_1_31_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Setup_auto_us_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Setup_auto_us_0 : entity is "axi_dwidth_converter_v2_1_31_top,Vivado 2024.1";
end Setup_auto_us_0;

architecture STRUCTURE of Setup_auto_us_0 is
  signal NLW_inst_m_axi_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_inst_m_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_s_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_s_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of inst : label is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of inst : label is 3;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of inst : label is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of inst : label is 0;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of inst : label is 0;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of inst : label is 2;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of inst : label is 16;
  attribute downgradeipidentifiedwarnings of inst : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 0, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SI_CLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 5e+07, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 5e+07, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Setup_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.Setup_auto_us_0_axi_dwidth_converter_v2_1_31_top
     port map (
      m_axi_aclk => NLW_inst_m_axi_aclk_UNCONNECTED,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_aresetn => NLW_inst_m_axi_aresetn_UNCONNECTED,
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => m_axi_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2) => NLW_inst_m_axi_arsize_UNCONNECTED(2),
      m_axi_arsize(1 downto 0) => m_axi_arsize(1 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => m_axi_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2) => NLW_inst_m_axi_awsize_UNCONNECTED(2),
      m_axi_awsize(1 downto 0) => m_axi_awsize(1 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => NLW_inst_m_axi_bresp_UNCONNECTED(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => NLW_inst_m_axi_rresp_UNCONNECTED(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => NLW_inst_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1) => NLW_inst_s_axi_arburst_UNCONNECTED(1),
      s_axi_arburst(0) => s_axi_arburst(0),
      s_axi_arcache(3 downto 0) => NLW_inst_s_axi_arcache_UNCONNECTED(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => NLW_inst_s_axi_arid_UNCONNECTED(0),
      s_axi_arlen(3 downto 0) => NLW_inst_s_axi_arlen_UNCONNECTED(3 downto 0),
      s_axi_arlock(1 downto 0) => NLW_inst_s_axi_arlock_UNCONNECTED(1 downto 0),
      s_axi_arprot(2 downto 0) => NLW_inst_s_axi_arprot_UNCONNECTED(2 downto 0),
      s_axi_arqos(3 downto 0) => NLW_inst_s_axi_arqos_UNCONNECTED(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => NLW_inst_s_axi_arregion_UNCONNECTED(3 downto 0),
      s_axi_arsize(2) => NLW_inst_s_axi_arsize_UNCONNECTED(2),
      s_axi_arsize(1) => s_axi_arsize(1),
      s_axi_arsize(0) => NLW_inst_s_axi_arsize_UNCONNECTED(0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => NLW_inst_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1) => NLW_inst_s_axi_awburst_UNCONNECTED(1),
      s_axi_awburst(0) => s_axi_awburst(0),
      s_axi_awcache(3 downto 0) => NLW_inst_s_axi_awcache_UNCONNECTED(3 downto 0),
      s_axi_awid(0) => NLW_inst_s_axi_awid_UNCONNECTED(0),
      s_axi_awlen(3 downto 0) => NLW_inst_s_axi_awlen_UNCONNECTED(3 downto 0),
      s_axi_awlock(1 downto 0) => NLW_inst_s_axi_awlock_UNCONNECTED(1 downto 0),
      s_axi_awprot(2 downto 0) => NLW_inst_s_axi_awprot_UNCONNECTED(2 downto 0),
      s_axi_awqos(3 downto 0) => NLW_inst_s_axi_awqos_UNCONNECTED(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => NLW_inst_s_axi_awregion_UNCONNECTED(3 downto 0),
      s_axi_awsize(2) => NLW_inst_s_axi_awsize_UNCONNECTED(2),
      s_axi_awsize(1) => s_axi_awsize(1),
      s_axi_awsize(0) => NLW_inst_s_axi_awsize_UNCONNECTED(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => NLW_inst_s_axi_wdata_UNCONNECTED(31 downto 0),
      s_axi_wlast => NLW_inst_s_axi_wlast_UNCONNECTED,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => NLW_inst_s_axi_wstrb_UNCONNECTED(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_TK11N1 is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
end s00_couplers_imp_TK11N1;

architecture STRUCTURE of s00_couplers_imp_TK11N1 is
  signal auto_pc_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_auto_us_ARREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 1 to 1 );
  signal auto_pc_to_auto_us_ARVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_auto_us_AWREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 1 to 1 );
  signal auto_pc_to_auto_us_AWVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_BREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_BVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_auto_us_RREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_RVALID : STD_LOGIC;
  signal auto_pc_to_auto_us_WREADY : STD_LOGIC;
  signal auto_pc_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_pc_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_auto_pc_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_auto_pc_m_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_auto_pc_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_auto_pc_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_pc_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_auto_pc_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_pc_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_auto_pc_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_pc_m_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_pc_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_pc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_pc_s_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_pc_s_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_pc_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_pc_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_pc_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_auto_us_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_auto_us_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_auto_us_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_auto_us_m_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_us_m_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_us_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_us_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_auto_us_s_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_s_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_us_s_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_us_s_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_us_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_us_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_auto_us_s_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_s_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_us_s_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_us_s_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_us_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_us_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_auto_us_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_auto_us_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of auto_pc : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_auto_pc_0/Setup_auto_pc_0.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of auto_pc : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of auto_pc : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of auto_pc : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of auto_pc : label is "axi_protocol_converter_v2_1_31_axi_protocol_converter,Vivado 2024.1";
  attribute IMPORTED_FROM of auto_us : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_auto_us_0/Setup_auto_us_0.dcp";
  attribute IMPORTED_TYPE of auto_us : label is "CHECKPOINT";
  attribute IS_IMPORTED of auto_us : label is std.standard.true;
  attribute syn_black_box of auto_us : label is "TRUE";
  attribute x_core_info of auto_us : label is "axi_dwidth_converter_v2_1_31_top,Vivado 2024.1";
begin
auto_pc: entity work.Setup_auto_pc_0
     port map (
      aclk => NLW_auto_pc_aclk_UNCONNECTED,
      aresetn => NLW_auto_pc_aresetn_UNCONNECTED,
      m_axi_araddr(31 downto 0) => NLW_auto_pc_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1) => NLW_auto_pc_m_axi_arburst_UNCONNECTED(1),
      m_axi_arburst(0) => auto_pc_to_auto_us_ARBURST(0),
      m_axi_arcache(3 downto 0) => NLW_auto_pc_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arlen(3 downto 0) => NLW_auto_pc_m_axi_arlen_UNCONNECTED(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_auto_pc_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_auto_pc_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => auto_pc_to_auto_us_ARREADY,
      m_axi_arsize(2) => NLW_auto_pc_m_axi_arsize_UNCONNECTED(2),
      m_axi_arsize(1) => auto_pc_to_auto_us_ARSIZE(1),
      m_axi_arsize(0) => NLW_auto_pc_m_axi_arsize_UNCONNECTED(0),
      m_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      m_axi_awaddr(31 downto 0) => NLW_auto_pc_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1) => NLW_auto_pc_m_axi_awburst_UNCONNECTED(1),
      m_axi_awburst(0) => auto_pc_to_auto_us_AWBURST(0),
      m_axi_awcache(3 downto 0) => NLW_auto_pc_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(3 downto 0) => NLW_auto_pc_m_axi_awlen_UNCONNECTED(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_auto_pc_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_auto_pc_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => auto_pc_to_auto_us_AWREADY,
      m_axi_awsize(2) => NLW_auto_pc_m_axi_awsize_UNCONNECTED(2),
      m_axi_awsize(1) => auto_pc_to_auto_us_AWSIZE(1),
      m_axi_awsize(0) => NLW_auto_pc_m_axi_awsize_UNCONNECTED(0),
      m_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      m_axi_bready => auto_pc_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => NLW_auto_pc_m_axi_bresp_UNCONNECTED(1 downto 0),
      m_axi_bvalid => auto_pc_to_auto_us_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      m_axi_rlast => NLW_auto_pc_m_axi_rlast_UNCONNECTED,
      m_axi_rready => auto_pc_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => NLW_auto_pc_m_axi_rresp_UNCONNECTED(1 downto 0),
      m_axi_rvalid => auto_pc_to_auto_us_RVALID,
      m_axi_wdata(31 downto 0) => NLW_auto_pc_m_axi_wdata_UNCONNECTED(31 downto 0),
      m_axi_wlast => NLW_auto_pc_m_axi_wlast_UNCONNECTED,
      m_axi_wready => auto_pc_to_auto_us_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_pc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_pc_to_auto_us_WVALID,
      s_axi_araddr(31 downto 0) => NLW_auto_pc_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arprot(2 downto 0) => NLW_auto_pc_s_axi_arprot_UNCONNECTED(2 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(31 downto 0) => NLW_auto_pc_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awprot(2 downto 0) => NLW_auto_pc_s_axi_awprot_UNCONNECTED(2 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => NLW_auto_pc_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => NLW_auto_pc_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(31 downto 0) => NLW_auto_pc_s_axi_wdata_UNCONNECTED(31 downto 0),
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(3 downto 0) => NLW_auto_pc_s_axi_wstrb_UNCONNECTED(3 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
auto_us: entity work.Setup_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => M00_AXI_arlen(3 downto 0),
      m_axi_arlock(1 downto 0) => M00_AXI_arlock(1 downto 0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arsize(2) => NLW_auto_us_m_axi_arsize_UNCONNECTED(2),
      m_axi_arsize(1 downto 0) => M00_AXI_arsize(1 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => M00_AXI_awlen(3 downto 0),
      m_axi_awlock(1 downto 0) => M00_AXI_awlock(1 downto 0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awsize(2) => NLW_auto_us_m_axi_awsize_UNCONNECTED(2),
      m_axi_awsize(1 downto 0) => M00_AXI_awsize(1 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => NLW_auto_us_m_axi_bresp_UNCONNECTED(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(63 downto 0) => M00_AXI_rdata(63 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => NLW_auto_us_m_axi_rresp_UNCONNECTED(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(63 downto 0) => M00_AXI_wdata(63 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(7 downto 0) => M00_AXI_wstrb(7 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_aclk => S00_ACLK,
      s_axi_araddr(31 downto 0) => NLW_auto_us_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1) => NLW_auto_us_s_axi_arburst_UNCONNECTED(1),
      s_axi_arburst(0) => auto_pc_to_auto_us_ARBURST(0),
      s_axi_arcache(3 downto 0) => NLW_auto_us_s_axi_arcache_UNCONNECTED(3 downto 0),
      s_axi_aresetn => S00_ARESETN,
      s_axi_arlen(3 downto 0) => NLW_auto_us_s_axi_arlen_UNCONNECTED(3 downto 0),
      s_axi_arlock(1 downto 0) => NLW_auto_us_s_axi_arlock_UNCONNECTED(1 downto 0),
      s_axi_arprot(2 downto 0) => NLW_auto_us_s_axi_arprot_UNCONNECTED(2 downto 0),
      s_axi_arqos(3 downto 0) => NLW_auto_us_s_axi_arqos_UNCONNECTED(3 downto 0),
      s_axi_arready => auto_pc_to_auto_us_ARREADY,
      s_axi_arsize(2) => NLW_auto_us_s_axi_arsize_UNCONNECTED(2),
      s_axi_arsize(1) => auto_pc_to_auto_us_ARSIZE(1),
      s_axi_arsize(0) => NLW_auto_us_s_axi_arsize_UNCONNECTED(0),
      s_axi_arvalid => auto_pc_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => NLW_auto_us_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1) => NLW_auto_us_s_axi_awburst_UNCONNECTED(1),
      s_axi_awburst(0) => auto_pc_to_auto_us_AWBURST(0),
      s_axi_awcache(3 downto 0) => NLW_auto_us_s_axi_awcache_UNCONNECTED(3 downto 0),
      s_axi_awlen(3 downto 0) => NLW_auto_us_s_axi_awlen_UNCONNECTED(3 downto 0),
      s_axi_awlock(1 downto 0) => NLW_auto_us_s_axi_awlock_UNCONNECTED(1 downto 0),
      s_axi_awprot(2 downto 0) => NLW_auto_us_s_axi_awprot_UNCONNECTED(2 downto 0),
      s_axi_awqos(3 downto 0) => NLW_auto_us_s_axi_awqos_UNCONNECTED(3 downto 0),
      s_axi_awready => auto_pc_to_auto_us_AWREADY,
      s_axi_awsize(2) => NLW_auto_us_s_axi_awsize_UNCONNECTED(2),
      s_axi_awsize(1) => auto_pc_to_auto_us_AWSIZE(1),
      s_axi_awsize(0) => NLW_auto_us_s_axi_awsize_UNCONNECTED(0),
      s_axi_awvalid => auto_pc_to_auto_us_AWVALID,
      s_axi_bready => auto_pc_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => NLW_auto_us_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => auto_pc_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => auto_pc_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => NLW_auto_us_s_axi_rlast_UNCONNECTED,
      s_axi_rready => auto_pc_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => NLW_auto_us_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => auto_pc_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => NLW_auto_us_s_axi_wdata_UNCONNECTED(31 downto 0),
      s_axi_wlast => NLW_auto_us_s_axi_wlast_UNCONNECTED,
      s_axi_wready => auto_pc_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => NLW_auto_us_s_axi_wstrb_UNCONNECTED(3 downto 0),
      s_axi_wvalid => auto_pc_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_axi_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end Setup_axi_interconnect_0_1;

architecture STRUCTURE of Setup_axi_interconnect_0_1 is
  signal NLW_s00_couplers_M00_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_s00_couplers_M00_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_s00_couplers_M00_AXI_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_s00_couplers_M00_AXI_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_s00_couplers_S00_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s00_couplers_S00_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s00_couplers_S00_AXI_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_s00_couplers_S00_AXI_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_s00_couplers_S00_AXI_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_s00_couplers_S00_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
s00_couplers: entity work.s00_couplers_imp_TK11N1
     port map (
      M00_AXI_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(3 downto 0) => M00_AXI_arlen(3 downto 0),
      M00_AXI_arlock(1 downto 0) => M00_AXI_arlock(1 downto 0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arsize(2) => NLW_s00_couplers_M00_AXI_arsize_UNCONNECTED(2),
      M00_AXI_arsize(1 downto 0) => M00_AXI_arsize(1 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(3 downto 0) => M00_AXI_awlen(3 downto 0),
      M00_AXI_awlock(1 downto 0) => M00_AXI_awlock(1 downto 0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awsize(2) => NLW_s00_couplers_M00_AXI_awsize_UNCONNECTED(2),
      M00_AXI_awsize(1 downto 0) => M00_AXI_awsize(1 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => NLW_s00_couplers_M00_AXI_bresp_UNCONNECTED(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(63 downto 0) => M00_AXI_rdata(63 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => NLW_s00_couplers_M00_AXI_rresp_UNCONNECTED(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(63 downto 0) => M00_AXI_wdata(63 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(7 downto 0) => M00_AXI_wstrb(7 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(31 downto 0) => NLW_s00_couplers_S00_AXI_araddr_UNCONNECTED(31 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(31 downto 0) => NLW_s00_couplers_S00_AXI_awaddr_UNCONNECTED(31 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => NLW_s00_couplers_S00_AXI_bresp_UNCONNECTED(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => NLW_s00_couplers_S00_AXI_rresp_UNCONNECTED(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(31 downto 0) => NLW_s00_couplers_S00_AXI_wdata_UNCONNECTED(31 downto 0),
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(3 downto 0) => NLW_s00_couplers_S00_AXI_wstrb_UNCONNECTED(3 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    addr_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    address_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    write_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Setup : entity is "Setup.hwdef";
end Setup;

architecture STRUCTURE of Setup is
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal ext_reset_in : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal rst_ps7_0_50M_peripheral_aresetn_0 : STD_LOGIC;
  signal util_vector_logic_1_Res : STD_LOGIC;
  signal NLW_AXI_Master_0_done_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Master_0_err_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Master_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Master_0_start_read_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Master_0_start_write_UNCONNECTED : STD_LOGIC;
  signal NLW_AXI_Master_0_M_AXI_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_AXI_Master_0_M_AXI_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_AXI_Master_0_M_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_AXI_Master_0_M_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_AXI_Master_0_M_AXI_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_AXI_Master_0_M_AXI_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_AXI_Master_0_address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_AXI_Master_0_write_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_CPU_0_bram_en_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_bram_we_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_mem_done_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_mem_err_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_mem_read_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_mem_write_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_CPU_0_bram_addr_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_CPU_0_bram_din_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_CPU_0_bram_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_CPU_0_data_in_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_interconnect_0_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_ACLK_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_ARESETN_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interconnect_0_M00_AXI_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_axi_interconnect_0_M00_AXI_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_axi_interconnect_0_M00_AXI_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_interconnect_0_M00_AXI_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_interconnect_0_S00_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_interconnect_0_S00_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_interconnect_0_S00_AXI_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_interconnect_0_S00_AXI_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_interconnect_0_S00_AXI_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_interconnect_0_S00_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_processing_system7_0_S_AXI_HP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_rst_ps7_0_50M_aux_reset_in_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_dcm_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_mb_debug_sys_rst_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of AXI_Master_0 : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_AXI_Master_0_3/Setup_AXI_Master_0_3.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of AXI_Master_0 : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of AXI_Master_0 : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of AXI_Master_0 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of AXI_Master_0 : label is "AXI_Master,Vivado 2024.1";
  attribute IMPORTED_FROM of CPU_0 : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_CPU_0_2/Setup_CPU_0_2.dcp";
  attribute IMPORTED_TYPE of CPU_0 : label is "CHECKPOINT";
  attribute IS_IMPORTED of CPU_0 : label is std.standard.true;
  attribute syn_black_box of CPU_0 : label is "TRUE";
  attribute x_core_info of CPU_0 : label is "CPU,Vivado 2024.1";
  attribute IMPORTED_FROM of processing_system7_0 : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_processing_system7_0_0/Setup_processing_system7_0_0.dcp";
  attribute IMPORTED_TYPE of processing_system7_0 : label is "CHECKPOINT";
  attribute IS_IMPORTED of processing_system7_0 : label is std.standard.true;
  attribute syn_black_box of processing_system7_0 : label is "TRUE";
  attribute x_core_info of processing_system7_0 : label is "processing_system7_v5_5_processing_system7,Vivado 2024.1";
  attribute IMPORTED_FROM of rst_ps7_0_50M : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_rst_ps7_0_50M_0/Setup_rst_ps7_0_50M_0.dcp";
  attribute IMPORTED_TYPE of rst_ps7_0_50M : label is "CHECKPOINT";
  attribute IS_IMPORTED of rst_ps7_0_50M : label is std.standard.true;
  attribute syn_black_box of rst_ps7_0_50M : label is "TRUE";
  attribute x_core_info of rst_ps7_0_50M : label is "proc_sys_reset,Vivado 2024.1";
  attribute IMPORTED_FROM of util_vector_logic_0 : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_util_vector_logic_0_0/Setup_util_vector_logic_0_0.dcp";
  attribute IMPORTED_TYPE of util_vector_logic_0 : label is "CHECKPOINT";
  attribute IS_IMPORTED of util_vector_logic_0 : label is std.standard.true;
  attribute syn_black_box of util_vector_logic_0 : label is "TRUE";
  attribute x_core_info of util_vector_logic_0 : label is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.1";
  attribute IMPORTED_FROM of util_vector_logic_1 : label is "y:/C++/Uni-CPU/CPURev2/CPURev2.gen/sources_1/bd/Setup/ip/Setup_util_vector_logic_1_0/Setup_util_vector_logic_1_0.dcp";
  attribute IMPORTED_TYPE of util_vector_logic_1 : label is "CHECKPOINT";
  attribute IS_IMPORTED of util_vector_logic_1 : label is std.standard.true;
  attribute syn_black_box of util_vector_logic_1 : label is "TRUE";
  attribute x_core_info of util_vector_logic_1 : label is "util_vector_logic_v2_0_4_util_vector_logic,Vivado 2024.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
AXI_Master_0: entity work.Setup_AXI_Master_0_3
     port map (
      M_AXI_ARADDR(31 downto 0) => NLW_AXI_Master_0_M_AXI_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_ARREADY => S00_AXI_1_ARREADY,
      M_AXI_ARVALID => S00_AXI_1_ARVALID,
      M_AXI_AWADDR(31 downto 0) => NLW_AXI_Master_0_M_AXI_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_AWREADY => S00_AXI_1_AWREADY,
      M_AXI_AWVALID => S00_AXI_1_AWVALID,
      M_AXI_BREADY => S00_AXI_1_BREADY,
      M_AXI_BRESP(1 downto 0) => NLW_AXI_Master_0_M_AXI_BRESP_UNCONNECTED(1 downto 0),
      M_AXI_BVALID => S00_AXI_1_BVALID,
      M_AXI_RDATA(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      M_AXI_RREADY => S00_AXI_1_RREADY,
      M_AXI_RRESP(1 downto 0) => NLW_AXI_Master_0_M_AXI_RRESP_UNCONNECTED(1 downto 0),
      M_AXI_RVALID => S00_AXI_1_RVALID,
      M_AXI_WDATA(31 downto 0) => NLW_AXI_Master_0_M_AXI_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_WREADY => S00_AXI_1_WREADY,
      M_AXI_WSTRB(3 downto 0) => NLW_AXI_Master_0_M_AXI_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_WVALID => S00_AXI_1_WVALID,
      address(31 downto 0) => NLW_AXI_Master_0_address_UNCONNECTED(31 downto 0),
      clk => processing_system7_0_FCLK_CLK0,
      done => NLW_AXI_Master_0_done_UNCONNECTED,
      err => NLW_AXI_Master_0_err_UNCONNECTED,
      interrupt => NLW_AXI_Master_0_interrupt_UNCONNECTED,
      read_data(31 downto 0) => read_data_0(31 downto 0),
      reset => rst_ps7_0_50M_peripheral_aresetn_0,
      start_read => NLW_AXI_Master_0_start_read_UNCONNECTED,
      start_write => NLW_AXI_Master_0_start_write_UNCONNECTED,
      write_data(31 downto 0) => NLW_AXI_Master_0_write_data_UNCONNECTED(31 downto 0)
    );
CPU_0: entity work.Setup_CPU_0_2
     port map (
      addr(31 downto 0) => addr_0(31 downto 0),
      bram_addr(12 downto 0) => NLW_CPU_0_bram_addr_UNCONNECTED(12 downto 0),
      bram_din(63 downto 0) => NLW_CPU_0_bram_din_UNCONNECTED(63 downto 0),
      bram_dout(63 downto 0) => NLW_CPU_0_bram_dout_UNCONNECTED(63 downto 0),
      bram_en => NLW_CPU_0_bram_en_UNCONNECTED,
      bram_we => NLW_CPU_0_bram_we_UNCONNECTED,
      clk => NLW_CPU_0_clk_UNCONNECTED,
      data_in(31 downto 0) => NLW_CPU_0_data_in_UNCONNECTED(31 downto 0),
      data_out(31 downto 0) => data_out_0(31 downto 0),
      interrupt => NLW_CPU_0_interrupt_UNCONNECTED,
      mem_done => NLW_CPU_0_mem_done_UNCONNECTED,
      mem_err => NLW_CPU_0_mem_err_UNCONNECTED,
      mem_read => NLW_CPU_0_mem_read_UNCONNECTED,
      mem_write => NLW_CPU_0_mem_write_UNCONNECTED,
      reset => NLW_CPU_0_reset_UNCONNECTED
    );
axi_interconnect_0: entity work.Setup_axi_interconnect_0_1
     port map (
      ACLK => NLW_axi_interconnect_0_ACLK_UNCONNECTED,
      ARESETN => NLW_axi_interconnect_0_ARESETN_UNCONNECTED,
      M00_ACLK => NLW_axi_interconnect_0_M00_ACLK_UNCONNECTED,
      M00_ARESETN => NLW_axi_interconnect_0_M00_ARESETN_UNCONNECTED,
      M00_AXI_araddr(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2) => NLW_axi_interconnect_0_M00_AXI_arsize_UNCONNECTED(2),
      M00_AXI_arsize(1 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(1 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2) => NLW_axi_interconnect_0_M00_AXI_awsize_UNCONNECTED(2),
      M00_AXI_awsize(1 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(1 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => NLW_axi_interconnect_0_M00_AXI_bresp_UNCONNECTED(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_interconnect_0_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => NLW_axi_interconnect_0_M00_AXI_rresp_UNCONNECTED(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_interconnect_0_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_50M_peripheral_aresetn_0,
      S00_AXI_araddr(31 downto 0) => NLW_axi_interconnect_0_S00_AXI_araddr_UNCONNECTED(31 downto 0),
      S00_AXI_arready => S00_AXI_1_ARREADY,
      S00_AXI_arvalid => S00_AXI_1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => NLW_axi_interconnect_0_S00_AXI_awaddr_UNCONNECTED(31 downto 0),
      S00_AXI_awready => S00_AXI_1_AWREADY,
      S00_AXI_awvalid => S00_AXI_1_AWVALID,
      S00_AXI_bready => S00_AXI_1_BREADY,
      S00_AXI_bresp(1 downto 0) => NLW_axi_interconnect_0_S00_AXI_bresp_UNCONNECTED(1 downto 0),
      S00_AXI_bvalid => S00_AXI_1_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rready => S00_AXI_1_RREADY,
      S00_AXI_rresp(1 downto 0) => NLW_axi_interconnect_0_S00_AXI_rresp_UNCONNECTED(1 downto 0),
      S00_AXI_rvalid => S00_AXI_1_RVALID,
      S00_AXI_wdata(31 downto 0) => NLW_axi_interconnect_0_S00_AXI_wdata_UNCONNECTED(31 downto 0),
      S00_AXI_wready => S00_AXI_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => NLW_axi_interconnect_0_S00_AXI_wstrb_UNCONNECTED(3 downto 0),
      S00_AXI_wvalid => S00_AXI_1_WVALID
    );
processing_system7_0: entity work.Setup_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARREADY => '0',
      M_AXI_GP0_ARSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARVALID => NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED,
      M_AXI_GP0_AWADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWREADY => '0',
      M_AXI_GP0_AWSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWVALID => NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED,
      M_AXI_GP0_BID(11 downto 0) => B"000000000000",
      M_AXI_GP0_BREADY => NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED,
      M_AXI_GP0_BRESP(1 downto 0) => B"00",
      M_AXI_GP0_BVALID => '0',
      M_AXI_GP0_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI_GP0_RID(11 downto 0) => B"000000000000",
      M_AXI_GP0_RLAST => '0',
      M_AXI_GP0_RREADY => NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED,
      M_AXI_GP0_RRESP(1 downto 0) => B"00",
      M_AXI_GP0_RVALID => '0',
      M_AXI_GP0_WDATA(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_WLAST => NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED,
      M_AXI_GP0_WREADY => '0',
      M_AXI_GP0_WSTRB(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_GP0_WVALID => NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_interconnect_0_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2) => NLW_processing_system7_0_S_AXI_HP0_ARSIZE_UNCONNECTED(2),
      S_AXI_HP0_ARSIZE(1 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(1 downto 0),
      S_AXI_HP0_ARVALID => axi_interconnect_0_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_interconnect_0_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2) => NLW_processing_system7_0_S_AXI_HP0_AWSIZE_UNCONNECTED(2),
      S_AXI_HP0_AWSIZE(1 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(1 downto 0),
      S_AXI_HP0_AWVALID => axi_interconnect_0_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => axi_interconnect_0_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_BVALID => axi_interconnect_0_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_interconnect_0_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => axi_interconnect_0_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_interconnect_0_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_HP0_RVALID => axi_interconnect_0_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_interconnect_0_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => axi_interconnect_0_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_interconnect_0_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_interconnect_0_M00_AXI_WVALID
    );
rst_ps7_0_50M: entity work.Setup_rst_ps7_0_50M_0
     port map (
      aux_reset_in => NLW_rst_ps7_0_50M_aux_reset_in_UNCONNECTED,
      bus_struct_reset(0) => NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => NLW_rst_ps7_0_50M_dcm_locked_UNCONNECTED,
      ext_reset_in => ext_reset_in,
      interconnect_aresetn(0) => NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => NLW_rst_ps7_0_50M_mb_debug_sys_rst_UNCONNECTED,
      mb_reset => NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_50M_peripheral_aresetn_0,
      peripheral_reset(0) => NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
util_vector_logic_0: entity work.Setup_util_vector_logic_0_0
     port map (
      Op1(0) => util_vector_logic_1_Res,
      Op2(0) => reset(0),
      Res(0) => ext_reset_in
    );
util_vector_logic_1: entity work.Setup_util_vector_logic_1_0
     port map (
      Op1(0) => processing_system7_0_FCLK_RESET0_N,
      Res(0) => util_vector_logic_1_Res
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Setup_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    addr_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    address_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    write_data_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Setup_wrapper : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of Setup_wrapper : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of Setup_wrapper : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Setup_wrapper : entity is "5af836d7";
end Setup_wrapper;

architecture STRUCTURE of Setup_wrapper is
  signal addr_0_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_out_0_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal read_data_0_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset_IBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \reset^Mid\: STD_LOGIC_VECTOR ( 0 to 0);
  signal NLW_Setup_i_address_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Setup_i_data_in_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Setup_i_write_data_0_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute hw_handoff : string;
  attribute hw_handoff of Setup_i : label is "Setup.hwdef";
begin
  \reset^Mid\(0) <= reset(0);
pullup_DDR_dm_2inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dm(2)
    );
pullup_DDR_dm_3inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dm(3)
    );
pullup_DDR_dq_16inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(16)
    );
pullup_DDR_dq_17inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(17)
    );
pullup_DDR_dq_18inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(18)
    );
pullup_DDR_dq_19inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(19)
    );
pullup_DDR_dq_20inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(20)
    );
pullup_DDR_dq_21inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(21)
    );
pullup_DDR_dq_22inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(22)
    );
pullup_DDR_dq_23inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(23)
    );
pullup_DDR_dq_24inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(24)
    );
pullup_DDR_dq_25inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(25)
    );
pullup_DDR_dq_26inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(26)
    );
pullup_DDR_dq_27inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(27)
    );
pullup_DDR_dq_28inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(28)
    );
pullup_DDR_dq_29inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(29)
    );
pullup_DDR_dq_30inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(30)
    );
pullup_DDR_dq_31inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dq(31)
    );
pullup_DDR_dqs_n_2inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dqs_n(2)
    );
pullup_DDR_dqs_n_3inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dqs_n(3)
    );
pullup_DDR_dqs_p_2inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dqs_p(2)
    );
pullup_DDR_dqs_p_3inst: unisim.vcomponents.PULLUP
    port map (
      O => DDR_dqs_p(3)
    );
pullup_FIXED_IO_mio_50inst: unisim.vcomponents.PULLUP
    port map (
      O => FIXED_IO_mio(50)
    );
pullup_FIXED_IO_mio_51inst: unisim.vcomponents.PULLUP
    port map (
      O => FIXED_IO_mio(51)
    );
\pullup_reset^Mid_0inst\: unisim.vcomponents.PULLUP
    port map (
      O => \reset^Mid\(0)
    );
Setup_i: entity work.Setup
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      addr_0(31 downto 0) => addr_0_OBUF(31 downto 0),
      address_0(31 downto 0) => NLW_Setup_i_address_0_UNCONNECTED(31 downto 0),
      data_in_0(31 downto 0) => NLW_Setup_i_data_in_0_UNCONNECTED(31 downto 0),
      data_out_0(31 downto 0) => data_out_0_OBUF(31 downto 0),
      read_data_0(31 downto 0) => read_data_0_OBUF(31 downto 0),
      reset(0) => reset_IBUF(0),
      write_data_0(31 downto 0) => NLW_Setup_i_write_data_0_UNCONNECTED(31 downto 0)
    );
\addr_0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(0),
      O => addr_0(0)
    );
\addr_0_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(10),
      O => addr_0(10)
    );
\addr_0_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(11),
      O => addr_0(11)
    );
\addr_0_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(12),
      O => addr_0(12)
    );
\addr_0_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(13),
      O => addr_0(13)
    );
\addr_0_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(14),
      O => addr_0(14)
    );
\addr_0_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(15),
      O => addr_0(15)
    );
\addr_0_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(16),
      O => addr_0(16)
    );
\addr_0_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(17),
      O => addr_0(17)
    );
\addr_0_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(18),
      O => addr_0(18)
    );
\addr_0_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(19),
      O => addr_0(19)
    );
\addr_0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(1),
      O => addr_0(1)
    );
\addr_0_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(20),
      O => addr_0(20)
    );
\addr_0_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(21),
      O => addr_0(21)
    );
\addr_0_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(22),
      O => addr_0(22)
    );
\addr_0_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(23),
      O => addr_0(23)
    );
\addr_0_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(24),
      O => addr_0(24)
    );
\addr_0_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(25),
      O => addr_0(25)
    );
\addr_0_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(26),
      O => addr_0(26)
    );
\addr_0_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(27),
      O => addr_0(27)
    );
\addr_0_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(28),
      O => addr_0(28)
    );
\addr_0_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(29),
      O => addr_0(29)
    );
\addr_0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(2),
      O => addr_0(2)
    );
\addr_0_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(30),
      O => addr_0(30)
    );
\addr_0_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(31),
      O => addr_0(31)
    );
\addr_0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(3),
      O => addr_0(3)
    );
\addr_0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(4),
      O => addr_0(4)
    );
\addr_0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(5),
      O => addr_0(5)
    );
\addr_0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(6),
      O => addr_0(6)
    );
\addr_0_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(7),
      O => addr_0(7)
    );
\addr_0_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(8),
      O => addr_0(8)
    );
\addr_0_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => addr_0_OBUF(9),
      O => addr_0(9)
    );
\data_out_0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(0),
      O => data_out_0(0)
    );
\data_out_0_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(10),
      O => data_out_0(10)
    );
\data_out_0_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(11),
      O => data_out_0(11)
    );
\data_out_0_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(12),
      O => data_out_0(12)
    );
\data_out_0_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(13),
      O => data_out_0(13)
    );
\data_out_0_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(14),
      O => data_out_0(14)
    );
\data_out_0_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(15),
      O => data_out_0(15)
    );
\data_out_0_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(16),
      O => data_out_0(16)
    );
\data_out_0_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(17),
      O => data_out_0(17)
    );
\data_out_0_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(18),
      O => data_out_0(18)
    );
\data_out_0_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(19),
      O => data_out_0(19)
    );
\data_out_0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(1),
      O => data_out_0(1)
    );
\data_out_0_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(20),
      O => data_out_0(20)
    );
\data_out_0_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(21),
      O => data_out_0(21)
    );
\data_out_0_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(22),
      O => data_out_0(22)
    );
\data_out_0_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(23),
      O => data_out_0(23)
    );
\data_out_0_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(24),
      O => data_out_0(24)
    );
\data_out_0_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(25),
      O => data_out_0(25)
    );
\data_out_0_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(26),
      O => data_out_0(26)
    );
\data_out_0_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(27),
      O => data_out_0(27)
    );
\data_out_0_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(28),
      O => data_out_0(28)
    );
\data_out_0_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(29),
      O => data_out_0(29)
    );
\data_out_0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(2),
      O => data_out_0(2)
    );
\data_out_0_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(30),
      O => data_out_0(30)
    );
\data_out_0_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(31),
      O => data_out_0(31)
    );
\data_out_0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(3),
      O => data_out_0(3)
    );
\data_out_0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(4),
      O => data_out_0(4)
    );
\data_out_0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(5),
      O => data_out_0(5)
    );
\data_out_0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(6),
      O => data_out_0(6)
    );
\data_out_0_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(7),
      O => data_out_0(7)
    );
\data_out_0_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(8),
      O => data_out_0(8)
    );
\data_out_0_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_0_OBUF(9),
      O => data_out_0(9)
    );
\read_data_0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(0),
      O => read_data_0(0)
    );
\read_data_0_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(10),
      O => read_data_0(10)
    );
\read_data_0_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(11),
      O => read_data_0(11)
    );
\read_data_0_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(12),
      O => read_data_0(12)
    );
\read_data_0_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(13),
      O => read_data_0(13)
    );
\read_data_0_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(14),
      O => read_data_0(14)
    );
\read_data_0_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(15),
      O => read_data_0(15)
    );
\read_data_0_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(16),
      O => read_data_0(16)
    );
\read_data_0_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(17),
      O => read_data_0(17)
    );
\read_data_0_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(18),
      O => read_data_0(18)
    );
\read_data_0_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(19),
      O => read_data_0(19)
    );
\read_data_0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(1),
      O => read_data_0(1)
    );
\read_data_0_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(20),
      O => read_data_0(20)
    );
\read_data_0_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(21),
      O => read_data_0(21)
    );
\read_data_0_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(22),
      O => read_data_0(22)
    );
\read_data_0_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(23),
      O => read_data_0(23)
    );
\read_data_0_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(24),
      O => read_data_0(24)
    );
\read_data_0_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(25),
      O => read_data_0(25)
    );
\read_data_0_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(26),
      O => read_data_0(26)
    );
\read_data_0_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(27),
      O => read_data_0(27)
    );
\read_data_0_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(28),
      O => read_data_0(28)
    );
\read_data_0_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(29),
      O => read_data_0(29)
    );
\read_data_0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(2),
      O => read_data_0(2)
    );
\read_data_0_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(30),
      O => read_data_0(30)
    );
\read_data_0_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(31),
      O => read_data_0(31)
    );
\read_data_0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(3),
      O => read_data_0(3)
    );
\read_data_0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(4),
      O => read_data_0(4)
    );
\read_data_0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(5),
      O => read_data_0(5)
    );
\read_data_0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(6),
      O => read_data_0(6)
    );
\read_data_0_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(7),
      O => read_data_0(7)
    );
\read_data_0_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(8),
      O => read_data_0(8)
    );
\read_data_0_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => read_data_0_OBUF(9),
      O => read_data_0(9)
    );
\reset_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => \reset^Mid\(0),
      O => reset_IBUF(0)
    );
end STRUCTURE;
