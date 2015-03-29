// This module calculates the sine function.
// X is the input in radians and SIN is the output
// X, SIN and numbers internal are in fixed point notation with
// X[31:16] being the integer part and X[15:0] being the fraction.
module sine(X, SIN);
  input wire signed [31:0] X; 
  output integer SIN; 

function integer fac; // k! Factorial
  input integer k;
  integer i;
  begin
    fac = 1;
    for(i = 1; i <= k; i = i + 1) begin
      fac = fac * i;
    end
  end
endfunction

function integer pow; // Calculates x to the power k
  input integer x; 
  input integer k;
  integer i;
  reg signed [63:0] p;
  begin
    p = 1<<16;
    for(i = 1; i <= k; i = i + 1) begin
      p = p * x >>> 16;
    end
    pow = p;
  end
endfunction

  always @(X) begin : blk
    integer sign;
    integer x;
    integer j, n;
    x = X;
    // Reduce x to the range -Pi to +Pi
    n = x / 205887;
    if(n < 0) n = (n-1) & -2;
    else if(n > 0) n = (n+1) & -2;
    x = x - n * 205887;
    
    // Further reduce to -Pi/2 to +Pi/2
		if(x > 102944) x = 205887 - x;
		if(x < -102944) x = -205887 - x;
		  
    SIN = 0;
    sign = 1;
    for(j = 1; j <= 9; j = j + 2) begin : blk2
      integer p, f;
      p = pow(x,j);
      f = fac(j);
      SIN = SIN + sign * p / f;
      sign = -sign;
    end
  end
endmodule
