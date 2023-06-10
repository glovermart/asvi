// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( o_q, i_clk, i_srst);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [3:0] o_q;
input i_clk;
input i_srst;
wire [3:0] u_I_o_q;
wire u_I_i_clk;
wire u_I_i_srst;
Q_BUF U0 ( .A(u_I_o_q[0]), .Z(o_q[0]));
Q_BUF U1 ( .A(u_I_o_q[1]), .Z(o_q[1]));
Q_BUF U2 ( .A(u_I_o_q[2]), .Z(o_q[2]));
Q_BUF U3 ( .A(u_I_o_q[3]), .Z(o_q[3]));
Q_BUF U4 ( .A(i_srst), .Z(u_I_i_srst));
Q_BUF U5 ( .A(i_clk), .Z(u_I_i_clk));
Q_FDP0 U6 ( .CK(u_I_i_clk), .D(u_I_o_q[2]), .Q(u_I_o_q[3]), .QN(n2));
Q_FDP0 U7 ( .CK(u_I_i_clk), .D(u_I_o_q[1]), .Q(u_I_o_q[2]), .QN( ));
Q_FDP0 U8 ( .CK(u_I_i_clk), .D(u_I_o_q[0]), .Q(u_I_o_q[1]), .QN( ));
Q_FDP0 U9 ( .CK(u_I_i_clk), .D(n1), .Q(u_I_o_q[0]), .QN( ));
Q_AN02 U10 ( .A0(n2), .A1(u_I_i_srst), .Z(n1));
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
