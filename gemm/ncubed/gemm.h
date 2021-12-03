// Standard Libraries
#include "support.h"
#include <stdio.h>
#include <stdlib.h>

// Define compute data type
#define TYPE double

// Specify row/column sizes
#define row_size 64
#define col_size 64
#define N row_size *col_size

// Define the input range to operate over
#define MIN 0.
#define MAX 1.0

// Set number of iterations to execute
#define MAX_ITERATION 1

// void gemm(TYPE m1[N], TYPE m2[N], TYPE prod[N]);
void gemm(TYPE m1[row_size][row_size], TYPE m2[row_size][col_size],
          TYPE prod[row_size][col_size]);
////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  TYPE m1[N];
  TYPE m2[N];
  TYPE prod[N];
};
