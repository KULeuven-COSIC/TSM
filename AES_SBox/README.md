# AES S-Box
## Source Files

The top module [AES_sbox_opt.v](./rtl/AES_sbox_opt.v) contains the intermediate register stage of the S-Box. To enhance readability, the combinatorial logic preceding and following the register stage is contained in separate submodules labeled [AES_sbox_compute_subscript0](./rtl/AES_sbox_compute_subscript0.v) and [opt_AES_sbox_compute_subscript1](./rtl/opt_AES_sbox_compute_subscript1.v), respectively.

## Netlists

The Verilog files were synthesized using [NanGate 45nm Open Cell Library](https://www.nangate.com), with Synopsys DC Compiler v2021.06 as outlined in the paper. 

The *scripts* subfolder contains a synthesis script, [compile.tcl](./scripts/compile.tcl), which can be used as a reference for generating netlists and estimating area, maximum frequency as reported in our paper. To compile a design:

1. Set the top module of the design to be synthesized using the variable <code>TOPCELL_ENT</code> in the *compile.tcl* file.
2. Run the command <code>dc_shell -f compile.tcl</code> to compile the design.

We generated netlists for the AES S-Box using two distinct sets of options:

1.  <code>compile -exact_map</code>
2.  <code>compile_ultra -no_autoungroup -no_boundary_optimization</code>

These netlists can be found in the *netlist* subfolder.