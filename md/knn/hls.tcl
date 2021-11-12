open_project knn_syn

add_files md.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb ../../common/harness.c -cflags "-I ../../common" -csimflags "-I ../../common"

set_top md_kernel

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
#source ./knn_dir
#config_rtl -reset all -reset_level low
csynth_design
cosim_design

exit
