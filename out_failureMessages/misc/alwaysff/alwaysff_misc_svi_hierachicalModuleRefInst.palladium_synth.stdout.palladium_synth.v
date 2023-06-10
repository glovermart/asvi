// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M1 ( u_I_i_clk, u_I_z, u_I_y, u_I_x, a, b, c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_clk;
inout u_I_z;
inout u_I_y;
inout u_I_x;
output a;
output b;
output c;
Q_ASSIGN U0 ( .B(u_I_z), .A(a));
Q_ASSIGN U1 ( .B(u_I_y), .A(b));
Q_ASSIGN U2 ( .B(u_I_x), .A(c));
endmodule

module M2 ( u_I_i_clk, u_I_z, u_I_y, u_I_x, a, b, c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_clk;
inout u_I_z;
inout u_I_y;
inout u_I_x;
output a;
output b;
output c;
Q_ASSIGN U0 ( .B(u_M1.a), .A(a));
Q_ASSIGN U1 ( .B(u_M1.b), .A(b));
Q_ASSIGN U2 ( .B(u_M1.c), .A(c));
M1 u_M1 ( .u_I_i_clk( u_I_i_clk), .u_I_z( u_I_z), .u_I_y( u_I_y), .u_I_x( 
	u_I_x), .a( u_M1.a), .b( u_M1.b), .c( u_M1.c));
endmodule

module M3 ( u_I_i_clk, u_I_z, u_I_y, u_I_x, a, b, c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input u_I_i_clk;
inout u_I_z;
inout u_I_y;
inout u_I_x;
output a;
output b;
output c;
Q_ASSIGN U0 ( .B(u_M2.a), .A(a));
Q_ASSIGN U1 ( .B(u_M2.b), .A(b));
Q_ASSIGN U2 ( .B(u_M2.c), .A(c));
M2 u_M2 ( .u_I_i_clk( u_I_i_clk), .u_I_z( u_I_z), .u_I_y( u_I_y), .u_I_x( 
	u_I_x), .a( u_M2.a), .b( u_M2.b), .c( u_M2.c));
endmodule

module top ( i_clk, a, b, c);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
output a;
output b;
output c;
wire u_I_i_clk;
wire u_I_z;
wire u_I_y;
wire u_I_x;
supply1 n1;
supply0 n2;
Q_BUF U0 ( .A(n2), .Z(u_I_z));
Q_BUF U1 ( .A(n1), .Z(u_I_y));
Q_BUF U2 ( .A(n2), .Z(u_I_x));
Q_ASSIGN U3 ( .B(i_clk), .A(u_I_i_clk));
Q_ASSIGN U4 ( .B(u_M3.c), .A(c));
Q_ASSIGN U5 ( .B(u_M3.b), .A(b));
Q_ASSIGN U6 ( .B(u_M3.a), .A(a));
M3 u_M3 ( .u_I_i_clk( u_I_i_clk), .u_I_z( u_I_z), .u_I_y( u_I_y), .u_I_x( 
	u_I_x), .a( u_M3.a), .b( u_M3.b), .c( u_M3.c));
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
