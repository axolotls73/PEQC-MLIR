#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 2; 
  int arith_const_9 = 63; 
  int arith_const_10 = -1; 
  int arith_const_11 = 1; 
  int arith_const_12 = 64; 
  int arith_const_13 = 0; 
  float arith_const_14 = 0.000000; 
  float arith_const_15 = 1.000000; 
  float arith_const_16 = 2.000000; 
  float arith_const_17 = -2.000000; 
  float* memref_alloca_18; 
  float* memref_alloca_19; 
  float* memref_alloca_20; 
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
  float arith_mulf_42 = (func_arg_2 * arith_const_17); 
  float math_exp_43 = exp(arith_mulf_42); 
  float arith_negf_44 = -(math_exp_43); 
  memref_alloca_22[arith_const_13] = arith_negf_44; 
  float arith_negf_45 = -(func_arg_2); 
  float math_powf_46 = pow(arith_const_16, arith_negf_45); 
  memref_alloca_31[arith_const_13] = math_powf_46; 
  float arith_negf_47 = -(func_arg_2); 
  float math_exp_48 = exp(arith_negf_47); 
  float arith_mulf_49 = (func_arg_2 * math_exp_48); 
  float arith_subf_50 = (arith_const_15 - math_exp_48); 
  float arith_mulf_51 = (arith_subf_50 * arith_subf_50); 
  float arith_mulf_52 = (arith_mulf_49 * arith_const_16); 
  float arith_addf_53 = (arith_mulf_52 + arith_const_15); 
  float arith_mulf_54 = (func_arg_2 * arith_const_16); 
  float math_exp_55 = exp(arith_mulf_54); 
  float arith_subf_56 = (arith_addf_53 - math_exp_55); 
  float arith_divf_57 = (arith_mulf_51 / arith_subf_56); 
  memref_alloca_27[arith_const_13] = arith_divf_57; 
  float memref_load_58 = memref_alloca_27[arith_const_13]; 
  memref_alloca_21[arith_const_13] = memref_load_58; 
  float arith_negf_59 = -(func_arg_2); 
  float math_exp_60 = exp(arith_negf_59); 
  float arith_mulf_61 = (memref_load_58 * math_exp_60); 
  memref_alloca_24[arith_const_13] = arith_mulf_61; 
  float arith_subf_62 = (func_arg_2 - arith_const_15); 
  float arith_mulf_63 = (arith_mulf_61 * arith_subf_62); 
  memref_alloca_34[arith_const_13] = arith_mulf_63; 
  float memref_load_64 = memref_alloca_21[arith_const_13]; 
  float arith_negf_65 = -(memref_load_64); 
  float arith_mulf_66 = (func_arg_2 * arith_const_17); 
  float math_exp_67 = exp(arith_mulf_66); 
  float arith_mulf_68 = (arith_negf_65 * math_exp_67); 
  memref_alloca_23[arith_const_13] = arith_mulf_68; 
  float memref_load_69 = memref_alloca_24[arith_const_13]; 
  float arith_addf_70 = (func_arg_2 + arith_const_15); 
  float arith_mulf_71 = (memref_load_69 * arith_addf_70); 
  memref_alloca_28[arith_const_13] = arith_mulf_71; 
  float _72; 
  memref_alloca_20[0] = _72; 
  float _73; 
  memref_alloca_30[0] = _73; 
  float _74; 
  memref_alloca_41[0] = _74; 
  float _75; 
  memref_alloca_40[0] = _75; 
  for (int for_iter_76 = arith_const_13; for_iter_76 < arith_const_12; for_iter_76 += arith_const_11) {
    memref_alloca_20[0] = arith_const_14; 
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_41[0] = arith_const_14; 
    for (int for_iter_77 = arith_const_13; for_iter_77 < arith_const_12; for_iter_77 += arith_const_11) {
      float memref_load_78 = memref_alloca_27[arith_const_13]; 
      float memref_load_79 = func_arg_3[for_iter_76][for_iter_77]; 
      float arith_mulf_80 = (memref_load_78 * memref_load_79); 
      float memref_load_81 = memref_alloca_34[arith_const_13]; 
      float memref_load_82 = memref_alloca_20[0]; 
      float arith_mulf_83 = (memref_load_81 * memref_load_82); 
      float arith_addf_84 = (arith_mulf_80 + arith_mulf_83); 
      float memref_load_85 = memref_alloca_31[arith_const_13]; 
      float memref_load_86 = memref_alloca_41[0]; 
      memref_alloca_25[arith_const_13] = memref_load_86; 
      float arith_mulf_87 = (memref_load_85 * memref_load_86); 
      float arith_addf_88 = (arith_addf_84 + arith_mulf_87); 
      float memref_load_89 = memref_alloca_22[arith_const_13]; 
      float memref_load_90 = memref_alloca_40[0]; 
      float arith_mulf_91 = (memref_load_89 * memref_load_90); 
      float arith_addf_92 = (arith_addf_88 + arith_mulf_91); 
      func_arg_5[for_iter_76][for_iter_77] = arith_addf_92; 
      float memref_load_93 = func_arg_5[for_iter_76][for_iter_77]; 
      memref_alloca_41[0] = memref_load_93; 
      float memref_load_94 = memref_alloca_25[arith_const_13]; 
      memref_alloca_40[0] = memref_load_94; 
      float memref_load_95 = func_arg_3[for_iter_76][for_iter_77]; 
      memref_alloca_20[0] = memref_load_95; 
    }
  }
  float _96; 
  memref_alloca_19[0] = _96; 
  float _97; 
  memref_alloca_37[0] = _97; 
  float _98; 
  memref_alloca_26[0] = _98; 
  float _99; 
  memref_alloca_38[0] = _99; 
  float _100; 
  memref_alloca_39[0] = _100; 
  float _101; 
  memref_alloca_18[0] = _101; 
  for (int for_iter_102 = arith_const_13; for_iter_102 < arith_const_12; for_iter_102 += arith_const_11) {
    memref_alloca_37[0] = arith_const_14; 
    memref_alloca_19[0] = arith_const_14; 
    memref_alloca_18[0] = arith_const_14; 
    memref_alloca_39[0] = arith_const_14; 
    for (int for_iter_103 = arith_const_13; for_iter_103 < arith_const_12; for_iter_103 += arith_const_11) {
      float memref_load_104 = memref_alloca_28[arith_const_13]; 
      float memref_load_105 = memref_alloca_19[0]; 
      memref_alloca_29[arith_const_13] = memref_load_105; 
      float arith_mulf_106 = (memref_load_104 * memref_load_105); 
      float memref_load_107 = memref_alloca_23[arith_const_13]; 
      float memref_load_108 = memref_alloca_37[0]; 
      float arith_mulf_109 = (memref_load_107 * memref_load_108); 
      float arith_addf_110 = (arith_mulf_106 + arith_mulf_109); 
      float memref_load_111 = memref_alloca_31[arith_const_13]; 
      float memref_load_112 = memref_alloca_39[0]; 
      memref_alloca_32[arith_const_13] = memref_load_112; 
      float arith_mulf_113 = (memref_load_111 * memref_load_112); 
      float arith_addf_114 = (arith_addf_110 + arith_mulf_113); 
      float memref_load_115 = memref_alloca_22[arith_const_13]; 
      float memref_load_116 = memref_alloca_18[0]; 
      float arith_mulf_117 = (memref_load_115 * memref_load_116); 
      float arith_addf_118 = (arith_addf_114 + arith_mulf_117); 
      int arith_muli_119 = (for_iter_103 * arith_const_10); 
      int arith_addi_120 = (arith_muli_119 + arith_const_9); 
      func_arg_6[for_iter_102][arith_addi_120] = arith_addf_118; 
      int arith_muli_121 = (for_iter_103 * arith_const_10); 
      int arith_addi_122 = (arith_muli_121 + arith_const_9); 
      float memref_load_123 = func_arg_6[for_iter_102][arith_addi_122]; 
      memref_alloca_39[0] = memref_load_123; 
      float memref_load_124 = memref_alloca_32[arith_const_13]; 
      memref_alloca_18[0] = memref_load_124; 
      int arith_muli_125 = (for_iter_103 * arith_const_10); 
      int arith_addi_126 = (arith_muli_125 + arith_const_9); 
      float memref_load_127 = func_arg_3[for_iter_102][arith_addi_126]; 
      memref_alloca_19[0] = memref_load_127; 
      float memref_load_128 = memref_alloca_29[arith_const_13]; 
      memref_alloca_37[0] = memref_load_128; 
    }
  }
  for (int for_iter_129 = arith_const_13; for_iter_129 < arith_const_8; for_iter_129 += arith_const_11) {
    for (int for_iter_130 = arith_const_13; for_iter_130 < arith_const_8; for_iter_130 += arith_const_11) {
      int arith_muli_131 = (for_iter_129 * arith_const_7); 
      int arith_muli_132 = (for_iter_129 * arith_const_7); 
      int arith_addi_133 = (arith_muli_132 + arith_const_7); 
      for (int for_iter_134 = arith_muli_131; for_iter_134 < arith_addi_133; for_iter_134 += arith_const_11) {
        int arith_muli_135 = (for_iter_130 * arith_const_7); 
        int arith_muli_136 = (for_iter_130 * arith_const_7); 
        int arith_addi_137 = (arith_muli_136 + arith_const_7); 
        for (int for_iter_138 = arith_muli_135; for_iter_138 < arith_addi_137; for_iter_138 += arith_const_11) {
          memref_alloca_20[0] = arith_const_14; 
          memref_alloca_40[0] = arith_const_14; 
          memref_alloca_41[0] = arith_const_14; 
          float memref_load_139 = memref_alloca_27[arith_const_13]; 
          float memref_load_140 = func_arg_3[for_iter_134][for_iter_138]; 
          float arith_mulf_141 = (memref_load_139 * memref_load_140); 
          float memref_load_142 = memref_alloca_34[arith_const_13]; 
          float memref_load_143 = memref_alloca_20[0]; 
          float arith_mulf_144 = (memref_load_142 * memref_load_143); 
          float arith_addf_145 = (arith_mulf_141 + arith_mulf_144); 
          float memref_load_146 = memref_alloca_31[arith_const_13]; 
          float memref_load_147 = memref_alloca_41[0]; 
          memref_alloca_25[arith_const_13] = memref_load_147; 
          float arith_mulf_148 = (memref_load_146 * memref_load_147); 
          float arith_addf_149 = (arith_addf_145 + arith_mulf_148); 
          float memref_load_150 = memref_alloca_22[arith_const_13]; 
          float memref_load_151 = memref_alloca_40[0]; 
          float arith_mulf_152 = (memref_load_150 * memref_load_151); 
          float arith_addf_153 = (arith_addf_149 + arith_mulf_152); 
          func_arg_5[for_iter_134][for_iter_138] = arith_addf_153; 
          float memref_load_154 = func_arg_5[for_iter_134][for_iter_138]; 
          memref_alloca_41[0] = memref_load_154; 
          float memref_load_155 = memref_alloca_25[arith_const_13]; 
          memref_alloca_40[0] = memref_load_155; 
          float memref_load_156 = func_arg_3[for_iter_134][for_iter_138]; 
          memref_alloca_20[0] = memref_load_156; 
          memref_alloca_37[0] = arith_const_14; 
          memref_alloca_19[0] = arith_const_14; 
          memref_alloca_18[0] = arith_const_14; 
          memref_alloca_39[0] = arith_const_14; 
          int arith_muli_157 = (for_iter_138 * arith_const_10); 
          int arith_addi_158 = (arith_muli_157 + arith_const_9); 
          float memref_load_159 = memref_alloca_28[arith_const_13]; 
          float memref_load_160 = memref_alloca_19[0]; 
          memref_alloca_29[arith_const_13] = memref_load_160; 
          float arith_mulf_161 = (memref_load_159 * memref_load_160); 
          float memref_load_162 = memref_alloca_23[arith_const_13]; 
          float memref_load_163 = memref_alloca_37[0]; 
          float arith_mulf_164 = (memref_load_162 * memref_load_163); 
          float arith_addf_165 = (arith_mulf_161 + arith_mulf_164); 
          float memref_load_166 = memref_alloca_31[arith_const_13]; 
          float memref_load_167 = memref_alloca_39[0]; 
          memref_alloca_32[arith_const_13] = memref_load_167; 
          float arith_mulf_168 = (memref_load_166 * memref_load_167); 
          float arith_addf_169 = (arith_addf_165 + arith_mulf_168); 
          float memref_load_170 = memref_alloca_22[arith_const_13]; 
          float memref_load_171 = memref_alloca_18[0]; 
          float arith_mulf_172 = (memref_load_170 * memref_load_171); 
          float arith_addf_173 = (arith_addf_169 + arith_mulf_172); 
          int arith_muli_174 = (arith_addi_158 * arith_const_10); 
          int arith_addi_175 = (arith_muli_174 + arith_const_9); 
          func_arg_6[for_iter_134][arith_addi_175] = arith_addf_173; 
          int arith_muli_176 = (arith_addi_158 * arith_const_10); 
          int arith_addi_177 = (arith_muli_176 + arith_const_9); 
          float memref_load_178 = func_arg_6[for_iter_134][arith_addi_177]; 
          memref_alloca_39[0] = memref_load_178; 
          float memref_load_179 = memref_alloca_32[arith_const_13]; 
          memref_alloca_18[0] = memref_load_179; 
          int arith_muli_180 = (arith_addi_158 * arith_const_10); 
          int arith_addi_181 = (arith_muli_180 + arith_const_9); 
          float memref_load_182 = func_arg_3[for_iter_134][arith_addi_181]; 
          memref_alloca_19[0] = memref_load_182; 
          float memref_load_183 = memref_alloca_29[arith_const_13]; 
          memref_alloca_37[0] = memref_load_183; 
          float memref_load_184 = func_arg_5[for_iter_134][for_iter_138]; 
          float memref_load_185 = func_arg_6[for_iter_134][for_iter_138]; 
          float arith_addf_186 = (memref_load_184 + memref_load_185); 
          func_arg_4[for_iter_134][for_iter_138] = arith_addf_186; 
        }
      }
    }
  }
  for (int for_iter_187 = arith_const_13; for_iter_187 < arith_const_12; for_iter_187 += arith_const_11) {
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_30[0] = arith_const_14; 
    for (int for_iter_188 = arith_const_13; for_iter_188 < arith_const_12; for_iter_188 += arith_const_11) {
      float memref_load_189 = memref_alloca_27[arith_const_13]; 
      float memref_load_190 = func_arg_4[for_iter_188][for_iter_187]; 
      float arith_mulf_191 = (memref_load_189 * memref_load_190); 
      float memref_load_192 = memref_alloca_34[arith_const_13]; 
      float memref_load_193 = memref_alloca_30[0]; 
      float arith_mulf_194 = (memref_load_192 * memref_load_193); 
      float arith_addf_195 = (arith_mulf_191 + arith_mulf_194); 
      float memref_load_196 = memref_alloca_31[arith_const_13]; 
      float memref_load_197 = memref_alloca_41[0]; 
      memref_alloca_35[arith_const_13] = memref_load_197; 
      float arith_mulf_198 = (memref_load_196 * memref_load_197); 
      float arith_addf_199 = (arith_addf_195 + arith_mulf_198); 
      float memref_load_200 = memref_alloca_22[arith_const_13]; 
      float memref_load_201 = memref_alloca_40[0]; 
      float arith_mulf_202 = (memref_load_200 * memref_load_201); 
      float arith_addf_203 = (arith_addf_199 + arith_mulf_202); 
      func_arg_5[for_iter_188][for_iter_187] = arith_addf_203; 
      float memref_load_204 = func_arg_5[for_iter_188][for_iter_187]; 
      memref_alloca_41[0] = memref_load_204; 
      float memref_load_205 = memref_alloca_35[arith_const_13]; 
      memref_alloca_40[0] = memref_load_205; 
      float memref_load_206 = func_arg_4[for_iter_188][for_iter_187]; 
      memref_alloca_30[0] = memref_load_206; 
    }
  }
  for (int for_iter_207 = arith_const_13; for_iter_207 < arith_const_12; for_iter_207 += arith_const_11) {
    memref_alloca_18[0] = arith_const_14; 
    memref_alloca_39[0] = arith_const_14; 
    memref_alloca_38[0] = arith_const_14; 
    memref_alloca_26[0] = arith_const_14; 
    for (int for_iter_208 = arith_const_13; for_iter_208 < arith_const_12; for_iter_208 += arith_const_11) {
      float memref_load_209 = memref_alloca_28[arith_const_13]; 
      float memref_load_210 = memref_alloca_26[0]; 
      memref_alloca_33[arith_const_13] = memref_load_210; 
      float arith_mulf_211 = (memref_load_209 * memref_load_210); 
      float memref_load_212 = memref_alloca_23[arith_const_13]; 
      float memref_load_213 = memref_alloca_38[0]; 
      float arith_mulf_214 = (memref_load_212 * memref_load_213); 
      float arith_addf_215 = (arith_mulf_211 + arith_mulf_214); 
      float memref_load_216 = memref_alloca_31[arith_const_13]; 
      float memref_load_217 = memref_alloca_39[0]; 
      memref_alloca_36[arith_const_13] = memref_load_217; 
      float arith_mulf_218 = (memref_load_216 * memref_load_217); 
      float arith_addf_219 = (arith_addf_215 + arith_mulf_218); 
      float memref_load_220 = memref_alloca_22[arith_const_13]; 
      float memref_load_221 = memref_alloca_18[0]; 
      float arith_mulf_222 = (memref_load_220 * memref_load_221); 
      float arith_addf_223 = (arith_addf_219 + arith_mulf_222); 
      int arith_muli_224 = (for_iter_208 * arith_const_10); 
      int arith_addi_225 = (arith_muli_224 + arith_const_9); 
      func_arg_6[arith_addi_225][for_iter_207] = arith_addf_223; 
      int arith_muli_226 = (for_iter_208 * arith_const_10); 
      int arith_addi_227 = (arith_muli_226 + arith_const_9); 
      float memref_load_228 = func_arg_6[arith_addi_227][for_iter_207]; 
      memref_alloca_39[0] = memref_load_228; 
      float memref_load_229 = memref_alloca_36[arith_const_13]; 
      memref_alloca_18[0] = memref_load_229; 
      int arith_muli_230 = (for_iter_208 * arith_const_10); 
      int arith_addi_231 = (arith_muli_230 + arith_const_9); 
      float memref_load_232 = func_arg_4[arith_addi_231][for_iter_207]; 
      memref_alloca_26[0] = memref_load_232; 
      float memref_load_233 = memref_alloca_33[arith_const_13]; 
      memref_alloca_38[0] = memref_load_233; 
    }
  }
  for (int for_iter_234 = arith_const_13; for_iter_234 < arith_const_8; for_iter_234 += arith_const_11) {
    for (int for_iter_235 = arith_const_13; for_iter_235 < arith_const_8; for_iter_235 += arith_const_11) {
      int arith_muli_236 = (for_iter_234 * arith_const_7); 
      int arith_muli_237 = (for_iter_234 * arith_const_7); 
      int arith_addi_238 = (arith_muli_237 + arith_const_7); 
      for (int for_iter_239 = arith_muli_236; for_iter_239 < arith_addi_238; for_iter_239 += arith_const_11) {
        int arith_muli_240 = (for_iter_235 * arith_const_7); 
        int arith_muli_241 = (for_iter_235 * arith_const_7); 
        int arith_addi_242 = (arith_muli_241 + arith_const_7); 
        for (int for_iter_243 = arith_muli_240; for_iter_243 < arith_addi_242; for_iter_243 += arith_const_11) {
          memref_alloca_40[0] = arith_const_14; 
          memref_alloca_41[0] = arith_const_14; 
          memref_alloca_30[0] = arith_const_14; 
          float memref_load_244 = memref_alloca_27[arith_const_13]; 
          float memref_load_245 = func_arg_4[for_iter_239][for_iter_243]; 
          float arith_mulf_246 = (memref_load_244 * memref_load_245); 
          float memref_load_247 = memref_alloca_34[arith_const_13]; 
          float memref_load_248 = memref_alloca_30[0]; 
          float arith_mulf_249 = (memref_load_247 * memref_load_248); 
          float arith_addf_250 = (arith_mulf_246 + arith_mulf_249); 
          float memref_load_251 = memref_alloca_31[arith_const_13]; 
          float memref_load_252 = memref_alloca_41[0]; 
          memref_alloca_35[arith_const_13] = memref_load_252; 
          float arith_mulf_253 = (memref_load_251 * memref_load_252); 
          float arith_addf_254 = (arith_addf_250 + arith_mulf_253); 
          float memref_load_255 = memref_alloca_22[arith_const_13]; 
          float memref_load_256 = memref_alloca_40[0]; 
          float arith_mulf_257 = (memref_load_255 * memref_load_256); 
          float arith_addf_258 = (arith_addf_254 + arith_mulf_257); 
          func_arg_5[for_iter_239][for_iter_243] = arith_addf_258; 
          float memref_load_259 = func_arg_5[for_iter_239][for_iter_243]; 
          memref_alloca_41[0] = memref_load_259; 
          float memref_load_260 = memref_alloca_35[arith_const_13]; 
          memref_alloca_40[0] = memref_load_260; 
          float memref_load_261 = func_arg_4[for_iter_239][for_iter_243]; 
          memref_alloca_30[0] = memref_load_261; 
          memref_alloca_18[0] = arith_const_14; 
          memref_alloca_39[0] = arith_const_14; 
          memref_alloca_38[0] = arith_const_14; 
          memref_alloca_26[0] = arith_const_14; 
          int arith_muli_262 = (for_iter_239 * arith_const_10); 
          int arith_addi_263 = (arith_muli_262 + arith_const_9); 
          float memref_load_264 = memref_alloca_28[arith_const_13]; 
          float memref_load_265 = memref_alloca_26[0]; 
          memref_alloca_33[arith_const_13] = memref_load_265; 
          float arith_mulf_266 = (memref_load_264 * memref_load_265); 
          float memref_load_267 = memref_alloca_23[arith_const_13]; 
          float memref_load_268 = memref_alloca_38[0]; 
          float arith_mulf_269 = (memref_load_267 * memref_load_268); 
          float arith_addf_270 = (arith_mulf_266 + arith_mulf_269); 
          float memref_load_271 = memref_alloca_31[arith_const_13]; 
          float memref_load_272 = memref_alloca_39[0]; 
          memref_alloca_36[arith_const_13] = memref_load_272; 
          float arith_mulf_273 = (memref_load_271 * memref_load_272); 
          float arith_addf_274 = (arith_addf_270 + arith_mulf_273); 
          float memref_load_275 = memref_alloca_22[arith_const_13]; 
          float memref_load_276 = memref_alloca_18[0]; 
          float arith_mulf_277 = (memref_load_275 * memref_load_276); 
          float arith_addf_278 = (arith_addf_274 + arith_mulf_277); 
          int arith_muli_279 = (arith_addi_263 * arith_const_10); 
          int arith_addi_280 = (arith_muli_279 + arith_const_9); 
          func_arg_6[arith_addi_280][for_iter_243] = arith_addf_278; 
          int arith_muli_281 = (arith_addi_263 * arith_const_10); 
          int arith_addi_282 = (arith_muli_281 + arith_const_9); 
          float memref_load_283 = func_arg_6[arith_addi_282][for_iter_243]; 
          memref_alloca_39[0] = memref_load_283; 
          float memref_load_284 = memref_alloca_36[arith_const_13]; 
          memref_alloca_18[0] = memref_load_284; 
          int arith_muli_285 = (arith_addi_263 * arith_const_10); 
          int arith_addi_286 = (arith_muli_285 + arith_const_9); 
          float memref_load_287 = func_arg_4[arith_addi_286][for_iter_243]; 
          memref_alloca_26[0] = memref_load_287; 
          float memref_load_288 = memref_alloca_33[arith_const_13]; 
          memref_alloca_38[0] = memref_load_288; 
          float memref_load_289 = func_arg_5[for_iter_239][for_iter_243]; 
          float memref_load_290 = func_arg_6[for_iter_239][for_iter_243]; 
          float arith_addf_291 = (memref_load_289 + memref_load_290); 
          func_arg_4[for_iter_239][for_iter_243] = arith_addf_291; 
        }
      }
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
