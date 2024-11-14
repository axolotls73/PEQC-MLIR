#pragma pocc-region-start
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 40; 
  int arith_const_13 = -32; 
  int arith_const_14 = 32; 
  int arith_const_15 = 3; 
  int arith_const_16 = 2; 
  int arith_const_17 = 4; 
  int arith_const_18 = 10; 
  int arith_const_19 = 128; 
  int arith_const_20 = 0; 
  int arith_const_21 = 1; 
  int* async_group_22; 
  int async_group_index_23 = 0; 
  int for_iter_arg_25 = arith_const_20; 
  for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_21; for_iter_24 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_26); 
    #pragma peqc async_execute
    {
      int arith_muli_27 = (for_iter_24 * arith_const_19); 
      for (int for_iter_28 = arith_const_20; for_iter_28 < arith_const_21; for_iter_28 += arith_const_21) {
        int arith_muli_29 = (for_iter_28 * arith_const_19); 
        for (int for_iter_30 = arith_const_20; for_iter_30 < arith_const_18; for_iter_30 += arith_const_21) {
          int arith_muli_31 = (for_iter_30 * arith_const_17); 
          int arith_addi_32 = (arith_muli_27 + arith_muli_31); 
          double memref_load_33 = func_arg_4[arith_addi_32]; 
          double memref_load_34 = func_arg_6[arith_addi_32]; 
          double memref_load_35 = func_arg_4[arith_addi_32]; 
          double memref_load_36 = func_arg_6[arith_addi_32]; 
          double memref_load_37 = func_arg_4[arith_addi_32]; 
          double memref_load_38 = func_arg_6[arith_addi_32]; 
          double memref_load_39 = func_arg_4[arith_addi_32]; 
          double memref_load_40 = func_arg_6[arith_addi_32]; 
          int arith_addi_41 = (arith_addi_32 + arith_const_21); 
          double memref_load_42 = func_arg_4[arith_addi_41]; 
          double memref_load_43 = func_arg_6[arith_addi_41]; 
          double memref_load_44 = func_arg_4[arith_addi_41]; 
          double memref_load_45 = func_arg_6[arith_addi_41]; 
          double memref_load_46 = func_arg_4[arith_addi_41]; 
          double memref_load_47 = func_arg_6[arith_addi_41]; 
          double memref_load_48 = func_arg_4[arith_addi_41]; 
          double memref_load_49 = func_arg_6[arith_addi_41]; 
          int arith_addi_50 = (arith_addi_32 + arith_const_16); 
          double memref_load_51 = func_arg_4[arith_addi_50]; 
          double memref_load_52 = func_arg_6[arith_addi_50]; 
          double memref_load_53 = func_arg_4[arith_addi_50]; 
          double memref_load_54 = func_arg_6[arith_addi_50]; 
          double memref_load_55 = func_arg_4[arith_addi_50]; 
          double memref_load_56 = func_arg_6[arith_addi_50]; 
          double memref_load_57 = func_arg_4[arith_addi_50]; 
          double memref_load_58 = func_arg_6[arith_addi_50]; 
          int arith_addi_59 = (arith_addi_32 + arith_const_15); 
          double memref_load_60 = func_arg_4[arith_addi_59]; 
          double memref_load_61 = func_arg_6[arith_addi_59]; 
          double memref_load_62 = func_arg_4[arith_addi_59]; 
          double memref_load_63 = func_arg_6[arith_addi_59]; 
          double memref_load_64 = func_arg_4[arith_addi_59]; 
          double memref_load_65 = func_arg_6[arith_addi_59]; 
          double memref_load_66 = func_arg_4[arith_addi_59]; 
          double memref_load_67 = func_arg_6[arith_addi_59]; 
          for (int for_iter_68 = arith_const_20; for_iter_68 < arith_const_18; for_iter_68 += arith_const_21) {
            int arith_muli_69 = (for_iter_68 * arith_const_17); 
            int arith_addi_70 = (arith_muli_29 + arith_muli_69); 
            double memref_load_71 = func_arg_3[arith_addi_32][arith_addi_70]; 
            double memref_load_72 = func_arg_5[arith_addi_70]; 
            double arith_mulf_73 = (memref_load_33 * memref_load_72); 
            double arith_addf_74 = (memref_load_71 + arith_mulf_73); 
            double memref_load_75 = func_arg_7[arith_addi_70]; 
            double arith_mulf_76 = (memref_load_34 * memref_load_75); 
            double arith_addf_77 = (arith_addf_74 + arith_mulf_76); 
            func_arg_3[arith_addi_32][arith_addi_70] = arith_addf_77; 
            int arith_addi_78 = (arith_addi_70 + arith_const_21); 
            double memref_load_79 = func_arg_3[arith_addi_32][arith_addi_78]; 
            double memref_load_80 = func_arg_5[arith_addi_78]; 
            double arith_mulf_81 = (memref_load_35 * memref_load_80); 
            double arith_addf_82 = (memref_load_79 + arith_mulf_81); 
            double memref_load_83 = func_arg_7[arith_addi_78]; 
            double arith_mulf_84 = (memref_load_36 * memref_load_83); 
            double arith_addf_85 = (arith_addf_82 + arith_mulf_84); 
            func_arg_3[arith_addi_32][arith_addi_78] = arith_addf_85; 
            int arith_addi_86 = (arith_addi_70 + arith_const_16); 
            double memref_load_87 = func_arg_3[arith_addi_32][arith_addi_86]; 
            double memref_load_88 = func_arg_5[arith_addi_86]; 
            double arith_mulf_89 = (memref_load_37 * memref_load_88); 
            double arith_addf_90 = (memref_load_87 + arith_mulf_89); 
            double memref_load_91 = func_arg_7[arith_addi_86]; 
            double arith_mulf_92 = (memref_load_38 * memref_load_91); 
            double arith_addf_93 = (arith_addf_90 + arith_mulf_92); 
            func_arg_3[arith_addi_32][arith_addi_86] = arith_addf_93; 
            int arith_addi_94 = (arith_addi_70 + arith_const_15); 
            double memref_load_95 = func_arg_3[arith_addi_32][arith_addi_94]; 
            double memref_load_96 = func_arg_5[arith_addi_94]; 
            double arith_mulf_97 = (memref_load_39 * memref_load_96); 
            double arith_addf_98 = (memref_load_95 + arith_mulf_97); 
            double memref_load_99 = func_arg_7[arith_addi_94]; 
            double arith_mulf_100 = (memref_load_40 * memref_load_99); 
            double arith_addf_101 = (arith_addf_98 + arith_mulf_100); 
            func_arg_3[arith_addi_32][arith_addi_94] = arith_addf_101; 
            double memref_load_102 = func_arg_3[arith_addi_41][arith_addi_70]; 
            double memref_load_103 = func_arg_5[arith_addi_70]; 
            double arith_mulf_104 = (memref_load_42 * memref_load_103); 
            double arith_addf_105 = (memref_load_102 + arith_mulf_104); 
            double memref_load_106 = func_arg_7[arith_addi_70]; 
            double arith_mulf_107 = (memref_load_43 * memref_load_106); 
            double arith_addf_108 = (arith_addf_105 + arith_mulf_107); 
            func_arg_3[arith_addi_41][arith_addi_70] = arith_addf_108; 
            int arith_addi_109 = (arith_addi_70 + arith_const_21); 
            double memref_load_110 = func_arg_3[arith_addi_41][arith_addi_109]; 
            double memref_load_111 = func_arg_5[arith_addi_109]; 
            double arith_mulf_112 = (memref_load_44 * memref_load_111); 
            double arith_addf_113 = (memref_load_110 + arith_mulf_112); 
            double memref_load_114 = func_arg_7[arith_addi_109]; 
            double arith_mulf_115 = (memref_load_45 * memref_load_114); 
            double arith_addf_116 = (arith_addf_113 + arith_mulf_115); 
            func_arg_3[arith_addi_41][arith_addi_109] = arith_addf_116; 
            int arith_addi_117 = (arith_addi_70 + arith_const_16); 
            double memref_load_118 = func_arg_3[arith_addi_41][arith_addi_117]; 
            double memref_load_119 = func_arg_5[arith_addi_117]; 
            double arith_mulf_120 = (memref_load_46 * memref_load_119); 
            double arith_addf_121 = (memref_load_118 + arith_mulf_120); 
            double memref_load_122 = func_arg_7[arith_addi_117]; 
            double arith_mulf_123 = (memref_load_47 * memref_load_122); 
            double arith_addf_124 = (arith_addf_121 + arith_mulf_123); 
            func_arg_3[arith_addi_41][arith_addi_117] = arith_addf_124; 
            int arith_addi_125 = (arith_addi_70 + arith_const_15); 
            double memref_load_126 = func_arg_3[arith_addi_41][arith_addi_125]; 
            double memref_load_127 = func_arg_5[arith_addi_125]; 
            double arith_mulf_128 = (memref_load_48 * memref_load_127); 
            double arith_addf_129 = (memref_load_126 + arith_mulf_128); 
            double memref_load_130 = func_arg_7[arith_addi_125]; 
            double arith_mulf_131 = (memref_load_49 * memref_load_130); 
            double arith_addf_132 = (arith_addf_129 + arith_mulf_131); 
            func_arg_3[arith_addi_41][arith_addi_125] = arith_addf_132; 
            double memref_load_133 = func_arg_3[arith_addi_50][arith_addi_70]; 
            double memref_load_134 = func_arg_5[arith_addi_70]; 
            double arith_mulf_135 = (memref_load_51 * memref_load_134); 
            double arith_addf_136 = (memref_load_133 + arith_mulf_135); 
            double memref_load_137 = func_arg_7[arith_addi_70]; 
            double arith_mulf_138 = (memref_load_52 * memref_load_137); 
            double arith_addf_139 = (arith_addf_136 + arith_mulf_138); 
            func_arg_3[arith_addi_50][arith_addi_70] = arith_addf_139; 
            int arith_addi_140 = (arith_addi_70 + arith_const_21); 
            double memref_load_141 = func_arg_3[arith_addi_50][arith_addi_140]; 
            double memref_load_142 = func_arg_5[arith_addi_140]; 
            double arith_mulf_143 = (memref_load_53 * memref_load_142); 
            double arith_addf_144 = (memref_load_141 + arith_mulf_143); 
            double memref_load_145 = func_arg_7[arith_addi_140]; 
            double arith_mulf_146 = (memref_load_54 * memref_load_145); 
            double arith_addf_147 = (arith_addf_144 + arith_mulf_146); 
            func_arg_3[arith_addi_50][arith_addi_140] = arith_addf_147; 
            int arith_addi_148 = (arith_addi_70 + arith_const_16); 
            double memref_load_149 = func_arg_3[arith_addi_50][arith_addi_148]; 
            double memref_load_150 = func_arg_5[arith_addi_148]; 
            double arith_mulf_151 = (memref_load_55 * memref_load_150); 
            double arith_addf_152 = (memref_load_149 + arith_mulf_151); 
            double memref_load_153 = func_arg_7[arith_addi_148]; 
            double arith_mulf_154 = (memref_load_56 * memref_load_153); 
            double arith_addf_155 = (arith_addf_152 + arith_mulf_154); 
            func_arg_3[arith_addi_50][arith_addi_148] = arith_addf_155; 
            int arith_addi_156 = (arith_addi_70 + arith_const_15); 
            double memref_load_157 = func_arg_3[arith_addi_50][arith_addi_156]; 
            double memref_load_158 = func_arg_5[arith_addi_156]; 
            double arith_mulf_159 = (memref_load_57 * memref_load_158); 
            double arith_addf_160 = (memref_load_157 + arith_mulf_159); 
            double memref_load_161 = func_arg_7[arith_addi_156]; 
            double arith_mulf_162 = (memref_load_58 * memref_load_161); 
            double arith_addf_163 = (arith_addf_160 + arith_mulf_162); 
            func_arg_3[arith_addi_50][arith_addi_156] = arith_addf_163; 
            double memref_load_164 = func_arg_3[arith_addi_59][arith_addi_70]; 
            double memref_load_165 = func_arg_5[arith_addi_70]; 
            double arith_mulf_166 = (memref_load_60 * memref_load_165); 
            double arith_addf_167 = (memref_load_164 + arith_mulf_166); 
            double memref_load_168 = func_arg_7[arith_addi_70]; 
            double arith_mulf_169 = (memref_load_61 * memref_load_168); 
            double arith_addf_170 = (arith_addf_167 + arith_mulf_169); 
            func_arg_3[arith_addi_59][arith_addi_70] = arith_addf_170; 
            int arith_addi_171 = (arith_addi_70 + arith_const_21); 
            double memref_load_172 = func_arg_3[arith_addi_59][arith_addi_171]; 
            double memref_load_173 = func_arg_5[arith_addi_171]; 
            double arith_mulf_174 = (memref_load_62 * memref_load_173); 
            double arith_addf_175 = (memref_load_172 + arith_mulf_174); 
            double memref_load_176 = func_arg_7[arith_addi_171]; 
            double arith_mulf_177 = (memref_load_63 * memref_load_176); 
            double arith_addf_178 = (arith_addf_175 + arith_mulf_177); 
            func_arg_3[arith_addi_59][arith_addi_171] = arith_addf_178; 
            int arith_addi_179 = (arith_addi_70 + arith_const_16); 
            double memref_load_180 = func_arg_3[arith_addi_59][arith_addi_179]; 
            double memref_load_181 = func_arg_5[arith_addi_179]; 
            double arith_mulf_182 = (memref_load_64 * memref_load_181); 
            double arith_addf_183 = (memref_load_180 + arith_mulf_182); 
            double memref_load_184 = func_arg_7[arith_addi_179]; 
            double arith_mulf_185 = (memref_load_65 * memref_load_184); 
            double arith_addf_186 = (arith_addf_183 + arith_mulf_185); 
            func_arg_3[arith_addi_59][arith_addi_179] = arith_addf_186; 
            int arith_addi_187 = (arith_addi_70 + arith_const_15); 
            double memref_load_188 = func_arg_3[arith_addi_59][arith_addi_187]; 
            double memref_load_189 = func_arg_5[arith_addi_187]; 
            double arith_mulf_190 = (memref_load_66 * memref_load_189); 
            double arith_addf_191 = (memref_load_188 + arith_mulf_190); 
            double memref_load_192 = func_arg_7[arith_addi_187]; 
            double arith_mulf_193 = (memref_load_67 * memref_load_192); 
            double arith_addf_194 = (arith_addf_191 + arith_mulf_193); 
            func_arg_3[arith_addi_59][arith_addi_187] = arith_addf_194; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
    }
    async_group_22[async_group_index_23] = execute_token_26; 
    async_group_index_23++; 
    int arith_addi_195 = (for_iter_arg_25 + arith_const_21); 
    for_iter_arg_25 = arith_addi_195; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
  int* async_group_196; 
  int async_group_index_197 = 0; 
  int for_iter_arg_199 = arith_const_20; 
  for (int for_iter_198 = arith_const_20; for_iter_198 < arith_const_16; for_iter_198 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_200); 
    #pragma peqc async_execute
    {
      int arith_muli_201 = (for_iter_198 * arith_const_14); 
      for (int for_iter_202 = arith_const_20; for_iter_202 < arith_const_21; for_iter_202 += arith_const_21) {
        int arith_muli_203 = (for_iter_202 * arith_const_19); 
        int arith_muli_204 = (for_iter_198 * arith_const_13); 
        int arith_addi_205 = (arith_muli_204 + arith_const_12); 
        int arith_minsi_206 = min(arith_addi_205, arith_const_14); 
        for (int for_iter_207 = arith_const_20; for_iter_207 < arith_minsi_206; for_iter_207 += arith_const_21) {
          int arith_addi_208 = (arith_muli_201 + for_iter_207); 
          for (int for_iter_209 = arith_const_20; for_iter_209 < arith_const_18; for_iter_209 += arith_const_21) {
            int arith_muli_210 = (for_iter_209 * arith_const_17); 
            int arith_addi_211 = (arith_muli_203 + arith_muli_210); 
            double memref_load_212 = func_arg_9[arith_addi_208]; 
            double memref_load_213 = func_arg_3[arith_addi_211][arith_addi_208]; 
            double arith_mulf_214 = (func_arg_2 * memref_load_213); 
            double memref_load_215 = func_arg_10[arith_addi_211]; 
            double arith_mulf_216 = (arith_mulf_214 * memref_load_215); 
            double arith_addf_217 = (memref_load_212 + arith_mulf_216); 
            func_arg_9[arith_addi_208] = arith_addf_217; 
            int arith_addi_218 = (arith_addi_211 + arith_const_21); 
            double memref_load_219 = func_arg_9[arith_addi_208]; 
            double memref_load_220 = func_arg_3[arith_addi_218][arith_addi_208]; 
            double arith_mulf_221 = (func_arg_2 * memref_load_220); 
            double memref_load_222 = func_arg_10[arith_addi_218]; 
            double arith_mulf_223 = (arith_mulf_221 * memref_load_222); 
            double arith_addf_224 = (memref_load_219 + arith_mulf_223); 
            func_arg_9[arith_addi_208] = arith_addf_224; 
            int arith_addi_225 = (arith_addi_211 + arith_const_16); 
            double memref_load_226 = func_arg_9[arith_addi_208]; 
            double memref_load_227 = func_arg_3[arith_addi_225][arith_addi_208]; 
            double arith_mulf_228 = (func_arg_2 * memref_load_227); 
            double memref_load_229 = func_arg_10[arith_addi_225]; 
            double arith_mulf_230 = (arith_mulf_228 * memref_load_229); 
            double arith_addf_231 = (memref_load_226 + arith_mulf_230); 
            func_arg_9[arith_addi_208] = arith_addf_231; 
            int arith_addi_232 = (arith_addi_211 + arith_const_15); 
            double memref_load_233 = func_arg_9[arith_addi_208]; 
            double memref_load_234 = func_arg_3[arith_addi_232][arith_addi_208]; 
            double arith_mulf_235 = (func_arg_2 * memref_load_234); 
            double memref_load_236 = func_arg_10[arith_addi_232]; 
            double arith_mulf_237 = (arith_mulf_235 * memref_load_236); 
            double arith_addf_238 = (memref_load_233 + arith_mulf_237); 
            func_arg_9[arith_addi_208] = arith_addf_238; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_200, PAST_TASK_FINISHED); 
    }
    async_group_196[async_group_index_197] = execute_token_200; 
    async_group_index_197++; 
    int arith_addi_239 = (for_iter_arg_199 + arith_const_21); 
    for_iter_arg_199 = arith_addi_239; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_196, async_group_index_197, PAST_TASK_FINISHED); 
  int* async_group_240; 
  int async_group_index_241 = 0; 
  int for_iter_arg_243 = arith_const_20; 
  for (int for_iter_242 = arith_const_20; for_iter_242 < arith_const_21; for_iter_242 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_244); 
    #pragma peqc async_execute
    {
      int arith_muli_245 = (for_iter_242 * arith_const_19); 
      for (int for_iter_246 = arith_const_20; for_iter_246 < arith_const_18; for_iter_246 += arith_const_21) {
        int arith_muli_247 = (for_iter_246 * arith_const_17); 
        int arith_addi_248 = (arith_muli_245 + arith_muli_247); 
        double memref_load_249 = func_arg_9[arith_addi_248]; 
        double memref_load_250 = func_arg_11[arith_addi_248]; 
        double arith_addf_251 = (memref_load_249 + memref_load_250); 
        func_arg_9[arith_addi_248] = arith_addf_251; 
        int arith_addi_252 = (arith_addi_248 + arith_const_21); 
        double memref_load_253 = func_arg_9[arith_addi_252]; 
        double memref_load_254 = func_arg_11[arith_addi_252]; 
        double arith_addf_255 = (memref_load_253 + memref_load_254); 
        func_arg_9[arith_addi_252] = arith_addf_255; 
        int arith_addi_256 = (arith_addi_248 + arith_const_16); 
        double memref_load_257 = func_arg_9[arith_addi_256]; 
        double memref_load_258 = func_arg_11[arith_addi_256]; 
        double arith_addf_259 = (memref_load_257 + memref_load_258); 
        func_arg_9[arith_addi_256] = arith_addf_259; 
        int arith_addi_260 = (arith_addi_248 + arith_const_15); 
        double memref_load_261 = func_arg_9[arith_addi_260]; 
        double memref_load_262 = func_arg_11[arith_addi_260]; 
        double arith_addf_263 = (memref_load_261 + memref_load_262); 
        func_arg_9[arith_addi_260] = arith_addf_263; 
      }
      PAST_SET_SEMAPHORE(execute_token_244, PAST_TASK_FINISHED); 
    }
    async_group_240[async_group_index_241] = execute_token_244; 
    async_group_index_241++; 
    int arith_addi_264 = (for_iter_arg_243 + arith_const_21); 
    for_iter_arg_243 = arith_addi_264; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_240, async_group_index_241, PAST_TASK_FINISHED); 
  int* async_group_265; 
  int async_group_index_266 = 0; 
  int for_iter_arg_268 = arith_const_20; 
  for (int for_iter_267 = arith_const_20; for_iter_267 < arith_const_16; for_iter_267 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_269); 
    #pragma peqc async_execute
    {
      int arith_muli_270 = (for_iter_267 * arith_const_14); 
      for (int for_iter_271 = arith_const_20; for_iter_271 < arith_const_21; for_iter_271 += arith_const_21) {
        int arith_muli_272 = (for_iter_271 * arith_const_19); 
        int arith_muli_273 = (for_iter_267 * arith_const_13); 
        int arith_addi_274 = (arith_muli_273 + arith_const_12); 
        int arith_minsi_275 = min(arith_addi_274, arith_const_14); 
        for (int for_iter_276 = arith_const_20; for_iter_276 < arith_minsi_275; for_iter_276 += arith_const_21) {
          int arith_addi_277 = (arith_muli_270 + for_iter_276); 
          for (int for_iter_278 = arith_const_20; for_iter_278 < arith_const_18; for_iter_278 += arith_const_21) {
            int arith_muli_279 = (for_iter_278 * arith_const_17); 
            int arith_addi_280 = (arith_muli_272 + arith_muli_279); 
            double memref_load_281 = func_arg_8[arith_addi_277]; 
            double memref_load_282 = func_arg_3[arith_addi_277][arith_addi_280]; 
            double arith_mulf_283 = (func_arg_1 * memref_load_282); 
            double memref_load_284 = func_arg_9[arith_addi_280]; 
            double arith_mulf_285 = (arith_mulf_283 * memref_load_284); 
            double arith_addf_286 = (memref_load_281 + arith_mulf_285); 
            func_arg_8[arith_addi_277] = arith_addf_286; 
            int arith_addi_287 = (arith_addi_280 + arith_const_21); 
            double memref_load_288 = func_arg_8[arith_addi_277]; 
            double memref_load_289 = func_arg_3[arith_addi_277][arith_addi_287]; 
            double arith_mulf_290 = (func_arg_1 * memref_load_289); 
            double memref_load_291 = func_arg_9[arith_addi_287]; 
            double arith_mulf_292 = (arith_mulf_290 * memref_load_291); 
            double arith_addf_293 = (memref_load_288 + arith_mulf_292); 
            func_arg_8[arith_addi_277] = arith_addf_293; 
            int arith_addi_294 = (arith_addi_280 + arith_const_16); 
            double memref_load_295 = func_arg_8[arith_addi_277]; 
            double memref_load_296 = func_arg_3[arith_addi_277][arith_addi_294]; 
            double arith_mulf_297 = (func_arg_1 * memref_load_296); 
            double memref_load_298 = func_arg_9[arith_addi_294]; 
            double arith_mulf_299 = (arith_mulf_297 * memref_load_298); 
            double arith_addf_300 = (memref_load_295 + arith_mulf_299); 
            func_arg_8[arith_addi_277] = arith_addf_300; 
            int arith_addi_301 = (arith_addi_280 + arith_const_15); 
            double memref_load_302 = func_arg_8[arith_addi_277]; 
            double memref_load_303 = func_arg_3[arith_addi_277][arith_addi_301]; 
            double arith_mulf_304 = (func_arg_1 * memref_load_303); 
            double memref_load_305 = func_arg_9[arith_addi_301]; 
            double arith_mulf_306 = (arith_mulf_304 * memref_load_305); 
            double arith_addf_307 = (memref_load_302 + arith_mulf_306); 
            func_arg_8[arith_addi_277] = arith_addf_307; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_269, PAST_TASK_FINISHED); 
    }
    async_group_265[async_group_index_266] = execute_token_269; 
    async_group_index_266++; 
    int arith_addi_308 = (for_iter_arg_268 + arith_const_21); 
    for_iter_arg_268 = arith_addi_308; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_265, async_group_index_266, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
