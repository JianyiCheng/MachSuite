open_project fft_syn

add_files fft.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb fft_test.c -cflags "-I ../../common -lm" -csimflags "-I ../../common -lm"

set_top fft

open_solution -reset solution
set_part "xqzu29dr-ffrf1760-1-i"
create_clock -period 10
csim_design
csynth_design
cosim_design

exit
