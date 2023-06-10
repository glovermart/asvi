// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M2 ( u_I_z, u_I_y);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_z;
inout u_I_y;
supply1 n4;
Q_BUFZP U0 (.OE(n1), .A(n4), .Z(\u_I_z%release ));
Q_NR02 U1 ( .A0(u_I_y), .A1(n2), .Z(n1));
Q_FDP0B U2 ( .D(n3), .QTFCLK( ), .Q(n2));
Q_INV U3 ( .A(u_I_y), .Z(n3));
endmodule

module M1 ( u_I_z, u_I_y, i_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
inout u_I_z;
inout u_I_y;
input i_b;
supply1 n8;
supply0 n9;
Q_ASSIGN U0 ( .B(i_b), .A(u_I_z));
Q_BUFZP U1 (.OE(n1), .A(n4), .Z(\u_I_z%force_value ));
Q_BUFZP U2 (.OE(n1), .A(n8), .Z(\u_I_z%force ));
Q_INV U3 ( .A(n5), .Z(n2));
Q_LDN2 U4 ( .G(n3), .S(n2), .D(n9), .Q(n1), .QN( ));
Q_BUFZP U5 (.OE(n5), .A(n8), .Z(\u_I_z%release ));
Q_INV U6 (.A(\u_I_z%release ), .Z(n3));
Q_AN02 U7 ( .A0(u_I_y), .A1(n6), .Z(n5));
Q_INV U8 ( .A(n7), .Z(n6));
Q_FDP0B U9 ( .D(u_I_y), .QTFCLK( ), .Q(n7));
endmodule

module top ( o_a, i_clk);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output o_a;
input i_clk;
wire u_I_z;
wire u_I_y;
wire [2:0] counter;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(u_M1.i_b));
Q_MX02 U1 (.S(\u_I_z%force ), .A0(n2), .A1(\u_I_z%force_value ), .Z(u_I_z));
Q_RDN U2 (.Z(\u_I_z%force ));
Q_RDN U3 (.Z(\u_I_z%release ));
M2 u_M2 ( .u_I_z( n2), .u_I_y( u_I_y));
M1 u_M1 ( .u_I_z( n2), .u_I_y( u_I_y), .i_b());
Q_FDP0 U6 ( .CK(i_clk), .D(u_I_z), .Q(o_a), .QN( ));
Q_AD01HF U7 ( .A0(counter[1]), .B0(counter[0]), .S(n3), .CO(n4));
Q_XOR2 U8 ( .A0(counter[2]), .A1(n4), .Z(n5));
Q_NR02 U9 ( .A0(n11), .A1(counter[0]), .Z(n6));
Q_AN02 U10 ( .A0(n10), .A1(n3), .Z(n7));
Q_AN02 U11 ( .A0(n10), .A1(n5), .Z(n8));
Q_FDP0 U12 ( .CK(i_clk), .D(n8), .Q(counter[2]), .QN( ));
Q_FDP0 U13 ( .CK(i_clk), .D(n7), .Q(counter[1]), .QN(n9));
Q_FDP0 U14 ( .CK(i_clk), .D(n6), .Q(counter[0]), .QN( ));
Q_FDP0 U15 ( .CK(i_clk), .D(n11), .Q(u_I_y), .QN( ));
Q_INV U16 ( .A(n11), .Z(n10));
Q_AN03 U17 ( .A0(counter[2]), .A1(n9), .A2(counter[0]), .Z(n11));
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
