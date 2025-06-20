/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP3
// Date      : Sun Feb 23 13:45:08 2025
/////////////////////////////////////////////////////////////


module timesharing_andgate_2ndorder_1 ( clk, \rand_bit[9] , \rand_bit[8] , 
        \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , \rand_bit[4] , 
        \rand_bit[3] , \rand_bit[2] , \rand_bit[1] , \rand_composable_bit[6] , 
        \rand_composable_bit[5] , \rand_composable_bit[4] , 
        \rand_composable_bit[3] , \rand_composable_bit[2] , 
        \rand_composable_bit[1] , \input_share1[2] , \input_share1[1] , 
        \input_share2[2] , \input_share2[1] , \input_share3[2] , 
        \input_share3[1] , ab_subscript2_share1, ab_subscript2_share2, 
        ab_subscript2_share3, a_subscript2_share1, a_subscript2_share2, 
        a_subscript2_share3, b_subscript2_share1, b_subscript2_share2, 
        b_subscript2_share3 );
  input clk, \rand_bit[9] , \rand_bit[8] , \rand_bit[7] , \rand_bit[6] ,
         \rand_bit[5] , \rand_bit[4] , \rand_bit[3] , \rand_bit[2] ,
         \rand_bit[1] , \rand_composable_bit[6] , \rand_composable_bit[5] ,
         \rand_composable_bit[4] , \rand_composable_bit[3] ,
         \rand_composable_bit[2] , \rand_composable_bit[1] , \input_share1[2] ,
         \input_share1[1] , \input_share2[2] , \input_share2[1] ,
         \input_share3[2] , \input_share3[1] ;
  output ab_subscript2_share1, ab_subscript2_share2, ab_subscript2_share3,
         a_subscript2_share1, a_subscript2_share2, a_subscript2_share3,
         b_subscript2_share1, b_subscript2_share2, b_subscript2_share3;
  wire   a_share2, b_share2, a_share3, b_share3, a_subscript0_share1,
         b_subscript0_share1, ab_subscript0_share1, a_subscript0_share1_reg,
         b_subscript0_share1_reg, ab_subscript0_share1_reg,
         a_subscript0_share2_reg, b_subscript0_share2_reg,
         ab_subscript0_share2_reg, a_share2_reg, b_share2_reg, a_share3_reg,
         b_share3_reg, ab_subscript1_share1, ab_subscript1_share2,
         ab_subscript1_share3, a_subscript1_share1, a_subscript1_share2,
         a_subscript1_share3, b_subscript1_share1, b_subscript1_share2,
         b_subscript1_share3, ab_subscript1_share1_reg,
         ab_subscript1_share2_reg, a_subscript1_share3_reg,
         b_subscript1_share3_reg, ab_subscript1_share3_reg, a_share3_reg2,
         b_share3_reg2, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28;

  DFF_X1 a_subscript0_share1_reg_reg ( .D(a_subscript0_share1), .CK(clk), 
        .Q(a_subscript0_share1_reg), .QN() );
  DFF_X1 b_subscript0_share1_reg_reg ( .D(b_subscript0_share1), .CK(clk), 
        .Q(b_subscript0_share1_reg), .QN() );
  DFF_X1 ab_subscript0_share1_reg_reg ( .D(ab_subscript0_share1), .CK(clk), 
        .Q(ab_subscript0_share1_reg), .QN() );
  DFF_X1 a_subscript0_share2_reg_reg ( .D(\rand_bit[1] ), .CK(clk), 
        .Q(a_subscript0_share2_reg), .QN() );
  DFF_X1 b_subscript0_share2_reg_reg ( .D(\rand_bit[2] ), .CK(clk), 
        .Q(b_subscript0_share2_reg), .QN() );
  DFF_X1 ab_subscript0_share2_reg_reg ( .D(\rand_bit[3] ), .CK(clk), 
        .Q(ab_subscript0_share2_reg), .QN() );
  DFF_X1 a_share2_reg_reg ( .D(a_share2), .CK(clk), .Q(a_share2_reg), .QN() );
  DFF_X1 b_share2_reg_reg ( .D(b_share2), .CK(clk), .Q(b_share2_reg), .QN() );
  DFF_X1 a_share3_reg_reg ( .D(a_share3), .CK(clk), .Q(a_share3_reg), .QN() );
  DFF_X1 b_share3_reg_reg ( .D(b_share3), .CK(clk), .Q(b_share3_reg), .QN() );
  DFF_X1 a_subscript1_share1_reg_reg ( .D(a_subscript1_share1), .CK(clk), 
        .Q(a_subscript2_share1), .QN() );
  DFF_X1 b_subscript1_share1_reg_reg ( .D(b_subscript1_share1), .CK(clk), 
        .Q(b_subscript2_share1), .QN() );
  DFF_X1 ab_subscript1_share1_reg_reg ( .D(ab_subscript1_share1), .CK(clk), 
        .Q(ab_subscript1_share1_reg), .QN() );
  DFF_X1 a_subscript1_share2_reg_reg ( .D(a_subscript1_share2), .CK(clk), 
        .Q(a_subscript2_share2), .QN() );
  DFF_X1 b_subscript1_share2_reg_reg ( .D(b_subscript1_share2), .CK(clk), 
        .Q(b_subscript2_share2), .QN() );
  DFF_X1 ab_subscript1_share2_reg_reg ( .D(ab_subscript1_share2), .CK(clk), 
        .Q(ab_subscript1_share2_reg), .QN() );
  DFF_X1 a_subscript1_share3_reg_reg ( .D(a_subscript1_share3), .CK(clk), 
        .Q(a_subscript1_share3_reg), .QN() );
  DFF_X1 b_subscript1_share3_reg_reg ( .D(b_subscript1_share3), .CK(clk), 
        .Q(b_subscript1_share3_reg), .QN() );
  DFF_X1 ab_subscript1_share3_reg_reg ( .D(ab_subscript1_share3), .CK(clk), 
        .Q(ab_subscript1_share3_reg), .QN() );
  DFF_X1 a_share3_reg2_reg ( .D(a_share3_reg), .CK(clk), .Q(a_share3_reg2), 
        .QN() );
  DFF_X1 b_share3_reg2_reg ( .D(b_share3_reg), .CK(clk), .Q(b_share3_reg2), 
        .QN() );
  XNOR2_X1 U3 ( .A(\rand_composable_bit[5] ), .B(\rand_composable_bit[3] ), 
        .ZN(n1) );
  XNOR2_X1 U4 ( .A(\input_share2[2] ), .B(n1), .ZN(a_share2) );
  XNOR2_X1 U5 ( .A(\rand_composable_bit[6] ), .B(\rand_composable_bit[4] ), 
        .ZN(n2) );
  XNOR2_X1 U6 ( .A(\input_share2[1] ), .B(n2), .ZN(b_share2) );
  XNOR2_X1 U7 ( .A(\rand_composable_bit[1] ), .B(\rand_composable_bit[3] ), 
        .ZN(n3) );
  XNOR2_X1 U8 ( .A(\input_share3[2] ), .B(n3), .ZN(a_share3) );
  XNOR2_X1 U9 ( .A(\rand_composable_bit[2] ), .B(\rand_composable_bit[4] ), 
        .ZN(n4) );
  XNOR2_X1 U10 ( .A(\input_share3[1] ), .B(n4), .ZN(b_share3) );
  XNOR2_X1 U11 ( .A(\rand_composable_bit[6] ), .B(\input_share1[1] ), .ZN(n5)
         );
  XNOR2_X1 U12 ( .A(\rand_composable_bit[2] ), .B(n5), .ZN(n26) );
  XNOR2_X1 U13 ( .A(\rand_composable_bit[5] ), .B(\input_share1[2] ), .ZN(n6)
         );
  XNOR2_X1 U14 ( .A(\rand_composable_bit[1] ), .B(n6), .ZN(n27) );
  NAND2_X1 U15 ( .A1(n26), .A2(n27), .ZN(n7) );
  XNOR2_X1 U16 ( .A(\rand_bit[3] ), .B(n7), .ZN(ab_subscript0_share1) );
  NAND2_X1 U17 ( .A1(b_subscript0_share1_reg), .A2(a_share2_reg), .ZN(n9) );
  NAND2_X1 U18 ( .A1(a_subscript0_share1_reg), .A2(b_share2_reg), .ZN(n8) );
  XOR2_X1 U19 ( .A(n9), .B(n8), .Z(n11) );
  XNOR2_X1 U20 ( .A(\rand_bit[4] ), .B(ab_subscript0_share1_reg), .ZN(n10) );
  XNOR2_X1 U21 ( .A(n11), .B(n10), .ZN(ab_subscript1_share1) );
  XOR2_X1 U22 ( .A(\rand_bit[5] ), .B(ab_subscript0_share2_reg), .Z(n13) );
  NAND2_X1 U23 ( .A1(a_subscript0_share2_reg), .A2(b_share2_reg), .ZN(n12) );
  XNOR2_X1 U24 ( .A(n13), .B(n12), .ZN(n15) );
  XOR2_X1 U25 ( .A(b_subscript0_share2_reg), .B(b_share2_reg), .Z(n28) );
  NAND2_X1 U26 ( .A1(a_share2_reg), .A2(n28), .ZN(n14) );
  XNOR2_X1 U27 ( .A(n15), .B(n14), .ZN(ab_subscript1_share2) );
  XOR2_X1 U28 ( .A(\rand_bit[5] ), .B(\rand_bit[4] ), .Z(ab_subscript1_share3)
         );
  XOR2_X1 U29 ( .A(a_subscript0_share1_reg), .B(\rand_bit[6] ), 
        .Z(a_subscript1_share1) );
  XNOR2_X1 U30 ( .A(a_share2_reg), .B(a_subscript0_share2_reg), .ZN(n16) );
  XNOR2_X1 U31 ( .A(\rand_bit[7] ), .B(n16), .ZN(a_subscript1_share2) );
  XOR2_X1 U32 ( .A(\rand_bit[7] ), .B(\rand_bit[6] ), .Z(a_subscript1_share3)
         );
  XOR2_X1 U33 ( .A(b_subscript0_share1_reg), .B(\rand_bit[8] ), 
        .Z(b_subscript1_share1) );
  XOR2_X1 U34 ( .A(\rand_bit[9] ), .B(\rand_bit[8] ), .Z(b_subscript1_share3)
         );
  NAND2_X1 U35 ( .A1(a_subscript2_share1), .A2(b_share3_reg2), .ZN(n18) );
  NAND2_X1 U36 ( .A1(b_subscript2_share1), .A2(a_share3_reg2), .ZN(n17) );
  XNOR2_X1 U37 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U38 ( .A(ab_subscript1_share1_reg), .B(n19), 
        .ZN(ab_subscript2_share1) );
  NAND2_X1 U39 ( .A1(a_subscript2_share2), .A2(b_share3_reg2), .ZN(n21) );
  NAND2_X1 U40 ( .A1(b_subscript2_share2), .A2(a_share3_reg2), .ZN(n20) );
  XNOR2_X1 U41 ( .A(n21), .B(n20), .ZN(n22) );
  XNOR2_X1 U42 ( .A(ab_subscript1_share2_reg), .B(n22), 
        .ZN(ab_subscript2_share2) );
  XOR2_X1 U43 ( .A(b_share3_reg2), .B(b_subscript1_share3_reg), 
        .Z(b_subscript2_share3) );
  NAND2_X1 U44 ( .A1(a_subscript1_share3_reg), .A2(b_share3_reg2), .ZN(n24) );
  NAND2_X1 U45 ( .A1(b_subscript2_share3), .A2(a_share3_reg2), .ZN(n23) );
  XNOR2_X1 U46 ( .A(n24), .B(n23), .ZN(n25) );
  XNOR2_X1 U47 ( .A(ab_subscript1_share3_reg), .B(n25), 
        .ZN(ab_subscript2_share3) );
  XOR2_X1 U48 ( .A(a_share3_reg2), .B(a_subscript1_share3_reg), 
        .Z(a_subscript2_share3) );
  XOR2_X1 U49 ( .A(n26), .B(\rand_bit[2] ), .Z(b_subscript0_share1) );
  XOR2_X1 U50 ( .A(n27), .B(\rand_bit[1] ), .Z(a_subscript0_share1) );
  XOR2_X1 U51 ( .A(n28), .B(\rand_bit[9] ), .Z(b_subscript1_share2) );
