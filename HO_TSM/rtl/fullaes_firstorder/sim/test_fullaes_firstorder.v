`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 07/01/2024
// Design Name: AES Top Testbench
// Module Name: test_aes_top
// Project Name: sakura_x_main
// Target Device: 
// Tool Versions: 
// Description: Testbench for verifying the functionality of aes_top module.
// Dependencies: aes_top
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module test_fullaes_firstorder;

	// Inputs
	reg clk;
	reg global_reset;
	reg global_start;
	reg [80:1] key_prng;
	reg [960:1] prng_iv;
	reg [128:1] plaintext_share1;
	reg [128:1] plaintext_share2;
	reg [128:1] key_input_share1;
	reg [128:1] key_input_share2;

	// Outputs
	wire [128:1] ciphertext_share1;
	wire [128:1] ciphertext_share2;
	wire trigger;
	wire done;

	localparam NUM_TESTS = 4;
	reg [127:0] pt1_vec [0:NUM_TESTS-1],
				  pt2_vec [0:NUM_TESTS-1];
	reg [127:0] key1_vec[0:NUM_TESTS-1],
				  key2_vec[0:NUM_TESTS-1];
	reg [127:0] exp_ct_vec[0:NUM_TESTS-1];

	// Instantiate the Unit Under Test (UUT)
	aes_top uut (
		.clk(clk), 
		.global_reset(global_reset), 
		.global_start(global_start), 
		.key_prng(key_prng), 
		.prng_iv(prng_iv), 
		.plaintext_share1(plaintext_share1), 
		.plaintext_share2(plaintext_share2), 
		.key_input_share1(key_input_share1), 
		.key_input_share2(key_input_share2),
		.ciphertext_share1_out(ciphertext_share1), 
		.ciphertext_share2_out(ciphertext_share2),
		.done_out(done),
		.trigger_out(trigger)
	);
	
	initial begin
		clk = 0;
		forever begin
		#10 clk = ~clk;
		end
	end

	integer i, passed, errors;
	wire [127:0] cipher;
	assign cipher = ciphertext_share1 ^ ciphertext_share2;





  initial begin
    
    // Plaintext: 6BC1BEE22E409F96E93D7E117393172A
    // Key      : 2B7E151628AED2A6ABF7158809CF4F3C
    // Cipher   : 3AD77BB40D7A3660A89ECAF32466EF97	     
    pt1_vec[0]  = 128'hCAFEBABECAFEBABECAFEBABECAFEBABE;
    pt2_vec[0]  = 128'hA13F045CE4BE252823C3C4AFB96DAD94; 
    key1_vec[0] = 128'hFEEDFACEFEEDFACEFEEDFACEFEEDFACE;
    key2_vec[0] = 128'hD593EFD8D6432868551AEF46F722B5F2; 
    exp_ct_vec[0] = 128'h3AD77BB40D7A3660A89ECAF32466EF97;


    // Plaintext: AE2D8A571E03AC9C9EB76FAC45AF8E51
    // Cipher   : F5D3D58503B9699DE785895A96FDBAAF
    pt1_vec[1]  = 128'h1234567890ABCDEFFEDCBA0987654321;
    pt2_vec[1]  = 128'hBC19DC2F8EA86173606BD5A5C2CACD70; 
    key1_vec[1] = 128'h0BADF00D0BADF00D0BADF00D0BADF00D;
    key2_vec[1] = 128'h20D3E51B230322ABA05AE5850262BF31; 
    exp_ct_vec[1] = 128'hF5D3D58503B9699DE785895A96FDBAAF;


    // Plaintext: 30C81C46A35CE411E5FBC1191A0A52EF
    // Cipher   : 43B1CD7F598ECE23881B00E3ED030688
    pt1_vec[2]  = 128'hFFFFFFFF00000000FFFFFFFF00000000;
    pt2_vec[2]  = 128'hCF37E3B9A35CE4111A043EE61A0A52EF; 
    key1_vec[2] = 128'h0123456789ABCDEFFEDCBA9876543210;
    key2_vec[2] = 128'h2A5D5071A1051F49552BAF107F9B7D2C; 
    exp_ct_vec[2] = 128'h43B1CD7F598ECE23881B00E3ED030688;

    // Plaintext: F69F2445DF4F9B17AD2B417BE66C3710
    // Cipher   : 7B0C785E27E8AD3F8223207104725DD4
    pt1_vec[3]  = 128'hAAAAAAAABBBBBBBBCCCCCCCCDDDDDDDD;
    pt2_vec[3]  = 128'h5C358EEF64F420AC61E78DB73BB1EACD; 
    key1_vec[3] = 128'hFFFFFFFFFFFFFFFF0000000000000000;
    key2_vec[3] = 128'hD481EAE9D7512D59ABF7158809CF4F3C; 
    exp_ct_vec[3] = 128'h7B0C785E27E8AD3F8223207104725DD4;


    // Initialize Inputs
    global_reset = 0;
    global_start = 0;
    key_prng = 80'he7c3e9df480ad4aca766;
    prng_iv = 960'h29cff9a30704e8aebbeb34fb01266f53d07d0173ea941d849921861e6d13bb4a9154d4f53adf070f017a055ce4238910a43669cb65169dfe580022c2cb659d60b7ae89d1503ac69a8121bd354d8f42e5cc503f78749ce912724be231bb89d2b0db006a3bcd12d3564d6d46ea010f5f82f1b2a2f7c2298a4e;
    plaintext_share1 = 0;
    plaintext_share2 = 0;
    key_input_share1 = 0;
    key_input_share2 = 0;

    // Wait 100 ns for global reset to finish
    #100;
        
    // Add stimulus here

    passed = 0;
    errors = 0;

    #100;
    global_reset = 1;
    global_start = 0;
    #20;
    global_reset = 0;

    for (i = 0; i < NUM_TESTS; i = i + 1) begin
      plaintext_share1    = pt1_vec[i];
      plaintext_share2    = pt2_vec[i];
      key_input_share1    = key1_vec[i];
      key_input_share2    = key2_vec[i];

      #10; 
      global_start = 1;
      #20; 
      global_start = 0;

      wait (done);
      #2;  // small settle

      // Check result
      if (cipher !== exp_ct_vec[i]) begin
        $display("ERROR test[%0d] @ %0t: got %032h, expected %032h",
                 i, $time, cipher, exp_ct_vec[i]);
        errors = errors + 1;
      end else begin
        passed = passed + 1;
      end

      // small gap before next test
      #200;
		global_reset = 1;
		#20;
		global_reset = 0;

    end

    $display("=== AES‑TOP TEST RESULTS ===");
    $display("  Total vectors : %0d", NUM_TESTS);
    $display("  Passed        : %0d", passed);
    $display("  Failed        : %0d", errors);
    if (errors == 0)
      $display(">>> ALL AES TESTS PASSED! <<<");
    else
      $display(">>> %0d TESTS FAILED! <<<", errors);

    $finish;
  end

endmodule

