#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 27; 
  int arith_const_8 = 1; 
  double arith_const_9 = 1.000000; 
  double arith_const_10 = 0.000000; 
  double arith_const_11 = 0.100000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 28; 
  int arith_const_14 = 32; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_addi_16 = (for_iter_15 + arith_const_13); 
    for (int for_iter_17 = for_iter_15; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_8) {
      func_arg_5[for_iter_17] = arith_const_10; 
      for (int for_iter_18 = arith_const_12; for_iter_18 < arith_const_14; for_iter_18 += arith_const_8) {
        double memref_load_19 = func_arg_3[for_iter_18][for_iter_17]; 
        double memref_load_20 = func_arg_5[for_iter_17]; 
        double arith_addf_21 = (memref_load_20 + memref_load_19); 
        func_arg_5[for_iter_17] = arith_addf_21; 
      }
      double memref_load_22 = func_arg_5[for_iter_17]; 
      double arith_divf_23 = (memref_load_22 / func_arg_2); 
      func_arg_5[for_iter_17] = arith_divf_23; 
    }
  }
  for (int for_iter_24 = arith_const_12; for_iter_24 < arith_const_13; for_iter_24 += arith_const_14) {
    int arith_addi_25 = (for_iter_24 + arith_const_13); 
    for (int for_iter_26 = for_iter_24; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_8) {
      func_arg_6[for_iter_26] = arith_const_10; 
      for (int for_iter_27 = arith_const_12; for_iter_27 < arith_const_14; for_iter_27 += arith_const_8) {
        double memref_load_28 = func_arg_3[for_iter_27][for_iter_26]; 
        double memref_load_29 = func_arg_5[for_iter_26]; 
        double arith_subf_30 = (memref_load_28 - memref_load_29); 
        double arith_mulf_31 = (arith_subf_30 * arith_subf_30); 
        double memref_load_32 = func_arg_6[for_iter_26]; 
        double arith_addf_33 = (memref_load_32 + arith_mulf_31); 
        func_arg_6[for_iter_26] = arith_addf_33; 
      }
      double memref_load_34 = func_arg_6[for_iter_26]; 
      double arith_divf_35 = (memref_load_34 / func_arg_2); 
      double math_sqrt_36 = sqrt(arith_divf_35); 
      int arith_cmpi_37 = (math_sqrt_36 <= arith_const_11); 
      double arith_select_38 = (arith_cmpi_37 ? arith_const_9 : math_sqrt_36); 
      func_arg_6[for_iter_26] = arith_select_38; 
    }
  }
  double math_sqrt_39 = sqrt(func_arg_2); 
  for (int for_iter_40 = arith_const_12; for_iter_40 < arith_const_14; for_iter_40 += arith_const_14) {
    for (int for_iter_41 = arith_const_12; for_iter_41 < arith_const_13; for_iter_41 += arith_const_14) {
      int arith_addi_42 = (for_iter_40 + arith_const_14); 
      for (int for_iter_43 = for_iter_40; for_iter_43 < arith_addi_42; for_iter_43 += arith_const_8) {
        int arith_addi_44 = (for_iter_41 + arith_const_13); 
        for (int for_iter_45 = for_iter_41; for_iter_45 < arith_addi_44; for_iter_45 += arith_const_8) {
          double memref_load_46 = func_arg_5[for_iter_45]; 
          double memref_load_47 = func_arg_3[for_iter_43][for_iter_45]; 
          double arith_subf_48 = (memref_load_47 - memref_load_46); 
          func_arg_3[for_iter_43][for_iter_45] = arith_subf_48; 
          double memref_load_49 = func_arg_6[for_iter_45]; 
          double arith_mulf_50 = (math_sqrt_39 * memref_load_49); 
          double arith_divf_51 = (arith_subf_48 / arith_mulf_50); 
          func_arg_3[for_iter_43][for_iter_45] = arith_divf_51; 
        }
      }
    }
  }
  for (int for_iter_52 = arith_const_12; for_iter_52 < arith_const_7; for_iter_52 += arith_const_14) {
    int arith_addi_53 = (for_iter_52 + arith_const_7); 
    for (int for_iter_54 = for_iter_52; for_iter_54 < arith_addi_53; for_iter_54 += arith_const_8) {
      func_arg_4[for_iter_54][for_iter_54] = arith_const_9; 
      int arith_addi_55 = (for_iter_54 + arith_const_8); 
      for (int for_iter_56 = arith_addi_55; for_iter_56 < arith_const_13; for_iter_56 += arith_const_8) {
        func_arg_4[for_iter_54][for_iter_56] = arith_const_10; 
        for (int for_iter_57 = arith_const_12; for_iter_57 < arith_const_14; for_iter_57 += arith_const_8) {
          double memref_load_58 = func_arg_3[for_iter_57][for_iter_54]; 
          double memref_load_59 = func_arg_3[for_iter_57][for_iter_56]; 
          double arith_mulf_60 = (memref_load_58 * memref_load_59); 
          double memref_load_61 = func_arg_4[for_iter_54][for_iter_56]; 
          double arith_addf_62 = (memref_load_61 + arith_mulf_60); 
          func_arg_4[for_iter_54][for_iter_56] = arith_addf_62; 
        }
        double memref_load_63 = func_arg_4[for_iter_54][for_iter_56]; 
        func_arg_4[for_iter_56][for_iter_54] = memref_load_63; 
      }
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
