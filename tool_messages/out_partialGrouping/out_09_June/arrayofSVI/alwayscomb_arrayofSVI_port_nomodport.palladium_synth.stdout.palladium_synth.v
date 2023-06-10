// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( ifc_I_x, ifc_I_y, ifc_I_z);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout [7:0] ifc_I_x;
inout [7:0] ifc_I_y;
inout [7:0] ifc_I_z;
wire a;
supply1 n1;
supply0 n2;
Q_BUF U0 ( .A(n1), .Z(ifc_I_y[7]));
Q_BUF U1 ( .A(n2), .Z(ifc_I_x[7]));
Q_BUF U2 ( .A(n1), .Z(ifc_I_y[6]));
Q_BUF U3 ( .A(n2), .Z(ifc_I_x[6]));
Q_BUF U4 ( .A(n1), .Z(ifc_I_y[5]));
Q_BUF U5 ( .A(n2), .Z(ifc_I_x[5]));
Q_BUF U6 ( .A(n1), .Z(ifc_I_y[4]));
Q_BUF U7 ( .A(n2), .Z(ifc_I_x[4]));
Q_BUF U8 ( .A(n1), .Z(ifc_I_y[3]));
Q_BUF U9 ( .A(n2), .Z(ifc_I_x[3]));
Q_BUF U10 ( .A(n1), .Z(ifc_I_y[2]));
Q_BUF U11 ( .A(n2), .Z(ifc_I_x[2]));
Q_BUF U12 ( .A(n1), .Z(ifc_I_y[1]));
Q_BUF U13 ( .A(n2), .Z(ifc_I_x[1]));
Q_BUF U14 ( .A(n1), .Z(ifc_I_y[0]));
Q_BUF U15 ( .A(n2), .Z(ifc_I_x[0]));
Q_ASSIGN U16 ( .B(a), .A(ifc_I_z[7]));
Q_ASSIGN U17 ( .B(a), .A(ifc_I_z[6]));
Q_ASSIGN U18 ( .B(a), .A(ifc_I_z[5]));
Q_ASSIGN U19 ( .B(a), .A(ifc_I_z[4]));
Q_ASSIGN U20 ( .B(a), .A(ifc_I_z[3]));
Q_ASSIGN U21 ( .B(a), .A(ifc_I_z[2]));
Q_ASSIGN U22 ( .B(a), .A(ifc_I_z[1]));
Q_ASSIGN U23 ( .B(a), .A(ifc_I_z[0]));
endmodule

module top ( i_clk, o_a, o_b, o_c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
output [7:0] o_a;
output [7:0] o_b;
output [7:0] o_c;
wire [7:0] u_I_x;
wire [7:0] u_I_y;
wire [7:0] u_I_z;
Q_ASSIGN U0 ( .B(u_I_z[7]), .A(o_c[7]));
Q_ASSIGN U1 ( .B(u_I_z[6]), .A(o_c[6]));
Q_ASSIGN U2 ( .B(u_I_z[5]), .A(o_c[5]));
Q_ASSIGN U3 ( .B(u_I_z[4]), .A(o_c[4]));
Q_ASSIGN U4 ( .B(u_I_z[3]), .A(o_c[3]));
Q_ASSIGN U5 ( .B(u_I_z[2]), .A(o_c[2]));
Q_ASSIGN U6 ( .B(u_I_z[1]), .A(o_c[1]));
Q_ASSIGN U7 ( .B(u_I_z[0]), .A(o_c[0]));
Q_ASSIGN U8 ( .B(u_I_y[7]), .A(o_b[7]));
Q_ASSIGN U9 ( .B(u_I_y[6]), .A(o_b[6]));
Q_ASSIGN U10 ( .B(u_I_y[5]), .A(o_b[5]));
Q_ASSIGN U11 ( .B(u_I_y[4]), .A(o_b[4]));
Q_ASSIGN U12 ( .B(u_I_y[3]), .A(o_b[3]));
Q_ASSIGN U13 ( .B(u_I_y[2]), .A(o_b[2]));
Q_ASSIGN U14 ( .B(u_I_y[1]), .A(o_b[1]));
Q_ASSIGN U15 ( .B(u_I_y[0]), .A(o_b[0]));
Q_ASSIGN U16 ( .B(u_I_x[7]), .A(o_a[7]));
Q_ASSIGN U17 ( .B(u_I_x[6]), .A(o_a[6]));
Q_ASSIGN U18 ( .B(u_I_x[5]), .A(o_a[5]));
Q_ASSIGN U19 ( .B(u_I_x[4]), .A(o_a[4]));
Q_ASSIGN U20 ( .B(u_I_x[3]), .A(o_a[3]));
Q_ASSIGN U21 ( .B(u_I_x[2]), .A(o_a[2]));
Q_ASSIGN U22 ( .B(u_I_x[1]), .A(o_a[1]));
Q_ASSIGN U23 ( .B(u_I_x[0]), .A(o_a[0]));
M u_M ( .ifc_I_x( u_I_x[7:0]), .ifc_I_y( u_I_y[7:0]), .ifc_I_z( u_I_z[7:0]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "3"
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
