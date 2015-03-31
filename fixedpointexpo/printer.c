#include <stdio.h> // printf
#include <math.h>  // log

#define MAX_STR 256 

char const *FloatToFixedBinary(float f) ;

#define PrintStackArray(a) do {                                            \
	int i ;                                                            \
	printf("%s:\n", #a) ;                                              \
	for (i = 0; i < (sizeof(a)/sizeof(*a)); ++i) {                     \
		printf("%s[%i] = %s\n", #a, i, FloatToFixedBinary(a[i])) ; \
	}                                                                  \
} while (0)

int main(void)
{
	float factor[9] ;
	float logn[9] ;
	int i ;
	
	factor[0] = 5 ;         // 'b101
	factor[1] = 3 ;         // 'b11
	factor[2] = 2 ;         // 'b10
	factor[3] = 1.5 ;       // 'b1.1
	factor[4] = 1.25 ;      // 'b1.01
	factor[5] = 1.125 ;     // 'b1.001
	factor[6] = 1.0625 ;    // 'b1.0001
	factor[7] = 1.03125 ;   // 'b1.00001
	factor[8] = 1.015625 ;  // 'b1.000001
	
	for(i = 0; i < 9; i++) logn[i] = log(factor[i]) ; // natural log
	
	PrintStackArray(factor) ;
	PrintStackArray(logn) ;
	
	return 0 ;
}


char const *FloatToFixedBinary(float f)
{
	static char str[MAX_STR] = {0} ;
	unsigned i, n = (1 << 31) ; // start in the furthest bit
	// idea:
	// convert a float into a series of +1 or 0's.
	
        if (f < 0.0F) {
                f = -f ;
                str[i++] = '-' ;
        }
        
	for (i = 0; n; ++i, n = n >> 1) {
		if (f >= n) {
			f -= n ;
			str[i] = '1' ;
		} else {
			str[i] = '0' ;
		}
	}
	
	// fixed point
	str[i++] = '.' ;
	
	for (n = 2; n < (1 << 31); n = n << 1, ++i) {
		float v = 1.0F / ((float)n) ; 
		if (f >= v) {
			str[i] = '1' ;
			f -= v ;
		} else {
			str[i] = '0' ;
		}
	}
	
	str[i] = 0 ;
	
	return str ;
}