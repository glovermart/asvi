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
supply1 n12;
supply0 n13;
Q_BUF U0 ( .A(u_I_z[6]), .Z(u_I_z[7]));
Q_BUF U1 ( .A(u_I_z[5]), .Z(u_I_z[6]));
Q_BUF U2 ( .A(u_I_z[4]), .Z(u_I_z[5]));
Q_BUF U3 ( .A(u_I_z[3]), .Z(u_I_z[4]));
Q_BUF U4 ( .A(u_I_z[2]), .Z(u_I_z[3]));
Q_BUF U5 ( .A(u_I_z[1]), .Z(u_I_z[2]));
Q_BUF U6 ( .A(u_I_z[0]), .Z(u_I_z[1]));
Q_BUF U7 ( .A(i_a), .Z(u_I_z[0]));
Q_BUF U8 ( .A(o_a[2]), .Z(o_a[1]));
Q_BUF U9 ( .A(o_a[2]), .Z(o_a[7]));
Q_BUF U10 ( .A(o_a[2]), .Z(o_a[6]));
Q_BUF U11 ( .A(o_a[2]), .Z(o_a[0]));
Q_BUF U12 ( .A(o_a[2]), .Z(o_a[4]));
Q_BUF U13 ( .A(o_a[2]), .Z(o_a[3]));
Q_BUF U14 ( .A(o_a[2]), .Z(o_a[5]));
Q_OR02 U15 ( .A0(n31), .A1(n28), .Z(n3));
Q_OR03 U16 ( .A0(n2), .A1(n3), .A2(n4), .Z(n1));
Q_OR02 U17 ( .A0(n28), .A1(n31), .Z(n4));
Q_OR03 U18 ( .A0(n6), .A1(n7), .A2(n8), .Z(n5));
Q_OR03 U19 ( .A0(n10), .A1(n14), .A2(n16), .Z(n6));
Q_OR03 U20 ( .A0(n18), .A1(n21), .A2(n25), .Z(n7));
Q_OR02 U21 ( .A0(n33), .A1(n35), .Z(n8));
Q_INV U22 ( .A(en), .Z(n9));
Q_BUFZP U23 (.OE(n10), .A(n11), .Z(\i_a%force_value ));
Q_BUFZP U24 (.OE(n5), .A(n12), .Z(\i_a%force ));
Q_LDN2 U25 ( .G(n26), .S(n19), .D(n13), .Q(n10), .QN( ));
Q_BUFZP U26 (.OE(n1), .A(n12), .Z(\i_a%release ));
Q_BUFZP U27 (.OE(n14), .A(n15), .Z(\i_a%force_value ));
Q_LDN2 U28 ( .G(n26), .S(n19), .D(n13), .Q(n14), .QN( ));
Q_BUFZP U29 (.OE(n16), .A(n17), .Z(\i_a%force_value ));
Q_LDN2 U30 ( .G(n26), .S(n19), .D(n13), .Q(n16), .QN( ));
Q_BUFZP U31 (.OE(n18), .A(n20), .Z(\i_a%force_value ));
Q_INV U32 ( .A(n28), .Z(n19));
Q_LDN2 U33 ( .G(n26), .S(n19), .D(n13), .Q(n18), .QN( ));
Q_BUFZP U34 (.OE(n21), .A(n22), .Z(\i_a%force_value ));
Q_LDN2 U35 ( .G(n26), .S(n19), .D(n13), .Q(n21), .QN( ));
Q_FDP0B U36 ( .D(n9), .QTFCLK( ), .Q(n23));
Q_BUFZP U37 (.OE(n25), .A(n27), .Z(\i_a%force_value ));
Q_LDN2 U38 ( .G(n26), .S(n19), .D(n13), .Q(n25), .QN( ));
Q_INV U39 (.A(\i_a%release ), .Z(n26));
Q_AN02 U40 ( .A0(en), .A1(n29), .Z(n28));
Q_INV U41 ( .A(n30), .Z(n29));
Q_FDP0B U42 ( .D(en), .QTFCLK( ), .Q(n30));
Q_NR02 U43 ( .A0(en), .A1(n23), .Z(n31));
Q_BUFZP U44 (.OE(n33), .A(n34), .Z(\i_a%force_value ));
Q_LDN2 U45 ( .G(n26), .S(n19), .D(n13), .Q(n33), .QN( ));
Q_BUFZP U46 (.OE(n35), .A(n36), .Z(\i_a%force_value ));
Q_LDN2 U47 ( .G(n26), .S(n19), .D(n13), .Q(n35), .QN( ));
Q_BUF U48 (.A(i_a), .Z(o_a[2]));
Q_RDN U49 (.Z(\u_I_z[7]%release ));
Q_RDN U50 (.Z(\u_I_z[7]%force ));
Q_BUFZP U51 (.OE(\u_I_z[7]%force ), .A(\u_I_z[7]%force_value ), .Z(u_I_z[7]));
Q_RDN U52 (.Z(\u_I_z[6]%release ));
Q_RDN U53 (.Z(\u_I_z[6]%force ));
Q_BUFZP U54 (.OE(\u_I_z[6]%force ), .A(\u_I_z[6]%force_value ), .Z(u_I_z[6]));
Q_RDN U55 (.Z(\u_I_z[5]%release ));
Q_RDN U56 (.Z(\u_I_z[5]%force ));
Q_BUFZP U57 (.OE(\u_I_z[5]%force ), .A(\u_I_z[5]%force_value ), .Z(u_I_z[5]));
Q_RDN U58 (.Z(\u_I_z[4]%release ));
Q_RDN U59 (.Z(\u_I_z[4]%force ));
Q_BUFZP U60 (.OE(\u_I_z[4]%force ), .A(\u_I_z[4]%force_value ), .Z(u_I_z[4]));
Q_RDN U61 (.Z(\u_I_z[3]%release ));
Q_RDN U62 (.Z(\u_I_z[3]%force ));
Q_BUFZP U63 (.OE(\u_I_z[3]%force ), .A(\u_I_z[3]%force_value ), .Z(u_I_z[3]));
Q_RDN U64 (.Z(\u_I_z[2]%release ));
Q_RDN U65 (.Z(\u_I_z[2]%force ));
Q_BUFZP U66 (.OE(\u_I_z[2]%force ), .A(\u_I_z[2]%force_value ), .Z(u_I_z[2]));
Q_RDN U67 (.Z(\u_I_z[1]%release ));
Q_RDN U68 (.Z(\u_I_z[1]%force ));
Q_BUFZP U69 (.OE(\u_I_z[1]%force ), .A(\u_I_z[1]%force_value ), .Z(u_I_z[1]));
Q_RDN U70 (.Z(\u_I_z[0]%release ));
Q_RDN U71 (.Z(\u_I_z[0]%force ));
Q_BUFZP U72 (.OE(\u_I_z[0]%force ), .A(\u_I_z[0]%force_value ), .Z(u_I_z[0]));
Q_OR02 U73 ( .A0(n4), .A1(n28), .Z(n2));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
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
