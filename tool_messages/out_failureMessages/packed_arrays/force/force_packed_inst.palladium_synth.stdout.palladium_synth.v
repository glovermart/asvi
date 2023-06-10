// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

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
supply0 n3;
supply1 n4;
Q_BUF U0 ( .A(u_I_z[2]), .Z(u_I_z[3]));
Q_BUF U1 ( .A(u_I_z[1]), .Z(u_I_z[2]));
Q_BUF U2 ( .A(u_I_z[0]), .Z(u_I_z[1]));
Q_BUF U3 ( .A(u_I_z[5]), .Z(u_I_z[0]));
Q_BUF U4 ( .A(u_I_z[4]), .Z(u_I_z[5]));
Q_BUF U5 ( .A(u_I_z[7]), .Z(u_I_z[4]));
Q_BUF U6 ( .A(u_I_z[6]), .Z(u_I_z[7]));
Q_BUF U7 ( .A(o_a[6]), .Z(o_a[7]));
Q_BUF U8 ( .A(o_a[6]), .Z(o_a[5]));
Q_BUF U9 ( .A(o_a[6]), .Z(o_a[0]));
Q_BUF U10 ( .A(o_a[6]), .Z(o_a[4]));
Q_BUF U11 ( .A(o_a[6]), .Z(o_a[1]));
Q_BUF U12 ( .A(o_a[6]), .Z(o_a[2]));
Q_BUF U13 ( .A(o_a[6]), .Z(o_a[3]));
Q_RDN U14 (.Z(\u_I_z[6]%release ));
Q_MX02 U15 (.S(\u_I_z[6]%force ), .A0(i_a), .A1(\u_I_z[6]%force_value ), .Z(u_I_z[6]));
Q_RDN U16 (.Z(\u_I_z[6]%force ));
Q_BUF U17 (.A(u_I_z[6]), .Z(o_a[6]));
Q_FDP0B U18 ( .D(n14), .QTFCLK( ), .Q(n5));
Q_NR02 U19 ( .A0(en), .A1(n5), .Z(n6));
Q_FDP0B U20 ( .D(en), .QTFCLK( ), .Q(n7));
Q_INV U21 ( .A(n7), .Z(n8));
Q_AN02 U22 ( .A0(en), .A1(n8), .Z(n9));
Q_INV U23 ( .A(n9), .Z(n11));
Q_BUFZP U24 (.OE(n12), .A(n4), .Z(\u_I_z[6]%force ));
Q_LDN2 U25 ( .G(n13), .S(n11), .D(n3), .Q(n12), .QN( ));
Q_BUFZP U26 (.OE(n12), .A(n3), .Z(\u_I_z[6]%force_value ));
Q_INV U27 (.A(\u_I_z[6]%release ), .Z(n13));
Q_BUFZP U28 (.OE(n15), .A(n4), .Z(\u_I_z[6]%release ));
Q_BUFZP U29 (.OE(n12), .A(n10), .Z(\u_I_z[6]%force_value ));
Q_INV U30 ( .A(en), .Z(n14));
Q_OR02 U31 ( .A0(n9), .A1(n6), .Z(n15));
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
