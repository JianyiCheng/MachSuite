open_project nw_syn

add_files nw.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb nw.c -cflags "-I ../../common" -csimflags "-I ../../common"

set_top needwun

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design 
cosim_design

exit
