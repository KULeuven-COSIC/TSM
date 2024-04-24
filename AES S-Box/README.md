# AES S-Box
## Source Files

The top module [AES_sbox_opt.v](./rtl/AES_sbox_opt.v) contains the intermediate register stage of the S-Box. To enhance readability, the combinatorial logic preceding and following the register stage is contained in separate submodules labeled [AES_sbox_compute_subscript0](./rtl/AES_sbox_compute_subscript0.v) and [opt_AES_sbox_compute_subscript1](./rtl/opt_AES_sbox_compute_subscript1.v), respectively.

## Netlist and Formal Verification Results

The Verilog files were synthesized using [NanGate 45nm Open Cell Library](https://www.nangate.com), with Synopsys DC Compiler v2021.06 as outlined in the paper. The netlists generated using the compiler options:

1.  <code>compile -exact_map</code>
2.  <code>compile_ultra -no_autoungroup -no_boundary_optimization</code>

can be found in the `netlist` folder.
