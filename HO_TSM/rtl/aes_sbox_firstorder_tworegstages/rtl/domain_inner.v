`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: COSIC, KU Leuven, Belgium
// Engineer: Dilip Kumar S V
// Paper: Higher-Order Time Sharing Masking
// Authors: Dilip Kumar S. V., Siemen Dhooghe, Josep Balasch, Benedikt Gierlichs, Ingrid Verbauwhede
// Create Date: 02/22/2025
// Design Name: Domain Inner
// Module Name: domain_inner
// Description: Calculates all the inner-module terms for the eight S-Box output equations.
// Dependencies: None
// Revision: 0.01 - Initial version
//////////////////////////////////////////////////////////////////////////////////

module domain_inner (
     output_x0_share1, output_x1_share1, output_x2_share1, output_x3_share1, output_x0x1_share1, output_x0x2_share1, output_x0x3_share1, output_x1x2_share1, output_x1x3_share1, output_x2x3_share1, output_x0x1x2_share1, output_x0x1x3_share1, output_x0x2x3_share1, output_x1x2x3_share1, output_x0x1x2x3_share1 ,   output_x4_share1, output_x5_share1, output_x6_share1, output_x7_share1, output_x4x5_share1, output_x4x6_share1, output_x4x7_share1, output_x5x6_share1, output_x5x7_share1, output_x6x7_share1, output_x4x5x6_share1, output_x4x5x7_share1, output_x4x6x7_share1, output_x5x6x7_share1, output_x4x5x6x7_share1 ,
inner_module_equation_num0_domain_1 , inner_module_equation_num1_domain_1 , inner_module_equation_num2_domain_1 , inner_module_equation_num3_domain_1 , inner_module_equation_num4_domain_1 , inner_module_equation_num5_domain_1 , inner_module_equation_num6_domain_1 , inner_module_equation_num7_domain_1 

);

input output_x0_share1, output_x1_share1, output_x2_share1, output_x3_share1, output_x0x1_share1, output_x0x2_share1, output_x0x3_share1, output_x1x2_share1, output_x1x3_share1, output_x2x3_share1, output_x0x1x2_share1, output_x0x1x3_share1, output_x0x2x3_share1, output_x1x2x3_share1, output_x0x1x2x3_share1 ,   output_x4_share1, output_x5_share1, output_x6_share1, output_x7_share1, output_x4x5_share1, output_x4x6_share1, output_x4x7_share1, output_x5x6_share1, output_x5x7_share1, output_x6x7_share1, output_x4x5x6_share1, output_x4x5x7_share1, output_x4x6x7_share1, output_x5x6x7_share1, output_x4x5x6x7_share1 ;
output inner_module_equation_num0_domain_1 , inner_module_equation_num1_domain_1 , inner_module_equation_num2_domain_1 , inner_module_equation_num3_domain_1 , inner_module_equation_num4_domain_1 , inner_module_equation_num5_domain_1 , inner_module_equation_num6_domain_1 , inner_module_equation_num7_domain_1 ;

assign inner_module_equation_num0_domain_1 =     output_x0x1x2x3_share1  ^  output_x0x1_share1  ^  output_x0_share1  ^  output_x1x2x3_share1  ^  output_x1x2_share1  ^  output_x1x3_share1  ^  output_x2x3_share1  ^  output_x2_share1  ^  output_x3_share1  ^  output_x4x5x6_share1  ^  output_x4x6_share1  ^  output_x4_share1  ^  output_x5x6x7_share1  ^  output_x5x6_share1  ^  output_x5x7_share1  ^  output_x6x7_share1   ;
assign inner_module_equation_num1_domain_1 =     output_x0x1x3_share1  ^  output_x0x1_share1  ^  output_x0x2x3_share1  ^  output_x0x2_share1  ^  output_x0x3_share1  ^  output_x0_share1  ^  output_x1x2x3_share1  ^  output_x1x3_share1  ^  output_x2x3_share1  ^  output_x3_share1  ^  output_x4x5_share1  ^  output_x4x6_share1  ^  output_x5x6x7_share1  ^  output_x6_share1  ^  output_x7_share1   ;
assign inner_module_equation_num2_domain_1 =     output_x0x1x3_share1  ^  output_x0x2x3_share1  ^  output_x0x2_share1  ^  output_x0x3_share1  ^  output_x0_share1  ^  output_x1_share1  ^  output_x2x3_share1  ^  output_x4x5x6x7_share1  ^  output_x4x6x7_share1  ^  output_x4x7_share1  ^  output_x5x6_share1  ^  output_x5_share1  ^  output_x6x7_share1  ^  output_x7_share1   ;
assign inner_module_equation_num3_domain_1 =     output_x0x1x2x3_share1  ^  output_x0x1x3_share1  ^  output_x0x2x3_share1  ^  output_x0x3_share1  ^  output_x0_share1  ^  output_x1x2x3_share1  ^  output_x1x2_share1  ^  output_x2x3_share1  ^  output_x4x5x6x7_share1  ^  output_x4x5_share1  ^  output_x4_share1  ^  output_x5x6x7_share1  ^  output_x5x6_share1  ^  output_x5x7_share1  ^  output_x6x7_share1  ^  output_x6_share1  ^  output_x7_share1   ;
assign inner_module_equation_num4_domain_1 =     output_x0x1_share1  ^  output_x0x2x3_share1  ^  output_x0_share1  ^  output_x1_share1  ^  output_x2x3_share1  ^  output_x2_share1  ^  output_x3_share1  ^  output_x4x5x7_share1  ^  output_x4x5_share1  ^  output_x4x6x7_share1  ^  output_x4x6_share1  ^  output_x5x6x7_share1  ^  output_x5x7_share1  ^  output_x5_share1  ^  output_x6x7_share1   ;
assign inner_module_equation_num5_domain_1 =     output_x0x1x2x3_share1  ^  output_x0x1x2_share1  ^  output_x0x1x3_share1  ^  output_x0x3_share1  ^  output_x4x5x7_share1  ^  output_x4x6_share1  ^  output_x4_share1  ^  output_x5x6x7_share1  ^  output_x5x7_share1  ^  output_x6_share1  ^  output_x7_share1   ;
assign inner_module_equation_num6_domain_1 =     output_x0x1x3_share1  ^  output_x1x3_share1  ^  output_x2x3_share1  ^  output_x3_share1  ^  output_x4x5x6x7_share1  ^  output_x4x5x6_share1  ^  output_x4x6_share1  ^  output_x5x6x7_share1  ^  output_x5x7_share1  ^  output_x5_share1  ^  output_x6_share1   ;
assign inner_module_equation_num7_domain_1 =     output_x0x1x2x3_share1  ^  output_x0x2x3_share1  ^  output_x0x2_share1  ^  output_x1x2x3_share1  ^  output_x1x2_share1  ^  output_x2_share1  ^  output_x4x5x6x7_share1  ^  output_x4x5x6_share1  ^  output_x4x5x7_share1  ^  output_x4x6x7_share1  ^  output_x4x6_share1  ^  output_x4_share1  ^  output_x5x7_share1  ^  output_x5_share1  ^  output_x7_share1   ;


endmodule