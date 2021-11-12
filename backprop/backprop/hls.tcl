open_project backprop_syn

add_files backprop.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files local_support.c

add_files -tb ../../common/support.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files -tb ../../common/support.h
add_files -tb ../../common/harness.c 


set_top backprop
open_solution -reset solution

set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
#source ./stencil_dir

csim_design

csynth_design
cosim_design

exit
