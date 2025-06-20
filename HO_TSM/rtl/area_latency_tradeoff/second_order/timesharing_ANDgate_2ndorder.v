`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Second-Order Time-Sharing AND Gate
// Module Name: timesharing_ANDgate_2ndorder
// Description: Implements a second-order masked AND gate using HO-TSM2, formally verified 
//              for 2-PINI and 2-SNI security properties.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module timesharing_andgate_2ndorder (clk, rand_bit, rand_composable_bit, input_share1, input_share2, input_share3,  ab_subscript2_share1, ab_subscript2_share2, ab_subscript2_share3, a_subscript2_share1, a_subscript2_share2, a_subscript2_share3, b_subscript2_share1, b_subscript2_share2, b_subscript2_share3);

input clk;
input [9:1] rand_bit;
input [6:1] rand_composable_bit;
input [2:1] input_share1;
input [2:1] input_share2;
input [2:1] input_share3;


output ab_subscript2_share1, ab_subscript2_share2, ab_subscript2_share3 ;
output a_subscript2_share1, a_subscript2_share2, a_subscript2_share3 ;
output b_subscript2_share1, b_subscript2_share2, b_subscript2_share3 ;

wire a_share1, b_share1;
wire a_share2, b_share2;
wire a_share3, b_share3;

assign a_share1 = input_share1[2] ^ rand_composable_bit[1] ^ rand_composable_bit[5];
assign b_share1 = input_share1[1] ^ rand_composable_bit[2] ^ rand_composable_bit[6];

assign a_share2 = input_share2[2] ^ rand_composable_bit[3] ^ rand_composable_bit[5];
assign b_share2 = input_share2[1] ^ rand_composable_bit[4] ^ rand_composable_bit[6];

assign a_share3 = input_share3[2] ^ rand_composable_bit[1] ^ rand_composable_bit[3];
assign b_share3 = input_share3[1] ^ rand_composable_bit[2] ^ rand_composable_bit[4];


wire a_subscript0_share1, b_subscript0_share1, ab_subscript0_share1 ;
wire a_subscript0_share2, b_subscript0_share2, ab_subscript0_share2 ;

assign a_subscript0_share1  = a_share1  ^ rand_bit[1];
assign b_subscript0_share1  = b_share1  ^ rand_bit[2];
assign ab_subscript0_share1 = a_share1 & b_share1 ^ rand_bit[3];

assign a_subscript0_share2  = rand_bit[1] ;
assign b_subscript0_share2  = rand_bit[2] ;
assign ab_subscript0_share2 = rand_bit[3] ;


// register stage 1


reg a_subscript0_share1_reg, b_subscript0_share1_reg, ab_subscript0_share1_reg ;
reg a_subscript0_share2_reg, b_subscript0_share2_reg, ab_subscript0_share2_reg ;
reg a_share2_reg, b_share2_reg ;
reg a_share3_reg, b_share3_reg ;

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

	a_share3_reg <= a_share3 ;
	b_share3_reg <= b_share3 ;
end


wire a_subscript1_share1, a_subscript1_share2, a_subscript1_share3 ;
wire b_subscript1_share1, b_subscript1_share2, b_subscript1_share3 ;
wire ab_subscript1_share1, ab_subscript1_share2, ab_subscript1_share3 ;

assign ab_subscript1_share1 = ab_subscript0_share1_reg ^ a_subscript0_share1_reg & b_share2_reg ^ b_subscript0_share1_reg & a_share2_reg  ^ rand_bit[4];
assign ab_subscript1_share2 = ab_subscript0_share2_reg ^ a_subscript0_share2_reg & b_share2_reg ^ b_subscript0_share2_reg & a_share2_reg ^ a_share2_reg & b_share2_reg  ^ rand_bit[5];
assign ab_subscript1_share3 = rand_bit[4] ^ rand_bit[5];

assign a_subscript1_share1 = a_subscript0_share1_reg ^ rand_bit[6];
assign a_subscript1_share2 = a_subscript0_share2_reg ^ a_share2_reg  ^ rand_bit[7];
assign a_subscript1_share3 = rand_bit[6] ^ rand_bit[7];

assign b_subscript1_share1 = b_subscript0_share1_reg ^ rand_bit[8];
assign b_subscript1_share2 = b_subscript0_share2_reg ^ b_share2_reg  ^ rand_bit[9];
assign b_subscript1_share3 = rand_bit[8] ^ rand_bit[9];



reg a_subscript1_share1_reg, b_subscript1_share1_reg, ab_subscript1_share1_reg ;
reg a_subscript1_share2_reg, b_subscript1_share2_reg, ab_subscript1_share2_reg ;
reg a_subscript1_share3_reg, b_subscript1_share3_reg, ab_subscript1_share3_reg ;
reg a_share3_reg2, b_share3_reg2 ;

always@(posedge clk)
begin
	a_subscript1_share1_reg  <= a_subscript1_share1 ;
	b_subscript1_share1_reg  <= b_subscript1_share1 ;
	ab_subscript1_share1_reg <= ab_subscript1_share1 ;

	a_subscript1_share2_reg  <= a_subscript1_share2 ;
	b_subscript1_share2_reg  <= b_subscript1_share2 ;
	ab_subscript1_share2_reg <= ab_subscript1_share2 ;

	 a_subscript1_share3_reg  <= a_subscript1_share3 ;
	 b_subscript1_share3_reg  <= b_subscript1_share3 ;
	ab_subscript1_share3_reg <= ab_subscript1_share3 ;


	a_share3_reg2 <= a_share3_reg ;
	b_share3_reg2 <= b_share3_reg ;
end


assign ab_subscript2_share1 = ab_subscript1_share1_reg ^ a_subscript1_share1_reg & b_share3_reg2 ^ b_subscript1_share1_reg & a_share3_reg2 ;
assign ab_subscript2_share2 = ab_subscript1_share2_reg ^ a_subscript1_share2_reg & b_share3_reg2 ^ b_subscript1_share2_reg & a_share3_reg2 ;
assign ab_subscript2_share3 = ab_subscript1_share3_reg ^ a_subscript1_share3_reg & b_share3_reg2 ^ b_subscript1_share3_reg & a_share3_reg2 ^ a_share3_reg2 & b_share3_reg2 ;

assign a_subscript2_share1 = a_subscript1_share1_reg  ;
assign a_subscript2_share2 = a_subscript1_share2_reg  ;
assign a_subscript2_share3 = a_subscript1_share3_reg  ^ a_share3_reg2 ;


assign b_subscript2_share1 = b_subscript1_share1_reg  ;
assign b_subscript2_share2 = b_subscript1_share2_reg  ;
assign b_subscript2_share3 = b_subscript1_share3_reg  ^ b_share3_reg2 ;

endmodule
