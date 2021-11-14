open_project gemm_hls

add_files gemm.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb gemm.c -cflags "-I ../../common" -csimflags "-I ../../common"

set_top gemm

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

exit
