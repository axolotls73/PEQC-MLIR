#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 1; 
  int arith_const_10 = 25; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 32; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_10; for_iter_15 += arith_const_13) {
      int arith_addi_16 = (for_iter_14 + arith_const_12); 
      for (int for_iter_17 = for_iter_14; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_9) {
        int arith_addi_18 = (for_iter_15 + arith_const_10); 
        for (int for_iter_19 = for_iter_15; for_iter_19 < arith_addi_18; for_iter_19 += arith_const_9) {
          double memref_load_20 = func_arg_5[for_iter_17][for_iter_19]; 
          double arith_mulf_21 = (memref_load_20 * func_arg_4); 
          func_arg_5[for_iter_17][for_iter_19] = arith_mulf_21; 
        }
      }
    }
  }
  for (int for_iter_22 = arith_const_11; for_iter_22 < arith_const_12; for_iter_22 += arith_const_13) {
    for (int for_iter_23 = arith_const_11; for_iter_23 < arith_const_8; for_iter_23 += arith_const_13) {
      for (int for_iter_24 = arith_const_11; for_iter_24 < arith_const_10; for_iter_24 += arith_const_13) {
        int arith_addi_25 = (for_iter_22 + arith_const_12); 
        for (int for_iter_26 = for_iter_22; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_9) {
          int arith_addi_27 = (for_iter_23 + arith_const_8); 
          for (int for_iter_28 = for_iter_23; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_9) {
            int arith_addi_29 = (for_iter_24 + arith_const_10); 
            for (int for_iter_30 = for_iter_24; for_iter_30 < arith_addi_29; for_iter_30 += arith_const_9) {
              double memref_load_31 = func_arg_5[for_iter_26][for_iter_30]; 
              double memref_load_32 = func_arg_6[for_iter_26][for_iter_28]; 
              double arith_mulf_33 = (func_arg_3 * memref_load_32); 
              double memref_load_34 = func_arg_7[for_iter_28][for_iter_30]; 
              double arith_mulf_35 = (arith_mulf_33 * memref_load_34); 
              double arith_addf_36 = (memref_load_31 + arith_mulf_35); 
              func_arg_5[for_iter_26][for_iter_30] = arith_addf_36; 
            }
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
