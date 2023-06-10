// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( p1_y, p1_x, p2_z, p2_w);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input p1_y;
input p1_x;
output p2_z;
output p2_w;
Q_AN02 U0 ( .A0(p1_y), .A1(p1_x), .Z(p2_z));
Q_XOR2 U1 ( .A0(p1_y), .A1(p1_x), .Z(p2_w));
endmodule

module top ( u_I_y, u_I_x, u_I_z, u_I_w);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_y;
inout u_I_x;
inout u_I_z;
inout u_I_w;
M u_M ( .p1_y( u_I_y), .p1_x( u_I_x), .p2_z( u_I_z), .p2_w( u_I_w));
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
