`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Trivium PRNG
// Module Name: trivium_prng
// Description: Implements the Trivium Pseudo-Random Number Generator (PRNG). 
//              It uses a 80-bit key and a 80-bit IV to initialize its state 
//              and generate a 64-bit output on each cycle.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module trivium_prng ( 
    clk, reset, reseed,
    key, iv,
    valid,
    prng_out
);

input clk, reset;
input reseed;
input [79:0] key, iv;
output valid;
output [63:0] prng_out;

parameter NBITS = 64;

reg valid_reg;
reg [5:1] wait_reg;
reg [63:0] prng_reg;
reg generate_rand;

wire [287:0] state_init;
reg  [287:0] state_reg;
assign state_init = {3'b111,112'b0,iv[0] ,iv[1] ,iv[2] ,iv[3] ,iv[4] ,iv[5] ,iv[6] ,iv[7] ,iv[8] ,iv[9] ,iv[10] ,iv[11] ,iv[12] ,iv[13] ,iv[14] ,iv[15] ,iv[16] ,iv[17] ,iv[18] ,iv[19] ,iv[20] ,iv[21] ,iv[22] ,iv[23] ,iv[24] ,iv[25] ,iv[26] ,iv[27] ,iv[28] ,iv[29] ,iv[30] ,iv[31] ,iv[32] ,iv[33] ,iv[34] ,iv[35] ,iv[36] ,iv[37] ,iv[38] ,iv[39] ,iv[40] ,iv[41] ,iv[42] ,iv[43] ,iv[44] ,iv[45] ,iv[46] ,iv[47] ,iv[48] ,iv[49] ,iv[50] ,iv[51] ,iv[52] ,iv[53] ,iv[54] ,iv[55] ,iv[56] ,iv[57] ,iv[58] ,iv[59] ,iv[60] ,iv[61] ,iv[62] ,iv[63] ,iv[64] ,iv[65] ,iv[66] ,iv[67] ,iv[68] ,iv[69] ,iv[70] ,iv[71] ,iv[72] ,iv[73] ,iv[74] ,iv[75] ,iv[76] ,iv[77] ,iv[78] ,iv[79] ,13'b0, key[0] ,key[1] ,key[2] ,key[3] ,key[4] ,key[5] ,key[6] ,key[7] ,key[8] ,key[9] ,key[10] ,key[11] ,key[12] ,key[13] ,key[14] ,key[15] ,key[16] ,key[17] ,key[18] ,key[19] ,key[20] ,key[21] ,key[22] ,key[23] ,key[24] ,key[25] ,key[26] ,key[27] ,key[28] ,key[29] ,key[30] ,key[31] ,key[32] ,key[33] ,key[34] ,key[35] ,key[36] ,key[37] ,key[38] ,key[39] ,key[40] ,key[41] ,key[42] ,key[43] ,key[44] ,key[45] ,key[46] ,key[47] ,key[48] ,key[49] ,key[50] ,key[51] ,key[52] ,key[53] ,key[54] ,key[55] ,key[56] ,key[57] ,key[58] ,key[59] ,key[60] ,key[61] ,key[62] ,key[63] ,key[64] ,key[65] ,key[66] ,key[67] ,key[68] ,key[69] ,key[70] ,key[71] ,key[72] ,key[73] ,key[74] ,key[75] ,key[76] ,key[77] ,key[78] ,key[79] };

reg [63:0] t1;
reg [63:0] t2;
reg [63:0] t3;

reg [63:0] t1_upd;
reg [63:0] t2_upd;
reg [63:0] t3_upd;

always @(*) begin
    t1 = state_reg[66-1 : 66-NBITS] ^ state_reg[93-1 : 93-NBITS];
    t2 = state_reg[162-1 : 162-NBITS] ^ state_reg[177-1 : 177-NBITS];
    t3 = state_reg[243-1 : 243-NBITS] ^ state_reg[288-1 : 288-NBITS];

    t1_upd = t1 ^ (state_reg[91-1 : 91-NBITS]   &   state_reg[92-1 : 92-NBITS]) ^ state_reg[171-1 : 171-NBITS];
    t2_upd = t2 ^ (state_reg[175-1 : 175-NBITS] & state_reg[176-1 : 176-NBITS]) ^ state_reg[264-1 : 264-NBITS];
    t3_upd = t3 ^ (state_reg[286-1 : 286-NBITS] & state_reg[287-1 : 287-NBITS]) ^  state_reg[69-1 : 69-NBITS];
end

always@(posedge clk) begin
    if(reset) begin
        state_reg <= state_init;
        prng_reg <= 64'b0;
        generate_rand <= 0;
    end
    else begin
        if(reseed) begin
            state_reg <= state_init;
            prng_reg <= 64'b0;
            generate_rand <= 1;
        end
        else if (generate_rand) begin
            prng_reg <= {t1[0] ^ t2[0] ^ t3[0] ,t1[1] ^ t2[1] ^ t3[1] ,t1[2] ^ t2[2] ^ t3[2] ,t1[3] ^ t2[3] ^ t3[3] ,t1[4] ^ t2[4] ^ t3[4] ,t1[5] ^ t2[5] ^ t3[5] ,t1[6] ^ t2[6] ^ t3[6] ,t1[7] ^ t2[7] ^ t3[7] ,t1[8] ^ t2[8] ^ t3[8] ,t1[9] ^ t2[9] ^ t3[9] ,t1[10] ^ t2[10] ^ t3[10] ,t1[11] ^ t2[11] ^ t3[11] ,t1[12] ^ t2[12] ^ t3[12] ,t1[13] ^ t2[13] ^ t3[13] ,t1[14] ^ t2[14] ^ t3[14] ,t1[15] ^ t2[15] ^ t3[15] ,t1[16] ^ t2[16] ^ t3[16] ,t1[17] ^ t2[17] ^ t3[17] ,t1[18] ^ t2[18] ^ t3[18] ,t1[19] ^ t2[19] ^ t3[19] ,t1[20] ^ t2[20] ^ t3[20] ,t1[21] ^ t2[21] ^ t3[21] ,t1[22] ^ t2[22] ^ t3[22] ,t1[23] ^ t2[23] ^ t3[23] ,t1[24] ^ t2[24] ^ t3[24] ,t1[25] ^ t2[25] ^ t3[25] ,t1[26] ^ t2[26] ^ t3[26] ,t1[27] ^ t2[27] ^ t3[27] ,t1[28] ^ t2[28] ^ t3[28] ,t1[29] ^ t2[29] ^ t3[29] ,t1[30] ^ t2[30] ^ t3[30] ,t1[31] ^ t2[31] ^ t3[31] ,t1[32] ^ t2[32] ^ t3[32] ,t1[33] ^ t2[33] ^ t3[33] ,t1[34] ^ t2[34] ^ t3[34] ,t1[35] ^ t2[35] ^ t3[35] ,t1[36] ^ t2[36] ^ t3[36] ,t1[37] ^ t2[37] ^ t3[37] ,t1[38] ^ t2[38] ^ t3[38] ,t1[39] ^ t2[39] ^ t3[39] ,t1[40] ^ t2[40] ^ t3[40] ,t1[41] ^ t2[41] ^ t3[41] ,t1[42] ^ t2[42] ^ t3[42] ,t1[43] ^ t2[43] ^ t3[43] ,t1[44] ^ t2[44] ^ t3[44] ,t1[45] ^ t2[45] ^ t3[45] ,t1[46] ^ t2[46] ^ t3[46] ,t1[47] ^ t2[47] ^ t3[47] ,t1[48] ^ t2[48] ^ t3[48] ,t1[49] ^ t2[49] ^ t3[49] ,t1[50] ^ t2[50] ^ t3[50] ,t1[51] ^ t2[51] ^ t3[51] ,t1[52] ^ t2[52] ^ t3[52] ,t1[53] ^ t2[53] ^ t3[53] ,t1[54] ^ t2[54] ^ t3[54] ,t1[55] ^ t2[55] ^ t3[55] ,t1[56] ^ t2[56] ^ t3[56] ,t1[57] ^ t2[57] ^ t3[57] ,t1[58] ^ t2[58] ^ t3[58] ,t1[59] ^ t2[59] ^ t3[59] ,t1[60] ^ t2[60] ^ t3[60] ,t1[61] ^ t2[61] ^ t3[61] ,t1[62] ^ t2[62] ^ t3[62] ,t1[63] ^ t2[63] ^ t3[63] };
            state_reg[92:0] <= {state_reg[93-1-NBITS:0], t3_upd};
            state_reg[176:93] <= {state_reg[177-1-NBITS : 94-1], t1_upd};
            state_reg[287:177] <= {state_reg[288-1-NBITS : 178-1], t2_upd};
            end        
    end
end


always@(posedge clk) begin
    if(reset) begin
        wait_reg <= 5'b0;
        valid_reg <= 0;
    end
    else begin
        if(generate_rand) begin
            if(wait_reg == 5'd20) begin
                valid_reg <= 1;
            end
            else begin
                wait_reg <= wait_reg + 5'd1;
                valid_reg <= 0;
            end
        end
    end
end

assign valid = valid_reg;
assign prng_out = prng_reg;
        

endmodule