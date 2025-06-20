`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Reg Two-Dimensional Array
// Module Name: reg_two_dimension_array
// Description: Implements a 4x4 two-dimensional register array with a reset and enable control. 
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module reg_two_dimension_array ( 
clk, enable, reset,
input_array_row1_col1, input_array_row1_col2, input_array_row1_col3, input_array_row1_col4, input_array_row2_col1, input_array_row2_col2, input_array_row2_col3, input_array_row2_col4, input_array_row3_col1, input_array_row3_col2, input_array_row3_col3, input_array_row3_col4, input_array_row4_col1, input_array_row4_col2, input_array_row4_col3, input_array_row4_col4 ,
reg_input_array_row1_col1, reg_input_array_row1_col2, reg_input_array_row1_col3, reg_input_array_row1_col4, reg_input_array_row2_col1, reg_input_array_row2_col2, reg_input_array_row2_col3, reg_input_array_row2_col4, reg_input_array_row3_col1, reg_input_array_row3_col2, reg_input_array_row3_col3, reg_input_array_row3_col4, reg_input_array_row4_col1, reg_input_array_row4_col2, reg_input_array_row4_col3, reg_input_array_row4_col4 
);

input clk, enable, reset;
input [8:1]  input_array_row1_col1, input_array_row1_col2, input_array_row1_col3, input_array_row1_col4, input_array_row2_col1, input_array_row2_col2, input_array_row2_col3, input_array_row2_col4, input_array_row3_col1, input_array_row3_col2, input_array_row3_col3, input_array_row3_col4, input_array_row4_col1, input_array_row4_col2, input_array_row4_col3, input_array_row4_col4 ;

output reg [8:1] reg_input_array_row1_col1, reg_input_array_row1_col2, reg_input_array_row1_col3, reg_input_array_row1_col4, reg_input_array_row2_col1, reg_input_array_row2_col2, reg_input_array_row2_col3, reg_input_array_row2_col4, reg_input_array_row3_col1, reg_input_array_row3_col2, reg_input_array_row3_col3, reg_input_array_row3_col4, reg_input_array_row4_col1, reg_input_array_row4_col2, reg_input_array_row4_col3, reg_input_array_row4_col4 ;


always @(posedge clk) begin
    if (reset) begin
        reg_input_array_row1_col1 <= 8'b0; 
        reg_input_array_row1_col2 <= 8'b0; 
        reg_input_array_row1_col3 <= 8'b0; 
        reg_input_array_row1_col4 <= 8'b0; 
        reg_input_array_row2_col1 <= 8'b0; 
        reg_input_array_row2_col2 <= 8'b0; 
        reg_input_array_row2_col3 <= 8'b0; 
        reg_input_array_row2_col4 <= 8'b0; 
        reg_input_array_row3_col1 <= 8'b0; 
        reg_input_array_row3_col2 <= 8'b0; 
        reg_input_array_row3_col3 <= 8'b0; 
        reg_input_array_row3_col4 <= 8'b0; 
        reg_input_array_row4_col1 <= 8'b0; 
        reg_input_array_row4_col2 <= 8'b0;  
        reg_input_array_row4_col3 <= 8'b0;  
        reg_input_array_row4_col4 <= 8'b0; 
    end
    else if(enable) begin
        reg_input_array_row1_col1 <= input_array_row1_col1; 
        reg_input_array_row1_col2 <= input_array_row1_col2; 
        reg_input_array_row1_col3 <= input_array_row1_col3; 
        reg_input_array_row1_col4 <= input_array_row1_col4; 
        reg_input_array_row2_col1 <= input_array_row2_col1; 
        reg_input_array_row2_col2 <= input_array_row2_col2; 
        reg_input_array_row2_col3 <= input_array_row2_col3; 
        reg_input_array_row2_col4 <= input_array_row2_col4; 
        reg_input_array_row3_col1 <= input_array_row3_col1; 
        reg_input_array_row3_col2 <= input_array_row3_col2; 
        reg_input_array_row3_col3 <= input_array_row3_col3; 
        reg_input_array_row3_col4 <= input_array_row3_col4; 
        reg_input_array_row4_col1 <= input_array_row4_col1; 
        reg_input_array_row4_col2 <= input_array_row4_col2;  
        reg_input_array_row4_col3 <= input_array_row4_col3;  
        reg_input_array_row4_col4 <= input_array_row4_col4; 
    end
    else begin
        reg_input_array_row1_col1 <= reg_input_array_row1_col1; 
        reg_input_array_row1_col2 <= reg_input_array_row1_col2; 
        reg_input_array_row1_col3 <= reg_input_array_row1_col3; 
        reg_input_array_row1_col4 <= reg_input_array_row1_col4; 
        reg_input_array_row2_col1 <= reg_input_array_row2_col1; 
        reg_input_array_row2_col2 <= reg_input_array_row2_col2; 
        reg_input_array_row2_col3 <= reg_input_array_row2_col3; 
        reg_input_array_row2_col4 <= reg_input_array_row2_col4; 
        reg_input_array_row3_col1 <= reg_input_array_row3_col1; 
        reg_input_array_row3_col2 <= reg_input_array_row3_col2; 
        reg_input_array_row3_col3 <= reg_input_array_row3_col3; 
        reg_input_array_row3_col4 <= reg_input_array_row3_col4; 
        reg_input_array_row4_col1 <= reg_input_array_row4_col1; 
        reg_input_array_row4_col2 <= reg_input_array_row4_col2;  
        reg_input_array_row4_col3 <= reg_input_array_row4_col3;  
        reg_input_array_row4_col4 <= reg_input_array_row4_col4; 
    end
end

endmodule