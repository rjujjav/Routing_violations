## created by version 2.0 write_timing_context -format icc2 -output results/ICC2_files/counter.MCMM 
puts "Information: sourcing [info script]";
remove_modes -all;remove_corners -all;remove_scenarios -all;
namespace eval 64F8DA0C {
  variable _search_path $::search_path;
  set ::search_path [linsert $_search_path 0 [file normalize [file dirname [info script]]] ];

  source helper_script.tcl;
}


## IC Compiler Scenario: mode_norm.slow.RCmax
create_mode mode_norm.slow.RCmax;
create_corner mode_norm.slow.RCmax;
create_scenario -mode mode_norm.slow.RCmax -corner mode_norm.slow.RCmax -name mode_norm.slow.RCmax;
set_app_options -list { time.convert_constraint_from_bc_wc wc_only};
namespace eval 64F8DA0C {
  variable _se [get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error scenario_mode_norm_slow_RCmax.tcl;
  set_message_info -id CMD-005 -limit $_se; unset _se
}
create_mode mode_norm.slow.RCmax_bc;
create_corner mode_norm.slow.RCmax_bc;
create_scenario -mode mode_norm.slow.RCmax_bc -corner mode_norm.slow.RCmax_bc -name mode_norm.slow.RCmax_bc;
set_app_options -list { time.convert_constraint_from_bc_wc bc_only};
namespace eval 64F8DA0C {
  variable _se [::get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error scenario_mode_norm_slow_RCmax.tcl;
  ::set_message_info -id CMD-005 -limit $_se; unset _se
}
## Scenario Status
## Test Power UI
set_scenario_status -none -setup true -hold {false} mode_norm.slow.RCmax;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power false -leakage_power false mode_norm.slow.RCmax;
} else {
  set_scenario_status -power [expr false || false] mode_norm.slow.RCmax;
}
set_scenario_status -none -setup {false} -hold false mode_norm.slow.RCmax_bc;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power false -leakage_power false mode_norm.slow.RCmax_bc;
} else {
  set_scenario_status -power [expr false || false] mode_norm.slow.RCmax_bc;
}

## IC Compiler Scenario: mode_norm.fast.RCmin
create_mode mode_norm.fast.RCmin;
create_corner mode_norm.fast.RCmin;
create_scenario -mode mode_norm.fast.RCmin -corner mode_norm.fast.RCmin -name mode_norm.fast.RCmin;
set_app_options -list { time.convert_constraint_from_bc_wc wc_only};
namespace eval 64F8DA0C {
  variable _se [get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error scenario_mode_norm_fast_RCmin.tcl;
  set_message_info -id CMD-005 -limit $_se; unset _se
}
create_mode mode_norm.fast.RCmin_bc;
create_corner mode_norm.fast.RCmin_bc;
create_scenario -mode mode_norm.fast.RCmin_bc -corner mode_norm.fast.RCmin_bc -name mode_norm.fast.RCmin_bc;
set_app_options -list { time.convert_constraint_from_bc_wc bc_only};
namespace eval 64F8DA0C {
  variable _se [::get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error scenario_mode_norm_fast_RCmin.tcl;
  ::set_message_info -id CMD-005 -limit $_se; unset _se
}
## Scenario Status
## Test Power UI
set_scenario_status -none -setup false -hold {false} mode_norm.fast.RCmin;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power false -leakage_power true mode_norm.fast.RCmin;
} else {
  set_scenario_status -power [expr false || true] mode_norm.fast.RCmin;
}
set_scenario_status -none -setup {false} -hold true mode_norm.fast.RCmin_bc;
if [string length [get_defined_attributes -class scenario {dynamic_power}]] {
  set_scenario_status -dynamic_power false -leakage_power true mode_norm.fast.RCmin_bc;
} else {
  set_scenario_status -power [expr false || true] mode_norm.fast.RCmin_bc;
}
## have the max drc costing follow the setup costing and min drc costing follow the hold costing
if [sizeof_collection [get_scenarios -quiet -filter setup]] {set_scenario_status -max_cap true -max_tran true [get_scenarios -filter setup];}
if [sizeof_collection [get_scenarios -quiet -filter hold]] {set_scenario_status -min_cap true [get_scenarios -filter hold];}
set_app_options -list { time.convert_constraint_from_bc_wc none};

## these were the acive and current scenarios in the generation session
namespace eval 64F8DA0C {
  variable inactive_scenarios [::remove_from_collection [::get_scenarios] [::get_scenarios [list mode_norm.slow.RCmax mode_norm.slow.RCmax_bc mode_norm.fast.RCmin mode_norm.fast.RCmin_bc]]];
  ::set_scenario_status -active true *;
  if [::sizeof_collection $inactive_scenarios] {
    ::set_scenario_status -active false $inactive_scenarios;
  }
  if [::sizeof_collection [::get_scenarios -quiet mode_norm.slow.RCmax]] {
    ::current_scenario mode_norm.slow.RCmax;
  } else {
    puts "Warning: dc_shell current_scenario (mode_norm.slow.RCmax) does not exist";
  }
}
namespace eval 64F8DA0C {
  proc set_tlu_plus_files {args} {}; ## Do not want these applied globally
  variable _se [get_message_info -limit CMD-005];set_message_info -id CMD-005 -limit 1;redirect -variable _tmp {catch {slarty;bartvast;};};unset _tmp;
  source -continue_on_error design.tcl;
  set_message_info -id CMD-005 -limit $_se; unset _se
  set ::search_path $_search_path;
}
namespace delete 64F8DA0C;
puts "Information: sourced [info script]";
