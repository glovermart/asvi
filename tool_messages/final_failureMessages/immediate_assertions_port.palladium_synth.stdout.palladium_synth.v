// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( p_z, i_a, i_b, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input p_z;
input i_a;
input i_b;
output o_a;
Q_MX02 U0 ( .S(p_z), .A0(i_b), .A1(i_a), .Z(o_a));
endmodule

module top ( i_a, i_b, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
input i_b;
output o_a;
wire u_I_z;
M u_M ( .p_z( u_I_z), .i_a( i_a), .i_b( i_b), .o_a( o_a));
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
