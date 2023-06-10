// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( p_x, p_y, p_z, i_clk);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] p_x;
output [7:0] p_y;
output [7:0] p_z;
input i_clk;
wire [7:0] a;
wire [7:0] b;
wire [7:0] c;
supply0 n1;
supply1 n2;
assign p_z[7] = c[7];
assign p_y[7] = b[7];
assign p_x[7] = a[7];
assign p_z[6] = c[6];
assign p_y[6] = b[6];
assign p_x[6] = a[6];
assign p_z[5] = c[5];
assign p_y[5] = b[5];
assign p_x[5] = a[5];
assign p_z[4] = c[4];
assign p_y[4] = b[4];
assign p_x[4] = a[4];
assign p_z[3] = c[3];
assign p_y[3] = b[3];
assign p_x[3] = a[3];
assign p_z[2] = c[2];
assign p_y[2] = b[2];
assign p_x[2] = a[2];
assign p_z[1] = c[1];
assign p_y[1] = b[1];
assign p_x[1] = a[1];
assign p_z[0] = c[0];
assign p_y[0] = b[0];
assign p_x[0] = a[0];
Q_BUF U0 ( .A(n2), .Z(a[0]));
Q_BUF U1 ( .A(n1), .Z(b[0]));
Q_BUF U2 ( .A(n2), .Z(c[0]));
Q_BUF U3 ( .A(n2), .Z(a[1]));
Q_BUF U4 ( .A(n1), .Z(b[1]));
Q_BUF U5 ( .A(n2), .Z(c[1]));
Q_BUF U6 ( .A(n2), .Z(a[2]));
Q_BUF U7 ( .A(n1), .Z(b[2]));
Q_BUF U8 ( .A(n2), .Z(c[2]));
Q_BUF U9 ( .A(n2), .Z(a[3]));
Q_BUF U10 ( .A(n1), .Z(b[3]));
Q_BUF U11 ( .A(n2), .Z(c[3]));
Q_BUF U12 ( .A(n2), .Z(a[4]));
Q_BUF U13 ( .A(n1), .Z(b[4]));
Q_BUF U14 ( .A(n2), .Z(c[4]));
Q_BUF U15 ( .A(n2), .Z(a[5]));
Q_BUF U16 ( .A(n1), .Z(b[5]));
Q_BUF U17 ( .A(n2), .Z(c[5]));
Q_BUF U18 ( .A(n2), .Z(a[6]));
Q_BUF U19 ( .A(n1), .Z(b[6]));
Q_BUF U20 ( .A(n2), .Z(c[6]));
Q_BUF U21 ( .A(n2), .Z(a[7]));
Q_BUF U22 ( .A(n1), .Z(b[7]));
Q_BUF U23 ( .A(n2), .Z(c[7]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "p_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "p_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "p_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "3"
endmodule

module top ( i_clk, o_a, o_b, o_c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
output [7:0] o_a;
output [7:0] o_b;
output [7:0] o_c;
wire [7:0] u_I_z;
wire [7:0] u_I_y;
wire [7:0] u_I_x;
Q_ASSIGN U0 ( .B(u_I_x[7]), .A(o_a[7]));
Q_ASSIGN U1 ( .B(u_I_x[6]), .A(o_a[6]));
Q_ASSIGN U2 ( .B(u_I_x[5]), .A(o_a[5]));
Q_ASSIGN U3 ( .B(u_I_x[4]), .A(o_a[4]));
Q_ASSIGN U4 ( .B(u_I_x[3]), .A(o_a[3]));
Q_ASSIGN U5 ( .B(u_I_x[2]), .A(o_a[2]));
Q_ASSIGN U6 ( .B(u_I_x[1]), .A(o_a[1]));
Q_ASSIGN U7 ( .B(u_I_x[0]), .A(o_a[0]));
Q_ASSIGN U8 ( .B(u_I_y[7]), .A(o_b[7]));
Q_ASSIGN U9 ( .B(u_I_y[6]), .A(o_b[6]));
Q_ASSIGN U10 ( .B(u_I_y[5]), .A(o_b[5]));
Q_ASSIGN U11 ( .B(u_I_y[4]), .A(o_b[4]));
Q_ASSIGN U12 ( .B(u_I_y[3]), .A(o_b[3]));
Q_ASSIGN U13 ( .B(u_I_y[2]), .A(o_b[2]));
Q_ASSIGN U14 ( .B(u_I_y[1]), .A(o_b[1]));
Q_ASSIGN U15 ( .B(u_I_y[0]), .A(o_b[0]));
Q_ASSIGN U16 ( .B(u_I_z[7]), .A(o_c[7]));
Q_ASSIGN U17 ( .B(u_I_z[6]), .A(o_c[6]));
Q_ASSIGN U18 ( .B(u_I_z[5]), .A(o_c[5]));
Q_ASSIGN U19 ( .B(u_I_z[4]), .A(o_c[4]));
Q_ASSIGN U20 ( .B(u_I_z[3]), .A(o_c[3]));
Q_ASSIGN U21 ( .B(u_I_z[2]), .A(o_c[2]));
Q_ASSIGN U22 ( .B(u_I_z[1]), .A(o_c[1]));
Q_ASSIGN U23 ( .B(u_I_z[0]), .A(o_c[0]));
M u_M ( .p_x( u_I_x[7:0]), .p_y( u_I_y[7:0]), .p_z( u_I_z[7:0]), .i_clk( 
	i_clk));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_x 1 -2147483647 -2147483647 7 0"
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
