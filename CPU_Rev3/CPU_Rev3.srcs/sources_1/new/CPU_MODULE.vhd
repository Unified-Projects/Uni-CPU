library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- use IEEE.NUMERIC_STD.unsigned;
-- use IEEE.NUMERIC_STD.to_integer;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CPU_Module is
    Port (
        -- Important
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        interrupt : in STD_LOGIC_VECTOR(31 downto 0);
        
        resetOut : out STD_LOGIC;

--        data_in : in STD_LOGIC_VECTOR(31 downto 0);
--        data_out : out STD_LOGIC_VECTOR(31 downto 0);
--        addr : out STD_LOGIC_VECTOR(31 downto 0);
--        mem_write : out STD_LOGIC;
--        mem_read : out STD_LOGIC;
--        mem_err : in STD_LOGIC;
--        mem_done : in STD_LOGIC;
        
        bram_we : out std_logic_vector(7 downto 0);
        bram_en : out std_logic;
        bram_din : in std_logic_vector(63 downto 0);
        bram_dout : out std_logic_vector(63 downto 0);
        bram_addr : out std_logic_vector(15 downto 0);
        
        framebuffer_en : out std_logic;
        fb_din : in std_logic_vector(15 downto 0);

        IO_Enable : out std_logic;
        IO_DONE : in std_logic;
        IO_In : in std_logic_vector(63 downto 0);
        IO_Out : out std_logic_vector(63 downto 0);
        IO_Select : out std_logic_vector(4 downto 0)
    );
end CPU_Module;

architecture Behavioral of CPU_Module is
--    signal write_enable : STD_LOGIC;
--    signal reg_addr : STD_LOGIC_VECTOR(4 downto 0) := (others => '0'); -- Initialize to zero
    
    type state_type is (IDLE, DEBUG_LED, BRAM_READ, BRAM_WRITE, DDR_READ, DDR_WRITE, FETCH_RIP, INC_RIP, FETCH_INSTRUCTION, DECODE_INSTRUCTION, GET_1_ARG, GET_1_ALT, GET_2_ARG, GET_3_ARG, EXEC, EXEC_8, EXEC_16, EXEC_32, EXEC_64, HALT);
    signal stateIndex : INTEGER range 0 to 15 := 0;
    signal stateIndexMain : INTEGER range 0 to 15 := 0;
    signal state : state_type := IDLE;
    signal nextState : state_type := IDLE;
    signal nextNextState : state_type := IDLE;
    
    signal cycle_count : INTEGER range 0 to 15 := 0; -- 4-bit cycle counter
    
    signal Result : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
    signal Argument1 : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
    signal Argument2 : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');
    signal Argument3 : STD_LOGIC_VECTOR(63 downto 0) := (others => '0');

    type array_64bit is array (0 to 19) of STD_LOGIC_VECTOR(63 downto 0);
    signal Registers : array_64bit := (others => (others => '0')); -- Initialize array to 0
    
    signal CIR : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    
    signal IO_Enable_Buffer : STD_LOGIC;
    signal IO_Out_Buffer : STD_LOGIC_VECTOR(63 downto 0);

    signal DivisionRegister : STD_LOGIC_VECTOR(8 downto 0);
    
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
    process(clk, reset)
        -- Variable declarations
        variable aligned_address : std_logic_vector(15 downto 0);
        variable alignedDDR_address : std_logic_vector(31 downto 0);
        variable byte_offset     : std_logic_vector(2 downto 0); -- 3-bit offset within 64-bit word
        variable byteDDR_offset     : std_logic_vector(1 downto 0); -- 2-bit offset within 32-bit word
        variable temp_data1      : std_logic_vector(63 downto 0);
        variable temp_data2      : std_logic_vector(63 downto 0);
        variable write_data      : std_logic_vector(63 downto 0);
        
        variable interruptTemp      : std_logic_vector(63 downto 0);
        variable workingStatus : std_logic_vector(63 downto 0);
    begin
        if reset = '1' then
            bram_we <= "00000000";
            bram_en <= '0';
            bram_addr <= (others => '0'); -- Ensure reg_addr is reset to zero
            bram_dout <= (others => '0');
--            data_out <= (others => '0');
--            addr <= (others => '0');
            Result <= (others => '0');
            Argument1 <= (others => '0');
            Argument2 <= (others => '0');
            Argument3 <= (others => '0');
--            mem_write <= '0';
--            mem_read <= '0';
            state <= IDLE;
            cycle_count <= 0;
            stateIndex <= 0;
            stateIndexMain <= 0;
            nextState <= IDLE;
            nextNextState <= IDLE;
            CIR <= (others => '0');
            interruptTemp := (others => '0');

            Registers <= (others => (others => '0')); -- Initialize array to 0

        elsif rising_edge(clk) then
            if cycle_count > 0 then
                -- Decrement cycle_count and skip processing
                cycle_count <= cycle_count - 1;
            else
                bram_en <= '0';
                bram_we <= "00000000";
