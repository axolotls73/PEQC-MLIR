#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 0; 
  int arith_const_13 = 40; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_13; for_iter_16 += arith_const_14) {
      double memref_load_17 = func_arg_3[for_iter_16][for_iter_15]; 
      double memref_load_18 = func_arg_4[for_iter_16]; 
      double memref_load_19 = func_arg_5[for_iter_15]; 
      double arith_mulf_20 = (memref_load_18 * memref_load_19); 
      double arith_addf_21 = (memref_load_17 + arith_mulf_20); 
      double memref_load_22 = func_arg_6[for_iter_16]; 
      double memref_load_23 = func_arg_7[for_iter_15]; 
      double arith_mulf_24 = (memref_load_22 * memref_load_23); 
      double arith_addf_25 = (arith_addf_21 + arith_mulf_24); 
      func_arg_3[for_iter_16][for_iter_15] = arith_addf_25; 
      double memref_load_26 = func_arg_9[for_iter_15]; 
      double memref_load_27 = func_arg_3[for_iter_16][for_iter_15]; 
      double arith_mulf_28 = (func_arg_2 * memref_load_27); 
      double memref_load_29 = func_arg_10[for_iter_16]; 
      double arith_mulf_30 = (arith_mulf_28 * memref_load_29); 
      double arith_addf_31 = (memref_load_26 + arith_mulf_30); 
      func_arg_9[for_iter_15] = arith_addf_31; 
    }
    double memref_load_32 = func_arg_9[for_iter_15]; 
    double memref_load_33 = func_arg_11[for_iter_15]; 
    double arith_addf_34 = (memref_load_32 + memref_load_33); 
    func_arg_9[for_iter_15] = arith_addf_34; 
  }
  for (int for_iter_35 = arith_const_12; for_iter_35 < arith_const_13; for_iter_35 += arith_const_14) {
    for (int for_iter_36 = arith_const_12; for_iter_36 < arith_const_13; for_iter_36 += arith_const_14) {
      double memref_load_37 = func_arg_8[for_iter_35]; 
      double memref_load_38 = func_arg_3[for_iter_35][for_iter_36]; 
      double arith_mulf_39 = (func_arg_1 * memref_load_38); 
      double memref_load_40 = func_arg_9[for_iter_36]; 
      double arith_mulf_41 = (arith_mulf_39 * memref_load_40); 
      double arith_addf_42 = (memref_load_37 + arith_mulf_41); 
      func_arg_8[for_iter_35] = arith_addf_42; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}

#pragma pocc-region-end
