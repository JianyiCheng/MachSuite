open_project backprop_syn

add_files backprop.c -cflags "-I ../../common -lm" -csimflags "-I ../../common -lm"
add_files input.data
add_files check.data
add_files -tb backprop.c -cflags "-I ../../common -lm" -csimflags "-I ../../common -lm"


set_top backprop
open_solution -reset solution

set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10

csim_design
csynth_design
cosim_design

exit
