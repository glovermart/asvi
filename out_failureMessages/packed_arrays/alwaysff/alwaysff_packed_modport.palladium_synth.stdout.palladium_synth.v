// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M ( p_x, o_a, i_a, i_clk);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
output [7:0] p_x;
output [7:0] o_a;
input i_a;
input i_clk;
`_2_ wire [31:0] i;
supply0 n77;
Q_BUF U0 ( .A(p_x[0]), .Z(o_a[0]));
Q_BUF U1 ( .A(p_x[1]), .Z(o_a[1]));
Q_BUF U2 ( .A(p_x[2]), .Z(o_a[2]));
Q_BUF U3 ( .A(p_x[3]), .Z(o_a[3]));
Q_BUF U4 ( .A(p_x[4]), .Z(o_a[4]));
Q_BUF U5 ( .A(p_x[5]), .Z(o_a[5]));
Q_BUF U6 ( .A(p_x[6]), .Z(o_a[6]));
Q_BUF U7 ( .A(p_x[7]), .Z(o_a[7]));
Q_AN02 U8 ( .A0(n9), .A1(i[0]), .Z(n1));
Q_AN02 U9 ( .A0(n9), .A1(n15), .Z(n2));
Q_AN02 U10 ( .A0(n10), .A1(i[0]), .Z(n3));
Q_AN02 U11 ( .A0(n10), .A1(n15), .Z(n4));
Q_AN02 U12 ( .A0(n11), .A1(i[0]), .Z(n5));
Q_AN02 U13 ( .A0(n11), .A1(n15), .Z(n6));
Q_AN02 U14 ( .A0(n12), .A1(i[0]), .Z(n7));
Q_AN02 U15 ( .A0(n12), .A1(n15), .Z(n8));
Q_AN02 U16 ( .A0(i[2]), .A1(i[1]), .Z(n9));
Q_AN02 U17 ( .A0(i[2]), .A1(n14), .Z(n10));
Q_AN02 U18 ( .A0(n13), .A1(i[1]), .Z(n11));
Q_NR02 U19 ( .A0(i[2]), .A1(i[1]), .Z(n12));
Q_FDP0I0 U20 ( .CK(i_clk), .D(n15), .Q(i[0]), .QN(n15));
Q_FDP0I0 U21 ( .CK(i_clk), .D(n76), .Q(i[1]), .QN(n14));
Q_FDP0I0 U22 ( .CK(i_clk), .D(n74), .Q(i[2]), .QN(n13));
Q_FDP0I0 U23 ( .CK(i_clk), .D(n72), .Q(i[3]), .QN( ));
Q_FDP0I0 U24 ( .CK(i_clk), .D(n70), .Q(i[4]), .QN( ));
Q_FDP0I0 U25 ( .CK(i_clk), .D(n68), .Q(i[5]), .QN( ));
Q_FDP0I0 U26 ( .CK(i_clk), .D(n66), .Q(i[6]), .QN( ));
Q_FDP0I0 U27 ( .CK(i_clk), .D(n64), .Q(i[7]), .QN( ));
Q_FDP0I0 U28 ( .CK(i_clk), .D(n62), .Q(i[8]), .QN( ));
Q_FDP0I0 U29 ( .CK(i_clk), .D(n60), .Q(i[9]), .QN( ));
Q_FDP0I0 U30 ( .CK(i_clk), .D(n58), .Q(i[10]), .QN( ));
Q_FDP0I0 U31 ( .CK(i_clk), .D(n56), .Q(i[11]), .QN( ));
Q_FDP0I0 U32 ( .CK(i_clk), .D(n54), .Q(i[12]), .QN( ));
Q_FDP0I0 U33 ( .CK(i_clk), .D(n52), .Q(i[13]), .QN( ));
Q_FDP0I0 U34 ( .CK(i_clk), .D(n50), .Q(i[14]), .QN( ));
Q_FDP0I0 U35 ( .CK(i_clk), .D(n48), .Q(i[15]), .QN( ));
Q_FDP0I0 U36 ( .CK(i_clk), .D(n46), .Q(i[16]), .QN( ));
Q_FDP0I0 U37 ( .CK(i_clk), .D(n44), .Q(i[17]), .QN( ));
Q_FDP0I0 U38 ( .CK(i_clk), .D(n42), .Q(i[18]), .QN( ));
Q_FDP0I0 U39 ( .CK(i_clk), .D(n40), .Q(i[19]), .QN( ));
Q_FDP0I0 U40 ( .CK(i_clk), .D(n38), .Q(i[20]), .QN( ));
Q_FDP0I0 U41 ( .CK(i_clk), .D(n36), .Q(i[21]), .QN( ));
Q_FDP0I0 U42 ( .CK(i_clk), .D(n34), .Q(i[22]), .QN( ));
Q_FDP0I0 U43 ( .CK(i_clk), .D(n32), .Q(i[23]), .QN( ));
Q_FDP0I0 U44 ( .CK(i_clk), .D(n30), .Q(i[24]), .QN( ));
Q_FDP0I0 U45 ( .CK(i_clk), .D(n28), .Q(i[25]), .QN( ));
Q_FDP0I0 U46 ( .CK(i_clk), .D(n26), .Q(i[26]), .QN( ));
Q_FDP0I0 U47 ( .CK(i_clk), .D(n24), .Q(i[27]), .QN( ));
Q_FDP0I0 U48 ( .CK(i_clk), .D(n22), .Q(i[28]), .QN( ));
Q_FDP0I0 U49 ( .CK(i_clk), .D(n20), .Q(i[29]), .QN( ));
Q_FDP0I0 U50 ( .CK(i_clk), .D(n18), .Q(i[30]), .QN( ));
Q_FDP0I0 U51 ( .CK(i_clk), .D(n16), .Q(i[31]), .QN( ));
Q_XOR2 U52 ( .A0(i[31]), .A1(n17), .Z(n16));
Q_AD01HF U53 ( .A0(i[30]), .B0(n19), .S(n18), .CO(n17));
Q_AD01HF U54 ( .A0(i[29]), .B0(n21), .S(n20), .CO(n19));
Q_AD01HF U55 ( .A0(i[28]), .B0(n23), .S(n22), .CO(n21));
Q_AD01HF U56 ( .A0(i[27]), .B0(n25), .S(n24), .CO(n23));
Q_AD01HF U57 ( .A0(i[26]), .B0(n27), .S(n26), .CO(n25));
Q_AD01HF U58 ( .A0(i[25]), .B0(n29), .S(n28), .CO(n27));
Q_AD01HF U59 ( .A0(i[24]), .B0(n31), .S(n30), .CO(n29));
Q_AD01HF U60 ( .A0(i[23]), .B0(n33), .S(n32), .CO(n31));
Q_AD01HF U61 ( .A0(i[22]), .B0(n35), .S(n34), .CO(n33));
Q_AD01HF U62 ( .A0(i[21]), .B0(n37), .S(n36), .CO(n35));
Q_AD01HF U63 ( .A0(i[20]), .B0(n39), .S(n38), .CO(n37));
Q_AD01HF U64 ( .A0(i[19]), .B0(n41), .S(n40), .CO(n39));
Q_AD01HF U65 ( .A0(i[18]), .B0(n43), .S(n42), .CO(n41));
Q_AD01HF U66 ( .A0(i[17]), .B0(n45), .S(n44), .CO(n43));
Q_AD01HF U67 ( .A0(i[16]), .B0(n47), .S(n46), .CO(n45));
Q_AD01HF U68 ( .A0(i[15]), .B0(n49), .S(n48), .CO(n47));
Q_AD01HF U69 ( .A0(i[14]), .B0(n51), .S(n50), .CO(n49));
Q_AD01HF U70 ( .A0(i[13]), .B0(n53), .S(n52), .CO(n51));
Q_AD01HF U71 ( .A0(i[12]), .B0(n55), .S(n54), .CO(n53));
Q_AD01HF U72 ( .A0(i[11]), .B0(n57), .S(n56), .CO(n55));
Q_AD01HF U73 ( .A0(i[10]), .B0(n59), .S(n58), .CO(n57));
Q_AD01HF U74 ( .A0(i[9]), .B0(n61), .S(n60), .CO(n59));
Q_AD01HF U75 ( .A0(i[8]), .B0(n63), .S(n62), .CO(n61));
Q_AD01HF U76 ( .A0(i[7]), .B0(n65), .S(n64), .CO(n63));
Q_AD01HF U77 ( .A0(i[6]), .B0(n67), .S(n66), .CO(n65));
Q_AD01HF U78 ( .A0(i[5]), .B0(n69), .S(n68), .CO(n67));
Q_AD01HF U79 ( .A0(i[4]), .B0(n71), .S(n70), .CO(n69));
Q_AD01HF U80 ( .A0(i[3]), .B0(n73), .S(n72), .CO(n71));
Q_AD01HF U81 ( .A0(i[2]), .B0(n75), .S(n74), .CO(n73));
Q_AD01HF U82 ( .A0(i[1]), .B0(i[0]), .S(n76), .CO(n75));
Q_FDP4EP U83 ( .CK(i_clk), .CE(n1), .R(n77), .D(i_a), .Q(p_x[7]));
Q_FDP4EP U84 ( .CK(i_clk), .CE(n2), .R(n77), .D(i_a), .Q(p_x[6]));
Q_FDP4EP U85 ( .CK(i_clk), .CE(n3), .R(n77), .D(i_a), .Q(p_x[5]));
Q_FDP4EP U86 ( .CK(i_clk), .CE(n4), .R(n77), .D(i_a), .Q(p_x[4]));
Q_FDP4EP U87 ( .CK(i_clk), .CE(n5), .R(n77), .D(i_a), .Q(p_x[3]));
Q_FDP4EP U88 ( .CK(i_clk), .CE(n6), .R(n77), .D(i_a), .Q(p_x[2]));
Q_FDP4EP U89 ( .CK(i_clk), .CE(n7), .R(n77), .D(i_a), .Q(p_x[1]));
Q_FDP4EP U90 ( .CK(i_clk), .CE(n8), .R(n77), .D(i_a), .Q(p_x[0]));
endmodule

module top ( i_a, i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
input i_clk;
output [7:0] o_a;
wire [7:0] u_I_x;
M u_M ( .p_x( u_I_x[7:0]), .o_a( o_a[7:0]), .i_a( i_a), .i_clk( i_clk));
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
