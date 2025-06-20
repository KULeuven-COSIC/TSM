`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Byte Mux
// Module Name: byte_mux
// Description: Selects between two input arrays and assigns the chosen array to the output.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module byte_mux ( 
select, 
input1_array_row1_col1, 
input2_array_row1_col1, 
output_array_row1_col1 
);

input select;
input [8:1]  input1_array_row1_col1 ;
input [8:1]  input2_array_row1_col1 ;
output reg [8:1] output_array_row1_col1 ;


always @(*) begin
    if (select) begin
        output_array_row1_col1 <= input1_array_row1_col1; 
    end
    else begin
        output_array_row1_col1 <= input2_array_row1_col1; 
    end
end

endmodule