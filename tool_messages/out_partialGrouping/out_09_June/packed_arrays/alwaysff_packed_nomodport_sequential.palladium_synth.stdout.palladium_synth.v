// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module top ( i_a, i_clk, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input i_a;
input i_clk;
output [7:0] o_a;
wire [7:0] u_I_x;
`_2_ wire [31:0] i;
supply0 n77;
Q_BUF U0 ( .A(u_I_x[0]), .Z(o_a[0]));
Q_BUF U1 ( .A(u_I_x[1]), .Z(o_a[1]));
Q_BUF U2 ( .A(u_I_x[2]), .Z(o_a[2]));
Q_BUF U3 ( .A(u_I_x[3]), .Z(o_a[3]));
Q_BUF U4 ( .A(u_I_x[4]), .Z(o_a[4]));
Q_BUF U5 ( .A(u_I_x[5]), .Z(o_a[5]));
Q_BUF U6 ( .A(u_I_x[6]), .Z(o_a[6]));
Q_BUF U7 ( .A(u_I_x[7]), .Z(o_a[7]));
Q_FDP0I0 U8 ( .CK(i_clk), .D(n76), .Q(i[0]), .QN(n76));
Q_FDP0I0 U9 ( .CK(i_clk), .D(n61), .Q(i[1]), .QN(n75));
Q_FDP0I0 U10 ( .CK(i_clk), .D(n59), .Q(i[2]), .QN(n74));
Q_FDP0I0 U11 ( .CK(i_clk), .D(n57), .Q(i[3]), .QN( ));
Q_FDP0I0 U12 ( .CK(i_clk), .D(n55), .Q(i[4]), .QN( ));
Q_FDP0I0 U13 ( .CK(i_clk), .D(n53), .Q(i[5]), .QN( ));
Q_FDP0I0 U14 ( .CK(i_clk), .D(n51), .Q(i[6]), .QN( ));
Q_FDP0I0 U15 ( .CK(i_clk), .D(n49), .Q(i[7]), .QN( ));
Q_FDP0I0 U16 ( .CK(i_clk), .D(n47), .Q(i[8]), .QN( ));
Q_FDP0I0 U17 ( .CK(i_clk), .D(n45), .Q(i[9]), .QN( ));
Q_FDP0I0 U18 ( .CK(i_clk), .D(n43), .Q(i[10]), .QN( ));
Q_FDP0I0 U19 ( .CK(i_clk), .D(n41), .Q(i[11]), .QN( ));
Q_FDP0I0 U20 ( .CK(i_clk), .D(n39), .Q(i[12]), .QN( ));
Q_FDP0I0 U21 ( .CK(i_clk), .D(n37), .Q(i[13]), .QN( ));
Q_FDP0I0 U22 ( .CK(i_clk), .D(n35), .Q(i[14]), .QN( ));
Q_FDP0I0 U23 ( .CK(i_clk), .D(n33), .Q(i[15]), .QN( ));
Q_FDP0I0 U24 ( .CK(i_clk), .D(n31), .Q(i[16]), .QN( ));
Q_FDP0I0 U25 ( .CK(i_clk), .D(n29), .Q(i[17]), .QN( ));
Q_FDP0I0 U26 ( .CK(i_clk), .D(n27), .Q(i[18]), .QN( ));
Q_FDP0I0 U27 ( .CK(i_clk), .D(n25), .Q(i[19]), .QN( ));
Q_FDP0I0 U28 ( .CK(i_clk), .D(n23), .Q(i[20]), .QN( ));
Q_FDP0I0 U29 ( .CK(i_clk), .D(n21), .Q(i[21]), .QN( ));
Q_FDP0I0 U30 ( .CK(i_clk), .D(n19), .Q(i[22]), .QN( ));
Q_FDP0I0 U31 ( .CK(i_clk), .D(n17), .Q(i[23]), .QN( ));
Q_FDP0I0 U32 ( .CK(i_clk), .D(n15), .Q(i[24]), .QN( ));
Q_FDP0I0 U33 ( .CK(i_clk), .D(n13), .Q(i[25]), .QN( ));
Q_FDP0I0 U34 ( .CK(i_clk), .D(n11), .Q(i[26]), .QN( ));
Q_FDP0I0 U35 ( .CK(i_clk), .D(n9), .Q(i[27]), .QN( ));
Q_FDP0I0 U36 ( .CK(i_clk), .D(n7), .Q(i[28]), .QN( ));
Q_FDP0I0 U37 ( .CK(i_clk), .D(n5), .Q(i[29]), .QN( ));
Q_FDP0I0 U38 ( .CK(i_clk), .D(n3), .Q(i[30]), .QN( ));
Q_FDP0I0 U39 ( .CK(i_clk), .D(n1), .Q(i[31]), .QN( ));
Q_XOR2 U40 ( .A0(i[31]), .A1(n2), .Z(n1));
Q_AD01HF U41 ( .A0(i[30]), .B0(n4), .S(n3), .CO(n2));
Q_AD01HF U42 ( .A0(i[29]), .B0(n6), .S(n5), .CO(n4));
Q_AD01HF U43 ( .A0(i[28]), .B0(n8), .S(n7), .CO(n6));
Q_AD01HF U44 ( .A0(i[27]), .B0(n10), .S(n9), .CO(n8));
Q_AD01HF U45 ( .A0(i[26]), .B0(n12), .S(n11), .CO(n10));
Q_AD01HF U46 ( .A0(i[25]), .B0(n14), .S(n13), .CO(n12));
Q_AD01HF U47 ( .A0(i[24]), .B0(n16), .S(n15), .CO(n14));
Q_AD01HF U48 ( .A0(i[23]), .B0(n18), .S(n17), .CO(n16));
Q_AD01HF U49 ( .A0(i[22]), .B0(n20), .S(n19), .CO(n18));
Q_AD01HF U50 ( .A0(i[21]), .B0(n22), .S(n21), .CO(n20));
Q_AD01HF U51 ( .A0(i[20]), .B0(n24), .S(n23), .CO(n22));
Q_AD01HF U52 ( .A0(i[19]), .B0(n26), .S(n25), .CO(n24));
Q_AD01HF U53 ( .A0(i[18]), .B0(n28), .S(n27), .CO(n26));
Q_AD01HF U54 ( .A0(i[17]), .B0(n30), .S(n29), .CO(n28));
Q_AD01HF U55 ( .A0(i[16]), .B0(n32), .S(n31), .CO(n30));
Q_AD01HF U56 ( .A0(i[15]), .B0(n34), .S(n33), .CO(n32));
Q_AD01HF U57 ( .A0(i[14]), .B0(n36), .S(n35), .CO(n34));
Q_AD01HF U58 ( .A0(i[13]), .B0(n38), .S(n37), .CO(n36));
Q_AD01HF U59 ( .A0(i[12]), .B0(n40), .S(n39), .CO(n38));
Q_AD01HF U60 ( .A0(i[11]), .B0(n42), .S(n41), .CO(n40));
Q_AD01HF U61 ( .A0(i[10]), .B0(n44), .S(n43), .CO(n42));
Q_AD01HF U62 ( .A0(i[9]), .B0(n46), .S(n45), .CO(n44));
Q_AD01HF U63 ( .A0(i[8]), .B0(n48), .S(n47), .CO(n46));
Q_AD01HF U64 ( .A0(i[7]), .B0(n50), .S(n49), .CO(n48));
Q_AD01HF U65 ( .A0(i[6]), .B0(n52), .S(n51), .CO(n50));
Q_AD01HF U66 ( .A0(i[5]), .B0(n54), .S(n53), .CO(n52));
Q_AD01HF U67 ( .A0(i[4]), .B0(n56), .S(n55), .CO(n54));
Q_AD01HF U68 ( .A0(i[3]), .B0(n58), .S(n57), .CO(n56));
Q_AD01HF U69 ( .A0(i[2]), .B0(n60), .S(n59), .CO(n58));
Q_AD01HF U70 ( .A0(i[1]), .B0(i[0]), .S(n61), .CO(n60));
Q_AN02 U71 ( .A0(n70), .A1(i[0]), .Z(n62));
Q_AN02 U72 ( .A0(n70), .A1(n76), .Z(n63));
Q_AN02 U73 ( .A0(n71), .A1(i[0]), .Z(n64));
Q_AN02 U74 ( .A0(n71), .A1(n76), .Z(n65));
Q_AN02 U75 ( .A0(n72), .A1(i[0]), .Z(n66));
Q_AN02 U76 ( .A0(n72), .A1(n76), .Z(n67));
Q_AN02 U77 ( .A0(n73), .A1(i[0]), .Z(n68));
Q_AN02 U78 ( .A0(n73), .A1(n76), .Z(n69));
Q_AN02 U79 ( .A0(i[2]), .A1(i[1]), .Z(n70));
Q_AN02 U80 ( .A0(i[2]), .A1(n75), .Z(n71));
Q_AN02 U81 ( .A0(n74), .A1(i[1]), .Z(n72));
Q_NR02 U82 ( .A0(i[2]), .A1(i[1]), .Z(n73));
Q_FDP4EP U83 ( .CK(i_clk), .CE(n62), .R(n77), .D(i_a), .Q(u_I_x[7]));
Q_FDP4EP U84 ( .CK(i_clk), .CE(n63), .R(n77), .D(i_a), .Q(u_I_x[6]));
Q_FDP4EP U85 ( .CK(i_clk), .CE(n64), .R(n77), .D(i_a), .Q(u_I_x[5]));
Q_FDP4EP U86 ( .CK(i_clk), .CE(n65), .R(n77), .D(i_a), .Q(u_I_x[4]));
Q_FDP4EP U87 ( .CK(i_clk), .CE(n66), .R(n77), .D(i_a), .Q(u_I_x[3]));
Q_FDP4EP U88 ( .CK(i_clk), .CE(n67), .R(n77), .D(i_a), .Q(u_I_x[2]));
Q_FDP4EP U89 ( .CK(i_clk), .CE(n68), .R(n77), .D(i_a), .Q(u_I_x[1]));
Q_FDP4EP U90 ( .CK(i_clk), .CE(n69), .R(n77), .D(i_a), .Q(u_I_x[0]));
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
