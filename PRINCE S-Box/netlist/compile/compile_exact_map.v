/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP3
// Date      : Mon Apr 22 23:09:33 2024
/////////////////////////////////////////////////////////////


module compute_subscript0 ( \input_share1[4] , \input_share1[3] , 
        \input_share1[2] , \input_share1[1] , \rand_bit[14] , \rand_bit[13] , 
        \rand_bit[12] , \rand_bit[11] , \rand_bit[10] , \rand_bit[9] , 
        \rand_bit[8] , \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , 
        \rand_bit[4] , \rand_bit[3] , \rand_bit[2] , \rand_bit[1] , 
        \rand_composable_bit[4] , \rand_composable_bit[3] , 
        \rand_composable_bit[2] , \rand_composable_bit[1] , 
        x_subscript0_share1, x_subscript0_share2, y_subscript0_share1, 
        y_subscript0_share2, z_subscript0_share1, z_subscript0_share2, 
        w_subscript0_share1, w_subscript0_share2, xy_subscript0_share1, 
        xy_subscript0_share2, xz_subscript0_share1, xz_subscript0_share2, 
        xw_subscript0_share1, xw_subscript0_share2, yz_subscript0_share1, 
        yz_subscript0_share2, yw_subscript0_share1, yw_subscript0_share2, 
        zw_subscript0_share1, zw_subscript0_share2, xyz_subscript0_share1, 
        xyz_subscript0_share2, xyw_subscript0_share1, xyw_subscript0_share2, 
        xzw_subscript0_share1, xzw_subscript0_share2, yzw_subscript0_share1, 
        yzw_subscript0_share2 );
  input \input_share1[4] , \input_share1[3] , \input_share1[2] ,
         \input_share1[1] , \rand_bit[14] , \rand_bit[13] , \rand_bit[12] ,
         \rand_bit[11] , \rand_bit[10] , \rand_bit[9] , \rand_bit[8] ,
         \rand_bit[7] , \rand_bit[6] , \rand_bit[5] , \rand_bit[4] ,
         \rand_bit[3] , \rand_bit[2] , \rand_bit[1] , \rand_composable_bit[4] ,
         \rand_composable_bit[3] , \rand_composable_bit[2] ,
         \rand_composable_bit[1] ;
  output x_subscript0_share1, x_subscript0_share2, y_subscript0_share1,
         y_subscript0_share2, z_subscript0_share1, z_subscript0_share2,
         w_subscript0_share1, w_subscript0_share2, xy_subscript0_share1,
         xy_subscript0_share2, xz_subscript0_share1, xz_subscript0_share2,
         xw_subscript0_share1, xw_subscript0_share2, yz_subscript0_share1,
         yz_subscript0_share2, yw_subscript0_share1, yw_subscript0_share2,
         zw_subscript0_share1, zw_subscript0_share2, xyz_subscript0_share1,
         xyz_subscript0_share2, xyw_subscript0_share1, xyw_subscript0_share2,
         xzw_subscript0_share1, xzw_subscript0_share2, yzw_subscript0_share1,
         yzw_subscript0_share2;
  wire   rand_bit_14, rand_bit_13, rand_bit_12, rand_bit_11, rand_bit_10,
         rand_bit_9, rand_bit_8, rand_bit_7, rand_bit_6, rand_bit_5,
         rand_bit_4, rand_bit_3, rand_bit_2, rand_bit_1, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14;
  assign yzw_subscript0_share2 = rand_bit_14;
  assign rand_bit_14 = \rand_bit[14] ;
  assign xzw_subscript0_share2 = rand_bit_13;
  assign rand_bit_13 = \rand_bit[13] ;
  assign xyw_subscript0_share2 = rand_bit_12;
  assign rand_bit_12 = \rand_bit[12] ;
  assign xyz_subscript0_share2 = rand_bit_11;
  assign rand_bit_11 = \rand_bit[11] ;
  assign zw_subscript0_share2 = rand_bit_10;
  assign rand_bit_10 = \rand_bit[10] ;
  assign yw_subscript0_share2 = rand_bit_9;
  assign rand_bit_9 = \rand_bit[9] ;
  assign yz_subscript0_share2 = rand_bit_8;
  assign rand_bit_8 = \rand_bit[8] ;
  assign xw_subscript0_share2 = rand_bit_7;
  assign rand_bit_7 = \rand_bit[7] ;
  assign xz_subscript0_share2 = rand_bit_6;
  assign rand_bit_6 = \rand_bit[6] ;
  assign xy_subscript0_share2 = rand_bit_5;
  assign rand_bit_5 = \rand_bit[5] ;
  assign w_subscript0_share2 = rand_bit_4;
  assign rand_bit_4 = \rand_bit[4] ;
  assign z_subscript0_share2 = rand_bit_3;
  assign rand_bit_3 = \rand_bit[3] ;
  assign y_subscript0_share2 = rand_bit_2;
  assign rand_bit_2 = \rand_bit[2] ;
  assign x_subscript0_share2 = rand_bit_1;
  assign rand_bit_1 = \rand_bit[1] ;

  XNOR2_X1 U1 ( .A(rand_bit_10), .B(n1), .ZN(zw_subscript0_share1) );
  XNOR2_X1 U2 ( .A(rand_bit_3), .B(n2), .ZN(z_subscript0_share1) );
  XOR2_X1 U3 ( .A(rand_bit_14), .B(n3), .Z(yzw_subscript0_share1) );
  NOR2_X1 U4 ( .A1(n4), .A2(n1), .ZN(n3) );
  XOR2_X1 U5 ( .A(rand_bit_8), .B(n5), .Z(yz_subscript0_share1) );
  NOR2_X1 U6 ( .A1(n2), .A2(n4), .ZN(n5) );
  XOR2_X1 U7 ( .A(rand_bit_9), .B(n6), .Z(yw_subscript0_share1) );
  NOR2_X1 U8 ( .A1(n7), .A2(n4), .ZN(n6) );
  XNOR2_X1 U9 ( .A(rand_bit_2), .B(n4), .ZN(y_subscript0_share1) );
  XOR2_X1 U10 ( .A(rand_bit_13), .B(n8), .Z(xzw_subscript0_share1) );
  NOR2_X1 U11 ( .A1(n9), .A2(n1), .ZN(n8) );
  OR2_X1 U12 ( .A1(n7), .A2(n2), .ZN(n1) );
  XOR2_X1 U13 ( .A(rand_bit_6), .B(n10), .Z(xz_subscript0_share1) );
  NOR2_X1 U14 ( .A1(n2), .A2(n9), .ZN(n10) );
  XOR2_X1 U15 ( .A(rand_bit_11), .B(n11), .Z(xyz_subscript0_share1) );
  NOR2_X1 U16 ( .A1(n2), .A2(n12), .ZN(n11) );
  XNOR2_X1 U17 ( .A(\rand_composable_bit[2] ), .B(\input_share1[2] ), .ZN(n2)
         );
  XOR2_X1 U18 ( .A(rand_bit_12), .B(n13), .Z(xyw_subscript0_share1) );
  NOR2_X1 U19 ( .A1(n7), .A2(n12), .ZN(n13) );
  XNOR2_X1 U20 ( .A(rand_bit_5), .B(n12), .ZN(xy_subscript0_share1) );
  OR2_X1 U21 ( .A1(n9), .A2(n4), .ZN(n12) );
  XNOR2_X1 U22 ( .A(\rand_composable_bit[3] ), .B(\input_share1[3] ), .ZN(n4)
         );
  XOR2_X1 U23 ( .A(rand_bit_7), .B(n14), .Z(xw_subscript0_share1) );
  NOR2_X1 U24 ( .A1(n7), .A2(n9), .ZN(n14) );
  XNOR2_X1 U25 ( .A(rand_bit_1), .B(n9), .ZN(x_subscript0_share1) );
  XNOR2_X1 U26 ( .A(\rand_composable_bit[4] ), .B(\input_share1[4] ), .ZN(n9)
         );
  XNOR2_X1 U27 ( .A(rand_bit_4), .B(n7), .ZN(w_subscript0_share1) );
  XNOR2_X1 U28 ( .A(\rand_composable_bit[1] ), .B(\input_share1[1] ), .ZN(n7)
         );
