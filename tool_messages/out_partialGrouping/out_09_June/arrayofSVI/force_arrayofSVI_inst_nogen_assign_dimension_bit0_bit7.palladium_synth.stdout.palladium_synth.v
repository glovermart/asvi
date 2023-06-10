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
supply0 n5;
supply1 n6;
Q_BUF U0 ( .A(u_I_z[4]), .Z(u_I_z[7]));
Q_BUF U1 ( .A(u_I_z[5]), .Z(u_I_z[4]));
Q_BUF U2 ( .A(u_I_z[6]), .Z(u_I_z[5]));
Q_BUF U3 ( .A(u_I_z[3]), .Z(u_I_z[6]));
Q_BUF U4 ( .A(u_I_z[0]), .Z(u_I_z[3]));
Q_BUF U5 ( .A(u_I_z[2]), .Z(u_I_z[0]));
Q_BUF U6 ( .A(u_I_z[1]), .Z(u_I_z[2]));
Q_BUF U7 ( .A(o_a[1]), .Z(o_a[0]));
Q_BUF U8 ( .A(o_a[1]), .Z(o_a[2]));
Q_BUF U9 ( .A(o_a[1]), .Z(o_a[3]));
Q_BUF U10 ( .A(o_a[1]), .Z(o_a[7]));
Q_BUF U11 ( .A(o_a[1]), .Z(o_a[6]));
Q_BUF U12 ( .A(o_a[1]), .Z(o_a[5]));
Q_BUF U13 ( .A(o_a[1]), .Z(o_a[4]));
Q_OR03 U14 ( .A0(n2), .A1(n3), .A2(n4), .Z(n1));
Q_OR03 U15 ( .A0(n8), .A1(n31), .A2(n25), .Z(n2));
Q_OR03 U16 ( .A0(n27), .A1(n29), .A2(n21), .Z(n3));
Q_OR02 U17 ( .A0(n15), .A1(n10), .Z(n4));
Q_MX02 U18 (.S(\u_I_z[1]%force ), .A0(i_a), .A1(\u_I_z[1]%force_value ), .Z(u_I_z[1]));
Q_RDN U19 (.Z(\u_I_z[1]%release ));
Q_RDN U20 (.Z(\u_I_z[1]%force ));
Q_BUF U21 (.A(u_I_z[1]), .Z(o_a[1]));
Q_BUFZP U22 (.OE(n33), .A(n6), .Z(\u_I_z[1]%release ));
Q_LDN2 U23 ( .G(n23), .S(n24), .D(n5), .Q(n8), .QN( ));
Q_BUFZP U24 (.OE(n1), .A(n6), .Z(\u_I_z[1]%force ));
Q_BUFZP U25 (.OE(n8), .A(n7), .Z(\u_I_z[1]%force_value ));
Q_LDN2 U26 ( .G(n23), .S(n24), .D(n5), .Q(n10), .QN( ));
Q_BUFZP U27 (.OE(n10), .A(n9), .Z(\u_I_z[1]%force_value ));
Q_NR02 U28 ( .A0(en), .A1(n18), .Z(n11));
Q_INV U29 ( .A(n19), .Z(n12));
Q_AN02 U30 ( .A0(en), .A1(n12), .Z(n13));
Q_LDN2 U31 ( .G(n23), .S(n24), .D(n5), .Q(n15), .QN( ));
Q_BUFZP U32 (.OE(n15), .A(n14), .Z(\u_I_z[1]%force_value ));
Q_FDP0B U33 ( .D(n32), .QTFCLK( ), .Q(n18));
Q_FDP0B U34 ( .D(en), .QTFCLK( ), .Q(n19));
Q_LDN2 U35 ( .G(n23), .S(n24), .D(n5), .Q(n21), .QN( ));
Q_BUFZP U36 (.OE(n21), .A(n20), .Z(\u_I_z[1]%force_value ));
Q_INV U37 (.A(\u_I_z[1]%release ), .Z(n23));
Q_LDN2 U38 ( .G(n23), .S(n24), .D(n5), .Q(n25), .QN( ));
Q_INV U39 ( .A(n13), .Z(n24));
Q_BUFZP U40 (.OE(n25), .A(n22), .Z(\u_I_z[1]%force_value ));
Q_LDN2 U41 ( .G(n23), .S(n24), .D(n5), .Q(n27), .QN( ));
Q_BUFZP U42 (.OE(n27), .A(n26), .Z(\u_I_z[1]%force_value ));
Q_LDN2 U43 ( .G(n23), .S(n24), .D(n5), .Q(n29), .QN( ));
Q_BUFZP U44 (.OE(n29), .A(n28), .Z(\u_I_z[1]%force_value ));
Q_LDN2 U45 ( .G(n23), .S(n24), .D(n5), .Q(n31), .QN( ));
Q_BUFZP U46 (.OE(n31), .A(n30), .Z(\u_I_z[1]%force_value ));
Q_INV U47 ( .A(en), .Z(n32));
Q_OR02 U48 ( .A0(n13), .A1(n11), .Z(n33));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "o_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "2"
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
