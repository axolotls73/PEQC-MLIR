#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  int arith_const_9 = 0; 
  int arith_const_10 = 30; 
  int arith_const_11 = 32; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_addi_13 = (for_iter_12 + arith_const_10); 
    for (int for_iter_14 = for_iter_12; for_iter_14 < arith_addi_13; for_iter_14 += arith_const_8) {
      int arith_addi_15 = (for_iter_14 + arith_const_8); 
      for (int for_iter_16 = arith_const_9; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_8) {
        double memref_load_17 = func_arg_4[for_iter_14][for_iter_16]; 
        double arith_mulf_18 = (memref_load_17 * func_arg_3); 
        func_arg_4[for_iter_14][for_iter_16] = arith_mulf_18; 
      }
      for (int for_iter_19 = arith_const_9; for_iter_19 < arith_const_7; for_iter_19 += arith_const_8) {
        int arith_addi_20 = (for_iter_14 + arith_const_8); 
        for (int for_iter_21 = arith_const_9; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_8) {
          double memref_load_22 = func_arg_5[for_iter_21][for_iter_19]; 
          double arith_mulf_23 = (memref_load_22 * func_arg_2); 
          double memref_load_24 = func_arg_6[for_iter_14][for_iter_19]; 
          double arith_mulf_25 = (arith_mulf_23 * memref_load_24); 
          double memref_load_26 = func_arg_6[for_iter_21][for_iter_19]; 
          double arith_mulf_27 = (memref_load_26 * func_arg_2); 
          double memref_load_28 = func_arg_5[for_iter_14][for_iter_19]; 
          double arith_mulf_29 = (arith_mulf_27 * memref_load_28); 
          double arith_addf_30 = (arith_mulf_25 + arith_mulf_29); 
          double memref_load_31 = func_arg_4[for_iter_14][for_iter_21]; 
          double arith_addf_32 = (memref_load_31 + arith_addf_30); 
          func_arg_4[for_iter_14][for_iter_21] = arith_addf_32; 
        }
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
