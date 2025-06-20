`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 22:00:00 02/22/2025
// Design Name: Register Array for One Share
// Module Name: register_array_8bit_AES
// Project Name: AES Masked S-Box
// Description: Stores 8 input signals using registers and outputs stored values for exactly one share.
// Dependencies: None
//
// Revision:
// Revision 0.02 - Simplified 8-bit version
//
//////////////////////////////////////////////////////////////////////////////////

module register_array_8bit_AES (
clk,
in1, in2, in3, in4, in5, in6, in7, in8,
out1, out2, out3, out4, out5, out6, out7, out8
);

input clk ;
input in1, in2, in3, in4, in5, in6, in7, in8 ;
output out1, out2, out3, out4, out5, out6, out7, out8 ;

reg reg_out1, reg_out2, reg_out3, reg_out4, reg_out5, reg_out6, reg_out7, reg_out8 ;

always@(posedge clk) begin
    reg_out1  <= in1   ;
    reg_out2  <= in2   ;
    reg_out3  <= in3   ;
    reg_out4  <= in4   ;
    reg_out5  <= in5   ;
    reg_out6  <= in6   ;
    reg_out7  <= in7   ;
    reg_out8  <= in8   ;
end

assign out1  = reg_out1  ; 
assign out2  = reg_out2  ; 
assign out3  = reg_out3  ; 
assign out4  = reg_out4  ; 
assign out5  = reg_out5  ; 
assign out6  = reg_out6  ; 
assign out7  = reg_out7  ; 
assign out8  = reg_out8  ; 


endmodule