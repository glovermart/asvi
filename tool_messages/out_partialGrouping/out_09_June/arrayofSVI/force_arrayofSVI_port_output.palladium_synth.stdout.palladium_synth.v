// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M_P ( u_I_z, o_a, en, i_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] u_I_z;
output [7:0] o_a;
`_2_ input en;
input i_a;
supply1 n12;
supply0 n13;
Q_BUF U0 ( .A(i_a), .Z(u_I_z[0]));
Q_BUF U1 ( .A(u_I_z[0]), .Z(u_I_z[1]));
Q_BUF U2 ( .A(u_I_z[0]), .Z(u_I_z[2]));
Q_BUF U3 ( .A(u_I_z[0]), .Z(u_I_z[3]));
Q_BUF U4 ( .A(u_I_z[0]), .Z(u_I_z[4]));
Q_BUF U5 ( .A(u_I_z[0]), .Z(u_I_z[5]));
Q_BUF U6 ( .A(u_I_z[0]), .Z(u_I_z[6]));
Q_BUF U7 ( .A(u_I_z[0]), .Z(u_I_z[7]));
Q_OR02 U8 ( .A0(n29), .A1(n26), .Z(n3));
Q_OR03 U9 ( .A0(n2), .A1(n3), .A2(n4), .Z(n1));
Q_OR02 U10 ( .A0(n26), .A1(n29), .Z(n4));
Q_OR03 U11 ( .A0(n6), .A1(n7), .A2(n8), .Z(n5));
Q_OR03 U12 ( .A0(n10), .A1(n14), .A2(n16), .Z(n6));
Q_OR03 U13 ( .A0(n18), .A1(n21), .A2(n23), .Z(n7));
Q_OR02 U14 ( .A0(n31), .A1(n33), .Z(n8));
Q_INV U15 ( .A(en), .Z(n9));
Q_BUFZP U16 (.OE(n10), .A(n11), .Z(\u_I_z[0]%force_value ));
Q_BUFZP U17 (.OE(n5), .A(n12), .Z(\u_I_z[0]%force ));
Q_LDN2 U18 ( .G(n24), .S(n19), .D(n13), .Q(n10), .QN( ));
Q_BUFZP U19 (.OE(n1), .A(n12), .Z(\u_I_z[0]%release ));
Q_BUFZP U20 (.OE(n14), .A(n15), .Z(\u_I_z[0]%force_value ));
Q_LDN2 U21 ( .G(n24), .S(n19), .D(n13), .Q(n14), .QN( ));
Q_BUFZP U22 (.OE(n16), .A(n17), .Z(\u_I_z[0]%force_value ));
Q_LDN2 U23 ( .G(n24), .S(n19), .D(n13), .Q(n16), .QN( ));
Q_BUFZP U24 (.OE(n18), .A(n20), .Z(\u_I_z[0]%force_value ));
Q_INV U25 ( .A(n26), .Z(n19));
Q_LDN2 U26 ( .G(n24), .S(n19), .D(n13), .Q(n18), .QN( ));
Q_BUFZP U27 (.OE(n21), .A(n22), .Z(\u_I_z[0]%force_value ));
Q_LDN2 U28 ( .G(n24), .S(n19), .D(n13), .Q(n21), .QN( ));
Q_BUFZP U29 (.OE(n23), .A(n25), .Z(\u_I_z[0]%force_value ));
Q_LDN2 U30 ( .G(n24), .S(n19), .D(n13), .Q(n23), .QN( ));
Q_INV U31 (.A(\u_I_z[0]%release ), .Z(n24));
Q_AN02 U32 ( .A0(en), .A1(n27), .Z(n26));
Q_INV U33 ( .A(n28), .Z(n27));
Q_FDP0B U34 ( .D(en), .QTFCLK( ), .Q(n28));
Q_NR02 U35 ( .A0(en), .A1(n35), .Z(n29));
Q_BUFZP U36 (.OE(n31), .A(n32), .Z(\u_I_z[0]%force_value ));
Q_LDN2 U37 ( .G(n24), .S(n19), .D(n13), .Q(n31), .QN( ));
Q_BUFZP U38 (.OE(n33), .A(n34), .Z(\u_I_z[0]%force_value ));
Q_LDN2 U39 ( .G(n24), .S(n19), .D(n13), .Q(n33), .QN( ));
Q_FDP0B U40 ( .D(n9), .QTFCLK( ), .Q(n35));
Q_ASSIGN U41 ( .B(u_I_z[0]), .A(o_a[0]));
Q_ASSIGN U42 ( .B(u_I_z[0]), .A(o_a[1]));
Q_ASSIGN U43 ( .B(u_I_z[0]), .A(o_a[2]));
Q_ASSIGN U44 ( .B(u_I_z[0]), .A(o_a[3]));
Q_ASSIGN U45 ( .B(u_I_z[0]), .A(o_a[4]));
Q_ASSIGN U46 ( .B(u_I_z[0]), .A(o_a[5]));
Q_ASSIGN U47 ( .B(u_I_z[0]), .A(o_a[6]));
Q_ASSIGN U48 ( .B(u_I_z[0]), .A(o_a[7]));
Q_OR02 U49 ( .A0(n4), .A1(n26), .Z(n2));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
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
Q_MX02 U0 (.S(\u_I_z[0]%force ), .A0(n1), .A1(\u_I_z[0]%force_value ), .Z(u_I_z[0]));
Q_RDN U1 (.Z(\u_I_z[0]%force ));
Q_RDN U2 (.Z(\u_I_z[0]%release ));
Q_MX02 U3 (.S(\u_I_z[1]%force ), .A0(n2), .A1(\u_I_z[1]%force_value ), .Z(u_I_z[1]));
Q_RDN U4 (.Z(\u_I_z[1]%force ));
Q_RDN U5 (.Z(\u_I_z[1]%release ));
Q_MX02 U6 (.S(\u_I_z[2]%force ), .A0(n3), .A1(\u_I_z[2]%force_value ), .Z(u_I_z[2]));
Q_RDN U7 (.Z(\u_I_z[2]%force ));
Q_RDN U8 (.Z(\u_I_z[2]%release ));
Q_MX02 U9 (.S(\u_I_z[3]%force ), .A0(n4), .A1(\u_I_z[3]%force_value ), .Z(u_I_z[3]));
Q_RDN U10 (.Z(\u_I_z[3]%force ));
Q_RDN U11 (.Z(\u_I_z[3]%release ));
Q_MX02 U12 (.S(\u_I_z[4]%force ), .A0(n5), .A1(\u_I_z[4]%force_value ), .Z(u_I_z[4]));
Q_RDN U13 (.Z(\u_I_z[4]%force ));
Q_RDN U14 (.Z(\u_I_z[4]%release ));
Q_MX02 U15 (.S(\u_I_z[5]%force ), .A0(n6), .A1(\u_I_z[5]%force_value ), .Z(u_I_z[5]));
Q_RDN U16 (.Z(\u_I_z[5]%force ));
Q_RDN U17 (.Z(\u_I_z[5]%release ));
Q_MX02 U18 (.S(\u_I_z[6]%force ), .A0(n7), .A1(\u_I_z[6]%force_value ), .Z(u_I_z[6]));
Q_RDN U19 (.Z(\u_I_z[6]%force ));
Q_RDN U20 (.Z(\u_I_z[6]%release ));
Q_MX02 U21 (.S(\u_I_z[7]%force ), .A0(n8), .A1(\u_I_z[7]%force_value ), .Z(u_I_z[7]));
Q_RDN U22 (.Z(\u_I_z[7]%force ));
Q_RDN U23 (.Z(\u_I_z[7]%release ));
M_P u_M ( .u_I_z( { n8, n7, n6, n5, n4, n3, n2, n1}), .o_a( o_a[7:0]), .en( 
	en), .i_a( i_a));
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
