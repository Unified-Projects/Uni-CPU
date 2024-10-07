-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:CPU:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Setup_CPU_0_2 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    interrupt : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    mem_write : OUT STD_LOGIC;
    mem_read : OUT STD_LOGIC;
    mem_err : IN STD_LOGIC;
    mem_done : IN STD_LOGIC;
    bram_we : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    bram_en : OUT STD_LOGIC;
    bram_din : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    bram_dout : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    bram_addr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
    IO_Enable : OUT STD_LOGIC;
    IO_WriteEnable : OUT STD_LOGIC;
    IO_In : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    IO_Out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    IO_Select : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END Setup_CPU_0_2;

ARCHITECTURE Setup_CPU_0_2_arch OF Setup_CPU_0_2 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Setup_CPU_0_2_arch: ARCHITECTURE IS "yes";
  COMPONENT CPU IS
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      interrupt : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      mem_write : OUT STD_LOGIC;
      mem_read : OUT STD_LOGIC;
      mem_err : IN STD_LOGIC;
      mem_done : IN STD_LOGIC;
      bram_we : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      bram_en : OUT STD_LOGIC;
      bram_din : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      bram_dout : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      bram_addr : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
      IO_Enable : OUT STD_LOGIC;
      IO_WriteEnable : OUT STD_LOGIC;
      IO_In : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      IO_Out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      IO_Select : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT CPU;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF Setup_CPU_0_2_arch: ARCHITECTURE IS "CPU,Vivado 2024.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF Setup_CPU_0_2_arch : ARCHITECTURE IS "Setup_CPU_0_2,CPU,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF Setup_CPU_0_2_arch: ARCHITECTURE IS "Setup_CPU_0_2,CPU,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=CPU,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Setup_CPU_0_2_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_sim_clk_gen_0_0_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : CPU
    PORT MAP (
      clk => clk,
      reset => reset,
      interrupt => interrupt,
      data_in => data_in,
      data_out => data_out,
      addr => addr,
      mem_write => mem_write,
      mem_read => mem_read,
      mem_err => mem_err,
      mem_done => mem_done,
      bram_we => bram_we,
      bram_en => bram_en,
      bram_din => bram_din,
      bram_dout => bram_dout,
      bram_addr => bram_addr,
      IO_Enable => IO_Enable,
      IO_WriteEnable => IO_WriteEnable,
      IO_In => IO_In,
      IO_Out => IO_Out,
      IO_Select => IO_Select
    );
END Setup_CPU_0_2_arch;
