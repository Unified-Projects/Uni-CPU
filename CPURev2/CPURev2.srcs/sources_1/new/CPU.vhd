library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CPU is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        interrupt : in STD_LOGIC;
        data_in : in STD_LOGIC_VECTOR(31 downto 0);
        data_out : out STD_LOGIC_VECTOR(31 downto 0);
        addr : out STD_LOGIC_VECTOR(31 downto 0);
        mem_write : out STD_LOGIC;
        mem_read : out STD_LOGIC;
        mem_err : in STD_LOGIC;
        mem_done : in STD_LOGIC;
        
        bram_we : out std_logic;
        bram_en : out std_logic;
        bram_din : in std_logic_vector(7 downto 0);
        bram_dout : out std_logic_vector(7 downto 0);
        bram_addr : out std_logic_vector(12 downto 0)
    );
end CPU;

architecture Behavioral of CPU is
    signal clk_div : STD_LOGIC;
    signal alu_result : STD_LOGIC_VECTOR(63 downto 0);
    
--    signal write_enable : STD_LOGIC;
--    signal reg_addr : STD_LOGIC_VECTOR(4 downto 0) := (others => '0'); -- Initialize to zero

    signal alu_a : STD_LOGIC_VECTOR(63 downto 0);
    signal alu_b : STD_LOGIC_VECTOR(63 downto 0);
    signal alu_op : STD_LOGIC_VECTOR(2 downto 0); -- Internal ALU control signal
    
    type state_type is (IDLE, READ_REGISTER, STORE_REGISTER, READ_BYTE, READ_WORD, READ_DOUBLE, READ_QUAD, FETCH_RIP, INC_RIP, FETCH_INSTRUCTION, DECODE_INSTRUCTION, GET_ARG1, GET_ARG2, GET_ARG3, GET_ARG_SIZE, EXEC, EXEC_8, EXEC_16, EXEC_32, EXEC_64, STORE, SAVE_RIP, END_CYCLE, HALT);
    signal stateIndex : INTEGER range 0 to 15 := 0;
    signal stateIndexMain : INTEGER range 0 to 15 := 0;
    signal state : state_type := IDLE;
    signal nextState : state_type := IDLE;
    signal nextNextState : state_type := IDLE;
    
    signal cycle_count : INTEGER range 0 to 15 := 0; -- 4-bit cycle counter
    
    signal Result : STD_LOGIC_VECTOR(63 downto 0);
    signal Argument1 : STD_LOGIC_VECTOR(63 downto 0);
    signal Argument2 : STD_LOGIC_VECTOR(63 downto 0);
    signal Argument3 : STD_LOGIC_VECTOR(63 downto 0);
    
    signal LocalRIP : STD_LOGIC_VECTOR(63 downto 0);
    signal CIR : STD_LOGIC_VECTOR(15 downto 0);

begin
    -- Instantiate Clock Divider
    ClockDivider_inst : entity work.ClockDivider
        Port map (
            clk => clk,
            reset => reset,
            clk_div => clk_div
        );

