`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Second-Order Masked Four-Input Boolean Function
// Module Name: fourinput_andgate_secondorder
// Description: Implements a second-order masked toy example for illustrating 
//              area-latency trade-offs using a four-input boolean function.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module trade_off_second_order_toyexample (clk, rand_bit, input_share1, input_share2, input_share3, output_share1, output_share2, output_share3);

input clk;
input [33:1] rand_bit;
input [4:1] input_share1;
input [4:1] input_share2;
input [4:1] input_share3;
output output_share1;
output output_share2;
output output_share3;

wire a_share1 , b_share1 , c_share1, d_share1;
wire a_share2 , b_share2 , c_share2, d_share2;
wire a_share3 , b_share3 , c_share3, d_share3;

assign a_share1 = input_share1[1] ;
assign b_share1 = input_share1[2] ;
assign c_share1 = input_share1[3] ;
assign d_share1 = input_share1[4] ;

assign a_share2 = input_share2[1] ;
assign b_share2 = input_share2[2] ;
assign c_share2 = input_share2[3] ;
assign d_share2 = input_share2[4] ;


assign a_share3 = input_share3[1] ;
assign b_share3 = input_share3[2] ;
assign c_share3 = input_share3[3] ;
assign d_share3 = input_share3[4] ;

wire output_ab_share1, output_ab_share2, output_ab_share3,  output_a_share1, output_a_share2, output_a_share3,  output_b_share1, output_b_share2, output_b_share3;
wire output_cd_share1, output_cd_share2, output_cd_share3,  output_c_share1, output_c_share2, output_c_share3,  output_d_share1, output_d_share2, output_d_share3;

timesharing_andgate_2ndorder inst1(clk, rand_bit[9:1], rand_bit[15:10],   {a_share1, b_share1}, {a_share2, b_share2}, {a_share3, b_share3},  output_ab_share1, output_ab_share2, output_ab_share3,  output_a_share1, output_a_share2, output_a_share3,  output_b_share1, output_b_share2, output_b_share3);
timesharing_andgate_2ndorder inst2(clk, rand_bit[24:16], rand_bit[30:25], {c_share1, d_share1}, {c_share2, d_share2}, {c_share3, d_share3},  output_cd_share1, output_cd_share2, output_cd_share3,  output_c_share1, output_c_share2, output_c_share3,  output_d_share1, output_d_share2, output_d_share3);

///////

// a + d + ab + ac + bc + cd + abc + acd  + abcd


wire o1_00, o1_01, o1_02 ;
wire o1_10, o1_11, o1_12 ;
wire o1_20, o1_21, o1_22 ;

assign o1_00 = output_a_share1 ^ output_d_share1 ^  output_ab_share1  ^ output_a_share1 & output_c_share1 ^ output_b_share1 & output_c_share1 ^  output_cd_share1 ^ output_ab_share1 & output_c_share1 ^ output_a_share1 & output_cd_share1 ^ output_ab_share1 & output_cd_share1  ;
assign o1_01 =                                                          output_a_share1 & output_c_share2 ^ output_b_share1 & output_c_share2                     ^ output_ab_share1 & output_c_share2 ^ output_a_share1 & output_cd_share2 ^ output_ab_share1 & output_cd_share2  ;
assign o1_02 =                                                          output_a_share1 & output_c_share3 ^ output_b_share1 & output_c_share3                     ^ output_ab_share1 & output_c_share3 ^ output_a_share1 & output_cd_share3 ^ output_ab_share1 & output_cd_share3  ;
assign o1_10 =                                                          output_a_share2 & output_c_share1 ^ output_b_share2 & output_c_share1                     ^ output_ab_share2 & output_c_share1 ^ output_a_share2 & output_cd_share1 ^ output_ab_share2 & output_cd_share1  ;
assign o1_11 = output_a_share2 ^ output_d_share2 ^  output_ab_share2  ^ output_a_share2 & output_c_share2 ^ output_b_share2 & output_c_share2 ^  output_cd_share2 ^ output_ab_share2 & output_c_share2 ^ output_a_share2 & output_cd_share2 ^ output_ab_share2 & output_cd_share2  ;
assign o1_12 =                                                          output_a_share2 & output_c_share3 ^ output_b_share2 & output_c_share3                     ^ output_ab_share2 & output_c_share3 ^ output_a_share2 & output_cd_share3 ^ output_ab_share2 & output_cd_share3  ;
assign o1_20 =                                                          output_a_share3 & output_c_share1 ^ output_b_share3 & output_c_share1                     ^ output_ab_share3 & output_c_share1 ^ output_a_share3 & output_cd_share1 ^ output_ab_share3 & output_cd_share1  ;
assign o1_21 =                                                          output_a_share3 & output_c_share2 ^ output_b_share3 & output_c_share2                     ^ output_ab_share3 & output_c_share2 ^ output_a_share3 & output_cd_share2 ^ output_ab_share3 & output_cd_share2  ;
assign o1_22 = output_a_share3 ^ output_d_share3 ^  output_ab_share3  ^ output_a_share3 & output_c_share3 ^ output_b_share3 & output_c_share3 ^  output_cd_share3 ^ output_ab_share3 & output_c_share3 ^ output_a_share3 & output_cd_share3 ^ output_ab_share3 & output_cd_share3  ;

reg o1_00_reg, o1_01_reg, o1_02_reg ;
reg o1_10_reg, o1_11_reg, o1_12_reg ;
reg o1_20_reg, o1_21_reg, o1_22_reg ;

always@(posedge clk)
begin
    o1_00_reg <= o1_00  ; 
    o1_01_reg <= o1_01 ^ rand_bit[31] ; 
    o1_02_reg <= o1_02 ^ rand_bit[32] ; 
    o1_10_reg <= o1_10 ^ rand_bit[31] ; 
    o1_11_reg <= o1_11  ; 
    o1_12_reg <= o1_12 ^ rand_bit[33] ; 
    o1_20_reg <= o1_20 ^ rand_bit[32] ; 
    o1_21_reg <= o1_21 ^ rand_bit[33] ; 
    o1_22_reg <= o1_22  ; 

end


assign output_share1 = o1_00_reg ^ o1_01_reg ^ o1_02_reg ;
assign output_share2 = o1_10_reg ^ o1_11_reg ^ o1_12_reg ;
assign output_share3 = o1_20_reg ^ o1_21_reg ^ o1_22_reg ;



endmodule
