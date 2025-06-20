/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP3
// Date      : Sun Feb 23 13:43:02 2025
/////////////////////////////////////////////////////////////


module timesharing_andgate_firstorder_1 ( clk, \rand_bit[3] , \rand_bit[2] , 
        \rand_bit[1] , \rand_composable_bit[2] , \rand_composable_bit[1] , 
        \input_share1[2] , \input_share1[1] , \input_share2[2] , 
        \input_share2[1] , output_ab_share1, output_ab_share2, output_a_share1, 
        output_a_share2, output_b_share1, output_b_share2 );
  input clk, \rand_bit[3] , \rand_bit[2] , \rand_bit[1] ,
         \rand_composable_bit[2] , \rand_composable_bit[1] , \input_share1[2] ,
         \input_share1[1] , \input_share2[2] , \input_share2[1] ;
  output output_ab_share1, output_ab_share2, output_a_share1, output_a_share2,
         output_b_share1, output_b_share2;
  wire   a_share2, b_share2, a_subscript0_share1, b_subscript0_share1,
         ab_subscript0_share1, ab_subscript0_share1_reg,
         a_subscript0_share2_reg, b_subscript0_share2_reg,
         ab_subscript0_share2_reg, a_share2_reg, b_share2_reg, n1, n2, n3, n4,
         n5, n6, n7, n8, n9;

  DFF_X1 a_subscript0_share1_reg_reg ( .D(a_subscript0_share1), .CK(clk), 
        .Q(output_a_share1), .QN() );
  DFF_X1 b_subscript0_share1_reg_reg ( .D(b_subscript0_share1), .CK(clk), 
        .Q(output_b_share1), .QN() );
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
  XOR2_X1 U3 ( .A(\rand_composable_bit[1] ), .B(\input_share2[2] ), 
        .Z(a_share2) );
  XOR2_X1 U4 ( .A(\rand_composable_bit[2] ), .B(\input_share2[1] ), 
        .Z(b_share2) );
  XOR2_X1 U5 ( .A(\input_share1[2] ), .B(\rand_composable_bit[1] ), .Z(n8) );
  XOR2_X1 U6 ( .A(\input_share1[1] ), .B(\rand_composable_bit[2] ), .Z(n9) );
  NAND2_X1 U7 ( .A1(n8), .A2(n9), .ZN(n1) );
  XNOR2_X1 U8 ( .A(\rand_bit[3] ), .B(n1), .ZN(ab_subscript0_share1) );
  NAND2_X1 U9 ( .A1(output_a_share1), .A2(b_share2_reg), .ZN(n3) );
  NAND2_X1 U10 ( .A1(output_b_share1), .A2(a_share2_reg), .ZN(n2) );
  XNOR2_X1 U11 ( .A(n3), .B(n2), .ZN(n4) );
  XNOR2_X1 U12 ( .A(ab_subscript0_share1_reg), .B(n4), .ZN(output_ab_share1)
         );
  XOR2_X1 U13 ( .A(b_share2_reg), .B(b_subscript0_share2_reg), 
        .Z(output_b_share2) );
  NAND2_X1 U14 ( .A1(a_subscript0_share2_reg), .A2(b_share2_reg), .ZN(n6) );
  NAND2_X1 U15 ( .A1(output_b_share2), .A2(a_share2_reg), .ZN(n5) );
  XNOR2_X1 U16 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U17 ( .A(ab_subscript0_share2_reg), .B(n7), .ZN(output_ab_share2)
         );
  XOR2_X1 U18 ( .A(a_share2_reg), .B(a_subscript0_share2_reg), 
        .Z(output_a_share2) );
  XOR2_X1 U19 ( .A(n8), .B(\rand_bit[1] ), .Z(a_subscript0_share1) );
  XOR2_X1 U20 ( .A(n9), .B(\rand_bit[2] ), .Z(b_subscript0_share1) );
endmodule


