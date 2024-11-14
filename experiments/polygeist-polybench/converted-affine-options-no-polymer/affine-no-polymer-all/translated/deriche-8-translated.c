#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
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
  int* async_group_200; 
  int async_group_index_201 = 0; 
  int for_iter_arg_203 = arith_const_16; 
  for (int for_iter_202 = arith_const_16; for_iter_202 < arith_const_15; for_iter_202 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_204); 
    #pragma peqc async_execute
    {
      int arith_muli_205 = (for_iter_202 * arith_const_13); 
      for (int for_iter_206 = arith_const_16; for_iter_206 < arith_const_14; for_iter_206 += arith_const_14) {
        int arith_muli_207 = (for_iter_206 * arith_const_7); 
        for (int for_iter_208 = arith_const_16; for_iter_208 < arith_const_13; for_iter_208 += arith_const_14) {
          int arith_addi_209 = (arith_muli_205 + for_iter_208); 
          for (int for_iter_210 = arith_const_16; for_iter_210 < arith_const_12; for_iter_210 += arith_const_14) {
            int arith_muli_211 = (for_iter_210 * arith_const_11); 
            int arith_addi_212 = (arith_muli_207 + arith_muli_211); 
            float memref_load_213 = func_arg_5[arith_addi_209][arith_addi_212]; 
            float memref_load_214 = func_arg_6[arith_addi_209][arith_addi_212]; 
            float arith_addf_215 = (memref_load_213 + memref_load_214); 
            func_arg_4[arith_addi_209][arith_addi_212] = arith_addf_215; 
            int arith_addi_216 = (arith_addi_212 + arith_const_14); 
            float memref_load_217 = func_arg_5[arith_addi_209][arith_addi_216]; 
            float memref_load_218 = func_arg_6[arith_addi_209][arith_addi_216]; 
            float arith_addf_219 = (memref_load_217 + memref_load_218); 
            func_arg_4[arith_addi_209][arith_addi_216] = arith_addf_219; 
            int arith_addi_220 = (arith_addi_212 + arith_const_15); 
            float memref_load_221 = func_arg_5[arith_addi_209][arith_addi_220]; 
            float memref_load_222 = func_arg_6[arith_addi_209][arith_addi_220]; 
            float arith_addf_223 = (memref_load_221 + memref_load_222); 
            func_arg_4[arith_addi_209][arith_addi_220] = arith_addf_223; 
            int arith_addi_224 = (arith_addi_212 + arith_const_10); 
            float memref_load_225 = func_arg_5[arith_addi_209][arith_addi_224]; 
            float memref_load_226 = func_arg_6[arith_addi_209][arith_addi_224]; 
            float arith_addf_227 = (memref_load_225 + memref_load_226); 
            func_arg_4[arith_addi_209][arith_addi_224] = arith_addf_227; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_204, PAST_TASK_FINISHED); 
    }
    async_group_200[async_group_index_201] = execute_token_204; 
    async_group_index_201++; 
    int arith_addi_228 = (for_iter_arg_203 + arith_const_14); 
    for_iter_arg_203 = arith_addi_228; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_200, async_group_index_201, PAST_TASK_FINISHED); 
  for (int for_iter_229 = arith_const_16; for_iter_229 < arith_const_15; for_iter_229 += arith_const_14) {
    int arith_muli_230 = (for_iter_229 * arith_const_13); 
    for (int for_iter_231 = arith_const_16; for_iter_231 < arith_const_13; for_iter_231 += arith_const_14) {
      int arith_addi_232 = (arith_muli_230 + for_iter_231); 
      memref_alloca_30[0] = arith_const_17; 
      memref_alloca_29[0] = arith_const_17; 
      memref_alloca_28[0] = arith_const_17; 
      for (int for_iter_233 = arith_const_16; for_iter_233 < arith_const_12; for_iter_233 += arith_const_14) {
        int arith_muli_234 = (for_iter_233 * arith_const_11); 
        float memref_load_235 = func_arg_4[arith_muli_234][arith_addi_232]; 
        float arith_mulf_236 = (arith_divf_42 * memref_load_235); 
        float memref_load_237 = memref_alloca_30[0]; 
        float arith_mulf_238 = (arith_mulf_45 * memref_load_237); 
        float arith_addf_239 = (arith_mulf_236 + arith_mulf_238); 
        float memref_load_240 = memref_alloca_29[0]; 
        float arith_mulf_241 = (math_powf_52 * memref_load_240); 
        float arith_addf_242 = (arith_addf_239 + arith_mulf_241); 
        float memref_load_243 = memref_alloca_28[0]; 
        float arith_mulf_244 = (arith_negf_53 * memref_load_243); 
        float arith_addf_245 = (arith_addf_242 + arith_mulf_244); 
        func_arg_5[arith_muli_234][arith_addi_232] = arith_addf_245; 
        float memref_load_246 = func_arg_4[arith_muli_234][arith_addi_232]; 
        memref_alloca_30[0] = memref_load_246; 
        memref_alloca_28[0] = memref_load_240; 
        float memref_load_247 = func_arg_5[arith_muli_234][arith_addi_232]; 
        memref_alloca_29[0] = memref_load_247; 
        int arith_addi_248 = (arith_muli_234 + arith_const_14); 
        float memref_load_249 = func_arg_4[arith_addi_248][arith_addi_232]; 
        float arith_mulf_250 = (arith_divf_42 * memref_load_249); 
        float memref_load_251 = memref_alloca_30[0]; 
        float arith_mulf_252 = (arith_mulf_45 * memref_load_251); 
        float arith_addf_253 = (arith_mulf_250 + arith_mulf_252); 
        float memref_load_254 = memref_alloca_29[0]; 
        float arith_mulf_255 = (math_powf_52 * memref_load_254); 
        float arith_addf_256 = (arith_addf_253 + arith_mulf_255); 
        float memref_load_257 = memref_alloca_28[0]; 
        float arith_mulf_258 = (arith_negf_53 * memref_load_257); 
        float arith_addf_259 = (arith_addf_256 + arith_mulf_258); 
        func_arg_5[arith_addi_248][arith_addi_232] = arith_addf_259; 
        float memref_load_260 = func_arg_4[arith_addi_248][arith_addi_232]; 
        memref_alloca_30[0] = memref_load_260; 
        memref_alloca_28[0] = memref_load_254; 
        float memref_load_261 = func_arg_5[arith_addi_248][arith_addi_232]; 
        memref_alloca_29[0] = memref_load_261; 
        int arith_addi_262 = (arith_muli_234 + arith_const_15); 
        float memref_load_263 = func_arg_4[arith_addi_262][arith_addi_232]; 
        float arith_mulf_264 = (arith_divf_42 * memref_load_263); 
        float memref_load_265 = memref_alloca_30[0]; 
        float arith_mulf_266 = (arith_mulf_45 * memref_load_265); 
        float arith_addf_267 = (arith_mulf_264 + arith_mulf_266); 
        float memref_load_268 = memref_alloca_29[0]; 
        float arith_mulf_269 = (math_powf_52 * memref_load_268); 
        float arith_addf_270 = (arith_addf_267 + arith_mulf_269); 
        float memref_load_271 = memref_alloca_28[0]; 
        float arith_mulf_272 = (arith_negf_53 * memref_load_271); 
        float arith_addf_273 = (arith_addf_270 + arith_mulf_272); 
        func_arg_5[arith_addi_262][arith_addi_232] = arith_addf_273; 
        float memref_load_274 = func_arg_4[arith_addi_262][arith_addi_232]; 
        memref_alloca_30[0] = memref_load_274; 
        memref_alloca_28[0] = memref_load_268; 
        float memref_load_275 = func_arg_5[arith_addi_262][arith_addi_232]; 
        memref_alloca_29[0] = memref_load_275; 
        int arith_addi_276 = (arith_muli_234 + arith_const_10); 
        float memref_load_277 = func_arg_4[arith_addi_276][arith_addi_232]; 
        float arith_mulf_278 = (arith_divf_42 * memref_load_277); 
        float memref_load_279 = memref_alloca_30[0]; 
        float arith_mulf_280 = (arith_mulf_45 * memref_load_279); 
        float arith_addf_281 = (arith_mulf_278 + arith_mulf_280); 
        float memref_load_282 = memref_alloca_29[0]; 
        float arith_mulf_283 = (math_powf_52 * memref_load_282); 
        float arith_addf_284 = (arith_addf_281 + arith_mulf_283); 
        float memref_load_285 = memref_alloca_28[0]; 
        float arith_mulf_286 = (arith_negf_53 * memref_load_285); 
        float arith_addf_287 = (arith_addf_284 + arith_mulf_286); 
        func_arg_5[arith_addi_276][arith_addi_232] = arith_addf_287; 
        float memref_load_288 = func_arg_4[arith_addi_276][arith_addi_232]; 
        memref_alloca_30[0] = memref_load_288; 
        memref_alloca_28[0] = memref_load_282; 
        float memref_load_289 = func_arg_5[arith_addi_276][arith_addi_232]; 
        memref_alloca_29[0] = memref_load_289; 
      }
    }
  }
  for (int for_iter_290 = arith_const_16; for_iter_290 < arith_const_15; for_iter_290 += arith_const_14) {
    int arith_muli_291 = (for_iter_290 * arith_const_13); 
    for (int for_iter_292 = arith_const_16; for_iter_292 < arith_const_13; for_iter_292 += arith_const_14) {
      int arith_addi_293 = (arith_muli_291 + for_iter_292); 
      memref_alloca_25[0] = arith_const_17; 
      memref_alloca_24[0] = arith_const_17; 
      memref_alloca_23[0] = arith_const_17; 
      memref_alloca_22[0] = arith_const_17; 
      for (int for_iter_294 = arith_const_16; for_iter_294 < arith_const_12; for_iter_294 += arith_const_14) {
        int arith_muli_295 = (for_iter_294 * arith_const_11); 
        float memref_load_296 = memref_alloca_25[0]; 
        float arith_mulf_297 = (arith_mulf_47 * memref_load_296); 
        float memref_load_298 = memref_alloca_24[0]; 
        float arith_mulf_299 = (arith_mulf_51 * memref_load_298); 
        float arith_addf_300 = (arith_mulf_297 + arith_mulf_299); 
        float memref_load_301 = memref_alloca_23[0]; 
        float arith_mulf_302 = (math_powf_52 * memref_load_301); 
        float arith_addf_303 = (arith_addf_300 + arith_mulf_302); 
        float memref_load_304 = memref_alloca_22[0]; 
        float arith_mulf_305 = (arith_negf_53 * memref_load_304); 
        float arith_addf_306 = (arith_addf_303 + arith_mulf_305); 
        int arith_muli_307 = (arith_muli_295 * arith_const_9); 
        int arith_addi_308 = (arith_muli_307 + arith_const_8); 
        func_arg_6[arith_addi_308][arith_addi_293] = arith_addf_306; 
        memref_alloca_24[0] = memref_load_296; 
        int arith_muli_309 = (arith_muli_295 * arith_const_9); 
        int arith_addi_310 = (arith_muli_309 + arith_const_8); 
        float memref_load_311 = func_arg_4[arith_addi_310][arith_addi_293]; 
        memref_alloca_25[0] = memref_load_311; 
        memref_alloca_22[0] = memref_load_301; 
        int arith_muli_312 = (arith_muli_295 * arith_const_9); 
        int arith_addi_313 = (arith_muli_312 + arith_const_8); 
        float memref_load_314 = func_arg_6[arith_addi_313][arith_addi_293]; 
        memref_alloca_23[0] = memref_load_314; 
        int arith_addi_315 = (arith_muli_295 + arith_const_14); 
        float memref_load_316 = memref_alloca_25[0]; 
        float arith_mulf_317 = (arith_mulf_47 * memref_load_316); 
        float memref_load_318 = memref_alloca_24[0]; 
        float arith_mulf_319 = (arith_mulf_51 * memref_load_318); 
        float arith_addf_320 = (arith_mulf_317 + arith_mulf_319); 
        float memref_load_321 = memref_alloca_23[0]; 
        float arith_mulf_322 = (math_powf_52 * memref_load_321); 
        float arith_addf_323 = (arith_addf_320 + arith_mulf_322); 
        float memref_load_324 = memref_alloca_22[0]; 
        float arith_mulf_325 = (arith_negf_53 * memref_load_324); 
        float arith_addf_326 = (arith_addf_323 + arith_mulf_325); 
        int arith_muli_327 = (arith_addi_315 * arith_const_9); 
        int arith_addi_328 = (arith_muli_327 + arith_const_8); 
        func_arg_6[arith_addi_328][arith_addi_293] = arith_addf_326; 
        memref_alloca_24[0] = memref_load_316; 
        int arith_muli_329 = (arith_addi_315 * arith_const_9); 
        int arith_addi_330 = (arith_muli_329 + arith_const_8); 
        float memref_load_331 = func_arg_4[arith_addi_330][arith_addi_293]; 
        memref_alloca_25[0] = memref_load_331; 
        memref_alloca_22[0] = memref_load_321; 
        int arith_muli_332 = (arith_addi_315 * arith_const_9); 
        int arith_addi_333 = (arith_muli_332 + arith_const_8); 
        float memref_load_334 = func_arg_6[arith_addi_333][arith_addi_293]; 
        memref_alloca_23[0] = memref_load_334; 
        int arith_addi_335 = (arith_muli_295 + arith_const_15); 
        float memref_load_336 = memref_alloca_25[0]; 
        float arith_mulf_337 = (arith_mulf_47 * memref_load_336); 
        float memref_load_338 = memref_alloca_24[0]; 
        float arith_mulf_339 = (arith_mulf_51 * memref_load_338); 
        float arith_addf_340 = (arith_mulf_337 + arith_mulf_339); 
        float memref_load_341 = memref_alloca_23[0]; 
        float arith_mulf_342 = (math_powf_52 * memref_load_341); 
        float arith_addf_343 = (arith_addf_340 + arith_mulf_342); 
        float memref_load_344 = memref_alloca_22[0]; 
        float arith_mulf_345 = (arith_negf_53 * memref_load_344); 
        float arith_addf_346 = (arith_addf_343 + arith_mulf_345); 
        int arith_muli_347 = (arith_addi_335 * arith_const_9); 
        int arith_addi_348 = (arith_muli_347 + arith_const_8); 
        func_arg_6[arith_addi_348][arith_addi_293] = arith_addf_346; 
        memref_alloca_24[0] = memref_load_336; 
        int arith_muli_349 = (arith_addi_335 * arith_const_9); 
        int arith_addi_350 = (arith_muli_349 + arith_const_8); 
        float memref_load_351 = func_arg_4[arith_addi_350][arith_addi_293]; 
        memref_alloca_25[0] = memref_load_351; 
        memref_alloca_22[0] = memref_load_341; 
        int arith_muli_352 = (arith_addi_335 * arith_const_9); 
        int arith_addi_353 = (arith_muli_352 + arith_const_8); 
        float memref_load_354 = func_arg_6[arith_addi_353][arith_addi_293]; 
        memref_alloca_23[0] = memref_load_354; 
        int arith_addi_355 = (arith_muli_295 + arith_const_10); 
        float memref_load_356 = memref_alloca_25[0]; 
        float arith_mulf_357 = (arith_mulf_47 * memref_load_356); 
        float memref_load_358 = memref_alloca_24[0]; 
        float arith_mulf_359 = (arith_mulf_51 * memref_load_358); 
        float arith_addf_360 = (arith_mulf_357 + arith_mulf_359); 
        float memref_load_361 = memref_alloca_23[0]; 
        float arith_mulf_362 = (math_powf_52 * memref_load_361); 
        float arith_addf_363 = (arith_addf_360 + arith_mulf_362); 
        float memref_load_364 = memref_alloca_22[0]; 
        float arith_mulf_365 = (arith_negf_53 * memref_load_364); 
        float arith_addf_366 = (arith_addf_363 + arith_mulf_365); 
        int arith_muli_367 = (arith_addi_355 * arith_const_9); 
        int arith_addi_368 = (arith_muli_367 + arith_const_8); 
        func_arg_6[arith_addi_368][arith_addi_293] = arith_addf_366; 
        memref_alloca_24[0] = memref_load_356; 
        int arith_muli_369 = (arith_addi_355 * arith_const_9); 
        int arith_addi_370 = (arith_muli_369 + arith_const_8); 
        float memref_load_371 = func_arg_4[arith_addi_370][arith_addi_293]; 
        memref_alloca_25[0] = memref_load_371; 
        memref_alloca_22[0] = memref_load_361; 
        int arith_muli_372 = (arith_addi_355 * arith_const_9); 
        int arith_addi_373 = (arith_muli_372 + arith_const_8); 
        float memref_load_374 = func_arg_6[arith_addi_373][arith_addi_293]; 
        memref_alloca_23[0] = memref_load_374; 
      }
    }
  }
  int* async_group_375; 
  int async_group_index_376 = 0; 
  int for_iter_arg_378 = arith_const_16; 
  for (int for_iter_377 = arith_const_16; for_iter_377 < arith_const_15; for_iter_377 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_379); 
    #pragma peqc async_execute
    {
      int arith_muli_380 = (for_iter_377 * arith_const_13); 
      for (int for_iter_381 = arith_const_16; for_iter_381 < arith_const_14; for_iter_381 += arith_const_14) {
        int arith_muli_382 = (for_iter_381 * arith_const_7); 
        for (int for_iter_383 = arith_const_16; for_iter_383 < arith_const_13; for_iter_383 += arith_const_14) {
          int arith_addi_384 = (arith_muli_380 + for_iter_383); 
          for (int for_iter_385 = arith_const_16; for_iter_385 < arith_const_12; for_iter_385 += arith_const_14) {
            int arith_muli_386 = (for_iter_385 * arith_const_11); 
            int arith_addi_387 = (arith_muli_382 + arith_muli_386); 
            float memref_load_388 = func_arg_5[arith_addi_384][arith_addi_387]; 
            float memref_load_389 = func_arg_6[arith_addi_384][arith_addi_387]; 
            float arith_addf_390 = (memref_load_388 + memref_load_389); 
            func_arg_4[arith_addi_384][arith_addi_387] = arith_addf_390; 
            int arith_addi_391 = (arith_addi_387 + arith_const_14); 
            float memref_load_392 = func_arg_5[arith_addi_384][arith_addi_391]; 
            float memref_load_393 = func_arg_6[arith_addi_384][arith_addi_391]; 
            float arith_addf_394 = (memref_load_392 + memref_load_393); 
            func_arg_4[arith_addi_384][arith_addi_391] = arith_addf_394; 
            int arith_addi_395 = (arith_addi_387 + arith_const_15); 
            float memref_load_396 = func_arg_5[arith_addi_384][arith_addi_395]; 
            float memref_load_397 = func_arg_6[arith_addi_384][arith_addi_395]; 
            float arith_addf_398 = (memref_load_396 + memref_load_397); 
            func_arg_4[arith_addi_384][arith_addi_395] = arith_addf_398; 
            int arith_addi_399 = (arith_addi_387 + arith_const_10); 
            float memref_load_400 = func_arg_5[arith_addi_384][arith_addi_399]; 
            float memref_load_401 = func_arg_6[arith_addi_384][arith_addi_399]; 
            float arith_addf_402 = (memref_load_400 + memref_load_401); 
            func_arg_4[arith_addi_384][arith_addi_399] = arith_addf_402; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_379, PAST_TASK_FINISHED); 
    }
    async_group_375[async_group_index_376] = execute_token_379; 
    async_group_index_376++; 
    int arith_addi_403 = (for_iter_arg_378 + arith_const_14); 
    for_iter_arg_378 = arith_addi_403; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_375, async_group_index_376, PAST_TASK_FINISHED); 
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

#pragma peqc async_execute
{
  kernel_deriche(w, h, alpha, imgIn, imgOut, y1, y2);
}
}

#pragma pocc-region-end
