// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M1 ( p_x, p_i_clk, p_o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [3:0] p_x;
input p_i_clk;
output [3:0] p_o_a;
wire [3:0] a;
Q_FDP0 U0 ( .CK(p_i_clk), .D(p_x[0]), .Q(p_o_a[3]), .QN( ));
Q_INV U1 ( .A(p_x[3]), .Z(a[3]));
Q_INV U2 ( .A(p_x[2]), .Z(a[2]));
Q_INV U3 ( .A(p_x[1]), .Z(a[1]));
Q_INV U4 ( .A(p_x[0]), .Z(a[0]));
endmodule

module M2 ( p_x, p_i_clk, p_o_a, o_c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [3:0] p_x;
input p_i_clk;
output [3:0] p_o_a;
output [3:0] o_c;
Q_ASSIGN U0 ( .B(u_M1.a[0]), .A(o_c[0]));
Q_ASSIGN U1 ( .B(u_M1.a[1]), .A(o_c[1]));
Q_ASSIGN U2 ( .B(u_M1.a[2]), .A(o_c[2]));
Q_ASSIGN U3 ( .B(u_M1.a[3]), .A(o_c[3]));
M1 u_M1 ( .p_x( p_x[3:0]), .p_i_clk( p_i_clk), .p_o_a( p_o_a[3:0]));
Q_FDP0 U5 ( .CK(p_i_clk), .D(p_x[1]), .Q(p_o_a[2]), .QN( ));
endmodule

module top ( i_clk, i_en, o_a, o_b, i_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
input i_en;
output [3:0] o_a;
output [3:0] o_b;
input [3:0] i_a;
wire u_I_i_clk;
wire u_I_i_en;
wire [3:0] u_I_i_a;
wire [3:0] u_I_o_a;
wire [3:0] u_I_x;
Q_ASSIGN U0 ( .B(u_I_o_a[0]), .A(o_a[0]));
Q_ASSIGN U1 ( .B(u_I_o_a[1]), .A(o_a[1]));
Q_ASSIGN U2 ( .B(u_I_o_a[2]), .A(o_a[2]));
Q_ASSIGN U3 ( .B(u_I_o_a[3]), .A(o_a[3]));
Q_BUF U4 ( .A(i_a[0]), .Z(u_I_i_a[0]));
Q_BUF U5 ( .A(i_a[1]), .Z(u_I_i_a[1]));
Q_BUF U6 ( .A(i_a[2]), .Z(u_I_i_a[2]));
Q_BUF U7 ( .A(i_a[3]), .Z(u_I_i_a[3]));
Q_BUF U8 ( .A(i_en), .Z(u_I_i_en));
Q_ASSIGN U9 ( .B(i_clk), .A(u_I_i_clk));
M2 u_M2 ( .p_x( u_I_x[3:0]), .p_i_clk( u_I_i_clk), .p_o_a( u_I_o_a[3:0]), 
	.o_c( o_b[3:0]));
Q_LDP0 U11 ( .G(u_I_i_en), .D(u_I_i_a[3]), .Q(u_I_x[3]), .QN( ));
Q_LDP0 U12 ( .G(u_I_i_en), .D(u_I_i_a[2]), .Q(u_I_x[2]), .QN( ));
Q_LDP0 U13 ( .G(u_I_i_en), .D(u_I_i_a[1]), .Q(u_I_x[1]), .QN( ));
Q_LDP0 U14 ( .G(u_I_i_en), .D(u_I_i_a[0]), .Q(u_I_x[0]), .QN( ));
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
