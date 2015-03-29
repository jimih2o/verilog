// synthesis translate off
module testbench ;

function real float; // Convert fixed point with precision p to real
  input integer x, p;
  begin
    float = x;
    float = float / (1<<p);
  end
endfunction

	integer x; // 16 fractional places
  wire [31:0] sin; // 30 fractional places  
  sine SINE(x, sin);
  initial begin : blk
	  integer i;
		for(i = -720; i <= 720; i = i + 10) begin
			x = (i * 205887) / 180;
			#1 $display("%d %f %f %f", i, float(x, 16), $sin(float(x,16)), float(sin,16));
		end
	end
endmodule
// synthesis translate on