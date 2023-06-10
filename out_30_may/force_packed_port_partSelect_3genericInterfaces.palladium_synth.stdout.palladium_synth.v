// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M_P1_P2_I ( i_p1, j_p2, k_i_a, k_z, en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [3:0] i_p1;
output [7:4] j_p2;
input k_i_a;
inout [7:0] k_z;
`_2_ input en;
supply0 n3;
supply1 n4;
Q_ASSIGN U0 ( .B(k_i_a), .A(k_z[0]));
Q_ASSIGN U1 ( .B(k_i_a), .A(k_z[1]));
Q_ASSIGN U2 ( .B(k_i_a), .A(k_z[2]));
Q_ASSIGN U3 ( .B(k_i_a), .A(k_z[3]));
Q_ASSIGN U4 ( .B(k_i_a), .A(k_z[4]));
Q_ASSIGN U5 ( .B(k_i_a), .A(k_z[5]));
Q_ASSIGN U6 ( .B(k_i_a), .A(k_z[6]));
Q_ASSIGN U7 ( .B(k_i_a), .A(k_z[7]));
Q_FDP0B U8 ( .D(n28), .QTFCLK( ), .Q(n5));
Q_NR02 U9 ( .A0(en), .A1(n5), .Z(n6));
Q_FDP0B U10 ( .D(en), .QTFCLK( ), .Q(n7));
Q_INV U11 ( .A(n7), .Z(n8));
Q_AN02 U12 ( .A0(en), .A1(n8), .Z(n9));
Q_INV U13 (.A(\i_p1[3]%release ), .Z(n11));
Q_BUFZP U14 (.OE(n29), .A(n4), .Z(\i_p1[3]%release ));
Q_LDN2 U15 ( .G(n11), .S(n12), .D(n3), .Q(n13), .QN( ));
Q_INV U16 ( .A(n9), .Z(n12));
Q_BUFZP U17 (.OE(n13), .A(n4), .Z(\i_p1[3]%force ));
Q_BUFZP U18 (.OE(n13), .A(n3), .Z(\i_p1[3]%force_value ));
Q_INV U19 (.A(\i_p1[2]%release ), .Z(n14));
Q_BUFZP U20 (.OE(n29), .A(n4), .Z(\i_p1[2]%release ));
Q_LDN2 U21 ( .G(n14), .S(n12), .D(n3), .Q(n15), .QN( ));
Q_BUFZP U22 (.OE(n15), .A(n4), .Z(\i_p1[2]%force ));
Q_BUFZP U23 (.OE(n15), .A(n3), .Z(\i_p1[2]%force_value ));
Q_INV U24 (.A(\i_p1[1]%release ), .Z(n16));
Q_BUFZP U25 (.OE(n29), .A(n4), .Z(\i_p1[1]%release ));
Q_LDN2 U26 ( .G(n16), .S(n12), .D(n3), .Q(n17), .QN( ));
Q_BUFZP U27 (.OE(n17), .A(n4), .Z(\i_p1[1]%force ));
Q_BUFZP U28 (.OE(n17), .A(n3), .Z(\i_p1[1]%force_value ));
Q_INV U29 (.A(\i_p1[0]%release ), .Z(n18));
Q_BUFZP U30 (.OE(n29), .A(n4), .Z(\i_p1[0]%release ));
Q_LDN2 U31 ( .G(n18), .S(n12), .D(n3), .Q(n19), .QN( ));
Q_BUFZP U32 (.OE(n19), .A(n4), .Z(\i_p1[0]%force ));
Q_BUFZP U33 (.OE(n19), .A(n10), .Z(\i_p1[0]%force_value ));
Q_INV U34 (.A(\j_p2[7]%release ), .Z(n20));
Q_BUFZP U35 (.OE(n29), .A(n4), .Z(\j_p2[7]%release ));
Q_LDN2 U36 ( .G(n20), .S(n12), .D(n3), .Q(n21), .QN( ));
Q_BUFZP U37 (.OE(n21), .A(n4), .Z(\j_p2[7]%force ));
Q_BUFZP U38 (.OE(n21), .A(n3), .Z(\j_p2[7]%force_value ));
Q_INV U39 (.A(\j_p2[6]%release ), .Z(n22));
Q_BUFZP U40 (.OE(n29), .A(n4), .Z(\j_p2[6]%release ));
Q_LDN2 U41 ( .G(n22), .S(n12), .D(n3), .Q(n23), .QN( ));
Q_BUFZP U42 (.OE(n23), .A(n4), .Z(\j_p2[6]%force ));
Q_BUFZP U43 (.OE(n23), .A(n3), .Z(\j_p2[6]%force_value ));
Q_INV U44 (.A(\j_p2[5]%release ), .Z(n24));
Q_BUFZP U45 (.OE(n29), .A(n4), .Z(\j_p2[5]%release ));
Q_LDN2 U46 ( .G(n24), .S(n12), .D(n3), .Q(n25), .QN( ));
Q_BUFZP U47 (.OE(n25), .A(n4), .Z(\j_p2[5]%force ));
Q_BUFZP U48 (.OE(n25), .A(n3), .Z(\j_p2[5]%force_value ));
Q_INV U49 (.A(\j_p2[4]%release ), .Z(n26));
Q_BUFZP U50 (.OE(n29), .A(n4), .Z(\j_p2[4]%release ));
Q_LDN2 U51 ( .G(n26), .S(n12), .D(n3), .Q(n27), .QN( ));
Q_BUFZP U52 (.OE(n27), .A(n4), .Z(\j_p2[4]%force ));
Q_BUFZP U53 (.OE(n27), .A(n4), .Z(\j_p2[4]%force_value ));
Q_INV U54 ( .A(en), .Z(n28));
Q_OR02 U55 ( .A0(n9), .A1(n6), .Z(n29));
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
wire u_I_i_a;
wire [7:0] u_I_z;
Q_ASSIGN U0 ( .B(i_a), .A(u_I_i_a));
Q_ASSIGN U1 ( .B(u_I_z[7]), .A(o_a[7]));
Q_ASSIGN U2 ( .B(u_I_z[6]), .A(o_a[6]));
Q_ASSIGN U3 ( .B(u_I_z[5]), .A(o_a[5]));
Q_ASSIGN U4 ( .B(u_I_z[4]), .A(o_a[4]));
Q_ASSIGN U5 ( .B(u_I_z[3]), .A(o_a[3]));
Q_ASSIGN U6 ( .B(u_I_z[2]), .A(o_a[2]));
Q_ASSIGN U7 ( .B(u_I_z[1]), .A(o_a[1]));
Q_ASSIGN U8 ( .B(u_I_z[0]), .A(o_a[0]));
M_P1_P2_I u_M1 ( .i_p1( u_I_z[3:0]), .j_p2( u_I_z[7:4]), .k_i_a( u_I_i_a), 
	.k_z( u_I_z[7:0]), .en( en));
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
