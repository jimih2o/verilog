// 'include "defs.sv"
import ProtocolInfo::* ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// DM9000A chip interface module instantiation
module dm9000a(clk100, ENET_DATA, ENET_CLK, ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N) ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Ports
input clk100 ;

output [15:0] ENET_DATA ;
input ENET_INT ;
output ENET_CLK, ENET_CMD, ENET_CS_N, ENET_RD_N, ENET_WR_N, ENET_RST_N ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Var
logic clock_25mhz = 0 ;
integer write_counter = 0 ;

logic [15:0] data = 0 ;
logic cmd = 0, cs = 0, rd = 0, wr = 0, rst = 0 ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// WRITE
// requires:
// a hold time of 3ns
// a setup time of 10ns
// a signal 'on time' of at least 10 ns
// at least 2 clocks between commands
function void Write ;
input [15:0] value ;
input is_command ;
begin
	if (write_counter == 0) begin
		// setup time
		
	end else if (write_counter == 1) begin
		// width
		
	end else if (write_counter == 4) begin
		// hold time
		
	end

	if (0) begin
		write_counter <= 0 ;
	end else begin 
		write_counter <= write_counter + 1 ;
	end
end

endfunction


// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Assignments
assign ENET_CLK = clock_25mhz ;
assign ENET_DATA = data ;
assign ENET_CMD = cmd ;
assign ENET_CS_N = cs ;
assign ENET_RD_N = rd ;
assign ENET_WR_N = wr ;
assign ENET_RST_N = rst ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Clock 25MHz
logic [2:0] divider = 0 ;
always_ff @(clk100) begin
	if (divider == 3'd4) begin
		clock_25mhz <= ~clock_25mhz ;
		divider <= 0 ;
	end else begin
		divider <= divider + 3'b1 ;
	end
end

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Main logic
always_ff @(clk100) begin
	
end

endmodule
