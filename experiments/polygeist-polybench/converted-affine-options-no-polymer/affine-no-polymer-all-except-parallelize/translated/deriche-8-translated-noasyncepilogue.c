#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 128; 
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
  float arith_const_18 = -2.000000; 
  float arith_const_19 = 2.000000; 
  float arith_const_20 = 1.000000; 
  float _21; 
  float* memref_alloca_22; 
  memref_alloca_22[0] = _21; 
  float* memref_alloca_23; 
  memref_alloca_23[0] = _21; 
  float* memref_alloca_24; 
  memref_alloca_24[0] = _21; 
  float* memref_alloca_25; 
  memref_alloca_25[0] = _21; 
  float* memref_alloca_26; 
  memref_alloca_26[0] = _21; 
  float* memref_alloca_27; 
  memref_alloca_27[0] = _21; 
  float* memref_alloca_28; 
  memref_alloca_28[0] = _21; 
  float* memref_alloca_29; 
  memref_alloca_29[0] = _21; 
  float* memref_alloca_30; 
  memref_alloca_30[0] = _21; 
  float* memref_alloca_31; 
  memref_alloca_31[0] = _21; 
  float arith_negf_32 = -(func_arg_2); 
  float math_exp_33 = exp(arith_negf_32); 
  float arith_subf_34 = (arith_const_20 - math_exp_33); 
  float arith_mulf_35 = (arith_subf_34 * arith_subf_34); 
  float arith_mulf_36 = (func_arg_2 * math_exp_33); 
  float arith_mulf_37 = (arith_mulf_36 * arith_const_19); 
  float arith_addf_38 = (arith_mulf_37 + arith_const_20); 
  float arith_mulf_39 = (func_arg_2 * arith_const_19); 
  float math_exp_40 = exp(arith_mulf_39); 
  float arith_subf_41 = (arith_addf_38 - math_exp_40); 
  float arith_divf_42 = (arith_mulf_35 / arith_subf_41); 
  float arith_mulf_43 = (arith_divf_42 * math_exp_33); 
  float arith_subf_44 = (func_arg_2 - arith_const_20); 
  float arith_mulf_45 = (arith_mulf_43 * arith_subf_44); 
  float arith_addf_46 = (func_arg_2 + arith_const_20); 
  float arith_mulf_47 = (arith_mulf_43 * arith_addf_46); 
  float arith_negf_48 = -(arith_divf_42); 
  float arith_mulf_49 = (func_arg_2 * arith_const_18); 
  float math_exp_50 = exp(arith_mulf_49); 
  float arith_mulf_51 = (arith_negf_48 * math_exp_50); 
  float math_powf_52 = pow(arith_const_19, arith_negf_32); 
  float arith_negf_53 = -(math_exp_50); 
  for (int for_iter_54 = arith_const_16; for_iter_54 < arith_const_15; for_iter_54 += arith_const_14) {
    int arith_muli_55 = (for_iter_54 * arith_const_13); 
    for (int for_iter_56 = arith_const_16; for_iter_56 < arith_const_13; for_iter_56 += arith_const_14) {
      int arith_addi_57 = (arith_muli_55 + for_iter_56); 
      memref_alloca_29[0] = arith_const_17; 
      memref_alloca_28[0] = arith_const_17; 
      memref_alloca_31[0] = arith_const_17; 
      for (int for_iter_58 = arith_const_16; for_iter_58 < arith_const_12; for_iter_58 += arith_const_14) {
        int arith_muli_59 = (for_iter_58 * arith_const_11); 
        float memref_load_60 = func_arg_3[arith_addi_57][arith_muli_59]; 
        float arith_mulf_61 = (arith_divf_42 * memref_load_60); 
        float memref_load_62 = memref_alloca_31[0]; 
        float arith_mulf_63 = (arith_mulf_45 * memref_load_62); 
        float arith_addf_64 = (arith_mulf_61 + arith_mulf_63); 
        float memref_load_65 = memref_alloca_29[0]; 
        float arith_mulf_66 = (math_powf_52 * memref_load_65); 
        float arith_addf_67 = (arith_addf_64 + arith_mulf_66); 
        float memref_load_68 = memref_alloca_28[0]; 
        float arith_mulf_69 = (arith_negf_53 * memref_load_68); 
        float arith_addf_70 = (arith_addf_67 + arith_mulf_69); 
        func_arg_5[arith_addi_57][arith_muli_59] = arith_addf_70; 
        float memref_load_71 = func_arg_3[arith_addi_57][arith_muli_59]; 
        memref_alloca_31[0] = memref_load_71; 
        memref_alloca_28[0] = memref_load_65; 
        float memref_load_72 = func_arg_5[arith_addi_57][arith_muli_59]; 
        memref_alloca_29[0] = memref_load_72; 
        int arith_addi_73 = (arith_muli_59 + arith_const_14); 
        float memref_load_74 = func_arg_3[arith_addi_57][arith_addi_73]; 
        float arith_mulf_75 = (arith_divf_42 * memref_load_74); 
        float memref_load_76 = memref_alloca_31[0]; 
        float arith_mulf_77 = (arith_mulf_45 * memref_load_76); 
        float arith_addf_78 = (arith_mulf_75 + arith_mulf_77); 
        float memref_load_79 = memref_alloca_29[0]; 
        float arith_mulf_80 = (math_powf_52 * memref_load_79); 
        float arith_addf_81 = (arith_addf_78 + arith_mulf_80); 
        float memref_load_82 = memref_alloca_28[0]; 
        float arith_mulf_83 = (arith_negf_53 * memref_load_82); 
        float arith_addf_84 = (arith_addf_81 + arith_mulf_83); 
        func_arg_5[arith_addi_57][arith_addi_73] = arith_addf_84; 
        float memref_load_85 = func_arg_3[arith_addi_57][arith_addi_73]; 
        memref_alloca_31[0] = memref_load_85; 
        memref_alloca_28[0] = memref_load_79; 
        float memref_load_86 = func_arg_5[arith_addi_57][arith_addi_73]; 
        memref_alloca_29[0] = memref_load_86; 
        int arith_addi_87 = (arith_muli_59 + arith_const_15); 
        float memref_load_88 = func_arg_3[arith_addi_57][arith_addi_87]; 
        float arith_mulf_89 = (arith_divf_42 * memref_load_88); 
        float memref_load_90 = memref_alloca_31[0]; 
        float arith_mulf_91 = (arith_mulf_45 * memref_load_90); 
        float arith_addf_92 = (arith_mulf_89 + arith_mulf_91); 
        float memref_load_93 = memref_alloca_29[0]; 
        float arith_mulf_94 = (math_powf_52 * memref_load_93); 
        float arith_addf_95 = (arith_addf_92 + arith_mulf_94); 
        float memref_load_96 = memref_alloca_28[0]; 
        float arith_mulf_97 = (arith_negf_53 * memref_load_96); 
        float arith_addf_98 = (arith_addf_95 + arith_mulf_97); 
        func_arg_5[arith_addi_57][arith_addi_87] = arith_addf_98; 
        float memref_load_99 = func_arg_3[arith_addi_57][arith_addi_87]; 
        memref_alloca_31[0] = memref_load_99; 
        memref_alloca_28[0] = memref_load_93; 
        float memref_load_100 = func_arg_5[arith_addi_57][arith_addi_87]; 
        memref_alloca_29[0] = memref_load_100; 
        int arith_addi_101 = (arith_muli_59 + arith_const_10); 
        float memref_load_102 = func_arg_3[arith_addi_57][arith_addi_101]; 
        float arith_mulf_103 = (arith_divf_42 * memref_load_102); 
        float memref_load_104 = memref_alloca_31[0]; 
        float arith_mulf_105 = (arith_mulf_45 * memref_load_104); 
        float arith_addf_106 = (arith_mulf_103 + arith_mulf_105); 
        float memref_load_107 = memref_alloca_29[0]; 
        float arith_mulf_108 = (math_powf_52 * memref_load_107); 
        float arith_addf_109 = (arith_addf_106 + arith_mulf_108); 
        float memref_load_110 = memref_alloca_28[0]; 
        float arith_mulf_111 = (arith_negf_53 * memref_load_110); 
        float arith_addf_112 = (arith_addf_109 + arith_mulf_111); 
        func_arg_5[arith_addi_57][arith_addi_101] = arith_addf_112; 
        float memref_load_113 = func_arg_3[arith_addi_57][arith_addi_101]; 
        memref_alloca_31[0] = memref_load_113; 
        memref_alloca_28[0] = memref_load_107; 
        float memref_load_114 = func_arg_5[arith_addi_57][arith_addi_101]; 
        memref_alloca_29[0] = memref_load_114; 
      }
    }
  }
  for (int for_iter_115 = arith_const_16; for_iter_115 < arith_const_15; for_iter_115 += arith_const_14) {
    int arith_muli_116 = (for_iter_115 * arith_const_13); 
    for (int for_iter_117 = arith_const_16; for_iter_117 < arith_const_13; for_iter_117 += arith_const_14) {
      int arith_addi_118 = (arith_muli_116 + for_iter_117); 
      memref_alloca_23[0] = arith_const_17; 
      memref_alloca_22[0] = arith_const_17; 
      memref_alloca_27[0] = arith_const_17; 
      memref_alloca_26[0] = arith_const_17; 
      for (int for_iter_119 = arith_const_16; for_iter_119 < arith_const_12; for_iter_119 += arith_const_14) {
        int arith_muli_120 = (for_iter_119 * arith_const_11); 
        float memref_load_121 = memref_alloca_27[0]; 
        float arith_mulf_122 = (arith_mulf_47 * memref_load_121); 
        float memref_load_123 = memref_alloca_26[0]; 
        float arith_mulf_124 = (arith_mulf_51 * memref_load_123); 
        float arith_addf_125 = (arith_mulf_122 + arith_mulf_124); 
        float memref_load_126 = memref_alloca_23[0]; 
        float arith_mulf_127 = (math_powf_52 * memref_load_126); 
        float arith_addf_128 = (arith_addf_125 + arith_mulf_127); 
        float memref_load_129 = memref_alloca_22[0]; 
        float arith_mulf_130 = (arith_negf_53 * memref_load_129); 
        float arith_addf_131 = (arith_addf_128 + arith_mulf_130); 
        int arith_muli_132 = (arith_muli_120 * arith_const_9); 
        int arith_addi_133 = (arith_muli_132 + arith_const_8); 
        func_arg_6[arith_addi_118][arith_addi_133] = arith_addf_131; 
        memref_alloca_26[0] = memref_load_121; 
        int arith_muli_134 = (arith_muli_120 * arith_const_9); 
        int arith_addi_135 = (arith_muli_134 + arith_const_8); 
        float memref_load_136 = func_arg_3[arith_addi_118][arith_addi_135]; 
        memref_alloca_27[0] = memref_load_136; 
        memref_alloca_22[0] = memref_load_126; 
        int arith_muli_137 = (arith_muli_120 * arith_const_9); 
        int arith_addi_138 = (arith_muli_137 + arith_const_8); 
        float memref_load_139 = func_arg_6[arith_addi_118][arith_addi_138]; 
        memref_alloca_23[0] = memref_load_139; 
        int arith_addi_140 = (arith_muli_120 + arith_const_14); 
        float memref_load_141 = memref_alloca_27[0]; 
        float arith_mulf_142 = (arith_mulf_47 * memref_load_141); 
        float memref_load_143 = memref_alloca_26[0]; 
        float arith_mulf_144 = (arith_mulf_51 * memref_load_143); 
        float arith_addf_145 = (arith_mulf_142 + arith_mulf_144); 
        float memref_load_146 = memref_alloca_23[0]; 
        float arith_mulf_147 = (math_powf_52 * memref_load_146); 
        float arith_addf_148 = (arith_addf_145 + arith_mulf_147); 
        float memref_load_149 = memref_alloca_22[0]; 
        float arith_mulf_150 = (arith_negf_53 * memref_load_149); 
        float arith_addf_151 = (arith_addf_148 + arith_mulf_150); 
        int arith_muli_152 = (arith_addi_140 * arith_const_9); 
        int arith_addi_153 = (arith_muli_152 + arith_const_8); 
        func_arg_6[arith_addi_118][arith_addi_153] = arith_addf_151; 
        memref_alloca_26[0] = memref_load_141; 
        int arith_muli_154 = (arith_addi_140 * arith_const_9); 
        int arith_addi_155 = (arith_muli_154 + arith_const_8); 
        float memref_load_156 = func_arg_3[arith_addi_118][arith_addi_155]; 
        memref_alloca_27[0] = memref_load_156; 
        memref_alloca_22[0] = memref_load_146; 
        int arith_muli_157 = (arith_addi_140 * arith_const_9); 
        int arith_addi_158 = (arith_muli_157 + arith_const_8); 
        float memref_load_159 = func_arg_6[arith_addi_118][arith_addi_158]; 
        memref_alloca_23[0] = memref_load_159; 
        int arith_addi_160 = (arith_muli_120 + arith_const_15); 
        float memref_load_161 = memref_alloca_27[0]; 
        float arith_mulf_162 = (arith_mulf_47 * memref_load_161); 
        float memref_load_163 = memref_alloca_26[0]; 
        float arith_mulf_164 = (arith_mulf_51 * memref_load_163); 
        float arith_addf_165 = (arith_mulf_162 + arith_mulf_164); 
        float memref_load_166 = memref_alloca_23[0]; 
        float arith_mulf_167 = (math_powf_52 * memref_load_166); 
        float arith_addf_168 = (arith_addf_165 + arith_mulf_167); 
        float memref_load_169 = memref_alloca_22[0]; 
        float arith_mulf_170 = (arith_negf_53 * memref_load_169); 
        float arith_addf_171 = (arith_addf_168 + arith_mulf_170); 
        int arith_muli_172 = (arith_addi_160 * arith_const_9); 
        int arith_addi_173 = (arith_muli_172 + arith_const_8); 
        func_arg_6[arith_addi_118][arith_addi_173] = arith_addf_171; 
        memref_alloca_26[0] = memref_load_161; 
        int arith_muli_174 = (arith_addi_160 * arith_const_9); 
        int arith_addi_175 = (arith_muli_174 + arith_const_8); 
        float memref_load_176 = func_arg_3[arith_addi_118][arith_addi_175]; 
        memref_alloca_27[0] = memref_load_176; 
        memref_alloca_22[0] = memref_load_166; 
        int arith_muli_177 = (arith_addi_160 * arith_const_9); 
        int arith_addi_178 = (arith_muli_177 + arith_const_8); 
        float memref_load_179 = func_arg_6[arith_addi_118][arith_addi_178]; 
        memref_alloca_23[0] = memref_load_179; 
        int arith_addi_180 = (arith_muli_120 + arith_const_10); 
        float memref_load_181 = memref_alloca_27[0]; 
        float arith_mulf_182 = (arith_mulf_47 * memref_load_181); 
        float memref_load_183 = memref_alloca_26[0]; 
        float arith_mulf_184 = (arith_mulf_51 * memref_load_183); 
        float arith_addf_185 = (arith_mulf_182 + arith_mulf_184); 
        float memref_load_186 = memref_alloca_23[0]; 
        float arith_mulf_187 = (math_powf_52 * memref_load_186); 
        float arith_addf_188 = (arith_addf_185 + arith_mulf_187); 
        float memref_load_189 = memref_alloca_22[0]; 
        float arith_mulf_190 = (arith_negf_53 * memref_load_189); 
        float arith_addf_191 = (arith_addf_188 + arith_mulf_190); 
        int arith_muli_192 = (arith_addi_180 * arith_const_9); 
        int arith_addi_193 = (arith_muli_192 + arith_const_8); 
        func_arg_6[arith_addi_118][arith_addi_193] = arith_addf_191; 
        memref_alloca_26[0] = memref_load_181; 
        int arith_muli_194 = (arith_addi_180 * arith_const_9); 
        int arith_addi_195 = (arith_muli_194 + arith_const_8); 
        float memref_load_196 = func_arg_3[arith_addi_118][arith_addi_195]; 
        memref_alloca_27[0] = memref_load_196; 
        memref_alloca_22[0] = memref_load_186; 
        int arith_muli_197 = (arith_addi_180 * arith_const_9); 
        int arith_addi_198 = (arith_muli_197 + arith_const_8); 
        float memref_load_199 = func_arg_6[arith_addi_118][arith_addi_198]; 
        memref_alloca_23[0] = memref_load_199; 
      }
    }
  }
  for (int for_iter_200 = arith_const_16; for_iter_200 < arith_const_15; for_iter_200 += arith_const_14) {
    int arith_muli_201 = (for_iter_200 * arith_const_13); 
    for (int for_iter_202 = arith_const_16; for_iter_202 < arith_const_14; for_iter_202 += arith_const_14) {
      int arith_muli_203 = (for_iter_202 * arith_const_7); 
      for (int for_iter_204 = arith_const_16; for_iter_204 < arith_const_13; for_iter_204 += arith_const_14) {
        int arith_addi_205 = (arith_muli_201 + for_iter_204); 
        for (int for_iter_206 = arith_const_16; for_iter_206 < arith_const_12; for_iter_206 += arith_const_14) {
          int arith_muli_207 = (for_iter_206 * arith_const_11); 
          int arith_addi_208 = (arith_muli_203 + arith_muli_207); 
          float memref_load_209 = func_arg_5[arith_addi_205][arith_addi_208]; 
          float memref_load_210 = func_arg_6[arith_addi_205][arith_addi_208]; 
          float arith_addf_211 = (memref_load_209 + memref_load_210); 
          func_arg_4[arith_addi_205][arith_addi_208] = arith_addf_211; 
          int arith_addi_212 = (arith_addi_208 + arith_const_14); 
          float memref_load_213 = func_arg_5[arith_addi_205][arith_addi_212]; 
          float memref_load_214 = func_arg_6[arith_addi_205][arith_addi_212]; 
          float arith_addf_215 = (memref_load_213 + memref_load_214); 
          func_arg_4[arith_addi_205][arith_addi_212] = arith_addf_215; 
          int arith_addi_216 = (arith_addi_208 + arith_const_15); 
          float memref_load_217 = func_arg_5[arith_addi_205][arith_addi_216]; 
          float memref_load_218 = func_arg_6[arith_addi_205][arith_addi_216]; 
          float arith_addf_219 = (memref_load_217 + memref_load_218); 
          func_arg_4[arith_addi_205][arith_addi_216] = arith_addf_219; 
          int arith_addi_220 = (arith_addi_208 + arith_const_10); 
          float memref_load_221 = func_arg_5[arith_addi_205][arith_addi_220]; 
          float memref_load_222 = func_arg_6[arith_addi_205][arith_addi_220]; 
          float arith_addf_223 = (memref_load_221 + memref_load_222); 
          func_arg_4[arith_addi_205][arith_addi_220] = arith_addf_223; 
        }
      }
    }
  }
  for (int for_iter_224 = arith_const_16; for_iter_224 < arith_const_15; for_iter_224 += arith_const_14) {
    int arith_muli_225 = (for_iter_224 * arith_const_13); 
    for (int for_iter_226 = arith_const_16; for_iter_226 < arith_const_13; for_iter_226 += arith_const_14) {
      int arith_addi_227 = (arith_muli_225 + for_iter_226); 
      memref_alloca_30[0] = arith_const_17; 
      memref_alloca_29[0] = arith_const_17; 
      memref_alloca_28[0] = arith_const_17; 
      for (int for_iter_228 = arith_const_16; for_iter_228 < arith_const_12; for_iter_228 += arith_const_14) {
        int arith_muli_229 = (for_iter_228 * arith_const_11); 
        float memref_load_230 = func_arg_4[arith_muli_229][arith_addi_227]; 
        float arith_mulf_231 = (arith_divf_42 * memref_load_230); 
        float memref_load_232 = memref_alloca_30[0]; 
        float arith_mulf_233 = (arith_mulf_45 * memref_load_232); 
        float arith_addf_234 = (arith_mulf_231 + arith_mulf_233); 
        float memref_load_235 = memref_alloca_29[0]; 
        float arith_mulf_236 = (math_powf_52 * memref_load_235); 
        float arith_addf_237 = (arith_addf_234 + arith_mulf_236); 
        float memref_load_238 = memref_alloca_28[0]; 
        float arith_mulf_239 = (arith_negf_53 * memref_load_238); 
        float arith_addf_240 = (arith_addf_237 + arith_mulf_239); 
        func_arg_5[arith_muli_229][arith_addi_227] = arith_addf_240; 
        float memref_load_241 = func_arg_4[arith_muli_229][arith_addi_227]; 
        memref_alloca_30[0] = memref_load_241; 
        memref_alloca_28[0] = memref_load_235; 
        float memref_load_242 = func_arg_5[arith_muli_229][arith_addi_227]; 
        memref_alloca_29[0] = memref_load_242; 
        int arith_addi_243 = (arith_muli_229 + arith_const_14); 
        float memref_load_244 = func_arg_4[arith_addi_243][arith_addi_227]; 
        float arith_mulf_245 = (arith_divf_42 * memref_load_244); 
        float memref_load_246 = memref_alloca_30[0]; 
        float arith_mulf_247 = (arith_mulf_45 * memref_load_246); 
        float arith_addf_248 = (arith_mulf_245 + arith_mulf_247); 
        float memref_load_249 = memref_alloca_29[0]; 
        float arith_mulf_250 = (math_powf_52 * memref_load_249); 
        float arith_addf_251 = (arith_addf_248 + arith_mulf_250); 
        float memref_load_252 = memref_alloca_28[0]; 
        float arith_mulf_253 = (arith_negf_53 * memref_load_252); 
        float arith_addf_254 = (arith_addf_251 + arith_mulf_253); 
        func_arg_5[arith_addi_243][arith_addi_227] = arith_addf_254; 
        float memref_load_255 = func_arg_4[arith_addi_243][arith_addi_227]; 
        memref_alloca_30[0] = memref_load_255; 
        memref_alloca_28[0] = memref_load_249; 
        float memref_load_256 = func_arg_5[arith_addi_243][arith_addi_227]; 
        memref_alloca_29[0] = memref_load_256; 
        int arith_addi_257 = (arith_muli_229 + arith_const_15); 
        float memref_load_258 = func_arg_4[arith_addi_257][arith_addi_227]; 
        float arith_mulf_259 = (arith_divf_42 * memref_load_258); 
        float memref_load_260 = memref_alloca_30[0]; 
        float arith_mulf_261 = (arith_mulf_45 * memref_load_260); 
        float arith_addf_262 = (arith_mulf_259 + arith_mulf_261); 
        float memref_load_263 = memref_alloca_29[0]; 
        float arith_mulf_264 = (math_powf_52 * memref_load_263); 
        float arith_addf_265 = (arith_addf_262 + arith_mulf_264); 
        float memref_load_266 = memref_alloca_28[0]; 
        float arith_mulf_267 = (arith_negf_53 * memref_load_266); 
        float arith_addf_268 = (arith_addf_265 + arith_mulf_267); 
        func_arg_5[arith_addi_257][arith_addi_227] = arith_addf_268; 
        float memref_load_269 = func_arg_4[arith_addi_257][arith_addi_227]; 
        memref_alloca_30[0] = memref_load_269; 
        memref_alloca_28[0] = memref_load_263; 
        float memref_load_270 = func_arg_5[arith_addi_257][arith_addi_227]; 
        memref_alloca_29[0] = memref_load_270; 
        int arith_addi_271 = (arith_muli_229 + arith_const_10); 
        float memref_load_272 = func_arg_4[arith_addi_271][arith_addi_227]; 
        float arith_mulf_273 = (arith_divf_42 * memref_load_272); 
        float memref_load_274 = memref_alloca_30[0]; 
        float arith_mulf_275 = (arith_mulf_45 * memref_load_274); 
        float arith_addf_276 = (arith_mulf_273 + arith_mulf_275); 
        float memref_load_277 = memref_alloca_29[0]; 
        float arith_mulf_278 = (math_powf_52 * memref_load_277); 
        float arith_addf_279 = (arith_addf_276 + arith_mulf_278); 
        float memref_load_280 = memref_alloca_28[0]; 
        float arith_mulf_281 = (arith_negf_53 * memref_load_280); 
        float arith_addf_282 = (arith_addf_279 + arith_mulf_281); 
        func_arg_5[arith_addi_271][arith_addi_227] = arith_addf_282; 
        float memref_load_283 = func_arg_4[arith_addi_271][arith_addi_227]; 
        memref_alloca_30[0] = memref_load_283; 
        memref_alloca_28[0] = memref_load_277; 
        float memref_load_284 = func_arg_5[arith_addi_271][arith_addi_227]; 
        memref_alloca_29[0] = memref_load_284; 
      }
    }
  }
  for (int for_iter_285 = arith_const_16; for_iter_285 < arith_const_15; for_iter_285 += arith_const_14) {
    int arith_muli_286 = (for_iter_285 * arith_const_13); 
    for (int for_iter_287 = arith_const_16; for_iter_287 < arith_const_13; for_iter_287 += arith_const_14) {
      int arith_addi_288 = (arith_muli_286 + for_iter_287); 
      memref_alloca_25[0] = arith_const_17; 
      memref_alloca_24[0] = arith_const_17; 
      memref_alloca_23[0] = arith_const_17; 
      memref_alloca_22[0] = arith_const_17; 
      for (int for_iter_289 = arith_const_16; for_iter_289 < arith_const_12; for_iter_289 += arith_const_14) {
        int arith_muli_290 = (for_iter_289 * arith_const_11); 
        float memref_load_291 = memref_alloca_25[0]; 
        float arith_mulf_292 = (arith_mulf_47 * memref_load_291); 
        float memref_load_293 = memref_alloca_24[0]; 
        float arith_mulf_294 = (arith_mulf_51 * memref_load_293); 
        float arith_addf_295 = (arith_mulf_292 + arith_mulf_294); 
        float memref_load_296 = memref_alloca_23[0]; 
        float arith_mulf_297 = (math_powf_52 * memref_load_296); 
        float arith_addf_298 = (arith_addf_295 + arith_mulf_297); 
        float memref_load_299 = memref_alloca_22[0]; 
        float arith_mulf_300 = (arith_negf_53 * memref_load_299); 
        float arith_addf_301 = (arith_addf_298 + arith_mulf_300); 
        int arith_muli_302 = (arith_muli_290 * arith_const_9); 
        int arith_addi_303 = (arith_muli_302 + arith_const_8); 
        func_arg_6[arith_addi_303][arith_addi_288] = arith_addf_301; 
        memref_alloca_24[0] = memref_load_291; 
        int arith_muli_304 = (arith_muli_290 * arith_const_9); 
        int arith_addi_305 = (arith_muli_304 + arith_const_8); 
        float memref_load_306 = func_arg_4[arith_addi_305][arith_addi_288]; 
        memref_alloca_25[0] = memref_load_306; 
        memref_alloca_22[0] = memref_load_296; 
        int arith_muli_307 = (arith_muli_290 * arith_const_9); 
        int arith_addi_308 = (arith_muli_307 + arith_const_8); 
        float memref_load_309 = func_arg_6[arith_addi_308][arith_addi_288]; 
        memref_alloca_23[0] = memref_load_309; 
        int arith_addi_310 = (arith_muli_290 + arith_const_14); 
        float memref_load_311 = memref_alloca_25[0]; 
        float arith_mulf_312 = (arith_mulf_47 * memref_load_311); 
        float memref_load_313 = memref_alloca_24[0]; 
        float arith_mulf_314 = (arith_mulf_51 * memref_load_313); 
        float arith_addf_315 = (arith_mulf_312 + arith_mulf_314); 
        float memref_load_316 = memref_alloca_23[0]; 
        float arith_mulf_317 = (math_powf_52 * memref_load_316); 
        float arith_addf_318 = (arith_addf_315 + arith_mulf_317); 
        float memref_load_319 = memref_alloca_22[0]; 
        float arith_mulf_320 = (arith_negf_53 * memref_load_319); 
        float arith_addf_321 = (arith_addf_318 + arith_mulf_320); 
        int arith_muli_322 = (arith_addi_310 * arith_const_9); 
        int arith_addi_323 = (arith_muli_322 + arith_const_8); 
        func_arg_6[arith_addi_323][arith_addi_288] = arith_addf_321; 
        memref_alloca_24[0] = memref_load_311; 
        int arith_muli_324 = (arith_addi_310 * arith_const_9); 
        int arith_addi_325 = (arith_muli_324 + arith_const_8); 
        float memref_load_326 = func_arg_4[arith_addi_325][arith_addi_288]; 
        memref_alloca_25[0] = memref_load_326; 
        memref_alloca_22[0] = memref_load_316; 
        int arith_muli_327 = (arith_addi_310 * arith_const_9); 
        int arith_addi_328 = (arith_muli_327 + arith_const_8); 
        float memref_load_329 = func_arg_6[arith_addi_328][arith_addi_288]; 
        memref_alloca_23[0] = memref_load_329; 
        int arith_addi_330 = (arith_muli_290 + arith_const_15); 
        float memref_load_331 = memref_alloca_25[0]; 
        float arith_mulf_332 = (arith_mulf_47 * memref_load_331); 
        float memref_load_333 = memref_alloca_24[0]; 
        float arith_mulf_334 = (arith_mulf_51 * memref_load_333); 
        float arith_addf_335 = (arith_mulf_332 + arith_mulf_334); 
        float memref_load_336 = memref_alloca_23[0]; 
        float arith_mulf_337 = (math_powf_52 * memref_load_336); 
        float arith_addf_338 = (arith_addf_335 + arith_mulf_337); 
        float memref_load_339 = memref_alloca_22[0]; 
        float arith_mulf_340 = (arith_negf_53 * memref_load_339); 
        float arith_addf_341 = (arith_addf_338 + arith_mulf_340); 
        int arith_muli_342 = (arith_addi_330 * arith_const_9); 
        int arith_addi_343 = (arith_muli_342 + arith_const_8); 
        func_arg_6[arith_addi_343][arith_addi_288] = arith_addf_341; 
        memref_alloca_24[0] = memref_load_331; 
        int arith_muli_344 = (arith_addi_330 * arith_const_9); 
        int arith_addi_345 = (arith_muli_344 + arith_const_8); 
        float memref_load_346 = func_arg_4[arith_addi_345][arith_addi_288]; 
        memref_alloca_25[0] = memref_load_346; 
        memref_alloca_22[0] = memref_load_336; 
        int arith_muli_347 = (arith_addi_330 * arith_const_9); 
        int arith_addi_348 = (arith_muli_347 + arith_const_8); 
        float memref_load_349 = func_arg_6[arith_addi_348][arith_addi_288]; 
        memref_alloca_23[0] = memref_load_349; 
        int arith_addi_350 = (arith_muli_290 + arith_const_10); 
        float memref_load_351 = memref_alloca_25[0]; 
        float arith_mulf_352 = (arith_mulf_47 * memref_load_351); 
        float memref_load_353 = memref_alloca_24[0]; 
        float arith_mulf_354 = (arith_mulf_51 * memref_load_353); 
        float arith_addf_355 = (arith_mulf_352 + arith_mulf_354); 
        float memref_load_356 = memref_alloca_23[0]; 
        float arith_mulf_357 = (math_powf_52 * memref_load_356); 
        float arith_addf_358 = (arith_addf_355 + arith_mulf_357); 
        float memref_load_359 = memref_alloca_22[0]; 
        float arith_mulf_360 = (arith_negf_53 * memref_load_359); 
        float arith_addf_361 = (arith_addf_358 + arith_mulf_360); 
        int arith_muli_362 = (arith_addi_350 * arith_const_9); 
        int arith_addi_363 = (arith_muli_362 + arith_const_8); 
        func_arg_6[arith_addi_363][arith_addi_288] = arith_addf_361; 
        memref_alloca_24[0] = memref_load_351; 
        int arith_muli_364 = (arith_addi_350 * arith_const_9); 
        int arith_addi_365 = (arith_muli_364 + arith_const_8); 
        float memref_load_366 = func_arg_4[arith_addi_365][arith_addi_288]; 
        memref_alloca_25[0] = memref_load_366; 
        memref_alloca_22[0] = memref_load_356; 
        int arith_muli_367 = (arith_addi_350 * arith_const_9); 
        int arith_addi_368 = (arith_muli_367 + arith_const_8); 
        float memref_load_369 = func_arg_6[arith_addi_368][arith_addi_288]; 
        memref_alloca_23[0] = memref_load_369; 
      }
    }
  }
  for (int for_iter_370 = arith_const_16; for_iter_370 < arith_const_15; for_iter_370 += arith_const_14) {
    int arith_muli_371 = (for_iter_370 * arith_const_13); 
    for (int for_iter_372 = arith_const_16; for_iter_372 < arith_const_14; for_iter_372 += arith_const_14) {
      int arith_muli_373 = (for_iter_372 * arith_const_7); 
      for (int for_iter_374 = arith_const_16; for_iter_374 < arith_const_13; for_iter_374 += arith_const_14) {
        int arith_addi_375 = (arith_muli_371 + for_iter_374); 
        for (int for_iter_376 = arith_const_16; for_iter_376 < arith_const_12; for_iter_376 += arith_const_14) {
          int arith_muli_377 = (for_iter_376 * arith_const_11); 
          int arith_addi_378 = (arith_muli_373 + arith_muli_377); 
          float memref_load_379 = func_arg_5[arith_addi_375][arith_addi_378]; 
          float memref_load_380 = func_arg_6[arith_addi_375][arith_addi_378]; 
          float arith_addf_381 = (memref_load_379 + memref_load_380); 
          func_arg_4[arith_addi_375][arith_addi_378] = arith_addf_381; 
          int arith_addi_382 = (arith_addi_378 + arith_const_14); 
          float memref_load_383 = func_arg_5[arith_addi_375][arith_addi_382]; 
          float memref_load_384 = func_arg_6[arith_addi_375][arith_addi_382]; 
          float arith_addf_385 = (memref_load_383 + memref_load_384); 
          func_arg_4[arith_addi_375][arith_addi_382] = arith_addf_385; 
          int arith_addi_386 = (arith_addi_378 + arith_const_15); 
          float memref_load_387 = func_arg_5[arith_addi_375][arith_addi_386]; 
          float memref_load_388 = func_arg_6[arith_addi_375][arith_addi_386]; 
          float arith_addf_389 = (memref_load_387 + memref_load_388); 
          func_arg_4[arith_addi_375][arith_addi_386] = arith_addf_389; 
          int arith_addi_390 = (arith_addi_378 + arith_const_10); 
          float memref_load_391 = func_arg_5[arith_addi_375][arith_addi_390]; 
          float memref_load_392 = func_arg_6[arith_addi_375][arith_addi_390]; 
          float arith_addf_393 = (memref_load_391 + memref_load_392); 
          func_arg_4[arith_addi_375][arith_addi_390] = arith_addf_393; 
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
