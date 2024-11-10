#pragma pocc-region-start
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 43; 
  int arith_const_8 = 14; 
  int arith_const_9 = 13; 
  int arith_const_10 = 7; 
  int arith_const_11 = 19; 
  int arith_const_12 = 31; 
  int arith_const_13 = -1; 
  int arith_const_14 = 30; 
  int arith_const_15 = 20; 
  int arith_const_16 = -29; 
  int arith_const_17 = 32; 
  double arith_const_18 = 0.700000; 
  double arith_const_19 = 0.500000; 
  int arith_const_20 = 0; 
  int arith_const_21 = 2; 
  int arith_const_22 = 1; 
  for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_21; for_iter_23 += arith_const_22) {
    for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_21; for_iter_24 += arith_const_22) {
      int arith_cmpi_25 = (for_iter_24 == arith_const_20); 
      if (arith_cmpi_25) {
        int arith_muli_26 = (for_iter_23 * arith_const_17); 
        int arith_addi_27 = (arith_muli_26 + arith_const_16); 
        int arith_maxsi_28 = max(arith_addi_27, arith_const_20); 
        for (int for_iter_29 = arith_maxsi_28; for_iter_29 < arith_const_15; for_iter_29 += arith_const_22) {
          int arith_cmpi_30 = (for_iter_23 == arith_const_20); 
          if (arith_cmpi_30) {
            double memref_load_31 = func_arg_6[for_iter_29]; 
            func_arg_4[arith_const_20][arith_const_20] = memref_load_31; 
          }
          int arith_muli_32 = (for_iter_23 * arith_const_17); 
          int arith_addi_33 = (for_iter_29 + arith_const_22); 
          int arith_maxsi_34 = max(arith_muli_32, arith_addi_33); 
          int arith_muli_35 = (for_iter_23 * arith_const_17); 
          int arith_addi_36 = (arith_muli_35 + arith_const_17); 
          int arith_addi_37 = (for_iter_29 + arith_const_14); 
          int arith_minsi_38 = min(arith_addi_36, arith_addi_37); 
          for (int for_iter_39 = arith_maxsi_34; for_iter_39 < arith_minsi_38; for_iter_39 += arith_const_22) {
            double memref_load_40 = func_arg_6[for_iter_29]; 
            int arith_muli_41 = (for_iter_29 * arith_const_13); 
            int arith_addi_42 = (arith_muli_41 + for_iter_39); 
            func_arg_4[arith_const_20][arith_addi_42] = memref_load_40; 
            int arith_muli_43 = (for_iter_29 * arith_const_13); 
            int arith_addi_44 = (arith_muli_43 + for_iter_39); 
            double memref_load_45 = func_arg_3[arith_const_20][arith_addi_44]; 
            int arith_muli_46 = (for_iter_29 * arith_const_13); 
            int arith_addi_47 = (arith_muli_46 + for_iter_39); 
            double memref_load_48 = func_arg_5[arith_const_20][arith_addi_47]; 
            int arith_muli_49 = (for_iter_29 * arith_const_13); 
            int arith_addi_50 = (arith_muli_49 + for_iter_39); 
            int arith_addi_51 = (arith_addi_50 + arith_const_13); 
            double memref_load_52 = func_arg_5[arith_const_20][arith_addi_51]; 
            double arith_subf_53 = (memref_load_48 - memref_load_52); 
            double arith_mulf_54 = (arith_subf_53 * arith_const_19); 
            double arith_subf_55 = (memref_load_45 - arith_mulf_54); 
            int arith_muli_56 = (for_iter_29 * arith_const_13); 
            int arith_addi_57 = (arith_muli_56 + for_iter_39); 
            func_arg_3[arith_const_20][arith_addi_57] = arith_subf_55; 
          }
          int arith_muli_58 = (for_iter_29 * arith_const_13); 
          int arith_addi_59 = (arith_muli_58 + arith_const_12); 
          int arith_minsi_60 = min(arith_addi_59, arith_const_11); 
          for (int for_iter_61 = arith_const_20; for_iter_61 < arith_minsi_60; for_iter_61 += arith_const_22) {
            int arith_addi_62 = (for_iter_29 + for_iter_61); 
            int arith_addi_63 = (arith_addi_62 + arith_const_22); 
            int arith_cmpi_64 = (for_iter_23 == arith_const_20); 
            if (arith_cmpi_64) {
              int arith_muli_65 = (arith_addi_63 * arith_const_13); 
              int arith_addi_66 = (arith_muli_65 + for_iter_29); 
              double memref_load_67 = func_arg_4[arith_addi_66][arith_const_20]; 
              int arith_muli_68 = (arith_addi_63 * arith_const_13); 
              int arith_addi_69 = (arith_muli_68 + for_iter_29); 
              double memref_load_70 = func_arg_5[arith_addi_69][arith_const_20]; 
              int arith_muli_71 = (arith_addi_63 * arith_const_13); 
              int arith_addi_72 = (arith_muli_71 + for_iter_29); 
              int arith_addi_73 = (arith_addi_72 + arith_const_13); 
              double memref_load_74 = func_arg_5[arith_addi_73][arith_const_20]; 
              double arith_subf_75 = (memref_load_70 - memref_load_74); 
              double arith_mulf_76 = (arith_subf_75 * arith_const_19); 
              double arith_subf_77 = (memref_load_67 - arith_mulf_76); 
              int arith_muli_78 = (arith_addi_63 * arith_const_13); 
              int arith_addi_79 = (arith_muli_78 + for_iter_29); 
              func_arg_4[arith_addi_79][arith_const_20] = arith_subf_77; 
            }
            int arith_muli_80 = (for_iter_23 * arith_const_17); 
            int arith_addi_81 = (for_iter_29 + arith_const_22); 
            int arith_maxsi_82 = max(arith_muli_80, arith_addi_81); 
            int arith_muli_83 = (for_iter_23 * arith_const_17); 
            int arith_addi_84 = (arith_muli_83 + arith_const_17); 
            int arith_addi_85 = (for_iter_29 + arith_const_14); 
            int arith_minsi_86 = min(arith_addi_84, arith_addi_85); 
            for (int for_iter_87 = arith_maxsi_82; for_iter_87 < arith_minsi_86; for_iter_87 += arith_const_22) {
              int arith_muli_88 = (arith_addi_63 * arith_const_13); 
              int arith_addi_89 = (arith_muli_88 + for_iter_29); 
              int arith_muli_90 = (for_iter_29 * arith_const_13); 
              int arith_addi_91 = (arith_muli_90 + for_iter_87); 
              double memref_load_92 = func_arg_4[arith_addi_89][arith_addi_91]; 
              int arith_muli_93 = (arith_addi_63 * arith_const_13); 
              int arith_addi_94 = (arith_muli_93 + for_iter_29); 
              int arith_muli_95 = (for_iter_29 * arith_const_13); 
              int arith_addi_96 = (arith_muli_95 + for_iter_87); 
              double memref_load_97 = func_arg_5[arith_addi_94][arith_addi_96]; 
              int arith_muli_98 = (arith_addi_63 * arith_const_13); 
              int arith_addi_99 = (arith_muli_98 + for_iter_29); 
              int arith_addi_100 = (arith_addi_99 + arith_const_13); 
              int arith_muli_101 = (for_iter_29 * arith_const_13); 
              int arith_addi_102 = (arith_muli_101 + for_iter_87); 
              double memref_load_103 = func_arg_5[arith_addi_100][arith_addi_102]; 
              double arith_subf_104 = (memref_load_97 - memref_load_103); 
              double arith_mulf_105 = (arith_subf_104 * arith_const_19); 
              double arith_subf_106 = (memref_load_92 - arith_mulf_105); 
              int arith_muli_107 = (arith_addi_63 * arith_const_13); 
              int arith_addi_108 = (arith_muli_107 + for_iter_29); 
              int arith_muli_109 = (for_iter_29 * arith_const_13); 
              int arith_addi_110 = (arith_muli_109 + for_iter_87); 
              func_arg_4[arith_addi_108][arith_addi_110] = arith_subf_106; 
              int arith_muli_111 = (arith_addi_63 * arith_const_13); 
              int arith_addi_112 = (arith_muli_111 + for_iter_29); 
              int arith_muli_113 = (for_iter_29 * arith_const_13); 
              int arith_addi_114 = (arith_muli_113 + for_iter_87); 
              double memref_load_115 = func_arg_3[arith_addi_112][arith_addi_114]; 
              int arith_muli_116 = (arith_addi_63 * arith_const_13); 
              int arith_addi_117 = (arith_muli_116 + for_iter_29); 
              int arith_muli_118 = (for_iter_29 * arith_const_13); 
              int arith_addi_119 = (arith_muli_118 + for_iter_87); 
              double memref_load_120 = func_arg_5[arith_addi_117][arith_addi_119]; 
              int arith_muli_121 = (arith_addi_63 * arith_const_13); 
              int arith_addi_122 = (arith_muli_121 + for_iter_29); 
              int arith_muli_123 = (for_iter_29 * arith_const_13); 
              int arith_addi_124 = (arith_muli_123 + for_iter_87); 
              int arith_addi_125 = (arith_addi_124 + arith_const_13); 
              double memref_load_126 = func_arg_5[arith_addi_122][arith_addi_125]; 
              double arith_subf_127 = (memref_load_120 - memref_load_126); 
              double arith_mulf_128 = (arith_subf_127 * arith_const_19); 
              double arith_subf_129 = (memref_load_115 - arith_mulf_128); 
              int arith_muli_130 = (arith_addi_63 * arith_const_13); 
              int arith_addi_131 = (arith_muli_130 + for_iter_29); 
              int arith_muli_132 = (for_iter_29 * arith_const_13); 
              int arith_addi_133 = (arith_muli_132 + for_iter_87); 
              func_arg_3[arith_addi_131][arith_addi_133] = arith_subf_129; 
              int arith_muli_134 = (arith_addi_63 * arith_const_13); 
              int arith_addi_135 = (arith_muli_134 + for_iter_29); 
              int arith_addi_136 = (arith_addi_135 + arith_const_13); 
              int arith_muli_137 = (for_iter_29 * arith_const_13); 
              int arith_addi_138 = (arith_muli_137 + for_iter_87); 
              int arith_addi_139 = (arith_addi_138 + arith_const_13); 
              double memref_load_140 = func_arg_5[arith_addi_136][arith_addi_139]; 
              int arith_muli_141 = (arith_addi_63 * arith_const_13); 
              int arith_addi_142 = (arith_muli_141 + for_iter_29); 
              int arith_addi_143 = (arith_addi_142 + arith_const_13); 
              int arith_muli_144 = (for_iter_29 * arith_const_13); 
              int arith_addi_145 = (arith_muli_144 + for_iter_87); 
              double memref_load_146 = func_arg_3[arith_addi_143][arith_addi_145]; 
              int arith_muli_147 = (arith_addi_63 * arith_const_13); 
              int arith_addi_148 = (arith_muli_147 + for_iter_29); 
              int arith_addi_149 = (arith_addi_148 + arith_const_13); 
              int arith_muli_150 = (for_iter_29 * arith_const_13); 
              int arith_addi_151 = (arith_muli_150 + for_iter_87); 
              int arith_addi_152 = (arith_addi_151 + arith_const_13); 
              double memref_load_153 = func_arg_3[arith_addi_149][arith_addi_152]; 
              double arith_subf_154 = (memref_load_146 - memref_load_153); 
              int arith_muli_155 = (arith_addi_63 * arith_const_13); 
              int arith_addi_156 = (arith_muli_155 + for_iter_29); 
              int arith_muli_157 = (for_iter_29 * arith_const_13); 
              int arith_addi_158 = (arith_muli_157 + for_iter_87); 
              int arith_addi_159 = (arith_addi_158 + arith_const_13); 
              double memref_load_160 = func_arg_4[arith_addi_156][arith_addi_159]; 
              double arith_addf_161 = (arith_subf_154 + memref_load_160); 
              int arith_muli_162 = (arith_addi_63 * arith_const_13); 
              int arith_addi_163 = (arith_muli_162 + for_iter_29); 
              int arith_addi_164 = (arith_addi_163 + arith_const_13); 
              int arith_muli_165 = (for_iter_29 * arith_const_13); 
              int arith_addi_166 = (arith_muli_165 + for_iter_87); 
              int arith_addi_167 = (arith_addi_166 + arith_const_13); 
              double memref_load_168 = func_arg_4[arith_addi_164][arith_addi_167]; 
              double arith_subf_169 = (arith_addf_161 - memref_load_168); 
              double arith_mulf_170 = (arith_subf_169 * arith_const_18); 
              double arith_subf_171 = (memref_load_140 - arith_mulf_170); 
              int arith_muli_172 = (arith_addi_63 * arith_const_13); 
              int arith_addi_173 = (arith_muli_172 + for_iter_29); 
              int arith_addi_174 = (arith_addi_173 + arith_const_13); 
              int arith_muli_175 = (for_iter_29 * arith_const_13); 
              int arith_addi_176 = (arith_muli_175 + for_iter_87); 
              int arith_addi_177 = (arith_addi_176 + arith_const_13); 
              func_arg_5[arith_addi_174][arith_addi_177] = arith_subf_171; 
            }
          }
        }
      }
      int arith_addi_178 = (for_iter_24 + arith_const_13); 
      int arith_cmpi_179 = (arith_addi_178 == arith_const_20); 
      if (arith_cmpi_179) {
        for (int for_iter_180 = arith_const_20; for_iter_180 < arith_const_10; for_iter_180 += arith_const_22) {
          int arith_addi_181 = (for_iter_180 + arith_const_9); 
          int arith_addi_182 = (for_iter_180 + arith_const_22); 
          for (int for_iter_183 = arith_const_20; for_iter_183 < arith_addi_182; for_iter_183 += arith_const_22) {
            int arith_addi_184 = (for_iter_183 + arith_const_17); 
            int arith_cmpi_185 = (for_iter_23 == arith_const_20); 
            if (arith_cmpi_185) {
              int arith_muli_186 = (arith_addi_184 * arith_const_13); 
              int arith_addi_187 = (arith_muli_186 + arith_addi_181); 
              double memref_load_188 = func_arg_4[arith_addi_187][arith_const_20]; 
              int arith_muli_189 = (arith_addi_184 * arith_const_13); 
              int arith_addi_190 = (arith_muli_189 + arith_addi_181); 
              double memref_load_191 = func_arg_5[arith_addi_190][arith_const_20]; 
              int arith_muli_192 = (arith_addi_184 * arith_const_13); 
              int arith_addi_193 = (arith_muli_192 + arith_addi_181); 
              int arith_addi_194 = (arith_addi_193 + arith_const_13); 
              double memref_load_195 = func_arg_5[arith_addi_194][arith_const_20]; 
              double arith_subf_196 = (memref_load_191 - memref_load_195); 
              double arith_mulf_197 = (arith_subf_196 * arith_const_19); 
              double arith_subf_198 = (memref_load_188 - arith_mulf_197); 
              int arith_muli_199 = (arith_addi_184 * arith_const_13); 
              int arith_addi_200 = (arith_muli_199 + arith_addi_181); 
              func_arg_4[arith_addi_200][arith_const_20] = arith_subf_198; 
            }
            int arith_muli_201 = (for_iter_23 * arith_const_17); 
            int arith_addi_202 = (for_iter_180 + arith_const_8); 
            int arith_maxsi_203 = max(arith_muli_201, arith_addi_202); 
            int arith_muli_204 = (for_iter_23 * arith_const_17); 
            int arith_addi_205 = (arith_muli_204 + arith_const_17); 
            int arith_addi_206 = (for_iter_180 + arith_const_7); 
            int arith_minsi_207 = min(arith_addi_205, arith_addi_206); 
            for (int for_iter_208 = arith_maxsi_203; for_iter_208 < arith_minsi_207; for_iter_208 += arith_const_22) {
              int arith_muli_209 = (arith_addi_184 * arith_const_13); 
              int arith_addi_210 = (arith_muli_209 + arith_addi_181); 
              int arith_muli_211 = (arith_addi_181 * arith_const_13); 
              int arith_addi_212 = (arith_muli_211 + for_iter_208); 
              double memref_load_213 = func_arg_4[arith_addi_210][arith_addi_212]; 
              int arith_muli_214 = (arith_addi_184 * arith_const_13); 
              int arith_addi_215 = (arith_muli_214 + arith_addi_181); 
              int arith_muli_216 = (arith_addi_181 * arith_const_13); 
              int arith_addi_217 = (arith_muli_216 + for_iter_208); 
              double memref_load_218 = func_arg_5[arith_addi_215][arith_addi_217]; 
              int arith_muli_219 = (arith_addi_184 * arith_const_13); 
              int arith_addi_220 = (arith_muli_219 + arith_addi_181); 
              int arith_addi_221 = (arith_addi_220 + arith_const_13); 
              int arith_muli_222 = (arith_addi_181 * arith_const_13); 
              int arith_addi_223 = (arith_muli_222 + for_iter_208); 
              double memref_load_224 = func_arg_5[arith_addi_221][arith_addi_223]; 
              double arith_subf_225 = (memref_load_218 - memref_load_224); 
              double arith_mulf_226 = (arith_subf_225 * arith_const_19); 
              double arith_subf_227 = (memref_load_213 - arith_mulf_226); 
              int arith_muli_228 = (arith_addi_184 * arith_const_13); 
              int arith_addi_229 = (arith_muli_228 + arith_addi_181); 
              int arith_muli_230 = (arith_addi_181 * arith_const_13); 
              int arith_addi_231 = (arith_muli_230 + for_iter_208); 
              func_arg_4[arith_addi_229][arith_addi_231] = arith_subf_227; 
              int arith_muli_232 = (arith_addi_184 * arith_const_13); 
              int arith_addi_233 = (arith_muli_232 + arith_addi_181); 
              int arith_muli_234 = (arith_addi_181 * arith_const_13); 
              int arith_addi_235 = (arith_muli_234 + for_iter_208); 
              double memref_load_236 = func_arg_3[arith_addi_233][arith_addi_235]; 
              int arith_muli_237 = (arith_addi_184 * arith_const_13); 
              int arith_addi_238 = (arith_muli_237 + arith_addi_181); 
              int arith_muli_239 = (arith_addi_181 * arith_const_13); 
              int arith_addi_240 = (arith_muli_239 + for_iter_208); 
              double memref_load_241 = func_arg_5[arith_addi_238][arith_addi_240]; 
              int arith_muli_242 = (arith_addi_184 * arith_const_13); 
              int arith_addi_243 = (arith_muli_242 + arith_addi_181); 
              int arith_muli_244 = (arith_addi_181 * arith_const_13); 
              int arith_addi_245 = (arith_muli_244 + for_iter_208); 
              int arith_addi_246 = (arith_addi_245 + arith_const_13); 
              double memref_load_247 = func_arg_5[arith_addi_243][arith_addi_246]; 
              double arith_subf_248 = (memref_load_241 - memref_load_247); 
              double arith_mulf_249 = (arith_subf_248 * arith_const_19); 
              double arith_subf_250 = (memref_load_236 - arith_mulf_249); 
              int arith_muli_251 = (arith_addi_184 * arith_const_13); 
              int arith_addi_252 = (arith_muli_251 + arith_addi_181); 
              int arith_muli_253 = (arith_addi_181 * arith_const_13); 
              int arith_addi_254 = (arith_muli_253 + for_iter_208); 
              func_arg_3[arith_addi_252][arith_addi_254] = arith_subf_250; 
              int arith_muli_255 = (arith_addi_184 * arith_const_13); 
              int arith_addi_256 = (arith_muli_255 + arith_addi_181); 
              int arith_addi_257 = (arith_addi_256 + arith_const_13); 
              int arith_muli_258 = (arith_addi_181 * arith_const_13); 
              int arith_addi_259 = (arith_muli_258 + for_iter_208); 
              int arith_addi_260 = (arith_addi_259 + arith_const_13); 
              double memref_load_261 = func_arg_5[arith_addi_257][arith_addi_260]; 
              int arith_muli_262 = (arith_addi_184 * arith_const_13); 
              int arith_addi_263 = (arith_muli_262 + arith_addi_181); 
              int arith_addi_264 = (arith_addi_263 + arith_const_13); 
              int arith_muli_265 = (arith_addi_181 * arith_const_13); 
              int arith_addi_266 = (arith_muli_265 + for_iter_208); 
              double memref_load_267 = func_arg_3[arith_addi_264][arith_addi_266]; 
              int arith_muli_268 = (arith_addi_184 * arith_const_13); 
              int arith_addi_269 = (arith_muli_268 + arith_addi_181); 
              int arith_addi_270 = (arith_addi_269 + arith_const_13); 
              int arith_muli_271 = (arith_addi_181 * arith_const_13); 
              int arith_addi_272 = (arith_muli_271 + for_iter_208); 
              int arith_addi_273 = (arith_addi_272 + arith_const_13); 
              double memref_load_274 = func_arg_3[arith_addi_270][arith_addi_273]; 
              double arith_subf_275 = (memref_load_267 - memref_load_274); 
              int arith_muli_276 = (arith_addi_184 * arith_const_13); 
              int arith_addi_277 = (arith_muli_276 + arith_addi_181); 
              int arith_muli_278 = (arith_addi_181 * arith_const_13); 
              int arith_addi_279 = (arith_muli_278 + for_iter_208); 
              int arith_addi_280 = (arith_addi_279 + arith_const_13); 
              double memref_load_281 = func_arg_4[arith_addi_277][arith_addi_280]; 
              double arith_addf_282 = (arith_subf_275 + memref_load_281); 
              int arith_muli_283 = (arith_addi_184 * arith_const_13); 
              int arith_addi_284 = (arith_muli_283 + arith_addi_181); 
              int arith_addi_285 = (arith_addi_284 + arith_const_13); 
              int arith_muli_286 = (arith_addi_181 * arith_const_13); 
              int arith_addi_287 = (arith_muli_286 + for_iter_208); 
              int arith_addi_288 = (arith_addi_287 + arith_const_13); 
              double memref_load_289 = func_arg_4[arith_addi_285][arith_addi_288]; 
              double arith_subf_290 = (arith_addf_282 - memref_load_289); 
              double arith_mulf_291 = (arith_subf_290 * arith_const_18); 
              double arith_subf_292 = (memref_load_261 - arith_mulf_291); 
              int arith_muli_293 = (arith_addi_184 * arith_const_13); 
              int arith_addi_294 = (arith_muli_293 + arith_addi_181); 
              int arith_addi_295 = (arith_addi_294 + arith_const_13); 
              int arith_muli_296 = (arith_addi_181 * arith_const_13); 
              int arith_addi_297 = (arith_muli_296 + for_iter_208); 
              int arith_addi_298 = (arith_addi_297 + arith_const_13); 
              func_arg_5[arith_addi_295][arith_addi_298] = arith_subf_292; 
            }
          }
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
