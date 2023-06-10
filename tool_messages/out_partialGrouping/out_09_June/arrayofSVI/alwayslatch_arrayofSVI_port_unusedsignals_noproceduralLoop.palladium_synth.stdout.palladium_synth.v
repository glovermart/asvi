// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2 ( p2_y, p2_w, o_b, en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] p2_y;
output [7:0] p2_w;
output [7:0] o_b;
output en;
Q_BUF U0 ( .A(p2_w[7]), .Z(o_b[7]));
Q_BUF U1 ( .A(p2_w[6]), .Z(o_b[6]));
Q_BUF U2 ( .A(p2_w[5]), .Z(o_b[5]));
Q_BUF U3 ( .A(p2_w[4]), .Z(o_b[4]));
Q_BUF U4 ( .A(p2_w[3]), .Z(o_b[3]));
Q_BUF U5 ( .A(p2_w[2]), .Z(o_b[2]));
Q_BUF U6 ( .A(p2_w[1]), .Z(o_b[1]));
Q_BUF U7 ( .A(p2_w[0]), .Z(o_b[0]));
Q_LDP0 U8 ( .G(en), .D(p2_y[0]), .Q(p2_w[0]), .QN( ));
Q_LDP0 U9 ( .G(en), .D(p2_y[1]), .Q(p2_w[1]), .QN( ));
Q_LDP0 U10 ( .G(en), .D(p2_y[2]), .Q(p2_w[2]), .QN( ));
Q_LDP0 U11 ( .G(en), .D(p2_y[3]), .Q(p2_w[3]), .QN( ));
Q_LDP0 U12 ( .G(en), .D(p2_y[4]), .Q(p2_w[4]), .QN( ));
Q_LDP0 U13 ( .G(en), .D(p2_y[5]), .Q(p2_w[5]), .QN( ));
Q_LDP0 U14 ( .G(en), .D(p2_y[6]), .Q(p2_w[6]), .QN( ));
Q_LDP0 U15 ( .G(en), .D(p2_y[7]), .Q(p2_w[7]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "p2_w 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
endmodule

module M1 ( p1_x, p1_y, o_a, en, i_arst);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] p1_x;
output [7:0] p1_y;
output [7:0] o_a;
output en;
output i_arst;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(p1_x[7]));
Q_BUF U1 ( .A(n1), .Z(p1_x[6]));
Q_BUF U2 ( .A(n1), .Z(p1_x[5]));
Q_BUF U3 ( .A(n1), .Z(p1_x[4]));
Q_BUF U4 ( .A(n1), .Z(p1_x[3]));
Q_BUF U5 ( .A(n1), .Z(p1_x[2]));
Q_BUF U6 ( .A(n1), .Z(p1_x[1]));
Q_BUF U7 ( .A(n1), .Z(p1_x[0]));
Q_BUF U8 ( .A(p1_y[2]), .Z(p1_y[7]));
Q_BUF U9 ( .A(p1_y[2]), .Z(o_a[7]));
Q_BUF U10 ( .A(p1_y[2]), .Z(p1_y[5]));
Q_BUF U11 ( .A(p1_y[2]), .Z(o_a[5]));
Q_BUF U12 ( .A(p1_y[2]), .Z(p1_y[6]));
Q_BUF U13 ( .A(p1_y[2]), .Z(o_a[6]));
Q_BUF U14 ( .A(p1_y[2]), .Z(p1_y[4]));
Q_BUF U15 ( .A(p1_y[2]), .Z(o_a[4]));
Q_BUF U16 ( .A(p1_y[2]), .Z(p1_y[3]));
Q_BUF U17 ( .A(p1_y[2]), .Z(o_a[3]));
Q_BUF U18 ( .A(p1_y[2]), .Z(p1_y[0]));
Q_BUF U19 ( .A(p1_y[2]), .Z(o_a[0]));
Q_BUF U20 ( .A(p1_y[2]), .Z(p1_y[1]));
Q_BUF U21 ( .A(p1_y[2]), .Z(o_a[1]));
Q_BUF U22 ( .A(p1_y[2]), .Z(o_a[2]));
Q_LDP0 U23 ( .G(n2), .D(i_arst), .Q(p1_y[2]), .QN( ));
Q_ND02 U24 ( .A0(i_arst), .A1(n3), .Z(n2));
Q_INV U25 ( .A(en), .Z(n3));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "p1_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
endmodule

module top ( en, i_clk, i_arst, o_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input en;
input i_clk;
input i_arst;
output [7:0] o_a;
output [7:0] o_b;
wire [7:0] u_I_y;
wire [7:0] u_I_x;
wire [7:0] u_I_w;
M1 u_M1 ( .p1_x( u_I_x[7:0]), .p1_y( u_I_y[7:0]), .o_a( o_a[7:0]), .en( 
	en), .i_arst( i_arst));
M2 u_M2 ( .p2_y( u_I_y[7:0]), .p2_w( u_I_w[7:0]), .o_b( o_b[7:0]), .en( 
	en));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_w 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "3"
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
