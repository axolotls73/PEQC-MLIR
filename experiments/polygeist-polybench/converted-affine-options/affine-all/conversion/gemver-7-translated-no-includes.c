#pragma pocc-region-start
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 3; 
  int arith_const_13 = 4; 
  int arith_const_14 = 8; 
  int arith_const_15 = 10; 
  int arith_const_16 = -8; 
  int arith_const_17 = 32; 
  int arith_const_18 = 40; 
  int arith_const_19 = -32; 
  int arith_const_20 = 0; 
  int arith_const_21 = 2; 
  int arith_const_22 = 1; 
  for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_21; for_iter_23 += arith_const_22) {
    for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_21; for_iter_24 += arith_const_22) {
      int arith_muli_25 = (for_iter_24 * arith_const_19); 
      int arith_addi_26 = (arith_muli_25 + arith_const_18); 
      int arith_minsi_27 = min(arith_addi_26, arith_const_17); 
      for (int for_iter_28 = arith_const_20; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_22) {
        int arith_muli_29 = (for_iter_24 * arith_const_17); 
        int arith_addi_30 = (arith_muli_29 + for_iter_28); 
        double memref_load_31 = func_arg_4[arith_addi_30]; 
        double memref_load_32 = func_arg_6[arith_addi_30]; 
        double memref_load_33 = func_arg_10[arith_addi_30]; 
        double memref_load_34 = func_arg_4[arith_addi_30]; 
        double memref_load_35 = func_arg_6[arith_addi_30]; 
        double memref_load_36 = func_arg_10[arith_addi_30]; 
        double memref_load_37 = func_arg_4[arith_addi_30]; 
        double memref_load_38 = func_arg_6[arith_addi_30]; 
        double memref_load_39 = func_arg_10[arith_addi_30]; 
        double memref_load_40 = func_arg_4[arith_addi_30]; 
        double memref_load_41 = func_arg_6[arith_addi_30]; 
        double memref_load_42 = func_arg_10[arith_addi_30]; 
        int arith_muli_43 = (for_iter_23 * arith_const_16); 
        int arith_addi_44 = (arith_muli_43 + arith_const_15); 
        int arith_minsi_45 = min(arith_addi_44, arith_const_14); 
        for (int for_iter_46 = arith_const_20; for_iter_46 < arith_minsi_45; for_iter_46 += arith_const_22) {
          int arith_muli_47 = (for_iter_23 * arith_const_17); 
          int arith_muli_48 = (for_iter_46 * arith_const_13); 
          int arith_addi_49 = (arith_muli_47 + arith_muli_48); 
          double memref_load_50 = func_arg_3[arith_addi_30][arith_addi_49]; 
          double memref_load_51 = func_arg_5[arith_addi_49]; 
          double arith_mulf_52 = (memref_load_31 * memref_load_51); 
          double arith_addf_53 = (memref_load_50 + arith_mulf_52); 
          double memref_load_54 = func_arg_7[arith_addi_49]; 
          double arith_mulf_55 = (memref_load_32 * memref_load_54); 
          double arith_addf_56 = (arith_addf_53 + arith_mulf_55); 
          func_arg_3[arith_addi_30][arith_addi_49] = arith_addf_56; 
          double memref_load_57 = func_arg_9[arith_addi_49]; 
          double memref_load_58 = func_arg_3[arith_addi_30][arith_addi_49]; 
          double arith_mulf_59 = (func_arg_2 * memref_load_58); 
          double arith_mulf_60 = (arith_mulf_59 * memref_load_33); 
          double arith_addf_61 = (memref_load_57 + arith_mulf_60); 
          func_arg_9[arith_addi_49] = arith_addf_61; 
          int arith_addi_62 = (arith_addi_49 + arith_const_22); 
          double memref_load_63 = func_arg_3[arith_addi_30][arith_addi_62]; 
          double memref_load_64 = func_arg_5[arith_addi_62]; 
          double arith_mulf_65 = (memref_load_34 * memref_load_64); 
          double arith_addf_66 = (memref_load_63 + arith_mulf_65); 
          double memref_load_67 = func_arg_7[arith_addi_62]; 
          double arith_mulf_68 = (memref_load_35 * memref_load_67); 
          double arith_addf_69 = (arith_addf_66 + arith_mulf_68); 
          func_arg_3[arith_addi_30][arith_addi_62] = arith_addf_69; 
          double memref_load_70 = func_arg_9[arith_addi_62]; 
          double memref_load_71 = func_arg_3[arith_addi_30][arith_addi_62]; 
          double arith_mulf_72 = (func_arg_2 * memref_load_71); 
          double arith_mulf_73 = (arith_mulf_72 * memref_load_36); 
          double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
          func_arg_9[arith_addi_62] = arith_addf_74; 
          int arith_addi_75 = (arith_addi_49 + arith_const_21); 
          double memref_load_76 = func_arg_3[arith_addi_30][arith_addi_75]; 
          double memref_load_77 = func_arg_5[arith_addi_75]; 
          double arith_mulf_78 = (memref_load_37 * memref_load_77); 
          double arith_addf_79 = (memref_load_76 + arith_mulf_78); 
          double memref_load_80 = func_arg_7[arith_addi_75]; 
          double arith_mulf_81 = (memref_load_38 * memref_load_80); 
          double arith_addf_82 = (arith_addf_79 + arith_mulf_81); 
          func_arg_3[arith_addi_30][arith_addi_75] = arith_addf_82; 
          double memref_load_83 = func_arg_9[arith_addi_75]; 
          double memref_load_84 = func_arg_3[arith_addi_30][arith_addi_75]; 
          double arith_mulf_85 = (func_arg_2 * memref_load_84); 
          double arith_mulf_86 = (arith_mulf_85 * memref_load_39); 
          double arith_addf_87 = (memref_load_83 + arith_mulf_86); 
          func_arg_9[arith_addi_75] = arith_addf_87; 
          int arith_addi_88 = (arith_addi_49 + arith_const_12); 
          double memref_load_89 = func_arg_3[arith_addi_30][arith_addi_88]; 
          double memref_load_90 = func_arg_5[arith_addi_88]; 
          double arith_mulf_91 = (memref_load_40 * memref_load_90); 
          double arith_addf_92 = (memref_load_89 + arith_mulf_91); 
          double memref_load_93 = func_arg_7[arith_addi_88]; 
          double arith_mulf_94 = (memref_load_41 * memref_load_93); 
          double arith_addf_95 = (arith_addf_92 + arith_mulf_94); 
          func_arg_3[arith_addi_30][arith_addi_88] = arith_addf_95; 
          double memref_load_96 = func_arg_9[arith_addi_88]; 
          double memref_load_97 = func_arg_3[arith_addi_30][arith_addi_88]; 
          double arith_mulf_98 = (func_arg_2 * memref_load_97); 
          double arith_mulf_99 = (arith_mulf_98 * memref_load_42); 
          double arith_addf_100 = (memref_load_96 + arith_mulf_99); 
          func_arg_9[arith_addi_88] = arith_addf_100; 
        }
      }
    }
  }
  for (int for_iter_101 = arith_const_20; for_iter_101 < arith_const_21; for_iter_101 += arith_const_22) {
    int arith_muli_102 = (for_iter_101 * arith_const_16); 
    int arith_addi_103 = (arith_muli_102 + arith_const_15); 
    int arith_minsi_104 = min(arith_addi_103, arith_const_14); 
    for (int for_iter_105 = arith_const_20; for_iter_105 < arith_minsi_104; for_iter_105 += arith_const_22) {
      int arith_muli_106 = (for_iter_101 * arith_const_17); 
      int arith_muli_107 = (for_iter_105 * arith_const_13); 
      int arith_addi_108 = (arith_muli_106 + arith_muli_107); 
      double memref_load_109 = func_arg_9[arith_addi_108]; 
      double memref_load_110 = func_arg_11[arith_addi_108]; 
      double arith_addf_111 = (memref_load_109 + memref_load_110); 
      func_arg_9[arith_addi_108] = arith_addf_111; 
      int arith_addi_112 = (arith_addi_108 + arith_const_22); 
      double memref_load_113 = func_arg_9[arith_addi_112]; 
      double memref_load_114 = func_arg_11[arith_addi_112]; 
      double arith_addf_115 = (memref_load_113 + memref_load_114); 
      func_arg_9[arith_addi_112] = arith_addf_115; 
      int arith_addi_116 = (arith_addi_108 + arith_const_21); 
      double memref_load_117 = func_arg_9[arith_addi_116]; 
      double memref_load_118 = func_arg_11[arith_addi_116]; 
      double arith_addf_119 = (memref_load_117 + memref_load_118); 
      func_arg_9[arith_addi_116] = arith_addf_119; 
      int arith_addi_120 = (arith_addi_108 + arith_const_12); 
      double memref_load_121 = func_arg_9[arith_addi_120]; 
      double memref_load_122 = func_arg_11[arith_addi_120]; 
      double arith_addf_123 = (memref_load_121 + memref_load_122); 
      func_arg_9[arith_addi_120] = arith_addf_123; 
    }
  }
  int* async_group_124; 
  int async_group_index_125 = 0; 
  int for_iter_arg_127 = arith_const_20; 
  for (int for_iter_126 = arith_const_20; for_iter_126 < arith_const_21; for_iter_126 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_128); 
    #pragma peqc async_execute
    {
      for (int for_iter_129 = arith_const_20; for_iter_129 < arith_const_21; for_iter_129 += arith_const_22) {
        int arith_muli_130 = (for_iter_126 * arith_const_19); 
        int arith_addi_131 = (arith_muli_130 + arith_const_18); 
        int arith_minsi_132 = min(arith_addi_131, arith_const_17); 
        for (int for_iter_133 = arith_const_20; for_iter_133 < arith_minsi_132; for_iter_133 += arith_const_22) {
          int arith_muli_134 = (for_iter_126 * arith_const_17); 
          int arith_addi_135 = (arith_muli_134 + for_iter_133); 
          int arith_muli_136 = (for_iter_129 * arith_const_16); 
          int arith_addi_137 = (arith_muli_136 + arith_const_15); 
          int arith_minsi_138 = min(arith_addi_137, arith_const_14); 
          for (int for_iter_139 = arith_const_20; for_iter_139 < arith_minsi_138; for_iter_139 += arith_const_22) {
            int arith_muli_140 = (for_iter_129 * arith_const_17); 
            int arith_muli_141 = (for_iter_139 * arith_const_13); 
            int arith_addi_142 = (arith_muli_140 + arith_muli_141); 
            double memref_load_143 = func_arg_8[arith_addi_135]; 
            double memref_load_144 = func_arg_3[arith_addi_135][arith_addi_142]; 
            double arith_mulf_145 = (func_arg_1 * memref_load_144); 
            double memref_load_146 = func_arg_9[arith_addi_142]; 
            double arith_mulf_147 = (arith_mulf_145 * memref_load_146); 
            double arith_addf_148 = (memref_load_143 + arith_mulf_147); 
            func_arg_8[arith_addi_135] = arith_addf_148; 
            int arith_addi_149 = (arith_addi_142 + arith_const_22); 
            double memref_load_150 = func_arg_8[arith_addi_135]; 
            double memref_load_151 = func_arg_3[arith_addi_135][arith_addi_149]; 
            double arith_mulf_152 = (func_arg_1 * memref_load_151); 
            double memref_load_153 = func_arg_9[arith_addi_149]; 
            double arith_mulf_154 = (arith_mulf_152 * memref_load_153); 
            double arith_addf_155 = (memref_load_150 + arith_mulf_154); 
            func_arg_8[arith_addi_135] = arith_addf_155; 
            int arith_addi_156 = (arith_addi_142 + arith_const_21); 
            double memref_load_157 = func_arg_8[arith_addi_135]; 
            double memref_load_158 = func_arg_3[arith_addi_135][arith_addi_156]; 
            double arith_mulf_159 = (func_arg_1 * memref_load_158); 
            double memref_load_160 = func_arg_9[arith_addi_156]; 
            double arith_mulf_161 = (arith_mulf_159 * memref_load_160); 
            double arith_addf_162 = (memref_load_157 + arith_mulf_161); 
            func_arg_8[arith_addi_135] = arith_addf_162; 
            int arith_addi_163 = (arith_addi_142 + arith_const_12); 
            double memref_load_164 = func_arg_8[arith_addi_135]; 
            double memref_load_165 = func_arg_3[arith_addi_135][arith_addi_163]; 
            double arith_mulf_166 = (func_arg_1 * memref_load_165); 
            double memref_load_167 = func_arg_9[arith_addi_163]; 
            double arith_mulf_168 = (arith_mulf_166 * memref_load_167); 
            double arith_addf_169 = (memref_load_164 + arith_mulf_168); 
            func_arg_8[arith_addi_135] = arith_addf_169; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_128, PAST_TASK_FINISHED); 
    }
    async_group_124[async_group_index_125] = execute_token_128; 
    async_group_index_125++; 
    int arith_addi_170 = (for_iter_arg_127 + arith_const_22); 
    for_iter_arg_127 = arith_addi_170; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_124, async_group_index_125, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
