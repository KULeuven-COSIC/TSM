
# Higher-Order Time Sharing Masking

This repository contains the supplementary materials for the paper **"Higher-Order Time Sharing Masking"**, accepted for publication at **CHES 2025**.

---

### **Contents**

- **HDL Source Code (Verilog):** Implementations of masked S-Boxes for AES and the toy examples presented in the paper.  
- **Netlists:** Corresponding netlists generated from the Verilog modules.  
- **Formal Verification Results:** Results under the security notions of probing, Non-Interference (NI), Strong Non-Interference (SNI), and Probe-Isolating Non-Interference (PINI).  
- **Scripts:** Required scripts for running simulations, generating netlists, and conducting formal verification.

---

## HDL Source Code (Verilog)

### **AES S-Box Designs**

We include various implementations of masked AES S-Boxes with different latencies and orders of security. Each design corresponds to specific sections of the paper:

1. **[Second-Order Masked AES S-Box](./rtl/aes_sbox_secondorder_tworegstages)** *(latency = 2)*  
   Refer to **Section 3.4** in the paper.

2. **[Second-Order Masked AES S-Box](./rtl/aes_sbox_secondorder_threeregstages)** *(latency = 3)*  
   Refer to **Section 4.5** in the paper.

3. **[First-Order Masked AES S-Box](./rtl/aes_sbox_firstorder_tworegstages)** *(latency = 2)*  
   Refer to **Section 4.4** in the paper.

Each of these folders contains two subfolders:
- **`rtl/`:** Contains the Verilog files with descriptive headers for each module.  
- **`sim/`:** Includes self-checking testbenches that automatically validate the functional correctness of both the S-box and full AES implementations.

**Indexing note:** Our RTL uses one-based ranges (for example, `input [80:1]`). If you prefer the more common zero-based notation (for example, `[79:0]`), you will need to adjust the signal declarations accordingly.

---

### [**Round-Based First-Order Secure AES-128**](./rtl/fullaes_firstorder)

This implementation corresponds to **Section 4.6** of the paper.

#### **Dependency Structure with Module Descriptions**

The design consists of source files located in the `rtl` folder (written in Verilog) and corresponding testbenches in the `sim` subfolder, used for verifying the top module.




```
aes_top
│
├── aes_keyschedule  // Implements the masked key schedule for AES
│
├── aes_round_function  // Implements the round function for AES with first-order Time Sharing Masking
│   ├── aes_shift_row
│   ├── AES_sbox_twocycle_firstorder  // Implements a two-cycle first-order masked AES S-Box
│   │   ├── HO_TSM1  // Time-sharing module for processing two input shares securely
│   │   │   ├── fourinput_compute_subscript0  // Computes the first phase of HO_TSM1 operation
│   │   │   └── fourinput_compute_subscript1  // Computes the second phase of HO_TSM1 operation
│   │   ├── sum_of_second_module_outputs  
│   │   ├── cross_module_multiplication  // Operates on one share from each HO_TSM1 module
│   │   ├── domain_inner  // Calculates all the inner-module terms
│   │   └── xor_module
│   ├── aes_mixcolumn  // Implements the MixColumn operation for AES
│   │   └── aes_mul2  // Implements a masked AES multiply-by-2 operation in GF(2^8)
│   ├── two_dimension_xor
│   └── two_dimension_mux
│
└── trivium_prng  // Implements the Trivium Pseudo-Random Number Generator (PRNG)
```

The structure above outlines the module dependencies and highlights the relationship between submodules.



---

### **Toy Examples for Formal Verification**

1. **[HO-TSM](./rtl/ho_tsm)**  
    Includes a HO-TSM<sub>2</sub> AND gate presented as a preliminary example in Section 3.1 and a HO-TSM<sub>3</sub> AND gate.

2. **[Area-Latency Trade-Off](./rtl/area_latency_tradeoff)**  
   Implementations for the four-input Boolean function presented as a toy example in Section 4.1 for security orders *d = 1* and *d = 2*.



# Generating Netlists

