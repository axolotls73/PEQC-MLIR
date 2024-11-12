#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 42; 
  int arith_const_6 = -28; 
  int arith_const_7 = 31; 
  int arith_const_8 = 38; 
  int arith_const_9 = 10; 
  int arith_const_10 = 16; 
  int arith_const_11 = 4; 
  int arith_const_12 = 5; 
  int arith_const_13 = -19; 
  int arith_const_14 = 39; 
  int arith_const_15 = 32; 
  int arith_const_16 = 19; 
  int arith_const_17 = 20; 
  int arith_const_18 = 2; 
  int arith_const_19 = 30; 
  int arith_const_20 = 1; 
  int arith_const_21 = 29; 
  int arith_const_22 = 0; 
  double arith_const_23 = 0.000000; 
  double* memref_alloca_24; 
  int* async_group_25; 
  int async_group_index_26 = 0; 
  int for_iter_arg_28 = arith_const_22; 
  for (int for_iter_27 = arith_const_22; for_iter_27 < arith_const_21; for_iter_27 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_29); 
    #pragma peqc async_execute
    {
      int arith_addi_30 = (for_iter_27 + arith_const_20); 
      for (int for_iter_31 = arith_addi_30; for_iter_31 < arith_const_19; for_iter_31 += arith_const_20) {
        func_arg_3[for_iter_27][for_iter_31] = arith_const_23; 
      }
      PAST_SET_SEMAPHORE(execute_token_29, PAST_TASK_FINISHED); 
    }
    async_group_25[async_group_index_26] = execute_token_29; 
    async_group_index_26++; 
    int arith_addi_32 = (for_iter_arg_28 + arith_const_20); 
    for_iter_arg_28 = arith_addi_32; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_25, async_group_index_26, PAST_TASK_FINISHED); 
  double _33; 
  memref_alloca_24[0] = _33; 
  for (int for_iter_34 = arith_const_22; for_iter_34 < arith_const_19; for_iter_34 += arith_const_20) {
    int* async_group_35; 
    int async_group_index_36 = 0; 
    int for_iter_arg_38 = arith_const_22; 
    for (int for_iter_37 = arith_const_22; for_iter_37 < arith_const_18; for_iter_37 += arith_const_20) {
      PAST_NEW_SEMAPHORE(execute_token_39); 
      #pragma peqc async_execute
      {
        int arith_cmpi_40 = (for_iter_37 == arith_const_22); 
        if (arith_cmpi_40) {
          for (int for_iter_41 = arith_const_22; for_iter_41 < arith_const_17; for_iter_41 += arith_const_20) {
            double memref_load_42 = memref_alloca_24[0]; 
            double memref_load_43 = func_arg_2[for_iter_41][for_iter_34]; 
            double arith_mulf_44 = (memref_load_43 * memref_load_43); 
            double arith_addf_45 = (memref_load_42 + arith_mulf_44); 
            memref_alloca_24[0] = arith_addf_45; 
          }
        }
        int arith_muli_46 = (for_iter_37 * arith_const_15); 
        int arith_maxsi_47 = max(arith_muli_46, arith_const_16); 
        int arith_muli_48 = (for_iter_37 * arith_const_15); 
        int arith_addi_49 = (arith_muli_48 + arith_const_15); 
        int arith_minsi_50 = min(arith_addi_49, arith_const_14); 
        for (int for_iter_51 = arith_maxsi_47; for_iter_51 < arith_minsi_50; for_iter_51 += arith_const_20) {
          int arith_addi_52 = (for_iter_51 + arith_const_13); 
          double memref_load_53 = func_arg_2[arith_addi_52][for_iter_34]; 
          double memref_load_54 = func_arg_3[for_iter_34][for_iter_34]; 
          double arith_divf_55 = (memref_load_53 / memref_load_54); 
          int arith_addi_56 = (for_iter_51 + arith_const_13); 
          func_arg_4[arith_addi_56][for_iter_34] = arith_divf_55; 
        }
        int arith_cmpi_57 = (for_iter_37 == arith_const_22); 
        if (arith_cmpi_57) {
          memref_alloca_24[0] = arith_const_23; 
        }
        PAST_SET_SEMAPHORE(execute_token_39, PAST_TASK_FINISHED); 
      }
      async_group_35[async_group_index_36] = execute_token_39; 
      async_group_index_36++; 
      int arith_addi_58 = (for_iter_arg_38 + arith_const_20); 
      for_iter_arg_38 = arith_addi_58; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_35, async_group_index_36, PAST_TASK_FINISHED); 
    int arith_muli_59 = (for_iter_34 * arith_const_12); 
    int arith_addi_60 = (arith_muli_59 + arith_const_11); 
    int arith_cmpi_61 = (arith_addi_60 <= arith_const_22); 
    int arith_subi_62 = (arith_const_22 - arith_addi_60); 
    int arith_subi_63 = (arith_addi_60 - arith_const_20); 
    int arith_select_64 = (arith_cmpi_61 ? arith_subi_62 : arith_subi_63); 
    int arith_divi_65 = (arith_select_64 / arith_const_10); 
    int arith_subi_66 = (arith_const_22 - arith_divi_65); 
    int arith_addi_67 = (arith_divi_65 + arith_const_20); 
    int arith_select_68 = (arith_cmpi_61 ? arith_subi_66 : arith_addi_67); 
    int* async_group_69; 
    int async_group_index_70 = 0; 
    int for_iter_arg_72 = arith_const_22; 
    for (int for_iter_71 = arith_select_68; for_iter_71 < arith_const_9; for_iter_71 += arith_const_20) {
      PAST_NEW_SEMAPHORE(execute_token_73); 
      #pragma peqc async_execute
      {
        for (int for_iter_74 = arith_const_22; for_iter_74 < arith_const_18; for_iter_74 += arith_const_20) {
          int arith_cmpi_75 = (for_iter_74 == arith_const_22); 
          if (arith_cmpi_75) {
            for (int for_iter_76 = arith_const_22; for_iter_76 < arith_const_16; for_iter_76 += arith_const_20) {
              int arith_muli_77 = (for_iter_71 * arith_const_15); 
              int arith_muli_78 = (for_iter_34 * arith_const_9); 
              int arith_addi_79 = (arith_muli_78 + arith_const_8); 
              int arith_maxsi_80 = max(arith_muli_77, arith_addi_79); 
              int arith_muli_81 = (for_iter_71 * arith_const_15); 
              int arith_addi_82 = (arith_muli_81 + arith_const_7); 
              for (int for_iter_83 = arith_maxsi_80; for_iter_83 < arith_addi_82; for_iter_83 += arith_const_20) {
                int arith_addi_84 = (for_iter_83 + arith_const_18); 
                int arith_remsi_85 = (arith_addi_84 % arith_const_9); 
                int arith_cmpi_86 = (arith_remsi_85 < arith_const_22); 
                int arith_addi_87 = (arith_remsi_85 + arith_const_9); 
                int arith_select_88 = (arith_cmpi_86 ? arith_addi_87 : arith_remsi_85); 
                int arith_cmpi_89 = (arith_select_88 == arith_const_22); 
                if (arith_cmpi_89) {
                  int arith_addi_90 = (for_iter_83 + arith_const_6); 
                  int arith_cmpi_91 = (arith_addi_90 <= arith_const_22); 
                  int arith_subi_92 = (arith_const_22 - arith_addi_90); 
                  int arith_subi_93 = (arith_addi_90 - arith_const_20); 
                  int arith_select_94 = (arith_cmpi_91 ? arith_subi_92 : arith_subi_93); 
                  int arith_divi_95 = (arith_select_94 / arith_const_9); 
                  int arith_subi_96 = (arith_const_22 - arith_divi_95); 
                  int arith_addi_97 = (arith_divi_95 + arith_const_20); 
                  int arith_select_98 = (arith_cmpi_91 ? arith_subi_96 : arith_addi_97); 
                  double memref_load_99 = func_arg_3[for_iter_34][arith_select_98]; 
                  double memref_load_100 = func_arg_4[for_iter_76][for_iter_34]; 
                  int arith_addi_101 = (for_iter_83 + arith_const_6); 
                  int arith_cmpi_102 = (arith_addi_101 <= arith_const_22); 
                  int arith_subi_103 = (arith_const_22 - arith_addi_101); 
                  int arith_subi_104 = (arith_addi_101 - arith_const_20); 
                  int arith_select_105 = (arith_cmpi_102 ? arith_subi_103 : arith_subi_104); 
                  int arith_divi_106 = (arith_select_105 / arith_const_9); 
                  int arith_subi_107 = (arith_const_22 - arith_divi_106); 
                  int arith_addi_108 = (arith_divi_106 + arith_const_20); 
                  int arith_select_109 = (arith_cmpi_102 ? arith_subi_107 : arith_addi_108); 
                  double memref_load_110 = func_arg_2[for_iter_76][arith_select_109]; 
                  double arith_mulf_111 = (memref_load_100 * memref_load_110); 
                  double arith_addf_112 = (memref_load_99 + arith_mulf_111); 
                  int arith_addi_113 = (for_iter_83 + arith_const_6); 
                  int arith_cmpi_114 = (arith_addi_113 <= arith_const_22); 
                  int arith_subi_115 = (arith_const_22 - arith_addi_113); 
                  int arith_subi_116 = (arith_addi_113 - arith_const_20); 
                  int arith_select_117 = (arith_cmpi_114 ? arith_subi_115 : arith_subi_116); 
                  int arith_divi_118 = (arith_select_117 / arith_const_9); 
                  int arith_subi_119 = (arith_const_22 - arith_divi_118); 
                  int arith_addi_120 = (arith_divi_118 + arith_const_20); 
                  int arith_select_121 = (arith_cmpi_114 ? arith_subi_119 : arith_addi_120); 
                  func_arg_3[for_iter_34][arith_select_121] = arith_addf_112; 
                }
              }
            }
          }
          int arith_cmpi_122 = (for_iter_74 == arith_const_22); 
          if (arith_cmpi_122) {
            int arith_muli_123 = (for_iter_71 * arith_const_15); 
            int arith_muli_124 = (for_iter_34 * arith_const_9); 
            int arith_addi_125 = (arith_muli_124 + arith_const_8); 
            int arith_maxsi_126 = max(arith_muli_123, arith_addi_125); 
            int arith_muli_127 = (for_iter_71 * arith_const_15); 
            int arith_addi_128 = (arith_muli_127 + arith_const_7); 
            for (int for_iter_129 = arith_maxsi_126; for_iter_129 < arith_addi_128; for_iter_129 += arith_const_20) {
              int arith_addi_130 = (for_iter_129 + arith_const_18); 
              int arith_remsi_131 = (arith_addi_130 % arith_const_9); 
              int arith_cmpi_132 = (arith_remsi_131 < arith_const_22); 
              int arith_addi_133 = (arith_remsi_131 + arith_const_9); 
              int arith_select_134 = (arith_cmpi_132 ? arith_addi_133 : arith_remsi_131); 
              int arith_cmpi_135 = (arith_select_134 == arith_const_22); 
              if (arith_cmpi_135) {
                int arith_addi_136 = (for_iter_129 + arith_const_6); 
                int arith_cmpi_137 = (arith_addi_136 <= arith_const_22); 
                int arith_subi_138 = (arith_const_22 - arith_addi_136); 
                int arith_subi_139 = (arith_addi_136 - arith_const_20); 
                int arith_select_140 = (arith_cmpi_137 ? arith_subi_138 : arith_subi_139); 
                int arith_divi_141 = (arith_select_140 / arith_const_9); 
                int arith_subi_142 = (arith_const_22 - arith_divi_141); 
                int arith_addi_143 = (arith_divi_141 + arith_const_20); 
                int arith_select_144 = (arith_cmpi_137 ? arith_subi_142 : arith_addi_143); 
                double memref_load_145 = func_arg_3[for_iter_34][arith_select_144]; 
                double memref_load_146 = func_arg_4[arith_const_16][for_iter_34]; 
                int arith_addi_147 = (for_iter_129 + arith_const_6); 
                int arith_cmpi_148 = (arith_addi_147 <= arith_const_22); 
                int arith_subi_149 = (arith_const_22 - arith_addi_147); 
                int arith_subi_150 = (arith_addi_147 - arith_const_20); 
                int arith_select_151 = (arith_cmpi_148 ? arith_subi_149 : arith_subi_150); 
                int arith_divi_152 = (arith_select_151 / arith_const_9); 
                int arith_subi_153 = (arith_const_22 - arith_divi_152); 
                int arith_addi_154 = (arith_divi_152 + arith_const_20); 
                int arith_select_155 = (arith_cmpi_148 ? arith_subi_153 : arith_addi_154); 
                double memref_load_156 = func_arg_2[arith_const_16][arith_select_155]; 
                double arith_mulf_157 = (memref_load_146 * memref_load_156); 
                double arith_addf_158 = (memref_load_145 + arith_mulf_157); 
                int arith_addi_159 = (for_iter_129 + arith_const_6); 
                int arith_cmpi_160 = (arith_addi_159 <= arith_const_22); 
                int arith_subi_161 = (arith_const_22 - arith_addi_159); 
                int arith_subi_162 = (arith_addi_159 - arith_const_20); 
                int arith_select_163 = (arith_cmpi_160 ? arith_subi_161 : arith_subi_162); 
                int arith_divi_164 = (arith_select_163 / arith_const_9); 
                int arith_subi_165 = (arith_const_22 - arith_divi_164); 
                int arith_addi_166 = (arith_divi_164 + arith_const_20); 
                int arith_select_167 = (arith_cmpi_160 ? arith_subi_165 : arith_addi_166); 
                func_arg_3[for_iter_34][arith_select_167] = arith_addf_158; 
              }
              int arith_addi_168 = (for_iter_129 + arith_const_18); 
              int arith_remsi_169 = (arith_addi_168 % arith_const_9); 
              int arith_cmpi_170 = (arith_remsi_169 < arith_const_22); 
              int arith_addi_171 = (arith_remsi_169 + arith_const_9); 
              int arith_select_172 = (arith_cmpi_170 ? arith_addi_171 : arith_remsi_169); 
              int arith_cmpi_173 = (arith_select_172 == arith_const_22); 
              if (arith_cmpi_173) {
                int arith_addi_174 = (for_iter_129 + arith_const_6); 
                int arith_cmpi_175 = (arith_addi_174 <= arith_const_22); 
                int arith_subi_176 = (arith_const_22 - arith_addi_174); 
                int arith_subi_177 = (arith_addi_174 - arith_const_20); 
                int arith_select_178 = (arith_cmpi_175 ? arith_subi_176 : arith_subi_177); 
                int arith_divi_179 = (arith_select_178 / arith_const_9); 
                int arith_subi_180 = (arith_const_22 - arith_divi_179); 
                int arith_addi_181 = (arith_divi_179 + arith_const_20); 
                int arith_select_182 = (arith_cmpi_175 ? arith_subi_180 : arith_addi_181); 
                double memref_load_183 = func_arg_2[arith_const_22][arith_select_182]; 
                double memref_load_184 = func_arg_4[arith_const_22][for_iter_34]; 
                int arith_addi_185 = (for_iter_129 + arith_const_6); 
                int arith_cmpi_186 = (arith_addi_185 <= arith_const_22); 
                int arith_subi_187 = (arith_const_22 - arith_addi_185); 
                int arith_subi_188 = (arith_addi_185 - arith_const_20); 
                int arith_select_189 = (arith_cmpi_186 ? arith_subi_187 : arith_subi_188); 
                int arith_divi_190 = (arith_select_189 / arith_const_9); 
                int arith_subi_191 = (arith_const_22 - arith_divi_190); 
                int arith_addi_192 = (arith_divi_190 + arith_const_20); 
                int arith_select_193 = (arith_cmpi_186 ? arith_subi_191 : arith_addi_192); 
                double memref_load_194 = func_arg_3[for_iter_34][arith_select_193]; 
                double arith_mulf_195 = (memref_load_184 * memref_load_194); 
                double arith_subf_196 = (memref_load_183 - arith_mulf_195); 
                int arith_addi_197 = (for_iter_129 + arith_const_6); 
                int arith_cmpi_198 = (arith_addi_197 <= arith_const_22); 
                int arith_subi_199 = (arith_const_22 - arith_addi_197); 
                int arith_subi_200 = (arith_addi_197 - arith_const_20); 
                int arith_select_201 = (arith_cmpi_198 ? arith_subi_199 : arith_subi_200); 
                int arith_divi_202 = (arith_select_201 / arith_const_9); 
                int arith_subi_203 = (arith_const_22 - arith_divi_202); 
                int arith_addi_204 = (arith_divi_202 + arith_const_20); 
                int arith_select_205 = (arith_cmpi_198 ? arith_subi_203 : arith_addi_204); 
                func_arg_2[arith_const_22][arith_select_205] = arith_subf_196; 
              }
            }
          }
          int arith_muli_206 = (for_iter_74 * arith_const_15); 
          int arith_maxsi_207 = max(arith_muli_206, arith_const_17); 
          int arith_muli_208 = (for_iter_74 * arith_const_15); 
          int arith_addi_209 = (arith_muli_208 + arith_const_15); 
          int arith_minsi_210 = min(arith_addi_209, arith_const_14); 
          for (int for_iter_211 = arith_maxsi_207; for_iter_211 < arith_minsi_210; for_iter_211 += arith_const_20) {
            int arith_muli_212 = (for_iter_71 * arith_const_15); 
            int arith_muli_213 = (for_iter_34 * arith_const_9); 
            int arith_addi_214 = (arith_muli_213 + arith_const_8); 
            int arith_maxsi_215 = max(arith_muli_212, arith_addi_214); 
            int arith_muli_216 = (for_iter_71 * arith_const_15); 
            int arith_addi_217 = (arith_muli_216 + arith_const_7); 
            for (int for_iter_218 = arith_maxsi_215; for_iter_218 < arith_addi_217; for_iter_218 += arith_const_20) {
              int arith_addi_219 = (for_iter_218 + arith_const_18); 
              int arith_remsi_220 = (arith_addi_219 % arith_const_9); 
              int arith_cmpi_221 = (arith_remsi_220 < arith_const_22); 
              int arith_addi_222 = (arith_remsi_220 + arith_const_9); 
              int arith_select_223 = (arith_cmpi_221 ? arith_addi_222 : arith_remsi_220); 
              int arith_cmpi_224 = (arith_select_223 == arith_const_22); 
              if (arith_cmpi_224) {
                int arith_addi_225 = (for_iter_211 + arith_const_13); 
                int arith_addi_226 = (for_iter_218 + arith_const_6); 
                int arith_cmpi_227 = (arith_addi_226 <= arith_const_22); 
                int arith_subi_228 = (arith_const_22 - arith_addi_226); 
                int arith_subi_229 = (arith_addi_226 - arith_const_20); 
                int arith_select_230 = (arith_cmpi_227 ? arith_subi_228 : arith_subi_229); 
                int arith_divi_231 = (arith_select_230 / arith_const_9); 
                int arith_subi_232 = (arith_const_22 - arith_divi_231); 
                int arith_addi_233 = (arith_divi_231 + arith_const_20); 
                int arith_select_234 = (arith_cmpi_227 ? arith_subi_232 : arith_addi_233); 
                double memref_load_235 = func_arg_2[arith_addi_225][arith_select_234]; 
                int arith_addi_236 = (for_iter_211 + arith_const_13); 
                double memref_load_237 = func_arg_4[arith_addi_236][for_iter_34]; 
                int arith_addi_238 = (for_iter_218 + arith_const_6); 
                int arith_cmpi_239 = (arith_addi_238 <= arith_const_22); 
                int arith_subi_240 = (arith_const_22 - arith_addi_238); 
                int arith_subi_241 = (arith_addi_238 - arith_const_20); 
                int arith_select_242 = (arith_cmpi_239 ? arith_subi_240 : arith_subi_241); 
                int arith_divi_243 = (arith_select_242 / arith_const_9); 
                int arith_subi_244 = (arith_const_22 - arith_divi_243); 
                int arith_addi_245 = (arith_divi_243 + arith_const_20); 
                int arith_select_246 = (arith_cmpi_239 ? arith_subi_244 : arith_addi_245); 
                double memref_load_247 = func_arg_3[for_iter_34][arith_select_246]; 
                double arith_mulf_248 = (memref_load_237 * memref_load_247); 
                double arith_subf_249 = (memref_load_235 - arith_mulf_248); 
                int arith_addi_250 = (for_iter_211 + arith_const_13); 
                int arith_addi_251 = (for_iter_218 + arith_const_6); 
                int arith_cmpi_252 = (arith_addi_251 <= arith_const_22); 
                int arith_subi_253 = (arith_const_22 - arith_addi_251); 
                int arith_subi_254 = (arith_addi_251 - arith_const_20); 
                int arith_select_255 = (arith_cmpi_252 ? arith_subi_253 : arith_subi_254); 
                int arith_divi_256 = (arith_select_255 / arith_const_9); 
                int arith_subi_257 = (arith_const_22 - arith_divi_256); 
                int arith_addi_258 = (arith_divi_256 + arith_const_20); 
                int arith_select_259 = (arith_cmpi_252 ? arith_subi_257 : arith_addi_258); 
                func_arg_2[arith_addi_250][arith_select_259] = arith_subf_249; 
              }
            }
          }
        }
        PAST_SET_SEMAPHORE(execute_token_73, PAST_TASK_FINISHED); 
      }
      async_group_69[async_group_index_70] = execute_token_73; 
      async_group_index_70++; 
      int arith_addi_260 = (for_iter_arg_72 + arith_const_20); 
      for_iter_arg_72 = arith_addi_260; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_69, async_group_index_70, PAST_TASK_FINISHED); 
    double memref_load_261 = memref_alloca_24[0]; 
    double math_sqrt_262 = sqrt(memref_load_261); 
    func_arg_3[for_iter_34][for_iter_34] = math_sqrt_262; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* R;
  double* Q;

#pragma peqc async_execute
{
  kernel_gramschmidt(m, n, A, R, Q);
}
}

#pragma pocc-region-end
