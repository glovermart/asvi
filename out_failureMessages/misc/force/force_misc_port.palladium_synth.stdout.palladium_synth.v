// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2_P2_ ( u_I_z, u_I_y, .i_a(\i_a%force_input ), .i_b(\i_b%force_input ));
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] u_I_z;
output [7:0] u_I_y;
input [0:7] \i_a%force_input ;
wire [7:0] i_a;
input [0:7] \i_b%force_input ;
wire [7:0] i_b;
wire [7:0] a;
wire [7:0] b;
Q_BUF U0 ( .A(b[0]), .Z(u_I_y[0]));
Q_BUF U1 ( .A(b[1]), .Z(u_I_y[1]));
Q_BUF U2 ( .A(b[2]), .Z(u_I_y[2]));
Q_BUF U3 ( .A(b[3]), .Z(u_I_y[3]));
Q_BUF U4 ( .A(b[4]), .Z(u_I_y[4]));
Q_BUF U5 ( .A(b[5]), .Z(u_I_y[5]));
Q_BUF U6 ( .A(b[6]), .Z(u_I_y[6]));
Q_BUF U7 ( .A(b[7]), .Z(u_I_y[7]));
Q_BUF U8 ( .A(a[0]), .Z(u_I_z[0]));
Q_BUF U9 ( .A(a[1]), .Z(u_I_z[1]));
Q_BUF U10 ( .A(a[2]), .Z(u_I_z[2]));
Q_BUF U11 ( .A(a[3]), .Z(u_I_z[3]));
Q_BUF U12 ( .A(a[4]), .Z(u_I_z[4]));
Q_BUF U13 ( .A(a[5]), .Z(u_I_z[5]));
Q_BUF U14 ( .A(a[6]), .Z(u_I_z[6]));
Q_BUF U15 ( .A(a[7]), .Z(u_I_z[7]));
Q_MX02 U16 (.S(\i_b[0]%force ), .A0(\i_b%force_input [7]), .A1(\i_b[0]%force_value ), .Z(i_b[0]));
Q_RDN U17 (.Z(\i_b[0]%force ));
Q_RDN U18 (.Z(\i_b[0]%release ));
Q_MX02 U19 (.S(\i_b[1]%force ), .A0(\i_b%force_input [6]), .A1(\i_b[1]%force_value ), .Z(i_b[1]));
Q_RDN U20 (.Z(\i_b[1]%force ));
Q_RDN U21 (.Z(\i_b[1]%release ));
Q_MX02 U22 (.S(\i_b[2]%force ), .A0(\i_b%force_input [5]), .A1(\i_b[2]%force_value ), .Z(i_b[2]));
Q_RDN U23 (.Z(\i_b[2]%force ));
Q_RDN U24 (.Z(\i_b[2]%release ));
Q_MX02 U25 (.S(\i_b[3]%force ), .A0(\i_b%force_input [4]), .A1(\i_b[3]%force_value ), .Z(i_b[3]));
Q_RDN U26 (.Z(\i_b[3]%force ));
Q_RDN U27 (.Z(\i_b[3]%release ));
Q_MX02 U28 (.S(\i_b[4]%force ), .A0(\i_b%force_input [3]), .A1(\i_b[4]%force_value ), .Z(i_b[4]));
Q_RDN U29 (.Z(\i_b[4]%force ));
Q_RDN U30 (.Z(\i_b[4]%release ));
Q_MX02 U31 (.S(\i_b[5]%force ), .A0(\i_b%force_input [2]), .A1(\i_b[5]%force_value ), .Z(i_b[5]));
Q_RDN U32 (.Z(\i_b[5]%force ));
Q_RDN U33 (.Z(\i_b[5]%release ));
Q_MX02 U34 (.S(\i_b[6]%force ), .A0(\i_b%force_input [1]), .A1(\i_b[6]%force_value ), .Z(i_b[6]));
Q_RDN U35 (.Z(\i_b[6]%force ));
Q_RDN U36 (.Z(\i_b[6]%release ));
Q_MX02 U37 (.S(\i_b[7]%force ), .A0(\i_b%force_input [0]), .A1(\i_b[7]%force_value ), .Z(i_b[7]));
Q_RDN U38 (.Z(\i_b[7]%force ));
Q_RDN U39 (.Z(\i_b[7]%release ));
Q_MX02 U40 (.S(\i_a[0]%force ), .A0(\i_a%force_input [7]), .A1(\i_a[0]%force_value ), .Z(i_a[0]));
Q_RDN U41 (.Z(\i_a[0]%force ));
Q_RDN U42 (.Z(\i_a[0]%release ));
Q_MX02 U43 (.S(\i_a[1]%force ), .A0(\i_a%force_input [6]), .A1(\i_a[1]%force_value ), .Z(i_a[1]));
Q_RDN U44 (.Z(\i_a[1]%force ));
Q_RDN U45 (.Z(\i_a[1]%release ));
Q_MX02 U46 (.S(\i_a[2]%force ), .A0(\i_a%force_input [5]), .A1(\i_a[2]%force_value ), .Z(i_a[2]));
Q_RDN U47 (.Z(\i_a[2]%force ));
Q_RDN U48 (.Z(\i_a[2]%release ));
Q_MX02 U49 (.S(\i_a[3]%force ), .A0(\i_a%force_input [4]), .A1(\i_a[3]%force_value ), .Z(i_a[3]));
Q_RDN U50 (.Z(\i_a[3]%force ));
Q_RDN U51 (.Z(\i_a[3]%release ));
Q_MX02 U52 (.S(\i_a[4]%force ), .A0(\i_a%force_input [3]), .A1(\i_a[4]%force_value ), .Z(i_a[4]));
Q_RDN U53 (.Z(\i_a[4]%force ));
Q_RDN U54 (.Z(\i_a[4]%release ));
Q_MX02 U55 (.S(\i_a[5]%force ), .A0(\i_a%force_input [2]), .A1(\i_a[5]%force_value ), .Z(i_a[5]));
Q_RDN U56 (.Z(\i_a[5]%force ));
Q_RDN U57 (.Z(\i_a[5]%release ));
Q_MX02 U58 (.S(\i_a[6]%force ), .A0(\i_a%force_input [1]), .A1(\i_a[6]%force_value ), .Z(i_a[6]));
Q_RDN U59 (.Z(\i_a[6]%force ));
Q_RDN U60 (.Z(\i_a[6]%release ));
Q_MX02 U61 (.S(\i_a[7]%force ), .A0(\i_a%force_input [0]), .A1(\i_a[7]%force_value ), .Z(i_a[7]));
Q_RDN U62 (.Z(\i_a[7]%force ));
Q_RDN U63 (.Z(\i_a[7]%release ));
Q_BUF U64 (.A(i_a[0]), .Z(a[0]));
Q_BUF U65 (.A(i_a[1]), .Z(a[1]));
Q_BUF U66 (.A(i_a[3]), .Z(a[3]));
Q_BUF U67 (.A(i_a[4]), .Z(a[4]));
Q_BUF U68 (.A(i_a[5]), .Z(a[5]));
Q_BUF U69 (.A(i_a[6]), .Z(a[6]));
Q_BUF U70 (.A(i_a[7]), .Z(a[7]));
Q_INV U71 ( .A(i_a[2]), .Z(a[2]));
Q_BUF U72 (.A(i_b[0]), .Z(b[0]));
Q_BUF U73 (.A(i_b[1]), .Z(b[1]));
Q_BUF U74 (.A(i_b[3]), .Z(b[3]));
Q_BUF U75 (.A(i_b[4]), .Z(b[4]));
Q_BUF U76 (.A(i_b[5]), .Z(b[5]));
Q_BUF U77 (.A(i_b[6]), .Z(b[6]));
Q_BUF U78 (.A(i_b[7]), .Z(b[7]));
Q_INV U79 ( .A(i_b[2]), .Z(b[2]));
endmodule

