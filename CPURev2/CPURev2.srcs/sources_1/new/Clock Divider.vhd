library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClockDivider is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_div : inout STD_LOGIC
    );
end ClockDivider;

architecture Behavioral of ClockDivider is
    signal counter : INTEGER := 0;
    constant DIVISOR : INTEGER := 2; -- Adjust as needed for desired frequency
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_div <= '0';
        elsif rising_edge(clk) then
            if counter = (DIVISOR - 1) then
                counter <= 0;
                clk_div <= NOT clk_div;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
end Behavioral;
