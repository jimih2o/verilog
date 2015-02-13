module fixed_exp(x, r, clk, rst) ;
input [2 : -7] x ;
output [4 : -5] r ;
input clk ;

reg [3 : 0] i = 1'b0 ;

reg [4:-5] val = 10'b0 ;
reg [2:-7] rem ;
reg [9:-10] exp ;

assign r = val ;

function logn ;
	input [3:0] n ;

	always @(n) begin
		case (n)
		4'd0: logn = 10'b0010100111 ;
		4'd1: logn = 10'b0010000110 ;
		4'd2: logn = 10'b0000101100 ;
		4'd3: logn = 10'b0000011001 ;
		4'd4: logn = 10'b0000001110 ;
		4'd5: logn = 10'b0000000111 ;
		4'd6: logn = 10'b0000000011 ;
		4'd7: logn = 10'b0000000001 ;
		4'd8: logn = 10'b0000000000 ;
		default: logn = 0 ;
		endcase
	end
endfunction

// factor is wrong here.
function factor ;
	input n ;

	always @(n) begin
		case (n)
		1: factor = 10'b0001100000 ;
		0: factor = 10'b0010100000 ;
		2: factor = 10'b0001000000 ;
		3: factor = 10'b0000101000 ;
		4: factor = 10'b0000100100 ;
		5: factor = 10'b0000100010 ;
		6: factor = 10'b0000100001 ;
		7: factor = 10'b0000100000 ;
		8: factor = 10'b0000100000 ;
		default: factor = 0 ;
		endcase
	end
endfunction

always @(posedge clk or posedge rst) begin
	if (rst) i = 0 ;
	else begin : Calculate_Block
		case (i)
		4'd0: begin
			// initialization:
			// e = 1
			exp = 20'b10000000000 ;
			rem = x ;
			
			// condition
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd1: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd2: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd3: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd4: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd5: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd6: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd7: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd8: begin
			if (logn(i) < rem) begin
				rem = rem - logn(i) ;
				exp = exp * (factor(i) << 5) ;
			end
		end
		4'd9: begin
			val = 
		end
		default: i = 9 ;
		endcase
	end
end

endmodule 
