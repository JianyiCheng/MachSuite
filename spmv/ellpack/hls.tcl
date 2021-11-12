open_project spmv_syn

add_files spmv.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb ../../common/harness.c -cflags "-I ../../common" -csimflags "-I ../../common"

set_top ellpack

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
source ./spmv_dir
csynth_design
cosim_design

exit
