// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module top ( i_a, i_b, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
`_2_ input [31:0] i_a;
`_2_ input [31:0] i_b;
`_2_ output [31:0] o_a;
Q_AD01HF U0 ( .A0(i_a[0]), .B0(i_b[0]), .S(o_a[0]), .CO(n1));
Q_XOR3 U1 ( .A0(i_a[31]), .A1(i_b[31]), .A2(n16), .Z(o_a[31]));
Q_AD02 U2 ( .CI(n1), .A0(i_a[1]), .A1(i_a[2]), .B0(i_b[1]), .B1(i_b[2]), .S0(o_a[1]), .S1(o_a[2]), .CO(n2));
Q_AD02 U3 ( .CI(n2), .A0(i_a[3]), .A1(i_a[4]), .B0(i_b[3]), .B1(i_b[4]), .S0(o_a[3]), .S1(o_a[4]), .CO(n3));
Q_AD02 U4 ( .CI(n3), .A0(i_a[5]), .A1(i_a[6]), .B0(i_b[5]), .B1(i_b[6]), .S0(o_a[5]), .S1(o_a[6]), .CO(n4));
Q_AD02 U5 ( .CI(n4), .A0(i_a[7]), .A1(i_a[8]), .B0(i_b[7]), .B1(i_b[8]), .S0(o_a[7]), .S1(o_a[8]), .CO(n5));
Q_AD02 U6 ( .CI(n5), .A0(i_a[9]), .A1(i_a[10]), .B0(i_b[9]), .B1(i_b[10]), .S0(o_a[9]), .S1(o_a[10]), .CO(n6));
Q_AD02 U7 ( .CI(n6), .A0(i_a[11]), .A1(i_a[12]), .B0(i_b[11]), .B1(i_b[12]), .S0(o_a[11]), .S1(o_a[12]), .CO(n7));
Q_AD02 U8 ( .CI(n7), .A0(i_a[13]), .A1(i_a[14]), .B0(i_b[13]), .B1(i_b[14]), .S0(o_a[13]), .S1(o_a[14]), .CO(n8));
Q_AD02 U9 ( .CI(n8), .A0(i_a[15]), .A1(i_a[16]), .B0(i_b[15]), .B1(i_b[16]), .S0(o_a[15]), .S1(o_a[16]), .CO(n9));
Q_AD02 U10 ( .CI(n9), .A0(i_a[17]), .A1(i_a[18]), .B0(i_b[17]), .B1(i_b[18]), .S0(o_a[17]), .S1(o_a[18]), .CO(n10));
Q_AD02 U11 ( .CI(n10), .A0(i_a[19]), .A1(i_a[20]), .B0(i_b[19]), .B1(i_b[20]), .S0(o_a[19]), .S1(o_a[20]), .CO(n11));
Q_AD02 U12 ( .CI(n11), .A0(i_a[21]), .A1(i_a[22]), .B0(i_b[21]), .B1(i_b[22]), .S0(o_a[21]), .S1(o_a[22]), .CO(n12));
Q_AD02 U13 ( .CI(n12), .A0(i_a[23]), .A1(i_a[24]), .B0(i_b[23]), .B1(i_b[24]), .S0(o_a[23]), .S1(o_a[24]), .CO(n13));
Q_AD02 U14 ( .CI(n13), .A0(i_a[25]), .A1(i_a[26]), .B0(i_b[25]), .B1(i_b[26]), .S0(o_a[25]), .S1(o_a[26]), .CO(n14));
Q_AD02 U15 ( .CI(n14), .A0(i_a[27]), .A1(i_a[28]), .B0(i_b[27]), .B1(i_b[28]), .S0(o_a[27]), .S1(o_a[28]), .CO(n15));
Q_AD02 U16 ( .CI(n15), .A0(i_a[29]), .A1(i_a[30]), .B0(i_b[29]), .B1(i_b[30]), .S0(o_a[29]), .S1(o_a[30]), .CO(n16));
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