--                mem_read <= '0';
--                mem_write <= '0'

                
                case state is
                    when DEBUG_LED =>
                        if IO_Enable_Buffer = '1' then
                            if IO_DONE = '1' then
                                IO_Enable <= '0';
                                IO_Enable_Buffer <= '0';
                            end if;
                        else 
                            if IO_Out_Buffer = "0000000000000000000000000000000000000000000000000000000000000001" then
                                IO_Out <= "0000000000000000000000000000000000000000000000000000000000000000";
                                IO_Out_Buffer <= "0000000000000000000000000000000000000000000000000000000000000000";
                                IO_Enable <= '1';
                                IO_Enable_Buffer <= '1';
                            else
                                if Argument1 = "0000000000000000000000000000000000000000000000000000000000000000" then
                                    state <= nextState;
                                    cycle_count <= 2; -- Build delay into Debugger
                                else
                                    Argument1 <= Argument1 - 1;
                                    IO_Select <= "00010"; -- SELECT LED_0
                                    IO_Out <= "0000000000000000000000000000000000000000000000000000000000000001";
                                    IO_Out_Buffer <= "0000000000000000000000000000000000000000000000000000000000000001";
                                    IO_Enable <= '1';
                                end if;
                            end if;
                        end if;

                    when IDLE =>
                        workingStatus := Registers(15);
                        if interrupt /= "00000000000000000000000000000000" then
                            -- Handle interrupt
                            state <= IDLE;
                        elsif workingStatus(1 downto 1) = "1" then
                            state <= IDLE;
                            -- HANDLE INTERNAL INTERRUPT
                        else
                            -- state <= FETCH_RIP;
                            Argument1 <= "0000000000000000000000000000000000000000000000000000000000000001";
                            state <= DEBUG_LED;
                            nextState <= FETCH_INSTRUCTION;
                        end if;
                    
                    when BRAM_READ =>
                        case stateIndex is
                            when 0 =>
                                -- Calculate the aligned address and byte offset within the 64-bit block
                                aligned_address := Argument1(18 downto 3);
                                byte_offset := Argument1(2 downto 0); -- Extract the 3 LSBs for the offset
                                
                                -- Initiate read from the aligned address
                                bram_addr <= aligned_address;
                                bram_we <= "00000000"; -- Read
                                bram_en <= '1'; -- Enable
                
                                cycle_count <= 2;
                                
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
                                    
                                    cycle_count <= 2;
                                                    
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
                                aligned_address := Argument1(18 downto 3);
                                byte_offset := Argument1(2 downto 0); -- Extract the 3 LSBs for the offset
                                
                                -- Read the first 64-bit block at the aligned address to modify it with the incoming data
                                bram_addr <= aligned_address;
                                bram_we <= "00000000"; -- Read
                                bram_en <= '1'; -- Enable
                                
                                cycle_count <= 2;
                                
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

                                    cycle_count <= 2;
                                    
                                    state <= nextState;
                                else
                                    -- Prepare for the second read to handle unaligned write
                                    bram_addr <= aligned_address + 1;
                                    bram_we <= "00000000"; -- Read
                                    bram_en <= '1'; -- Enable

                                    cycle_count <= 2;
                                    
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

--                        when DDR_READ =>
--                            case stateIndex is
--                                when 0 =>
--                                    -- Calculate the aligned address and byte offset within the 64-bit block
--                                    alignedDDR_address := Argument1(33 downto 2); -- 32-bit aligned address
--                                    byteDDR_offset := Argument1(1 downto 0);      -- Extract the 2 LSBs for the offset
                        
--                                    -- Initiate read from the aligned address
--                                    addr <= alignedDDR_address;
--                                    mem_read <= '1';
                                    
--                                    cycle_count <= 2;
--                                    stateIndex <= 1; -- Move to the next state
--                                    state <= DDR_READ;
                        
--                                when 1 =>
--                                    if mem_done = '1' then
--                                        -- Store the first 32-bit read in a temporary variable
--                                        temp_data1(31 downto 0) := data_in;
                        
--                                        if byteDDR_offset = "00" then
--                                            -- If aligned, this was the first half of the 64-bit data
--                                            Result(31 downto 0) <= data_in;
--                                            addr <= alignedDDR_address + 1; -- Prepare for the upper 32 bits
--                                            mem_read <= '1';
                        
--                                            stateIndex <= 2;
--                                        else
--                                            -- Prepare to read the next 32-bit block
--                                            addr <= alignedDDR_address + 1;
--                                            mem_read <= '1';
                        
--                                            cycle_count <= 2;
--                                            stateIndex <= 2; -- Move to the next state
--                                            state <= DDR_READ;
--                                        end if;
--                                    end if;
                        
--                                when 2 =>
--                                    if mem_done = '1' then
--                                        -- Store the second 32-bit read in a temporary variable
--                                        temp_data2(31 downto 0) := data_in;
                        
--                                        -- Check if an additional read is necessary
--                                        if byteDDR_offset = "00" then
--                                            Result(63 downto 32) <= data_in;
--                                            stateIndex <= 3;
--                                        elsif byteDDR_offset = "01" then
--                                            Result(55 downto 0) <= temp_data1(31 downto 0) & temp_data2(31 downto 8);
--                                            addr <= alignedDDR_address + 2; -- Prepare for the final 8 bits
--                                            mem_read <= '1';
                        
--                                            stateIndex <= 3;
--                                        elsif byteDDR_offset = "10" then
--                                            Result(47 downto 0) <= temp_data1(31 downto 0) & temp_data2(31 downto 16);
--                                            addr <= alignedDDR_address + 2; -- Prepare for the final 16 bits
--                                            mem_read <= '1';
                        
--                                            stateIndex <= 3;
--                                        elsif byteDDR_offset = "11" then
--                                            Result(39 downto 0) <= temp_data1(31 downto 0) & temp_data2(31 downto 24);
--                                            addr <= alignedDDR_address + 2; -- Prepare for the final 24 bits
--                                            mem_read <= '1';
                        
