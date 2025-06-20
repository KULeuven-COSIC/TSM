`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: First-Order Trade-Off Example
// Module Name: trade_off_first_order_toyexample
// Description: Implements a first-order masked toy example for illustrating 
//              area-latency trade-offs using a four-input Boolean function.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module trade_off_first_order_toyexample (clk, rand_bit, input_share1, input_share2,  output_share1, output_share2);

input clk;
input [20:1] rand_bit;
input [4:1] input_share1;
input [4:1] input_share2;
output output_share1;
output output_share2;

wire a_share1 , b_share1 , c_share1, d_share1;
wire a_share2 , b_share2 , c_share2, d_share2;

assign a_share1 = input_share1[1] ;
assign b_share1 = input_share1[2] ;
assign c_share1 = input_share1[3] ;
assign d_share1 = input_share1[4] ;

assign a_share2 = input_share2[1] ;
assign b_share2 = input_share2[2] ;
assign c_share2 = input_share2[3] ;
assign d_share2 = input_share2[4] ;

wire output_ab_share1, output_ab_share2 ;
wire output_cd_share1, output_cd_share2 ;
wire output_a_share1, output_a_share2 ;
wire output_c_share1, output_c_share2 ;
wire output_b_share1, output_b_share2 ;
wire output_d_share1, output_d_share2 ;

timesharing_andgate_firstorder inst1  (clk, rand_bit[3:1], rand_bit[5:4],   {a_share1,b_share1},  {a_share2,b_share2} ,   output_ab_share1, output_ab_share2, output_a_share1, output_a_share2, output_b_share1, output_b_share2);
timesharing_andgate_firstorder inst2  (clk, rand_bit[8:6], rand_bit[10:9],  {c_share1,d_share1},  {c_share2,d_share2},    output_cd_share1, output_cd_share2, output_c_share1, output_c_share2, output_d_share1, output_d_share2);


/////////////////////

// a + d + ab + ac + bc + cd + abc + acd  + abcd


wire o1_00, o1_01, o1_10, o1_11 ;

assign o1_00 = output_a_share1 ^ output_d_share1 ^  output_ab_share1  ^ output_a_share1 & output_c_share1 ^ output_b_share1 & output_c_share1 ^  output_cd_share1 ^ output_ab_share1 & output_c_share1 ^ output_a_share1 & output_cd_share1 ^ output_ab_share1 & output_cd_share1  ;
assign o1_01 =                                                          output_a_share1 & output_c_share2 ^ output_b_share1 & output_c_share2                     ^ output_ab_share1 & output_c_share2 ^ output_a_share1 & output_cd_share2 ^ output_ab_share1 & output_cd_share2  ;
assign o1_10 =                                                          output_a_share2 & output_c_share1 ^ output_b_share2 & output_c_share1                     ^ output_ab_share2 & output_c_share1 ^ output_a_share2 & output_cd_share1 ^ output_ab_share2 & output_cd_share1  ;
assign o1_11 = output_a_share2 ^ output_d_share2 ^  output_ab_share2  ^ output_a_share2 & output_c_share2 ^ output_b_share2 & output_c_share2 ^  output_cd_share2 ^ output_ab_share2 & output_c_share2 ^ output_a_share2 & output_cd_share2 ^ output_ab_share2 & output_cd_share2  ;

reg o1_00_reg, o1_01_reg, o1_10_reg, o1_11_reg ;


always@(posedge clk)
begin
    o1_00_reg <=  o1_00;
    o1_01_reg <=  o1_01 ^ rand_bit[12];
    o1_10_reg <=  o1_10 ^ rand_bit[12];
    o1_11_reg <=  o1_11;
end


assign output_share1 = o1_00_reg ^ o1_01_reg;
assign output_share2 = o1_10_reg ^ o1_11_reg;

endmodule
