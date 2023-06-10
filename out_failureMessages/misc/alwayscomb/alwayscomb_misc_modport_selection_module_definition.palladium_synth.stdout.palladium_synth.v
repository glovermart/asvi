// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2 ( p2_x, p2_y, p2_z);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p2_x;
output p2_y;
output p2_z;
wire a;
wire b;
wire c;
Q_ASSIGN U0 ( .B(p2_z), .A(c));
Q_ASSIGN U1 ( .B(p2_y), .A(b));
Q_ASSIGN U2 ( .B(p2_x), .A(a));
endmodule

module M1 ( p1_x, p1_y, p1_z);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input p1_x;
input p1_y;
input p1_z;
wire a;
supply1 n1;
supply0 n2;
Q_BUF U0 ( .A(n1), .Z(p1_y));
Q_BUF U1 ( .A(n2), .Z(p1_x));
Q_ASSIGN U2 ( .B(a), .A(p1_z));
endmodule

module top ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
wire u_I1_x;
wire u_I1_y;
wire u_I1_z;
wire u_I2_x;
wire u_I2_y;
wire u_I2_z;
M1 u_M1 ( .p1_x( u_I1_x), .p1_y( u_I1_y), .p1_z( u_I1_z));
M2 u_M2 ( .p2_x( u_I2_x), .p2_y( u_I2_y), .p2_z( u_I2_z));
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
