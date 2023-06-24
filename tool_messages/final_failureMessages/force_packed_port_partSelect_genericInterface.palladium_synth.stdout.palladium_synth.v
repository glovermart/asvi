// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M_P1_ ( i_p1, en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [3:0] i_p1;
`_2_ input en;
supply1 n18;
supply0 n19;
Q_OR02 U0 ( .A0(n13), .A1(n16), .Z(n1));
Q_INV U1 ( .A(en), .Z(n2));
Q_BUFZP U2 (.OE(n3), .A(n12), .Z(\i_p1[0]%force_value ));
Q_BUFZP U3 (.OE(n3), .A(n18), .Z(\i_p1[0]%force ));
Q_LDN2 U4 ( .G(n4), .S(n10), .D(n19), .Q(n3), .QN( ));
Q_BUFZP U5 (.OE(n1), .A(n18), .Z(\i_p1[0]%release ));
Q_INV U6 (.A(\i_p1[0]%release ), .Z(n4));
Q_BUFZP U7 (.OE(n5), .A(n19), .Z(\i_p1[1]%force_value ));
Q_BUFZP U8 (.OE(n5), .A(n18), .Z(\i_p1[1]%force ));
Q_LDN2 U9 ( .G(n6), .S(n10), .D(n19), .Q(n5), .QN( ));
Q_BUFZP U10 (.OE(n1), .A(n18), .Z(\i_p1[1]%release ));
Q_INV U11 (.A(\i_p1[1]%release ), .Z(n6));
Q_BUFZP U12 (.OE(n7), .A(n19), .Z(\i_p1[2]%force_value ));
Q_BUFZP U13 (.OE(n7), .A(n18), .Z(\i_p1[2]%force ));
Q_LDN2 U14 ( .G(n8), .S(n10), .D(n19), .Q(n7), .QN( ));
Q_BUFZP U15 (.OE(n1), .A(n18), .Z(\i_p1[2]%release ));
Q_INV U16 (.A(\i_p1[2]%release ), .Z(n8));
Q_BUFZP U17 (.OE(n9), .A(n19), .Z(\i_p1[3]%force_value ));
Q_BUFZP U18 (.OE(n9), .A(n18), .Z(\i_p1[3]%force ));
Q_INV U19 ( .A(n13), .Z(n10));
Q_LDN2 U20 ( .G(n11), .S(n10), .D(n19), .Q(n9), .QN( ));
Q_BUFZP U21 (.OE(n1), .A(n18), .Z(\i_p1[3]%release ));
Q_INV U22 (.A(\i_p1[3]%release ), .Z(n11));
Q_AN02 U23 ( .A0(en), .A1(n14), .Z(n13));
Q_INV U24 ( .A(n15), .Z(n14));
Q_FDP0B U25 ( .D(en), .QTFCLK( ), .Q(n15));
Q_NR02 U26 ( .A0(en), .A1(n17), .Z(n16));
Q_FDP0B U27 ( .D(n2), .QTFCLK( ), .Q(n17));
endmodule

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module top ( en, i_a, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
`_2_ input en;
input i_a;
output [7:0] o_a;
wire [7:0] u_I_z;
Q_ASSIGN U0 ( .B(u_I_z[7]), .A(u_I_z[6]));
Q_ASSIGN U1 ( .B(u_I_z[7]), .A(u_I_z[5]));
Q_ASSIGN U2 ( .B(u_I_z[7]), .A(u_I_z[4]));
Q_ASSIGN U3 ( .B(u_I_z[7]), .A(u_I_z[3]));
Q_ASSIGN U4 ( .B(u_I_z[7]), .A(u_I_z[2]));
Q_ASSIGN U5 ( .B(u_I_z[7]), .A(u_I_z[1]));
Q_ASSIGN U6 ( .B(u_I_z[7]), .A(u_I_z[0]));
Q_ASSIGN U7 ( .B(i_a), .A(u_I_z[7]));
Q_ASSIGN U8 ( .B(u_I_z[7]), .A(o_a[7]));
Q_ASSIGN U9 ( .B(u_I_z[7]), .A(o_a[6]));
Q_ASSIGN U10 ( .B(u_I_z[7]), .A(o_a[5]));
Q_ASSIGN U11 ( .B(u_I_z[7]), .A(o_a[4]));
Q_ASSIGN U12 ( .B(u_I_z[7]), .A(o_a[3]));
Q_ASSIGN U13 ( .B(u_I_z[7]), .A(o_a[2]));
Q_ASSIGN U14 ( .B(u_I_z[7]), .A(o_a[1]));
Q_ASSIGN U15 ( .B(u_I_z[7]), .A(o_a[0]));
M_P1_ u_M ( .i_p1( { u_I_z[7], u_I_z[7], u_I_z[7], u_I_z[7]}), .en( en));
`ifdef Q_DISPLAY_BUFFER_USE
`ifdef CBV
`else
Q_DISPLAY_BUFFER Q_DISPLAY_BUFFER ();
`endif
`endif
`ifdef Q_HDL_ROOT_USE
Q_HDL_ROOT Q_HDL_ROOT ();
`endif
endmodule
