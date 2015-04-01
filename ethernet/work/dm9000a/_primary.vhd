library verilog;
use verilog.vl_types.all;
entity dm9000a is
    port(
        clk100          : in     vl_logic;
        ENET_DATA       : out    vl_logic_vector(15 downto 0);
        ENET_CLK        : out    vl_logic;
        ENET_CMD        : out    vl_logic;
        ENET_CS_N       : out    vl_logic;
        ENET_INT        : in     vl_logic;
        ENET_RD_N       : out    vl_logic;
        ENET_WR_N       : out    vl_logic;
        ENET_RST_N      : out    vl_logic
    );
end dm9000a;