--    struct CompleteRegisterStack{
--        uint64_t r0, r1, r2, r3, r4, r5, r6 = 0; // General Purpose
--        uint64_t rax, rbx, rcx, rdx, rsi, rdi = 0; // (Ret), (Argument Registers)
--        uint64_t rsp, rip = 0; // Stack and Instruction pointers
--        uint64_t status, err, interrupt = 0; // Flags

--        uint64_t page = 0; // Page Table Address
--        uint64_t conf = 0; // Settings

--        // IDT info
--        uint64_t IDT_addr = 0;
--        uint16_t IDT_size = 0;

--        // Who the fuck need a GDT its useless! Lmao
--    };

    -- Instantiate ALU
    ALU_inst : entity work.ALU
        Port map (
            a => alu_a,
            b => alu_b, -- Increment by 1
            alu_op => alu_op,
            result => alu_result,
            zero => open, -- TODO FLAGS
            clk => clk_div,
            reset => reset
        );

    -- Main control process
    process(clk_div)
    begin
        if reset = '1' then
            bram_we <= '0';
            bram_en <= '0';
            bram_addr <= (others => '0'); -- Ensure reg_addr is reset to zero
            bram_dout <= (others => '0');
            data_out <= (others => '0');
            addr <= (others => '0');
            alu_op <= "000"; -- Default to addition
            alu_a <= (others => '0');
            alu_b <= (others => '0');
            Result <= (others => '0');
            Argument1 <= (others => '0');
            Argument2 <= (others => '0');
            Argument3 <= (others => '0');
            mem_write <= '0';
            mem_read <= '0';
            state <= IDLE;
            cycle_count <= 0;
            stateIndex <= 0;
            stateIndexMain <= 0;
            nextState <= IDLE;
            nextNextState <= IDLE;
            CIR <= (others => '0');
            LocalRIP <= (others => '0');
        elsif rising_edge(clk_div) then
            if cycle_count > 0 then
                -- Decrement cycle_count and skip processing
                cycle_count <= cycle_count - 1;
            else
                bram_en <= '0';
                bram_we <= '0';
                       
                case state is
                    when IDLE =>
                        if interrupt = '1' then
                            -- Handle interrupt
                            state <= IDLE;
                        else
                            state <= FETCH_RIP;
                        end if;

                    when READ_REGISTER =>
                           
                        case stateIndex is
                            when 0 =>
                                bram_addr <= Argument1 (12 downto 0);
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable

                                cycle_count <= 1;
                                
                                stateIndex <= 1;
                                
                            when 1 =>
                                Result(63 downto 56) <= bram_din;
                                
                                bram_addr <= Argument1 (12 downto 0) + 1;
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 2;
                            
                            when 2 =>
                                Result(55 downto 48) <= bram_din;
                                
                                bram_addr <= Argument1 (12 downto 0) + 2;
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 3;
                                
                            when 3 =>
                                Result(47 downto 40) <= bram_din;
                                
                                bram_addr <= Argument1 (12 downto 0) + 3;
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 4;
                            
                            when 4 =>
                                Result(39 downto 32) <= bram_din;
                                
                                bram_addr <= Argument1 (12 downto 0) + 4;
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 5;
                                
                             when 5 =>
                                Result(31 downto 24) <= bram_din;
                                
                                bram_addr <= Argument1 (12 downto 0) + 5;
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 6;
                                
                             when 6 =>
                                Result(23 downto 16) <= bram_din;
                                
                                bram_addr <= Argument1 (12 downto 0) + 6;
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 7;
                              
                              when 7 =>
                                Result(15 downto 8) <= bram_din;
                                
                                bram_addr <= Argument1 (12 downto 0) + 7;
                                bram_we <= '0'; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 8;
                                
                              when 8 =>
                                Result(7 downto 0) <= bram_din;
                                
                                cycle_count <= 1;

                                stateIndex <= 0;
                                state <= nextState;

                            when others =>
                                stateIndex <= 0;
                        end case;
                        
                    when STORE_REGISTER =>
                        case stateIndex is
                            when 0 =>
                                bram_dout <= Argument2 (63 downto 56);
                                bram_addr <= Argument1 (12 downto 0);
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable

                                cycle_count <= 1;
                                
                                stateIndex <= 1;
                                
                            when 1 =>
                                bram_dout <= Argument2 (55 downto 48);
                                bram_addr <= Argument1 (12 downto 0) + 1;
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable

                                cycle_count <= 1;
                                
                                stateIndex <= 2;
                            
                            when 2 =>
                                bram_dout <= Argument2 (47 downto 40);
                                bram_addr <= Argument1 (12 downto 0) + 2;
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 3;
                                
                            when 3 =>
                                bram_dout <= Argument2 (39 downto 32);
                                bram_addr <= Argument1 (12 downto 0) + 3;
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 4;
                            
                            when 4 =>
                                bram_dout <= Argument2 (31 downto 24);
                                bram_addr <= Argument1 (12 downto 0) + 4;
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 5;
                                
                             when 5 =>
                                bram_dout <= Argument2 (23 downto 16);
                                bram_addr <= Argument1 (12 downto 0) + 5;
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 6;
                                
                             when 6 =>
                                bram_dout <= Argument2 (15 downto 8);
                                bram_addr <= Argument1 (12 downto 0) + 6;
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 7;
                              
                              when 7 =>
                                bram_dout <= Argument2 (7 downto 0);
                                bram_addr <= Argument1 (12 downto 0) + 7;
                                bram_we <= '1'; -- Write
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 0;
                                state <= nextState;

                            when others =>
                                stateIndex <= 0;
                        end case;

                        state <= IDLE;
                        cycle_count <= 1;

                    when READ_BYTE =>
                        case stateIndex is
                            when 0 =>
                                bram_addr <= Argument1(12 downto 0);
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 1;
                                
                            when 1 =>
                                Result <= x"00000000000000" & bram_din;
                                
                                state <= nextState;
                                stateIndex <= 0;
                                
                            when others =>
                                stateIndex <= 0;
                        end case;
                        
                    when READ_WORD =>
                        case stateIndex is
                            when 0 =>
                                bram_addr <= Argument1(12 downto 0);
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 1;
                                
                            when 1 =>
                                Result <= x"000000000000" & bram_din & x"00";
                            
                                bram_addr <= Argument1(12 downto 0) + 1;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 2;
                                
                            when 2 =>
                                Result(7 downto 0) <= bram_din;
                                
                                state <= nextState;
                                stateIndex <= 0;
                                
                            when others =>
                                stateIndex <= 0;
                        end case;
                        
                    when READ_DOUBLE =>
                        case stateIndex is
                            when 0 =>
                                bram_addr <= Argument1(12 downto 0);
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 1;
                                
                            when 1 =>
                                Result <= x"00000000" & bram_din & x"000000";
                            
                                bram_addr <= Argument1(12 downto 0) + 1;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 2;
                                
                            when 2 =>
                                Result(23 downto 16) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 2;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 3;
                                
                            when 3 =>
                                Result(15 downto 8) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 3;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 4;
                                
                            when 4 =>
                                Result(7 downto 0) <= bram_din;
                                
                                state <= nextState;
                                stateIndex <= 0;
                                
                            when others =>
                                stateIndex <= 0;
                        end case;
                        
                    when READ_QUAD =>
                        case stateIndex is
                            when 0 =>
                                bram_addr <= Argument1(12 downto 0);
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 1;
                                
                            when 1 =>
                                Result <= bram_din & x"00000000000000";
                            
                                bram_addr <= Argument1(12 downto 0) + 1;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 2;
                                
                            when 2 =>
                                Result(55 downto 48) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 2;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 3;
                                
                            when 3 =>
                                Result(47 downto 40) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 3;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 4;
                            
                            when 4 =>
                                Result(39 downto 32) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 4;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 5;
                            
                            when 5 =>
                                Result(31 downto 24) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 5;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 6;
                                
                            when 6 =>
                                Result(23 downto 16) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 6;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 7;
                            
                            when 7 =>
                                Result(15 downto 8) <= bram_din;
                                
                                bram_addr <= Argument1(12 downto 0) + 7;
                                bram_en <= '1';
                                
                                cycle_count <= 1;
                                   
                                stateIndex <= 8;
                                
                            when 8 =>  
                                Result(7 downto 0) <= bram_din;
                                
                                state <= nextState;
                                stateIndex <= 0;
                                
                            when others =>
                                stateIndex <= 0;
                        end case;

                    when FETCH_RIP =>
                        nextState <= FETCH_INSTRUCTION;
                        state <= READ_REGISTER;
                        Argument1 <= x"0000000000000070";
                        
                    when FETCH_INSTRUCTION =>
                        -- Save RIP First
                        LocalRIP <= Result;
                    
                        nextState <= INC_RIP;
                        state <= READ_WORD;
                        Argument1 <= Result;
                        
                    when INC_RIP =>
                        -- Save INSTRUCTION
                        CIR <= Result(15 downto 0);
                    
                        -- Increment RIP
                        LocalRIP <= LocalRIP + 2;

                        state <= DECODE_INSTRUCTION;
                        
                    when DECODE_INSTRUCTION =>
                        -- Save Incremented RIP
                        LocalRIP <= alu_result;
                        state <= SAVE_RIP;
                        
                        case CIR(15 downto 6) is
                            when "0000000001" =>
                                -- HALT Instruction
                                state <= HALT;
                                
                            when "0000000010" =>
                                -- MOV Instruction
                                state <= GET_ARG2; -- Get 2 args
                                
                            when "0000000011" =>
                                -- JMP Instruction
                                state <= GET_ARG1; -- Get 1 args
                                
                            when "0000000100" =>
                                -- ADD Instruction
                                state <= GET_ARG3; -- Get all 3 args
                                
                            when others =>
                                state <= IDLE;
                        end case;
                        
                    when GET_ARG_SIZE =>
                        case CIR(3 downto 2) is
                            when "00" => -- REG
                                case stateIndexMain is
                                    when 0 =>
                                        -- Read the register index
                                        state <= READ_BYTE;
                                        nextState <= GET_ARG_SIZE;
                                        stateIndexMain <= 1;
                                        
                                    when 1 =>
                                        Argument1 <=  std_logic_vector(unsigned(Result) * 8);
                                        state <= READ_REGISTER;
                                        nextState <= GET_ARG_SIZE;
                                        stateIndexMain <= 2;
                                     
                                    when 2 =>
                                        case CIR(5 downto 4) is
                                            when "00" =>
                                                -- 64 Bit
                                            when "01" =>
                                                -- 32 Bit
                                            when "10" =>
                                                -- 16 Bit
                                            when "11" =>
                                                -- 8 Bit
                                                   
                                            when others =>
                                
                                                
                                        end case;
                                        
                                        state <= nextNextState;
                                        stateIndexMain <= 1;
                                    
                                    when others =>
                                        stateIndexMain <= 0;
                                        
                                end case;
                                
                            when "01" => -- DIR
                                
                            when "10" => -- IMM
                                
                            when "11" => -- RDI
                            
                            when others =>
                                
                               
                        end case;
                        
                    when GET_ARG3 =>
                        -- Get 1st of 3 args (Always 1 Byte)
                        case stateIndexMain is
                            when 0 =>
                                Argument1 <= LocalRIP;
                                nextState <= GET_ARG3;
                                state <= READ_BYTE;
                                stateIndexMain <= 1;
                            when 1 =>
                                Argument3 <= Result;
                                stateIndexMain <= 0;
                                state <= GET_ARG2;
                                
                                -- Increment RIP
                                LocalRIP <= LocalRIP + 1;
                                
                            when others =>
                                state <= IDLE;
                                stateIndexMain <= 0;
                        end case;
                    
                    when GET_ARG2 =>
                        -- Get 1st of 2 args
                        -- Needs Determine Byte Size
                        
                        case stateIndexMain is
                            when 0 =>
                                Argument1 <= LocalRIP;
                                nextNextState <= GET_ARG2;
                                state <= GET_ARG_SIZE;
                            when 1 =>
                                Argument2 <= Result;
                                stateIndexMain <= 0;
                                state <= GET_ARG1;
                            when others =>
                                state <= IDLE;
                                stateIndexMain <= 0;
                        end case;
                        
                    when GET_ARG1 =>
                        -- Get 1st of 1 args
                        -- Needs Determine Byte Size
                        
                        case stateIndexMain is
                            when 0 =>
                                Argument1 <= LocalRIP;
                                nextNextState <= GET_ARG1;
                                state <= GET_ARG_SIZE;
                            when 1 =>
                                Argument2 <= Result;
                                stateIndexMain <= 0;
                                state <= EXEC;
                            when others =>
                                state <= IDLE;
                                stateIndexMain <= 0;
                        end case;
                        
                    when EXEC =>
                        state <= SAVE_RIP;
                        
                    when SAVE_RIP =>
                        Argument1 <= x"0000000000000070";
                        Argument2 <= LocalRIP;
                        state <= STORE_REGISTER;
                        nextState <= END_CYCLE;

                    when END_CYCLE =>
                        -- 
                        state <= IDLE;
                        
                    when HALT =>
                        if interrupt = '1' then
                            state <= IDLE;
                        end if;
                        
                    when others =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;
end Behavioral;
