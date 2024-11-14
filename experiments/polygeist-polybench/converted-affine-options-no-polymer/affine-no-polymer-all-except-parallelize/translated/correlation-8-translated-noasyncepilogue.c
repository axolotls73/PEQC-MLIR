#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -32; 
  int arith_const_8 = -1; 
  int arith_const_9 = 27; 
  int arith_const_10 = 7; 
  int arith_const_11 = 128; 
  int arith_const_12 = 3; 
  int arith_const_13 = 2; 
  int arith_const_14 = 4; 
  int arith_const_15 = 8; 
  int arith_const_16 = 28; 
  int arith_const_17 = 32; 
  double arith_const_18 = 1.000000; 
  double arith_const_19 = 0.000000; 
  double arith_const_20 = 0.100000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 1; 
  for (int for_iter_23 = arith_const_21; for_iter_23 < arith_const_22; for_iter_23 += arith_const_22) {
    int arith_muli_24 = (for_iter_23 * arith_const_17); 
    for (int for_iter_25 = arith_const_21; for_iter_25 < arith_const_16; for_iter_25 += arith_const_22) {
      int arith_addi_26 = (arith_muli_24 + for_iter_25); 
      func_arg_5[arith_addi_26] = arith_const_19; 
      for (int for_iter_27 = arith_const_21; for_iter_27 < arith_const_15; for_iter_27 += arith_const_22) {
        int arith_muli_28 = (for_iter_27 * arith_const_14); 
        double memref_load_29 = func_arg_3[arith_muli_28][arith_addi_26]; 
        double memref_load_30 = func_arg_5[arith_addi_26]; 
        double arith_addf_31 = (memref_load_30 + memref_load_29); 
        func_arg_5[arith_addi_26] = arith_addf_31; 
        int arith_addi_32 = (arith_muli_28 + arith_const_22); 
        double memref_load_33 = func_arg_3[arith_addi_32][arith_addi_26]; 
        double memref_load_34 = func_arg_5[arith_addi_26]; 
        double arith_addf_35 = (memref_load_34 + memref_load_33); 
        func_arg_5[arith_addi_26] = arith_addf_35; 
        int arith_addi_36 = (arith_muli_28 + arith_const_13); 
        double memref_load_37 = func_arg_3[arith_addi_36][arith_addi_26]; 
        double memref_load_38 = func_arg_5[arith_addi_26]; 
        double arith_addf_39 = (memref_load_38 + memref_load_37); 
        func_arg_5[arith_addi_26] = arith_addf_39; 
        int arith_addi_40 = (arith_muli_28 + arith_const_12); 
        double memref_load_41 = func_arg_3[arith_addi_40][arith_addi_26]; 
        double memref_load_42 = func_arg_5[arith_addi_26]; 
        double arith_addf_43 = (memref_load_42 + memref_load_41); 
        func_arg_5[arith_addi_26] = arith_addf_43; 
      }
      double memref_load_44 = func_arg_5[arith_addi_26]; 
      double arith_divf_45 = (memref_load_44 / func_arg_2); 
      func_arg_5[arith_addi_26] = arith_divf_45; 
    }
  }
  for (int for_iter_46 = arith_const_21; for_iter_46 < arith_const_22; for_iter_46 += arith_const_22) {
    int arith_muli_47 = (for_iter_46 * arith_const_17); 
    for (int for_iter_48 = arith_const_21; for_iter_48 < arith_const_16; for_iter_48 += arith_const_22) {
      int arith_addi_49 = (arith_muli_47 + for_iter_48); 
      func_arg_6[arith_addi_49] = arith_const_19; 
      double memref_load_50 = func_arg_5[arith_addi_49]; 
      double memref_load_51 = func_arg_5[arith_addi_49]; 
      double memref_load_52 = func_arg_5[arith_addi_49]; 
      double memref_load_53 = func_arg_5[arith_addi_49]; 
      for (int for_iter_54 = arith_const_21; for_iter_54 < arith_const_15; for_iter_54 += arith_const_22) {
        int arith_muli_55 = (for_iter_54 * arith_const_14); 
        double memref_load_56 = func_arg_3[arith_muli_55][arith_addi_49]; 
        double arith_subf_57 = (memref_load_56 - memref_load_50); 
        double arith_mulf_58 = (arith_subf_57 * arith_subf_57); 
        double memref_load_59 = func_arg_6[arith_addi_49]; 
        double arith_addf_60 = (memref_load_59 + arith_mulf_58); 
        func_arg_6[arith_addi_49] = arith_addf_60; 
        int arith_addi_61 = (arith_muli_55 + arith_const_22); 
        double memref_load_62 = func_arg_3[arith_addi_61][arith_addi_49]; 
        double arith_subf_63 = (memref_load_62 - memref_load_51); 
        double arith_mulf_64 = (arith_subf_63 * arith_subf_63); 
        double memref_load_65 = func_arg_6[arith_addi_49]; 
        double arith_addf_66 = (memref_load_65 + arith_mulf_64); 
        func_arg_6[arith_addi_49] = arith_addf_66; 
        int arith_addi_67 = (arith_muli_55 + arith_const_13); 
        double memref_load_68 = func_arg_3[arith_addi_67][arith_addi_49]; 
        double arith_subf_69 = (memref_load_68 - memref_load_52); 
        double arith_mulf_70 = (arith_subf_69 * arith_subf_69); 
        double memref_load_71 = func_arg_6[arith_addi_49]; 
        double arith_addf_72 = (memref_load_71 + arith_mulf_70); 
        func_arg_6[arith_addi_49] = arith_addf_72; 
        int arith_addi_73 = (arith_muli_55 + arith_const_12); 
        double memref_load_74 = func_arg_3[arith_addi_73][arith_addi_49]; 
        double arith_subf_75 = (memref_load_74 - memref_load_53); 
        double arith_mulf_76 = (arith_subf_75 * arith_subf_75); 
        double memref_load_77 = func_arg_6[arith_addi_49]; 
        double arith_addf_78 = (memref_load_77 + arith_mulf_76); 
        func_arg_6[arith_addi_49] = arith_addf_78; 
      }
      double memref_load_79 = func_arg_6[arith_addi_49]; 
      double arith_divf_80 = (memref_load_79 / func_arg_2); 
      double math_sqrt_81 = sqrt(arith_divf_80); 
      int arith_cmpi_82 = (math_sqrt_81 <= arith_const_20); 
      double arith_select_83 = (arith_cmpi_82 ? arith_const_18 : math_sqrt_81); 
      func_arg_6[arith_addi_49] = arith_select_83; 
    }
  }
  double math_sqrt_84 = sqrt(func_arg_2); 
  for (int for_iter_85 = arith_const_21; for_iter_85 < arith_const_22; for_iter_85 += arith_const_22) {
    int arith_muli_86 = (for_iter_85 * arith_const_17); 
    for (int for_iter_87 = arith_const_21; for_iter_87 < arith_const_22; for_iter_87 += arith_const_22) {
      int arith_muli_88 = (for_iter_87 * arith_const_11); 
      for (int for_iter_89 = arith_const_21; for_iter_89 < arith_const_17; for_iter_89 += arith_const_22) {
        int arith_addi_90 = (arith_muli_86 + for_iter_89); 
        for (int for_iter_91 = arith_const_21; for_iter_91 < arith_const_10; for_iter_91 += arith_const_22) {
          int arith_muli_92 = (for_iter_91 * arith_const_14); 
          int arith_addi_93 = (arith_muli_88 + arith_muli_92); 
          double memref_load_94 = func_arg_5[arith_addi_93]; 
          double memref_load_95 = func_arg_3[arith_addi_90][arith_addi_93]; 
          double arith_subf_96 = (memref_load_95 - memref_load_94); 
          func_arg_3[arith_addi_90][arith_addi_93] = arith_subf_96; 
          double memref_load_97 = func_arg_6[arith_addi_93]; 
          double arith_mulf_98 = (math_sqrt_84 * memref_load_97); 
          double arith_divf_99 = (arith_subf_96 / arith_mulf_98); 
          func_arg_3[arith_addi_90][arith_addi_93] = arith_divf_99; 
          int arith_addi_100 = (arith_addi_93 + arith_const_22); 
          double memref_load_101 = func_arg_5[arith_addi_100]; 
          double memref_load_102 = func_arg_3[arith_addi_90][arith_addi_100]; 
          double arith_subf_103 = (memref_load_102 - memref_load_101); 
          func_arg_3[arith_addi_90][arith_addi_100] = arith_subf_103; 
          double memref_load_104 = func_arg_6[arith_addi_100]; 
          double arith_mulf_105 = (math_sqrt_84 * memref_load_104); 
          double arith_divf_106 = (arith_subf_103 / arith_mulf_105); 
          func_arg_3[arith_addi_90][arith_addi_100] = arith_divf_106; 
          int arith_addi_107 = (arith_addi_93 + arith_const_13); 
          double memref_load_108 = func_arg_5[arith_addi_107]; 
          double memref_load_109 = func_arg_3[arith_addi_90][arith_addi_107]; 
          double arith_subf_110 = (memref_load_109 - memref_load_108); 
          func_arg_3[arith_addi_90][arith_addi_107] = arith_subf_110; 
          double memref_load_111 = func_arg_6[arith_addi_107]; 
          double arith_mulf_112 = (math_sqrt_84 * memref_load_111); 
          double arith_divf_113 = (arith_subf_110 / arith_mulf_112); 
          func_arg_3[arith_addi_90][arith_addi_107] = arith_divf_113; 
          int arith_addi_114 = (arith_addi_93 + arith_const_12); 
          double memref_load_115 = func_arg_5[arith_addi_114]; 
          double memref_load_116 = func_arg_3[arith_addi_90][arith_addi_114]; 
          double arith_subf_117 = (memref_load_116 - memref_load_115); 
          func_arg_3[arith_addi_90][arith_addi_114] = arith_subf_117; 
          double memref_load_118 = func_arg_6[arith_addi_114]; 
          double arith_mulf_119 = (math_sqrt_84 * memref_load_118); 
          double arith_divf_120 = (arith_subf_117 / arith_mulf_119); 
          func_arg_3[arith_addi_90][arith_addi_114] = arith_divf_120; 
        }
      }
    }
  }
  for (int for_iter_121 = arith_const_21; for_iter_121 < arith_const_22; for_iter_121 += arith_const_22) {
    int arith_muli_122 = (for_iter_121 * arith_const_17); 
    for (int for_iter_123 = arith_const_21; for_iter_123 < arith_const_9; for_iter_123 += arith_const_22) {
      int arith_addi_124 = (arith_muli_122 + for_iter_123); 
      func_arg_4[arith_addi_124][arith_addi_124] = arith_const_18; 
      int arith_muli_125 = (for_iter_123 * arith_const_8); 
      int arith_muli_126 = (for_iter_121 * arith_const_7); 
      int arith_addi_127 = (arith_muli_125 + arith_muli_126); 
      int arith_addi_128 = (arith_addi_127 + arith_const_9); 
      for (int for_iter_129 = arith_const_21; for_iter_129 < arith_addi_128; for_iter_129 += arith_const_22) {
        int arith_addi_130 = (arith_addi_124 + for_iter_129); 
        int arith_addi_131 = (arith_addi_130 + arith_const_22); 
        func_arg_4[arith_addi_124][arith_addi_131] = arith_const_19; 
        for (int for_iter_132 = arith_const_21; for_iter_132 < arith_const_15; for_iter_132 += arith_const_22) {
          int arith_muli_133 = (for_iter_132 * arith_const_14); 
          double memref_load_134 = func_arg_3[arith_muli_133][arith_addi_124]; 
          double memref_load_135 = func_arg_3[arith_muli_133][arith_addi_131]; 
          double arith_mulf_136 = (memref_load_134 * memref_load_135); 
          double memref_load_137 = func_arg_4[arith_addi_124][arith_addi_131]; 
          double arith_addf_138 = (memref_load_137 + arith_mulf_136); 
          func_arg_4[arith_addi_124][arith_addi_131] = arith_addf_138; 
          int arith_addi_139 = (arith_muli_133 + arith_const_22); 
          double memref_load_140 = func_arg_3[arith_addi_139][arith_addi_124]; 
          double memref_load_141 = func_arg_3[arith_addi_139][arith_addi_131]; 
          double arith_mulf_142 = (memref_load_140 * memref_load_141); 
          double memref_load_143 = func_arg_4[arith_addi_124][arith_addi_131]; 
          double arith_addf_144 = (memref_load_143 + arith_mulf_142); 
          func_arg_4[arith_addi_124][arith_addi_131] = arith_addf_144; 
          int arith_addi_145 = (arith_muli_133 + arith_const_13); 
          double memref_load_146 = func_arg_3[arith_addi_145][arith_addi_124]; 
          double memref_load_147 = func_arg_3[arith_addi_145][arith_addi_131]; 
          double arith_mulf_148 = (memref_load_146 * memref_load_147); 
          double memref_load_149 = func_arg_4[arith_addi_124][arith_addi_131]; 
          double arith_addf_150 = (memref_load_149 + arith_mulf_148); 
          func_arg_4[arith_addi_124][arith_addi_131] = arith_addf_150; 
          int arith_addi_151 = (arith_muli_133 + arith_const_12); 
          double memref_load_152 = func_arg_3[arith_addi_151][arith_addi_124]; 
          double memref_load_153 = func_arg_3[arith_addi_151][arith_addi_131]; 
          double arith_mulf_154 = (memref_load_152 * memref_load_153); 
          double memref_load_155 = func_arg_4[arith_addi_124][arith_addi_131]; 
          double arith_addf_156 = (memref_load_155 + arith_mulf_154); 
          func_arg_4[arith_addi_124][arith_addi_131] = arith_addf_156; 
        }
        double memref_load_157 = func_arg_4[arith_addi_124][arith_addi_131]; 
        func_arg_4[arith_addi_131][arith_addi_124] = memref_load_157; 
      }
    }
  }
  func_arg_4[arith_const_9][arith_const_9] = arith_const_18; 
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
