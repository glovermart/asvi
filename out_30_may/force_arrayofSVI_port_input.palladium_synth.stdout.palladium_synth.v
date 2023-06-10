// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M_P ( u_I_z, o_a, en, i_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] u_I_z;
output [7:0] o_a;
`_2_ input en;
input i_a;
supply1 n12;
supply0 n13;
assign u_I_z[0] = u_I_z[7];
assign u_I_z[1] = u_I_z[7];
assign u_I_z[2] = u_I_z[7];
assign u_I_z[3] = u_I_z[7];
assign u_I_z[4] = u_I_z[7];
assign u_I_z[5] = u_I_z[7];
assign u_I_z[6] = u_I_z[7];
Q_BUF U0 ( .A(i_a), .Z(u_I_z[7]));
Q_OR02 U1 ( .A0(n29), .A1(n26), .Z(n3));
Q_OR03 U2 ( .A0(n2), .A1(n3), .A2(n4), .Z(n1));
Q_OR02 U3 ( .A0(n26), .A1(n29), .Z(n4));
Q_OR03 U4 ( .A0(n6), .A1(n7), .A2(n8), .Z(n5));
Q_OR03 U5 ( .A0(n10), .A1(n14), .A2(n16), .Z(n6));
Q_OR03 U6 ( .A0(n18), .A1(n21), .A2(n23), .Z(n7));
Q_OR02 U7 ( .A0(n31), .A1(n33), .Z(n8));
Q_INV U8 ( .A(en), .Z(n9));
Q_BUFZP U9 (.OE(n10), .A(n11), .Z(\u_I_z[7]%force_value ));
Q_BUFZP U10 (.OE(n5), .A(n12), .Z(\u_I_z[7]%force ));
Q_LDN2 U11 ( .G(n24), .S(n19), .D(n13), .Q(n10), .QN( ));
Q_BUFZP U12 (.OE(n1), .A(n12), .Z(\u_I_z[7]%release ));
Q_BUFZP U13 (.OE(n14), .A(n15), .Z(\u_I_z[7]%force_value ));
Q_LDN2 U14 ( .G(n24), .S(n19), .D(n13), .Q(n14), .QN( ));
Q_BUFZP U15 (.OE(n16), .A(n17), .Z(\u_I_z[7]%force_value ));
Q_LDN2 U16 ( .G(n24), .S(n19), .D(n13), .Q(n16), .QN( ));
Q_BUFZP U17 (.OE(n18), .A(n20), .Z(\u_I_z[7]%force_value ));
Q_INV U18 ( .A(n26), .Z(n19));
Q_LDN2 U19 ( .G(n24), .S(n19), .D(n13), .Q(n18), .QN( ));
Q_BUFZP U20 (.OE(n21), .A(n22), .Z(\u_I_z[7]%force_value ));
Q_LDN2 U21 ( .G(n24), .S(n19), .D(n13), .Q(n21), .QN( ));
Q_BUFZP U22 (.OE(n23), .A(n25), .Z(\u_I_z[7]%force_value ));
Q_LDN2 U23 ( .G(n24), .S(n19), .D(n13), .Q(n23), .QN( ));
Q_INV U24 (.A(\u_I_z[7]%release ), .Z(n24));
Q_AN02 U25 ( .A0(en), .A1(n27), .Z(n26));
Q_INV U26 ( .A(n28), .Z(n27));
Q_FDP0B U27 ( .D(en), .QTFCLK( ), .Q(n28));
Q_NR02 U28 ( .A0(en), .A1(n35), .Z(n29));
Q_BUFZP U29 (.OE(n31), .A(n32), .Z(\u_I_z[7]%force_value ));
Q_LDN2 U30 ( .G(n24), .S(n19), .D(n13), .Q(n31), .QN( ));
Q_BUFZP U31 (.OE(n33), .A(n34), .Z(\u_I_z[7]%force_value ));
Q_LDN2 U32 ( .G(n24), .S(n19), .D(n13), .Q(n33), .QN( ));
Q_FDP0B U33 ( .D(n9), .QTFCLK( ), .Q(n35));
Q_ASSIGN U34 ( .B(u_I_z[7]), .A(o_a[0]));
Q_ASSIGN U35 ( .B(u_I_z[7]), .A(o_a[1]));
Q_ASSIGN U36 ( .B(u_I_z[7]), .A(o_a[2]));
Q_ASSIGN U37 ( .B(u_I_z[7]), .A(o_a[3]));
Q_ASSIGN U38 ( .B(u_I_z[7]), .A(o_a[4]));
Q_ASSIGN U39 ( .B(u_I_z[7]), .A(o_a[5]));
Q_ASSIGN U40 ( .B(u_I_z[7]), .A(o_a[6]));
Q_ASSIGN U41 ( .B(u_I_z[7]), .A(o_a[7]));
Q_OR02 U42 ( .A0(n4), .A1(n26), .Z(n2));
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
Q_BUFZP U0 (.OE(\u_I_z[0]%force ), .A(\u_I_z[0]%force_value ), .Z(u_I_z[0]));
Q_RDN U1 (.Z(\u_I_z[0]%force ));
Q_RDN U2 (.Z(\u_I_z[0]%release ));
Q_BUFZP U3 (.OE(\u_I_z[1]%force ), .A(\u_I_z[1]%force_value ), .Z(u_I_z[1]));
Q_RDN U4 (.Z(\u_I_z[1]%force ));
Q_RDN U5 (.Z(\u_I_z[1]%release ));
Q_BUFZP U6 (.OE(\u_I_z[2]%force ), .A(\u_I_z[2]%force_value ), .Z(u_I_z[2]));
Q_RDN U7 (.Z(\u_I_z[2]%force ));
Q_RDN U8 (.Z(\u_I_z[2]%release ));
Q_BUFZP U9 (.OE(\u_I_z[3]%force ), .A(\u_I_z[3]%force_value ), .Z(u_I_z[3]));
Q_RDN U10 (.Z(\u_I_z[3]%force ));
Q_RDN U11 (.Z(\u_I_z[3]%release ));
Q_BUFZP U12 (.OE(\u_I_z[4]%force ), .A(\u_I_z[4]%force_value ), .Z(u_I_z[4]));
Q_RDN U13 (.Z(\u_I_z[4]%force ));
Q_RDN U14 (.Z(\u_I_z[4]%release ));
Q_BUFZP U15 (.OE(\u_I_z[5]%force ), .A(\u_I_z[5]%force_value ), .Z(u_I_z[5]));
Q_RDN U16 (.Z(\u_I_z[5]%force ));
Q_RDN U17 (.Z(\u_I_z[5]%release ));
Q_BUFZP U18 (.OE(\u_I_z[6]%force ), .A(\u_I_z[6]%force_value ), .Z(u_I_z[6]));
Q_RDN U19 (.Z(\u_I_z[6]%force ));
Q_RDN U20 (.Z(\u_I_z[6]%release ));
Q_BUFZP U21 (.OE(\u_I_z[7]%force ), .A(\u_I_z[7]%force_value ), .Z(u_I_z[7]));
Q_RDN U22 (.Z(\u_I_z[7]%force ));
Q_RDN U23 (.Z(\u_I_z[7]%release ));
M_P u_M ( .u_I_z( u_I_z[7:0]), .o_a( o_a[7:0]), .en( en), .i_a( 
	i_a));
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