module M1_P1_ ( u_I_z, u_I_y, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] u_I_z;
input [7:0] u_I_y;
output [7:0] o_a;
wire [7:0] a;
Q_BUF U0 ( .A(a[7]), .Z(o_a[7]));
Q_BUF U1 ( .A(a[6]), .Z(o_a[6]));
Q_BUF U2 ( .A(a[5]), .Z(o_a[5]));
Q_BUF U3 ( .A(a[4]), .Z(o_a[4]));
Q_BUF U4 ( .A(a[3]), .Z(o_a[3]));
Q_BUF U5 ( .A(a[2]), .Z(o_a[2]));
Q_BUF U6 ( .A(a[1]), .Z(o_a[1]));
Q_BUF U7 ( .A(a[0]), .Z(o_a[0]));
Q_AD01HF U8 ( .A0(u_I_z[0]), .B0(u_I_y[0]), .S(a[0]), .CO(n1));
Q_XOR3 U9 ( .A0(u_I_z[7]), .A1(u_I_y[7]), .A2(n4), .Z(a[7]));
Q_AD02 U10 ( .CI(n1), .A0(u_I_z[1]), .A1(u_I_z[2]), .B0(u_I_y[1]), .B1(u_I_y[2]), .S0(a[1]), .S1(a[2]), .CO(n2));
Q_AD02 U11 ( .CI(n2), .A0(u_I_z[3]), .A1(u_I_z[4]), .B0(u_I_y[3]), .B1(u_I_y[4]), .S0(a[3]), .S1(a[4]), .CO(n3));
Q_AD02 U12 ( .CI(n3), .A0(u_I_z[5]), .A1(u_I_z[6]), .B0(u_I_y[5]), .B1(u_I_y[6]), .S0(a[5]), .S1(a[6]), .CO(n4));
endmodule

