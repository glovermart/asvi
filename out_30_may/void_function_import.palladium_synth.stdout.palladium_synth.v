// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M2 ( i_a, i_b, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
`_2_ input [31:0] i_a;
`_2_ input [31:0] i_b;
`_2_ output [31:0] o_b;
Q_INV U0 ( .A(i_b[0]), .Z(n1));
Q_INV U1 ( .A(i_b[1]), .Z(n2));
Q_INV U2 ( .A(i_b[2]), .Z(n3));
Q_INV U3 ( .A(i_b[3]), .Z(n4));
Q_INV U4 ( .A(i_b[4]), .Z(n5));
Q_INV U5 ( .A(i_b[5]), .Z(n6));
Q_INV U6 ( .A(i_b[6]), .Z(n7));
Q_INV U7 ( .A(i_b[7]), .Z(n8));
Q_INV U8 ( .A(i_b[8]), .Z(n9));
Q_INV U9 ( .A(i_b[9]), .Z(n10));
Q_INV U10 ( .A(i_b[10]), .Z(n11));
Q_INV U11 ( .A(i_b[11]), .Z(n12));
Q_INV U12 ( .A(i_b[12]), .Z(n13));
Q_INV U13 ( .A(i_b[13]), .Z(n14));
Q_INV U14 ( .A(i_b[14]), .Z(n15));
Q_INV U15 ( .A(i_b[15]), .Z(n16));
Q_INV U16 ( .A(i_b[16]), .Z(n17));
Q_INV U17 ( .A(i_b[17]), .Z(n18));
Q_INV U18 ( .A(i_b[18]), .Z(n19));
Q_INV U19 ( .A(i_b[19]), .Z(n20));
Q_INV U20 ( .A(i_b[20]), .Z(n21));
Q_INV U21 ( .A(i_b[21]), .Z(n22));
Q_INV U22 ( .A(i_b[22]), .Z(n23));
Q_INV U23 ( .A(i_b[23]), .Z(n24));
Q_INV U24 ( .A(i_b[24]), .Z(n25));
Q_INV U25 ( .A(i_b[25]), .Z(n26));
Q_INV U26 ( .A(i_b[26]), .Z(n27));
Q_INV U27 ( .A(i_b[27]), .Z(n28));
Q_INV U28 ( .A(i_b[28]), .Z(n29));
Q_INV U29 ( .A(i_b[29]), .Z(n30));
Q_INV U30 ( .A(i_b[30]), .Z(n31));
Q_XNR3 U31 ( .A0(i_a[31]), .A1(i_b[31]), .A2(n47), .Z(o_b[31]));
Q_XNR2 U32 ( .A0(i_a[0]), .A1(n1), .Z(o_b[0]));
Q_OR02 U33 ( .A0(i_a[0]), .A1(n1), .Z(n32));
Q_AD02 U34 ( .CI(n32), .A0(i_a[1]), .A1(i_a[2]), .B0(n2), .B1(n3), .S0(o_b[1]), .S1(o_b[2]), .CO(n33));
Q_AD02 U35 ( .CI(n33), .A0(i_a[3]), .A1(i_a[4]), .B0(n4), .B1(n5), .S0(o_b[3]), .S1(o_b[4]), .CO(n34));
Q_AD02 U36 ( .CI(n34), .A0(i_a[5]), .A1(i_a[6]), .B0(n6), .B1(n7), .S0(o_b[5]), .S1(o_b[6]), .CO(n35));
Q_AD02 U37 ( .CI(n35), .A0(i_a[7]), .A1(i_a[8]), .B0(n8), .B1(n9), .S0(o_b[7]), .S1(o_b[8]), .CO(n36));
Q_AD02 U38 ( .CI(n36), .A0(i_a[9]), .A1(i_a[10]), .B0(n10), .B1(n11), .S0(o_b[9]), .S1(o_b[10]), .CO(n37));
Q_AD02 U39 ( .CI(n37), .A0(i_a[11]), .A1(i_a[12]), .B0(n12), .B1(n13), .S0(o_b[11]), .S1(o_b[12]), .CO(n38));
Q_AD02 U40 ( .CI(n38), .A0(i_a[13]), .A1(i_a[14]), .B0(n14), .B1(n15), .S0(o_b[13]), .S1(o_b[14]), .CO(n39));
Q_AD02 U41 ( .CI(n39), .A0(i_a[15]), .A1(i_a[16]), .B0(n16), .B1(n17), .S0(o_b[15]), .S1(o_b[16]), .CO(n40));
Q_AD02 U42 ( .CI(n40), .A0(i_a[17]), .A1(i_a[18]), .B0(n18), .B1(n19), .S0(o_b[17]), .S1(o_b[18]), .CO(n41));
Q_AD02 U43 ( .CI(n41), .A0(i_a[19]), .A1(i_a[20]), .B0(n20), .B1(n21), .S0(o_b[19]), .S1(o_b[20]), .CO(n42));
Q_AD02 U44 ( .CI(n42), .A0(i_a[21]), .A1(i_a[22]), .B0(n22), .B1(n23), .S0(o_b[21]), .S1(o_b[22]), .CO(n43));
Q_AD02 U45 ( .CI(n43), .A0(i_a[23]), .A1(i_a[24]), .B0(n24), .B1(n25), .S0(o_b[23]), .S1(o_b[24]), .CO(n44));
Q_AD02 U46 ( .CI(n44), .A0(i_a[25]), .A1(i_a[26]), .B0(n26), .B1(n27), .S0(o_b[25]), .S1(o_b[26]), .CO(n45));
Q_AD02 U47 ( .CI(n45), .A0(i_a[27]), .A1(i_a[28]), .B0(n28), .B1(n29), .S0(o_b[27]), .S1(o_b[28]), .CO(n46));
Q_AD02 U48 ( .CI(n46), .A0(i_a[29]), .A1(i_a[30]), .B0(n30), .B1(n31), .S0(o_b[29]), .S1(o_b[30]), .CO(n47));
endmodule

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M1 ( i_a, i_b, o_a);
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
endmodule

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module top ( i_a, i_b, o_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
`_2_ input [31:0] i_a;
`_2_ input [31:0] i_b;
`_2_ output [31:0] o_a;
`_2_ output [31:0] o_b;
M1 u_M1 ( .i_a( i_a[31:0]), .i_b( i_b[31:0]), .o_a( o_a[31:0]));
M2 u_M2 ( .i_a( i_a[31:0]), .i_b( i_b[31:0]), .o_b( o_b[31:0]));
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
