#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 40; 
  int arith_const_13 = 3; 
  int arith_const_14 = 2; 
  int arith_const_15 = 4; 
  int arith_const_16 = 0; 
  int arith_const_17 = 10; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    int arith_muli_20 = (for_iter_19 * arith_const_15); 
    for (int for_iter_21 = arith_const_16; for_iter_21 < arith_const_17; for_iter_21 += arith_const_18) {
      int arith_muli_22 = (for_iter_21 * arith_const_15); 
      for (int for_iter_23 = arith_const_16; for_iter_23 < arith_const_18; for_iter_23 += arith_const_18) {
        int arith_muli_24 = (for_iter_23 * arith_const_15); 
        int arith_addi_25 = (arith_muli_20 + arith_muli_24); 
        double memref_load_26 = func_arg_4[arith_addi_25]; 
        double memref_load_27 = func_arg_6[arith_addi_25]; 
        double memref_load_28 = func_arg_4[arith_addi_25]; 
        double memref_load_29 = func_arg_6[arith_addi_25]; 
        double memref_load_30 = func_arg_4[arith_addi_25]; 
        double memref_load_31 = func_arg_6[arith_addi_25]; 
        double memref_load_32 = func_arg_4[arith_addi_25]; 
        double memref_load_33 = func_arg_6[arith_addi_25]; 
        int arith_addi_34 = (arith_addi_25 + arith_const_18); 
        double memref_load_35 = func_arg_4[arith_addi_34]; 
        double memref_load_36 = func_arg_6[arith_addi_34]; 
        double memref_load_37 = func_arg_4[arith_addi_34]; 
        double memref_load_38 = func_arg_6[arith_addi_34]; 
        double memref_load_39 = func_arg_4[arith_addi_34]; 
        double memref_load_40 = func_arg_6[arith_addi_34]; 
        double memref_load_41 = func_arg_4[arith_addi_34]; 
        double memref_load_42 = func_arg_6[arith_addi_34]; 
        int arith_addi_43 = (arith_addi_25 + arith_const_14); 
        double memref_load_44 = func_arg_4[arith_addi_43]; 
        double memref_load_45 = func_arg_6[arith_addi_43]; 
        double memref_load_46 = func_arg_4[arith_addi_43]; 
        double memref_load_47 = func_arg_6[arith_addi_43]; 
        double memref_load_48 = func_arg_4[arith_addi_43]; 
        double memref_load_49 = func_arg_6[arith_addi_43]; 
        double memref_load_50 = func_arg_4[arith_addi_43]; 
        double memref_load_51 = func_arg_6[arith_addi_43]; 
        int arith_addi_52 = (arith_addi_25 + arith_const_13); 
        double memref_load_53 = func_arg_4[arith_addi_52]; 
        double memref_load_54 = func_arg_6[arith_addi_52]; 
        double memref_load_55 = func_arg_4[arith_addi_52]; 
        double memref_load_56 = func_arg_6[arith_addi_52]; 
        double memref_load_57 = func_arg_4[arith_addi_52]; 
        double memref_load_58 = func_arg_6[arith_addi_52]; 
        double memref_load_59 = func_arg_4[arith_addi_52]; 
        double memref_load_60 = func_arg_6[arith_addi_52]; 
        for (int for_iter_61 = arith_const_16; for_iter_61 < arith_const_18; for_iter_61 += arith_const_18) {
          int arith_muli_62 = (for_iter_61 * arith_const_15); 
          int arith_addi_63 = (arith_muli_22 + arith_muli_62); 
          double memref_load_64 = func_arg_3[arith_addi_25][arith_addi_63]; 
          double memref_load_65 = func_arg_5[arith_addi_63]; 
          double arith_mulf_66 = (memref_load_26 * memref_load_65); 
          double arith_addf_67 = (memref_load_64 + arith_mulf_66); 
          double memref_load_68 = func_arg_7[arith_addi_63]; 
          double arith_mulf_69 = (memref_load_27 * memref_load_68); 
          double arith_addf_70 = (arith_addf_67 + arith_mulf_69); 
          func_arg_3[arith_addi_25][arith_addi_63] = arith_addf_70; 
          int arith_addi_71 = (arith_addi_63 + arith_const_18); 
          double memref_load_72 = func_arg_3[arith_addi_25][arith_addi_71]; 
          double memref_load_73 = func_arg_5[arith_addi_71]; 
          double arith_mulf_74 = (memref_load_28 * memref_load_73); 
          double arith_addf_75 = (memref_load_72 + arith_mulf_74); 
          double memref_load_76 = func_arg_7[arith_addi_71]; 
          double arith_mulf_77 = (memref_load_29 * memref_load_76); 
          double arith_addf_78 = (arith_addf_75 + arith_mulf_77); 
          func_arg_3[arith_addi_25][arith_addi_71] = arith_addf_78; 
          int arith_addi_79 = (arith_addi_63 + arith_const_14); 
          double memref_load_80 = func_arg_3[arith_addi_25][arith_addi_79]; 
          double memref_load_81 = func_arg_5[arith_addi_79]; 
          double arith_mulf_82 = (memref_load_30 * memref_load_81); 
          double arith_addf_83 = (memref_load_80 + arith_mulf_82); 
          double memref_load_84 = func_arg_7[arith_addi_79]; 
          double arith_mulf_85 = (memref_load_31 * memref_load_84); 
          double arith_addf_86 = (arith_addf_83 + arith_mulf_85); 
          func_arg_3[arith_addi_25][arith_addi_79] = arith_addf_86; 
          int arith_addi_87 = (arith_addi_63 + arith_const_13); 
          double memref_load_88 = func_arg_3[arith_addi_25][arith_addi_87]; 
          double memref_load_89 = func_arg_5[arith_addi_87]; 
          double arith_mulf_90 = (memref_load_32 * memref_load_89); 
          double arith_addf_91 = (memref_load_88 + arith_mulf_90); 
          double memref_load_92 = func_arg_7[arith_addi_87]; 
          double arith_mulf_93 = (memref_load_33 * memref_load_92); 
          double arith_addf_94 = (arith_addf_91 + arith_mulf_93); 
          func_arg_3[arith_addi_25][arith_addi_87] = arith_addf_94; 
          double memref_load_95 = func_arg_3[arith_addi_34][arith_addi_63]; 
          double memref_load_96 = func_arg_5[arith_addi_63]; 
          double arith_mulf_97 = (memref_load_35 * memref_load_96); 
          double arith_addf_98 = (memref_load_95 + arith_mulf_97); 
          double memref_load_99 = func_arg_7[arith_addi_63]; 
          double arith_mulf_100 = (memref_load_36 * memref_load_99); 
          double arith_addf_101 = (arith_addf_98 + arith_mulf_100); 
          func_arg_3[arith_addi_34][arith_addi_63] = arith_addf_101; 
          int arith_addi_102 = (arith_addi_63 + arith_const_18); 
          double memref_load_103 = func_arg_3[arith_addi_34][arith_addi_102]; 
          double memref_load_104 = func_arg_5[arith_addi_102]; 
          double arith_mulf_105 = (memref_load_37 * memref_load_104); 
          double arith_addf_106 = (memref_load_103 + arith_mulf_105); 
          double memref_load_107 = func_arg_7[arith_addi_102]; 
          double arith_mulf_108 = (memref_load_38 * memref_load_107); 
          double arith_addf_109 = (arith_addf_106 + arith_mulf_108); 
          func_arg_3[arith_addi_34][arith_addi_102] = arith_addf_109; 
          int arith_addi_110 = (arith_addi_63 + arith_const_14); 
          double memref_load_111 = func_arg_3[arith_addi_34][arith_addi_110]; 
          double memref_load_112 = func_arg_5[arith_addi_110]; 
          double arith_mulf_113 = (memref_load_39 * memref_load_112); 
          double arith_addf_114 = (memref_load_111 + arith_mulf_113); 
          double memref_load_115 = func_arg_7[arith_addi_110]; 
          double arith_mulf_116 = (memref_load_40 * memref_load_115); 
          double arith_addf_117 = (arith_addf_114 + arith_mulf_116); 
          func_arg_3[arith_addi_34][arith_addi_110] = arith_addf_117; 
          int arith_addi_118 = (arith_addi_63 + arith_const_13); 
          double memref_load_119 = func_arg_3[arith_addi_34][arith_addi_118]; 
          double memref_load_120 = func_arg_5[arith_addi_118]; 
          double arith_mulf_121 = (memref_load_41 * memref_load_120); 
          double arith_addf_122 = (memref_load_119 + arith_mulf_121); 
          double memref_load_123 = func_arg_7[arith_addi_118]; 
          double arith_mulf_124 = (memref_load_42 * memref_load_123); 
          double arith_addf_125 = (arith_addf_122 + arith_mulf_124); 
          func_arg_3[arith_addi_34][arith_addi_118] = arith_addf_125; 
          double memref_load_126 = func_arg_3[arith_addi_43][arith_addi_63]; 
          double memref_load_127 = func_arg_5[arith_addi_63]; 
          double arith_mulf_128 = (memref_load_44 * memref_load_127); 
          double arith_addf_129 = (memref_load_126 + arith_mulf_128); 
          double memref_load_130 = func_arg_7[arith_addi_63]; 
          double arith_mulf_131 = (memref_load_45 * memref_load_130); 
          double arith_addf_132 = (arith_addf_129 + arith_mulf_131); 
          func_arg_3[arith_addi_43][arith_addi_63] = arith_addf_132; 
          int arith_addi_133 = (arith_addi_63 + arith_const_18); 
          double memref_load_134 = func_arg_3[arith_addi_43][arith_addi_133]; 
          double memref_load_135 = func_arg_5[arith_addi_133]; 
          double arith_mulf_136 = (memref_load_46 * memref_load_135); 
          double arith_addf_137 = (memref_load_134 + arith_mulf_136); 
          double memref_load_138 = func_arg_7[arith_addi_133]; 
          double arith_mulf_139 = (memref_load_47 * memref_load_138); 
          double arith_addf_140 = (arith_addf_137 + arith_mulf_139); 
          func_arg_3[arith_addi_43][arith_addi_133] = arith_addf_140; 
          int arith_addi_141 = (arith_addi_63 + arith_const_14); 
          double memref_load_142 = func_arg_3[arith_addi_43][arith_addi_141]; 
          double memref_load_143 = func_arg_5[arith_addi_141]; 
          double arith_mulf_144 = (memref_load_48 * memref_load_143); 
          double arith_addf_145 = (memref_load_142 + arith_mulf_144); 
          double memref_load_146 = func_arg_7[arith_addi_141]; 
          double arith_mulf_147 = (memref_load_49 * memref_load_146); 
          double arith_addf_148 = (arith_addf_145 + arith_mulf_147); 
          func_arg_3[arith_addi_43][arith_addi_141] = arith_addf_148; 
          int arith_addi_149 = (arith_addi_63 + arith_const_13); 
          double memref_load_150 = func_arg_3[arith_addi_43][arith_addi_149]; 
          double memref_load_151 = func_arg_5[arith_addi_149]; 
          double arith_mulf_152 = (memref_load_50 * memref_load_151); 
          double arith_addf_153 = (memref_load_150 + arith_mulf_152); 
          double memref_load_154 = func_arg_7[arith_addi_149]; 
          double arith_mulf_155 = (memref_load_51 * memref_load_154); 
          double arith_addf_156 = (arith_addf_153 + arith_mulf_155); 
          func_arg_3[arith_addi_43][arith_addi_149] = arith_addf_156; 
          double memref_load_157 = func_arg_3[arith_addi_52][arith_addi_63]; 
          double memref_load_158 = func_arg_5[arith_addi_63]; 
          double arith_mulf_159 = (memref_load_53 * memref_load_158); 
          double arith_addf_160 = (memref_load_157 + arith_mulf_159); 
          double memref_load_161 = func_arg_7[arith_addi_63]; 
          double arith_mulf_162 = (memref_load_54 * memref_load_161); 
          double arith_addf_163 = (arith_addf_160 + arith_mulf_162); 
          func_arg_3[arith_addi_52][arith_addi_63] = arith_addf_163; 
          int arith_addi_164 = (arith_addi_63 + arith_const_18); 
          double memref_load_165 = func_arg_3[arith_addi_52][arith_addi_164]; 
          double memref_load_166 = func_arg_5[arith_addi_164]; 
          double arith_mulf_167 = (memref_load_55 * memref_load_166); 
          double arith_addf_168 = (memref_load_165 + arith_mulf_167); 
          double memref_load_169 = func_arg_7[arith_addi_164]; 
          double arith_mulf_170 = (memref_load_56 * memref_load_169); 
          double arith_addf_171 = (arith_addf_168 + arith_mulf_170); 
          func_arg_3[arith_addi_52][arith_addi_164] = arith_addf_171; 
          int arith_addi_172 = (arith_addi_63 + arith_const_14); 
          double memref_load_173 = func_arg_3[arith_addi_52][arith_addi_172]; 
          double memref_load_174 = func_arg_5[arith_addi_172]; 
          double arith_mulf_175 = (memref_load_57 * memref_load_174); 
          double arith_addf_176 = (memref_load_173 + arith_mulf_175); 
          double memref_load_177 = func_arg_7[arith_addi_172]; 
          double arith_mulf_178 = (memref_load_58 * memref_load_177); 
          double arith_addf_179 = (arith_addf_176 + arith_mulf_178); 
          func_arg_3[arith_addi_52][arith_addi_172] = arith_addf_179; 
          int arith_addi_180 = (arith_addi_63 + arith_const_13); 
          double memref_load_181 = func_arg_3[arith_addi_52][arith_addi_180]; 
          double memref_load_182 = func_arg_5[arith_addi_180]; 
          double arith_mulf_183 = (memref_load_59 * memref_load_182); 
          double arith_addf_184 = (memref_load_181 + arith_mulf_183); 
          double memref_load_185 = func_arg_7[arith_addi_180]; 
          double arith_mulf_186 = (memref_load_60 * memref_load_185); 
          double arith_addf_187 = (arith_addf_184 + arith_mulf_186); 
          func_arg_3[arith_addi_52][arith_addi_180] = arith_addf_187; 
        }
      }
    }
  }
  int* async_group_188; 
  int async_group_index_189 = 0; 
  int for_iter_arg_191 = arith_const_16; 
  for (int for_iter_190 = arith_const_16; for_iter_190 < arith_const_12; for_iter_190 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_192); 
    #pragma peqc async_execute
    {
      for (int for_iter_193 = arith_const_16; for_iter_193 < arith_const_17; for_iter_193 += arith_const_18) {
        int arith_muli_194 = (for_iter_193 * arith_const_15); 
        for (int for_iter_195 = arith_const_16; for_iter_195 < arith_const_18; for_iter_195 += arith_const_18) {
          int arith_addi_196 = (for_iter_190 + for_iter_195); 
          for (int for_iter_197 = arith_const_16; for_iter_197 < arith_const_18; for_iter_197 += arith_const_18) {
            int arith_muli_198 = (for_iter_197 * arith_const_15); 
            int arith_addi_199 = (arith_muli_194 + arith_muli_198); 
            double memref_load_200 = func_arg_9[arith_addi_196]; 
            double memref_load_201 = func_arg_3[arith_addi_199][arith_addi_196]; 
            double arith_mulf_202 = (func_arg_2 * memref_load_201); 
            double memref_load_203 = func_arg_10[arith_addi_199]; 
            double arith_mulf_204 = (arith_mulf_202 * memref_load_203); 
            double arith_addf_205 = (memref_load_200 + arith_mulf_204); 
            func_arg_9[arith_addi_196] = arith_addf_205; 
            int arith_addi_206 = (arith_addi_199 + arith_const_18); 
            double memref_load_207 = func_arg_9[arith_addi_196]; 
            double memref_load_208 = func_arg_3[arith_addi_206][arith_addi_196]; 
            double arith_mulf_209 = (func_arg_2 * memref_load_208); 
            double memref_load_210 = func_arg_10[arith_addi_206]; 
            double arith_mulf_211 = (arith_mulf_209 * memref_load_210); 
            double arith_addf_212 = (memref_load_207 + arith_mulf_211); 
            func_arg_9[arith_addi_196] = arith_addf_212; 
            int arith_addi_213 = (arith_addi_199 + arith_const_14); 
            double memref_load_214 = func_arg_9[arith_addi_196]; 
            double memref_load_215 = func_arg_3[arith_addi_213][arith_addi_196]; 
            double arith_mulf_216 = (func_arg_2 * memref_load_215); 
            double memref_load_217 = func_arg_10[arith_addi_213]; 
            double arith_mulf_218 = (arith_mulf_216 * memref_load_217); 
            double arith_addf_219 = (memref_load_214 + arith_mulf_218); 
            func_arg_9[arith_addi_196] = arith_addf_219; 
            int arith_addi_220 = (arith_addi_199 + arith_const_13); 
            double memref_load_221 = func_arg_9[arith_addi_196]; 
            double memref_load_222 = func_arg_3[arith_addi_220][arith_addi_196]; 
            double arith_mulf_223 = (func_arg_2 * memref_load_222); 
            double memref_load_224 = func_arg_10[arith_addi_220]; 
            double arith_mulf_225 = (arith_mulf_223 * memref_load_224); 
            double arith_addf_226 = (memref_load_221 + arith_mulf_225); 
            func_arg_9[arith_addi_196] = arith_addf_226; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_192, PAST_TASK_FINISHED); 
    }
    async_group_188[async_group_index_189] = execute_token_192; 
    async_group_index_189++; 
    int arith_addi_227 = (for_iter_arg_191 + arith_const_18); 
    for_iter_arg_191 = arith_addi_227; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_188, async_group_index_189, PAST_TASK_FINISHED); 
  for (int for_iter_228 = arith_const_16; for_iter_228 < arith_const_17; for_iter_228 += arith_const_18) {
    int arith_muli_229 = (for_iter_228 * arith_const_15); 
    for (int for_iter_230 = arith_const_16; for_iter_230 < arith_const_18; for_iter_230 += arith_const_18) {
      int arith_muli_231 = (for_iter_230 * arith_const_15); 
      int arith_addi_232 = (arith_muli_229 + arith_muli_231); 
      double memref_load_233 = func_arg_9[arith_addi_232]; 
      double memref_load_234 = func_arg_11[arith_addi_232]; 
      double arith_addf_235 = (memref_load_233 + memref_load_234); 
      func_arg_9[arith_addi_232] = arith_addf_235; 
      int arith_addi_236 = (arith_addi_232 + arith_const_18); 
      double memref_load_237 = func_arg_9[arith_addi_236]; 
      double memref_load_238 = func_arg_11[arith_addi_236]; 
      double arith_addf_239 = (memref_load_237 + memref_load_238); 
      func_arg_9[arith_addi_236] = arith_addf_239; 
      int arith_addi_240 = (arith_addi_232 + arith_const_14); 
      double memref_load_241 = func_arg_9[arith_addi_240]; 
      double memref_load_242 = func_arg_11[arith_addi_240]; 
      double arith_addf_243 = (memref_load_241 + memref_load_242); 
      func_arg_9[arith_addi_240] = arith_addf_243; 
      int arith_addi_244 = (arith_addi_232 + arith_const_13); 
      double memref_load_245 = func_arg_9[arith_addi_244]; 
      double memref_load_246 = func_arg_11[arith_addi_244]; 
      double arith_addf_247 = (memref_load_245 + memref_load_246); 
      func_arg_9[arith_addi_244] = arith_addf_247; 
    }
  }
  int* async_group_248; 
  int async_group_index_249 = 0; 
  int for_iter_arg_251 = arith_const_16; 
  for (int for_iter_250 = arith_const_16; for_iter_250 < arith_const_12; for_iter_250 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_252); 
    #pragma peqc async_execute
    {
      for (int for_iter_253 = arith_const_16; for_iter_253 < arith_const_17; for_iter_253 += arith_const_18) {
        int arith_muli_254 = (for_iter_253 * arith_const_15); 
        for (int for_iter_255 = arith_const_16; for_iter_255 < arith_const_18; for_iter_255 += arith_const_18) {
          int arith_addi_256 = (for_iter_250 + for_iter_255); 
          for (int for_iter_257 = arith_const_16; for_iter_257 < arith_const_18; for_iter_257 += arith_const_18) {
            int arith_muli_258 = (for_iter_257 * arith_const_15); 
            int arith_addi_259 = (arith_muli_254 + arith_muli_258); 
            double memref_load_260 = func_arg_8[arith_addi_256]; 
            double memref_load_261 = func_arg_3[arith_addi_256][arith_addi_259]; 
            double arith_mulf_262 = (func_arg_1 * memref_load_261); 
            double memref_load_263 = func_arg_9[arith_addi_259]; 
            double arith_mulf_264 = (arith_mulf_262 * memref_load_263); 
            double arith_addf_265 = (memref_load_260 + arith_mulf_264); 
            func_arg_8[arith_addi_256] = arith_addf_265; 
            int arith_addi_266 = (arith_addi_259 + arith_const_18); 
            double memref_load_267 = func_arg_8[arith_addi_256]; 
            double memref_load_268 = func_arg_3[arith_addi_256][arith_addi_266]; 
            double arith_mulf_269 = (func_arg_1 * memref_load_268); 
            double memref_load_270 = func_arg_9[arith_addi_266]; 
            double arith_mulf_271 = (arith_mulf_269 * memref_load_270); 
            double arith_addf_272 = (memref_load_267 + arith_mulf_271); 
            func_arg_8[arith_addi_256] = arith_addf_272; 
            int arith_addi_273 = (arith_addi_259 + arith_const_14); 
            double memref_load_274 = func_arg_8[arith_addi_256]; 
            double memref_load_275 = func_arg_3[arith_addi_256][arith_addi_273]; 
            double arith_mulf_276 = (func_arg_1 * memref_load_275); 
            double memref_load_277 = func_arg_9[arith_addi_273]; 
            double arith_mulf_278 = (arith_mulf_276 * memref_load_277); 
            double arith_addf_279 = (memref_load_274 + arith_mulf_278); 
            func_arg_8[arith_addi_256] = arith_addf_279; 
            int arith_addi_280 = (arith_addi_259 + arith_const_13); 
            double memref_load_281 = func_arg_8[arith_addi_256]; 
            double memref_load_282 = func_arg_3[arith_addi_256][arith_addi_280]; 
            double arith_mulf_283 = (func_arg_1 * memref_load_282); 
            double memref_load_284 = func_arg_9[arith_addi_280]; 
            double arith_mulf_285 = (arith_mulf_283 * memref_load_284); 
            double arith_addf_286 = (memref_load_281 + arith_mulf_285); 
            func_arg_8[arith_addi_256] = arith_addf_286; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_252, PAST_TASK_FINISHED); 
    }
    async_group_248[async_group_index_249] = execute_token_252; 
    async_group_index_249++; 
    int arith_addi_287 = (for_iter_arg_251 + arith_const_18); 
    for_iter_arg_251 = arith_addi_287; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_248, async_group_index_249, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;

#pragma peqc async_execute
{
  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);
}
}

#pragma pocc-region-end
