// 'include "defs.sv"
import ProtocolInfo::* ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// DM9000A chip interface module instantiation
module dm9000a(clk100, ENET_DATA, ENET_CLK, ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N) ;
// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Parameters for dm9000a
parameter Low = 1'b1 ;
parameter High = 1'b0 ;
parameter Data = 1'b1 ;
parameter Index = 1'b0 ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Ports
input clk100 ;

output [15:0] ENET_DATA ;
input ENET_INT ; // 'high active' at default
output ENET_CLK, ENET_CMD, ENET_CS_N, ENET_RD_N, ENET_WR_N, ENET_RST_N ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Var
logic clock_25mhz = 1'b0 ;
integer write_counter = 0 ;

logic [15:0] data = 0 ;
logic 
        cmd = Data,     // when cmd = 1, in DATA mode (cmd = 0 -> INDEX mode)
        cs  = 1'b0,    // Active low
        rd  = 1'b0,    // Active low 
        wr  = 1'b0,    // Active low
        rst = 1'b0 ;  // Active low, signal to initiate dm9000a (ready after 5us). Assert for at least 20ms

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// WRITE
// requires:
// a hold time of 3ns
// a setup time of 10ns
// a signal 'on time' of at least 10 ns
// at least 2 clocks between commands
function dm_write ;
input [15:0] value ;
input mode ;
begin
	if (write_counter == 0) begin
		// setup time (10ns)
		data <= value ;
                cmd <= mode ;
	end else if (write_counter == 2) begin
		// width (2 ticks)
                rd <= 1'b0 ;
                wr <= 1'b1 ;
	end else if (write_counter == 9) begin
		// hold time (10ns)
                rd <= 1'b0 ;
                wr <= 1'b0 ;
	end

	if (write_counter == 10) begin
		write_counter <= 0 ;
                dm_write <= 1'b1 ;
	end else begin 
		write_counter <= write_counter + 1 ;
                dm_write <= 1'b0 ;
	end
end

endfunction

// write addr, write value
function Write ;
input [15:0] addr ;
input [15:0] value ;

reg state = 1'b0 ;

begin
        case (state)
        0: begin
                Write <= 1'b0 ;
                if (dm_write(addr, Index))
                        state <= 1'b1 ;
                else
                        state <= 1'b0 ;
           end
        1: begin
                if (dm_write(value, Data)) begin
                        state <= 1'b0 ;
                        Write <= 1'b1 ;
                end else begin
                        state <= 1'b1 ;
                        Write <= 1'b0 ;
                end
           end
        default: $display("Index Out of Range: Write -- case(state)") ;
        endcase
end

endfunction

function void Transmit ;

endfunction

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Assignments
assign ENET_CLK   = clock_25mhz ;
assign ENET_DATA  = data ;
assign ENET_CMD   = cmd ;
assign ENET_CS_N  = High ; // Only use WR/RD to control direction
assign ENET_RD_N  = ~rd ;
assign ENET_WR_N  = ~wr ;
assign ENET_RST_N = ~rst ;

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
