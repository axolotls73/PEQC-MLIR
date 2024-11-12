#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  int arith_const_7 = 1; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 42; 
  int arith_const_11 = 32; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_11); 
    int arith_minsi_14 = min(arith_addi_13, arith_const_10); 
    for (int for_iter_15 = for_iter_12; for_iter_15 < arith_minsi_14; for_iter_15 += arith_const_7) {
      func_arg_4[for_iter_15] = arith_const_8; 
    }
  }
  for (int for_iter_16 = arith_const_9; for_iter_16 < arith_const_6; for_iter_16 += arith_const_11) {
    int arith_addi_17 = (for_iter_16 + arith_const_11); 
    int arith_minsi_18 = min(arith_addi_17, arith_const_6); 
    for (int for_iter_19 = for_iter_16; for_iter_19 < arith_minsi_18; for_iter_19 += arith_const_7) {
      func_arg_5[for_iter_19] = arith_const_8; 
      for (int for_iter_20 = arith_const_9; for_iter_20 < arith_const_10; for_iter_20 += arith_const_7) {
        double memref_load_21 = func_arg_5[for_iter_19]; 
        double memref_load_22 = func_arg_2[for_iter_19][for_iter_20]; 
        double memref_load_23 = func_arg_3[for_iter_20]; 
        double arith_mulf_24 = (memref_load_22 * memref_load_23); 
        double arith_addf_25 = (memref_load_21 + arith_mulf_24); 
        func_arg_5[for_iter_19] = arith_addf_25; 
      }
      for (int for_iter_26 = arith_const_9; for_iter_26 < arith_const_10; for_iter_26 += arith_const_7) {
        double memref_load_27 = func_arg_4[for_iter_26]; 
        double memref_load_28 = func_arg_2[for_iter_19][for_iter_26]; 
        double memref_load_29 = func_arg_5[for_iter_19]; 
        double arith_mulf_30 = (memref_load_28 * memref_load_29); 
        double arith_addf_31 = (memref_load_27 + arith_mulf_30); 
        func_arg_4[for_iter_26] = arith_addf_31; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* x;
  double* y;
  double* tmp;


  kernel_atax(m, n, A, x, y, tmp);

}

#pragma pocc-region-end
