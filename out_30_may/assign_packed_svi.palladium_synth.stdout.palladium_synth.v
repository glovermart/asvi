// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_a, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
output [7:0] o_a;
wire u_I_i_a;
wire [7:0] u_I_x;
Q_ASSIGN U0 ( .B(u_I_i_a), .A(u_I_x[7]));
Q_ASSIGN U1 ( .B(u_I_i_a), .A(u_I_x[6]));
Q_ASSIGN U2 ( .B(u_I_i_a), .A(u_I_x[5]));
Q_ASSIGN U3 ( .B(u_I_i_a), .A(u_I_x[4]));
Q_ASSIGN U4 ( .B(u_I_i_a), .A(u_I_x[3]));
Q_ASSIGN U5 ( .B(u_I_i_a), .A(u_I_x[2]));
Q_ASSIGN U6 ( .B(u_I_i_a), .A(u_I_x[1]));
Q_ASSIGN U7 ( .B(u_I_i_a), .A(u_I_x[0]));
Q_ASSIGN U8 ( .B(i_a), .A(u_I_i_a));
Q_ASSIGN U9 ( .B(u_I_i_a), .A(o_a[0]));
Q_ASSIGN U10 ( .B(u_I_i_a), .A(o_a[1]));
Q_ASSIGN U11 ( .B(u_I_i_a), .A(o_a[2]));
Q_ASSIGN U12 ( .B(u_I_i_a), .A(o_a[3]));
Q_ASSIGN U13 ( .B(u_I_i_a), .A(o_a[4]));
Q_ASSIGN U14 ( .B(u_I_i_a), .A(o_a[5]));
Q_ASSIGN U15 ( .B(u_I_i_a), .A(o_a[6]));
Q_ASSIGN U16 ( .B(u_I_i_a), .A(o_a[7]));
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
