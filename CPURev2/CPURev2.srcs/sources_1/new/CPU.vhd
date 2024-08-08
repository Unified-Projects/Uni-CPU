library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
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
        
        bram_we : out std_logic_vector(7 downto 0);
        bram_en : out std_logic;
        bram_din : in std_logic_vector(63 downto 0);
        bram_dout : out std_logic_vector(63 downto 0);
        bram_addr : out std_logic_vector(12 downto 0)
    );
end CPU;

architecture Behavioral of CPU is
    signal clk_div : STD_LOGIC;
    
--    signal write_enable : STD_LOGIC;
--    signal reg_addr : STD_LOGIC_VECTOR(4 downto 0) := (others => '0'); -- Initialize to zero
    
    type state_type is (IDLE, READ_REGISTER, STORE_REGISTER, BRAM_READ, BRAM_WRITE, FETCH_RIP, INC_RIP, FETCH_INSTRUCTION, DECODE_INSTRUCTION, GET_1_ARG, GET_2_ARG, GET_3_ARG, EXEC, EXEC_8, EXEC_16, EXEC_32, EXEC_64, STORE, SAVE_RIP, END_CYCLE, HALT);
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
    
    function reverse_bytes(data_in: std_logic_vector(63 downto 0)) return std_logic_vector is
        variable data_out: std_logic_vector(63 downto 0);
    begin
        data_out(63 downto 56) := data_in(7 downto 0);
        data_out(55 downto 48) := data_in(15 downto 8);
        data_out(47 downto 40) := data_in(23 downto 16);
        data_out(39 downto 32) := data_in(31 downto 24);
        data_out(31 downto 24) := data_in(39 downto 32);
        data_out(23 downto 16) := data_in(47 downto 40);
        data_out(15 downto 8)  := data_in(55 downto 48);
        data_out(7 downto 0)   := data_in(63 downto 56);
        return data_out;
    end function;

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

    -- Main control process
    process(clk_div)
        -- Variable declarations
        variable aligned_address : std_logic_vector(12 downto 0);
        variable byte_offset     : std_logic_vector(2 downto 0); -- 3-bit offset within 64-bit word
        variable temp_data1      : std_logic_vector(63 downto 0);
        variable temp_data2      : std_logic_vector(63 downto 0);
        variable write_data      : std_logic_vector(63 downto 0);
    begin
        if reset = '1' then
            bram_we <= "00000000";
            bram_en <= '0';
            bram_addr <= (others => '0'); -- Ensure reg_addr is reset to zero
            bram_dout <= (others => '0');
            data_out <= (others => '0');
            addr <= (others => '0');
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
                bram_we <= "00000000";
                       
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
                                bram_we <= "00000000"; -- Read
                                bram_en <= '1'; -- Enable

                                cycle_count <= 1;
                                
                                stateIndex <= 1;
                             
                            when 1 =>
                                Result <= bram_din;
                                
                                stateIndex <= 0;
                                state <= nextState;

                            when others =>
                                stateIndex <= 0;
                        end case;
                        
                    when STORE_REGISTER =>
                        case stateIndex is
                            when 0 =>
                                bram_dout <= Argument2;
                                bram_addr <= Argument1 (12 downto 0); 
                                bram_we <= "11111111"; -- Write
                                bram_en <= '1'; -- Enable
                    
                                stateIndex <= 0;
                                state <= nextState;                         

                            when others =>
                                stateIndex <= 0;
                        end case;
                    
                    when BRAM_READ =>
                        case stateIndex is
                            when 0 =>
                                -- Calculate the aligned address and byte offset within the 64-bit block
                                aligned_address := Argument1(15 downto 3);
                                byte_offset := Argument1(2 downto 0); -- Extract the 3 LSBs for the offset
                                
                                -- Initiate read from the aligned address
                                bram_addr <= aligned_address;
                                bram_we <= "00000000"; -- Read
                                bram_en <= '1'; -- Enable
                
                                cycle_count <= 1;
                                
                                stateIndex <= 1; -- Move to the next state
                                state <= BRAM_READ;
                
                            when 1 =>
                                -- Store the first read block in a temporary variable
                                temp_data1 := bram_din;
                
                                -- If the offset is 0, the address was aligned; we're done.
                                if byte_offset = "000" then
                                    Result <= bram_din;
                                    stateIndex <= 3;
                                else
                                    -- Otherwise, prepare to read the next 64-bit block
                                    bram_addr <= (aligned_address + 1);
                                    bram_we <= "00000000"; -- Read
                                    bram_en <= '1'; -- Enable
                                    
                                    cycle_count <= 1;
                                                    
                                    stateIndex <= 2; -- Move to the next state
                                    state <= BRAM_READ;
                                end if;
                
                            when 2 =>
                                -- Store the second read block in a temporary variable
                                temp_data2 := bram_din;
                
                                -- Combine the two 64-bit blocks based on the byte offset
                                case byte_offset is
                                    when "001" => 
                                        Result <= temp_data1(55 downto 0) & temp_data2(63 downto 56); -- Combine with 7 bytes from the first block and 1 byte from the second
                                    when "010" => 
                                        Result <= temp_data1(47 downto 0) & temp_data2(63 downto 48); -- Combine with 6 bytes from the first block and 2 bytes from the second
                                    when "011" => 
                                        Result <= temp_data1(39 downto 0) & temp_data2(63 downto 40); -- Combine with 5 bytes from the first block and 3 bytes from the second
                                    when "100" => 
                                        Result <= temp_data1(31 downto 0) & temp_data2(63 downto 32); -- Combine with 4 bytes from the first block and 4 bytes from the second
                                    when "101" => 
                                        Result <= temp_data1(23 downto 0) & temp_data2(63 downto 24); -- Combine with 3 bytes from the first block and 5 bytes from the second
                                    when "110" => 
                                        Result <= temp_data1(15 downto 0) & temp_data2(63 downto 16); -- Combine with 2 bytes from the first block and 6 bytes from the second
                                    when "111" => 
                                        Result <= temp_data1(7 downto 0) & temp_data2(63 downto 8);  -- Combine with 1 byte from the first block and 7 bytes from the second
                                    when others => 
                                        Result <= temp_data1; -- Default case (should not occur)
                                end case;
                
                                -- Move to the next state
                                stateIndex <= 3;
                             when 3 =>
                                Result <= reverse_bytes(Result);
                                state <= nextState;
                                stateIndex <= 0;
                             when others =>
                                    stateIndex <= 0;
                            end case;
                            
                    when BRAM_WRITE =>
                        case stateIndex is
                            when 0 =>
                                -- Reverse bytes out
                                write_data := reverse_bytes(Argument2);
                            
                                -- Calculate the aligned address and byte offset within the 64-bit block
                                aligned_address := Argument1(15 downto 3);
                                byte_offset := Argument1(2 downto 0); -- Extract the 3 LSBs for the offset
                                
                                -- Read the first 64-bit block at the aligned address to modify it with the incoming data
                                bram_addr <= aligned_address;
                                bram_we <= "00000000"; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 1;
                                
                                stateIndex <= 1; -- Move to the next state
                                state <= BRAM_WRITE;
                                
                            when 1 =>
                                -- Store the current block data in a temporary variable
                                temp_data1 := bram_din;

                                if byte_offset = "000" then
                                    -- If aligned, just write the data directly to this block
                                    bram_dout <= write_data; -- `write_data` is the data to be written
                                    bram_we <= "11111111"; -- Enable all 8 bytes for writing
                                    bram_en <= '1'; -- Enable

                                    cycle_count <= 1;
                                    
                                    state <= nextState;
                                else
                                    -- Prepare for the second read to handle unaligned write
                                    bram_addr <= aligned_address + 1;
                                    bram_we <= "00000000"; -- Read
                                    bram_en <= '1'; -- Enable

                                    cycle_count <= 1;
                                    
                                    stateIndex <= 2; -- Move to the next state
                                    state <= BRAM_WRITE;
                                end if;

                            when 2 =>
                                -- Store the second block data in a temporary variable
                                temp_data2 := bram_din;

                                -- Modify `temp_data1` and `temp_data2` with the incoming data based on byte offset
                                case byte_offset is
                                    when "001" => 
                                        -- Modify 7 bytes of `temp_data1` and 1 byte of `temp_data2`
                                        bram_dout <= (write_data(63 downto 56) & temp_data1(55 downto 0));
                                        bram_we <= "11111110"; -- Enable all bytes except the MSB
                                        bram_en <= '1'; -- Enable

                                        bram_addr <= aligned_address + 1;
                                        bram_dout <= (temp_data2(63 downto 8) & write_data(7 downto 0));
                                        bram_we <= "10000000"; -- Enable only the MSB
                                        bram_en <= '1'; -- Enable
                                    when "010" => 
                                        bram_dout <= (write_data(63 downto 48) & temp_data1(47 downto 0));
                                        bram_we <= "11111100"; -- Enable 6 bytes except 2 MSB
                                        bram_en <= '1'; -- Enable

                                        bram_addr <= aligned_address + 1;
                                        bram_dout <= (temp_data2(63 downto 16) & write_data(15 downto 0));
                                        bram_we <= "11000000"; -- Enable the top 2 bytes
                                        bram_en <= '1'; -- Enable
                                    when "011" => 
                                        bram_dout <= (write_data(63 downto 40) & temp_data1(39 downto 0));
                                        bram_we <= "11111000"; -- Enable 5 bytes except 3 MSB
                                        bram_en <= '1'; -- Enable

                                        bram_addr <= aligned_address + 1;
                                        bram_dout <= (temp_data2(63 downto 24) & write_data(23 downto 0));
                                        bram_we <= "11100000"; -- Enable the top 3 bytes
                                        bram_en <= '1'; -- Enable
                                    when "100" => 
                                        bram_dout <= (write_data(63 downto 32) & temp_data1(31 downto 0));
                                        bram_we <= "11110000"; -- Enable 4 bytes except 4 MSB
                                        bram_en <= '1'; -- Enable

                                        bram_addr <= aligned_address + 1;
                                        bram_dout <= (temp_data2(63 downto 32) & write_data(31 downto 0));
                                        bram_we <= "11110000"; -- Enable the top 4 bytes
                                        bram_en <= '1'; -- Enable
                                    when "101" => 
                                        bram_dout <= (write_data(63 downto 24) & temp_data1(23 downto 0));
                                        bram_we <= "11100000"; -- Enable 3 bytes except 5 MSB
                                        bram_en <= '1'; -- Enable

                                        bram_addr <= aligned_address + 1;
                                        bram_dout <= (temp_data2(63 downto 40) & write_data(39 downto 0));
                                        bram_we <= "11111000"; -- Enable the top 5 bytes
                                        bram_en <= '1'; -- Enable
                                    when "110" => 
                                        bram_dout <= (write_data(63 downto 16) & temp_data1(15 downto 0));
                                        bram_we <= "11000000"; -- Enable 2 bytes except 6 MSB
                                        bram_en <= '1'; -- Enable

                                        bram_addr <= aligned_address + 1;
                                        bram_dout <= (temp_data2(63 downto 48) & write_data(47 downto 0));
                                        bram_we <= "11111100"; -- Enable the top 6 bytes
                                        bram_en <= '1'; -- Enable
                                    when "111" => 
                                        bram_dout <= (write_data(63 downto 8) & temp_data1(7 downto 0));
                                        bram_we <= "10000000"; -- Enable 1 byte except 7 MSB
                                        bram_en <= '1'; -- Enable

                                        bram_addr <= aligned_address + 1;
                                        bram_dout <= (temp_data2(63 downto 56) & write_data(55 downto 0));
                                        bram_we <= "11111110"; -- Enable the top 7 bytes
                                        bram_en <= '1'; -- Enable
                                    when others => 
                                        -- Default case (should not occur)
                                        bram_dout <= temp_data1;
                                        bram_we <= "00000000"; -- Disable writing
                                        bram_en <= '0'; -- Disable
                                end case;

                                -- Move to the next state
                                state <= nextState;
                                stateIndex <= 0;
                             when others =>
                                    stateIndex <= 0;
                            end case;
                    
                    when GET_1_ARG =>
                        case stateIndexMain is 
                            when 0 =>
                                -- GET Store Location
                                Argument1 <= LocalRIP;
                                nextState <= DECODE_INSTRUCTION;
                                state <= BRAM_READ;
                                stateIndexMain <= 1;
                            
                            when 1 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 2;
                                        
                                    when "01" =>
                                        -- DIR
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument1 <= Result;
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 2;
                                        
                                    when "10" =>
                                        -- IMM
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument1 <= Result;
                                        stateIndexMain <= 0;
                                        state <= Exec;
                                                                                        
                                    when "11" =>
                                        -- RDI
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 2;
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 2=>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Argument1 <= Result;
                                        state <= Exec;
                                        stateIndexMain <= 0;
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument1 <= Result;
                                        state <= Exec;
                                        stateIndexMain <= 0;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                       -- RDI
                                        Argument1 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 3;
       
                                    when others =>
                                end case;
                                
                            when 3 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERRR
                                        
                                    when "01" =>
                                        -- DIR
                                        -- THROW ERRR
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                        -- RDI
                                        Argument1 <= Result;
                                        stateIndexMain <= 0;
                                        state <= nextNextState;
       
                                    when others =>
                                end case;
                            
                            when others =>
                                stateIndexMain <= 0;
                        end case;
                    
                    when GET_2_ARG =>
                        case stateIndexMain is
                            when 0 =>
                                -- GET Store Location
                                Argument1 <= LocalRIP;
                                nextState <= DECODE_INSTRUCTION;
                                state <= BRAM_READ;
                                stateIndexMain <= 1;
                            
                            when 1 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        LocalRIP <= LocalRIP + 1;
                                        Argument3 <= x"00000000000000" & Result(7 downto 0);
                                        stateIndexMain <= 3;
                                        
                                    when "01" =>
                                        -- DIR
                                        LocalRIP <= LocalRIP + 8;
                                        Argument3 <= Result;
                                        stateIndexMain <= 3;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- Thow Error
                                        
                                    when "11" =>
                                        -- RDI
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 2;
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 2 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERRR
                                        
                                    when "01" =>
                                        -- DIR
                                        -- THROW ERRR
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                        -- RDI
                                        Argument3 <= Result;
                                        stateIndexMain <= 3;
       
                                    when others =>
                                end case;
                                
                            when 3 =>
                                -- GET Store Location
                                Argument1 <= LocalRIP;
                                nextState <= DECODE_INSTRUCTION;
                                state <= BRAM_READ;
                                stateIndexMain <= 4;
                            
                            when 4 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 5;
                                        
                                    when "01" =>
                                        -- DIR
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument1 <= Result;
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 5;
                                        
                                    when "10" =>
                                        -- IMM
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument2 <= Result;
                                        stateIndexMain <= 0;
                                        state <= Exec;
                                                                                        
                                    when "11" =>
                                        -- RDI
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 5;
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 5 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        Argument2 <= Result;
                                        state <= Exec;
                                        stateIndexMain <= 0;
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument2 <= Result;
                                        state <= Exec;
                                        stateIndexMain <= 0;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                       -- RDI
                                        Argument1 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 6;
       
                                    when others =>
                                end case;
                                
                            when 6 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERRR
                                        
                                    when "01" =>
                                        -- DIR
                                        -- THROW ERRR
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                        -- RDI
                                        Argument2 <= Result;
                                        stateIndexMain <= 0;
                                        state <= nextNextState;
       
                                    when others =>
                                end case;
                            
                            when others =>
                                stateIndexMain <= 0;
                        end case;
                    
                    when GET_3_ARG =>
                        case stateIndexMain is 
                            when 0 =>
                                -- GET Store Location
                                Argument1 <= LocalRIP;
                                nextState <= DECODE_INSTRUCTION;
                                state <= BRAM_READ;
                                stateIndexMain <= 1;
                            
                            when 1 =>
                                    -- REG
                                    LocalRIP <= LocalRIP + 1;
                                        
                                    Argument3 <= x"00000000000000" & Result(7 downto 0);
                                    stateIndexMain <= 2;
                                
                            when 2 =>
                                -- GET Store Location
                                Argument1 <= LocalRIP;
                                nextState <= DECODE_INSTRUCTION;
                                state <= BRAM_READ;
                                stateIndexMain <= 3;
                            
                            when 3 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 4;
                                        
                                    when "01" =>
                                        -- DIR
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument1 <= Result;
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 4;
                                        
                                    when "10" =>
                                        -- IMM
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument2 <= Result;
                                        stateIndexMain <= 6;
                                                                                        
                                    when "11" =>
                                        -- RDI
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 4;
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 4 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Argument2 <= Result;
                                        stateIndexMain <= 6;
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument2 <= Result;
                                        stateIndexMain <= 6;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                       -- RDI
                                        Argument2 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 5;
       
                                    when others =>
                                end case;
                                
                            when 5 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERRR
                                        
                                    when "01" =>
                                        -- DIR
                                        -- THROW ERRR
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                        -- RDI
                                        Argument2 <= Result;
                                        stateIndexMain <= 6;
       
                                    when others =>
                                end case;
                            
                            when 6 =>
                                -- GET Store Location
                                Argument1 <= LocalRIP;
                                nextState <= DECODE_INSTRUCTION;
                                state <= BRAM_READ;
                                stateIndexMain <= 7;
                            
                            when 7 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 8;
                                        
                                    when "01" =>
                                        -- DIR
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument1 <= Result;
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 8;
                                        
                                    when "10" =>
                                        -- IMM
                                        LocalRIP <= LocalRIP + 8;
                                        
                                        Argument1 <= Result;
                                        stateIndexMain <= 0;
                                        state <= Exec;
                                                                                        
                                    when "11" =>
                                        -- RDI
                                        LocalRIP <= LocalRIP + 1;
                                        
                                        Argument1 <= x"00000000000000" & Result(7 downto 0);
                                        state <= READ_REGISTER;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 8;
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 8 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        Argument1 <= Result;
                                        state <= Exec;
                                        stateIndexMain <= 0;
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument1 <= Result;
                                        state <= Exec;
                                        stateIndexMain <= 0;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                       -- RDI
                                        Argument1 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= DECODE_INSTRUCTION;
                                        stateIndexMain <= 9;
       
                                    when others =>
                                end case;
                                
                            when 9 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERRR
                                        
                                    when "01" =>
                                        -- DIR
                                        -- THROW ERRR
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                        -- RDI
                                        Argument1 <= Result;
                                        stateIndexMain <= 0;
                                        state <= nextNextState;
       
                                    when others =>
                                end case;
                            
                            when others =>
                                stateIndexMain <= 0;
                        end case;

                    when FETCH_RIP =>
                        nextState <= FETCH_INSTRUCTION;
                        state <= READ_REGISTER;
                        Argument1 <= x"000000000000000E";
                        
                    when FETCH_INSTRUCTION =>
                        -- Save RIP First
                        LocalRIP <= Result;
                    
                        nextState <= INC_RIP;
                        state <= BRAM_READ;
                        Argument1 <= Result;
                        
                    when INC_RIP =>
                        -- Increment RIP
                        LocalRIP <= LocalRIP + 2;
                        
                        -- Save INSTRUCTION
                        CIR <= Result(15 downto 0);

                        state <= DECODE_INSTRUCTION;
                        
                    when DECODE_INSTRUCTION =>
                        
                        case CIR(15 downto 6) is
                            when "0000000001" =>
                                -- HALT Instruction
                                state <= HALT;
                                
                            when "0000000010" =>
                                -- MOV Instruction
                                state <= GET_2_ARG;
                                nextNextState <= EXEC;
                                
                            when "0000000011" =>
                                -- JMP Instruction
                                state <= GET_1_ARG;
                                nextNextState <= EXEC;
                                
                            when "0000000100" =>
                                -- ADD Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                                
                            when others =>
                                state <= IDLE;
                                -- THROW ERR
                        end case;
                        
                    when EXEC =>
                        case CIR(5 downto 4) is
                            when "00" =>
                                state <= EXEC_64;
                            when "01" =>
                                state <= EXEC_32;
                            when "10" =>
                                state <= EXEC_16;
                            when "11" =>
                                state <= EXEC_8;
                            when others =>
                        end case;
                        
                    when EXEC_64 =>
                        case CIR(15 downto 6) is
                            when "0000000001" =>
                                -- HALT Instruction
                                state <= HALT;
                                
                            when "0000000010" =>
                                -- MOV Instruction
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        case Argument2 is
                                            when x"000000000000000E" =>
                                                LocalRIP <= Argument3;
                                                state <= SAVE_RIP;
                                            when others =>
                                                Argument1 <= Argument3;
                                                state <= STORE_REGISTER;
                                                nextState <= SAVE_RIP;
                                        end case;
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument1 <= Argument3;
                                        state <= BRAM_WRITE;
                                        nextState <= SAVE_RIP;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                        -- RDI
                                        Argument1 <= Argument3;
                                        state <= BRAM_WRITE;
                                        nextState <= SAVE_RIP;
       
                                    when others =>
                                end case;
                        
                            when "0000000011" =>
                                -- JMP Instruction
                                LocalRIP <= Argument1;
                                state <= SAVE_RIP; -- Get 1 args
                                
                            when "0000000100" =>
                                case stateIndexMain is
                                    when 0 =>
                                        -- ADD Instruction
                                        Argument2 <= Argument1 + Argument2;
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Argument1 <= Argument3;
                                        stateIndexMain <= 2;
                                        
                                    when 2 =>
                                        -- REG
                                        case Argument1 is
                                            when x"000000000000000E" =>
                                                LocalRIP <= Argument2;
                                                state <= SAVE_RIP;
                                            when others =>
                                                state <= STORE_REGISTER;
                                                nextState <= SAVE_RIP;
                                        end case;
                                        
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;
                                
                            when others =>
                                state <= IDLE;
                                -- THROW ERR
                        end case;
                        
                    when SAVE_RIP =>
                        Argument1 <= x"000000000000000E";
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
