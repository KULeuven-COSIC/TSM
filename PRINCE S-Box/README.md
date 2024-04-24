# PRINCE S-Box
## Source Files

The top module [PRINCE_sbox_opt.v](./rtl/PRINCE_sbox_opt.v) contains the intermediate register stage of the S-Box. To enhance readability, the combinatorial logic preceding and following the register stage is contained in separate submodules labeled [compute_subscript0](./rtl/compute_subscript0.v) and [compute_subscript1_opt](./rtl/compute_subscript1_opt.v), respectively.

## Netlist and Formal Verification Results

The Verilog files were synthesized using [NanGate 45nm Open Cell Library](https://www.nangate.com), with Synopsys DC Compiler v2021.06 as outlined in the paper. Subsequently, we generated netlists using three distinct sets of options. These netlists, along with the formal verification results using [SILVER](https://github.com/Chair-for-Security-Engineering/SILVER), are stored in separate subfolders.

|  Sub-Folder 	|  Compiler Options 	|
|:---:	|:---:	|
| ./netlist/compile  	|  <code>compile -exact_map</code> 	|
| ./netlist/compile_ultra  	|   <code>compile_ultra -no_autoungroup</code>  <br> <code> -no_boundary_optimization</code>	|
| ./netlist/retime  	|  <code>set_optimize_registers true</code><br><code>compile_ultra -retime</code> 	|


