library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClockSplitter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_0 : out STD_LOGIC;
           clk_1 : out STD_LOGIC);
end ClockSplitter;

architecture Behavioral of ClockSplitter is
    signal counter : STD_LOGIC;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= '0';
            clk_0 <= '0';
            clk_1 <= '0';
        elsif rising_edge(clk) then
            if counter = '0' then
                counter <= '1';
                clk_0 <= '1';
                clk_1 <= '0';
            else
                counter <= '0';
                clk_0 <= '0';
                clk_1 <= '1';
            end if;
        end if;
    end process;
end Behavioral;
