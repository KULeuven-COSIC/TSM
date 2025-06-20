/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP3
// Date      : Sun Feb 23 13:22:40 2025
/////////////////////////////////////////////////////////////


module timesharing_andgate_2ndorder ( clk, \rand_bit[9] , \rand_bit[8] , 
        \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , \rand_bit[4] , 
        \rand_bit[3] , \rand_bit[2] , \rand_bit[1] , \rand_composable_bit[6] , 
        \rand_composable_bit[5] , \rand_composable_bit[4] , 
        \rand_composable_bit[3] , \rand_composable_bit[2] , 
        \rand_composable_bit[1] , \input_share1[2] , \input_share1[1] , 
        \input_share2[2] , \input_share2[1] , \input_share3[2] , 
        \input_share3[1] , output_share1, output_share2, output_share3 );
  (* SILVER="clock" *)   input clk ;
  (* SILVER="refresh" *) input \rand_bit[9] ,
         \rand_bit[8] , \rand_bit[7] , \rand_bit[6] , \rand_bit[5] ,
         \rand_bit[4] , \rand_bit[3] , \rand_bit[2] , \rand_bit[1] ,
         \rand_composable_bit[6] ,         \rand_composable_bit[5] , 
         \rand_composable_bit[4] , \rand_composable_bit[3] ,
         \rand_composable_bit[2] , \rand_composable_bit[1] ;
  (* SILVER="1_0" *) input \input_share1[2] ;
  (* SILVER="0_0" *) input \input_share1[1] ;
  (* SILVER="1_1" *) input \input_share2[2] ;
  (* SILVER="0_1" *) input \input_share2[1] ;
  (* SILVER="1_2" *) input \input_share3[2] ;
  (* SILVER="0_2" *) input \input_share3[1] ;

  (* SILVER="0_0" *) output output_share1;
  (* SILVER="0_1" *) output output_share2;
  (* SILVER="0_2" *) output output_share3;
  wire   a_share2, b_share2, a_share3, b_share3, a_subscript0_share1,
         b_subscript0_share1, ab_subscript0_share1, a_subscript0_share1_reg,
         b_subscript0_share1_reg, ab_subscript0_share1_reg,
         a_subscript0_share2_reg, b_subscript0_share2_reg,
         ab_subscript0_share2_reg, a_share2_reg, b_share2_reg, a_share3_reg,
         b_share3_reg, ab_subscript1_share1, ab_subscript1_share2,
         ab_subscript1_share3, a_subscript1_share1, a_subscript1_share2,
         a_subscript1_share3, b_subscript1_share1, b_subscript1_share2,
         b_subscript1_share3, a_subscript1_share1_reg, b_subscript1_share1_reg,
         ab_subscript1_share1_reg, a_subscript1_share2_reg,
         b_subscript1_share2_reg, ab_subscript1_share2_reg,
         a_subscript1_share3_reg, b_subscript1_share3_reg,
         ab_subscript1_share3_reg, a_share3_reg2, b_share3_reg2, n6, n9, n12,
         n13, n16, n17, n18, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

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
  XOR2_X1 U4 ( .A(n16), .B(\rand_bit[9] ), .Z(b_subscript1_share2) );
  XOR2_X1 U7 ( .A(n23), .B(\rand_bit[1] ), .Z(a_subscript0_share1) );
  XOR2_X1 U10 ( .A(n24), .B(\rand_bit[2] ), .Z(b_subscript0_share1) );
  XNOR2_X1 U15 ( .A(ab_subscript1_share3_reg), .B(n6), .ZN(output_share3) );
  XNOR2_X1 U19 ( .A(ab_subscript1_share2_reg), .B(n9), .ZN(output_share2) );
  XNOR2_X1 U23 ( .A(ab_subscript1_share1_reg), .B(n12), .ZN(output_share1) );
  XOR2_X1 U24 ( .A(\rand_bit[9] ), .B(\rand_bit[8] ), .Z(b_subscript1_share3)
         );
  XOR2_X1 U25 ( .A(b_subscript0_share1_reg), .B(\rand_bit[8] ), 
        .Z(b_subscript1_share1) );
  XOR2_X1 U26 ( .A(\rand_bit[7] ), .B(\rand_bit[6] ), .Z(a_subscript1_share3)
         );
  XNOR2_X1 U28 ( .A(\rand_bit[7] ), .B(n13), .ZN(a_subscript1_share2) );
  XOR2_X1 U29 ( .A(a_subscript0_share1_reg), .B(\rand_bit[6] ), 
        .Z(a_subscript1_share1) );
  XOR2_X1 U30 ( .A(\rand_bit[5] ), .B(\rand_bit[4] ), .Z(ab_subscript1_share3)
         );
  XNOR2_X1 U35 ( .A(n18), .B(n17), .ZN(ab_subscript1_share2) );
  XNOR2_X1 U40 ( .A(n22), .B(n21), .ZN(ab_subscript1_share1) );
  XNOR2_X1 U42 ( .A(\rand_bit[3] ), .B(n25), .ZN(ab_subscript0_share1) );
  XNOR2_X1 U44 ( .A(\input_share3[2] ), .B(n26), .ZN(b_share3) );
  XNOR2_X1 U46 ( .A(\input_share3[1] ), .B(n27), .ZN(a_share3) );
  XNOR2_X1 U48 ( .A(\input_share2[2] ), .B(n28), .ZN(b_share2) );
  XNOR2_X1 U50 ( .A(\input_share2[1] ), .B(n29), .ZN(a_share2) );
  XNOR2_X1 U51 ( .A(\rand_composable_bit[5] ), .B(\rand_composable_bit[3] ), 
        .ZN(n29) );
  XNOR2_X1 U52 ( .A(\rand_composable_bit[6] ), .B(\rand_composable_bit[4] ), 
        .ZN(n28) );
  XNOR2_X1 U53 ( .A(\rand_composable_bit[1] ), .B(\rand_composable_bit[3] ), 
        .ZN(n27) );
  XNOR2_X1 U54 ( .A(\rand_composable_bit[2] ), .B(\rand_composable_bit[4] ), 
        .ZN(n26) );
  XNOR2_X1 U55 ( .A(\rand_composable_bit[6] ), .B(\input_share1[2] ), .ZN(n30)
         );
  XNOR2_X1 U56 ( .A(\rand_composable_bit[2] ), .B(n30), .ZN(n24) );
  XNOR2_X1 U57 ( .A(\rand_composable_bit[5] ), .B(\input_share1[1] ), .ZN(n31)
         );
  XNOR2_X1 U58 ( .A(\rand_composable_bit[1] ), .B(n31), .ZN(n23) );
  NAND2_X1 U59 ( .A1(n24), .A2(n23), .ZN(n25) );
  XNOR2_X1 U60 ( .A(\rand_bit[4] ), .B(ab_subscript0_share1_reg), .ZN(n21) );
  NAND2_X1 U61 ( .A1(b_subscript0_share1_reg), .A2(a_share2_reg), .ZN(n33) );
  NAND2_X1 U62 ( .A1(a_subscript0_share1_reg), .A2(b_share2_reg), .ZN(n32) );
  XOR2_X1 U63 ( .A(n33), .B(n32), .Z(n22) );
  XOR2_X1 U64 ( .A(b_share2_reg), .B(b_subscript0_share2_reg), .Z(n16) );
  NAND2_X1 U65 ( .A1(a_share2_reg), .A2(n16), .ZN(n17) );
  XOR2_X1 U66 ( .A(\rand_bit[5] ), .B(ab_subscript0_share2_reg), .Z(n35) );
  NAND2_X1 U67 ( .A1(b_share2_reg), .A2(a_subscript0_share2_reg), .ZN(n34) );
  XNOR2_X1 U68 ( .A(n35), .B(n34), .ZN(n18) );
  XNOR2_X1 U69 ( .A(a_subscript0_share2_reg), .B(a_share2_reg), .ZN(n13) );
  NAND2_X1 U70 ( .A1(b_share3_reg2), .A2(a_subscript1_share1_reg), .ZN(n37) );
  NAND2_X1 U71 ( .A1(b_subscript1_share1_reg), .A2(a_share3_reg2), .ZN(n36) );
  XNOR2_X1 U72 ( .A(n37), .B(n36), .ZN(n12) );
  NAND2_X1 U73 ( .A1(b_share3_reg2), .A2(a_subscript1_share2_reg), .ZN(n39) );
  NAND2_X1 U74 ( .A1(b_subscript1_share2_reg), .A2(a_share3_reg2), .ZN(n38) );
  XNOR2_X1 U75 ( .A(n39), .B(n38), .ZN(n9) );
  NAND2_X1 U76 ( .A1(a_subscript1_share3_reg), .A2(b_share3_reg2), .ZN(n42) );
  XOR2_X1 U77 ( .A(b_subscript1_share3_reg), .B(b_share3_reg2), .Z(n40) );
  NAND2_X1 U78 ( .A1(n40), .A2(a_share3_reg2), .ZN(n41) );
  XNOR2_X1 U79 ( .A(n42), .B(n41), .ZN(n6) );
endmodule

