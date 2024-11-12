#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 20; 
  int arith_const_6 = 19; 
  int arith_const_7 = 0; 
  int arith_const_8 = 30; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    for (int for_iter_11 = arith_const_7; for_iter_11 < arith_const_6; for_iter_11 += arith_const_9) {
      int arith_addi_12 = (for_iter_11 + arith_const_9); 
      for (int for_iter_13 = arith_addi_12; for_iter_13 < arith_const_5; for_iter_13 += arith_const_9) {
        double memref_load_14 = func_arg_4[for_iter_11][for_iter_10]; 
        double memref_load_15 = func_arg_3[for_iter_13][for_iter_11]; 
        double memref_load_16 = func_arg_4[for_iter_13][for_iter_10]; 
        double arith_mulf_17 = (memref_load_15 * memref_load_16); 
        double arith_addf_18 = (memref_load_14 + arith_mulf_17); 
        func_arg_4[for_iter_11][for_iter_10] = arith_addf_18; 
      }
    }
  }
  for (int for_iter_19 = arith_const_7; for_iter_19 < arith_const_5; for_iter_19 += arith_const_9) {
    for (int for_iter_20 = arith_const_7; for_iter_20 < arith_const_8; for_iter_20 += arith_const_9) {
      double memref_load_21 = func_arg_4[for_iter_19][for_iter_20]; 
      double arith_mulf_22 = (func_arg_2 * memref_load_21); 
      func_arg_4[for_iter_19][for_iter_20] = arith_mulf_22; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;


  kernel_trmm(m, n, alpha, A, B);

}

#pragma pocc-region-end
