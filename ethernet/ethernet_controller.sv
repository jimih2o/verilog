import ProtocolInfo::* ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Top Level Module for ethernet interface
module ethernet_controller(CLOCK_50, GPIO_1, ENET_DATA, ENET_CLK, ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N) ;
// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Ports
input CLOCK_50 ;
input [15:0] GPIO_1 ;


output [15:0] ENET_DATA ;
input ENET_INT ;
output ENET_CLK, ENET_CMD, ENET_CS_N, ENET_RD_N, ENET_WR_N, ENET_RST_N ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Var
// data buffer
// logic [15:0] data_buffer[17:0] ;

// 18*16bits data, 4*16bits udp, 11*16bits IP, 10*16bits ethernet
parameter packetLength = 16'd18 + 16'd4 /*+ 16'd11*/ + 16'd10 ;
logic [15:0] packet_length = packetLength ;
logic [15:0] packet[packetLength-1:0] ;

logic clear_to_send = 0 ;
// keeps track of how many ticks have passed for each sample
integer clock_counter = 0 ;
// integer sample_index = 0 ;
integer place = 8 ;
integer packet_state = 0 ;

dm9000a DM9000A(.*, .clk50(CLOCK_50)) ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Generate Packet
//		DATA
// 	    UDP DATA
//       IP UDP DATA
//  ETHO IP UDP DATA
// function void GeneratePacket ;
// begin : PacketCreationBlk
//
// end
// endfunction

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Sampling
// clock = 100MHz
// want to sample at 10000Hz * (18 samples) = 180000 samples/second
// 100Mhz => 180000Hz
// 10ns per clock
// want 1/1800 seconds for a reading
// 5.556us =>
// 5,556ns
// rounding to nearest 10ns
// 5,560ns
// 556 clocks between samples
always_ff @(posedge CLOCK_50) begin
	if (clock_counter == 278) begin
		clock_counter <= 0 ;

//		data_buffer[sample_index] <=  ;

//		if (sample_index == 17) begin
//			sample_index <= 0 ;
//			clear_to_send <= 1 ;
//			GeneratePacket() ;
//		end else begin
//			sample_index <= sample_index + 1 ;
//			clear_to_send <= 0 ;
//		end
	case (packet_state)
	8: begin
		place <= 0 ;
		clear_to_send <= 1'b0 ;
		packet_state <= 0 ;
	end

	// DATA ////
	// build packet from the top down
	0: begin
		clear_to_send <= 1'b0 ;
		packet[packet_length - place - 1] <= GPIO_1 ; // data_buffer[i] ;
		place <= place + 1 ;

		if (place >= 17) begin
			packet_state <= 1 ;
		end else begin
			packet_state <= 0 ;
		end
	end

	// UDP ////
	// add in UDP header
	// 0[source port]16[dest port]32[length]48[checksum]
	// checksum 16bits (this can be zeros)
	//. calculate checksum
	1: begin : UDPChecksumBlk
		packet[packet_length - place - 1] <= 16'b0 ;
		place <= place + 1 ;
		packet_state <= 2 ;
	end

	// length 16bits
	//. input udp data length (including header (8 bytes))
	2: begin : UDPDataLen
		packet[packet_length - place - 1] <= (16'd18 + 16'd4) * 16'd2 ;
		place <= place + 1 ;
		packet_state <= 3 ;
	end

	// dest port 16bits
	3: begin : UDP_PortDest
		packet[packet_length - place - 1] <= UDP_Port ;
		place <= place + 1 ;
		packet_state <= 4 ;
	end

	// source port 16bits
	4: begin : UDP_PortSrc
		packet[packet_length - place - 1] <= UDP_Port ;
		place <= place + 1 ;
		packet_state <= 5 ;
	end

