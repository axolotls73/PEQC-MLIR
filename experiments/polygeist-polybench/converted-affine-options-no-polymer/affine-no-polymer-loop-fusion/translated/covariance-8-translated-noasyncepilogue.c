#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 32; 
  int arith_const_7 = 1; 
  int arith_const_8 = 28; 
  int arith_const_9 = 0; 
  double arith_const_10 = 0.000000; 
  double arith_const_11 = 1.000000; 
  double* memref_alloc_12; 
  for (int for_iter_13 = arith_const_9; for_iter_13 < arith_const_8; for_iter_13 += arith_const_7) {
    func_arg_5[for_iter_13] = arith_const_10; 
    for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_6; for_iter_14 += arith_const_7) {
      double memref_load_15 = func_arg_3[for_iter_14][for_iter_13]; 
      double memref_load_16 = func_arg_5[for_iter_13]; 
      double arith_addf_17 = (memref_load_16 + memref_load_15); 
      func_arg_5[for_iter_13] = arith_addf_17; 
    }
    double memref_load_18 = func_arg_5[for_iter_13]; 
    double arith_divf_19 = (memref_load_18 / func_arg_2); 
    func_arg_5[for_iter_13] = arith_divf_19; 
  }
  for (int for_iter_20 = arith_const_9; for_iter_20 < arith_const_6; for_iter_20 += arith_const_7) {
    for (int for_iter_21 = arith_const_9; for_iter_21 < arith_const_8; for_iter_21 += arith_const_7) {
      memref_alloc_12[arith_const_9] = arith_const_10; 
      for (int for_iter_22 = arith_const_9; for_iter_22 < arith_const_6; for_iter_22 += arith_const_7) {
        double memref_load_23 = func_arg_3[for_iter_22][for_iter_21]; 
        double memref_load_24 = memref_alloc_12[arith_const_9]; 
        double arith_addf_25 = (memref_load_24 + memref_load_23); 
        memref_alloc_12[arith_const_9] = arith_addf_25; 
      }
      double memref_load_26 = memref_alloc_12[arith_const_9]; 
      double arith_divf_27 = (memref_load_26 / func_arg_2); 
      memref_alloc_12[arith_const_9] = arith_divf_27; 
      double memref_load_28 = memref_alloc_12[arith_const_9]; 
      double memref_load_29 = func_arg_3[for_iter_20][for_iter_21]; 
      double arith_subf_30 = (memref_load_29 - memref_load_28); 
      func_arg_3[for_iter_20][for_iter_21] = arith_subf_30; 
    }
  }
  double arith_subf_31 = (func_arg_2 - arith_const_11); 
  for (int for_iter_32 = arith_const_9; for_iter_32 < arith_const_8; for_iter_32 += arith_const_7) {
    for (int for_iter_33 = for_iter_32; for_iter_33 < arith_const_8; for_iter_33 += arith_const_7) {
      func_arg_4[for_iter_32][for_iter_33] = arith_const_10; 
      for (int for_iter_34 = arith_const_9; for_iter_34 < arith_const_6; for_iter_34 += arith_const_7) {
        double memref_load_35 = func_arg_3[for_iter_34][for_iter_32]; 
        double memref_load_36 = func_arg_3[for_iter_34][for_iter_33]; 
        double arith_mulf_37 = (memref_load_35 * memref_load_36); 
        double memref_load_38 = func_arg_4[for_iter_32][for_iter_33]; 
        double arith_addf_39 = (memref_load_38 + arith_mulf_37); 
        func_arg_4[for_iter_32][for_iter_33] = arith_addf_39; 
      }
      double memref_load_40 = func_arg_4[for_iter_32][for_iter_33]; 
      double arith_divf_41 = (memref_load_40 / arith_subf_31); 
      func_arg_4[for_iter_32][for_iter_33] = arith_divf_41; 
      func_arg_4[for_iter_33][for_iter_32] = arith_divf_41; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}

#pragma pocc-region-end
