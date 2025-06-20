`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: AES MixColumn Operation
// Module Name: aes_mixcolumn
// Description: Implements the MixColumn operation for AES.
// Dependencies: aes_mul2 (multiply-by-2 module)
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module aes_mixcolumn ( 
    row1, row2, row3, row4,
    mixed_row1, mixed_row2, mixed_row3, mixed_row4
);

input  [8:1]     row1, row2, row3, row4 ;
output [8:1]     mixed_row1, mixed_row2, mixed_row3, mixed_row4 ;

wire  [8:1]     step1_row1, step1_row2, step1_row3, step1_row4 ;
wire  [8:1]     step2_row1, step2_row2, step2_row3, step2_row4 ;

assign step1_row1 = row1 ^ row4;
assign step1_row2 = row4 ^ row3;
assign step1_row3 = row3 ^ row2;
assign step1_row4 = row2 ^ row1;

aes_mul2 inst_row1(step1_row1,step2_row1);
aes_mul2 inst_row2(step1_row2,step2_row2);
aes_mul2 inst_row3(step1_row3,step2_row3);
aes_mul2 inst_row4(step1_row4,step2_row4);

assign mixed_row1 = row2 ^ step2_row4 ^ step1_row2;
assign mixed_row2 = row1 ^ step2_row3 ^ step1_row2;
assign mixed_row3 = row4 ^ step2_row2 ^ step1_row4;
assign mixed_row4 = row3 ^ step2_row1 ^ step1_row4;

endmodule