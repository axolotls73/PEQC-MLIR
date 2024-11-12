#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 24; 
  int arith_const_9 = 28; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = 4; 
  int arith_const_13 = -1; 
  int arith_const_14 = 1; 
  int arith_const_15 = 0; 
  int arith_const_16 = 27; 
  double arith_const_17 = 0.100000; 
  double arith_const_18 = 0.000000; 
  double arith_const_19 = 1.000000; 
  double* memref_alloca_20; 
  func_arg_4[arith_const_16][arith_const_16] = arith_const_19; 
  for (int for_iter_21 = arith_const_15; for_iter_21 < arith_const_16; for_iter_21 += arith_const_14) {
    int arith_addi_22 = (for_iter_21 + arith_const_14); 
    int arith_muli_23 = (for_iter_21 * arith_const_13); 
    int arith_addi_24 = (arith_muli_23 + arith_const_16); 
    int arith_cmpi_25 = (arith_addi_24 < arith_const_15); 
    int arith_subi_26 = (arith_const_13 - arith_addi_24); 
    int arith_select_27 = (arith_cmpi_25 ? arith_subi_26 : arith_addi_24); 
    int arith_divi_28 = (arith_select_27 / arith_const_12); 
    int arith_subi_29 = (arith_const_13 - arith_divi_28); 
    int arith_select_30 = (arith_cmpi_25 ? arith_subi_29 : arith_divi_28); 
    int arith_muli_31 = (arith_select_30 * arith_const_12); 
    int arith_addi_32 = (for_iter_21 + arith_muli_31); 
    int arith_addi_33 = (arith_addi_32 + arith_const_14); 
    for (int for_iter_34 = arith_addi_22; for_iter_34 < arith_addi_33; for_iter_34 += arith_const_12) {
      func_arg_4[for_iter_21][for_iter_34] = arith_const_18; 
      int arith_addi_35 = (for_iter_34 + arith_const_14); 
      func_arg_4[for_iter_21][arith_addi_35] = arith_const_18; 
      int arith_addi_36 = (for_iter_34 + arith_const_11); 
      func_arg_4[for_iter_21][arith_addi_36] = arith_const_18; 
      int arith_addi_37 = (for_iter_34 + arith_const_10); 
      func_arg_4[for_iter_21][arith_addi_37] = arith_const_18; 
    }
    int arith_muli_38 = (for_iter_21 * arith_const_13); 
    int arith_addi_39 = (arith_muli_38 + arith_const_16); 
    int arith_cmpi_40 = (arith_addi_39 < arith_const_15); 
    int arith_subi_41 = (arith_const_13 - arith_addi_39); 
    int arith_select_42 = (arith_cmpi_40 ? arith_subi_41 : arith_addi_39); 
    int arith_divi_43 = (arith_select_42 / arith_const_12); 
    int arith_subi_44 = (arith_const_13 - arith_divi_43); 
    int arith_select_45 = (arith_cmpi_40 ? arith_subi_44 : arith_divi_43); 
    int arith_muli_46 = (arith_select_45 * arith_const_12); 
    int arith_addi_47 = (for_iter_21 + arith_muli_46); 
    int arith_addi_48 = (arith_addi_47 + arith_const_14); 
    for (int for_iter_49 = arith_addi_48; for_iter_49 < arith_const_9; for_iter_49 += arith_const_14) {
      func_arg_4[for_iter_21][for_iter_49] = arith_const_18; 
    }
  }
  for (int for_iter_50 = arith_const_15; for_iter_50 < arith_const_8; for_iter_50 += arith_const_12) {
    func_arg_4[for_iter_50][for_iter_50] = arith_const_19; 
    int arith_addi_51 = (for_iter_50 + arith_const_14); 
    func_arg_4[arith_addi_51][arith_addi_51] = arith_const_19; 
    int arith_addi_52 = (for_iter_50 + arith_const_11); 
    func_arg_4[arith_addi_52][arith_addi_52] = arith_const_19; 
    int arith_addi_53 = (for_iter_50 + arith_const_10); 
    func_arg_4[arith_addi_53][arith_addi_53] = arith_const_19; 
  }
  for (int for_iter_54 = arith_const_8; for_iter_54 < arith_const_16; for_iter_54 += arith_const_14) {
    func_arg_4[for_iter_54][for_iter_54] = arith_const_19; 
  }
  double math_sqrt_55 = sqrt(func_arg_2); 
  memref_alloca_20[arith_const_15] = math_sqrt_55; 
  for (int for_iter_56 = arith_const_15; for_iter_56 < arith_const_9; for_iter_56 += arith_const_12) {
    func_arg_6[for_iter_56] = arith_const_18; 
    func_arg_5[for_iter_56] = arith_const_18; 
    int arith_addi_57 = (for_iter_56 + arith_const_14); 
    func_arg_6[arith_addi_57] = arith_const_18; 
    func_arg_5[arith_addi_57] = arith_const_18; 
    int arith_addi_58 = (for_iter_56 + arith_const_11); 
    func_arg_6[arith_addi_58] = arith_const_18; 
    func_arg_5[arith_addi_58] = arith_const_18; 
    int arith_addi_59 = (for_iter_56 + arith_const_10); 
    func_arg_6[arith_addi_59] = arith_const_18; 
    func_arg_5[arith_addi_59] = arith_const_18; 
  }
  for (int for_iter_60 = arith_const_15; for_iter_60 < arith_const_7; for_iter_60 += arith_const_14) {
    for (int for_iter_61 = arith_const_15; for_iter_61 < arith_const_9; for_iter_61 += arith_const_12) {
      double memref_load_62 = func_arg_5[for_iter_61]; 
      double memref_load_63 = func_arg_3[for_iter_60][for_iter_61]; 
      double arith_addf_64 = (memref_load_62 + memref_load_63); 
      func_arg_5[for_iter_61] = arith_addf_64; 
      int arith_addi_65 = (for_iter_61 + arith_const_14); 
      double memref_load_66 = func_arg_5[arith_addi_65]; 
      double memref_load_67 = func_arg_3[for_iter_60][arith_addi_65]; 
      double arith_addf_68 = (memref_load_66 + memref_load_67); 
      func_arg_5[arith_addi_65] = arith_addf_68; 
      int arith_addi_69 = (for_iter_61 + arith_const_11); 
      double memref_load_70 = func_arg_5[arith_addi_69]; 
      double memref_load_71 = func_arg_3[for_iter_60][arith_addi_69]; 
      double arith_addf_72 = (memref_load_70 + memref_load_71); 
      func_arg_5[arith_addi_69] = arith_addf_72; 
      int arith_addi_73 = (for_iter_61 + arith_const_10); 
      double memref_load_74 = func_arg_5[arith_addi_73]; 
      double memref_load_75 = func_arg_3[for_iter_60][arith_addi_73]; 
      double arith_addf_76 = (memref_load_74 + memref_load_75); 
      func_arg_5[arith_addi_73] = arith_addf_76; 
    }
  }
  for (int for_iter_77 = arith_const_15; for_iter_77 < arith_const_9; for_iter_77 += arith_const_12) {
    double memref_load_78 = func_arg_5[for_iter_77]; 
    double arith_divf_79 = (memref_load_78 / func_arg_2); 
    func_arg_5[for_iter_77] = arith_divf_79; 
    int arith_addi_80 = (for_iter_77 + arith_const_14); 
    double memref_load_81 = func_arg_5[arith_addi_80]; 
    double arith_divf_82 = (memref_load_81 / func_arg_2); 
    func_arg_5[arith_addi_80] = arith_divf_82; 
    int arith_addi_83 = (for_iter_77 + arith_const_11); 
    double memref_load_84 = func_arg_5[arith_addi_83]; 
    double arith_divf_85 = (memref_load_84 / func_arg_2); 
    func_arg_5[arith_addi_83] = arith_divf_85; 
    int arith_addi_86 = (for_iter_77 + arith_const_10); 
    double memref_load_87 = func_arg_5[arith_addi_86]; 
    double arith_divf_88 = (memref_load_87 / func_arg_2); 
    func_arg_5[arith_addi_86] = arith_divf_88; 
  }
  for (int for_iter_89 = arith_const_15; for_iter_89 < arith_const_7; for_iter_89 += arith_const_14) {
    for (int for_iter_90 = arith_const_15; for_iter_90 < arith_const_9; for_iter_90 += arith_const_12) {
      double memref_load_91 = func_arg_6[for_iter_90]; 
      double memref_load_92 = func_arg_3[for_iter_89][for_iter_90]; 
      double memref_load_93 = func_arg_5[for_iter_90]; 
      double arith_subf_94 = (memref_load_92 - memref_load_93); 
      double arith_mulf_95 = (arith_subf_94 * arith_subf_94); 
      double arith_addf_96 = (memref_load_91 + arith_mulf_95); 
      func_arg_6[for_iter_90] = arith_addf_96; 
      double memref_load_97 = func_arg_3[for_iter_89][for_iter_90]; 
      double memref_load_98 = func_arg_5[for_iter_90]; 
      double arith_subf_99 = (memref_load_97 - memref_load_98); 
      func_arg_3[for_iter_89][for_iter_90] = arith_subf_99; 
      int arith_addi_100 = (for_iter_90 + arith_const_14); 
      double memref_load_101 = func_arg_6[arith_addi_100]; 
      double memref_load_102 = func_arg_3[for_iter_89][arith_addi_100]; 
      double memref_load_103 = func_arg_5[arith_addi_100]; 
      double arith_subf_104 = (memref_load_102 - memref_load_103); 
      double arith_mulf_105 = (arith_subf_104 * arith_subf_104); 
      double arith_addf_106 = (memref_load_101 + arith_mulf_105); 
      func_arg_6[arith_addi_100] = arith_addf_106; 
      double memref_load_107 = func_arg_3[for_iter_89][arith_addi_100]; 
      double memref_load_108 = func_arg_5[arith_addi_100]; 
      double arith_subf_109 = (memref_load_107 - memref_load_108); 
      func_arg_3[for_iter_89][arith_addi_100] = arith_subf_109; 
      int arith_addi_110 = (for_iter_90 + arith_const_11); 
      double memref_load_111 = func_arg_6[arith_addi_110]; 
      double memref_load_112 = func_arg_3[for_iter_89][arith_addi_110]; 
      double memref_load_113 = func_arg_5[arith_addi_110]; 
      double arith_subf_114 = (memref_load_112 - memref_load_113); 
      double arith_mulf_115 = (arith_subf_114 * arith_subf_114); 
      double arith_addf_116 = (memref_load_111 + arith_mulf_115); 
      func_arg_6[arith_addi_110] = arith_addf_116; 
      double memref_load_117 = func_arg_3[for_iter_89][arith_addi_110]; 
      double memref_load_118 = func_arg_5[arith_addi_110]; 
      double arith_subf_119 = (memref_load_117 - memref_load_118); 
      func_arg_3[for_iter_89][arith_addi_110] = arith_subf_119; 
      int arith_addi_120 = (for_iter_90 + arith_const_10); 
      double memref_load_121 = func_arg_6[arith_addi_120]; 
      double memref_load_122 = func_arg_3[for_iter_89][arith_addi_120]; 
      double memref_load_123 = func_arg_5[arith_addi_120]; 
      double arith_subf_124 = (memref_load_122 - memref_load_123); 
      double arith_mulf_125 = (arith_subf_124 * arith_subf_124); 
      double arith_addf_126 = (memref_load_121 + arith_mulf_125); 
      func_arg_6[arith_addi_120] = arith_addf_126; 
      double memref_load_127 = func_arg_3[for_iter_89][arith_addi_120]; 
      double memref_load_128 = func_arg_5[arith_addi_120]; 
      double arith_subf_129 = (memref_load_127 - memref_load_128); 
      func_arg_3[for_iter_89][arith_addi_120] = arith_subf_129; 
    }
  }
  for (int for_iter_130 = arith_const_15; for_iter_130 < arith_const_9; for_iter_130 += arith_const_12) {
    double memref_load_131 = func_arg_6[for_iter_130]; 
    double arith_divf_132 = (memref_load_131 / func_arg_2); 
    double math_sqrt_133 = sqrt(arith_divf_132); 
    int arith_cmpi_134 = (math_sqrt_133 <= arith_const_17); 
    double arith_select_135 = (arith_cmpi_134 ? arith_const_19 : math_sqrt_133); 
    func_arg_6[for_iter_130] = arith_select_135; 
    int arith_addi_136 = (for_iter_130 + arith_const_14); 
    double memref_load_137 = func_arg_6[arith_addi_136]; 
    double arith_divf_138 = (memref_load_137 / func_arg_2); 
    double math_sqrt_139 = sqrt(arith_divf_138); 
    int arith_cmpi_140 = (math_sqrt_139 <= arith_const_17); 
    double arith_select_141 = (arith_cmpi_140 ? arith_const_19 : math_sqrt_139); 
    func_arg_6[arith_addi_136] = arith_select_141; 
    int arith_addi_142 = (for_iter_130 + arith_const_11); 
    double memref_load_143 = func_arg_6[arith_addi_142]; 
    double arith_divf_144 = (memref_load_143 / func_arg_2); 
    double math_sqrt_145 = sqrt(arith_divf_144); 
    int arith_cmpi_146 = (math_sqrt_145 <= arith_const_17); 
    double arith_select_147 = (arith_cmpi_146 ? arith_const_19 : math_sqrt_145); 
    func_arg_6[arith_addi_142] = arith_select_147; 
    int arith_addi_148 = (for_iter_130 + arith_const_10); 
    double memref_load_149 = func_arg_6[arith_addi_148]; 
    double arith_divf_150 = (memref_load_149 / func_arg_2); 
    double math_sqrt_151 = sqrt(arith_divf_150); 
    int arith_cmpi_152 = (math_sqrt_151 <= arith_const_17); 
    double arith_select_153 = (arith_cmpi_152 ? arith_const_19 : math_sqrt_151); 
    func_arg_6[arith_addi_148] = arith_select_153; 
  }
  for (int for_iter_154 = arith_const_15; for_iter_154 < arith_const_7; for_iter_154 += arith_const_14) {
    for (int for_iter_155 = arith_const_15; for_iter_155 < arith_const_9; for_iter_155 += arith_const_12) {
      double memref_load_156 = func_arg_3[for_iter_154][for_iter_155]; 
      double memref_load_157 = memref_alloca_20[arith_const_15]; 
      double memref_load_158 = func_arg_6[for_iter_155]; 
      double arith_mulf_159 = (memref_load_157 * memref_load_158); 
      double arith_divf_160 = (memref_load_156 / arith_mulf_159); 
      func_arg_3[for_iter_154][for_iter_155] = arith_divf_160; 
      int arith_addi_161 = (for_iter_155 + arith_const_14); 
      double memref_load_162 = func_arg_3[for_iter_154][arith_addi_161]; 
      double memref_load_163 = memref_alloca_20[arith_const_15]; 
      double memref_load_164 = func_arg_6[arith_addi_161]; 
      double arith_mulf_165 = (memref_load_163 * memref_load_164); 
      double arith_divf_166 = (memref_load_162 / arith_mulf_165); 
      func_arg_3[for_iter_154][arith_addi_161] = arith_divf_166; 
      int arith_addi_167 = (for_iter_155 + arith_const_11); 
      double memref_load_168 = func_arg_3[for_iter_154][arith_addi_167]; 
      double memref_load_169 = memref_alloca_20[arith_const_15]; 
      double memref_load_170 = func_arg_6[arith_addi_167]; 
      double arith_mulf_171 = (memref_load_169 * memref_load_170); 
      double arith_divf_172 = (memref_load_168 / arith_mulf_171); 
      func_arg_3[for_iter_154][arith_addi_167] = arith_divf_172; 
      int arith_addi_173 = (for_iter_155 + arith_const_10); 
      double memref_load_174 = func_arg_3[for_iter_154][arith_addi_173]; 
      double memref_load_175 = memref_alloca_20[arith_const_15]; 
      double memref_load_176 = func_arg_6[arith_addi_173]; 
      double arith_mulf_177 = (memref_load_175 * memref_load_176); 
      double arith_divf_178 = (memref_load_174 / arith_mulf_177); 
      func_arg_3[for_iter_154][arith_addi_173] = arith_divf_178; 
    }
  }
  for (int for_iter_179 = arith_const_15; for_iter_179 < arith_const_16; for_iter_179 += arith_const_14) {
    for (int for_iter_180 = arith_const_15; for_iter_180 < arith_const_7; for_iter_180 += arith_const_14) {
      int arith_addi_181 = (for_iter_179 + arith_const_14); 
      int arith_muli_182 = (for_iter_179 * arith_const_13); 
      int arith_addi_183 = (arith_muli_182 + arith_const_16); 
      int arith_cmpi_184 = (arith_addi_183 < arith_const_15); 
      int arith_subi_185 = (arith_const_13 - arith_addi_183); 
      int arith_select_186 = (arith_cmpi_184 ? arith_subi_185 : arith_addi_183); 
      int arith_divi_187 = (arith_select_186 / arith_const_12); 
      int arith_subi_188 = (arith_const_13 - arith_divi_187); 
      int arith_select_189 = (arith_cmpi_184 ? arith_subi_188 : arith_divi_187); 
      int arith_muli_190 = (arith_select_189 * arith_const_12); 
      int arith_addi_191 = (for_iter_179 + arith_muli_190); 
      int arith_addi_192 = (arith_addi_191 + arith_const_14); 
      for (int for_iter_193 = arith_addi_181; for_iter_193 < arith_addi_192; for_iter_193 += arith_const_12) {
        double memref_load_194 = func_arg_4[for_iter_179][for_iter_193]; 
        double memref_load_195 = func_arg_3[for_iter_180][for_iter_179]; 
        double memref_load_196 = func_arg_3[for_iter_180][for_iter_193]; 
        double arith_mulf_197 = (memref_load_195 * memref_load_196); 
        double arith_addf_198 = (memref_load_194 + arith_mulf_197); 
        func_arg_4[for_iter_179][for_iter_193] = arith_addf_198; 
        int arith_addi_199 = (for_iter_193 + arith_const_14); 
        double memref_load_200 = func_arg_4[for_iter_179][arith_addi_199]; 
        double memref_load_201 = func_arg_3[for_iter_180][for_iter_179]; 
        double memref_load_202 = func_arg_3[for_iter_180][arith_addi_199]; 
        double arith_mulf_203 = (memref_load_201 * memref_load_202); 
        double arith_addf_204 = (memref_load_200 + arith_mulf_203); 
        func_arg_4[for_iter_179][arith_addi_199] = arith_addf_204; 
        int arith_addi_205 = (for_iter_193 + arith_const_11); 
        double memref_load_206 = func_arg_4[for_iter_179][arith_addi_205]; 
        double memref_load_207 = func_arg_3[for_iter_180][for_iter_179]; 
        double memref_load_208 = func_arg_3[for_iter_180][arith_addi_205]; 
        double arith_mulf_209 = (memref_load_207 * memref_load_208); 
        double arith_addf_210 = (memref_load_206 + arith_mulf_209); 
        func_arg_4[for_iter_179][arith_addi_205] = arith_addf_210; 
        int arith_addi_211 = (for_iter_193 + arith_const_10); 
        double memref_load_212 = func_arg_4[for_iter_179][arith_addi_211]; 
        double memref_load_213 = func_arg_3[for_iter_180][for_iter_179]; 
        double memref_load_214 = func_arg_3[for_iter_180][arith_addi_211]; 
        double arith_mulf_215 = (memref_load_213 * memref_load_214); 
        double arith_addf_216 = (memref_load_212 + arith_mulf_215); 
        func_arg_4[for_iter_179][arith_addi_211] = arith_addf_216; 
      }
      int arith_muli_217 = (for_iter_179 * arith_const_13); 
      int arith_addi_218 = (arith_muli_217 + arith_const_16); 
      int arith_cmpi_219 = (arith_addi_218 < arith_const_15); 
      int arith_subi_220 = (arith_const_13 - arith_addi_218); 
      int arith_select_221 = (arith_cmpi_219 ? arith_subi_220 : arith_addi_218); 
      int arith_divi_222 = (arith_select_221 / arith_const_12); 
      int arith_subi_223 = (arith_const_13 - arith_divi_222); 
      int arith_select_224 = (arith_cmpi_219 ? arith_subi_223 : arith_divi_222); 
      int arith_muli_225 = (arith_select_224 * arith_const_12); 
      int arith_addi_226 = (for_iter_179 + arith_muli_225); 
      int arith_addi_227 = (arith_addi_226 + arith_const_14); 
      for (int for_iter_228 = arith_addi_227; for_iter_228 < arith_const_9; for_iter_228 += arith_const_14) {
        double memref_load_229 = func_arg_4[for_iter_179][for_iter_228]; 
        double memref_load_230 = func_arg_3[for_iter_180][for_iter_179]; 
        double memref_load_231 = func_arg_3[for_iter_180][for_iter_228]; 
        double arith_mulf_232 = (memref_load_230 * memref_load_231); 
        double arith_addf_233 = (memref_load_229 + arith_mulf_232); 
        func_arg_4[for_iter_179][for_iter_228] = arith_addf_233; 
      }
    }
  }
  for (int for_iter_234 = arith_const_15; for_iter_234 < arith_const_16; for_iter_234 += arith_const_14) {
    int arith_addi_235 = (for_iter_234 + arith_const_14); 
    int arith_muli_236 = (for_iter_234 * arith_const_13); 
    int arith_addi_237 = (arith_muli_236 + arith_const_16); 
    int arith_cmpi_238 = (arith_addi_237 < arith_const_15); 
    int arith_subi_239 = (arith_const_13 - arith_addi_237); 
    int arith_select_240 = (arith_cmpi_238 ? arith_subi_239 : arith_addi_237); 
    int arith_divi_241 = (arith_select_240 / arith_const_12); 
    int arith_subi_242 = (arith_const_13 - arith_divi_241); 
    int arith_select_243 = (arith_cmpi_238 ? arith_subi_242 : arith_divi_241); 
    int arith_muli_244 = (arith_select_243 * arith_const_12); 
    int arith_addi_245 = (for_iter_234 + arith_muli_244); 
    int arith_addi_246 = (arith_addi_245 + arith_const_14); 
    for (int for_iter_247 = arith_addi_235; for_iter_247 < arith_addi_246; for_iter_247 += arith_const_12) {
      double memref_load_248 = func_arg_4[for_iter_234][for_iter_247]; 
      func_arg_4[for_iter_247][for_iter_234] = memref_load_248; 
      int arith_addi_249 = (for_iter_247 + arith_const_14); 
      double memref_load_250 = func_arg_4[for_iter_234][arith_addi_249]; 
      func_arg_4[arith_addi_249][for_iter_234] = memref_load_250; 
      int arith_addi_251 = (for_iter_247 + arith_const_11); 
      double memref_load_252 = func_arg_4[for_iter_234][arith_addi_251]; 
      func_arg_4[arith_addi_251][for_iter_234] = memref_load_252; 
      int arith_addi_253 = (for_iter_247 + arith_const_10); 
      double memref_load_254 = func_arg_4[for_iter_234][arith_addi_253]; 
      func_arg_4[arith_addi_253][for_iter_234] = memref_load_254; 
    }
    int arith_muli_255 = (for_iter_234 * arith_const_13); 
    int arith_addi_256 = (arith_muli_255 + arith_const_16); 
    int arith_cmpi_257 = (arith_addi_256 < arith_const_15); 
    int arith_subi_258 = (arith_const_13 - arith_addi_256); 
    int arith_select_259 = (arith_cmpi_257 ? arith_subi_258 : arith_addi_256); 
    int arith_divi_260 = (arith_select_259 / arith_const_12); 
    int arith_subi_261 = (arith_const_13 - arith_divi_260); 
    int arith_select_262 = (arith_cmpi_257 ? arith_subi_261 : arith_divi_260); 
    int arith_muli_263 = (arith_select_262 * arith_const_12); 
    int arith_addi_264 = (for_iter_234 + arith_muli_263); 
    int arith_addi_265 = (arith_addi_264 + arith_const_14); 
    for (int for_iter_266 = arith_addi_265; for_iter_266 < arith_const_9; for_iter_266 += arith_const_14) {
      double memref_load_267 = func_arg_4[for_iter_234][for_iter_266]; 
      func_arg_4[for_iter_266][for_iter_234] = memref_load_267; 
    }
  }
  return; 

}
#pragma pocc-region-end
