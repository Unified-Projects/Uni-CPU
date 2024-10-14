library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LCD_Controller is
    Port ( 
        reset  : in  STD_LOGIC;
        clk    : in  STD_LOGIC;
        
        -- SPI interface
        scl    : out STD_LOGIC;  -- SPI Clock
        sda    : out STD_LOGIC;  -- SPI Data
        cs     : out STD_LOGIC;   -- Chip Select
        
        -- GPIOs for LCD control
        dc     : out STD_LOGIC;   -- Data/Command control
        blk    : out STD_LOGIC;   -- Backlight control (optional)
        res    : out STD_LOGIC;    -- Reset control

        -- Frambuffer access
        fb_we : out std_logic_vector(7 downto 0);
        fb_en : out std_logic;
        fb_din : in std_logic_vector(15 downto 0);
        fb_dout : out std_logic_vector(15 downto 0);
        fb_addr : out std_logic_vector(15 downto 0)
    );
end LCD_Controller;

architecture Behavioral of LCD_Controller is

    type state_type is (WRITE_REG, WRITE_DATA, DELAY, INIT);
    signal state : state_type := INIT;
    signal stateIndex : INTEGER;

    signal DelayCount : INTEGER;

    signal Data : STD_LOGIC_VECTOR(7 downto 0);

begin
    -- Main process to control the LCD
    process(clk, reset)
    begin
        if reset = '1' then
            scl <= '0'; -- SPI Clock idle state
            cs <= '1';  -- Chip select inactive
            sda <= '0'; -- Data line idle state
            dc <= '0';  -- Data/Command control reset
            res <= '0'; -- Reset control reset
            blk <= '0'; -- Backlight control reset

            -- FB Defaults
            fb_we <= (others => '0');
            fb_en <= '0';
            fb_dout <= (others => '0');
            fb_addr <= (others => '0');

            -- State management
            state <= INIT;
            stateIndex <= 0;
            DelayCount <= 0;
            Data <= (others => '0');
        elsif rising_edge(clk) then
            case state
        end if;
    end process;

end Behavioral;
