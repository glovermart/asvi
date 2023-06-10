// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_a, i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
input i_clk;
output [0:7] o_a;
wire [0:7] u_I_x;
Q_BUF U0 ( .A(u_I_x[2]), .Z(u_I_x[0]));
Q_BUF U1 ( .A(u_I_x[1]), .Z(u_I_x[2]));
Q_BUF U2 ( .A(u_I_x[3]), .Z(u_I_x[1]));
Q_BUF U3 ( .A(u_I_x[4]), .Z(u_I_x[3]));
Q_BUF U4 ( .A(u_I_x[7]), .Z(u_I_x[4]));
Q_BUF U5 ( .A(u_I_x[6]), .Z(u_I_x[7]));
Q_BUF U6 ( .A(u_I_x[5]), .Z(u_I_x[6]));
Q_BUF U7 ( .A(u_I_x[0]), .Z(o_a[0]));
Q_BUF U8 ( .A(u_I_x[0]), .Z(o_a[2]));
Q_BUF U9 ( .A(u_I_x[0]), .Z(o_a[1]));
Q_BUF U10 ( .A(u_I_x[0]), .Z(o_a[3]));
Q_BUF U11 ( .A(u_I_x[0]), .Z(o_a[4]));
Q_BUF U12 ( .A(u_I_x[0]), .Z(o_a[7]));
Q_BUF U13 ( .A(u_I_x[0]), .Z(o_a[6]));
Q_BUF U14 ( .A(u_I_x[0]), .Z(o_a[5]));
Q_FDP0 U15 ( .CK(i_clk), .D(i_a), .Q(u_I_x[5]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "o_a 1 -2147483647 -2147483647 0 7"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_x 1 -2147483647 -2147483647 0 7"
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
