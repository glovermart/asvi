// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M4_P ( u_I_x, u_I_i_clk, u_I_o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [3:0] u_I_x;
input u_I_i_clk;
output [3:0] u_I_o_a;
Q_FDP0 U0 ( .CK(u_I_i_clk), .D(u_I_x[3]), .Q(u_I_o_a[0]), .QN( ));
endmodule

module M3_P ( u_I_x, u_I_i_clk, u_I_o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [3:0] u_I_x;
input u_I_i_clk;
output [3:0] u_I_o_a;
Q_FDP0 U0 ( .CK(u_I_i_clk), .D(u_I_x[2]), .Q(u_I_o_a[1]), .QN( ));
endmodule

module M2_P ( u_I_x, u_I_i_clk, u_I_o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [3:0] u_I_x;
input u_I_i_clk;
output [3:0] u_I_o_a;
Q_FDP0 U0 ( .CK(u_I_i_clk), .D(u_I_x[1]), .Q(u_I_o_a[2]), .QN( ));
endmodule

module M1_P ( u_I_x, u_I_i_clk, u_I_o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [3:0] u_I_x;
input u_I_i_clk;
output [3:0] u_I_o_a;
Q_FDP0 U0 ( .CK(u_I_i_clk), .D(u_I_x[0]), .Q(u_I_o_a[3]), .QN( ));
endmodule

module top ( i_clk, i_en, o_a, i_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
input i_en;
output [3:0] o_a;
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
M4_P u_M4 ( .u_I_x( u_I_x[3:0]), .u_I_i_clk( u_I_i_clk), .u_I_o_a( 
	u_I_o_a[3:0]));
M3_P u_M3 ( .u_I_x( u_I_x[3:0]), .u_I_i_clk( u_I_i_clk), .u_I_o_a( 
	u_I_o_a[3:0]));
M2_P u_M2 ( .u_I_x( u_I_x[3:0]), .u_I_i_clk( u_I_i_clk), .u_I_o_a( 
	u_I_o_a[3:0]));
M1_P u_M1 ( .u_I_x( u_I_x[3:0]), .u_I_i_clk( u_I_i_clk), .u_I_o_a( 
	u_I_o_a[3:0]));
Q_LDP0 U14 ( .G(u_I_i_en), .D(u_I_i_a[3]), .Q(u_I_x[3]), .QN( ));
Q_LDP0 U15 ( .G(u_I_i_en), .D(u_I_i_a[2]), .Q(u_I_x[2]), .QN( ));
Q_LDP0 U16 ( .G(u_I_i_en), .D(u_I_i_a[1]), .Q(u_I_x[1]), .QN( ));
Q_LDP0 U17 ( .G(u_I_i_en), .D(u_I_i_a[0]), .Q(u_I_x[0]), .QN( ));
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
