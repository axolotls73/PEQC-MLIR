#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 63; 
  int arith_const_8 = -1; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 1; 
  int arith_const_13 = 64; 
  int arith_const_14 = 0; 
  float arith_const_15 = 0.000000; 
  float arith_const_16 = -2.000000; 
  float arith_const_17 = 2.000000; 
  float arith_const_18 = 1.000000; 
  float _19; 
  float* memref_alloca_20; 
  memref_alloca_20[0] = _19; 
  float* memref_alloca_21; 
  memref_alloca_21[0] = _19; 
  float* memref_alloca_22; 
  memref_alloca_22[0] = _19; 
  float* memref_alloca_23; 
  memref_alloca_23[0] = _19; 
  float* memref_alloca_24; 
  memref_alloca_24[0] = _19; 
  float* memref_alloca_25; 
  memref_alloca_25[0] = _19; 
  float* memref_alloca_26; 
  memref_alloca_26[0] = _19; 
  float* memref_alloca_27; 
  memref_alloca_27[0] = _19; 
  float* memref_alloca_28; 
  memref_alloca_28[0] = _19; 
  float* memref_alloca_29; 
  memref_alloca_29[0] = _19; 
  float arith_negf_30 = -(func_arg_2); 
  float math_exp_31 = exp(arith_negf_30); 
  float arith_subf_32 = (arith_const_18 - math_exp_31); 
  float arith_mulf_33 = (arith_subf_32 * arith_subf_32); 
  float arith_mulf_34 = (func_arg_2 * math_exp_31); 
  float arith_mulf_35 = (arith_mulf_34 * arith_const_17); 
  float arith_addf_36 = (arith_mulf_35 + arith_const_18); 
  float arith_mulf_37 = (func_arg_2 * arith_const_17); 
  float math_exp_38 = exp(arith_mulf_37); 
  float arith_subf_39 = (arith_addf_36 - math_exp_38); 
  float arith_divf_40 = (arith_mulf_33 / arith_subf_39); 
  float arith_mulf_41 = (arith_divf_40 * math_exp_31); 
  float arith_subf_42 = (func_arg_2 - arith_const_18); 
  float arith_mulf_43 = (arith_mulf_41 * arith_subf_42); 
  float arith_addf_44 = (func_arg_2 + arith_const_18); 
  float arith_mulf_45 = (arith_mulf_41 * arith_addf_44); 
  float arith_negf_46 = -(arith_divf_40); 
  float arith_mulf_47 = (func_arg_2 * arith_const_16); 
  float math_exp_48 = exp(arith_mulf_47); 
  float arith_mulf_49 = (arith_negf_46 * math_exp_48); 
  float math_powf_50 = pow(arith_const_17, arith_negf_30); 
  float arith_negf_51 = -(math_exp_48); 
  for (int for_iter_52 = arith_const_14; for_iter_52 < arith_const_13; for_iter_52 += arith_const_12) {
    memref_alloca_27[0] = arith_const_15; 
    memref_alloca_26[0] = arith_const_15; 
    memref_alloca_29[0] = arith_const_15; 
    for (int for_iter_53 = arith_const_14; for_iter_53 < arith_const_13; for_iter_53 += arith_const_11) {
      float memref_load_54 = func_arg_3[for_iter_52][for_iter_53]; 
      float arith_mulf_55 = (arith_divf_40 * memref_load_54); 
      float memref_load_56 = memref_alloca_29[0]; 
      float arith_mulf_57 = (arith_mulf_43 * memref_load_56); 
      float arith_addf_58 = (arith_mulf_55 + arith_mulf_57); 
      float memref_load_59 = memref_alloca_27[0]; 
      float arith_mulf_60 = (math_powf_50 * memref_load_59); 
      float arith_addf_61 = (arith_addf_58 + arith_mulf_60); 
      float memref_load_62 = memref_alloca_26[0]; 
      float arith_mulf_63 = (arith_negf_51 * memref_load_62); 
      float arith_addf_64 = (arith_addf_61 + arith_mulf_63); 
      func_arg_5[for_iter_52][for_iter_53] = arith_addf_64; 
      float memref_load_65 = func_arg_3[for_iter_52][for_iter_53]; 
      memref_alloca_29[0] = memref_load_65; 
      memref_alloca_26[0] = memref_load_59; 
      float memref_load_66 = func_arg_5[for_iter_52][for_iter_53]; 
      memref_alloca_27[0] = memref_load_66; 
      int arith_addi_67 = (for_iter_53 + arith_const_12); 
      float memref_load_68 = func_arg_3[for_iter_52][arith_addi_67]; 
      float arith_mulf_69 = (arith_divf_40 * memref_load_68); 
      float memref_load_70 = memref_alloca_29[0]; 
      float arith_mulf_71 = (arith_mulf_43 * memref_load_70); 
      float arith_addf_72 = (arith_mulf_69 + arith_mulf_71); 
      float memref_load_73 = memref_alloca_27[0]; 
      float arith_mulf_74 = (math_powf_50 * memref_load_73); 
      float arith_addf_75 = (arith_addf_72 + arith_mulf_74); 
      float memref_load_76 = memref_alloca_26[0]; 
      float arith_mulf_77 = (arith_negf_51 * memref_load_76); 
      float arith_addf_78 = (arith_addf_75 + arith_mulf_77); 
      func_arg_5[for_iter_52][arith_addi_67] = arith_addf_78; 
      float memref_load_79 = func_arg_3[for_iter_52][arith_addi_67]; 
      memref_alloca_29[0] = memref_load_79; 
      memref_alloca_26[0] = memref_load_73; 
      float memref_load_80 = func_arg_5[for_iter_52][arith_addi_67]; 
      memref_alloca_27[0] = memref_load_80; 
      int arith_addi_81 = (for_iter_53 + arith_const_10); 
      float memref_load_82 = func_arg_3[for_iter_52][arith_addi_81]; 
      float arith_mulf_83 = (arith_divf_40 * memref_load_82); 
      float memref_load_84 = memref_alloca_29[0]; 
      float arith_mulf_85 = (arith_mulf_43 * memref_load_84); 
      float arith_addf_86 = (arith_mulf_83 + arith_mulf_85); 
      float memref_load_87 = memref_alloca_27[0]; 
      float arith_mulf_88 = (math_powf_50 * memref_load_87); 
      float arith_addf_89 = (arith_addf_86 + arith_mulf_88); 
      float memref_load_90 = memref_alloca_26[0]; 
      float arith_mulf_91 = (arith_negf_51 * memref_load_90); 
      float arith_addf_92 = (arith_addf_89 + arith_mulf_91); 
      func_arg_5[for_iter_52][arith_addi_81] = arith_addf_92; 
      float memref_load_93 = func_arg_3[for_iter_52][arith_addi_81]; 
      memref_alloca_29[0] = memref_load_93; 
      memref_alloca_26[0] = memref_load_87; 
      float memref_load_94 = func_arg_5[for_iter_52][arith_addi_81]; 
      memref_alloca_27[0] = memref_load_94; 
      int arith_addi_95 = (for_iter_53 + arith_const_9); 
      float memref_load_96 = func_arg_3[for_iter_52][arith_addi_95]; 
      float arith_mulf_97 = (arith_divf_40 * memref_load_96); 
      float memref_load_98 = memref_alloca_29[0]; 
      float arith_mulf_99 = (arith_mulf_43 * memref_load_98); 
      float arith_addf_100 = (arith_mulf_97 + arith_mulf_99); 
      float memref_load_101 = memref_alloca_27[0]; 
      float arith_mulf_102 = (math_powf_50 * memref_load_101); 
      float arith_addf_103 = (arith_addf_100 + arith_mulf_102); 
      float memref_load_104 = memref_alloca_26[0]; 
      float arith_mulf_105 = (arith_negf_51 * memref_load_104); 
      float arith_addf_106 = (arith_addf_103 + arith_mulf_105); 
      func_arg_5[for_iter_52][arith_addi_95] = arith_addf_106; 
      float memref_load_107 = func_arg_3[for_iter_52][arith_addi_95]; 
      memref_alloca_29[0] = memref_load_107; 
      memref_alloca_26[0] = memref_load_101; 
      float memref_load_108 = func_arg_5[for_iter_52][arith_addi_95]; 
      memref_alloca_27[0] = memref_load_108; 
    }
  }
  for (int for_iter_109 = arith_const_14; for_iter_109 < arith_const_13; for_iter_109 += arith_const_12) {
    memref_alloca_21[0] = arith_const_15; 
    memref_alloca_20[0] = arith_const_15; 
    memref_alloca_25[0] = arith_const_15; 
    memref_alloca_24[0] = arith_const_15; 
    for (int for_iter_110 = arith_const_14; for_iter_110 < arith_const_13; for_iter_110 += arith_const_11) {
      float memref_load_111 = memref_alloca_25[0]; 
      float arith_mulf_112 = (arith_mulf_45 * memref_load_111); 
      float memref_load_113 = memref_alloca_24[0]; 
      float arith_mulf_114 = (arith_mulf_49 * memref_load_113); 
      float arith_addf_115 = (arith_mulf_112 + arith_mulf_114); 
      float memref_load_116 = memref_alloca_21[0]; 
      float arith_mulf_117 = (math_powf_50 * memref_load_116); 
      float arith_addf_118 = (arith_addf_115 + arith_mulf_117); 
      float memref_load_119 = memref_alloca_20[0]; 
      float arith_mulf_120 = (arith_negf_51 * memref_load_119); 
      float arith_addf_121 = (arith_addf_118 + arith_mulf_120); 
      int arith_muli_122 = (for_iter_110 * arith_const_8); 
      int arith_addi_123 = (arith_muli_122 + arith_const_7); 
      func_arg_6[for_iter_109][arith_addi_123] = arith_addf_121; 
      memref_alloca_24[0] = memref_load_111; 
      int arith_muli_124 = (for_iter_110 * arith_const_8); 
      int arith_addi_125 = (arith_muli_124 + arith_const_7); 
      float memref_load_126 = func_arg_3[for_iter_109][arith_addi_125]; 
      memref_alloca_25[0] = memref_load_126; 
      memref_alloca_20[0] = memref_load_116; 
      int arith_muli_127 = (for_iter_110 * arith_const_8); 
      int arith_addi_128 = (arith_muli_127 + arith_const_7); 
      float memref_load_129 = func_arg_6[for_iter_109][arith_addi_128]; 
      memref_alloca_21[0] = memref_load_129; 
      int arith_addi_130 = (for_iter_110 + arith_const_12); 
      float memref_load_131 = memref_alloca_25[0]; 
      float arith_mulf_132 = (arith_mulf_45 * memref_load_131); 
      float memref_load_133 = memref_alloca_24[0]; 
      float arith_mulf_134 = (arith_mulf_49 * memref_load_133); 
      float arith_addf_135 = (arith_mulf_132 + arith_mulf_134); 
      float memref_load_136 = memref_alloca_21[0]; 
      float arith_mulf_137 = (math_powf_50 * memref_load_136); 
      float arith_addf_138 = (arith_addf_135 + arith_mulf_137); 
      float memref_load_139 = memref_alloca_20[0]; 
      float arith_mulf_140 = (arith_negf_51 * memref_load_139); 
      float arith_addf_141 = (arith_addf_138 + arith_mulf_140); 
      int arith_muli_142 = (arith_addi_130 * arith_const_8); 
      int arith_addi_143 = (arith_muli_142 + arith_const_7); 
      func_arg_6[for_iter_109][arith_addi_143] = arith_addf_141; 
      memref_alloca_24[0] = memref_load_131; 
      int arith_muli_144 = (arith_addi_130 * arith_const_8); 
      int arith_addi_145 = (arith_muli_144 + arith_const_7); 
      float memref_load_146 = func_arg_3[for_iter_109][arith_addi_145]; 
      memref_alloca_25[0] = memref_load_146; 
      memref_alloca_20[0] = memref_load_136; 
      int arith_muli_147 = (arith_addi_130 * arith_const_8); 
      int arith_addi_148 = (arith_muli_147 + arith_const_7); 
      float memref_load_149 = func_arg_6[for_iter_109][arith_addi_148]; 
      memref_alloca_21[0] = memref_load_149; 
      int arith_addi_150 = (for_iter_110 + arith_const_10); 
      float memref_load_151 = memref_alloca_25[0]; 
      float arith_mulf_152 = (arith_mulf_45 * memref_load_151); 
      float memref_load_153 = memref_alloca_24[0]; 
      float arith_mulf_154 = (arith_mulf_49 * memref_load_153); 
      float arith_addf_155 = (arith_mulf_152 + arith_mulf_154); 
      float memref_load_156 = memref_alloca_21[0]; 
      float arith_mulf_157 = (math_powf_50 * memref_load_156); 
      float arith_addf_158 = (arith_addf_155 + arith_mulf_157); 
      float memref_load_159 = memref_alloca_20[0]; 
      float arith_mulf_160 = (arith_negf_51 * memref_load_159); 
      float arith_addf_161 = (arith_addf_158 + arith_mulf_160); 
      int arith_muli_162 = (arith_addi_150 * arith_const_8); 
      int arith_addi_163 = (arith_muli_162 + arith_const_7); 
      func_arg_6[for_iter_109][arith_addi_163] = arith_addf_161; 
      memref_alloca_24[0] = memref_load_151; 
      int arith_muli_164 = (arith_addi_150 * arith_const_8); 
      int arith_addi_165 = (arith_muli_164 + arith_const_7); 
      float memref_load_166 = func_arg_3[for_iter_109][arith_addi_165]; 
      memref_alloca_25[0] = memref_load_166; 
      memref_alloca_20[0] = memref_load_156; 
      int arith_muli_167 = (arith_addi_150 * arith_const_8); 
      int arith_addi_168 = (arith_muli_167 + arith_const_7); 
      float memref_load_169 = func_arg_6[for_iter_109][arith_addi_168]; 
      memref_alloca_21[0] = memref_load_169; 
      int arith_addi_170 = (for_iter_110 + arith_const_9); 
      float memref_load_171 = memref_alloca_25[0]; 
      float arith_mulf_172 = (arith_mulf_45 * memref_load_171); 
      float memref_load_173 = memref_alloca_24[0]; 
      float arith_mulf_174 = (arith_mulf_49 * memref_load_173); 
      float arith_addf_175 = (arith_mulf_172 + arith_mulf_174); 
      float memref_load_176 = memref_alloca_21[0]; 
      float arith_mulf_177 = (math_powf_50 * memref_load_176); 
      float arith_addf_178 = (arith_addf_175 + arith_mulf_177); 
      float memref_load_179 = memref_alloca_20[0]; 
      float arith_mulf_180 = (arith_negf_51 * memref_load_179); 
      float arith_addf_181 = (arith_addf_178 + arith_mulf_180); 
      int arith_muli_182 = (arith_addi_170 * arith_const_8); 
      int arith_addi_183 = (arith_muli_182 + arith_const_7); 
      func_arg_6[for_iter_109][arith_addi_183] = arith_addf_181; 
      memref_alloca_24[0] = memref_load_171; 
      int arith_muli_184 = (arith_addi_170 * arith_const_8); 
      int arith_addi_185 = (arith_muli_184 + arith_const_7); 
      float memref_load_186 = func_arg_3[for_iter_109][arith_addi_185]; 
      memref_alloca_25[0] = memref_load_186; 
      memref_alloca_20[0] = memref_load_176; 
      int arith_muli_187 = (arith_addi_170 * arith_const_8); 
      int arith_addi_188 = (arith_muli_187 + arith_const_7); 
      float memref_load_189 = func_arg_6[for_iter_109][arith_addi_188]; 
      memref_alloca_21[0] = memref_load_189; 
    }
  }
  for (int for_iter_190 = arith_const_14; for_iter_190 < arith_const_13; for_iter_190 += arith_const_12) {
    for (int for_iter_191 = arith_const_14; for_iter_191 < arith_const_13; for_iter_191 += arith_const_11) {
      float memref_load_192 = func_arg_5[for_iter_190][for_iter_191]; 
      float memref_load_193 = func_arg_6[for_iter_190][for_iter_191]; 
      float arith_addf_194 = (memref_load_192 + memref_load_193); 
      func_arg_4[for_iter_190][for_iter_191] = arith_addf_194; 
      int arith_addi_195 = (for_iter_191 + arith_const_12); 
      float memref_load_196 = func_arg_5[for_iter_190][arith_addi_195]; 
      float memref_load_197 = func_arg_6[for_iter_190][arith_addi_195]; 
      float arith_addf_198 = (memref_load_196 + memref_load_197); 
      func_arg_4[for_iter_190][arith_addi_195] = arith_addf_198; 
      int arith_addi_199 = (for_iter_191 + arith_const_10); 
      float memref_load_200 = func_arg_5[for_iter_190][arith_addi_199]; 
      float memref_load_201 = func_arg_6[for_iter_190][arith_addi_199]; 
      float arith_addf_202 = (memref_load_200 + memref_load_201); 
      func_arg_4[for_iter_190][arith_addi_199] = arith_addf_202; 
      int arith_addi_203 = (for_iter_191 + arith_const_9); 
      float memref_load_204 = func_arg_5[for_iter_190][arith_addi_203]; 
      float memref_load_205 = func_arg_6[for_iter_190][arith_addi_203]; 
      float arith_addf_206 = (memref_load_204 + memref_load_205); 
      func_arg_4[for_iter_190][arith_addi_203] = arith_addf_206; 
    }
  }
  for (int for_iter_207 = arith_const_14; for_iter_207 < arith_const_13; for_iter_207 += arith_const_12) {
    memref_alloca_28[0] = arith_const_15; 
    memref_alloca_27[0] = arith_const_15; 
    memref_alloca_26[0] = arith_const_15; 
    for (int for_iter_208 = arith_const_14; for_iter_208 < arith_const_13; for_iter_208 += arith_const_11) {
      float memref_load_209 = func_arg_4[for_iter_208][for_iter_207]; 
      float arith_mulf_210 = (arith_divf_40 * memref_load_209); 
      float memref_load_211 = memref_alloca_28[0]; 
      float arith_mulf_212 = (arith_mulf_43 * memref_load_211); 
      float arith_addf_213 = (arith_mulf_210 + arith_mulf_212); 
      float memref_load_214 = memref_alloca_27[0]; 
      float arith_mulf_215 = (math_powf_50 * memref_load_214); 
      float arith_addf_216 = (arith_addf_213 + arith_mulf_215); 
      float memref_load_217 = memref_alloca_26[0]; 
      float arith_mulf_218 = (arith_negf_51 * memref_load_217); 
      float arith_addf_219 = (arith_addf_216 + arith_mulf_218); 
      func_arg_5[for_iter_208][for_iter_207] = arith_addf_219; 
      float memref_load_220 = func_arg_4[for_iter_208][for_iter_207]; 
      memref_alloca_28[0] = memref_load_220; 
      memref_alloca_26[0] = memref_load_214; 
      float memref_load_221 = func_arg_5[for_iter_208][for_iter_207]; 
      memref_alloca_27[0] = memref_load_221; 
      int arith_addi_222 = (for_iter_208 + arith_const_12); 
      float memref_load_223 = func_arg_4[arith_addi_222][for_iter_207]; 
      float arith_mulf_224 = (arith_divf_40 * memref_load_223); 
      float memref_load_225 = memref_alloca_28[0]; 
      float arith_mulf_226 = (arith_mulf_43 * memref_load_225); 
      float arith_addf_227 = (arith_mulf_224 + arith_mulf_226); 
      float memref_load_228 = memref_alloca_27[0]; 
      float arith_mulf_229 = (math_powf_50 * memref_load_228); 
      float arith_addf_230 = (arith_addf_227 + arith_mulf_229); 
      float memref_load_231 = memref_alloca_26[0]; 
      float arith_mulf_232 = (arith_negf_51 * memref_load_231); 
      float arith_addf_233 = (arith_addf_230 + arith_mulf_232); 
      func_arg_5[arith_addi_222][for_iter_207] = arith_addf_233; 
      float memref_load_234 = func_arg_4[arith_addi_222][for_iter_207]; 
      memref_alloca_28[0] = memref_load_234; 
      memref_alloca_26[0] = memref_load_228; 
      float memref_load_235 = func_arg_5[arith_addi_222][for_iter_207]; 
      memref_alloca_27[0] = memref_load_235; 
      int arith_addi_236 = (for_iter_208 + arith_const_10); 
      float memref_load_237 = func_arg_4[arith_addi_236][for_iter_207]; 
      float arith_mulf_238 = (arith_divf_40 * memref_load_237); 
      float memref_load_239 = memref_alloca_28[0]; 
      float arith_mulf_240 = (arith_mulf_43 * memref_load_239); 
      float arith_addf_241 = (arith_mulf_238 + arith_mulf_240); 
      float memref_load_242 = memref_alloca_27[0]; 
      float arith_mulf_243 = (math_powf_50 * memref_load_242); 
      float arith_addf_244 = (arith_addf_241 + arith_mulf_243); 
      float memref_load_245 = memref_alloca_26[0]; 
      float arith_mulf_246 = (arith_negf_51 * memref_load_245); 
      float arith_addf_247 = (arith_addf_244 + arith_mulf_246); 
      func_arg_5[arith_addi_236][for_iter_207] = arith_addf_247; 
      float memref_load_248 = func_arg_4[arith_addi_236][for_iter_207]; 
      memref_alloca_28[0] = memref_load_248; 
      memref_alloca_26[0] = memref_load_242; 
      float memref_load_249 = func_arg_5[arith_addi_236][for_iter_207]; 
      memref_alloca_27[0] = memref_load_249; 
      int arith_addi_250 = (for_iter_208 + arith_const_9); 
      float memref_load_251 = func_arg_4[arith_addi_250][for_iter_207]; 
      float arith_mulf_252 = (arith_divf_40 * memref_load_251); 
      float memref_load_253 = memref_alloca_28[0]; 
      float arith_mulf_254 = (arith_mulf_43 * memref_load_253); 
      float arith_addf_255 = (arith_mulf_252 + arith_mulf_254); 
      float memref_load_256 = memref_alloca_27[0]; 
      float arith_mulf_257 = (math_powf_50 * memref_load_256); 
      float arith_addf_258 = (arith_addf_255 + arith_mulf_257); 
      float memref_load_259 = memref_alloca_26[0]; 
      float arith_mulf_260 = (arith_negf_51 * memref_load_259); 
      float arith_addf_261 = (arith_addf_258 + arith_mulf_260); 
      func_arg_5[arith_addi_250][for_iter_207] = arith_addf_261; 
      float memref_load_262 = func_arg_4[arith_addi_250][for_iter_207]; 
      memref_alloca_28[0] = memref_load_262; 
      memref_alloca_26[0] = memref_load_256; 
      float memref_load_263 = func_arg_5[arith_addi_250][for_iter_207]; 
      memref_alloca_27[0] = memref_load_263; 
    }
  }
  for (int for_iter_264 = arith_const_14; for_iter_264 < arith_const_13; for_iter_264 += arith_const_12) {
    memref_alloca_23[0] = arith_const_15; 
    memref_alloca_22[0] = arith_const_15; 
    memref_alloca_21[0] = arith_const_15; 
    memref_alloca_20[0] = arith_const_15; 
    for (int for_iter_265 = arith_const_14; for_iter_265 < arith_const_13; for_iter_265 += arith_const_11) {
      float memref_load_266 = memref_alloca_23[0]; 
      float arith_mulf_267 = (arith_mulf_45 * memref_load_266); 
      float memref_load_268 = memref_alloca_22[0]; 
      float arith_mulf_269 = (arith_mulf_49 * memref_load_268); 
      float arith_addf_270 = (arith_mulf_267 + arith_mulf_269); 
      float memref_load_271 = memref_alloca_21[0]; 
      float arith_mulf_272 = (math_powf_50 * memref_load_271); 
      float arith_addf_273 = (arith_addf_270 + arith_mulf_272); 
      float memref_load_274 = memref_alloca_20[0]; 
      float arith_mulf_275 = (arith_negf_51 * memref_load_274); 
      float arith_addf_276 = (arith_addf_273 + arith_mulf_275); 
      int arith_muli_277 = (for_iter_265 * arith_const_8); 
      int arith_addi_278 = (arith_muli_277 + arith_const_7); 
      func_arg_6[arith_addi_278][for_iter_264] = arith_addf_276; 
      memref_alloca_22[0] = memref_load_266; 
      int arith_muli_279 = (for_iter_265 * arith_const_8); 
      int arith_addi_280 = (arith_muli_279 + arith_const_7); 
      float memref_load_281 = func_arg_4[arith_addi_280][for_iter_264]; 
      memref_alloca_23[0] = memref_load_281; 
      memref_alloca_20[0] = memref_load_271; 
      int arith_muli_282 = (for_iter_265 * arith_const_8); 
      int arith_addi_283 = (arith_muli_282 + arith_const_7); 
      float memref_load_284 = func_arg_6[arith_addi_283][for_iter_264]; 
      memref_alloca_21[0] = memref_load_284; 
      int arith_addi_285 = (for_iter_265 + arith_const_12); 
      float memref_load_286 = memref_alloca_23[0]; 
      float arith_mulf_287 = (arith_mulf_45 * memref_load_286); 
      float memref_load_288 = memref_alloca_22[0]; 
      float arith_mulf_289 = (arith_mulf_49 * memref_load_288); 
      float arith_addf_290 = (arith_mulf_287 + arith_mulf_289); 
      float memref_load_291 = memref_alloca_21[0]; 
      float arith_mulf_292 = (math_powf_50 * memref_load_291); 
      float arith_addf_293 = (arith_addf_290 + arith_mulf_292); 
      float memref_load_294 = memref_alloca_20[0]; 
      float arith_mulf_295 = (arith_negf_51 * memref_load_294); 
      float arith_addf_296 = (arith_addf_293 + arith_mulf_295); 
      int arith_muli_297 = (arith_addi_285 * arith_const_8); 
      int arith_addi_298 = (arith_muli_297 + arith_const_7); 
      func_arg_6[arith_addi_298][for_iter_264] = arith_addf_296; 
      memref_alloca_22[0] = memref_load_286; 
      int arith_muli_299 = (arith_addi_285 * arith_const_8); 
      int arith_addi_300 = (arith_muli_299 + arith_const_7); 
      float memref_load_301 = func_arg_4[arith_addi_300][for_iter_264]; 
      memref_alloca_23[0] = memref_load_301; 
      memref_alloca_20[0] = memref_load_291; 
      int arith_muli_302 = (arith_addi_285 * arith_const_8); 
      int arith_addi_303 = (arith_muli_302 + arith_const_7); 
      float memref_load_304 = func_arg_6[arith_addi_303][for_iter_264]; 
      memref_alloca_21[0] = memref_load_304; 
      int arith_addi_305 = (for_iter_265 + arith_const_10); 
      float memref_load_306 = memref_alloca_23[0]; 
      float arith_mulf_307 = (arith_mulf_45 * memref_load_306); 
      float memref_load_308 = memref_alloca_22[0]; 
      float arith_mulf_309 = (arith_mulf_49 * memref_load_308); 
      float arith_addf_310 = (arith_mulf_307 + arith_mulf_309); 
      float memref_load_311 = memref_alloca_21[0]; 
      float arith_mulf_312 = (math_powf_50 * memref_load_311); 
      float arith_addf_313 = (arith_addf_310 + arith_mulf_312); 
      float memref_load_314 = memref_alloca_20[0]; 
      float arith_mulf_315 = (arith_negf_51 * memref_load_314); 
      float arith_addf_316 = (arith_addf_313 + arith_mulf_315); 
      int arith_muli_317 = (arith_addi_305 * arith_const_8); 
      int arith_addi_318 = (arith_muli_317 + arith_const_7); 
      func_arg_6[arith_addi_318][for_iter_264] = arith_addf_316; 
      memref_alloca_22[0] = memref_load_306; 
      int arith_muli_319 = (arith_addi_305 * arith_const_8); 
      int arith_addi_320 = (arith_muli_319 + arith_const_7); 
      float memref_load_321 = func_arg_4[arith_addi_320][for_iter_264]; 
      memref_alloca_23[0] = memref_load_321; 
      memref_alloca_20[0] = memref_load_311; 
      int arith_muli_322 = (arith_addi_305 * arith_const_8); 
      int arith_addi_323 = (arith_muli_322 + arith_const_7); 
      float memref_load_324 = func_arg_6[arith_addi_323][for_iter_264]; 
      memref_alloca_21[0] = memref_load_324; 
      int arith_addi_325 = (for_iter_265 + arith_const_9); 
      float memref_load_326 = memref_alloca_23[0]; 
      float arith_mulf_327 = (arith_mulf_45 * memref_load_326); 
      float memref_load_328 = memref_alloca_22[0]; 
      float arith_mulf_329 = (arith_mulf_49 * memref_load_328); 
      float arith_addf_330 = (arith_mulf_327 + arith_mulf_329); 
      float memref_load_331 = memref_alloca_21[0]; 
      float arith_mulf_332 = (math_powf_50 * memref_load_331); 
      float arith_addf_333 = (arith_addf_330 + arith_mulf_332); 
      float memref_load_334 = memref_alloca_20[0]; 
      float arith_mulf_335 = (arith_negf_51 * memref_load_334); 
      float arith_addf_336 = (arith_addf_333 + arith_mulf_335); 
      int arith_muli_337 = (arith_addi_325 * arith_const_8); 
      int arith_addi_338 = (arith_muli_337 + arith_const_7); 
      func_arg_6[arith_addi_338][for_iter_264] = arith_addf_336; 
      memref_alloca_22[0] = memref_load_326; 
      int arith_muli_339 = (arith_addi_325 * arith_const_8); 
      int arith_addi_340 = (arith_muli_339 + arith_const_7); 
      float memref_load_341 = func_arg_4[arith_addi_340][for_iter_264]; 
      memref_alloca_23[0] = memref_load_341; 
      memref_alloca_20[0] = memref_load_331; 
      int arith_muli_342 = (arith_addi_325 * arith_const_8); 
      int arith_addi_343 = (arith_muli_342 + arith_const_7); 
      float memref_load_344 = func_arg_6[arith_addi_343][for_iter_264]; 
      memref_alloca_21[0] = memref_load_344; 
    }
  }
  for (int for_iter_345 = arith_const_14; for_iter_345 < arith_const_13; for_iter_345 += arith_const_12) {
    for (int for_iter_346 = arith_const_14; for_iter_346 < arith_const_13; for_iter_346 += arith_const_11) {
      float memref_load_347 = func_arg_5[for_iter_345][for_iter_346]; 
      float memref_load_348 = func_arg_6[for_iter_345][for_iter_346]; 
      float arith_addf_349 = (memref_load_347 + memref_load_348); 
      func_arg_4[for_iter_345][for_iter_346] = arith_addf_349; 
      int arith_addi_350 = (for_iter_346 + arith_const_12); 
      float memref_load_351 = func_arg_5[for_iter_345][arith_addi_350]; 
      float memref_load_352 = func_arg_6[for_iter_345][arith_addi_350]; 
      float arith_addf_353 = (memref_load_351 + memref_load_352); 
      func_arg_4[for_iter_345][arith_addi_350] = arith_addf_353; 
      int arith_addi_354 = (for_iter_346 + arith_const_10); 
      float memref_load_355 = func_arg_5[for_iter_345][arith_addi_354]; 
      float memref_load_356 = func_arg_6[for_iter_345][arith_addi_354]; 
      float arith_addf_357 = (memref_load_355 + memref_load_356); 
      func_arg_4[for_iter_345][arith_addi_354] = arith_addf_357; 
      int arith_addi_358 = (for_iter_346 + arith_const_9); 
      float memref_load_359 = func_arg_5[for_iter_345][arith_addi_358]; 
      float memref_load_360 = func_arg_6[for_iter_345][arith_addi_358]; 
      float arith_addf_361 = (memref_load_359 + memref_load_360); 
      func_arg_4[for_iter_345][arith_addi_358] = arith_addf_361; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int w;
  int h;
  float alpha;
  float* imgIn;
  float* imgOut;
  float* y1;
  float* y2;


  kernel_deriche(w, h, alpha, imgIn, imgOut, y1, y2);

}

#pragma pocc-region-end
