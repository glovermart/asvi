// Synthesized by HDL-ICE HDLICE, V22.04.160.s002                 (64bit)

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M2 ( p2_y, p2_w, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] p2_y;
output [7:0] p2_w;
output [7:0] o_b;
wire u_I_arst;
wire u_I_en;
wire u_I_y;
wire u_I_x;
wire u_I_w;
wire en;
Q_BUF U0 ( .A(en), .Z(u_I_en));
Q_BUF U1 ( .A(p2_w[7]), .Z(o_b[7]));
Q_BUF U2 ( .A(p2_w[6]), .Z(o_b[6]));
Q_BUF U3 ( .A(p2_w[5]), .Z(o_b[5]));
Q_BUF U4 ( .A(p2_w[4]), .Z(o_b[4]));
Q_BUF U5 ( .A(p2_w[3]), .Z(o_b[3]));
Q_BUF U6 ( .A(p2_w[2]), .Z(o_b[2]));
Q_BUF U7 ( .A(p2_w[1]), .Z(o_b[1]));
Q_BUF U8 ( .A(p2_w[0]), .Z(o_b[0]));
Q_LDP0 U9 ( .G(u_I_en), .D(p2_y[0]), .Q(p2_w[0]), .QN( ));
Q_LDP0 U10 ( .G(u_I_en), .D(p2_y[1]), .Q(p2_w[1]), .QN( ));
Q_LDP0 U11 ( .G(u_I_en), .D(p2_y[2]), .Q(p2_w[2]), .QN( ));
Q_LDP0 U12 ( .G(u_I_en), .D(p2_y[3]), .Q(p2_w[3]), .QN( ));
Q_LDP0 U13 ( .G(u_I_en), .D(p2_y[4]), .Q(p2_w[4]), .QN( ));
Q_LDP0 U14 ( .G(u_I_en), .D(p2_y[5]), .Q(p2_w[5]), .QN( ));
Q_LDP0 U15 ( .G(u_I_en), .D(p2_y[6]), .Q(p2_w[6]), .QN( ));
Q_LDP0 U16 ( .G(u_I_en), .D(p2_y[7]), .Q(p2_w[7]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "p2_w 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
endmodule

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module M1 ( p1_x, p1_y, o_a);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input [7:0] p1_x;
output [7:0] p1_y;
output [7:0] o_a;
wire u_I_arst;
wire u_I_en;
wire u_I_y;
wire u_I_x;
wire u_I_w;
wire en;
wire rst;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(p1_x[7]));
Q_BUF U1 ( .A(n1), .Z(p1_x[6]));
Q_BUF U2 ( .A(n1), .Z(p1_x[5]));
Q_BUF U3 ( .A(n1), .Z(p1_x[4]));
Q_BUF U4 ( .A(n1), .Z(p1_x[3]));
Q_BUF U5 ( .A(n1), .Z(p1_x[2]));
Q_BUF U6 ( .A(n1), .Z(p1_x[1]));
Q_BUF U7 ( .A(n1), .Z(p1_x[0]));
Q_BUF U8 ( .A(rst), .Z(u_I_arst));
Q_BUF U9 ( .A(en), .Z(u_I_en));
Q_BUF U10 ( .A(p1_y[2]), .Z(o_a[7]));
Q_BUF U11 ( .A(p1_y[2]), .Z(p1_y[7]));
Q_BUF U12 ( .A(p1_y[2]), .Z(o_a[5]));
Q_BUF U13 ( .A(p1_y[2]), .Z(p1_y[5]));
Q_BUF U14 ( .A(p1_y[2]), .Z(o_a[6]));
Q_BUF U15 ( .A(p1_y[2]), .Z(p1_y[6]));
Q_BUF U16 ( .A(p1_y[2]), .Z(o_a[4]));
Q_BUF U17 ( .A(p1_y[2]), .Z(p1_y[4]));
Q_BUF U18 ( .A(p1_y[2]), .Z(o_a[3]));
Q_BUF U19 ( .A(p1_y[2]), .Z(p1_y[3]));
Q_BUF U20 ( .A(p1_y[2]), .Z(o_a[0]));
Q_BUF U21 ( .A(p1_y[2]), .Z(p1_y[0]));
Q_BUF U22 ( .A(p1_y[2]), .Z(o_a[1]));
Q_BUF U23 ( .A(p1_y[2]), .Z(p1_y[1]));
Q_BUF U24 ( .A(p1_y[2]), .Z(o_a[2]));
Q_LDP0 U25 ( .G(n2), .D(u_I_arst), .Q(p1_y[2]), .QN( ));
Q_ND02 U26 ( .A0(u_I_arst), .A1(n3), .Z(n2));
Q_INV U27 ( .A(u_I_en), .Z(n3));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "p1_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
endmodule

`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif

module top ( en, i_clk, i_arst, o_a, o_b);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog atb"
input en;
input i_clk;
input i_arst;
output [7:0] o_a;
output [7:0] o_b;
wire [7:0] u_I_arst;
wire [7:0] u_I_en;
wire [7:0] u_I_y;
wire [7:0] u_I_x;
wire [7:0] u_I_w;
wire [7:0] a_a;
wire [7:0] b_b;
`_2_ wire [31:0] i;
supply0 n164;
Q_BUF U0 ( .A(u_I_en[5]), .Z(u_I_en[6]));
Q_BUF U1 ( .A(u_I_en[4]), .Z(u_I_en[5]));
Q_BUF U2 ( .A(u_I_en[3]), .Z(u_I_en[4]));
Q_BUF U3 ( .A(u_I_en[2]), .Z(u_I_en[3]));
Q_BUF U4 ( .A(u_I_en[1]), .Z(u_I_en[2]));
Q_BUF U5 ( .A(u_I_en[0]), .Z(u_I_en[1]));
Q_BUF U6 ( .A(u_I_en[7]), .Z(u_I_en[0]));
Q_BUF U7 ( .A(u_I_arst[5]), .Z(u_I_arst[6]));
Q_BUF U8 ( .A(u_I_arst[4]), .Z(u_I_arst[5]));
Q_BUF U9 ( .A(u_I_arst[3]), .Z(u_I_arst[4]));
Q_BUF U10 ( .A(u_I_arst[2]), .Z(u_I_arst[3]));
Q_BUF U11 ( .A(u_I_arst[1]), .Z(u_I_arst[2]));
Q_BUF U12 ( .A(u_I_arst[0]), .Z(u_I_arst[1]));
Q_BUF U13 ( .A(u_I_arst[7]), .Z(u_I_arst[0]));
Q_BUF U14 ( .A(en), .Z(u_I_en[7]));
Q_BUF U15 ( .A(i_arst), .Z(u_I_arst[7]));
Q_AO21 U16 ( .A0(n134), .A1(n133), .B0(i[31]), .Z(n1));
Q_INV U17 ( .A(n1), .Z(n2));
Q_OR03 U18 ( .A0(n2), .A1(i[11]), .A2(n3), .Z(n5));
Q_OR02 U19 ( .A0(i[3]), .A1(i[5]), .Z(n3));
Q_OR03 U20 ( .A0(i[22]), .A1(i[4]), .A2(n4), .Z(n6));
Q_OR02 U21 ( .A0(i[7]), .A1(i[6]), .Z(n4));
Q_OR03 U22 ( .A0(n6), .A1(n5), .A2(n10), .Z(n15));
Q_OR03 U23 ( .A0(i[9]), .A1(i[8]), .A2(n7), .Z(n8));
Q_OR02 U24 ( .A0(i[13]), .A1(i[10]), .Z(n7));
Q_OR02 U25 ( .A0(i[24]), .A1(i[12]), .Z(n9));
Q_OR03 U26 ( .A0(i[14]), .A1(n9), .A2(n8), .Z(n10));
Q_OR03 U27 ( .A0(i[16]), .A1(i[15]), .A2(n11), .Z(n12));
Q_OR02 U28 ( .A0(i[18]), .A1(i[17]), .Z(n11));
Q_OR02 U29 ( .A0(i[20]), .A1(i[19]), .Z(n13));
Q_OR03 U30 ( .A0(i[21]), .A1(n13), .A2(n12), .Z(n14));
Q_OR03 U31 ( .A0(i[23]), .A1(i[29]), .A2(n14), .Z(n16));
Q_OR02 U32 ( .A0(n16), .A1(n15), .Z(n22));
Q_OR03 U33 ( .A0(i[25]), .A1(i[0]), .A2(n20), .Z(n17));
Q_OR03 U34 ( .A0(i[28]), .A1(n17), .A2(n22), .Z(n29));
Q_OR02 U35 ( .A0(n23), .A1(n29), .Z(n25));
Q_OR02 U36 ( .A0(i[1]), .A1(n25), .Z(n18));
Q_OR03 U37 ( .A0(i[25]), .A1(n19), .A2(n20), .Z(n21));
Q_OR02 U38 ( .A0(i[27]), .A1(i[26]), .Z(n20));
Q_OR03 U39 ( .A0(i[28]), .A1(n21), .A2(n22), .Z(n32));
Q_OR03 U40 ( .A0(i[30]), .A1(i[2]), .A2(i[31]), .Z(n23));
Q_OR02 U41 ( .A0(n23), .A1(n32), .Z(n27));
Q_OR02 U42 ( .A0(i[1]), .A1(n27), .Z(n24));
Q_OR02 U43 ( .A0(n38), .A1(n25), .Z(n26));
Q_OR02 U44 ( .A0(n38), .A1(n27), .Z(n28));
Q_OR02 U45 ( .A0(n33), .A1(n29), .Z(n35));
Q_OR02 U46 ( .A0(i[1]), .A1(n35), .Z(n30));
Q_OR03 U47 ( .A0(i[30]), .A1(n31), .A2(i[31]), .Z(n33));
Q_OR02 U48 ( .A0(n33), .A1(n32), .Z(n37));
Q_OR02 U49 ( .A0(i[1]), .A1(n37), .Z(n34));
Q_OR02 U50 ( .A0(n38), .A1(n35), .Z(n36));
Q_OR02 U51 ( .A0(n38), .A1(n37), .Z(n39));
Q_FDP0I0 U52 ( .CK(i_clk), .D(n71), .Q(i[0]), .QN(n19));
Q_FDP0I0 U53 ( .CK(i_clk), .D(n70), .Q(i[1]), .QN(n38));
Q_FDP0I0 U54 ( .CK(i_clk), .D(n69), .Q(i[2]), .QN(n31));
Q_FDP0I0 U55 ( .CK(i_clk), .D(n68), .Q(i[3]), .QN(n138));
Q_FDP0I0 U56 ( .CK(i_clk), .D(n67), .Q(i[4]), .QN(n139));
Q_FDP0I0 U57 ( .CK(i_clk), .D(n66), .Q(i[5]), .QN( ));
Q_FDP0I0 U58 ( .CK(i_clk), .D(n65), .Q(i[6]), .QN( ));
Q_FDP0I0 U59 ( .CK(i_clk), .D(n64), .Q(i[7]), .QN(n142));
Q_FDP0I0 U60 ( .CK(i_clk), .D(n63), .Q(i[8]), .QN(n143));
Q_FDP0I0 U61 ( .CK(i_clk), .D(n62), .Q(i[9]), .QN( ));
Q_FDP0I0 U62 ( .CK(i_clk), .D(n61), .Q(i[10]), .QN( ));
Q_FDP0I0 U63 ( .CK(i_clk), .D(n60), .Q(i[11]), .QN(n146));
Q_FDP0I0 U64 ( .CK(i_clk), .D(n59), .Q(i[12]), .QN(n147));
Q_FDP0I0 U65 ( .CK(i_clk), .D(n58), .Q(i[13]), .QN( ));
Q_FDP0I0 U66 ( .CK(i_clk), .D(n57), .Q(i[14]), .QN( ));
Q_FDP0I0 U67 ( .CK(i_clk), .D(n56), .Q(i[15]), .QN(n150));
Q_FDP0I0 U68 ( .CK(i_clk), .D(n55), .Q(i[16]), .QN(n151));
Q_FDP0I0 U69 ( .CK(i_clk), .D(n54), .Q(i[17]), .QN( ));
Q_FDP0I0 U70 ( .CK(i_clk), .D(n53), .Q(i[18]), .QN( ));
Q_FDP0I0 U71 ( .CK(i_clk), .D(n52), .Q(i[19]), .QN(n154));
Q_FDP0I0 U72 ( .CK(i_clk), .D(n51), .Q(i[20]), .QN(n155));
Q_FDP0I0 U73 ( .CK(i_clk), .D(n50), .Q(i[21]), .QN( ));
Q_FDP0I0 U74 ( .CK(i_clk), .D(n49), .Q(i[22]), .QN( ));
Q_FDP0I0 U75 ( .CK(i_clk), .D(n48), .Q(i[23]), .QN(n158));
Q_FDP0I0 U76 ( .CK(i_clk), .D(n47), .Q(i[24]), .QN(n159));
Q_FDP0I0 U77 ( .CK(i_clk), .D(n46), .Q(i[25]), .QN( ));
Q_FDP0I0 U78 ( .CK(i_clk), .D(n45), .Q(i[26]), .QN( ));
Q_FDP0I0 U79 ( .CK(i_clk), .D(n44), .Q(i[27]), .QN(n162));
Q_FDP0I0 U80 ( .CK(i_clk), .D(n43), .Q(i[28]), .QN(n163));
Q_FDP0I0 U81 ( .CK(i_clk), .D(n42), .Q(i[29]), .QN( ));
Q_FDP0I0 U82 ( .CK(i_clk), .D(n41), .Q(i[30]), .QN( ));
Q_FDP0I0 U83 ( .CK(i_clk), .D(n40), .Q(i[31]), .QN( ));
Q_AN02 U84 ( .A0(n1), .A1(n72), .Z(n40));
Q_AN02 U85 ( .A0(n1), .A1(n74), .Z(n41));
Q_AN02 U86 ( .A0(n1), .A1(n76), .Z(n42));
Q_AN02 U87 ( .A0(n1), .A1(n78), .Z(n43));
Q_AN02 U88 ( .A0(n1), .A1(n80), .Z(n44));
Q_AN02 U89 ( .A0(n1), .A1(n82), .Z(n45));
Q_AN02 U90 ( .A0(n1), .A1(n84), .Z(n46));
Q_AN02 U91 ( .A0(n1), .A1(n86), .Z(n47));
Q_AN02 U92 ( .A0(n1), .A1(n88), .Z(n48));
Q_AN02 U93 ( .A0(n1), .A1(n90), .Z(n49));
Q_AN02 U94 ( .A0(n1), .A1(n92), .Z(n50));
Q_AN02 U95 ( .A0(n1), .A1(n94), .Z(n51));
Q_AN02 U96 ( .A0(n1), .A1(n96), .Z(n52));
Q_AN02 U97 ( .A0(n1), .A1(n98), .Z(n53));
Q_AN02 U98 ( .A0(n1), .A1(n100), .Z(n54));
Q_AN02 U99 ( .A0(n1), .A1(n102), .Z(n55));
Q_AN02 U100 ( .A0(n1), .A1(n104), .Z(n56));
Q_AN02 U101 ( .A0(n1), .A1(n106), .Z(n57));
Q_AN02 U102 ( .A0(n1), .A1(n108), .Z(n58));
Q_AN02 U103 ( .A0(n1), .A1(n110), .Z(n59));
Q_AN02 U104 ( .A0(n1), .A1(n112), .Z(n60));
Q_AN02 U105 ( .A0(n1), .A1(n114), .Z(n61));
Q_AN02 U106 ( .A0(n1), .A1(n116), .Z(n62));
Q_AN02 U107 ( .A0(n1), .A1(n118), .Z(n63));
Q_AN02 U108 ( .A0(n1), .A1(n120), .Z(n64));
Q_AN02 U109 ( .A0(n1), .A1(n122), .Z(n65));
Q_AN02 U110 ( .A0(n1), .A1(n124), .Z(n66));
Q_AN02 U111 ( .A0(n1), .A1(n126), .Z(n67));
Q_AN02 U112 ( .A0(n1), .A1(n128), .Z(n68));
Q_AN02 U113 ( .A0(n1), .A1(n130), .Z(n69));
Q_AN02 U114 ( .A0(n1), .A1(n132), .Z(n70));
Q_AN02 U115 ( .A0(n1), .A1(n19), .Z(n71));
Q_XOR2 U116 ( .A0(i[31]), .A1(n73), .Z(n72));
Q_AD01HF U117 ( .A0(i[30]), .B0(n75), .S(n74), .CO(n73));
Q_AD01HF U118 ( .A0(i[29]), .B0(n77), .S(n76), .CO(n75));
Q_AD01HF U119 ( .A0(i[28]), .B0(n79), .S(n78), .CO(n77));
Q_AD01HF U120 ( .A0(i[27]), .B0(n81), .S(n80), .CO(n79));
Q_AD01HF U121 ( .A0(i[26]), .B0(n83), .S(n82), .CO(n81));
Q_AD01HF U122 ( .A0(i[25]), .B0(n85), .S(n84), .CO(n83));
Q_AD01HF U123 ( .A0(i[24]), .B0(n87), .S(n86), .CO(n85));
Q_AD01HF U124 ( .A0(i[23]), .B0(n89), .S(n88), .CO(n87));
Q_AD01HF U125 ( .A0(i[22]), .B0(n91), .S(n90), .CO(n89));
Q_AD01HF U126 ( .A0(i[21]), .B0(n93), .S(n92), .CO(n91));
Q_AD01HF U127 ( .A0(i[20]), .B0(n95), .S(n94), .CO(n93));
Q_AD01HF U128 ( .A0(i[19]), .B0(n97), .S(n96), .CO(n95));
Q_AD01HF U129 ( .A0(i[18]), .B0(n99), .S(n98), .CO(n97));
Q_AD01HF U130 ( .A0(i[17]), .B0(n101), .S(n100), .CO(n99));
Q_AD01HF U131 ( .A0(i[16]), .B0(n103), .S(n102), .CO(n101));
Q_AD01HF U132 ( .A0(i[15]), .B0(n105), .S(n104), .CO(n103));
Q_AD01HF U133 ( .A0(i[14]), .B0(n107), .S(n106), .CO(n105));
Q_AD01HF U134 ( .A0(i[13]), .B0(n109), .S(n108), .CO(n107));
Q_AD01HF U135 ( .A0(i[12]), .B0(n111), .S(n110), .CO(n109));
Q_AD01HF U136 ( .A0(i[11]), .B0(n113), .S(n112), .CO(n111));
Q_AD01HF U137 ( .A0(i[10]), .B0(n115), .S(n114), .CO(n113));
Q_AD01HF U138 ( .A0(i[9]), .B0(n117), .S(n116), .CO(n115));
Q_AD01HF U139 ( .A0(i[8]), .B0(n119), .S(n118), .CO(n117));
Q_AD01HF U140 ( .A0(i[7]), .B0(n121), .S(n120), .CO(n119));
Q_AD01HF U141 ( .A0(i[6]), .B0(n123), .S(n122), .CO(n121));
Q_AD01HF U142 ( .A0(i[5]), .B0(n125), .S(n124), .CO(n123));
Q_AD01HF U143 ( .A0(i[4]), .B0(n127), .S(n126), .CO(n125));
Q_AD01HF U144 ( .A0(i[3]), .B0(n129), .S(n128), .CO(n127));
Q_AD01HF U145 ( .A0(i[2]), .B0(n131), .S(n130), .CO(n129));
Q_AD01HF U146 ( .A0(i[1]), .B0(i[0]), .S(n132), .CO(n131));
Q_AN03 U147 ( .A0(n144), .A1(n140), .A2(n136), .Z(n133));
Q_AN03 U148 ( .A0(n135), .A1(n152), .A2(n148), .Z(n134));
Q_AN03 U149 ( .A0(n137), .A1(n139), .A2(n138), .Z(n136));
Q_NR02 U150 ( .A0(i[6]), .A1(i[5]), .Z(n137));
Q_AN03 U151 ( .A0(n141), .A1(n143), .A2(n142), .Z(n140));
Q_NR02 U152 ( .A0(i[10]), .A1(i[9]), .Z(n141));
Q_AN03 U153 ( .A0(n145), .A1(n147), .A2(n146), .Z(n144));
Q_NR02 U154 ( .A0(i[14]), .A1(i[13]), .Z(n145));
Q_AN03 U155 ( .A0(n149), .A1(n151), .A2(n150), .Z(n148));
Q_NR02 U156 ( .A0(i[18]), .A1(i[17]), .Z(n149));
Q_AN03 U157 ( .A0(n153), .A1(n155), .A2(n154), .Z(n152));
Q_NR02 U158 ( .A0(i[22]), .A1(i[21]), .Z(n153));
Q_AN03 U159 ( .A0(n156), .A1(n158), .A2(n160), .Z(n135));
Q_AN02 U160 ( .A0(n157), .A1(n159), .Z(n156));
Q_NR02 U161 ( .A0(i[26]), .A1(i[25]), .Z(n157));
Q_AN03 U162 ( .A0(n161), .A1(n163), .A2(n162), .Z(n160));
Q_NR02 U163 ( .A0(i[30]), .A1(i[29]), .Z(n161));
M1 u_M1 ( .p1_x( u_I_x[7:0]), .p1_y( u_I_y[7:0]), .o_a( a_a[7:0]));
M2 u_M2 ( .p2_y( u_I_y[7:0]), .p2_w( u_I_w[7:0]), .o_b( b_b[7:0]));
Q_INV U166 ( .A(n39), .Z(n165));
Q_FDP4EP U167 ( .CK(i_clk), .CE(n165), .R(n164), .D(a_a[7]), .Q(o_a[7]));
Q_INV U168 ( .A(n36), .Z(n166));
Q_FDP4EP U169 ( .CK(i_clk), .CE(n166), .R(n164), .D(a_a[6]), .Q(o_a[6]));
Q_INV U170 ( .A(n34), .Z(n167));
Q_FDP4EP U171 ( .CK(i_clk), .CE(n167), .R(n164), .D(a_a[5]), .Q(o_a[5]));
Q_INV U172 ( .A(n30), .Z(n168));
Q_FDP4EP U173 ( .CK(i_clk), .CE(n168), .R(n164), .D(a_a[4]), .Q(o_a[4]));
Q_INV U174 ( .A(n28), .Z(n169));
Q_FDP4EP U175 ( .CK(i_clk), .CE(n169), .R(n164), .D(a_a[3]), .Q(o_a[3]));
Q_INV U176 ( .A(n26), .Z(n170));
Q_FDP4EP U177 ( .CK(i_clk), .CE(n170), .R(n164), .D(a_a[2]), .Q(o_a[2]));
Q_INV U178 ( .A(n24), .Z(n171));
Q_FDP4EP U179 ( .CK(i_clk), .CE(n171), .R(n164), .D(a_a[1]), .Q(o_a[1]));
Q_INV U180 ( .A(n18), .Z(n172));
Q_FDP4EP U181 ( .CK(i_clk), .CE(n172), .R(n164), .D(a_a[0]), .Q(o_a[0]));
Q_FDP4EP U182 ( .CK(i_clk), .CE(n165), .R(n164), .D(b_b[7]), .Q(o_b[7]));
Q_FDP4EP U183 ( .CK(i_clk), .CE(n166), .R(n164), .D(b_b[6]), .Q(o_b[6]));
Q_FDP4EP U184 ( .CK(i_clk), .CE(n167), .R(n164), .D(b_b[5]), .Q(o_b[5]));
Q_FDP4EP U185 ( .CK(i_clk), .CE(n168), .R(n164), .D(b_b[4]), .Q(o_b[4]));
Q_FDP4EP U186 ( .CK(i_clk), .CE(n169), .R(n164), .D(b_b[3]), .Q(o_b[3]));
Q_FDP4EP U187 ( .CK(i_clk), .CE(n170), .R(n164), .D(b_b[2]), .Q(o_b[2]));
Q_FDP4EP U188 ( .CK(i_clk), .CE(n171), .R(n164), .D(b_b[1]), .Q(o_b[1]));
Q_FDP4EP U189 ( .CK(i_clk), .CE(n172), .R(n164), .D(b_b[0]), .Q(o_b[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "u_I_arst 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m2 "u_I_en 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m3 "u_I_y 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m4 "u_I_x 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m5 "u_I_w 1 -2147483647 -2147483647 7 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "5"
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
