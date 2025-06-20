/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP3
// Date      : Sun Feb 23 13:28:39 2025
/////////////////////////////////////////////////////////////


module timesharing_andgate2_thirdorder ( clk, \rand_bit[18] , \rand_bit[17] , 
        \rand_bit[16] , \rand_bit[15] , \rand_bit[14] , \rand_bit[13] , 
        \rand_bit[12] , \rand_bit[11] , \rand_bit[10] , \rand_bit[9] , 
        \rand_bit[8] , \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , 
        \rand_bit[4] , \rand_bit[3] , \rand_bit[2] , \rand_bit[1] , 
        \rand_composable_bit[12] , \rand_composable_bit[11] , 
        \rand_composable_bit[10] , \rand_composable_bit[9] , 
        \rand_composable_bit[8] , \rand_composable_bit[7] , 
        \rand_composable_bit[6] , \rand_composable_bit[5] , 
        \rand_composable_bit[4] , \rand_composable_bit[3] , 
        \rand_composable_bit[2] , \rand_composable_bit[1] , \input_share1[2] , 
        \input_share1[1] , \input_share2[2] , \input_share2[1] , 
        \input_share3[2] , \input_share3[1] , \input_share4[2] , 
        \input_share4[1] , output_share1, output_share2, output_share3, 
        output_share4 );
  (* SILVER="clock" *)   input  clk ;
  (* SILVER="refresh" *) input \rand_bit[18] , \rand_bit[17] , \rand_bit[16] , \rand_bit[15] ,
         \rand_bit[14] , \rand_bit[13] , \rand_bit[12] , \rand_bit[11] ,
         \rand_bit[10] , \rand_bit[9] , \rand_bit[8] , \rand_bit[7] ,
         \rand_bit[6] , \rand_bit[5] , \rand_bit[4] , \rand_bit[3] ,
         \rand_bit[2] , \rand_bit[1] ,  \rand_composable_bit[12] , \rand_composable_bit[11] , 
        \rand_composable_bit[10] , \rand_composable_bit[9] , \rand_composable_bit[8] , 
        \rand_composable_bit[7] , \rand_composable_bit[6] ,
         \rand_composable_bit[5] , \rand_composable_bit[4] ,
         \rand_composable_bit[3] , \rand_composable_bit[2] ,
         \rand_composable_bit[1] ;
  (* SILVER="1_0" *) input \input_share1[2] ;
  (* SILVER="0_0" *) input \input_share1[1] ;
  (* SILVER="1_1" *) input \input_share2[2] ;
  (* SILVER="0_1" *) input \input_share2[1] ;
  (* SILVER="1_2" *) input \input_share3[2] ;
  (* SILVER="0_2" *) input \input_share3[1] ;
  (* SILVER="1_3" *) input \input_share4[2] ;
  (* SILVER="0_3" *) input \input_share4[1] ;

  (* SILVER="0_0" *) output output_share1;
  (* SILVER="0_1" *) output output_share2;
  (* SILVER="0_2" *) output output_share3;
  (* SILVER="0_3" *) output output_share4;
  wire   a_share2, b_share2, a_share3, b_share3, a_share4, b_share4,
         a_subscript0_share1, b_subscript0_share1, ab_subscript0_share1,
         a_subscript0_share1_reg, b_subscript0_share1_reg,
         ab_subscript0_share1_reg, a_subscript0_share2_reg,
         b_subscript0_share2_reg, ab_subscript0_share2_reg, a_share2_reg,
         b_share2_reg, a_share3_reg, b_share3_reg, a_share4_reg, b_share4_reg,
         ab_subscript1_share1, ab_subscript1_share2, ab_subscript1_share3,
         a_subscript1_share1, a_subscript1_share2, a_subscript1_share3,
         b_subscript1_share1, b_subscript1_share2, b_subscript1_share3,
         a_subscript1_share1_reg, b_subscript1_share1_reg,
         ab_subscript1_share1_reg, a_subscript1_share2_reg,
         b_subscript1_share2_reg, ab_subscript1_share2_reg,
         a_subscript1_share3_reg, b_subscript1_share3_reg,
         ab_subscript1_share3_reg, a_share3_reg2, b_share3_reg2, a_share4_reg2,
         b_share4_reg2, ab_subscript2_share1, ab_subscript2_share2,
         ab_subscript2_share3, ab_subscript2_share4, a_subscript2_share1,
         a_subscript2_share2, a_subscript2_share3, a_subscript2_share4,
         b_subscript2_share1, b_subscript2_share2, b_subscript2_share3,
         b_subscript2_share4, a_subscript2_share1_reg, b_subscript2_share1_reg,
         ab_subscript2_share1_reg, a_subscript2_share2_reg,
         b_subscript2_share2_reg, ab_subscript2_share2_reg,
         a_subscript2_share3_reg, b_subscript2_share3_reg,
         ab_subscript2_share3_reg, a_subscript2_share4_reg,
         b_subscript2_share4_reg, ab_subscript2_share4_reg, a_share4_reg3,
         b_share4_reg3, n8, n11, n14, n17, n18, n19, n20, n21, n24, n25, n26,
         n29, n30, n33, n34, n35, n38, n39, n40, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82;

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
  DFF_X1 a_share4_reg_reg ( .D(a_share4), .CK(clk), .Q(a_share4_reg), .QN() );
  DFF_X1 b_share4_reg_reg ( .D(b_share4), .CK(clk), .Q(b_share4_reg), .QN() );
  DFF_X1 a_subscript1_share1_reg_reg ( .D(a_subscript1_share1), .CK(clk), 
        .Q(a_subscript1_share1_reg), .QN() );
  DFF_X1 b_subscript1_share1_reg_reg ( .D(b_subscript1_share1), .CK(clk), 
        .Q(b_subscript1_share1_reg), .QN() );
  DFF_X1 ab_subscript1_share1_reg_reg ( .D(ab_subscript1_share1), .CK(clk), 
        .Q(ab_subscript1_share1_reg), .QN() );
  DFF_X1 a_subscript1_share2_reg_reg ( .D(a_subscript1_share2), .CK(clk), 
        .Q(a_subscript1_share2_reg), .QN() );
  DFF_X1 b_subscript1_share2_reg_reg ( .D(b_subscript1_share2), .CK(clk), 
        .Q(b_subscript1_share2_reg), .QN() );
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
  DFF_X1 a_share4_reg2_reg ( .D(a_share4_reg), .CK(clk), .Q(a_share4_reg2), 
        .QN() );
  DFF_X1 b_share4_reg2_reg ( .D(b_share4_reg), .CK(clk), .Q(b_share4_reg2), 
        .QN() );
  DFF_X1 a_subscript2_share1_reg_reg ( .D(a_subscript2_share1), .CK(clk), 
        .Q(a_subscript2_share1_reg), .QN() );
  DFF_X1 b_subscript2_share1_reg_reg ( .D(b_subscript2_share1), .CK(clk), 
        .Q(b_subscript2_share1_reg), .QN() );
  DFF_X1 ab_subscript2_share1_reg_reg ( .D(ab_subscript2_share1), .CK(clk), 
        .Q(ab_subscript2_share1_reg), .QN() );
  DFF_X1 a_subscript2_share2_reg_reg ( .D(a_subscript2_share2), .CK(clk), 
        .Q(a_subscript2_share2_reg), .QN() );
  DFF_X1 b_subscript2_share2_reg_reg ( .D(b_subscript2_share2), .CK(clk), 
        .Q(b_subscript2_share2_reg), .QN() );
  DFF_X1 ab_subscript2_share2_reg_reg ( .D(ab_subscript2_share2), .CK(clk), 
        .Q(ab_subscript2_share2_reg), .QN() );
  DFF_X1 a_subscript2_share3_reg_reg ( .D(a_subscript2_share3), .CK(clk), 
        .Q(a_subscript2_share3_reg), .QN() );
  DFF_X1 b_subscript2_share3_reg_reg ( .D(b_subscript2_share3), .CK(clk), 
        .Q(b_subscript2_share3_reg), .QN() );
  DFF_X1 ab_subscript2_share3_reg_reg ( .D(ab_subscript2_share3), .CK(clk), 
        .Q(ab_subscript2_share3_reg), .QN() );
  DFF_X1 a_subscript2_share4_reg_reg ( .D(a_subscript2_share4), .CK(clk), 
        .Q(a_subscript2_share4_reg), .QN() );
  DFF_X1 b_subscript2_share4_reg_reg ( .D(b_subscript2_share4), .CK(clk), 
        .Q(b_subscript2_share4_reg), .QN() );
  DFF_X1 ab_subscript2_share4_reg_reg ( .D(ab_subscript2_share4), .CK(clk), 
        .Q(ab_subscript2_share4_reg), .QN() );
  DFF_X1 a_share4_reg3_reg ( .D(a_share4_reg2), .CK(clk), .Q(a_share4_reg3), 
        .QN() );
  DFF_X1 b_share4_reg3_reg ( .D(b_share4_reg2), .CK(clk), .Q(b_share4_reg3), 
        .QN() );
  XOR2_X1 U4 ( .A(n24), .B(\rand_bit[18] ), .Z(b_subscript2_share3) );
  XOR2_X1 U8 ( .A(\rand_bit[1] ), .B(n45), .Z(a_subscript0_share1) );
  XOR2_X1 U10 ( .A(n38), .B(\rand_bit[9] ), .Z(b_subscript1_share2) );
  XOR2_X1 U14 ( .A(n46), .B(\rand_bit[2] ), .Z(b_subscript0_share1) );
  XNOR2_X1 U19 ( .A(ab_subscript2_share4_reg), .B(n8), .ZN(output_share4) );
  XNOR2_X1 U23 ( .A(ab_subscript2_share3_reg), .B(n11), .ZN(output_share3) );
  XNOR2_X1 U27 ( .A(ab_subscript2_share2_reg), .B(n14), .ZN(output_share2) );
  XNOR2_X1 U31 ( .A(ab_subscript2_share1_reg), .B(n17), .ZN(output_share1) );
  XNOR2_X1 U33 ( .A(\rand_bit[17] ), .B(n18), .ZN(b_subscript2_share4) );
  XOR2_X1 U34 ( .A(b_subscript1_share2_reg), .B(\rand_bit[17] ), 
        .Z(b_subscript2_share2) );
  XOR2_X1 U35 ( .A(b_subscript1_share1_reg), .B(\rand_bit[16] ), 
        .Z(b_subscript2_share1) );
  XNOR2_X1 U37 ( .A(\rand_bit[15] ), .B(n19), .ZN(a_subscript2_share4) );
  XNOR2_X1 U39 ( .A(\rand_bit[15] ), .B(n20), .ZN(a_subscript2_share3) );
  XOR2_X1 U40 ( .A(a_subscript1_share2_reg), .B(\rand_bit[14] ), 
        .Z(a_subscript2_share2) );
  XOR2_X1 U41 ( .A(a_subscript1_share1_reg), .B(\rand_bit[13] ), 
        .Z(a_subscript2_share1) );
  XNOR2_X1 U43 ( .A(\rand_bit[10] ), .B(n21), .ZN(ab_subscript2_share4) );
  XNOR2_X1 U48 ( .A(n26), .B(n25), .ZN(ab_subscript2_share3) );
  XNOR2_X1 U53 ( .A(n30), .B(n29), .ZN(ab_subscript2_share2) );
  XNOR2_X1 U58 ( .A(n34), .B(n33), .ZN(ab_subscript2_share1) );
  XOR2_X1 U59 ( .A(\rand_bit[9] ), .B(\rand_bit[8] ), .Z(b_subscript1_share3)
         );
  XOR2_X1 U60 ( .A(b_subscript0_share1_reg), .B(\rand_bit[8] ), 
        .Z(b_subscript1_share1) );
  XOR2_X1 U61 ( .A(\rand_bit[7] ), .B(\rand_bit[6] ), .Z(a_subscript1_share3)
         );
  XNOR2_X1 U63 ( .A(\rand_bit[7] ), .B(n35), .ZN(a_subscript1_share2) );
  XOR2_X1 U64 ( .A(a_subscript0_share1_reg), .B(\rand_bit[6] ), 
        .Z(a_subscript1_share1) );
  XOR2_X1 U65 ( .A(\rand_bit[5] ), .B(\rand_bit[4] ), .Z(ab_subscript1_share3)
         );
  XNOR2_X1 U70 ( .A(n40), .B(n39), .ZN(ab_subscript1_share2) );
  XNOR2_X1 U75 ( .A(n44), .B(n43), .ZN(ab_subscript1_share1) );
  XNOR2_X1 U77 ( .A(\rand_bit[3] ), .B(n47), .ZN(ab_subscript0_share1) );
  XNOR2_X1 U80 ( .A(n49), .B(n48), .ZN(b_share4) );
  XNOR2_X1 U83 ( .A(n51), .B(n50), .ZN(a_share4) );
  XNOR2_X1 U86 ( .A(n53), .B(n52), .ZN(b_share3) );
  XNOR2_X1 U89 ( .A(n55), .B(n54), .ZN(a_share3) );
  XNOR2_X1 U92 ( .A(n57), .B(n56), .ZN(b_share2) );
  XNOR2_X1 U95 ( .A(n59), .B(n58), .ZN(a_share2) );
  XNOR2_X1 U96 ( .A(\rand_composable_bit[11] ), .B(\rand_composable_bit[3] ), 
        .ZN(n58) );
  XOR2_X1 U97 ( .A(\rand_composable_bit[9] ), .B(\input_share2[1] ), .Z(n59)
         );
  XNOR2_X1 U98 ( .A(\rand_composable_bit[12] ), .B(\rand_composable_bit[4] ), 
        .ZN(n56) );
  XOR2_X1 U99 ( .A(\rand_composable_bit[10] ), .B(\input_share2[2] ), .Z(n57)
         );
  XNOR2_X1 U100 ( .A(\rand_composable_bit[7] ), .B(\rand_composable_bit[5] ), 
        .ZN(n54) );
  XOR2_X1 U101 ( .A(\rand_composable_bit[9] ), .B(\input_share3[1] ), .Z(n55)
         );
  XNOR2_X1 U102 ( .A(\rand_composable_bit[8] ), .B(\rand_composable_bit[6] ), 
        .ZN(n52) );
  XOR2_X1 U103 ( .A(\rand_composable_bit[10] ), .B(\input_share3[2] ), .Z(n53)
         );
  XNOR2_X1 U104 ( .A(\rand_composable_bit[1] ), .B(\rand_composable_bit[3] ), 
        .ZN(n50) );
  XOR2_X1 U105 ( .A(\rand_composable_bit[5] ), .B(\input_share4[1] ), .Z(n51)
         );
  XNOR2_X1 U106 ( .A(\rand_composable_bit[2] ), .B(\rand_composable_bit[4] ), 
        .ZN(n48) );
  XOR2_X1 U107 ( .A(\rand_composable_bit[6] ), .B(\input_share4[2] ), .Z(n49)
         );
  XOR2_X1 U108 ( .A(\rand_composable_bit[12] ), .B(\rand_composable_bit[8] ), 
        .Z(n61) );
  XNOR2_X1 U109 ( .A(\input_share1[2] ), .B(\rand_composable_bit[2] ), 
        .ZN(n60) );
  XNOR2_X1 U110 ( .A(n61), .B(n60), .ZN(n46) );
  XOR2_X1 U111 ( .A(\rand_composable_bit[11] ), .B(\rand_composable_bit[7] ), 
        .Z(n63) );
  XNOR2_X1 U112 ( .A(\input_share1[1] ), .B(\rand_composable_bit[1] ), 
        .ZN(n62) );
  XNOR2_X1 U113 ( .A(n63), .B(n62), .ZN(n45) );
  NAND2_X1 U114 ( .A1(n46), .A2(n45), .ZN(n47) );
  XNOR2_X1 U115 ( .A(\rand_bit[4] ), .B(ab_subscript0_share1_reg), .ZN(n43) );
  NAND2_X1 U116 ( .A1(b_subscript0_share1_reg), .A2(a_share2_reg), .ZN(n65) );
  NAND2_X1 U117 ( .A1(a_subscript0_share1_reg), .A2(b_share2_reg), .ZN(n64) );
  XOR2_X1 U118 ( .A(n65), .B(n64), .Z(n44) );
  XOR2_X1 U119 ( .A(b_share2_reg), .B(b_subscript0_share2_reg), .Z(n38) );
  NAND2_X1 U120 ( .A1(a_share2_reg), .A2(n38), .ZN(n39) );
  XOR2_X1 U121 ( .A(\rand_bit[5] ), .B(ab_subscript0_share2_reg), .Z(n67) );
  NAND2_X1 U122 ( .A1(b_share2_reg), .A2(a_subscript0_share2_reg), .ZN(n66) );
  XNOR2_X1 U123 ( .A(n67), .B(n66), .ZN(n40) );
  XNOR2_X1 U124 ( .A(a_subscript0_share2_reg), .B(a_share2_reg), .ZN(n35) );
  XNOR2_X1 U125 ( .A(\rand_bit[10] ), .B(ab_subscript1_share1_reg), .ZN(n33)
         );
  NAND2_X1 U126 ( .A1(b_subscript1_share1_reg), .A2(a_share3_reg2), .ZN(n69)
         );
  NAND2_X1 U127 ( .A1(a_subscript1_share1_reg), .A2(b_share3_reg2), .ZN(n68)
         );
  XOR2_X1 U128 ( .A(n69), .B(n68), .Z(n34) );
  XNOR2_X1 U129 ( .A(\rand_bit[11] ), .B(ab_subscript1_share2_reg), .ZN(n29)
         );
  NAND2_X1 U130 ( .A1(b_subscript1_share2_reg), .A2(a_share3_reg2), .ZN(n71)
         );
  NAND2_X1 U131 ( .A1(a_subscript1_share2_reg), .A2(b_share3_reg2), .ZN(n70)
         );
  XOR2_X1 U132 ( .A(n71), .B(n70), .Z(n30) );
  XOR2_X1 U133 ( .A(b_share3_reg2), .B(b_subscript1_share3_reg), .Z(n24) );
  NAND2_X1 U134 ( .A1(a_share3_reg2), .A2(n24), .ZN(n25) );
  XOR2_X1 U135 ( .A(\rand_bit[12] ), .B(ab_subscript1_share3_reg), .Z(n73) );
  NAND2_X1 U136 ( .A1(b_share3_reg2), .A2(a_subscript1_share3_reg), .ZN(n72)
         );
  XNOR2_X1 U137 ( .A(n73), .B(n72), .ZN(n26) );
  XNOR2_X1 U138 ( .A(\rand_bit[12] ), .B(\rand_bit[11] ), .ZN(n21) );
  XNOR2_X1 U139 ( .A(a_subscript1_share3_reg), .B(a_share3_reg2), .ZN(n20) );
  XNOR2_X1 U140 ( .A(\rand_bit[14] ), .B(\rand_bit[13] ), .ZN(n19) );
  XNOR2_X1 U141 ( .A(\rand_bit[16] ), .B(\rand_bit[18] ), .ZN(n18) );
  NAND2_X1 U142 ( .A1(b_share4_reg3), .A2(a_subscript2_share1_reg), .ZN(n75)
         );
  NAND2_X1 U143 ( .A1(b_subscript2_share1_reg), .A2(a_share4_reg3), .ZN(n74)
         );
  XNOR2_X1 U144 ( .A(n75), .B(n74), .ZN(n17) );
  NAND2_X1 U145 ( .A1(b_share4_reg3), .A2(a_subscript2_share2_reg), .ZN(n77)
         );
  NAND2_X1 U146 ( .A1(b_subscript2_share2_reg), .A2(a_share4_reg3), .ZN(n76)
         );
  XNOR2_X1 U147 ( .A(n77), .B(n76), .ZN(n14) );
  NAND2_X1 U148 ( .A1(b_share4_reg3), .A2(a_subscript2_share3_reg), .ZN(n79)
         );
  NAND2_X1 U149 ( .A1(b_subscript2_share3_reg), .A2(a_share4_reg3), .ZN(n78)
         );
  XNOR2_X1 U150 ( .A(n79), .B(n78), .ZN(n11) );
  NAND2_X1 U151 ( .A1(a_subscript2_share4_reg), .A2(b_share4_reg3), .ZN(n82)
         );
  XOR2_X1 U152 ( .A(b_subscript2_share4_reg), .B(b_share4_reg3), .Z(n80) );
  NAND2_X1 U153 ( .A1(n80), .A2(a_share4_reg3), .ZN(n81) );
  XNOR2_X1 U154 ( .A(n82), .B(n81), .ZN(n8) );
endmodule

