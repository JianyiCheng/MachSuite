open_project kmp_syn

add_files kmp.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb kmp.c -cflags "-I ../../common" -csimflags "-I ../../common"

#add_files -tb kmp_test.c

set_top kmp

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

exit