endmodule


module timesharing_andgate_2ndorder_0 ( clk, \rand_bit[9] , \rand_bit[8] , 
        \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , \rand_bit[4] , 
        \rand_bit[3] , \rand_bit[2] , \rand_bit[1] , \rand_composable_bit[6] , 
        \rand_composable_bit[5] , \rand_composable_bit[4] , 
        \rand_composable_bit[3] , \rand_composable_bit[2] , 
        \rand_composable_bit[1] , \input_share1[2] , \input_share1[1] , 
        \input_share2[2] , \input_share2[1] , \input_share3[2] , 
        \input_share3[1] , ab_subscript2_share1, ab_subscript2_share2, 
        ab_subscript2_share3, a_subscript2_share1, a_subscript2_share2, 
        a_subscript2_share3, b_subscript2_share1, b_subscript2_share2, 
        b_subscript2_share3 );
  input clk, \rand_bit[9] , \rand_bit[8] , \rand_bit[7] , \rand_bit[6] ,
         \rand_bit[5] , \rand_bit[4] , \rand_bit[3] , \rand_bit[2] ,
         \rand_bit[1] , \rand_composable_bit[6] , \rand_composable_bit[5] ,
         \rand_composable_bit[4] , \rand_composable_bit[3] ,
         \rand_composable_bit[2] , \rand_composable_bit[1] , \input_share1[2] ,
         \input_share1[1] , \input_share2[2] , \input_share2[1] ,
         \input_share3[2] , \input_share3[1] ;
  output ab_subscript2_share1, ab_subscript2_share2, ab_subscript2_share3,
         a_subscript2_share1, a_subscript2_share2, a_subscript2_share3,
         b_subscript2_share1, b_subscript2_share2, b_subscript2_share3;
  wire   a_share2, b_share2, a_share3, b_share3, a_subscript0_share1,
         b_subscript0_share1, ab_subscript0_share1, a_subscript0_share1_reg,
         b_subscript0_share1_reg, ab_subscript0_share1_reg,
         a_subscript0_share2_reg, b_subscript0_share2_reg,
         ab_subscript0_share2_reg, a_share2_reg, b_share2_reg, a_share3_reg,
         b_share3_reg, ab_subscript1_share1, ab_subscript1_share2,
         ab_subscript1_share3, a_subscript1_share1, a_subscript1_share2,
         a_subscript1_share3, b_subscript1_share1, b_subscript1_share2,
         b_subscript1_share3, ab_subscript1_share1_reg,
         ab_subscript1_share2_reg, a_subscript1_share3_reg,
         b_subscript1_share3_reg, ab_subscript1_share3_reg, a_share3_reg2,
         b_share3_reg2, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28;

  DFF_X1 a_subscript0_share1_reg_reg ( .D(a_subscript0_share1), .CK(clk), 
        .Q(a_subscript0_share1_reg), .QN() );
  DFF_X1 b_subscript0_share1_reg_reg ( .D(b_subscript0_share1), .CK(clk), 
        .Q(b_subscript0_share1_reg), .QN() );
  DFF_X1 ab_subscript0_share1_reg_reg ( .D(ab_subscript0_share1), .CK(clk), 
        .Q(ab_subscript0_share1_reg), .QN() );
  DFF_X1 a_subscript0_share2_reg_reg ( .D(\rand_bit[1] ), .CK(clk), 
        .Q(a_subscript0_share2_reg), .QN() );
  DFF_X1 b_subscript0_share2_reg_reg ( .D(\rand_bit[2] ), .CK(clk), 
        .Q(b_subscript0_share2_reg), .QN() );
  DFF_X1 ab_subscript0_share2_reg_reg ( .D(\rand_bit[3] ), .CK(clk), 
        .Q(ab_subscript0_share2_reg), .QN() );
  DFF_X1 a_share2_reg_reg ( .D(a_share2), .CK(clk), .Q(a_share2_reg), .QN() );
  DFF_X1 b_share2_reg_reg ( .D(b_share2), .CK(clk), .Q(b_share2_reg), .QN() );
  DFF_X1 a_share3_reg_reg ( .D(a_share3), .CK(clk), .Q(a_share3_reg), .QN() );
  DFF_X1 b_share3_reg_reg ( .D(b_share3), .CK(clk), .Q(b_share3_reg), .QN() );
  DFF_X1 a_subscript1_share1_reg_reg ( .D(a_subscript1_share1), .CK(clk), 
        .Q(a_subscript2_share1), .QN() );
  DFF_X1 b_subscript1_share1_reg_reg ( .D(b_subscript1_share1), .CK(clk), 
        .Q(b_subscript2_share1), .QN() );
  DFF_X1 ab_subscript1_share1_reg_reg ( .D(ab_subscript1_share1), .CK(clk), 
        .Q(ab_subscript1_share1_reg), .QN() );
  DFF_X1 a_subscript1_share2_reg_reg ( .D(a_subscript1_share2), .CK(clk), 
        .Q(a_subscript2_share2), .QN() );
  DFF_X1 b_subscript1_share2_reg_reg ( .D(b_subscript1_share2), .CK(clk), 
        .Q(b_subscript2_share2), .QN() );
  DFF_X1 ab_subscript1_share2_reg_reg ( .D(ab_subscript1_share2), .CK(clk), 
        .Q(ab_subscript1_share2_reg), .QN() );
  DFF_X1 a_subscript1_share3_reg_reg ( .D(a_subscript1_share3), .CK(clk), 
        .Q(a_subscript1_share3_reg), .QN() );
  DFF_X1 b_subscript1_share3_reg_reg ( .D(b_subscript1_share3), .CK(clk), 
        .Q(b_subscript1_share3_reg), .QN() );
  DFF_X1 ab_subscript1_share3_reg_reg ( .D(ab_subscript1_share3), .CK(clk), 
        .Q(ab_subscript1_share3_reg), .QN() );
  DFF_X1 a_share3_reg2_reg ( .D(a_share3_reg), .CK(clk), .Q(a_share3_reg2), 
        .QN() );
  DFF_X1 b_share3_reg2_reg ( .D(b_share3_reg), .CK(clk), .Q(b_share3_reg2), 
        .QN() );
  XNOR2_X1 U3 ( .A(\rand_composable_bit[5] ), .B(\rand_composable_bit[3] ), 
        .ZN(n1) );
  XNOR2_X1 U4 ( .A(\input_share2[2] ), .B(n1), .ZN(a_share2) );
  XNOR2_X1 U5 ( .A(\rand_composable_bit[6] ), .B(\rand_composable_bit[4] ), 
        .ZN(n2) );
  XNOR2_X1 U6 ( .A(\input_share2[1] ), .B(n2), .ZN(b_share2) );
  XNOR2_X1 U7 ( .A(\rand_composable_bit[1] ), .B(\rand_composable_bit[3] ), 
        .ZN(n3) );
  XNOR2_X1 U8 ( .A(\input_share3[2] ), .B(n3), .ZN(a_share3) );
  XNOR2_X1 U9 ( .A(\rand_composable_bit[2] ), .B(\rand_composable_bit[4] ), 
        .ZN(n4) );
  XNOR2_X1 U10 ( .A(\input_share3[1] ), .B(n4), .ZN(b_share3) );
  XNOR2_X1 U11 ( .A(\rand_composable_bit[6] ), .B(\input_share1[1] ), .ZN(n5)
         );
  XNOR2_X1 U12 ( .A(\rand_composable_bit[2] ), .B(n5), .ZN(n26) );
  XNOR2_X1 U13 ( .A(\rand_composable_bit[5] ), .B(\input_share1[2] ), .ZN(n6)
         );
  XNOR2_X1 U14 ( .A(\rand_composable_bit[1] ), .B(n6), .ZN(n27) );
  NAND2_X1 U15 ( .A1(n26), .A2(n27), .ZN(n7) );
  XNOR2_X1 U16 ( .A(\rand_bit[3] ), .B(n7), .ZN(ab_subscript0_share1) );
  NAND2_X1 U17 ( .A1(b_subscript0_share1_reg), .A2(a_share2_reg), .ZN(n9) );
  NAND2_X1 U18 ( .A1(a_subscript0_share1_reg), .A2(b_share2_reg), .ZN(n8) );
  XOR2_X1 U19 ( .A(n9), .B(n8), .Z(n11) );
  XNOR2_X1 U20 ( .A(\rand_bit[4] ), .B(ab_subscript0_share1_reg), .ZN(n10) );
  XNOR2_X1 U21 ( .A(n11), .B(n10), .ZN(ab_subscript1_share1) );
  XOR2_X1 U22 ( .A(\rand_bit[5] ), .B(ab_subscript0_share2_reg), .Z(n13) );
  NAND2_X1 U23 ( .A1(a_subscript0_share2_reg), .A2(b_share2_reg), .ZN(n12) );
  XNOR2_X1 U24 ( .A(n13), .B(n12), .ZN(n15) );
  XOR2_X1 U25 ( .A(b_subscript0_share2_reg), .B(b_share2_reg), .Z(n28) );
  NAND2_X1 U26 ( .A1(a_share2_reg), .A2(n28), .ZN(n14) );
  XNOR2_X1 U27 ( .A(n15), .B(n14), .ZN(ab_subscript1_share2) );
  XOR2_X1 U28 ( .A(\rand_bit[5] ), .B(\rand_bit[4] ), .Z(ab_subscript1_share3)
         );
  XOR2_X1 U29 ( .A(a_subscript0_share1_reg), .B(\rand_bit[6] ), 
        .Z(a_subscript1_share1) );
  XNOR2_X1 U30 ( .A(a_share2_reg), .B(a_subscript0_share2_reg), .ZN(n16) );
  XNOR2_X1 U31 ( .A(\rand_bit[7] ), .B(n16), .ZN(a_subscript1_share2) );
  XOR2_X1 U32 ( .A(\rand_bit[7] ), .B(\rand_bit[6] ), .Z(a_subscript1_share3)
         );
  XOR2_X1 U33 ( .A(b_subscript0_share1_reg), .B(\rand_bit[8] ), 
        .Z(b_subscript1_share1) );
  XOR2_X1 U34 ( .A(\rand_bit[9] ), .B(\rand_bit[8] ), .Z(b_subscript1_share3)
         );
  NAND2_X1 U35 ( .A1(a_subscript2_share1), .A2(b_share3_reg2), .ZN(n18) );
  NAND2_X1 U36 ( .A1(b_subscript2_share1), .A2(a_share3_reg2), .ZN(n17) );
  XNOR2_X1 U37 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U38 ( .A(ab_subscript1_share1_reg), .B(n19), 
        .ZN(ab_subscript2_share1) );
  NAND2_X1 U39 ( .A1(a_subscript2_share2), .A2(b_share3_reg2), .ZN(n21) );
  NAND2_X1 U40 ( .A1(b_subscript2_share2), .A2(a_share3_reg2), .ZN(n20) );
  XNOR2_X1 U41 ( .A(n21), .B(n20), .ZN(n22) );
  XNOR2_X1 U42 ( .A(ab_subscript1_share2_reg), .B(n22), 
        .ZN(ab_subscript2_share2) );
  XOR2_X1 U43 ( .A(b_share3_reg2), .B(b_subscript1_share3_reg), 
        .Z(b_subscript2_share3) );
  NAND2_X1 U44 ( .A1(a_subscript1_share3_reg), .A2(b_share3_reg2), .ZN(n24) );
  NAND2_X1 U45 ( .A1(b_subscript2_share3), .A2(a_share3_reg2), .ZN(n23) );
  XNOR2_X1 U46 ( .A(n24), .B(n23), .ZN(n25) );
  XNOR2_X1 U47 ( .A(ab_subscript1_share3_reg), .B(n25), 
        .ZN(ab_subscript2_share3) );
  XOR2_X1 U48 ( .A(a_share3_reg2), .B(a_subscript1_share3_reg), 
        .Z(a_subscript2_share3) );
  XOR2_X1 U49 ( .A(n26), .B(\rand_bit[2] ), .Z(b_subscript0_share1) );
  XOR2_X1 U50 ( .A(n27), .B(\rand_bit[1] ), .Z(a_subscript0_share1) );
  XOR2_X1 U51 ( .A(n28), .B(\rand_bit[9] ), .Z(b_subscript1_share2) );
