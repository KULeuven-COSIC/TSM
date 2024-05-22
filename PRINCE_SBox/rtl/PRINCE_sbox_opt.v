`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper : Time Sharing - A Novel Approach to Low-Latency Masking
// Authors : Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date:    19:32:45 03/17/2023 
// Design Name:    PRINCE S-Box 
// Module Name:    PRINCE_sbox_opt 
// Description:    Top module for PRINCE S-Box.  
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PRINCE_sbox_opt (clk, PRNG_rand_output, sbox_input_MUX_share1, sbox_input_MUX_share2,  output_share1, output_share2);

input clk;
input [18:1] PRNG_rand_output;
input [3:0] sbox_input_MUX_share1;
input [3:0] sbox_input_MUX_share2;
output [3:0] output_share1;
output [3:0] output_share2;

reg x_subscript0_0_share1_reg, x_subscript0_0_share2_reg, y_subscript0_0_share1_reg, y_subscript0_0_share2_reg, z_subscript0_0_share1_reg, z_subscript0_0_share2_reg, w_subscript0_0_share1_reg, w_subscript0_0_share2_reg, xy_subscript0_0_share1_reg, xy_subscript0_0_share2_reg, xz_subscript0_0_share1_reg, xz_subscript0_0_share2_reg, xw_subscript0_0_share1_reg, xw_subscript0_0_share2_reg, yz_subscript0_0_share1_reg, yz_subscript0_0_share2_reg, yw_subscript0_0_share1_reg, yw_subscript0_0_share2_reg, zw_subscript0_0_share1_reg, zw_subscript0_0_share2_reg, xyz_subscript0_0_share1_reg, xyz_subscript0_0_share2_reg, xyw_subscript0_0_share1_reg, xyw_subscript0_0_share2_reg, xzw_subscript0_0_share1_reg, xzw_subscript0_0_share2_reg, yzw_subscript0_0_share1_reg, yzw_subscript0_0_share2_reg;
reg x_0_share2_reg, y_0_share2_reg,  z_0_share2_reg,  w_0_share2_reg;

wire sbox_out4_0_share1,  sbox_out3_0_share1 , sbox_out2_0_share1,  sbox_out1_0_share1, sbox_out4_0_share2,  sbox_out3_0_share2 , sbox_out2_0_share2,  sbox_out1_0_share2 ;

compute_subscript0 compute_subscript0_instance_0( sbox_input_MUX_share1[3:0], PRNG_rand_output[14:1],  PRNG_rand_output[18:15],  x_subscript0_0_share1, x_subscript0_0_share2, y_subscript0_0_share1, y_subscript0_0_share2, z_subscript0_0_share1, z_subscript0_0_share2, w_subscript0_0_share1, w_subscript0_0_share2, xy_subscript0_0_share1, xy_subscript0_0_share2, xz_subscript0_0_share1, xz_subscript0_0_share2, xw_subscript0_0_share1, xw_subscript0_0_share2, yz_subscript0_0_share1, yz_subscript0_0_share2, yw_subscript0_0_share1, yw_subscript0_0_share2, zw_subscript0_0_share1, zw_subscript0_0_share2, xyz_subscript0_0_share1, xyz_subscript0_0_share2, xyw_subscript0_0_share1, xyw_subscript0_0_share2, xzw_subscript0_0_share1, xzw_subscript0_0_share2, yzw_subscript0_0_share1, yzw_subscript0_0_share2);
compute_subscript1_opt compute_subscript1_instance_0( x_subscript0_0_share1_reg, x_subscript0_0_share2_reg, y_subscript0_0_share1_reg, y_subscript0_0_share2_reg, z_subscript0_0_share1_reg, z_subscript0_0_share2_reg, w_subscript0_0_share1_reg, w_subscript0_0_share2_reg, xy_subscript0_0_share1_reg, xy_subscript0_0_share2_reg, xz_subscript0_0_share1_reg, xz_subscript0_0_share2_reg, xw_subscript0_0_share1_reg, xw_subscript0_0_share2_reg, yz_subscript0_0_share1_reg, yz_subscript0_0_share2_reg, yw_subscript0_0_share1_reg, yw_subscript0_0_share2_reg, zw_subscript0_0_share1_reg, zw_subscript0_0_share2_reg, xyz_subscript0_0_share1_reg, xyz_subscript0_0_share2_reg, xyw_subscript0_0_share1_reg, xyw_subscript0_0_share2_reg, xzw_subscript0_0_share1_reg, xzw_subscript0_0_share2_reg, yzw_subscript0_0_share1_reg, yzw_subscript0_0_share2_reg,    x_0_share2_reg, y_0_share2_reg,  z_0_share2_reg,  w_0_share2_reg,     sbox_out1_0_share1, sbox_out2_0_share1, sbox_out3_0_share1, sbox_out4_0_share1,    sbox_out1_0_share2, sbox_out2_0_share2, sbox_out3_0_share2, sbox_out4_0_share2  );

wire x_0_share2_wire, y_0_share2_wire, z_0_share2_wire, w_0_share2_wire ;

assign x_0_share2_wire = sbox_input_MUX_share2[3]  ^ PRNG_rand_output[18];
assign y_0_share2_wire = sbox_input_MUX_share2[2]  ^ PRNG_rand_output[17];
assign z_0_share2_wire = sbox_input_MUX_share2[1]  ^ PRNG_rand_output[16];
assign w_0_share2_wire = sbox_input_MUX_share2[0]  ^ PRNG_rand_output[15];


always@(posedge clk)
begin
    
        x_0_share2_reg <= x_0_share2_wire ;
        y_0_share2_reg <= y_0_share2_wire ;
        z_0_share2_reg <= z_0_share2_wire ;
        w_0_share2_reg <= w_0_share2_wire ;
        x_subscript0_0_share1_reg    <= x_subscript0_0_share1    ;
        x_subscript0_0_share2_reg    <= x_subscript0_0_share2    ;
        y_subscript0_0_share1_reg    <= y_subscript0_0_share1    ;
        y_subscript0_0_share2_reg    <= y_subscript0_0_share2    ;
        z_subscript0_0_share1_reg    <= z_subscript0_0_share1    ;
        z_subscript0_0_share2_reg    <= z_subscript0_0_share2    ;
        w_subscript0_0_share1_reg    <= w_subscript0_0_share1    ;
        w_subscript0_0_share2_reg    <= w_subscript0_0_share2    ;
        xy_subscript0_0_share1_reg   <= xy_subscript0_0_share1   ;
        xy_subscript0_0_share2_reg   <= xy_subscript0_0_share2   ;
        xz_subscript0_0_share1_reg   <= xz_subscript0_0_share1   ;
        xz_subscript0_0_share2_reg   <= xz_subscript0_0_share2   ;
        xw_subscript0_0_share1_reg   <= xw_subscript0_0_share1   ;
        xw_subscript0_0_share2_reg   <= xw_subscript0_0_share2   ;
        yz_subscript0_0_share1_reg   <= yz_subscript0_0_share1   ;
        yz_subscript0_0_share2_reg   <= yz_subscript0_0_share2   ;
        yw_subscript0_0_share1_reg   <= yw_subscript0_0_share1   ;
        yw_subscript0_0_share2_reg   <= yw_subscript0_0_share2   ;
        zw_subscript0_0_share1_reg   <= zw_subscript0_0_share1   ;
        zw_subscript0_0_share2_reg   <= zw_subscript0_0_share2   ;
        xyz_subscript0_0_share1_reg  <= xyz_subscript0_0_share1  ;
        xyz_subscript0_0_share2_reg  <= xyz_subscript0_0_share2  ;
        xyw_subscript0_0_share1_reg  <= xyw_subscript0_0_share1  ;
        xyw_subscript0_0_share2_reg  <= xyw_subscript0_0_share2  ;
        xzw_subscript0_0_share1_reg  <= xzw_subscript0_0_share1  ;
        xzw_subscript0_0_share2_reg  <= xzw_subscript0_0_share2  ;
        yzw_subscript0_0_share1_reg  <= yzw_subscript0_0_share1  ;
        yzw_subscript0_0_share2_reg  <= yzw_subscript0_0_share2  ;
end

assign output_share1 = {sbox_out4_0_share1,  sbox_out3_0_share1 , sbox_out2_0_share1,  sbox_out1_0_share1} ;
assign output_share2 = {sbox_out4_0_share2,  sbox_out3_0_share2 , sbox_out2_0_share2,  sbox_out1_0_share2} ;

endmodule





