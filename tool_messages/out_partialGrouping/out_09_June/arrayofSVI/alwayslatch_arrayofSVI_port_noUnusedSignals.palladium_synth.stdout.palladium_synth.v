// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2 ( p2_y, o_b, en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] p2_y;
output [7:0] o_b;
input en;
Q_LDP0 U0 ( .G(en), .D(p2_y[0]), .Q(o_b[0]), .QN( ));
Q_LDP0 U1 ( .G(en), .D(p2_y[1]), .Q(o_b[1]), .QN( ));
Q_LDP0 U2 ( .G(en), .D(p2_y[2]), .Q(o_b[2]), .QN( ));
Q_LDP0 U3 ( .G(en), .D(p2_y[3]), .Q(o_b[3]), .QN( ));
Q_LDP0 U4 ( .G(en), .D(p2_y[4]), .Q(o_b[4]), .QN( ));
Q_LDP0 U5 ( .G(en), .D(p2_y[5]), .Q(o_b[5]), .QN( ));
Q_LDP0 U6 ( .G(en), .D(p2_y[6]), .Q(o_b[6]), .QN( ));
Q_LDP0 U7 ( .G(en), .D(p2_y[7]), .Q(o_b[7]), .QN( ));
endmodule

module M1 ( p1_y, o_a, en, i_arst);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] p1_y;
output [7:0] o_a;
input en;
input i_arst;
Q_BUF U0 ( .A(p1_y[5]), .Z(p1_y[0]));
Q_BUF U1 ( .A(p1_y[5]), .Z(o_a[0]));
Q_BUF U2 ( .A(p1_y[5]), .Z(p1_y[2]));
Q_BUF U3 ( .A(p1_y[5]), .Z(o_a[2]));
Q_BUF U4 ( .A(p1_y[5]), .Z(p1_y[1]));
Q_BUF U5 ( .A(p1_y[5]), .Z(o_a[1]));
Q_BUF U6 ( .A(p1_y[5]), .Z(p1_y[3]));
Q_BUF U7 ( .A(p1_y[5]), .Z(o_a[3]));
Q_BUF U8 ( .A(p1_y[5]), .Z(p1_y[4]));
Q_BUF U9 ( .A(p1_y[5]), .Z(o_a[4]));
Q_BUF U10 ( .A(p1_y[5]), .Z(p1_y[7]));
Q_BUF U11 ( .A(p1_y[5]), .Z(o_a[7]));
Q_BUF U12 ( .A(p1_y[5]), .Z(p1_y[6]));
Q_BUF U13 ( .A(p1_y[5]), .Z(o_a[6]));
Q_BUF U14 ( .A(p1_y[5]), .Z(o_a[5]));
Q_LDP0 U15 ( .G(n2), .D(i_arst), .Q(p1_y[5]), .QN( ));
Q_INV U16 ( .A(en), .Z(n1));
Q_ND02 U17 ( .A0(i_arst), .A1(n1), .Z(n2));
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
M1 u_M1 ( .p1_y( u_I_y[7:0]), .o_a( o_a[7:0]), .en( en), .i_arst( i_arst));
M2 u_M2 ( .p2_y( u_I_y[7:0]), .o_b( o_b[7:0]), .en( en));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_y 1 -2147483647 -2147483647 7 0"
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
