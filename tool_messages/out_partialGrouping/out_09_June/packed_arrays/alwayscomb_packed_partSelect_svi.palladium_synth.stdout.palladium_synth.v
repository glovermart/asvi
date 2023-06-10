// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] o_a;
wire [7:0] u_I_x;
supply0 n1;
supply1 n2;
assign o_a[4] = u_I_x[4];
assign o_a[5] = u_I_x[5];
assign o_a[6] = u_I_x[6];
assign o_a[7] = u_I_x[7];
assign o_a[0] = u_I_x[0];
assign o_a[1] = u_I_x[1];
assign o_a[2] = u_I_x[2];
assign o_a[3] = u_I_x[3];
Q_BUF U0 ( .A(n1), .Z(u_I_x[3]));
Q_BUF U1 ( .A(n1), .Z(u_I_x[2]));
Q_BUF U2 ( .A(n1), .Z(u_I_x[1]));
Q_BUF U3 ( .A(n1), .Z(u_I_x[0]));
Q_BUF U4 ( .A(n2), .Z(u_I_x[7]));
Q_BUF U5 ( .A(n2), .Z(u_I_x[6]));
Q_BUF U6 ( .A(n2), .Z(u_I_x[5]));
Q_BUF U7 ( .A(n2), .Z(u_I_x[4]));
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