module timesharing_andgate_firstorder_0 ( clk, \rand_bit[3] , \rand_bit[2] , 
        \rand_bit[1] , \rand_composable_bit[2] , \rand_composable_bit[1] , 
        \input_share1[2] , \input_share1[1] , \input_share2[2] , 
        \input_share2[1] , output_ab_share1, output_ab_share2, output_a_share1, 
        output_a_share2, output_b_share1, output_b_share2 );
  input clk, \rand_bit[3] , \rand_bit[2] , \rand_bit[1] ,
         \rand_composable_bit[2] , \rand_composable_bit[1] , \input_share1[2] ,
         \input_share1[1] , \input_share2[2] , \input_share2[1] ;
  output output_ab_share1, output_ab_share2, output_a_share1, output_a_share2,
         output_b_share1, output_b_share2;
  wire   a_share2, b_share2, a_subscript0_share1, b_subscript0_share1,
         ab_subscript0_share1, ab_subscript0_share1_reg,
         a_subscript0_share2_reg, b_subscript0_share2_reg,
         ab_subscript0_share2_reg, a_share2_reg, b_share2_reg, n1, n2, n3, n4,
         n5, n6, n7, n8, n9;

  DFF_X1 a_subscript0_share1_reg_reg ( .D(a_subscript0_share1), .CK(clk), 
        .Q(output_a_share1), .QN() );
  DFF_X1 b_subscript0_share1_reg_reg ( .D(b_subscript0_share1), .CK(clk), 
        .Q(output_b_share1), .QN() );
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
  XOR2_X1 U3 ( .A(\rand_composable_bit[1] ), .B(\input_share2[2] ), 
        .Z(a_share2) );
  XOR2_X1 U4 ( .A(\rand_composable_bit[2] ), .B(\input_share2[1] ), 
        .Z(b_share2) );
  XOR2_X1 U5 ( .A(\input_share1[2] ), .B(\rand_composable_bit[1] ), .Z(n8) );
  XOR2_X1 U6 ( .A(\input_share1[1] ), .B(\rand_composable_bit[2] ), .Z(n9) );
  NAND2_X1 U7 ( .A1(n8), .A2(n9), .ZN(n1) );
  XNOR2_X1 U8 ( .A(\rand_bit[3] ), .B(n1), .ZN(ab_subscript0_share1) );
  NAND2_X1 U9 ( .A1(output_a_share1), .A2(b_share2_reg), .ZN(n3) );
  NAND2_X1 U10 ( .A1(output_b_share1), .A2(a_share2_reg), .ZN(n2) );
  XNOR2_X1 U11 ( .A(n3), .B(n2), .ZN(n4) );
  XNOR2_X1 U12 ( .A(ab_subscript0_share1_reg), .B(n4), .ZN(output_ab_share1)
         );
  XOR2_X1 U13 ( .A(b_share2_reg), .B(b_subscript0_share2_reg), 
        .Z(output_b_share2) );
  NAND2_X1 U14 ( .A1(a_subscript0_share2_reg), .A2(b_share2_reg), .ZN(n6) );
  NAND2_X1 U15 ( .A1(output_b_share2), .A2(a_share2_reg), .ZN(n5) );
  XNOR2_X1 U16 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U17 ( .A(ab_subscript0_share2_reg), .B(n7), .ZN(output_ab_share2)
         );
  XOR2_X1 U18 ( .A(a_share2_reg), .B(a_subscript0_share2_reg), 
        .Z(output_a_share2) );
  XOR2_X1 U19 ( .A(n8), .B(\rand_bit[1] ), .Z(a_subscript0_share1) );
  XOR2_X1 U20 ( .A(n9), .B(\rand_bit[2] ), .Z(b_subscript0_share1) );
endmodule


