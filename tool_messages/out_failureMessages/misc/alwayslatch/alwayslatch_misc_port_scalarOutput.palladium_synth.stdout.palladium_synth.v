// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

module M1 ( p1_o_a, p1_i_a, p1_i_en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p1_o_a;
input p1_i_a;
input p1_i_en;
Q_LDP0 U0 ( .G(p1_i_en), .D(p1_i_a), .Q(p1_o_a), .QN( ));
endmodule

module M2 ( p1_o_a, p1_i_a, p1_i_en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p1_o_a;
input p1_i_a;
input p1_i_en;
M1 u_M1 ( .p1_o_a( p1_o_a), .p1_i_a( p1_i_a), .p1_i_en( p1_i_en));
Q_LDP0 U1 ( .G(p1_i_en), .D(p1_i_a), .Q(p1_o_a), .QN( ));
endmodule

module M3 ( p1_o_a, p1_i_a, p1_i_en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p1_o_a;
input p1_i_a;
input p1_i_en;
M2 u_M2 ( .p1_o_a( p1_o_a), .p1_i_a( p1_i_a), .p1_i_en( p1_i_en));
Q_LDP0 U1 ( .G(p1_i_en), .D(p1_i_a), .Q(p1_o_a), .QN( ));
endmodule

module M4 ( p2_o_a, p2_i_a, p2_i_en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output p2_o_a;
input p2_i_a;
input p2_i_en;
M3 u_M3 ( .p1_o_a( p2_o_a), .p1_i_a( p2_i_a), .p1_i_en( p2_i_en));
Q_LDP0 U1 ( .G(p2_i_en), .D(p2_i_a), .Q(p2_o_a), .QN( ));
endmodule

module top ( i_en, o_a, i_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_en;
output o_a;
input i_a;
wire u_I_i_en;
wire u_I_o_a;
wire u_I_i_a;
Q_ASSIGN U0 ( .B(i_en), .A(u_I_i_en));
Q_ASSIGN U1 ( .B(i_a), .A(u_I_i_a));
Q_ASSIGN U2 ( .B(u_I_o_a), .A(o_a));
M4 u_M4 ( .p2_o_a( u_I_o_a), .p2_i_a( u_I_i_a), .p2_i_en( u_I_i_en));
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
