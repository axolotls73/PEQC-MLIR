#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 42; 
  int arith_const_4 = -37; 
  int arith_const_5 = 38; 
  int arith_const_6 = -2; 
  int arith_const_7 = -4; 
  int arith_const_8 = 37; 
  int arith_const_9 = -38; 
  int arith_const_10 = 3; 
  int arith_const_11 = 4; 
  int arith_const_12 = 8; 
  int arith_const_13 = -1; 
  int arith_const_14 = 39; 
  int arith_const_15 = -32; 
  int arith_const_16 = 32; 
  int arith_const_17 = 1; 
  int arith_const_18 = 2; 
  int arith_const_19 = 0; 
  double arith_const_20 = 0.000000; 
  double arith_const_21 = 1.000000; 
  double* memref_alloca_22; 
  double* memref_alloca_23; 
  double* memref_alloca_24; 
  double* memref_alloca_25; 
  double* memref_alloca_26; 
  double* memref_alloca_27; 
  double memref_load_28 = func_arg_1[arith_const_19]; 
  double arith_negf_29 = -(memref_load_28); 
  func_arg_2[arith_const_19] = arith_negf_29; 
  double _30; 
  memref_alloca_26[0] = _30; 
  double memref_load_31 = func_arg_1[arith_const_19]; 
  double arith_negf_32 = -(memref_load_31); 
  memref_alloca_26[0] = arith_negf_32; 
  double _33; 
  memref_alloca_25[0] = _33; 
  memref_alloca_25[0] = arith_const_21; 
  double _34; 
  memref_alloca_22[0] = _34; 
  for (int for_iter_35 = arith_const_19; for_iter_35 < arith_const_18; for_iter_35 += arith_const_17) {
    int arith_muli_36 = (for_iter_35 * arith_const_16); 
    int arith_addi_37 = (arith_muli_36 + arith_const_17); 
    int arith_muli_38 = (for_iter_35 * arith_const_15); 
    int arith_addi_39 = (arith_muli_38 + arith_const_14); 
    int arith_minsi_40 = min(arith_addi_39, arith_const_16); 
    for (int for_iter_41 = arith_const_19; for_iter_41 < arith_minsi_40; for_iter_41 += arith_const_17) {
      int arith_addi_42 = (arith_addi_37 + for_iter_41); 
      memref_alloca_22[0] = arith_const_20; 
      double memref_load_43 = memref_alloca_22[0]; 
      int arith_addi_44 = (arith_addi_42 + arith_const_13); 
      double memref_load_45 = func_arg_1[arith_addi_44]; 
      double memref_load_46 = func_arg_2[arith_const_19]; 
      double arith_mulf_47 = (memref_load_45 * memref_load_46); 
      double arith_addf_48 = (memref_load_43 + arith_mulf_47); 
      memref_alloca_22[0] = arith_addf_48; 
      double memref_load_49 = memref_alloca_25[0]; 
      double memref_load_50 = memref_alloca_26[0]; 
      double arith_mulf_51 = (memref_load_50 * memref_load_50); 
      double arith_subf_52 = (memref_load_49 - arith_mulf_51); 
      double memref_load_53 = memref_alloca_25[0]; 
      double arith_mulf_54 = (arith_subf_52 * memref_load_53); 
      memref_alloca_25[0] = arith_mulf_54; 
      int arith_muli_55 = (for_iter_35 * arith_const_12); 
      int arith_cmpi_56 = (for_iter_41 < arith_const_19); 
      int arith_subi_57 = (arith_const_13 - for_iter_41); 
      int arith_select_58 = (arith_cmpi_56 ? arith_subi_57 : for_iter_41); 
      int arith_divi_59 = (arith_select_58 / arith_const_11); 
      int arith_subi_60 = (arith_const_13 - arith_divi_59); 
      int arith_select_61 = (arith_cmpi_56 ? arith_subi_60 : arith_divi_59); 
      int arith_addi_62 = (arith_muli_55 + arith_select_61); 
      for (int for_iter_63 = arith_const_19; for_iter_63 < arith_addi_62; for_iter_63 += arith_const_17) {
        int arith_muli_64 = (for_iter_63 * arith_const_11); 
        int arith_addi_65 = (arith_muli_64 + arith_const_17); 
        double memref_load_66 = memref_alloca_22[0]; 
        int arith_muli_67 = (arith_addi_65 * arith_const_13); 
        int arith_addi_68 = (arith_addi_42 + arith_muli_67); 
        int arith_addi_69 = (arith_addi_68 + arith_const_13); 
        double memref_load_70 = func_arg_1[arith_addi_69]; 
        double memref_load_71 = func_arg_2[arith_addi_65]; 
        double arith_mulf_72 = (memref_load_70 * memref_load_71); 
        double arith_addf_73 = (memref_load_66 + arith_mulf_72); 
        memref_alloca_22[0] = arith_addf_73; 
        int arith_addi_74 = (arith_addi_65 + arith_const_17); 
        double memref_load_75 = memref_alloca_22[0]; 
        int arith_muli_76 = (arith_addi_74 * arith_const_13); 
        int arith_addi_77 = (arith_addi_42 + arith_muli_76); 
        int arith_addi_78 = (arith_addi_77 + arith_const_13); 
        double memref_load_79 = func_arg_1[arith_addi_78]; 
        double memref_load_80 = func_arg_2[arith_addi_74]; 
        double arith_mulf_81 = (memref_load_79 * memref_load_80); 
        double arith_addf_82 = (memref_load_75 + arith_mulf_81); 
        memref_alloca_22[0] = arith_addf_82; 
        int arith_addi_83 = (arith_addi_65 + arith_const_18); 
        double memref_load_84 = memref_alloca_22[0]; 
        int arith_muli_85 = (arith_addi_83 * arith_const_13); 
        int arith_addi_86 = (arith_addi_42 + arith_muli_85); 
        int arith_addi_87 = (arith_addi_86 + arith_const_13); 
        double memref_load_88 = func_arg_1[arith_addi_87]; 
        double memref_load_89 = func_arg_2[arith_addi_83]; 
        double arith_mulf_90 = (memref_load_88 * memref_load_89); 
        double arith_addf_91 = (memref_load_84 + arith_mulf_90); 
        memref_alloca_22[0] = arith_addf_91; 
        int arith_addi_92 = (arith_addi_65 + arith_const_10); 
        double memref_load_93 = memref_alloca_22[0]; 
        int arith_muli_94 = (arith_addi_92 * arith_const_13); 
        int arith_addi_95 = (arith_addi_42 + arith_muli_94); 
        int arith_addi_96 = (arith_addi_95 + arith_const_13); 
        double memref_load_97 = func_arg_1[arith_addi_96]; 
        double memref_load_98 = func_arg_2[arith_addi_92]; 
        double arith_mulf_99 = (memref_load_97 * memref_load_98); 
        double arith_addf_100 = (memref_load_93 + arith_mulf_99); 
        memref_alloca_22[0] = arith_addf_100; 
      }
      int arith_remsi_101 = (for_iter_41 % arith_const_11); 
      int arith_cmpi_102 = (arith_remsi_101 < arith_const_19); 
      int arith_addi_103 = (arith_remsi_101 + arith_const_11); 
      int arith_select_104 = (arith_cmpi_102 ? arith_addi_103 : arith_remsi_101); 
      for (int for_iter_105 = arith_const_19; for_iter_105 < arith_select_104; for_iter_105 += arith_const_17) {
        int arith_addi_106 = (arith_addi_42 + arith_const_13); 
        int arith_cmpi_107 = (arith_addi_106 < arith_const_19); 
        int arith_subi_108 = (arith_const_13 - arith_addi_106); 
        int arith_select_109 = (arith_cmpi_107 ? arith_subi_108 : arith_addi_106); 
        int arith_divi_110 = (arith_select_109 / arith_const_11); 
        int arith_subi_111 = (arith_const_13 - arith_divi_110); 
        int arith_select_112 = (arith_cmpi_107 ? arith_subi_111 : arith_divi_110); 
        int arith_muli_113 = (arith_select_112 * arith_const_11); 
        int arith_addi_114 = (for_iter_105 + arith_muli_113); 
        int arith_addi_115 = (arith_addi_114 + arith_const_17); 
        double memref_load_116 = memref_alloca_22[0]; 
        int arith_muli_117 = (arith_addi_115 * arith_const_13); 
        int arith_addi_118 = (arith_addi_42 + arith_muli_117); 
        int arith_addi_119 = (arith_addi_118 + arith_const_13); 
        double memref_load_120 = func_arg_1[arith_addi_119]; 
        double memref_load_121 = func_arg_2[arith_addi_115]; 
        double arith_mulf_122 = (memref_load_120 * memref_load_121); 
        double arith_addf_123 = (memref_load_116 + arith_mulf_122); 
        memref_alloca_22[0] = arith_addf_123; 
      }
      int arith_muli_124 = (for_iter_35 * arith_const_16); 
      int arith_addi_125 = (for_iter_41 + arith_muli_124); 
      int arith_cmpi_126 = (arith_addi_125 == arith_const_19); 
      if (arith_cmpi_126) {
        double memref_load_127 = func_arg_1[arith_const_17]; 
        double memref_load_128 = memref_alloca_22[0]; 
        double arith_addf_129 = (memref_load_127 + memref_load_128); 
        double arith_negf_130 = -(arith_addf_129); 
        double memref_load_131 = memref_alloca_25[0]; 
        double arith_divf_132 = (arith_negf_130 / memref_load_131); 
        memref_alloca_23[arith_const_19] = arith_divf_132; 
        double memref_load_133 = func_arg_2[arith_const_19]; 
        double memref_load_134 = memref_alloca_23[arith_const_19]; 
        double memref_load_135 = func_arg_2[arith_const_19]; 
        double arith_mulf_136 = (memref_load_134 * memref_load_135); 
        double arith_addf_137 = (memref_load_133 + arith_mulf_136); 
        memref_alloca_24[arith_const_19] = arith_addf_137; 
        double memref_load_138 = memref_alloca_24[arith_const_19]; 
        func_arg_2[arith_const_19] = memref_load_138; 
        double memref_load_139 = memref_alloca_23[arith_const_19]; 
        memref_alloca_27[arith_const_19] = memref_load_139; 
        memref_alloca_26[0] = memref_load_139; 
        double memref_load_140 = memref_alloca_27[arith_const_19]; 
        func_arg_2[arith_const_17] = memref_load_140; 
      }
      int arith_muli_141 = (for_iter_35 * arith_const_16); 
      int arith_addi_142 = (for_iter_41 + arith_muli_141); 
      int arith_addi_143 = (arith_addi_142 + arith_const_13); 
      int arith_cmpi_144 = (arith_addi_143 >= arith_const_19); 
      if (arith_cmpi_144) {
        double memref_load_145 = func_arg_1[arith_addi_42]; 
        double memref_load_146 = memref_alloca_22[0]; 
        double arith_addf_147 = (memref_load_145 + memref_load_146); 
        double arith_negf_148 = -(arith_addf_147); 
        double memref_load_149 = memref_alloca_25[0]; 
        double arith_divf_150 = (arith_negf_148 / memref_load_149); 
        memref_alloca_23[arith_const_19] = arith_divf_150; 
        double memref_load_151 = func_arg_2[arith_const_19]; 
        double memref_load_152 = memref_alloca_23[arith_const_19]; 
        int arith_addi_153 = (arith_addi_42 + arith_const_13); 
        double memref_load_154 = func_arg_2[arith_addi_153]; 
        double arith_mulf_155 = (memref_load_152 * memref_load_154); 
        double arith_addf_156 = (memref_load_151 + arith_mulf_155); 
        memref_alloca_24[arith_const_19] = arith_addf_156; 
        double memref_load_157 = memref_alloca_23[arith_const_19]; 
        memref_alloca_27[arith_const_19] = memref_load_157; 
        memref_alloca_26[0] = memref_load_157; 
        double memref_load_158 = memref_alloca_27[arith_const_19]; 
        func_arg_2[arith_addi_42] = memref_load_158; 
      }
      int arith_muli_159 = (for_iter_35 * arith_const_16); 
      int arith_addi_160 = (for_iter_41 + arith_muli_159); 
      int arith_addi_161 = (arith_addi_160 + arith_const_13); 
      int arith_cmpi_162 = (arith_addi_161 < arith_const_19); 
      int arith_subi_163 = (arith_const_13 - arith_addi_161); 
      int arith_select_164 = (arith_cmpi_162 ? arith_subi_163 : arith_addi_161); 
      int arith_divi_165 = (arith_select_164 / arith_const_11); 
      int arith_subi_166 = (arith_const_13 - arith_divi_165); 
      int arith_select_167 = (arith_cmpi_162 ? arith_subi_166 : arith_divi_165); 
      int* async_group_168; 
      int async_group_index_169 = 0; 
      int for_iter_arg_171 = arith_const_19; 
      for (int for_iter_170 = arith_const_19; for_iter_170 < arith_select_167; for_iter_170 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_172); 
        #pragma peqc async_execute
        {
          int arith_muli_173 = (for_iter_170 * arith_const_11); 
          int arith_addi_174 = (arith_muli_173 + arith_const_14); 
          int arith_addi_175 = (arith_addi_174 + arith_const_9); 
          double memref_load_176 = func_arg_2[arith_addi_175]; 
          double memref_load_177 = memref_alloca_23[arith_const_19]; 
          int arith_muli_178 = (arith_addi_174 * arith_const_13); 
          int arith_addi_179 = (arith_muli_178 + arith_addi_42); 
          int arith_addi_180 = (arith_addi_179 + arith_const_8); 
          double memref_load_181 = func_arg_2[arith_addi_180]; 
          double arith_mulf_182 = (memref_load_177 * memref_load_181); 
          double arith_addf_183 = (memref_load_176 + arith_mulf_182); 
          int arith_addi_184 = (arith_addi_174 + arith_const_9); 
          memref_alloca_24[arith_addi_184] = arith_addf_183; 
          int arith_addi_185 = (arith_addi_174 + arith_const_17); 
          int arith_addi_186 = (arith_addi_185 + arith_const_9); 
          double memref_load_187 = func_arg_2[arith_addi_186]; 
          double memref_load_188 = memref_alloca_23[arith_const_19]; 
          int arith_muli_189 = (arith_addi_185 * arith_const_13); 
          int arith_addi_190 = (arith_muli_189 + arith_addi_42); 
          int arith_addi_191 = (arith_addi_190 + arith_const_8); 
          double memref_load_192 = func_arg_2[arith_addi_191]; 
          double arith_mulf_193 = (memref_load_188 * memref_load_192); 
          double arith_addf_194 = (memref_load_187 + arith_mulf_193); 
          int arith_addi_195 = (arith_addi_185 + arith_const_9); 
          memref_alloca_24[arith_addi_195] = arith_addf_194; 
          int arith_addi_196 = (arith_addi_174 + arith_const_18); 
          int arith_addi_197 = (arith_addi_196 + arith_const_9); 
          double memref_load_198 = func_arg_2[arith_addi_197]; 
          double memref_load_199 = memref_alloca_23[arith_const_19]; 
          int arith_muli_200 = (arith_addi_196 * arith_const_13); 
          int arith_addi_201 = (arith_muli_200 + arith_addi_42); 
          int arith_addi_202 = (arith_addi_201 + arith_const_8); 
          double memref_load_203 = func_arg_2[arith_addi_202]; 
          double arith_mulf_204 = (memref_load_199 * memref_load_203); 
          double arith_addf_205 = (memref_load_198 + arith_mulf_204); 
          int arith_addi_206 = (arith_addi_196 + arith_const_9); 
          memref_alloca_24[arith_addi_206] = arith_addf_205; 
          int arith_addi_207 = (arith_addi_174 + arith_const_10); 
          int arith_addi_208 = (arith_addi_207 + arith_const_9); 
          double memref_load_209 = func_arg_2[arith_addi_208]; 
          double memref_load_210 = memref_alloca_23[arith_const_19]; 
          int arith_muli_211 = (arith_addi_207 * arith_const_13); 
          int arith_addi_212 = (arith_muli_211 + arith_addi_42); 
          int arith_addi_213 = (arith_addi_212 + arith_const_8); 
          double memref_load_214 = func_arg_2[arith_addi_213]; 
          double arith_mulf_215 = (memref_load_210 * memref_load_214); 
          double arith_addf_216 = (memref_load_209 + arith_mulf_215); 
          int arith_addi_217 = (arith_addi_207 + arith_const_9); 
          memref_alloca_24[arith_addi_217] = arith_addf_216; 
          PAST_SET_SEMAPHORE(execute_token_172, PAST_TASK_FINISHED); 
        }
        async_group_168[async_group_index_169] = execute_token_172; 
        async_group_index_169++; 
        int arith_addi_218 = (for_iter_arg_171 + arith_const_17); 
        for_iter_arg_171 = arith_addi_218; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_168, async_group_index_169, PAST_TASK_FINISHED); 
      int arith_muli_219 = (for_iter_35 * arith_const_16); 
      int arith_addi_220 = (for_iter_41 + arith_muli_219); 
      int arith_muli_221 = (for_iter_35 * arith_const_16); 
      int arith_addi_222 = (for_iter_41 + arith_muli_221); 
      int arith_addi_223 = (arith_addi_222 + arith_const_13); 
      int arith_cmpi_224 = (arith_addi_223 < arith_const_19); 
      int arith_subi_225 = (arith_const_13 - arith_addi_223); 
      int arith_select_226 = (arith_cmpi_224 ? arith_subi_225 : arith_addi_223); 
      int arith_divi_227 = (arith_select_226 / arith_const_11); 
      int arith_subi_228 = (arith_const_13 - arith_divi_227); 
      int arith_select_229 = (arith_cmpi_224 ? arith_subi_228 : arith_divi_227); 
      int arith_muli_230 = (arith_select_229 * arith_const_7); 
      int arith_addi_231 = (arith_addi_220 + arith_muli_230); 
      int arith_addi_232 = (arith_addi_231 + arith_const_13); 
      int* async_group_233; 
      int async_group_index_234 = 0; 
      int for_iter_arg_236 = arith_const_19; 
      for (int for_iter_235 = arith_const_19; for_iter_235 < arith_addi_232; for_iter_235 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_237); 
        #pragma peqc async_execute
        {
          int arith_addi_238 = (arith_addi_42 + arith_const_6); 
          int arith_cmpi_239 = (arith_addi_238 < arith_const_19); 
          int arith_subi_240 = (arith_const_13 - arith_addi_238); 
          int arith_select_241 = (arith_cmpi_239 ? arith_subi_240 : arith_addi_238); 
          int arith_divi_242 = (arith_select_241 / arith_const_11); 
          int arith_subi_243 = (arith_const_13 - arith_divi_242); 
          int arith_select_244 = (arith_cmpi_239 ? arith_subi_243 : arith_divi_242); 
          int arith_muli_245 = (arith_select_244 * arith_const_11); 
          int arith_addi_246 = (arith_muli_245 + for_iter_235); 
          int arith_addi_247 = (arith_addi_246 + arith_const_14); 
          int arith_addi_248 = (arith_addi_247 + arith_const_9); 
          double memref_load_249 = func_arg_2[arith_addi_248]; 
          double memref_load_250 = memref_alloca_23[arith_const_19]; 
          int arith_muli_251 = (arith_addi_247 * arith_const_13); 
          int arith_addi_252 = (arith_muli_251 + arith_addi_42); 
          int arith_addi_253 = (arith_addi_252 + arith_const_8); 
          double memref_load_254 = func_arg_2[arith_addi_253]; 
          double arith_mulf_255 = (memref_load_250 * memref_load_254); 
          double arith_addf_256 = (memref_load_249 + arith_mulf_255); 
          int arith_addi_257 = (arith_addi_247 + arith_const_9); 
          memref_alloca_24[arith_addi_257] = arith_addf_256; 
          PAST_SET_SEMAPHORE(execute_token_237, PAST_TASK_FINISHED); 
        }
        async_group_233[async_group_index_234] = execute_token_237; 
        async_group_index_234++; 
        int arith_addi_258 = (for_iter_arg_236 + arith_const_17); 
        for_iter_arg_236 = arith_addi_258; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_233, async_group_index_234, PAST_TASK_FINISHED); 
      int arith_muli_259 = (for_iter_35 * arith_const_16); 
      int arith_addi_260 = (for_iter_41 + arith_muli_259); 
      int arith_addi_261 = (arith_addi_260 + arith_const_13); 
      int arith_cmpi_262 = (arith_addi_261 >= arith_const_19); 
      if (arith_cmpi_262) {
        int arith_addi_263 = (arith_addi_42 + arith_const_13); 
        double memref_load_264 = func_arg_2[arith_addi_263]; 
        double memref_load_265 = memref_alloca_23[arith_const_19]; 
        double memref_load_266 = func_arg_2[arith_const_19]; 
        double arith_mulf_267 = (memref_load_265 * memref_load_266); 
        double arith_addf_268 = (memref_load_264 + arith_mulf_267); 
        int arith_addi_269 = (arith_addi_42 + arith_const_13); 
        memref_alloca_24[arith_addi_269] = arith_addf_268; 
        double memref_load_270 = memref_alloca_24[arith_const_19]; 
        func_arg_2[arith_const_19] = memref_load_270; 
      }
      int arith_muli_271 = (for_iter_35 * arith_const_12); 
      int arith_cmpi_272 = (for_iter_41 < arith_const_19); 
      int arith_subi_273 = (arith_const_13 - for_iter_41); 
      int arith_select_274 = (arith_cmpi_272 ? arith_subi_273 : for_iter_41); 
      int arith_divi_275 = (arith_select_274 / arith_const_11); 
      int arith_subi_276 = (arith_const_13 - arith_divi_275); 
      int arith_select_277 = (arith_cmpi_272 ? arith_subi_276 : arith_divi_275); 
      int arith_addi_278 = (arith_muli_271 + arith_select_277); 
      for (int for_iter_279 = arith_const_19; for_iter_279 < arith_addi_278; for_iter_279 += arith_const_17) {
        int arith_muli_280 = (for_iter_279 * arith_const_11); 
        int arith_addi_281 = (arith_addi_42 + arith_muli_280); 
        int arith_addi_282 = (arith_addi_281 + arith_const_5); 
        int arith_muli_283 = (arith_addi_42 * arith_const_13); 
        int arith_addi_284 = (arith_muli_283 + arith_addi_282); 
        int arith_addi_285 = (arith_addi_284 + arith_const_4); 
        double memref_load_286 = memref_alloca_24[arith_addi_285]; 
        int arith_muli_287 = (arith_addi_42 * arith_const_13); 
        int arith_addi_288 = (arith_muli_287 + arith_addi_282); 
        int arith_addi_289 = (arith_addi_288 + arith_const_4); 
        func_arg_2[arith_addi_289] = memref_load_286; 
        int arith_addi_290 = (arith_addi_282 + arith_const_17); 
        int arith_muli_291 = (arith_addi_42 * arith_const_13); 
        int arith_addi_292 = (arith_muli_291 + arith_addi_290); 
        int arith_addi_293 = (arith_addi_292 + arith_const_4); 
        double memref_load_294 = memref_alloca_24[arith_addi_293]; 
        int arith_muli_295 = (arith_addi_42 * arith_const_13); 
        int arith_addi_296 = (arith_muli_295 + arith_addi_290); 
        int arith_addi_297 = (arith_addi_296 + arith_const_4); 
        func_arg_2[arith_addi_297] = memref_load_294; 
        int arith_addi_298 = (arith_addi_282 + arith_const_18); 
        int arith_muli_299 = (arith_addi_42 * arith_const_13); 
        int arith_addi_300 = (arith_muli_299 + arith_addi_298); 
        int arith_addi_301 = (arith_addi_300 + arith_const_4); 
        double memref_load_302 = memref_alloca_24[arith_addi_301]; 
        int arith_muli_303 = (arith_addi_42 * arith_const_13); 
        int arith_addi_304 = (arith_muli_303 + arith_addi_298); 
        int arith_addi_305 = (arith_addi_304 + arith_const_4); 
        func_arg_2[arith_addi_305] = memref_load_302; 
        int arith_addi_306 = (arith_addi_282 + arith_const_10); 
        int arith_muli_307 = (arith_addi_42 * arith_const_13); 
        int arith_addi_308 = (arith_muli_307 + arith_addi_306); 
        int arith_addi_309 = (arith_addi_308 + arith_const_4); 
        double memref_load_310 = memref_alloca_24[arith_addi_309]; 
        int arith_muli_311 = (arith_addi_42 * arith_const_13); 
        int arith_addi_312 = (arith_muli_311 + arith_addi_306); 
        int arith_addi_313 = (arith_addi_312 + arith_const_4); 
        func_arg_2[arith_addi_313] = memref_load_310; 
      }
      int arith_remsi_314 = (for_iter_41 % arith_const_11); 
      int arith_cmpi_315 = (arith_remsi_314 < arith_const_19); 
      int arith_addi_316 = (arith_remsi_314 + arith_const_11); 
      int arith_select_317 = (arith_cmpi_315 ? arith_addi_316 : arith_remsi_314); 
      int* async_group_318; 
      int async_group_index_319 = 0; 
      int for_iter_arg_321 = arith_const_19; 
      for (int for_iter_320 = arith_const_19; for_iter_320 < arith_select_317; for_iter_320 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_322); 
        #pragma peqc async_execute
        {
          int arith_addi_323 = (arith_addi_42 + arith_const_13); 
          int arith_cmpi_324 = (arith_addi_323 < arith_const_19); 
          int arith_subi_325 = (arith_const_13 - arith_addi_323); 
          int arith_select_326 = (arith_cmpi_324 ? arith_subi_325 : arith_addi_323); 
          int arith_divi_327 = (arith_select_326 / arith_const_11); 
          int arith_subi_328 = (arith_const_13 - arith_divi_327); 
          int arith_select_329 = (arith_cmpi_324 ? arith_subi_328 : arith_divi_327); 
          int arith_muli_330 = (arith_select_329 * arith_const_11); 
          int arith_addi_331 = (arith_addi_42 + arith_muli_330); 
          int arith_addi_332 = (arith_addi_331 + for_iter_320); 
          int arith_addi_333 = (arith_addi_332 + arith_const_5); 
          int arith_muli_334 = (arith_addi_42 * arith_const_13); 
          int arith_addi_335 = (arith_muli_334 + arith_addi_333); 
          int arith_addi_336 = (arith_addi_335 + arith_const_4); 
          double memref_load_337 = memref_alloca_24[arith_addi_336]; 
          int arith_muli_338 = (arith_addi_42 * arith_const_13); 
          int arith_addi_339 = (arith_muli_338 + arith_addi_333); 
          int arith_addi_340 = (arith_addi_339 + arith_const_4); 
          func_arg_2[arith_addi_340] = memref_load_337; 
          PAST_SET_SEMAPHORE(execute_token_322, PAST_TASK_FINISHED); 
        }
        async_group_318[async_group_index_319] = execute_token_322; 
        async_group_index_319++; 
        int arith_addi_341 = (for_iter_arg_321 + arith_const_17); 
        for_iter_arg_321 = arith_addi_341; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_318, async_group_index_319, PAST_TASK_FINISHED); 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;

#pragma peqc async_execute
{
  kernel_durbin(n, r, y);
}
}

#pragma pocc-region-end
