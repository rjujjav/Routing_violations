#*************************************************
#  Created by Design Compiler Topographical write_floorplan
#  Version: S-2021.06-SP3
#  Date: Wed Sep  6 15:59:14 2023
#*************************************************
undo_config -disable
set oldSnapState [set_object_snap_type -enabled false]



#*************************************************
#   SECTION: Core Area
#*************************************************

remove_base_array -all



#*************************************************
#   SECTION: Site Rows, with number: 0
#*************************************************
cut_row -all 

update_floorplan



#*************************************************
#   SECTION: Preroutes, with number: 0
#*************************************************

remove_net_shape *
remove_via *
remove_user_shape *

set_object_snap_type -enabled $oldSnapState

undo_config -enable
