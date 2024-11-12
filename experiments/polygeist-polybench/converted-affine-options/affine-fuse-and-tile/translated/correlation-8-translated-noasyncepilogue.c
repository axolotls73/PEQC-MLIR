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
  double arith_const_13 = 1.000000; 
  double arith_const_14 = 0.000000; 
  double arith_const_15 = 0.100000; 
  double* memref_alloc_16; 
  double* memref_alloca_17; 
  func_arg_4[arith_const_12][arith_const_12] = arith_const_13; 
  for (int for_iter_18 = arith_const_11; for_iter_18 < arith_const_12; for_iter_18 += arith_const_10) {
    int arith_muli_19 = (for_iter_18 * arith_const_9); 
    int arith_addi_20 = (arith_muli_19 + arith_const_12); 
    for (int for_iter_21 = arith_const_11; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_10) {
      int arith_addi_22 = (for_iter_18 + for_iter_21); 
      int arith_addi_23 = (arith_addi_22 + arith_const_10); 
      func_arg_4[for_iter_18][arith_addi_23] = arith_const_14; 
    }
  }
  for (int for_iter_24 = arith_const_11; for_iter_24 < arith_const_12; for_iter_24 += arith_const_8) {
    int arith_addi_25 = (for_iter_24 + arith_const_12); 
    for (int for_iter_26 = for_iter_24; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_10) {
      func_arg_4[for_iter_26][for_iter_26] = arith_const_13; 
    }
  }
  double math_sqrt_27 = sqrt(func_arg_2); 
  memref_alloca_17[arith_const_11] = math_sqrt_27; 
  for (int for_iter_28 = arith_const_11; for_iter_28 < arith_const_7; for_iter_28 += arith_const_8) {
    int arith_addi_29 = (for_iter_28 + arith_const_7); 
    for (int for_iter_30 = for_iter_28; for_iter_30 < arith_addi_29; for_iter_30 += arith_const_10) {
      func_arg_6[for_iter_30] = arith_const_14; 
      func_arg_5[for_iter_30] = arith_const_14; 
      for (int for_iter_31 = arith_const_11; for_iter_31 < arith_const_8; for_iter_31 += arith_const_10) {
        double memref_load_32 = func_arg_5[for_iter_30]; 
        double memref_load_33 = func_arg_3[for_iter_31][for_iter_30]; 
        double arith_addf_34 = (memref_load_32 + memref_load_33); 
        func_arg_5[for_iter_30] = arith_addf_34; 
      }
      for (int for_iter_35 = arith_const_11; for_iter_35 < arith_const_8; for_iter_35 += arith_const_10) {
        double memref_load_36 = func_arg_5[for_iter_30]; 
        double memref_load_37 = func_arg_3[for_iter_35][for_iter_30]; 
        double arith_addf_38 = (memref_load_36 + memref_load_37); 
        func_arg_5[for_iter_30] = arith_addf_38; 
      }
      for (int for_iter_39 = arith_const_11; for_iter_39 < arith_const_8; for_iter_39 += arith_const_10) {
        double memref_load_40 = func_arg_5[for_iter_30]; 
        double arith_divf_41 = (memref_load_40 / func_arg_2); 
        func_arg_5[for_iter_30] = arith_divf_41; 
        double memref_load_42 = func_arg_6[for_iter_30]; 
        double memref_load_43 = func_arg_3[for_iter_39][for_iter_30]; 
        double memref_load_44 = func_arg_5[for_iter_30]; 
        double arith_subf_45 = (memref_load_43 - memref_load_44); 
        double arith_mulf_46 = (arith_subf_45 * arith_subf_45); 
        double arith_addf_47 = (memref_load_42 + arith_mulf_46); 
        func_arg_6[for_iter_30] = arith_addf_47; 
        double memref_load_48 = func_arg_3[for_iter_39][for_iter_30]; 
        double memref_load_49 = func_arg_5[for_iter_30]; 
        double arith_subf_50 = (memref_load_48 - memref_load_49); 
        func_arg_3[for_iter_39][for_iter_30] = arith_subf_50; 
      }
      double memref_load_51 = func_arg_6[for_iter_30]; 
      double arith_divf_52 = (memref_load_51 / func_arg_2); 
      double math_sqrt_53 = sqrt(arith_divf_52); 
      int arith_cmpi_54 = (math_sqrt_53 <= arith_const_15); 
      double arith_select_55 = (arith_cmpi_54 ? arith_const_13 : math_sqrt_53); 
      func_arg_6[for_iter_30] = arith_select_55; 
    }
  }
  for (int for_iter_56 = arith_const_11; for_iter_56 < arith_const_8; for_iter_56 += arith_const_8) {
    for (int for_iter_57 = arith_const_11; for_iter_57 < arith_const_7; for_iter_57 += arith_const_8) {
      int arith_addi_58 = (for_iter_56 + arith_const_8); 
      for (int for_iter_59 = for_iter_56; for_iter_59 < arith_addi_58; for_iter_59 += arith_const_10) {
        int arith_addi_60 = (for_iter_57 + arith_const_7); 
        for (int for_iter_61 = for_iter_57; for_iter_61 < arith_addi_60; for_iter_61 += arith_const_10) {
          memref_alloc_16[arith_const_11] = arith_const_14; 
          func_arg_5[for_iter_61] = arith_const_14; 
          for (int for_iter_62 = arith_const_11; for_iter_62 < arith_const_8; for_iter_62 += arith_const_10) {
            double memref_load_63 = func_arg_5[for_iter_61]; 
            double memref_load_64 = func_arg_3[for_iter_62][for_iter_61]; 
            double arith_addf_65 = (memref_load_63 + memref_load_64); 
            func_arg_5[for_iter_61] = arith_addf_65; 
          }
          for (int for_iter_66 = arith_const_11; for_iter_66 < arith_const_8; for_iter_66 += arith_const_10) {
            double memref_load_67 = func_arg_5[for_iter_61]; 
            double memref_load_68 = func_arg_3[for_iter_66][for_iter_61]; 
            double arith_addf_69 = (memref_load_67 + memref_load_68); 
            func_arg_5[for_iter_61] = arith_addf_69; 
          }
          for (int for_iter_70 = arith_const_11; for_iter_70 < arith_const_8; for_iter_70 += arith_const_10) {
            double memref_load_71 = func_arg_5[for_iter_61]; 
            double arith_divf_72 = (memref_load_71 / func_arg_2); 
            func_arg_5[for_iter_61] = arith_divf_72; 
            double memref_load_73 = memref_alloc_16[arith_const_11]; 
            double memref_load_74 = func_arg_3[for_iter_70][for_iter_61]; 
            double memref_load_75 = func_arg_5[for_iter_61]; 
            double arith_subf_76 = (memref_load_74 - memref_load_75); 
            double arith_mulf_77 = (arith_subf_76 * arith_subf_76); 
            double arith_addf_78 = (memref_load_73 + arith_mulf_77); 
            memref_alloc_16[arith_const_11] = arith_addf_78; 
            double memref_load_79 = func_arg_3[for_iter_70][for_iter_61]; 
            double memref_load_80 = func_arg_5[for_iter_61]; 
            double arith_subf_81 = (memref_load_79 - memref_load_80); 
            func_arg_3[for_iter_70][for_iter_61] = arith_subf_81; 
          }
          double memref_load_82 = memref_alloc_16[arith_const_11]; 
          double arith_divf_83 = (memref_load_82 / func_arg_2); 
          double math_sqrt_84 = sqrt(arith_divf_83); 
          int arith_cmpi_85 = (math_sqrt_84 <= arith_const_15); 
          double arith_select_86 = (arith_cmpi_85 ? arith_const_13 : math_sqrt_84); 
          memref_alloc_16[arith_const_11] = arith_select_86; 
          double memref_load_87 = func_arg_3[for_iter_59][for_iter_61]; 
          double memref_load_88 = memref_alloca_17[arith_const_11]; 
          double memref_load_89 = memref_alloc_16[arith_const_11]; 
          double arith_mulf_90 = (memref_load_88 * memref_load_89); 
          double arith_divf_91 = (memref_load_87 / arith_mulf_90); 
          func_arg_3[for_iter_59][for_iter_61] = arith_divf_91; 
        }
      }
    }
  }
  for (int for_iter_92 = arith_const_11; for_iter_92 < arith_const_12; for_iter_92 += arith_const_10) {
    int arith_muli_93 = (for_iter_92 * arith_const_9); 
    int arith_addi_94 = (arith_muli_93 + arith_const_12); 
    for (int for_iter_95 = arith_const_11; for_iter_95 < arith_addi_94; for_iter_95 += arith_const_10) {
      for (int for_iter_96 = arith_const_11; for_iter_96 < arith_const_8; for_iter_96 += arith_const_10) {
        int arith_addi_97 = (for_iter_92 + for_iter_95); 
        int arith_addi_98 = (arith_addi_97 + arith_const_10); 
        double memref_load_99 = func_arg_4[for_iter_92][arith_addi_98]; 
        double memref_load_100 = func_arg_3[for_iter_96][for_iter_92]; 
        int arith_addi_101 = (for_iter_92 + for_iter_95); 
        int arith_addi_102 = (arith_addi_101 + arith_const_10); 
        double memref_load_103 = func_arg_3[for_iter_96][arith_addi_102]; 
        double arith_mulf_104 = (memref_load_100 * memref_load_103); 
        double arith_addf_105 = (memref_load_99 + arith_mulf_104); 
        int arith_addi_106 = (for_iter_92 + for_iter_95); 
        int arith_addi_107 = (arith_addi_106 + arith_const_10); 
        func_arg_4[for_iter_92][arith_addi_107] = arith_addf_105; 
      }
    }
  }
  for (int for_iter_108 = arith_const_11; for_iter_108 < arith_const_12; for_iter_108 += arith_const_10) {
    int arith_muli_109 = (for_iter_108 * arith_const_9); 
    int arith_addi_110 = (arith_muli_109 + arith_const_12); 
    for (int for_iter_111 = arith_const_11; for_iter_111 < arith_addi_110; for_iter_111 += arith_const_10) {
      int arith_addi_112 = (for_iter_108 + for_iter_111); 
      int arith_addi_113 = (arith_addi_112 + arith_const_10); 
      double memref_load_114 = func_arg_4[for_iter_108][arith_addi_113]; 
      int arith_addi_115 = (for_iter_108 + for_iter_111); 
      int arith_addi_116 = (arith_addi_115 + arith_const_10); 
      func_arg_4[arith_addi_116][for_iter_108] = memref_load_114; 
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
