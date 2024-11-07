#pragma pocc-region-start
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 3; 
  int arith_const_13 = 4; 
  int arith_const_14 = 40; 
  int arith_const_15 = 32; 
  int arith_const_16 = 0; 
  int arith_const_17 = 2; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_17; for_iter_20 += arith_const_18) {
      int arith_muli_21 = (for_iter_20 * arith_const_15); 
      int arith_muli_22 = (for_iter_20 * arith_const_15); 
      int arith_addi_23 = (arith_muli_22 + arith_const_15); 
      int arith_minsi_24 = min(arith_addi_23, arith_const_14); 
      for (int for_iter_25 = arith_muli_21; for_iter_25 < arith_minsi_24; for_iter_25 += arith_const_18) {
        int arith_muli_26 = (for_iter_19 * arith_const_15); 
        int arith_muli_27 = (for_iter_19 * arith_const_15); 
        int arith_addi_28 = (arith_muli_27 + arith_const_15); 
        int arith_minsi_29 = min(arith_addi_28, arith_const_14); 
        for (int for_iter_30 = arith_muli_26; for_iter_30 < arith_minsi_29; for_iter_30 += arith_const_13) {
          double memref_load_31 = func_arg_3[for_iter_25][for_iter_30]; 
          double memref_load_32 = func_arg_4[for_iter_25]; 
          double memref_load_33 = func_arg_5[for_iter_30]; 
          double arith_mulf_34 = (memref_load_32 * memref_load_33); 
          double arith_addf_35 = (memref_load_31 + arith_mulf_34); 
          double memref_load_36 = func_arg_6[for_iter_25]; 
          double memref_load_37 = func_arg_7[for_iter_30]; 
          double arith_mulf_38 = (memref_load_36 * memref_load_37); 
          double arith_addf_39 = (arith_addf_35 + arith_mulf_38); 
          func_arg_3[for_iter_25][for_iter_30] = arith_addf_39; 
          double memref_load_40 = func_arg_9[for_iter_30]; 
          double memref_load_41 = func_arg_3[for_iter_25][for_iter_30]; 
          double arith_mulf_42 = (func_arg_2 * memref_load_41); 
          double memref_load_43 = func_arg_10[for_iter_25]; 
          double arith_mulf_44 = (arith_mulf_42 * memref_load_43); 
          double arith_addf_45 = (memref_load_40 + arith_mulf_44); 
          func_arg_9[for_iter_30] = arith_addf_45; 
          int arith_addi_46 = (for_iter_30 + arith_const_18); 
          double memref_load_47 = func_arg_3[for_iter_25][arith_addi_46]; 
          double memref_load_48 = func_arg_4[for_iter_25]; 
          double memref_load_49 = func_arg_5[arith_addi_46]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
          double memref_load_52 = func_arg_6[for_iter_25]; 
          double memref_load_53 = func_arg_7[arith_addi_46]; 
          double arith_mulf_54 = (memref_load_52 * memref_load_53); 
          double arith_addf_55 = (arith_addf_51 + arith_mulf_54); 
          func_arg_3[for_iter_25][arith_addi_46] = arith_addf_55; 
          double memref_load_56 = func_arg_9[arith_addi_46]; 
          double memref_load_57 = func_arg_3[for_iter_25][arith_addi_46]; 
          double arith_mulf_58 = (func_arg_2 * memref_load_57); 
          double memref_load_59 = func_arg_10[for_iter_25]; 
          double arith_mulf_60 = (arith_mulf_58 * memref_load_59); 
          double arith_addf_61 = (memref_load_56 + arith_mulf_60); 
          func_arg_9[arith_addi_46] = arith_addf_61; 
          int arith_addi_62 = (for_iter_30 + arith_const_17); 
          double memref_load_63 = func_arg_3[for_iter_25][arith_addi_62]; 
          double memref_load_64 = func_arg_4[for_iter_25]; 
          double memref_load_65 = func_arg_5[arith_addi_62]; 
          double arith_mulf_66 = (memref_load_64 * memref_load_65); 
          double arith_addf_67 = (memref_load_63 + arith_mulf_66); 
          double memref_load_68 = func_arg_6[for_iter_25]; 
          double memref_load_69 = func_arg_7[arith_addi_62]; 
          double arith_mulf_70 = (memref_load_68 * memref_load_69); 
          double arith_addf_71 = (arith_addf_67 + arith_mulf_70); 
          func_arg_3[for_iter_25][arith_addi_62] = arith_addf_71; 
          double memref_load_72 = func_arg_9[arith_addi_62]; 
          double memref_load_73 = func_arg_3[for_iter_25][arith_addi_62]; 
          double arith_mulf_74 = (func_arg_2 * memref_load_73); 
          double memref_load_75 = func_arg_10[for_iter_25]; 
          double arith_mulf_76 = (arith_mulf_74 * memref_load_75); 
          double arith_addf_77 = (memref_load_72 + arith_mulf_76); 
          func_arg_9[arith_addi_62] = arith_addf_77; 
          int arith_addi_78 = (for_iter_30 + arith_const_12); 
          double memref_load_79 = func_arg_3[for_iter_25][arith_addi_78]; 
          double memref_load_80 = func_arg_4[for_iter_25]; 
          double memref_load_81 = func_arg_5[arith_addi_78]; 
          double arith_mulf_82 = (memref_load_80 * memref_load_81); 
          double arith_addf_83 = (memref_load_79 + arith_mulf_82); 
          double memref_load_84 = func_arg_6[for_iter_25]; 
          double memref_load_85 = func_arg_7[arith_addi_78]; 
          double arith_mulf_86 = (memref_load_84 * memref_load_85); 
          double arith_addf_87 = (arith_addf_83 + arith_mulf_86); 
          func_arg_3[for_iter_25][arith_addi_78] = arith_addf_87; 
          double memref_load_88 = func_arg_9[arith_addi_78]; 
          double memref_load_89 = func_arg_3[for_iter_25][arith_addi_78]; 
          double arith_mulf_90 = (func_arg_2 * memref_load_89); 
          double memref_load_91 = func_arg_10[for_iter_25]; 
          double arith_mulf_92 = (arith_mulf_90 * memref_load_91); 
          double arith_addf_93 = (memref_load_88 + arith_mulf_92); 
          func_arg_9[arith_addi_78] = arith_addf_93; 
        }
      }
    }
  }
  for (int for_iter_94 = arith_const_16; for_iter_94 < arith_const_17; for_iter_94 += arith_const_18) {
    int arith_muli_95 = (for_iter_94 * arith_const_15); 
    int arith_muli_96 = (for_iter_94 * arith_const_15); 
    int arith_addi_97 = (arith_muli_96 + arith_const_15); 
    int arith_minsi_98 = min(arith_addi_97, arith_const_14); 
    for (int for_iter_99 = arith_muli_95; for_iter_99 < arith_minsi_98; for_iter_99 += arith_const_13) {
      double memref_load_100 = func_arg_9[for_iter_99]; 
      double memref_load_101 = func_arg_11[for_iter_99]; 
      double arith_addf_102 = (memref_load_100 + memref_load_101); 
      func_arg_9[for_iter_99] = arith_addf_102; 
      int arith_addi_103 = (for_iter_99 + arith_const_18); 
      double memref_load_104 = func_arg_9[arith_addi_103]; 
      double memref_load_105 = func_arg_11[arith_addi_103]; 
      double arith_addf_106 = (memref_load_104 + memref_load_105); 
      func_arg_9[arith_addi_103] = arith_addf_106; 
      int arith_addi_107 = (for_iter_99 + arith_const_17); 
      double memref_load_108 = func_arg_9[arith_addi_107]; 
      double memref_load_109 = func_arg_11[arith_addi_107]; 
      double arith_addf_110 = (memref_load_108 + memref_load_109); 
      func_arg_9[arith_addi_107] = arith_addf_110; 
      int arith_addi_111 = (for_iter_99 + arith_const_12); 
      double memref_load_112 = func_arg_9[arith_addi_111]; 
      double memref_load_113 = func_arg_11[arith_addi_111]; 
      double arith_addf_114 = (memref_load_112 + memref_load_113); 
      func_arg_9[arith_addi_111] = arith_addf_114; 
    }
  }
  for (int for_iter_115 = arith_const_16; for_iter_115 < arith_const_17; for_iter_115 += arith_const_18) {
    for (int for_iter_116 = arith_const_16; for_iter_116 < arith_const_17; for_iter_116 += arith_const_18) {
      int arith_muli_117 = (for_iter_115 * arith_const_15); 
      int arith_muli_118 = (for_iter_115 * arith_const_15); 
      int arith_addi_119 = (arith_muli_118 + arith_const_15); 
      int arith_minsi_120 = min(arith_addi_119, arith_const_14); 
      for (int for_iter_121 = arith_muli_117; for_iter_121 < arith_minsi_120; for_iter_121 += arith_const_18) {
        int arith_muli_122 = (for_iter_116 * arith_const_15); 
        int arith_muli_123 = (for_iter_116 * arith_const_15); 
        int arith_addi_124 = (arith_muli_123 + arith_const_15); 
        int arith_minsi_125 = min(arith_addi_124, arith_const_14); 
        for (int for_iter_126 = arith_muli_122; for_iter_126 < arith_minsi_125; for_iter_126 += arith_const_13) {
          double memref_load_127 = func_arg_8[for_iter_121]; 
          double memref_load_128 = func_arg_3[for_iter_121][for_iter_126]; 
          double arith_mulf_129 = (func_arg_1 * memref_load_128); 
          double memref_load_130 = func_arg_9[for_iter_126]; 
          double arith_mulf_131 = (arith_mulf_129 * memref_load_130); 
          double arith_addf_132 = (memref_load_127 + arith_mulf_131); 
          func_arg_8[for_iter_121] = arith_addf_132; 
          int arith_addi_133 = (for_iter_126 + arith_const_18); 
          double memref_load_134 = func_arg_8[for_iter_121]; 
          double memref_load_135 = func_arg_3[for_iter_121][arith_addi_133]; 
          double arith_mulf_136 = (func_arg_1 * memref_load_135); 
          double memref_load_137 = func_arg_9[arith_addi_133]; 
          double arith_mulf_138 = (arith_mulf_136 * memref_load_137); 
          double arith_addf_139 = (memref_load_134 + arith_mulf_138); 
          func_arg_8[for_iter_121] = arith_addf_139; 
          int arith_addi_140 = (for_iter_126 + arith_const_17); 
          double memref_load_141 = func_arg_8[for_iter_121]; 
          double memref_load_142 = func_arg_3[for_iter_121][arith_addi_140]; 
          double arith_mulf_143 = (func_arg_1 * memref_load_142); 
          double memref_load_144 = func_arg_9[arith_addi_140]; 
          double arith_mulf_145 = (arith_mulf_143 * memref_load_144); 
          double arith_addf_146 = (memref_load_141 + arith_mulf_145); 
          func_arg_8[for_iter_121] = arith_addf_146; 
          int arith_addi_147 = (for_iter_126 + arith_const_12); 
          double memref_load_148 = func_arg_8[for_iter_121]; 
          double memref_load_149 = func_arg_3[for_iter_121][arith_addi_147]; 
          double arith_mulf_150 = (func_arg_1 * memref_load_149); 
          double memref_load_151 = func_arg_9[arith_addi_147]; 
          double arith_mulf_152 = (arith_mulf_150 * memref_load_151); 
          double arith_addf_153 = (memref_load_148 + arith_mulf_152); 
          func_arg_8[for_iter_121] = arith_addf_153; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
