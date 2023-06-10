// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M_I ( j_x, i_a, i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout [7:0] j_x;
input i_a;
input i_clk;
output [0:7] o_a;
Q_BUF U0 ( .A(j_x[2]), .Z(o_a[0]));
Q_BUF U1 ( .A(j_x[2]), .Z(j_x[7]));
Q_BUF U2 ( .A(j_x[2]), .Z(o_a[2]));
Q_BUF U3 ( .A(j_x[2]), .Z(j_x[5]));
Q_BUF U4 ( .A(j_x[2]), .Z(o_a[1]));
Q_BUF U5 ( .A(j_x[2]), .Z(j_x[6]));
Q_BUF U6 ( .A(j_x[2]), .Z(o_a[3]));
Q_BUF U7 ( .A(j_x[2]), .Z(j_x[4]));
Q_BUF U8 ( .A(j_x[2]), .Z(o_a[4]));
Q_BUF U9 ( .A(j_x[2]), .Z(j_x[3]));
Q_BUF U10 ( .A(j_x[2]), .Z(o_a[7]));
Q_BUF U11 ( .A(j_x[2]), .Z(j_x[0]));
Q_BUF U12 ( .A(j_x[2]), .Z(o_a[6]));
Q_BUF U13 ( .A(j_x[2]), .Z(j_x[1]));
Q_BUF U14 ( .A(j_x[2]), .Z(o_a[5]));
Q_FDP0 U15 ( .CK(i_clk), .D(i_a), .Q(j_x[2]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "o_a 1 -2147483647 -2147483647 0 7"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
endmodule

module top ( i_a, i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
input i_clk;
output [0:7] o_a;
wire [7:0] u_I_x;
M_I u_M ( .j_x( u_I_x[7:0]), .i_a( i_a), .i_clk( i_clk), .o_a( 
	o_a[0:7]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "o_a 1 -2147483647 -2147483647 0 7"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_x 1 -2147483647 -2147483647 7 0"
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
