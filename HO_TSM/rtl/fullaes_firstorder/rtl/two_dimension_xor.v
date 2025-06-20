`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Modified Date: 02/22/2025
// Design Name: Two-Dimensional XOR Array
// Module Name: two_dimension_xor
// Description: Computes bitwise XOR between corresponding elements of two 4x4 input 
//              matrices (8-bit elements) and outputs the result in a 4x4 matrix.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module two_dimension_xor ( 
input1_array_row1_col1, input1_array_row1_col2, input1_array_row1_col3, input1_array_row1_col4, input1_array_row2_col1, input1_array_row2_col2, input1_array_row2_col3, input1_array_row2_col4, input1_array_row3_col1, input1_array_row3_col2, input1_array_row3_col3, input1_array_row3_col4, input1_array_row4_col1, input1_array_row4_col2, input1_array_row4_col3, input1_array_row4_col4 ,
input2_array_row1_col1, input2_array_row1_col2, input2_array_row1_col3, input2_array_row1_col4, input2_array_row2_col1, input2_array_row2_col2, input2_array_row2_col3, input2_array_row2_col4, input2_array_row3_col1, input2_array_row3_col2, input2_array_row3_col3, input2_array_row3_col4, input2_array_row4_col1, input2_array_row4_col2, input2_array_row4_col3, input2_array_row4_col4 ,
output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 
);

input [8:1]  input1_array_row1_col1, input1_array_row1_col2, input1_array_row1_col3, input1_array_row1_col4, input1_array_row2_col1, input1_array_row2_col2, input1_array_row2_col3, input1_array_row2_col4, input1_array_row3_col1, input1_array_row3_col2, input1_array_row3_col3, input1_array_row3_col4, input1_array_row4_col1, input1_array_row4_col2, input1_array_row4_col3, input1_array_row4_col4 ;
input [8:1]  input2_array_row1_col1, input2_array_row1_col2, input2_array_row1_col3, input2_array_row1_col4, input2_array_row2_col1, input2_array_row2_col2, input2_array_row2_col3, input2_array_row2_col4, input2_array_row3_col1, input2_array_row3_col2, input2_array_row3_col3, input2_array_row3_col4, input2_array_row4_col1, input2_array_row4_col2, input2_array_row4_col3, input2_array_row4_col4 ;
output reg [8:1] output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 ;


always @(*) begin
        output_array_row1_col1 <= input1_array_row1_col1 ^ input2_array_row1_col1; 
        output_array_row1_col2 <= input1_array_row1_col2 ^ input2_array_row1_col2; 
        output_array_row1_col3 <= input1_array_row1_col3 ^ input2_array_row1_col3; 
        output_array_row1_col4 <= input1_array_row1_col4 ^ input2_array_row1_col4; 
        output_array_row2_col1 <= input1_array_row2_col1 ^ input2_array_row2_col1; 
        output_array_row2_col2 <= input1_array_row2_col2 ^ input2_array_row2_col2; 
        output_array_row2_col3 <= input1_array_row2_col3 ^ input2_array_row2_col3; 
        output_array_row2_col4 <= input1_array_row2_col4 ^ input2_array_row2_col4; 
        output_array_row3_col1 <= input1_array_row3_col1 ^ input2_array_row3_col1; 
        output_array_row3_col2 <= input1_array_row3_col2 ^ input2_array_row3_col2; 
        output_array_row3_col3 <= input1_array_row3_col3 ^ input2_array_row3_col3; 
        output_array_row3_col4 <= input1_array_row3_col4 ^ input2_array_row3_col4; 
        output_array_row4_col1 <= input1_array_row4_col1 ^ input2_array_row4_col1; 
        output_array_row4_col2 <= input1_array_row4_col2 ^ input2_array_row4_col2;  
        output_array_row4_col3 <= input1_array_row4_col3 ^ input2_array_row4_col3;  
        output_array_row4_col4 <= input1_array_row4_col4 ^ input2_array_row4_col4; 
end

endmodule