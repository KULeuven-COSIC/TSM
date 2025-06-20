`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: 4-bit Register Array
// Module Name: register_array_4bit
// Description: Implements a 4-bit register array for storing masked AES S-Box intermediate values.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module register_array_4bit(
clk,
in1, in2, in3, in4, 
out1, out2, out3, out4
);

input clk ;
input in1, in2, in3, in4 ;
output out1, out2, out3, out4 ;

reg reg_out1, reg_out2, reg_out3, reg_out4  ;

always@(posedge clk) begin
    reg_out1  <= in1   ;
    reg_out2  <= in2   ;
    reg_out3  <= in3   ;
    reg_out4  <= in4   ;
end

assign out1  = reg_out1  ; 
assign out2  = reg_out2  ; 
assign out3  = reg_out3  ; 
assign out4  = reg_out4  ; 


endmodule