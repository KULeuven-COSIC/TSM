`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper : Time Sharing - A Novel Approach to Low-Latency Masking
// Authors : Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date:    18:43:05 03/17/2023 
// Design Name:    PRINCE S-Box  
// Module Name:    compute_subscript0 
// Description:    Submodule for PRINCE S-Box. This submodule contains the logic of the first cycle. All crossproducts of the first share.
// 
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module compute_subscript0( input_share1, rand_bit,  rand_composable_bit,  x_subscript0_share1, x_subscript0_share2, y_subscript0_share1, y_subscript0_share2, z_subscript0_share1, z_subscript0_share2, w_subscript0_share1, w_subscript0_share2, xy_subscript0_share1, xy_subscript0_share2, xz_subscript0_share1, xz_subscript0_share2, xw_subscript0_share1, xw_subscript0_share2, yz_subscript0_share1, yz_subscript0_share2, yw_subscript0_share1, yw_subscript0_share2, zw_subscript0_share1, zw_subscript0_share2, xyz_subscript0_share1, xyz_subscript0_share2, xyw_subscript0_share1, xyw_subscript0_share2, xzw_subscript0_share1, xzw_subscript0_share2, yzw_subscript0_share1, yzw_subscript0_share2);

input [4:1] input_share1 ;
input [14:1] rand_bit ;
input [4:1] rand_composable_bit ;
output x_subscript0_share1, x_subscript0_share2, y_subscript0_share1, y_subscript0_share2, z_subscript0_share1, z_subscript0_share2, w_subscript0_share1, w_subscript0_share2, xy_subscript0_share1, xy_subscript0_share2, xz_subscript0_share1, xz_subscript0_share2, xw_subscript0_share1, xw_subscript0_share2, yz_subscript0_share1, yz_subscript0_share2, yw_subscript0_share1, yw_subscript0_share2, zw_subscript0_share1, zw_subscript0_share2, xyz_subscript0_share1, xyz_subscript0_share2, xyw_subscript0_share1, xyw_subscript0_share2, xzw_subscript0_share1, xzw_subscript0_share2, yzw_subscript0_share1, yzw_subscript0_share2 ;

wire x_share1, y_share1, z_share1, w_share1;
wire x_share2, y_share2, z_share2, w_share2;

assign x_share1 = input_share1[4] ^ rand_composable_bit[4];
assign y_share1 = input_share1[3] ^ rand_composable_bit[3];
assign z_share1 = input_share1[2] ^ rand_composable_bit[2];
assign w_share1 = input_share1[1] ^ rand_composable_bit[1];

assign x_subscript0_share1 = x_share1  ^ rand_bit[1] ;
assign x_subscript0_share2 = rand_bit[1] ;
assign y_subscript0_share1 = y_share1  ^ rand_bit[2] ;
assign y_subscript0_share2 = rand_bit[2] ;
assign z_subscript0_share1 = z_share1  ^ rand_bit[3] ;
assign z_subscript0_share2 = rand_bit[3] ;
assign w_subscript0_share1 = w_share1  ^ rand_bit[4] ;
assign w_subscript0_share2 = rand_bit[4] ;
assign xy_subscript0_share1 = x_share1 & y_share1  ^ rand_bit[5] ;
assign xy_subscript0_share2 = rand_bit[5] ;
assign xz_subscript0_share1 = x_share1 & z_share1  ^ rand_bit[6] ;
assign xz_subscript0_share2 = rand_bit[6] ;
assign xw_subscript0_share1 = x_share1 & w_share1  ^ rand_bit[7] ;
assign xw_subscript0_share2 = rand_bit[7] ;
assign yz_subscript0_share1 = y_share1 & z_share1  ^ rand_bit[8] ;
assign yz_subscript0_share2 = rand_bit[8] ;
assign yw_subscript0_share1 = y_share1 & w_share1  ^ rand_bit[9] ;
assign yw_subscript0_share2 = rand_bit[9] ;
assign zw_subscript0_share1 = z_share1 & w_share1  ^ rand_bit[10] ;
assign zw_subscript0_share2 = rand_bit[10] ;
assign xyz_subscript0_share1 = x_share1 & y_share1 & z_share1  ^ rand_bit[11] ;
assign xyz_subscript0_share2 = rand_bit[11] ;
assign xyw_subscript0_share1 = x_share1 & y_share1 & w_share1  ^ rand_bit[12] ;
assign xyw_subscript0_share2 = rand_bit[12] ;
assign xzw_subscript0_share1 = x_share1 & z_share1 & w_share1  ^ rand_bit[13] ;
assign xzw_subscript0_share2 = rand_bit[13] ;
assign yzw_subscript0_share1 = y_share1 & z_share1 & w_share1  ^ rand_bit[14] ;
assign yzw_subscript0_share2 = rand_bit[14] ;

endmodule
