// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M ( u_I_x, u_I_y, i_clk, o_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_x;
inout u_I_y;
input i_clk;
output o_a;
output o_b;
Q_FDP0 U0 ( .CK(i_clk), .D(u_I_x), .Q(o_a), .QN( ));
Q_FDP0 U1 ( .CK(i_clk), .D(u_I_y), .Q(o_b), .QN( ));
endmodule

module top ( i_clk, o_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
output [7:0] o_a;
output [7:0] o_b;
wire [7:0] u_I_x;
wire [7:0] u_I_y;
wire a1;
wire b1;
wire a;
wire b;
wire [7:0] a_q;
wire [7:0] b_q;
supply1 n1;
supply0 n2;
Q_BUF U0 ( .A(n1), .Z(u_I_y[0]));
Q_BUF U1 ( .A(n2), .Z(u_I_x[0]));
Q_BUF U2 ( .A(n1), .Z(u_I_y[1]));
Q_BUF U3 ( .A(n2), .Z(u_I_x[1]));
Q_BUF U4 ( .A(n1), .Z(u_I_y[2]));
Q_BUF U5 ( .A(n2), .Z(u_I_x[2]));
Q_BUF U6 ( .A(n1), .Z(u_I_y[3]));
Q_BUF U7 ( .A(n2), .Z(u_I_x[3]));
Q_BUF U8 ( .A(n1), .Z(u_I_y[4]));
Q_BUF U9 ( .A(n2), .Z(u_I_x[4]));
Q_BUF U10 ( .A(n1), .Z(u_I_y[5]));
Q_BUF U11 ( .A(n2), .Z(u_I_x[5]));
Q_BUF U12 ( .A(n1), .Z(u_I_y[6]));
Q_BUF U13 ( .A(n2), .Z(u_I_x[6]));
Q_BUF U14 ( .A(n1), .Z(u_I_y[7]));
Q_BUF U15 ( .A(n2), .Z(u_I_x[7]));
Q_BUF U16 ( .A(b_q[1]), .Z(b_q[7]));
Q_BUF U17 ( .A(b_q[0]), .Z(b_q[1]));
Q_BUF U18 ( .A(b_q[2]), .Z(b_q[0]));
Q_BUF U19 ( .A(b_q[3]), .Z(b_q[2]));
Q_BUF U20 ( .A(b_q[6]), .Z(b_q[3]));
Q_BUF U21 ( .A(b_q[5]), .Z(b_q[6]));
Q_BUF U22 ( .A(b_q[4]), .Z(b_q[5]));
Q_BUF U23 ( .A(a_q[2]), .Z(a_q[7]));
Q_BUF U24 ( .A(a_q[1]), .Z(a_q[2]));
Q_BUF U25 ( .A(a_q[3]), .Z(a_q[1]));
Q_BUF U26 ( .A(a_q[4]), .Z(a_q[3]));
Q_BUF U27 ( .A(a_q[6]), .Z(a_q[4]));
Q_BUF U28 ( .A(a_q[5]), .Z(a_q[6]));
Q_BUF U29 ( .A(a_q[0]), .Z(a_q[5]));
Q_ASSIGN U30 ( .B(b1), .A(b));
Q_ASSIGN U31 ( .B(a1), .A(a));
Q_BUF U32 ( .A(b_q[7]), .Z(o_b[7]));
Q_BUF U33 ( .A(b_q[7]), .Z(o_b[1]));
Q_BUF U34 ( .A(b_q[7]), .Z(o_b[0]));
Q_BUF U35 ( .A(b_q[7]), .Z(o_b[2]));
Q_BUF U36 ( .A(b_q[7]), .Z(o_b[3]));
Q_BUF U37 ( .A(b_q[7]), .Z(o_b[6]));
Q_BUF U38 ( .A(b_q[7]), .Z(o_b[5]));
Q_BUF U39 ( .A(b_q[7]), .Z(o_b[4]));
Q_BUF U40 ( .A(a_q[7]), .Z(o_a[7]));
Q_BUF U41 ( .A(a_q[7]), .Z(o_a[2]));
Q_BUF U42 ( .A(a_q[7]), .Z(o_a[1]));
Q_BUF U43 ( .A(a_q[7]), .Z(o_a[3]));
Q_BUF U44 ( .A(a_q[7]), .Z(o_a[4]));
Q_BUF U45 ( .A(a_q[7]), .Z(o_a[6]));
Q_BUF U46 ( .A(a_q[7]), .Z(o_a[5]));
Q_BUF U47 ( .A(a_q[7]), .Z(o_a[0]));
M u_M_7 ( .u_I_x( u_I_x[7]), .u_I_y( u_I_y[7]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
M u_M_6 ( .u_I_x( u_I_x[6]), .u_I_y( u_I_y[6]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
M u_M_5 ( .u_I_x( u_I_x[5]), .u_I_y( u_I_y[5]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
M u_M_4 ( .u_I_x( u_I_x[4]), .u_I_y( u_I_y[4]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
M u_M_3 ( .u_I_x( u_I_x[3]), .u_I_y( u_I_y[3]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
M u_M_2 ( .u_I_x( u_I_x[2]), .u_I_y( u_I_y[2]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
M u_M_1 ( .u_I_x( u_I_x[1]), .u_I_y( u_I_y[1]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
M u_M_0 ( .u_I_x( u_I_x[0]), .u_I_y( u_I_y[0]), .i_clk( i_clk), .o_a( a1), 
	.o_b( b1));
Q_FDP0 U56 ( .CK(i_clk), .D(b1), .Q(b_q[4]), .QN( ));
Q_FDP0 U57 ( .CK(i_clk), .D(a1), .Q(a_q[0]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_y 1 -2147483647 -2147483647 7 0"
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
