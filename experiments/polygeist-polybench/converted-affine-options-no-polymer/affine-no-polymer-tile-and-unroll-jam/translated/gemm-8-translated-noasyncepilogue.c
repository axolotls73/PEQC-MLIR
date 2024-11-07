#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 25; 
  int arith_const_10 = 1; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 32; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int arith_addi_15 = (for_iter_14 + arith_const_12); 
    for (int for_iter_16 = for_iter_14; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_10) {
      for (int for_iter_17 = arith_const_11; for_iter_17 < arith_const_9; for_iter_17 += arith_const_10) {
        double memref_load_18 = func_arg_5[for_iter_16][for_iter_17]; 
        double arith_mulf_19 = (memref_load_18 * func_arg_4); 
        func_arg_5[for_iter_16][for_iter_17] = arith_mulf_19; 
      }
      for (int for_iter_20 = arith_const_11; for_iter_20 < arith_const_8; for_iter_20 += arith_const_10) {
        for (int for_iter_21 = arith_const_11; for_iter_21 < arith_const_9; for_iter_21 += arith_const_10) {
          double memref_load_22 = func_arg_6[for_iter_16][for_iter_20]; 
          double arith_mulf_23 = (func_arg_3 * memref_load_22); 
          double memref_load_24 = func_arg_7[for_iter_20][for_iter_21]; 
          double arith_mulf_25 = (arith_mulf_23 * memref_load_24); 
          double memref_load_26 = func_arg_5[for_iter_16][for_iter_21]; 
          double arith_addf_27 = (memref_load_26 + arith_mulf_25); 
          func_arg_5[for_iter_16][for_iter_21] = arith_addf_27; 
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
