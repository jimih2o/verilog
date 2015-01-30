module controlbar(LEDR, KEY, CLOCK_50) ;
//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// parameters + defines
parameter STATE_NONE  = 2'd0     ;
parameter STATE_INC   = 2'd1     ;
parameter STATE_DEC   = 2'd2     ;
parameter STATE_WAIT  = 2'd3     ;
parameter WAIT_CYCLES = 25000000 ;
parameter KEY_INC     = 0        ;
parameter KEY_DEC     = 1        ;

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// ports
input      [3:0] KEY ;
input            CLOCK_50 ;
output reg [9:0] LEDR ;

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// registers and wires
reg [1:0]  barState = STATE_NONE ;
reg [1:0]  barPrevState = STATE_NONE ;
// reg [9:0]  barLevel = {5{1'b1}} ; // start at 1/2 level
integer    waitTimer = 0 ;

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// assignment
// assign LEDR = barLevel ;

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// logic
initial begin
	LEDR = {{5{1'b1}}, {5{1'b0}}} ;
end

always @(posedge CLOCK_50) begin	
	case (barState)
	STATE_NONE: begin
		// record what state we are starting in
		barPrevState = barState ;
		if (KEY[KEY_INC] == 1'b0) barState = STATE_INC ;
		if (KEY[KEY_DEC] == 1'b0) barState = STATE_DEC ;
	end
	
	STATE_WAIT: begin
		case (barPrevState)
		STATE_DEC:
			if (KEY[KEY_INC] == 1'b0) barState = STATE_INC ;
		STATE_INC:
			if (KEY[KEY_DEC] == 1'b0) barState = STATE_DEC ;
		endcase
		
		waitTimer = waitTimer + 1 ;
		if (waitTimer == WAIT_CYCLES) begin 
			barState = STATE_NONE ;
			waitTimer = 0 ;
		end
	end
	
	STATE_INC: begin
		// record what state we are starting in
		barPrevState = barState ;
		
		if (LEDR == {10{1'b1}}) barState = STATE_NONE ;
		else begin
			LEDR = (LEDR >> 1'b1) | (1'b1 << 9) ;
			barState = STATE_WAIT ;
		end
	end
		
	STATE_DEC: begin
		// record what state we are starting in
		barPrevState = barState ;
		
		if (LEDR == 0) barState = STATE_NONE ;
		else begin
			LEDR = (LEDR << 1'b1) ;
			barState = STATE_WAIT ;
		end
	end
	default: barState = STATE_NONE ;
	endcase

end

endmodule
