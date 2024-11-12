#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 32; 
  double arith_const_7 = 1.000000; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 28; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    func_arg_5[for_iter_12] = arith_const_8; 
    for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_6; for_iter_13 += arith_const_11) {
      double memref_load_14 = func_arg_3[for_iter_13][for_iter_12]; 
      double memref_load_15 = func_arg_5[for_iter_12]; 
      double arith_addf_16 = (memref_load_15 + memref_load_14); 
      func_arg_5[for_iter_12] = arith_addf_16; 
    }
    double memref_load_17 = func_arg_5[for_iter_12]; 
    double arith_divf_18 = (memref_load_17 / func_arg_2); 
    func_arg_5[for_iter_12] = arith_divf_18; 
  }
  for (int for_iter_19 = arith_const_9; for_iter_19 < arith_const_6; for_iter_19 += arith_const_11) {
    for (int for_iter_20 = arith_const_9; for_iter_20 < arith_const_10; for_iter_20 += arith_const_11) {
      double memref_load_21 = func_arg_5[for_iter_20]; 
      double memref_load_22 = func_arg_3[for_iter_19][for_iter_20]; 
      double arith_subf_23 = (memref_load_22 - memref_load_21); 
      func_arg_3[for_iter_19][for_iter_20] = arith_subf_23; 
    }
  }
  double arith_subf_24 = (func_arg_2 - arith_const_7); 
  for (int for_iter_25 = arith_const_9; for_iter_25 < arith_const_10; for_iter_25 += arith_const_11) {
    for (int for_iter_26 = for_iter_25; for_iter_26 < arith_const_10; for_iter_26 += arith_const_11) {
      func_arg_4[for_iter_25][for_iter_26] = arith_const_8; 
      for (int for_iter_27 = arith_const_9; for_iter_27 < arith_const_6; for_iter_27 += arith_const_11) {
        double memref_load_28 = func_arg_3[for_iter_27][for_iter_25]; 
        double memref_load_29 = func_arg_3[for_iter_27][for_iter_26]; 
        double arith_mulf_30 = (memref_load_28 * memref_load_29); 
        double memref_load_31 = func_arg_4[for_iter_25][for_iter_26]; 
        double arith_addf_32 = (memref_load_31 + arith_mulf_30); 
        func_arg_4[for_iter_25][for_iter_26] = arith_addf_32; 
      }
      double memref_load_33 = func_arg_4[for_iter_25][for_iter_26]; 
      double arith_divf_34 = (memref_load_33 / arith_subf_24); 
      func_arg_4[for_iter_25][for_iter_26] = arith_divf_34; 
      func_arg_4[for_iter_26][for_iter_25] = arith_divf_34; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}

#pragma pocc-region-end
