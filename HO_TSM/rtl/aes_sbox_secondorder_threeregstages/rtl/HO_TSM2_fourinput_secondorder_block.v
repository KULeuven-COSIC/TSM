`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Higher-Order TSM
// Module Name: HO_TSM2_fourinput_secondorder_block
// Description: Implements the higher-order time-sharing module with three input shares and computes  
//              cross-product values to be used in CrossMult_d.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module HO_TSM2_fourinput_secondorder_block (clk, 
rand_bit_cycle1, rand_bit_cycle2, 
a_input_share1, b_input_share1, c_input_share1, d_input_share1, 
a_input_share2, b_input_share2, c_input_share2, d_input_share2, 
a_input_share3, b_input_share3, c_input_share3, d_input_share3, 
output_a_share1, output_b_share1, output_c_share1, output_d_share1, output_ab_share1, output_ac_share1, output_ad_share1, output_bc_share1, output_bd_share1, output_cd_share1, output_abc_share1, output_abd_share1, output_acd_share1, output_bcd_share1, output_abcd_share1 ,    
output_a_share2, output_b_share2, output_c_share2, output_d_share2, output_ab_share2, output_ac_share2, output_ad_share2, output_bc_share2, output_bd_share2, output_cd_share2, output_abc_share2, output_abd_share2, output_acd_share2, output_bcd_share2, output_abcd_share2 ,
output_a_share3, output_b_share3, output_c_share3, output_d_share3, output_ab_share3, output_ac_share3, output_ad_share3, output_bc_share3, output_bd_share3, output_cd_share3, output_abc_share3, output_abd_share3, output_acd_share3, output_bcd_share3, output_abcd_share3 
);

input clk;
input [27:1] rand_bit_cycle1;
input [30:1] rand_bit_cycle2;

input a_input_share1, b_input_share1, c_input_share1, d_input_share1;
input a_input_share2, b_input_share2, c_input_share2, d_input_share2;
input a_input_share3, b_input_share3, c_input_share3, d_input_share3;
output output_a_share1, output_b_share1, output_c_share1, output_d_share1, output_ab_share1, output_ac_share1, output_ad_share1, output_bc_share1, output_bd_share1, output_cd_share1, output_abc_share1, output_abd_share1, output_acd_share1, output_bcd_share1, output_abcd_share1 ;    
output output_a_share2, output_b_share2, output_c_share2, output_d_share2, output_ab_share2, output_ac_share2, output_ad_share2, output_bc_share2, output_bd_share2, output_cd_share2, output_abc_share2, output_abd_share2, output_acd_share2, output_bcd_share2, output_abcd_share2 ;
output output_a_share3, output_b_share3, output_c_share3, output_d_share3, output_ab_share3, output_ac_share3, output_ad_share3, output_bc_share3, output_bd_share3, output_cd_share3, output_abc_share3, output_abd_share3, output_acd_share3, output_bcd_share3, output_abcd_share3 ;

// Composable Security
wire [12:1] rand_composable_bit;
assign rand_composable_bit = rand_bit_cycle1[12:1];

wire a_share0, b_share0, c_share0, d_share0;
wire a_share1, b_share1, c_share1, d_share1;
wire a_share2, b_share2, c_share2, d_share2;

assign a_share0 = a_input_share1  ^ rand_composable_bit[1] ^ rand_composable_bit[9]   ;
assign b_share0 = b_input_share1  ^ rand_composable_bit[2] ^ rand_composable_bit[10]   ;
assign c_share0 = c_input_share1  ^ rand_composable_bit[3] ^ rand_composable_bit[11]   ;
assign d_share0 = d_input_share1  ^ rand_composable_bit[4] ^ rand_composable_bit[12]   ;

assign a_share1 = a_input_share2  ^ rand_composable_bit[5] ^ rand_composable_bit[9]   ;
assign b_share1 = b_input_share2  ^ rand_composable_bit[6] ^ rand_composable_bit[10]   ;
assign c_share1 = c_input_share2  ^ rand_composable_bit[7] ^ rand_composable_bit[11]   ;
assign d_share1 = d_input_share2  ^ rand_composable_bit[8] ^ rand_composable_bit[12]   ;

assign a_share2 = a_input_share3  ^ rand_composable_bit[1] ^ rand_composable_bit[5]   ;
assign b_share2 = b_input_share3  ^ rand_composable_bit[2] ^ rand_composable_bit[6]   ;
assign c_share2 = c_input_share3  ^ rand_composable_bit[3] ^ rand_composable_bit[7]   ;
assign d_share2 = d_input_share3  ^ rand_composable_bit[4] ^ rand_composable_bit[8]   ;

// Stage 1

wire [15:1] rand_bit_stage1 ;
assign rand_bit_stage1 = rand_bit_cycle1[27:13];



wire a0_stage1_share1      , b0_stage1_share1      , c0_stage1_share1      , d0_stage1_share1      , a0b0_stage1_share1    , a0c0_stage1_share1    , a0d0_stage1_share1    , b0c0_stage1_share1    , b0d0_stage1_share1    , c0d0_stage1_share1    , a0b0c0_stage1_share1  , a0b0d0_stage1_share1  , a0c0d0_stage1_share1  , b0c0d0_stage1_share1  , a0b0c0d0_stage1_share1 ;
wire a0_stage1_share2      , b0_stage1_share2      , c0_stage1_share2      , d0_stage1_share2      , a0b0_stage1_share2    , a0c0_stage1_share2    , a0d0_stage1_share2    , b0c0_stage1_share2    , b0d0_stage1_share2    , c0d0_stage1_share2    , a0b0c0_stage1_share2  , a0b0d0_stage1_share2  , a0c0d0_stage1_share2  , b0c0d0_stage1_share2  , a0b0c0d0_stage1_share2 ;

assign a0_stage1_share1       = a_share0                                      ^ rand_bit_stage1[1]  ;
assign b0_stage1_share1       = b_share0                                      ^ rand_bit_stage1[2]  ;
assign c0_stage1_share1       = c_share0                                      ^ rand_bit_stage1[3]  ;
assign d0_stage1_share1       = d_share0                                      ^ rand_bit_stage1[4]  ;
assign a0b0_stage1_share1     = a_share0 & b_share0                           ^ rand_bit_stage1[5]  ;
assign a0c0_stage1_share1     = a_share0 & c_share0                           ^ rand_bit_stage1[6]  ;
assign a0d0_stage1_share1     = a_share0 & d_share0                           ^ rand_bit_stage1[7]  ;
assign b0c0_stage1_share1     = b_share0 & c_share0                           ^ rand_bit_stage1[8]  ;
assign b0d0_stage1_share1     = b_share0 & d_share0                           ^ rand_bit_stage1[9]  ;
assign c0d0_stage1_share1     = c_share0 & d_share0                           ^ rand_bit_stage1[10] ;
assign a0b0c0_stage1_share1   = a_share0 & b_share0 & c_share0                ^ rand_bit_stage1[11] ;
assign a0b0d0_stage1_share1   = a_share0 & b_share0 & d_share0                ^ rand_bit_stage1[12] ;
assign a0c0d0_stage1_share1   = a_share0 & c_share0 & d_share0                ^ rand_bit_stage1[13] ;
assign b0c0d0_stage1_share1   = b_share0 & c_share0 & d_share0                ^ rand_bit_stage1[14] ;
assign a0b0c0d0_stage1_share1 = a_share0 & b_share0 & c_share0 & d_share0     ^ rand_bit_stage1[15] ;

assign a0_stage1_share2       = rand_bit_stage1[1]  ;
assign b0_stage1_share2       = rand_bit_stage1[2]  ;
assign c0_stage1_share2       = rand_bit_stage1[3]  ;
assign d0_stage1_share2       = rand_bit_stage1[4]  ;
assign a0b0_stage1_share2     = rand_bit_stage1[5]  ;
assign a0c0_stage1_share2     = rand_bit_stage1[6]  ;
assign a0d0_stage1_share2     = rand_bit_stage1[7]  ;
assign b0c0_stage1_share2     = rand_bit_stage1[8]  ;
assign b0d0_stage1_share2     = rand_bit_stage1[9]  ;
assign c0d0_stage1_share2     = rand_bit_stage1[10] ;
assign a0b0c0_stage1_share2   = rand_bit_stage1[11] ;
assign a0b0d0_stage1_share2   = rand_bit_stage1[12] ;
assign a0c0d0_stage1_share2   = rand_bit_stage1[13] ;
assign b0c0d0_stage1_share2   = rand_bit_stage1[14] ;
assign a0b0c0d0_stage1_share2 = rand_bit_stage1[15] ;

register_array_15bit reg_stage1_share1(clk , a0_stage1_share1       , b0_stage1_share1       , c0_stage1_share1       , d0_stage1_share1       , a0b0_stage1_share1     , a0c0_stage1_share1     , a0d0_stage1_share1     , b0c0_stage1_share1     , b0d0_stage1_share1     , c0d0_stage1_share1     , a0b0c0_stage1_share1   , a0b0d0_stage1_share1   , a0c0d0_stage1_share1   , b0c0d0_stage1_share1   , a0b0c0d0_stage1_share1 , a0_stage1_share1_reg        , b0_stage1_share1_reg        , c0_stage1_share1_reg        , d0_stage1_share1_reg        , a0b0_stage1_share1_reg      , a0c0_stage1_share1_reg      , a0d0_stage1_share1_reg      , b0c0_stage1_share1_reg      , b0d0_stage1_share1_reg      , c0d0_stage1_share1_reg      , a0b0c0_stage1_share1_reg    , a0b0d0_stage1_share1_reg    , a0c0d0_stage1_share1_reg    , b0c0d0_stage1_share1_reg    , a0b0c0d0_stage1_share1_reg  );
register_array_15bit reg_stage1_share2(clk , a0_stage1_share2       , b0_stage1_share2       , c0_stage1_share2       , d0_stage1_share2       , a0b0_stage1_share2     , a0c0_stage1_share2     , a0d0_stage1_share2     , b0c0_stage1_share2     , b0d0_stage1_share2     , c0d0_stage1_share2     , a0b0c0_stage1_share2   , a0b0d0_stage1_share2   , a0c0d0_stage1_share2   , b0c0d0_stage1_share2   , a0b0c0d0_stage1_share2 , a0_stage1_share2_reg        , b0_stage1_share2_reg        , c0_stage1_share2_reg        , d0_stage1_share2_reg        , a0b0_stage1_share2_reg      , a0c0_stage1_share2_reg      , a0d0_stage1_share2_reg      , b0c0_stage1_share2_reg      , b0d0_stage1_share2_reg      , c0d0_stage1_share2_reg      , a0b0c0_stage1_share2_reg    , a0b0d0_stage1_share2_reg    , a0c0d0_stage1_share2_reg    , b0c0d0_stage1_share2_reg    , a0b0c0d0_stage1_share2_reg  );

register_array_4bit first_cycle_reg1(
    clk,
    a_share1, b_share1, c_share1, d_share1,
    a_pipelined_share1_reg, b_pipelined_share1_reg, c_pipelined_share1_reg, d_pipelined_share1_reg
);

register_array_4bit first_cycle_reg2(
    clk,
    a_share2, b_share2, c_share2, d_share2,
    a_pipelined_share2_reg, b_pipelined_share2_reg, c_pipelined_share2_reg, d_pipelined_share2_reg
);



wire [15:1] rand_bit_stage2a ;
assign rand_bit_stage2a = rand_bit_cycle2[15:1];
wire [15:1] rand_bit_stage2b ;
assign rand_bit_stage2b = rand_bit_cycle2[30:16];

fourinput_oneshare_allproducts stage1_share1(
    a0_stage1_share1_reg       , b0_stage1_share1_reg       , c0_stage1_share1_reg       , d0_stage1_share1_reg       , a0b0_stage1_share1_reg     , a0c0_stage1_share1_reg     , a0d0_stage1_share1_reg     , b0c0_stage1_share1_reg     , b0d0_stage1_share1_reg     , c0d0_stage1_share1_reg     , a0b0c0_stage1_share1_reg   , a0b0d0_stage1_share1_reg   , a0c0d0_stage1_share1_reg   , b0c0d0_stage1_share1_reg   , a0b0c0d0_stage1_share1_reg ,
    a_pipelined_share1_reg, b_pipelined_share1_reg, c_pipelined_share1_reg, d_pipelined_share1_reg ,
	output_a_stage1_share1, output_b_stage1_share1, output_c_stage1_share1, output_d_stage1_share1, output_ab_stage1_share1, output_ac_stage1_share1, output_ad_stage1_share1, output_bc_stage1_share1, output_bd_stage1_share1, output_cd_stage1_share1, output_abc_stage1_share1, output_abd_stage1_share1, output_acd_stage1_share1, output_bcd_stage1_share1, output_abcd_stage1_share1     
    );

fourinput_oneshare_allproducts stage1_share2(
    a0_stage1_share2_reg       , b0_stage1_share2_reg       , c0_stage1_share2_reg       , d0_stage1_share2_reg       , a0b0_stage1_share2_reg     , a0c0_stage1_share2_reg     , a0d0_stage1_share2_reg     , b0c0_stage1_share2_reg     , b0d0_stage1_share2_reg     , c0d0_stage1_share2_reg     , a0b0c0_stage1_share2_reg   , a0b0d0_stage1_share2_reg   , a0c0d0_stage1_share2_reg   , b0c0d0_stage1_share2_reg   , a0b0c0d0_stage1_share2_reg ,
    a_pipelined_share1_reg, b_pipelined_share1_reg, c_pipelined_share1_reg, d_pipelined_share1_reg ,
	output_a_stage1_share2, output_b_stage1_share2, output_c_stage1_share2, output_d_stage1_share2, output_ab_stage1_share2, output_ac_stage1_share2, output_ad_stage1_share2, output_bc_stage1_share2, output_bd_stage1_share2, output_cd_stage1_share2, output_abc_stage1_share2, output_abd_stage1_share2, output_acd_stage1_share2, output_bcd_stage1_share2, output_abcd_stage1_share2     
    );



wire wire_output_a_stage1_share1    , wire_output_b_stage1_share1    , wire_output_c_stage1_share1    , wire_output_d_stage1_share1    , wire_output_ab_stage1_share1   , wire_output_ac_stage1_share1   , wire_output_ad_stage1_share1   , wire_output_bc_stage1_share1   , wire_output_bd_stage1_share1   , wire_output_cd_stage1_share1   , wire_output_abc_stage1_share1  , wire_output_abd_stage1_share1  , wire_output_acd_stage1_share1  , wire_output_bcd_stage1_share1  , wire_output_abcd_stage1_share1 ;
wire wire_output_a_stage1_share2    , wire_output_b_stage1_share2    , wire_output_c_stage1_share2    , wire_output_d_stage1_share2    , wire_output_ab_stage1_share2   , wire_output_ac_stage1_share2   , wire_output_ad_stage1_share2   , wire_output_bc_stage1_share2   , wire_output_bd_stage1_share2   , wire_output_cd_stage1_share2   , wire_output_abc_stage1_share2  , wire_output_abd_stage1_share2  , wire_output_acd_stage1_share2  , wire_output_bcd_stage1_share2  , wire_output_abcd_stage1_share2 ;
wire wire_output_a_stage1_share3    , wire_output_b_stage1_share3    , wire_output_c_stage1_share3    , wire_output_d_stage1_share3    , wire_output_ab_stage1_share3   , wire_output_ac_stage1_share3   , wire_output_ad_stage1_share3   , wire_output_bc_stage1_share3   , wire_output_bd_stage1_share3   , wire_output_cd_stage1_share3   , wire_output_abc_stage1_share3  , wire_output_abd_stage1_share3  , wire_output_acd_stage1_share3  , wire_output_bcd_stage1_share3  , wire_output_abcd_stage1_share3 ;

assign wire_output_a_stage1_share1     = output_a_stage1_share1    ^ rand_bit_stage2a[1]  ;
assign wire_output_b_stage1_share1     = output_b_stage1_share1    ^ rand_bit_stage2a[2]  ;
assign wire_output_c_stage1_share1     = output_c_stage1_share1    ^ rand_bit_stage2a[3]  ;
assign wire_output_d_stage1_share1     = output_d_stage1_share1    ^ rand_bit_stage2a[4]  ;
assign wire_output_ab_stage1_share1    = output_ab_stage1_share1   ^ rand_bit_stage2a[5]  ;  
assign wire_output_ac_stage1_share1    = output_ac_stage1_share1   ^ rand_bit_stage2a[6]  ;  
assign wire_output_ad_stage1_share1    = output_ad_stage1_share1   ^ rand_bit_stage2a[7]  ;           
assign wire_output_bc_stage1_share1    = output_bc_stage1_share1   ^ rand_bit_stage2a[8]  ;           
assign wire_output_bd_stage1_share1    = output_bd_stage1_share1   ^ rand_bit_stage2a[9]  ;       
assign wire_output_cd_stage1_share1    = output_cd_stage1_share1   ^ rand_bit_stage2a[10] ;              
assign wire_output_abc_stage1_share1   = output_abc_stage1_share1  ^ rand_bit_stage2a[11] ;      
assign wire_output_abd_stage1_share1   = output_abd_stage1_share1  ^ rand_bit_stage2a[12] ;      
assign wire_output_acd_stage1_share1   = output_acd_stage1_share1  ^ rand_bit_stage2a[13] ;      
assign wire_output_bcd_stage1_share1   = output_bcd_stage1_share1  ^ rand_bit_stage2a[14] ;      
assign wire_output_abcd_stage1_share1  = output_abcd_stage1_share1 ^ rand_bit_stage2a[15] ;   

assign wire_output_a_stage1_share2     = output_a_stage1_share2    ^ a_pipelined_share1_reg                                                                             ^ rand_bit_stage2b[1]  ;
assign wire_output_b_stage1_share2     = output_b_stage1_share2    ^ b_pipelined_share1_reg                                                                             ^ rand_bit_stage2b[2]  ;
assign wire_output_c_stage1_share2     = output_c_stage1_share2    ^ c_pipelined_share1_reg                                                                             ^ rand_bit_stage2b[3]  ;
assign wire_output_d_stage1_share2     = output_d_stage1_share2    ^ d_pipelined_share1_reg                                                                             ^ rand_bit_stage2b[4]  ;
assign wire_output_ab_stage1_share2    = output_ab_stage1_share2   ^ a_pipelined_share1_reg & b_pipelined_share1_reg                                                    ^ rand_bit_stage2b[5]  ;  
assign wire_output_ac_stage1_share2    = output_ac_stage1_share2   ^ a_pipelined_share1_reg & c_pipelined_share1_reg                                                    ^ rand_bit_stage2b[6]  ;  
assign wire_output_ad_stage1_share2    = output_ad_stage1_share2   ^ a_pipelined_share1_reg & d_pipelined_share1_reg                                                    ^ rand_bit_stage2b[7]  ;           
assign wire_output_bc_stage1_share2    = output_bc_stage1_share2   ^ b_pipelined_share1_reg & c_pipelined_share1_reg                                                    ^ rand_bit_stage2b[8]  ;           
assign wire_output_bd_stage1_share2    = output_bd_stage1_share2   ^ b_pipelined_share1_reg & d_pipelined_share1_reg                                                    ^ rand_bit_stage2b[9]  ;       
assign wire_output_cd_stage1_share2    = output_cd_stage1_share2   ^ c_pipelined_share1_reg & d_pipelined_share1_reg                                                    ^ rand_bit_stage2b[10] ;              
assign wire_output_abc_stage1_share2   = output_abc_stage1_share2  ^ a_pipelined_share1_reg & b_pipelined_share1_reg & c_pipelined_share1_reg                           ^ rand_bit_stage2b[11] ;      
assign wire_output_abd_stage1_share2   = output_abd_stage1_share2  ^ a_pipelined_share1_reg & b_pipelined_share1_reg & d_pipelined_share1_reg                           ^ rand_bit_stage2b[12] ;      
assign wire_output_acd_stage1_share2   = output_acd_stage1_share2  ^ a_pipelined_share1_reg & c_pipelined_share1_reg & d_pipelined_share1_reg                           ^ rand_bit_stage2b[13] ;      
assign wire_output_bcd_stage1_share2   = output_bcd_stage1_share2  ^ b_pipelined_share1_reg & c_pipelined_share1_reg & d_pipelined_share1_reg                           ^ rand_bit_stage2b[14] ;      
assign wire_output_abcd_stage1_share2  = output_abcd_stage1_share2 ^ a_pipelined_share1_reg & b_pipelined_share1_reg & c_pipelined_share1_reg & d_pipelined_share1_reg  ^ rand_bit_stage2b[15] ;   

assign wire_output_a_stage1_share3     = rand_bit_stage2b[1]   ^ rand_bit_stage2a[1]  ;
assign wire_output_b_stage1_share3     = rand_bit_stage2b[2]   ^ rand_bit_stage2a[2]  ;
assign wire_output_c_stage1_share3     = rand_bit_stage2b[3]   ^ rand_bit_stage2a[3]  ;
assign wire_output_d_stage1_share3     = rand_bit_stage2b[4]   ^ rand_bit_stage2a[4]  ;
assign wire_output_ab_stage1_share3    = rand_bit_stage2b[5]   ^ rand_bit_stage2a[5]  ;  
assign wire_output_ac_stage1_share3    = rand_bit_stage2b[6]   ^ rand_bit_stage2a[6]  ;  
assign wire_output_ad_stage1_share3    = rand_bit_stage2b[7]   ^ rand_bit_stage2a[7]  ;           
assign wire_output_bc_stage1_share3    = rand_bit_stage2b[8]   ^ rand_bit_stage2a[8]  ;           
assign wire_output_bd_stage1_share3    = rand_bit_stage2b[9]   ^ rand_bit_stage2a[9]  ;       
assign wire_output_cd_stage1_share3    = rand_bit_stage2b[10]  ^ rand_bit_stage2a[10] ;              
assign wire_output_abc_stage1_share3   = rand_bit_stage2b[11]  ^ rand_bit_stage2a[11] ;      
assign wire_output_abd_stage1_share3   = rand_bit_stage2b[12]  ^ rand_bit_stage2a[12] ;      
assign wire_output_acd_stage1_share3   = rand_bit_stage2b[13]  ^ rand_bit_stage2a[13] ;      
assign wire_output_bcd_stage1_share3   = rand_bit_stage2b[14]  ^ rand_bit_stage2a[14] ;      
assign wire_output_abcd_stage1_share3  = rand_bit_stage2b[15]  ^ rand_bit_stage2a[15] ;   



register_array_15bit reg_stage2_share1(clk , wire_output_a_stage1_share1   , wire_output_b_stage1_share1   , wire_output_c_stage1_share1   , wire_output_d_stage1_share1   , wire_output_ab_stage1_share1  , wire_output_ac_stage1_share1  , wire_output_ad_stage1_share1  , wire_output_bc_stage1_share1  , wire_output_bd_stage1_share1  , wire_output_cd_stage1_share1  , wire_output_abc_stage1_share1 , wire_output_abd_stage1_share1 , wire_output_acd_stage1_share1 , wire_output_bcd_stage1_share1 , wire_output_abcd_stage1_share1 , reg_output_a_stage1_share1    , reg_output_b_stage1_share1    , reg_output_c_stage1_share1    , reg_output_d_stage1_share1    , reg_output_ab_stage1_share1   , reg_output_ac_stage1_share1   , reg_output_ad_stage1_share1   , reg_output_bc_stage1_share1   , reg_output_bd_stage1_share1   , reg_output_cd_stage1_share1   , reg_output_abc_stage1_share1  , reg_output_abd_stage1_share1  , reg_output_acd_stage1_share1  , reg_output_bcd_stage1_share1  , reg_output_abcd_stage1_share1 );
register_array_15bit reg_stage2_share2(clk , wire_output_a_stage1_share2   , wire_output_b_stage1_share2   , wire_output_c_stage1_share2   , wire_output_d_stage1_share2   , wire_output_ab_stage1_share2  , wire_output_ac_stage1_share2  , wire_output_ad_stage1_share2  , wire_output_bc_stage1_share2  , wire_output_bd_stage1_share2  , wire_output_cd_stage1_share2  , wire_output_abc_stage1_share2 , wire_output_abd_stage1_share2 , wire_output_acd_stage1_share2 , wire_output_bcd_stage1_share2 , wire_output_abcd_stage1_share2 , reg_output_a_stage1_share2    , reg_output_b_stage1_share2    , reg_output_c_stage1_share2    , reg_output_d_stage1_share2    , reg_output_ab_stage1_share2   , reg_output_ac_stage1_share2   , reg_output_ad_stage1_share2   , reg_output_bc_stage1_share2   , reg_output_bd_stage1_share2   , reg_output_cd_stage1_share2   , reg_output_abc_stage1_share2  , reg_output_abd_stage1_share2  , reg_output_acd_stage1_share2  , reg_output_bcd_stage1_share2  , reg_output_abcd_stage1_share2 );
register_array_15bit reg_stage2_share3(clk , wire_output_a_stage1_share3   , wire_output_b_stage1_share3   , wire_output_c_stage1_share3   , wire_output_d_stage1_share3   , wire_output_ab_stage1_share3  , wire_output_ac_stage1_share3  , wire_output_ad_stage1_share3  , wire_output_bc_stage1_share3  , wire_output_bd_stage1_share3  , wire_output_cd_stage1_share3  , wire_output_abc_stage1_share3 , wire_output_abd_stage1_share3 , wire_output_acd_stage1_share3 , wire_output_bcd_stage1_share3 , wire_output_abcd_stage1_share3 , reg_output_a_stage1_share3    , reg_output_b_stage1_share3    , reg_output_c_stage1_share3    , reg_output_d_stage1_share3    , reg_output_ab_stage1_share3   , reg_output_ac_stage1_share3   , reg_output_ad_stage1_share3   , reg_output_bc_stage1_share3   , reg_output_bd_stage1_share3   , reg_output_cd_stage1_share3   , reg_output_abc_stage1_share3  , reg_output_abd_stage1_share3  , reg_output_acd_stage1_share3  , reg_output_bcd_stage1_share3  , reg_output_abcd_stage1_share3 );



register_array_4bit second_cycle_reg2(
    clk,
    a_pipelined_share2_reg, b_pipelined_share2_reg, c_pipelined_share2_reg, d_pipelined_share2_reg ,
    a_pipelined2_share2_reg, b_pipelined2_share2_reg, c_pipelined2_share2_reg, d_pipelined2_share2_reg
);



fourinput_oneshare_allproducts stage2_share1(
    reg_output_a_stage1_share1    ,reg_output_b_stage1_share1    ,reg_output_c_stage1_share1    ,reg_output_d_stage1_share1    ,reg_output_ab_stage1_share1   ,reg_output_ac_stage1_share1   ,reg_output_ad_stage1_share1   ,reg_output_bc_stage1_share1   ,reg_output_bd_stage1_share1   ,reg_output_cd_stage1_share1   ,reg_output_abc_stage1_share1  ,reg_output_abd_stage1_share1  ,reg_output_acd_stage1_share1  ,reg_output_bcd_stage1_share1  ,reg_output_abcd_stage1_share1 ,
    a_pipelined2_share2_reg, b_pipelined2_share2_reg, c_pipelined2_share2_reg, d_pipelined2_share2_reg ,
	output_a_stage2_share1, output_b_stage2_share1, output_c_stage2_share1, output_d_stage2_share1, output_ab_stage2_share1, output_ac_stage2_share1, output_ad_stage2_share1, output_bc_stage2_share1, output_bd_stage2_share1, output_cd_stage2_share1, output_abc_stage2_share1, output_abd_stage2_share1, output_acd_stage2_share1, output_bcd_stage2_share1, output_abcd_stage2_share1     
    );

fourinput_oneshare_allproducts stage2_share2(
    reg_output_a_stage1_share2    ,reg_output_b_stage1_share2    ,reg_output_c_stage1_share2    ,reg_output_d_stage1_share2    ,reg_output_ab_stage1_share2   ,reg_output_ac_stage1_share2   ,reg_output_ad_stage1_share2   ,reg_output_bc_stage1_share2   ,reg_output_bd_stage1_share2   ,reg_output_cd_stage1_share2   ,reg_output_abc_stage1_share2  ,reg_output_abd_stage1_share2  ,reg_output_acd_stage1_share2  ,reg_output_bcd_stage1_share2  ,reg_output_abcd_stage1_share2 ,
    a_pipelined2_share2_reg, b_pipelined2_share2_reg, c_pipelined2_share2_reg, d_pipelined2_share2_reg ,
	output_a_stage2_share2, output_b_stage2_share2, output_c_stage2_share2, output_d_stage2_share2, output_ab_stage2_share2, output_ac_stage2_share2, output_ad_stage2_share2, output_bc_stage2_share2, output_bd_stage2_share2, output_cd_stage2_share2, output_abc_stage2_share2, output_abd_stage2_share2, output_acd_stage2_share2, output_bcd_stage2_share2, output_abcd_stage2_share2     
    );

fourinput_oneshare_allproducts stage2_share3(
    reg_output_a_stage1_share3    ,reg_output_b_stage1_share3    ,reg_output_c_stage1_share3    ,reg_output_d_stage1_share3    ,reg_output_ab_stage1_share3   ,reg_output_ac_stage1_share3   ,reg_output_ad_stage1_share3   ,reg_output_bc_stage1_share3   ,reg_output_bd_stage1_share3   ,reg_output_cd_stage1_share3   ,reg_output_abc_stage1_share3  ,reg_output_abd_stage1_share3  ,reg_output_acd_stage1_share3  ,reg_output_bcd_stage1_share3  ,reg_output_abcd_stage1_share3 ,
    a_pipelined2_share2_reg, b_pipelined2_share2_reg, c_pipelined2_share2_reg, d_pipelined2_share2_reg ,
	output_a_stage2_share3, output_b_stage2_share3, output_c_stage2_share3, output_d_stage2_share3, output_ab_stage2_share3, output_ac_stage2_share3, output_ad_stage2_share3, output_bc_stage2_share3, output_bd_stage2_share3, output_cd_stage2_share3, output_abc_stage2_share3, output_abd_stage2_share3, output_acd_stage2_share3, output_bcd_stage2_share3, output_abcd_stage2_share3     
    );


assign output_a_share1     = output_a_stage2_share1    ;
assign output_b_share1     = output_b_stage2_share1    ;
assign output_c_share1     = output_c_stage2_share1    ;
assign output_d_share1     = output_d_stage2_share1    ;
assign output_ab_share1    = output_ab_stage2_share1   ;  
assign output_ac_share1    = output_ac_stage2_share1   ;  
assign output_ad_share1    = output_ad_stage2_share1   ;           
assign output_bc_share1    = output_bc_stage2_share1   ;           
assign output_bd_share1    = output_bd_stage2_share1   ;       
assign output_cd_share1    = output_cd_stage2_share1   ;              
assign output_abc_share1   = output_abc_stage2_share1  ;      
assign output_abd_share1   = output_abd_stage2_share1  ;      
assign output_acd_share1   = output_acd_stage2_share1  ;      
assign output_bcd_share1   = output_bcd_stage2_share1  ;      
assign output_abcd_share1  = output_abcd_stage2_share1 ;   

assign output_a_share2     = output_a_stage2_share2    ;
assign output_b_share2     = output_b_stage2_share2    ;
assign output_c_share2     = output_c_stage2_share2    ;
assign output_d_share2     = output_d_stage2_share2    ;
assign output_ab_share2    = output_ab_stage2_share2   ;  
assign output_ac_share2    = output_ac_stage2_share2   ;  
assign output_ad_share2    = output_ad_stage2_share2   ;           
assign output_bc_share2    = output_bc_stage2_share2   ;           
assign output_bd_share2    = output_bd_stage2_share2   ;       
assign output_cd_share2    = output_cd_stage2_share2   ;              
assign output_abc_share2   = output_abc_stage2_share2  ;      
assign output_abd_share2   = output_abd_stage2_share2  ;      
assign output_acd_share2   = output_acd_stage2_share2  ;      
assign output_bcd_share2   = output_bcd_stage2_share2  ;      
assign output_abcd_share2  = output_abcd_stage2_share2 ;   

assign output_a_share3     = output_a_stage2_share3    ^ a_pipelined2_share2_reg                                                                            ;
assign output_b_share3     = output_b_stage2_share3    ^ b_pipelined2_share2_reg                                                                            ;
assign output_c_share3     = output_c_stage2_share3    ^ c_pipelined2_share2_reg                                                                            ;
assign output_d_share3     = output_d_stage2_share3    ^ d_pipelined2_share2_reg                                                                            ;
assign output_ab_share3    = output_ab_stage2_share3   ^ a_pipelined2_share2_reg & b_pipelined2_share2_reg                                                   ;  
assign output_ac_share3    = output_ac_stage2_share3   ^ a_pipelined2_share2_reg & c_pipelined2_share2_reg                                                   ;  
assign output_ad_share3    = output_ad_stage2_share3   ^ a_pipelined2_share2_reg & d_pipelined2_share2_reg                                                   ;           
assign output_bc_share3    = output_bc_stage2_share3   ^ b_pipelined2_share2_reg & c_pipelined2_share2_reg                                                   ;           
assign output_bd_share3    = output_bd_stage2_share3   ^ b_pipelined2_share2_reg & d_pipelined2_share2_reg                                                   ;       
assign output_cd_share3    = output_cd_stage2_share3   ^ c_pipelined2_share2_reg & d_pipelined2_share2_reg                                                   ;              
assign output_abc_share3   = output_abc_stage2_share3  ^ a_pipelined2_share2_reg & b_pipelined2_share2_reg & c_pipelined2_share2_reg                          ;      
assign output_abd_share3   = output_abd_stage2_share3  ^ a_pipelined2_share2_reg & b_pipelined2_share2_reg & d_pipelined2_share2_reg                          ;      
assign output_acd_share3   = output_acd_stage2_share3  ^ a_pipelined2_share2_reg & c_pipelined2_share2_reg & d_pipelined2_share2_reg                          ;      
assign output_bcd_share3   = output_bcd_stage2_share3  ^ b_pipelined2_share2_reg & c_pipelined2_share2_reg & d_pipelined2_share2_reg                          ;      
assign output_abcd_share3  = output_abcd_stage2_share3 ^ a_pipelined2_share2_reg & b_pipelined2_share2_reg & c_pipelined2_share2_reg & d_pipelined2_share2_reg ;   

endmodule
