// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2_P2_ ( i_p2);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:4] i_p2;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(i_p2[7]));
Q_BUF U1 ( .A(n1), .Z(i_p2[6]));
Q_BUF U2 ( .A(n1), .Z(i_p2[5]));
Q_BUF U3 ( .A(n1), .Z(i_p2[4]));
endmodule

module M1_P1_ ( i_p1);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [3:0] i_p1;
supply0 n1;
Q_BUF U0 ( .A(n1), .Z(i_p1[3]));
Q_BUF U1 ( .A(n1), .Z(i_p1[2]));
Q_BUF U2 ( .A(n1), .Z(i_p1[1]));
Q_BUF U3 ( .A(n1), .Z(i_p1[0]));
endmodule

module top ( o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] o_a;
wire [7:0] u_I_x;
Q_ASSIGN U0 ( .B(u_I_x[3]), .A(o_a[3]));
Q_ASSIGN U1 ( .B(u_I_x[2]), .A(o_a[2]));
Q_ASSIGN U2 ( .B(u_I_x[1]), .A(o_a[1]));
Q_ASSIGN U3 ( .B(u_I_x[0]), .A(o_a[0]));
Q_ASSIGN U4 ( .B(u_I_x[7]), .A(o_a[7]));
Q_ASSIGN U5 ( .B(u_I_x[6]), .A(o_a[6]));
Q_ASSIGN U6 ( .B(u_I_x[5]), .A(o_a[5]));
Q_ASSIGN U7 ( .B(u_I_x[4]), .A(o_a[4]));
M2_P2_ u_M2 ( u_I_x[7:4]);
M1_P1_ u_M1 ( u_I_x[3:0]);
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
