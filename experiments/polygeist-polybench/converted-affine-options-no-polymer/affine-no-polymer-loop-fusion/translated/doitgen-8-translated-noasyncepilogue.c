#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 12; 
  int arith_const_7 = 8; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 10; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_7; for_iter_13 += arith_const_11) {
      for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_6; for_iter_14 += arith_const_11) {
        func_arg_5[for_iter_14] = arith_const_8; 
        for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_6; for_iter_15 += arith_const_11) {
          double memref_load_16 = func_arg_3[for_iter_12][for_iter_13][for_iter_15]; 
          double memref_load_17 = func_arg_4[for_iter_15][for_iter_14]; 
          double arith_mulf_18 = (memref_load_16 * memref_load_17); 
          double memref_load_19 = func_arg_5[for_iter_14]; 
          double arith_addf_20 = (memref_load_19 + arith_mulf_18); 
          func_arg_5[for_iter_14] = arith_addf_20; 
        }
        double memref_load_21 = func_arg_5[for_iter_14]; 
        func_arg_3[for_iter_12][for_iter_13][for_iter_14] = memref_load_21; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int nr;
  int nq;
  int np;
  double* A;
  double* C4;
  double* sum;


  kernel_doitgen(nr, nq, np, A, C4, sum);

}

#pragma pocc-region-end
