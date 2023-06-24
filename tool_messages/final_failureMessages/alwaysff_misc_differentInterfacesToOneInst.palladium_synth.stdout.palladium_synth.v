// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M3 ( u_I3_i_clk, u_I3_i_srst, u_I3_i_arst, u_I3_z, u_I3_y, u_I3_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I3_i_clk;
input u_I3_i_srst;
input u_I3_i_arst;
inout u_I3_z;
inout u_I3_y;
inout u_I3_x;
wire a;
supply0 n1;
supply1 n3;
Q_BUF U0 ( .A(n1), .Z(u_I3_z));
Q_INV U1 ( .A(u_I3_i_arst), .Z(n2));
Q_FDP1 U2 ( .CK(u_I3_i_clk), .R(n2), .D(a), .Q(u_I3_x), .QN( ));
Q_FDP1 U3 ( .CK(u_I3_i_clk), .R(n2), .D(n3), .Q(u_I3_y), .QN( ));
endmodule

module M2 ( u_I2_i_clk, u_I2_i_srst, u_I2_i_arst, u_I2_z, u_I2_y, u_I2_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I2_i_clk;
input u_I2_i_srst;
input u_I2_i_arst;
inout u_I2_z;
inout u_I2_y;
inout u_I2_x;
wire a;
supply0 n1;
Q_BUF U0 ( .A(n1), .Z(u_I2_z));
Q_INV U1 ( .A(u_I2_i_srst), .Z(n2));
Q_AN02 U2 ( .A0(n2), .A1(a), .Z(n3));
Q_FDP0 U3 ( .CK(u_I2_i_clk), .D(n3), .Q(u_I2_x), .QN( ));
Q_FDP0 U4 ( .CK(u_I2_i_clk), .D(n2), .Q(u_I2_y), .QN( ));
endmodule

module M1 ( u_I1_i_clk, u_I1_i_srst, u_I1_i_arst, u_I1_z, u_I1_y, u_I1_x);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I1_i_clk;
input u_I1_i_srst;
input u_I1_i_arst;
inout u_I1_z;
inout u_I1_y;
inout u_I1_x;
wire a;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(n1), .Z(u_I1_z));
Q_BUF U1 ( .A(n2), .Z(u_I1_y));
Q_FDP0 U2 ( .CK(u_I1_i_clk), .D(a), .Q(u_I1_x), .QN( ));
endmodule

module top ( i_clk, i_srst, i_arst);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
input i_srst;
input i_arst;
wire u_I4_i_clk;
wire u_I4_i_srst;
wire u_I4_i_arst;
wire u_I4_z;
wire u_I4_y;
wire u_I4_x;
Q_ASSIGN U0 ( .B(i_clk), .A(u_I4_i_clk));
Q_ASSIGN U1 ( .B(i_srst), .A(u_I4_i_srst));
Q_ASSIGN U2 ( .B(i_arst), .A(u_I4_i_arst));
M3 u_M3 ( .u_I3_i_clk( u_I4_i_clk), .u_I3_i_srst( u_I4_i_srst), 
	.u_I3_i_arst( u_I4_i_arst), .u_I3_z( u_I4_z), .u_I3_y( u_I4_y), 
	.u_I3_x( u_I4_x));
M2 u_M2 ( .u_I2_i_clk( u_I4_i_clk), .u_I2_i_srst( u_I4_i_srst), 
	.u_I2_i_arst( u_I4_i_arst), .u_I2_z( u_I4_z), .u_I2_y( u_I4_y), 
	.u_I2_x( u_I4_x));
M1 u_M1 ( .u_I1_i_clk( u_I4_i_clk), .u_I1_i_srst( u_I4_i_srst), 
	.u_I1_i_arst( u_I4_i_arst), .u_I1_z( u_I4_z), .u_I1_y( u_I4_y), 
	.u_I1_x( u_I4_x));
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
