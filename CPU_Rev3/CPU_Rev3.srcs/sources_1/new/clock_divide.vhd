library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ClockDivider is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_div : out STD_LOGIC
    );
end ClockDivider;

architecture Behavioral of ClockDivider is
    signal counter : INTEGER := 0;
    constant DIVISOR : INTEGER := 1000;
    signal clock : STD_LOGIC := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_div <= '0';
            clock <= '0';
        elsif rising_edge(clk) then
            if counter = (DIVISOR - 1) then
                counter <= 0;
                clk_div <= clock;
                clock <= not clock;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPUClockDivider is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        clk_div : out STD_LOGIC
    );
end CPUClockDivider;

architecture Behavioral of CPUClockDivider is
    signal counter : INTEGER := 0;
    constant DIVISOR : INTEGER := 100000;
    signal clock : STD_LOGIC := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_div <= '0';
            clock <= '0';
        elsif rising_edge(clk) then
            if counter = (DIVISOR - 1) then
                counter <= 0;
                clk_div <= clock;
                clock <= not clock;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
end Behavioral;