#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 28; 
  int arith_const_9 = 1; 
  int arith_const_10 = 0; 
  int arith_const_11 = 27; 
  double arith_const_12 = 1.000000; 
  double arith_const_13 = 0.000000; 
  double arith_const_14 = 0.100000; 
  double* memref_alloc_15; 
  double* memref_alloca_16; 
  func_arg_4[arith_const_11][arith_const_11] = arith_const_12; 
  for (int for_iter_17 = arith_const_10; for_iter_17 < arith_const_11; for_iter_17 += arith_const_9) {
    int arith_addi_18 = (for_iter_17 + arith_const_9); 
    for (int for_iter_19 = arith_addi_18; for_iter_19 < arith_const_8; for_iter_19 += arith_const_9) {
      func_arg_4[for_iter_17][for_iter_19] = arith_const_13; 
    }
  }
  for (int for_iter_20 = arith_const_10; for_iter_20 < arith_const_11; for_iter_20 += arith_const_9) {
    func_arg_4[for_iter_20][for_iter_20] = arith_const_12; 
  }
  double math_sqrt_21 = sqrt(func_arg_2); 
  memref_alloca_16[arith_const_10] = math_sqrt_21; 
  for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_8; for_iter_22 += arith_const_9) {
    func_arg_6[for_iter_22] = arith_const_13; 
    func_arg_5[for_iter_22] = arith_const_13; 
    for (int for_iter_23 = arith_const_10; for_iter_23 < arith_const_7; for_iter_23 += arith_const_9) {
      double memref_load_24 = func_arg_5[for_iter_22]; 
      double memref_load_25 = func_arg_3[for_iter_23][for_iter_22]; 
      double arith_addf_26 = (memref_load_24 + memref_load_25); 
      func_arg_5[for_iter_22] = arith_addf_26; 
    }
    for (int for_iter_27 = arith_const_10; for_iter_27 < arith_const_7; for_iter_27 += arith_const_9) {
      double memref_load_28 = func_arg_5[for_iter_22]; 
      double memref_load_29 = func_arg_3[for_iter_27][for_iter_22]; 
      double arith_addf_30 = (memref_load_28 + memref_load_29); 
      func_arg_5[for_iter_22] = arith_addf_30; 
    }
    for (int for_iter_31 = arith_const_10; for_iter_31 < arith_const_7; for_iter_31 += arith_const_9) {
      double memref_load_32 = func_arg_5[for_iter_22]; 
      double arith_divf_33 = (memref_load_32 / func_arg_2); 
      func_arg_5[for_iter_22] = arith_divf_33; 
      double memref_load_34 = func_arg_6[for_iter_22]; 
      double memref_load_35 = func_arg_3[for_iter_31][for_iter_22]; 
      double memref_load_36 = func_arg_5[for_iter_22]; 
      double arith_subf_37 = (memref_load_35 - memref_load_36); 
      double arith_mulf_38 = (arith_subf_37 * arith_subf_37); 
      double arith_addf_39 = (memref_load_34 + arith_mulf_38); 
      func_arg_6[for_iter_22] = arith_addf_39; 
      double memref_load_40 = func_arg_3[for_iter_31][for_iter_22]; 
      double memref_load_41 = func_arg_5[for_iter_22]; 
      double arith_subf_42 = (memref_load_40 - memref_load_41); 
      func_arg_3[for_iter_31][for_iter_22] = arith_subf_42; 
    }
    double memref_load_43 = func_arg_6[for_iter_22]; 
    double arith_divf_44 = (memref_load_43 / func_arg_2); 
    double math_sqrt_45 = sqrt(arith_divf_44); 
    int arith_cmpi_46 = (math_sqrt_45 <= arith_const_14); 
    double arith_select_47 = (arith_cmpi_46 ? arith_const_12 : math_sqrt_45); 
    func_arg_6[for_iter_22] = arith_select_47; 
  }
  for (int for_iter_48 = arith_const_10; for_iter_48 < arith_const_7; for_iter_48 += arith_const_9) {
    for (int for_iter_49 = arith_const_10; for_iter_49 < arith_const_8; for_iter_49 += arith_const_9) {
      memref_alloc_15[arith_const_10] = arith_const_13; 
      func_arg_5[for_iter_49] = arith_const_13; 
      for (int for_iter_50 = arith_const_10; for_iter_50 < arith_const_7; for_iter_50 += arith_const_9) {
        double memref_load_51 = func_arg_5[for_iter_49]; 
        double memref_load_52 = func_arg_3[for_iter_50][for_iter_49]; 
        double arith_addf_53 = (memref_load_51 + memref_load_52); 
        func_arg_5[for_iter_49] = arith_addf_53; 
      }
      for (int for_iter_54 = arith_const_10; for_iter_54 < arith_const_7; for_iter_54 += arith_const_9) {
        double memref_load_55 = func_arg_5[for_iter_49]; 
        double memref_load_56 = func_arg_3[for_iter_54][for_iter_49]; 
        double arith_addf_57 = (memref_load_55 + memref_load_56); 
        func_arg_5[for_iter_49] = arith_addf_57; 
      }
      for (int for_iter_58 = arith_const_10; for_iter_58 < arith_const_7; for_iter_58 += arith_const_9) {
        double memref_load_59 = func_arg_5[for_iter_49]; 
        double arith_divf_60 = (memref_load_59 / func_arg_2); 
        func_arg_5[for_iter_49] = arith_divf_60; 
        double memref_load_61 = memref_alloc_15[arith_const_10]; 
        double memref_load_62 = func_arg_3[for_iter_58][for_iter_49]; 
        double memref_load_63 = func_arg_5[for_iter_49]; 
        double arith_subf_64 = (memref_load_62 - memref_load_63); 
        double arith_mulf_65 = (arith_subf_64 * arith_subf_64); 
        double arith_addf_66 = (memref_load_61 + arith_mulf_65); 
        memref_alloc_15[arith_const_10] = arith_addf_66; 
        double memref_load_67 = func_arg_3[for_iter_58][for_iter_49]; 
        double memref_load_68 = func_arg_5[for_iter_49]; 
        double arith_subf_69 = (memref_load_67 - memref_load_68); 
        func_arg_3[for_iter_58][for_iter_49] = arith_subf_69; 
      }
      double memref_load_70 = memref_alloc_15[arith_const_10]; 
      double arith_divf_71 = (memref_load_70 / func_arg_2); 
      double math_sqrt_72 = sqrt(arith_divf_71); 
      int arith_cmpi_73 = (math_sqrt_72 <= arith_const_14); 
      double arith_select_74 = (arith_cmpi_73 ? arith_const_12 : math_sqrt_72); 
      memref_alloc_15[arith_const_10] = arith_select_74; 
      double memref_load_75 = func_arg_3[for_iter_48][for_iter_49]; 
      double memref_load_76 = memref_alloca_16[arith_const_10]; 
      double memref_load_77 = memref_alloc_15[arith_const_10]; 
      double arith_mulf_78 = (memref_load_76 * memref_load_77); 
      double arith_divf_79 = (memref_load_75 / arith_mulf_78); 
      func_arg_3[for_iter_48][for_iter_49] = arith_divf_79; 
    }
  }
  for (int for_iter_80 = arith_const_10; for_iter_80 < arith_const_11; for_iter_80 += arith_const_9) {
    int arith_addi_81 = (for_iter_80 + arith_const_9); 
    for (int for_iter_82 = arith_addi_81; for_iter_82 < arith_const_8; for_iter_82 += arith_const_9) {
      for (int for_iter_83 = arith_const_10; for_iter_83 < arith_const_7; for_iter_83 += arith_const_9) {
        double memref_load_84 = func_arg_4[for_iter_80][for_iter_82]; 
        double memref_load_85 = func_arg_3[for_iter_83][for_iter_80]; 
        double memref_load_86 = func_arg_3[for_iter_83][for_iter_82]; 
        double arith_mulf_87 = (memref_load_85 * memref_load_86); 
        double arith_addf_88 = (memref_load_84 + arith_mulf_87); 
        func_arg_4[for_iter_80][for_iter_82] = arith_addf_88; 
      }
    }
  }
  for (int for_iter_89 = arith_const_10; for_iter_89 < arith_const_11; for_iter_89 += arith_const_9) {
    int arith_addi_90 = (for_iter_89 + arith_const_9); 
    for (int for_iter_91 = arith_addi_90; for_iter_91 < arith_const_8; for_iter_91 += arith_const_9) {
      double memref_load_92 = func_arg_4[for_iter_89][for_iter_91]; 
      func_arg_4[for_iter_91][for_iter_89] = memref_load_92; 
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
  double* corr;
  double* mean;
  double* stddev;


  kernel_correlation(m, n, float_n, data, corr, mean, stddev);

}

#pragma pocc-region-end
