----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2024 16:31:56
-- Design Name: 
-- Module Name: Buttn_LED_Switch - Behavioral
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

entity Buttn_LED_Switch is
    Port ( btn1 : in STD_LOGIC;
           btn2 : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           led2 : out STD_LOGIC);
end Buttn_LED_Switch;

architecture Behavioral of Buttn_LED_Switch is

begin

    process(clk, reset)
    begin
        if reset = '1' then
            led2 <= '0';
        else
            if rising_edge(clk) then
                if btn1 = '1' then
                    led2 <= '0';
                elsif btn2 = '1' then
                    led2 <= '1';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
