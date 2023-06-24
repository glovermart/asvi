// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( p_i_clk, p_i_srst, o_q);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input p_i_clk;
input p_i_srst;
output [3:0] o_q;
Q_FDP0 U0 ( .CK(p_i_clk), .D(o_q[2]), .Q(o_q[3]), .QN(n2));
Q_FDP0 U1 ( .CK(p_i_clk), .D(o_q[1]), .Q(o_q[2]), .QN( ));
Q_FDP0 U2 ( .CK(p_i_clk), .D(o_q[0]), .Q(o_q[1]), .QN( ));
Q_FDP0 U3 ( .CK(p_i_clk), .D(n1), .Q(o_q[0]), .QN( ));
Q_AN02 U4 ( .A0(n2), .A1(p_i_srst), .Z(n1));
endmodule

module top ( o_q, i_clk, i_srst);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [3:0] o_q;
input i_clk;
input i_srst;
wire u_I_i_clk;
wire u_I_i_srst;
M u_M ( .p_i_clk( i_clk), .p_i_srst( i_srst), .o_q( o_q[3:0]));
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
