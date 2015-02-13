// Idea:
// Make this a state machine.
// Timing = based on clock pulse sizes.
module vga_interface(clock_25mhz, red, green, blue, scan_line, h_sync, v_sync) ;
parameter PIXEL_DEPTH   = 4 ;
parameter LINE_R        = 4 ;
parameter LINE_G        = 8 ;
parameter LINE_B        = 12 ;
parameter SCREEN_WIDTH  = 640 ;
parameter SCREEN_HEIGHT = 480 ;

parameter FRONT_PORCH_X = 16 ;
parameter SINK_X        = 96 ;
parameter BACK_PORCH_X  = 48 ;

parameter FRONT_PORCH_Y = 10 ;
parameter SINK_Y        = 2 ;
parameter BACK_PORCH_Y  = 33 ; 

// states (for VGA lines)
parameter STATE_BEGIN_FRAME = 0 ;
parameter STATE_BEGIN_LINE  = 1 ;
parameter STATE_SCANLINE    = 2 ;
parameter STATE_END_LINE    = 3 ;
parameter STATE_END_FRAME   = 4 ;
parameter STATE_WAIT_FRAME  = 5 ;

// VGA interfacing
input clock_25mhz ;
output h_sync, v_sync ;
output [(PIXEL_DEPTH - 1) : 0] red, green, blue ;

// pixel interfacing
input [SCREEN_WIDTH * PIXEL_DEPTH * 3 - 1 : 0] scan_line ;

reg hSyncReg = 1, vSyncReg = 1 ;
reg [(PIXEL_DEPTH - 1) : 0] outRed = 0, outGreen = 0, outBlue = 0 ;

reg [3:0] state = STATE_BEGIN_FRAME ;

integer j = 0 ;
integer scanLineCount = 0 ;

// main synchronization block
always @(posedge clock_25mhz) begin
	case (state)
	STATE_BEGIN_FRAME: begin
		j = 0 ;
		state = STATE_WAIT_FRAME ;
		outRed = 4'b0 ;
		outGreen = 4'b0 ;
		outBlue = 4'b0 ;
		scanLineCount = 0 ;
	end
	
	STATE_WAIT_FRAME: begin
		j = j + 1 ;
		if (j == FRONT_PORCH_Y) begin
			state = STATE_BEGIN_LINE ;
			j = 0 ;
		end
		
		outRed = 4'b0 ;
		outGreen = 4'b0 ;
		outBlue = 4'b0 ;
	end
	
	STATE_BEGIN_LINE: begin
		j = j + 1 ;
		
		if (j == FRONT_PORCH_X) begin	
			j = 0 ;
			state = STATE_SCANLINE ;
		end
		
		outRed = 4'b0 ;
		outGreen = 4'b0 ;
		outBlue = 4'b0 ;
	end
	
	STATE_SCANLINE: begin
		outRed[0] = scan_line[j * 3 * PIXEL_DEPTH    ] ;
		outRed[1] = scan_line[j * 3 * PIXEL_DEPTH + 1] ;
		outRed[2] = scan_line[j * 3 * PIXEL_DEPTH + 2] ;
		outRed[3] = scan_line[j * 3 * PIXEL_DEPTH + 3] ;
//		outRed   = scan_line[j * 3 * PIXEL_DEPTH + LINE_R - 1: j * 3 * PIXEL_DEPTH] ;

		outGreen[0] = scan_line[j * 3 * PIXEL_DEPTH + LINE_R    ] ;
		outGreen[1] = scan_line[j * 3 * PIXEL_DEPTH + LINE_R + 1] ;
		outGreen[2] = scan_line[j * 3 * PIXEL_DEPTH + LINE_R + 2] ;
		outGreen[3] = scan_line[j * 3 * PIXEL_DEPTH + LINE_R + 3] ;		
//		outGreen = scan_line[j * 3 * PIXEL_DEPTH + LINE_G - 1: j * 3 * PIXEL_DEPTH + LINE_R] ;

		outBlue[0] = scan_line[j * 3 * PIXEL_DEPTH + LINE_G    ] ;
		outBlue[1] = scan_line[j * 3 * PIXEL_DEPTH + LINE_G + 1] ;
		outBlue[2] = scan_line[j * 3 * PIXEL_DEPTH + LINE_G + 2] ;
		outBlue[3] = scan_line[j * 3 * PIXEL_DEPTH + LINE_G + 3] ;
//		outBlue  = scan_line[j * 3 * PIXEL_DEPTH + LINE_B - 1: j * 3 * PIXEL_DEPTH + LINE_G] ;
		
		j = j + 1 ;
		
		if (j == SCREEN_WIDTH) begin
			j = 0 ;
			state = STATE_END_LINE ;
			outRed = 4'b0 ;
			outGreen = 4'b0 ;
			outBlue = 4'b0 ;
		end
	end
	
	STATE_END_LINE: begin
		outRed = 4'b0 ;
		outGreen = 4'b0 ;
		outBlue = 4'b0 ;
		
		if (j == 0) begin 
			hSyncReg = 0 ;
		end else if (j == SINK_X) begin
			hSyncReg = 1 ;
		end 
		
		if (j == SINK_X + BACK_PORCH_X) begin
			j = 0 ;
			scanLineCount = scanLineCount + 1 ;

			if (scanLineCount == SCREEN_HEIGHT) begin
				state = STATE_END_FRAME ;
				vSyncReg = 0 ;
			end else
				state = STATE_BEGIN_LINE ;
		end else begin
			j = j + 1 ;
		end
	end
	
	STATE_END_FRAME: begin
		outRed = 4'b0 ;
		outGreen = 4'b0 ;
		outBlue = 4'b0 ;
		
		j = j + 1 ;
		
		if (j == SINK_Y) 
			vSyncReg = 1 ;	
		else if (j == SINK_Y + BACK_PORCH_Y) begin
			state = STATE_BEGIN_FRAME ;
			j = 0 ;
		end
	end
	
	default: state = STATE_BEGIN_FRAME ;
	endcase 
end

assign red = outRed ;
assign green = outGreen ;
assign blue = outBlue ;
assign v_sync = vSyncReg ;
assign h_sync = hSyncReg ;

endmodule

