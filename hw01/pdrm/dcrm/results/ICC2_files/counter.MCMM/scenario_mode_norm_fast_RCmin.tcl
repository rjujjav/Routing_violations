if { [namespace current] != {::64F8E119} } { error {This script [file tail [info script]] should not be sourced directly}; }
###################################################################

# Created by write_script -format dctcl for scenario [mode_norm.fast.RCmin] on \
Wed Sep  6 16:29:13 2023

###################################################################

# Set the current_design #
current_design counter


set_tlu_plus_files -max_tluplus                                                \
/mnt/coe/workspace/ece/ece720-common/tech/google/star_rcxt/sky130/sky130_RCmin.tluplus \
-tech2itf_map                                                                  \
/mnt/coe/workspace/ece/ece720-common/tech/google/star_rcxt/sky130/layer.map 
set_operating_conditions min -library                                          \
sky130_fd_sc_hs__ff_n40C_1v95_ccsnoise.db:sky130_fd_sc_hs
set_driving_cell -lib_cell sky130_fd_sc_hs__dfrtp_1 -pin Q [get_ports reset]
set_driving_cell -lib_cell sky130_fd_sc_hs__dfrtp_1 -pin Q [get_ports {in[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hs__dfrtp_1 -pin Q [get_ports {in[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hs__dfrtp_1 -pin Q [get_ports {in[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hs__dfrtp_1 -pin Q [get_ports {in[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hs__dfrtp_1 -pin Q [get_ports latch]
set_driving_cell -lib_cell sky130_fd_sc_hs__dfrtp_1 -pin Q [get_ports dec]
set_load -pin_load 0.02052 [get_ports zero]
create_clock [get_ports clock]  -period 5  -waveform {0 2}
set_clock_uncertainty 0.2  [get_clocks clock]
group_path -name FEEDTHROUGH  -from [list [get_ports reset] [get_ports         \
{in[3]}] [get_ports {in[2]}] [get_ports {in[1]}] [get_ports {in[0]}]           \
[get_ports latch] [get_ports dec]]  -to [get_ports zero]
group_path -name REGIN  -from [list [get_ports reset] [get_ports {in[3]}]      \
[get_ports {in[2]}] [get_ports {in[1]}] [get_ports {in[0]}] [get_ports latch]  \
[get_ports dec]]
group_path -name REGOUT  -to [get_ports zero]
set_input_delay -clock clock  0.4  [get_ports reset]
set_input_delay -clock clock  0.4  [get_ports {in[3]}]
set_input_delay -clock clock  0.4  [get_ports {in[2]}]
set_input_delay -clock clock  0.4  [get_ports {in[1]}]
set_input_delay -clock clock  0.4  [get_ports {in[0]}]
set_input_delay -clock clock  0.4  [get_ports latch]
set_input_delay -clock clock  0.4  [get_ports dec]
set_output_delay -clock clock  0.4  [get_ports zero]
set compile_inbound_cell_optimization false
set compile_inbound_max_cell_percentage 10.0
