#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 27; 
  int arith_const_9 = 7; 
  int arith_const_10 = 32; 
  int arith_const_11 = 3; 
  int arith_const_12 = 2; 
  int arith_const_13 = 4; 
  int arith_const_14 = 8; 
  double arith_const_15 = 1.000000; 
  double arith_const_16 = 0.000000; 
  double arith_const_17 = 0.100000; 
  int arith_const_18 = 0; 
  int arith_const_19 = 28; 
  int arith_const_20 = 1; 
  for (int for_iter_21 = arith_const_18; for_iter_21 < arith_const_19; for_iter_21 += arith_const_20) {
    for (int for_iter_22 = arith_const_18; for_iter_22 < arith_const_20; for_iter_22 += arith_const_20) {
      int arith_addi_23 = (for_iter_21 + for_iter_22); 
      func_arg_5[arith_addi_23] = arith_const_16; 
      for (int for_iter_24 = arith_const_18; for_iter_24 < arith_const_14; for_iter_24 += arith_const_20) {
        int arith_muli_25 = (for_iter_24 * arith_const_13); 
        double memref_load_26 = func_arg_3[arith_muli_25][arith_addi_23]; 
        double memref_load_27 = func_arg_5[arith_addi_23]; 
        double arith_addf_28 = (memref_load_27 + memref_load_26); 
        func_arg_5[arith_addi_23] = arith_addf_28; 
        int arith_addi_29 = (arith_muli_25 + arith_const_20); 
        double memref_load_30 = func_arg_3[arith_addi_29][arith_addi_23]; 
        double memref_load_31 = func_arg_5[arith_addi_23]; 
        double arith_addf_32 = (memref_load_31 + memref_load_30); 
        func_arg_5[arith_addi_23] = arith_addf_32; 
        int arith_addi_33 = (arith_muli_25 + arith_const_12); 
        double memref_load_34 = func_arg_3[arith_addi_33][arith_addi_23]; 
        double memref_load_35 = func_arg_5[arith_addi_23]; 
        double arith_addf_36 = (memref_load_35 + memref_load_34); 
        func_arg_5[arith_addi_23] = arith_addf_36; 
        int arith_addi_37 = (arith_muli_25 + arith_const_11); 
        double memref_load_38 = func_arg_3[arith_addi_37][arith_addi_23]; 
        double memref_load_39 = func_arg_5[arith_addi_23]; 
        double arith_addf_40 = (memref_load_39 + memref_load_38); 
        func_arg_5[arith_addi_23] = arith_addf_40; 
      }
      double memref_load_41 = func_arg_5[arith_addi_23]; 
      double arith_divf_42 = (memref_load_41 / func_arg_2); 
      func_arg_5[arith_addi_23] = arith_divf_42; 
    }
  }
  for (int for_iter_43 = arith_const_18; for_iter_43 < arith_const_19; for_iter_43 += arith_const_20) {
    for (int for_iter_44 = arith_const_18; for_iter_44 < arith_const_20; for_iter_44 += arith_const_20) {
      int arith_addi_45 = (for_iter_43 + for_iter_44); 
      func_arg_6[arith_addi_45] = arith_const_16; 
      double memref_load_46 = func_arg_5[arith_addi_45]; 
      double memref_load_47 = func_arg_5[arith_addi_45]; 
      double memref_load_48 = func_arg_5[arith_addi_45]; 
      double memref_load_49 = func_arg_5[arith_addi_45]; 
      for (int for_iter_50 = arith_const_18; for_iter_50 < arith_const_14; for_iter_50 += arith_const_20) {
        int arith_muli_51 = (for_iter_50 * arith_const_13); 
        double memref_load_52 = func_arg_3[arith_muli_51][arith_addi_45]; 
        double arith_subf_53 = (memref_load_52 - memref_load_46); 
        double arith_mulf_54 = (arith_subf_53 * arith_subf_53); 
        double memref_load_55 = func_arg_6[arith_addi_45]; 
        double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
        func_arg_6[arith_addi_45] = arith_addf_56; 
        int arith_addi_57 = (arith_muli_51 + arith_const_20); 
        double memref_load_58 = func_arg_3[arith_addi_57][arith_addi_45]; 
        double arith_subf_59 = (memref_load_58 - memref_load_47); 
        double arith_mulf_60 = (arith_subf_59 * arith_subf_59); 
        double memref_load_61 = func_arg_6[arith_addi_45]; 
        double arith_addf_62 = (memref_load_61 + arith_mulf_60); 
        func_arg_6[arith_addi_45] = arith_addf_62; 
        int arith_addi_63 = (arith_muli_51 + arith_const_12); 
        double memref_load_64 = func_arg_3[arith_addi_63][arith_addi_45]; 
        double arith_subf_65 = (memref_load_64 - memref_load_48); 
        double arith_mulf_66 = (arith_subf_65 * arith_subf_65); 
        double memref_load_67 = func_arg_6[arith_addi_45]; 
        double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
        func_arg_6[arith_addi_45] = arith_addf_68; 
        int arith_addi_69 = (arith_muli_51 + arith_const_11); 
        double memref_load_70 = func_arg_3[arith_addi_69][arith_addi_45]; 
        double arith_subf_71 = (memref_load_70 - memref_load_49); 
        double arith_mulf_72 = (arith_subf_71 * arith_subf_71); 
        double memref_load_73 = func_arg_6[arith_addi_45]; 
        double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
        func_arg_6[arith_addi_45] = arith_addf_74; 
      }
      double memref_load_75 = func_arg_6[arith_addi_45]; 
      double arith_divf_76 = (memref_load_75 / func_arg_2); 
      double math_sqrt_77 = sqrt(arith_divf_76); 
      int arith_cmpi_78 = (math_sqrt_77 <= arith_const_17); 
      double arith_select_79 = (arith_cmpi_78 ? arith_const_15 : math_sqrt_77); 
      func_arg_6[arith_addi_45] = arith_select_79; 
    }
  }
  double math_sqrt_80 = sqrt(func_arg_2); 
  for (int for_iter_81 = arith_const_18; for_iter_81 < arith_const_10; for_iter_81 += arith_const_20) {
    for (int for_iter_82 = arith_const_18; for_iter_82 < arith_const_20; for_iter_82 += arith_const_20) {
      int arith_addi_83 = (for_iter_81 + for_iter_82); 
      for (int for_iter_84 = arith_const_18; for_iter_84 < arith_const_9; for_iter_84 += arith_const_20) {
        int arith_muli_85 = (for_iter_84 * arith_const_13); 
        for (int for_iter_86 = arith_const_18; for_iter_86 < arith_const_20; for_iter_86 += arith_const_20) {
          int arith_muli_87 = (for_iter_86 * arith_const_13); 
          int arith_addi_88 = (arith_muli_85 + arith_muli_87); 
          double memref_load_89 = func_arg_5[arith_addi_88]; 
          double memref_load_90 = func_arg_3[arith_addi_83][arith_addi_88]; 
          double arith_subf_91 = (memref_load_90 - memref_load_89); 
          func_arg_3[arith_addi_83][arith_addi_88] = arith_subf_91; 
          double memref_load_92 = func_arg_6[arith_addi_88]; 
          double arith_mulf_93 = (math_sqrt_80 * memref_load_92); 
          double arith_divf_94 = (arith_subf_91 / arith_mulf_93); 
          func_arg_3[arith_addi_83][arith_addi_88] = arith_divf_94; 
          int arith_addi_95 = (arith_addi_88 + arith_const_20); 
          double memref_load_96 = func_arg_5[arith_addi_95]; 
          double memref_load_97 = func_arg_3[arith_addi_83][arith_addi_95]; 
          double arith_subf_98 = (memref_load_97 - memref_load_96); 
          func_arg_3[arith_addi_83][arith_addi_95] = arith_subf_98; 
          double memref_load_99 = func_arg_6[arith_addi_95]; 
          double arith_mulf_100 = (math_sqrt_80 * memref_load_99); 
          double arith_divf_101 = (arith_subf_98 / arith_mulf_100); 
          func_arg_3[arith_addi_83][arith_addi_95] = arith_divf_101; 
          int arith_addi_102 = (arith_addi_88 + arith_const_12); 
          double memref_load_103 = func_arg_5[arith_addi_102]; 
          double memref_load_104 = func_arg_3[arith_addi_83][arith_addi_102]; 
          double arith_subf_105 = (memref_load_104 - memref_load_103); 
          func_arg_3[arith_addi_83][arith_addi_102] = arith_subf_105; 
          double memref_load_106 = func_arg_6[arith_addi_102]; 
          double arith_mulf_107 = (math_sqrt_80 * memref_load_106); 
          double arith_divf_108 = (arith_subf_105 / arith_mulf_107); 
          func_arg_3[arith_addi_83][arith_addi_102] = arith_divf_108; 
          int arith_addi_109 = (arith_addi_88 + arith_const_11); 
          double memref_load_110 = func_arg_5[arith_addi_109]; 
          double memref_load_111 = func_arg_3[arith_addi_83][arith_addi_109]; 
          double arith_subf_112 = (memref_load_111 - memref_load_110); 
          func_arg_3[arith_addi_83][arith_addi_109] = arith_subf_112; 
          double memref_load_113 = func_arg_6[arith_addi_109]; 
          double arith_mulf_114 = (math_sqrt_80 * memref_load_113); 
          double arith_divf_115 = (arith_subf_112 / arith_mulf_114); 
          func_arg_3[arith_addi_83][arith_addi_109] = arith_divf_115; 
        }
      }
    }
  }
  for (int for_iter_116 = arith_const_18; for_iter_116 < arith_const_8; for_iter_116 += arith_const_20) {
    for (int for_iter_117 = arith_const_18; for_iter_117 < arith_const_20; for_iter_117 += arith_const_20) {
      int arith_addi_118 = (for_iter_116 + for_iter_117); 
      func_arg_4[arith_addi_118][arith_addi_118] = arith_const_15; 
      int arith_muli_119 = (for_iter_116 * arith_const_7); 
      int arith_muli_120 = (for_iter_117 * arith_const_7); 
      int arith_addi_121 = (arith_muli_119 + arith_muli_120); 
      int arith_addi_122 = (arith_addi_121 + arith_const_8); 
      for (int for_iter_123 = arith_const_18; for_iter_123 < arith_addi_122; for_iter_123 += arith_const_20) {
        int arith_addi_124 = (arith_addi_118 + for_iter_123); 
        int arith_addi_125 = (arith_addi_124 + arith_const_20); 
        func_arg_4[arith_addi_118][arith_addi_125] = arith_const_16; 
        for (int for_iter_126 = arith_const_18; for_iter_126 < arith_const_14; for_iter_126 += arith_const_20) {
          int arith_muli_127 = (for_iter_126 * arith_const_13); 
          double memref_load_128 = func_arg_3[arith_muli_127][arith_addi_118]; 
          double memref_load_129 = func_arg_3[arith_muli_127][arith_addi_125]; 
          double arith_mulf_130 = (memref_load_128 * memref_load_129); 
          double memref_load_131 = func_arg_4[arith_addi_118][arith_addi_125]; 
          double arith_addf_132 = (memref_load_131 + arith_mulf_130); 
          func_arg_4[arith_addi_118][arith_addi_125] = arith_addf_132; 
          int arith_addi_133 = (arith_muli_127 + arith_const_20); 
          double memref_load_134 = func_arg_3[arith_addi_133][arith_addi_118]; 
          double memref_load_135 = func_arg_3[arith_addi_133][arith_addi_125]; 
          double arith_mulf_136 = (memref_load_134 * memref_load_135); 
          double memref_load_137 = func_arg_4[arith_addi_118][arith_addi_125]; 
          double arith_addf_138 = (memref_load_137 + arith_mulf_136); 
          func_arg_4[arith_addi_118][arith_addi_125] = arith_addf_138; 
          int arith_addi_139 = (arith_muli_127 + arith_const_12); 
          double memref_load_140 = func_arg_3[arith_addi_139][arith_addi_118]; 
          double memref_load_141 = func_arg_3[arith_addi_139][arith_addi_125]; 
          double arith_mulf_142 = (memref_load_140 * memref_load_141); 
          double memref_load_143 = func_arg_4[arith_addi_118][arith_addi_125]; 
          double arith_addf_144 = (memref_load_143 + arith_mulf_142); 
          func_arg_4[arith_addi_118][arith_addi_125] = arith_addf_144; 
          int arith_addi_145 = (arith_muli_127 + arith_const_11); 
          double memref_load_146 = func_arg_3[arith_addi_145][arith_addi_118]; 
          double memref_load_147 = func_arg_3[arith_addi_145][arith_addi_125]; 
          double arith_mulf_148 = (memref_load_146 * memref_load_147); 
          double memref_load_149 = func_arg_4[arith_addi_118][arith_addi_125]; 
          double arith_addf_150 = (memref_load_149 + arith_mulf_148); 
          func_arg_4[arith_addi_118][arith_addi_125] = arith_addf_150; 
        }
        double memref_load_151 = func_arg_4[arith_addi_118][arith_addi_125]; 
        func_arg_4[arith_addi_125][arith_addi_118] = memref_load_151; 
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
