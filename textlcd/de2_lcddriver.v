module de2_lcddriver(CLOCK_50, LCD_ON, LCD_DATA, LCD_EN, LCD_RW, LCD_RS, LCD_BLON, SW) ;
output LCD_ON ;
output LCD_BLON ;

output reg LCD_EN = 1'b0, 
	   LCD_RW = 1'b0, 
	   LCD_RS = 1'b0 ;
	   
output reg [7:0] LCD_DATA = 8'b0 ;

input CLOCK_50 ;
input [0:0] SW ;

// 2x16 digits
reg [127:0] message[1:0] ;

// need a lot of resolution
reg [31:0] counter = 0 ;
// 80 => 2^7
reg [6:0] charNum = 7'b0 ;

// state definitions
`define STATE_INIT    4'b0000
`define STATE_POWERON 4'b0001
`define STATE_FSET0   4'b0010
`define STATE_FSET1   4'b0011
`define STATE_DISPON  4'b0100
`define STATE_CLEAR   4'b0101
`define STATE_MODESET 4'b0110
`define STATE_RENDER  4'b0111
`define STATE_IDLE    4'b1000
reg [3:0] state = `STATE_INIT ;

task WriteCharacter ;
// can see 'globals' from here
input [127:0] cstr ;

begin
	if (counter < 4) begin
		LCD_RS <= 1'b1 ;
		LCD_RW <= 1'b0 ;
		LCD_EN <= 1'b0 ;
	end else if (counter < 25) begin
		if (charNum < 7'd40) begin
			LCD_DATA <= (cstr >> ((7'd15 - charNum) << 3)) ;
		end else begin 
			LCD_DATA <= (cstr >> ((7'd15 - (charNum - 7'd40)) << 3)) ;
		end
		
		LCD_EN <= 1'b1 ;
	end else if (counter < 30) begin
		LCD_EN <= 1'b0 ;
	end
end

endtask

initial begin
	message[0] = "   Jimi Huard   " ;
	message[1] = ">------*-------<" ;
end

// turn on LCD 
assign LCD_ON = 1'b1 ;

// turn on back light (my screen is hard to see)
assign LCD_BLON = SW[0] ; // the backlight does not appear to function.

// T_clk = 20ns
always @(posedge CLOCK_50) begin
	case (state)
	`STATE_INIT : begin
		// we've just started the system, so we need to
		// power on
		state <= `STATE_POWERON ;
		
		// initialize 'clocks' to zero
		counter <= 0 ;
	end
	`STATE_POWERON : begin
		// we need to allow the system to be 'on' for at least
		// 15ms. T = 20ns = 20*10^-6ms => 15000000ns for power
		// on => 15000000/20 => 7500000 clocks
		if (counter == 7500000) begin
			state <= `STATE_FSET0 ;
			counter <= 0 ;
		end else begin
			counter <= counter + 1 ;
		end
	end
	`STATE_FSET0 : begin
		// configure the initial data 8'0011****
		// and RS = 0, RW = 0 for >4.1ms
		// the FS is specified as:
		// (00)001(DL)NF--
		// DL = interface type 8/4bit
		// N = # lines (2/1)
		// F = font type (5x11 or 5x8)
		// as we want to have 8 bits @ 2 lines for 5x11->
		//      RS RW DATA
		// FS = 0   0 00111100 (0->x)
		
		// as we have to respect set up times for write operations,
		// we must have the proper times for LCD_EN, and the setup
		// and hold times.
		// here we need to ensure it's on for at least 4.1ms
		// so, that will take 410000/2 = 205000 clocks
		// also, must respect the data hold time, which is 
		// actually located of the falling edge of the Enable line.
		// so we must hold data for at least 1 clock after the enable
		// line is pulled down
		
		// the enable line is a strobe!!
		if (counter < 4) begin
			// have to set up the  RS, RW lines prior to enabling
			// the strobe
			LCD_RS <= 1'b0 ;
			LCD_RW <= 1'b0 ;
			LCD_EN <= 1'b0 ;
		end else if (counter < 25) begin
			// need to wait for at least 25 clocks (500ns) on the
			// enable strobe
			LCD_DATA <= 8'b00111100 ;
			LCD_EN <= 1'b1 ;
		end else if (counter < 30) begin
			// respect data setup time of 80ns
			LCD_EN <= 1'b0 ;
		end
		
		// data hold will be respected here
		// basically, just waiting for mcu to finish spinning
		if (counter == 205000) begin
			counter <= 0 ;
			state <= `STATE_FSET1 ;
		end else begin
			counter <= counter + 1 ;
		end
	end
	
	`STATE_FSET1 : begin
		// here, we will be doing the same configuration as infer
		// the first initialization state, but we only need to hold
		// it for the 39us that are prescribed by the IR timing tables
		// 39us = 39000ns -> 3900/2 = 1950 clocks
		// the enable line is a strobe!!
		if (counter < 4) begin
			// have to set up the  RS, RW lines prior to enabling
			// the strobe
			LCD_RS <= 1'b0 ;
			LCD_RW <= 1'b0 ;
			LCD_EN <= 1'b0 ;
		end else if (counter < 25) begin
			// need to wait for at least 25 clocks (500ns) on the
			// enable strobe
			LCD_DATA <= 8'b00111100 ;
			LCD_EN <= 1'b1 ;
		end else if (counter < 30) begin
			// respect data setup time of 80ns
			LCD_EN <= 1'b0 ;
		end
		
		// data hold will be respected here
		// basically, just waiting for mcu to finish spinning
		if (counter == 1950) begin
			counter <= 0 ;
			state <= `STATE_DISPON ;
		end else begin
			counter <= counter + 1 ;
		end
	end
	
	`STATE_DISPON : begin
		// the display on IR register requires 39us (1950 clks) of operation
		// time as well.
		if (counter < 4) begin
			// have to set up the  RS, RW lines prior to enabling
			// the strobe
			LCD_RS <= 1'b0 ;
			LCD_RW <= 1'b0 ;
			LCD_EN <= 1'b0 ;
		end else if (counter < 25) begin
			// need to wait for at least 25 clocks (500ns) on the
			// enable strobe
			
			// the data is configured as follows:
			// RS  RW  DATA
			// 0   0   00001DCB
			// where,
			// D = Display on/off
			// C = cursor (type/on/off)
			// B = blinking on off
			
			// we want the display on, a cursor to 0,
			// and having the cursor blink. (1)
			// so...
			LCD_DATA <= 8'b00001101 ;
			LCD_EN <= 1'b1 ;
		end else if (counter < 30) begin
			// respect data setup time of 80ns
			LCD_EN <= 1'b0 ;
		end
		
		// data hold will be respected here
		// basically, just waiting for mcu to finish spinning
		if (counter == 1950) begin
			counter <= 0 ;
			state <= `STATE_CLEAR ;
		end else begin
			counter <= counter + 1 ;
		end
	end
	
	`STATE_CLEAR : begin
		// the state clear value is nice, it's just 8'b1
		// we need to wait for 1.53ms however, to have this 
		// finished
		// 1.53*10^6 = 1530000ns =>
		// 1530000/20 = 153000/2 = 76500 clocks.
		
		if (counter < 4) begin
			// have to set up the  RS, RW lines prior to enabling
			// the strobe
			LCD_RS <= 1'b0 ;
			LCD_RW <= 1'b0 ;
			LCD_EN <= 1'b0 ;
		end else if (counter < 25) begin
			// need to wait for at least 25 clocks (500ns) on the
			// enable strobe
			
			LCD_DATA <= 8'b00000001 ;
			LCD_EN <= 1'b1 ;
		end else if (counter < 30) begin
			// respect data setup time of 80ns
			LCD_EN <= 1'b0 ;
		end
		
		// data hold will be respected here
		// basically, just waiting for mcu to finish spinning
		if (counter == 76500) begin
			counter <= 0 ;
			state <= `STATE_MODESET ;
		end else begin
			counter <= counter + 1 ;
		end
	end
	
	`STATE_MODESET : begin
		// entry mode set takes 39us, so we have to wait 1950 clocks
		// after strobe.
		if (counter < 4) begin
			// have to set up the  RS, RW lines prior to enabling
			// the strobe
			LCD_RS <= 1'b0 ;
			LCD_RW <= 1'b0 ;
			LCD_EN <= 1'b0 ;
		end else if (counter < 25) begin
			// need to wait for at least 25 clocks (500ns) on the
			// enable strobe
			
			// the data will be configured as
			// RS  RW  DATA
			// 0   0   000001IS
			// where
			// I = incr/dec
			// S = shift
			// we want to Increment, and not shift, so
			LCD_DATA <= 8'b00000110 ;
			LCD_EN <= 1'b1 ;
		end else if (counter < 30) begin
			// respect data setup time of 80ns
			LCD_EN <= 1'b0 ;
		end
		
		// data hold will be respected here
		// basically, just waiting for mcu to finish spinning
		if (counter == 1950) begin
			counter <= 0 ;
			state <= `STATE_RENDER ;
			charNum <= 7'b0 ;
		end else begin
			counter <= counter + 1 ;
		end
	end
	
	`STATE_RENDER : begin
		// this will be a bit fancier => we need to send both
		// the top and bottom strings.
		// which means we need to track which of the lines we are on.
		// Each line is 16 characters (visible), followed by 40-16=24 blank
		// characters.
		
		// use 'write data to ram' command:
		// 43us processing time
		// 20ns clock cycle =>
		// 43000/20 = 4300/2 = 2150 clocks
		
		if (counter == 2150) begin
			counter <= 0 ;
			charNum <= charNum + 7'b1 ;
		end else begin
			counter <= counter + 1 ;
		end
		
		if (charNum == 80) begin
			// finished drawing the string, can change states
			state <= `STATE_IDLE ;
		end else begin			
			if (charNum < 7'd40) begin
				// first line
				if (charNum < 7'd16) begin
					WriteCharacter(message[0]) ;
				end else begin
					WriteCharacter(127'b0) ;
				end
			end else begin
				// second line
				if (charNum < 7'd56) begin
					WriteCharacter(message[1]) ;
				end else begin
					WriteCharacter(127'b0) ;
				end
			end
		end
	end
	
	`STATE_IDLE : begin
		counter <= 0 ;
		charNum <= 7'b0 ;
	end
	
	// don't want to infer latches
	default: state = `STATE_INIT ;
	endcase
end

endmodule
