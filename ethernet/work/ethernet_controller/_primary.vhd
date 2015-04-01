library verilog;
use verilog.vl_types.all;
entity ethernet_controller is
    port(
        CLK             : in     vl_logic;
        GPIO_1          : in     vl_logic_vector(15 downto 0)
    );
end ethernet_controller;
