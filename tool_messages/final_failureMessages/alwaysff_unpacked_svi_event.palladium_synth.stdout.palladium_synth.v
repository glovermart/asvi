// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_clk, i_a, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
input i_a;
output [7:0] o_a;
wire u_I_i_clk;
wire u_I_i_a;
wire [0:7] u_I_o_a;
wire [7:0] u_I_x;
Q_BUF U0 ( .A(u_I_x[7]), .Z(u_I_o_a[0]));
Q_BUF U1 ( .A(u_I_o_a[2]), .Z(u_I_x[7]));
Q_BUF U2 ( .A(u_I_x[5]), .Z(u_I_o_a[2]));
Q_BUF U3 ( .A(u_I_o_a[1]), .Z(u_I_x[5]));
Q_BUF U4 ( .A(u_I_x[6]), .Z(u_I_o_a[1]));
Q_BUF U5 ( .A(u_I_o_a[3]), .Z(u_I_x[6]));
Q_BUF U6 ( .A(u_I_x[4]), .Z(u_I_o_a[3]));
Q_BUF U7 ( .A(u_I_o_a[4]), .Z(u_I_x[4]));
Q_BUF U8 ( .A(u_I_x[3]), .Z(u_I_o_a[4]));
Q_BUF U9 ( .A(u_I_o_a[7]), .Z(u_I_x[3]));
Q_BUF U10 ( .A(u_I_x[0]), .Z(u_I_o_a[7]));
Q_BUF U11 ( .A(u_I_o_a[6]), .Z(u_I_x[0]));
Q_BUF U12 ( .A(u_I_x[1]), .Z(u_I_o_a[6]));
Q_BUF U13 ( .A(u_I_o_a[5]), .Z(u_I_x[1]));
Q_BUF U14 ( .A(u_I_x[2]), .Z(u_I_o_a[5]));
Q_BUF U15 ( .A(u_I_o_a[0]), .Z(o_a[7]));
Q_BUF U16 ( .A(u_I_o_a[0]), .Z(o_a[5]));
Q_BUF U17 ( .A(u_I_o_a[0]), .Z(o_a[6]));
Q_BUF U18 ( .A(u_I_o_a[0]), .Z(o_a[4]));
Q_BUF U19 ( .A(u_I_o_a[0]), .Z(o_a[3]));
Q_BUF U20 ( .A(u_I_o_a[0]), .Z(o_a[0]));
Q_BUF U21 ( .A(u_I_o_a[0]), .Z(o_a[1]));
Q_BUF U22 ( .A(u_I_o_a[0]), .Z(o_a[2]));
Q_BUF U23 ( .A(i_a), .Z(u_I_i_a));
Q_BUF U24 ( .A(i_clk), .Z(u_I_i_clk));
Q_FDP0 U25 ( .CK(u_I_i_clk), .D(u_I_i_a), .Q(u_I_x[2]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "o_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_o_a 1 -2147483647 -2147483647 0 7"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_x 1 -2147483647 -2147483647 7 0"
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
