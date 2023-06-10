// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M1 ( u_I_i_clk, u_I_i_en, u_I_i_a, u_I_o_a, u_I_x, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_clk;
input u_I_i_en;
input u_I_i_a;
output u_I_o_a;
inout u_I_x;
output o_a;
Q_FDP0 U0 ( .CK(u_I_i_clk), .D(u_I_x), .Q(o_a), .QN( ));
endmodule

module M2 ( u_I_i_clk, u_I_i_en, u_I_i_a, u_I_o_a, u_I_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_clk;
input u_I_i_en;
input u_I_i_a;
output u_I_o_a;
inout u_I_x;
wire a;
M1 u_M1 ( .u_I_i_clk( u_I_i_clk), .u_I_i_en( u_I_i_en), .u_I_i_a( u_I_i_a), 
	.u_I_o_a( u_I_o_a), .u_I_x( u_I_x), .o_a());
Q_FDP0 U1 ( .CK(u_I_i_clk), .D(n1), .Q(a), .QN( ));
Q_INV U2 ( .A(u_M1.o_a), .Z(n1));
endmodule

module M3 ( u_I_i_clk, u_I_i_en, u_I_i_a, u_I_o_a, u_I_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_clk;
input u_I_i_en;
input u_I_i_a;
output u_I_o_a;
inout u_I_x;
wire a;
M2 u_M2 ( .u_I_i_clk( u_I_i_clk), .u_I_i_en( u_I_i_en), .u_I_i_a( u_I_i_a), 
	.u_I_o_a( u_I_o_a), .u_I_x( u_I_x));
Q_FDP0 U1 ( .CK(u_I_i_clk), .D(u_M2.a), .Q(a), .QN( ));
endmodule

module M4 ( u_I_i_clk, u_I_i_en, u_I_i_a, u_I_o_a, u_I_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_clk;
input u_I_i_en;
input u_I_i_a;
output u_I_o_a;
inout u_I_x;
M3 u_M3 ( .u_I_i_clk( u_I_i_clk), .u_I_i_en( u_I_i_en), .u_I_i_a( u_I_i_a), 
	.u_I_o_a( u_I_o_a), .u_I_x( u_I_x));
Q_FDP0 U1 ( .CK(u_I_i_clk), .D(n1), .Q(u_I_o_a), .QN( ));
Q_INV U2 ( .A(u_M3.a), .Z(n1));
endmodule

module top ( i_clk, i_en, o_a, i_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
input i_en;
output o_a;
input i_a;
wire u_I_i_clk;
wire u_I_i_en;
wire u_I_i_a;
wire u_I_o_a;
wire u_I_x;
Q_ASSIGN U0 ( .B(u_I_o_a), .A(o_a));
Q_BUF U1 ( .A(i_a), .Z(u_I_i_a));
Q_BUF U2 ( .A(i_en), .Z(u_I_i_en));
Q_ASSIGN U3 ( .B(i_clk), .A(u_I_i_clk));
M4 u_M4 ( .u_I_i_clk( u_I_i_clk), .u_I_i_en( u_I_i_en), .u_I_i_a( u_I_i_a), 
	.u_I_o_a( u_I_o_a), .u_I_x( u_I_x));
Q_LDP0 U5 ( .G(u_I_i_en), .D(u_I_i_a), .Q(u_I_x), .QN( ));
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
