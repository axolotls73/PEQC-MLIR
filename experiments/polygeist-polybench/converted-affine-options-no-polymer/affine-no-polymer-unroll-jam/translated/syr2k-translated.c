#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
      int arith_addi_17 = (for_iter_11 + arith_const_10); 
      for (int for_iter_18 = arith_const_8; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_10) {
        double memref_load_19 = func_arg_5[for_iter_18][for_iter_16]; 
        double arith_mulf_20 = (memref_load_19 * func_arg_2); 
        double memref_load_21 = func_arg_6[for_iter_11][for_iter_16]; 
        double arith_mulf_22 = (arith_mulf_20 * memref_load_21); 
        double memref_load_23 = func_arg_6[for_iter_18][for_iter_16]; 
        double arith_mulf_24 = (memref_load_23 * func_arg_2); 
        double memref_load_25 = func_arg_5[for_iter_11][for_iter_16]; 
        double arith_mulf_26 = (arith_mulf_24 * memref_load_25); 
        double arith_addf_27 = (arith_mulf_22 + arith_mulf_26); 
        double memref_load_28 = func_arg_4[for_iter_11][for_iter_18]; 
        double arith_addf_29 = (memref_load_28 + arith_addf_27); 
        func_arg_4[for_iter_11][for_iter_18] = arith_addf_29; 
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

#pragma peqc async_execute
{
  kernel_syr2k(n, m, alpha, beta, C, A, B);
}
}

#pragma pocc-region-end