--                                            stateIndex <= 3;
--                                        end if;
--                                    end if;
                        
--                                when 3 =>
--                                    if mem_done = '1' then
--                                        -- Store the final 32-bit read and combine based on byte offset
--                                        case byteDDR_offset is
--                                            when "01" =>
--                                                Result(63 downto 56) <= data_in(7 downto 0);
--                                            when "10" =>
--                                                Result(63 downto 48) <= data_in(15 downto 0);
--                                            when "11" =>
--                                                Result(63 downto 40) <= data_in(23 downto 0);
--                                            when others =>
--                                                -- Default case (should not occur)
--                                                Result <= Result; 
--                                        end case;
                        
--                                        -- Reverse bytes if needed and proceed to the next state
--                                        Result <= reverse_bytes(Result);
--                                        state <= nextState;
--                                        stateIndex <= 0;
--                                    end if;
                        
--                                when others =>
--                                    stateIndex <= 0;
--                            end case;
                        
                    
                    when GET_1_ARG =>
                        case stateIndexMain is 
                            when 0 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument1 <= Registers(to_integer(unsigned(Result(20 downto 16))));
                                        state <= nextNextState;
                                        stateIndexMain <= 0;                                -- GET Store Location
                                    
                                    when "11" =>
                                        -- RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument1 <= Registers(to_integer(unsigned(Result(20 downto 16))));
                                        state <= BRAM_READ;
                                        nextState <= GET_1_ARG;
                                        stateIndexMain <= 2;

                                    when others=>
                                        Argument1 <= Registers(14);
                                        nextState <= GET_1_ARG;
                                        state <= BRAM_READ;
                                        stateIndexMain <= 1;
                                end case;
                            
                            when 1 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERR
                                        
                                    when "01" =>
                                        -- DIR
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument1 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= GET_1_ARG;
                                        stateIndexMain <= 2;
                                        
                                    when "10" =>
                                        -- IMM
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument1 <= Result;
                                        stateIndexMain <= 0;
                                        state <= nextNextState;
                                                                                        
                                    when "11" =>
                                        -- RDI
                                        -- THROW ERR
                                                                                    
                                    when others =>
                                end case;
                                
                            when 2=>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Argument1 <= Result;
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument1 <= Result;
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
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

                    when GET_1_ALT =>
                        case stateIndexMain is 
                            when 0 =>
                                -- REG
                                Registers(14) <= Registers(14) + 1;
                                    
                                Argument1 <= x"00000000000000" & Result(23 downto 16);
                                stateIndexMain <= 0;
                                state <= nextNextState;
                            
                            when others =>
                                stateIndexMain <= 0;
                        end case;
                    
                    when GET_2_ARG =>
                        case stateIndexMain is
                            when 0 =>
                                -- GET Store Location
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument3 <= "00000000000000000000000000000000000000000000000000000000000" & Result(20 downto 16);
                                        stateIndexMain <= 3;
                                    
                                    when "11" =>
                                        -- RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument3 <= Registers(to_integer(unsigned(Result(20 downto 16))));
                                        stateIndexMain <= 1;

                                    when others=>
                                        Argument1 <= Registers(14);
                                        nextState <= GET_2_ARG;
                                        state <= BRAM_READ;
                                        stateIndexMain <= 1;
                                end case;
                            
                            when 1 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERR
                                        
                                    when "01" =>
                                        -- DIR
                                        Registers(14) <= Registers(14) + 8;
                                        Argument3 <= Result;
                                        stateIndexMain <= 3;
                                        
                                    when "10" =>
                                        -- IMM
                                        Registers(14) <= Registers(14) + 8;
                                        Argument3 <= Result;
                                        stateIndexMain <= 3;

                                    when "11" =>
                                        -- RDI
                                        Argument3 <= Result;
                                        stateIndexMain <= 3;
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 3 =>
                                case CIR(3 downto 0) is
                                    when "0000" =>
                                        -- REG REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument2 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
                                    when "1100" =>
                                        -- RDI REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument2 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                    
                                    when "0011" =>
                                        -- REG RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument1 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= BRAM_READ;
                                        nextState <= GET_2_ARG;
                                        stateIndexMain <= 6;

                                    when "1111" =>
                                        -- RDI RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument1 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= BRAM_READ;
                                        nextState <= GET_2_ARG;
                                        stateIndexMain <= 6;

                                    when others=>
                                        Argument1 <= Registers(14);
                                        nextState <= GET_2_ARG;
                                        state <= BRAM_READ;
                                        stateIndexMain <= 4;
                                end case;
                            
                            when 4 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument2 <= Registers(to_integer(unsigned(Result(4 downto 0))));
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
                                    when "01" =>
                                        -- DIR
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument1 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= GET_2_ARG;
                                        stateIndexMain <= 6;
                                        
                                    when "10" =>
                                        -- IMM
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument2 <= Result;
                                        stateIndexMain <= 0;
                                        state <= nextNextState;
                                        
                                    when "11" =>
                                        -- RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument1 <= Registers(to_integer(unsigned(Result(4 downto 0))));
                                        state <= BRAM_READ;
                                        nextState <= GET_2_ARG;
                                        stateIndexMain <= 6;
                                                                                    
                                    when others =>
                                end case;
                                
                            when 5 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERR
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument2 <= Result;
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                         -- RDI
                                        -- THROW
       
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
                                -- REG
                                Registers(14) <= Registers(14) + 1;
                                    
                                Argument3 <= x"00000000000000" & Result(23 downto 16);
                                stateIndexMain <= 2;
                                
                            when 2 =>
                                -- GET Store Location
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument2 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        stateIndexMain <= 6;
                                    
                                    when "11" =>
                                        -- RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument1 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= BRAM_READ;
                                        nextState <= GET_3_ARG;
                                        stateIndexMain <= 4;

                                    when others=>
                                        Argument1 <= Registers(14);
                                        nextState <= GET_3_ARG;
                                        state <= BRAM_READ;
                                        stateIndexMain <= 3;
                                end case;
                            
                            when 3 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERR
                                        
                                    when "01" =>
                                        -- DIR
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument1 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= GET_3_ARG;
                                        stateIndexMain <= 4;
                                        
                                    when "10" =>
                                        -- IMM
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument2 <= Result;
                                        stateIndexMain <= 6;
                                                                                        
                                    when "11" =>
                                        -- RDI
                                        -- Throw ERR
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 4 =>
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        -- THROW ERR
                                        
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
                                        stateIndexMain <= 6;
       
                                    when others =>
                                end case;
                            
                            when 6 =>
                                -- GET Store Location
                                case CIR(3 downto 0) is
                                    when "0000" =>
                                        -- REG REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument2 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
                                    when "1100" =>
                                        -- RDI REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument2 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                    
                                    when "0011" =>
                                        -- REG RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument1 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= BRAM_READ;
                                        nextState <= GET_3_ARG;
                                        stateIndexMain <= 8;

                                    when "1111" =>
                                        -- RDI RDI
                                        Registers(14) <= Registers(14) + 1;
                                            
                                        Argument1 <= Registers(to_integer(unsigned(Result(28 downto 24))));
                                        state <= BRAM_READ;
                                        nextState <= GET_3_ARG;
                                        stateIndexMain <= 8;

                                    when others=>
                                        Argument1 <= Registers(14);
                                        nextState <= GET_3_ARG;
                                        state <= BRAM_READ;
                                        stateIndexMain <= 7;
                                end case;
                            
                            when 7 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument1 <= Registers(to_integer(unsigned(Result(4 downto 0))));
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
                                    when "01" =>
                                        -- DIR
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument1 <= Result;
                                        state <= BRAM_READ;
                                        nextState <= GET_3_ARG;
                                        stateIndexMain <= 8;
                                        
                                    when "10" =>
                                        -- IMM
                                        Registers(14) <= Registers(14) + 8;
                                        
                                        Argument1 <= Result;
                                        stateIndexMain <= 0;
                                        state <= nextNextState;
                                                                                        
                                    when "11" =>
                                        -- RDI
                                        Registers(14) <= Registers(14) + 1;
                                        
                                        Argument1 <= Registers(to_integer(unsigned(Result(4 downto 0))));
                                        stateIndexMain <= 8;
                                        state <= BRAM_READ;
                                        nextState <= GET_3_ARG;
                                        
                                                                                    
                                    when others =>
                                end case;
                                
                            when 8 =>
                                case CIR(1 downto 0) is
                                    when "00" =>
                                        -- REG
                                        -- TROW ERR
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument1 <= Result;
                                        state <= nextNextState;
                                        stateIndexMain <= 0;
                                        
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

                    -- when FETCH_RIP =>
                    --     nextState <= FETCH_INSTRUCTION;
                    --     state <= READ_REGISTER;
                    --     Argument1 <= x"000000000000000E";
                        
                    when FETCH_INSTRUCTION =>
                        -- -- Save RIP First
                        -- Registers(14) <= Result;
                        Registers(15) <= (others => '0');
                    
                        nextState <= INC_RIP;
                        state <= BRAM_READ;
                        Argument1 <= Registers(14);
                        
                    when INC_RIP =>
                        -- Increment RIP
                        Registers(14) <= Registers(14) + 2;
                        
                        -- Save INSTRUCTION
                        CIR <= Result(15 downto 0);

                        state <= DECODE_INSTRUCTION;
                        
                    when DECODE_INSTRUCTION =>
                        
                        case CIR(15 downto 6) is
                            when "0000000001" =>
                                -- HALT Instruction
                                -- state <= HALT;
                                Argument1 <= "0000000000000000000000000000000000000000000000000000000000000010";
                                state <= DEBUG_LED;
                                nextState <= HALT;
                                
                            when "0000000010" =>
                                -- MOV Instruction
                                state <= GET_2_ARG;
                                nextState <= GET_2_ARG;
                                nextNextState <= EXEC;
                                
                            when "0000000011" =>
                                -- JMP Instruction
                                state <= GET_1_ARG;
                                nextState <= GET_1_ARG;
                                nextNextState <= EXEC;
                                
                            when "0000000100" =>
                                -- ADD Instruction
                                state <= GET_3_ARG;
                                nextState <= GET_3_ARG;
                                nextNextState <= EXEC;

                            when "0000000101" =>
                                -- PUSH Instruction
                                state <= GET_1_ALT;
                                nextState <= GET_1_ALT;
                                nextNextState <= EXEC;
                            
                            when "0000000110" =>
                                -- POP Instruction
                                state <= GET_1_ALT;
                                nextState <= GET_1_ALT;
                                nextNextState <= EXEC;
                            
                            when "0000000111" =>
                                -- CMP Instruction
                                state <= GET_3_ARG;
                                nextState <= GET_3_ARG;
                                nextNextState <= EXEC;
                            
                            when "0000001000" =>
                                -- JC Instruction
                                state <= GET_1_ARG;
                                nextNextState <= EXEC;
                            when "0000001001" =>
                                -- RET Instruction
                                state <= EXEC;
                            when "0000001010" =>
                                -- INT Instruction
                                state <= GET_1_ARG;
                                nextNextState <= EXEC;
                            when "0000001011" =>
                                -- CALL Instruction
                                state <= GET_1_ARG;
                                nextNextState <= EXEC;
                            when "0000001100" =>
                                -- MUL Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                            when "0000001101" =>
                                -- DIV Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                            when "0000001110" =>
                                -- SUB Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                            when "0000001111" =>
                                -- LSR Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                            when "0000010000" =>
                                -- LSL Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                            when "0000010001" =>
                                -- AND Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                            when "0000010010" =>
                                -- NOT Instruction
                                state <= GET_2_ARG;
                                nextNextState <= EXEC;
                            when "0000010011" =>
                                -- OR Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;
                            when "0000010100" =>
                                -- XOR Instruction
                                state <= GET_3_ARG;
                                nextNextState <= EXEC;

                            when "0000010101" =>
                                -- INCR Instruction
                                state <= GET_1_ALT;
                                nextNextState <= EXEC;
                                
                            when "0000010110" =>
                                -- DECR Instruction
                                state <= GET_1_ALT;
                                nextNextState <= EXEC;
                                
                            when "0000010111" =>
                                -- INC Instruction
                                state <= GET_2_ARG;
                                nextNextState <= EXEC;
                                
                            when "0000011000" =>
                                -- DEC Instruction
                                state <= GET_2_ARG;
                                nextNextState <= EXEC;

                            when "0000011001" =>
                                -- IOW Instruction
                                state <= GET_2_ARG;
                                nextNextState <= EXEC;

                            when "0000011010" =>
                                -- IOR Instruction
                                state <= GET_2_ARG;
                                nextNextState <= EXEC;
                            
                            when others =>
                                state <= IDLE;
                                -- THROW ERR
                                -- JMP to Int OP-Code
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
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        
                                    when "01" =>
                                        -- DIR
                                        Argument1 <= Argument3;
                                        state <= BRAM_WRITE;
                                        nextState <= IDLE; -- nextState <= SAVE_RIP;
                                        
                                    when "11" =>
                                        -- RDI
                                        Argument1 <= Argument3;
                                        state <= BRAM_WRITE;
                                        nextState <= IDLE; -- nextState <= SAVE_RIP;
       
                                    when others =>
                                        -- THROW ERR
                                end case;
                        
                            when "0000000011" =>
                                -- JMP Instruction
                                Registers(14) <= Argument1;
                                state <= IDLE; -- state <= SAVE_RIP; -- Get 1 args
                                
                            when "0000000100" =>
                                case stateIndexMain is
                                    when 0 =>
                                        -- ADD Instruction
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) + signed(Argument2), 64));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000000101" =>
                                -- PUSH
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Registers(to_integer(unsigned(Argument3(4 downto 0))));

                                        stateIndexMain <= 2; 

                                    when 2 =>
                                        -- Write to RSP Position
                                        Argument1 <= Registers(13);
                                        state <= BRAM_WRITE;
                                        stateIndexMain <= 3;
                                        nextState <= EXEC_64;
                                    
                                    when 3 =>
                                        -- Increment RSP
                                        Registers(13) <= Registers(13) + 8;
                                        stateIndexMain <= 0;
                                        state <= IDLE; -- state <= SAVE_RIP;
                                    
                                    when others =>
                                        -- Throw ERR
                                end case;

                            when "0000000110" =>
                                -- POP
                                case stateIndexMain is
                                    when 0 =>
                                        Argument3 <= Argument1;

                                        -- Decrement RSP
                                        Registers(13) <= Registers(13) - 8;
                                        stateIndexMain <= 0;
                                        state <= EXEC_64;
                                        
                                        
                                    when 2 =>
                                        -- Read from RSP
                                        Argument1 <= Registers(13);
                                        state <= BRAM_READ;
                                        state <= EXEC_64;
                                        stateIndexMain <= 3;
                                        
                                    when 3 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Result;
                                    
                                    when others =>
                                        -- Throw ERR
                                end case;  
                            
                            when "0000000111" =>
                                -- CMP
                                case Argument3(7 downto 0) is
                                    when "00000000" =>
                                        -- EQU
                                        if Argument2 = Argument1 then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000001" =>
                                        -- NEQ
                                        if Argument2 /= Argument1 then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000010" =>
                                        -- LEQ
                                        if Argument2 <= Argument1 then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000011" =>
                                        -- GEQ
                                        if Argument2 >= Argument1 then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000100" =>
                                        -- LT
                                        if Argument2 < Argument1 then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000101" =>
                                        -- GT
                                        if Argument2 > Argument1 then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when others =>
                                        -- THROW ERR
                                        Argument3 <= (others => '0');
                                end case;
                                
                            when "0000001000" =>
                                -- JC
                                if Registers(15)(2 downto 2) = "1" then
                                    Registers(14) <= Argument1;
                                end if;

                                state <= IDLE;

                            when "0000001001" =>
                                -- RET Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        -- Decrement RSP
                                        Registers(13) <= Registers(13) - 8;
                                        stateIndexMain <= 0;
                                        state <= EXEC_64;
                                        
                                        
                                    when 2 =>
                                        -- Read from RSP
                                        Argument1 <= Registers(13);
                                        state <= BRAM_READ;
                                        state <= EXEC_64;
                                        stateIndexMain <= 3;
                                        
                                    when 3 =>
                                        Registers(14) <= Result;
                                    
                                    when others =>
                                        -- Throw ERR
                                end case;  
                                
                            when "0000001010" =>
                                -- INT Instruction
                                Registers(15) <= Registers(15) AND "0000000000000000000000000000000000000000000000000000000000000010"; -- Load Interrupt Flag
                                Registers(17) <= Argument1;
                                
                            when "0000001011" =>
                                -- CALL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Registers(14);
                                        Argument3 <= Argument1; -- Save Call Address

                                        stateIndexMain <= 2; 

                                    when 2 =>
                                        -- Write to RSP Position
                                        Argument1 <= Registers(13);
                                        state <= BRAM_WRITE;
                                        stateIndexMain <= 3;
                                        nextState <= EXEC_64;
                                    
                                    when 3 =>
                                        -- Increment RSP and Alter RIP
                                        Registers(13) <= Registers(13) + 8;
                                        Registers(14) <= Argument3;
                                        
                                        stateIndexMain <= 0;
                                        state <= IDLE; -- state <= SAVE_RIP;
                                    
                                    when others =>
                                        -- Throw ERR
                                end case;
                            
                            when "0000001100" =>
                                -- MUL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) * signed(Argument2), 64));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000001101" =>
                                -- DIV Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(signed(Argument1) / signed(Argument2));
                                        
                                        stateIndexMain <= 1;

                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000001110" =>
                                -- SUB Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) - signed(Argument2), 64));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000001111" =>
                                -- LSR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_right(unsigned(Argument1), to_integer(unsigned(Argument2(63 downto 0)))));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000010000" =>
                                -- LSL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_left(unsigned(Argument1), to_integer(unsigned(Argument2(63 downto 0)))));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000010001" =>
                                -- AND Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 and Argument2;
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000010010" =>
                                -- NOT Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= not Argument1;
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000010011" =>
                                -- OR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 or Argument2;
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000010100" =>
                                -- XOR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 xor Argument2;
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= Argument2;
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;
                                
                            when "0000010101" =>
                                -- INC Instruction
                                Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= std_logic_vector(signed(Registers(to_integer(unsigned(Argument3(4 downto 0))))) + 1);
                                state <= IDLE;
                                
                                when "0000010110" =>
                                -- DEC Instruction
                                Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= std_logic_vector(signed(Registers(to_integer(unsigned(Argument3(4 downto 0))))) - 1);
                                state <= IDLE;
                                
                                when "0000010111" =>
                                -- INCR Instruction
                                Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= std_logic_vector(signed(Registers(to_integer(unsigned(Argument3(4 downto 0))))) + signed(Argument2));
                                state <= IDLE;
                                
                                when "0000011000" =>
                                -- DECR Instruction
                                Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= std_logic_vector(signed(Registers(to_integer(unsigned(Argument3(4 downto 0))))) - signed(Argument2));
                                state <= IDLE;
                            
                            when "0000011001" =>
                                -- IOW
                                if IO_Enable_Buffer = '1' then
                                    if IO_DONE = '1' then
                                        IO_Enable <= '0';
                                        IO_Enable_Buffer <= '0';
                                        state <= IDLE;
                                    end if;
                                else 
                                    IO_Select <= Argument3(4 downto 0);
                                    IO_Out <= Argument2;
                                    IO_Enable <= '1';
                                    IO_Enable_Buffer <= '1';
                                end if;
                                
                            when "0000011010" =>
                                -- IOR
                                if IO_Enable_Buffer = '1' then
                                    if IO_DONE = '1' then
                                        IO_Enable <= '0';
                                        IO_Enable_Buffer <= '0';
                                        Registers(to_integer(unsigned(Argument3(4 downto 0)))) <= IO_In;
                                        state <= IDLE;
                                    end if;
                                else 
                                    IO_Select <= Argument2(4 downto 0);
                                    IO_Enable <= '1';
                                    IO_Enable_Buffer <= '1';
                                end if;
                            
                            when others =>
                                state <= IDLE;
                                -- THROW ERR
                        end case;
                    
                    when EXEC_32 =>
                        case CIR(15 downto 6) is
                            when "0000000001" =>
                                -- HALT Instruction
                                state <= HALT;
                                
                            when "0000000010" =>
                                -- MOV Instruction
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        
                                    when "01" =>
                                        -- DIR
                                        case stateIndexMain is
                                            when 0 =>
                                                Argument1 <= Argument3;
                                                state <= BRAM_READ;
                                                nextState <= EXEC_32;
                                                
                                                stateIndexMain <= 1;
                                                
                                            when 1 =>
                                                Argument2(63 downto 32) <= Result(63 downto 32);
                                                state <= BRAM_WRITE;
                                                nextState <= EXEC_32;
                                                
                                                stateIndexMain <= 2;
                                                
                                            when 2 =>
                                                stateIndexMain <= 0;
                                                nextState <= IDLE; -- nextState <= SAVE_RIP;
                                            when others =>
                                        end case;
                                        
                                    when "10" =>
                                        -- IMM
                                        -- THROW ERRR
                                        
                                    when "11" =>
                                        -- RDI
                                        case stateIndexMain is
                                            when 0 =>
                                                Argument1 <= Argument3;
                                                state <= BRAM_READ;
                                                nextState <= EXEC_32;
                                                
                                                stateIndexMain <= 1;
                                                
                                            when 1 =>
                                                Argument2(63 downto 32) <= Result(63 downto 32);
                                                state <= BRAM_WRITE;
                                                nextState <= EXEC_32;
                                                
                                                stateIndexMain <= 2;
                                                
                                            when 2 =>
                                                stateIndexMain <= 0;
                                                nextState <= IDLE; -- nextState <= SAVE_RIP;
                                            when others =>
                                        end case;
       
                                    when others =>
                                end case;
                                
                            when "0000000100" =>
                                case stateIndexMain is
                                    when 0 =>
                                        -- ADD Instruction
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) + signed(Argument2), 64));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000000111" =>
                                -- CMP
                                case Argument3(7 downto 0) is
                                    when "00000000" =>
                                        -- EQU
                                        if Argument2(31 downto 0) = Argument1(31 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000001" =>
                                        -- NEQ
                                        if Argument2(31 downto 0) /= Argument1(31 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000010" =>
                                        -- LEQ
                                        if Argument2(31 downto 0) <= Argument1(31 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000011" =>
                                        -- GEQ
                                        if Argument2(31 downto 0) >= Argument1(31 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000100" =>
                                        -- LT
                                        if Argument2(31 downto 0) < Argument1(31 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000101" =>
                                        -- GT
                                        if Argument2(31 downto 0) > Argument1(31 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when others =>
                                        -- THROW ERR
                                        Argument3 <= (others => '0');
                                end case;
                            
                            when "0000001100" =>
                                -- MUL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) * signed(Argument2), 64));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001101" =>
                                -- DIV Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(signed(Argument1) / signed(Argument2));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001110" =>
                                -- SUB Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) - signed(Argument2), 64));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001111" =>
                                -- LSR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_right(unsigned(Argument1), to_integer(unsigned(Argument2(31 downto 0)))));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010000" =>
                                -- LSL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_left(unsigned(Argument1), to_integer(unsigned(Argument2(31 downto 0)))));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010001" =>
                                -- AND Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 and Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010010" =>
                                -- NOT Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= not Argument1;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010011" =>
                                -- OR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 or Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010100" =>
                                -- XOR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 xor Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(31 downto 0) <= Argument2(31 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;
                                
                            when others =>
                                state <= IDLE;
                                -- THROW ERR
                        end case;

                    when EXEC_16 =>
                        case CIR(15 downto 6) is
                            when "0000000001" =>
                                -- HALT Instruction
                                state <= HALT;
                                
                            when "0000000010" =>
                                -- MOV Instruction
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        
                                    when "01" =>
                                        -- DIR
                                        case stateIndexMain is
                                            when 0 =>
                                                Argument1 <= Argument3;
                                                state <= BRAM_READ;
                                                nextState <= EXEC_16;
                                                
                                                stateIndexMain <= 1;
                                                
                                            when 1 =>
                                                Argument2(63 downto 16) <= Result(63 downto 16);
                                                state <= BRAM_WRITE;
                                                nextState <= EXEC_16;
                                                
                                                stateIndexMain <= 2;
                                                
                                            when 2 =>
                                                stateIndexMain <= 0;
                                                nextState <= IDLE; -- nextState <= SAVE_RIP;
                                            when others =>
                                        end case;
                                        
                                    when "11" =>
                                        -- RDI
                                        case stateIndexMain is
                                            when 0 =>
                                                Argument1 <= Argument3;
                                                state <= BRAM_READ;
                                                nextState <= EXEC_16;
                                                
                                                stateIndexMain <= 1;
                                                
                                            when 1 =>
                                                Argument2(63 downto 16) <= Result(63 downto 16);
                                                state <= BRAM_WRITE;
                                                nextState <= EXEC_16;
                                                
                                                stateIndexMain <= 2;
                                                
                                            when 2 =>
                                                stateIndexMain <= 0;
                                                nextState <= IDLE; -- nextState <= SAVE_RIP;
                                            when others =>
                                        end case;
       
                                    when others =>
                                        -- THROW ERR
                                end case;
                                
                            when "0000000100" =>
                                case stateIndexMain is
                                    when 0 =>
                                        -- ADD Instruction
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) + signed(Argument2), 64));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                end case;

                            when "0000000111" =>
                                -- CMP
                                case Argument3(7 downto 0) is
                                    when "00000000" =>
                                        -- EQU
                                        if Argument2(15 downto 0) = Argument1(15 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000001" =>
                                        -- NEQ
                                        if Argument2(15 downto 0) /= Argument1(15 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000010" =>
                                        -- LEQ
                                        if Argument2(15 downto 0) <= Argument1(15 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000011" =>
                                        -- GEQ
                                        if Argument2(15 downto 0) >= Argument1(15 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000100" =>
                                        -- LT
                                        if Argument2(15 downto 0) < Argument1(15 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000101" =>
                                        -- GT
                                        if Argument2(15 downto 0) > Argument1(15 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when others =>
                                        -- THROW ERR
                                        Argument3 <= (others => '0');
                                end case;

                            when "0000001100" =>
                                -- MUL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) * signed(Argument2), 64));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001101" =>
                                -- DIV Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(signed(Argument1) / signed(Argument2));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001110" =>
                                -- SUB Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) - signed(Argument2), 64));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001111" =>
                                -- LSR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_right(unsigned(Argument1), to_integer(unsigned(Argument2(15 downto 0)))));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010000" =>
                                -- LSL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_left(unsigned(Argument1), to_integer(unsigned(Argument2(15 downto 0)))));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010001" =>
                                -- AND Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 and Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010010" =>
                                -- NOT Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= not Argument1;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010011" =>
                                -- OR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 or Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010100" =>
                                -- XOR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 xor Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(15 downto 0) <= Argument2(15 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;
                                    
                            when others =>
                                state <= IDLE;
                                -- THROW ERR
                        end case;

                    when EXEC_8 =>
                        case CIR(15 downto 6) is
                            when "0000000001" =>
                                -- HALT Instruction
                                state <= HALT;
                                
                            when "0000000010" =>
                                -- MOV Instruction
                                case CIR(3 downto 2) is
                                    when "00" =>
                                        -- REG
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        
                                    when "01" =>
                                        -- DIR
                                        case stateIndexMain is
                                            when 0 =>
                                                Argument1 <= Argument3;
                                                state <= BRAM_READ;
                                                nextState <= EXEC_8;
                                                
                                                stateIndexMain <= 1;
                                                
                                            when 1 =>
                                                Argument2(63 downto 8) <= Result(63 downto 8);
                                                state <= BRAM_WRITE;
                                                nextState <= EXEC_8;
                                                
                                                stateIndexMain <= 2;
                                                
                                            when 2 =>
                                                stateIndexMain <= 0;
                                                nextState <= IDLE; -- nextState <= SAVE_RIP;
                                            when others =>
                                        end case;
                                        
                                    when "11" =>
                                        -- RDI
                                        case stateIndexMain is
                                            when 0 =>
                                                Argument1 <= Argument3;
                                                state <= BRAM_READ;
                                                nextState <= EXEC_8;
                                                
                                                stateIndexMain <= 1;
                                                
                                            when 1 =>
                                                Argument2(63 downto 8) <= Result(63 downto 8);
                                                state <= BRAM_WRITE;
                                                nextState <= EXEC_8;
                                                
                                                stateIndexMain <= 2;
                                                
                                            when 2 =>
                                                stateIndexMain <= 0;
                                                nextState <= IDLE; -- nextState <= SAVE_RIP;
                                            when others =>
                                        end case;
       
                                    when others =>
                                        -- THROW ERR
                                end case;
                        
                            when "0000000100" =>
                                case stateIndexMain is
                                    when 0 =>
                                        -- ADD Instruction
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) + signed(Argument2), 64));
                                        
                                        stateIndexMain <= 1;
                                     
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    
                                    when others =>
                                        -- THROW ERR
                                end case;

                            when "0000000111" =>
                                -- CMP
                                case Argument3(7 downto 0) is
                                    when "00000000" =>
                                        -- EQU
                                        if Argument2(7 downto 0) = Argument1(7 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000001" =>
                                        -- NEQ
                                        if Argument2(7 downto 0) /= Argument1(7 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000010" =>
                                        -- LEQ
                                        if Argument2(7 downto 0) <= Argument1(7 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000011" =>
                                        -- GEQ
                                        if Argument2(7 downto 0) >= Argument1(7 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000100" =>
                                        -- LT
                                        if Argument2(7 downto 0) < Argument1(7 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when "00000101" =>
                                        -- GT
                                        if Argument2(7 downto 0) > Argument1(7 downto 0) then
                                            Registers(15) <= Registers(15) or x"0000000000000004"; -- ... 01000
                                        end if;

                                        state <= IDLE;
                                    when others =>
                                        -- THROW ERR
                                        Argument3 <= (others => '0');
                                end case;
                            
                            when "0000001100" =>
                                -- MUL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) * signed(Argument2), 64));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001101" =>
                                -- DIV Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(signed(Argument1) / signed(Argument2));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001110" =>
                                -- SUB Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(resize(signed(Argument1) - signed(Argument2), 64));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000001111" =>
                                -- LSR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_right(unsigned(Argument1), to_integer(unsigned(Argument2(7 downto 0)))));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010000" =>
                                -- LSL Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= std_logic_vector(shift_left(unsigned(Argument1), to_integer(unsigned(Argument2(7 downto 0)))));
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010001" =>
                                -- AND Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 and Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010010" =>
                                -- NOT Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= not Argument1;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010011" =>
                                -- OR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 or Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;

                            when "0000010100" =>
                                -- XOR Instruction
                                case stateIndexMain is
                                    when 0 =>
                                        Argument2 <= Argument1 xor Argument2;
                                        stateIndexMain <= 1;
                                    when 1 =>
                                        Registers(to_integer(unsigned(Argument3(4 downto 0))))(7 downto 0) <= Argument2(7 downto 0);
                                        state <= IDLE;
                                        stateIndexMain <= 0;
                                    when others =>
                                end case;
                            
                            when others =>
                                state <= IDLE;
                                -- THROW ERR
                        end case;

                    -- when SAVE_RIP =>
                    --     Argument1 <= x"000000000000000E";
                    --     Argument2 <= Registers(14);
                    --     state <= STORE_REGISTER;
                    --     nextState <= END_CYCLE;

                    -- when END_CYCLE =>
                    --     -- 
                    --     state <= IDLE;
                        
                    when HALT =>
                        if interrupt /= "00000000000000000000000000000000" then
                            state <= IDLE;
                        end if;
                        
                    when others =>
                        state <= IDLE;
                end case;
            end if;
        end if;
    end process;
end Behavioral;