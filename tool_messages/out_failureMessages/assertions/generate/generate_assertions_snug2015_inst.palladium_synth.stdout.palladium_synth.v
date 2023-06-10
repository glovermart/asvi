// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( o_y, i_a, i_b, i_c, i_d, i_sel);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] o_y;
input [7:0] i_a;
input [7:0] i_b;
input [7:0] i_c;
input [7:0] i_d;
input [0:0] i_sel;
Q_RDN U0 ( .Z(i_d[0]));
Q_RDN U1 ( .Z(i_d[1]));
Q_RDN U2 ( .Z(i_d[2]));
Q_RDN U3 ( .Z(i_d[3]));
Q_RDN U4 ( .Z(i_d[4]));
Q_RDN U5 ( .Z(i_d[5]));
Q_RDN U6 ( .Z(i_d[6]));
Q_RDN U7 ( .Z(i_d[7]));
Q_RDN U8 ( .Z(i_c[0]));
Q_RDN U9 ( .Z(i_c[1]));
Q_RDN U10 ( .Z(i_c[2]));
Q_RDN U11 ( .Z(i_c[3]));
Q_RDN U12 ( .Z(i_c[4]));
Q_RDN U13 ( .Z(i_c[5]));
Q_RDN U14 ( .Z(i_c[6]));
Q_RDN U15 ( .Z(i_c[7]));
Q_MX02 U16 ( .S(i_sel[0]), .A0(i_a[0]), .A1(i_b[0]), .Z(o_y[0]));
Q_MX02 U17 ( .S(i_sel[0]), .A0(i_a[1]), .A1(i_b[1]), .Z(o_y[1]));
Q_MX02 U18 ( .S(i_sel[0]), .A0(i_a[2]), .A1(i_b[2]), .Z(o_y[2]));
Q_MX02 U19 ( .S(i_sel[0]), .A0(i_a[3]), .A1(i_b[3]), .Z(o_y[3]));
Q_MX02 U20 ( .S(i_sel[0]), .A0(i_a[4]), .A1(i_b[4]), .Z(o_y[4]));
Q_MX02 U21 ( .S(i_sel[0]), .A0(i_a[5]), .A1(i_b[5]), .Z(o_y[5]));
Q_MX02 U22 ( .S(i_sel[0]), .A0(i_a[6]), .A1(i_b[6]), .Z(o_y[6]));
Q_MX02 U23 ( .S(i_sel[0]), .A0(i_a[7]), .A1(i_b[7]), .Z(o_y[7]));
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
