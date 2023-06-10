// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( o_y, i_a, i_b, i_c, i_d, i_sel);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] o_y;
input [7:0] i_a;
input [7:0] i_b;
input [7:0] i_c;
input [7:0] i_d;
input [0:0] i_sel;
wire [7:0] u_I_o_y;
wire [7:0] u_I_i_a;
wire [7:0] u_I_i_b;
wire [7:0] u_I_i_c;
wire [7:0] u_I_i_d;
wire [0:0] u_I_i_sel;
Q_ASSIGN U0 ( .B(i_d[0]), .A(u_I_i_d[0]));
Q_ASSIGN U1 ( .B(i_d[1]), .A(u_I_i_d[1]));
Q_ASSIGN U2 ( .B(i_d[2]), .A(u_I_i_d[2]));
Q_ASSIGN U3 ( .B(i_d[3]), .A(u_I_i_d[3]));
Q_ASSIGN U4 ( .B(i_d[4]), .A(u_I_i_d[4]));
Q_ASSIGN U5 ( .B(i_d[5]), .A(u_I_i_d[5]));
Q_ASSIGN U6 ( .B(i_d[6]), .A(u_I_i_d[6]));
Q_ASSIGN U7 ( .B(i_d[7]), .A(u_I_i_d[7]));
Q_ASSIGN U8 ( .B(i_c[0]), .A(u_I_i_c[0]));
Q_ASSIGN U9 ( .B(i_c[1]), .A(u_I_i_c[1]));
Q_ASSIGN U10 ( .B(i_c[2]), .A(u_I_i_c[2]));
Q_ASSIGN U11 ( .B(i_c[3]), .A(u_I_i_c[3]));
Q_ASSIGN U12 ( .B(i_c[4]), .A(u_I_i_c[4]));
Q_ASSIGN U13 ( .B(i_c[5]), .A(u_I_i_c[5]));
Q_ASSIGN U14 ( .B(i_c[6]), .A(u_I_i_c[6]));
Q_ASSIGN U15 ( .B(i_c[7]), .A(u_I_i_c[7]));
Q_BUF U16 ( .A(i_sel[0]), .Z(u_I_i_sel[0]));
Q_BUF U17 ( .A(u_I_o_y[0]), .Z(o_y[0]));
Q_BUF U18 ( .A(u_I_o_y[1]), .Z(o_y[1]));
Q_BUF U19 ( .A(u_I_o_y[2]), .Z(o_y[2]));
Q_BUF U20 ( .A(u_I_o_y[3]), .Z(o_y[3]));
Q_BUF U21 ( .A(u_I_o_y[4]), .Z(o_y[4]));
Q_BUF U22 ( .A(u_I_o_y[5]), .Z(o_y[5]));
Q_BUF U23 ( .A(u_I_o_y[6]), .Z(o_y[6]));
Q_BUF U24 ( .A(u_I_o_y[7]), .Z(o_y[7]));
Q_BUF U25 ( .A(i_b[0]), .Z(u_I_i_b[0]));
Q_BUF U26 ( .A(i_b[1]), .Z(u_I_i_b[1]));
Q_BUF U27 ( .A(i_b[2]), .Z(u_I_i_b[2]));
Q_BUF U28 ( .A(i_b[3]), .Z(u_I_i_b[3]));
Q_BUF U29 ( .A(i_b[4]), .Z(u_I_i_b[4]));
Q_BUF U30 ( .A(i_b[5]), .Z(u_I_i_b[5]));
Q_BUF U31 ( .A(i_b[6]), .Z(u_I_i_b[6]));
Q_BUF U32 ( .A(i_b[7]), .Z(u_I_i_b[7]));
Q_BUF U33 ( .A(i_a[0]), .Z(u_I_i_a[0]));
Q_BUF U34 ( .A(i_a[1]), .Z(u_I_i_a[1]));
Q_BUF U35 ( .A(i_a[2]), .Z(u_I_i_a[2]));
Q_BUF U36 ( .A(i_a[3]), .Z(u_I_i_a[3]));
Q_BUF U37 ( .A(i_a[4]), .Z(u_I_i_a[4]));
Q_BUF U38 ( .A(i_a[5]), .Z(u_I_i_a[5]));
Q_BUF U39 ( .A(i_a[6]), .Z(u_I_i_a[6]));
Q_BUF U40 ( .A(i_a[7]), .Z(u_I_i_a[7]));
Q_RDN U41 ( .Z(i_d[0]));
Q_RDN U42 ( .Z(i_d[1]));
Q_RDN U43 ( .Z(i_d[2]));
Q_RDN U44 ( .Z(i_d[3]));
Q_RDN U45 ( .Z(i_d[4]));
Q_RDN U46 ( .Z(i_d[5]));
Q_RDN U47 ( .Z(i_d[6]));
Q_RDN U48 ( .Z(i_d[7]));
Q_RDN U49 ( .Z(i_c[0]));
Q_RDN U50 ( .Z(i_c[1]));
Q_RDN U51 ( .Z(i_c[2]));
Q_RDN U52 ( .Z(i_c[3]));
Q_RDN U53 ( .Z(i_c[4]));
Q_RDN U54 ( .Z(i_c[5]));
Q_RDN U55 ( .Z(i_c[6]));
Q_RDN U56 ( .Z(i_c[7]));
Q_RDN U57 ( .Z(i_d[0]));
Q_RDN U58 ( .Z(i_d[1]));
Q_RDN U59 ( .Z(i_d[2]));
Q_RDN U60 ( .Z(i_d[3]));
Q_RDN U61 ( .Z(i_d[4]));
Q_RDN U62 ( .Z(i_d[5]));
Q_RDN U63 ( .Z(i_d[6]));
Q_RDN U64 ( .Z(i_d[7]));
Q_RDN U65 ( .Z(i_c[0]));
Q_RDN U66 ( .Z(i_c[1]));
Q_RDN U67 ( .Z(i_c[2]));
Q_RDN U68 ( .Z(i_c[3]));
Q_RDN U69 ( .Z(i_c[4]));
Q_RDN U70 ( .Z(i_c[5]));
Q_RDN U71 ( .Z(i_c[6]));
Q_RDN U72 ( .Z(i_c[7]));
Q_MX02 U73 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[0]), .A1(u_I_i_b[0]), .Z(u_I_o_y[0]));
Q_MX02 U74 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[1]), .A1(u_I_i_b[1]), .Z(u_I_o_y[1]));
Q_MX02 U75 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[2]), .A1(u_I_i_b[2]), .Z(u_I_o_y[2]));
Q_MX02 U76 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[3]), .A1(u_I_i_b[3]), .Z(u_I_o_y[3]));
Q_MX02 U77 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[4]), .A1(u_I_i_b[4]), .Z(u_I_o_y[4]));
Q_MX02 U78 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[5]), .A1(u_I_i_b[5]), .Z(u_I_o_y[5]));
Q_MX02 U79 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[6]), .A1(u_I_i_b[6]), .Z(u_I_o_y[6]));
Q_MX02 U80 ( .S(u_I_i_sel[0]), .A0(u_I_i_a[7]), .A1(u_I_i_b[7]), .Z(u_I_o_y[7]));
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