/* trying without IP address
	// IP //// 22 bytes
	// ip dest
	5: begin
		//.
	end

	// ip source
	6: begin
		//.
	end

	// IP check sum
	//. 16 bits  (2bytes)
	place <= place + 1 ;
	packet[packet_length - place - 2] <= IP_CheckSum ;

	// IP information
	//. 12 bytes
	place <= place + 1 ;
	packet[packet_length - place - 2] <= 16'h1180 ;
	place <= place + 1 ;
	packet[packet_length - place - 2] <= 16'h0000 ;
	place <= place + 1 ;
	packet[packet_length - place - 2] <= 16'h0000 ;
	place <= place + 1 ;
	packet[packet_length - place - 2] <= 16'h2E00 ;
	place <= place + 1 ;
	packet[packet_length - place - 2] <= 16'h0045 ;
	place <= place + 1 ;
	packet[packet_length - place - 2] <= 16'h0008 ;
*/

	// ETHO //// 12bytes + 8 bytes preamble
	// MAC src (0-10)
	5: begin
		packet[packet_length - place - 1] <= (MAC_src >> ((place - 22) * 16)) & 16'hFFFF ;

		place <= place + 1 ;
		// 24 => 25 next round
		if (place == 24) begin
			packet_state <= 6 ;
		end else begin
			packet_state <= 5 ;
		end
	end

	// MAC dest
	6: begin
		packet[packet_length - place - 1] <= (MAC_dest >> ((place - 25) * 16)) & 16'hFFFF ;

		place <= place + 1 ;
		// 27 => 28 next round
		if (place == 27) begin
			packet_state <= 7 ;
		end else begin
			packet_state <= 6 ;
		end
	end

	// preamble
	7: begin
		packet[0] <= 16'h5555 ;
		packet[1] <= 16'h5555 ;
		packet[2] <= 16'h5555 ;
		packet[3] <= 16'h55D5 ;
		clear_to_send <= 1'b1 ;
		packet_state <= 8 ;
	end

	default: packet_state <= 8 ;
	endcase

	// now can calculate the checksum for the whole ethernet frame -- this may
	// actually happen on board the dm9000a
	end else begin
		clock_counter <= clock_counter + 1 ;
	end
end

endmodule // ethernet_controller

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Testbench Driver
// synthesis translate off
module testbench ;

logic [15:0] in = 16'b0 ;
logic clk = 1'b0 ;

always #20 clk = ~clk ;

logic [15:0] ENET_DATA ;
logic ENET_CLK, ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N ;

function void DisplayEnetInterface ;
begin
	$display("ENET_DATA = %h", ENET_DATA) ;
	$display("CMD=%d, CS=%d, INT=%d, RD=%d, WR=%d, RST=%d", ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N) ;
end
endfunction

ethernet_controller enet(clk, in, ENET_DATA,ENET_CLK, ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N) ;

always @(ENET_DATA or ENET_CMD or ENET_WR_N) DisplayEnetInterface() ;

initial begin : blk1
	logic [15:0] i ;
	#2790

	// Test Sampling
	for (i = 0; i < 18; i = i + 1) begin
		in = i ; #2790 ;
	end

	in = 32 ;

	for (i = 0; i < 18; i = i + 1) begin
		$display("snapshot[%d] = %d", i, enet.packet[enet.packet_length - i - 1]) ;
	end

	#(1000*278)
	for (i = 0; i < enet.packet_length; i = i + 1) begin
		$display("packet[%d] = %h", i, enet.packet[i]) ;
	end

	#(1000*278)
	DisplayEnetInterface() ;


	#(1000*278)
	DisplayEnetInterface() ;

	#(1000*278)
	DisplayEnetInterface() ;

	#(1000*278)
	DisplayEnetInterface() ;

	#(1000*278)
	DisplayEnetInterface() ;

	#(1000*278)
	DisplayEnetInterface() ;

	#(1000*278)
	DisplayEnetInterface() ;

	while (ENET_RST_N == 0) #100 ;
end

endmodule
// synthesis translate on
