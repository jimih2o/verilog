// Idea:
// Make this a state machine.
// Timing = based on clock pulse sizes.
// 40MHz pixel clock for VGA @(60Hz)
// 50MHz supply clock =>
// 1.25Px per clock pulse.
// 1px @ normal = 1.25px @ fast rate
// so... all pixel values = 125% of there
// original size (i.e. needing 4 pixels, you now need 5 to keep timing
// correct). (skew image by 25%)
module vga_interface(clock_50mhz, red, green, blue, scan_line, h_sync, v_sync) ;
parameter PIXEL_DEPTH   = 4 ;
parameter LINE_R        = 4 ;
parameter LINE_G        = 8 ;
parameter LINE_B        = 12 ;
parameter SCREEN_WIDTH  = 800 + 800 / 4 ; // increase 25%
parameter SCREEN_HEIGHT = 600 + 600 / 4 ;
parameter FRONT_PORCH_X = 40 + 40 / 4 ;
parameter FRONT_PORCH_Y = 1 + 1 / 4 ; // this could be a timing issue...

parameter SINK_X        = 128 + 128 / 4 ;
parameter SINK_Y        = 4 + 4 / 4 ;
parameter BACK_PORCH_X  = 88 + 88 / 4 ;

parameter BACK_PORCH_Y  = 23 + 23 / 4 ; // the vertical timing is going to get wonky. 

parameter SCREEN_TOTAL_X = FRONT_PORCH_X + SCREEN_WIDTH + SINK_X + BACK_PORCH_X ;
parameter SCREEN_TOTAL_Y = FRONT_PORCH_Y + SINK_Y + BACK_PORCH_Y ;
parameter TOTAL_PIXELS   = SCREEN_TOTAL_X * SCREEN_HEIGHT + SCREEN_TOTAL_Y ;

// states (for VGA lines)
parameter STATE_BEGIN_FRAME = 0 ;
parameter STATE_BEGIN_LINE  = 1 ;
parameter STATE_SCANLINE    = 2 ;
parameter STATE_END_LINE    = 3 ;
parameter STATE_END_FRAME   = 4 ;
parameter STATE_WAIT_FRAME  = 5 ;

// VGA interfacing
input clock_50mhz ;
output h_sync, v_sync ;
output [(PIXEL_DEPTH - 1) : 0] red, green, blue ;

// pixel interfacing
input [SCREEN_WIDTH * PIXEL_DEPTH * 3 - 1 : 0] scan_line ;

reg hSyncReg = 1, vSyncReg = 1 ;
reg [(PIXEL_DEPTH - 1) : 0] outRed = 0, outGreen = 0, outBlue = 0 ;

reg [3:0] state = STATE_BEGIN_FRAME ;

integer i = 0, j = 0 ;

// main synchronization block
always @(posedge clock_50mhz or posedge wr) begin
	case (state)
	STATE_BEGIN_FRAME: begin
		i = 0 ;
		j = 0 ;
		state = STATE_WAIT_FRAME ;
	end
	
	STATE_WAIT_FRAME: begin
		if (i == FRONT_PORCH_Y) 
			state = STATE_BEGIN_LINE ;
	end
	
	STATE_BEGIN_LINE: begin
		j = j + 1 ;
		
		if (j == FRONT_PORCH_X) begin		
			j = 0 ;
			state = STATE_SCANLINE ;
		end
	end
	
	STATE_SCANLINE: begin
		outRed   = scan_line[j * 3 * PIXEL_DEPTH + LINE_R - 1: j * 3 * PIXEL_DEPTH] ;
		outGreen = scan_line[j * 3 * PIXEL_DEPTH + LINE_G - 1: j * 3 * PIXEL_DEPTH + LINE_R] ;
		outBlue  = scan_line[j * 3 * PIXEL_DEPTH + LINE_B - 1: j * 3 * PIXEL_DEPTH + LINE_G] ;
		
		j = j + 1 ;
		
		if (j == SCREEN_WIDTH) begin
			j = 0 ;
			state = STATE_END_LINE ;
		end
	end
	
	STATE_END_LINE: begin
		if (j == 0) begin 
			hSyncReg = 0 ;
		end else if (j == SINK_X) begin
			hSyncReg = 1 ;
		end 
		
		if (j == SINK_X + BACK_PORCH_X) begin
			j = 0 ;
			
			if (i == TOTAL_PIXELS - BACK_PORCH_Y - SINK_Y) begin
				state = STATE_END_FRAME ;
				vSyncReg = 0 ;
			end else
				state = STATE_BEGIN_LINE ;
			
		end else begin
			j = j + 1 ;
		end
	end
	
	STATE_END_FRAME: begin
		if (i == TOTAL_PIXELS - BACK_PORCH_Y) begin
			vSyncReg = 1 ;
		end else if (i == TOTAL_PIXELS)
			state = STATE_BEGIN_FRAME ;
	end
	
	default: state = STATE_BEGIN_FRAME ;
	endcase 
	
	// increment pixel position
	i = i + 1 ;
end

assign red = outRed ;
assign green = outGreen ;
assign blue = outBlue ;
assign v_sync = vSyncReg ;
assign h_sync = hSyncReg ;

endmodule

