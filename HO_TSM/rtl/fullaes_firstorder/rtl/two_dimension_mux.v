`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Two-Dimensional MUX
// Module Name: two_dimension_mux
// Description: A 4x4 matrix multiplexer that selects between two 4x4 input arrays 
//              based on the 'select' signal. If 'select' is high, the output is 
//              taken from the first input array; otherwise, it comes from the second input array.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module two_dimension_mux ( 
select, 
input1_array_row1_col1, input1_array_row1_col2, input1_array_row1_col3, input1_array_row1_col4, input1_array_row2_col1, input1_array_row2_col2, input1_array_row2_col3, input1_array_row2_col4, input1_array_row3_col1, input1_array_row3_col2, input1_array_row3_col3, input1_array_row3_col4, input1_array_row4_col1, input1_array_row4_col2, input1_array_row4_col3, input1_array_row4_col4 ,
input2_array_row1_col1, input2_array_row1_col2, input2_array_row1_col3, input2_array_row1_col4, input2_array_row2_col1, input2_array_row2_col2, input2_array_row2_col3, input2_array_row2_col4, input2_array_row3_col1, input2_array_row3_col2, input2_array_row3_col3, input2_array_row3_col4, input2_array_row4_col1, input2_array_row4_col2, input2_array_row4_col3, input2_array_row4_col4 ,
output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 
);

input select;
input [8:1]  input1_array_row1_col1, input1_array_row1_col2, input1_array_row1_col3, input1_array_row1_col4, input1_array_row2_col1, input1_array_row2_col2, input1_array_row2_col3, input1_array_row2_col4, input1_array_row3_col1, input1_array_row3_col2, input1_array_row3_col3, input1_array_row3_col4, input1_array_row4_col1, input1_array_row4_col2, input1_array_row4_col3, input1_array_row4_col4 ;
input [8:1]  input2_array_row1_col1, input2_array_row1_col2, input2_array_row1_col3, input2_array_row1_col4, input2_array_row2_col1, input2_array_row2_col2, input2_array_row2_col3, input2_array_row2_col4, input2_array_row3_col1, input2_array_row3_col2, input2_array_row3_col3, input2_array_row3_col4, input2_array_row4_col1, input2_array_row4_col2, input2_array_row4_col3, input2_array_row4_col4 ;
output reg [8:1] output_array_row1_col1, output_array_row1_col2, output_array_row1_col3, output_array_row1_col4, output_array_row2_col1, output_array_row2_col2, output_array_row2_col3, output_array_row2_col4, output_array_row3_col1, output_array_row3_col2, output_array_row3_col3, output_array_row3_col4, output_array_row4_col1, output_array_row4_col2, output_array_row4_col3, output_array_row4_col4 ;


always @(*) begin
    if (select) begin
        output_array_row1_col1 <= input1_array_row1_col1; 
        output_array_row1_col2 <= input1_array_row1_col2; 
        output_array_row1_col3 <= input1_array_row1_col3; 
        output_array_row1_col4 <= input1_array_row1_col4; 
        output_array_row2_col1 <= input1_array_row2_col1; 
        output_array_row2_col2 <= input1_array_row2_col2; 
        output_array_row2_col3 <= input1_array_row2_col3; 
        output_array_row2_col4 <= input1_array_row2_col4; 
        output_array_row3_col1 <= input1_array_row3_col1; 
        output_array_row3_col2 <= input1_array_row3_col2; 
        output_array_row3_col3 <= input1_array_row3_col3; 
        output_array_row3_col4 <= input1_array_row3_col4; 
        output_array_row4_col1 <= input1_array_row4_col1; 
        output_array_row4_col2 <= input1_array_row4_col2;  
        output_array_row4_col3 <= input1_array_row4_col3;  
        output_array_row4_col4 <= input1_array_row4_col4; 
    end
    else begin
        output_array_row1_col1 <= input2_array_row1_col1; 
        output_array_row1_col2 <= input2_array_row1_col2; 
        output_array_row1_col3 <= input2_array_row1_col3; 
        output_array_row1_col4 <= input2_array_row1_col4; 
        output_array_row2_col1 <= input2_array_row2_col1; 
        output_array_row2_col2 <= input2_array_row2_col2; 
        output_array_row2_col3 <= input2_array_row2_col3; 
        output_array_row2_col4 <= input2_array_row2_col4; 
        output_array_row3_col1 <= input2_array_row3_col1; 
        output_array_row3_col2 <= input2_array_row3_col2; 
        output_array_row3_col3 <= input2_array_row3_col3; 
        output_array_row3_col4 <= input2_array_row3_col4; 
        output_array_row4_col1 <= input2_array_row4_col1; 
        output_array_row4_col2 <= input2_array_row4_col2;  
        output_array_row4_col3 <= input2_array_row4_col3;  
        output_array_row4_col4 <= input2_array_row4_col4; 
    end
end

endmodule