endmodule


module compute_subscript1_opt ( x_subscript0_share1_reg, 
        x_subscript0_share2_reg, y_subscript0_share1_reg, 
        y_subscript0_share2_reg, z_subscript0_share1_reg, 
        z_subscript0_share2_reg, w_subscript0_share1_reg, 
        w_subscript0_share2_reg, xy_subscript0_share1_reg, 
        xy_subscript0_share2_reg, xz_subscript0_share1_reg, 
        xz_subscript0_share2_reg, xw_subscript0_share1_reg, 
        xw_subscript0_share2_reg, yz_subscript0_share1_reg, 
        yz_subscript0_share2_reg, yw_subscript0_share1_reg, 
        yw_subscript0_share2_reg, zw_subscript0_share1_reg, 
        zw_subscript0_share2_reg, xyz_subscript0_share1_reg, 
        xyz_subscript0_share2_reg, xyw_subscript0_share1_reg, 
        xyw_subscript0_share2_reg, xzw_subscript0_share1_reg, 
        xzw_subscript0_share2_reg, yzw_subscript0_share1_reg, 
        yzw_subscript0_share2_reg, x_share2_reg, y_share2_reg, z_share2_reg, 
        w_share2_reg, sbox_out1_share1, sbox_out2_share1, sbox_out3_share1, 
        sbox_out4_share1, sbox_out1_share2, sbox_out2_share2, sbox_out3_share2, 
        sbox_out4_share2 );
  input x_subscript0_share1_reg, x_subscript0_share2_reg,
         y_subscript0_share1_reg, y_subscript0_share2_reg,
         z_subscript0_share1_reg, z_subscript0_share2_reg,
         w_subscript0_share1_reg, w_subscript0_share2_reg,
         xy_subscript0_share1_reg, xy_subscript0_share2_reg,
         xz_subscript0_share1_reg, xz_subscript0_share2_reg,
         xw_subscript0_share1_reg, xw_subscript0_share2_reg,
         yz_subscript0_share1_reg, yz_subscript0_share2_reg,
         yw_subscript0_share1_reg, yw_subscript0_share2_reg,
         zw_subscript0_share1_reg, zw_subscript0_share2_reg,
         xyz_subscript0_share1_reg, xyz_subscript0_share2_reg,
         xyw_subscript0_share1_reg, xyw_subscript0_share2_reg,
         xzw_subscript0_share1_reg, xzw_subscript0_share2_reg,
         yzw_subscript0_share1_reg, yzw_subscript0_share2_reg, x_share2_reg,
         y_share2_reg, z_share2_reg, w_share2_reg;
  output sbox_out1_share1, sbox_out2_share1, sbox_out3_share1,
         sbox_out4_share1, sbox_out1_share2, sbox_out2_share2,
         sbox_out3_share2, sbox_out4_share2;
  wire   n1, n2, n3, n4, n5, n6, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n7, n8, n9, n10, n181;

  INV_X1 U1 ( .A(n54), .ZN(n1) );
  INV_X1 U2 ( .A(n100), .ZN(n2) );
  INV_X1 U3 ( .A(z_subscript0_share1_reg), .ZN(n3) );
  INV_X1 U4 ( .A(z_subscript0_share2_reg), .ZN(n4) );
  INV_X1 U5 ( .A(w_subscript0_share1_reg), .ZN(n5) );
  INV_X1 U6 ( .A(w_subscript0_share2_reg), .ZN(n6) );
  XOR2_X1 U11 ( .A(n11), .B(n12), .Z(sbox_out4_share2) );
  XOR2_X1 U12 ( .A(n13), .B(n14), .Z(n12) );
  XOR2_X1 U13 ( .A(n15), .B(n16), .Z(n14) );
  NOR2_X1 U14 ( .A1(n6), .A2(n17), .ZN(n16) );
  OR2_X1 U15 ( .A1(n17), .A2(n7), .ZN(n15) );
  XOR2_X1 U16 ( .A(n18), .B(n19), .Z(n13) );
  XOR2_X1 U17 ( .A(n20), .B(n21), .Z(n19) );
  XOR2_X1 U18 ( .A(z_subscript0_share2_reg), .B(z_share2_reg), .Z(n20) );
  XOR2_X1 U19 ( .A(n22), .B(n23), .Z(n18) );
  XOR2_X1 U20 ( .A(n24), .B(n25), .Z(n22) );
  XOR2_X1 U21 ( .A(n26), .B(n27), .Z(n11) );
  XOR2_X1 U22 ( .A(n28), .B(n29), .Z(n27) );
  AND2_X1 U23 ( .A1(y_share2_reg), .A2(xw_subscript0_share2_reg), .ZN(n29) );
  NAND2_X1 U24 ( .A1(yw_subscript0_share2_reg), .A2(x_share2_reg), .ZN(n28) );
  XOR2_X1 U25 ( .A(n30), .B(xyw_subscript0_share2_reg), .Z(n26) );
  NAND2_X1 U26 ( .A1(w_share2_reg), .A2(n31), .ZN(n30) );
  XOR2_X1 U27 ( .A(n32), .B(n33), .Z(sbox_out4_share1) );
  XOR2_X1 U28 ( .A(n34), .B(n35), .Z(n33) );
  XOR2_X1 U29 ( .A(n36), .B(n37), .Z(n35) );
  XOR2_X1 U30 ( .A(n38), .B(n39), .Z(n37) );
  XOR2_X1 U31 ( .A(n40), .B(n41), .Z(n39) );
  NOR2_X1 U32 ( .A1(n17), .A2(n5), .ZN(n41) );
  NAND2_X1 U33 ( .A1(yw_subscript0_share1_reg), .A2(x_share2_reg), .ZN(n40) );
  XOR2_X1 U34 ( .A(n3), .B(x_subscript0_share1_reg), .Z(n38) );
  XOR2_X1 U35 ( .A(n42), .B(n43), .Z(n36) );
  XOR2_X1 U36 ( .A(n44), .B(n45), .Z(n43) );
  NAND2_X1 U37 ( .A1(xw_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n34) );
  XOR2_X1 U38 ( .A(n46), .B(xyw_subscript0_share1_reg), .Z(n32) );
  NAND2_X1 U39 ( .A1(w_share2_reg), .A2(n44), .ZN(n46) );
  XOR2_X1 U40 ( .A(n47), .B(n48), .Z(sbox_out3_share2) );
  XOR2_X1 U41 ( .A(n49), .B(n50), .Z(n47) );
  XOR2_X1 U42 ( .A(n51), .B(n52), .Z(n50) );
  XOR2_X1 U43 ( .A(n1), .B(n53), .Z(n52) );
  XOR2_X1 U44 ( .A(n55), .B(n25), .Z(n51) );
  XNOR2_X1 U45 ( .A(n56), .B(n57), .ZN(n25) );
  XOR2_X1 U46 ( .A(n58), .B(n59), .Z(n57) );
  XOR2_X1 U47 ( .A(n60), .B(xzw_subscript0_share2_reg), .Z(n59) );
  NAND2_X1 U48 ( .A1(w_share2_reg), .A2(n61), .ZN(n60) );
  NAND2_X1 U49 ( .A1(n9), .A2(xw_subscript0_share2_reg), .ZN(n58) );
  XOR2_X1 U50 ( .A(n62), .B(n63), .Z(n56) );
  NOR2_X1 U51 ( .A1(n7), .A2(n64), .ZN(n63) );
  XOR2_X1 U52 ( .A(n65), .B(n66), .Z(n62) );
  NOR2_X1 U53 ( .A1(n6), .A2(n64), .ZN(n66) );
  NAND2_X1 U54 ( .A1(zw_subscript0_share2_reg), .A2(x_share2_reg), .ZN(n65) );
  XOR2_X1 U55 ( .A(n67), .B(n21), .Z(n49) );
  XOR2_X1 U56 ( .A(n6), .B(w_share2_reg), .Z(n67) );
  XOR2_X1 U57 ( .A(n68), .B(n69), .Z(sbox_out3_share1) );
  XOR2_X1 U58 ( .A(n70), .B(n71), .Z(n69) );
  XNOR2_X1 U59 ( .A(n72), .B(n73), .ZN(n70) );
  XOR2_X1 U60 ( .A(n74), .B(n75), .Z(n68) );
  XOR2_X1 U61 ( .A(x_subscript0_share1_reg), .B(w_subscript0_share1_reg), 
        .Z(n75) );
  XNOR2_X1 U62 ( .A(n76), .B(n45), .ZN(n74) );
  XNOR2_X1 U63 ( .A(n77), .B(n78), .ZN(n45) );
  XOR2_X1 U64 ( .A(n79), .B(n80), .Z(n78) );
  XOR2_X1 U65 ( .A(n81), .B(xzw_subscript0_share1_reg), .Z(n80) );
  NAND2_X1 U66 ( .A1(w_share2_reg), .A2(n76), .ZN(n81) );
  NAND2_X1 U67 ( .A1(xw_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n79) );
  XOR2_X1 U68 ( .A(n82), .B(n83), .Z(n77) );
  NOR2_X1 U69 ( .A1(n64), .A2(n5), .ZN(n83) );
  NAND2_X1 U70 ( .A1(zw_subscript0_share1_reg), .A2(x_share2_reg), .ZN(n82) );
  XOR2_X1 U71 ( .A(n84), .B(n85), .Z(sbox_out2_share2) );
  XOR2_X1 U72 ( .A(n23), .B(n86), .Z(n85) );
  XOR2_X1 U73 ( .A(n53), .B(n48), .Z(n86) );
  XNOR2_X1 U74 ( .A(n87), .B(n88), .ZN(n48) );
  XOR2_X1 U75 ( .A(n89), .B(n90), .Z(n88) );
  XOR2_X1 U76 ( .A(n91), .B(xyz_subscript0_share2_reg), .Z(n90) );
  NAND2_X1 U77 ( .A1(z_share2_reg), .A2(n31), .ZN(n91) );
  NAND2_X1 U78 ( .A1(xz_subscript0_share2_reg), .A2(y_share2_reg), .ZN(n89) );
  XOR2_X1 U79 ( .A(n92), .B(n93), .Z(n87) );
  NOR2_X1 U80 ( .A1(n8), .A2(n17), .ZN(n93) );
  XOR2_X1 U81 ( .A(n94), .B(n95), .Z(n92) );
  NOR2_X1 U82 ( .A1(n4), .A2(n17), .ZN(n95) );
  NAND2_X1 U83 ( .A1(yz_subscript0_share2_reg), .A2(x_share2_reg), .ZN(n94) );
  XNOR2_X1 U84 ( .A(n64), .B(n61), .ZN(n53) );
  XNOR2_X1 U85 ( .A(n96), .B(n97), .ZN(n61) );
  NOR2_X1 U86 ( .A1(n181), .A2(n4), .ZN(n97) );
  XOR2_X1 U87 ( .A(n98), .B(xz_subscript0_share2_reg), .Z(n96) );
  NAND2_X1 U88 ( .A1(n9), .A2(x_subscript0_share2_reg), .ZN(n98) );
  NAND2_X1 U89 ( .A1(n9), .A2(x_share2_reg), .ZN(n64) );
  XOR2_X1 U90 ( .A(n2), .B(n99), .Z(n23) );
  XOR2_X1 U91 ( .A(n101), .B(n102), .Z(n84) );
  XOR2_X1 U92 ( .A(n103), .B(n104), .Z(n102) );
  NAND2_X1 U93 ( .A1(w_share2_reg), .A2(y_share2_reg), .ZN(n104) );
  NAND2_X1 U94 ( .A1(w_subscript0_share2_reg), .A2(y_share2_reg), .ZN(n103) );
  XNOR2_X1 U95 ( .A(yw_subscript0_share2_reg), .B(n105), .ZN(n101) );
  NAND2_X1 U96 ( .A1(w_share2_reg), .A2(y_subscript0_share2_reg), .ZN(n105) );
  XOR2_X1 U97 ( .A(n106), .B(n107), .Z(sbox_out2_share1) );
  XOR2_X1 U98 ( .A(n108), .B(n109), .Z(n107) );
  XOR2_X1 U99 ( .A(n110), .B(n76), .Z(n109) );
  XNOR2_X1 U100 ( .A(n111), .B(n112), .ZN(n76) );
  NOR2_X1 U101 ( .A1(n181), .A2(n3), .ZN(n112) );
  XOR2_X1 U102 ( .A(n113), .B(xz_subscript0_share1_reg), .Z(n111) );
  NAND2_X1 U103 ( .A1(x_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n113)
         );
  NOR2_X1 U104 ( .A1(n10), .A2(n5), .ZN(n110) );
  XNOR2_X1 U105 ( .A(yw_subscript0_share1_reg), .B(n114), .ZN(n108) );
  NAND2_X1 U106 ( .A1(y_subscript0_share1_reg), .A2(w_share2_reg), .ZN(n114)
         );
  XOR2_X1 U107 ( .A(n42), .B(n72), .Z(n106) );
  XNOR2_X1 U108 ( .A(n115), .B(n116), .ZN(n72) );
  XOR2_X1 U109 ( .A(n117), .B(n118), .Z(n116) );
  NOR2_X1 U110 ( .A1(n17), .A2(n3), .ZN(n118) );
  AND2_X1 U111 ( .A1(x_share2_reg), .A2(yz_subscript0_share1_reg), .ZN(n117)
         );
  XOR2_X1 U112 ( .A(n119), .B(n120), .Z(n115) );
  AND2_X1 U113 ( .A1(y_share2_reg), .A2(xz_subscript0_share1_reg), .ZN(n120)
         );
  XOR2_X1 U114 ( .A(n121), .B(xyz_subscript0_share1_reg), .Z(n119) );
  NAND2_X1 U115 ( .A1(n9), .A2(n44), .ZN(n121) );
  XOR2_X1 U116 ( .A(n122), .B(n123), .Z(n42) );
  XOR2_X1 U117 ( .A(n24), .B(n124), .Z(sbox_out1_share2) );
  XOR2_X1 U118 ( .A(n125), .B(n126), .Z(n124) );
  XOR2_X1 U119 ( .A(n127), .B(n21), .Z(n126) );
  XOR2_X1 U120 ( .A(x_subscript0_share2_reg), .B(x_share2_reg), .Z(n21) );
  XOR2_X1 U121 ( .A(y_subscript0_share2_reg), .B(y_share2_reg), .Z(n127) );
  XOR2_X1 U122 ( .A(n128), .B(n129), .Z(n125) );
  XOR2_X1 U123 ( .A(n55), .B(n54), .Z(n129) );
  XOR2_X1 U124 ( .A(n130), .B(n131), .Z(n54) );
  XOR2_X1 U125 ( .A(n132), .B(n133), .Z(n131) );
  NAND2_X1 U126 ( .A1(w_share2_reg), .A2(x_share2_reg), .ZN(n133) );
  NAND2_X1 U127 ( .A1(w_subscript0_share2_reg), .A2(x_share2_reg), .ZN(n132)
         );
  XOR2_X1 U128 ( .A(n134), .B(xw_subscript0_share2_reg), .Z(n130) );
  NAND2_X1 U129 ( .A1(w_share2_reg), .A2(x_subscript0_share2_reg), .ZN(n134)
         );
  XOR2_X1 U130 ( .A(n135), .B(n136), .Z(n55) );
  XOR2_X1 U131 ( .A(n137), .B(n138), .Z(n136) );
  NAND2_X1 U132 ( .A1(z_share2_reg), .A2(w_share2_reg), .ZN(n138) );
  NAND2_X1 U133 ( .A1(w_subscript0_share2_reg), .A2(n9), .ZN(n137) );
  XOR2_X1 U134 ( .A(n139), .B(zw_subscript0_share2_reg), .Z(n135) );
  NAND2_X1 U135 ( .A1(z_subscript0_share2_reg), .A2(w_share2_reg), .ZN(n139)
         );
  XOR2_X1 U136 ( .A(n100), .B(n99), .Z(n128) );
  XNOR2_X1 U137 ( .A(n140), .B(n141), .ZN(n99) );
  XOR2_X1 U138 ( .A(n142), .B(n143), .Z(n141) );
  XOR2_X1 U139 ( .A(n144), .B(yzw_subscript0_share2_reg), .Z(n143) );
  NAND2_X1 U140 ( .A1(w_share2_reg), .A2(n145), .ZN(n144) );
  NAND2_X1 U141 ( .A1(n9), .A2(yw_subscript0_share2_reg), .ZN(n142) );
  XOR2_X1 U142 ( .A(n146), .B(n147), .Z(n140) );
  NOR2_X1 U143 ( .A1(n7), .A2(n148), .ZN(n147) );
  XOR2_X1 U144 ( .A(n149), .B(n150), .Z(n146) );
  NOR2_X1 U145 ( .A1(n148), .A2(n6), .ZN(n150) );
  NAND2_X1 U146 ( .A1(zw_subscript0_share2_reg), .A2(y_share2_reg), .ZN(n149)
         );
  XOR2_X1 U147 ( .A(n148), .B(n145), .Z(n100) );
  XNOR2_X1 U148 ( .A(n151), .B(n152), .ZN(n145) );
  NOR2_X1 U149 ( .A1(n10), .A2(n4), .ZN(n152) );
  XOR2_X1 U150 ( .A(n153), .B(yz_subscript0_share2_reg), .Z(n151) );
  NAND2_X1 U151 ( .A1(n9), .A2(y_subscript0_share2_reg), .ZN(n153) );
  XOR2_X1 U152 ( .A(n17), .B(n31), .Z(n24) );
  XNOR2_X1 U153 ( .A(n154), .B(n155), .ZN(n31) );
  AND2_X1 U154 ( .A1(x_share2_reg), .A2(y_subscript0_share2_reg), .ZN(n155) );
  XOR2_X1 U155 ( .A(n156), .B(xy_subscript0_share2_reg), .Z(n154) );
  NAND2_X1 U156 ( .A1(y_share2_reg), .A2(x_subscript0_share2_reg), .ZN(n156)
         );
  NAND2_X1 U157 ( .A1(y_share2_reg), .A2(x_share2_reg), .ZN(n17) );
  XOR2_X1 U158 ( .A(n157), .B(n158), .Z(sbox_out1_share1) );
  XOR2_X1 U159 ( .A(n159), .B(n160), .Z(n158) );
  XOR2_X1 U160 ( .A(n44), .B(n123), .Z(n160) );
  XNOR2_X1 U161 ( .A(n161), .B(n162), .ZN(n44) );
  AND2_X1 U162 ( .A1(x_share2_reg), .A2(y_subscript0_share1_reg), .ZN(n162) );
  XOR2_X1 U163 ( .A(n163), .B(xy_subscript0_share1_reg), .Z(n161) );
  NAND2_X1 U164 ( .A1(x_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n163)
         );
  XOR2_X1 U165 ( .A(y_subscript0_share1_reg), .B(x_subscript0_share1_reg), 
        .Z(n159) );
  XOR2_X1 U166 ( .A(n164), .B(n71), .Z(n157) );
  XNOR2_X1 U167 ( .A(n165), .B(n166), .ZN(n71) );
  NOR2_X1 U168 ( .A1(n181), .A2(n5), .ZN(n166) );
  XOR2_X1 U169 ( .A(n167), .B(xw_subscript0_share1_reg), .Z(n165) );
  NAND2_X1 U170 ( .A1(x_subscript0_share1_reg), .A2(w_share2_reg), .ZN(n167)
         );
  XOR2_X1 U171 ( .A(n122), .B(n73), .Z(n164) );
  XNOR2_X1 U172 ( .A(n168), .B(n169), .ZN(n73) );
  NOR2_X1 U173 ( .A1(n8), .A2(n5), .ZN(n169) );
  XOR2_X1 U174 ( .A(n170), .B(zw_subscript0_share1_reg), .Z(n168) );
  NAND2_X1 U175 ( .A1(z_subscript0_share1_reg), .A2(w_share2_reg), .ZN(n170)
         );
  XOR2_X1 U176 ( .A(n171), .B(n172), .Z(n122) );
  XOR2_X1 U177 ( .A(n173), .B(n174), .Z(n172) );
  NOR2_X1 U178 ( .A1(n148), .A2(n5), .ZN(n174) );
  NAND2_X1 U179 ( .A1(n9), .A2(y_share2_reg), .ZN(n148) );
  AND2_X1 U180 ( .A1(y_share2_reg), .A2(zw_subscript0_share1_reg), .ZN(n173)
         );
  XOR2_X1 U181 ( .A(n175), .B(n176), .Z(n171) );
  AND2_X1 U182 ( .A1(z_share2_reg), .A2(yw_subscript0_share1_reg), .ZN(n176)
         );
  XOR2_X1 U183 ( .A(n177), .B(yzw_subscript0_share1_reg), .Z(n175) );
  NAND2_X1 U184 ( .A1(w_share2_reg), .A2(n123), .ZN(n177) );
  XNOR2_X1 U185 ( .A(n178), .B(n179), .ZN(n123) );
  NOR2_X1 U186 ( .A1(n10), .A2(n3), .ZN(n179) );
  XOR2_X1 U187 ( .A(n180), .B(yz_subscript0_share1_reg), .Z(n178) );
  NAND2_X1 U188 ( .A1(y_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n180)
         );
  INV_X1 U7 ( .A(w_share2_reg), .ZN(n7) );
  INV_X1 U8 ( .A(z_share2_reg), .ZN(n8) );
  INV_X1 U9 ( .A(n8), .ZN(n9) );
  INV_X1 U10 ( .A(y_share2_reg), .ZN(n10) );
  INV_X1 U189 ( .A(x_share2_reg), .ZN(n181) );
