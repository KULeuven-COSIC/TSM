# PRINCE S-Box
## Source Files

The top module [PRINCE_sbox_opt.v](./rtl/PRINCE_sbox_opt.v) contains the intermediate register stage of the S-Box. To enhance readability, the combinatorial logic preceding and following the register stage is contained in separate submodules labeled [compute_subscript0](./rtl/compute_subscript0.v) and [compute_subscript1_opt](./rtl/compute_subscript1_opt.v), respectively.

## Netlists and Formal Verification Results

The Verilog files were synthesized using [NanGate 45nm Open Cell Library](https://www.nangate.com), with Synopsys DC Compiler v2021.06 as outlined in the paper.


The *scripts* subfolder contains a synthesis script, [compile.tcl](./scripts/compile.tcl), which can be used as a reference for generating netlists and estimating area, maximum frequency as reported in our paper. To compile a design:


1. Set the top module of the design to be synthesized using the variable <code>TOPCELL_ENT</code> in the *compile.tcl* file.
2. Run the command <code>dc_shell -f compile.tcl</code> to compile the design.


 Subsequently, we generated netlists using three distinct sets of options. These netlists, along with the formal verification results using [SILVER](https://github.com/Chair-for-Security-Engineering/SILVER), are stored in separate subfolders.

|  Sub-Folder 	|  Compiler Options 	|
|:---:	|:---:	|
| ./netlist/compile  	|  <code>compile -exact_map</code> 	|
| ./netlist/compile_ultra  	|   <code>compile_ultra -no_autoungroup</code>  <br> <code> -no_boundary_optimization</code>	|
| ./netlist/retime  	|  <code>set_optimize_registers true</code><br><code>compile_ultra -retime</code> 	|


To formally verify the generated netlists, annotate the inputs and outputs of the top module in the netlist as per the guidelines in the [SILVER](https://github.com/Chair-for-Security-Engineering/SILVER) repository, where you can also find the necessary command line options to formally verify the generated netlist.


Example command: 
 <code> ./bin/verify --verbose=1 --verilog=1 --verilog-design_file=$REPO_TOP/PRINCE_SBox/netlist/compile/compile_exact_map.v --verilog-module_name=PRINCE_sbox_opt
</code>

where `$REPO_TOP` refers to the local path where the repository is cloned. 