library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IO_Controller is
    Port ( 
           clk    : in  STD_LOGIC;
           ena    : in  STD_LOGIC;
           sel    : in  STD_LOGIC_VECTOR (4 downto 0);
           data_in   : in STD_LOGIC;
           data_out   : out STD_LOGIC;
           reset  : in  STD_LOGIC;
           led_0  : out STD_LOGIC;
           led_1  : out STD_LOGIC;
           btn_0  : in  STD_LOGIC;
           btn_1  : in  STD_LOGIC;
           done   : out STD_LOGIC
          );
end IO_Controller;

architecture Behavioral of IO_Controller is
begin
    process (clk, reset)
    begin
        if reset = '1' then
            led_0 <= '0';
            led_1 <= '0';
            data_out <= '0';
            done <= '0';
        elsif rising_edge(clk) then
            if ena = '1' then
                case sel is
                    when "00000" =>
                        data_out <= not btn_0;
                        done <= '1';
                    when "00001" =>
                        data_out <= not btn_1;
                        done <= '1';
                    when "00010" =>
                        led_0 <= data_in;
                        done <= '1';
                    when "00011" =>
                        led_1 <= data_in;
                        done <= '1';
                    when others =>
                        done <= '0';
                end case;
            else
                done <= '0';
            end if;
        end if;
    end process;
end Behavioral;
