// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_a, o_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
output [7:0] o_a;
output [7:0] o_b;
wire [7:0] u_I_i_a;
wire [7:0] u_I_o_a;
wire [7:0] u_I_o_b;
wire [7:0] u_I_x;
wire [7:0] u_I_y;
wire [7:0] u_I_Z;
Q_ASSIGN U0 ( .B(u_I_i_a[7]), .A(u_I_o_b[0]));
Q_ASSIGN U1 ( .B(u_I_i_a[7]), .A(u_I_x[0]));
Q_ASSIGN U2 ( .B(u_I_i_a[7]), .A(u_I_i_a[0]));
Q_ASSIGN U3 ( .B(u_I_i_a[7]), .A(u_I_o_b[1]));
Q_ASSIGN U4 ( .B(u_I_i_a[7]), .A(u_I_x[1]));
Q_ASSIGN U5 ( .B(u_I_i_a[7]), .A(u_I_i_a[1]));
Q_ASSIGN U6 ( .B(u_I_i_a[7]), .A(u_I_o_b[2]));
Q_ASSIGN U7 ( .B(u_I_i_a[7]), .A(u_I_x[2]));
Q_ASSIGN U8 ( .B(u_I_i_a[7]), .A(u_I_i_a[2]));
Q_ASSIGN U9 ( .B(u_I_i_a[7]), .A(u_I_o_b[3]));
Q_ASSIGN U10 ( .B(u_I_i_a[7]), .A(u_I_x[3]));
Q_ASSIGN U11 ( .B(u_I_i_a[7]), .A(u_I_i_a[3]));
Q_ASSIGN U12 ( .B(u_I_i_a[7]), .A(u_I_o_b[4]));
Q_ASSIGN U13 ( .B(u_I_i_a[7]), .A(u_I_x[4]));
Q_ASSIGN U14 ( .B(u_I_i_a[7]), .A(u_I_i_a[4]));
Q_ASSIGN U15 ( .B(u_I_i_a[7]), .A(u_I_o_b[5]));
Q_ASSIGN U16 ( .B(u_I_i_a[7]), .A(u_I_x[5]));
Q_ASSIGN U17 ( .B(u_I_i_a[7]), .A(u_I_i_a[5]));
Q_ASSIGN U18 ( .B(u_I_i_a[7]), .A(u_I_o_b[6]));
Q_ASSIGN U19 ( .B(u_I_i_a[7]), .A(u_I_x[6]));
Q_ASSIGN U20 ( .B(u_I_i_a[7]), .A(u_I_i_a[6]));
Q_ASSIGN U21 ( .B(u_I_i_a[7]), .A(u_I_o_b[7]));
Q_ASSIGN U22 ( .B(u_I_i_a[7]), .A(u_I_x[7]));
Q_ASSIGN U23 ( .B(u_I_Z[7]), .A(u_I_o_a[7]));
Q_ASSIGN U24 ( .B(u_I_Z[7]), .A(u_I_y[7]));
Q_ASSIGN U25 ( .B(u_I_Z[6]), .A(u_I_o_a[6]));
Q_ASSIGN U26 ( .B(u_I_Z[6]), .A(u_I_y[6]));
Q_ASSIGN U27 ( .B(u_I_Z[5]), .A(u_I_o_a[5]));
Q_ASSIGN U28 ( .B(u_I_Z[5]), .A(u_I_y[5]));
Q_ASSIGN U29 ( .B(u_I_Z[4]), .A(u_I_o_a[4]));
Q_ASSIGN U30 ( .B(u_I_Z[4]), .A(u_I_y[4]));
Q_ASSIGN U31 ( .B(u_I_Z[3]), .A(u_I_o_a[3]));
Q_ASSIGN U32 ( .B(u_I_Z[3]), .A(u_I_y[3]));
Q_ASSIGN U33 ( .B(u_I_Z[2]), .A(u_I_o_a[2]));
Q_ASSIGN U34 ( .B(u_I_Z[2]), .A(u_I_y[2]));
Q_ASSIGN U35 ( .B(u_I_Z[1]), .A(u_I_o_a[1]));
Q_ASSIGN U36 ( .B(u_I_Z[1]), .A(u_I_y[1]));
Q_ASSIGN U37 ( .B(u_I_Z[0]), .A(u_I_o_a[0]));
Q_ASSIGN U38 ( .B(u_I_Z[0]), .A(u_I_y[0]));
Q_ASSIGN U39 ( .B(i_a), .A(u_I_i_a[7]));
Q_ASSIGN U40 ( .B(u_I_i_a[7]), .A(o_b[7]));
Q_ASSIGN U41 ( .B(u_I_i_a[7]), .A(o_b[6]));
Q_ASSIGN U42 ( .B(u_I_i_a[7]), .A(o_b[5]));
Q_ASSIGN U43 ( .B(u_I_i_a[7]), .A(o_b[4]));
Q_ASSIGN U44 ( .B(u_I_i_a[7]), .A(o_b[3]));
Q_ASSIGN U45 ( .B(u_I_i_a[7]), .A(o_b[2]));
Q_ASSIGN U46 ( .B(u_I_i_a[7]), .A(o_b[1]));
Q_ASSIGN U47 ( .B(u_I_i_a[7]), .A(o_b[0]));
Q_ASSIGN U48 ( .B(u_I_Z[7]), .A(o_a[7]));
Q_ASSIGN U49 ( .B(u_I_Z[6]), .A(o_a[6]));
Q_ASSIGN U50 ( .B(u_I_Z[5]), .A(o_a[5]));
Q_ASSIGN U51 ( .B(u_I_Z[4]), .A(o_a[4]));
Q_ASSIGN U52 ( .B(u_I_Z[3]), .A(o_a[3]));
Q_ASSIGN U53 ( .B(u_I_Z[2]), .A(o_a[2]));
Q_ASSIGN U54 ( .B(u_I_Z[1]), .A(o_a[1]));
Q_ASSIGN U55 ( .B(u_I_Z[0]), .A(o_a[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_i_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_o_a 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_o_b 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m4 "u_I_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m5 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m6 "u_I_Z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "6"
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
