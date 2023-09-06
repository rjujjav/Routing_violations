if { [namespace current] != {::64F8E119} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for global constraints on Wed Sep  6   \
16:29:13 2023

###################################################################

# Set the current_design #
current_design counter

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_flatten -effort 0 -design [current_design]
set_flatten -minimize 0 -design [current_design]
set_dft_insertion_configuration -map_effort Medium -synthesis_optimization     \
None -route_scan_enable True -route_scan_clock True -route_scan_serial True    \
-preserve_design_name True -unscan False
set_structure false
set_max_area 0
set_fix_multiple_port_nets -all -buffer_constants
set_local_link_library                                                         \
{/mnt/coe/workspace/ece/ece720-common/tech/google/skywater-pdk/libraries/sky130_fd_sc_hs/v0.0.2/timing/sky130_fd_sc_hs__ff_n40C_1v95_ccsnoise.db,/mnt/coe/workspace/ece/ece720-common/tech/google/skywater-pdk/libraries/sky130_fd_sc_hs/v0.0.2/timing/sky130_fd_sc_hs__ss_n40C_1v60_ccsnoise.db}
set_register_merging [current_design] 17
set_attribute -type integer [current_design] pwr_cg_gating_group_count 1
set_multibit_options -mode non_timing_driven
set_attribute -type boolean [current_design] pwr_cg_design_has_clock_gating    \
true
set_attribute -type boolean [get_cells clk_gate_value_reg] clock_gating_logic  \
true
set_compile_directives [get_pins clk_gate_value_reg/CLK] -constant_propagation \
false 
set_compile_directives [get_pins clk_gate_value_reg/EN] -constant_propagation  \
false 
set_compile_directives [get_pins clk_gate_value_reg/TE] -constant_propagation  \
false 
set_attribute -type boolean [get_cells clk_gate_value_reg] hpower_inv_cg_cell  \
false
set_attribute -type integer [get_cells value_reg_0_] pwr_cg_count_for_register \
1
set_attribute -type integer [get_cells value_reg_1_] pwr_cg_count_for_register \
1
set_attribute -type integer [get_cells value_reg_2_] pwr_cg_count_for_register \
1
set_attribute -type integer [get_cells value_reg_3_] pwr_cg_count_for_register \
1
set_attribute -type integer [get_cells value_reg_0_] pwr_cg_gating_group 0
set_attribute -type integer [get_cells value_reg_1_] pwr_cg_gating_group 0
set_attribute -type integer [get_cells value_reg_2_] pwr_cg_gating_group 0
set_attribute -type integer [get_cells value_reg_3_] pwr_cg_gating_group 0
set_attribute -type integer [get_cells clk_gate_value_reg] pwr_cg_gating_group \
0
set_attribute -type integer [get_cells value_reg_0_] pwr_cg_gating_sub_group 0
set_attribute -type integer [get_cells value_reg_1_] pwr_cg_gating_sub_group 0
set_attribute -type integer [get_cells value_reg_2_] pwr_cg_gating_sub_group 0
set_attribute -type integer [get_cells value_reg_3_] pwr_cg_gating_sub_group 0
set_attribute -type integer [get_cells clk_gate_value_reg]                     \
pwr_cg_gating_sub_group 0
set_register_merging [get_cells value_reg_0_] 17
set_register_merging [get_cells value_reg_1_] 17
set_register_merging [get_cells value_reg_2_] 17
set_register_merging [get_cells value_reg_3_] 17
set compile_inbound_cell_optimization false
set compile_inbound_max_cell_percentage 10.0
