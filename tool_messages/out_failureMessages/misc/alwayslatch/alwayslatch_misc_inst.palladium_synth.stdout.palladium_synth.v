// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M1 ( u_I_y, u_I_z, i_en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_y;
inout u_I_z;
input i_en;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(u_I_y));
endmodule

module M2 ( u_I_y, u_I_z, i_en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_y;
inout u_I_z;
input i_en;
M1 u_M1 ( .u_I_y( u_I_y), .u_I_z( u_I_z), .i_en( i_en));
Q_LDP0 U1 ( .G(i_en), .D(u_I_y), .Q(u_I_z), .QN( ));
endmodule

module top ( o_a, i_en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output o_a;
input i_en;
wire u_I_y;
wire u_I_z;
Q_ASSIGN U0 ( .B(u_I_z), .A(o_a));
M2 u_M2 ( .u_I_y( u_I_y), .u_I_z( u_I_z), .i_en( i_en));
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
