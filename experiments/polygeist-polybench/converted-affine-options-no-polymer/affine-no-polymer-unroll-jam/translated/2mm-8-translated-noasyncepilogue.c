#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 22; 
  int arith_const_13 = 18; 
  double arith_const_14 = 0.000000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 16; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_13; for_iter_19 += arith_const_17) {
      func_arg_6[for_iter_18][for_iter_19] = arith_const_14; 
      for (int for_iter_20 = arith_const_15; for_iter_20 < arith_const_12; for_iter_20 += arith_const_17) {
        double memref_load_21 = func_arg_7[for_iter_18][for_iter_20]; 
        double arith_mulf_22 = (func_arg_4 * memref_load_21); 
        double memref_load_23 = func_arg_8[for_iter_20][for_iter_19]; 
        double arith_mulf_24 = (arith_mulf_22 * memref_load_23); 
        double memref_load_25 = func_arg_6[for_iter_18][for_iter_19]; 
        double arith_addf_26 = (memref_load_25 + arith_mulf_24); 
        func_arg_6[for_iter_18][for_iter_19] = arith_addf_26; 
      }
    }
  }
  for (int for_iter_27 = arith_const_15; for_iter_27 < arith_const_16; for_iter_27 += arith_const_17) {
    for (int for_iter_28 = arith_const_15; for_iter_28 < arith_const_11; for_iter_28 += arith_const_17) {
      double memref_load_29 = func_arg_10[for_iter_27][for_iter_28]; 
      double arith_mulf_30 = (memref_load_29 * func_arg_5); 
      func_arg_10[for_iter_27][for_iter_28] = arith_mulf_30; 
      for (int for_iter_31 = arith_const_15; for_iter_31 < arith_const_13; for_iter_31 += arith_const_17) {
        double memref_load_32 = func_arg_6[for_iter_27][for_iter_31]; 
        double memref_load_33 = func_arg_9[for_iter_31][for_iter_28]; 
        double arith_mulf_34 = (memref_load_32 * memref_load_33); 
        double memref_load_35 = func_arg_10[for_iter_27][for_iter_28]; 
        double arith_addf_36 = (memref_load_35 + arith_mulf_34); 
        func_arg_10[for_iter_27][for_iter_28] = arith_addf_36; 
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
  int nl;
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;


  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);

}

#pragma pocc-region-end
