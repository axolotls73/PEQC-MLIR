#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
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
      func_arg_5[for_iter_15] = arith_const_9; 
      func_arg_7[for_iter_15] = arith_const_9; 
      for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_11; for_iter_16 += arith_const_8) {
        double memref_load_17 = func_arg_3[for_iter_15][for_iter_16]; 
        double memref_load_18 = func_arg_6[for_iter_16]; 
        double arith_mulf_19 = (memref_load_17 * memref_load_18); 
        double memref_load_20 = func_arg_5[for_iter_15]; 
        double arith_addf_21 = (arith_mulf_19 + memref_load_20); 
        func_arg_5[for_iter_15] = arith_addf_21; 
        double memref_load_22 = func_arg_4[for_iter_15][for_iter_16]; 
        double memref_load_23 = func_arg_6[for_iter_16]; 
        double arith_mulf_24 = (memref_load_22 * memref_load_23); 
        double memref_load_25 = func_arg_7[for_iter_15]; 
        double arith_addf_26 = (arith_mulf_24 + memref_load_25); 
        func_arg_7[for_iter_15] = arith_addf_26; 
      }
      double memref_load_27 = func_arg_5[for_iter_15]; 
      double arith_mulf_28 = (func_arg_1 * memref_load_27); 
      double memref_load_29 = func_arg_7[for_iter_15]; 
      double arith_mulf_30 = (func_arg_2 * memref_load_29); 
      double arith_addf_31 = (arith_mulf_28 + arith_mulf_30); 
      func_arg_7[for_iter_15] = arith_addf_31; 
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
