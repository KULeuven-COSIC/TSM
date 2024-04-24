/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP3
// Date      : Mon Apr 22 23:14:30 2024
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
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134;

  INV_X1 U1 ( .A(z_share2_reg), .ZN(n50) );
  INV_X1 U2 ( .A(y_share2_reg), .ZN(n78) );
  INV_X1 U3 ( .A(n78), .ZN(n122) );
  NAND2_X1 U4 ( .A1(x_subscript0_share1_reg), .A2(n122), .ZN(n3) );
  INV_X1 U5 ( .A(x_share2_reg), .ZN(n1) );
  INV_X1 U6 ( .A(n1), .ZN(n91) );
  NAND2_X1 U7 ( .A1(y_subscript0_share1_reg), .A2(n91), .ZN(n2) );
  XOR2_X1 U8 ( .A(n3), .B(n2), .Z(n4) );
  XNOR2_X1 U9 ( .A(xy_subscript0_share1_reg), .B(n4), .ZN(n121) );
  NOR2_X1 U10 ( .A1(n50), .A2(n121), .ZN(n14) );
  NAND2_X1 U11 ( .A1(x_share2_reg), .A2(z_subscript0_share1_reg), .ZN(n6) );
  NAND2_X1 U12 ( .A1(x_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n5) );
  XNOR2_X1 U13 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U14 ( .A(xz_subscript0_share1_reg), .B(n7), .ZN(n104) );
  NAND2_X1 U15 ( .A1(xz_subscript0_share1_reg), .A2(n122), .ZN(n8) );
  XOR2_X1 U16 ( .A(xyz_subscript0_share1_reg), .B(n8), .Z(n11) );
  NAND2_X1 U17 ( .A1(z_subscript0_share1_reg), .A2(n122), .ZN(n9) );
  XNOR2_X1 U18 ( .A(yz_subscript0_share1_reg), .B(n9), .ZN(n20) );
  NAND2_X1 U19 ( .A1(n20), .A2(n91), .ZN(n10) );
  XOR2_X1 U20 ( .A(n11), .B(n10), .Z(n12) );
  XNOR2_X1 U21 ( .A(n104), .B(n12), .ZN(n13) );
  XNOR2_X1 U22 ( .A(n14), .B(n13), .ZN(n116) );
  NAND2_X1 U23 ( .A1(w_subscript0_share1_reg), .A2(y_share2_reg), .ZN(n15) );
  XNOR2_X1 U24 ( .A(yw_subscript0_share1_reg), .B(n15), .ZN(n123) );
  INV_X1 U25 ( .A(n50), .ZN(n100) );
  NAND2_X1 U26 ( .A1(w_subscript0_share1_reg), .A2(n100), .ZN(n16) );
  XNOR2_X1 U27 ( .A(zw_subscript0_share1_reg), .B(n16), .ZN(n111) );
  NAND2_X1 U28 ( .A1(n111), .A2(y_share2_reg), .ZN(n18) );
  NAND2_X1 U29 ( .A1(yw_subscript0_share1_reg), .A2(z_share2_reg), .ZN(n17) );
  XOR2_X1 U30 ( .A(n18), .B(n17), .Z(n24) );
  NAND2_X1 U31 ( .A1(n100), .A2(y_subscript0_share1_reg), .ZN(n19) );
  XOR2_X1 U32 ( .A(n20), .B(n19), .Z(n21) );
  NOR2_X1 U33 ( .A1(w_share2_reg), .A2(n21), .ZN(n22) );
  XNOR2_X1 U34 ( .A(n22), .B(yzw_subscript0_share1_reg), .ZN(n23) );
  XNOR2_X1 U35 ( .A(n24), .B(n23), .ZN(n130) );
  XOR2_X1 U36 ( .A(n123), .B(n130), .Z(n26) );
  NAND2_X1 U37 ( .A1(y_subscript0_share1_reg), .A2(w_share2_reg), .ZN(n25) );
  XNOR2_X1 U38 ( .A(n26), .B(n25), .ZN(n27) );
  XNOR2_X1 U39 ( .A(n116), .B(n27), .ZN(sbox_out2_share1) );
  NAND2_X1 U40 ( .A1(z_subscript0_share2_reg), .A2(n91), .ZN(n29) );
  NAND2_X1 U41 ( .A1(x_subscript0_share2_reg), .A2(n100), .ZN(n28) );
  XNOR2_X1 U42 ( .A(n29), .B(n28), .ZN(n30) );
  XNOR2_X1 U43 ( .A(xz_subscript0_share2_reg), .B(n30), .ZN(n61) );
  XNOR2_X1 U44 ( .A(n50), .B(yz_subscript0_share2_reg), .ZN(n31) );
  NAND2_X1 U45 ( .A1(n31), .A2(n91), .ZN(n36) );
  XNOR2_X1 U46 ( .A(n50), .B(z_subscript0_share2_reg), .ZN(n81) );
  NAND2_X1 U47 ( .A1(x_share2_reg), .A2(n81), .ZN(n32) );
  XNOR2_X1 U48 ( .A(xz_subscript0_share2_reg), .B(n32), .ZN(n33) );
  NAND2_X1 U49 ( .A1(n33), .A2(y_share2_reg), .ZN(n34) );
  XNOR2_X1 U50 ( .A(n34), .B(xyz_subscript0_share2_reg), .ZN(n35) );
  XNOR2_X1 U51 ( .A(n36), .B(n35), .ZN(n37) );
  XOR2_X1 U52 ( .A(n61), .B(n37), .Z(n42) );
  NAND2_X1 U53 ( .A1(y_share2_reg), .A2(x_subscript0_share2_reg), .ZN(n39) );
  NAND2_X1 U54 ( .A1(y_subscript0_share2_reg), .A2(n91), .ZN(n38) );
  XNOR2_X1 U55 ( .A(n39), .B(n38), .ZN(n40) );
  XNOR2_X1 U56 ( .A(xy_subscript0_share2_reg), .B(n40), .ZN(n95) );
  NAND2_X1 U57 ( .A1(n95), .A2(n100), .ZN(n41) );
  XNOR2_X1 U58 ( .A(n42), .B(n41), .ZN(n68) );
  NAND2_X1 U59 ( .A1(y_share2_reg), .A2(z_subscript0_share2_reg), .ZN(n44) );
  NAND2_X1 U60 ( .A1(y_subscript0_share2_reg), .A2(z_share2_reg), .ZN(n43) );
  XOR2_X1 U61 ( .A(n44), .B(n43), .Z(n45) );
  XNOR2_X1 U62 ( .A(n45), .B(yz_subscript0_share2_reg), .ZN(n46) );
  NOR2_X1 U63 ( .A1(w_share2_reg), .A2(n46), .ZN(n47) );
  XOR2_X1 U64 ( .A(n47), .B(yzw_subscript0_share2_reg), .Z(n49) );
  NAND2_X1 U65 ( .A1(yw_subscript0_share2_reg), .A2(z_share2_reg), .ZN(n48) );
  XNOR2_X1 U66 ( .A(n49), .B(n48), .ZN(n54) );
  INV_X1 U67 ( .A(w_share2_reg), .ZN(n107) );
  XNOR2_X1 U68 ( .A(n107), .B(w_subscript0_share2_reg), .ZN(n77) );
  NOR2_X1 U69 ( .A1(n77), .A2(n50), .ZN(n51) );
  XOR2_X1 U70 ( .A(zw_subscript0_share2_reg), .B(n51), .Z(n52) );
  NAND2_X1 U71 ( .A1(n52), .A2(n122), .ZN(n53) );
  XNOR2_X1 U72 ( .A(n54), .B(n53), .ZN(n94) );
  XOR2_X1 U73 ( .A(yw_subscript0_share2_reg), .B(n94), .Z(n56) );
  NAND2_X1 U74 ( .A1(y_subscript0_share2_reg), .A2(w_share2_reg), .ZN(n55) );
  XNOR2_X1 U75 ( .A(n56), .B(n55), .ZN(n57) );
  XOR2_X1 U76 ( .A(n68), .B(n57), .Z(n59) );
  NAND2_X1 U77 ( .A1(n122), .A2(n77), .ZN(n58) );
  XNOR2_X1 U78 ( .A(n59), .B(n58), .ZN(sbox_out2_share2) );
  NAND2_X1 U79 ( .A1(xw_subscript0_share2_reg), .A2(n100), .ZN(n60) );
  XNOR2_X1 U80 ( .A(xzw_subscript0_share2_reg), .B(n60), .ZN(n63) );
  NAND2_X1 U81 ( .A1(n61), .A2(w_share2_reg), .ZN(n62) );
  XNOR2_X1 U82 ( .A(n63), .B(n62), .ZN(n64) );
  XOR2_X1 U83 ( .A(x_subscript0_share2_reg), .B(n64), .Z(n67) );
  NAND2_X1 U84 ( .A1(n77), .A2(n100), .ZN(n65) );
  XOR2_X1 U85 ( .A(zw_subscript0_share2_reg), .B(n65), .Z(n69) );
  NAND2_X1 U86 ( .A1(n91), .A2(n69), .ZN(n66) );
  XNOR2_X1 U87 ( .A(n67), .B(n66), .ZN(n84) );
  XOR2_X1 U88 ( .A(n68), .B(n84), .Z(n76) );
  XNOR2_X1 U89 ( .A(xw_subscript0_share2_reg), .B(n69), .ZN(n72) );
  XOR2_X1 U90 ( .A(x_subscript0_share2_reg), .B(z_subscript0_share2_reg), 
        .Z(n70) );
  NAND2_X1 U91 ( .A1(n70), .A2(w_share2_reg), .ZN(n71) );
  XNOR2_X1 U92 ( .A(n72), .B(n71), .ZN(n74) );
  NAND2_X1 U93 ( .A1(x_share2_reg), .A2(n77), .ZN(n73) );
  XNOR2_X1 U94 ( .A(n74), .B(n73), .ZN(n97) );
  XNOR2_X1 U95 ( .A(n77), .B(n97), .ZN(n75) );
  XNOR2_X1 U96 ( .A(n76), .B(n75), .ZN(sbox_out3_share2) );
  NOR2_X1 U97 ( .A1(n78), .A2(n77), .ZN(n79) );
  XOR2_X1 U98 ( .A(yw_subscript0_share2_reg), .B(n79), .Z(n80) );
  NAND2_X1 U99 ( .A1(x_share2_reg), .A2(n80), .ZN(n90) );
  XOR2_X1 U100 ( .A(n81), .B(xyw_subscript0_share2_reg), .Z(n83) );
  NAND2_X1 U101 ( .A1(y_share2_reg), .A2(xw_subscript0_share2_reg), .ZN(n82)
         );
  XNOR2_X1 U102 ( .A(n83), .B(n82), .ZN(n88) );
  XOR2_X1 U103 ( .A(n84), .B(n94), .Z(n86) );
  NAND2_X1 U104 ( .A1(n95), .A2(n107), .ZN(n85) );
  XNOR2_X1 U105 ( .A(n86), .B(n85), .ZN(n87) );
  XOR2_X1 U106 ( .A(n88), .B(n87), .Z(n89) );
  XNOR2_X1 U107 ( .A(n90), .B(n89), .ZN(sbox_out4_share2) );
  NOR2_X1 U108 ( .A1(n91), .A2(n122), .ZN(n93) );
  XOR2_X1 U109 ( .A(x_subscript0_share2_reg), .B(y_subscript0_share2_reg), 
        .Z(n92) );
  XNOR2_X1 U110 ( .A(n93), .B(n92), .ZN(n99) );
  XOR2_X1 U111 ( .A(n95), .B(n94), .Z(n96) );
  XNOR2_X1 U112 ( .A(n97), .B(n96), .ZN(n98) );
  XNOR2_X1 U113 ( .A(n99), .B(n98), .ZN(sbox_out1_share2) );
  NAND2_X1 U114 ( .A1(n111), .A2(x_share2_reg), .ZN(n102) );
  NAND2_X1 U115 ( .A1(xw_subscript0_share1_reg), .A2(n100), .ZN(n101) );
  XOR2_X1 U116 ( .A(n102), .B(n101), .Z(n103) );
  XOR2_X1 U117 ( .A(xzw_subscript0_share1_reg), .B(n103), .Z(n106) );
  NAND2_X1 U118 ( .A1(n104), .A2(w_share2_reg), .ZN(n105) );
  XNOR2_X1 U119 ( .A(n106), .B(n105), .ZN(n134) );
  NAND2_X1 U120 ( .A1(x_subscript0_share1_reg), .A2(n107), .ZN(n109) );
  NAND2_X1 U121 ( .A1(z_subscript0_share1_reg), .A2(w_share2_reg), .ZN(n108)
         );
  NAND2_X1 U122 ( .A1(n109), .A2(n108), .ZN(n110) );
  XNOR2_X1 U123 ( .A(n111), .B(n110), .ZN(n112) );
  XOR2_X1 U124 ( .A(xw_subscript0_share1_reg), .B(n112), .Z(n114) );
  NAND2_X1 U125 ( .A1(w_subscript0_share1_reg), .A2(x_share2_reg), .ZN(n113)
         );
  XNOR2_X1 U126 ( .A(n114), .B(n113), .ZN(n120) );
  XNOR2_X1 U127 ( .A(n134), .B(n120), .ZN(n115) );
  XNOR2_X1 U128 ( .A(n116), .B(n115), .ZN(n117) );
  XNOR2_X1 U129 ( .A(w_subscript0_share1_reg), .B(n117), .ZN(sbox_out3_share1)
         );
  XNOR2_X1 U130 ( .A(y_subscript0_share1_reg), .B(n130), .ZN(n118) );
  XNOR2_X1 U131 ( .A(n121), .B(n118), .ZN(n119) );
  XNOR2_X1 U132 ( .A(n120), .B(n119), .ZN(sbox_out1_share1) );
  NOR2_X1 U133 ( .A1(w_share2_reg), .A2(n121), .ZN(n132) );
  NAND2_X1 U134 ( .A1(xw_subscript0_share1_reg), .A2(n122), .ZN(n125) );
  NAND2_X1 U135 ( .A1(n123), .A2(x_share2_reg), .ZN(n124) );
  XOR2_X1 U136 ( .A(n125), .B(n124), .Z(n126) );
  XOR2_X1 U137 ( .A(n126), .B(xyw_subscript0_share1_reg), .Z(n128) );
  XNOR2_X1 U138 ( .A(z_subscript0_share1_reg), .B(x_subscript0_share1_reg), 
        .ZN(n127) );
  XNOR2_X1 U139 ( .A(n128), .B(n127), .ZN(n129) );
  XNOR2_X1 U140 ( .A(n130), .B(n129), .ZN(n131) );
  XNOR2_X1 U141 ( .A(n132), .B(n131), .ZN(n133) );
  XNOR2_X1 U142 ( .A(n134), .B(n133), .ZN(sbox_out4_share1) );
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

  wire   output_share1_3, output_share1_2, output_share1_1, output_share1_0,
         output_share2_3, output_share2_2, output_share2_1, output_share2_0,
         x_subscript0_0_share1_reg, x_subscript0_0_share2_reg,
         y_subscript0_0_share1_reg, y_subscript0_0_share2_reg,
         z_subscript0_0_share1_reg, z_subscript0_0_share2_reg,
         w_subscript0_0_share1_reg, w_subscript0_0_share2_reg,
         xy_subscript0_0_share1_reg, xy_subscript0_0_share2_reg,
         xz_subscript0_0_share1_reg, xz_subscript0_0_share2_reg,
         xw_subscript0_0_share1_reg, xw_subscript0_0_share2_reg,
         yz_subscript0_0_share1_reg, yz_subscript0_0_share2_reg,
         yw_subscript0_0_share1_reg, yw_subscript0_0_share2_reg,
         zw_subscript0_0_share1_reg, zw_subscript0_0_share2_reg,
         xyz_subscript0_0_share1_reg, xyz_subscript0_0_share2_reg,
         xyw_subscript0_0_share1_reg, xyw_subscript0_0_share2_reg,
         xzw_subscript0_0_share1_reg, xzw_subscript0_0_share2_reg,
         yzw_subscript0_0_share1_reg, yzw_subscript0_0_share2_reg,
         x_0_share2_reg, y_0_share2_reg, z_0_share2_reg, w_0_share2_reg, n1,
         n2, n3, n4, n5, n6, n7, n8;
  assign \output_share2[3]  = n1;
  assign \output_share2[2]  = n2;
  assign \output_share2[1]  = n3;
  assign \output_share2[0]  = n4;
  assign \output_share1[3]  = n5;
  assign \output_share1[2]  = n6;
  assign \output_share1[1]  = n7;
  assign \output_share1[0]  = n8;

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
        .x_subscript0_share1(x_subscript0_0_share1_reg), 
        .x_subscript0_share2(x_subscript0_0_share2_reg), 
        .y_subscript0_share1(y_subscript0_0_share1_reg), 
        .y_subscript0_share2(y_subscript0_0_share2_reg), 
        .z_subscript0_share1(z_subscript0_0_share1_reg), 
        .z_subscript0_share2(z_subscript0_0_share2_reg), 
        .w_subscript0_share1(w_subscript0_0_share1_reg), 
        .w_subscript0_share2(w_subscript0_0_share2_reg), 
        .xy_subscript0_share1(xy_subscript0_0_share1_reg), 
        .xy_subscript0_share2(xy_subscript0_0_share2_reg), 
        .xz_subscript0_share1(xz_subscript0_0_share1_reg), 
        .xz_subscript0_share2(xz_subscript0_0_share2_reg), 
        .xw_subscript0_share1(xw_subscript0_0_share1_reg), 
        .xw_subscript0_share2(xw_subscript0_0_share2_reg), 
        .yz_subscript0_share1(yz_subscript0_0_share1_reg), 
        .yz_subscript0_share2(yz_subscript0_0_share2_reg), 
        .yw_subscript0_share1(yw_subscript0_0_share1_reg), 
        .yw_subscript0_share2(yw_subscript0_0_share2_reg), 
        .zw_subscript0_share1(zw_subscript0_0_share1_reg), 
        .zw_subscript0_share2(zw_subscript0_0_share2_reg), 
        .xyz_subscript0_share1(xyz_subscript0_0_share1_reg), 
        .xyz_subscript0_share2(xyz_subscript0_0_share2_reg), 
        .xyw_subscript0_share1(xyw_subscript0_0_share1_reg), 
        .xyw_subscript0_share2(xyw_subscript0_0_share2_reg), 
        .xzw_subscript0_share1(xzw_subscript0_0_share1_reg), 
        .xzw_subscript0_share2(xzw_subscript0_0_share2_reg), 
        .yzw_subscript0_share1(yzw_subscript0_0_share1_reg), 
        .yzw_subscript0_share2(yzw_subscript0_0_share2_reg) );
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
        .sbox_out1_share1(output_share1_0), .sbox_out2_share1(output_share1_1), 
        .sbox_out3_share1(output_share1_2), .sbox_out4_share1(output_share1_3), 
        .sbox_out1_share2(output_share2_0), .sbox_out2_share2(output_share2_1), 
        .sbox_out3_share2(output_share2_2), .sbox_out4_share2(output_share2_3)
         );
  XOR2_X1 U3 ( .A(\sbox_input_MUX_share2[0] ), .B(\PRNG_rand_output[15] ), 
        .Z(w_0_share2_reg) );
  XOR2_X1 U4 ( .A(\sbox_input_MUX_share2[1] ), .B(\PRNG_rand_output[16] ), 
        .Z(z_0_share2_reg) );
  XOR2_X1 U5 ( .A(\sbox_input_MUX_share2[2] ), .B(\PRNG_rand_output[17] ), 
        .Z(y_0_share2_reg) );
  XOR2_X1 U6 ( .A(\sbox_input_MUX_share2[3] ), .B(\PRNG_rand_output[18] ), 
        .Z(x_0_share2_reg) );
  DFF_X1 clk_r_REG1_S1 ( .D(output_share1_0), .CK(clk), .Q(n8), .QN() );
  DFF_X1 clk_r_REG7_S1 ( .D(output_share1_1), .CK(clk), .Q(n7), .QN() );
  DFF_X1 clk_r_REG2_S1 ( .D(output_share1_2), .CK(clk), .Q(n6), .QN() );
  DFF_X1 clk_r_REG0_S1 ( .D(output_share1_3), .CK(clk), .Q(n5), .QN() );
  DFF_X1 clk_r_REG3_S1 ( .D(output_share2_0), .CK(clk), .Q(n4), .QN() );
  DFF_X1 clk_r_REG6_S1 ( .D(output_share2_1), .CK(clk), .Q(n3), .QN() );
  DFF_X1 clk_r_REG5_S1 ( .D(output_share2_2), .CK(clk), .Q(n2), .QN() );
  DFF_X1 clk_r_REG4_S1 ( .D(output_share2_3), .CK(clk), .Q(n1), .QN() );
endmodule

