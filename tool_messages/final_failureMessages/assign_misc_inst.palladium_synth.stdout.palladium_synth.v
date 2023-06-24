// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M4 ( u_I4_z, u_I4_y, u_I4_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I4_z;
inout u_I4_y;
inout u_I4_x;
wire a;
assign u_I4_z = 1'b0;
assign u_I4_y = 1'b1;
Q_ASSIGN U0 ( .B(a), .A(u_I4_x));
endmodule

module M3 ( u_I3_z, u_I3_y, u_I3_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I3_z;
inout u_I3_y;
inout u_I3_x;
wire a;
assign u_I3_z = 1'b0;
assign u_I3_y = 1'b1;
Q_ASSIGN U0 ( .B(a), .A(u_I3_x));
endmodule

module M2 ( u_I2_z, u_I2_y, u_I2_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I2_z;
inout u_I2_y;
inout u_I2_x;
wire a;
assign u_I2_z = 1'b0;
assign u_I2_y = 1'b1;
Q_ASSIGN U0 ( .B(a), .A(u_I2_x));
endmodule

module M1 ( u_I1_z, u_I1_y, u_I1_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I1_z;
inout u_I1_y;
inout u_I1_x;
wire a;
assign u_I1_z = 1'b0;
assign u_I1_y = 1'b1;
Q_ASSIGN U0 ( .B(a), .A(u_I1_x));
endmodule

module top ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
wire u_I5_z;
wire u_I5_y;
wire u_I5_x;
M1 u_M1 ( .u_I1_z( u_I5_z), .u_I1_y( u_I5_y), .u_I1_x( u_I5_x));
M2 u_M2 ( .u_I2_z( u_I5_z), .u_I2_y( u_I5_y), .u_I2_x( u_I5_x));
M3 u_M3 ( .u_I3_z( u_I5_z), .u_I3_y( u_I5_y), .u_I3_x( u_I5_x));
M4 u_M4 ( .u_I4_z( u_I5_z), .u_I4_y( u_I5_y), .u_I4_x( u_I5_x));
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
