`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper : Time Sharing - A Novel Approach to Low-Latency Masking
// Authors : Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date:    18:52:55 03/17/2023 
// Design Name:    PRINCE S-Box 
// Module Name:    compute_subscript1_opt 
// Description:    Submodule for PRINCE S-Box. This submodule contains the logic of the second cycle. Computing the outputs of PRINCE S-Box. 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module compute_subscript1_opt(
    x_subscript0_share1_reg, x_subscript0_share2_reg, y_subscript0_share1_reg, y_subscript0_share2_reg, z_subscript0_share1_reg, z_subscript0_share2_reg, w_subscript0_share1_reg, w_subscript0_share2_reg, xy_subscript0_share1_reg, xy_subscript0_share2_reg, xz_subscript0_share1_reg, xz_subscript0_share2_reg, xw_subscript0_share1_reg, xw_subscript0_share2_reg, yz_subscript0_share1_reg, yz_subscript0_share2_reg, yw_subscript0_share1_reg, yw_subscript0_share2_reg, zw_subscript0_share1_reg, zw_subscript0_share2_reg, xyz_subscript0_share1_reg, xyz_subscript0_share2_reg, xyw_subscript0_share1_reg, xyw_subscript0_share2_reg, xzw_subscript0_share1_reg, xzw_subscript0_share2_reg, yzw_subscript0_share1_reg, yzw_subscript0_share2_reg,
    x_share2_reg, y_share2_reg,  z_share2_reg,  w_share2_reg, 
    sbox_out1_share1, sbox_out2_share1, sbox_out3_share1, sbox_out4_share1,
    sbox_out1_share2, sbox_out2_share2, sbox_out3_share2, sbox_out4_share2  );

input x_subscript0_share1_reg, x_subscript0_share2_reg, y_subscript0_share1_reg, y_subscript0_share2_reg, z_subscript0_share1_reg, z_subscript0_share2_reg, w_subscript0_share1_reg, w_subscript0_share2_reg, xy_subscript0_share1_reg, xy_subscript0_share2_reg, xz_subscript0_share1_reg, xz_subscript0_share2_reg, xw_subscript0_share1_reg, xw_subscript0_share2_reg, yz_subscript0_share1_reg, yz_subscript0_share2_reg, yw_subscript0_share1_reg, yw_subscript0_share2_reg, zw_subscript0_share1_reg, zw_subscript0_share2_reg, xyz_subscript0_share1_reg, xyz_subscript0_share2_reg, xyw_subscript0_share1_reg, xyw_subscript0_share2_reg, xzw_subscript0_share1_reg, xzw_subscript0_share2_reg, yzw_subscript0_share1_reg, yzw_subscript0_share2_reg;
input x_share2_reg, y_share2_reg,  z_share2_reg,  w_share2_reg ; 
    
output sbox_out1_share1, sbox_out2_share1, sbox_out3_share1, sbox_out4_share1 ;
output sbox_out1_share2, sbox_out2_share2, sbox_out3_share2, sbox_out4_share2 ;


// Step 1 : Compute all degree-2,-3 terms 

// Degree-2 terms : xy, xz, xw, yz, yw, zw

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


wire xy_share1_reg;
assign xy_share1_reg = xy_share1_reg_int  ;
wire xy_share2_reg;
assign xy_share2_reg = xy_share2_reg_int  ^ x_share2_reg & y_share2_reg  ;


wire xz_share1_reg;
assign xz_share1_reg = xz_share1_reg_int  ;
wire xz_share2_reg;
assign xz_share2_reg = xz_share2_reg_int  ^ x_share2_reg & z_share2_reg  ;


wire xw_share1_reg;
assign xw_share1_reg = xw_share1_reg_int  ;
wire xw_share2_reg;
assign xw_share2_reg = xw_share2_reg_int  ^ x_share2_reg & w_share2_reg  ;


wire yz_share1_reg;
assign yz_share1_reg = yz_share1_reg_int  ;
wire yz_share2_reg;
assign yz_share2_reg = yz_share2_reg_int  ^ y_share2_reg & z_share2_reg  ;


wire yw_share1_reg;
assign yw_share1_reg = yw_share1_reg_int  ;
wire yw_share2_reg;
assign yw_share2_reg = yw_share2_reg_int  ^ y_share2_reg & w_share2_reg  ;


wire zw_share1_reg;
assign zw_share1_reg = zw_share1_reg_int  ;
wire zw_share2_reg;
assign zw_share2_reg = zw_share2_reg_int  ^ z_share2_reg & w_share2_reg  ;



// Degree-3 terms : xyz, xyw, xzw, yzw

wire xyz_share1_reg;
assign xyz_share1_reg = xy_share1_reg_int & z_share2_reg ^ xyz_subscript0_share1_reg  ^ xz_subscript0_share1_reg & y_share2_reg    ^ yz_subscript0_share1_reg & x_share2_reg  ^  z_subscript0_share1_reg & x_share2_reg & y_share2_reg  ;
wire xyz_share2_reg;
assign xyz_share2_reg = xy_share2_reg_int & z_share2_reg ^ xyz_subscript0_share2_reg  ^ xz_subscript0_share2_reg & y_share2_reg    ^ yz_subscript0_share2_reg & x_share2_reg  ^  z_subscript0_share2_reg & x_share2_reg & y_share2_reg  ^ x_share2_reg & y_share2_reg & z_share2_reg  ;


wire xyw_share1_reg;
assign xyw_share1_reg = xy_share1_reg_int & w_share2_reg ^ xyw_subscript0_share1_reg    ^ xw_subscript0_share1_reg & y_share2_reg    ^ yw_subscript0_share1_reg & x_share2_reg    ^ w_subscript0_share1_reg & x_share2_reg & y_share2_reg  ;
wire xyw_share2_reg;
assign xyw_share2_reg = xy_share2_reg_int & w_share2_reg ^ xyw_subscript0_share2_reg    ^ xw_subscript0_share2_reg & y_share2_reg    ^ yw_subscript0_share2_reg & x_share2_reg    ^ w_subscript0_share2_reg & x_share2_reg & y_share2_reg  ^ x_share2_reg & y_share2_reg & w_share2_reg  ;


wire xzw_share1_reg;
assign xzw_share1_reg = xz_share1_reg_int & w_share2_reg ^ xzw_subscript0_share1_reg    ^ xw_subscript0_share1_reg & z_share2_reg    ^ zw_subscript0_share1_reg & x_share2_reg    ^ w_subscript0_share1_reg & x_share2_reg & z_share2_reg  ;
wire xzw_share2_reg;
assign xzw_share2_reg = xz_share2_reg_int & w_share2_reg ^ xzw_subscript0_share2_reg    ^ xw_subscript0_share2_reg & z_share2_reg    ^ zw_subscript0_share2_reg & x_share2_reg    ^ w_subscript0_share2_reg & x_share2_reg & z_share2_reg  ^ x_share2_reg & z_share2_reg & w_share2_reg  ;


wire yzw_share1_reg;
assign yzw_share1_reg = yz_share1_reg_int & w_share2_reg ^ yzw_subscript0_share1_reg    ^ yw_subscript0_share1_reg & z_share2_reg    ^ zw_subscript0_share1_reg & y_share2_reg    ^ w_subscript0_share1_reg & y_share2_reg & z_share2_reg  ;
wire yzw_share2_reg;
assign yzw_share2_reg = yz_share2_reg_int & w_share2_reg ^ yzw_subscript0_share2_reg    ^ yw_subscript0_share2_reg & z_share2_reg    ^ zw_subscript0_share2_reg & y_share2_reg    ^ w_subscript0_share2_reg & y_share2_reg & z_share2_reg  ^ y_share2_reg & z_share2_reg & w_share2_reg  ;


// Step 2 : XOR the shared Degree-2,-3 terms together to compute the outputs of the S-Box

assign sbox_out1_share1 = 1'b1 ^ zw_share1_reg ^ y_subscript0_share1_reg ^ yz_share1_reg ^ yzw_share1_reg ^ x_subscript0_share1_reg ^ xw_share1_reg ^ xy_share1_reg;
assign sbox_out2_share1 = 1'b1 ^ yw_share1_reg ^ yz_share1_reg ^ yzw_share1_reg ^ xz_share1_reg ^ xyz_share1_reg;
assign sbox_out3_share1 = w_subscript0_share1_reg ^ zw_share1_reg ^ x_subscript0_share1_reg ^ xw_share1_reg ^ xz_share1_reg ^ xzw_share1_reg ^ xyz_share1_reg;
assign sbox_out4_share1 = 1'b1 ^ z_subscript0_share1_reg ^ yz_share1_reg ^ yzw_share1_reg ^ x_subscript0_share1_reg ^ xzw_share1_reg ^ xy_share1_reg ^ xyw_share1_reg;

assign sbox_out1_share2 = zw_share2_reg ^ y_subscript0_share2_reg ^ y_share2_reg ^ yz_share2_reg ^ yzw_share2_reg ^ x_subscript0_share2_reg ^ x_share2_reg ^ xw_share2_reg ^ xy_share2_reg;
assign sbox_out2_share2 = yw_share2_reg ^ yz_share2_reg ^ yzw_share2_reg ^ xz_share2_reg ^ xyz_share2_reg;
assign sbox_out3_share2 = w_subscript0_share2_reg ^ w_share2_reg ^ zw_share2_reg ^ x_subscript0_share2_reg ^ x_share2_reg ^ xw_share2_reg ^ xz_share2_reg ^ xzw_share2_reg ^ xyz_share2_reg;
assign sbox_out4_share2 = z_subscript0_share2_reg ^ z_share2_reg ^ yz_share2_reg ^ yzw_share2_reg ^ x_subscript0_share2_reg ^ x_share2_reg ^ xzw_share2_reg ^ xy_share2_reg ^ xyw_share2_reg;

endmodule
