#pragma pocc-region-start
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 19; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 7; 
  int arith_const_13 = 28; 
  int arith_const_14 = 29; 
  double arith_const_15 = 0.700000; 
  double arith_const_16 = 0.500000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 20; 
  int arith_const_19 = 1; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
    for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_19; for_iter_21 += arith_const_19) {
      int arith_addi_22 = (for_iter_20 + for_iter_21); 
      double memref_load_23 = func_arg_6[arith_addi_22]; 
      double memref_load_24 = func_arg_6[arith_addi_22]; 
      double memref_load_25 = func_arg_6[arith_addi_22]; 
      double memref_load_26 = func_arg_6[arith_addi_22]; 
      for (int for_iter_27 = arith_const_17; for_iter_27 < arith_const_12; for_iter_27 += arith_const_19) {
        int arith_muli_28 = (for_iter_27 * arith_const_11); 
        func_arg_4[arith_const_17][arith_muli_28] = memref_load_23; 
        int arith_addi_29 = (arith_muli_28 + arith_const_19); 
        func_arg_4[arith_const_17][arith_addi_29] = memref_load_24; 
        int arith_addi_30 = (arith_muli_28 + arith_const_10); 
        func_arg_4[arith_const_17][arith_addi_30] = memref_load_25; 
        int arith_addi_31 = (arith_muli_28 + arith_const_9); 
        func_arg_4[arith_const_17][arith_addi_31] = memref_load_26; 
      }
      double memref_load_32 = func_arg_6[arith_addi_22]; 
      for (int for_iter_33 = arith_const_17; for_iter_33 < arith_const_10; for_iter_33 += arith_const_19) {
        int arith_addi_34 = (for_iter_33 + arith_const_13); 
        func_arg_4[arith_const_17][arith_addi_34] = memref_load_32; 
      }
      for (int for_iter_35 = arith_const_17; for_iter_35 < arith_const_8; for_iter_35 += arith_const_19) {
        int arith_addi_36 = (for_iter_35 + arith_const_19); 
        for (int for_iter_37 = arith_const_17; for_iter_37 < arith_const_12; for_iter_37 += arith_const_19) {
          int arith_muli_38 = (for_iter_37 * arith_const_11); 
          double memref_load_39 = func_arg_4[arith_addi_36][arith_muli_38]; 
          double memref_load_40 = func_arg_5[arith_addi_36][arith_muli_38]; 
          int arith_addi_41 = (arith_addi_36 + arith_const_7); 
          double memref_load_42 = func_arg_5[arith_addi_41][arith_muli_38]; 
          double arith_subf_43 = (memref_load_40 - memref_load_42); 
          double arith_mulf_44 = (arith_subf_43 * arith_const_16); 
          double arith_subf_45 = (memref_load_39 - arith_mulf_44); 
          func_arg_4[arith_addi_36][arith_muli_38] = arith_subf_45; 
          int arith_addi_46 = (arith_muli_38 + arith_const_19); 
          double memref_load_47 = func_arg_4[arith_addi_36][arith_addi_46]; 
          double memref_load_48 = func_arg_5[arith_addi_36][arith_addi_46]; 
          int arith_addi_49 = (arith_addi_36 + arith_const_7); 
          double memref_load_50 = func_arg_5[arith_addi_49][arith_addi_46]; 
          double arith_subf_51 = (memref_load_48 - memref_load_50); 
          double arith_mulf_52 = (arith_subf_51 * arith_const_16); 
          double arith_subf_53 = (memref_load_47 - arith_mulf_52); 
          func_arg_4[arith_addi_36][arith_addi_46] = arith_subf_53; 
          int arith_addi_54 = (arith_muli_38 + arith_const_10); 
          double memref_load_55 = func_arg_4[arith_addi_36][arith_addi_54]; 
          double memref_load_56 = func_arg_5[arith_addi_36][arith_addi_54]; 
          int arith_addi_57 = (arith_addi_36 + arith_const_7); 
          double memref_load_58 = func_arg_5[arith_addi_57][arith_addi_54]; 
          double arith_subf_59 = (memref_load_56 - memref_load_58); 
          double arith_mulf_60 = (arith_subf_59 * arith_const_16); 
          double arith_subf_61 = (memref_load_55 - arith_mulf_60); 
          func_arg_4[arith_addi_36][arith_addi_54] = arith_subf_61; 
          int arith_addi_62 = (arith_muli_38 + arith_const_9); 
          double memref_load_63 = func_arg_4[arith_addi_36][arith_addi_62]; 
          double memref_load_64 = func_arg_5[arith_addi_36][arith_addi_62]; 
          int arith_addi_65 = (arith_addi_36 + arith_const_7); 
          double memref_load_66 = func_arg_5[arith_addi_65][arith_addi_62]; 
          double arith_subf_67 = (memref_load_64 - memref_load_66); 
          double arith_mulf_68 = (arith_subf_67 * arith_const_16); 
          double arith_subf_69 = (memref_load_63 - arith_mulf_68); 
          func_arg_4[arith_addi_36][arith_addi_62] = arith_subf_69; 
        }
        for (int for_iter_70 = arith_const_17; for_iter_70 < arith_const_10; for_iter_70 += arith_const_19) {
          int arith_addi_71 = (for_iter_70 + arith_const_13); 
          double memref_load_72 = func_arg_4[arith_addi_36][arith_addi_71]; 
          double memref_load_73 = func_arg_5[arith_addi_36][arith_addi_71]; 
          int arith_addi_74 = (arith_addi_36 + arith_const_7); 
          double memref_load_75 = func_arg_5[arith_addi_74][arith_addi_71]; 
          double arith_subf_76 = (memref_load_73 - memref_load_75); 
          double arith_mulf_77 = (arith_subf_76 * arith_const_16); 
          double arith_subf_78 = (memref_load_72 - arith_mulf_77); 
          func_arg_4[arith_addi_36][arith_addi_71] = arith_subf_78; 
        }
      }
      for (int for_iter_79 = arith_const_17; for_iter_79 < arith_const_18; for_iter_79 += arith_const_19) {
        for (int for_iter_80 = arith_const_17; for_iter_80 < arith_const_12; for_iter_80 += arith_const_19) {
          int arith_muli_81 = (for_iter_80 * arith_const_11); 
          int arith_addi_82 = (arith_muli_81 + arith_const_19); 
          double memref_load_83 = func_arg_3[for_iter_79][arith_addi_82]; 
          double memref_load_84 = func_arg_5[for_iter_79][arith_addi_82]; 
          int arith_addi_85 = (arith_addi_82 + arith_const_7); 
          double memref_load_86 = func_arg_5[for_iter_79][arith_addi_85]; 
          double arith_subf_87 = (memref_load_84 - memref_load_86); 
          double arith_mulf_88 = (arith_subf_87 * arith_const_16); 
          double arith_subf_89 = (memref_load_83 - arith_mulf_88); 
          func_arg_3[for_iter_79][arith_addi_82] = arith_subf_89; 
          int arith_addi_90 = (arith_addi_82 + arith_const_19); 
          double memref_load_91 = func_arg_3[for_iter_79][arith_addi_90]; 
          double memref_load_92 = func_arg_5[for_iter_79][arith_addi_90]; 
          int arith_addi_93 = (arith_addi_90 + arith_const_7); 
          double memref_load_94 = func_arg_5[for_iter_79][arith_addi_93]; 
          double arith_subf_95 = (memref_load_92 - memref_load_94); 
          double arith_mulf_96 = (arith_subf_95 * arith_const_16); 
          double arith_subf_97 = (memref_load_91 - arith_mulf_96); 
          func_arg_3[for_iter_79][arith_addi_90] = arith_subf_97; 
          int arith_addi_98 = (arith_addi_82 + arith_const_10); 
          double memref_load_99 = func_arg_3[for_iter_79][arith_addi_98]; 
          double memref_load_100 = func_arg_5[for_iter_79][arith_addi_98]; 
          int arith_addi_101 = (arith_addi_98 + arith_const_7); 
          double memref_load_102 = func_arg_5[for_iter_79][arith_addi_101]; 
          double arith_subf_103 = (memref_load_100 - memref_load_102); 
          double arith_mulf_104 = (arith_subf_103 * arith_const_16); 
          double arith_subf_105 = (memref_load_99 - arith_mulf_104); 
          func_arg_3[for_iter_79][arith_addi_98] = arith_subf_105; 
          int arith_addi_106 = (arith_addi_82 + arith_const_9); 
          double memref_load_107 = func_arg_3[for_iter_79][arith_addi_106]; 
          double memref_load_108 = func_arg_5[for_iter_79][arith_addi_106]; 
          int arith_addi_109 = (arith_addi_106 + arith_const_7); 
          double memref_load_110 = func_arg_5[for_iter_79][arith_addi_109]; 
          double arith_subf_111 = (memref_load_108 - memref_load_110); 
          double arith_mulf_112 = (arith_subf_111 * arith_const_16); 
          double arith_subf_113 = (memref_load_107 - arith_mulf_112); 
          func_arg_3[for_iter_79][arith_addi_106] = arith_subf_113; 
        }
        double memref_load_114 = func_arg_3[for_iter_79][arith_const_14]; 
        double memref_load_115 = func_arg_5[for_iter_79][arith_const_14]; 
        double memref_load_116 = func_arg_5[for_iter_79][arith_const_13]; 
        double arith_subf_117 = (memref_load_115 - memref_load_116); 
        double arith_mulf_118 = (arith_subf_117 * arith_const_16); 
        double arith_subf_119 = (memref_load_114 - arith_mulf_118); 
        func_arg_3[for_iter_79][arith_const_14] = arith_subf_119; 
      }
      for (int for_iter_120 = arith_const_17; for_iter_120 < arith_const_8; for_iter_120 += arith_const_19) {
        for (int for_iter_121 = arith_const_17; for_iter_121 < arith_const_12; for_iter_121 += arith_const_19) {
          int arith_muli_122 = (for_iter_121 * arith_const_11); 
          double memref_load_123 = func_arg_5[for_iter_120][arith_muli_122]; 
          int arith_addi_124 = (arith_muli_122 + arith_const_19); 
          double memref_load_125 = func_arg_3[for_iter_120][arith_addi_124]; 
          double memref_load_126 = func_arg_3[for_iter_120][arith_muli_122]; 
          double arith_subf_127 = (memref_load_125 - memref_load_126); 
          int arith_addi_128 = (for_iter_120 + arith_const_19); 
          double memref_load_129 = func_arg_4[arith_addi_128][arith_muli_122]; 
          double arith_addf_130 = (arith_subf_127 + memref_load_129); 
          double memref_load_131 = func_arg_4[for_iter_120][arith_muli_122]; 
          double arith_subf_132 = (arith_addf_130 - memref_load_131); 
          double arith_mulf_133 = (arith_subf_132 * arith_const_15); 
          double arith_subf_134 = (memref_load_123 - arith_mulf_133); 
          func_arg_5[for_iter_120][arith_muli_122] = arith_subf_134; 
          int arith_addi_135 = (arith_muli_122 + arith_const_19); 
          double memref_load_136 = func_arg_5[for_iter_120][arith_addi_135]; 
          int arith_addi_137 = (arith_addi_135 + arith_const_19); 
          double memref_load_138 = func_arg_3[for_iter_120][arith_addi_137]; 
          double memref_load_139 = func_arg_3[for_iter_120][arith_addi_135]; 
          double arith_subf_140 = (memref_load_138 - memref_load_139); 
          int arith_addi_141 = (for_iter_120 + arith_const_19); 
          double memref_load_142 = func_arg_4[arith_addi_141][arith_addi_135]; 
          double arith_addf_143 = (arith_subf_140 + memref_load_142); 
          double memref_load_144 = func_arg_4[for_iter_120][arith_addi_135]; 
          double arith_subf_145 = (arith_addf_143 - memref_load_144); 
          double arith_mulf_146 = (arith_subf_145 * arith_const_15); 
          double arith_subf_147 = (memref_load_136 - arith_mulf_146); 
          func_arg_5[for_iter_120][arith_addi_135] = arith_subf_147; 
          int arith_addi_148 = (arith_muli_122 + arith_const_10); 
          double memref_load_149 = func_arg_5[for_iter_120][arith_addi_148]; 
          int arith_addi_150 = (arith_addi_148 + arith_const_19); 
          double memref_load_151 = func_arg_3[for_iter_120][arith_addi_150]; 
          double memref_load_152 = func_arg_3[for_iter_120][arith_addi_148]; 
          double arith_subf_153 = (memref_load_151 - memref_load_152); 
          int arith_addi_154 = (for_iter_120 + arith_const_19); 
          double memref_load_155 = func_arg_4[arith_addi_154][arith_addi_148]; 
          double arith_addf_156 = (arith_subf_153 + memref_load_155); 
          double memref_load_157 = func_arg_4[for_iter_120][arith_addi_148]; 
          double arith_subf_158 = (arith_addf_156 - memref_load_157); 
          double arith_mulf_159 = (arith_subf_158 * arith_const_15); 
          double arith_subf_160 = (memref_load_149 - arith_mulf_159); 
          func_arg_5[for_iter_120][arith_addi_148] = arith_subf_160; 
          int arith_addi_161 = (arith_muli_122 + arith_const_9); 
          double memref_load_162 = func_arg_5[for_iter_120][arith_addi_161]; 
          int arith_addi_163 = (arith_addi_161 + arith_const_19); 
          double memref_load_164 = func_arg_3[for_iter_120][arith_addi_163]; 
          double memref_load_165 = func_arg_3[for_iter_120][arith_addi_161]; 
          double arith_subf_166 = (memref_load_164 - memref_load_165); 
          int arith_addi_167 = (for_iter_120 + arith_const_19); 
          double memref_load_168 = func_arg_4[arith_addi_167][arith_addi_161]; 
          double arith_addf_169 = (arith_subf_166 + memref_load_168); 
          double memref_load_170 = func_arg_4[for_iter_120][arith_addi_161]; 
          double arith_subf_171 = (arith_addf_169 - memref_load_170); 
          double arith_mulf_172 = (arith_subf_171 * arith_const_15); 
          double arith_subf_173 = (memref_load_162 - arith_mulf_172); 
          func_arg_5[for_iter_120][arith_addi_161] = arith_subf_173; 
        }
        double memref_load_174 = func_arg_5[for_iter_120][arith_const_13]; 
        double memref_load_175 = func_arg_3[for_iter_120][arith_const_14]; 
        double memref_load_176 = func_arg_3[for_iter_120][arith_const_13]; 
        double arith_subf_177 = (memref_load_175 - memref_load_176); 
        int arith_addi_178 = (for_iter_120 + arith_const_19); 
        double memref_load_179 = func_arg_4[arith_addi_178][arith_const_13]; 
        double arith_addf_180 = (arith_subf_177 + memref_load_179); 
        double memref_load_181 = func_arg_4[for_iter_120][arith_const_13]; 
        double arith_subf_182 = (arith_addf_180 - memref_load_181); 
        double arith_mulf_183 = (arith_subf_182 * arith_const_15); 
        double arith_subf_184 = (memref_load_174 - arith_mulf_183); 
        func_arg_5[for_iter_120][arith_const_13] = arith_subf_184; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
