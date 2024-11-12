#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 27; 
  int arith_const_9 = 1; 
  double arith_const_10 = 1.000000; 
  double arith_const_11 = 0.000000; 
  double arith_const_12 = 0.100000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 28; 
  int arith_const_15 = 32; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_addi_17 = (for_iter_16 + arith_const_14); 
    for (int for_iter_18 = for_iter_16; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_9) {
      func_arg_5[for_iter_18] = arith_const_11; 
      for (int for_iter_19 = arith_const_13; for_iter_19 < arith_const_15; for_iter_19 += arith_const_9) {
        double memref_load_20 = func_arg_3[for_iter_19][for_iter_18]; 
        double memref_load_21 = func_arg_5[for_iter_18]; 
        double arith_addf_22 = (memref_load_21 + memref_load_20); 
        func_arg_5[for_iter_18] = arith_addf_22; 
      }
      double memref_load_23 = func_arg_5[for_iter_18]; 
      double arith_divf_24 = (memref_load_23 / func_arg_2); 
      func_arg_5[for_iter_18] = arith_divf_24; 
    }
  }
  for (int for_iter_25 = arith_const_13; for_iter_25 < arith_const_14; for_iter_25 += arith_const_15) {
    int arith_addi_26 = (for_iter_25 + arith_const_14); 
    for (int for_iter_27 = for_iter_25; for_iter_27 < arith_addi_26; for_iter_27 += arith_const_9) {
      func_arg_6[for_iter_27] = arith_const_11; 
      for (int for_iter_28 = arith_const_13; for_iter_28 < arith_const_15; for_iter_28 += arith_const_9) {
        double memref_load_29 = func_arg_3[for_iter_28][for_iter_27]; 
        double memref_load_30 = func_arg_5[for_iter_27]; 
        double arith_subf_31 = (memref_load_29 - memref_load_30); 
        double arith_mulf_32 = (arith_subf_31 * arith_subf_31); 
        double memref_load_33 = func_arg_6[for_iter_27]; 
        double arith_addf_34 = (memref_load_33 + arith_mulf_32); 
        func_arg_6[for_iter_27] = arith_addf_34; 
      }
      double memref_load_35 = func_arg_6[for_iter_27]; 
      double arith_divf_36 = (memref_load_35 / func_arg_2); 
      double math_sqrt_37 = sqrt(arith_divf_36); 
      int arith_cmpi_38 = (math_sqrt_37 <= arith_const_12); 
      double arith_select_39 = (arith_cmpi_38 ? arith_const_10 : math_sqrt_37); 
      func_arg_6[for_iter_27] = arith_select_39; 
    }
  }
  double math_sqrt_40 = sqrt(func_arg_2); 
  for (int for_iter_41 = arith_const_13; for_iter_41 < arith_const_15; for_iter_41 += arith_const_15) {
    for (int for_iter_42 = arith_const_13; for_iter_42 < arith_const_14; for_iter_42 += arith_const_15) {
      int arith_addi_43 = (for_iter_41 + arith_const_15); 
      for (int for_iter_44 = for_iter_41; for_iter_44 < arith_addi_43; for_iter_44 += arith_const_9) {
        int arith_addi_45 = (for_iter_42 + arith_const_14); 
        for (int for_iter_46 = for_iter_42; for_iter_46 < arith_addi_45; for_iter_46 += arith_const_9) {
          double memref_load_47 = func_arg_5[for_iter_46]; 
          double memref_load_48 = func_arg_3[for_iter_44][for_iter_46]; 
          double arith_subf_49 = (memref_load_48 - memref_load_47); 
          func_arg_3[for_iter_44][for_iter_46] = arith_subf_49; 
          double memref_load_50 = func_arg_6[for_iter_46]; 
          double arith_mulf_51 = (math_sqrt_40 * memref_load_50); 
          double arith_divf_52 = (arith_subf_49 / arith_mulf_51); 
          func_arg_3[for_iter_44][for_iter_46] = arith_divf_52; 
        }
      }
    }
  }
  for (int for_iter_53 = arith_const_13; for_iter_53 < arith_const_8; for_iter_53 += arith_const_15) {
    int arith_addi_54 = (for_iter_53 + arith_const_8); 
    for (int for_iter_55 = for_iter_53; for_iter_55 < arith_addi_54; for_iter_55 += arith_const_9) {
      func_arg_4[for_iter_55][for_iter_55] = arith_const_10; 
      int arith_muli_56 = (for_iter_55 * arith_const_7); 
      int arith_addi_57 = (arith_muli_56 + arith_const_8); 
      for (int for_iter_58 = arith_const_13; for_iter_58 < arith_addi_57; for_iter_58 += arith_const_9) {
        int arith_addi_59 = (for_iter_55 + for_iter_58); 
        int arith_addi_60 = (arith_addi_59 + arith_const_9); 
        func_arg_4[for_iter_55][arith_addi_60] = arith_const_11; 
        for (int for_iter_61 = arith_const_13; for_iter_61 < arith_const_15; for_iter_61 += arith_const_9) {
          double memref_load_62 = func_arg_3[for_iter_61][for_iter_55]; 
          int arith_addi_63 = (for_iter_55 + for_iter_58); 
          int arith_addi_64 = (arith_addi_63 + arith_const_9); 
          double memref_load_65 = func_arg_3[for_iter_61][arith_addi_64]; 
          double arith_mulf_66 = (memref_load_62 * memref_load_65); 
          int arith_addi_67 = (for_iter_55 + for_iter_58); 
          int arith_addi_68 = (arith_addi_67 + arith_const_9); 
          double memref_load_69 = func_arg_4[for_iter_55][arith_addi_68]; 
          double arith_addf_70 = (memref_load_69 + arith_mulf_66); 
          int arith_addi_71 = (for_iter_55 + for_iter_58); 
          int arith_addi_72 = (arith_addi_71 + arith_const_9); 
          func_arg_4[for_iter_55][arith_addi_72] = arith_addf_70; 
        }
        int arith_addi_73 = (for_iter_55 + for_iter_58); 
        int arith_addi_74 = (arith_addi_73 + arith_const_9); 
        double memref_load_75 = func_arg_4[for_iter_55][arith_addi_74]; 
        int arith_addi_76 = (for_iter_55 + for_iter_58); 
        int arith_addi_77 = (arith_addi_76 + arith_const_9); 
        func_arg_4[arith_addi_77][for_iter_55] = memref_load_75; 
      }
    }
  }
  func_arg_4[arith_const_8][arith_const_8] = arith_const_10; 
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
