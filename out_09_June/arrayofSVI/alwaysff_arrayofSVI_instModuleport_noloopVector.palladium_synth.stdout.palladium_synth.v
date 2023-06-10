// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_clk, u_I_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
inout [7:0] u_I_x;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(n1), .Z(u_I_x[7]));
Q_BUF U1 ( .A(n2), .Z(u_I_x[6]));
Q_BUF U2 ( .A(n1), .Z(u_I_x[5]));
Q_BUF U3 ( .A(n2), .Z(u_I_x[4]));
Q_BUF U4 ( .A(n1), .Z(u_I_x[3]));
Q_BUF U5 ( .A(n2), .Z(u_I_x[2]));
Q_BUF U6 ( .A(n1), .Z(u_I_x[1]));
Q_BUF U7 ( .A(n2), .Z(u_I_x[0]));
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
