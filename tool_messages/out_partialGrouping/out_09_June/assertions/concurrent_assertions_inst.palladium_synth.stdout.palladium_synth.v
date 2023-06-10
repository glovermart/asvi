// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( o_q, i_clk, i_srst);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [3:0] o_q;
input i_clk;
input i_srst;
wire u_I_i_clk;
wire u_I_i_srst;
Q_BUF U0 ( .A(i_srst), .Z(u_I_i_srst));
Q_BUF U1 ( .A(i_clk), .Z(u_I_i_clk));
Q_FDP0 U2 ( .CK(u_I_i_clk), .D(o_q[2]), .Q(o_q[3]), .QN(n2));
Q_FDP0 U3 ( .CK(u_I_i_clk), .D(o_q[1]), .Q(o_q[2]), .QN( ));
Q_FDP0 U4 ( .CK(u_I_i_clk), .D(o_q[0]), .Q(o_q[1]), .QN( ));
Q_FDP0 U5 ( .CK(u_I_i_clk), .D(n1), .Q(o_q[0]), .QN( ));
Q_AN02 U6 ( .A0(n2), .A1(u_I_i_srst), .Z(n1));
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
