library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
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
        bram_din : in std_logic_vector(63 downto 0);
        bram_dout : out std_logic_vector(63 downto 0);
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
    signal alu_done : STD_LOGIC;

begin
    -- Instantiate Clock Divider
    ClockDivider_inst : entity work.ClockDivider
        Port map (
            clk => clk,
            reset => reset,
            clk_div => clk_div
        );

--    -- Instantiate Register File
--    RegisterFile_inst : entity work.RegisterFile
--        Port map (
--            clk => clk_div,
--            rst => reset,
--            we => write_enable,
--            addr => reg_addr,
--            din => alu_result,
--            dout => reg_data
--        );

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
            reset => reset,
            alu_done => alu_done
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
            mem_write <= '0';
            mem_read <= '0';
        elsif rising_edge(clk_div) then
            if interrupt = '1' then
                -- Handle interrupt
                bram_we <= '0';
            else
                bram_en <= '0';
                -- GET RIP Value
                bram_addr <= "0000000001110"; -- Register 14 (RIP)
                bram_we <= '0'; -- Read
                bram_en <= '1'; -- Enable
                
                -- Increment RIP -- TODO: Use INC Op
                alu_a <= bram_din; -- Data from BRAM
                alu_op <= "000"; -- ADD Op
                alu_b <= "0000000000000000000000000000000000000000000000000000000000000001";
                
                bram_dout <= alu_result;
                bram_we <= '1';
                bram_en <= '1';
            end if;
        end if;
    end process;
end Behavioral;
