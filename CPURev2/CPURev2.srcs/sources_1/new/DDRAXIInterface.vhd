library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AXI_Master is
    Port (
        -- AXI write address channel
        M_AXI_AWADDR : out STD_LOGIC_VECTOR(31 downto 0);  -- 32-bit address
        M_AXI_AWVALID : out STD_LOGIC;
        M_AXI_AWREADY : in STD_LOGIC;

        -- AXI write data channel
        M_AXI_WDATA : out STD_LOGIC_VECTOR(31 downto 0);   -- 32-bit data
        M_AXI_WSTRB : out STD_LOGIC_VECTOR(3 downto 0);    -- Write strobe for 32-bit data
        M_AXI_WVALID : out STD_LOGIC;
        M_AXI_WREADY : in STD_LOGIC;

        -- AXI write response channel
        M_AXI_BRESP : in STD_LOGIC_VECTOR(1 downto 0);
        M_AXI_BVALID : in STD_LOGIC;
        M_AXI_BREADY : out STD_LOGIC;

        -- AXI read address channel
        M_AXI_ARADDR : out STD_LOGIC_VECTOR(31 downto 0);  -- 32-bit address
        M_AXI_ARVALID : out STD_LOGIC;
        M_AXI_ARREADY : in STD_LOGIC;

        -- AXI read data channel
        M_AXI_RDATA : in STD_LOGIC_VECTOR(31 downto 0);    -- 32-bit read data
        M_AXI_RRESP : in STD_LOGIC_VECTOR(1 downto 0);
        M_AXI_RVALID : in STD_LOGIC;
        M_AXI_RREADY : out STD_LOGIC;

        -- Custom signals
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        start_read : in STD_LOGIC;
        start_write : in STD_LOGIC;
        write_data : in STD_LOGIC_VECTOR(31 downto 0);    -- 32-bit write data
        read_data : out STD_LOGIC_VECTOR(31 downto 0);    -- 32-bit read data
        address : in STD_LOGIC_VECTOR(31 downto 0);        -- 32-bit address
        done : out STD_LOGIC;
        err : out STD_LOGIC;
        interrupt : out STD_LOGIC
    );
end AXI_Master;

architecture Behavioral of AXI_Master is
    type state_type is (IDLE, WRITE, WRITE_RESP, READ, READ_RESP);
    signal state : state_type := IDLE;

begin
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
            M_AXI_AWVALID <= '0';
            M_AXI_WVALID <= '0';
            M_AXI_BREADY <= '0';
            M_AXI_ARVALID <= '0';
            M_AXI_RREADY <= '0';
            done <= '0';
            err <= '0';
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    if start_write = '1' then
                        state <= WRITE;
                        M_AXI_AWADDR <= address;
                        M_AXI_AWVALID <= '1';
                        M_AXI_WDATA <= write_data;
                        M_AXI_WSTRB <= "1111";  -- Strobe for all 32 bits
                        M_AXI_WVALID <= '1';
                    elsif start_read = '1' then
                        state <= READ;
                        M_AXI_ARADDR <= address;
                        M_AXI_ARVALID <= '1';
                    end if;

                when WRITE =>
                    if M_AXI_AWREADY = '1' and M_AXI_WREADY = '1' then
                        state <= WRITE_RESP;
                        M_AXI_AWVALID <= '0';
                        M_AXI_WVALID <= '0';
                        M_AXI_BREADY <= '1';
                    end if;

                when WRITE_RESP =>
                    if M_AXI_BVALID = '1' then
                        state <= IDLE;
                        M_AXI_BREADY <= '0';
                        done <= '1';  -- Indicate write is complete
                    end if;

                when READ =>
                    if M_AXI_ARREADY = '1' then
                        state <= READ_RESP;
                        M_AXI_ARVALID <= '0';
                        M_AXI_RREADY <= '1';
                    end if;

                when READ_RESP =>
                    if M_AXI_RVALID = '1' then
                        state <= IDLE;
                        read_data <= M_AXI_RDATA;
                        M_AXI_RREADY <= '0';
                        done <= '1';  -- Indicate read is complete
                    end if;

            end case;
        end if;
    end process;

end Behavioral;
