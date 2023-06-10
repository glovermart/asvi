// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_a, i_en, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
input i_en;
output [7:0] o_a;
wire u_I_i_a;
wire u_I_i_en;
wire [7:0] u_I_x;
Q_BUF U0 ( .A(u_I_x[6]), .Z(u_I_x[7]));
Q_BUF U1 ( .A(u_I_x[5]), .Z(u_I_x[6]));
Q_BUF U2 ( .A(u_I_x[4]), .Z(u_I_x[5]));
Q_BUF U3 ( .A(u_I_i_a), .Z(u_I_x[4]));
Q_ASSIGN U4 ( .B(u_I_x[0]), .A(o_a[0]));
Q_ASSIGN U5 ( .B(u_I_x[1]), .A(o_a[1]));
Q_ASSIGN U6 ( .B(u_I_x[2]), .A(o_a[2]));
Q_ASSIGN U7 ( .B(u_I_x[3]), .A(o_a[3]));
Q_BUF U8 ( .A(i_a), .Z(u_I_i_a));
Q_BUF U9 ( .A(u_I_x[7]), .Z(o_a[7]));
Q_BUF U10 ( .A(u_I_x[7]), .Z(o_a[6]));
Q_BUF U11 ( .A(u_I_x[7]), .Z(o_a[5]));
Q_BUF U12 ( .A(u_I_x[7]), .Z(o_a[4]));
Q_BUF U13 ( .A(i_en), .Z(u_I_i_en));
Q_BUFZN U14 ( .OE(u_I_i_en), .A(u_I_x[7]), .Z(u_I_x[3]));
Q_BUFZN U15 ( .OE(u_I_i_en), .A(u_I_x[7]), .Z(u_I_x[2]));
Q_BUFZN U16 ( .OE(u_I_i_en), .A(u_I_x[7]), .Z(u_I_x[1]));
Q_BUFZN U17 ( .OE(u_I_i_en), .A(u_I_x[7]), .Z(u_I_x[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "o_a 1 -2147483647 -2147483647 7 0"
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
