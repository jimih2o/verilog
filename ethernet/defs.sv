package ProtocolInfo ;
parameter IP_0 = 192 ;
parameter IP_1 = 168 ;
parameter IP_2 = 1 ;
parameter IP_3des = 1 ;
parameter IP_3src = 44 ;

parameter MAC_dest = 48'h28d2444fd6ac ;
parameter MAC_src  = 48'h123456789ABC ;

parameter IPcs1 = 32'h0000C53F +
                (IP_0 << 8) +
                IP_1 +
                (IP_2 << 8) +
                IP_3src +
                (IP_0 << 8) +
                IP_1 +
                (IP_2 << 8) +
                IP_3des ;

parameter IPcs2 =  ((IPcs1 & 32'h0000FFFF) + (IPcs1 >> 16)) ;
parameter IPcs3 = ~((IPcs2 & 32'h0000FFFF) + (IPcs2 >> 16)) ;

parameter IP_CheckSum = IPcs3 ;

parameter UDP_Port = 16'd8000 ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Parameters for dm9000a
parameter Low = 1'b1 ;
parameter High = 1'b0 ;
parameter Data = 1'b1 ;
parameter Index = 1'b0 ;

endpackage
