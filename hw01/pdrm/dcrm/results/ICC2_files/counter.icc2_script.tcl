set _DCG_ICC2_DIR_ [file dirname [file normalize [info script]]]



##################################################################
# Read Design
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/counter.v]} {
read_verilog ${_DCG_ICC2_DIR_}/counter.v -top counter
}



##################################################################
# Read settings
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/counter.settings.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/counter.settings.tcl 
}



##################################################################
# Read SDC
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/counter.MCMM/top.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/counter.MCMM/top.tcl 
}



##################################################################
# Read Floorplan
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/counter.floorplan/floorplan.tcl]} {
source -continue_on_error ${_DCG_ICC2_DIR_}/counter.floorplan/floorplan.tcl 
}



##################################################################
# Read scan DEF
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/counter.scan.def]} {
read_def ${_DCG_ICC2_DIR_}/counter.scan.def 
}



##################################################################
# Read cell expansion data
##################################################################
if {[file exists ${_DCG_ICC2_DIR_}/counter.cell.exp]} {
read_cell_expansion -input ${_DCG_ICC2_DIR_}/counter.cell.exp 
}



