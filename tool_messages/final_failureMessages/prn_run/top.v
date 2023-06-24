//
// Verilog description for cell top, 
// Fri Jun 23 20:04:39 2023
//
// Precision RTL Synthesis, 64-bit 2022.2.0.9//


module top ( i_a, \o_a(0)  , \o_a(1)  , \o_a(2)  , \o_a(3)  , \o_a(4)  , 
             \o_a(5)  , \o_a(6)  , \o_a(7)   ) ;

    input i_a ;
    output \o_a(0)   ;
    output \o_a(1)   ;
    output \o_a(2)   ;
    output \o_a(3)   ;
    output \o_a(4)   ;
    output \o_a(5)   ;
    output \o_a(6)   ;
    output \o_a(7)   ;

    wire nx43768z2, nx43768z1;



    OBUFT ix36789z40921 (.O (\o_a(7)  ), .I (nx43768z1), .T (nx43768z2)) ;
    OBUFT ix37786z40921 (.O (\o_a(6)  ), .I (nx43768z1), .T (nx43768z2)) ;
    OBUFT ix38783z40921 (.O (\o_a(5)  ), .I (nx43768z1), .T (nx43768z2)) ;
    OBUFT ix39780z40921 (.O (\o_a(4)  ), .I (nx43768z1), .T (nx43768z2)) ;
    OBUFT ix40777z40921 (.O (\o_a(3)  ), .I (nx43768z1), .T (nx43768z2)) ;
    OBUFT ix41774z40921 (.O (\o_a(2)  ), .I (nx43768z1), .T (nx43768z2)) ;
    OBUFT ix42771z40921 (.O (\o_a(1)  ), .I (nx43768z1), .T (nx43768z2)) ;
    OBUFT ix43768z40921 (.O (\o_a(0)  ), .I (nx43768z1), .T (nx43768z2)) ;
    VCC ps_vcc (.P (nx43768z2)) ;
    GND ps_gnd (.G (nx43768z1)) ;
endmodule

