open_project gemm_hls

add_files gemm.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb ../../common/harness.c -cflags "-I ../../common" -csimflags "-I ../../common"
#add_files -tb gemm_test.c

set_top gemm

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
source ./gemm_dir
csynth_design
cosim_design

exit
