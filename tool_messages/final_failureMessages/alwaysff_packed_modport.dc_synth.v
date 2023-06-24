/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP2
// Date      : Fri Jun 23 21:35:00 2023
/////////////////////////////////////////////////////////////


module M_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HA1 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  HA1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  HA1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  HA1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  HA1 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  HA1 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  HA1 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  HA1 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  HA1 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  HA1 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  HA1 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  HA1 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  HA1 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  HA1 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  IVP U1 ( .A(A[0]), .Z(SUM[0]) );
  EO U2 ( .A(carry[31]), .B(A[31]), .Z(SUM[31]) );
endmodule


module M ( \p.x , o_a, i_a, i_clk );
  output [7:0] \p.x ;
  output [7:0] o_a;
  input i_a, i_clk;
  wire   N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60,
         N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74,
         N75, N76, N77, N78, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n47, n48, n49, n50, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n64, n66, n68, n70, n72, n74, n76, n78, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142;
  wire   [31:0] i;
  assign \p.x  [7] = o_a[7];
  assign \p.x  [6] = o_a[6];
  assign \p.x  [5] = o_a[5];
  assign \p.x  [4] = o_a[4];
  assign \p.x  [3] = o_a[3];
  assign \p.x  [2] = o_a[2];
  assign \p.x  [1] = o_a[1];
  assign \p.x  [0] = o_a[0];

  FD1S \p.x_reg[6]  ( .D(n78), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[6]), 
        .QN(n55) );
  FD1S \p.x_reg[4]  ( .D(n76), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[4]), 
        .QN(n56) );
  FD1S \p.x_reg[2]  ( .D(n74), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[2]), 
        .QN(n57) );
  FD1S \p.x_reg[0]  ( .D(n72), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[0]), 
        .QN(n58) );
  FD1S \p.x_reg[7]  ( .D(n70), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[7]), 
        .QN(n59) );
  FD1S \p.x_reg[5]  ( .D(n68), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[5]), 
        .QN(n60) );
  FD1S \p.x_reg[3]  ( .D(n66), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[3]), 
        .QN(n61) );
  FD1S \p.x_reg[1]  ( .D(n64), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(o_a[1]), 
        .QN(n62) );
  FD1S \i_reg[1]  ( .D(N48), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[1]), .QN(
        n54) );
  FD1S \i_reg[2]  ( .D(N49), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[2]), .QN(
        n53) );
  FD1S \i_reg[3]  ( .D(N50), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[3]), .QN(
        n34) );
  FD1S \i_reg[4]  ( .D(N51), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[4]), .QN(
        n35) );
  FD1S \i_reg[5]  ( .D(N52), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[5]), .QN(
        n141) );
  FD1S \i_reg[7]  ( .D(N54), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[7]), .QN(
        n142) );
  FD1S \i_reg[9]  ( .D(N56), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[9]), .QN(
        n32) );
  FD1S \i_reg[11]  ( .D(N58), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[11]), 
        .QN(n49) );
  FD1S \i_reg[12]  ( .D(N59), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[12]), 
        .QN(n50) );
  FD1S \i_reg[15]  ( .D(N62), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[15]), 
        .QN(n47) );
  FD1S \i_reg[16]  ( .D(N63), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[16]), 
        .QN(n48) );
  FD1S \i_reg[18]  ( .D(N65), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[18]), 
        .QN(n42) );
  FD1S \i_reg[19]  ( .D(N66), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[19]), 
        .QN(n43) );
  FD1S \i_reg[22]  ( .D(N69), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[22]), 
        .QN(n40) );
  FD1S \i_reg[23]  ( .D(N70), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[23]), 
        .QN(n41) );
  FD1S \i_reg[25]  ( .D(N72), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[25]), 
        .QN(n38) );
  FD1S \i_reg[26]  ( .D(N73), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[26]), 
        .QN(n39) );
  FD1S \i_reg[27]  ( .D(N74), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[27]), 
        .QN(n139) );
  FD1S \i_reg[28]  ( .D(N75), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[28]), 
        .QN(n140) );
  FD1S \i_reg[29]  ( .D(N76), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[29]), 
        .QN(n36) );
  FD1S \i_reg[30]  ( .D(N77), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[30]), 
        .QN(n37) );
  FD1S \i_reg[31]  ( .D(N78), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[31]), 
        .QN(n33) );
  FD1S \i_reg[6]  ( .D(N53), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[6]) );
  FD1S \i_reg[8]  ( .D(N55), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[8]) );
  FD1S \i_reg[10]  ( .D(N57), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[10]) );
  FD1S \i_reg[13]  ( .D(N60), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[13]) );
  FD1S \i_reg[14]  ( .D(N61), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[14]) );
  FD1S \i_reg[17]  ( .D(N64), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[17]) );
  FD1S \i_reg[20]  ( .D(N67), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[20]) );
  FD1S \i_reg[21]  ( .D(N68), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[21]) );
  FD1S \i_reg[24]  ( .D(N71), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[24]) );
  FD1S \i_reg[0]  ( .D(N47), .TI(1'b0), .TE(1'b0), .CP(i_clk), .Q(i[0]), .QN(
        n52) );
  AO4 U82 ( .A(n111), .B(n112), .C(n113), .D(n55), .Z(n78) );
  NR2 U83 ( .A(n111), .B(n114), .Z(n113) );
  AO4 U84 ( .A(n112), .B(n115), .C(n116), .D(n56), .Z(n76) );
  NR2 U85 ( .A(n114), .B(n115), .Z(n116) );
  AO4 U86 ( .A(n112), .B(n117), .C(n118), .D(n57), .Z(n74) );
  NR2 U87 ( .A(n114), .B(n117), .Z(n118) );
  AO4 U88 ( .A(n112), .B(n119), .C(n120), .D(n58), .Z(n72) );
  NR2 U89 ( .A(n114), .B(n119), .Z(n120) );
  IV U90 ( .A(n121), .Z(n114) );
  ND2 U91 ( .A(i_a), .B(n121), .Z(n112) );
  NR2 U92 ( .A(i[0]), .B(n122), .Z(n121) );
  AO4 U93 ( .A(n111), .B(n123), .C(n124), .D(n59), .Z(n70) );
  NR2 U94 ( .A(n111), .B(n125), .Z(n124) );
  ND2 U95 ( .A(i[1]), .B(i[2]), .Z(n111) );
  AO4 U96 ( .A(n115), .B(n123), .C(n126), .D(n60), .Z(n68) );
  NR2 U97 ( .A(n115), .B(n125), .Z(n126) );
  ND2 U98 ( .A(n54), .B(i[2]), .Z(n115) );
  AO4 U99 ( .A(n117), .B(n123), .C(n127), .D(n61), .Z(n66) );
  NR2 U100 ( .A(n117), .B(n125), .Z(n127) );
  ND2 U101 ( .A(n53), .B(i[1]), .Z(n117) );
  AO4 U102 ( .A(n119), .B(n123), .C(n128), .D(n62), .Z(n64) );
  NR2 U103 ( .A(n119), .B(n125), .Z(n128) );
  IV U104 ( .A(n129), .Z(n125) );
  ND2 U105 ( .A(n129), .B(i_a), .Z(n123) );
  NR2 U106 ( .A(n122), .B(n52), .Z(n129) );
  ND4 U107 ( .A(n130), .B(n131), .C(n132), .D(n133), .Z(n122) );
  NR2 U108 ( .A(n134), .B(n135), .Z(n133) );
  ND4 U109 ( .A(n39), .B(n38), .C(n37), .D(n36), .Z(n135) );
  ND4 U110 ( .A(n35), .B(n34), .C(n33), .D(n32), .Z(n134) );
  NR4 U111 ( .A(n136), .B(i[14]), .C(i[17]), .D(i[13]), .Z(n132) );
  ND4 U112 ( .A(n43), .B(n42), .C(n41), .D(n40), .Z(n136) );
  NR4 U113 ( .A(n137), .B(i[8]), .C(i[10]), .D(i[6]), .Z(n131) );
  ND4 U114 ( .A(n50), .B(n49), .C(n48), .D(n47), .Z(n137) );
  NR4 U115 ( .A(n138), .B(i[20]), .C(i[24]), .D(i[21]), .Z(n130) );
  ND4 U116 ( .A(n139), .B(n140), .C(n141), .D(n142), .Z(n138) );
  ND2 U117 ( .A(n53), .B(n54), .Z(n119) );
  M_DW01_inc_0 add_29 ( .A(i), .SUM({N78, N77, N76, N75, N74, N73, N72, N71, 
        N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, 
        N56, N55, N54, N53, N52, N51, N50, N49, N48, N47}) );
endmodule

