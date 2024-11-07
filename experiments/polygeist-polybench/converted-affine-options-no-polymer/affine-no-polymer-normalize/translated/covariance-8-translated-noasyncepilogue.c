#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 32; 
  double arith_const_8 = 1.000000; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 28; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    func_arg_5[for_iter_13] = arith_const_9; 
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_7; for_iter_14 += arith_const_12) {
      double memref_load_15 = func_arg_3[for_iter_14][for_iter_13]; 
      double memref_load_16 = func_arg_5[for_iter_13]; 
      double arith_addf_17 = (memref_load_16 + memref_load_15); 
      func_arg_5[for_iter_13] = arith_addf_17; 
    }
    double memref_load_18 = func_arg_5[for_iter_13]; 
    double arith_divf_19 = (memref_load_18 / func_arg_2); 
    func_arg_5[for_iter_13] = arith_divf_19; 
  }
  for (int for_iter_20 = arith_const_10; for_iter_20 < arith_const_7; for_iter_20 += arith_const_12) {
    for (int for_iter_21 = arith_const_10; for_iter_21 < arith_const_11; for_iter_21 += arith_const_12) {
      double memref_load_22 = func_arg_5[for_iter_21]; 
      double memref_load_23 = func_arg_3[for_iter_20][for_iter_21]; 
      double arith_subf_24 = (memref_load_23 - memref_load_22); 
      func_arg_3[for_iter_20][for_iter_21] = arith_subf_24; 
    }
  }
  double arith_subf_25 = (func_arg_2 - arith_const_8); 
  for (int for_iter_26 = arith_const_10; for_iter_26 < arith_const_11; for_iter_26 += arith_const_12) {
    int arith_muli_27 = (for_iter_26 * arith_const_6); 
    int arith_addi_28 = (arith_muli_27 + arith_const_11); 
    for (int for_iter_29 = arith_const_10; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_12) {
      int arith_addi_30 = (for_iter_26 + for_iter_29); 
      func_arg_4[for_iter_26][arith_addi_30] = arith_const_9; 
      for (int for_iter_31 = arith_const_10; for_iter_31 < arith_const_7; for_iter_31 += arith_const_12) {
        double memref_load_32 = func_arg_3[for_iter_31][for_iter_26]; 
        double memref_load_33 = func_arg_3[for_iter_31][arith_addi_30]; 
        double arith_mulf_34 = (memref_load_32 * memref_load_33); 
        double memref_load_35 = func_arg_4[for_iter_26][arith_addi_30]; 
        double arith_addf_36 = (memref_load_35 + arith_mulf_34); 
        func_arg_4[for_iter_26][arith_addi_30] = arith_addf_36; 
      }
      double memref_load_37 = func_arg_4[for_iter_26][arith_addi_30]; 
      double arith_divf_38 = (memref_load_37 / arith_subf_25); 
      func_arg_4[for_iter_26][arith_addi_30] = arith_divf_38; 
      func_arg_4[arith_addi_30][for_iter_26] = arith_divf_38; 
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
