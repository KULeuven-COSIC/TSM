`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: AES Multiply-by-2 Operation
// Module Name: aes_mul2
// Description: Implements a masked AES multiply-by-2 operation in GF(2^8).
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module aes_mul2 ( in, out);

input [8:1] in;
output [8:1] out;

assign out[8] = in[7];
assign out[7] = in[6];
assign out[6] = in[5];
assign out[5] = in[4] ^ in[8];
assign out[4] = in[3] ^ in[8];
assign out[3] = in[2];
assign out[2] = in[1] ^ in[8];
assign out[1] = in[8];

endmodule
