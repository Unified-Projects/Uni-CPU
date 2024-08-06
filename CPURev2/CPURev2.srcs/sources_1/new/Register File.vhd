library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegisterFile is
    Port (
        clk      : in std_logic;
        rst      : in std_logic;
        we       : in std_logic;  -- write enable
        addr     : in std_logic_vector(4 downto 0); -- 5-bit address to access 32 registers
        din      : in std_logic_vector(63 downto 0); -- 64-bit data input
        dout     : out std_logic_vector(63 downto 0) -- 64-bit data output
    );
end RegisterFile;

architecture Behavioral of RegisterFile is

    -- BRAM configuration
    component blk_mem_gen_v8_4 is
        port (
            clka    : in std_logic;
            wea     : in std_logic_vector(0 downto 0);
            addra   : in std_logic_vector(4 downto 0);
            dina    : in std_logic_vector(63 downto 0);
            douta   : out std_logic_vector(63 downto 0)
        );
    end component;

    signal wea : std_logic_vector(0 downto 0);
    signal dina : std_logic_vector(63 downto 0);
    signal douta : std_logic_vector(63 downto 0);

begin

    -- BRAM instantiation
    bram_inst : blk_mem_gen_v8_4
        port map (
            clka => clk,
            wea => wea,
            addra => addr,
            dina => dina,
            douta => douta
        );

    -- Write enable signal
    wea <= "1" when (we = '1') else "0";
    dina <= din;
    dout <= douta;

end Behavioral;
