----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.09.2024 12:04:52
-- Design Name: 
-- Module Name: IOController - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IOController is
    Port ( Enable : in STD_LOGIC;
           Write : in STD_LOGIC;
           DataIn : in STD_LOGIC_VECTOR (63 downto 0);
           DataOut : out STD_LOGIC_VECTOR (63 downto 0);
           clk : in STD_LOGIC;
           Selector : in STD_LOGIC_VECTOR (7 downto 0);
           LED0 : out STD_LOGIC;
           BUT0 : in STD_LOGIC);
end IOController;

architecture Behavioral of IOController is

begin


end Behavioral;
