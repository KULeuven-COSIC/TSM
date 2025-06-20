`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 01:03:04 06/29/2024
// Design Name: AES S-Box Second-Order PINI Testbench
// Module Name: test_aes_sbox_secondorder_tworegstages
// Project Name: sakura_x_main
// Target Device: FPGA
// Tool Versions: Vivado 2020.2
// Description: Testbench for validating AES S-box 
// Dependencies: AES_secondorder_PINI_tworegstages_final
//
// Revision:
// Revision 0.01 - Initial version
//
//////////////////////////////////////////////////////////////////////////////////

module test_aes_sbox_twocycle_secondorder;

	// Inputs
	reg clk;
	reg [278:1] rand_bit_cycle1;
	reg [508:1] rand_bit_cycle2;
	reg [7:0] sbox_input_share1;
	reg [7:0] sbox_input_share2;
	reg [7:0] sbox_input_share3;

	// Outputs
	wire [7:0] output_share1;
	wire [7:0] output_share2;
	wire [7:0] output_share3;

	// Instantiate the Unit Under Test (UUT)
	AES_sbox_secondorder_tworegstages_final uut (
		.clk(clk), 
		.rand_bit_cycle1(rand_bit_cycle1), 
		.rand_bit_cycle2(rand_bit_cycle2), 
		.sbox_input_share1(sbox_input_share1), 
		.sbox_input_share2(sbox_input_share2), 
		.sbox_input_share3(sbox_input_share3), 
		.output_share1(output_share1), 
		.output_share2(output_share2), 
		.output_share3(output_share3)
	);



		
	wire [7:0] unmasked_output_share;
	assign unmasked_output_share = output_share1 ^ output_share2 ^ output_share3 ;
	
	//------------------------------------------------------------------------
	//  AES S‑Box lookup table 
	//------------------------------------------------------------------------

	reg [7:0] sbox_table [0:255];

	initial begin
	  sbox_table[  0] = 8'h63;
	  sbox_table[  1] = 8'h7C;
	  sbox_table[  2] = 8'h77;
	  sbox_table[  3] = 8'h7B;
	  sbox_table[  4] = 8'hF2;
	  sbox_table[  5] = 8'h6B;
	  sbox_table[  6] = 8'h6F;
	  sbox_table[  7] = 8'hC5;
	  sbox_table[  8] = 8'h30;
	  sbox_table[  9] = 8'h01;
	  sbox_table[ 10] = 8'h67;
	  sbox_table[ 11] = 8'h2B;
	  sbox_table[ 12] = 8'hFE;
	  sbox_table[ 13] = 8'hD7;
	  sbox_table[ 14] = 8'hAB;
	  sbox_table[ 15] = 8'h76;
	  sbox_table[ 16] = 8'hCA;
	  sbox_table[ 17] = 8'h82;
	  sbox_table[ 18] = 8'hC9;
	  sbox_table[ 19] = 8'h7D;
	  sbox_table[ 20] = 8'hFA;
	  sbox_table[ 21] = 8'h59;
	  sbox_table[ 22] = 8'h47;
	  sbox_table[ 23] = 8'hF0;
	  sbox_table[ 24] = 8'hAD;
	  sbox_table[ 25] = 8'hD4;
	  sbox_table[ 26] = 8'hA2;
	  sbox_table[ 27] = 8'hAF;
	  sbox_table[ 28] = 8'h9C;
	  sbox_table[ 29] = 8'hA4;
	  sbox_table[ 30] = 8'h72;
	  sbox_table[ 31] = 8'hC0;
	  sbox_table[ 32] = 8'hB7;
	  sbox_table[ 33] = 8'hFD;
	  sbox_table[ 34] = 8'h93;
	  sbox_table[ 35] = 8'h26;
	  sbox_table[ 36] = 8'h36;
	  sbox_table[ 37] = 8'h3F;
	  sbox_table[ 38] = 8'hF7;
	  sbox_table[ 39] = 8'hCC;
	  sbox_table[ 40] = 8'h34;
	  sbox_table[ 41] = 8'hA5;
	  sbox_table[ 42] = 8'hE5;
	  sbox_table[ 43] = 8'hF1;
	  sbox_table[ 44] = 8'h71;
	  sbox_table[ 45] = 8'hD8;
	  sbox_table[ 46] = 8'h31;
	  sbox_table[ 47] = 8'h15;
	  sbox_table[ 48] = 8'h04;
	  sbox_table[ 49] = 8'hC7;
	  sbox_table[ 50] = 8'h23;
	  sbox_table[ 51] = 8'hC3;
	  sbox_table[ 52] = 8'h18;
	  sbox_table[ 53] = 8'h96;
	  sbox_table[ 54] = 8'h05;
	  sbox_table[ 55] = 8'h9A;
	  sbox_table[ 56] = 8'h07;
	  sbox_table[ 57] = 8'h12;
	  sbox_table[ 58] = 8'h80;
	  sbox_table[ 59] = 8'hE2;
	  sbox_table[ 60] = 8'hEB;
	  sbox_table[ 61] = 8'h27;
	  sbox_table[ 62] = 8'hB2;
	  sbox_table[ 63] = 8'h75;
	  sbox_table[ 64] = 8'h09;
	  sbox_table[ 65] = 8'h83;
	  sbox_table[ 66] = 8'h2C;
	  sbox_table[ 67] = 8'h1A;
	  sbox_table[ 68] = 8'h1B;
	  sbox_table[ 69] = 8'h6E;
	  sbox_table[ 70] = 8'h5A;
	  sbox_table[ 71] = 8'hA0;
	  sbox_table[ 72] = 8'h52;
	  sbox_table[ 73] = 8'h3B;
	  sbox_table[ 74] = 8'hD6;
	  sbox_table[ 75] = 8'hB3;
	  sbox_table[ 76] = 8'h29;
	  sbox_table[ 77] = 8'hE3;
	  sbox_table[ 78] = 8'h2F;
	  sbox_table[ 79] = 8'h84;
	  sbox_table[ 80] = 8'h53;
	  sbox_table[ 81] = 8'hD1;
	  sbox_table[ 82] = 8'h00;
	  sbox_table[ 83] = 8'hED;
	  sbox_table[ 84] = 8'h20;
	  sbox_table[ 85] = 8'hFC;
	  sbox_table[ 86] = 8'hB1;
	  sbox_table[ 87] = 8'h5B;
	  sbox_table[ 88] = 8'h6A;
	  sbox_table[ 89] = 8'hCB;
	  sbox_table[ 90] = 8'hBE;
	  sbox_table[ 91] = 8'h39;
	  sbox_table[ 92] = 8'h4A;
	  sbox_table[ 93] = 8'h4C;
	  sbox_table[ 94] = 8'h58;
	  sbox_table[ 95] = 8'hCF;
	  sbox_table[ 96] = 8'hD0;
	  sbox_table[ 97] = 8'hEF;
	  sbox_table[ 98] = 8'hAA;
	  sbox_table[ 99] = 8'hFB;
	  sbox_table[100] = 8'h43;
	  sbox_table[101] = 8'h4D;
	  sbox_table[102] = 8'h33;
	  sbox_table[103] = 8'h85;
	  sbox_table[104] = 8'h45;
	  sbox_table[105] = 8'hF9;
	  sbox_table[106] = 8'h02;
	  sbox_table[107] = 8'h7F;
	  sbox_table[108] = 8'h50;
	  sbox_table[109] = 8'h3C;
	  sbox_table[110] = 8'h9F;
	  sbox_table[111] = 8'hA8;
	  sbox_table[112] = 8'h51;
	  sbox_table[113] = 8'hA3;
	  sbox_table[114] = 8'h40;
	  sbox_table[115] = 8'h8F;
	  sbox_table[116] = 8'h92;
	  sbox_table[117] = 8'h9D;
	  sbox_table[118] = 8'h38;
	  sbox_table[119] = 8'hF5;
	  sbox_table[120] = 8'hBC;
	  sbox_table[121] = 8'hB6;
	  sbox_table[122] = 8'hDA;
	  sbox_table[123] = 8'h21;
	  sbox_table[124] = 8'h10;
	  sbox_table[125] = 8'hFF;
	  sbox_table[126] = 8'hF3;
	  sbox_table[127] = 8'hD2;
	  sbox_table[128] = 8'hCD;
	  sbox_table[129] = 8'h0C;
	  sbox_table[130] = 8'h13;
	  sbox_table[131] = 8'hEC;
	  sbox_table[132] = 8'h5F;
	  sbox_table[133] = 8'h97;
	  sbox_table[134] = 8'h44;
	  sbox_table[135] = 8'h17;
	  sbox_table[136] = 8'hC4;
	  sbox_table[137] = 8'hA7;
	  sbox_table[138] = 8'h7E;
	  sbox_table[139] = 8'h3D;
	  sbox_table[140] = 8'h64;
	  sbox_table[141] = 8'h5D;
	  sbox_table[142] = 8'h19;
	  sbox_table[143] = 8'h73;
	  sbox_table[144] = 8'h60;
	  sbox_table[145] = 8'h81;
	  sbox_table[146] = 8'h4F;
	  sbox_table[147] = 8'hDC;
	  sbox_table[148] = 8'h22;
	  sbox_table[149] = 8'h2A;
	  sbox_table[150] = 8'h90;
	  sbox_table[151] = 8'h88;
	  sbox_table[152] = 8'h46;
	  sbox_table[153] = 8'hEE;
	  sbox_table[154] = 8'hB8;
	  sbox_table[155] = 8'h14;
	  sbox_table[156] = 8'hDE;
	  sbox_table[157] = 8'h5E;
	  sbox_table[158] = 8'h0B;
	  sbox_table[159] = 8'hDB;
	  sbox_table[160] = 8'hE0;
	  sbox_table[161] = 8'h32;
	  sbox_table[162] = 8'h3A;
	  sbox_table[163] = 8'h0A;
	  sbox_table[164] = 8'h49;
	  sbox_table[165] = 8'h06;
	  sbox_table[166] = 8'h24;
	  sbox_table[167] = 8'h5C;
	  sbox_table[168] = 8'hC2;
	  sbox_table[169] = 8'hD3;
	  sbox_table[170] = 8'hAC;
	  sbox_table[171] = 8'h62;
	  sbox_table[172] = 8'h91;
	  sbox_table[173] = 8'h95;
	  sbox_table[174] = 8'hE4;
	  sbox_table[175] = 8'h79;
	  sbox_table[176] = 8'hE7;
	  sbox_table[177] = 8'hC8;
	  sbox_table[178] = 8'h37;
	  sbox_table[179] = 8'h6D;
	  sbox_table[180] = 8'h8D;
	  sbox_table[181] = 8'hD5;
	  sbox_table[182] = 8'h4E;
	  sbox_table[183] = 8'hA9;
	  sbox_table[184] = 8'h6C;
	  sbox_table[185] = 8'h56;
	  sbox_table[186] = 8'hF4;
	  sbox_table[187] = 8'hEA;
	  sbox_table[188] = 8'h65;
	  sbox_table[189] = 8'h7A;
	  sbox_table[190] = 8'hAE;
	  sbox_table[191] = 8'h08;
	  sbox_table[192] = 8'hBA;
	  sbox_table[193] = 8'h78;
	  sbox_table[194] = 8'h25;
	  sbox_table[195] = 8'h2E;
	  sbox_table[196] = 8'h1C;
	  sbox_table[197] = 8'hA6;
	  sbox_table[198] = 8'hB4;
	  sbox_table[199] = 8'hC6;
	  sbox_table[200] = 8'hE8;
	  sbox_table[201] = 8'hDD;
	  sbox_table[202] = 8'h74;
	  sbox_table[203] = 8'h1F;
	  sbox_table[204] = 8'h4B;
	  sbox_table[205] = 8'hBD;
	  sbox_table[206] = 8'h8B;
	  sbox_table[207] = 8'h8A;
	  sbox_table[208] = 8'h70;
	  sbox_table[209] = 8'h3E;
	  sbox_table[210] = 8'hB5;
	  sbox_table[211] = 8'h66;
	  sbox_table[212] = 8'h48;
	  sbox_table[213] = 8'h03;
	  sbox_table[214] = 8'hF6;
	  sbox_table[215] = 8'h0E;
	  sbox_table[216] = 8'h61;
	  sbox_table[217] = 8'h35;
	  sbox_table[218] = 8'h57;
	  sbox_table[219] = 8'hB9;
	  sbox_table[220] = 8'h86;
	  sbox_table[221] = 8'hC1;
	  sbox_table[222] = 8'h1D;
	  sbox_table[223] = 8'h9E;
	  sbox_table[224] = 8'hE1;
	  sbox_table[225] = 8'hF8;
	  sbox_table[226] = 8'h98;
	  sbox_table[227] = 8'h11;
	  sbox_table[228] = 8'h69;
	  sbox_table[229] = 8'hD9;
	  sbox_table[230] = 8'h8E;
	  sbox_table[231] = 8'h94;
	  sbox_table[232] = 8'h9B;
	  sbox_table[233] = 8'h1E;
	  sbox_table[234] = 8'h87;
	  sbox_table[235] = 8'hE9;
	  sbox_table[236] = 8'hCE;
	  sbox_table[237] = 8'h55;
	  sbox_table[238] = 8'h28;
	  sbox_table[239] = 8'hDF;
	  sbox_table[240] = 8'h8C;
	  sbox_table[241] = 8'hA1;
	  sbox_table[242] = 8'h89;
	  sbox_table[243] = 8'h0D;
	  sbox_table[244] = 8'hBF;
	  sbox_table[245] = 8'hE6;
	  sbox_table[246] = 8'h42;
	  sbox_table[247] = 8'h68;
	  sbox_table[248] = 8'h41;
	  sbox_table[249] = 8'h99;
	  sbox_table[250] = 8'h2D;
	  sbox_table[251] = 8'h0F;
	  sbox_table[252] = 8'hB0;
	  sbox_table[253] = 8'h54;
	  sbox_table[254] = 8'hBB;
	  sbox_table[255] = 8'h16;
	end



		initial begin
			clk = 0;
			forever begin
			#10 clk = ~clk;
			end
		end

		integer i;
		integer passed, errors;

		task apply_and_check(input [7:0] share1,
						  input [7:0] share2,
						  input [7:0] share3);
		reg [7:0] plain;
		reg [7:0] exp;
		begin
		sbox_input_share1 = share1;
		sbox_input_share2 = share2;
		sbox_input_share3 = share3;

		// compute the unmasked plain input and look up sbox
		plain = share1 ^ share2 ^ share3;
		exp   = sbox_table[plain];

		// wait  = 4 clock edges
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		#1;  // small settle time

		if (unmasked_output_share !== exp) begin
		$display("ERROR @ time=%0t: in=%02h, got=%02h, exp=%02h",
				  $time, plain, unmasked_output_share, exp);
		errors = errors + 1;
		end else begin
		passed = passed + 1;
		end
		end
		endtask






		initial begin
			// Initialize Inputs
			rand_bit_cycle1 = 278'b11110111100111110011100100110100101111111110110101111100001111100011100000000110101111011000100011111001011011111101110111010001110011011011110001011010001010101001001111111111001110010010000010101011010111010010100110010111111111011000101111110010101100001111011011110001110101;
			rand_bit_cycle2 = 508'b1011000100001100111111001010010111000010011100001111000010101111000101010001000111111011100100101011110000100001000100111101000100101100111110101100101010101010100111111000101010010111001101010101101100011001011011111010101100100110111000110010011010000001001010110100000001101110100100001101000100001001111010101101001010101111011110110000010100100000100000010011111010000111110000101111011110001100000001110100110101000100111111101000001000000111010110101001110011010000101001111010101011110101011011101011;
			sbox_input_share1 = 0;
			sbox_input_share2 = 0;
			sbox_input_share3 = 0;
			passed = 0;
			errors = 0;

			#100;  
			// iterate over all 256 possible values on share3
			for (i = 0; i < 256; i = i + 1) begin
			apply_and_check(8'd0, 8'd0, i);
			end

			// report
			$display("=== TEST SUMMARY ===");
			$display("  Passed : %0d", passed);
			$display("  Failed : %0d", errors);
			if (errors == 0)
			$display(">>> ALL TESTS PASSED <<<");
			else
			$display(">>> %0d ERRORS DETECTED <<<", errors);

			$finish;
		end

      
endmodule

