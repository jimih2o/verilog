// 'include "defs.sv"
import ProtocolInfo::* ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// WRITE -- handles timing
// requires:
// a hold time of 3ns
// a setup time of 10ns
// a signal 'on time' of at least 10 ns
// at least 2 clocks between commands
module dm_write(en, clk50,value,mode,delay,done, data,cmd,rd,wr) ;
input clk50 ;
input [15:0] value ;
input logic mode, en ;
input integer delay ;
output logic done = 0 ;

output logic [15:0] data ;
output logic
        cmd,  // when cmd = 1, in DATA mode (cmd = 0 -> INDEX mode)
        rd ,  // Active low
        wr ;  // Active low

integer write_counter = 0 ;

assign data = value ;

always_ff @(posedge clk50) begin
        if (en) begin
        	if (write_counter == 0) begin
        		// setup time (10ns)
//                        data <= value ;
                        cmd <= mode ;
        	end else if (write_counter == 2) begin
        		// width (2 ticks)
                        rd <= 1'b0 ;
                        wr <= 1'b1 ;
        	end else if (write_counter == 7) begin
        		// hold time (10ns)
                        rd <= 1'b0 ;
                        wr <= 1'b0 ;
        	end

        	if (write_counter == delay) begin
        		write_counter <= 0 ;
                        done <= 1'b1 ;
        	end else begin
        		write_counter <= write_counter + 1 ;
                        done <= 1'b0 ;
        	end
        end else begin
                write_counter <= 0 ;
//                data <= value ;
                cmd <= mode ;
                rd <= 1'b0 ;
                wr <= 1'b0 ;
                done <= 1'b1 ;
        end
end

endmodule

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// DM9000A chip interface module instantiation
module dm9000a(
        clk50,
        packet,
        clear_to_send,
        packet_length,
        ENET_DATA,
        ENET_CLK,
        ENET_CMD,
        ENET_CS_N,
        ENET_INT,
        ENET_RD_N,
        ENET_WR_N,
        ENET_RST_N) ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Ports
input clk50 ;
input [15:0] packet[31:0] ;
input clear_to_send ;
input [15:0] packet_length ;

output [15:0] ENET_DATA ;
input ENET_INT ; // 'high active' at default
output ENET_CLK, ENET_CMD, ENET_CS_N, ENET_RD_N, ENET_WR_N, ENET_RST_N ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Var
logic clock_25mhz = 1'b0 ;
integer tick_counter = 0 ;
integer data_index = 0 ;
integer write_mode = 0 ;
integer write_start = 0 ;

logic [15:0] data ;
logic
        cmd,  // when cmd = 1, in DATA mode (cmd = 0 -> INDEX mode)
        rd,  // Active low
        wr,  // Active low
        rst = 1'b0 ; // Active low, signal to initiate dm9000a (ready after 5us). Assert for at least 20ms

