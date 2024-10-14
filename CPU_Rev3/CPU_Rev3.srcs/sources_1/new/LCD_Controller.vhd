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
        fb_dout : out std_logic_vector(15 downto 0);
        fb_addr : out std_logic_vector(15 downto 0)
    );
end LCD_Controller;

architecture Behavioral of LCD_Controller is

    type state_type is (WRITE_REG, WRITE_DATA, DELAY, INIT); -- TODO, WRITE_SHORT DRAW, FB_READ, ADDR_SET
    signal state : state_type := INIT;
    signal backState : state_type := INIT;
    signal writeStage : INTEGER;
    signal initStage : INTEGER;

    signal DelayCount : INTEGER;
    signal DelayStarted : STD_LOGIC;

    signal Data : STD_LOGIC_VECTOR(7 downto 0);

begin
    -- Main process to control the LCD
    process(clk, reset)
    begin
        if reset = '1' then
            scl <= '0'; -- SPI Clock idle state
            cs <= '1';  -- Chip select inactive
            sda <= '0'; -- Data line idle state
            cd <= '0';  -- Data/Command control reset
            res <= '0'; -- Reset control reset
            blk <= '0'; -- Backlight control reset

            -- FB Defaults
            fb_we <= (others => '0');
            fb_en <= '0';
            fb_dout <= (others => '0');
            fb_addr <= (others => '0');

            -- State management
            state <= INIT;
            backState <= INIT;
            initStage <= 0;
            writeStage <= 0;
            DelayCount <= 0;
            Data <= (others => '0');
            DelayStarted <= 0;
        elsif rising_edge(clk) then
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

                        when others =>
                            initStage <= 0;
                    end case;
                
                when DELAY =>
                    if DelayStarted = '1' then
                        if DelayCount = 1 then
                            DelayStarted = '0';
                            state <= backState;
                        else 
                            DelayCount <= DelayCount - 1;
                        end if;
                    else
                        DelayStarted = '1';
                        DelayCount <= DelayCount + 9999; -- Skip 1 clock as it is not nessasary
                    end if;

                when WRITE_DATA =>
                    case writeStage is
                        when 0 =>
                            -- Setup CD pin
                            cd <= '1';
                            writeStage <= 1;
                        when 1 =>
                            -- Send first bit
                            sda <= Data(0)
                            writeStage <= 2;
                        when 2 =>
                            sda <= Data(1)
                            writeStage <= 3;
                        when 3 =>
                            sda <= Data(2)
                            writeStage <= 4;
                        when 4 =>
                            sda <= Data(3)
                            writeStage <= 5;
                        when 5 =>
                            sda <= Data(4)
                            writeStage <= 6;
                        when 6 =>
                            sda <= Data(5)
                            writeStage <= 7;
                        when 7 =>
                            sda <= Data(6)
                            writeStage <= 8;
                        when 8 =>
                            sda <= Data(7)
                            
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
                            writeStage <= 1;
                        when 1 =>
                            -- Send first bit
                            sda <= Data(0)
                            writeStage <= 2;
                        when 2 =>
                            sda <= Data(1)
                            writeStage <= 3;
                        when 3 =>
                            sda <= Data(2)
                            writeStage <= 4;
                        when 4 =>
                            sda <= Data(3)
                            writeStage <= 5;
                        when 5 =>
                            sda <= Data(4)
                            writeStage <= 6;
                        when 6 =>
                            sda <= Data(5)
                            writeStage <= 7;
                        when 7 =>
                            sda <= Data(6)
                            writeStage <= 8;
                        when 8 =>
                            sda <= Data(7)
                            
                            -- Reset and return
                            state <= backState;
                            writeStage <= 0;

                        when others =>
                            state <= backState;
                    end case;
                
                when others =>
                    state <= INIT;
            end case;
        end if;
    end process;

end Behavioral;
