/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP3
// Date      : Mon Apr 22 23:10:25 2024
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
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
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

  XNOR2_X1 U1 ( .A(\rand_composable_bit[3] ), .B(\input_share1[3] ), .ZN(n13)
         );
  INV_X1 U2 ( .A(n13), .ZN(n3) );
  XOR2_X1 U3 ( .A(\rand_composable_bit[4] ), .B(\input_share1[4] ), .Z(n16) );
  NAND2_X1 U4 ( .A1(n3), .A2(n16), .ZN(n1) );
  XNOR2_X1 U5 ( .A(rand_bit_5), .B(n1), .ZN(xy_subscript0_share1) );
  XNOR2_X1 U6 ( .A(\rand_composable_bit[2] ), .B(\input_share1[2] ), .ZN(n15)
         );
  INV_X1 U7 ( .A(n15), .ZN(n5) );
  NAND2_X1 U8 ( .A1(n5), .A2(n16), .ZN(n2) );
  XNOR2_X1 U9 ( .A(rand_bit_6), .B(n2), .ZN(xz_subscript0_share1) );
  XOR2_X1 U10 ( .A(\rand_composable_bit[1] ), .B(\input_share1[1] ), .Z(n14)
         );
  NAND2_X1 U11 ( .A1(n16), .A2(n14), .ZN(n9) );
  XNOR2_X1 U12 ( .A(rand_bit_7), .B(n9), .ZN(xw_subscript0_share1) );
  NOR2_X1 U13 ( .A1(n15), .A2(n13), .ZN(n11) );
  XOR2_X1 U14 ( .A(n11), .B(rand_bit_8), .Z(yz_subscript0_share1) );
  NAND2_X1 U15 ( .A1(n14), .A2(n3), .ZN(n4) );
  XNOR2_X1 U16 ( .A(rand_bit_9), .B(n4), .ZN(yw_subscript0_share1) );
  NAND2_X1 U17 ( .A1(n14), .A2(n5), .ZN(n6) );
  XNOR2_X1 U18 ( .A(rand_bit_10), .B(n6), .ZN(zw_subscript0_share1) );
  NAND2_X1 U19 ( .A1(n16), .A2(n11), .ZN(n7) );
  XNOR2_X1 U20 ( .A(rand_bit_11), .B(n7), .ZN(xyz_subscript0_share1) );
  NOR2_X1 U21 ( .A1(n13), .A2(n9), .ZN(n8) );
  XOR2_X1 U22 ( .A(rand_bit_12), .B(n8), .Z(xyw_subscript0_share1) );
  NOR2_X1 U23 ( .A1(n15), .A2(n9), .ZN(n10) );
  XOR2_X1 U24 ( .A(rand_bit_13), .B(n10), .Z(xzw_subscript0_share1) );
  NAND2_X1 U25 ( .A1(n14), .A2(n11), .ZN(n12) );
  XNOR2_X1 U26 ( .A(rand_bit_14), .B(n12), .ZN(yzw_subscript0_share1) );
  XNOR2_X1 U27 ( .A(rand_bit_2), .B(n13), .ZN(y_subscript0_share1) );
  XOR2_X1 U28 ( .A(n14), .B(rand_bit_4), .Z(w_subscript0_share1) );
  XNOR2_X1 U29 ( .A(rand_bit_3), .B(n15), .ZN(z_subscript0_share1) );
  XOR2_X1 U30 ( .A(n16), .B(rand_bit_1), .Z(x_subscript0_share1) );
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130;

  INV_X1 U1 ( .A(z_share2_reg), .ZN(n49) );
  NAND2_X1 U2 ( .A1(x_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n2) );
  NAND2_X1 U3 ( .A1(y_subscript0_share1_reg), .A2(x_share2_reg), .ZN(n1) );
  XOR2_X1 U4 ( .A(n2), .B(n1), .Z(n3) );
  XNOR2_X1 U5 ( .A(xy_subscript0_share1_reg), .B(n3), .ZN(n118) );
  NOR2_X1 U6 ( .A1(n49), .A2(n118), .ZN(n13) );
  NAND2_X1 U7 ( .A1(x_share2_reg), .A2(z_subscript0_share1_reg), .ZN(n5) );
  NAND2_X1 U8 ( .A1(x_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n4) );
  XNOR2_X1 U9 ( .A(n5), .B(n4), .ZN(n6) );
  XNOR2_X1 U10 ( .A(xz_subscript0_share1_reg), .B(n6), .ZN(n101) );
  NAND2_X1 U11 ( .A1(xz_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n7) );
  XOR2_X1 U12 ( .A(xyz_subscript0_share1_reg), .B(n7), .Z(n10) );
  NAND2_X1 U13 ( .A1(z_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n8) );
  XNOR2_X1 U14 ( .A(yz_subscript0_share1_reg), .B(n8), .ZN(n19) );
  NAND2_X1 U15 ( .A1(n19), .A2(x_share2_reg), .ZN(n9) );
  XOR2_X1 U16 ( .A(n10), .B(n9), .Z(n11) );
  XNOR2_X1 U17 ( .A(n101), .B(n11), .ZN(n12) );
  XNOR2_X1 U18 ( .A(n13), .B(n12), .ZN(n113) );
  NAND2_X1 U19 ( .A1(w_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n14) );
  XNOR2_X1 U20 ( .A(yw_subscript0_share1_reg), .B(n14), .ZN(n119) );
  NAND2_X1 U21 ( .A1(w_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n15) );
  XNOR2_X1 U22 ( .A(zw_subscript0_share1_reg), .B(n15), .ZN(n108) );
  NAND2_X1 U23 ( .A1(n108), .A2(y_share2_reg), .ZN(n17) );
  NAND2_X1 U24 ( .A1(yw_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n16) );
  XOR2_X1 U25 ( .A(n17), .B(n16), .Z(n23) );
  NAND2_X1 U26 ( .A1(z_share2_reg), .A2(y_subscript0_share1_reg), .ZN(n18) );
  XOR2_X1 U27 ( .A(n19), .B(n18), .Z(n20) );
  NOR2_X1 U28 ( .A1(w_share2_reg), .A2(n20), .ZN(n21) );
  XNOR2_X1 U29 ( .A(n21), .B(yzw_subscript0_share1_reg), .ZN(n22) );
  XNOR2_X1 U30 ( .A(n23), .B(n22), .ZN(n126) );
  XOR2_X1 U31 ( .A(n119), .B(n126), .Z(n25) );
  NAND2_X1 U32 ( .A1(y_subscript0_share1_reg), .A2(w_share2_reg), .ZN(n24) );
  XNOR2_X1 U33 ( .A(n25), .B(n24), .ZN(n26) );
  XNOR2_X1 U34 ( .A(n113), .B(n26), .ZN(sbox_out2_share1) );
  NAND2_X1 U35 ( .A1(z_subscript0_share2_reg), .A2(x_share2_reg), .ZN(n28) );
  NAND2_X1 U36 ( .A1(x_subscript0_share2_reg), .A2(z_share2_reg), .ZN(n27) );
  XNOR2_X1 U37 ( .A(n28), .B(n27), .ZN(n29) );
  XNOR2_X1 U38 ( .A(xz_subscript0_share2_reg), .B(n29), .ZN(n60) );
  XNOR2_X1 U39 ( .A(n49), .B(yz_subscript0_share2_reg), .ZN(n30) );
  NAND2_X1 U40 ( .A1(n30), .A2(x_share2_reg), .ZN(n35) );
  XNOR2_X1 U41 ( .A(n49), .B(z_subscript0_share2_reg), .ZN(n80) );
  NAND2_X1 U42 ( .A1(x_share2_reg), .A2(n80), .ZN(n31) );
  XNOR2_X1 U43 ( .A(xz_subscript0_share2_reg), .B(n31), .ZN(n32) );
  NAND2_X1 U44 ( .A1(n32), .A2(y_share2_reg), .ZN(n33) );
  XNOR2_X1 U45 ( .A(n33), .B(xyz_subscript0_share2_reg), .ZN(n34) );
  XNOR2_X1 U46 ( .A(n35), .B(n34), .ZN(n36) );
  XOR2_X1 U47 ( .A(n60), .B(n36), .Z(n41) );
  NAND2_X1 U48 ( .A1(y_share2_reg), .A2(x_subscript0_share2_reg), .ZN(n38) );
  NAND2_X1 U49 ( .A1(y_subscript0_share2_reg), .A2(x_share2_reg), .ZN(n37) );
  XNOR2_X1 U50 ( .A(n38), .B(n37), .ZN(n39) );
  XNOR2_X1 U51 ( .A(xy_subscript0_share2_reg), .B(n39), .ZN(n93) );
  NAND2_X1 U52 ( .A1(n93), .A2(z_share2_reg), .ZN(n40) );
  XNOR2_X1 U53 ( .A(n41), .B(n40), .ZN(n67) );
  NAND2_X1 U54 ( .A1(y_share2_reg), .A2(z_subscript0_share2_reg), .ZN(n43) );
  NAND2_X1 U55 ( .A1(y_subscript0_share2_reg), .A2(z_share2_reg), .ZN(n42) );
  XOR2_X1 U56 ( .A(n43), .B(n42), .Z(n44) );
  XNOR2_X1 U57 ( .A(n44), .B(yz_subscript0_share2_reg), .ZN(n45) );
  NOR2_X1 U58 ( .A1(w_share2_reg), .A2(n45), .ZN(n46) );
  XOR2_X1 U59 ( .A(n46), .B(yzw_subscript0_share2_reg), .Z(n48) );
  NAND2_X1 U60 ( .A1(yw_subscript0_share2_reg), .A2(z_share2_reg), .ZN(n47) );
  XNOR2_X1 U61 ( .A(n48), .B(n47), .ZN(n53) );
  INV_X1 U62 ( .A(w_share2_reg), .ZN(n104) );
  XNOR2_X1 U63 ( .A(n104), .B(w_subscript0_share2_reg), .ZN(n76) );
  NOR2_X1 U64 ( .A1(n76), .A2(n49), .ZN(n50) );
  XOR2_X1 U65 ( .A(zw_subscript0_share2_reg), .B(n50), .Z(n51) );
  NAND2_X1 U66 ( .A1(n51), .A2(y_share2_reg), .ZN(n52) );
  XNOR2_X1 U67 ( .A(n53), .B(n52), .ZN(n92) );
  XOR2_X1 U68 ( .A(yw_subscript0_share2_reg), .B(n92), .Z(n55) );
  NAND2_X1 U69 ( .A1(y_subscript0_share2_reg), .A2(w_share2_reg), .ZN(n54) );
  XNOR2_X1 U70 ( .A(n55), .B(n54), .ZN(n56) );
  XOR2_X1 U71 ( .A(n67), .B(n56), .Z(n58) );
  NAND2_X1 U72 ( .A1(y_share2_reg), .A2(n76), .ZN(n57) );
  XNOR2_X1 U73 ( .A(n58), .B(n57), .ZN(sbox_out2_share2) );
  NAND2_X1 U74 ( .A1(xw_subscript0_share2_reg), .A2(z_share2_reg), .ZN(n59) );
  XNOR2_X1 U75 ( .A(xzw_subscript0_share2_reg), .B(n59), .ZN(n62) );
  NAND2_X1 U76 ( .A1(n60), .A2(w_share2_reg), .ZN(n61) );
  XNOR2_X1 U77 ( .A(n62), .B(n61), .ZN(n63) );
  XOR2_X1 U78 ( .A(x_subscript0_share2_reg), .B(n63), .Z(n66) );
  NAND2_X1 U79 ( .A1(n76), .A2(z_share2_reg), .ZN(n64) );
  XOR2_X1 U80 ( .A(zw_subscript0_share2_reg), .B(n64), .Z(n68) );
  NAND2_X1 U81 ( .A1(x_share2_reg), .A2(n68), .ZN(n65) );
  XNOR2_X1 U82 ( .A(n66), .B(n65), .ZN(n83) );
  XOR2_X1 U83 ( .A(n67), .B(n83), .Z(n75) );
  XNOR2_X1 U84 ( .A(xw_subscript0_share2_reg), .B(n68), .ZN(n71) );
  XOR2_X1 U85 ( .A(x_subscript0_share2_reg), .B(z_subscript0_share2_reg), 
        .Z(n69) );
  NAND2_X1 U86 ( .A1(n69), .A2(w_share2_reg), .ZN(n70) );
  XNOR2_X1 U87 ( .A(n71), .B(n70), .ZN(n73) );
  NAND2_X1 U88 ( .A1(x_share2_reg), .A2(n76), .ZN(n72) );
  XNOR2_X1 U89 ( .A(n73), .B(n72), .ZN(n95) );
  XNOR2_X1 U90 ( .A(n76), .B(n95), .ZN(n74) );
  XNOR2_X1 U91 ( .A(n75), .B(n74), .ZN(sbox_out3_share2) );
  INV_X1 U92 ( .A(y_share2_reg), .ZN(n77) );
  NOR2_X1 U93 ( .A1(n77), .A2(n76), .ZN(n78) );
  XOR2_X1 U94 ( .A(yw_subscript0_share2_reg), .B(n78), .Z(n79) );
  NAND2_X1 U95 ( .A1(x_share2_reg), .A2(n79), .ZN(n89) );
  XOR2_X1 U96 ( .A(n80), .B(xyw_subscript0_share2_reg), .Z(n82) );
  NAND2_X1 U97 ( .A1(y_share2_reg), .A2(xw_subscript0_share2_reg), .ZN(n81) );
  XNOR2_X1 U98 ( .A(n82), .B(n81), .ZN(n87) );
  XOR2_X1 U99 ( .A(n83), .B(n92), .Z(n85) );
  NAND2_X1 U100 ( .A1(n93), .A2(n104), .ZN(n84) );
  XNOR2_X1 U101 ( .A(n85), .B(n84), .ZN(n86) );
  XOR2_X1 U102 ( .A(n87), .B(n86), .Z(n88) );
  XNOR2_X1 U103 ( .A(n89), .B(n88), .ZN(sbox_out4_share2) );
  NOR2_X1 U104 ( .A1(x_share2_reg), .A2(y_share2_reg), .ZN(n91) );
  XOR2_X1 U105 ( .A(x_subscript0_share2_reg), .B(y_subscript0_share2_reg), 
        .Z(n90) );
  XNOR2_X1 U106 ( .A(n91), .B(n90), .ZN(n97) );
  XOR2_X1 U107 ( .A(n93), .B(n92), .Z(n94) );
  XNOR2_X1 U108 ( .A(n95), .B(n94), .ZN(n96) );
  XNOR2_X1 U109 ( .A(n97), .B(n96), .ZN(sbox_out1_share2) );
  NAND2_X1 U110 ( .A1(n108), .A2(x_share2_reg), .ZN(n99) );
  NAND2_X1 U111 ( .A1(xw_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n98)
         );
  XOR2_X1 U112 ( .A(n99), .B(n98), .Z(n100) );
  XOR2_X1 U113 ( .A(xzw_subscript0_share1_reg), .B(n100), .Z(n103) );
  NAND2_X1 U114 ( .A1(n101), .A2(w_share2_reg), .ZN(n102) );
  XNOR2_X1 U115 ( .A(n103), .B(n102), .ZN(n130) );
  NAND2_X1 U116 ( .A1(x_subscript0_share1_reg), .A2(n104), .ZN(n106) );
  NAND2_X1 U117 ( .A1(z_subscript0_share1_reg), .A2(w_share2_reg), .ZN(n105)
         );
  NAND2_X1 U118 ( .A1(n106), .A2(n105), .ZN(n107) );
  XNOR2_X1 U119 ( .A(n108), .B(n107), .ZN(n109) );
  XOR2_X1 U120 ( .A(xw_subscript0_share1_reg), .B(n109), .Z(n111) );
  NAND2_X1 U121 ( .A1(w_subscript0_share1_reg), .A2(x_share2_reg), .ZN(n110)
         );
  XNOR2_X1 U122 ( .A(n111), .B(n110), .ZN(n117) );
  XNOR2_X1 U123 ( .A(n130), .B(n117), .ZN(n112) );
  XNOR2_X1 U124 ( .A(n113), .B(n112), .ZN(n114) );
  XNOR2_X1 U125 ( .A(w_subscript0_share1_reg), .B(n114), .ZN(sbox_out3_share1)
         );
  XNOR2_X1 U126 ( .A(y_subscript0_share1_reg), .B(n126), .ZN(n115) );
  XNOR2_X1 U127 ( .A(n118), .B(n115), .ZN(n116) );
  XNOR2_X1 U128 ( .A(n117), .B(n116), .ZN(sbox_out1_share1) );
  NOR2_X1 U129 ( .A1(w_share2_reg), .A2(n118), .ZN(n128) );
  NAND2_X1 U130 ( .A1(xw_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n121)
         );
  NAND2_X1 U131 ( .A1(n119), .A2(x_share2_reg), .ZN(n120) );
  XOR2_X1 U132 ( .A(n121), .B(n120), .Z(n122) );
  XOR2_X1 U133 ( .A(n122), .B(xyw_subscript0_share1_reg), .Z(n124) );
  XNOR2_X1 U134 ( .A(z_subscript0_share1_reg), .B(x_subscript0_share1_reg), 
        .ZN(n123) );
  XNOR2_X1 U135 ( .A(n124), .B(n123), .ZN(n125) );
  XNOR2_X1 U136 ( .A(n126), .B(n125), .ZN(n127) );
  XNOR2_X1 U137 ( .A(n128), .B(n127), .ZN(n129) );
  XNOR2_X1 U138 ( .A(n130), .B(n129), .ZN(sbox_out4_share1) );
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
  XOR2_X1 U3 ( .A(\sbox_input_MUX_share2[0] ), .B(\PRNG_rand_output[15] ), 
        .Z(w_0_share2_wire) );
  XOR2_X1 U4 ( .A(\sbox_input_MUX_share2[1] ), .B(\PRNG_rand_output[16] ), 
        .Z(z_0_share2_wire) );
  XOR2_X1 U5 ( .A(\sbox_input_MUX_share2[2] ), .B(\PRNG_rand_output[17] ), 
        .Z(y_0_share2_wire) );
  XOR2_X1 U6 ( .A(\sbox_input_MUX_share2[3] ), .B(\PRNG_rand_output[18] ), 
        .Z(x_0_share2_wire) );
endmodule

