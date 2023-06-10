// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( p_x, i_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] p_x;
input i_a;
Q_ASSIGN U0 ( .B(i_a), .A(p_x[7]));
Q_ASSIGN U1 ( .B(i_a), .A(p_x[6]));
Q_ASSIGN U2 ( .B(i_a), .A(p_x[5]));
Q_ASSIGN U3 ( .B(i_a), .A(p_x[4]));
Q_ASSIGN U4 ( .B(i_a), .A(p_x[3]));
Q_ASSIGN U5 ( .B(i_a), .A(p_x[2]));
Q_ASSIGN U6 ( .B(i_a), .A(p_x[1]));
Q_ASSIGN U7 ( .B(i_a), .A(p_x[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "p_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
endmodule

module top ( i_a, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
output [7:0] o_a;
wire [7:0] u_I_x;
Q_ASSIGN U0 ( .B(u_I_x[7]), .A(o_a[7]));
Q_ASSIGN U1 ( .B(u_I_x[6]), .A(o_a[6]));
Q_ASSIGN U2 ( .B(u_I_x[5]), .A(o_a[5]));
Q_ASSIGN U3 ( .B(u_I_x[4]), .A(o_a[4]));
Q_ASSIGN U4 ( .B(u_I_x[3]), .A(o_a[3]));
Q_ASSIGN U5 ( .B(u_I_x[2]), .A(o_a[2]));
Q_ASSIGN U6 ( .B(u_I_x[1]), .A(o_a[1]));
Q_ASSIGN U7 ( .B(u_I_x[0]), .A(o_a[0]));
M u_M ( .p_x( u_I_x[7:0]), .i_a( i_a));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "o_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "2"
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
