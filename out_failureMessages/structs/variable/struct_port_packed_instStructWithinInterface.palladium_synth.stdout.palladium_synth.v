// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2 ( p2_data, i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] p2_data;
input i_clk;
output [7:0] o_a;
Q_FDP0 U0 ( .CK(i_clk), .D(p2_data[0]), .Q(o_a[0]), .QN( ));
Q_FDP0 U1 ( .CK(i_clk), .D(p2_data[1]), .Q(o_a[1]), .QN( ));
Q_FDP0 U2 ( .CK(i_clk), .D(p2_data[2]), .Q(o_a[2]), .QN( ));
Q_FDP0 U3 ( .CK(i_clk), .D(p2_data[3]), .Q(o_a[3]), .QN( ));
Q_FDP0 U4 ( .CK(i_clk), .D(p2_data[4]), .Q(o_a[4]), .QN( ));
Q_FDP0 U5 ( .CK(i_clk), .D(p2_data[5]), .Q(o_a[5]), .QN( ));
Q_FDP0 U6 ( .CK(i_clk), .D(p2_data[6]), .Q(o_a[6]), .QN( ));
Q_FDP0 U7 ( .CK(i_clk), .D(p2_data[7]), .Q(o_a[7]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\p2_data.data  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
endmodule

module M1 ( p1_data);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] p1_data;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(p1_data[7]));
Q_BUF U1 ( .A(n1), .Z(p1_data[6]));
Q_BUF U2 ( .A(n1), .Z(p1_data[5]));
Q_BUF U3 ( .A(n1), .Z(p1_data[4]));
Q_BUF U4 ( .A(n1), .Z(p1_data[3]));
Q_BUF U5 ( .A(n1), .Z(p1_data[2]));
Q_BUF U6 ( .A(n1), .Z(p1_data[1]));
Q_BUF U7 ( .A(n1), .Z(p1_data[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\p1_data.data  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
endmodule

module top ( i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_clk;
output [7:0] o_a;
wire [7:0] u_I_data;
M1 u_m1 ( .p1_data( u_I_data[7:0]));
M2 u_m2 ( .p2_data( u_I_data[7:0]), .i_clk( i_clk), .o_a( o_a[7:0]));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\u_I_data.data  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
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
