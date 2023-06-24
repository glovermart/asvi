// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2 ( u_I_z, u_I_y, u_I_x, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_z;
inout u_I_y;
inout u_I_x;
output o_b;
Q_XOR2 U0 ( .A0(u_I_x), .A1(u_I_y), .Z(n1));
Q_XOR2 U1 ( .A0(u_I_x), .A1(u_I_z), .Z(n2));
Q_OR02 U2 ( .A0(n1), .A1(n2), .Z(o_b));
endmodule

module M1 ( u_I_z, u_I_y, u_I_x, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_z;
inout u_I_y;
inout u_I_x;
output o_b;
Q_INV U0 ( .A(u_I_y), .Z(n1));
Q_XOR2 U1 ( .A0(u_I_x), .A1(u_I_z), .Z(n2));
Q_OR02 U2 ( .A0(n1), .A1(n2), .Z(o_b));
endmodule

module top ( i_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
output o_b;
wire u_I_z;
wire u_I_y;
wire u_I_x;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(n1), .Z(u_I_z));
Q_BUF U1 ( .A(n2), .Z(u_I_y));
Q_BUF U2 ( .A(n2), .Z(u_I_x));
M1 u_M1 ( .u_I_z( u_I_z), .u_I_y( u_I_y), .u_I_x( u_I_x), .o_b());
M2 u_M2 ( .u_I_z( u_I_z), .u_I_y( u_I_y), .u_I_x( u_I_x), .o_b());
Q_AN02 U5 ( .A0(u_M2.o_b), .A1(u_M1.o_b), .Z(n3));
Q_XNR2 U6 ( .A0(n3), .A1(i_a), .Z(o_b));
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
