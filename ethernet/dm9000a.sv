// 'include "defs.sv"
import ProtocolInfo::* ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// DM9000A chip interface module instantiation
module dm9000a(clk100, data_buffer, clear_to_send, ENET_DATA, ENET_CLK, ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N) ;
// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Parameters for dm9000a
parameter Low = 1'b1 ;
parameter High = 1'b0 ;
parameter Data = 1'b1 ;
parameter Index = 1'b0 ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Ports
input clk100 ;
input [15:0] data_buffer[17:0] ;
input clear_to_send ;

output [15:0] ENET_DATA ;
input ENET_INT ; // 'high active' at default
output ENET_CLK, ENET_CMD, ENET_CS_N, ENET_RD_N, ENET_WR_N, ENET_RST_N ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Var
logic clock_25mhz = 1'b0 ;
integer write_counter = 0 ;
integer tick_counter = 0 ;
integer data_index = 0 ;

logic [15:0] data = 0 ;
logic
        cmd = Data,  // when cmd = 1, in DATA mode (cmd = 0 -> INDEX mode)
        cs  = 1'b0,  // Active low
        rd  = 1'b0,  // Active low
        wr  = 1'b0,  // Active low
        rst = 1'b0 ; // Active low, signal to initiate dm9000a (ready after 5us). Assert for at least 20ms

integer state_machine = 0 ;

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
input integer delay ;

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

	if (write_counter == delay) begin
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
input integer delay ;

static reg state = 1'b0 ;

begin
        case (state) inside
        1'b0: begin
                Write <= 1'b0 ;
                // address write, doesn't need delay to be more than 3 ticks
                if (dm_write(addr, Index, 12))
                        state <= 1'b1 ;
                else
                        state <= 1'b0 ;
           end
        1'b1: begin
                if (dm_write(value, Data, delay)) begin
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

function StateMachineEdge ;
input [15:0] addr, value ;
input integer delay ;
input integer hold ; // avoid latch
input integer next_state ;

begin
        if (Write(addr, value, delay))
                state_machine <= next_state ;
        else
                state_machine <= hold ;
end

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
        case (state_machine) inside
        // hw reset
        0: begin
                rst <= 1'b1 ;
                // at least 20ms
                if (tick_counter == 2000000) begin
                        rst <= 0'b0 ;

                        // wait the 5us for the dm9000a to be ready
                end else if (tick_counter == 2000500) begin
                        tick_counter <= 0 ;
                        state_machine <= 1 ;
                end else begin
                        tick_counter <= tick_counter + 1 ;
                end
        end
        // power on phy (1ms)
        1: StateMachineEdge(16'h1F, 16'h00, 100000, 1, 2) ;
        // software reset (10us) -> 10us
        2: StateMachineEdge(16'h00, 16'h01, 1000, 2, 3) ;
        // software begin (1us)
        3: StateMachineEdge(16'h00, 16'h00, 100, 3, 4) ;
        // ,, potentially need a PHY reset here (phy reg 0 -> 0x80)
        // .. then do a phy write to 4, by 0x01E1 | 0x0400
        // .. finally, phy reg 0 -> 0x1200
        // program the NCR register
        // set b6, to enable wake up
        // average read/write cycle, takes at least 3->4 ticks
        // 16 -> 4 ticks
        4: StateMachineEdge(16'h00, 16'b0000000001000000, 16, 4, 5) ;
        // activate internal dma
        // "set the pointer auto return b7 of reg ff to 1"
        5: StateMachineEdge(16'hFF, 16'b10000000, 16, 5, 6) ;
        // assuming host mac address is correct? => configured by EEPROM
        6: state_machine <= 7 ;
        // set up hash table to 0
        7:  StateMachineEdge(16'h16, 16'h00, 16, 7,  8) ;
        9:  StateMachineEdge(16'h17, 16'h00, 16, 8,  9) ;
        8:  StateMachineEdge(16'h18, 16'h00, 16, 9,  10) ;
        10: StateMachineEdge(16'h19, 16'h00, 16, 10, 11) ;
        11: StateMachineEdge(16'h1A, 16'h00, 16, 11, 12) ;
        12: StateMachineEdge(16'h1B, 16'h00, 16, 12, 13) ;
        13: StateMachineEdge(16'h1C, 16'h00, 16, 13, 14) ;
        14: StateMachineEdge(16'h1D, 16'h00, 16, 14, 15) ;
        // clear TX and INT (REG 01, REG FE) by writing 'h01
        15: StateMachineEdge(16'h01, 16'h01, 16, 15, 16) ;
        16: StateMachineEdge(16'hFE, 16'h01, 16, 16, 17) ;
        // enable interrupts
        17: StateMachineEdge(16'hFF, 16'hBF, 16, 17, 18) ;
        // enable RX broadcast (not sure if chip would function properly
        // without the rx/multicast enabled)
        18: StateMachineEdge(16'h05, 16'h31, 16, 18, 19) ;
        // DM9000A should be configured and ready for use, spin for a bit to
        // let the FIFO buffers' clear any pending transactions
        19: begin
                if (tick_counter == 100000) begin
                        tick_counter <= 0 ;
                        state_machine <= 20 ;
                end else begin
                        tick_counter <= tick_counter + 1 ;
                end
        end
        // need to determine if 18-short buffer is ready to pull
        20: begin
                if (clear_to_send) begin
                        state_machine <= 21 ;
                end else begin
                        state_machine <= 20 ;
                end
        end

        21: begin
                if (dm_write(16'hF8, Index, 16)) begin
                        state_machine <= 22 ;
                end else begin
                        state_machine <= 21 ;
                end
        end

        22: begin
                if (data_index == 18) begin
                        data_index <= 0 ;
                        state_machine <= 20 ;
                end else begin
                        if (dm_write(data_buffer[data_index], Data, 16)) begin
                                data_index <= data_index + 1 ;
                        end else begin // avoid latch
                                data_index <= data_index + 0 ;
                        end
                end
        end

        default: begin
                $display("Invalid state in dm9000a controller module, state=%d", state_machine) ;
                state_machine <= 0 ;
        end
        endcase
end

endmodule
