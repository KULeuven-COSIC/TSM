`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Third-Order Time-Sharing AND Gate
// Module Name: timesharing_andgate_thirdorder
// Description: Implements a third-order masked AND gate using HO-TSM3, formally verified 
//              for 3-PINI and 3-SNI security properties.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module timesharing_andgate2_thirdorder(clk, rand_bit, rand_composable_bit, input_share1, input_share2, input_share3, input_share4, output_share1, output_share2, output_share3, output_share4);

input clk;
input [18:1] rand_bit;
input [12:1] rand_composable_bit;
input [2:1] input_share1;
input [2:1] input_share2;
input [2:1] input_share3;
input [2:1] input_share4;
output output_share1;
output output_share2;
output output_share3;
output output_share4;

wire a_share1, b_share1;
wire a_share2, b_share2;
wire a_share3, b_share3;
wire a_share4, b_share4;

assign a_share1 = input_share1[1] ^ rand_composable_bit[11] ^ rand_composable_bit[7] ^ rand_composable_bit[1];
assign b_share1 = input_share1[2] ^ rand_composable_bit[12] ^ rand_composable_bit[8] ^ rand_composable_bit[2];

assign a_share2 = input_share2[1] ^ rand_composable_bit[11] ^ rand_composable_bit[9] ^ rand_composable_bit[3];
assign b_share2 = input_share2[2] ^ rand_composable_bit[12] ^ rand_composable_bit[10] ^ rand_composable_bit[4];

assign a_share3 = input_share3[1] ^ rand_composable_bit[7] ^ rand_composable_bit[9] ^ rand_composable_bit[5];
assign b_share3 = input_share3[2] ^ rand_composable_bit[8] ^ rand_composable_bit[10] ^ rand_composable_bit[6];

assign a_share4 = input_share4[1] ^ rand_composable_bit[1] ^ rand_composable_bit[3] ^ rand_composable_bit[5];
assign b_share4 = input_share4[2] ^ rand_composable_bit[2] ^ rand_composable_bit[4] ^ rand_composable_bit[6];


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
reg a_share4_reg, b_share4_reg ;

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

	a_share4_reg <= a_share4 ;
	b_share4_reg <= b_share4 ;
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
reg a_share4_reg2, b_share4_reg2 ;

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

	a_share4_reg2 <= a_share4_reg ;
	b_share4_reg2 <= b_share4_reg ;


end


wire ab_subscript2_share1, ab_subscript2_share2, ab_subscript2_share3 , ab_subscript2_share4 ;
wire a_subscript2_share1, a_subscript2_share2,   a_subscript2_share3  , a_subscript2_share4 ;
wire b_subscript2_share1, b_subscript2_share2,   b_subscript2_share3  , b_subscript2_share4 ;

assign ab_subscript2_share1 = ab_subscript1_share1_reg ^ a_subscript1_share1_reg & b_share3_reg2 ^ b_subscript1_share1_reg & a_share3_reg2                                 ^ rand_bit[10] ;
assign ab_subscript2_share2 = ab_subscript1_share2_reg ^ a_subscript1_share2_reg & b_share3_reg2 ^ b_subscript1_share2_reg & a_share3_reg2                                 ^ rand_bit[11] ;
assign ab_subscript2_share3 = ab_subscript1_share3_reg ^ a_subscript1_share3_reg & b_share3_reg2 ^ b_subscript1_share3_reg & a_share3_reg2 ^ a_share3_reg2 & b_share3_reg2 ^ rand_bit[12] ;
assign ab_subscript2_share4 = rand_bit[10] ^ rand_bit[11] ^ rand_bit[12] ;

assign a_subscript2_share1 = a_subscript1_share1_reg                 ^ rand_bit[13];
assign a_subscript2_share2 = a_subscript1_share2_reg                 ^ rand_bit[14];
assign a_subscript2_share3 = a_subscript1_share3_reg ^ a_share3_reg2 ^ rand_bit[15];
assign a_subscript2_share4 = rand_bit[13] ^ rand_bit[14] ^ rand_bit[15] ;


assign b_subscript2_share1 = b_subscript1_share1_reg                 ^ rand_bit[16] ;
assign b_subscript2_share2 = b_subscript1_share2_reg                 ^ rand_bit[17] ;
assign b_subscript2_share3 = b_subscript1_share3_reg ^ b_share3_reg2 ^ rand_bit[18] ;
assign b_subscript2_share4 = rand_bit[16] ^ rand_bit[17] ^ rand_bit[18] ;





reg a_subscript2_share1_reg, b_subscript2_share1_reg, ab_subscript2_share1_reg ;
reg a_subscript2_share2_reg, b_subscript2_share2_reg, ab_subscript2_share2_reg ;
reg a_subscript2_share3_reg, b_subscript2_share3_reg, ab_subscript2_share3_reg ;
reg a_subscript2_share4_reg, b_subscript2_share4_reg, ab_subscript2_share4_reg ;
reg a_share4_reg3, b_share4_reg3 ;

always@(posedge clk)
begin
	a_subscript2_share1_reg  <= a_subscript2_share1 ;
	b_subscript2_share1_reg  <= b_subscript2_share1 ;
	ab_subscript2_share1_reg <= ab_subscript2_share1 ;

	a_subscript2_share2_reg  <= a_subscript2_share2 ;
	b_subscript2_share2_reg  <= b_subscript2_share2 ;
	ab_subscript2_share2_reg <= ab_subscript2_share2 ;

	 a_subscript2_share3_reg  <= a_subscript2_share3 ;
	 b_subscript2_share3_reg  <= b_subscript2_share3 ;
	ab_subscript2_share3_reg <= ab_subscript2_share3 ;

	 a_subscript2_share4_reg  <= a_subscript2_share4 ;
	 b_subscript2_share4_reg  <= b_subscript2_share4 ;
	ab_subscript2_share4_reg <= ab_subscript2_share4 ;



	a_share4_reg3 <= a_share4_reg2 ;
	b_share4_reg3 <= b_share4_reg2 ;


end

wire ab_subscript3_share1, ab_subscript3_share2, ab_subscript3_share3 , ab_subscript3_share4 ;

assign ab_subscript3_share1 = ab_subscript2_share1_reg ^ a_subscript2_share1_reg & b_share4_reg3 ^ b_subscript2_share1_reg & a_share4_reg3                                  ;
assign ab_subscript3_share2 = ab_subscript2_share2_reg ^ a_subscript2_share2_reg & b_share4_reg3 ^ b_subscript2_share2_reg & a_share4_reg3                                  ;
assign ab_subscript3_share3 = ab_subscript2_share3_reg ^ a_subscript2_share3_reg & b_share4_reg3 ^ b_subscript2_share3_reg & a_share4_reg3                                  ;
assign ab_subscript3_share4 = ab_subscript2_share4_reg ^ a_subscript2_share4_reg & b_share4_reg3 ^ b_subscript2_share4_reg & a_share4_reg3 ^ a_share4_reg3 & b_share4_reg3  ;



assign output_share1 =  ab_subscript3_share1 ;
assign output_share2 =  ab_subscript3_share2 ;
assign output_share3 =  ab_subscript3_share3 ;
assign output_share4 =  ab_subscript3_share4 ;




endmodule