The Verilog files are synthesized using the [NanGate 45nm Open Cell Library](https://www.nangate.com) with Synopsys DC Compiler v2021.06-SP3, as outlined in the paper.

- The empty folder `NangateOpenCellLibrary_PDKv1_3_v2010_12` is reserved for the NanGate Open Cell Library files. Due to the large size of the library, its contents are not included in this artifact. The library is publicly available at the following GitHub repository: [https://github.com/vmarribas/VerMFi](https://github.com/vmarribas/VerMFi), corresponding to the [paper](https://ieeexplore.ieee.org/document/8617841) by Arribas et al. Download the NanGate folder from this repository and replace the empty folder in this artifact before proceeding.

- The synthesis script, [`compile.tcl`](./compile.tcl), serves as a reference for generating netlists for formal verification, area estimation, and related tasks.

### Customizing the Synthesis Process

Before running the synthesis, ensure the following parameters are correctly set in the `compile.tcl` file:


1. **Ensure write permissions**

   From the artifact root, run:

   ```bash
   chmod -R a+rwX .
   ```

   This grants read, write, and (where appropriate) execute permissions to all users on every file and directory, ensuring that `dc_shell` can write to `generated_netlists`, `logfiles`, `reports`, `work`, etc.


2. **Specify the Top Module**  
   Set the top module of the design by assigning its name to the variable `<code>TOPCELL_ENT</code>`. This ensures the correct module is synthesized.

3. **Define the RTL Source Directory**  
   Set the location of the RTL Verilog files using the following command:

   ```bash
   analyze -library WORK -autoread {$LOCATION} > ./logfiles/analyze.log
   ```

   Replace `$LOCATION` with the correct path to your design files.

4. **Specify the Output Netlist Name**  
   Define the name and location for the generated netlist using the following command:

   ```bash
   write -format verilog -hierarchy -output ./generated_netlists/$NETLIST_NAME.v
   ```

   Replace `$NETLIST_NAME` with the desired name for your output netlist file.

Example commands for configuring these parameters are provided in the `compile.tcl` script and can be adjusted according to your specific design requirements.

**[.synopsys_dc.setup](./.synopsys_dc.setup)** is the initialization file for `dc_shell`. It contains the necessary environment variables required for running the `compile.tcl` script.

After configuring the parameters and making the necessary changes, synthesize the design using the following command:

```bash
dc_shell -f compile.tcl
```

During netlist generation, please note the following:

- For **SILVER**: The `ungroup -all -flatten` command should be commented out, as it is not required for formal verification.
- For **PROLEAD**: The same command **must be included**, at least for the version used in this artifact, to ensure the tool correctly processes the netlist.



**Note on “Can’t find lib_cells” messages**  
When you run `compile.tcl`, you may see errors like:

  Error: Can’t find lib_cells matching 'NangateOpenCellLibrary/OR5*'. (UID-109)  
  Error: Value for list 'object_list' must have 1 elements. (CMD-036)

These occur because we proactively issue many `set_dont_use [get_lib_cells …]` commands (even for cells that do not exist in the Nangate library) to ensure a consistent subset of cells for downstream formal tools (SILVER and PROLEAD). Since those patterns simply match nothing, these errors are benign and can be safely ignored; they do not affect the final netlist, timing, area, or power reports.


# Formal Verification

We use two formal verification tools for evaluating the security of our implementations:  
- **SILVER** [(https://github.com/Chair-for-Security-Engineering/SILVER)](https://github.com/Chair-for-Security-Engineering/SILVER)  
- **PROLEAD** [(https://github.com/ChairImpSec/PROLEAD)](https://github.com/ChairImpSec/PROLEAD)  


### SILVER

SILVER is used to verify the toy examples:
- **[HO-TSM](./rtl/ho_tsm):** Includes a HO-TSM<sub>2</sub> AND gate (Section 3.1) and a HO-TSM<sub>3</sub> AND gate.  
- **[Area-Latency Trade-Off](./rtl/area_latency_tradeoff):** Implements a four-input Boolean function (Section 4.1) for security orders *d = 1* and *d = 2*.

The scalability of SILVER is limited for larger designs, which is why toy examples are used for verification. Additionally, please note that the duration of the verification process increases significantly with the security order.

#### Setting Up SILVER for Formal Verification

To formally verify the generated netlists:

1. Follow the instructions provided in the official SILVER repository to build the framework:  
   **[https://github.com/Chair-for-Security-Engineering/SILVER](https://github.com/Chair-for-Security-Engineering/SILVER)** and ensure the framework is fully set up before proceeding with the verification process.

2. SILVER does not require any custom scripts for verification. Instead, you need to annotate the inputs and outputs of the top module in the netlist. You can follow the guidelines provided in the SILVER documentation.  
   We have already annotated the inputs and outputs of the netlists for our toy examples in the `./generated_netlists/` folder. These annotated netlists can be used as a reference.

3. The official SILVER repository provides necessary command-line options for formal verification of the generated netlist. Below is an example command for reference:

   ```bash
   ./bin/verify --verbose=1 --verilog=1 --verilog-design_file=$PATH_TO_TOP_MODULE --verilog-module_name=$TOP_MODULE_NAME
   ```

   - Replace `$PATH_TO_TOP_MODULE` with the local path where the top module is stored.  
     **Example:** For the HO-TSM<sub>2</sub> AND gate:  
     `./generated_netlists/ho_tsm/timesharing_andgate_2ndorder.v`

   - Replace `$TOP_MODULE_NAME` with the name of the top module.  
     **Example:** For the HO-TSM<sub>2</sub> AND gate:  
     `timesharing_andgate_2ndorder`


### PROLEAD

**PROLEAD** is used to verify the security properties of AES S-Box designs:

- **[First-Order Masked AES S-Box](./rtl/aes_sbox_firstorder_tworegstages)** *(latency = 2)* - Refer to Section 4.4 of the paper.  
- **[Second-Order Masked AES S-Box](./rtl/aes_sbox_secondorder_threeregstages)** *(latency = 3)* - Refer to Section 4.5 of the paper.  

For completeness, we have also included the netlist for the Second-Order Masked AES S-Box (latency = 2). However, due to the large size of this design, we did not verify it using PROLEAD, as the analysis was computationally infeasible within our evaluation setup.

Please refer to the official [PROLEAD Wiki](https://github.com/ChairImpSec/PROLEAD/wiki) for installation instructions.

> **Note:** This project uses a development version of PROLEAD that is 14 commits ahead of the official `v2.0.0` release. As a result, there may be differences between the current documentation on their website and our instructions.  
>  
> **PROLEAD version used:** `v2.0.0` + 14 commits (commit `44a15f5a962d6063f1d1a64405e9045e3fdb9efb`, authored on August 31, 2023), on branch `main`.


#### Configuration Files
PROLEAD takes a netlist as an input and requires a configuration file to customize settings specific to the implementation being tested. We provide two example configuration files in the **[scripts](./scripts)** folder, which you can use as references for your own setup.

#### Example Command to Run PROLEAD

```bash
./release/PROLEAD -df $PATH_TO_TOP_MODULE -mn $TOP_MODULE_NAME -cf $PATH_TO_CONFIG_FILE
```

- Replace `$PATH_TO_TOP_MODULE` with the local path to the netlist.  
  **Example:** For the first-order AES S-Box:  
  ```bash
  ./generated_netlists/aes_sbox_twocycle_firstorder/AES_sbox_twocycle_firstorder.v
  ```

- Replace `$TOP_MODULE_NAME` with the name of the top module.  
  **Example:** For the first-order AES S-Box:  
  ```bash
  AES_sbox_twocycle_firstorder
  ```

- Replace `$PATH_TO_CONFIG_FILE` with the local path to the configuration file.  
  **Example:** For the first-order AES S-Box:  
  ```bash
  ./scripts/config_firstorder_aes_sbox.set
  ```



# Verification Results

We provide [screenshots of the SILVER verification results](./verification_results/SILVER/), which indicate whether the implementation has passed probing security, Non-Interference (NI), Strong Non-Interference (SNI), and Probe-Isolating Non-Interference (PINI) tests. Each screenshot reflects the outcome under both standard and robust probing models.

The [PROLEAD verification results](./verification_results/PROLEAD/) include the console output along with detailed reports generated after each simulation step.

