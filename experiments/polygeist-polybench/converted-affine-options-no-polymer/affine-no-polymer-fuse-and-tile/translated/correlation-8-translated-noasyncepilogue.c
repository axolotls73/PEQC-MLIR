#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 27; 
  int arith_const_9 = 1; 
  int arith_const_10 = 32; 
  int arith_const_11 = 28; 
  int arith_const_12 = 0; 
  double arith_const_13 = 0.100000; 
  double arith_const_14 = 0.000000; 
  double arith_const_15 = 1.000000; 
  double* memref_alloc_16; 
  double* memref_alloc_17; 
  for (int for_iter_18 = arith_const_12; for_iter_18 < arith_const_11; for_iter_18 += arith_const_10) {
    int arith_addi_19 = (for_iter_18 + arith_const_11); 
    for (int for_iter_20 = for_iter_18; for_iter_20 < arith_addi_19; for_iter_20 += arith_const_9) {
      func_arg_6[for_iter_20] = arith_const_14; 
      for (int for_iter_21 = arith_const_12; for_iter_21 < arith_const_10; for_iter_21 += arith_const_9) {
        func_arg_5[for_iter_20] = arith_const_14; 
        for (int for_iter_22 = arith_const_12; for_iter_22 < arith_const_10; for_iter_22 += arith_const_9) {
          double memref_load_23 = func_arg_3[for_iter_22][for_iter_20]; 
          double memref_load_24 = func_arg_5[for_iter_20]; 
          double arith_addf_25 = (memref_load_24 + memref_load_23); 
          func_arg_5[for_iter_20] = arith_addf_25; 
        }
        double memref_load_26 = func_arg_5[for_iter_20]; 
        double arith_divf_27 = (memref_load_26 / func_arg_2); 
        func_arg_5[for_iter_20] = arith_divf_27; 
        double memref_load_28 = func_arg_3[for_iter_21][for_iter_20]; 
        double memref_load_29 = func_arg_5[for_iter_20]; 
        double arith_subf_30 = (memref_load_28 - memref_load_29); 
        double arith_mulf_31 = (arith_subf_30 * arith_subf_30); 
        double memref_load_32 = func_arg_6[for_iter_20]; 
        double arith_addf_33 = (memref_load_32 + arith_mulf_31); 
        func_arg_6[for_iter_20] = arith_addf_33; 
      }
      double memref_load_34 = func_arg_6[for_iter_20]; 
      double arith_divf_35 = (memref_load_34 / func_arg_2); 
      double math_sqrt_36 = sqrt(arith_divf_35); 
      int arith_cmpi_37 = (math_sqrt_36 <= arith_const_13); 
      double arith_select_38 = (arith_cmpi_37 ? arith_const_15 : math_sqrt_36); 
      func_arg_6[for_iter_20] = arith_select_38; 
    }
  }
  double math_sqrt_39 = sqrt(func_arg_2); 
  for (int for_iter_40 = arith_const_12; for_iter_40 < arith_const_10; for_iter_40 += arith_const_10) {
    for (int for_iter_41 = arith_const_12; for_iter_41 < arith_const_11; for_iter_41 += arith_const_10) {
      int arith_addi_42 = (for_iter_40 + arith_const_10); 
      for (int for_iter_43 = for_iter_40; for_iter_43 < arith_addi_42; for_iter_43 += arith_const_9) {
        int arith_addi_44 = (for_iter_41 + arith_const_11); 
        for (int for_iter_45 = for_iter_41; for_iter_45 < arith_addi_44; for_iter_45 += arith_const_9) {
          memref_alloc_17[arith_const_12] = arith_const_14; 
          for (int for_iter_46 = arith_const_12; for_iter_46 < arith_const_10; for_iter_46 += arith_const_9) {
            double memref_load_47 = func_arg_3[for_iter_46][for_iter_45]; 
            double memref_load_48 = func_arg_5[for_iter_45]; 
            double arith_subf_49 = (memref_load_47 - memref_load_48); 
            double arith_mulf_50 = (arith_subf_49 * arith_subf_49); 
            double memref_load_51 = memref_alloc_17[arith_const_12]; 
            double arith_addf_52 = (memref_load_51 + arith_mulf_50); 
            memref_alloc_17[arith_const_12] = arith_addf_52; 
          }
          double memref_load_53 = memref_alloc_17[arith_const_12]; 
          double arith_divf_54 = (memref_load_53 / func_arg_2); 
          double math_sqrt_55 = sqrt(arith_divf_54); 
          int arith_cmpi_56 = (math_sqrt_55 <= arith_const_13); 
          double arith_select_57 = (arith_cmpi_56 ? arith_const_15 : math_sqrt_55); 
          memref_alloc_17[arith_const_12] = arith_select_57; 
          double memref_load_58 = func_arg_5[for_iter_45]; 
          double memref_load_59 = func_arg_3[for_iter_43][for_iter_45]; 
          double arith_subf_60 = (memref_load_59 - memref_load_58); 
          func_arg_3[for_iter_43][for_iter_45] = arith_subf_60; 
          double memref_load_61 = memref_alloc_17[arith_const_12]; 
          double arith_mulf_62 = (math_sqrt_39 * memref_load_61); 
          double arith_divf_63 = (arith_subf_60 / arith_mulf_62); 
          func_arg_3[for_iter_43][for_iter_45] = arith_divf_63; 
        }
      }
    }
  }
  for (int for_iter_64 = arith_const_12; for_iter_64 < arith_const_8; for_iter_64 += arith_const_10) {
    int arith_addi_65 = (for_iter_64 + arith_const_8); 
    for (int for_iter_66 = for_iter_64; for_iter_66 < arith_addi_65; for_iter_66 += arith_const_9) {
      func_arg_4[for_iter_66][for_iter_66] = arith_const_15; 
      int arith_muli_67 = (for_iter_66 * arith_const_7); 
      int arith_addi_68 = (arith_muli_67 + arith_const_8); 
      for (int for_iter_69 = arith_const_12; for_iter_69 < arith_addi_68; for_iter_69 += arith_const_9) {
        int arith_addi_70 = (for_iter_66 + for_iter_69); 
        int arith_addi_71 = (arith_addi_70 + arith_const_9); 
        func_arg_4[for_iter_66][arith_addi_71] = arith_const_14; 
        for (int for_iter_72 = arith_const_12; for_iter_72 < arith_const_10; for_iter_72 += arith_const_9) {
          for (int for_iter_73 = arith_const_12; for_iter_73 < arith_const_11; for_iter_73 += arith_const_9) {
            memref_alloc_17[arith_const_12] = arith_const_14; 
            for (int for_iter_74 = arith_const_12; for_iter_74 < arith_const_10; for_iter_74 += arith_const_9) {
              int arith_muli_75 = (for_iter_72 * arith_const_7); 
              int arith_addi_76 = (arith_muli_75 + for_iter_74); 
              double memref_load_77 = memref_alloc_16[arith_addi_76][for_iter_73]; 
              double memref_load_78 = func_arg_5[for_iter_73]; 
              double arith_subf_79 = (memref_load_77 - memref_load_78); 
              double arith_mulf_80 = (arith_subf_79 * arith_subf_79); 
              double memref_load_81 = memref_alloc_17[arith_const_12]; 
              double arith_addf_82 = (memref_load_81 + arith_mulf_80); 
              memref_alloc_17[arith_const_12] = arith_addf_82; 
            }
            double memref_load_83 = memref_alloc_17[arith_const_12]; 
            double arith_divf_84 = (memref_load_83 / func_arg_2); 
            double math_sqrt_85 = sqrt(arith_divf_84); 
            int arith_cmpi_86 = (math_sqrt_85 <= arith_const_13); 
            double arith_select_87 = (arith_cmpi_86 ? arith_const_15 : math_sqrt_85); 
            memref_alloc_17[arith_const_12] = arith_select_87; 
            double memref_load_88 = func_arg_5[for_iter_73]; 
            double memref_load_89 = memref_alloc_16[arith_const_12][for_iter_73]; 
            double arith_subf_90 = (memref_load_89 - memref_load_88); 
            memref_alloc_16[arith_const_12][for_iter_73] = arith_subf_90; 
            double memref_load_91 = memref_alloc_17[arith_const_12]; 
            double arith_mulf_92 = (math_sqrt_39 * memref_load_91); 
            double arith_divf_93 = (arith_subf_90 / arith_mulf_92); 
            memref_alloc_16[arith_const_12][for_iter_73] = arith_divf_93; 
          }
          double memref_load_94 = memref_alloc_16[arith_const_12][for_iter_66]; 
          int arith_addi_95 = (for_iter_66 + for_iter_69); 
          int arith_addi_96 = (arith_addi_95 + arith_const_9); 
          double memref_load_97 = memref_alloc_16[arith_const_12][arith_addi_96]; 
          double arith_mulf_98 = (memref_load_94 * memref_load_97); 
          int arith_addi_99 = (for_iter_66 + for_iter_69); 
          int arith_addi_100 = (arith_addi_99 + arith_const_9); 
          double memref_load_101 = func_arg_4[for_iter_66][arith_addi_100]; 
          double arith_addf_102 = (memref_load_101 + arith_mulf_98); 
          int arith_addi_103 = (for_iter_66 + for_iter_69); 
          int arith_addi_104 = (arith_addi_103 + arith_const_9); 
          func_arg_4[for_iter_66][arith_addi_104] = arith_addf_102; 
        }
        int arith_addi_105 = (for_iter_66 + for_iter_69); 
        int arith_addi_106 = (arith_addi_105 + arith_const_9); 
        double memref_load_107 = func_arg_4[for_iter_66][arith_addi_106]; 
        int arith_addi_108 = (for_iter_66 + for_iter_69); 
        int arith_addi_109 = (arith_addi_108 + arith_const_9); 
        func_arg_4[arith_addi_109][for_iter_66] = memref_load_107; 
      }
    }
  }
  func_arg_4[arith_const_8][arith_const_8] = arith_const_15; 
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
