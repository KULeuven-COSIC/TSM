`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        COSIC, KU Leuven, Belgium
// Engineer:       Dilip Kumar S V
// Paper:          Higher-Order Time Sharing Masking
// Authors:        Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, 
//                 Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date:    02/22/2025
// Design Name:    Masked AES Key Schedule Operation
// Module Name:    aes_keyschedule
// Description:    Implements the key schedule for AES with masking, designed 
//                 to generate round keys for AES encryption. It uses two shares 
//                 for the key.
// Dependencies:    AES S-box, two-dimensional array and multiplexers for key 
//                 state handling.
// Revision:       0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module aes_keyschedule ( clk, reset, start,
rand_cycle1,rand_cycle2,
key_input_share1, key_input_share2,
output_round_key_share1,output_round_key_share2
);

input clk, reset,start;
input [152:1] rand_cycle1;
input [32:1] rand_cycle2;
input [128:1] key_input_share1;
input [128:1] key_input_share2;
output [128:1] output_round_key_share1;
output [128:1] output_round_key_share2;



wire [8:1] key_input_share1_row1_col1, key_input_share1_row1_col2, key_input_share1_row1_col3, key_input_share1_row1_col4, key_input_share1_row2_col1, key_input_share1_row2_col2, key_input_share1_row2_col3, key_input_share1_row2_col4, key_input_share1_row3_col1, key_input_share1_row3_col2, key_input_share1_row3_col3, key_input_share1_row3_col4, key_input_share1_row4_col1, key_input_share1_row4_col2, key_input_share1_row4_col3, key_input_share1_row4_col4 ;
wire [8:1] key_input_share2_row1_col1, key_input_share2_row1_col2, key_input_share2_row1_col3, key_input_share2_row1_col4, key_input_share2_row2_col1, key_input_share2_row2_col2, key_input_share2_row2_col3, key_input_share2_row2_col4, key_input_share2_row3_col1, key_input_share2_row3_col2, key_input_share2_row3_col3, key_input_share2_row3_col4, key_input_share2_row4_col1, key_input_share2_row4_col2, key_input_share2_row4_col3, key_input_share2_row4_col4 ;

wire [8:1] sbox_row1_input_share1, sbox_row2_input_share1, sbox_row3_input_share1, sbox_row4_input_share1 ;
wire [8:1] sbox_row1_input_share2, sbox_row2_input_share2, sbox_row3_input_share2, sbox_row4_input_share2 ;
wire [8:1] sbox_row1_output_share1, sbox_row2_output_share1, sbox_row3_output_share1, sbox_row4_output_share1 ;
wire [8:1] sbox_row1_output_share2, sbox_row2_output_share2, sbox_row3_output_share2, sbox_row4_output_share2 ;
reg select_sbox_input;
reg [8:1] round_constant;

two_dimension_array inst_two_dimension_array_share1(
key_input_share1,
key_input_share1_row1_col1, key_input_share1_row1_col2, key_input_share1_row1_col3, key_input_share1_row1_col4, key_input_share1_row2_col1, key_input_share1_row2_col2, key_input_share1_row2_col3, key_input_share1_row2_col4, key_input_share1_row3_col1, key_input_share1_row3_col2, key_input_share1_row3_col3, key_input_share1_row3_col4, key_input_share1_row4_col1, key_input_share1_row4_col2, key_input_share1_row4_col3, key_input_share1_row4_col4 
);
two_dimension_array inst_two_dimension_array_share2(
key_input_share2,
key_input_share2_row1_col1, key_input_share2_row1_col2, key_input_share2_row1_col3, key_input_share2_row1_col4, key_input_share2_row2_col1, key_input_share2_row2_col2, key_input_share2_row2_col3, key_input_share2_row2_col4, key_input_share2_row3_col1, key_input_share2_row3_col2, key_input_share2_row3_col3, key_input_share2_row3_col4, key_input_share2_row4_col1, key_input_share2_row4_col2, key_input_share2_row4_col3, key_input_share2_row4_col4 
);

// Key state registers

wire [8:1] input_state_share1_row1_col1, input_state_share1_row1_col2, input_state_share1_row1_col3, input_state_share1_row1_col4, input_state_share1_row2_col1, input_state_share1_row2_col2, input_state_share1_row2_col3, input_state_share1_row2_col4, input_state_share1_row3_col1, input_state_share1_row3_col2, input_state_share1_row3_col3, input_state_share1_row3_col4, input_state_share1_row4_col1, input_state_share1_row4_col2, input_state_share1_row4_col3, input_state_share1_row4_col4 ;
wire [8:1] input_state_share2_row1_col1, input_state_share2_row1_col2, input_state_share2_row1_col3, input_state_share2_row1_col4, input_state_share2_row2_col1, input_state_share2_row2_col2, input_state_share2_row2_col3, input_state_share2_row2_col4, input_state_share2_row3_col1, input_state_share2_row3_col2, input_state_share2_row3_col3, input_state_share2_row3_col4, input_state_share2_row4_col1, input_state_share2_row4_col2, input_state_share2_row4_col3, input_state_share2_row4_col4 ;
wire [8:1] state_reg_share1_row1_col1, state_reg_share1_row1_col2, state_reg_share1_row1_col3, state_reg_share1_row1_col4, state_reg_share1_row2_col1, state_reg_share1_row2_col2, state_reg_share1_row2_col3, state_reg_share1_row2_col4, state_reg_share1_row3_col1, state_reg_share1_row3_col2, state_reg_share1_row3_col3, state_reg_share1_row3_col4, state_reg_share1_row4_col1, state_reg_share1_row4_col2, state_reg_share1_row4_col3, state_reg_share1_row4_col4 ;
wire [8:1] state_reg_share2_row1_col1, state_reg_share2_row1_col2, state_reg_share2_row1_col3, state_reg_share2_row1_col4, state_reg_share2_row2_col1, state_reg_share2_row2_col2, state_reg_share2_row2_col3, state_reg_share2_row2_col4, state_reg_share2_row3_col1, state_reg_share2_row3_col2, state_reg_share2_row3_col3, state_reg_share2_row3_col4, state_reg_share2_row4_col1, state_reg_share2_row4_col2, state_reg_share2_row4_col3, state_reg_share2_row4_col4 ;
wire [8:1] next_state_share1_row1_col1, next_state_share1_row1_col2, next_state_share1_row1_col3, next_state_share1_row1_col4, next_state_share1_row2_col1, next_state_share1_row2_col2, next_state_share1_row2_col3, next_state_share1_row2_col4, next_state_share1_row3_col1, next_state_share1_row3_col2, next_state_share1_row3_col3, next_state_share1_row3_col4, next_state_share1_row4_col1, next_state_share1_row4_col2, next_state_share1_row4_col3, next_state_share1_row4_col4 ;
wire [8:1] next_state_share2_row1_col1, next_state_share2_row1_col2, next_state_share2_row1_col3, next_state_share2_row1_col4, next_state_share2_row2_col1, next_state_share2_row2_col2, next_state_share2_row2_col3, next_state_share2_row2_col4, next_state_share2_row3_col1, next_state_share2_row3_col2, next_state_share2_row3_col3, next_state_share2_row3_col4, next_state_share2_row4_col1, next_state_share2_row4_col2, next_state_share2_row4_col3, next_state_share2_row4_col4 ;


reg select_key_state_input;
reg enable_key_state_input;
two_dimension_mux inst_state_reg_share1_mux(
select_key_state_input, 
key_input_share1_row1_col1, key_input_share1_row1_col2, key_input_share1_row1_col3, key_input_share1_row1_col4, key_input_share1_row2_col1, key_input_share1_row2_col2, key_input_share1_row2_col3, key_input_share1_row2_col4, key_input_share1_row3_col1, key_input_share1_row3_col2, key_input_share1_row3_col3, key_input_share1_row3_col4, key_input_share1_row4_col1, key_input_share1_row4_col2, key_input_share1_row4_col3, key_input_share1_row4_col4 ,
next_state_share1_row1_col1, next_state_share1_row1_col2, next_state_share1_row1_col3, next_state_share1_row1_col4, next_state_share1_row2_col1, next_state_share1_row2_col2, next_state_share1_row2_col3, next_state_share1_row2_col4, next_state_share1_row3_col1, next_state_share1_row3_col2, next_state_share1_row3_col3, next_state_share1_row3_col4, next_state_share1_row4_col1, next_state_share1_row4_col2, next_state_share1_row4_col3, next_state_share1_row4_col4 ,
input_state_share1_row1_col1, input_state_share1_row1_col2, input_state_share1_row1_col3, input_state_share1_row1_col4, input_state_share1_row2_col1, input_state_share1_row2_col2, input_state_share1_row2_col3, input_state_share1_row2_col4, input_state_share1_row3_col1, input_state_share1_row3_col2, input_state_share1_row3_col3, input_state_share1_row3_col4, input_state_share1_row4_col1, input_state_share1_row4_col2, input_state_share1_row4_col3, input_state_share1_row4_col4 
);

two_dimension_mux inst_state_reg_share2_mux(
select_key_state_input, 
key_input_share2_row1_col1, key_input_share2_row1_col2, key_input_share2_row1_col3, key_input_share2_row1_col4, key_input_share2_row2_col1, key_input_share2_row2_col2, key_input_share2_row2_col3, key_input_share2_row2_col4, key_input_share2_row3_col1, key_input_share2_row3_col2, key_input_share2_row3_col3, key_input_share2_row3_col4, key_input_share2_row4_col1, key_input_share2_row4_col2, key_input_share2_row4_col3, key_input_share2_row4_col4 ,
next_state_share2_row1_col1, next_state_share2_row1_col2, next_state_share2_row1_col3, next_state_share2_row1_col4, next_state_share2_row2_col1, next_state_share2_row2_col2, next_state_share2_row2_col3, next_state_share2_row2_col4, next_state_share2_row3_col1, next_state_share2_row3_col2, next_state_share2_row3_col3, next_state_share2_row3_col4, next_state_share2_row4_col1, next_state_share2_row4_col2, next_state_share2_row4_col3, next_state_share2_row4_col4 ,
input_state_share2_row1_col1, input_state_share2_row1_col2, input_state_share2_row1_col3, input_state_share2_row1_col4, input_state_share2_row2_col1, input_state_share2_row2_col2, input_state_share2_row2_col3, input_state_share2_row2_col4, input_state_share2_row3_col1, input_state_share2_row3_col2, input_state_share2_row3_col3, input_state_share2_row3_col4, input_state_share2_row4_col1, input_state_share2_row4_col2, input_state_share2_row4_col3, input_state_share2_row4_col4 
);

reg_two_dimension_array inst_state_reg_share1( 
clk, enable_key_state_input, reset,
input_state_share1_row1_col1, input_state_share1_row1_col2, input_state_share1_row1_col3, input_state_share1_row1_col4, input_state_share1_row2_col1, input_state_share1_row2_col2, input_state_share1_row2_col3, input_state_share1_row2_col4, input_state_share1_row3_col1, input_state_share1_row3_col2, input_state_share1_row3_col3, input_state_share1_row3_col4, input_state_share1_row4_col1, input_state_share1_row4_col2, input_state_share1_row4_col3, input_state_share1_row4_col4 ,
state_reg_share1_row1_col1, state_reg_share1_row1_col2, state_reg_share1_row1_col3, state_reg_share1_row1_col4, state_reg_share1_row2_col1, state_reg_share1_row2_col2, state_reg_share1_row2_col3, state_reg_share1_row2_col4, state_reg_share1_row3_col1, state_reg_share1_row3_col2, state_reg_share1_row3_col3, state_reg_share1_row3_col4, state_reg_share1_row4_col1, state_reg_share1_row4_col2, state_reg_share1_row4_col3, state_reg_share1_row4_col4 
);

reg_two_dimension_array inst_state_reg_share2( 
clk, enable_key_state_input, reset,
input_state_share2_row1_col1, input_state_share2_row1_col2, input_state_share2_row1_col3, input_state_share2_row1_col4, input_state_share2_row2_col1, input_state_share2_row2_col2, input_state_share2_row2_col3, input_state_share2_row2_col4, input_state_share2_row3_col1, input_state_share2_row3_col2, input_state_share2_row3_col3, input_state_share2_row3_col4, input_state_share2_row4_col1, input_state_share2_row4_col2, input_state_share2_row4_col3, input_state_share2_row4_col4 ,
state_reg_share2_row1_col1, state_reg_share2_row1_col2, state_reg_share2_row1_col3, state_reg_share2_row1_col4, state_reg_share2_row2_col1, state_reg_share2_row2_col2, state_reg_share2_row2_col3, state_reg_share2_row2_col4, state_reg_share2_row3_col1, state_reg_share2_row3_col2, state_reg_share2_row3_col3, state_reg_share2_row3_col4, state_reg_share2_row4_col1, state_reg_share2_row4_col2, state_reg_share2_row4_col3, state_reg_share2_row4_col4 
);


// // Round Function : Combinatorial

assign next_state_share1_row1_col1 =  state_reg_share1_row1_col1 ^ sbox_row1_output_share1 ^ round_constant;
assign next_state_share1_row2_col1 =  state_reg_share1_row2_col1 ^ sbox_row2_output_share1 ;
assign next_state_share1_row3_col1 =  state_reg_share1_row3_col1 ^ sbox_row3_output_share1 ;
assign next_state_share1_row4_col1 =  state_reg_share1_row4_col1 ^ sbox_row4_output_share1 ;

assign next_state_share1_row1_col2 =  state_reg_share1_row1_col2 ^ next_state_share1_row1_col1 ;
assign next_state_share1_row2_col2 =  state_reg_share1_row2_col2 ^ next_state_share1_row2_col1 ;
assign next_state_share1_row3_col2 =  state_reg_share1_row3_col2 ^ next_state_share1_row3_col1 ;
assign next_state_share1_row4_col2 =  state_reg_share1_row4_col2 ^ next_state_share1_row4_col1 ;

assign next_state_share1_row1_col3 =  state_reg_share1_row1_col3 ^ next_state_share1_row1_col2 ;
assign next_state_share1_row2_col3 =  state_reg_share1_row2_col3 ^ next_state_share1_row2_col2 ;
assign next_state_share1_row3_col3 =  state_reg_share1_row3_col3 ^ next_state_share1_row3_col2 ;
assign next_state_share1_row4_col3 =  state_reg_share1_row4_col3 ^ next_state_share1_row4_col2 ;

assign next_state_share1_row1_col4 =  state_reg_share1_row1_col4 ^ next_state_share1_row1_col3 ;
assign next_state_share1_row2_col4 =  state_reg_share1_row2_col4 ^ next_state_share1_row2_col3 ;
assign next_state_share1_row3_col4 =  state_reg_share1_row3_col4 ^ next_state_share1_row3_col3 ;
assign next_state_share1_row4_col4 =  state_reg_share1_row4_col4 ^ next_state_share1_row4_col3 ;


assign next_state_share2_row1_col1 = state_reg_share2_row1_col1 ^ sbox_row1_output_share2 ;
assign next_state_share2_row2_col1 = state_reg_share2_row2_col1 ^ sbox_row2_output_share2 ;
assign next_state_share2_row3_col1 = state_reg_share2_row3_col1 ^ sbox_row3_output_share2 ;
assign next_state_share2_row4_col1 = state_reg_share2_row4_col1 ^ sbox_row4_output_share2 ;

assign next_state_share2_row1_col2 = state_reg_share2_row1_col2 ^ next_state_share2_row1_col1 ;
assign next_state_share2_row2_col2 = state_reg_share2_row2_col2 ^ next_state_share2_row2_col1 ;
assign next_state_share2_row3_col2 = state_reg_share2_row3_col2 ^ next_state_share2_row3_col1 ;
assign next_state_share2_row4_col2 = state_reg_share2_row4_col2 ^ next_state_share2_row4_col1 ;

assign next_state_share2_row1_col3 = state_reg_share2_row1_col3 ^ next_state_share2_row1_col2 ;
assign next_state_share2_row2_col3 = state_reg_share2_row2_col3 ^ next_state_share2_row2_col2 ;
assign next_state_share2_row3_col3 = state_reg_share2_row3_col3 ^ next_state_share2_row3_col2 ;
assign next_state_share2_row4_col3 = state_reg_share2_row4_col3 ^ next_state_share2_row4_col2 ;

assign next_state_share2_row1_col4 = state_reg_share2_row1_col4 ^ next_state_share2_row1_col3 ;
assign next_state_share2_row2_col4 = state_reg_share2_row2_col4 ^ next_state_share2_row2_col3 ;
assign next_state_share2_row3_col4 = state_reg_share2_row3_col4 ^ next_state_share2_row3_col3 ;
assign next_state_share2_row4_col4 = state_reg_share2_row4_col4 ^ next_state_share2_row4_col3 ;

// // Key S-Boxes

byte_mux inst_sbox_input_mux_share1_row1 ( 
select_sbox_input, 
key_input_share1_row1_col4, 
next_state_share1_row1_col4, 
sbox_row1_input_share1
);

byte_mux inst_sbox_input_mux_share1_row2 ( 
select_sbox_input, 
key_input_share1_row2_col4, 
next_state_share1_row2_col4, 
sbox_row2_input_share1
);

byte_mux inst_sbox_input_mux_share1_row3 ( 
select_sbox_input, 
key_input_share1_row3_col4, 
next_state_share1_row3_col4, 
sbox_row3_input_share1
);

byte_mux inst_sbox_input_mux_share1_row4 ( 
select_sbox_input, 
key_input_share1_row4_col4, 
next_state_share1_row4_col4, 
sbox_row4_input_share1
);

byte_mux inst_sbox_input_mux_share2_row1 ( 
select_sbox_input, 
key_input_share2_row1_col4, 
next_state_share2_row1_col4, 
sbox_row1_input_share2
);

byte_mux inst_sbox_input_mux_share2_row2 ( 
select_sbox_input, 
key_input_share2_row2_col4, 
next_state_share2_row2_col4, 
sbox_row2_input_share2
);

byte_mux inst_sbox_input_mux_share2_row3 ( 
select_sbox_input, 
key_input_share2_row3_col4, 
next_state_share2_row3_col4, 
sbox_row3_input_share2
);

byte_mux inst_sbox_input_mux_share2_row4 ( 
select_sbox_input, 
key_input_share2_row4_col4, 
next_state_share2_row4_col4, 
sbox_row4_input_share2
);

wire [38:1] rand_cycle1_row1, rand_cycle1_row2, rand_cycle1_row3, rand_cycle1_row4 ; 
wire [8:1]  rand_cycle2_row1, rand_cycle2_row2, rand_cycle2_row3, rand_cycle2_row4 ; 

assign rand_cycle1_row1 = rand_cycle1[38:1]    ;
assign rand_cycle1_row2 = rand_cycle1[76:39]   ; 
assign rand_cycle1_row3 = rand_cycle1[114:77]  ;
assign rand_cycle1_row4 = rand_cycle1[152:115] ;

assign rand_cycle2_row1 = rand_cycle2[8:1]     ;
assign rand_cycle2_row2 = rand_cycle2[16:9]    ;
assign rand_cycle2_row3 = rand_cycle2[24:17]   ;
assign rand_cycle2_row4 = rand_cycle2[32:25]   ;

reg enable_sbox_cycle1, enable_sbox_cycle2 ;
AES_sbox_twocycle_firstorder inst_sbox_row1 ( clk, rand_cycle1_row1, rand_cycle2_row1,
	reset, enable_sbox_cycle1,
	reset, enable_sbox_cycle2,
	sbox_row2_input_share1,  sbox_row2_input_share2,
    sbox_row1_output_share1, sbox_row1_output_share2
);
AES_sbox_twocycle_firstorder inst_sbox_row2 ( clk, rand_cycle1_row2, rand_cycle2_row2,
	reset, enable_sbox_cycle1,
	reset, enable_sbox_cycle2,
	sbox_row3_input_share1,  sbox_row3_input_share2,
    sbox_row2_output_share1, sbox_row2_output_share2
);
AES_sbox_twocycle_firstorder inst_sbox_row3 ( clk, rand_cycle1_row3, rand_cycle2_row3,
	reset, enable_sbox_cycle1,
	reset, enable_sbox_cycle2,
	sbox_row4_input_share1,  sbox_row4_input_share2,
    sbox_row3_output_share1, sbox_row3_output_share2
);
AES_sbox_twocycle_firstorder inst_sbox_row4 ( clk, rand_cycle1_row4, rand_cycle2_row4,
	reset, enable_sbox_cycle1,
	reset, enable_sbox_cycle2,
	sbox_row1_input_share1,  sbox_row1_input_share2,
    sbox_row4_output_share1, sbox_row4_output_share2
);



// Control logic
parameter KEYSCHEDULE_IDLE    = 8'd1 ;
parameter KEYSCHEDULE_CYCLE1  = 8'd2 ;
parameter KEYSCHEDULE_CYCLE2  = 8'd3 ;
parameter KEYSCHEDULE_CYCLE3  = 8'd4 ;
parameter KEYSCHEDULE_CYCLE4  = 8'd5 ;
parameter KEYSCHEDULE_CYCLE5  = 8'd6 ;
parameter KEYSCHEDULE_CYCLE6  = 8'd7 ;
parameter KEYSCHEDULE_CYCLE7  = 8'd8 ;
parameter KEYSCHEDULE_CYCLE8  = 8'd9 ;
parameter KEYSCHEDULE_CYCLE9  = 8'd10;
parameter KEYSCHEDULE_CYCLE10 = 8'd11;
parameter KEYSCHEDULE_CYCLE11 = 8'd12;
parameter KEYSCHEDULE_CYCLE12 = 8'd13;
parameter KEYSCHEDULE_CYCLE13 = 8'd14;
parameter KEYSCHEDULE_CYCLE14 = 8'd15;
parameter KEYSCHEDULE_CYCLE15 = 8'd16;
parameter KEYSCHEDULE_CYCLE16 = 8'd17;
parameter KEYSCHEDULE_CYCLE17 = 8'd18;
parameter KEYSCHEDULE_CYCLE18 = 8'd19;
parameter KEYSCHEDULE_CYCLE19 = 8'd20;
parameter KEYSCHEDULE_CYCLE20 = 8'd21;
parameter KEYSCHEDULE_CYCLE21 = 8'd22;
parameter KEYSCHEDULE_CYCLE22 = 8'd23;
 
reg [8:1] state_reg, state_next ;
reg in_operation_reg,in_operation_next ;

always@(posedge clk) begin
    if(reset) begin
        state_reg <= KEYSCHEDULE_IDLE;
        in_operation_reg <= 0;
    end
    else if(start) begin
        state_reg <= KEYSCHEDULE_CYCLE1;
        in_operation_reg <= 1;
    end
    else begin
        state_reg <= state_next;
        in_operation_reg <= in_operation_next;
    end
end

always@(*) begin
    if(state_reg == KEYSCHEDULE_IDLE) begin
        state_next <= KEYSCHEDULE_IDLE;
        in_operation_next <= 0;    
    end
	 else if(state_reg == KEYSCHEDULE_CYCLE22) begin
        state_next <= KEYSCHEDULE_CYCLE22;
        in_operation_next <= 0;    
    end
    else if(in_operation_reg) begin
        state_next <= state_reg + 8'd1;
        in_operation_next <= 1;
    end
    else begin
        state_next <= state_reg;
		in_operation_next <= in_operation_reg;
    end
end

always@(posedge clk) begin
    case (state_reg)
        KEYSCHEDULE_IDLE: begin
            round_constant <= 8'h00;
        end
        KEYSCHEDULE_CYCLE2: begin
            round_constant <= 8'h01;
        end
        KEYSCHEDULE_CYCLE3: begin
            round_constant <= 8'h01;
        end
        KEYSCHEDULE_CYCLE4: begin
            round_constant <= 8'h02;
        end
        KEYSCHEDULE_CYCLE5: begin
            round_constant <= 8'h02;
        end
        KEYSCHEDULE_CYCLE6: begin
            round_constant <= 8'h04;
        end
        KEYSCHEDULE_CYCLE7: begin
            round_constant <= 8'h04;
        end
        KEYSCHEDULE_CYCLE8: begin
            round_constant <= 8'h08;
        end
        KEYSCHEDULE_CYCLE9: begin
            round_constant <= 8'h08;
        end
        KEYSCHEDULE_CYCLE10: begin
            round_constant <= 8'h10;
        end
        KEYSCHEDULE_CYCLE11: begin
            round_constant <= 8'h10;
        end
        KEYSCHEDULE_CYCLE12: begin
            round_constant <= 8'h20;
        end
        KEYSCHEDULE_CYCLE13: begin
            round_constant <= 8'h20;
        end
        KEYSCHEDULE_CYCLE14: begin
            round_constant <= 8'h40;
        end
        KEYSCHEDULE_CYCLE15: begin
            round_constant <= 8'h40;
        end
        KEYSCHEDULE_CYCLE16: begin
            round_constant <= 8'h80;
        end
        KEYSCHEDULE_CYCLE17: begin
            round_constant <= 8'h80;
        end
        KEYSCHEDULE_CYCLE18: begin
            round_constant <= 8'h1b;
        end
        KEYSCHEDULE_CYCLE19: begin
            round_constant <= 8'h1b;
        end
        KEYSCHEDULE_CYCLE20: begin
            round_constant <= 8'h36;
        end
        KEYSCHEDULE_CYCLE21: begin
            round_constant <= 8'h36;
        end
        default: begin
            round_constant <= round_constant;
        end
    endcase
end

always@(*) begin
    case (state_reg)
        KEYSCHEDULE_IDLE: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 1;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 0;            
        end
        KEYSCHEDULE_CYCLE1: begin
            select_key_state_input <= 1;
            enable_key_state_input <= 1;
            select_sbox_input      <= 1;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
        KEYSCHEDULE_CYCLE2: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE3: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE4: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE5: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE6: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE7: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE8: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE9: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE10: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end
        KEYSCHEDULE_CYCLE11: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE12: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE13: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE14: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE15: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE16: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE17: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE18: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE19: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 1;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 1;
            enable_sbox_cycle2     <= 0;            
        end
		  
        KEYSCHEDULE_CYCLE20: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 1;            
        end

        KEYSCHEDULE_CYCLE21: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 0;            
        end

        KEYSCHEDULE_CYCLE22: begin
            select_key_state_input <= 0;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 0;            
        end

        default: begin
            select_key_state_input <= 1;
            enable_key_state_input <= 0;
            select_sbox_input      <= 0;
            enable_sbox_cycle1     <= 0;
            enable_sbox_cycle2     <= 0; 
        end
    endcase
end


assign output_round_key_share1 = {next_state_share1_row1_col1, next_state_share1_row2_col1, next_state_share1_row3_col1, next_state_share1_row4_col1,next_state_share1_row1_col2, next_state_share1_row2_col2, next_state_share1_row3_col2, next_state_share1_row4_col2,next_state_share1_row1_col3, next_state_share1_row2_col3, next_state_share1_row3_col3, next_state_share1_row4_col3,next_state_share1_row1_col4, next_state_share1_row2_col4, next_state_share1_row3_col4, next_state_share1_row4_col4 };
assign output_round_key_share2 = {next_state_share2_row1_col1, next_state_share2_row2_col1, next_state_share2_row3_col1, next_state_share2_row4_col1,next_state_share2_row1_col2, next_state_share2_row2_col2, next_state_share2_row3_col2, next_state_share2_row4_col2,next_state_share2_row1_col3, next_state_share2_row2_col3, next_state_share2_row3_col3, next_state_share2_row4_col3,next_state_share2_row1_col4, next_state_share2_row2_col4, next_state_share2_row3_col4, next_state_share2_row4_col4 };

endmodule