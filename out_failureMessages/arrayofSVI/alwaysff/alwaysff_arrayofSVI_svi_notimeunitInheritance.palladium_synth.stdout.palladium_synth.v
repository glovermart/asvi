// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_clk, o_a, o_b, o_c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
output [7:0] o_a;
output [7:0] o_b;
output [7:0] o_c;
wire [7:0] u_I_i_clk;
wire [7:0] u_I_x;
wire [7:0] u_I_y;
wire [7:0] u_I_z;
supply0 n1;
supply1 n2;
assign o_c[0] = u_I_z[0];
assign o_b[0] = u_I_y[0];
assign o_a[0] = u_I_x[0];
assign o_c[1] = u_I_z[1];
assign o_b[1] = u_I_y[1];
assign o_a[1] = u_I_x[1];
assign o_c[2] = u_I_z[2];
assign o_b[2] = u_I_y[2];
assign o_a[2] = u_I_x[2];
assign o_c[3] = u_I_z[3];
assign o_b[3] = u_I_y[3];
assign o_a[3] = u_I_x[3];
assign o_c[4] = u_I_z[4];
assign o_b[4] = u_I_y[4];
assign o_a[4] = u_I_x[4];
assign o_c[5] = u_I_z[5];
assign o_b[5] = u_I_y[5];
assign o_a[5] = u_I_x[5];
assign o_c[6] = u_I_z[6];
assign o_b[6] = u_I_y[6];
assign o_a[6] = u_I_x[6];
assign o_c[7] = u_I_z[7];
assign o_b[7] = u_I_y[7];
assign o_a[7] = u_I_x[7];
Q_BUF U0 ( .A(n2), .Z(u_I_x[7]));
Q_BUF U1 ( .A(n1), .Z(u_I_y[7]));
Q_BUF U2 ( .A(n2), .Z(u_I_z[7]));
Q_BUF U3 ( .A(n2), .Z(u_I_x[6]));
Q_BUF U4 ( .A(n1), .Z(u_I_y[6]));
Q_BUF U5 ( .A(n2), .Z(u_I_z[6]));
Q_BUF U6 ( .A(n2), .Z(u_I_x[5]));
Q_BUF U7 ( .A(n1), .Z(u_I_y[5]));
Q_BUF U8 ( .A(n2), .Z(u_I_z[5]));
Q_BUF U9 ( .A(n2), .Z(u_I_x[4]));
Q_BUF U10 ( .A(n1), .Z(u_I_y[4]));
Q_BUF U11 ( .A(n2), .Z(u_I_z[4]));
Q_BUF U12 ( .A(n2), .Z(u_I_x[3]));
Q_BUF U13 ( .A(n1), .Z(u_I_y[3]));
Q_BUF U14 ( .A(n2), .Z(u_I_z[3]));
Q_BUF U15 ( .A(n2), .Z(u_I_x[2]));
Q_BUF U16 ( .A(n1), .Z(u_I_y[2]));
Q_BUF U17 ( .A(n2), .Z(u_I_z[2]));
Q_BUF U18 ( .A(n2), .Z(u_I_x[1]));
Q_BUF U19 ( .A(n1), .Z(u_I_y[1]));
Q_BUF U20 ( .A(n2), .Z(u_I_z[1]));
Q_BUF U21 ( .A(n2), .Z(u_I_x[0]));
Q_BUF U22 ( .A(n1), .Z(u_I_y[0]));
Q_BUF U23 ( .A(n2), .Z(u_I_z[0]));
Q_BUF U24 ( .A(u_I_i_clk[5]), .Z(u_I_i_clk[6]));
Q_BUF U25 ( .A(u_I_i_clk[4]), .Z(u_I_i_clk[5]));
Q_BUF U26 ( .A(u_I_i_clk[3]), .Z(u_I_i_clk[4]));
Q_BUF U27 ( .A(u_I_i_clk[2]), .Z(u_I_i_clk[3]));
Q_BUF U28 ( .A(u_I_i_clk[1]), .Z(u_I_i_clk[2]));
Q_BUF U29 ( .A(u_I_i_clk[0]), .Z(u_I_i_clk[1]));
Q_BUF U30 ( .A(u_I_i_clk[7]), .Z(u_I_i_clk[0]));
Q_BUF U31 ( .A(i_clk), .Z(u_I_i_clk[7]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_i_clk 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m4 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "4"
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
