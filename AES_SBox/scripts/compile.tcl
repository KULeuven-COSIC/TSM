# Compiling script
remove_design -designs

# Set search path and libraries
set target_library ${nang45}
set link_library ${nang45}

# Define design lib
define_design_lib WORK -path "./work"

# Define top level and arch
set TOPCELL_ENT AES_sbox_opt
set TOPCELL_ARCH verilog

# Analyze target design
# $REPO_TOP/AES_SBox/rtl/ refers to the directory where the rtl files(including the top module) are stored
# Replace $REPO_TOP with the local path where the repository is cloned
analyze -library WORK -autoread {$REPO_TOP/AES_SBox/rtl/} > ./logfiles/analyze.log

#Elaborate design
elaborate $TOPCELL_ENT -architecture $TOPCELL_ARCH  -library DEFAULT > ./logfiles/elaborate.log

#Link design with the library
link
create_clock clk -period 10

check_design > check.log

# The "set_dont_touch" constraint can be removed without affecting the outcome of SILVER for TSM, and without affecting area results.
set_dont_touch [get_nets {*}]

# Compile netlist
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XNOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/XOR5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND5*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
# Additional constraints
set_dont_use [get_lib_cells NangateOpenCellLibrary/DFF_X2]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/DFFS*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/DFFRS*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/DFFR*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR2_X2]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR2_X4]
set_dont_use [get_lib_cells NangateOpenCellLibrary/*_X4]
set_dont_use [get_lib_cells NangateOpenCellLibrary/*_X2]
set_dont_use [get_lib_cells NangateOpenCellLibrary/*_X8]
set_dont_use [get_lib_cells NangateOpenCellLibrary/*_X16]
set_dont_use [get_lib_cells NangateOpenCellLibrary/*_X32]
set_dont_use [get_lib_cells NangateOpenCellLibrary/*_X64]

set ungroup_keep_original_design true

# Compiler Options
# compile -exact_map
# set_optimize_registers true
# compile_ultra -retime
compile_ultra -no_autoungroup -no_boundary_optimization

# Verilog netlist
set verilogout_show_unconnected_pins true
set verilogout_single_bit true
# Replace $REPO_TOP with the local path where the repository is cloned
write -format verilog -hierarchy -output $REPO_TOP/AES_SBox/netlist/AES_sbox_opt_compile_ultra.v

# Generate reports
report_cell > ./reports/cell.log
report_timing -transition_time -nets -attributes -nosplit > ./reports/timing.log
report_area -nosplit -hierarchy > ./reports/area.log
report_power -nosplit -hier > ./reports/power.log
report_reference -nosplit -hierarchy > ./reports/ref.log
report_resources -nosplit -hierarchy > ./reports/resources.log

#Exit
exit

