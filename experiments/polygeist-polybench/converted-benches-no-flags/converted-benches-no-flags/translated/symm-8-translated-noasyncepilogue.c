#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_symm(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 30; 
  int arith_const_8 = 1; 
  int arith_const_9 = 20; 
  int arith_const_10 = 0; 
  double arith_const_11 = 0.000000; 
  double* memref_alloca_12; 
  memref_alloca_12[0] = arith_const_11; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_9; for_iter_13 += arith_const_8) {
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_7; for_iter_14 += arith_const_8) {
      memref_alloca_12[0] = arith_const_11; 
      for (int for_iter_15 = arith_const_10; for_iter_15 < for_iter_13; for_iter_15 += arith_const_8) {
        double memref_load_16 = func_arg_6[for_iter_13][for_iter_14]; 
        double arith_mulf_17 = (func_arg_2 * memref_load_16); 
        double memref_load_18 = func_arg_5[for_iter_13][for_iter_15]; 
        double arith_mulf_19 = (arith_mulf_17 * memref_load_18); 
        double memref_load_20 = func_arg_4[for_iter_15][for_iter_14]; 
        double arith_addf_21 = (memref_load_20 + arith_mulf_19); 
        func_arg_4[for_iter_15][for_iter_14] = arith_addf_21; 
        double memref_load_22 = func_arg_6[for_iter_15][for_iter_14]; 
        double memref_load_23 = func_arg_5[for_iter_13][for_iter_15]; 
        double arith_mulf_24 = (memref_load_22 * memref_load_23); 
        double memref_load_25 = memref_alloca_12[0]; 
        double arith_addf_26 = (memref_load_25 + arith_mulf_24); 
        memref_alloca_12[0] = arith_addf_26; 
      }
      double memref_load_27 = func_arg_4[for_iter_13][for_iter_14]; 
      double arith_mulf_28 = (func_arg_3 * memref_load_27); 
      double memref_load_29 = func_arg_6[for_iter_13][for_iter_14]; 
      double arith_mulf_30 = (func_arg_2 * memref_load_29); 
      double memref_load_31 = func_arg_5[for_iter_13][for_iter_13]; 
      double arith_mulf_32 = (arith_mulf_30 * memref_load_31); 
      double arith_addf_33 = (arith_mulf_28 + arith_mulf_32); 
      double memref_load_34 = memref_alloca_12[0]; 
      double arith_mulf_35 = (func_arg_2 * memref_load_34); 
      double arith_addf_36 = (arith_addf_33 + arith_mulf_35); 
      func_arg_4[for_iter_13][for_iter_14] = arith_addf_36; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;


  kernel_symm(m, n, alpha, beta, C, A, B);

}

#pragma pocc-region-end
