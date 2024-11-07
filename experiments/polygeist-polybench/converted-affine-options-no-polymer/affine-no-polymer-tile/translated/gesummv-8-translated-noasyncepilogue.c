#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 30; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_11); 
    for (int for_iter_14 = for_iter_12; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_11) {
      func_arg_5[for_iter_14] = arith_const_8; 
      func_arg_7[for_iter_14] = arith_const_8; 
      for (int for_iter_15 = arith_const_9; for_iter_15 < arith_const_10; for_iter_15 += arith_const_11) {
        double memref_load_16 = func_arg_3[for_iter_14][for_iter_15]; 
        double memref_load_17 = func_arg_6[for_iter_15]; 
        double arith_mulf_18 = (memref_load_16 * memref_load_17); 
        double memref_load_19 = func_arg_5[for_iter_14]; 
        double arith_addf_20 = (arith_mulf_18 + memref_load_19); 
        func_arg_5[for_iter_14] = arith_addf_20; 
        double memref_load_21 = func_arg_4[for_iter_14][for_iter_15]; 
        double memref_load_22 = func_arg_6[for_iter_15]; 
        double arith_mulf_23 = (memref_load_21 * memref_load_22); 
        double memref_load_24 = func_arg_7[for_iter_14]; 
        double arith_addf_25 = (arith_mulf_23 + memref_load_24); 
        func_arg_7[for_iter_14] = arith_addf_25; 
      }
      double memref_load_26 = func_arg_5[for_iter_14]; 
      double arith_mulf_27 = (func_arg_1 * memref_load_26); 
      double memref_load_28 = func_arg_7[for_iter_14]; 
      double arith_mulf_29 = (func_arg_2 * memref_load_28); 
      double arith_addf_30 = (arith_mulf_27 + arith_mulf_29); 
      func_arg_7[for_iter_14] = arith_addf_30; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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
