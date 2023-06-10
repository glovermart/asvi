// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( ifc_I_x, ifc_I_y, ifc_I_z);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout ifc_I_x;
inout ifc_I_y;
inout ifc_I_z;
endmodule

module top ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
wire u_I_x;
wire u_I_y;
wire u_I_z;
supply1 n1;
supply0 n2;
Q_BUF U0 ( .A(n2), .Z(u_I_z));
Q_BUF U1 ( .A(n1), .Z(u_I_y));
Q_BUF U2 ( .A(n2), .Z(u_I_x));
M u_M ( .ifc_I_x( u_I_z), .ifc_I_y( u_I_y), .ifc_I_z( u_I_z));
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
