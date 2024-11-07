#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 25; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_addi_14 = (for_iter_13 + arith_const_12); 
    for (int for_iter_15 = for_iter_13; for_iter_15 < arith_addi_14; for_iter_15 += arith_const_12) {
      for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_9; for_iter_16 += arith_const_12) {
        double memref_load_17 = func_arg_5[for_iter_15][for_iter_16]; 
        double arith_mulf_18 = (memref_load_17 * func_arg_4); 
        func_arg_5[for_iter_15][for_iter_16] = arith_mulf_18; 
      }
      for (int for_iter_19 = arith_const_10; for_iter_19 < arith_const_8; for_iter_19 += arith_const_12) {
        for (int for_iter_20 = arith_const_10; for_iter_20 < arith_const_9; for_iter_20 += arith_const_12) {
          double memref_load_21 = func_arg_6[for_iter_15][for_iter_19]; 
          double arith_mulf_22 = (func_arg_3 * memref_load_21); 
          double memref_load_23 = func_arg_7[for_iter_19][for_iter_20]; 
          double arith_mulf_24 = (arith_mulf_22 * memref_load_23); 
          double memref_load_25 = func_arg_5[for_iter_15][for_iter_20]; 
          double arith_addf_26 = (memref_load_25 + arith_mulf_24); 
          func_arg_5[for_iter_15][for_iter_20] = arith_addf_26; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int ni;
  int nj;
  int nk;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);

}

#pragma pocc-region-end
