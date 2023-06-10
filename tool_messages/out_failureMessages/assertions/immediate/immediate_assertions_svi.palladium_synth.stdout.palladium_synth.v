// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_a, i_b, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
input i_b;
output o_a;
wire u_I_i_a;
wire u_I_i_b;
wire u_I_o_a;
wire u_I_z;
Q_BUF U0 ( .A(u_I_o_a), .Z(o_a));
Q_BUF U1 ( .A(i_b), .Z(u_I_i_b));
Q_BUF U2 ( .A(i_a), .Z(u_I_i_a));
Q_MX02 U3 ( .S(u_I_z), .A0(u_I_i_b), .A1(u_I_i_a), .Z(u_I_o_a));
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
