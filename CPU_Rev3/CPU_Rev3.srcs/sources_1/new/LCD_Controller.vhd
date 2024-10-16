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
        cs     : out STD_LOGIC;  -- Chip Select
        
        -- GPIOs for LCD control
        cd     : out STD_LOGIC;   -- Data/Command control
        blk    : out STD_LOGIC;   -- Backlight control (optional)
        res    : out STD_LOGIC;   -- Reset control

        -- Frambuffer access
        fb_we : out std_logic_vector(7 downto 0);
        fb_en : out std_logic;
        fb_din : in std_logic_vector(15 downto 0);
        fb_addr : out std_logic_vector(15 downto 0)
    );
end LCD_Controller;

architecture Behavioral of LCD_Controller is

    type state_type is (WRITE_REG, WRITE_DATA, DELAY, INIT, WRITE_SHORT, DRAW, FB_READ, ADDR_SET); -- TODO DRAW, ADDR_SET
    signal state : state_type := INIT;
    signal backState : state_type := INIT;
    signal writeStage : INTEGER;
    signal initStage : INTEGER;
    signal fbStage : INTEGER;
    signal addrStage : INTEGER;
    signal drawStage : INTEGER;

    signal DelayCount : INTEGER;
    signal DelayStarted : STD_LOGIC;

    signal Data : STD_LOGIC_VECTOR(7 downto 0);
    signal DataShort : STD_LOGIC_VECTOR(15 downto 0);

    signal ReadData : STD_LOGIC_VECTOR(15 downto 0);
    signal ReadAddr : STD_LOGIC_VECTOR(15 downto 0);

    signal cycle_count : INTEGER := 0;
    signal Pixel : INTEGER := 0;

