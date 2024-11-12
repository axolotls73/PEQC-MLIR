#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 27; 
  int arith_const_8 = 32; 
  double arith_const_9 = 1.000000; 
  double arith_const_10 = 0.000000; 
  double arith_const_11 = 0.100000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 28; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    func_arg_5[for_iter_15] = arith_const_10; 
    for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_8; for_iter_16 += arith_const_14) {
      double memref_load_17 = func_arg_3[for_iter_16][for_iter_15]; 
      double memref_load_18 = func_arg_5[for_iter_15]; 
      double arith_addf_19 = (memref_load_18 + memref_load_17); 
      func_arg_5[for_iter_15] = arith_addf_19; 
    }
    double memref_load_20 = func_arg_5[for_iter_15]; 
    double arith_divf_21 = (memref_load_20 / func_arg_2); 
    func_arg_5[for_iter_15] = arith_divf_21; 
  }
  for (int for_iter_22 = arith_const_12; for_iter_22 < arith_const_13; for_iter_22 += arith_const_14) {
    func_arg_6[for_iter_22] = arith_const_10; 
    for (int for_iter_23 = arith_const_12; for_iter_23 < arith_const_8; for_iter_23 += arith_const_14) {
      double memref_load_24 = func_arg_3[for_iter_23][for_iter_22]; 
      double memref_load_25 = func_arg_5[for_iter_22]; 
      double arith_subf_26 = (memref_load_24 - memref_load_25); 
      double arith_mulf_27 = (arith_subf_26 * arith_subf_26); 
      double memref_load_28 = func_arg_6[for_iter_22]; 
      double arith_addf_29 = (memref_load_28 + arith_mulf_27); 
      func_arg_6[for_iter_22] = arith_addf_29; 
    }
    double memref_load_30 = func_arg_6[for_iter_22]; 
    double arith_divf_31 = (memref_load_30 / func_arg_2); 
    double math_sqrt_32 = sqrt(arith_divf_31); 
    int arith_cmpi_33 = (math_sqrt_32 <= arith_const_11); 
    double arith_select_34 = (arith_cmpi_33 ? arith_const_9 : math_sqrt_32); 
    func_arg_6[for_iter_22] = arith_select_34; 
  }
  double math_sqrt_35 = sqrt(func_arg_2); 
  for (int for_iter_36 = arith_const_12; for_iter_36 < arith_const_8; for_iter_36 += arith_const_14) {
    for (int for_iter_37 = arith_const_12; for_iter_37 < arith_const_13; for_iter_37 += arith_const_14) {
      double memref_load_38 = func_arg_5[for_iter_37]; 
      double memref_load_39 = func_arg_3[for_iter_36][for_iter_37]; 
      double arith_subf_40 = (memref_load_39 - memref_load_38); 
      func_arg_3[for_iter_36][for_iter_37] = arith_subf_40; 
      double memref_load_41 = func_arg_6[for_iter_37]; 
      double arith_mulf_42 = (math_sqrt_35 * memref_load_41); 
      double arith_divf_43 = (arith_subf_40 / arith_mulf_42); 
      func_arg_3[for_iter_36][for_iter_37] = arith_divf_43; 
    }
  }
  for (int for_iter_44 = arith_const_12; for_iter_44 < arith_const_7; for_iter_44 += arith_const_14) {
    func_arg_4[for_iter_44][for_iter_44] = arith_const_9; 
    int arith_addi_45 = (for_iter_44 + arith_const_14); 
    for (int for_iter_46 = arith_addi_45; for_iter_46 < arith_const_13; for_iter_46 += arith_const_14) {
      func_arg_4[for_iter_44][for_iter_46] = arith_const_10; 
      for (int for_iter_47 = arith_const_12; for_iter_47 < arith_const_8; for_iter_47 += arith_const_14) {
        double memref_load_48 = func_arg_3[for_iter_47][for_iter_44]; 
        double memref_load_49 = func_arg_3[for_iter_47][for_iter_46]; 
        double arith_mulf_50 = (memref_load_48 * memref_load_49); 
        double memref_load_51 = func_arg_4[for_iter_44][for_iter_46]; 
        double arith_addf_52 = (memref_load_51 + arith_mulf_50); 
        func_arg_4[for_iter_44][for_iter_46] = arith_addf_52; 
      }
      double memref_load_53 = func_arg_4[for_iter_44][for_iter_46]; 
      func_arg_4[for_iter_46][for_iter_44] = memref_load_53; 
    }
  }
  func_arg_4[arith_const_7][arith_const_7] = arith_const_9; 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* corr;
  double* mean;
  double* stddev;


  kernel_correlation(m, n, float_n, data, corr, mean, stddev);

}

#pragma pocc-region-end
