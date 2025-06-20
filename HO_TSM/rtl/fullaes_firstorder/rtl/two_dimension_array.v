`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Two-Dimensional Array
// Module Name: two_dimension_array
// Description: This module maps a 128-bit input array into a 4x4 matrix of 8-bit elements.
//              The input array is split into 16 8-bit elements, which are assigned 
//              to a corresponding position in a 4x4 output matrix.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module two_dimension_array ( 
input_array,
output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 
);

input [128:1] input_array;
output [8:1] output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 ;

assign output_array_row4_col4 = input_array[8:1];
assign output_array_row3_col4 = input_array[16:9]; 
assign output_array_row2_col4 = input_array[24:17]; 
assign output_array_row1_col4 = input_array[32:25]; 
assign output_array_row4_col3 = input_array[40:33]; 
assign output_array_row3_col3 = input_array[48:41]; 
assign output_array_row2_col3 = input_array[56:49]; 
assign output_array_row1_col3 = input_array[64:57]; 
assign output_array_row4_col2 = input_array[72:65]; 
assign output_array_row3_col2 = input_array[80:73]; 
assign output_array_row2_col2 = input_array[88:81]; 
assign output_array_row1_col2 = input_array[96:89]; 
assign output_array_row4_col1 = input_array[104:97]; 
assign output_array_row3_col1 = input_array[112:105]; 
assign output_array_row2_col1 = input_array[120:113]; 
assign output_array_row1_col1 = input_array[128:121];



endmodule