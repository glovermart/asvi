// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M_P1_ ( i_p1, en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] i_p1;
`_2_ input en;
supply1 n26;
supply0 n27;
Q_OR02 U0 ( .A0(n21), .A1(n24), .Z(n1));
Q_INV U1 ( .A(en), .Z(n2));
Q_BUFZP U2 (.OE(n3), .A(n20), .Z(\i_p1[0]%force_value ));
Q_BUFZP U3 (.OE(n3), .A(n26), .Z(\i_p1[0]%force ));
Q_LDN2 U4 ( .G(n4), .S(n18), .D(n27), .Q(n3), .QN( ));
Q_BUFZP U5 (.OE(n1), .A(n26), .Z(\i_p1[0]%release ));
Q_INV U6 (.A(\i_p1[0]%release ), .Z(n4));
Q_BUFZP U7 (.OE(n5), .A(n27), .Z(\i_p1[1]%force_value ));
Q_BUFZP U8 (.OE(n5), .A(n26), .Z(\i_p1[1]%force ));
Q_LDN2 U9 ( .G(n6), .S(n18), .D(n27), .Q(n5), .QN( ));
Q_BUFZP U10 (.OE(n1), .A(n26), .Z(\i_p1[1]%release ));
Q_INV U11 (.A(\i_p1[1]%release ), .Z(n6));
Q_BUFZP U12 (.OE(n7), .A(n27), .Z(\i_p1[2]%force_value ));
Q_BUFZP U13 (.OE(n7), .A(n26), .Z(\i_p1[2]%force ));
Q_LDN2 U14 ( .G(n8), .S(n18), .D(n27), .Q(n7), .QN( ));
Q_BUFZP U15 (.OE(n1), .A(n26), .Z(\i_p1[2]%release ));
Q_INV U16 (.A(\i_p1[2]%release ), .Z(n8));
Q_BUFZP U17 (.OE(n9), .A(n27), .Z(\i_p1[3]%force_value ));
Q_BUFZP U18 (.OE(n9), .A(n26), .Z(\i_p1[3]%force ));
Q_LDN2 U19 ( .G(n10), .S(n18), .D(n27), .Q(n9), .QN( ));
Q_BUFZP U20 (.OE(n1), .A(n26), .Z(\i_p1[3]%release ));
Q_INV U21 (.A(\i_p1[3]%release ), .Z(n10));
Q_BUFZP U22 (.OE(n11), .A(n27), .Z(\i_p1[4]%force_value ));
Q_BUFZP U23 (.OE(n11), .A(n26), .Z(\i_p1[4]%force ));
Q_LDN2 U24 ( .G(n12), .S(n18), .D(n27), .Q(n11), .QN( ));
Q_BUFZP U25 (.OE(n1), .A(n26), .Z(\i_p1[4]%release ));
Q_INV U26 (.A(\i_p1[4]%release ), .Z(n12));
Q_BUFZP U27 (.OE(n13), .A(n27), .Z(\i_p1[5]%force_value ));
Q_BUFZP U28 (.OE(n13), .A(n26), .Z(\i_p1[5]%force ));
Q_LDN2 U29 ( .G(n14), .S(n18), .D(n27), .Q(n13), .QN( ));
Q_BUFZP U30 (.OE(n1), .A(n26), .Z(\i_p1[5]%release ));
Q_INV U31 (.A(\i_p1[5]%release ), .Z(n14));
Q_BUFZP U32 (.OE(n15), .A(n27), .Z(\i_p1[6]%force_value ));
Q_BUFZP U33 (.OE(n15), .A(n26), .Z(\i_p1[6]%force ));
Q_LDN2 U34 ( .G(n16), .S(n18), .D(n27), .Q(n15), .QN( ));
Q_BUFZP U35 (.OE(n1), .A(n26), .Z(\i_p1[6]%release ));
Q_INV U36 (.A(\i_p1[6]%release ), .Z(n16));
Q_BUFZP U37 (.OE(n17), .A(n27), .Z(\i_p1[7]%force_value ));
Q_BUFZP U38 (.OE(n17), .A(n26), .Z(\i_p1[7]%force ));
Q_INV U39 ( .A(n21), .Z(n18));
Q_LDN2 U40 ( .G(n19), .S(n18), .D(n27), .Q(n17), .QN( ));
Q_BUFZP U41 (.OE(n1), .A(n26), .Z(\i_p1[7]%release ));
Q_INV U42 (.A(\i_p1[7]%release ), .Z(n19));
Q_AN02 U43 ( .A0(en), .A1(n22), .Z(n21));
Q_INV U44 ( .A(n23), .Z(n22));
Q_FDP0B U45 ( .D(en), .QTFCLK( ), .Q(n23));
Q_NR02 U46 ( .A0(en), .A1(n25), .Z(n24));
Q_FDP0B U47 ( .D(n2), .QTFCLK( ), .Q(n25));
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
M_P1_ u_M ( .i_p1( { u_I_z[7], u_I_z[7], u_I_z[7], u_I_z[7], u_I_z[7], 
	u_I_z[7], u_I_z[7], u_I_z[7]}), .en( en));
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
