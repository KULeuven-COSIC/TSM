`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: HO_TSM1
// Module Name: HO_TSM1
// Description: Implements the time-sharing module with two input shares and computes 
//              cross-product values to be used in CrossMult_d.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module HO_TSM1 (clk, PRNG_rand_output,
    rst, enable,
    x_input_share1, y_input_share1, z_input_share1, w_input_share1, x_input_share2, y_input_share2, z_input_share2, w_input_share2,  
    output_x_share1_reg, output_y_share1_reg, output_z_share1_reg, output_w_share1_reg, xy_share1_reg, xz_share1_reg, xw_share1_reg, yz_share1_reg, yw_share1_reg, zw_share1_reg, xyz_share1_reg, xyw_share1_reg, xzw_share1_reg, yzw_share1_reg, xyzw_share1_reg ,
    output_x_share2_reg, output_y_share2_reg, output_z_share2_reg, output_w_share2_reg, xy_share2_reg, xz_share2_reg, xw_share2_reg, yz_share2_reg, yw_share2_reg, zw_share2_reg, xyz_share2_reg, xyw_share2_reg, xzw_share2_reg, yzw_share2_reg, xyzw_share2_reg 
);

input clk;
input rst, enable;
input [19:1] PRNG_rand_output;
input x_input_share1, y_input_share1, z_input_share1, w_input_share1;
input x_input_share2, y_input_share2, z_input_share2, w_input_share2;
output     output_x_share1_reg, output_y_share1_reg, output_z_share1_reg, output_w_share1_reg, xy_share1_reg, xz_share1_reg, xw_share1_reg, yz_share1_reg, yw_share1_reg, zw_share1_reg, xyz_share1_reg, xyw_share1_reg, xzw_share1_reg, yzw_share1_reg, xyzw_share1_reg ,
    output_x_share2_reg, output_y_share2_reg, output_z_share2_reg, output_w_share2_reg, xy_share2_reg, xz_share2_reg, xw_share2_reg, yz_share2_reg, yw_share2_reg, zw_share2_reg, xyz_share2_reg, xyw_share2_reg, xzw_share2_reg, yzw_share2_reg, xyzw_share2_reg ;

reg x_subscript0_0_share1_reg, x_subscript0_0_share2_reg, y_subscript0_0_share1_reg, y_subscript0_0_share2_reg, z_subscript0_0_share1_reg, z_subscript0_0_share2_reg, w_subscript0_0_share1_reg, w_subscript0_0_share2_reg, xy_subscript0_0_share1_reg, xy_subscript0_0_share2_reg, xz_subscript0_0_share1_reg, xz_subscript0_0_share2_reg, xw_subscript0_0_share1_reg, xw_subscript0_0_share2_reg, yz_subscript0_0_share1_reg, yz_subscript0_0_share2_reg, yw_subscript0_0_share1_reg, yw_subscript0_0_share2_reg, zw_subscript0_0_share1_reg, zw_subscript0_0_share2_reg, xyz_subscript0_0_share1_reg, xyz_subscript0_0_share2_reg, xyw_subscript0_0_share1_reg, xyw_subscript0_0_share2_reg, xzw_subscript0_0_share1_reg, xzw_subscript0_0_share2_reg, yzw_subscript0_0_share1_reg, yzw_subscript0_0_share2_reg, xyzw_subscript0_0_share1_reg, xyzw_subscript0_0_share2_reg;
reg x_0_share2_reg, y_0_share2_reg,  z_0_share2_reg,  w_0_share2_reg;

wire x_subscript0_0_share1, x_subscript0_0_share2, y_subscript0_0_share1, y_subscript0_0_share2, z_subscript0_0_share1, z_subscript0_0_share2, w_subscript0_0_share1, w_subscript0_0_share2, xy_subscript0_0_share1, xy_subscript0_0_share2, xz_subscript0_0_share1, xz_subscript0_0_share2, xw_subscript0_0_share1, xw_subscript0_0_share2, yz_subscript0_0_share1, yz_subscript0_0_share2, yw_subscript0_0_share1, yw_subscript0_0_share2, zw_subscript0_0_share1, zw_subscript0_0_share2, xyz_subscript0_0_share1, xyz_subscript0_0_share2, xyw_subscript0_0_share1, xyw_subscript0_0_share2, xzw_subscript0_0_share1, xzw_subscript0_0_share2, yzw_subscript0_0_share1, yzw_subscript0_0_share2, xyzw_subscript0_0_share1, xyzw_subscript0_0_share2 ;

fourinput_compute_subscript0 compute_subscript0_instance_0( x_input_share1, y_input_share1, z_input_share1, w_input_share1, PRNG_rand_output[15:1],  PRNG_rand_output[19:16],  x_subscript0_0_share1, x_subscript0_0_share2, y_subscript0_0_share1, y_subscript0_0_share2, z_subscript0_0_share1, z_subscript0_0_share2, w_subscript0_0_share1, w_subscript0_0_share2, xy_subscript0_0_share1, xy_subscript0_0_share2, xz_subscript0_0_share1, xz_subscript0_0_share2, xw_subscript0_0_share1, xw_subscript0_0_share2, yz_subscript0_0_share1, yz_subscript0_0_share2, yw_subscript0_0_share1, yw_subscript0_0_share2, zw_subscript0_0_share1, zw_subscript0_0_share2, xyz_subscript0_0_share1, xyz_subscript0_0_share2, xyw_subscript0_0_share1, xyw_subscript0_0_share2, xzw_subscript0_0_share1, xzw_subscript0_0_share2, yzw_subscript0_0_share1, yzw_subscript0_0_share2, xyzw_subscript0_0_share1, xyzw_subscript0_0_share2);
fourinput_compute_subscript1 compute_subscript1_instance_0( x_subscript0_0_share1_reg, x_subscript0_0_share2_reg, y_subscript0_0_share1_reg, y_subscript0_0_share2_reg, z_subscript0_0_share1_reg, z_subscript0_0_share2_reg, w_subscript0_0_share1_reg, w_subscript0_0_share2_reg, xy_subscript0_0_share1_reg, xy_subscript0_0_share2_reg, xz_subscript0_0_share1_reg, xz_subscript0_0_share2_reg, xw_subscript0_0_share1_reg, xw_subscript0_0_share2_reg, yz_subscript0_0_share1_reg, yz_subscript0_0_share2_reg, yw_subscript0_0_share1_reg, yw_subscript0_0_share2_reg, zw_subscript0_0_share1_reg, zw_subscript0_0_share2_reg, xyz_subscript0_0_share1_reg, xyz_subscript0_0_share2_reg, xyw_subscript0_0_share1_reg, xyw_subscript0_0_share2_reg, xzw_subscript0_0_share1_reg, xzw_subscript0_0_share2_reg, yzw_subscript0_0_share1_reg, yzw_subscript0_0_share2_reg, xyzw_subscript0_0_share1_reg, xyzw_subscript0_0_share2_reg,    x_0_share2_reg, y_0_share2_reg,  z_0_share2_reg,  w_0_share2_reg,   
    output_x_share1_reg, output_y_share1_reg, output_z_share1_reg, output_w_share1_reg, xy_share1_reg, xz_share1_reg, xw_share1_reg, yz_share1_reg, yw_share1_reg, zw_share1_reg, xyz_share1_reg, xyw_share1_reg, xzw_share1_reg, yzw_share1_reg, xyzw_share1_reg ,
    output_x_share2_reg, output_y_share2_reg, output_z_share2_reg, output_w_share2_reg, xy_share2_reg, xz_share2_reg, xw_share2_reg, yz_share2_reg, yw_share2_reg, zw_share2_reg, xyz_share2_reg, xyw_share2_reg, xzw_share2_reg, yzw_share2_reg, xyzw_share2_reg 
 );

wire x_0_share2_wire, y_0_share2_wire, z_0_share2_wire, w_0_share2_wire ;

assign x_0_share2_wire = x_input_share2  ^ PRNG_rand_output[19];
assign y_0_share2_wire = y_input_share2  ^ PRNG_rand_output[18];
assign z_0_share2_wire = z_input_share2  ^ PRNG_rand_output[17];
assign w_0_share2_wire = w_input_share2  ^ PRNG_rand_output[16];


always@(posedge clk)
begin
    if (rst) begin
        x_0_share2_reg                  <= 1'b0 ;
        y_0_share2_reg                  <= 1'b0 ;
        z_0_share2_reg                  <= 1'b0 ;
        w_0_share2_reg                  <= 1'b0 ;
        x_subscript0_0_share1_reg       <= 1'b0 ;
        x_subscript0_0_share2_reg       <= 1'b0 ;
        y_subscript0_0_share1_reg       <= 1'b0 ;
        y_subscript0_0_share2_reg       <= 1'b0 ;
        z_subscript0_0_share1_reg       <= 1'b0 ;
        z_subscript0_0_share2_reg       <= 1'b0 ;
        w_subscript0_0_share1_reg       <= 1'b0 ;
        w_subscript0_0_share2_reg       <= 1'b0 ;
        xy_subscript0_0_share1_reg      <= 1'b0 ;
        xy_subscript0_0_share2_reg      <= 1'b0 ;
        xz_subscript0_0_share1_reg      <= 1'b0 ;
        xz_subscript0_0_share2_reg      <= 1'b0 ;
        xw_subscript0_0_share1_reg      <= 1'b0 ;
        xw_subscript0_0_share2_reg      <= 1'b0 ;
        yz_subscript0_0_share1_reg      <= 1'b0 ;
        yz_subscript0_0_share2_reg      <= 1'b0 ;
        yw_subscript0_0_share1_reg      <= 1'b0 ;
        yw_subscript0_0_share2_reg      <= 1'b0 ;
        zw_subscript0_0_share1_reg      <= 1'b0 ;
        zw_subscript0_0_share2_reg      <= 1'b0 ;
        xyz_subscript0_0_share1_reg     <= 1'b0 ;
        xyz_subscript0_0_share2_reg     <= 1'b0 ;
        xyw_subscript0_0_share1_reg     <= 1'b0 ;
        xyw_subscript0_0_share2_reg     <= 1'b0 ;
        xzw_subscript0_0_share1_reg     <= 1'b0 ;
        xzw_subscript0_0_share2_reg     <= 1'b0 ;
        yzw_subscript0_0_share1_reg     <= 1'b0 ;
        yzw_subscript0_0_share2_reg     <= 1'b0 ;
        xyzw_subscript0_0_share1_reg    <= 1'b0 ;
        xyzw_subscript0_0_share2_reg    <= 1'b0 ;
    end
    else if(enable) begin
        x_0_share2_reg               <= x_0_share2_wire ;
        y_0_share2_reg               <= y_0_share2_wire ;
        z_0_share2_reg               <= z_0_share2_wire ;
        w_0_share2_reg               <= w_0_share2_wire ;
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
        xyzw_subscript0_0_share1_reg  <= xyzw_subscript0_0_share1  ;
        xyzw_subscript0_0_share2_reg  <= xyzw_subscript0_0_share2  ;
    end
    else begin
        x_0_share2_reg                  <= x_0_share2_reg                   ;
        y_0_share2_reg                  <= y_0_share2_reg                   ;
        z_0_share2_reg                  <= z_0_share2_reg                   ;
        w_0_share2_reg                  <= w_0_share2_reg                   ;
        x_subscript0_0_share1_reg       <= x_subscript0_0_share1_reg        ;
        x_subscript0_0_share2_reg       <= x_subscript0_0_share2_reg        ;
        y_subscript0_0_share1_reg       <= y_subscript0_0_share1_reg        ;
        y_subscript0_0_share2_reg       <= y_subscript0_0_share2_reg        ;
        z_subscript0_0_share1_reg       <= z_subscript0_0_share1_reg        ;
        z_subscript0_0_share2_reg       <= z_subscript0_0_share2_reg        ;
        w_subscript0_0_share1_reg       <= w_subscript0_0_share1_reg        ;
        w_subscript0_0_share2_reg       <= w_subscript0_0_share2_reg        ;
        xy_subscript0_0_share1_reg      <= xy_subscript0_0_share1_reg       ;
        xy_subscript0_0_share2_reg      <= xy_subscript0_0_share2_reg       ;
        xz_subscript0_0_share1_reg      <= xz_subscript0_0_share1_reg       ;
        xz_subscript0_0_share2_reg      <= xz_subscript0_0_share2_reg       ;
        xw_subscript0_0_share1_reg      <= xw_subscript0_0_share1_reg       ;
        xw_subscript0_0_share2_reg      <= xw_subscript0_0_share2_reg       ;
        yz_subscript0_0_share1_reg      <= yz_subscript0_0_share1_reg       ;
        yz_subscript0_0_share2_reg      <= yz_subscript0_0_share2_reg       ;
        yw_subscript0_0_share1_reg      <= yw_subscript0_0_share1_reg       ;
        yw_subscript0_0_share2_reg      <= yw_subscript0_0_share2_reg       ;
        zw_subscript0_0_share1_reg      <= zw_subscript0_0_share1_reg       ;
        zw_subscript0_0_share2_reg      <= zw_subscript0_0_share2_reg       ;
        xyz_subscript0_0_share1_reg     <= xyz_subscript0_0_share1_reg      ;
        xyz_subscript0_0_share2_reg     <= xyz_subscript0_0_share2_reg      ;
        xyw_subscript0_0_share1_reg     <= xyw_subscript0_0_share1_reg      ;
        xyw_subscript0_0_share2_reg     <= xyw_subscript0_0_share2_reg      ;
        xzw_subscript0_0_share1_reg     <= xzw_subscript0_0_share1_reg      ;
        xzw_subscript0_0_share2_reg     <= xzw_subscript0_0_share2_reg      ;
        yzw_subscript0_0_share1_reg     <= yzw_subscript0_0_share1_reg      ;
        yzw_subscript0_0_share2_reg     <= yzw_subscript0_0_share2_reg      ;
        xyzw_subscript0_0_share1_reg    <= xyzw_subscript0_0_share1_reg     ;
        xyzw_subscript0_0_share2_reg    <= xyzw_subscript0_0_share2_reg     ;
    end
end


endmodule





