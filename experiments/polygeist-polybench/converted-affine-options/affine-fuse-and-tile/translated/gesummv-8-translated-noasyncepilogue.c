#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 1; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 30; 
  int arith_const_12 = 32; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_addi_14 = (for_iter_13 + arith_const_11); 
    for (int for_iter_15 = for_iter_13; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_8) {
      func_arg_7[for_iter_15] = arith_const_9; 
      for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_11; for_iter_16 += arith_const_8) {
        double memref_load_17 = func_arg_4[for_iter_15][for_iter_16]; 
        double memref_load_18 = func_arg_6[for_iter_16]; 
        double arith_mulf_19 = (memref_load_17 * memref_load_18); 
        double memref_load_20 = func_arg_7[for_iter_15]; 
        double arith_addf_21 = (arith_mulf_19 + memref_load_20); 
        func_arg_7[for_iter_15] = arith_addf_21; 
      }
      func_arg_5[for_iter_15] = arith_const_9; 
      for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_11; for_iter_22 += arith_const_8) {
        double memref_load_23 = func_arg_3[for_iter_15][for_iter_22]; 
        double memref_load_24 = func_arg_6[for_iter_22]; 
        double arith_mulf_25 = (memref_load_23 * memref_load_24); 
        double memref_load_26 = func_arg_5[for_iter_15]; 
        double arith_addf_27 = (arith_mulf_25 + memref_load_26); 
        func_arg_5[for_iter_15] = arith_addf_27; 
      }
      double memref_load_28 = func_arg_5[for_iter_15]; 
      double arith_mulf_29 = (func_arg_1 * memref_load_28); 
      double memref_load_30 = func_arg_7[for_iter_15]; 
      double arith_mulf_31 = (func_arg_2 * memref_load_30); 
      double arith_addf_32 = (arith_mulf_29 + arith_mulf_31); 
      func_arg_7[for_iter_15] = arith_addf_32; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;


  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);

}

#pragma pocc-region-end
