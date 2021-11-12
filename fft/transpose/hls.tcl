open_project fft_syn

set_top fft1D_512

add_files fft.c -cflags "-I ../../common" -csimflags "-I ../../common"
add_files input.data
add_files check.data
add_files -tb fft_test.c -cflags "-I ../../common -lm" -csimflags "-I ../../common -lm"

set clock 10
set part "xqzu29dr-ffrf1760-1-i"

open_solution fft
set_part $part
create_clock -period $clock
csim_design
csynth_design
cosim_design
exit
