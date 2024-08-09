library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CPU_TB is
end CPU_TB;

architecture Behavioral of CPU_TB is
    signal clock : STD_LOGIC;
    signal reset : STD_LOGIC;
    signal interrupt : STD_LOGIC := '0';
    signal data_in : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal data_out : STD_LOGIC_VECTOR(31 downto 0);
    signal addr : STD_LOGIC_VECTOR(15 downto 0);

    -- Signals for Setup_wrapper
    signal DDR_addr : STD_LOGIC_VECTOR(14 downto 0) := (others => '0');
    signal DDR_ba : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal DDR_cas_n : STD_LOGIC := '1';
    signal DDR_ck_n : STD_LOGIC := '1';
    signal DDR_ck_p : STD_LOGIC := '0';
    signal DDR_cke : STD_LOGIC := '0';
    signal DDR_cs_n : STD_LOGIC := '1';
    signal DDR_dm : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal DDR_dq : STD_LOGIC_VECTOR(31 downto 0) := (others => 'Z');
    signal DDR_dqs_n : STD_LOGIC_VECTOR(3 downto 0) := (others => 'Z');
    signal DDR_dqs_p : STD_LOGIC_VECTOR(3 downto 0) := (others => 'Z');
    signal DDR_odt : STD_LOGIC := '0';
    signal DDR_ras_n : STD_LOGIC := '1';
    signal DDR_reset_n : STD_LOGIC := '1';
    signal DDR_we_n : STD_LOGIC := '1';
    signal FIXED_IO_ddr_vrn : STD_LOGIC := '0';
    signal FIXED_IO_ddr_vrp : STD_LOGIC := '0';
    signal FIXED_IO_mio : STD_LOGIC_VECTOR(53 downto 0) := (others => '0');
    signal FIXED_IO_ps_clk : STD_LOGIC := '0';
    signal FIXED_IO_ps_porb : STD_LOGIC := '1';
    signal FIXED_IO_ps_srstb : STD_LOGIC := '1';

begin
    -- Clock generation
    clock <= not clock after 5 ns;

    -- Instantiate the Setup_wrapper
    uut: entity work.Setup_wrapper
        port map (
            DDR_addr => DDR_addr,
            DDR_ba => DDR_ba,
            DDR_cas_n => DDR_cas_n,
            DDR_ck_n => DDR_ck_n,
            DDR_ck_p => DDR_ck_p,
            DDR_cke => DDR_cke,
            DDR_cs_n => DDR_cs_n,
            DDR_dm => DDR_dm,
            DDR_dq => DDR_dq,
            DDR_dqs_n => DDR_dqs_n,
            DDR_dqs_p => DDR_dqs_p,
            DDR_odt => DDR_odt,
            DDR_ras_n => DDR_ras_n,
            DDR_reset_n => DDR_reset_n,
            DDR_we_n => DDR_we_n,
            FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
            FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
            FIXED_IO_mio => FIXED_IO_mio,
            FIXED_IO_ps_clk => FIXED_IO_ps_clk,
            FIXED_IO_ps_porb => FIXED_IO_ps_porb,
            FIXED_IO_ps_srstb => FIXED_IO_ps_srstb
        );

    -- Test process
    process
    begin
        -- Simulate normal operation
        -- Add your test stimulus here
        -- Example stimulus for read and write operations
--        address_0 <= x"00000010";
--        write_data_0 <= x"DEADBEEF";
--        mem_write_0 <= '1';
--        wait for 20 ns;
--        mem_write_0 <= '0';

--        wait for 200 ns;

--        address_0 <= x"00000010";
--        mem_read_0 <= '1';
--        wait for 20 ns;
--        mem_read_0 <= '0';

        -- Continue simulation
        wait;
    end process;
end Behavioral;
