#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 13; 
  int arith_const_9 = -1; 
  int arith_const_10 = 30; 
  int arith_const_11 = 20; 
  int arith_const_12 = -29; 
  int arith_const_13 = 32; 
  double arith_const_14 = 0.700000; 
  double arith_const_15 = 0.500000; 
  int arith_const_16 = 0; 
  int arith_const_17 = 2; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_17; for_iter_20 += arith_const_18) {
      int arith_cmpi_21 = (for_iter_20 == arith_const_16); 
      if (arith_cmpi_21) {
        int arith_muli_22 = (for_iter_19 * arith_const_13); 
        int arith_addi_23 = (arith_muli_22 + arith_const_12); 
        int arith_maxsi_24 = max(arith_addi_23, arith_const_16); 
        for (int for_iter_25 = arith_maxsi_24; for_iter_25 < arith_const_11; for_iter_25 += arith_const_18) {
          int arith_cmpi_26 = (for_iter_19 == arith_const_16); 
          if (arith_cmpi_26) {
            double memref_load_27 = func_arg_6[for_iter_25]; 
            func_arg_4[arith_const_16][arith_const_16] = memref_load_27; 
          }
          int arith_muli_28 = (for_iter_19 * arith_const_13); 
          int arith_addi_29 = (for_iter_25 + arith_const_18); 
          int arith_maxsi_30 = max(arith_muli_28, arith_addi_29); 
          int arith_muli_31 = (for_iter_19 * arith_const_13); 
          int arith_addi_32 = (arith_muli_31 + arith_const_13); 
          int arith_addi_33 = (for_iter_25 + arith_const_10); 
          int arith_minsi_34 = min(arith_addi_32, arith_addi_33); 
          int* async_group_35; 
          int async_group_index_36 = 0; 
          int for_iter_arg_38 = arith_const_16; 
          for (int for_iter_37 = arith_maxsi_30; for_iter_37 < arith_minsi_34; for_iter_37 += arith_const_18) {
            PAST_NEW_SEMAPHORE(execute_token_39); 
            #pragma peqc async_execute
            {
              double memref_load_40 = func_arg_6[for_iter_25]; 
              int arith_muli_41 = (for_iter_25 * arith_const_9); 
              int arith_addi_42 = (arith_muli_41 + for_iter_37); 
              func_arg_4[arith_const_16][arith_addi_42] = memref_load_40; 
              int arith_muli_43 = (for_iter_25 * arith_const_9); 
              int arith_addi_44 = (arith_muli_43 + for_iter_37); 
              double memref_load_45 = func_arg_3[arith_const_16][arith_addi_44]; 
              int arith_muli_46 = (for_iter_25 * arith_const_9); 
              int arith_addi_47 = (arith_muli_46 + for_iter_37); 
              double memref_load_48 = func_arg_5[arith_const_16][arith_addi_47]; 
              int arith_muli_49 = (for_iter_25 * arith_const_9); 
              int arith_addi_50 = (arith_muli_49 + for_iter_37); 
              int arith_addi_51 = (arith_addi_50 + arith_const_9); 
              double memref_load_52 = func_arg_5[arith_const_16][arith_addi_51]; 
              double arith_subf_53 = (memref_load_48 - memref_load_52); 
              double arith_mulf_54 = (arith_subf_53 * arith_const_15); 
              double arith_subf_55 = (memref_load_45 - arith_mulf_54); 
              int arith_muli_56 = (for_iter_25 * arith_const_9); 
              int arith_addi_57 = (arith_muli_56 + for_iter_37); 
              func_arg_3[arith_const_16][arith_addi_57] = arith_subf_55; 
              PAST_SET_SEMAPHORE(execute_token_39, PAST_TASK_FINISHED); 
            }
            async_group_35[async_group_index_36] = execute_token_39; 
            async_group_index_36++; 
            int arith_addi_58 = (for_iter_arg_38 + arith_const_18); 
            for_iter_arg_38 = arith_addi_58; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_35, async_group_index_36, PAST_TASK_FINISHED); 
          int arith_addi_59 = (for_iter_25 + arith_const_18); 
          int arith_addi_60 = (for_iter_25 + arith_const_11); 
          int arith_minsi_61 = min(arith_addi_60, arith_const_13); 
          for (int for_iter_62 = arith_addi_59; for_iter_62 < arith_minsi_61; for_iter_62 += arith_const_18) {
            int arith_cmpi_63 = (for_iter_19 == arith_const_16); 
            if (arith_cmpi_63) {
              int arith_muli_64 = (for_iter_62 * arith_const_9); 
              int arith_addi_65 = (arith_muli_64 + for_iter_25); 
              double memref_load_66 = func_arg_4[arith_addi_65][arith_const_16]; 
              int arith_muli_67 = (for_iter_62 * arith_const_9); 
              int arith_addi_68 = (arith_muli_67 + for_iter_25); 
              double memref_load_69 = func_arg_5[arith_addi_68][arith_const_16]; 
              int arith_muli_70 = (for_iter_62 * arith_const_9); 
              int arith_addi_71 = (arith_muli_70 + for_iter_25); 
              int arith_addi_72 = (arith_addi_71 + arith_const_9); 
              double memref_load_73 = func_arg_5[arith_addi_72][arith_const_16]; 
              double arith_subf_74 = (memref_load_69 - memref_load_73); 
              double arith_mulf_75 = (arith_subf_74 * arith_const_15); 
              double arith_subf_76 = (memref_load_66 - arith_mulf_75); 
              int arith_muli_77 = (for_iter_62 * arith_const_9); 
              int arith_addi_78 = (arith_muli_77 + for_iter_25); 
              func_arg_4[arith_addi_78][arith_const_16] = arith_subf_76; 
            }
            int arith_muli_79 = (for_iter_19 * arith_const_13); 
            int arith_addi_80 = (for_iter_25 + arith_const_18); 
            int arith_maxsi_81 = max(arith_muli_79, arith_addi_80); 
            int arith_muli_82 = (for_iter_19 * arith_const_13); 
            int arith_addi_83 = (arith_muli_82 + arith_const_13); 
            int arith_addi_84 = (for_iter_25 + arith_const_10); 
            int arith_minsi_85 = min(arith_addi_83, arith_addi_84); 
            for (int for_iter_86 = arith_maxsi_81; for_iter_86 < arith_minsi_85; for_iter_86 += arith_const_18) {
              int arith_muli_87 = (for_iter_62 * arith_const_9); 
              int arith_addi_88 = (arith_muli_87 + for_iter_25); 
              int arith_muli_89 = (for_iter_25 * arith_const_9); 
              int arith_addi_90 = (arith_muli_89 + for_iter_86); 
              double memref_load_91 = func_arg_4[arith_addi_88][arith_addi_90]; 
              int arith_muli_92 = (for_iter_62 * arith_const_9); 
              int arith_addi_93 = (arith_muli_92 + for_iter_25); 
              int arith_muli_94 = (for_iter_25 * arith_const_9); 
              int arith_addi_95 = (arith_muli_94 + for_iter_86); 
              double memref_load_96 = func_arg_5[arith_addi_93][arith_addi_95]; 
              int arith_muli_97 = (for_iter_62 * arith_const_9); 
              int arith_addi_98 = (arith_muli_97 + for_iter_25); 
              int arith_addi_99 = (arith_addi_98 + arith_const_9); 
              int arith_muli_100 = (for_iter_25 * arith_const_9); 
              int arith_addi_101 = (arith_muli_100 + for_iter_86); 
              double memref_load_102 = func_arg_5[arith_addi_99][arith_addi_101]; 
              double arith_subf_103 = (memref_load_96 - memref_load_102); 
              double arith_mulf_104 = (arith_subf_103 * arith_const_15); 
              double arith_subf_105 = (memref_load_91 - arith_mulf_104); 
              int arith_muli_106 = (for_iter_62 * arith_const_9); 
              int arith_addi_107 = (arith_muli_106 + for_iter_25); 
              int arith_muli_108 = (for_iter_25 * arith_const_9); 
              int arith_addi_109 = (arith_muli_108 + for_iter_86); 
              func_arg_4[arith_addi_107][arith_addi_109] = arith_subf_105; 
              int arith_muli_110 = (for_iter_62 * arith_const_9); 
              int arith_addi_111 = (arith_muli_110 + for_iter_25); 
              int arith_muli_112 = (for_iter_25 * arith_const_9); 
              int arith_addi_113 = (arith_muli_112 + for_iter_86); 
              double memref_load_114 = func_arg_3[arith_addi_111][arith_addi_113]; 
              int arith_muli_115 = (for_iter_62 * arith_const_9); 
              int arith_addi_116 = (arith_muli_115 + for_iter_25); 
              int arith_muli_117 = (for_iter_25 * arith_const_9); 
              int arith_addi_118 = (arith_muli_117 + for_iter_86); 
              double memref_load_119 = func_arg_5[arith_addi_116][arith_addi_118]; 
              int arith_muli_120 = (for_iter_62 * arith_const_9); 
              int arith_addi_121 = (arith_muli_120 + for_iter_25); 
              int arith_muli_122 = (for_iter_25 * arith_const_9); 
              int arith_addi_123 = (arith_muli_122 + for_iter_86); 
              int arith_addi_124 = (arith_addi_123 + arith_const_9); 
              double memref_load_125 = func_arg_5[arith_addi_121][arith_addi_124]; 
              double arith_subf_126 = (memref_load_119 - memref_load_125); 
              double arith_mulf_127 = (arith_subf_126 * arith_const_15); 
              double arith_subf_128 = (memref_load_114 - arith_mulf_127); 
              int arith_muli_129 = (for_iter_62 * arith_const_9); 
              int arith_addi_130 = (arith_muli_129 + for_iter_25); 
              int arith_muli_131 = (for_iter_25 * arith_const_9); 
              int arith_addi_132 = (arith_muli_131 + for_iter_86); 
              func_arg_3[arith_addi_130][arith_addi_132] = arith_subf_128; 
              int arith_muli_133 = (for_iter_62 * arith_const_9); 
              int arith_addi_134 = (arith_muli_133 + for_iter_25); 
              int arith_addi_135 = (arith_addi_134 + arith_const_9); 
              int arith_muli_136 = (for_iter_25 * arith_const_9); 
              int arith_addi_137 = (arith_muli_136 + for_iter_86); 
              int arith_addi_138 = (arith_addi_137 + arith_const_9); 
              double memref_load_139 = func_arg_5[arith_addi_135][arith_addi_138]; 
              int arith_muli_140 = (for_iter_62 * arith_const_9); 
              int arith_addi_141 = (arith_muli_140 + for_iter_25); 
              int arith_addi_142 = (arith_addi_141 + arith_const_9); 
              int arith_muli_143 = (for_iter_25 * arith_const_9); 
              int arith_addi_144 = (arith_muli_143 + for_iter_86); 
              double memref_load_145 = func_arg_3[arith_addi_142][arith_addi_144]; 
              int arith_muli_146 = (for_iter_62 * arith_const_9); 
              int arith_addi_147 = (arith_muli_146 + for_iter_25); 
              int arith_addi_148 = (arith_addi_147 + arith_const_9); 
              int arith_muli_149 = (for_iter_25 * arith_const_9); 
              int arith_addi_150 = (arith_muli_149 + for_iter_86); 
              int arith_addi_151 = (arith_addi_150 + arith_const_9); 
              double memref_load_152 = func_arg_3[arith_addi_148][arith_addi_151]; 
              double arith_subf_153 = (memref_load_145 - memref_load_152); 
              int arith_muli_154 = (for_iter_62 * arith_const_9); 
              int arith_addi_155 = (arith_muli_154 + for_iter_25); 
              int arith_muli_156 = (for_iter_25 * arith_const_9); 
              int arith_addi_157 = (arith_muli_156 + for_iter_86); 
              int arith_addi_158 = (arith_addi_157 + arith_const_9); 
              double memref_load_159 = func_arg_4[arith_addi_155][arith_addi_158]; 
              double arith_addf_160 = (arith_subf_153 + memref_load_159); 
              int arith_muli_161 = (for_iter_62 * arith_const_9); 
              int arith_addi_162 = (arith_muli_161 + for_iter_25); 
              int arith_addi_163 = (arith_addi_162 + arith_const_9); 
              int arith_muli_164 = (for_iter_25 * arith_const_9); 
              int arith_addi_165 = (arith_muli_164 + for_iter_86); 
              int arith_addi_166 = (arith_addi_165 + arith_const_9); 
              double memref_load_167 = func_arg_4[arith_addi_163][arith_addi_166]; 
              double arith_subf_168 = (arith_addf_160 - memref_load_167); 
              double arith_mulf_169 = (arith_subf_168 * arith_const_14); 
              double arith_subf_170 = (memref_load_139 - arith_mulf_169); 
              int arith_muli_171 = (for_iter_62 * arith_const_9); 
              int arith_addi_172 = (arith_muli_171 + for_iter_25); 
              int arith_addi_173 = (arith_addi_172 + arith_const_9); 
              int arith_muli_174 = (for_iter_25 * arith_const_9); 
              int arith_addi_175 = (arith_muli_174 + for_iter_86); 
              int arith_addi_176 = (arith_addi_175 + arith_const_9); 
              func_arg_5[arith_addi_173][arith_addi_176] = arith_subf_170; 
            }
          }
        }
      }
      int arith_addi_177 = (for_iter_20 + arith_const_9); 
      int arith_cmpi_178 = (arith_addi_177 == arith_const_16); 
      if (arith_cmpi_178) {
        for (int for_iter_179 = arith_const_8; for_iter_179 < arith_const_11; for_iter_179 += arith_const_18) {
          int arith_addi_180 = (for_iter_179 + arith_const_11); 
          for (int for_iter_181 = arith_const_13; for_iter_181 < arith_addi_180; for_iter_181 += arith_const_18) {
            int arith_cmpi_182 = (for_iter_19 == arith_const_16); 
            if (arith_cmpi_182) {
              int arith_muli_183 = (for_iter_181 * arith_const_9); 
              int arith_addi_184 = (arith_muli_183 + for_iter_179); 
              double memref_load_185 = func_arg_4[arith_addi_184][arith_const_16]; 
              int arith_muli_186 = (for_iter_181 * arith_const_9); 
              int arith_addi_187 = (arith_muli_186 + for_iter_179); 
              double memref_load_188 = func_arg_5[arith_addi_187][arith_const_16]; 
              int arith_muli_189 = (for_iter_181 * arith_const_9); 
              int arith_addi_190 = (arith_muli_189 + for_iter_179); 
              int arith_addi_191 = (arith_addi_190 + arith_const_9); 
              double memref_load_192 = func_arg_5[arith_addi_191][arith_const_16]; 
              double arith_subf_193 = (memref_load_188 - memref_load_192); 
              double arith_mulf_194 = (arith_subf_193 * arith_const_15); 
              double arith_subf_195 = (memref_load_185 - arith_mulf_194); 
              int arith_muli_196 = (for_iter_181 * arith_const_9); 
              int arith_addi_197 = (arith_muli_196 + for_iter_179); 
              func_arg_4[arith_addi_197][arith_const_16] = arith_subf_195; 
            }
            int arith_muli_198 = (for_iter_19 * arith_const_13); 
            int arith_addi_199 = (for_iter_179 + arith_const_18); 
            int arith_maxsi_200 = max(arith_muli_198, arith_addi_199); 
            int arith_muli_201 = (for_iter_19 * arith_const_13); 
            int arith_addi_202 = (arith_muli_201 + arith_const_13); 
            int arith_addi_203 = (for_iter_179 + arith_const_10); 
            int arith_minsi_204 = min(arith_addi_202, arith_addi_203); 
            for (int for_iter_205 = arith_maxsi_200; for_iter_205 < arith_minsi_204; for_iter_205 += arith_const_18) {
              int arith_muli_206 = (for_iter_181 * arith_const_9); 
              int arith_addi_207 = (arith_muli_206 + for_iter_179); 
              int arith_muli_208 = (for_iter_179 * arith_const_9); 
              int arith_addi_209 = (arith_muli_208 + for_iter_205); 
              double memref_load_210 = func_arg_4[arith_addi_207][arith_addi_209]; 
              int arith_muli_211 = (for_iter_181 * arith_const_9); 
              int arith_addi_212 = (arith_muli_211 + for_iter_179); 
              int arith_muli_213 = (for_iter_179 * arith_const_9); 
              int arith_addi_214 = (arith_muli_213 + for_iter_205); 
              double memref_load_215 = func_arg_5[arith_addi_212][arith_addi_214]; 
              int arith_muli_216 = (for_iter_181 * arith_const_9); 
              int arith_addi_217 = (arith_muli_216 + for_iter_179); 
              int arith_addi_218 = (arith_addi_217 + arith_const_9); 
              int arith_muli_219 = (for_iter_179 * arith_const_9); 
              int arith_addi_220 = (arith_muli_219 + for_iter_205); 
              double memref_load_221 = func_arg_5[arith_addi_218][arith_addi_220]; 
              double arith_subf_222 = (memref_load_215 - memref_load_221); 
              double arith_mulf_223 = (arith_subf_222 * arith_const_15); 
              double arith_subf_224 = (memref_load_210 - arith_mulf_223); 
              int arith_muli_225 = (for_iter_181 * arith_const_9); 
              int arith_addi_226 = (arith_muli_225 + for_iter_179); 
              int arith_muli_227 = (for_iter_179 * arith_const_9); 
              int arith_addi_228 = (arith_muli_227 + for_iter_205); 
              func_arg_4[arith_addi_226][arith_addi_228] = arith_subf_224; 
              int arith_muli_229 = (for_iter_181 * arith_const_9); 
              int arith_addi_230 = (arith_muli_229 + for_iter_179); 
              int arith_muli_231 = (for_iter_179 * arith_const_9); 
              int arith_addi_232 = (arith_muli_231 + for_iter_205); 
              double memref_load_233 = func_arg_3[arith_addi_230][arith_addi_232]; 
              int arith_muli_234 = (for_iter_181 * arith_const_9); 
              int arith_addi_235 = (arith_muli_234 + for_iter_179); 
              int arith_muli_236 = (for_iter_179 * arith_const_9); 
              int arith_addi_237 = (arith_muli_236 + for_iter_205); 
              double memref_load_238 = func_arg_5[arith_addi_235][arith_addi_237]; 
              int arith_muli_239 = (for_iter_181 * arith_const_9); 
              int arith_addi_240 = (arith_muli_239 + for_iter_179); 
              int arith_muli_241 = (for_iter_179 * arith_const_9); 
              int arith_addi_242 = (arith_muli_241 + for_iter_205); 
              int arith_addi_243 = (arith_addi_242 + arith_const_9); 
              double memref_load_244 = func_arg_5[arith_addi_240][arith_addi_243]; 
              double arith_subf_245 = (memref_load_238 - memref_load_244); 
              double arith_mulf_246 = (arith_subf_245 * arith_const_15); 
              double arith_subf_247 = (memref_load_233 - arith_mulf_246); 
              int arith_muli_248 = (for_iter_181 * arith_const_9); 
              int arith_addi_249 = (arith_muli_248 + for_iter_179); 
              int arith_muli_250 = (for_iter_179 * arith_const_9); 
              int arith_addi_251 = (arith_muli_250 + for_iter_205); 
              func_arg_3[arith_addi_249][arith_addi_251] = arith_subf_247; 
              int arith_muli_252 = (for_iter_181 * arith_const_9); 
              int arith_addi_253 = (arith_muli_252 + for_iter_179); 
              int arith_addi_254 = (arith_addi_253 + arith_const_9); 
              int arith_muli_255 = (for_iter_179 * arith_const_9); 
              int arith_addi_256 = (arith_muli_255 + for_iter_205); 
              int arith_addi_257 = (arith_addi_256 + arith_const_9); 
              double memref_load_258 = func_arg_5[arith_addi_254][arith_addi_257]; 
              int arith_muli_259 = (for_iter_181 * arith_const_9); 
              int arith_addi_260 = (arith_muli_259 + for_iter_179); 
              int arith_addi_261 = (arith_addi_260 + arith_const_9); 
              int arith_muli_262 = (for_iter_179 * arith_const_9); 
              int arith_addi_263 = (arith_muli_262 + for_iter_205); 
              double memref_load_264 = func_arg_3[arith_addi_261][arith_addi_263]; 
              int arith_muli_265 = (for_iter_181 * arith_const_9); 
              int arith_addi_266 = (arith_muli_265 + for_iter_179); 
              int arith_addi_267 = (arith_addi_266 + arith_const_9); 
              int arith_muli_268 = (for_iter_179 * arith_const_9); 
              int arith_addi_269 = (arith_muli_268 + for_iter_205); 
              int arith_addi_270 = (arith_addi_269 + arith_const_9); 
              double memref_load_271 = func_arg_3[arith_addi_267][arith_addi_270]; 
              double arith_subf_272 = (memref_load_264 - memref_load_271); 
              int arith_muli_273 = (for_iter_181 * arith_const_9); 
              int arith_addi_274 = (arith_muli_273 + for_iter_179); 
              int arith_muli_275 = (for_iter_179 * arith_const_9); 
              int arith_addi_276 = (arith_muli_275 + for_iter_205); 
              int arith_addi_277 = (arith_addi_276 + arith_const_9); 
              double memref_load_278 = func_arg_4[arith_addi_274][arith_addi_277]; 
              double arith_addf_279 = (arith_subf_272 + memref_load_278); 
              int arith_muli_280 = (for_iter_181 * arith_const_9); 
              int arith_addi_281 = (arith_muli_280 + for_iter_179); 
              int arith_addi_282 = (arith_addi_281 + arith_const_9); 
              int arith_muli_283 = (for_iter_179 * arith_const_9); 
              int arith_addi_284 = (arith_muli_283 + for_iter_205); 
              int arith_addi_285 = (arith_addi_284 + arith_const_9); 
              double memref_load_286 = func_arg_4[arith_addi_282][arith_addi_285]; 
              double arith_subf_287 = (arith_addf_279 - memref_load_286); 
              double arith_mulf_288 = (arith_subf_287 * arith_const_14); 
              double arith_subf_289 = (memref_load_258 - arith_mulf_288); 
              int arith_muli_290 = (for_iter_181 * arith_const_9); 
              int arith_addi_291 = (arith_muli_290 + for_iter_179); 
              int arith_addi_292 = (arith_addi_291 + arith_const_9); 
              int arith_muli_293 = (for_iter_179 * arith_const_9); 
              int arith_addi_294 = (arith_muli_293 + for_iter_205); 
              int arith_addi_295 = (arith_addi_294 + arith_const_9); 
              func_arg_5[arith_addi_292][arith_addi_295] = arith_subf_289; 
            }
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tmax;
  int nx;
  int ny;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;

#pragma peqc async_execute
{
  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);
}
}

#pragma pocc-region-end