integer state_machine = 0 ;

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
logic divider = 1'b0 ;
always_ff @(posedge clk50) begin
	if (divider == 1'b1) begin
		clock_25mhz <= ~clock_25mhz ;
		divider <= 1'b0 ;
	end else begin
		divider <= 1'b1 ;
	end
end

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// state machine macros for syntactic sugar
logic [15:0] b_data = 16'b0, addr, value ;
integer delay = 12, wait_time = 12 ;
logic done, b_done ;
logic mode = Index, set_mode = Index ;
logic en = 1'b0 ;

// module handles write timing
dm_write writer(en, clk50, b_data, mode, delay, b_done, data,cmd,rd,wr) ;

`define StateMachineEdge(a, v, _delay, s1, s2) begin \
        data_index <= 0 ;                            \
        tick_counter <= 0 ;                          \
        rst <= 1'b0 ;                                \
        write_start <= 1 ;                           \
        addr <= a ;                                  \
        value <= v ;                                 \
        wait_time <= _delay ;                        \
        if (done) state_machine <= s2 ;              \
        else state_machine <= s1 ;                   \
end

`define RawWrite(d, m, _delay, exptrue, expfalse) begin \
        tick_counter <= 0 ;                             \
        rst <= 1'b0 ;                                   \
        write_start <= 3 ;                              \
        addr <= 16'b0 ;                                 \
        value <= d ;                                    \
        wait_time <= _delay ;                           \
        set_mode <= m ;                                 \
        if (done) exptrue ;                             \
        else expfalse ;                                 \
end

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Write Logic
always_ff @(posedge clk50) begin
        case (write_mode)
        0: begin
                en <= 1'b0 ;
                mode <= Index ;
                delay <= 12 ;
                done <= 1'b1 ;
                b_data <= 16'b0 ;

                write_mode <= write_start ;
        end
        1: begin
                en <= 1'b1 ;
                done <= 1'b0 ;
                delay <= 12 ;
                mode <= Index ;
                b_data <= addr ;

                if (b_done)
                        write_mode <= 2 ;
                else
                        write_mode <= 1 ;
        end
        2: begin
                en <= 1'b1 ;
                delay <= wait_time ;
                mode <= Data ;
                b_data <= value ;

                if (b_done) begin
                        write_mode <= 0 ;
                        done <= 1'b1 ;
                end else begin
                        write_mode <= 2 ;
                        done <= 1'b0 ;
                end
           end
        3: begin
                en <= 1'b1 ;
                delay <= wait_time ;
                mode <= set_mode ;
                b_data <= value ;

                if (b_done) begin
                        write_mode <= 0 ;
                        done <= 1'b1 ;
                end else begin
                        write_mode <= 3 ;
                        done <= 1'b0 ;
                end
        end
        default: begin
                $display("Index Out of Range: Write -- case(state)") ;
                en <= 1'b0 ;
                mode <= Index ;
                delay <= 12 ;
                done <= 1'b1 ;
                b_data <= 16'b0 ;

                write_mode <= write_start ;
        end
        endcase
end

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Main logic
always_ff @(posedge clk50) begin
        case (state_machine)
        // hw reset
        0: begin
                write_start <= 0 ;
                addr <= 16'b0 ;
                value <= 16'b0 ;
                wait_time <= 12 ;
                set_mode <= Index ;
                data_index <= 0 ;

                // at least 20ms
                if (tick_counter < 1000000)
                        rst <= 1'b1 ;
                else
                        rst <= 1'b0 ;

                if (tick_counter == 1000250) begin
                        tick_counter <= 0 ;
                        state_machine <= 1 ;
                end else begin
                        tick_counter <= tick_counter + 1 ;
                        state_machine <= 0 ;
                end
        end
        // power on phy (1ms)
        1: `StateMachineEdge(16'h1F, 16'h00, 50000, 1, 2)
        // software reset (10us) -> 10us
        2: `StateMachineEdge(16'h00, 16'h01, 500, 2, 3)
        // software begin (1us)
        3: `StateMachineEdge(16'h00, 16'h00, 50, 3, 4)
        // ,, potentially need a PHY reset here (phy reg 0 -> 0x80)
        // .. then do a phy write to 4, by 0x01E1 | 0x0400
        // .. finally, phy reg 0 -> 0x1200
        // program the NCR register
        // set b6, to enable wake up
        // average read/write cycle, takes at least 3->4 ticks
        // 16 -> 4 ticks
        4: `StateMachineEdge(16'h00, 16'b0000000001000000, 12, 4, 5)
        // activate internal dma
        // "set the pointer auto return b7 of reg ff to 1"
        5: `StateMachineEdge(16'hFF, 16'b10000000, 12, 5, 6)
        // assuming host mac address is correct? => configured by EEPROM
        6: begin
		state_machine <= 7 ;
                rst <= 1'b0 ;
                tick_counter <= 0 ;
                write_start <= 0 ;
                addr <= 16'b0 ;
                value <= 16'b0 ;
                wait_time <= 12 ;
                set_mode <= Index ;
                data_index <= 0 ;
	end
        // set up hash table to 0
        7:  `StateMachineEdge(16'h16, 16'h00, 12, 7,  8)
        9:  `StateMachineEdge(16'h17, 16'h00, 12, 8,  9)
        8:  `StateMachineEdge(16'h18, 16'h00, 12, 9,  10)
        10: `StateMachineEdge(16'h19, 16'h00, 12, 10, 11)
        11: `StateMachineEdge(16'h1A, 16'h00, 12, 11, 12)
        12: `StateMachineEdge(16'h1B, 16'h00, 12, 12, 13)
        13: `StateMachineEdge(16'h1C, 16'h00, 12, 13, 14)
        14: `StateMachineEdge(16'h1D, 16'h00, 12, 14, 15)
        // clear TX and INT (REG 01, REG FE) by writing 'h01
        15: `StateMachineEdge(16'h01, 16'h01, 12, 15, 16)
        16: `StateMachineEdge(16'hFE, 16'h01, 12, 16, 17)
        // enable interrupts
        17: `StateMachineEdge(16'hFF, 16'hBF, 12, 17, 18)
        // enable RX broadcast (not sure if chip would function properly
        // without the rx/multicast enabled)
        18: `StateMachineEdge(16'h05, 16'h31, 12, 18, 19)
        // DM9000A should be configured and ready for use, spin for a bit to
        // let the FIFO buffers' clear any pending transactions
        19: begin
                rst <= 1'b0 ;
                write_start <= 0 ;
                addr <= 16'b0 ;
                value <= 16'b0 ;
                wait_time <= 12 ;
                set_mode <= Index ;
                data_index <= 0 ;

                if (tick_counter == 50000) begin
                        tick_counter <= 0 ;
                        state_machine <= 20 ;
                end else begin
                        tick_counter <= tick_counter + 1 ;
                        state_machine <= 19 ;
                end
        end
        // need to determine if 18-short buffer is ready to pull
        20: begin
                rst <= 1'b0 ;
                tick_counter <= 0 ;
                write_start <= 0 ;
                addr <= 16'b0 ;
                value <= 16'b0 ;
                wait_time <= 12 ;
                set_mode <= Index ;
                data_index <= 0 ;

                if (clear_to_send) begin
                        state_machine <= 21 ;
                end else begin
                        state_machine <= 20 ;
                end
        end

        // tell the dm9000a that we're going to fill sram
        21: begin
                data_index <= 0 ;
        /*
                if (dm_write(16'hF8, Index, 16)) begin
                        state_machine <= 22 ;
                end else begin
                        state_machine <= 21 ;
                end
                */
                `RawWrite(16'hF8, Index, 8, state_machine <= 22, state_machine <= 21) ;
        end

        // write the packet into sram
        22: begin
                if (data_index == packet_length) begin
                        data_index <= 0 ;
                        state_machine <= 23 ;
                end else begin
                        /* if (dm_write(packet[data_index], Data, 16)) begin
                                data_index <= data_index + 1 ;
                        end else begin // avoid latch
                                data_index <= data_index + 0 ;
                        end
                        */
                        `RawWrite(packet[data_index], Data, 8, data_index <= data_index + 1, data_index <= data_index + 0) ;
			state_machine <= 22 ;
                end
        end

        // tell the dm9000a the packet length
        23: `StateMachineEdge(16'hFD, (packet_length >> 16'd8) & 16'hFF, 12, 23, 24)
        24: `StateMachineEdge(16'hFC, (packet_length) & 16'hFF, 12, 24, 25)

        // request TX
        25: `StateMachineEdge(16'h02, 16'h01, 12, 25,26) // bit2,1 = 0 -> append crc, padding

        // pull for TX complete -- potentially need to clear interrupt status
        26: begin
                rst <= 1'b0 ;
                tick_counter <= 0 ;
                write_start <= 0 ;
                addr <= 16'b0 ;
                value <= 16'b0 ;
                wait_time <= 12 ;
                set_mode <= Index ;
                data_index <= 0 ;

                if (ENET_INT) state_machine <= 20 ;
                else state_machine <= 26 ;
        end
//        27: `StateMachineEdge() // clear interrupt status

        default: begin
                $display("Invalid state in dm9000a controller module, state=%d", state_machine) ;
                state_machine <= 0 ;
                rst <= 1'b0 ;
                tick_counter <= 0 ;
                write_start <= 0 ;
                addr <= 16'b0 ;
                value <= 16'b0 ;
                wait_time <= 12 ;
                set_mode <= Index ;
                data_index <= 0 ;
        end
        endcase
end

endmodule
