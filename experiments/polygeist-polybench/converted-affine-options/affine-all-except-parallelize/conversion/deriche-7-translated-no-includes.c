#pragma pocc-region-start
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 8; 
  int arith_const_8 = 63; 
  int arith_const_9 = -1; 
  int arith_const_10 = 3; 
  int arith_const_11 = 4; 
  int arith_const_12 = 16; 
  int arith_const_13 = 32; 
  int arith_const_14 = 1; 
  int arith_const_15 = 2; 
  int arith_const_16 = 0; 
  float arith_const_17 = 0.000000; 
  float arith_const_18 = 1.000000; 
  float arith_const_19 = 2.000000; 
  float arith_const_20 = -2.000000; 
  float* memref_alloca_21; 
  float* memref_alloca_22; 
  float* memref_alloca_23; 
  float* memref_alloca_24; 
  float* memref_alloca_25; 
  float* memref_alloca_26; 
  float* memref_alloca_27; 
  float* memref_alloca_28; 
  float* memref_alloca_29; 
  float* memref_alloca_30; 
  float* memref_alloca_31; 
  float* memref_alloca_32; 
  float* memref_alloca_33; 
  float* memref_alloca_34; 
  float* memref_alloca_35; 
  float* memref_alloca_36; 
  float* memref_alloca_37; 
  float* memref_alloca_38; 
  float* memref_alloca_39; 
  float* memref_alloca_40; 
  float* memref_alloca_41; 
  float* memref_alloca_42; 
  float* memref_alloca_43; 
  float* memref_alloca_44; 
  float arith_mulf_45 = (func_arg_2 * arith_const_20); 
  float math_exp_46 = exp(arith_mulf_45); 
  float arith_negf_47 = -(math_exp_46); 
  memref_alloca_24[arith_const_16] = arith_negf_47; 
  float arith_negf_48 = -(func_arg_2); 
  float math_powf_49 = pow(arith_const_19, arith_negf_48); 
  memref_alloca_33[arith_const_16] = math_powf_49; 
  float arith_negf_50 = -(func_arg_2); 
  float math_exp_51 = exp(arith_negf_50); 
  float arith_mulf_52 = (func_arg_2 * math_exp_51); 
  float arith_subf_53 = (arith_const_18 - math_exp_51); 
  float arith_mulf_54 = (arith_subf_53 * arith_subf_53); 
  float arith_mulf_55 = (arith_mulf_52 * arith_const_19); 
  float arith_addf_56 = (arith_mulf_55 + arith_const_18); 
  float arith_mulf_57 = (func_arg_2 * arith_const_19); 
  float math_exp_58 = exp(arith_mulf_57); 
  float arith_subf_59 = (arith_addf_56 - math_exp_58); 
  float arith_divf_60 = (arith_mulf_54 / arith_subf_59); 
  memref_alloca_29[arith_const_16] = arith_divf_60; 
  float memref_load_61 = memref_alloca_29[arith_const_16]; 
  memref_alloca_42[arith_const_16] = memref_load_61; 
  float arith_negf_62 = -(func_arg_2); 
  float math_exp_63 = exp(arith_negf_62); 
  float arith_mulf_64 = (memref_load_61 * math_exp_63); 
  memref_alloca_26[arith_const_16] = arith_mulf_64; 
  float arith_subf_65 = (func_arg_2 - arith_const_18); 
  float arith_mulf_66 = (arith_mulf_64 * arith_subf_65); 
  memref_alloca_34[arith_const_16] = arith_mulf_66; 
  float memref_load_67 = memref_alloca_42[arith_const_16]; 
  float arith_negf_68 = -(memref_load_67); 
  float arith_mulf_69 = (func_arg_2 * arith_const_20); 
  float math_exp_70 = exp(arith_mulf_69); 
  float arith_mulf_71 = (arith_negf_68 * math_exp_70); 
  memref_alloca_31[arith_const_16] = arith_mulf_71; 
  float memref_load_72 = memref_alloca_26[arith_const_16]; 
  float arith_addf_73 = (func_arg_2 + arith_const_18); 
  float arith_mulf_74 = (memref_load_72 * arith_addf_73); 
  memref_alloca_30[arith_const_16] = arith_mulf_74; 
  float _75; 
  memref_alloca_23[0] = _75; 
  float _76; 
  memref_alloca_32[0] = _76; 
  float _77; 
  memref_alloca_22[0] = _77; 
  float _78; 
  memref_alloca_43[0] = _78; 
  float memref_load_79 = memref_alloca_29[arith_const_16]; 
  float memref_load_80 = memref_alloca_34[arith_const_16]; 
  float memref_load_81 = memref_alloca_33[arith_const_16]; 
  float memref_load_82 = memref_alloca_24[arith_const_16]; 
  float memref_load_83 = memref_alloca_29[arith_const_16]; 
  float memref_load_84 = memref_alloca_34[arith_const_16]; 
  float memref_load_85 = memref_alloca_33[arith_const_16]; 
  float memref_load_86 = memref_alloca_24[arith_const_16]; 
  float memref_load_87 = memref_alloca_29[arith_const_16]; 
  float memref_load_88 = memref_alloca_34[arith_const_16]; 
  float memref_load_89 = memref_alloca_33[arith_const_16]; 
  float memref_load_90 = memref_alloca_24[arith_const_16]; 
  float memref_load_91 = memref_alloca_29[arith_const_16]; 
  float memref_load_92 = memref_alloca_34[arith_const_16]; 
  float memref_load_93 = memref_alloca_33[arith_const_16]; 
  float memref_load_94 = memref_alloca_24[arith_const_16]; 
  for (int for_iter_95 = arith_const_16; for_iter_95 < arith_const_15; for_iter_95 += arith_const_14) {
    int arith_muli_96 = (for_iter_95 * arith_const_13); 
    for (int for_iter_97 = arith_const_16; for_iter_97 < arith_const_13; for_iter_97 += arith_const_14) {
      int arith_addi_98 = (arith_muli_96 + for_iter_97); 
      memref_alloca_23[0] = arith_const_17; 
      memref_alloca_43[0] = arith_const_17; 
      memref_alloca_22[0] = arith_const_17; 
      for (int for_iter_99 = arith_const_16; for_iter_99 < arith_const_12; for_iter_99 += arith_const_14) {
        int arith_muli_100 = (for_iter_99 * arith_const_11); 
        float memref_load_101 = func_arg_3[arith_addi_98][arith_muli_100]; 
        float arith_mulf_102 = (memref_load_79 * memref_load_101); 
        float memref_load_103 = memref_alloca_23[0]; 
        float arith_mulf_104 = (memref_load_80 * memref_load_103); 
        float arith_addf_105 = (arith_mulf_102 + arith_mulf_104); 
        float memref_load_106 = memref_alloca_22[0]; 
        memref_alloca_27[arith_const_16] = memref_load_106; 
        float arith_mulf_107 = (memref_load_81 * memref_load_106); 
        float arith_addf_108 = (arith_addf_105 + arith_mulf_107); 
        float memref_load_109 = memref_alloca_43[0]; 
        float arith_mulf_110 = (memref_load_82 * memref_load_109); 
        float arith_addf_111 = (arith_addf_108 + arith_mulf_110); 
        func_arg_5[arith_addi_98][arith_muli_100] = arith_addf_111; 
        float memref_load_112 = func_arg_5[arith_addi_98][arith_muli_100]; 
        memref_alloca_22[0] = memref_load_112; 
        float memref_load_113 = memref_alloca_27[arith_const_16]; 
        memref_alloca_43[0] = memref_load_113; 
        float memref_load_114 = func_arg_3[arith_addi_98][arith_muli_100]; 
        memref_alloca_23[0] = memref_load_114; 
        int arith_addi_115 = (arith_muli_100 + arith_const_14); 
        float memref_load_116 = func_arg_3[arith_addi_98][arith_addi_115]; 
        float arith_mulf_117 = (memref_load_83 * memref_load_116); 
        float memref_load_118 = memref_alloca_23[0]; 
        float arith_mulf_119 = (memref_load_84 * memref_load_118); 
        float arith_addf_120 = (arith_mulf_117 + arith_mulf_119); 
        float memref_load_121 = memref_alloca_22[0]; 
        memref_alloca_27[arith_const_16] = memref_load_121; 
        float arith_mulf_122 = (memref_load_85 * memref_load_121); 
        float arith_addf_123 = (arith_addf_120 + arith_mulf_122); 
        float memref_load_124 = memref_alloca_43[0]; 
        float arith_mulf_125 = (memref_load_86 * memref_load_124); 
        float arith_addf_126 = (arith_addf_123 + arith_mulf_125); 
        func_arg_5[arith_addi_98][arith_addi_115] = arith_addf_126; 
        float memref_load_127 = func_arg_5[arith_addi_98][arith_addi_115]; 
        memref_alloca_22[0] = memref_load_127; 
        float memref_load_128 = memref_alloca_27[arith_const_16]; 
        memref_alloca_43[0] = memref_load_128; 
        float memref_load_129 = func_arg_3[arith_addi_98][arith_addi_115]; 
        memref_alloca_23[0] = memref_load_129; 
        int arith_addi_130 = (arith_muli_100 + arith_const_15); 
        float memref_load_131 = func_arg_3[arith_addi_98][arith_addi_130]; 
        float arith_mulf_132 = (memref_load_87 * memref_load_131); 
        float memref_load_133 = memref_alloca_23[0]; 
        float arith_mulf_134 = (memref_load_88 * memref_load_133); 
        float arith_addf_135 = (arith_mulf_132 + arith_mulf_134); 
        float memref_load_136 = memref_alloca_22[0]; 
        memref_alloca_27[arith_const_16] = memref_load_136; 
        float arith_mulf_137 = (memref_load_89 * memref_load_136); 
        float arith_addf_138 = (arith_addf_135 + arith_mulf_137); 
        float memref_load_139 = memref_alloca_43[0]; 
        float arith_mulf_140 = (memref_load_90 * memref_load_139); 
        float arith_addf_141 = (arith_addf_138 + arith_mulf_140); 
        func_arg_5[arith_addi_98][arith_addi_130] = arith_addf_141; 
        float memref_load_142 = func_arg_5[arith_addi_98][arith_addi_130]; 
        memref_alloca_22[0] = memref_load_142; 
        float memref_load_143 = memref_alloca_27[arith_const_16]; 
        memref_alloca_43[0] = memref_load_143; 
        float memref_load_144 = func_arg_3[arith_addi_98][arith_addi_130]; 
        memref_alloca_23[0] = memref_load_144; 
        int arith_addi_145 = (arith_muli_100 + arith_const_10); 
        float memref_load_146 = func_arg_3[arith_addi_98][arith_addi_145]; 
        float arith_mulf_147 = (memref_load_91 * memref_load_146); 
        float memref_load_148 = memref_alloca_23[0]; 
        float arith_mulf_149 = (memref_load_92 * memref_load_148); 
        float arith_addf_150 = (arith_mulf_147 + arith_mulf_149); 
        float memref_load_151 = memref_alloca_22[0]; 
        memref_alloca_27[arith_const_16] = memref_load_151; 
        float arith_mulf_152 = (memref_load_93 * memref_load_151); 
        float arith_addf_153 = (arith_addf_150 + arith_mulf_152); 
        float memref_load_154 = memref_alloca_43[0]; 
        float arith_mulf_155 = (memref_load_94 * memref_load_154); 
        float arith_addf_156 = (arith_addf_153 + arith_mulf_155); 
        func_arg_5[arith_addi_98][arith_addi_145] = arith_addf_156; 
        float memref_load_157 = func_arg_5[arith_addi_98][arith_addi_145]; 
        memref_alloca_22[0] = memref_load_157; 
        float memref_load_158 = memref_alloca_27[arith_const_16]; 
        memref_alloca_43[0] = memref_load_158; 
        float memref_load_159 = func_arg_3[arith_addi_98][arith_addi_145]; 
        memref_alloca_23[0] = memref_load_159; 
      }
    }
  }
  float _160; 
  memref_alloca_21[0] = _160; 
  float _161; 
  memref_alloca_39[0] = _161; 
  float _162; 
  memref_alloca_28[0] = _162; 
  float _163; 
  memref_alloca_40[0] = _163; 
  float _164; 
  memref_alloca_41[0] = _164; 
  float _165; 
  memref_alloca_44[0] = _165; 
  float memref_load_166 = memref_alloca_30[arith_const_16]; 
  float memref_load_167 = memref_alloca_31[arith_const_16]; 
  float memref_load_168 = memref_alloca_33[arith_const_16]; 
  float memref_load_169 = memref_alloca_24[arith_const_16]; 
  float memref_load_170 = memref_alloca_30[arith_const_16]; 
  float memref_load_171 = memref_alloca_31[arith_const_16]; 
  float memref_load_172 = memref_alloca_33[arith_const_16]; 
  float memref_load_173 = memref_alloca_24[arith_const_16]; 
  float memref_load_174 = memref_alloca_30[arith_const_16]; 
  float memref_load_175 = memref_alloca_31[arith_const_16]; 
  float memref_load_176 = memref_alloca_33[arith_const_16]; 
  float memref_load_177 = memref_alloca_24[arith_const_16]; 
  float memref_load_178 = memref_alloca_30[arith_const_16]; 
  float memref_load_179 = memref_alloca_31[arith_const_16]; 
  float memref_load_180 = memref_alloca_33[arith_const_16]; 
  float memref_load_181 = memref_alloca_24[arith_const_16]; 
  for (int for_iter_182 = arith_const_16; for_iter_182 < arith_const_15; for_iter_182 += arith_const_14) {
    int arith_muli_183 = (for_iter_182 * arith_const_13); 
    for (int for_iter_184 = arith_const_16; for_iter_184 < arith_const_13; for_iter_184 += arith_const_14) {
      int arith_addi_185 = (arith_muli_183 + for_iter_184); 
      memref_alloca_39[0] = arith_const_17; 
      memref_alloca_21[0] = arith_const_17; 
      memref_alloca_44[0] = arith_const_17; 
      memref_alloca_41[0] = arith_const_17; 
      for (int for_iter_186 = arith_const_16; for_iter_186 < arith_const_12; for_iter_186 += arith_const_14) {
        int arith_muli_187 = (for_iter_186 * arith_const_11); 
        float memref_load_188 = memref_alloca_21[0]; 
        memref_alloca_25[arith_const_16] = memref_load_188; 
        float arith_mulf_189 = (memref_load_166 * memref_load_188); 
        float memref_load_190 = memref_alloca_39[0]; 
        float arith_mulf_191 = (memref_load_167 * memref_load_190); 
        float arith_addf_192 = (arith_mulf_189 + arith_mulf_191); 
        float memref_load_193 = memref_alloca_41[0]; 
        memref_alloca_36[arith_const_16] = memref_load_193; 
        float arith_mulf_194 = (memref_load_168 * memref_load_193); 
        float arith_addf_195 = (arith_addf_192 + arith_mulf_194); 
        float memref_load_196 = memref_alloca_44[0]; 
        float arith_mulf_197 = (memref_load_169 * memref_load_196); 
        float arith_addf_198 = (arith_addf_195 + arith_mulf_197); 
        int arith_muli_199 = (arith_muli_187 * arith_const_9); 
        int arith_addi_200 = (arith_muli_199 + arith_const_8); 
        func_arg_6[arith_addi_185][arith_addi_200] = arith_addf_198; 
        int arith_muli_201 = (arith_muli_187 * arith_const_9); 
        int arith_addi_202 = (arith_muli_201 + arith_const_8); 
        float memref_load_203 = func_arg_6[arith_addi_185][arith_addi_202]; 
        memref_alloca_41[0] = memref_load_203; 
        float memref_load_204 = memref_alloca_36[arith_const_16]; 
        memref_alloca_44[0] = memref_load_204; 
        int arith_muli_205 = (arith_muli_187 * arith_const_9); 
        int arith_addi_206 = (arith_muli_205 + arith_const_8); 
        float memref_load_207 = func_arg_3[arith_addi_185][arith_addi_206]; 
        memref_alloca_21[0] = memref_load_207; 
        float memref_load_208 = memref_alloca_25[arith_const_16]; 
        memref_alloca_39[0] = memref_load_208; 
        int arith_addi_209 = (arith_muli_187 + arith_const_14); 
        float memref_load_210 = memref_alloca_21[0]; 
        memref_alloca_25[arith_const_16] = memref_load_210; 
        float arith_mulf_211 = (memref_load_170 * memref_load_210); 
        float memref_load_212 = memref_alloca_39[0]; 
        float arith_mulf_213 = (memref_load_171 * memref_load_212); 
        float arith_addf_214 = (arith_mulf_211 + arith_mulf_213); 
        float memref_load_215 = memref_alloca_41[0]; 
        memref_alloca_36[arith_const_16] = memref_load_215; 
        float arith_mulf_216 = (memref_load_172 * memref_load_215); 
        float arith_addf_217 = (arith_addf_214 + arith_mulf_216); 
        float memref_load_218 = memref_alloca_44[0]; 
        float arith_mulf_219 = (memref_load_173 * memref_load_218); 
        float arith_addf_220 = (arith_addf_217 + arith_mulf_219); 
        int arith_muli_221 = (arith_addi_209 * arith_const_9); 
        int arith_addi_222 = (arith_muli_221 + arith_const_8); 
        func_arg_6[arith_addi_185][arith_addi_222] = arith_addf_220; 
        int arith_muli_223 = (arith_addi_209 * arith_const_9); 
        int arith_addi_224 = (arith_muli_223 + arith_const_8); 
        float memref_load_225 = func_arg_6[arith_addi_185][arith_addi_224]; 
        memref_alloca_41[0] = memref_load_225; 
        float memref_load_226 = memref_alloca_36[arith_const_16]; 
        memref_alloca_44[0] = memref_load_226; 
        int arith_muli_227 = (arith_addi_209 * arith_const_9); 
        int arith_addi_228 = (arith_muli_227 + arith_const_8); 
        float memref_load_229 = func_arg_3[arith_addi_185][arith_addi_228]; 
        memref_alloca_21[0] = memref_load_229; 
        float memref_load_230 = memref_alloca_25[arith_const_16]; 
        memref_alloca_39[0] = memref_load_230; 
        int arith_addi_231 = (arith_muli_187 + arith_const_15); 
        float memref_load_232 = memref_alloca_21[0]; 
        memref_alloca_25[arith_const_16] = memref_load_232; 
        float arith_mulf_233 = (memref_load_174 * memref_load_232); 
        float memref_load_234 = memref_alloca_39[0]; 
        float arith_mulf_235 = (memref_load_175 * memref_load_234); 
        float arith_addf_236 = (arith_mulf_233 + arith_mulf_235); 
        float memref_load_237 = memref_alloca_41[0]; 
        memref_alloca_36[arith_const_16] = memref_load_237; 
        float arith_mulf_238 = (memref_load_176 * memref_load_237); 
        float arith_addf_239 = (arith_addf_236 + arith_mulf_238); 
        float memref_load_240 = memref_alloca_44[0]; 
        float arith_mulf_241 = (memref_load_177 * memref_load_240); 
        float arith_addf_242 = (arith_addf_239 + arith_mulf_241); 
        int arith_muli_243 = (arith_addi_231 * arith_const_9); 
        int arith_addi_244 = (arith_muli_243 + arith_const_8); 
        func_arg_6[arith_addi_185][arith_addi_244] = arith_addf_242; 
        int arith_muli_245 = (arith_addi_231 * arith_const_9); 
        int arith_addi_246 = (arith_muli_245 + arith_const_8); 
        float memref_load_247 = func_arg_6[arith_addi_185][arith_addi_246]; 
        memref_alloca_41[0] = memref_load_247; 
        float memref_load_248 = memref_alloca_36[arith_const_16]; 
        memref_alloca_44[0] = memref_load_248; 
        int arith_muli_249 = (arith_addi_231 * arith_const_9); 
        int arith_addi_250 = (arith_muli_249 + arith_const_8); 
        float memref_load_251 = func_arg_3[arith_addi_185][arith_addi_250]; 
        memref_alloca_21[0] = memref_load_251; 
        float memref_load_252 = memref_alloca_25[arith_const_16]; 
        memref_alloca_39[0] = memref_load_252; 
        int arith_addi_253 = (arith_muli_187 + arith_const_10); 
        float memref_load_254 = memref_alloca_21[0]; 
        memref_alloca_25[arith_const_16] = memref_load_254; 
        float arith_mulf_255 = (memref_load_178 * memref_load_254); 
        float memref_load_256 = memref_alloca_39[0]; 
        float arith_mulf_257 = (memref_load_179 * memref_load_256); 
        float arith_addf_258 = (arith_mulf_255 + arith_mulf_257); 
        float memref_load_259 = memref_alloca_41[0]; 
        memref_alloca_36[arith_const_16] = memref_load_259; 
        float arith_mulf_260 = (memref_load_180 * memref_load_259); 
        float arith_addf_261 = (arith_addf_258 + arith_mulf_260); 
        float memref_load_262 = memref_alloca_44[0]; 
        float arith_mulf_263 = (memref_load_181 * memref_load_262); 
        float arith_addf_264 = (arith_addf_261 + arith_mulf_263); 
        int arith_muli_265 = (arith_addi_253 * arith_const_9); 
        int arith_addi_266 = (arith_muli_265 + arith_const_8); 
        func_arg_6[arith_addi_185][arith_addi_266] = arith_addf_264; 
        int arith_muli_267 = (arith_addi_253 * arith_const_9); 
        int arith_addi_268 = (arith_muli_267 + arith_const_8); 
        float memref_load_269 = func_arg_6[arith_addi_185][arith_addi_268]; 
        memref_alloca_41[0] = memref_load_269; 
        float memref_load_270 = memref_alloca_36[arith_const_16]; 
        memref_alloca_44[0] = memref_load_270; 
        int arith_muli_271 = (arith_addi_253 * arith_const_9); 
        int arith_addi_272 = (arith_muli_271 + arith_const_8); 
        float memref_load_273 = func_arg_3[arith_addi_185][arith_addi_272]; 
        memref_alloca_21[0] = memref_load_273; 
        float memref_load_274 = memref_alloca_25[arith_const_16]; 
        memref_alloca_39[0] = memref_load_274; 
      }
    }
  }
  for (int for_iter_275 = arith_const_16; for_iter_275 < arith_const_15; for_iter_275 += arith_const_14) {
    for (int for_iter_276 = arith_const_16; for_iter_276 < arith_const_13; for_iter_276 += arith_const_14) {
      int arith_muli_277 = (for_iter_275 * arith_const_13); 
      int arith_addi_278 = (arith_muli_277 + for_iter_276); 
      for (int for_iter_279 = arith_const_16; for_iter_279 < arith_const_15; for_iter_279 += arith_const_14) {
        for (int for_iter_280 = arith_const_16; for_iter_280 < arith_const_7; for_iter_280 += arith_const_14) {
          int arith_muli_281 = (for_iter_279 * arith_const_13); 
          int arith_muli_282 = (for_iter_280 * arith_const_11); 
          int arith_addi_283 = (arith_muli_281 + arith_muli_282); 
          float memref_load_284 = func_arg_5[arith_addi_278][arith_addi_283]; 
          float memref_load_285 = func_arg_6[arith_addi_278][arith_addi_283]; 
          float arith_addf_286 = (memref_load_284 + memref_load_285); 
          func_arg_4[arith_addi_278][arith_addi_283] = arith_addf_286; 
          int arith_addi_287 = (arith_addi_283 + arith_const_14); 
          float memref_load_288 = func_arg_5[arith_addi_278][arith_addi_287]; 
          float memref_load_289 = func_arg_6[arith_addi_278][arith_addi_287]; 
          float arith_addf_290 = (memref_load_288 + memref_load_289); 
          func_arg_4[arith_addi_278][arith_addi_287] = arith_addf_290; 
          int arith_addi_291 = (arith_addi_283 + arith_const_15); 
          float memref_load_292 = func_arg_5[arith_addi_278][arith_addi_291]; 
          float memref_load_293 = func_arg_6[arith_addi_278][arith_addi_291]; 
          float arith_addf_294 = (memref_load_292 + memref_load_293); 
          func_arg_4[arith_addi_278][arith_addi_291] = arith_addf_294; 
          int arith_addi_295 = (arith_addi_283 + arith_const_10); 
          float memref_load_296 = func_arg_5[arith_addi_278][arith_addi_295]; 
          float memref_load_297 = func_arg_6[arith_addi_278][arith_addi_295]; 
          float arith_addf_298 = (memref_load_296 + memref_load_297); 
          func_arg_4[arith_addi_278][arith_addi_295] = arith_addf_298; 
        }
      }
    }
  }
  float memref_load_299 = memref_alloca_29[arith_const_16]; 
  float memref_load_300 = memref_alloca_34[arith_const_16]; 
  float memref_load_301 = memref_alloca_33[arith_const_16]; 
  float memref_load_302 = memref_alloca_24[arith_const_16]; 
  float memref_load_303 = memref_alloca_29[arith_const_16]; 
  float memref_load_304 = memref_alloca_34[arith_const_16]; 
  float memref_load_305 = memref_alloca_33[arith_const_16]; 
  float memref_load_306 = memref_alloca_24[arith_const_16]; 
  float memref_load_307 = memref_alloca_29[arith_const_16]; 
  float memref_load_308 = memref_alloca_34[arith_const_16]; 
  float memref_load_309 = memref_alloca_33[arith_const_16]; 
  float memref_load_310 = memref_alloca_24[arith_const_16]; 
  float memref_load_311 = memref_alloca_29[arith_const_16]; 
  float memref_load_312 = memref_alloca_34[arith_const_16]; 
  float memref_load_313 = memref_alloca_33[arith_const_16]; 
  float memref_load_314 = memref_alloca_24[arith_const_16]; 
  for (int for_iter_315 = arith_const_16; for_iter_315 < arith_const_15; for_iter_315 += arith_const_14) {
    int arith_muli_316 = (for_iter_315 * arith_const_13); 
    for (int for_iter_317 = arith_const_16; for_iter_317 < arith_const_13; for_iter_317 += arith_const_14) {
      int arith_addi_318 = (arith_muli_316 + for_iter_317); 
      memref_alloca_43[0] = arith_const_17; 
      memref_alloca_22[0] = arith_const_17; 
      memref_alloca_32[0] = arith_const_17; 
      for (int for_iter_319 = arith_const_16; for_iter_319 < arith_const_12; for_iter_319 += arith_const_14) {
        int arith_muli_320 = (for_iter_319 * arith_const_11); 
        float memref_load_321 = func_arg_4[arith_muli_320][arith_addi_318]; 
        float arith_mulf_322 = (memref_load_299 * memref_load_321); 
        float memref_load_323 = memref_alloca_32[0]; 
        float arith_mulf_324 = (memref_load_300 * memref_load_323); 
        float arith_addf_325 = (arith_mulf_322 + arith_mulf_324); 
        float memref_load_326 = memref_alloca_22[0]; 
        memref_alloca_37[arith_const_16] = memref_load_326; 
        float arith_mulf_327 = (memref_load_301 * memref_load_326); 
        float arith_addf_328 = (arith_addf_325 + arith_mulf_327); 
        float memref_load_329 = memref_alloca_43[0]; 
        float arith_mulf_330 = (memref_load_302 * memref_load_329); 
        float arith_addf_331 = (arith_addf_328 + arith_mulf_330); 
        func_arg_5[arith_muli_320][arith_addi_318] = arith_addf_331; 
        float memref_load_332 = func_arg_5[arith_muli_320][arith_addi_318]; 
        memref_alloca_22[0] = memref_load_332; 
        float memref_load_333 = memref_alloca_37[arith_const_16]; 
        memref_alloca_43[0] = memref_load_333; 
        float memref_load_334 = func_arg_4[arith_muli_320][arith_addi_318]; 
        memref_alloca_32[0] = memref_load_334; 
        int arith_addi_335 = (arith_muli_320 + arith_const_14); 
        float memref_load_336 = func_arg_4[arith_addi_335][arith_addi_318]; 
        float arith_mulf_337 = (memref_load_303 * memref_load_336); 
        float memref_load_338 = memref_alloca_32[0]; 
        float arith_mulf_339 = (memref_load_304 * memref_load_338); 
        float arith_addf_340 = (arith_mulf_337 + arith_mulf_339); 
        float memref_load_341 = memref_alloca_22[0]; 
        memref_alloca_37[arith_const_16] = memref_load_341; 
        float arith_mulf_342 = (memref_load_305 * memref_load_341); 
        float arith_addf_343 = (arith_addf_340 + arith_mulf_342); 
        float memref_load_344 = memref_alloca_43[0]; 
        float arith_mulf_345 = (memref_load_306 * memref_load_344); 
        float arith_addf_346 = (arith_addf_343 + arith_mulf_345); 
        func_arg_5[arith_addi_335][arith_addi_318] = arith_addf_346; 
        float memref_load_347 = func_arg_5[arith_addi_335][arith_addi_318]; 
        memref_alloca_22[0] = memref_load_347; 
        float memref_load_348 = memref_alloca_37[arith_const_16]; 
        memref_alloca_43[0] = memref_load_348; 
        float memref_load_349 = func_arg_4[arith_addi_335][arith_addi_318]; 
        memref_alloca_32[0] = memref_load_349; 
        int arith_addi_350 = (arith_muli_320 + arith_const_15); 
        float memref_load_351 = func_arg_4[arith_addi_350][arith_addi_318]; 
        float arith_mulf_352 = (memref_load_307 * memref_load_351); 
        float memref_load_353 = memref_alloca_32[0]; 
        float arith_mulf_354 = (memref_load_308 * memref_load_353); 
        float arith_addf_355 = (arith_mulf_352 + arith_mulf_354); 
        float memref_load_356 = memref_alloca_22[0]; 
        memref_alloca_37[arith_const_16] = memref_load_356; 
        float arith_mulf_357 = (memref_load_309 * memref_load_356); 
        float arith_addf_358 = (arith_addf_355 + arith_mulf_357); 
        float memref_load_359 = memref_alloca_43[0]; 
        float arith_mulf_360 = (memref_load_310 * memref_load_359); 
        float arith_addf_361 = (arith_addf_358 + arith_mulf_360); 
        func_arg_5[arith_addi_350][arith_addi_318] = arith_addf_361; 
        float memref_load_362 = func_arg_5[arith_addi_350][arith_addi_318]; 
        memref_alloca_22[0] = memref_load_362; 
        float memref_load_363 = memref_alloca_37[arith_const_16]; 
        memref_alloca_43[0] = memref_load_363; 
        float memref_load_364 = func_arg_4[arith_addi_350][arith_addi_318]; 
        memref_alloca_32[0] = memref_load_364; 
        int arith_addi_365 = (arith_muli_320 + arith_const_10); 
        float memref_load_366 = func_arg_4[arith_addi_365][arith_addi_318]; 
        float arith_mulf_367 = (memref_load_311 * memref_load_366); 
        float memref_load_368 = memref_alloca_32[0]; 
        float arith_mulf_369 = (memref_load_312 * memref_load_368); 
        float arith_addf_370 = (arith_mulf_367 + arith_mulf_369); 
        float memref_load_371 = memref_alloca_22[0]; 
        memref_alloca_37[arith_const_16] = memref_load_371; 
        float arith_mulf_372 = (memref_load_313 * memref_load_371); 
        float arith_addf_373 = (arith_addf_370 + arith_mulf_372); 
        float memref_load_374 = memref_alloca_43[0]; 
        float arith_mulf_375 = (memref_load_314 * memref_load_374); 
        float arith_addf_376 = (arith_addf_373 + arith_mulf_375); 
        func_arg_5[arith_addi_365][arith_addi_318] = arith_addf_376; 
        float memref_load_377 = func_arg_5[arith_addi_365][arith_addi_318]; 
        memref_alloca_22[0] = memref_load_377; 
        float memref_load_378 = memref_alloca_37[arith_const_16]; 
        memref_alloca_43[0] = memref_load_378; 
        float memref_load_379 = func_arg_4[arith_addi_365][arith_addi_318]; 
        memref_alloca_32[0] = memref_load_379; 
      }
    }
  }
  float memref_load_380 = memref_alloca_30[arith_const_16]; 
  float memref_load_381 = memref_alloca_31[arith_const_16]; 
  float memref_load_382 = memref_alloca_33[arith_const_16]; 
  float memref_load_383 = memref_alloca_24[arith_const_16]; 
  float memref_load_384 = memref_alloca_30[arith_const_16]; 
  float memref_load_385 = memref_alloca_31[arith_const_16]; 
  float memref_load_386 = memref_alloca_33[arith_const_16]; 
  float memref_load_387 = memref_alloca_24[arith_const_16]; 
  float memref_load_388 = memref_alloca_30[arith_const_16]; 
  float memref_load_389 = memref_alloca_31[arith_const_16]; 
  float memref_load_390 = memref_alloca_33[arith_const_16]; 
  float memref_load_391 = memref_alloca_24[arith_const_16]; 
  float memref_load_392 = memref_alloca_30[arith_const_16]; 
  float memref_load_393 = memref_alloca_31[arith_const_16]; 
  float memref_load_394 = memref_alloca_33[arith_const_16]; 
  float memref_load_395 = memref_alloca_24[arith_const_16]; 
  for (int for_iter_396 = arith_const_16; for_iter_396 < arith_const_15; for_iter_396 += arith_const_14) {
    int arith_muli_397 = (for_iter_396 * arith_const_13); 
    for (int for_iter_398 = arith_const_16; for_iter_398 < arith_const_13; for_iter_398 += arith_const_14) {
      int arith_addi_399 = (arith_muli_397 + for_iter_398); 
      memref_alloca_44[0] = arith_const_17; 
      memref_alloca_41[0] = arith_const_17; 
      memref_alloca_40[0] = arith_const_17; 
      memref_alloca_28[0] = arith_const_17; 
      for (int for_iter_400 = arith_const_16; for_iter_400 < arith_const_12; for_iter_400 += arith_const_14) {
        int arith_muli_401 = (for_iter_400 * arith_const_11); 
        float memref_load_402 = memref_alloca_28[0]; 
        memref_alloca_35[arith_const_16] = memref_load_402; 
        float arith_mulf_403 = (memref_load_380 * memref_load_402); 
        float memref_load_404 = memref_alloca_40[0]; 
        float arith_mulf_405 = (memref_load_381 * memref_load_404); 
        float arith_addf_406 = (arith_mulf_403 + arith_mulf_405); 
        float memref_load_407 = memref_alloca_41[0]; 
        memref_alloca_38[arith_const_16] = memref_load_407; 
        float arith_mulf_408 = (memref_load_382 * memref_load_407); 
        float arith_addf_409 = (arith_addf_406 + arith_mulf_408); 
        float memref_load_410 = memref_alloca_44[0]; 
        float arith_mulf_411 = (memref_load_383 * memref_load_410); 
        float arith_addf_412 = (arith_addf_409 + arith_mulf_411); 
        int arith_muli_413 = (arith_muli_401 * arith_const_9); 
        int arith_addi_414 = (arith_muli_413 + arith_const_8); 
        func_arg_6[arith_addi_414][arith_addi_399] = arith_addf_412; 
        int arith_muli_415 = (arith_muli_401 * arith_const_9); 
        int arith_addi_416 = (arith_muli_415 + arith_const_8); 
        float memref_load_417 = func_arg_6[arith_addi_416][arith_addi_399]; 
        memref_alloca_41[0] = memref_load_417; 
        float memref_load_418 = memref_alloca_38[arith_const_16]; 
        memref_alloca_44[0] = memref_load_418; 
        int arith_muli_419 = (arith_muli_401 * arith_const_9); 
        int arith_addi_420 = (arith_muli_419 + arith_const_8); 
        float memref_load_421 = func_arg_4[arith_addi_420][arith_addi_399]; 
        memref_alloca_28[0] = memref_load_421; 
        float memref_load_422 = memref_alloca_35[arith_const_16]; 
        memref_alloca_40[0] = memref_load_422; 
        int arith_addi_423 = (arith_muli_401 + arith_const_14); 
        float memref_load_424 = memref_alloca_28[0]; 
        memref_alloca_35[arith_const_16] = memref_load_424; 
        float arith_mulf_425 = (memref_load_384 * memref_load_424); 
        float memref_load_426 = memref_alloca_40[0]; 
        float arith_mulf_427 = (memref_load_385 * memref_load_426); 
        float arith_addf_428 = (arith_mulf_425 + arith_mulf_427); 
        float memref_load_429 = memref_alloca_41[0]; 
        memref_alloca_38[arith_const_16] = memref_load_429; 
        float arith_mulf_430 = (memref_load_386 * memref_load_429); 
        float arith_addf_431 = (arith_addf_428 + arith_mulf_430); 
        float memref_load_432 = memref_alloca_44[0]; 
        float arith_mulf_433 = (memref_load_387 * memref_load_432); 
        float arith_addf_434 = (arith_addf_431 + arith_mulf_433); 
        int arith_muli_435 = (arith_addi_423 * arith_const_9); 
        int arith_addi_436 = (arith_muli_435 + arith_const_8); 
        func_arg_6[arith_addi_436][arith_addi_399] = arith_addf_434; 
        int arith_muli_437 = (arith_addi_423 * arith_const_9); 
        int arith_addi_438 = (arith_muli_437 + arith_const_8); 
        float memref_load_439 = func_arg_6[arith_addi_438][arith_addi_399]; 
        memref_alloca_41[0] = memref_load_439; 
        float memref_load_440 = memref_alloca_38[arith_const_16]; 
        memref_alloca_44[0] = memref_load_440; 
        int arith_muli_441 = (arith_addi_423 * arith_const_9); 
        int arith_addi_442 = (arith_muli_441 + arith_const_8); 
        float memref_load_443 = func_arg_4[arith_addi_442][arith_addi_399]; 
        memref_alloca_28[0] = memref_load_443; 
        float memref_load_444 = memref_alloca_35[arith_const_16]; 
        memref_alloca_40[0] = memref_load_444; 
        int arith_addi_445 = (arith_muli_401 + arith_const_15); 
        float memref_load_446 = memref_alloca_28[0]; 
        memref_alloca_35[arith_const_16] = memref_load_446; 
        float arith_mulf_447 = (memref_load_388 * memref_load_446); 
        float memref_load_448 = memref_alloca_40[0]; 
        float arith_mulf_449 = (memref_load_389 * memref_load_448); 
        float arith_addf_450 = (arith_mulf_447 + arith_mulf_449); 
        float memref_load_451 = memref_alloca_41[0]; 
        memref_alloca_38[arith_const_16] = memref_load_451; 
        float arith_mulf_452 = (memref_load_390 * memref_load_451); 
        float arith_addf_453 = (arith_addf_450 + arith_mulf_452); 
        float memref_load_454 = memref_alloca_44[0]; 
        float arith_mulf_455 = (memref_load_391 * memref_load_454); 
        float arith_addf_456 = (arith_addf_453 + arith_mulf_455); 
        int arith_muli_457 = (arith_addi_445 * arith_const_9); 
        int arith_addi_458 = (arith_muli_457 + arith_const_8); 
        func_arg_6[arith_addi_458][arith_addi_399] = arith_addf_456; 
        int arith_muli_459 = (arith_addi_445 * arith_const_9); 
        int arith_addi_460 = (arith_muli_459 + arith_const_8); 
        float memref_load_461 = func_arg_6[arith_addi_460][arith_addi_399]; 
        memref_alloca_41[0] = memref_load_461; 
        float memref_load_462 = memref_alloca_38[arith_const_16]; 
        memref_alloca_44[0] = memref_load_462; 
        int arith_muli_463 = (arith_addi_445 * arith_const_9); 
        int arith_addi_464 = (arith_muli_463 + arith_const_8); 
        float memref_load_465 = func_arg_4[arith_addi_464][arith_addi_399]; 
        memref_alloca_28[0] = memref_load_465; 
        float memref_load_466 = memref_alloca_35[arith_const_16]; 
        memref_alloca_40[0] = memref_load_466; 
        int arith_addi_467 = (arith_muli_401 + arith_const_10); 
        float memref_load_468 = memref_alloca_28[0]; 
        memref_alloca_35[arith_const_16] = memref_load_468; 
        float arith_mulf_469 = (memref_load_392 * memref_load_468); 
        float memref_load_470 = memref_alloca_40[0]; 
        float arith_mulf_471 = (memref_load_393 * memref_load_470); 
        float arith_addf_472 = (arith_mulf_469 + arith_mulf_471); 
        float memref_load_473 = memref_alloca_41[0]; 
        memref_alloca_38[arith_const_16] = memref_load_473; 
        float arith_mulf_474 = (memref_load_394 * memref_load_473); 
        float arith_addf_475 = (arith_addf_472 + arith_mulf_474); 
        float memref_load_476 = memref_alloca_44[0]; 
        float arith_mulf_477 = (memref_load_395 * memref_load_476); 
        float arith_addf_478 = (arith_addf_475 + arith_mulf_477); 
        int arith_muli_479 = (arith_addi_467 * arith_const_9); 
        int arith_addi_480 = (arith_muli_479 + arith_const_8); 
        func_arg_6[arith_addi_480][arith_addi_399] = arith_addf_478; 
        int arith_muli_481 = (arith_addi_467 * arith_const_9); 
        int arith_addi_482 = (arith_muli_481 + arith_const_8); 
        float memref_load_483 = func_arg_6[arith_addi_482][arith_addi_399]; 
        memref_alloca_41[0] = memref_load_483; 
        float memref_load_484 = memref_alloca_38[arith_const_16]; 
        memref_alloca_44[0] = memref_load_484; 
        int arith_muli_485 = (arith_addi_467 * arith_const_9); 
        int arith_addi_486 = (arith_muli_485 + arith_const_8); 
        float memref_load_487 = func_arg_4[arith_addi_486][arith_addi_399]; 
        memref_alloca_28[0] = memref_load_487; 
        float memref_load_488 = memref_alloca_35[arith_const_16]; 
        memref_alloca_40[0] = memref_load_488; 
      }
    }
  }
  for (int for_iter_489 = arith_const_16; for_iter_489 < arith_const_15; for_iter_489 += arith_const_14) {
    for (int for_iter_490 = arith_const_16; for_iter_490 < arith_const_13; for_iter_490 += arith_const_14) {
      int arith_muli_491 = (for_iter_489 * arith_const_13); 
      int arith_addi_492 = (arith_muli_491 + for_iter_490); 
      for (int for_iter_493 = arith_const_16; for_iter_493 < arith_const_15; for_iter_493 += arith_const_14) {
        for (int for_iter_494 = arith_const_16; for_iter_494 < arith_const_7; for_iter_494 += arith_const_14) {
          int arith_muli_495 = (for_iter_493 * arith_const_13); 
          int arith_muli_496 = (for_iter_494 * arith_const_11); 
          int arith_addi_497 = (arith_muli_495 + arith_muli_496); 
          float memref_load_498 = func_arg_5[arith_addi_492][arith_addi_497]; 
          float memref_load_499 = func_arg_6[arith_addi_492][arith_addi_497]; 
          float arith_addf_500 = (memref_load_498 + memref_load_499); 
          func_arg_4[arith_addi_492][arith_addi_497] = arith_addf_500; 
          int arith_addi_501 = (arith_addi_497 + arith_const_14); 
          float memref_load_502 = func_arg_5[arith_addi_492][arith_addi_501]; 
          float memref_load_503 = func_arg_6[arith_addi_492][arith_addi_501]; 
          float arith_addf_504 = (memref_load_502 + memref_load_503); 
          func_arg_4[arith_addi_492][arith_addi_501] = arith_addf_504; 
          int arith_addi_505 = (arith_addi_497 + arith_const_15); 
          float memref_load_506 = func_arg_5[arith_addi_492][arith_addi_505]; 
          float memref_load_507 = func_arg_6[arith_addi_492][arith_addi_505]; 
          float arith_addf_508 = (memref_load_506 + memref_load_507); 
          func_arg_4[arith_addi_492][arith_addi_505] = arith_addf_508; 
          int arith_addi_509 = (arith_addi_497 + arith_const_10); 
          float memref_load_510 = func_arg_5[arith_addi_492][arith_addi_509]; 
          float memref_load_511 = func_arg_6[arith_addi_492][arith_addi_509]; 
          float arith_addf_512 = (memref_load_510 + memref_load_511); 
          func_arg_4[arith_addi_492][arith_addi_509] = arith_addf_512; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
