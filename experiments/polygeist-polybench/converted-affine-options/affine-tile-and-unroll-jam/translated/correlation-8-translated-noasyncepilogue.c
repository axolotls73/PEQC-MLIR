#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 28; 
  int arith_const_8 = 32; 
  int arith_const_9 = -1; 
  int arith_const_10 = 1; 
  int arith_const_11 = 0; 
  int arith_const_12 = 27; 
  double arith_const_13 = 0.100000; 
  double arith_const_14 = 0.000000; 
  double arith_const_15 = 1.000000; 
  double* memref_alloca_16; 
  func_arg_4[arith_const_12][arith_const_12] = arith_const_15; 
  for (int for_iter_17 = arith_const_11; for_iter_17 < arith_const_12; for_iter_17 += arith_const_10) {
    int arith_muli_18 = (for_iter_17 * arith_const_9); 
    int arith_addi_19 = (arith_muli_18 + arith_const_12); 
    for (int for_iter_20 = arith_const_11; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_10) {
      int arith_addi_21 = (for_iter_17 + for_iter_20); 
      int arith_addi_22 = (arith_addi_21 + arith_const_10); 
      func_arg_4[for_iter_17][arith_addi_22] = arith_const_14; 
    }
  }
  for (int for_iter_23 = arith_const_11; for_iter_23 < arith_const_12; for_iter_23 += arith_const_8) {
    int arith_addi_24 = (for_iter_23 + arith_const_12); 
    for (int for_iter_25 = for_iter_23; for_iter_25 < arith_addi_24; for_iter_25 += arith_const_10) {
      func_arg_4[for_iter_25][for_iter_25] = arith_const_15; 
    }
  }
  double math_sqrt_26 = sqrt(func_arg_2); 
  memref_alloca_16[arith_const_11] = math_sqrt_26; 
  for (int for_iter_27 = arith_const_11; for_iter_27 < arith_const_7; for_iter_27 += arith_const_8) {
    int arith_addi_28 = (for_iter_27 + arith_const_7); 
    for (int for_iter_29 = for_iter_27; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_10) {
      func_arg_6[for_iter_29] = arith_const_14; 
      func_arg_5[for_iter_29] = arith_const_14; 
    }
  }
  for (int for_iter_30 = arith_const_11; for_iter_30 < arith_const_8; for_iter_30 += arith_const_8) {
    for (int for_iter_31 = arith_const_11; for_iter_31 < arith_const_7; for_iter_31 += arith_const_8) {
      int arith_addi_32 = (for_iter_30 + arith_const_8); 
      for (int for_iter_33 = for_iter_30; for_iter_33 < arith_addi_32; for_iter_33 += arith_const_10) {
        int arith_addi_34 = (for_iter_31 + arith_const_7); 
        for (int for_iter_35 = for_iter_31; for_iter_35 < arith_addi_34; for_iter_35 += arith_const_10) {
          double memref_load_36 = func_arg_5[for_iter_35]; 
          double memref_load_37 = func_arg_3[for_iter_33][for_iter_35]; 
          double arith_addf_38 = (memref_load_36 + memref_load_37); 
          func_arg_5[for_iter_35] = arith_addf_38; 
        }
      }
    }
  }
  for (int for_iter_39 = arith_const_11; for_iter_39 < arith_const_7; for_iter_39 += arith_const_8) {
    int arith_addi_40 = (for_iter_39 + arith_const_7); 
    for (int for_iter_41 = for_iter_39; for_iter_41 < arith_addi_40; for_iter_41 += arith_const_10) {
      double memref_load_42 = func_arg_5[for_iter_41]; 
      double arith_divf_43 = (memref_load_42 / func_arg_2); 
      func_arg_5[for_iter_41] = arith_divf_43; 
    }
  }
  for (int for_iter_44 = arith_const_11; for_iter_44 < arith_const_8; for_iter_44 += arith_const_8) {
    for (int for_iter_45 = arith_const_11; for_iter_45 < arith_const_7; for_iter_45 += arith_const_8) {
      int arith_addi_46 = (for_iter_44 + arith_const_8); 
      for (int for_iter_47 = for_iter_44; for_iter_47 < arith_addi_46; for_iter_47 += arith_const_10) {
        int arith_addi_48 = (for_iter_45 + arith_const_7); 
        for (int for_iter_49 = for_iter_45; for_iter_49 < arith_addi_48; for_iter_49 += arith_const_10) {
          double memref_load_50 = func_arg_6[for_iter_49]; 
          double memref_load_51 = func_arg_3[for_iter_47][for_iter_49]; 
          double memref_load_52 = func_arg_5[for_iter_49]; 
          double arith_subf_53 = (memref_load_51 - memref_load_52); 
          double arith_mulf_54 = (arith_subf_53 * arith_subf_53); 
          double arith_addf_55 = (memref_load_50 + arith_mulf_54); 
          func_arg_6[for_iter_49] = arith_addf_55; 
          double memref_load_56 = func_arg_3[for_iter_47][for_iter_49]; 
          double memref_load_57 = func_arg_5[for_iter_49]; 
          double arith_subf_58 = (memref_load_56 - memref_load_57); 
          func_arg_3[for_iter_47][for_iter_49] = arith_subf_58; 
        }
      }
    }
  }
  for (int for_iter_59 = arith_const_11; for_iter_59 < arith_const_7; for_iter_59 += arith_const_8) {
    int arith_addi_60 = (for_iter_59 + arith_const_7); 
    for (int for_iter_61 = for_iter_59; for_iter_61 < arith_addi_60; for_iter_61 += arith_const_10) {
      double memref_load_62 = func_arg_6[for_iter_61]; 
      double arith_divf_63 = (memref_load_62 / func_arg_2); 
      double math_sqrt_64 = sqrt(arith_divf_63); 
      int arith_cmpi_65 = (math_sqrt_64 <= arith_const_13); 
      double arith_select_66 = (arith_cmpi_65 ? arith_const_15 : math_sqrt_64); 
      func_arg_6[for_iter_61] = arith_select_66; 
    }
  }
  for (int for_iter_67 = arith_const_11; for_iter_67 < arith_const_8; for_iter_67 += arith_const_8) {
    for (int for_iter_68 = arith_const_11; for_iter_68 < arith_const_7; for_iter_68 += arith_const_8) {
      int arith_addi_69 = (for_iter_67 + arith_const_8); 
      for (int for_iter_70 = for_iter_67; for_iter_70 < arith_addi_69; for_iter_70 += arith_const_10) {
        int arith_addi_71 = (for_iter_68 + arith_const_7); 
        for (int for_iter_72 = for_iter_68; for_iter_72 < arith_addi_71; for_iter_72 += arith_const_10) {
          double memref_load_73 = func_arg_3[for_iter_70][for_iter_72]; 
          double memref_load_74 = memref_alloca_16[arith_const_11]; 
          double memref_load_75 = func_arg_6[for_iter_72]; 
          double arith_mulf_76 = (memref_load_74 * memref_load_75); 
          double arith_divf_77 = (memref_load_73 / arith_mulf_76); 
          func_arg_3[for_iter_70][for_iter_72] = arith_divf_77; 
        }
      }
    }
  }
  for (int for_iter_78 = arith_const_11; for_iter_78 < arith_const_12; for_iter_78 += arith_const_10) {
    for (int for_iter_79 = arith_const_11; for_iter_79 < arith_const_8; for_iter_79 += arith_const_10) {
      int arith_muli_80 = (for_iter_78 * arith_const_9); 
      int arith_addi_81 = (arith_muli_80 + arith_const_12); 
      for (int for_iter_82 = arith_const_11; for_iter_82 < arith_addi_81; for_iter_82 += arith_const_10) {
        int arith_addi_83 = (for_iter_78 + for_iter_82); 
        int arith_addi_84 = (arith_addi_83 + arith_const_10); 
        double memref_load_85 = func_arg_4[for_iter_78][arith_addi_84]; 
        double memref_load_86 = func_arg_3[for_iter_79][for_iter_78]; 
        int arith_addi_87 = (for_iter_78 + for_iter_82); 
        int arith_addi_88 = (arith_addi_87 + arith_const_10); 
        double memref_load_89 = func_arg_3[for_iter_79][arith_addi_88]; 
        double arith_mulf_90 = (memref_load_86 * memref_load_89); 
        double arith_addf_91 = (memref_load_85 + arith_mulf_90); 
        int arith_addi_92 = (for_iter_78 + for_iter_82); 
        int arith_addi_93 = (arith_addi_92 + arith_const_10); 
        func_arg_4[for_iter_78][arith_addi_93] = arith_addf_91; 
      }
    }
  }
  for (int for_iter_94 = arith_const_11; for_iter_94 < arith_const_12; for_iter_94 += arith_const_10) {
    int arith_muli_95 = (for_iter_94 * arith_const_9); 
    int arith_addi_96 = (arith_muli_95 + arith_const_12); 
    for (int for_iter_97 = arith_const_11; for_iter_97 < arith_addi_96; for_iter_97 += arith_const_10) {
      int arith_addi_98 = (for_iter_94 + for_iter_97); 
      int arith_addi_99 = (arith_addi_98 + arith_const_10); 
      double memref_load_100 = func_arg_4[for_iter_94][arith_addi_99]; 
      int arith_addi_101 = (for_iter_94 + for_iter_97); 
      int arith_addi_102 = (arith_addi_101 + arith_const_10); 
      func_arg_4[arith_addi_102][for_iter_94] = memref_load_100; 
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
