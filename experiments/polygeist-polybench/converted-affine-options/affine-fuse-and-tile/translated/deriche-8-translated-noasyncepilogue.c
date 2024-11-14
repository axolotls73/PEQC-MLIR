#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = -32; 
  int arith_const_8 = 2; 
  int arith_const_9 = 63; 
  int arith_const_10 = -1; 
  int arith_const_11 = 1; 
  int arith_const_12 = 32; 
  int arith_const_13 = 64; 
  int arith_const_14 = 0; 
  float arith_const_15 = 0.000000; 
  float arith_const_16 = 1.000000; 
  float arith_const_17 = 2.000000; 
  float arith_const_18 = -2.000000; 
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
  float* memref_alloca_42; 
  float arith_mulf_43 = (func_arg_2 * arith_const_18); 
  float math_exp_44 = exp(arith_mulf_43); 
  float arith_negf_45 = -(math_exp_44); 
  memref_alloca_23[arith_const_14] = arith_negf_45; 
  float arith_negf_46 = -(func_arg_2); 
  float math_powf_47 = pow(arith_const_17, arith_negf_46); 
  memref_alloca_32[arith_const_14] = math_powf_47; 
  float arith_negf_48 = -(func_arg_2); 
  float math_exp_49 = exp(arith_negf_48); 
  float arith_mulf_50 = (func_arg_2 * math_exp_49); 
  float arith_subf_51 = (arith_const_16 - math_exp_49); 
  float arith_mulf_52 = (arith_subf_51 * arith_subf_51); 
  float arith_mulf_53 = (arith_mulf_50 * arith_const_17); 
  float arith_addf_54 = (arith_mulf_53 + arith_const_16); 
  float arith_mulf_55 = (func_arg_2 * arith_const_17); 
  float math_exp_56 = exp(arith_mulf_55); 
  float arith_subf_57 = (arith_addf_54 - math_exp_56); 
  float arith_divf_58 = (arith_mulf_52 / arith_subf_57); 
  memref_alloca_28[arith_const_14] = arith_divf_58; 
  float memref_load_59 = memref_alloca_28[arith_const_14]; 
  memref_alloca_42[arith_const_14] = memref_load_59; 
  float arith_negf_60 = -(func_arg_2); 
  float math_exp_61 = exp(arith_negf_60); 
  float arith_mulf_62 = (memref_load_59 * math_exp_61); 
  memref_alloca_25[arith_const_14] = arith_mulf_62; 
  float arith_subf_63 = (func_arg_2 - arith_const_16); 
  float arith_mulf_64 = (arith_mulf_62 * arith_subf_63); 
  memref_alloca_33[arith_const_14] = arith_mulf_64; 
  float memref_load_65 = memref_alloca_42[arith_const_14]; 
  float arith_negf_66 = -(memref_load_65); 
  float arith_mulf_67 = (func_arg_2 * arith_const_18); 
  float math_exp_68 = exp(arith_mulf_67); 
  float arith_mulf_69 = (arith_negf_66 * math_exp_68); 
  memref_alloca_30[arith_const_14] = arith_mulf_69; 
  float memref_load_70 = memref_alloca_25[arith_const_14]; 
  float arith_addf_71 = (func_arg_2 + arith_const_16); 
  float arith_mulf_72 = (memref_load_70 * arith_addf_71); 
  memref_alloca_29[arith_const_14] = arith_mulf_72; 
  float _73; 
  memref_alloca_22[0] = _73; 
  float _74; 
  memref_alloca_31[0] = _74; 
  float _75; 
  memref_alloca_21[0] = _75; 
  float _76; 
  memref_alloca_41[0] = _76; 
  for (int for_iter_77 = arith_const_14; for_iter_77 < arith_const_13; for_iter_77 += arith_const_12) {
    int arith_addi_78 = (for_iter_77 + arith_const_12); 
    for (int for_iter_79 = for_iter_77; for_iter_79 < arith_addi_78; for_iter_79 += arith_const_11) {
      memref_alloca_22[0] = arith_const_15; 
      memref_alloca_41[0] = arith_const_15; 
      memref_alloca_21[0] = arith_const_15; 
      for (int for_iter_80 = arith_const_14; for_iter_80 < arith_const_13; for_iter_80 += arith_const_11) {
        float memref_load_81 = memref_alloca_28[arith_const_14]; 
        float memref_load_82 = func_arg_3[for_iter_79][for_iter_80]; 
        float arith_mulf_83 = (memref_load_81 * memref_load_82); 
        float memref_load_84 = memref_alloca_33[arith_const_14]; 
        float memref_load_85 = memref_alloca_22[0]; 
        float arith_mulf_86 = (memref_load_84 * memref_load_85); 
        float arith_addf_87 = (arith_mulf_83 + arith_mulf_86); 
        float memref_load_88 = memref_alloca_32[arith_const_14]; 
        float memref_load_89 = memref_alloca_21[0]; 
        memref_alloca_26[arith_const_14] = memref_load_89; 
        float arith_mulf_90 = (memref_load_88 * memref_load_89); 
        float arith_addf_91 = (arith_addf_87 + arith_mulf_90); 
        float memref_load_92 = memref_alloca_23[arith_const_14]; 
        float memref_load_93 = memref_alloca_41[0]; 
        float arith_mulf_94 = (memref_load_92 * memref_load_93); 
        float arith_addf_95 = (arith_addf_91 + arith_mulf_94); 
        func_arg_5[for_iter_79][for_iter_80] = arith_addf_95; 
        float memref_load_96 = func_arg_5[for_iter_79][for_iter_80]; 
        memref_alloca_21[0] = memref_load_96; 
        float memref_load_97 = memref_alloca_26[arith_const_14]; 
        memref_alloca_41[0] = memref_load_97; 
        float memref_load_98 = func_arg_3[for_iter_79][for_iter_80]; 
        memref_alloca_22[0] = memref_load_98; 
      }
    }
  }
  float _99; 
  memref_alloca_20[0] = _99; 
  float _100; 
  memref_alloca_38[0] = _100; 
  float _101; 
  memref_alloca_27[0] = _101; 
  float _102; 
  memref_alloca_39[0] = _102; 
  float _103; 
  memref_alloca_40[0] = _103; 
  float _104; 
  memref_alloca_19[0] = _104; 
  for (int for_iter_105 = arith_const_14; for_iter_105 < arith_const_13; for_iter_105 += arith_const_12) {
    int arith_addi_106 = (for_iter_105 + arith_const_12); 
    for (int for_iter_107 = for_iter_105; for_iter_107 < arith_addi_106; for_iter_107 += arith_const_11) {
      memref_alloca_38[0] = arith_const_15; 
      memref_alloca_20[0] = arith_const_15; 
      memref_alloca_19[0] = arith_const_15; 
      memref_alloca_40[0] = arith_const_15; 
      for (int for_iter_108 = arith_const_14; for_iter_108 < arith_const_13; for_iter_108 += arith_const_11) {
        float memref_load_109 = memref_alloca_29[arith_const_14]; 
        float memref_load_110 = memref_alloca_20[0]; 
        memref_alloca_24[arith_const_14] = memref_load_110; 
        float arith_mulf_111 = (memref_load_109 * memref_load_110); 
        float memref_load_112 = memref_alloca_30[arith_const_14]; 
        float memref_load_113 = memref_alloca_38[0]; 
        float arith_mulf_114 = (memref_load_112 * memref_load_113); 
        float arith_addf_115 = (arith_mulf_111 + arith_mulf_114); 
        float memref_load_116 = memref_alloca_32[arith_const_14]; 
        float memref_load_117 = memref_alloca_40[0]; 
        memref_alloca_35[arith_const_14] = memref_load_117; 
        float arith_mulf_118 = (memref_load_116 * memref_load_117); 
        float arith_addf_119 = (arith_addf_115 + arith_mulf_118); 
        float memref_load_120 = memref_alloca_23[arith_const_14]; 
        float memref_load_121 = memref_alloca_19[0]; 
        float arith_mulf_122 = (memref_load_120 * memref_load_121); 
        float arith_addf_123 = (arith_addf_119 + arith_mulf_122); 
        int arith_muli_124 = (for_iter_108 * arith_const_10); 
        int arith_addi_125 = (arith_muli_124 + arith_const_9); 
        func_arg_6[for_iter_107][arith_addi_125] = arith_addf_123; 
        int arith_muli_126 = (for_iter_108 * arith_const_10); 
        int arith_addi_127 = (arith_muli_126 + arith_const_9); 
        float memref_load_128 = func_arg_6[for_iter_107][arith_addi_127]; 
        memref_alloca_40[0] = memref_load_128; 
        float memref_load_129 = memref_alloca_35[arith_const_14]; 
        memref_alloca_19[0] = memref_load_129; 
        int arith_muli_130 = (for_iter_108 * arith_const_10); 
        int arith_addi_131 = (arith_muli_130 + arith_const_9); 
        float memref_load_132 = func_arg_3[for_iter_107][arith_addi_131]; 
        memref_alloca_20[0] = memref_load_132; 
        float memref_load_133 = memref_alloca_24[arith_const_14]; 
        memref_alloca_38[0] = memref_load_133; 
      }
    }
  }
  for (int for_iter_134 = arith_const_14; for_iter_134 < arith_const_8; for_iter_134 += arith_const_12) {
    for (int for_iter_135 = arith_const_14; for_iter_135 < arith_const_8; for_iter_135 += arith_const_12) {
      for (int for_iter_136 = arith_const_14; for_iter_136 < arith_const_12; for_iter_136 += arith_const_12) {
        for (int for_iter_137 = arith_const_14; for_iter_137 < arith_const_12; for_iter_137 += arith_const_12) {
          int arith_addi_138 = (for_iter_134 + arith_const_8); 
          for (int for_iter_139 = for_iter_134; for_iter_139 < arith_addi_138; for_iter_139 += arith_const_11) {
            int arith_addi_140 = (for_iter_135 + arith_const_8); 
            for (int for_iter_141 = for_iter_135; for_iter_141 < arith_addi_140; for_iter_141 += arith_const_11) {
              int arith_addi_142 = (for_iter_136 + arith_const_12); 
              for (int for_iter_143 = for_iter_136; for_iter_143 < arith_addi_142; for_iter_143 += arith_const_11) {
                int arith_addi_144 = (for_iter_137 + arith_const_12); 
                for (int for_iter_145 = for_iter_137; for_iter_145 < arith_addi_144; for_iter_145 += arith_const_11) {
                  int arith_muli_146 = (for_iter_139 * arith_const_12); 
                  int arith_addi_147 = (arith_muli_146 + for_iter_143); 
                  memref_alloca_22[0] = arith_const_15; 
                  memref_alloca_41[0] = arith_const_15; 
                  memref_alloca_21[0] = arith_const_15; 
                  int arith_muli_148 = (for_iter_141 * arith_const_12); 
                  int arith_addi_149 = (arith_muli_148 + for_iter_145); 
                  float memref_load_150 = memref_alloca_28[arith_const_14]; 
                  float memref_load_151 = func_arg_3[arith_addi_147][arith_addi_149]; 
                  float arith_mulf_152 = (memref_load_150 * memref_load_151); 
                  float memref_load_153 = memref_alloca_33[arith_const_14]; 
                  float memref_load_154 = memref_alloca_22[0]; 
                  float arith_mulf_155 = (memref_load_153 * memref_load_154); 
                  float arith_addf_156 = (arith_mulf_152 + arith_mulf_155); 
                  float memref_load_157 = memref_alloca_32[arith_const_14]; 
                  float memref_load_158 = memref_alloca_21[0]; 
                  memref_alloca_26[arith_const_14] = memref_load_158; 
                  float arith_mulf_159 = (memref_load_157 * memref_load_158); 
                  float arith_addf_160 = (arith_addf_156 + arith_mulf_159); 
                  float memref_load_161 = memref_alloca_23[arith_const_14]; 
                  float memref_load_162 = memref_alloca_41[0]; 
                  float arith_mulf_163 = (memref_load_161 * memref_load_162); 
                  float arith_addf_164 = (arith_addf_160 + arith_mulf_163); 
                  func_arg_5[arith_addi_147][arith_addi_149] = arith_addf_164; 
                  float memref_load_165 = func_arg_5[arith_addi_147][arith_addi_149]; 
                  memref_alloca_21[0] = memref_load_165; 
                  float memref_load_166 = memref_alloca_26[arith_const_14]; 
                  memref_alloca_41[0] = memref_load_166; 
                  float memref_load_167 = func_arg_3[arith_addi_147][arith_addi_149]; 
                  memref_alloca_22[0] = memref_load_167; 
                  int arith_muli_168 = (for_iter_139 * arith_const_12); 
                  int arith_addi_169 = (arith_muli_168 + for_iter_143); 
                  memref_alloca_38[0] = arith_const_15; 
                  memref_alloca_20[0] = arith_const_15; 
                  memref_alloca_19[0] = arith_const_15; 
                  memref_alloca_40[0] = arith_const_15; 
                  int arith_muli_170 = (for_iter_141 * arith_const_7); 
                  int arith_muli_171 = (for_iter_145 * arith_const_10); 
                  int arith_addi_172 = (arith_muli_170 + arith_muli_171); 
                  int arith_addi_173 = (arith_addi_172 + arith_const_9); 
                  float memref_load_174 = memref_alloca_29[arith_const_14]; 
                  float memref_load_175 = memref_alloca_20[0]; 
                  memref_alloca_24[arith_const_14] = memref_load_175; 
                  float arith_mulf_176 = (memref_load_174 * memref_load_175); 
                  float memref_load_177 = memref_alloca_30[arith_const_14]; 
                  float memref_load_178 = memref_alloca_38[0]; 
                  float arith_mulf_179 = (memref_load_177 * memref_load_178); 
                  float arith_addf_180 = (arith_mulf_176 + arith_mulf_179); 
                  float memref_load_181 = memref_alloca_32[arith_const_14]; 
                  float memref_load_182 = memref_alloca_40[0]; 
                  memref_alloca_35[arith_const_14] = memref_load_182; 
                  float arith_mulf_183 = (memref_load_181 * memref_load_182); 
                  float arith_addf_184 = (arith_addf_180 + arith_mulf_183); 
                  float memref_load_185 = memref_alloca_23[arith_const_14]; 
                  float memref_load_186 = memref_alloca_19[0]; 
                  float arith_mulf_187 = (memref_load_185 * memref_load_186); 
                  float arith_addf_188 = (arith_addf_184 + arith_mulf_187); 
                  int arith_muli_189 = (arith_addi_173 * arith_const_10); 
                  int arith_addi_190 = (arith_muli_189 + arith_const_9); 
                  func_arg_6[arith_addi_169][arith_addi_190] = arith_addf_188; 
                  int arith_muli_191 = (arith_addi_173 * arith_const_10); 
                  int arith_addi_192 = (arith_muli_191 + arith_const_9); 
                  float memref_load_193 = func_arg_6[arith_addi_169][arith_addi_192]; 
                  memref_alloca_40[0] = memref_load_193; 
                  float memref_load_194 = memref_alloca_35[arith_const_14]; 
                  memref_alloca_19[0] = memref_load_194; 
                  int arith_muli_195 = (arith_addi_173 * arith_const_10); 
                  int arith_addi_196 = (arith_muli_195 + arith_const_9); 
                  float memref_load_197 = func_arg_3[arith_addi_169][arith_addi_196]; 
                  memref_alloca_20[0] = memref_load_197; 
                  float memref_load_198 = memref_alloca_24[arith_const_14]; 
                  memref_alloca_38[0] = memref_load_198; 
                  int arith_muli_199 = (for_iter_139 * arith_const_12); 
                  int arith_addi_200 = (arith_muli_199 + for_iter_143); 
                  int arith_muli_201 = (for_iter_141 * arith_const_12); 
                  int arith_addi_202 = (arith_muli_201 + for_iter_145); 
                  float memref_load_203 = func_arg_5[arith_addi_200][arith_addi_202]; 
                  int arith_muli_204 = (for_iter_139 * arith_const_12); 
                  int arith_addi_205 = (arith_muli_204 + for_iter_143); 
                  int arith_muli_206 = (for_iter_141 * arith_const_12); 
                  int arith_addi_207 = (arith_muli_206 + for_iter_145); 
                  float memref_load_208 = func_arg_6[arith_addi_205][arith_addi_207]; 
                  float arith_addf_209 = (memref_load_203 + memref_load_208); 
                  int arith_muli_210 = (for_iter_139 * arith_const_12); 
                  int arith_addi_211 = (arith_muli_210 + for_iter_143); 
                  int arith_muli_212 = (for_iter_141 * arith_const_12); 
                  int arith_addi_213 = (arith_muli_212 + for_iter_145); 
                  func_arg_4[arith_addi_211][arith_addi_213] = arith_addf_209; 
                }
              }
            }
          }
        }
      }
    }
  }
  for (int for_iter_214 = arith_const_14; for_iter_214 < arith_const_13; for_iter_214 += arith_const_12) {
    int arith_addi_215 = (for_iter_214 + arith_const_12); 
    for (int for_iter_216 = for_iter_214; for_iter_216 < arith_addi_215; for_iter_216 += arith_const_11) {
      memref_alloca_41[0] = arith_const_15; 
      memref_alloca_21[0] = arith_const_15; 
      memref_alloca_31[0] = arith_const_15; 
      for (int for_iter_217 = arith_const_14; for_iter_217 < arith_const_13; for_iter_217 += arith_const_11) {
        float memref_load_218 = memref_alloca_28[arith_const_14]; 
        float memref_load_219 = func_arg_4[for_iter_217][for_iter_216]; 
        float arith_mulf_220 = (memref_load_218 * memref_load_219); 
        float memref_load_221 = memref_alloca_33[arith_const_14]; 
        float memref_load_222 = memref_alloca_31[0]; 
        float arith_mulf_223 = (memref_load_221 * memref_load_222); 
        float arith_addf_224 = (arith_mulf_220 + arith_mulf_223); 
        float memref_load_225 = memref_alloca_32[arith_const_14]; 
        float memref_load_226 = memref_alloca_21[0]; 
        memref_alloca_36[arith_const_14] = memref_load_226; 
        float arith_mulf_227 = (memref_load_225 * memref_load_226); 
        float arith_addf_228 = (arith_addf_224 + arith_mulf_227); 
        float memref_load_229 = memref_alloca_23[arith_const_14]; 
        float memref_load_230 = memref_alloca_41[0]; 
        float arith_mulf_231 = (memref_load_229 * memref_load_230); 
        float arith_addf_232 = (arith_addf_228 + arith_mulf_231); 
        func_arg_5[for_iter_217][for_iter_216] = arith_addf_232; 
        float memref_load_233 = func_arg_5[for_iter_217][for_iter_216]; 
        memref_alloca_21[0] = memref_load_233; 
        float memref_load_234 = memref_alloca_36[arith_const_14]; 
        memref_alloca_41[0] = memref_load_234; 
        float memref_load_235 = func_arg_4[for_iter_217][for_iter_216]; 
        memref_alloca_31[0] = memref_load_235; 
      }
    }
  }
  for (int for_iter_236 = arith_const_14; for_iter_236 < arith_const_13; for_iter_236 += arith_const_12) {
    int arith_addi_237 = (for_iter_236 + arith_const_12); 
    for (int for_iter_238 = for_iter_236; for_iter_238 < arith_addi_237; for_iter_238 += arith_const_11) {
      memref_alloca_19[0] = arith_const_15; 
      memref_alloca_40[0] = arith_const_15; 
      memref_alloca_39[0] = arith_const_15; 
      memref_alloca_27[0] = arith_const_15; 
      for (int for_iter_239 = arith_const_14; for_iter_239 < arith_const_13; for_iter_239 += arith_const_11) {
        float memref_load_240 = memref_alloca_29[arith_const_14]; 
        float memref_load_241 = memref_alloca_27[0]; 
        memref_alloca_34[arith_const_14] = memref_load_241; 
        float arith_mulf_242 = (memref_load_240 * memref_load_241); 
        float memref_load_243 = memref_alloca_30[arith_const_14]; 
        float memref_load_244 = memref_alloca_39[0]; 
        float arith_mulf_245 = (memref_load_243 * memref_load_244); 
        float arith_addf_246 = (arith_mulf_242 + arith_mulf_245); 
        float memref_load_247 = memref_alloca_32[arith_const_14]; 
        float memref_load_248 = memref_alloca_40[0]; 
        memref_alloca_37[arith_const_14] = memref_load_248; 
        float arith_mulf_249 = (memref_load_247 * memref_load_248); 
        float arith_addf_250 = (arith_addf_246 + arith_mulf_249); 
        float memref_load_251 = memref_alloca_23[arith_const_14]; 
        float memref_load_252 = memref_alloca_19[0]; 
        float arith_mulf_253 = (memref_load_251 * memref_load_252); 
        float arith_addf_254 = (arith_addf_250 + arith_mulf_253); 
        int arith_muli_255 = (for_iter_239 * arith_const_10); 
        int arith_addi_256 = (arith_muli_255 + arith_const_9); 
        func_arg_6[arith_addi_256][for_iter_238] = arith_addf_254; 
        int arith_muli_257 = (for_iter_239 * arith_const_10); 
        int arith_addi_258 = (arith_muli_257 + arith_const_9); 
        float memref_load_259 = func_arg_6[arith_addi_258][for_iter_238]; 
        memref_alloca_40[0] = memref_load_259; 
        float memref_load_260 = memref_alloca_37[arith_const_14]; 
        memref_alloca_19[0] = memref_load_260; 
        int arith_muli_261 = (for_iter_239 * arith_const_10); 
        int arith_addi_262 = (arith_muli_261 + arith_const_9); 
        float memref_load_263 = func_arg_4[arith_addi_262][for_iter_238]; 
        memref_alloca_27[0] = memref_load_263; 
        float memref_load_264 = memref_alloca_34[arith_const_14]; 
        memref_alloca_39[0] = memref_load_264; 
      }
    }
  }
  for (int for_iter_265 = arith_const_14; for_iter_265 < arith_const_8; for_iter_265 += arith_const_12) {
    for (int for_iter_266 = arith_const_14; for_iter_266 < arith_const_8; for_iter_266 += arith_const_12) {
      for (int for_iter_267 = arith_const_14; for_iter_267 < arith_const_12; for_iter_267 += arith_const_12) {
        for (int for_iter_268 = arith_const_14; for_iter_268 < arith_const_12; for_iter_268 += arith_const_12) {
          int arith_addi_269 = (for_iter_265 + arith_const_8); 
          for (int for_iter_270 = for_iter_265; for_iter_270 < arith_addi_269; for_iter_270 += arith_const_11) {
            int arith_addi_271 = (for_iter_266 + arith_const_8); 
            for (int for_iter_272 = for_iter_266; for_iter_272 < arith_addi_271; for_iter_272 += arith_const_11) {
              int arith_addi_273 = (for_iter_267 + arith_const_12); 
              for (int for_iter_274 = for_iter_267; for_iter_274 < arith_addi_273; for_iter_274 += arith_const_11) {
                int arith_addi_275 = (for_iter_268 + arith_const_12); 
                for (int for_iter_276 = for_iter_268; for_iter_276 < arith_addi_275; for_iter_276 += arith_const_11) {
                  int arith_muli_277 = (for_iter_272 * arith_const_12); 
                  int arith_addi_278 = (arith_muli_277 + for_iter_276); 
                  memref_alloca_41[0] = arith_const_15; 
                  memref_alloca_21[0] = arith_const_15; 
                  memref_alloca_31[0] = arith_const_15; 
                  int arith_muli_279 = (for_iter_270 * arith_const_12); 
                  int arith_addi_280 = (arith_muli_279 + for_iter_274); 
                  float memref_load_281 = memref_alloca_28[arith_const_14]; 
                  float memref_load_282 = func_arg_4[arith_addi_280][arith_addi_278]; 
                  float arith_mulf_283 = (memref_load_281 * memref_load_282); 
                  float memref_load_284 = memref_alloca_33[arith_const_14]; 
                  float memref_load_285 = memref_alloca_31[0]; 
                  float arith_mulf_286 = (memref_load_284 * memref_load_285); 
                  float arith_addf_287 = (arith_mulf_283 + arith_mulf_286); 
                  float memref_load_288 = memref_alloca_32[arith_const_14]; 
                  float memref_load_289 = memref_alloca_21[0]; 
                  memref_alloca_36[arith_const_14] = memref_load_289; 
                  float arith_mulf_290 = (memref_load_288 * memref_load_289); 
                  float arith_addf_291 = (arith_addf_287 + arith_mulf_290); 
                  float memref_load_292 = memref_alloca_23[arith_const_14]; 
                  float memref_load_293 = memref_alloca_41[0]; 
                  float arith_mulf_294 = (memref_load_292 * memref_load_293); 
                  float arith_addf_295 = (arith_addf_291 + arith_mulf_294); 
                  func_arg_5[arith_addi_280][arith_addi_278] = arith_addf_295; 
                  float memref_load_296 = func_arg_5[arith_addi_280][arith_addi_278]; 
                  memref_alloca_21[0] = memref_load_296; 
                  float memref_load_297 = memref_alloca_36[arith_const_14]; 
                  memref_alloca_41[0] = memref_load_297; 
                  float memref_load_298 = func_arg_4[arith_addi_280][arith_addi_278]; 
                  memref_alloca_31[0] = memref_load_298; 
                  int arith_muli_299 = (for_iter_272 * arith_const_12); 
                  int arith_addi_300 = (arith_muli_299 + for_iter_276); 
                  memref_alloca_19[0] = arith_const_15; 
                  memref_alloca_40[0] = arith_const_15; 
                  memref_alloca_39[0] = arith_const_15; 
                  memref_alloca_27[0] = arith_const_15; 
                  int arith_muli_301 = (for_iter_270 * arith_const_7); 
                  int arith_muli_302 = (for_iter_274 * arith_const_10); 
                  int arith_addi_303 = (arith_muli_301 + arith_muli_302); 
                  int arith_addi_304 = (arith_addi_303 + arith_const_9); 
                  float memref_load_305 = memref_alloca_29[arith_const_14]; 
                  float memref_load_306 = memref_alloca_27[0]; 
                  memref_alloca_34[arith_const_14] = memref_load_306; 
                  float arith_mulf_307 = (memref_load_305 * memref_load_306); 
                  float memref_load_308 = memref_alloca_30[arith_const_14]; 
                  float memref_load_309 = memref_alloca_39[0]; 
                  float arith_mulf_310 = (memref_load_308 * memref_load_309); 
                  float arith_addf_311 = (arith_mulf_307 + arith_mulf_310); 
                  float memref_load_312 = memref_alloca_32[arith_const_14]; 
                  float memref_load_313 = memref_alloca_40[0]; 
                  memref_alloca_37[arith_const_14] = memref_load_313; 
                  float arith_mulf_314 = (memref_load_312 * memref_load_313); 
                  float arith_addf_315 = (arith_addf_311 + arith_mulf_314); 
                  float memref_load_316 = memref_alloca_23[arith_const_14]; 
                  float memref_load_317 = memref_alloca_19[0]; 
                  float arith_mulf_318 = (memref_load_316 * memref_load_317); 
                  float arith_addf_319 = (arith_addf_315 + arith_mulf_318); 
                  int arith_muli_320 = (arith_addi_304 * arith_const_10); 
                  int arith_addi_321 = (arith_muli_320 + arith_const_9); 
                  func_arg_6[arith_addi_321][arith_addi_300] = arith_addf_319; 
                  int arith_muli_322 = (arith_addi_304 * arith_const_10); 
                  int arith_addi_323 = (arith_muli_322 + arith_const_9); 
                  float memref_load_324 = func_arg_6[arith_addi_323][arith_addi_300]; 
                  memref_alloca_40[0] = memref_load_324; 
                  float memref_load_325 = memref_alloca_37[arith_const_14]; 
                  memref_alloca_19[0] = memref_load_325; 
                  int arith_muli_326 = (arith_addi_304 * arith_const_10); 
                  int arith_addi_327 = (arith_muli_326 + arith_const_9); 
                  float memref_load_328 = func_arg_4[arith_addi_327][arith_addi_300]; 
                  memref_alloca_27[0] = memref_load_328; 
                  float memref_load_329 = memref_alloca_34[arith_const_14]; 
                  memref_alloca_39[0] = memref_load_329; 
                  int arith_muli_330 = (for_iter_270 * arith_const_12); 
                  int arith_addi_331 = (arith_muli_330 + for_iter_274); 
                  int arith_muli_332 = (for_iter_272 * arith_const_12); 
                  int arith_addi_333 = (arith_muli_332 + for_iter_276); 
                  float memref_load_334 = func_arg_5[arith_addi_331][arith_addi_333]; 
                  int arith_muli_335 = (for_iter_270 * arith_const_12); 
                  int arith_addi_336 = (arith_muli_335 + for_iter_274); 
                  int arith_muli_337 = (for_iter_272 * arith_const_12); 
                  int arith_addi_338 = (arith_muli_337 + for_iter_276); 
                  float memref_load_339 = func_arg_6[arith_addi_336][arith_addi_338]; 
                  float arith_addf_340 = (memref_load_334 + memref_load_339); 
                  int arith_muli_341 = (for_iter_270 * arith_const_12); 
                  int arith_addi_342 = (arith_muli_341 + for_iter_274); 
                  int arith_muli_343 = (for_iter_272 * arith_const_12); 
                  int arith_addi_344 = (arith_muli_343 + for_iter_276); 
                  func_arg_4[arith_addi_342][arith_addi_344] = arith_addf_340; 
                }
              }
            }
          }
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