module top ( i_a, i_b, i_srst, o_c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] i_a;
input [7:0] i_b;
input i_srst;
output [7:0] o_c;
wire [7:0] u_I_z;
wire [7:0] u_I_y;
wire [7:0] b;
wire [7:0] c;
wire [7:0] a;
supply1 n9;
supply0 n10;
Q_ASSIGN U0 ( .B(u_M1.o_a[0]), .A(a[0]));
Q_ASSIGN U1 ( .B(u_M1.o_a[1]), .A(a[1]));
Q_ASSIGN U2 ( .B(u_M1.o_a[2]), .A(a[2]));
Q_ASSIGN U3 ( .B(u_M1.o_a[3]), .A(a[3]));
Q_ASSIGN U4 ( .B(u_M1.o_a[4]), .A(a[4]));
Q_ASSIGN U5 ( .B(u_M1.o_a[5]), .A(a[5]));
Q_ASSIGN U6 ( .B(u_M1.o_a[6]), .A(a[6]));
Q_ASSIGN U7 ( .B(u_M1.o_a[7]), .A(a[7]));
Q_BUF U8 ( .A(i_b[0]), .Z(c[0]));
Q_BUF U9 ( .A(i_b[1]), .Z(c[1]));
Q_BUF U10 ( .A(i_b[2]), .Z(c[2]));
Q_BUF U11 ( .A(i_b[3]), .Z(c[3]));
Q_BUF U12 ( .A(i_b[4]), .Z(c[4]));
Q_BUF U13 ( .A(i_b[5]), .Z(c[5]));
Q_BUF U14 ( .A(i_b[6]), .Z(c[6]));
Q_BUF U15 ( .A(i_b[7]), .Z(c[7]));
Q_BUF U16 ( .A(i_a[0]), .Z(b[0]));
Q_BUF U17 ( .A(i_a[1]), .Z(b[1]));
Q_BUF U18 ( .A(i_a[2]), .Z(b[2]));
Q_BUF U19 ( .A(i_a[3]), .Z(b[3]));
Q_BUF U20 ( .A(i_a[4]), .Z(b[4]));
Q_BUF U21 ( .A(i_a[5]), .Z(b[5]));
Q_BUF U22 ( .A(i_a[6]), .Z(b[6]));
Q_BUF U23 ( .A(i_a[7]), .Z(b[7]));
Q_ASSIGN U24 ( .B(u_M1.o_a[0]), .A(o_c[0]));
Q_ASSIGN U25 ( .B(u_M1.o_a[1]), .A(o_c[1]));
Q_ASSIGN U26 ( .B(u_M1.o_a[2]), .A(o_c[2]));
Q_ASSIGN U27 ( .B(u_M1.o_a[3]), .A(o_c[3]));
Q_ASSIGN U28 ( .B(u_M1.o_a[4]), .A(o_c[4]));
Q_ASSIGN U29 ( .B(u_M1.o_a[5]), .A(o_c[5]));
Q_ASSIGN U30 ( .B(u_M1.o_a[6]), .A(o_c[6]));
Q_ASSIGN U31 ( .B(u_M1.o_a[7]), .A(o_c[7]));
M2_P2_ u_M2 ( u_I_z[7:0], u_I_y[7:0],,);
M1_P1_ u_M1 ( u_I_z[7:0], u_I_y[7:0],);
Q_BUFZP U34 (.OE(n1), .A(i_a[0]), .Z(u_M2.\i_a[0]%force_value ));
Q_BUFZP U35 (.OE(n1), .A(n9), .Z(u_M2.\i_a[0]%force ));
Q_LDP0I1 U36 (.G(u_M2.\i_a[0]%release ), .D(n10), .Q(n1), .QN());
Q_BUFZP U37 (.OE(n2), .A(i_a[1]), .Z(u_M2.\i_a[1]%force_value ));
Q_BUFZP U38 (.OE(n2), .A(n9), .Z(u_M2.\i_a[1]%force ));
Q_LDP0I1 U39 (.G(u_M2.\i_a[1]%release ), .D(n10), .Q(n2), .QN());
Q_BUFZP U40 (.OE(n3), .A(i_a[2]), .Z(u_M2.\i_a[2]%force_value ));
Q_BUFZP U41 (.OE(n3), .A(n9), .Z(u_M2.\i_a[2]%force ));
Q_LDP0I1 U42 (.G(u_M2.\i_a[2]%release ), .D(n10), .Q(n3), .QN());
Q_BUFZP U43 (.OE(n4), .A(i_a[3]), .Z(u_M2.\i_a[3]%force_value ));
Q_BUFZP U44 (.OE(n4), .A(n9), .Z(u_M2.\i_a[3]%force ));
Q_LDP0I1 U45 (.G(u_M2.\i_a[3]%release ), .D(n10), .Q(n4), .QN());
Q_BUFZP U46 (.OE(n5), .A(i_a[4]), .Z(u_M2.\i_a[4]%force_value ));
Q_BUFZP U47 (.OE(n5), .A(n9), .Z(u_M2.\i_a[4]%force ));
Q_LDP0I1 U48 (.G(u_M2.\i_a[4]%release ), .D(n10), .Q(n5), .QN());
Q_BUFZP U49 (.OE(n6), .A(i_a[5]), .Z(u_M2.\i_a[5]%force_value ));
Q_BUFZP U50 (.OE(n6), .A(n9), .Z(u_M2.\i_a[5]%force ));
Q_LDP0I1 U51 (.G(u_M2.\i_a[5]%release ), .D(n10), .Q(n6), .QN());
Q_BUFZP U52 (.OE(n7), .A(i_a[6]), .Z(u_M2.\i_a[6]%force_value ));
Q_BUFZP U53 (.OE(n7), .A(n9), .Z(u_M2.\i_a[6]%force ));
Q_LDP0I1 U54 (.G(u_M2.\i_a[6]%release ), .D(n10), .Q(n7), .QN());
Q_BUFZP U55 (.OE(n8), .A(i_a[7]), .Z(u_M2.\i_a[7]%force_value ));
Q_BUFZP U56 (.OE(n8), .A(n9), .Z(u_M2.\i_a[7]%force ));
Q_LDP0I1 U57 (.G(u_M2.\i_a[7]%release ), .D(n10), .Q(n8), .QN());
Q_BUFZP U58 (.OE(n11), .A(i_b[0]), .Z(u_M2.\i_b[0]%force_value ));
Q_BUFZP U59 (.OE(n11), .A(n9), .Z(u_M2.\i_b[0]%force ));
Q_LDP0I1 U60 (.G(u_M2.\i_b[0]%release ), .D(n10), .Q(n11), .QN());
Q_BUFZP U61 (.OE(n12), .A(i_b[1]), .Z(u_M2.\i_b[1]%force_value ));
Q_BUFZP U62 (.OE(n12), .A(n9), .Z(u_M2.\i_b[1]%force ));
Q_LDP0I1 U63 (.G(u_M2.\i_b[1]%release ), .D(n10), .Q(n12), .QN());
Q_BUFZP U64 (.OE(n13), .A(i_b[2]), .Z(u_M2.\i_b[2]%force_value ));
Q_BUFZP U65 (.OE(n13), .A(n9), .Z(u_M2.\i_b[2]%force ));
Q_LDP0I1 U66 (.G(u_M2.\i_b[2]%release ), .D(n10), .Q(n13), .QN());
Q_BUFZP U67 (.OE(n14), .A(i_b[3]), .Z(u_M2.\i_b[3]%force_value ));
Q_BUFZP U68 (.OE(n14), .A(n9), .Z(u_M2.\i_b[3]%force ));
Q_LDP0I1 U69 (.G(u_M2.\i_b[3]%release ), .D(n10), .Q(n14), .QN());
Q_BUFZP U70 (.OE(n15), .A(i_b[4]), .Z(u_M2.\i_b[4]%force_value ));
Q_BUFZP U71 (.OE(n15), .A(n9), .Z(u_M2.\i_b[4]%force ));
Q_LDP0I1 U72 (.G(u_M2.\i_b[4]%release ), .D(n10), .Q(n15), .QN());
Q_BUFZP U73 (.OE(n16), .A(i_b[5]), .Z(u_M2.\i_b[5]%force_value ));
Q_BUFZP U74 (.OE(n16), .A(n9), .Z(u_M2.\i_b[5]%force ));
Q_LDP0I1 U75 (.G(u_M2.\i_b[5]%release ), .D(n10), .Q(n16), .QN());
Q_BUFZP U76 (.OE(n17), .A(i_b[6]), .Z(u_M2.\i_b[6]%force_value ));
Q_BUFZP U77 (.OE(n17), .A(n9), .Z(u_M2.\i_b[6]%force ));
Q_LDP0I1 U78 (.G(u_M2.\i_b[6]%release ), .D(n10), .Q(n17), .QN());
Q_BUFZP U79 (.OE(n18), .A(i_b[7]), .Z(u_M2.\i_b[7]%force_value ));
Q_BUFZP U80 (.OE(n18), .A(n9), .Z(u_M2.\i_b[7]%force ));
Q_LDP0I1 U81 (.G(u_M2.\i_b[7]%release ), .D(n10), .Q(n18), .QN());
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