endmodule


module trade_off_second_order_toyexample ( clk, \rand_bit[33] , \rand_bit[32] , 
        \rand_bit[31] , \rand_bit[30] , \rand_bit[29] , \rand_bit[28] , 
        \rand_bit[27] , \rand_bit[26] , \rand_bit[25] , \rand_bit[24] , 
        \rand_bit[23] , \rand_bit[22] , \rand_bit[21] , \rand_bit[20] , 
        \rand_bit[19] , \rand_bit[18] , \rand_bit[17] , \rand_bit[16] , 
        \rand_bit[15] , \rand_bit[14] , \rand_bit[13] , \rand_bit[12] , 
        \rand_bit[11] , \rand_bit[10] , \rand_bit[9] , \rand_bit[8] , 
        \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , \rand_bit[4] , 
        \rand_bit[3] , \rand_bit[2] , \rand_bit[1] , \input_share1[4] , 
        \input_share1[3] , \input_share1[2] , \input_share1[1] , 
        \input_share2[4] , \input_share2[3] , \input_share2[2] , 
        \input_share2[1] , \input_share3[4] , \input_share3[3] , 
        \input_share3[2] , \input_share3[1] , output_share1, output_share2, 
        output_share3 );
  (* SILVER="clock" *)   input clk ;
  (* SILVER="refresh" *) input  \rand_bit[33] , \rand_bit[32] , \rand_bit[31] , \rand_bit[30] ,
         \rand_bit[29] , \rand_bit[28] , \rand_bit[27] , \rand_bit[26] ,
         \rand_bit[25] , \rand_bit[24] , \rand_bit[23] , \rand_bit[22] ,
         \rand_bit[21] , \rand_bit[20] , \rand_bit[19] , \rand_bit[18] ,
         \rand_bit[17] , \rand_bit[16] , \rand_bit[15] , \rand_bit[14] ,
         \rand_bit[13] , \rand_bit[12] , \rand_bit[11] , \rand_bit[10] ,
         \rand_bit[9] , \rand_bit[8] , \rand_bit[7] , \rand_bit[6] ,
         \rand_bit[5] , \rand_bit[4] , \rand_bit[3] , \rand_bit[2] ,
         \rand_bit[1];
  (* SILVER="3_0" *) input \input_share1[4] ;
  (* SILVER="2_0" *) input \input_share1[3] ;
  (* SILVER="1_0" *) input \input_share1[2] ;
  (* SILVER="0_0" *) input \input_share1[1] ;
  (* SILVER="3_1" *) input \input_share2[4] ;
  (* SILVER="2_1" *) input \input_share2[3] ;
  (* SILVER="1_1" *) input \input_share2[2] ;
  (* SILVER="0_1" *) input \input_share2[1] ;
  (* SILVER="3_2" *) input \input_share3[4] ;
  (* SILVER="2_2" *) input \input_share3[3] ;
  (* SILVER="1_2" *) input \input_share3[2] ;
  (* SILVER="0_2" *) input \input_share3[1] ;

  (* SILVER="0_0" *) output output_share1;
  (* SILVER="0_1" *) output output_share2;
  (* SILVER="0_2" *) output output_share3;

  wire   output_ab_share1, output_ab_share2, output_ab_share3, output_a_share1,
         output_a_share2, output_a_share3, output_b_share1, output_b_share2,
         output_b_share3, output_cd_share1, output_cd_share2, output_cd_share3,
         output_c_share1, output_c_share2, output_c_share3, output_d_share1,
         output_d_share2, output_d_share3, o1_00, o1_11, o1_22, o1_00_reg, N0,
         o1_01_reg, N1, o1_02_reg, N2, o1_10_reg, o1_11_reg, N3, o1_12_reg, N4,
         o1_20_reg, N5, o1_21_reg, o1_22_reg, n1, n2, n3, n6, n11, n14, n19,
         n22, n27, n34, n35, n43, n44, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94;

  timesharing_andgate_2ndorder_1 inst1 ( .clk(clk), 
        .\rand_bit[9] (\rand_bit[9] ), .\rand_bit[8] (\rand_bit[8] ), 
        .\rand_bit[7] (\rand_bit[7] ), .\rand_bit[6] (\rand_bit[6] ), 
        .\rand_bit[5] (\rand_bit[5] ), .\rand_bit[4] (\rand_bit[4] ), 
        .\rand_bit[3] (\rand_bit[3] ), .\rand_bit[2] (\rand_bit[2] ), 
        .\rand_bit[1] (\rand_bit[1] ), 
        .\rand_composable_bit[6] (\rand_bit[15] ), 
        .\rand_composable_bit[5] (\rand_bit[14] ), 
        .\rand_composable_bit[4] (\rand_bit[13] ), 
        .\rand_composable_bit[3] (\rand_bit[12] ), 
        .\rand_composable_bit[2] (\rand_bit[11] ), 
        .\rand_composable_bit[1] (\rand_bit[10] ), 
        .\input_share1[2] (\input_share1[1] ), 
        .\input_share1[1] (\input_share1[2] ), 
        .\input_share2[2] (\input_share2[1] ), 
        .\input_share2[1] (\input_share2[2] ), 
        .\input_share3[2] (\input_share3[1] ), 
        .\input_share3[1] (\input_share3[2] ), 
        .ab_subscript2_share1(output_ab_share1), 
        .ab_subscript2_share2(output_ab_share2), 
        .ab_subscript2_share3(output_ab_share3), 
        .a_subscript2_share1(output_a_share1), 
        .a_subscript2_share2(output_a_share2), 
        .a_subscript2_share3(output_a_share3), 
        .b_subscript2_share1(output_b_share1), 
        .b_subscript2_share2(output_b_share2), 
        .b_subscript2_share3(output_b_share3) );
  timesharing_andgate_2ndorder_0 inst2 ( .clk(clk), 
        .\rand_bit[9] (\rand_bit[24] ), .\rand_bit[8] (\rand_bit[23] ), 
        .\rand_bit[7] (\rand_bit[22] ), .\rand_bit[6] (\rand_bit[21] ), 
        .\rand_bit[5] (\rand_bit[20] ), .\rand_bit[4] (\rand_bit[19] ), 
        .\rand_bit[3] (\rand_bit[18] ), .\rand_bit[2] (\rand_bit[17] ), 
        .\rand_bit[1] (\rand_bit[16] ), 
        .\rand_composable_bit[6] (\rand_bit[30] ), 
        .\rand_composable_bit[5] (\rand_bit[29] ), 
        .\rand_composable_bit[4] (\rand_bit[28] ), 
        .\rand_composable_bit[3] (\rand_bit[27] ), 
        .\rand_composable_bit[2] (\rand_bit[26] ), 
        .\rand_composable_bit[1] (\rand_bit[25] ), 
        .\input_share1[2] (\input_share1[3] ), 
        .\input_share1[1] (\input_share1[4] ), 
        .\input_share2[2] (\input_share2[3] ), 
        .\input_share2[1] (\input_share2[4] ), 
        .\input_share3[2] (\input_share3[3] ), 
        .\input_share3[1] (\input_share3[4] ), 
        .ab_subscript2_share1(output_cd_share1), 
        .ab_subscript2_share2(output_cd_share2), 
        .ab_subscript2_share3(output_cd_share3), 
        .a_subscript2_share1(output_c_share1), 
        .a_subscript2_share2(output_c_share2), 
        .a_subscript2_share3(output_c_share3), 
        .b_subscript2_share1(output_d_share1), 
        .b_subscript2_share2(output_d_share2), 
        .b_subscript2_share3(output_d_share3) );
  DFF_X1 o1_20_reg_reg ( .D(N4), .CK(clk), .Q(o1_20_reg), .QN() );
  DFF_X1 o1_22_reg_reg ( .D(o1_22), .CK(clk), .Q(o1_22_reg), .QN() );
  DFF_X1 o1_21_reg_reg ( .D(N5), .CK(clk), .Q(o1_21_reg), .QN() );
  DFF_X1 o1_00_reg_reg ( .D(o1_00), .CK(clk), .Q(o1_00_reg), .QN() );
  DFF_X1 o1_01_reg_reg ( .D(N0), .CK(clk), .Q(o1_01_reg), .QN() );
  DFF_X1 o1_02_reg_reg ( .D(N1), .CK(clk), .Q(o1_02_reg), .QN() );
  DFF_X1 o1_10_reg_reg ( .D(N2), .CK(clk), .Q(o1_10_reg), .QN() );
  DFF_X1 o1_11_reg_reg ( .D(o1_11), .CK(clk), .Q(o1_11_reg), .QN() );
  DFF_X1 o1_12_reg_reg ( .D(N3), .CK(clk), .Q(o1_12_reg), .QN() );
  XNOR2_X1 U4 ( .A(o1_22_reg), .B(n1), .ZN(output_share3) );
  XNOR2_X1 U6 ( .A(o1_12_reg), .B(n2), .ZN(output_share2) );
  XNOR2_X1 U8 ( .A(o1_02_reg), .B(n3), .ZN(output_share1) );
  XNOR2_X1 U15 ( .A(\rand_bit[33] ), .B(n6), .ZN(N5) );
  XNOR2_X1 U19 ( .A(\rand_bit[32] ), .B(n11), .ZN(N4) );
  XNOR2_X1 U25 ( .A(\rand_bit[33] ), .B(n14), .ZN(N3) );
  XNOR2_X1 U29 ( .A(\rand_bit[31] ), .B(n19), .ZN(N2) );
  XNOR2_X1 U35 ( .A(\rand_bit[32] ), .B(n22), .ZN(N1) );
  XNOR2_X1 U39 ( .A(\rand_bit[31] ), .B(n27), .ZN(N0) );
  XNOR2_X1 U47 ( .A(n35), .B(n34), .ZN(o1_22) );
  XNOR2_X1 U57 ( .A(n44), .B(n43), .ZN(o1_11) );
  XNOR2_X1 U67 ( .A(n53), .B(n52), .ZN(o1_00) );
  XOR2_X1 U68 ( .A(output_b_share1), .B(output_a_share1), .Z(n54) );
  NAND2_X1 U69 ( .A1(output_c_share1), .A2(n54), .ZN(n56) );
  INV_X1 U70 ( .A(output_ab_share1), .ZN(n74) );
  OR2_X1 U71 ( .A1(n74), .A2(output_c_share1), .ZN(n55) );
  NAND2_X1 U72 ( .A1(n56), .A2(n55), .ZN(n57) );
  XNOR2_X1 U73 ( .A(output_d_share1), .B(n57), .ZN(n52) );
  NAND2_X1 U74 ( .A1(output_cd_share1), .A2(n74), .ZN(n60) );
  INV_X1 U75 ( .A(output_cd_share1), .ZN(n58) );
  NAND2_X1 U76 ( .A1(output_a_share1), .A2(n58), .ZN(n59) );
  NAND2_X1 U77 ( .A1(n60), .A2(n59), .ZN(n53) );
  XOR2_X1 U78 ( .A(output_b_share2), .B(output_a_share2), .Z(n61) );
  NAND2_X1 U79 ( .A1(output_c_share2), .A2(n61), .ZN(n63) );
  INV_X1 U80 ( .A(output_ab_share2), .ZN(n81) );
  OR2_X1 U81 ( .A1(n81), .A2(output_c_share2), .ZN(n62) );
  NAND2_X1 U82 ( .A1(n63), .A2(n62), .ZN(n64) );
  XNOR2_X1 U83 ( .A(output_d_share2), .B(n64), .ZN(n43) );
  NAND2_X1 U84 ( .A1(output_cd_share2), .A2(n81), .ZN(n67) );
  INV_X1 U85 ( .A(output_cd_share2), .ZN(n65) );
  NAND2_X1 U86 ( .A1(output_a_share2), .A2(n65), .ZN(n66) );
  NAND2_X1 U87 ( .A1(n67), .A2(n66), .ZN(n44) );
  NAND2_X1 U88 ( .A1(output_cd_share3), .A2(output_ab_share3), .ZN(n69) );
  OR2_X1 U89 ( .A1(output_cd_share3), .A2(output_a_share3), .ZN(n68) );
  NAND2_X1 U90 ( .A1(n69), .A2(n68), .ZN(n34) );
  INV_X1 U91 ( .A(output_c_share3), .ZN(n70) );
  XNOR2_X1 U92 ( .A(output_a_share3), .B(output_b_share3), .ZN(n88) );
  NOR2_X1 U93 ( .A1(n70), .A2(n88), .ZN(n72) );
  AND2_X1 U94 ( .A1(n70), .A2(output_ab_share3), .ZN(n71) );
  NOR2_X1 U95 ( .A1(n72), .A2(n71), .ZN(n73) );
  XNOR2_X1 U96 ( .A(output_d_share3), .B(n73), .ZN(n35) );
  XNOR2_X1 U97 ( .A(n74), .B(output_a_share1), .ZN(n78) );
  NAND2_X1 U98 ( .A1(output_cd_share2), .A2(n78), .ZN(n76) );
  XOR2_X1 U99 ( .A(output_b_share1), .B(n78), .Z(n77) );
  NAND2_X1 U100 ( .A1(n77), .A2(output_c_share2), .ZN(n75) );
  XNOR2_X1 U101 ( .A(n76), .B(n75), .ZN(n27) );
  NAND2_X1 U102 ( .A1(n77), .A2(output_c_share3), .ZN(n80) );
  NAND2_X1 U103 ( .A1(output_cd_share3), .A2(n78), .ZN(n79) );
  XNOR2_X1 U104 ( .A(n80), .B(n79), .ZN(n22) );
  XNOR2_X1 U105 ( .A(n81), .B(output_a_share2), .ZN(n84) );
  NAND2_X1 U106 ( .A1(output_cd_share1), .A2(n84), .ZN(n83) );
  XOR2_X1 U107 ( .A(output_b_share2), .B(n84), .Z(n85) );
  NAND2_X1 U108 ( .A1(n85), .A2(output_c_share1), .ZN(n82) );
  XNOR2_X1 U109 ( .A(n83), .B(n82), .ZN(n19) );
  NAND2_X1 U110 ( .A1(output_cd_share3), .A2(n84), .ZN(n87) );
  NAND2_X1 U111 ( .A1(n85), .A2(output_c_share3), .ZN(n86) );
  XNOR2_X1 U112 ( .A(n87), .B(n86), .ZN(n14) );
  XOR2_X1 U113 ( .A(output_a_share3), .B(output_ab_share3), .Z(n91) );
  NAND2_X1 U114 ( .A1(output_cd_share1), .A2(n91), .ZN(n90) );
  XNOR2_X1 U115 ( .A(output_ab_share3), .B(n88), .ZN(n92) );
  NAND2_X1 U116 ( .A1(n92), .A2(output_c_share1), .ZN(n89) );
  XNOR2_X1 U117 ( .A(n90), .B(n89), .ZN(n11) );
  NAND2_X1 U118 ( .A1(output_cd_share2), .A2(n91), .ZN(n94) );
  NAND2_X1 U119 ( .A1(n92), .A2(output_c_share2), .ZN(n93) );
  XNOR2_X1 U120 ( .A(n94), .B(n93), .ZN(n6) );
  XNOR2_X1 U121 ( .A(o1_01_reg), .B(o1_00_reg), .ZN(n3) );
  XNOR2_X1 U122 ( .A(o1_11_reg), .B(o1_10_reg), .ZN(n2) );
  XNOR2_X1 U123 ( .A(o1_21_reg), .B(o1_20_reg), .ZN(n1) );
endmodule

