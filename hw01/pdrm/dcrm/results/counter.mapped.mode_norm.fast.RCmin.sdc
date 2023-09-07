###################################################################

# Created by write_sdc for scenario [mode_norm.fast.RCmin] on Wed Sep 6 21:07:23 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions min -library sky130_fd_sc_hs__ff_n40C_1v95_ccsnoise.db:sky130_fd_sc_hs
set_max_area 0
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
group_path -name FEEDTHROUGH  -from [list [get_ports reset] [get_ports {in[3]}] [get_ports {in[2]}] [get_ports {in[1]}] [get_ports {in[0]}] [get_ports latch] [get_ports dec]]  -to [get_ports zero]
group_path -name REGIN  -from [list [get_ports reset] [get_ports {in[3]}] [get_ports {in[2]}] [get_ports {in[1]}] [get_ports {in[0]}] [get_ports latch] [get_ports dec]]
group_path -name REGOUT  -to [get_ports zero]
set_input_delay -clock clock  0.4  [get_ports reset]
set_input_delay -clock clock  0.4  [get_ports {in[3]}]
set_input_delay -clock clock  0.4  [get_ports {in[2]}]
set_input_delay -clock clock  0.4  [get_ports {in[1]}]
set_input_delay -clock clock  0.4  [get_ports {in[0]}]
set_input_delay -clock clock  0.4  [get_ports latch]
set_input_delay -clock clock  0.4  [get_ports dec]
set_output_delay -clock clock  0.4  [get_ports zero]