begin
    -- Main process to control the LCD
    process(clk, reset)
    begin
        if reset = '1' then
            cs <= '1';  -- Chip select inactive
            sda <= '0'; -- Data line idle state
            cd <= '0';  -- Data/Command control reset
            res <= '0'; -- Reset control reset
            blk <= '0'; -- Backlight control reset
            scl <= '0'; -- Data Clock Off!

            -- FB Defaults
            fb_we <= (others => '0');
            fb_en <= '0';
            fb_addr <= (others => '0');

            -- State management
            state <= INIT;
            backState <= INIT;
            initStage <= 0;
            writeStage <= 0;
            DelayCount <= 0;
            Data <= (others => '0');
            DataShort <= (others => '0');
            DelayStarted <= '0';
            fbStage <= 0;
            addrStage <= 0;
            cycle_count <= 0;
            drawStage <= 0;
            Pixel <= 55040;

        elsif rising_edge(clk) then
            if cycle_count = 0 then
                case state is
                    when INIT =>
                        case initStage is
                            -- x Stages
                            when 0 =>
                                -- Write data
                                -- writeStage <= 0;
                                -- state <= WRITE_;
                                -- backState <= INIT;
                                -- Data <= x"";

                                -- Delay
                                DelayStarted <= '0';
                                DelayCount <= 30;
                                backState <= INIT;
                                state <= DELAY;

                                res <= '0';

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 1 =>
                                -- Write data
                                -- writeStage <= 0;
                                -- state <= WRITE_;
                                -- backState <= INIT;
                                -- Data <= x"";

                                -- Delay
                                DelayStarted <= '0';
                                DelayCount <= 100;
                                backState <= INIT;
                                state <= DELAY;
                                res <= '1';

                                -- Load next stage
                                initStage <= initStage + 1;
                            
                            when 2 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"11";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                            
                            when 3 =>
                                -- Write data
                                -- writeStage <= 0;
                                -- state <= WRITE_;
                                -- backState <= INIT;
                                -- Data <= x"";

                                -- Delay
                                DelayStarted <= '0';
                                DelayCount <= 1000;
                                backState <= INIT;
                                state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                            
                            when 4 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"36";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 5 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"70";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 6 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"3A";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 7 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"05";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 8 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"B2";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 9 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"0C";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                                
                            when 10 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"0C";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                                
                            when 11 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"00";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                            
                            when 12 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"33";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                                
                            when 13 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"33";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 14 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"B7";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 15 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"35";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 16 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"BB";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 17 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"35";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 18 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"C0";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 19 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"2C";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 20 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"C2";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 21 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"01";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 22 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"C3";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 23 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"13";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 24 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"C4";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 25 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"20";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 26 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"C6";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 27 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"0F";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 28 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"D0";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 29 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"A4";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 30 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"A1";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 31 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"D6";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 32 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"A1";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                            
                            when 33 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"E0";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 34 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"F0";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 35 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"00";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 36 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"04";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 37 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"04";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 38 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"04";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 39 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"05";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 40 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"29";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 41 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"33";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 42 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"3E";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 43 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"38";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 44 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"12";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 45 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"12";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 46 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"28";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 47 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"30";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;
                            
                            when 48 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"E1";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 49 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"F0";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 50 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"07";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 51 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"0A";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 52 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"0D";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 53 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"0B";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 54 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"07";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 55 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"28";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 56 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"33";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 57 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"3E";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 58 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"36";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 59 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"14";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 60 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"14";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 61 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"29";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 62 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_DATA;
                                backState <= INIT;
                                Data <= x"32";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 63 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"21";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 64 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"11";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 65 =>
                                -- Write data
                                -- writeStage <= 0;
                                -- state <= WRITE_;
                                -- backState <= INIT;
                                -- Data <= x"";

                                -- Delay
                                DelayStarted <= '0';
                                DelayCount <= 150;
                                backState <= INIT;
                                state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 66 =>
                                -- Write data
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= INIT;
                                Data <= x"29";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 67 =>
                                -- Write data
                                -- writeStage <= 0;
                                -- state <= WRITE_;
                                -- backState <= INIT;
                                -- Data <= x"";

                                -- Delay
                                DelayStarted <= '0';
                                DelayCount <= 150;
                                backState <= INIT;
                                state <= DELAY;

                                -- Load next stage
                                initStage <= initStage + 1;

                            when 68 =>
                                -- Write data
                                -- writeStage <= 0;
                                -- state <= WRITE_;
                                -- backState <= INIT;
                                -- Data <= x"";

                                -- Delay
                                -- DelayStarted <= '0';
                                -- DelayCount <= 0;
                                -- backState <= INIT;
                                -- state <= DELAY;

                                blk <= '1';

                                -- Load next stage
                                -- initStage <= initStage + 1;
                                initStage <= 0;
                                state <= DRAW;

                            when others =>
                                initStage <= 0;
                        end case;
                    
                    when DELAY =>
                        if DelayStarted = '1' then
                            if DelayCount = 1 then
                                DelayStarted <= '0';
                                state <= backState;
                            else 
                                DelayCount <= DelayCount - 1;
                            end if;
                        else
                            DelayStarted <= '1';
                            DelayCount <= DelayCount + 9999; -- Skip 1 clock as it is not nessasary
                        end if;

                    when WRITE_DATA =>
                        case writeStage is
                            when 0 =>
                                -- Setup CD pin
                                cd <= '1';
                                writeStage <= writeStage + 1;
                            when 1 =>
                                -- Send first bit
                                sda <= Data(7);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 2 =>
                                scl <= '0';
                            when 3 =>
                                sda <= Data(6);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 4 =>
                                scl <= '0';
                            when 5 =>
                                sda <= Data(5);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 6 =>
                                scl <= '0';
                            when 7 =>
                                sda <= Data(4);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 8 =>
                                scl <= '0';
                            when 9 =>
                                sda <= Data(3);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 10 =>
                                scl <= '0';
                            when 11 =>
                                sda <= Data(2);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 12 =>
                                scl <= '0';
                            when 13 =>
                                sda <= Data(1);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 14 =>
                                scl <= '0';
                            when 15 =>
                                sda <= Data(0);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 16 =>
                                scl <= '0';
                                
                                -- Reset and return
                                state <= backState;
                                writeStage <= 0;

                            when others =>
                                state <= backState;

                        end case;
                        
                    when WRITE_REG =>
                        case writeStage is
                            when 0 =>
                                -- Setup CD pin
                                cd <= '0';
                                writeStage <= writeStage + 1;
                            when 1 =>
                                -- Send first bit
                                sda <= Data(7);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 2 =>
                                scl <= '0';
                            when 3 =>
                                sda <= Data(6);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 4 =>
                                scl <= '0';
                            when 5 =>
                                sda <= Data(5);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 6 =>
                                scl <= '0';
                            when 7 =>
                                sda <= Data(4);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 8 =>
                                scl <= '0';
                            when 9 =>
                                sda <= Data(3);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 10 =>
                                scl <= '0';
                            when 11 =>
                                sda <= Data(2);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 12 =>
                                scl <= '0';
                            when 13 =>
                                sda <= Data(1);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 14 =>
                                scl <= '0';
                            when 15 =>
                                sda <= Data(0);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 16 =>
                                scl <= '0';
                                
                                -- Reset and return
                                state <= backState;
                                writeStage <= 0;

                            when others =>
                                state <= backState;
                        end case;
                    
                    when DRAW =>
                        case drawStage is
                            when 0 =>
                                state <= ADDR_SET;
                                drawStage <= 1;
                            when 1 =>
                                ReadAddr <= STD_LOGIC_VECTOR(to_unsigned(Pixel, 16));
                                state <= FB_READ;
                                backState <= DRAW;
                                drawStage <= 2;

                            when 2 =>
                                DataShort <= ReadData;
                                state <= WRITE_SHORT;
                                backState <= DRAW;
                                drawStage <= 3;
                            
                            when 3 =>
                                Pixel <= Pixel - 1;
                                drawStage <= 4;

                            when 4 =>
                                if Pixel <= 1 then
                                    Pixel <= 55040;
                                    drawStage <= 0;
                                else
                                    drawStage <= 1;
                                end if;
                            
                            when others =>
                                drawStage <= 0;
                        end case;

                    when WRITE_SHORT =>
                        case writeStage is
                            when 0 =>
                                -- Setup CD pin
                                cd <= '1';
                                writeStage <= writeStage + 1;
                            when 1 =>
                                -- Send first bit
                                sda <= DataShort(15);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 2 =>
                                scl <= '0';
                            when 3 =>
                                sda <= DataShort(14);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 4 =>
                                scl <= '0';
                            when 5 =>
                                sda <= DataShort(13);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 6 =>
                                scl <= '0';
                            when 7 =>
                                sda <= DataShort(12);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 8 =>
                                scl <= '0';
                            when 9 =>
                                sda <= DataShort(11);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 10 =>
                                scl <= '0';
                            when 11 =>
                                sda <= DataShort(10);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 12 =>
                                scl <= '0';
                            when 13 =>
                                sda <= DataShort(9);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 14 =>
                                scl <= '0';
                            when 15 =>
                                sda <= DataShort(8);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 16 =>
                                scl <= '0';
                            when 17 =>
                                sda <= Data(7);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 18 =>
                                scl <= '0';
                            when 19 =>
                                sda <= DataShort(6);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 20 =>
                                scl <= '0';
                            when 21 =>
                                sda <= DataShort(5);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 22 =>
                                scl <= '0';
                            when 23 =>
                                sda <= DataShort(4);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 24 =>
                                scl <= '0';
                            when 25 =>
                                sda <= DataShort(3);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 26 =>
                                scl <= '0';
                            when 27 =>
                                sda <= DataShort(2);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 28 =>
                                scl <= '0';
                            when 29 =>
                                sda <= DataShort(1);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 30 =>
                                scl <= '0';
                            when 31 =>
                                sda <= DataShort(0);
                                writeStage <= writeStage + 1;
                                scl <= '1';
                            when 32 =>
                                scl <= '0';
                                
                                -- Reset and return
                                state <= backState;
                                writeStage <= 0;

                            when others =>
                                state <= backState;
                        end case;

                    when FB_READ =>
                        case fbStage is
                            when 0 =>
                                -- Initiate read from the aligned address
                                fb_addr <= ReadAddr;
                                fb_we <= "00000000"; -- Read
                                fb_en <= '1'; -- Enable
                
                                cycle_count <= 2;
                                
                                fbStage <= 1; -- Move to the next state
                
                            when 1 =>
                                ReadData <= fb_din;
                                fb_en <= '0'; -- Dissable
                                state  <= backState; -- Continue

                            when others =>
                                fbStage <= 0;
                        end case;
                    
                    when ADDR_SET =>
                        case addrStage is
                            when 0 =>
                                addrStage <= 1;
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= ADDR_SET;
                                Data <= x"2a";
                            when 1 =>
                                addrStage <= 2;
                                writeStage <= 0;
                                state <= WRITE_SHORT;
                                backState <= ADDR_SET;
                                DataShort <= x"0000";
                            when 2 =>
                                addrStage <= 3;
                                writeStage <= 0;
                                state <= WRITE_SHORT;
                                backState <= ADDR_SET;
                                DataShort <= x"013f";
                            when 3 =>
                                addrStage <= 4;
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= ADDR_SET;
                                Data <= x"2b";
                            when 4 =>
                                addrStage <= 5;
                                writeStage <= 0;
                                state <= WRITE_SHORT;
                                backState <= ADDR_SET;
                                DataShort <= x"0022";
                            when 5 =>
                                addrStage <= 6;
                                writeStage <= 0;
                                state <= WRITE_SHORT;
                                backState <= ADDR_SET;
                                DataShort <= x"00CD";
                            when 6 =>
                                addrStage <= 0;
                                writeStage <= 0;
                                state <= WRITE_REG;
                                backState <= DRAW;
                                Data <= x"2c";
                            when others =>
                                state <= DRAW;
                        end case;
                    
                    when others =>
                        state <= INIT;
                end case;
            else
                cycle_count <= cycle_count - 1;
            end if;
        end if;
    end process;

end Behavioral;