endmodule


module PRINCE_sbox_opt ( clk, \PRNG_rand_output[18] , \PRNG_rand_output[17] , 
        \PRNG_rand_output[16] , \PRNG_rand_output[15] , \PRNG_rand_output[14] , 
        \PRNG_rand_output[13] , \PRNG_rand_output[12] , \PRNG_rand_output[11] , 
        \PRNG_rand_output[10] , \PRNG_rand_output[9] , \PRNG_rand_output[8] , 
        \PRNG_rand_output[7] , \PRNG_rand_output[6] , \PRNG_rand_output[5] , 
        \PRNG_rand_output[4] , \PRNG_rand_output[3] , \PRNG_rand_output[2] , 
        \PRNG_rand_output[1] , \sbox_input_MUX_share1[3] , 
        \sbox_input_MUX_share1[2] , \sbox_input_MUX_share1[1] , 
        \sbox_input_MUX_share1[0] , \sbox_input_MUX_share2[3] , 
        \sbox_input_MUX_share2[2] , \sbox_input_MUX_share2[1] , 
        \sbox_input_MUX_share2[0] , \output_share1[3] , \output_share1[2] , 
        \output_share1[1] , \output_share1[0] , \output_share2[3] , 
        \output_share2[2] , \output_share2[1] , \output_share2[0]  );
        
  (* SILVER="clock" *)   input  clk ;
  (* SILVER="refresh" *) input  \PRNG_rand_output[18] , \PRNG_rand_output[17] ,
         \PRNG_rand_output[16] , \PRNG_rand_output[15] ,
         \PRNG_rand_output[14] , \PRNG_rand_output[13] ,
         \PRNG_rand_output[12] , \PRNG_rand_output[11] ,
         \PRNG_rand_output[10] , \PRNG_rand_output[9] , \PRNG_rand_output[8] ,
         \PRNG_rand_output[7] , \PRNG_rand_output[6] , \PRNG_rand_output[5] ,
         \PRNG_rand_output[4] , \PRNG_rand_output[3] , \PRNG_rand_output[2] ,
         \PRNG_rand_output[1] ;

  (* SILVER="3_0" *)input  \sbox_input_MUX_share1[3] ;
  (* SILVER="2_0" *)input  \sbox_input_MUX_share1[2] ; 
  (* SILVER="1_0" *)input  \sbox_input_MUX_share1[1] ;
  (* SILVER="0_0" *)input  \sbox_input_MUX_share1[0] ; 
  (* SILVER="3_1" *)input  \sbox_input_MUX_share2[3] ;
  (* SILVER="2_1" *)input  \sbox_input_MUX_share2[2] ;
  (* SILVER="1_1" *)input  \sbox_input_MUX_share2[1] ;
  (* SILVER="0_1" *)input  \sbox_input_MUX_share2[0] ;


  (* SILVER="3_0" *)output  \output_share1[3] ;
  (* SILVER="2_0" *)output  \output_share1[2] ; 
  (* SILVER="1_0" *)output  \output_share1[1] ;
  (* SILVER="0_0" *)output  \output_share1[0] ; 
  (* SILVER="3_1" *)output  \output_share2[3] ;
  (* SILVER="2_1" *)output  \output_share2[2] ;
  (* SILVER="1_1" *)output  \output_share2[1] ;
  (* SILVER="0_1" *)output  \output_share2[0] ;

  wire   x_subscript0_0_share1, x_subscript0_0_share2, y_subscript0_0_share1,
         y_subscript0_0_share2, z_subscript0_0_share1, z_subscript0_0_share2,
         w_subscript0_0_share1, w_subscript0_0_share2, xy_subscript0_0_share1,
         xy_subscript0_0_share2, xz_subscript0_0_share1,
         xz_subscript0_0_share2, xw_subscript0_0_share1,
         xw_subscript0_0_share2, yz_subscript0_0_share1,
         yz_subscript0_0_share2, yw_subscript0_0_share1,
         yw_subscript0_0_share2, zw_subscript0_0_share1,
         zw_subscript0_0_share2, xyz_subscript0_0_share1,
         xyz_subscript0_0_share2, xyw_subscript0_0_share1,
         xyw_subscript0_0_share2, xzw_subscript0_0_share1,
         xzw_subscript0_0_share2, yzw_subscript0_0_share1,
         yzw_subscript0_0_share2, x_subscript0_0_share1_reg,
         x_subscript0_0_share2_reg, y_subscript0_0_share1_reg,
         y_subscript0_0_share2_reg, z_subscript0_0_share1_reg,
         z_subscript0_0_share2_reg, w_subscript0_0_share1_reg,
         w_subscript0_0_share2_reg, xy_subscript0_0_share1_reg,
         xy_subscript0_0_share2_reg, xz_subscript0_0_share1_reg,
         xz_subscript0_0_share2_reg, xw_subscript0_0_share1_reg,
         xw_subscript0_0_share2_reg, yz_subscript0_0_share1_reg,
         yz_subscript0_0_share2_reg, yw_subscript0_0_share1_reg,
         yw_subscript0_0_share2_reg, zw_subscript0_0_share1_reg,
         zw_subscript0_0_share2_reg, xyz_subscript0_0_share1_reg,
         xyz_subscript0_0_share2_reg, xyw_subscript0_0_share1_reg,
         xyw_subscript0_0_share2_reg, xzw_subscript0_0_share1_reg,
         xzw_subscript0_0_share2_reg, yzw_subscript0_0_share1_reg,
         yzw_subscript0_0_share2_reg, x_0_share2_reg, y_0_share2_reg,
         z_0_share2_reg, w_0_share2_reg, x_0_share2_wire, y_0_share2_wire,
         z_0_share2_wire, w_0_share2_wire;

  compute_subscript0 compute_subscript0_instance_0 ( 
        .\input_share1[4] (\sbox_input_MUX_share1[3] ), 
        .\input_share1[3] (\sbox_input_MUX_share1[2] ), 
        .\input_share1[2] (\sbox_input_MUX_share1[1] ), 
        .\input_share1[1] (\sbox_input_MUX_share1[0] ), 
        .\rand_bit[14] (\PRNG_rand_output[14] ), 
        .\rand_bit[13] (\PRNG_rand_output[13] ), 
        .\rand_bit[12] (\PRNG_rand_output[12] ), 
        .\rand_bit[11] (\PRNG_rand_output[11] ), 
        .\rand_bit[10] (\PRNG_rand_output[10] ), 
        .\rand_bit[9] (\PRNG_rand_output[9] ), 
        .\rand_bit[8] (\PRNG_rand_output[8] ), 
        .\rand_bit[7] (\PRNG_rand_output[7] ), 
        .\rand_bit[6] (\PRNG_rand_output[6] ), 
        .\rand_bit[5] (\PRNG_rand_output[5] ), 
        .\rand_bit[4] (\PRNG_rand_output[4] ), 
        .\rand_bit[3] (\PRNG_rand_output[3] ), 
        .\rand_bit[2] (\PRNG_rand_output[2] ), 
        .\rand_bit[1] (\PRNG_rand_output[1] ), 
        .\rand_composable_bit[4] (\PRNG_rand_output[18] ), 
        .\rand_composable_bit[3] (\PRNG_rand_output[17] ), 
        .\rand_composable_bit[2] (\PRNG_rand_output[16] ), 
        .\rand_composable_bit[1] (\PRNG_rand_output[15] ), 
        .x_subscript0_share1(x_subscript0_0_share1), 
        .x_subscript0_share2(x_subscript0_0_share2), 
        .y_subscript0_share1(y_subscript0_0_share1), 
        .y_subscript0_share2(y_subscript0_0_share2), 
        .z_subscript0_share1(z_subscript0_0_share1), 
        .z_subscript0_share2(z_subscript0_0_share2), 
        .w_subscript0_share1(w_subscript0_0_share1), 
        .w_subscript0_share2(w_subscript0_0_share2), 
        .xy_subscript0_share1(xy_subscript0_0_share1), 
        .xy_subscript0_share2(xy_subscript0_0_share2), 
        .xz_subscript0_share1(xz_subscript0_0_share1), 
        .xz_subscript0_share2(xz_subscript0_0_share2), 
        .xw_subscript0_share1(xw_subscript0_0_share1), 
        .xw_subscript0_share2(xw_subscript0_0_share2), 
        .yz_subscript0_share1(yz_subscript0_0_share1), 
        .yz_subscript0_share2(yz_subscript0_0_share2), 
        .yw_subscript0_share1(yw_subscript0_0_share1), 
        .yw_subscript0_share2(yw_subscript0_0_share2), 
        .zw_subscript0_share1(zw_subscript0_0_share1), 
        .zw_subscript0_share2(zw_subscript0_0_share2), 
        .xyz_subscript0_share1(xyz_subscript0_0_share1), 
        .xyz_subscript0_share2(xyz_subscript0_0_share2), 
        .xyw_subscript0_share1(xyw_subscript0_0_share1), 
        .xyw_subscript0_share2(xyw_subscript0_0_share2), 
        .xzw_subscript0_share1(xzw_subscript0_0_share1), 
        .xzw_subscript0_share2(xzw_subscript0_0_share2), 
        .yzw_subscript0_share1(yzw_subscript0_0_share1), 
        .yzw_subscript0_share2(yzw_subscript0_0_share2) );
  compute_subscript1_opt compute_subscript1_instance_0 ( 
        .x_subscript0_share1_reg(x_subscript0_0_share1_reg), 
        .x_subscript0_share2_reg(x_subscript0_0_share2_reg), 
        .y_subscript0_share1_reg(y_subscript0_0_share1_reg), 
        .y_subscript0_share2_reg(y_subscript0_0_share2_reg), 
        .z_subscript0_share1_reg(z_subscript0_0_share1_reg), 
        .z_subscript0_share2_reg(z_subscript0_0_share2_reg), 
        .w_subscript0_share1_reg(w_subscript0_0_share1_reg), 
        .w_subscript0_share2_reg(w_subscript0_0_share2_reg), 
        .xy_subscript0_share1_reg(xy_subscript0_0_share1_reg), 
        .xy_subscript0_share2_reg(xy_subscript0_0_share2_reg), 
        .xz_subscript0_share1_reg(xz_subscript0_0_share1_reg), 
        .xz_subscript0_share2_reg(xz_subscript0_0_share2_reg), 
        .xw_subscript0_share1_reg(xw_subscript0_0_share1_reg), 
        .xw_subscript0_share2_reg(xw_subscript0_0_share2_reg), 
        .yz_subscript0_share1_reg(yz_subscript0_0_share1_reg), 
        .yz_subscript0_share2_reg(yz_subscript0_0_share2_reg), 
        .yw_subscript0_share1_reg(yw_subscript0_0_share1_reg), 
        .yw_subscript0_share2_reg(yw_subscript0_0_share2_reg), 
        .zw_subscript0_share1_reg(zw_subscript0_0_share1_reg), 
        .zw_subscript0_share2_reg(zw_subscript0_0_share2_reg), 
        .xyz_subscript0_share1_reg(xyz_subscript0_0_share1_reg), 
        .xyz_subscript0_share2_reg(xyz_subscript0_0_share2_reg), 
        .xyw_subscript0_share1_reg(xyw_subscript0_0_share1_reg), 
        .xyw_subscript0_share2_reg(xyw_subscript0_0_share2_reg), 
        .xzw_subscript0_share1_reg(xzw_subscript0_0_share1_reg), 
        .xzw_subscript0_share2_reg(xzw_subscript0_0_share2_reg), 
        .yzw_subscript0_share1_reg(yzw_subscript0_0_share1_reg), 
        .yzw_subscript0_share2_reg(yzw_subscript0_0_share2_reg), 
        .x_share2_reg(x_0_share2_reg), .y_share2_reg(y_0_share2_reg), 
        .z_share2_reg(z_0_share2_reg), .w_share2_reg(w_0_share2_reg), 
        .sbox_out1_share1(\output_share1[0] ), 
        .sbox_out2_share1(\output_share1[1] ), 
        .sbox_out3_share1(\output_share1[2] ), 
        .sbox_out4_share1(\output_share1[3] ), 
        .sbox_out1_share2(\output_share2[0] ), 
        .sbox_out2_share2(\output_share2[1] ), 
        .sbox_out3_share2(\output_share2[2] ), 
        .sbox_out4_share2(\output_share2[3] ) );
  DFF_X1 x_0_share2_reg_reg ( .D(x_0_share2_wire), .CK(clk), 
        .Q(x_0_share2_reg), .QN() );
  DFF_X1 y_0_share2_reg_reg ( .D(y_0_share2_wire), .CK(clk), 
        .Q(y_0_share2_reg), .QN() );
  DFF_X1 z_0_share2_reg_reg ( .D(z_0_share2_wire), .CK(clk), 
        .Q(z_0_share2_reg), .QN() );
  DFF_X1 w_0_share2_reg_reg ( .D(w_0_share2_wire), .CK(clk), 
        .Q(w_0_share2_reg), .QN() );
  DFF_X1 x_subscript0_0_share1_reg_reg ( .D(x_subscript0_0_share1), .CK(clk), 
        .Q(x_subscript0_0_share1_reg), .QN() );
  DFF_X1 x_subscript0_0_share2_reg_reg ( .D(x_subscript0_0_share2), .CK(clk), 
        .Q(x_subscript0_0_share2_reg), .QN() );
  DFF_X1 y_subscript0_0_share1_reg_reg ( .D(y_subscript0_0_share1), .CK(clk), 
        .Q(y_subscript0_0_share1_reg), .QN() );
  DFF_X1 y_subscript0_0_share2_reg_reg ( .D(y_subscript0_0_share2), .CK(clk), 
        .Q(y_subscript0_0_share2_reg), .QN() );
  DFF_X1 z_subscript0_0_share1_reg_reg ( .D(z_subscript0_0_share1), .CK(clk), 
        .Q(z_subscript0_0_share1_reg), .QN() );
  DFF_X1 z_subscript0_0_share2_reg_reg ( .D(z_subscript0_0_share2), .CK(clk), 
        .Q(z_subscript0_0_share2_reg), .QN() );
  DFF_X1 w_subscript0_0_share1_reg_reg ( .D(w_subscript0_0_share1), .CK(clk), 
        .Q(w_subscript0_0_share1_reg), .QN() );
  DFF_X1 w_subscript0_0_share2_reg_reg ( .D(w_subscript0_0_share2), .CK(clk), 
        .Q(w_subscript0_0_share2_reg), .QN() );
  DFF_X1 xy_subscript0_0_share1_reg_reg ( .D(xy_subscript0_0_share1), .CK(clk), 
        .Q(xy_subscript0_0_share1_reg), .QN() );
  DFF_X1 xy_subscript0_0_share2_reg_reg ( .D(xy_subscript0_0_share2), .CK(clk), 
        .Q(xy_subscript0_0_share2_reg), .QN() );
  DFF_X1 xz_subscript0_0_share1_reg_reg ( .D(xz_subscript0_0_share1), .CK(clk), 
        .Q(xz_subscript0_0_share1_reg), .QN() );
  DFF_X1 xz_subscript0_0_share2_reg_reg ( .D(xz_subscript0_0_share2), .CK(clk), 
        .Q(xz_subscript0_0_share2_reg), .QN() );
  DFF_X1 xw_subscript0_0_share1_reg_reg ( .D(xw_subscript0_0_share1), .CK(clk), 
        .Q(xw_subscript0_0_share1_reg), .QN() );
  DFF_X1 xw_subscript0_0_share2_reg_reg ( .D(xw_subscript0_0_share2), .CK(clk), 
        .Q(xw_subscript0_0_share2_reg), .QN() );
  DFF_X1 yz_subscript0_0_share1_reg_reg ( .D(yz_subscript0_0_share1), .CK(clk), 
        .Q(yz_subscript0_0_share1_reg), .QN() );
  DFF_X1 yz_subscript0_0_share2_reg_reg ( .D(yz_subscript0_0_share2), .CK(clk), 
        .Q(yz_subscript0_0_share2_reg), .QN() );
  DFF_X1 yw_subscript0_0_share1_reg_reg ( .D(yw_subscript0_0_share1), .CK(clk), 
        .Q(yw_subscript0_0_share1_reg), .QN() );
  DFF_X1 yw_subscript0_0_share2_reg_reg ( .D(yw_subscript0_0_share2), .CK(clk), 
        .Q(yw_subscript0_0_share2_reg), .QN() );
  DFF_X1 zw_subscript0_0_share1_reg_reg ( .D(zw_subscript0_0_share1), .CK(clk), 
        .Q(zw_subscript0_0_share1_reg), .QN() );
  DFF_X1 zw_subscript0_0_share2_reg_reg ( .D(zw_subscript0_0_share2), .CK(clk), 
        .Q(zw_subscript0_0_share2_reg), .QN() );
  DFF_X1 xyz_subscript0_0_share1_reg_reg ( .D(xyz_subscript0_0_share1), 
        .CK(clk), .Q(xyz_subscript0_0_share1_reg), .QN() );
  DFF_X1 xyz_subscript0_0_share2_reg_reg ( .D(xyz_subscript0_0_share2), 
        .CK(clk), .Q(xyz_subscript0_0_share2_reg), .QN() );
  DFF_X1 xyw_subscript0_0_share1_reg_reg ( .D(xyw_subscript0_0_share1), 
        .CK(clk), .Q(xyw_subscript0_0_share1_reg), .QN() );
  DFF_X1 xyw_subscript0_0_share2_reg_reg ( .D(xyw_subscript0_0_share2), 
        .CK(clk), .Q(xyw_subscript0_0_share2_reg), .QN() );
  DFF_X1 xzw_subscript0_0_share1_reg_reg ( .D(xzw_subscript0_0_share1), 
        .CK(clk), .Q(xzw_subscript0_0_share1_reg), .QN() );
  DFF_X1 xzw_subscript0_0_share2_reg_reg ( .D(xzw_subscript0_0_share2), 
        .CK(clk), .Q(xzw_subscript0_0_share2_reg), .QN() );
  DFF_X1 yzw_subscript0_0_share1_reg_reg ( .D(yzw_subscript0_0_share1), 
        .CK(clk), .Q(yzw_subscript0_0_share1_reg), .QN() );
  DFF_X1 yzw_subscript0_0_share2_reg_reg ( .D(yzw_subscript0_0_share2), 
        .CK(clk), .Q(yzw_subscript0_0_share2_reg), .QN() );
  XOR2_X1 U3 ( .A(\sbox_input_MUX_share2[1] ), .B(\PRNG_rand_output[16] ), 
        .Z(z_0_share2_wire) );
  XOR2_X1 U4 ( .A(\sbox_input_MUX_share2[2] ), .B(\PRNG_rand_output[17] ), 
        .Z(y_0_share2_wire) );
  XOR2_X1 U5 ( .A(\sbox_input_MUX_share2[3] ), .B(\PRNG_rand_output[18] ), 
        .Z(x_0_share2_wire) );
  XOR2_X1 U6 ( .A(\sbox_input_MUX_share2[0] ), .B(\PRNG_rand_output[15] ), 
        .Z(w_0_share2_wire) );
endmodule

