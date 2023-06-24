// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M1 ( p_z, p_y, p_x, p_i_clk, p_i_srst, p_i_arst, p_w);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p_z;
output p_y;
output p_x;
input p_i_clk;
input p_i_srst;
input p_i_arst;
input p_w;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(n1), .Z(p_z));
Q_BUF U1 ( .A(n2), .Z(p_y));
Q_FDP0 U2 ( .CK(p_i_clk), .D(p_w), .Q(p_x), .QN( ));
endmodule

module M2 ( p_z, p_y, p_x, p_i_clk, p_i_srst, p_i_arst, p_w);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p_z;
output p_y;
output p_x;
input p_i_clk;
input p_i_srst;
input p_i_arst;
input p_w;
M1 u_M1 ( .p_z( p_z), .p_y( p_y), .p_x( p_x), .p_i_clk( p_i_clk), 
	.p_i_srst( p_i_srst), .p_i_arst( p_i_arst), .p_w( p_w));
Q_FDP0 U1 ( .CK(p_i_clk), .D(p_i_srst), .Q(p_z), .QN( ));
Q_FDP0 U2 ( .CK(p_i_clk), .D(n1), .Q(p_y), .QN( ));
Q_INV U3 ( .A(p_i_srst), .Z(n1));
Q_FDP0 U4 ( .CK(p_i_clk), .D(n2), .Q(p_x), .QN( ));
Q_AN02 U5 ( .A0(n1), .A1(p_w), .Z(n2));
endmodule

module M3 ( p_z, p_y, p_x, p_i_clk, p_i_srst, p_i_arst, p_w);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p_z;
output p_y;
output p_x;
input p_i_clk;
input p_i_srst;
input p_i_arst;
input p_w;
supply1 n2;
M2 u_M2 ( .p_z( p_z), .p_y( p_y), .p_x( p_x), .p_i_clk( p_i_clk), 
	.p_i_srst( p_i_srst), .p_i_arst( p_i_arst), .p_w( p_w));
Q_FDP1 U1 ( .CK(p_i_clk), .R(n1), .D(n2), .Q(p_z), .QN( ));
Q_INV U2 ( .A(p_i_arst), .Z(n1));
Q_FDP1 U3 ( .CK(p_i_clk), .R(n1), .D(n2), .Q(p_y), .QN( ));
Q_FDP1 U4 ( .CK(p_i_clk), .R(n1), .D(p_w), .Q(p_x), .QN( ));
endmodule

module top ( i_clk, i_srst, i_arst, z, y, x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
input i_srst;
input i_arst;
output z;
output y;
output x;
wire u_I_z;
wire u_I_y;
wire u_I_x;
wire u_I_i_clk;
wire u_I_i_srst;
wire u_I_i_arst;
wire u_I_w;
M1 u_M1 ( .p_z( z), .p_y( y), .p_x( x), .p_i_clk( i_clk), .p_i_srst( 
	i_srst), .p_i_arst( i_arst), .p_w( u_I_w));
M2 u_M2 ( .p_z( z), .p_y( y), .p_x( x), .p_i_clk( i_clk), .p_i_srst( 
	i_srst), .p_i_arst( i_arst), .p_w( u_I_w));
M3 u_M3 ( .p_z( z), .p_y( y), .p_x( x), .p_i_clk( i_clk), .p_i_srst( 
	i_srst), .p_i_arst( i_arst), .p_w( u_I_w));
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
