`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 03/17/2023
// Design Name: Compute Subscript1
// Module Name: fourinput_compute_subscript1
// Description: Computes the second phase of HO_TSM1.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////


module fourinput_compute_subscript1(
    x_subscript0_share1_reg, x_subscript0_share2_reg, y_subscript0_share1_reg, y_subscript0_share2_reg, z_subscript0_share1_reg, z_subscript0_share2_reg, w_subscript0_share1_reg, w_subscript0_share2_reg, xy_subscript0_share1_reg, xy_subscript0_share2_reg, xz_subscript0_share1_reg, xz_subscript0_share2_reg, xw_subscript0_share1_reg, xw_subscript0_share2_reg, yz_subscript0_share1_reg, yz_subscript0_share2_reg, yw_subscript0_share1_reg, yw_subscript0_share2_reg, zw_subscript0_share1_reg, zw_subscript0_share2_reg, xyz_subscript0_share1_reg, xyz_subscript0_share2_reg, xyw_subscript0_share1_reg, xyw_subscript0_share2_reg, xzw_subscript0_share1_reg, xzw_subscript0_share2_reg, yzw_subscript0_share1_reg, yzw_subscript0_share2_reg,  xyzw_subscript0_share1_reg, xyzw_subscript0_share2_reg,
    x_share2_reg, y_share2_reg,  z_share2_reg,  w_share2_reg, 
    output_x_share1_reg, output_y_share1_reg, output_z_share1_reg, output_w_share1_reg, xy_share1_reg, xz_share1_reg, xw_share1_reg, yz_share1_reg, yw_share1_reg, zw_share1_reg, xyz_share1_reg, xyw_share1_reg, xzw_share1_reg, yzw_share1_reg, xyzw_share1_reg ,
    output_x_share2_reg, output_y_share2_reg, output_z_share2_reg, output_w_share2_reg, xy_share2_reg, xz_share2_reg, xw_share2_reg, yz_share2_reg, yw_share2_reg, zw_share2_reg, xyz_share2_reg, xyw_share2_reg, xzw_share2_reg, yzw_share2_reg, xyzw_share2_reg 
    );

input x_subscript0_share1_reg, x_subscript0_share2_reg, y_subscript0_share1_reg, y_subscript0_share2_reg, z_subscript0_share1_reg, z_subscript0_share2_reg, w_subscript0_share1_reg, w_subscript0_share2_reg, xy_subscript0_share1_reg, xy_subscript0_share2_reg, xz_subscript0_share1_reg, xz_subscript0_share2_reg, xw_subscript0_share1_reg, xw_subscript0_share2_reg, yz_subscript0_share1_reg, yz_subscript0_share2_reg, yw_subscript0_share1_reg, yw_subscript0_share2_reg, zw_subscript0_share1_reg, zw_subscript0_share2_reg, xyz_subscript0_share1_reg, xyz_subscript0_share2_reg, xyw_subscript0_share1_reg, xyw_subscript0_share2_reg, xzw_subscript0_share1_reg, xzw_subscript0_share2_reg, yzw_subscript0_share1_reg, yzw_subscript0_share2_reg , xyzw_subscript0_share1_reg, xyzw_subscript0_share2_reg ;
input x_share2_reg, y_share2_reg,  z_share2_reg,  w_share2_reg ; 

output output_x_share1_reg, output_y_share1_reg, output_z_share1_reg, output_w_share1_reg, xy_share1_reg, xz_share1_reg, xw_share1_reg, yz_share1_reg, yw_share1_reg, zw_share1_reg, xyz_share1_reg, xyw_share1_reg, xzw_share1_reg, yzw_share1_reg, xyzw_share1_reg ;
output output_x_share2_reg, output_y_share2_reg, output_z_share2_reg, output_w_share2_reg, xy_share2_reg, xz_share2_reg, xw_share2_reg, yz_share2_reg, yw_share2_reg, zw_share2_reg, xyz_share2_reg, xyw_share2_reg, xzw_share2_reg, yzw_share2_reg, xyzw_share2_reg ;


assign output_x_share1_reg = x_subscript0_share1_reg;
assign output_x_share2_reg = x_subscript0_share2_reg ^ x_share2_reg;

assign output_y_share1_reg = y_subscript0_share1_reg;
assign output_y_share2_reg = y_subscript0_share2_reg ^ y_share2_reg;

assign output_z_share1_reg = z_subscript0_share1_reg;
assign output_z_share2_reg = z_subscript0_share2_reg ^ z_share2_reg;

assign output_w_share1_reg = w_subscript0_share1_reg;
assign output_w_share2_reg = w_subscript0_share2_reg ^ w_share2_reg;


wire xy_share1_reg_int;
assign xy_share1_reg_int = xy_subscript0_share1_reg  ^ x_subscript0_share1_reg & y_share2_reg  ^ y_subscript0_share1_reg & x_share2_reg  ;
wire xy_share2_reg_int;
assign xy_share2_reg_int = xy_subscript0_share2_reg  ^ x_subscript0_share2_reg & y_share2_reg  ^ y_subscript0_share2_reg & x_share2_reg  ;


wire xz_share1_reg_int;
assign xz_share1_reg_int = xz_subscript0_share1_reg  ^ x_subscript0_share1_reg & z_share2_reg  ^ z_subscript0_share1_reg & x_share2_reg  ;
wire xz_share2_reg_int;
assign xz_share2_reg_int = xz_subscript0_share2_reg  ^ x_subscript0_share2_reg & z_share2_reg  ^ z_subscript0_share2_reg & x_share2_reg  ;


wire xw_share1_reg_int;
assign xw_share1_reg_int = xw_subscript0_share1_reg  ^ x_subscript0_share1_reg & w_share2_reg  ^ w_subscript0_share1_reg & x_share2_reg  ;
wire xw_share2_reg_int;
assign xw_share2_reg_int = xw_subscript0_share2_reg  ^ x_subscript0_share2_reg & w_share2_reg  ^ w_subscript0_share2_reg & x_share2_reg  ;


wire yz_share1_reg_int;
assign yz_share1_reg_int = yz_subscript0_share1_reg  ^ y_subscript0_share1_reg & z_share2_reg  ^ z_subscript0_share1_reg & y_share2_reg  ;
wire yz_share2_reg_int;
assign yz_share2_reg_int = yz_subscript0_share2_reg  ^ y_subscript0_share2_reg & z_share2_reg  ^ z_subscript0_share2_reg & y_share2_reg  ;


wire yw_share1_reg_int;
assign yw_share1_reg_int = yw_subscript0_share1_reg  ^ y_subscript0_share1_reg & w_share2_reg  ^ w_subscript0_share1_reg & y_share2_reg  ;
wire yw_share2_reg_int;
assign yw_share2_reg_int = yw_subscript0_share2_reg  ^ y_subscript0_share2_reg & w_share2_reg  ^ w_subscript0_share2_reg & y_share2_reg  ;


wire zw_share1_reg_int;
assign zw_share1_reg_int = zw_subscript0_share1_reg  ^ z_subscript0_share1_reg & w_share2_reg  ^ w_subscript0_share1_reg & z_share2_reg  ;
wire zw_share2_reg_int;
assign zw_share2_reg_int = zw_subscript0_share2_reg  ^ z_subscript0_share2_reg & w_share2_reg  ^ w_subscript0_share2_reg & z_share2_reg  ;








assign xy_share1_reg = xy_share1_reg_int  ;
assign xy_share2_reg = xy_share2_reg_int  ^ x_share2_reg & y_share2_reg  ;


assign xz_share1_reg = xz_share1_reg_int  ;
assign xz_share2_reg = xz_share2_reg_int  ^ x_share2_reg & z_share2_reg  ;


assign xw_share1_reg = xw_share1_reg_int  ;
assign xw_share2_reg = xw_share2_reg_int  ^ x_share2_reg & w_share2_reg  ;


assign yz_share1_reg = yz_share1_reg_int  ;
assign yz_share2_reg = yz_share2_reg_int  ^ y_share2_reg & z_share2_reg  ;


assign yw_share1_reg = yw_share1_reg_int  ;
assign yw_share2_reg = yw_share2_reg_int  ^ y_share2_reg & w_share2_reg  ;


assign zw_share1_reg = zw_share1_reg_int  ;
assign zw_share2_reg = zw_share2_reg_int  ^ z_share2_reg & w_share2_reg  ;











wire xzw_share1_reg_int;
assign xzw_share1_reg_int = xz_share1_reg_int & w_share2_reg ^ xzw_subscript0_share1_reg    ^ xw_subscript0_share1_reg & z_share2_reg    ^ zw_subscript0_share1_reg & x_share2_reg    ^ w_subscript0_share1_reg & x_share2_reg & z_share2_reg  ;
wire xzw_share2_reg_int;
assign xzw_share2_reg_int = xz_share2_reg_int & w_share2_reg ^ xzw_subscript0_share2_reg    ^ xw_subscript0_share2_reg & z_share2_reg    ^ zw_subscript0_share2_reg & x_share2_reg    ^ w_subscript0_share2_reg & x_share2_reg & z_share2_reg ;


wire yzw_share1_reg_int;
assign yzw_share1_reg_int = yz_share1_reg_int & w_share2_reg ^ yzw_subscript0_share1_reg    ^ yw_subscript0_share1_reg & z_share2_reg    ^ zw_subscript0_share1_reg & y_share2_reg    ^ w_subscript0_share1_reg & y_share2_reg & z_share2_reg  ;
wire yzw_share2_reg_int;
assign yzw_share2_reg_int = yz_share2_reg_int & w_share2_reg ^ yzw_subscript0_share2_reg    ^ yw_subscript0_share2_reg & z_share2_reg    ^ zw_subscript0_share2_reg & y_share2_reg    ^ w_subscript0_share2_reg & y_share2_reg & z_share2_reg  ;



assign xzw_share1_reg =  xzw_share1_reg_int ;
assign xzw_share2_reg =  xzw_share2_reg_int ^ x_share2_reg & z_share2_reg & w_share2_reg  ;

assign yzw_share1_reg = yzw_share1_reg_int ;
assign yzw_share2_reg = yzw_share2_reg_int ^ y_share2_reg & z_share2_reg & w_share2_reg  ;


assign xyz_share1_reg = xy_share1_reg_int & z_share2_reg ^ xyz_subscript0_share1_reg  ^ xz_subscript0_share1_reg & y_share2_reg    ^ yz_subscript0_share1_reg & x_share2_reg  ^  z_subscript0_share1_reg & x_share2_reg & y_share2_reg  ;
assign xyz_share2_reg = xy_share2_reg_int & z_share2_reg ^ xyz_subscript0_share2_reg  ^ xz_subscript0_share2_reg & y_share2_reg    ^ yz_subscript0_share2_reg & x_share2_reg  ^  z_subscript0_share2_reg & x_share2_reg & y_share2_reg  ^ x_share2_reg & y_share2_reg & z_share2_reg  ;


assign xyw_share1_reg = xy_share1_reg_int & w_share2_reg ^ xyw_subscript0_share1_reg    ^ xw_subscript0_share1_reg & y_share2_reg    ^ yw_subscript0_share1_reg & x_share2_reg    ^ w_subscript0_share1_reg & x_share2_reg & y_share2_reg  ;
assign xyw_share2_reg = xy_share2_reg_int & w_share2_reg ^ xyw_subscript0_share2_reg    ^ xw_subscript0_share2_reg & y_share2_reg    ^ yw_subscript0_share2_reg & x_share2_reg    ^ w_subscript0_share2_reg & x_share2_reg & y_share2_reg  ^ x_share2_reg & y_share2_reg & w_share2_reg  ;





wire xyzw_share1_reg_int, xyzw_share2_reg_int;


assign xyzw_share1_reg_int =      x_share2_reg & yzw_share1_reg_int ^    y_share2_reg & xzw_share1_reg_int ^    x_share2_reg  & y_share2_reg  & zw_share1_reg_int ^     z_share2_reg  & xyw_subscript0_share1_reg ^ w_share2_reg  & xyz_subscript0_share1_reg ^    z_share2_reg  & w_share2_reg  & xy_subscript0_share1_reg ^ xyzw_subscript0_share1_reg ;
assign xyzw_share2_reg_int =      x_share2_reg & yzw_share2_reg_int ^    y_share2_reg & xzw_share2_reg_int ^    x_share2_reg  & y_share2_reg  & zw_share2_reg_int ^     z_share2_reg  & xyw_subscript0_share2_reg ^ w_share2_reg  & xyz_subscript0_share2_reg ^    z_share2_reg  & w_share2_reg  & xy_subscript0_share2_reg ^ xyzw_subscript0_share2_reg ;

assign xyzw_share1_reg = xyzw_share1_reg_int ;  
assign xyzw_share2_reg = xyzw_share2_reg_int  ^ x_share2_reg & y_share2_reg & z_share2_reg & w_share2_reg ;  



endmodule
