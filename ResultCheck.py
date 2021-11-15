from optparse import OptionParser
import sys, os, time, datetime, glob
from tabulate import tabulate
from typing import List

benchmarks = ['aes/aes', 'backprop/backprop', 'bfs/bulk', 'bfs/queue', 'fft/strided', \
        'fft/transpose', 'gemm/blocked', 'gemm/ncubed', 'kmp/kmp', 'nw/nw', \
        'md/knn', 'md/grid', 'sort/merge', 'sort/radix', 'spmv/ellpack', \
        'spmv/crs', 'stencil/stencil2d', 'stencil/stencil3d', 'viterbi/viterbi']

def check():
    total = len(benchmarks)
    for benchmark in benchmarks:
        print(benchmark, end="\t\t")
        bench_name = benchmark[0:benchmark.find("/")]
        proj_name = benchmark + '/' + bench_name + '_syn' 
        cosim_log_name = proj_name + '/solution/sim/report/*.rpt'
        cosim_log = glob.glob(cosim_log_name)
        if os.path.isdir(proj_name) and len(cosim_log) == 1:
            with open(cosim_log[0]) as check_log:
                if 'Pass' in check_log.read():
                    print('success')
                    continue
        print("fail")
        
def main():
    optparser = OptionParser()

    
    optparser.add_option("-c", "--check", action="store_true", dest="check_status", default=True,
                         help="Check Vitis project status")

    (options, args) = optparser.parse_args()

    if options.check_status:
        check()

if __name__ == '__main__':
    main()
