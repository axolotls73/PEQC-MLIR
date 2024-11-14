#pragma pocc-region-start
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 19; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 7; 
  int arith_const_13 = 20; 
  int arith_const_14 = 32; 
  int arith_const_15 = 28; 
  int arith_const_16 = 29; 
  double arith_const_17 = 0.700000; 
  double arith_const_18 = 0.500000; 
  int arith_const_19 = 0; 
  int arith_const_20 = 1; 
  for (int for_iter_21 = arith_const_19; for_iter_21 < arith_const_20; for_iter_21 += arith_const_20) {
    int arith_muli_22 = (for_iter_21 * arith_const_14); 
    for (int for_iter_23 = arith_const_19; for_iter_23 < arith_const_13; for_iter_23 += arith_const_20) {
      int arith_addi_24 = (arith_muli_22 + for_iter_23); 
      double memref_load_25 = func_arg_6[arith_addi_24]; 
      double memref_load_26 = func_arg_6[arith_addi_24]; 
      double memref_load_27 = func_arg_6[arith_addi_24]; 
      double memref_load_28 = func_arg_6[arith_addi_24]; 
      for (int for_iter_29 = arith_const_19; for_iter_29 < arith_const_12; for_iter_29 += arith_const_20) {
        int arith_muli_30 = (for_iter_29 * arith_const_11); 
        func_arg_4[arith_const_19][arith_muli_30] = memref_load_25; 
        int arith_addi_31 = (arith_muli_30 + arith_const_20); 
        func_arg_4[arith_const_19][arith_addi_31] = memref_load_26; 
        int arith_addi_32 = (arith_muli_30 + arith_const_10); 
        func_arg_4[arith_const_19][arith_addi_32] = memref_load_27; 
        int arith_addi_33 = (arith_muli_30 + arith_const_9); 
        func_arg_4[arith_const_19][arith_addi_33] = memref_load_28; 
      }
      double memref_load_34 = func_arg_6[arith_addi_24]; 
      for (int for_iter_35 = arith_const_19; for_iter_35 < arith_const_10; for_iter_35 += arith_const_20) {
        int arith_addi_36 = (for_iter_35 + arith_const_15); 
        func_arg_4[arith_const_19][arith_addi_36] = memref_load_34; 
      }
      for (int for_iter_37 = arith_const_19; for_iter_37 < arith_const_8; for_iter_37 += arith_const_20) {
        int arith_addi_38 = (for_iter_37 + arith_const_20); 
        for (int for_iter_39 = arith_const_19; for_iter_39 < arith_const_12; for_iter_39 += arith_const_20) {
          int arith_muli_40 = (for_iter_39 * arith_const_11); 
          double memref_load_41 = func_arg_4[arith_addi_38][arith_muli_40]; 
          double memref_load_42 = func_arg_5[arith_addi_38][arith_muli_40]; 
          int arith_addi_43 = (arith_addi_38 + arith_const_7); 
          double memref_load_44 = func_arg_5[arith_addi_43][arith_muli_40]; 
          double arith_subf_45 = (memref_load_42 - memref_load_44); 
          double arith_mulf_46 = (arith_subf_45 * arith_const_18); 
          double arith_subf_47 = (memref_load_41 - arith_mulf_46); 
          func_arg_4[arith_addi_38][arith_muli_40] = arith_subf_47; 
          int arith_addi_48 = (arith_muli_40 + arith_const_20); 
          double memref_load_49 = func_arg_4[arith_addi_38][arith_addi_48]; 
          double memref_load_50 = func_arg_5[arith_addi_38][arith_addi_48]; 
          int arith_addi_51 = (arith_addi_38 + arith_const_7); 
          double memref_load_52 = func_arg_5[arith_addi_51][arith_addi_48]; 
          double arith_subf_53 = (memref_load_50 - memref_load_52); 
          double arith_mulf_54 = (arith_subf_53 * arith_const_18); 
          double arith_subf_55 = (memref_load_49 - arith_mulf_54); 
          func_arg_4[arith_addi_38][arith_addi_48] = arith_subf_55; 
          int arith_addi_56 = (arith_muli_40 + arith_const_10); 
          double memref_load_57 = func_arg_4[arith_addi_38][arith_addi_56]; 
          double memref_load_58 = func_arg_5[arith_addi_38][arith_addi_56]; 
          int arith_addi_59 = (arith_addi_38 + arith_const_7); 
          double memref_load_60 = func_arg_5[arith_addi_59][arith_addi_56]; 
          double arith_subf_61 = (memref_load_58 - memref_load_60); 
          double arith_mulf_62 = (arith_subf_61 * arith_const_18); 
          double arith_subf_63 = (memref_load_57 - arith_mulf_62); 
          func_arg_4[arith_addi_38][arith_addi_56] = arith_subf_63; 
          int arith_addi_64 = (arith_muli_40 + arith_const_9); 
          double memref_load_65 = func_arg_4[arith_addi_38][arith_addi_64]; 
          double memref_load_66 = func_arg_5[arith_addi_38][arith_addi_64]; 
          int arith_addi_67 = (arith_addi_38 + arith_const_7); 
          double memref_load_68 = func_arg_5[arith_addi_67][arith_addi_64]; 
          double arith_subf_69 = (memref_load_66 - memref_load_68); 
          double arith_mulf_70 = (arith_subf_69 * arith_const_18); 
          double arith_subf_71 = (memref_load_65 - arith_mulf_70); 
          func_arg_4[arith_addi_38][arith_addi_64] = arith_subf_71; 
        }
        for (int for_iter_72 = arith_const_19; for_iter_72 < arith_const_10; for_iter_72 += arith_const_20) {
          int arith_addi_73 = (for_iter_72 + arith_const_15); 
          double memref_load_74 = func_arg_4[arith_addi_38][arith_addi_73]; 
          double memref_load_75 = func_arg_5[arith_addi_38][arith_addi_73]; 
          int arith_addi_76 = (arith_addi_38 + arith_const_7); 
          double memref_load_77 = func_arg_5[arith_addi_76][arith_addi_73]; 
          double arith_subf_78 = (memref_load_75 - memref_load_77); 
          double arith_mulf_79 = (arith_subf_78 * arith_const_18); 
          double arith_subf_80 = (memref_load_74 - arith_mulf_79); 
          func_arg_4[arith_addi_38][arith_addi_73] = arith_subf_80; 
        }
      }
      for (int for_iter_81 = arith_const_19; for_iter_81 < arith_const_13; for_iter_81 += arith_const_20) {
        for (int for_iter_82 = arith_const_19; for_iter_82 < arith_const_12; for_iter_82 += arith_const_20) {
          int arith_muli_83 = (for_iter_82 * arith_const_11); 
          int arith_addi_84 = (arith_muli_83 + arith_const_20); 
          double memref_load_85 = func_arg_3[for_iter_81][arith_addi_84]; 
          double memref_load_86 = func_arg_5[for_iter_81][arith_addi_84]; 
          int arith_addi_87 = (arith_addi_84 + arith_const_7); 
          double memref_load_88 = func_arg_5[for_iter_81][arith_addi_87]; 
          double arith_subf_89 = (memref_load_86 - memref_load_88); 
          double arith_mulf_90 = (arith_subf_89 * arith_const_18); 
          double arith_subf_91 = (memref_load_85 - arith_mulf_90); 
          func_arg_3[for_iter_81][arith_addi_84] = arith_subf_91; 
          int arith_addi_92 = (arith_addi_84 + arith_const_20); 
          double memref_load_93 = func_arg_3[for_iter_81][arith_addi_92]; 
          double memref_load_94 = func_arg_5[for_iter_81][arith_addi_92]; 
          int arith_addi_95 = (arith_addi_92 + arith_const_7); 
          double memref_load_96 = func_arg_5[for_iter_81][arith_addi_95]; 
          double arith_subf_97 = (memref_load_94 - memref_load_96); 
          double arith_mulf_98 = (arith_subf_97 * arith_const_18); 
          double arith_subf_99 = (memref_load_93 - arith_mulf_98); 
          func_arg_3[for_iter_81][arith_addi_92] = arith_subf_99; 
          int arith_addi_100 = (arith_addi_84 + arith_const_10); 
          double memref_load_101 = func_arg_3[for_iter_81][arith_addi_100]; 
          double memref_load_102 = func_arg_5[for_iter_81][arith_addi_100]; 
          int arith_addi_103 = (arith_addi_100 + arith_const_7); 
          double memref_load_104 = func_arg_5[for_iter_81][arith_addi_103]; 
          double arith_subf_105 = (memref_load_102 - memref_load_104); 
          double arith_mulf_106 = (arith_subf_105 * arith_const_18); 
          double arith_subf_107 = (memref_load_101 - arith_mulf_106); 
          func_arg_3[for_iter_81][arith_addi_100] = arith_subf_107; 
          int arith_addi_108 = (arith_addi_84 + arith_const_9); 
          double memref_load_109 = func_arg_3[for_iter_81][arith_addi_108]; 
          double memref_load_110 = func_arg_5[for_iter_81][arith_addi_108]; 
          int arith_addi_111 = (arith_addi_108 + arith_const_7); 
          double memref_load_112 = func_arg_5[for_iter_81][arith_addi_111]; 
          double arith_subf_113 = (memref_load_110 - memref_load_112); 
          double arith_mulf_114 = (arith_subf_113 * arith_const_18); 
          double arith_subf_115 = (memref_load_109 - arith_mulf_114); 
          func_arg_3[for_iter_81][arith_addi_108] = arith_subf_115; 
        }
        double memref_load_116 = func_arg_3[for_iter_81][arith_const_16]; 
        double memref_load_117 = func_arg_5[for_iter_81][arith_const_16]; 
        double memref_load_118 = func_arg_5[for_iter_81][arith_const_15]; 
        double arith_subf_119 = (memref_load_117 - memref_load_118); 
        double arith_mulf_120 = (arith_subf_119 * arith_const_18); 
        double arith_subf_121 = (memref_load_116 - arith_mulf_120); 
        func_arg_3[for_iter_81][arith_const_16] = arith_subf_121; 
      }
      for (int for_iter_122 = arith_const_19; for_iter_122 < arith_const_8; for_iter_122 += arith_const_20) {
        for (int for_iter_123 = arith_const_19; for_iter_123 < arith_const_12; for_iter_123 += arith_const_20) {
          int arith_muli_124 = (for_iter_123 * arith_const_11); 
          double memref_load_125 = func_arg_5[for_iter_122][arith_muli_124]; 
          int arith_addi_126 = (arith_muli_124 + arith_const_20); 
          double memref_load_127 = func_arg_3[for_iter_122][arith_addi_126]; 
          double memref_load_128 = func_arg_3[for_iter_122][arith_muli_124]; 
          double arith_subf_129 = (memref_load_127 - memref_load_128); 
          int arith_addi_130 = (for_iter_122 + arith_const_20); 
          double memref_load_131 = func_arg_4[arith_addi_130][arith_muli_124]; 
          double arith_addf_132 = (arith_subf_129 + memref_load_131); 
          double memref_load_133 = func_arg_4[for_iter_122][arith_muli_124]; 
          double arith_subf_134 = (arith_addf_132 - memref_load_133); 
          double arith_mulf_135 = (arith_subf_134 * arith_const_17); 
          double arith_subf_136 = (memref_load_125 - arith_mulf_135); 
          func_arg_5[for_iter_122][arith_muli_124] = arith_subf_136; 
          int arith_addi_137 = (arith_muli_124 + arith_const_20); 
          double memref_load_138 = func_arg_5[for_iter_122][arith_addi_137]; 
          int arith_addi_139 = (arith_addi_137 + arith_const_20); 
          double memref_load_140 = func_arg_3[for_iter_122][arith_addi_139]; 
          double memref_load_141 = func_arg_3[for_iter_122][arith_addi_137]; 
          double arith_subf_142 = (memref_load_140 - memref_load_141); 
          int arith_addi_143 = (for_iter_122 + arith_const_20); 
          double memref_load_144 = func_arg_4[arith_addi_143][arith_addi_137]; 
          double arith_addf_145 = (arith_subf_142 + memref_load_144); 
          double memref_load_146 = func_arg_4[for_iter_122][arith_addi_137]; 
          double arith_subf_147 = (arith_addf_145 - memref_load_146); 
          double arith_mulf_148 = (arith_subf_147 * arith_const_17); 
          double arith_subf_149 = (memref_load_138 - arith_mulf_148); 
          func_arg_5[for_iter_122][arith_addi_137] = arith_subf_149; 
          int arith_addi_150 = (arith_muli_124 + arith_const_10); 
          double memref_load_151 = func_arg_5[for_iter_122][arith_addi_150]; 
          int arith_addi_152 = (arith_addi_150 + arith_const_20); 
          double memref_load_153 = func_arg_3[for_iter_122][arith_addi_152]; 
          double memref_load_154 = func_arg_3[for_iter_122][arith_addi_150]; 
          double arith_subf_155 = (memref_load_153 - memref_load_154); 
          int arith_addi_156 = (for_iter_122 + arith_const_20); 
          double memref_load_157 = func_arg_4[arith_addi_156][arith_addi_150]; 
          double arith_addf_158 = (arith_subf_155 + memref_load_157); 
          double memref_load_159 = func_arg_4[for_iter_122][arith_addi_150]; 
          double arith_subf_160 = (arith_addf_158 - memref_load_159); 
          double arith_mulf_161 = (arith_subf_160 * arith_const_17); 
          double arith_subf_162 = (memref_load_151 - arith_mulf_161); 
          func_arg_5[for_iter_122][arith_addi_150] = arith_subf_162; 
          int arith_addi_163 = (arith_muli_124 + arith_const_9); 
          double memref_load_164 = func_arg_5[for_iter_122][arith_addi_163]; 
          int arith_addi_165 = (arith_addi_163 + arith_const_20); 
          double memref_load_166 = func_arg_3[for_iter_122][arith_addi_165]; 
          double memref_load_167 = func_arg_3[for_iter_122][arith_addi_163]; 
          double arith_subf_168 = (memref_load_166 - memref_load_167); 
          int arith_addi_169 = (for_iter_122 + arith_const_20); 
          double memref_load_170 = func_arg_4[arith_addi_169][arith_addi_163]; 
          double arith_addf_171 = (arith_subf_168 + memref_load_170); 
          double memref_load_172 = func_arg_4[for_iter_122][arith_addi_163]; 
          double arith_subf_173 = (arith_addf_171 - memref_load_172); 
          double arith_mulf_174 = (arith_subf_173 * arith_const_17); 
          double arith_subf_175 = (memref_load_164 - arith_mulf_174); 
          func_arg_5[for_iter_122][arith_addi_163] = arith_subf_175; 
        }
        double memref_load_176 = func_arg_5[for_iter_122][arith_const_15]; 
        double memref_load_177 = func_arg_3[for_iter_122][arith_const_16]; 
        double memref_load_178 = func_arg_3[for_iter_122][arith_const_15]; 
        double arith_subf_179 = (memref_load_177 - memref_load_178); 
        int arith_addi_180 = (for_iter_122 + arith_const_20); 
        double memref_load_181 = func_arg_4[arith_addi_180][arith_const_15]; 
        double arith_addf_182 = (arith_subf_179 + memref_load_181); 
        double memref_load_183 = func_arg_4[for_iter_122][arith_const_15]; 
        double arith_subf_184 = (arith_addf_182 - memref_load_183); 
        double arith_mulf_185 = (arith_subf_184 * arith_const_17); 
        double arith_subf_186 = (memref_load_176 - arith_mulf_185); 
        func_arg_5[for_iter_122][arith_const_15] = arith_subf_186; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
