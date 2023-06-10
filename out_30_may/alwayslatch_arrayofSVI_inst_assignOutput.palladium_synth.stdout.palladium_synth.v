// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( en, i_arst, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input en;
input i_arst;
output [7:0] o_a;
wire [7:0] u_I_y;
wire [7:0] u_I_x;
wire a;
wire [7:0] a_a;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(a));
Q_BUF U1 ( .A(n1), .Z(u_I_x[0]));
Q_BUF U2 ( .A(n1), .Z(u_I_x[1]));
Q_BUF U3 ( .A(n1), .Z(u_I_x[2]));
Q_BUF U4 ( .A(n1), .Z(u_I_x[3]));
Q_BUF U5 ( .A(n1), .Z(u_I_x[4]));
Q_BUF U6 ( .A(n1), .Z(u_I_x[5]));
Q_BUF U7 ( .A(n1), .Z(u_I_x[6]));
Q_BUF U8 ( .A(n1), .Z(u_I_x[7]));
Q_BUF U9 ( .A(u_I_y[7]), .Z(a_a[7]));
Q_BUF U10 ( .A(a_a[5]), .Z(u_I_y[7]));
Q_BUF U11 ( .A(u_I_y[5]), .Z(a_a[5]));
Q_BUF U12 ( .A(a_a[6]), .Z(u_I_y[5]));
Q_BUF U13 ( .A(u_I_y[6]), .Z(a_a[6]));
Q_BUF U14 ( .A(a_a[4]), .Z(u_I_y[6]));
Q_BUF U15 ( .A(u_I_y[4]), .Z(a_a[4]));
Q_BUF U16 ( .A(a_a[3]), .Z(u_I_y[4]));
Q_BUF U17 ( .A(u_I_y[3]), .Z(a_a[3]));
Q_BUF U18 ( .A(a_a[0]), .Z(u_I_y[3]));
Q_BUF U19 ( .A(u_I_y[0]), .Z(a_a[0]));
Q_BUF U20 ( .A(a_a[1]), .Z(u_I_y[0]));
Q_BUF U21 ( .A(u_I_y[1]), .Z(a_a[1]));
Q_BUF U22 ( .A(a_a[2]), .Z(u_I_y[1]));
Q_BUF U23 ( .A(u_I_y[2]), .Z(a_a[2]));
Q_BUF U24 ( .A(a_a[7]), .Z(o_a[7]));
Q_BUF U25 ( .A(a_a[7]), .Z(o_a[5]));
Q_BUF U26 ( .A(a_a[7]), .Z(o_a[6]));
Q_BUF U27 ( .A(a_a[7]), .Z(o_a[4]));
Q_BUF U28 ( .A(a_a[7]), .Z(o_a[3]));
Q_BUF U29 ( .A(a_a[7]), .Z(o_a[0]));
Q_BUF U30 ( .A(a_a[7]), .Z(o_a[1]));
Q_BUF U31 ( .A(a_a[7]), .Z(o_a[2]));
Q_LDP0 U32 ( .G(n2), .D(i_arst), .Q(u_I_y[2]), .QN( ));
Q_ND02 U33 ( .A0(i_arst), .A1(n3), .Z(n2));
Q_INV U34 ( .A(en), .Z(n3));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_x 1 -2147483647 -2147483647 7 0"
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
