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

-- IP VLNV: xilinx.com:module_ref:IOController:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Setup_IOController_0_0 IS
  PORT (
    Enable : IN STD_LOGIC;
    Write : IN STD_LOGIC;
    DataIn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    DataOut : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    clk : IN STD_LOGIC;
    Selector : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    LED0 : OUT STD_LOGIC;
    BUT0 : IN STD_LOGIC
  );
END Setup_IOController_0_0;

ARCHITECTURE Setup_IOController_0_0_arch OF Setup_IOController_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Setup_IOController_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT IOController IS
    PORT (
      Enable : IN STD_LOGIC;
      Write : IN STD_LOGIC;
      DataIn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      DataOut : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      clk : IN STD_LOGIC;
      Selector : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      LED0 : OUT STD_LOGIC;
      BUT0 : IN STD_LOGIC
    );
  END COMPONENT IOController;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Setup_sim_clk_gen_0_0_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : IOController
    PORT MAP (
      Enable => Enable,
      Write => Write,
      DataIn => DataIn,
      DataOut => DataOut,
      clk => clk,
      Selector => Selector,
      LED0 => LED0,
      BUT0 => BUT0
    );
END Setup_IOController_0_0_arch;
