`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:        COSIC, KU Leuven, Belgium
// Engineer:       Dilip Kumar S V
// Paper:          Higher-Order Time Sharing Masking
// Authors:        Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, 
//                 Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date:    02/22/2025
// Design Name:    Masked AES Top Module
// Module Name:    aes_top
// Description:    Implements the top-level module for AES encryption with Time Sharing Masking.
//                 It integrates the PRNG for key scheduling, AES key expansion, round function, 
//                 and manages the control signals to handle encryption and decryption tasks.
// Dependencies:    AES S-box, AES key schedule, and round function modules.
// Revision:       0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module aes_top ( clk, global_reset, global_start,
key_prng, prng_iv,
plaintext_share1, plaintext_share2, 
key_input_share1, key_input_share2,
ciphertext_share1_out,ciphertext_share2_out,
trigger_out, done_out
);


input clk ,global_reset, global_start;
input [80:1] key_prng;
input [960:1] prng_iv;
input [128:1] plaintext_share1;
input [128:1] plaintext_share2;
input [128:1] key_input_share1;
input [128:1] key_input_share2;
output [128:1] ciphertext_share1_out;
output [128:1] ciphertext_share2_out;
output trigger_out, done_out;

reg reset, start;

// Control logic
parameter AES_STATE_IDLE    = 8'd1 ;
parameter AES_STATE_CYCLE1  = 8'd2 ;
parameter AES_STATE_CYCLE2  = 8'd3 ;
parameter AES_STATE_CYCLE3  = 8'd4 ;
parameter AES_STATE_CYCLE4  = 8'd5 ;
parameter AES_STATE_CYCLE5  = 8'd6 ;
parameter AES_STATE_CYCLE6  = 8'd7 ;
parameter AES_STATE_CYCLE7  = 8'd8 ;
parameter AES_STATE_CYCLE8  = 8'd9 ;
parameter AES_STATE_CYCLE9  = 8'd10;
parameter AES_STATE_CYCLE10 = 8'd11;
parameter AES_STATE_CYCLE11 = 8'd12;
parameter AES_STATE_CYCLE12 = 8'd13;
parameter AES_STATE_CYCLE13 = 8'd14;
parameter AES_STATE_CYCLE14 = 8'd15;
parameter AES_STATE_CYCLE15 = 8'd16;
parameter AES_STATE_CYCLE16 = 8'd17;
parameter AES_STATE_CYCLE17 = 8'd18;
parameter AES_STATE_CYCLE18 = 8'd19;
parameter AES_STATE_CYCLE19 = 8'd20;
parameter AES_STATE_CYCLE20 = 8'd21;
parameter AES_STATE_CYCLE21 = 8'd22;
parameter AES_STATE_CYCLE22 = 8'd23;
 
reg [8:1] state_reg, state_next ;
reg in_operation_reg,in_operation_next ;


// Randomness generation

reg reset_prng, reseed_prng ;
wire [64:1]  prng_out_inst_1 , prng_out_inst_2 , prng_out_inst_3 , prng_out_inst_4 , prng_out_inst_5 , prng_out_inst_6 , prng_out_inst_7 , prng_out_inst_8 , prng_out_inst_9 , prng_out_inst_10, prng_out_inst_11, prng_out_inst_12 ;
wire valid_inst_1 , valid_inst_2 , valid_inst_3 , valid_inst_4 , valid_inst_5 , valid_inst_6 , valid_inst_7 , valid_inst_8 , valid_inst_9 , valid_inst_10, valid_inst_11, valid_inst_12 ;
wire [80:1]  iv_prng_inst_1  , iv_prng_inst_2  , iv_prng_inst_3  , iv_prng_inst_4  , iv_prng_inst_5  , iv_prng_inst_6  , iv_prng_inst_7  , iv_prng_inst_8  , iv_prng_inst_9  , iv_prng_inst_10 , iv_prng_inst_11 , iv_prng_inst_12 ;


assign { iv_prng_inst_1  , iv_prng_inst_2  , iv_prng_inst_3  , iv_prng_inst_4  , iv_prng_inst_5  , iv_prng_inst_6  , iv_prng_inst_7  , iv_prng_inst_8  , iv_prng_inst_9  , iv_prng_inst_10 , iv_prng_inst_11 , iv_prng_inst_12 } = prng_iv;

trivium_prng inst_1  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_1  ,    valid_inst_1  ,    prng_out_inst_1  );
trivium_prng inst_2  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_2  ,    valid_inst_2  ,    prng_out_inst_2  );
trivium_prng inst_3  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_3  ,    valid_inst_3  ,    prng_out_inst_3  );
trivium_prng inst_4  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_4  ,    valid_inst_4  ,    prng_out_inst_4  );
trivium_prng inst_5  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_5  ,    valid_inst_5  ,    prng_out_inst_5  );
trivium_prng inst_6  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_6  ,    valid_inst_6  ,    prng_out_inst_6  );
trivium_prng inst_7  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_7  ,    valid_inst_7  ,    prng_out_inst_7  );
trivium_prng inst_8  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_8  ,    valid_inst_8  ,    prng_out_inst_8  );
trivium_prng inst_9  (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_9  ,    valid_inst_9  ,    prng_out_inst_9  );
trivium_prng inst_10 (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_10 ,    valid_inst_10 ,    prng_out_inst_10 );
trivium_prng inst_11 (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_11 ,    valid_inst_11 ,    prng_out_inst_11 );
trivium_prng inst_12 (     clk, reset_prng, reseed_prng,    key_prng , iv_prng_inst_12 ,    valid_inst_12 ,    prng_out_inst_12 );

wire all_valid;
assign all_valid = valid_inst_1 & valid_inst_2 & valid_inst_3 & valid_inst_4 & valid_inst_5 & valid_inst_6 & valid_inst_7 & valid_inst_8 & valid_inst_9 & valid_inst_10& valid_inst_11& valid_inst_12 ;

wire [768:1] online_randomess;
assign online_randomess = {prng_out_inst_1 , prng_out_inst_2 , prng_out_inst_3 , prng_out_inst_4 , prng_out_inst_5 , prng_out_inst_6 , prng_out_inst_7 , prng_out_inst_8 , prng_out_inst_9 , prng_out_inst_10, prng_out_inst_11, prng_out_inst_12 };


// Key schedule and round function
wire done_aes;
wire [128:1] ciphertext_share1, ciphertext_share2, output_round_key_share1, output_round_key_share2;

aes_keyschedule inst_aes_keyschedule( clk, reset, start, online_randomess[152:1],online_randomess[768:737],
key_input_share1, key_input_share2,
output_round_key_share1, output_round_key_share2
);
aes_round_function inst_aes_round_function ( clk, reset, start, online_randomess[760:153],online_randomess[160:33],
plaintext_share1, plaintext_share2, key_input_share1, key_input_share2, output_round_key_share1, output_round_key_share2,
done_aes, ciphertext_share1, ciphertext_share2
);

assign ciphertext_share1_out = ciphertext_share1;
assign ciphertext_share2_out = ciphertext_share2;
assign done_out = done_aes;
assign trigger_out = all_valid;

always@(posedge clk) begin
    if(global_reset) begin
        state_reg <= AES_STATE_IDLE;
        in_operation_reg <= 0;
    end
    else if(global_start) begin
        state_reg <= AES_STATE_CYCLE1;
        in_operation_reg <= 1;
    end
    else begin
        state_reg <= state_next;
        in_operation_reg <= in_operation_next;
    end
end

always@(*) begin
    if(state_reg == AES_STATE_IDLE ) begin
        state_next <= AES_STATE_IDLE;
        in_operation_next <= 0;    
    end
	 else if(state_reg == AES_STATE_CYCLE22) begin
        state_next <= AES_STATE_CYCLE22;
        in_operation_next <= 0;    
    end
	 
    else if(in_operation_reg) begin
        if (state_reg == AES_STATE_CYCLE4 && all_valid == 0) begin
            state_next <= state_reg;
            in_operation_next <= in_operation_reg;
        end
        else if (state_reg == AES_STATE_CYCLE7 && done_aes == 0) begin
            state_next <= state_reg;
            in_operation_next <= in_operation_reg;
        end
        else begin
            state_next <= state_reg + 8'd1;
            in_operation_next <= 1;
        end
    end
    else begin
        state_next <= state_reg;
		in_operation_next <= in_operation_reg;
    end
end

always@(*) begin
    case (state_reg)
        AES_STATE_IDLE: begin
            reset           <= 1;
            start           <= 0;
            reset_prng      <= 1;
            reseed_prng     <= 0;
        end
        AES_STATE_CYCLE1: begin  
            // Reset PRNG
            reset           <= 1;
            start           <= 0;
            reset_prng      <= 1;
            reseed_prng     <= 0;
        end
        AES_STATE_CYCLE2: begin 
            // Reset off
            reset           <= 1;
            start           <= 0;
            reset_prng      <= 0;
            reseed_prng     <= 0;
        end
        AES_STATE_CYCLE3: begin 
            // Reseed PRNG
            reset           <= 1;
            start           <= 0;
            reset_prng      <= 0;
            reseed_prng     <= 1;
        end
        AES_STATE_CYCLE4: begin 
            // Wait PRNG
            reset           <= 1;
            start           <= 0;
            reset_prng      <= 0;
            reseed_prng     <= 0;
        end
        AES_STATE_CYCLE5: begin 
            // Reset off AES
            reset           <= 0;
            start           <= 0;
            reset_prng      <= 0;
            reseed_prng     <= 0;
        end
        AES_STATE_CYCLE6: begin 
            // Start AES
            reset           <= 0;
            start           <= 1;
            reset_prng      <= 0;
            reseed_prng     <= 0;
        end
        AES_STATE_CYCLE7: begin 
            // Wait for done AES
            reset           <= 0;
            start           <= 0;
            reset_prng      <= 0;
            reseed_prng     <= 0;
        end



        default: begin
            reset           <= 0;
            start           <= 0;
            reset_prng      <= 0;
            reseed_prng     <= 0;
        end
    endcase
end


endmodule