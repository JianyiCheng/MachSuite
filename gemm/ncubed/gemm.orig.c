#include "gemm.h"

void gemm(TYPE m1[N], TYPE m2[N], TYPE prod[N]) {
  int i, j, k;
  int k_col, i_col;
  TYPE mult;

outer:
  for (i = 0; i < row_size; i++) {
  middle:
    for (j = 0; j < col_size; j++) {
      i_col = i * col_size;
      // TYPE sum = 0;
      prod[i_col + j] = 0;
    inner:
      for (k = 0; k < row_size; k++) {
        k_col = k * col_size;
        mult = m1[i_col + k] * m2[k_col + j];
        prod[i_col + j] += mult;
        // sum += mult;
      }
      // prod[i_col + j]  = sum;
    }
  }
}

int main() {

  srand(9);
  TYPE m1[N], m2[N], prod[N];
  gemm(m1, m2, prod);

  return 0;
}