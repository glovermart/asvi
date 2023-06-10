// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( u_I_i_arst, u_I_en, u_I_i_a, u_I_o_a, u_I_o_b, u_I_y, u_I_z);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] u_I_i_arst;
input [7:0] u_I_en;
input [7:0] u_I_i_a;
output [7:0] u_I_o_a;
output [7:0] u_I_o_b;
inout [7:0] u_I_y;
inout [7:0] u_I_z;
wire b;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(b));
Q_ASSIGN U1 ( .B(u_I_y[7]), .A(u_I_z[7]));
Q_ASSIGN U2 ( .B(u_I_y[6]), .A(u_I_z[6]));
Q_ASSIGN U3 ( .B(u_I_y[5]), .A(u_I_z[5]));
Q_ASSIGN U4 ( .B(u_I_y[4]), .A(u_I_z[4]));
Q_ASSIGN U5 ( .B(u_I_y[3]), .A(u_I_z[3]));
Q_ASSIGN U6 ( .B(u_I_y[2]), .A(u_I_z[2]));
Q_ASSIGN U7 ( .B(u_I_y[1]), .A(u_I_z[1]));
Q_ASSIGN U8 ( .B(u_I_y[0]), .A(u_I_z[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_o_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_o_b 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "2"
endmodule

module top ( i_arst, en, i_a, o_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_arst;
input en;
input i_a;
output [7:0] o_a;
output [7:0] o_b;
wire [7:0] u_I_i_arst;
wire [7:0] u_I_en;
wire [7:0] u_I_i_a;
wire [7:0] u_I_o_a;
wire [7:0] u_I_o_b;
wire [7:0] u_I_y;
wire [7:0] u_I_z;
Q_BUF U0 ( .A(u_I_i_arst[5]), .Z(u_I_i_arst[6]));
Q_BUF U1 ( .A(u_I_i_arst[4]), .Z(u_I_i_arst[5]));
Q_BUF U2 ( .A(u_I_i_arst[3]), .Z(u_I_i_arst[4]));
Q_BUF U3 ( .A(u_I_i_arst[2]), .Z(u_I_i_arst[3]));
Q_BUF U4 ( .A(u_I_i_arst[1]), .Z(u_I_i_arst[2]));
Q_BUF U5 ( .A(u_I_i_arst[0]), .Z(u_I_i_arst[1]));
Q_BUF U6 ( .A(u_I_i_arst[7]), .Z(u_I_i_arst[0]));
Q_BUF U7 ( .A(u_I_en[5]), .Z(u_I_en[6]));
Q_BUF U8 ( .A(u_I_en[4]), .Z(u_I_en[5]));
Q_BUF U9 ( .A(u_I_en[3]), .Z(u_I_en[4]));
Q_BUF U10 ( .A(u_I_en[2]), .Z(u_I_en[3]));
Q_BUF U11 ( .A(u_I_en[1]), .Z(u_I_en[2]));
Q_BUF U12 ( .A(u_I_en[0]), .Z(u_I_en[1]));
Q_BUF U13 ( .A(u_I_en[7]), .Z(u_I_en[0]));
Q_BUF U14 ( .A(u_I_i_a[5]), .Z(u_I_i_a[6]));
Q_BUF U15 ( .A(u_I_i_a[4]), .Z(u_I_i_a[5]));
Q_BUF U16 ( .A(u_I_i_a[3]), .Z(u_I_i_a[4]));
Q_BUF U17 ( .A(u_I_i_a[2]), .Z(u_I_i_a[3]));
Q_BUF U18 ( .A(u_I_i_a[1]), .Z(u_I_i_a[2]));
Q_BUF U19 ( .A(u_I_i_a[0]), .Z(u_I_i_a[1]));
Q_BUF U20 ( .A(u_I_i_a[7]), .Z(u_I_i_a[0]));
Q_ASSIGN U21 ( .B(u_I_z[7]), .A(u_I_o_b[7]));
Q_ASSIGN U22 ( .B(u_I_z[6]), .A(u_I_o_b[6]));
Q_ASSIGN U23 ( .B(u_I_z[5]), .A(u_I_o_b[5]));
Q_ASSIGN U24 ( .B(u_I_z[4]), .A(u_I_o_b[4]));
Q_ASSIGN U25 ( .B(u_I_z[3]), .A(u_I_o_b[3]));
Q_ASSIGN U26 ( .B(u_I_z[2]), .A(u_I_o_b[2]));
Q_ASSIGN U27 ( .B(u_I_z[1]), .A(u_I_o_b[1]));
Q_ASSIGN U28 ( .B(u_I_z[0]), .A(u_I_o_b[0]));
Q_ASSIGN U29 ( .B(u_I_y[7]), .A(u_I_o_a[5]));
Q_ASSIGN U30 ( .B(u_I_y[7]), .A(u_I_y[5]));
Q_ASSIGN U31 ( .B(u_I_y[7]), .A(u_I_o_a[0]));
Q_ASSIGN U32 ( .B(u_I_y[7]), .A(u_I_y[0]));
Q_ASSIGN U33 ( .B(u_I_y[7]), .A(u_I_o_a[1]));
Q_ASSIGN U34 ( .B(u_I_y[7]), .A(u_I_y[1]));
Q_ASSIGN U35 ( .B(u_I_y[7]), .A(u_I_o_a[2]));
Q_ASSIGN U36 ( .B(u_I_y[7]), .A(u_I_y[2]));
Q_ASSIGN U37 ( .B(u_I_y[7]), .A(u_I_o_a[3]));
Q_ASSIGN U38 ( .B(u_I_y[7]), .A(u_I_y[3]));
Q_ASSIGN U39 ( .B(u_I_y[7]), .A(u_I_o_a[4]));
Q_ASSIGN U40 ( .B(u_I_y[7]), .A(u_I_y[4]));
Q_ASSIGN U41 ( .B(u_I_y[7]), .A(u_I_o_a[6]));
Q_ASSIGN U42 ( .B(u_I_y[7]), .A(u_I_y[6]));
Q_ASSIGN U43 ( .B(u_I_y[7]), .A(u_I_o_a[7]));
Q_BUF U44 ( .A(i_arst), .Z(u_I_i_arst[7]));
Q_BUF U45 ( .A(en), .Z(u_I_en[7]));
Q_BUF U46 ( .A(i_a), .Z(u_I_i_a[7]));
Q_ASSIGN U47 ( .B(u_I_z[7]), .A(o_b[7]));
Q_ASSIGN U48 ( .B(u_I_z[6]), .A(o_b[6]));
Q_ASSIGN U49 ( .B(u_I_z[5]), .A(o_b[5]));
Q_ASSIGN U50 ( .B(u_I_z[4]), .A(o_b[4]));
Q_ASSIGN U51 ( .B(u_I_z[3]), .A(o_b[3]));
Q_ASSIGN U52 ( .B(u_I_z[2]), .A(o_b[2]));
Q_ASSIGN U53 ( .B(u_I_z[1]), .A(o_b[1]));
Q_ASSIGN U54 ( .B(u_I_z[0]), .A(o_b[0]));
Q_ASSIGN U55 ( .B(u_I_y[7]), .A(o_a[7]));
Q_ASSIGN U56 ( .B(u_I_y[7]), .A(o_a[5]));
Q_ASSIGN U57 ( .B(u_I_y[7]), .A(o_a[6]));
Q_ASSIGN U58 ( .B(u_I_y[7]), .A(o_a[4]));
Q_ASSIGN U59 ( .B(u_I_y[7]), .A(o_a[3]));
Q_ASSIGN U60 ( .B(u_I_y[7]), .A(o_a[0]));
Q_ASSIGN U61 ( .B(u_I_y[7]), .A(o_a[1]));
Q_ASSIGN U62 ( .B(u_I_y[7]), .A(o_a[2]));
Q_LDP1 U63 ( .G(u_I_en[6]), .R(u_I_i_arst[6]), .D(u_I_i_a[6]), .Q(u_I_y[7]), .QN( ));
M u_M_0 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
M u_M_1 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
M u_M_2 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
M u_M_3 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
M u_M_4 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
M u_M_5 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
M u_M_6 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
M u_M_7 ( .u_I_i_arst( { u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], u_I_i_arst[6], 
	u_I_i_arst[6]}), .u_I_en( { u_I_en[6], u_I_en[6], u_I_en[6], 
	u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6], u_I_en[6]}), .u_I_i_a( { 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], u_I_i_a[6], 
	u_I_i_a[6], u_I_i_a[6], u_I_i_a[6]}), .u_I_o_a( { u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), 
	.u_I_o_b( u_I_z[7:0]), .u_I_y( { u_I_y[7], u_I_y[7], u_I_y[7], 
	u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7], u_I_y[7]}), .u_I_z( 
	u_I_z[7:0]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_i_arst 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_en 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_i_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m4 "u_I_o_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m5 "u_I_o_b 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m6 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m7 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "7"
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
