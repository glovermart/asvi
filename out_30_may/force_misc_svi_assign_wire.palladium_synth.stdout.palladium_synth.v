// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( u_I_i_srst, u_I_z, u_I_y, u_I_x, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_srst;
inout u_I_z;
inout u_I_y;
inout u_I_x;
output o_a;
wire a;
supply1 n1;
supply0 n2;
Q_BUF U0 ( .A(n1), .Z(u_I_y));
Q_BUF U1 ( .A(n2), .Z(u_I_x));
Q_ASSIGN U2 ( .B(u_I_z), .A(a));
Q_ASSIGN U3 ( .B(u_I_z), .A(o_a));
endmodule

module top ( i_sclk, o_a, i_srst);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_sclk;
output o_a;
output i_srst;
wire u_I_i_srst;
wire u_I_z;
wire u_I_y;
wire u_I_x;
wire a;
wire [3:0] counter;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(n1), .Z(counter[3]));
Q_BUF U1 ( .A(n1), .Z(counter[2]));
Q_BUF U2 ( .A(n1), .Z(counter[1]));
Q_BUF U3 ( .A(n1), .Z(counter[0]));
Q_BUF U4 ( .A(i_srst), .Z(u_I_i_srst));
Q_BUF U5 ( .A(n2), .Z(i_srst));
Q_BUF U6 ( .A(a), .Z(o_a));
Q_OR02 U7 ( .A0(u_M1.o_a), .A1(u_M2.o_a), .Z(a));
Q_AN02 U8 ( .A0(u_I_x), .A1(u_I_y), .Z(n3));
Q_LDP0I1 U9 (.G(\u_I_z%release ), .D(n1), .Q(n4), .QN());
Q_BUFZP U10 (.OE(n4), .A(n2), .Z(\u_I_z%force ));
Q_BUFZP U11 (.OE(n4), .A(n3), .Z(\u_I_z%force_value ));
M u_M1 ( n2, n5, u_I_y, u_I_x,);
M u_M2 ( n2, n5, u_I_y, u_I_x,);
Q_RDN U14 (.Z(\u_I_z%release ));
Q_RDN U15 (.Z(\u_I_z%force ));
Q_MX02 U16 (.S(\u_I_z%force ), .A0(n5), .A1(\u_I_z%force_value ), .Z(u_I_z));
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
