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
Q_BUF U0 ( .A(n1), .Z(p_z));
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
Q_FDP0 U1 ( .CK(p_i_clk), .D(n1), .Q(p_y), .QN( ));
Q_INV U2 ( .A(p_i_srst), .Z(n1));
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
M2 u_M2 ( .p_z( p_z), .p_y( p_y), .p_x( p_x), .p_i_clk( p_i_clk), 
	.p_i_srst( p_i_srst), .p_i_arst( p_i_arst), .p_w( p_w));
Q_FDP1 U1 ( .CK(p_i_clk), .R(n1), .D(p_w), .Q(p_x), .QN( ));
Q_INV U2 ( .A(p_i_arst), .Z(n1));
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
Q_ASSIGN U0 ( .B(i_clk), .A(u_I_i_clk));
Q_ASSIGN U1 ( .B(i_srst), .A(u_I_i_srst));
Q_ASSIGN U2 ( .B(i_arst), .A(u_I_i_arst));
Q_ASSIGN U3 ( .B(u_I_z), .A(z));
Q_ASSIGN U4 ( .B(u_I_y), .A(y));
Q_ASSIGN U5 ( .B(u_I_x), .A(x));
M3 u_M3 ( .p_z( u_I_z), .p_y( u_I_y), .p_x( u_I_x), .p_i_clk( u_I_i_clk), 
	.p_i_srst( u_I_i_srst), .p_i_arst( u_I_i_arst), .p_w( u_I_w));
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
