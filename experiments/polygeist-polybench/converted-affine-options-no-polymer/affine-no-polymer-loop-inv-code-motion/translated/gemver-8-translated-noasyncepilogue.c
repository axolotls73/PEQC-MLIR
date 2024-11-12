#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 0; 
  int arith_const_13 = 40; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    double memref_load_16 = func_arg_4[for_iter_15]; 
    double memref_load_17 = func_arg_6[for_iter_15]; 
    for (int for_iter_18 = arith_const_12; for_iter_18 < arith_const_13; for_iter_18 += arith_const_14) {
      double memref_load_19 = func_arg_3[for_iter_15][for_iter_18]; 
      double memref_load_20 = func_arg_5[for_iter_18]; 
      double arith_mulf_21 = (memref_load_16 * memref_load_20); 
      double arith_addf_22 = (memref_load_19 + arith_mulf_21); 
      double memref_load_23 = func_arg_7[for_iter_18]; 
      double arith_mulf_24 = (memref_load_17 * memref_load_23); 
      double arith_addf_25 = (arith_addf_22 + arith_mulf_24); 
      func_arg_3[for_iter_15][for_iter_18] = arith_addf_25; 
    }
  }
  for (int for_iter_26 = arith_const_12; for_iter_26 < arith_const_13; for_iter_26 += arith_const_14) {
    for (int for_iter_27 = arith_const_12; for_iter_27 < arith_const_13; for_iter_27 += arith_const_14) {
      double memref_load_28 = func_arg_9[for_iter_26]; 
      double memref_load_29 = func_arg_3[for_iter_27][for_iter_26]; 
      double arith_mulf_30 = (func_arg_2 * memref_load_29); 
      double memref_load_31 = func_arg_10[for_iter_27]; 
      double arith_mulf_32 = (arith_mulf_30 * memref_load_31); 
      double arith_addf_33 = (memref_load_28 + arith_mulf_32); 
      func_arg_9[for_iter_26] = arith_addf_33; 
    }
  }
  for (int for_iter_34 = arith_const_12; for_iter_34 < arith_const_13; for_iter_34 += arith_const_14) {
    double memref_load_35 = func_arg_9[for_iter_34]; 
    double memref_load_36 = func_arg_11[for_iter_34]; 
    double arith_addf_37 = (memref_load_35 + memref_load_36); 
    func_arg_9[for_iter_34] = arith_addf_37; 
  }
  for (int for_iter_38 = arith_const_12; for_iter_38 < arith_const_13; for_iter_38 += arith_const_14) {
    for (int for_iter_39 = arith_const_12; for_iter_39 < arith_const_13; for_iter_39 += arith_const_14) {
      double memref_load_40 = func_arg_8[for_iter_38]; 
      double memref_load_41 = func_arg_3[for_iter_38][for_iter_39]; 
      double arith_mulf_42 = (func_arg_1 * memref_load_41); 
      double memref_load_43 = func_arg_9[for_iter_39]; 
      double arith_mulf_44 = (arith_mulf_42 * memref_load_43); 
      double arith_addf_45 = (memref_load_40 + arith_mulf_44); 
      func_arg_8[for_iter_38] = arith_addf_45; 
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
