`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: 15-bit Register Array
// Module Name: register_array_15bit
// Description: Implements a 15-bit register array for storing masked AES S-Box intermediate values.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module register_array_15bit(
clk,
in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15,
out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15  
);

input clk ;
input in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15 ;
output out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15 ;

reg reg_out1, reg_out2, reg_out3, reg_out4, reg_out5, reg_out6, reg_out7, reg_out8, reg_out9, reg_out10, reg_out11, reg_out12, reg_out13, reg_out14, reg_out15 ;

always@(posedge clk) begin
    reg_out1  <= in1   ;
    reg_out2  <= in2   ;
    reg_out3  <= in3   ;
    reg_out4  <= in4   ;
    reg_out5  <= in5   ;
    reg_out6  <= in6   ;
    reg_out7  <= in7   ;
    reg_out8  <= in8   ;
    reg_out9  <= in9   ;
    reg_out10 <= in10  ;
    reg_out11 <= in11  ;
    reg_out12 <= in12  ;
    reg_out13 <= in13  ;
    reg_out14 <= in14  ;
    reg_out15 <= in15  ;
end

assign out1  = reg_out1  ; 
assign out2  = reg_out2  ; 
assign out3  = reg_out3  ; 
assign out4  = reg_out4  ; 
assign out5  = reg_out5  ; 
assign out6  = reg_out6  ; 
assign out7  = reg_out7  ; 
assign out8  = reg_out8  ; 
assign out9  = reg_out9  ; 
assign out10 = reg_out10 ; 
assign out11 = reg_out11 ; 
assign out12 = reg_out12 ; 
assign out13 = reg_out13 ; 
assign out14 = reg_out14 ; 
assign out15 = reg_out15 ; 


endmodule