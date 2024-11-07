#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 20; 
  int arith_const_8 = 0; 
  int arith_const_9 = 30; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_addi_12 = (for_iter_11 + arith_const_10); 
    for (int for_iter_13 = arith_const_8; for_iter_13 < arith_addi_12; for_iter_13 += arith_const_10) {
      double memref_load_14 = func_arg_4[for_iter_11][for_iter_13]; 
      double arith_mulf_15 = (memref_load_14 * func_arg_3); 
      func_arg_4[for_iter_11][for_iter_13] = arith_mulf_15; 
    }
    for (int for_iter_16 = arith_const_8; for_iter_16 < arith_const_7; for_iter_16 += arith_const_10) {
      double memref_load_17 = func_arg_6[for_iter_11][for_iter_16]; 
      double memref_load_18 = func_arg_5[for_iter_11][for_iter_16]; 
      int arith_addi_19 = (for_iter_11 + arith_const_10); 
      for (int for_iter_20 = arith_const_8; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_10) {
        double memref_load_21 = func_arg_5[for_iter_20][for_iter_16]; 
        double arith_mulf_22 = (memref_load_21 * func_arg_2); 
        double arith_mulf_23 = (arith_mulf_22 * memref_load_17); 
        double memref_load_24 = func_arg_6[for_iter_20][for_iter_16]; 
        double arith_mulf_25 = (memref_load_24 * func_arg_2); 
        double arith_mulf_26 = (arith_mulf_25 * memref_load_18); 
        double arith_addf_27 = (arith_mulf_23 + arith_mulf_26); 
        double memref_load_28 = func_arg_4[for_iter_11][for_iter_20]; 
        double arith_addf_29 = (memref_load_28 + arith_addf_27); 
        func_arg_4[for_iter_11][for_iter_20] = arith_addf_29; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_syr2k(n, m, alpha, beta, C, A, B);

}

#pragma pocc-region-end
