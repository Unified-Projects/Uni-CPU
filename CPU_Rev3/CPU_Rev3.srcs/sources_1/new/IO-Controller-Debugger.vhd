library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IO_Controller_Debugger is
    Port ( 
           io_data_in  : in STD_LOGIC;
           io_data_out  : out STD_LOGIC;
           clk      : in STD_LOGIC;
           reset    : in STD_LOGIC;
           io_sel   : out STD_LOGIC_VECTOR (4 downto 0);
           io_ena   : out  STD_LOGIC;
           io_done  : in  STD_LOGIC;
           debug_led : out STD_LOGIC
         );
end IO_Controller_Debugger;

architecture Behavioral of IO_Controller_Debugger is

    type state_type is (ClkSkip, IDLE, CHECK_BTN_PRESS, CHECK_BTN_RELEASE, TOGGLE_LED, WAIT_DONE, WAIT_RELEASE);
    signal state       : state_type;
    signal nextState   : state_type;
    signal btn_pressed : STD_LOGIC;
    signal led_state   : STD_LOGIC;
    signal clk_div     : STD_LOGIC;
    
begin

    ClockDivider : entity work.ClockDivider
        Port map (
            clk => clk,
            reset => reset,
            clk_div => clk_div
        );

    process (clk, reset)
    begin
        if reset = '1' then
            state <= ClkSkip;
            nextState <= IDLE;
            io_sel <= (others => '0');
            io_ena <= '0';
            btn_pressed <= '0';
            led_state <= '0';
            io_data_out <= '0';
        elsif rising_edge(clk) then
            case state is
                when ClkSkip =>
                    state <= nextState;
                    
                when IDLE =>
                    io_sel <= "00000";
                    io_ena <= '1';
                    state <= ClkSkip;
                    nextState <= CHECK_BTN_PRESS;
                    debug_led <= '1';

                when CHECK_BTN_PRESS =>
                    debug_led <= '0';
                    if io_done = '1' then
                        btn_pressed <= io_data_in;
                        state <= ClkSkip;
                        nextState <= TOGGLE_LED;
                        io_ena <= '0';
                    end if;

                when TOGGLE_LED =>
                    if btn_pressed = '1' then
                        io_sel <= "00010";
                        io_data_out <= not led_state;
                        io_ena <= '1';
                        led_state <= not led_state;
                        
                        state <= ClkSkip;
                        nextState <= WAIT_DONE;
                    else
                        state <= ClkSkip;
                        nextState <= IDLE;
                    end if;

                when WAIT_DONE =>
                    if io_done = '1' then
                        state <= ClkSkip;
                        nextState <= CHECK_BTN_RELEASE;
                        io_ena <= '0';
                    end if;
                    
                when WAIT_RELEASE =>
                    if io_done = '1' then
                        if io_data_in = '0' then
                            state <= ClkSkip;
                            nextState <= IDLE;
                            io_ena <= '0';
                        else
                            state <= CHECK_BTN_RELEASE;
                        end if;
                    end if;

                when CHECK_BTN_RELEASE =>
                    io_sel <= "00000";
                    io_ena <= '1';
                    state <= ClkSkip;
                    nextState <= WAIT_RELEASE;
                    
                when others =>
                    state <= IDLE;
            end case;
        end if;
    end process;

end Behavioral;
