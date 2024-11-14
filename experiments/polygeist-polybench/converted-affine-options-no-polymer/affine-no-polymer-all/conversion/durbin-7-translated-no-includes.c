#pragma pocc-region-start
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 42; 
  int arith_const_4 = -4; 
  int arith_const_5 = 3; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 39; 
  int arith_const_9 = -32; 
  int arith_const_10 = 32; 
  int arith_const_11 = 1; 
  int arith_const_12 = 2; 
  int arith_const_13 = 0; 
  double arith_const_14 = 0.000000; 
  double arith_const_15 = 1.000000; 
  double* memref_alloca_16; 
  double _17; 
  memref_alloca_16[0] = _17; 
  double* memref_alloca_18; 
  memref_alloca_18[0] = _17; 
  double* memref_alloca_19; 
  memref_alloca_19[0] = _17; 
  double* memref_alloca_20; 
  double memref_load_21 = func_arg_1[arith_const_13]; 
  double arith_negf_22 = -(memref_load_21); 
  func_arg_2[arith_const_13] = arith_negf_22; 
  memref_alloca_18[0] = arith_const_15; 
  double memref_load_23 = func_arg_1[arith_const_13]; 
  double arith_negf_24 = -(memref_load_23); 
  memref_alloca_19[0] = arith_negf_24; 
  for (int for_iter_25 = arith_const_13; for_iter_25 < arith_const_12; for_iter_25 += arith_const_11) {
    int arith_muli_26 = (for_iter_25 * arith_const_10); 
    int arith_addi_27 = (arith_muli_26 + arith_const_11); 
    int arith_muli_28 = (for_iter_25 * arith_const_9); 
    int arith_addi_29 = (arith_muli_28 + arith_const_8); 
    int arith_minsi_30 = min(arith_addi_29, arith_const_10); 
    for (int for_iter_31 = arith_const_13; for_iter_31 < arith_minsi_30; for_iter_31 += arith_const_11) {
      int arith_addi_32 = (arith_addi_27 + for_iter_31); 
      double memref_load_33 = memref_alloca_19[0]; 
      double arith_mulf_34 = (memref_load_33 * memref_load_33); 
      double arith_subf_35 = (arith_const_15 - arith_mulf_34); 
      double memref_load_36 = memref_alloca_18[0]; 
      double arith_mulf_37 = (arith_subf_35 * memref_load_36); 
      memref_alloca_18[0] = arith_mulf_37; 
      memref_alloca_16[0] = arith_const_14; 
      int arith_muli_38 = (for_iter_25 * arith_const_10); 
      int arith_addi_39 = (for_iter_31 + arith_muli_38); 
      int arith_addi_40 = (arith_addi_39 + arith_const_11); 
      int arith_cmpi_41 = (arith_addi_40 < arith_const_13); 
      int arith_subi_42 = (arith_const_6 - arith_addi_40); 
      int arith_select_43 = (arith_cmpi_41 ? arith_subi_42 : arith_addi_40); 
      int arith_divi_44 = (arith_select_43 / arith_const_7); 
      int arith_subi_45 = (arith_const_6 - arith_divi_44); 
      int arith_select_46 = (arith_cmpi_41 ? arith_subi_45 : arith_divi_44); 
      for (int for_iter_47 = arith_const_13; for_iter_47 < arith_select_46; for_iter_47 += arith_const_11) {
        int arith_muli_48 = (for_iter_47 * arith_const_7); 
        int arith_muli_49 = (arith_muli_48 * arith_const_6); 
        int arith_addi_50 = (arith_addi_32 + arith_muli_49); 
        int arith_addi_51 = (arith_addi_50 + arith_const_6); 
        double memref_load_52 = func_arg_1[arith_addi_51]; 
        double memref_load_53 = func_arg_2[arith_muli_48]; 
        double arith_mulf_54 = (memref_load_52 * memref_load_53); 
        double memref_load_55 = memref_alloca_16[0]; 
        double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
        memref_alloca_16[0] = arith_addf_56; 
        int arith_addi_57 = (arith_muli_48 + arith_const_11); 
        int arith_muli_58 = (arith_addi_57 * arith_const_6); 
        int arith_addi_59 = (arith_addi_32 + arith_muli_58); 
        int arith_addi_60 = (arith_addi_59 + arith_const_6); 
        double memref_load_61 = func_arg_1[arith_addi_60]; 
        double memref_load_62 = func_arg_2[arith_addi_57]; 
        double arith_mulf_63 = (memref_load_61 * memref_load_62); 
        double memref_load_64 = memref_alloca_16[0]; 
        double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
        memref_alloca_16[0] = arith_addf_65; 
        int arith_addi_66 = (arith_muli_48 + arith_const_12); 
        int arith_muli_67 = (arith_addi_66 * arith_const_6); 
        int arith_addi_68 = (arith_addi_32 + arith_muli_67); 
        int arith_addi_69 = (arith_addi_68 + arith_const_6); 
        double memref_load_70 = func_arg_1[arith_addi_69]; 
        double memref_load_71 = func_arg_2[arith_addi_66]; 
        double arith_mulf_72 = (memref_load_70 * memref_load_71); 
        double memref_load_73 = memref_alloca_16[0]; 
        double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
        memref_alloca_16[0] = arith_addf_74; 
        int arith_addi_75 = (arith_muli_48 + arith_const_5); 
        int arith_muli_76 = (arith_addi_75 * arith_const_6); 
        int arith_addi_77 = (arith_addi_32 + arith_muli_76); 
        int arith_addi_78 = (arith_addi_77 + arith_const_6); 
        double memref_load_79 = func_arg_1[arith_addi_78]; 
        double memref_load_80 = func_arg_2[arith_addi_75]; 
        double arith_mulf_81 = (memref_load_79 * memref_load_80); 
        double memref_load_82 = memref_alloca_16[0]; 
        double arith_addf_83 = (memref_load_82 + arith_mulf_81); 
        memref_alloca_16[0] = arith_addf_83; 
      }
      int arith_muli_84 = (for_iter_25 * arith_const_10); 
      int arith_addi_85 = (for_iter_31 + arith_muli_84); 
      int arith_muli_86 = (for_iter_25 * arith_const_10); 
      int arith_addi_87 = (for_iter_31 + arith_muli_86); 
      int arith_addi_88 = (arith_addi_87 + arith_const_11); 
      int arith_cmpi_89 = (arith_addi_88 < arith_const_13); 
      int arith_subi_90 = (arith_const_6 - arith_addi_88); 
      int arith_select_91 = (arith_cmpi_89 ? arith_subi_90 : arith_addi_88); 
      int arith_divi_92 = (arith_select_91 / arith_const_7); 
      int arith_subi_93 = (arith_const_6 - arith_divi_92); 
      int arith_select_94 = (arith_cmpi_89 ? arith_subi_93 : arith_divi_92); 
      int arith_muli_95 = (arith_select_94 * arith_const_4); 
      int arith_addi_96 = (arith_addi_85 + arith_muli_95); 
      int arith_addi_97 = (arith_addi_96 + arith_const_11); 
      for (int for_iter_98 = arith_const_13; for_iter_98 < arith_addi_97; for_iter_98 += arith_const_11) {
        int arith_cmpi_99 = (arith_addi_32 < arith_const_13); 
        int arith_subi_100 = (arith_const_6 - arith_addi_32); 
        int arith_select_101 = (arith_cmpi_99 ? arith_subi_100 : arith_addi_32); 
        int arith_divi_102 = (arith_select_101 / arith_const_7); 
        int arith_subi_103 = (arith_const_6 - arith_divi_102); 
        int arith_select_104 = (arith_cmpi_99 ? arith_subi_103 : arith_divi_102); 
        int arith_muli_105 = (arith_select_104 * arith_const_7); 
        int arith_addi_106 = (for_iter_98 + arith_muli_105); 
        int arith_muli_107 = (arith_addi_106 * arith_const_6); 
        int arith_addi_108 = (arith_addi_32 + arith_muli_107); 
        int arith_addi_109 = (arith_addi_108 + arith_const_6); 
        double memref_load_110 = func_arg_1[arith_addi_109]; 
        double memref_load_111 = func_arg_2[arith_addi_106]; 
        double arith_mulf_112 = (memref_load_110 * memref_load_111); 
        double memref_load_113 = memref_alloca_16[0]; 
        double arith_addf_114 = (memref_load_113 + arith_mulf_112); 
        memref_alloca_16[0] = arith_addf_114; 
      }
      double memref_load_115 = func_arg_1[arith_addi_32]; 
      double memref_load_116 = memref_alloca_16[0]; 
      double arith_addf_117 = (memref_load_115 + memref_load_116); 
      double arith_negf_118 = -(arith_addf_117); 
      double arith_divf_119 = (arith_negf_118 / arith_mulf_37); 
      memref_alloca_19[0] = arith_divf_119; 
      int arith_muli_120 = (for_iter_25 * arith_const_10); 
      int arith_addi_121 = (for_iter_31 + arith_muli_120); 
      int arith_addi_122 = (arith_addi_121 + arith_const_11); 
      int arith_cmpi_123 = (arith_addi_122 < arith_const_13); 
      int arith_subi_124 = (arith_const_6 - arith_addi_122); 
      int arith_select_125 = (arith_cmpi_123 ? arith_subi_124 : arith_addi_122); 
      int arith_divi_126 = (arith_select_125 / arith_const_7); 
      int arith_subi_127 = (arith_const_6 - arith_divi_126); 
      int arith_select_128 = (arith_cmpi_123 ? arith_subi_127 : arith_divi_126); 
      int* async_group_129; 
      int async_group_index_130 = 0; 
      int for_iter_arg_132 = arith_const_13; 
      for (int for_iter_131 = arith_const_13; for_iter_131 < arith_select_128; for_iter_131 += arith_const_11) {
        PAST_NEW_SEMAPHORE(execute_token_133); 
        #pragma peqc async_execute
        {
          int arith_muli_134 = (for_iter_131 * arith_const_7); 
          double memref_load_135 = func_arg_2[arith_muli_134]; 
          int arith_muli_136 = (arith_muli_134 * arith_const_6); 
          int arith_addi_137 = (arith_addi_32 + arith_muli_136); 
          int arith_addi_138 = (arith_addi_137 + arith_const_6); 
          double memref_load_139 = func_arg_2[arith_addi_138]; 
          double arith_mulf_140 = (arith_divf_119 * memref_load_139); 
          double arith_addf_141 = (memref_load_135 + arith_mulf_140); 
          memref_alloca_20[arith_muli_134] = arith_addf_141; 
          int arith_addi_142 = (arith_muli_134 + arith_const_11); 
          double memref_load_143 = func_arg_2[arith_addi_142]; 
          int arith_muli_144 = (arith_addi_142 * arith_const_6); 
          int arith_addi_145 = (arith_addi_32 + arith_muli_144); 
          int arith_addi_146 = (arith_addi_145 + arith_const_6); 
          double memref_load_147 = func_arg_2[arith_addi_146]; 
          double arith_mulf_148 = (arith_divf_119 * memref_load_147); 
          double arith_addf_149 = (memref_load_143 + arith_mulf_148); 
          memref_alloca_20[arith_addi_142] = arith_addf_149; 
          int arith_addi_150 = (arith_muli_134 + arith_const_12); 
          double memref_load_151 = func_arg_2[arith_addi_150]; 
          int arith_muli_152 = (arith_addi_150 * arith_const_6); 
          int arith_addi_153 = (arith_addi_32 + arith_muli_152); 
          int arith_addi_154 = (arith_addi_153 + arith_const_6); 
          double memref_load_155 = func_arg_2[arith_addi_154]; 
          double arith_mulf_156 = (arith_divf_119 * memref_load_155); 
          double arith_addf_157 = (memref_load_151 + arith_mulf_156); 
          memref_alloca_20[arith_addi_150] = arith_addf_157; 
          int arith_addi_158 = (arith_muli_134 + arith_const_5); 
          double memref_load_159 = func_arg_2[arith_addi_158]; 
          int arith_muli_160 = (arith_addi_158 * arith_const_6); 
          int arith_addi_161 = (arith_addi_32 + arith_muli_160); 
          int arith_addi_162 = (arith_addi_161 + arith_const_6); 
          double memref_load_163 = func_arg_2[arith_addi_162]; 
          double arith_mulf_164 = (arith_divf_119 * memref_load_163); 
          double arith_addf_165 = (memref_load_159 + arith_mulf_164); 
          memref_alloca_20[arith_addi_158] = arith_addf_165; 
          PAST_SET_SEMAPHORE(execute_token_133, PAST_TASK_FINISHED); 
        }
        async_group_129[async_group_index_130] = execute_token_133; 
        async_group_index_130++; 
        int arith_addi_166 = (for_iter_arg_132 + arith_const_11); 
        for_iter_arg_132 = arith_addi_166; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_129, async_group_index_130, PAST_TASK_FINISHED); 
      int arith_muli_167 = (for_iter_25 * arith_const_10); 
      int arith_addi_168 = (for_iter_31 + arith_muli_167); 
      int arith_muli_169 = (for_iter_25 * arith_const_10); 
      int arith_addi_170 = (for_iter_31 + arith_muli_169); 
      int arith_addi_171 = (arith_addi_170 + arith_const_11); 
      int arith_cmpi_172 = (arith_addi_171 < arith_const_13); 
      int arith_subi_173 = (arith_const_6 - arith_addi_171); 
      int arith_select_174 = (arith_cmpi_172 ? arith_subi_173 : arith_addi_171); 
      int arith_divi_175 = (arith_select_174 / arith_const_7); 
      int arith_subi_176 = (arith_const_6 - arith_divi_175); 
      int arith_select_177 = (arith_cmpi_172 ? arith_subi_176 : arith_divi_175); 
      int arith_muli_178 = (arith_select_177 * arith_const_4); 
      int arith_addi_179 = (arith_addi_168 + arith_muli_178); 
      int arith_addi_180 = (arith_addi_179 + arith_const_11); 
      int* async_group_181; 
      int async_group_index_182 = 0; 
      int for_iter_arg_184 = arith_const_13; 
      for (int for_iter_183 = arith_const_13; for_iter_183 < arith_addi_180; for_iter_183 += arith_const_11) {
        PAST_NEW_SEMAPHORE(execute_token_185); 
        #pragma peqc async_execute
        {
          int arith_cmpi_186 = (arith_addi_32 < arith_const_13); 
          int arith_subi_187 = (arith_const_6 - arith_addi_32); 
          int arith_select_188 = (arith_cmpi_186 ? arith_subi_187 : arith_addi_32); 
          int arith_divi_189 = (arith_select_188 / arith_const_7); 
          int arith_subi_190 = (arith_const_6 - arith_divi_189); 
          int arith_select_191 = (arith_cmpi_186 ? arith_subi_190 : arith_divi_189); 
          int arith_muli_192 = (arith_select_191 * arith_const_7); 
          int arith_addi_193 = (arith_muli_192 + for_iter_183); 
          double memref_load_194 = func_arg_2[arith_addi_193]; 
          int arith_muli_195 = (arith_addi_193 * arith_const_6); 
          int arith_addi_196 = (arith_addi_32 + arith_muli_195); 
          int arith_addi_197 = (arith_addi_196 + arith_const_6); 
          double memref_load_198 = func_arg_2[arith_addi_197]; 
          double arith_mulf_199 = (arith_divf_119 * memref_load_198); 
          double arith_addf_200 = (memref_load_194 + arith_mulf_199); 
          memref_alloca_20[arith_addi_193] = arith_addf_200; 
          PAST_SET_SEMAPHORE(execute_token_185, PAST_TASK_FINISHED); 
        }
        async_group_181[async_group_index_182] = execute_token_185; 
        async_group_index_182++; 
        int arith_addi_201 = (for_iter_arg_184 + arith_const_11); 
        for_iter_arg_184 = arith_addi_201; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_181, async_group_index_182, PAST_TASK_FINISHED); 
      int arith_muli_202 = (for_iter_25 * arith_const_10); 
      int arith_addi_203 = (for_iter_31 + arith_muli_202); 
      int arith_addi_204 = (arith_addi_203 + arith_const_11); 
      int arith_cmpi_205 = (arith_addi_204 < arith_const_13); 
      int arith_subi_206 = (arith_const_6 - arith_addi_204); 
      int arith_select_207 = (arith_cmpi_205 ? arith_subi_206 : arith_addi_204); 
      int arith_divi_208 = (arith_select_207 / arith_const_7); 
      int arith_subi_209 = (arith_const_6 - arith_divi_208); 
      int arith_select_210 = (arith_cmpi_205 ? arith_subi_209 : arith_divi_208); 
      int* async_group_211; 
      int async_group_index_212 = 0; 
      int for_iter_arg_214 = arith_const_13; 
      for (int for_iter_213 = arith_const_13; for_iter_213 < arith_select_210; for_iter_213 += arith_const_11) {
        PAST_NEW_SEMAPHORE(execute_token_215); 
        #pragma peqc async_execute
        {
          int arith_muli_216 = (for_iter_213 * arith_const_7); 
          double memref_load_217 = memref_alloca_20[arith_muli_216]; 
          func_arg_2[arith_muli_216] = memref_load_217; 
          int arith_addi_218 = (arith_muli_216 + arith_const_11); 
          double memref_load_219 = memref_alloca_20[arith_addi_218]; 
          func_arg_2[arith_addi_218] = memref_load_219; 
          int arith_addi_220 = (arith_muli_216 + arith_const_12); 
          double memref_load_221 = memref_alloca_20[arith_addi_220]; 
          func_arg_2[arith_addi_220] = memref_load_221; 
          int arith_addi_222 = (arith_muli_216 + arith_const_5); 
          double memref_load_223 = memref_alloca_20[arith_addi_222]; 
          func_arg_2[arith_addi_222] = memref_load_223; 
          PAST_SET_SEMAPHORE(execute_token_215, PAST_TASK_FINISHED); 
        }
        async_group_211[async_group_index_212] = execute_token_215; 
        async_group_index_212++; 
        int arith_addi_224 = (for_iter_arg_214 + arith_const_11); 
        for_iter_arg_214 = arith_addi_224; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_211, async_group_index_212, PAST_TASK_FINISHED); 
      int arith_muli_225 = (for_iter_25 * arith_const_10); 
      int arith_addi_226 = (for_iter_31 + arith_muli_225); 
      int arith_muli_227 = (for_iter_25 * arith_const_10); 
      int arith_addi_228 = (for_iter_31 + arith_muli_227); 
      int arith_addi_229 = (arith_addi_228 + arith_const_11); 
      int arith_cmpi_230 = (arith_addi_229 < arith_const_13); 
      int arith_subi_231 = (arith_const_6 - arith_addi_229); 
      int arith_select_232 = (arith_cmpi_230 ? arith_subi_231 : arith_addi_229); 
      int arith_divi_233 = (arith_select_232 / arith_const_7); 
      int arith_subi_234 = (arith_const_6 - arith_divi_233); 
      int arith_select_235 = (arith_cmpi_230 ? arith_subi_234 : arith_divi_233); 
      int arith_muli_236 = (arith_select_235 * arith_const_4); 
      int arith_addi_237 = (arith_addi_226 + arith_muli_236); 
      int arith_addi_238 = (arith_addi_237 + arith_const_11); 
      int* async_group_239; 
      int async_group_index_240 = 0; 
      int for_iter_arg_242 = arith_const_13; 
      for (int for_iter_241 = arith_const_13; for_iter_241 < arith_addi_238; for_iter_241 += arith_const_11) {
        PAST_NEW_SEMAPHORE(execute_token_243); 
        #pragma peqc async_execute
        {
          int arith_cmpi_244 = (arith_addi_32 < arith_const_13); 
          int arith_subi_245 = (arith_const_6 - arith_addi_32); 
          int arith_select_246 = (arith_cmpi_244 ? arith_subi_245 : arith_addi_32); 
          int arith_divi_247 = (arith_select_246 / arith_const_7); 
          int arith_subi_248 = (arith_const_6 - arith_divi_247); 
          int arith_select_249 = (arith_cmpi_244 ? arith_subi_248 : arith_divi_247); 
          int arith_muli_250 = (arith_select_249 * arith_const_7); 
          int arith_addi_251 = (arith_muli_250 + for_iter_241); 
          double memref_load_252 = memref_alloca_20[arith_addi_251]; 
          func_arg_2[arith_addi_251] = memref_load_252; 
          PAST_SET_SEMAPHORE(execute_token_243, PAST_TASK_FINISHED); 
        }
        async_group_239[async_group_index_240] = execute_token_243; 
        async_group_index_240++; 
        int arith_addi_253 = (for_iter_arg_242 + arith_const_11); 
        for_iter_arg_242 = arith_addi_253; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_239, async_group_index_240, PAST_TASK_FINISHED); 
      func_arg_2[arith_addi_32] = arith_divf_119; 
    }
  }
  return; 

}
#pragma pocc-region-end
