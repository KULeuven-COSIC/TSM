`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: AES Shift Row
// Module Name: aes_shift_row
// Description: Implements the AES Shift Row operation, shifting the rows of the input array.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module aes_shift_row ( 
input1_array_row1_col1, input1_array_row1_col2, input1_array_row1_col3, input1_array_row1_col4, input1_array_row2_col1, input1_array_row2_col2, input1_array_row2_col3, input1_array_row2_col4, input1_array_row3_col1, input1_array_row3_col2, input1_array_row3_col3, input1_array_row3_col4, input1_array_row4_col1, input1_array_row4_col2, input1_array_row4_col3, input1_array_row4_col4 ,
output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 
);

input [8:1]  input1_array_row1_col1, input1_array_row1_col2, input1_array_row1_col3, input1_array_row1_col4, input1_array_row2_col1, input1_array_row2_col2, input1_array_row2_col3, input1_array_row2_col4, input1_array_row3_col1, input1_array_row3_col2, input1_array_row3_col3, input1_array_row3_col4, input1_array_row4_col1, input1_array_row4_col2, input1_array_row4_col3, input1_array_row4_col4 ;
output reg [8:1] output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 ;


always @(*) begin
        output_array_row1_col1 <= input1_array_row1_col1; 
        output_array_row1_col2 <= input1_array_row1_col2; 
        output_array_row1_col3 <= input1_array_row1_col3; 
        output_array_row1_col4 <= input1_array_row1_col4; 
        output_array_row2_col1 <= input1_array_row2_col2; 
        output_array_row2_col2 <= input1_array_row2_col3; 
        output_array_row2_col3 <= input1_array_row2_col4; 
        output_array_row2_col4 <= input1_array_row2_col1; 
        output_array_row3_col1 <= input1_array_row3_col3; 
        output_array_row3_col2 <= input1_array_row3_col4; 
        output_array_row3_col3 <= input1_array_row3_col1; 
        output_array_row3_col4 <= input1_array_row3_col2; 
        output_array_row4_col1 <= input1_array_row4_col4; 
        output_array_row4_col2 <= input1_array_row4_col1;  
        output_array_row4_col3 <= input1_array_row4_col2;  
        output_array_row4_col4 <= input1_array_row4_col3; 
end

endmodule