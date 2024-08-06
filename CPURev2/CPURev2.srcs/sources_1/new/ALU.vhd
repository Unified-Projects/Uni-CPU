library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        a : in STD_LOGIC_VECTOR(63 downto 0);
        b : in STD_LOGIC_VECTOR(63 downto 0);
        alu_op : in STD_LOGIC_VECTOR(2 downto 0);
        result : out STD_LOGIC_VECTOR(63 downto 0);
        zero : out STD_LOGIC; -- Zero flag
        alu_done : out STD_LOGIC
    );
end ALU;

architecture Behavioral of ALU is
    signal resultBuf : STD_LOGIC_VECTOR(63 downto 0);
begin
    process(clk, reset)
    begin
        alu_done <= '0';
        if reset = '1' then
            resultBuf <= (others => '0');
            result <= resultBuf;
            zero <= '0';
        elsif rising_edge(clk) then
            case alu_op is
                when "000" =>
                    resultBuf <= a + b; -- Addition
                when others =>
                    resultBuf <= (others => '0'); -- Default case
            end case;

            -- Set the zero flag
            if resultBuf = "0000000000000000000000000000000000000000000000000000000000000000" then
                zero <= '1';
            else
                zero <= '0';
            end if;
            
            result <= resultBuf;
        end if;
        alu_done <= '1';
    end process;
end Behavioral;
