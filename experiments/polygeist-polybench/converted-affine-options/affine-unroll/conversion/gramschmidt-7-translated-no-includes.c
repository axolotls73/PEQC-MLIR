#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = -28; 
  int arith_const_6 = 31; 
  int arith_const_7 = 38; 
  int arith_const_8 = 10; 
  int arith_const_9 = 16; 
  int arith_const_10 = 5; 
  int arith_const_11 = -19; 
  int arith_const_12 = 39; 
  int arith_const_13 = 32; 
  int arith_const_14 = 19; 
  int arith_const_15 = 20; 
  int arith_const_16 = 30; 
  int arith_const_17 = 3; 
  int arith_const_18 = 2; 
  int arith_const_19 = 4; 
  int arith_const_20 = -1; 
  int arith_const_21 = 1; 
  int arith_const_22 = 29; 
  int arith_const_23 = 0; 
  double _24; 
  double arith_const_25 = 0.000000; 
  double* memref_alloca_26; 
  for (int for_iter_27 = arith_const_23; for_iter_27 < arith_const_22; for_iter_27 += arith_const_21) {
    int arith_addi_28 = (for_iter_27 + arith_const_21); 
    int arith_muli_29 = (for_iter_27 * arith_const_20); 
    int arith_addi_30 = (arith_muli_29 + arith_const_22); 
    int arith_cmpi_31 = (arith_addi_30 < arith_const_23); 
    int arith_subi_32 = (arith_const_20 - arith_addi_30); 
    int arith_select_33 = (arith_cmpi_31 ? arith_subi_32 : arith_addi_30); 
    int arith_divi_34 = (arith_select_33 / arith_const_19); 
    int arith_subi_35 = (arith_const_20 - arith_divi_34); 
    int arith_select_36 = (arith_cmpi_31 ? arith_subi_35 : arith_divi_34); 
    int arith_muli_37 = (arith_select_36 * arith_const_19); 
    int arith_addi_38 = (for_iter_27 + arith_muli_37); 
    int arith_addi_39 = (arith_addi_38 + arith_const_21); 
    for (int for_iter_40 = arith_addi_28; for_iter_40 < arith_addi_39; for_iter_40 += arith_const_19) {
      func_arg_3[for_iter_27][for_iter_40] = arith_const_25; 
      int arith_addi_41 = (for_iter_40 + arith_const_21); 
      func_arg_3[for_iter_27][arith_addi_41] = arith_const_25; 
      int arith_addi_42 = (for_iter_40 + arith_const_18); 
      func_arg_3[for_iter_27][arith_addi_42] = arith_const_25; 
      int arith_addi_43 = (for_iter_40 + arith_const_17); 
      func_arg_3[for_iter_27][arith_addi_43] = arith_const_25; 
    }
    int arith_muli_44 = (for_iter_27 * arith_const_20); 
    int arith_addi_45 = (arith_muli_44 + arith_const_22); 
    int arith_cmpi_46 = (arith_addi_45 < arith_const_23); 
    int arith_subi_47 = (arith_const_20 - arith_addi_45); 
    int arith_select_48 = (arith_cmpi_46 ? arith_subi_47 : arith_addi_45); 
    int arith_divi_49 = (arith_select_48 / arith_const_19); 
    int arith_subi_50 = (arith_const_20 - arith_divi_49); 
    int arith_select_51 = (arith_cmpi_46 ? arith_subi_50 : arith_divi_49); 
    int arith_muli_52 = (arith_select_51 * arith_const_19); 
    int arith_addi_53 = (for_iter_27 + arith_muli_52); 
    int arith_addi_54 = (arith_addi_53 + arith_const_21); 
    for (int for_iter_55 = arith_addi_54; for_iter_55 < arith_const_16; for_iter_55 += arith_const_21) {
      func_arg_3[for_iter_27][for_iter_55] = arith_const_25; 
    }
  }
  memref_alloca_26[0] = _24; 
  for (int for_iter_56 = arith_const_23; for_iter_56 < arith_const_16; for_iter_56 += arith_const_21) {
    for (int for_iter_57 = arith_const_23; for_iter_57 < arith_const_18; for_iter_57 += arith_const_21) {
      int arith_cmpi_58 = (for_iter_57 == arith_const_23); 
      if (arith_cmpi_58) {
        for (int for_iter_59 = arith_const_23; for_iter_59 < arith_const_15; for_iter_59 += arith_const_19) {
          double memref_load_60 = memref_alloca_26[0]; 
          double memref_load_61 = func_arg_2[for_iter_59][for_iter_56]; 
          double arith_mulf_62 = (memref_load_61 * memref_load_61); 
          double arith_addf_63 = (memref_load_60 + arith_mulf_62); 
          memref_alloca_26[0] = arith_addf_63; 
          int arith_addi_64 = (for_iter_59 + arith_const_21); 
          double memref_load_65 = memref_alloca_26[0]; 
          double memref_load_66 = func_arg_2[arith_addi_64][for_iter_56]; 
          double arith_mulf_67 = (memref_load_66 * memref_load_66); 
          double arith_addf_68 = (memref_load_65 + arith_mulf_67); 
          memref_alloca_26[0] = arith_addf_68; 
          int arith_addi_69 = (for_iter_59 + arith_const_18); 
          double memref_load_70 = memref_alloca_26[0]; 
          double memref_load_71 = func_arg_2[arith_addi_69][for_iter_56]; 
          double arith_mulf_72 = (memref_load_71 * memref_load_71); 
          double arith_addf_73 = (memref_load_70 + arith_mulf_72); 
          memref_alloca_26[0] = arith_addf_73; 
          int arith_addi_74 = (for_iter_59 + arith_const_17); 
          double memref_load_75 = memref_alloca_26[0]; 
          double memref_load_76 = func_arg_2[arith_addi_74][for_iter_56]; 
          double arith_mulf_77 = (memref_load_76 * memref_load_76); 
          double arith_addf_78 = (memref_load_75 + arith_mulf_77); 
          memref_alloca_26[0] = arith_addf_78; 
        }
      }
      int arith_muli_79 = (for_iter_57 * arith_const_13); 
      int arith_maxsi_80 = max(arith_muli_79, arith_const_14); 
      int arith_muli_81 = (for_iter_57 * arith_const_13); 
      int arith_addi_82 = (arith_muli_81 + arith_const_13); 
      int arith_minsi_83 = min(arith_addi_82, arith_const_12); 
      for (int for_iter_84 = arith_maxsi_80; for_iter_84 < arith_minsi_83; for_iter_84 += arith_const_21) {
        int arith_addi_85 = (for_iter_84 + arith_const_11); 
        double memref_load_86 = func_arg_2[arith_addi_85][for_iter_56]; 
        double memref_load_87 = func_arg_3[for_iter_56][for_iter_56]; 
        double arith_divf_88 = (memref_load_86 / memref_load_87); 
        int arith_addi_89 = (for_iter_84 + arith_const_11); 
        func_arg_4[arith_addi_89][for_iter_56] = arith_divf_88; 
      }
      int arith_cmpi_90 = (for_iter_57 == arith_const_23); 
      if (arith_cmpi_90) {
        memref_alloca_26[0] = arith_const_25; 
      }
    }
    int arith_muli_91 = (for_iter_56 * arith_const_10); 
    int arith_addi_92 = (arith_muli_91 + arith_const_19); 
    int arith_cmpi_93 = (arith_addi_92 <= arith_const_23); 
    int arith_subi_94 = (arith_const_23 - arith_addi_92); 
    int arith_subi_95 = (arith_addi_92 - arith_const_21); 
    int arith_select_96 = (arith_cmpi_93 ? arith_subi_94 : arith_subi_95); 
    int arith_divi_97 = (arith_select_96 / arith_const_9); 
    int arith_subi_98 = (arith_const_23 - arith_divi_97); 
    int arith_addi_99 = (arith_divi_97 + arith_const_21); 
    int arith_select_100 = (arith_cmpi_93 ? arith_subi_98 : arith_addi_99); 
    for (int for_iter_101 = arith_select_100; for_iter_101 < arith_const_8; for_iter_101 += arith_const_21) {
      for (int for_iter_102 = arith_const_23; for_iter_102 < arith_const_18; for_iter_102 += arith_const_21) {
        int arith_cmpi_103 = (for_iter_102 == arith_const_23); 
        if (arith_cmpi_103) {
          for (int for_iter_104 = arith_const_23; for_iter_104 < arith_const_14; for_iter_104 += arith_const_21) {
            int arith_muli_105 = (for_iter_101 * arith_const_13); 
            int arith_muli_106 = (for_iter_56 * arith_const_8); 
            int arith_addi_107 = (arith_muli_106 + arith_const_7); 
            int arith_maxsi_108 = max(arith_muli_105, arith_addi_107); 
            int arith_muli_109 = (for_iter_101 * arith_const_13); 
            int arith_addi_110 = (arith_muli_109 + arith_const_6); 
            for (int for_iter_111 = arith_maxsi_108; for_iter_111 < arith_addi_110; for_iter_111 += arith_const_21) {
              int arith_addi_112 = (for_iter_111 + arith_const_18); 
              int arith_remsi_113 = (arith_addi_112 % arith_const_8); 
              int arith_cmpi_114 = (arith_remsi_113 < arith_const_23); 
              int arith_addi_115 = (arith_remsi_113 + arith_const_8); 
              int arith_select_116 = (arith_cmpi_114 ? arith_addi_115 : arith_remsi_113); 
              int arith_cmpi_117 = (arith_select_116 == arith_const_23); 
              if (arith_cmpi_117) {
                int arith_addi_118 = (for_iter_111 + arith_const_5); 
                int arith_cmpi_119 = (arith_addi_118 <= arith_const_23); 
                int arith_subi_120 = (arith_const_23 - arith_addi_118); 
                int arith_subi_121 = (arith_addi_118 - arith_const_21); 
                int arith_select_122 = (arith_cmpi_119 ? arith_subi_120 : arith_subi_121); 
                int arith_divi_123 = (arith_select_122 / arith_const_8); 
                int arith_subi_124 = (arith_const_23 - arith_divi_123); 
                int arith_addi_125 = (arith_divi_123 + arith_const_21); 
                int arith_select_126 = (arith_cmpi_119 ? arith_subi_124 : arith_addi_125); 
                double memref_load_127 = func_arg_3[for_iter_56][arith_select_126]; 
                double memref_load_128 = func_arg_4[for_iter_104][for_iter_56]; 
                int arith_addi_129 = (for_iter_111 + arith_const_5); 
                int arith_cmpi_130 = (arith_addi_129 <= arith_const_23); 
                int arith_subi_131 = (arith_const_23 - arith_addi_129); 
                int arith_subi_132 = (arith_addi_129 - arith_const_21); 
                int arith_select_133 = (arith_cmpi_130 ? arith_subi_131 : arith_subi_132); 
                int arith_divi_134 = (arith_select_133 / arith_const_8); 
                int arith_subi_135 = (arith_const_23 - arith_divi_134); 
                int arith_addi_136 = (arith_divi_134 + arith_const_21); 
                int arith_select_137 = (arith_cmpi_130 ? arith_subi_135 : arith_addi_136); 
                double memref_load_138 = func_arg_2[for_iter_104][arith_select_137]; 
                double arith_mulf_139 = (memref_load_128 * memref_load_138); 
                double arith_addf_140 = (memref_load_127 + arith_mulf_139); 
                int arith_addi_141 = (for_iter_111 + arith_const_5); 
                int arith_cmpi_142 = (arith_addi_141 <= arith_const_23); 
                int arith_subi_143 = (arith_const_23 - arith_addi_141); 
                int arith_subi_144 = (arith_addi_141 - arith_const_21); 
                int arith_select_145 = (arith_cmpi_142 ? arith_subi_143 : arith_subi_144); 
                int arith_divi_146 = (arith_select_145 / arith_const_8); 
                int arith_subi_147 = (arith_const_23 - arith_divi_146); 
                int arith_addi_148 = (arith_divi_146 + arith_const_21); 
                int arith_select_149 = (arith_cmpi_142 ? arith_subi_147 : arith_addi_148); 
                func_arg_3[for_iter_56][arith_select_149] = arith_addf_140; 
              }
            }
          }
        }
        int arith_cmpi_150 = (for_iter_102 == arith_const_23); 
        if (arith_cmpi_150) {
          int arith_muli_151 = (for_iter_101 * arith_const_13); 
          int arith_muli_152 = (for_iter_56 * arith_const_8); 
          int arith_addi_153 = (arith_muli_152 + arith_const_7); 
          int arith_maxsi_154 = max(arith_muli_151, arith_addi_153); 
          int arith_muli_155 = (for_iter_101 * arith_const_13); 
          int arith_addi_156 = (arith_muli_155 + arith_const_6); 
          for (int for_iter_157 = arith_maxsi_154; for_iter_157 < arith_addi_156; for_iter_157 += arith_const_21) {
            int arith_addi_158 = (for_iter_157 + arith_const_18); 
            int arith_remsi_159 = (arith_addi_158 % arith_const_8); 
            int arith_cmpi_160 = (arith_remsi_159 < arith_const_23); 
            int arith_addi_161 = (arith_remsi_159 + arith_const_8); 
            int arith_select_162 = (arith_cmpi_160 ? arith_addi_161 : arith_remsi_159); 
            int arith_cmpi_163 = (arith_select_162 == arith_const_23); 
            if (arith_cmpi_163) {
              int arith_addi_164 = (for_iter_157 + arith_const_5); 
              int arith_cmpi_165 = (arith_addi_164 <= arith_const_23); 
              int arith_subi_166 = (arith_const_23 - arith_addi_164); 
              int arith_subi_167 = (arith_addi_164 - arith_const_21); 
              int arith_select_168 = (arith_cmpi_165 ? arith_subi_166 : arith_subi_167); 
              int arith_divi_169 = (arith_select_168 / arith_const_8); 
              int arith_subi_170 = (arith_const_23 - arith_divi_169); 
              int arith_addi_171 = (arith_divi_169 + arith_const_21); 
              int arith_select_172 = (arith_cmpi_165 ? arith_subi_170 : arith_addi_171); 
              double memref_load_173 = func_arg_3[for_iter_56][arith_select_172]; 
              double memref_load_174 = func_arg_4[arith_const_14][for_iter_56]; 
              int arith_addi_175 = (for_iter_157 + arith_const_5); 
              int arith_cmpi_176 = (arith_addi_175 <= arith_const_23); 
              int arith_subi_177 = (arith_const_23 - arith_addi_175); 
              int arith_subi_178 = (arith_addi_175 - arith_const_21); 
              int arith_select_179 = (arith_cmpi_176 ? arith_subi_177 : arith_subi_178); 
              int arith_divi_180 = (arith_select_179 / arith_const_8); 
              int arith_subi_181 = (arith_const_23 - arith_divi_180); 
              int arith_addi_182 = (arith_divi_180 + arith_const_21); 
              int arith_select_183 = (arith_cmpi_176 ? arith_subi_181 : arith_addi_182); 
              double memref_load_184 = func_arg_2[arith_const_14][arith_select_183]; 
              double arith_mulf_185 = (memref_load_174 * memref_load_184); 
              double arith_addf_186 = (memref_load_173 + arith_mulf_185); 
              int arith_addi_187 = (for_iter_157 + arith_const_5); 
              int arith_cmpi_188 = (arith_addi_187 <= arith_const_23); 
              int arith_subi_189 = (arith_const_23 - arith_addi_187); 
              int arith_subi_190 = (arith_addi_187 - arith_const_21); 
              int arith_select_191 = (arith_cmpi_188 ? arith_subi_189 : arith_subi_190); 
              int arith_divi_192 = (arith_select_191 / arith_const_8); 
              int arith_subi_193 = (arith_const_23 - arith_divi_192); 
              int arith_addi_194 = (arith_divi_192 + arith_const_21); 
              int arith_select_195 = (arith_cmpi_188 ? arith_subi_193 : arith_addi_194); 
              func_arg_3[for_iter_56][arith_select_195] = arith_addf_186; 
            }
            int arith_addi_196 = (for_iter_157 + arith_const_18); 
            int arith_remsi_197 = (arith_addi_196 % arith_const_8); 
            int arith_cmpi_198 = (arith_remsi_197 < arith_const_23); 
            int arith_addi_199 = (arith_remsi_197 + arith_const_8); 
            int arith_select_200 = (arith_cmpi_198 ? arith_addi_199 : arith_remsi_197); 
            int arith_cmpi_201 = (arith_select_200 == arith_const_23); 
            if (arith_cmpi_201) {
              int arith_addi_202 = (for_iter_157 + arith_const_5); 
              int arith_cmpi_203 = (arith_addi_202 <= arith_const_23); 
              int arith_subi_204 = (arith_const_23 - arith_addi_202); 
              int arith_subi_205 = (arith_addi_202 - arith_const_21); 
              int arith_select_206 = (arith_cmpi_203 ? arith_subi_204 : arith_subi_205); 
              int arith_divi_207 = (arith_select_206 / arith_const_8); 
              int arith_subi_208 = (arith_const_23 - arith_divi_207); 
              int arith_addi_209 = (arith_divi_207 + arith_const_21); 
              int arith_select_210 = (arith_cmpi_203 ? arith_subi_208 : arith_addi_209); 
              double memref_load_211 = func_arg_2[arith_const_23][arith_select_210]; 
              double memref_load_212 = func_arg_4[arith_const_23][for_iter_56]; 
              int arith_addi_213 = (for_iter_157 + arith_const_5); 
              int arith_cmpi_214 = (arith_addi_213 <= arith_const_23); 
              int arith_subi_215 = (arith_const_23 - arith_addi_213); 
              int arith_subi_216 = (arith_addi_213 - arith_const_21); 
              int arith_select_217 = (arith_cmpi_214 ? arith_subi_215 : arith_subi_216); 
              int arith_divi_218 = (arith_select_217 / arith_const_8); 
              int arith_subi_219 = (arith_const_23 - arith_divi_218); 
              int arith_addi_220 = (arith_divi_218 + arith_const_21); 
              int arith_select_221 = (arith_cmpi_214 ? arith_subi_219 : arith_addi_220); 
              double memref_load_222 = func_arg_3[for_iter_56][arith_select_221]; 
              double arith_mulf_223 = (memref_load_212 * memref_load_222); 
              double arith_subf_224 = (memref_load_211 - arith_mulf_223); 
              int arith_addi_225 = (for_iter_157 + arith_const_5); 
              int arith_cmpi_226 = (arith_addi_225 <= arith_const_23); 
              int arith_subi_227 = (arith_const_23 - arith_addi_225); 
              int arith_subi_228 = (arith_addi_225 - arith_const_21); 
              int arith_select_229 = (arith_cmpi_226 ? arith_subi_227 : arith_subi_228); 
              int arith_divi_230 = (arith_select_229 / arith_const_8); 
              int arith_subi_231 = (arith_const_23 - arith_divi_230); 
              int arith_addi_232 = (arith_divi_230 + arith_const_21); 
              int arith_select_233 = (arith_cmpi_226 ? arith_subi_231 : arith_addi_232); 
              func_arg_2[arith_const_23][arith_select_233] = arith_subf_224; 
            }
          }
        }
        int arith_muli_234 = (for_iter_102 * arith_const_13); 
        int arith_maxsi_235 = max(arith_muli_234, arith_const_15); 
        int arith_muli_236 = (for_iter_102 * arith_const_13); 
        int arith_addi_237 = (arith_muli_236 + arith_const_13); 
        int arith_minsi_238 = min(arith_addi_237, arith_const_12); 
        for (int for_iter_239 = arith_maxsi_235; for_iter_239 < arith_minsi_238; for_iter_239 += arith_const_21) {
          int arith_muli_240 = (for_iter_101 * arith_const_13); 
          int arith_muli_241 = (for_iter_56 * arith_const_8); 
          int arith_addi_242 = (arith_muli_241 + arith_const_7); 
          int arith_maxsi_243 = max(arith_muli_240, arith_addi_242); 
          int arith_muli_244 = (for_iter_101 * arith_const_13); 
          int arith_addi_245 = (arith_muli_244 + arith_const_6); 
          for (int for_iter_246 = arith_maxsi_243; for_iter_246 < arith_addi_245; for_iter_246 += arith_const_21) {
            int arith_addi_247 = (for_iter_246 + arith_const_18); 
            int arith_remsi_248 = (arith_addi_247 % arith_const_8); 
            int arith_cmpi_249 = (arith_remsi_248 < arith_const_23); 
            int arith_addi_250 = (arith_remsi_248 + arith_const_8); 
            int arith_select_251 = (arith_cmpi_249 ? arith_addi_250 : arith_remsi_248); 
            int arith_cmpi_252 = (arith_select_251 == arith_const_23); 
            if (arith_cmpi_252) {
              int arith_addi_253 = (for_iter_239 + arith_const_11); 
              int arith_addi_254 = (for_iter_246 + arith_const_5); 
              int arith_cmpi_255 = (arith_addi_254 <= arith_const_23); 
              int arith_subi_256 = (arith_const_23 - arith_addi_254); 
              int arith_subi_257 = (arith_addi_254 - arith_const_21); 
              int arith_select_258 = (arith_cmpi_255 ? arith_subi_256 : arith_subi_257); 
              int arith_divi_259 = (arith_select_258 / arith_const_8); 
              int arith_subi_260 = (arith_const_23 - arith_divi_259); 
              int arith_addi_261 = (arith_divi_259 + arith_const_21); 
              int arith_select_262 = (arith_cmpi_255 ? arith_subi_260 : arith_addi_261); 
              double memref_load_263 = func_arg_2[arith_addi_253][arith_select_262]; 
              int arith_addi_264 = (for_iter_239 + arith_const_11); 
              double memref_load_265 = func_arg_4[arith_addi_264][for_iter_56]; 
              int arith_addi_266 = (for_iter_246 + arith_const_5); 
              int arith_cmpi_267 = (arith_addi_266 <= arith_const_23); 
              int arith_subi_268 = (arith_const_23 - arith_addi_266); 
              int arith_subi_269 = (arith_addi_266 - arith_const_21); 
              int arith_select_270 = (arith_cmpi_267 ? arith_subi_268 : arith_subi_269); 
              int arith_divi_271 = (arith_select_270 / arith_const_8); 
              int arith_subi_272 = (arith_const_23 - arith_divi_271); 
              int arith_addi_273 = (arith_divi_271 + arith_const_21); 
              int arith_select_274 = (arith_cmpi_267 ? arith_subi_272 : arith_addi_273); 
              double memref_load_275 = func_arg_3[for_iter_56][arith_select_274]; 
              double arith_mulf_276 = (memref_load_265 * memref_load_275); 
              double arith_subf_277 = (memref_load_263 - arith_mulf_276); 
              int arith_addi_278 = (for_iter_239 + arith_const_11); 
              int arith_addi_279 = (for_iter_246 + arith_const_5); 
              int arith_cmpi_280 = (arith_addi_279 <= arith_const_23); 
              int arith_subi_281 = (arith_const_23 - arith_addi_279); 
              int arith_subi_282 = (arith_addi_279 - arith_const_21); 
              int arith_select_283 = (arith_cmpi_280 ? arith_subi_281 : arith_subi_282); 
              int arith_divi_284 = (arith_select_283 / arith_const_8); 
              int arith_subi_285 = (arith_const_23 - arith_divi_284); 
              int arith_addi_286 = (arith_divi_284 + arith_const_21); 
              int arith_select_287 = (arith_cmpi_280 ? arith_subi_285 : arith_addi_286); 
              func_arg_2[arith_addi_278][arith_select_287] = arith_subf_277; 
            }
          }
        }
      }
    }
    double memref_load_288 = memref_alloca_26[0]; 
    double math_sqrt_289 = sqrt(memref_load_288); 
    func_arg_3[for_iter_56][for_iter_56] = math_sqrt_289; 
  }
  return; 

}
#pragma pocc-region-end
