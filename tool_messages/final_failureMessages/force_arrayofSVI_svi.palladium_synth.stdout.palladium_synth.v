// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module top ( i_a, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
output [7:0] o_a;
wire [7:0] u_I_z;
supply0 n5;
supply1 n6;
Q_BUF U0 ( .A(u_I_z[5]), .Z(u_I_z[2]));
Q_BUF U1 ( .A(u_I_z[6]), .Z(u_I_z[5]));
Q_BUF U2 ( .A(u_I_z[4]), .Z(u_I_z[6]));
Q_BUF U3 ( .A(u_I_z[3]), .Z(u_I_z[4]));
Q_BUF U4 ( .A(u_I_z[1]), .Z(u_I_z[3]));
Q_BUF U5 ( .A(u_I_z[7]), .Z(u_I_z[1]));
Q_BUF U6 ( .A(u_I_z[0]), .Z(u_I_z[7]));
Q_BUF U7 ( .A(o_a[0]), .Z(o_a[1]));
Q_BUF U8 ( .A(o_a[0]), .Z(o_a[3]));
Q_BUF U9 ( .A(o_a[0]), .Z(o_a[2]));
Q_BUF U10 ( .A(o_a[0]), .Z(o_a[6]));
Q_BUF U11 ( .A(o_a[0]), .Z(o_a[5]));
Q_BUF U12 ( .A(o_a[0]), .Z(o_a[4]));
Q_BUF U13 ( .A(o_a[0]), .Z(o_a[7]));
Q_OR03 U14 ( .A0(n2), .A1(n3), .A2(n4), .Z(n1));
Q_OR03 U15 ( .A0(n7), .A1(n9), .A2(n12), .Z(n2));
Q_OR03 U16 ( .A0(n13), .A1(n11), .A2(n10), .Z(n3));
Q_OR02 U17 ( .A0(n8), .A1(n14), .Z(n4));
Q_LDP0I1 U18 (.G(\u_I_z[0]%release ), .D(n5), .Q(n7), .QN());
Q_BUFZP U19 (.OE(n1), .A(n6), .Z(\u_I_z[0]%force ));
Q_BUFZP U20 (.OE(n7), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_LDP0I1 U21 (.G(\u_I_z[0]%release ), .D(n5), .Q(n8), .QN());
Q_BUFZP U22 (.OE(n8), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_LDP0I1 U23 (.G(\u_I_z[0]%release ), .D(n5), .Q(n9), .QN());
Q_BUFZP U24 (.OE(n9), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_LDP0I1 U25 (.G(\u_I_z[0]%release ), .D(n5), .Q(n10), .QN());
Q_BUFZP U26 (.OE(n10), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_LDP0I1 U27 (.G(\u_I_z[0]%release ), .D(n5), .Q(n11), .QN());
Q_BUFZP U28 (.OE(n11), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_LDP0I1 U29 (.G(\u_I_z[0]%release ), .D(n5), .Q(n12), .QN());
Q_BUFZP U30 (.OE(n12), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_LDP0I1 U31 (.G(\u_I_z[0]%release ), .D(n5), .Q(n13), .QN());
Q_BUFZP U32 (.OE(n13), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_LDP0I1 U33 (.G(\u_I_z[0]%release ), .D(n5), .Q(n14), .QN());
Q_BUFZP U34 (.OE(n14), .A(n5), .Z(\u_I_z[0]%force_value ));
Q_BUF U35 (.A(u_I_z[0]), .Z(o_a[0]));
Q_RDN U36 (.Z(\u_I_z[0]%release ));
Q_MX02 U37 (.S(\u_I_z[0]%force ), .A0(i_a), .A1(\u_I_z[0]%force_value ), .Z(u_I_z[0]));
Q_RDN U38 (.Z(\u_I_z[0]%force ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_z 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
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