module trade_off_first_order_toyexample ( clk, \rand_bit[20] , \rand_bit[19] , 
        \rand_bit[18] , \rand_bit[17] , \rand_bit[16] , \rand_bit[15] , 
        \rand_bit[14] , \rand_bit[13] , \rand_bit[12] , \rand_bit[11] , 
        \rand_bit[10] , \rand_bit[9] , \rand_bit[8] , \rand_bit[7] , 
        \rand_bit[6] , \rand_bit[5] , \rand_bit[4] , \rand_bit[3] , 
        \rand_bit[2] , \rand_bit[1] , \input_share1[4] , \input_share1[3] , 
        \input_share1[2] , \input_share1[1] , \input_share2[4] , 
        \input_share2[3] , \input_share2[2] , \input_share2[1] , output_share1, 
        output_share2 );
  (* SILVER="clock" *)   input clk ;
  (* SILVER="refresh" *) input  \rand_bit[20] , \rand_bit[19] , 
        \rand_bit[18] , \rand_bit[17] , \rand_bit[16] ,\rand_bit[15] , \rand_bit[14] , \rand_bit[13] , \rand_bit[12] ,
         \rand_bit[11] , \rand_bit[10] , \rand_bit[9] , \rand_bit[8] ,
         \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , \rand_bit[4] ,
         \rand_bit[3] , \rand_bit[2] , \rand_bit[1] ;
  (* SILVER="3_0" *) input \input_share1[4] ;
  (* SILVER="2_0" *) input \input_share1[3] ;
  (* SILVER="1_0" *) input \input_share1[2] ;
  (* SILVER="0_0" *) input \input_share1[1] ;
  (* SILVER="3_1" *) input \input_share2[4] ;
  (* SILVER="2_1" *) input \input_share2[3] ;
  (* SILVER="1_1" *) input \input_share2[2] ;
  (* SILVER="0_1" *) input \input_share2[1] ;

  (* SILVER="0_0" *) output output_share1 ;
  (* SILVER="0_1" *) output output_share2 ;
  wire   rand_bit_12, output_ab_share1, output_ab_share2, output_a_share1,
         output_a_share2, output_b_share1, output_b_share2, output_cd_share1,
         output_cd_share2, output_c_share1, output_c_share2, output_d_share1,
         output_d_share2, o1_00, o1_11, o1_00_reg, N0, o1_01_reg, N1,
         o1_10_reg, o1_11_reg, n4, n5, n10, n17, n18, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48;
  assign rand_bit_12 = \rand_bit[12] ;

  timesharing_andgate_firstorder_1 inst1 ( .clk(clk), 
        .\rand_bit[3] (\rand_bit[3] ), .\rand_bit[2] (\rand_bit[2] ), 
        .\rand_bit[1] (\rand_bit[1] ), 
        .\rand_composable_bit[2] (\rand_bit[5] ), 
        .\rand_composable_bit[1] (\rand_bit[4] ), 
        .\input_share1[2] (\input_share1[1] ), 
        .\input_share1[1] (\input_share1[2] ), 
        .\input_share2[2] (\input_share2[1] ), 
        .\input_share2[1] (\input_share2[2] ), 
        .output_ab_share1(output_ab_share1), 
        .output_ab_share2(output_ab_share2), .output_a_share1(output_a_share1), 
        .output_a_share2(output_a_share2), .output_b_share1(output_b_share1), 
        .output_b_share2(output_b_share2) );
  timesharing_andgate_firstorder_0 inst2 ( .clk(clk), 
        .\rand_bit[3] (\rand_bit[8] ), .\rand_bit[2] (\rand_bit[7] ), 
        .\rand_bit[1] (\rand_bit[6] ), 
        .\rand_composable_bit[2] (\rand_bit[10] ), 
        .\rand_composable_bit[1] (\rand_bit[9] ), 
        .\input_share1[2] (\input_share1[3] ), 
        .\input_share1[1] (\input_share1[4] ), 
        .\input_share2[2] (\input_share2[3] ), 
        .\input_share2[1] (\input_share2[4] ), 
        .output_ab_share1(output_cd_share1), 
        .output_ab_share2(output_cd_share2), .output_a_share1(output_c_share1), 
        .output_a_share2(output_c_share2), .output_b_share1(output_d_share1), 
        .output_b_share2(output_d_share2) );
  DFF_X1 o1_11_reg_reg ( .D(o1_11), .CK(clk), .Q(o1_11_reg), .QN() );
  DFF_X1 o1_00_reg_reg ( .D(o1_00), .CK(clk), .Q(o1_00_reg), .QN() );
  DFF_X1 o1_01_reg_reg ( .D(N0), .CK(clk), .Q(o1_01_reg), .QN() );
  DFF_X1 o1_10_reg_reg ( .D(N1), .CK(clk), .Q(o1_10_reg), .QN() );
  XOR2_X1 U3 ( .A(o1_10_reg), .B(o1_11_reg), .Z(output_share2) );
  XOR2_X1 U4 ( .A(o1_00_reg), .B(o1_01_reg), .Z(output_share1) );
  XNOR2_X1 U11 ( .A(n5), .B(n4), .ZN(N1) );
  XNOR2_X1 U17 ( .A(rand_bit_12), .B(n10), .ZN(N0) );
  XNOR2_X1 U25 ( .A(n18), .B(n17), .ZN(o1_11) );
  XNOR2_X1 U35 ( .A(n27), .B(n26), .ZN(o1_00) );
  AND2_X1 U36 ( .A1(output_ab_share1), .A2(output_cd_share1), .ZN(n29) );
  NOR2_X1 U37 ( .A1(output_a_share1), .A2(output_cd_share1), .ZN(n28) );
  NOR2_X1 U38 ( .A1(n29), .A2(n28), .ZN(n30) );
  XNOR2_X1 U39 ( .A(output_d_share1), .B(n30), .ZN(n26) );
  XOR2_X1 U40 ( .A(output_b_share1), .B(output_a_share1), .Z(n31) );
  NAND2_X1 U41 ( .A1(output_c_share1), .A2(n31), .ZN(n34) );
  INV_X1 U42 ( .A(output_c_share1), .ZN(n32) );
  NAND2_X1 U43 ( .A1(output_ab_share1), .A2(n32), .ZN(n33) );
  NAND2_X1 U44 ( .A1(n34), .A2(n33), .ZN(n27) );
  XNOR2_X1 U45 ( .A(output_b_share2), .B(output_a_share2), .ZN(n46) );
  AND2_X1 U46 ( .A1(output_c_share2), .A2(n46), .ZN(n36) );
  NOR2_X1 U47 ( .A1(output_c_share2), .A2(output_ab_share2), .ZN(n35) );
  NOR2_X1 U48 ( .A1(n36), .A2(n35), .ZN(n37) );
  XNOR2_X1 U49 ( .A(output_d_share2), .B(n37), .ZN(n17) );
  INV_X1 U50 ( .A(output_cd_share2), .ZN(n38) );
  OR2_X1 U51 ( .A1(n38), .A2(output_ab_share2), .ZN(n40) );
  NAND2_X1 U52 ( .A1(output_a_share2), .A2(n38), .ZN(n39) );
  NAND2_X1 U53 ( .A1(n40), .A2(n39), .ZN(n18) );
  XOR2_X1 U54 ( .A(output_ab_share1), .B(output_a_share1), .Z(n42) );
  XOR2_X1 U55 ( .A(output_b_share1), .B(n42), .Z(n41) );
  NAND2_X1 U56 ( .A1(n41), .A2(output_c_share2), .ZN(n44) );
  NAND2_X1 U57 ( .A1(output_cd_share2), .A2(n42), .ZN(n43) );
  XNOR2_X1 U58 ( .A(n44), .B(n43), .ZN(n10) );
  XOR2_X1 U59 ( .A(output_ab_share2), .B(output_a_share2), .Z(n45) );
  NAND2_X1 U60 ( .A1(output_cd_share1), .A2(n45), .ZN(n4) );
  XNOR2_X1 U61 ( .A(output_ab_share2), .B(n46), .ZN(n47) );
  NAND2_X1 U62 ( .A1(n47), .A2(output_c_share1), .ZN(n48) );
  XNOR2_X1 U63 ( .A(rand_bit_12), .B(n48), .ZN(n5) );
endmodule

