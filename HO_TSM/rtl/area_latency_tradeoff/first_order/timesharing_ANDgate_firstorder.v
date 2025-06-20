`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: First-Order Time-Sharing AND Gate
// Module Name: timesharing_andgate_firstorder
// Description: Implements a first-order masked AND gate using TSM.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module timesharing_andgate_firstorder (clk, rand_bit, rand_composable_bit, input_share1, input_share2,  output_ab_share1, output_ab_share2,output_a_share1, output_a_share2,output_b_share1, output_b_share2 );

input clk;
input [3:1] rand_bit;
input [2:1] rand_composable_bit;
input [2:1] input_share1;
input [2:1] input_share2;

output output_ab_share1, output_ab_share2 ;
output output_a_share1, output_a_share2, output_b_share1, output_b_share2 ;

wire a_share1, b_share1;
wire a_share2, b_share2;

assign a_share1 = input_share1[2] ^ rand_composable_bit[1];
assign b_share1 = input_share1[1] ^ rand_composable_bit[2];

assign a_share2 = input_share2[2] ^ rand_composable_bit[1];
assign b_share2 = input_share2[1] ^ rand_composable_bit[2];


wire a_subscript0_share1, b_subscript0_share1, ab_subscript0_share1 ;
wire a_subscript0_share2, b_subscript0_share2, ab_subscript0_share2 ;

assign a_subscript0_share1  = a_share1  ^ rand_bit[1];
assign b_subscript0_share1  = b_share1  ^ rand_bit[2];
assign ab_subscript0_share1 = a_share1 & b_share1 ^ rand_bit[3];

assign a_subscript0_share2  = rand_bit[1];
assign b_subscript0_share2  = rand_bit[2];
assign ab_subscript0_share2 = rand_bit[3];


reg a_subscript0_share1_reg, b_subscript0_share1_reg, ab_subscript0_share1_reg ;
reg a_subscript0_share2_reg, b_subscript0_share2_reg, ab_subscript0_share2_reg ;
reg a_share2_reg, b_share2_reg ;

always@(posedge clk)
begin
	a_subscript0_share1_reg  <= a_subscript0_share1 ;
	b_subscript0_share1_reg  <= b_subscript0_share1 ;
	ab_subscript0_share1_reg <= ab_subscript0_share1 ;

	a_subscript0_share2_reg  <= a_subscript0_share2 ;
	b_subscript0_share2_reg  <= b_subscript0_share2 ;
	ab_subscript0_share2_reg <= ab_subscript0_share2 ;

	a_share2_reg <= a_share2 ;
	b_share2_reg <= b_share2 ;
end

assign output_ab_share1 = ab_subscript0_share1_reg ^ a_subscript0_share1_reg & b_share2_reg ^ b_subscript0_share1_reg & a_share2_reg ;
assign output_ab_share2 = ab_subscript0_share2_reg ^ a_subscript0_share2_reg & b_share2_reg ^ b_subscript0_share2_reg & a_share2_reg ^ a_share2_reg & b_share2_reg ;

assign output_a_share1 = a_subscript0_share1_reg  ;
assign output_a_share2 = a_subscript0_share2_reg  ^ a_share2_reg  ;

assign output_b_share1 = b_subscript0_share1_reg  ;
assign output_b_share2 = b_subscript0_share2_reg  ^ b_share2_reg  ;


endmodule
