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
  double _22; 
  double* memref_alloca_23; 
  double* memref_alloca_24; 
  double* memref_alloca_25; 
  double* memref_alloca_26; 
  double* memref_alloca_27; 
  double* memref_alloca_28; 
  double memref_load_29 = func_arg_1[arith_const_19]; 
  double arith_negf_30 = -(memref_load_29); 
  func_arg_2[arith_const_19] = arith_negf_30; 
  memref_alloca_27[0] = _22; 
  double memref_load_31 = func_arg_1[arith_const_19]; 
  double arith_negf_32 = -(memref_load_31); 
  memref_alloca_27[0] = arith_negf_32; 
  memref_alloca_26[0] = _22; 
  memref_alloca_26[0] = arith_const_21; 
  memref_alloca_23[0] = _22; 
  for (int for_iter_33 = arith_const_19; for_iter_33 < arith_const_18; for_iter_33 += arith_const_17) {
    int arith_muli_34 = (for_iter_33 * arith_const_16); 
    int arith_addi_35 = (arith_muli_34 + arith_const_17); 
    int arith_muli_36 = (for_iter_33 * arith_const_15); 
    int arith_addi_37 = (arith_muli_36 + arith_const_14); 
    int arith_minsi_38 = min(arith_addi_37, arith_const_16); 
    for (int for_iter_39 = arith_const_19; for_iter_39 < arith_minsi_38; for_iter_39 += arith_const_17) {
      int arith_addi_40 = (arith_addi_35 + for_iter_39); 
      memref_alloca_23[0] = arith_const_20; 
      double memref_load_41 = memref_alloca_23[0]; 
      int arith_addi_42 = (arith_addi_40 + arith_const_13); 
      double memref_load_43 = func_arg_1[arith_addi_42]; 
      double memref_load_44 = func_arg_2[arith_const_19]; 
      double arith_mulf_45 = (memref_load_43 * memref_load_44); 
      double arith_addf_46 = (memref_load_41 + arith_mulf_45); 
      memref_alloca_23[0] = arith_addf_46; 
      double memref_load_47 = memref_alloca_26[0]; 
      double memref_load_48 = memref_alloca_27[0]; 
      double arith_mulf_49 = (memref_load_48 * memref_load_48); 
      double arith_subf_50 = (memref_load_47 - arith_mulf_49); 
      double memref_load_51 = memref_alloca_26[0]; 
      double arith_mulf_52 = (arith_subf_50 * memref_load_51); 
      memref_alloca_26[0] = arith_mulf_52; 
      int arith_muli_53 = (for_iter_33 * arith_const_12); 
      int arith_cmpi_54 = (for_iter_39 < arith_const_19); 
      int arith_subi_55 = (arith_const_13 - for_iter_39); 
      int arith_select_56 = (arith_cmpi_54 ? arith_subi_55 : for_iter_39); 
      int arith_divi_57 = (arith_select_56 / arith_const_11); 
      int arith_subi_58 = (arith_const_13 - arith_divi_57); 
      int arith_select_59 = (arith_cmpi_54 ? arith_subi_58 : arith_divi_57); 
      int arith_addi_60 = (arith_muli_53 + arith_select_59); 
      for (int for_iter_61 = arith_const_19; for_iter_61 < arith_addi_60; for_iter_61 += arith_const_17) {
        int arith_muli_62 = (for_iter_61 * arith_const_11); 
        int arith_addi_63 = (arith_muli_62 + arith_const_17); 
        double memref_load_64 = memref_alloca_23[0]; 
        int arith_muli_65 = (arith_addi_63 * arith_const_13); 
        int arith_addi_66 = (arith_addi_40 + arith_muli_65); 
        int arith_addi_67 = (arith_addi_66 + arith_const_13); 
        double memref_load_68 = func_arg_1[arith_addi_67]; 
        double memref_load_69 = func_arg_2[arith_addi_63]; 
        double arith_mulf_70 = (memref_load_68 * memref_load_69); 
        double arith_addf_71 = (memref_load_64 + arith_mulf_70); 
        memref_alloca_23[0] = arith_addf_71; 
        int arith_addi_72 = (arith_addi_63 + arith_const_17); 
        double memref_load_73 = memref_alloca_23[0]; 
        int arith_muli_74 = (arith_addi_72 * arith_const_13); 
        int arith_addi_75 = (arith_addi_40 + arith_muli_74); 
        int arith_addi_76 = (arith_addi_75 + arith_const_13); 
        double memref_load_77 = func_arg_1[arith_addi_76]; 
        double memref_load_78 = func_arg_2[arith_addi_72]; 
        double arith_mulf_79 = (memref_load_77 * memref_load_78); 
        double arith_addf_80 = (memref_load_73 + arith_mulf_79); 
        memref_alloca_23[0] = arith_addf_80; 
        int arith_addi_81 = (arith_addi_63 + arith_const_18); 
        double memref_load_82 = memref_alloca_23[0]; 
        int arith_muli_83 = (arith_addi_81 * arith_const_13); 
        int arith_addi_84 = (arith_addi_40 + arith_muli_83); 
        int arith_addi_85 = (arith_addi_84 + arith_const_13); 
        double memref_load_86 = func_arg_1[arith_addi_85]; 
        double memref_load_87 = func_arg_2[arith_addi_81]; 
        double arith_mulf_88 = (memref_load_86 * memref_load_87); 
        double arith_addf_89 = (memref_load_82 + arith_mulf_88); 
        memref_alloca_23[0] = arith_addf_89; 
        int arith_addi_90 = (arith_addi_63 + arith_const_10); 
        double memref_load_91 = memref_alloca_23[0]; 
        int arith_muli_92 = (arith_addi_90 * arith_const_13); 
        int arith_addi_93 = (arith_addi_40 + arith_muli_92); 
        int arith_addi_94 = (arith_addi_93 + arith_const_13); 
        double memref_load_95 = func_arg_1[arith_addi_94]; 
        double memref_load_96 = func_arg_2[arith_addi_90]; 
        double arith_mulf_97 = (memref_load_95 * memref_load_96); 
        double arith_addf_98 = (memref_load_91 + arith_mulf_97); 
        memref_alloca_23[0] = arith_addf_98; 
      }
      int arith_remsi_99 = (for_iter_39 % arith_const_11); 
      int arith_cmpi_100 = (arith_remsi_99 < arith_const_19); 
      int arith_addi_101 = (arith_remsi_99 + arith_const_11); 
      int arith_select_102 = (arith_cmpi_100 ? arith_addi_101 : arith_remsi_99); 
      for (int for_iter_103 = arith_const_19; for_iter_103 < arith_select_102; for_iter_103 += arith_const_17) {
        int arith_addi_104 = (arith_addi_40 + arith_const_13); 
        int arith_cmpi_105 = (arith_addi_104 < arith_const_19); 
        int arith_subi_106 = (arith_const_13 - arith_addi_104); 
        int arith_select_107 = (arith_cmpi_105 ? arith_subi_106 : arith_addi_104); 
        int arith_divi_108 = (arith_select_107 / arith_const_11); 
        int arith_subi_109 = (arith_const_13 - arith_divi_108); 
        int arith_select_110 = (arith_cmpi_105 ? arith_subi_109 : arith_divi_108); 
        int arith_muli_111 = (arith_select_110 * arith_const_11); 
        int arith_addi_112 = (for_iter_103 + arith_muli_111); 
        int arith_addi_113 = (arith_addi_112 + arith_const_17); 
        double memref_load_114 = memref_alloca_23[0]; 
        int arith_muli_115 = (arith_addi_113 * arith_const_13); 
        int arith_addi_116 = (arith_addi_40 + arith_muli_115); 
        int arith_addi_117 = (arith_addi_116 + arith_const_13); 
        double memref_load_118 = func_arg_1[arith_addi_117]; 
        double memref_load_119 = func_arg_2[arith_addi_113]; 
        double arith_mulf_120 = (memref_load_118 * memref_load_119); 
        double arith_addf_121 = (memref_load_114 + arith_mulf_120); 
        memref_alloca_23[0] = arith_addf_121; 
      }
      int arith_muli_122 = (for_iter_33 * arith_const_16); 
      int arith_addi_123 = (for_iter_39 + arith_muli_122); 
      int arith_cmpi_124 = (arith_addi_123 == arith_const_19); 
      if (arith_cmpi_124) {
        double memref_load_125 = func_arg_1[arith_const_17]; 
        double memref_load_126 = memref_alloca_23[0]; 
        double arith_addf_127 = (memref_load_125 + memref_load_126); 
        double arith_negf_128 = -(arith_addf_127); 
        double memref_load_129 = memref_alloca_26[0]; 
        double arith_divf_130 = (arith_negf_128 / memref_load_129); 
        memref_alloca_24[arith_const_19] = arith_divf_130; 
        double memref_load_131 = func_arg_2[arith_const_19]; 
        double memref_load_132 = memref_alloca_24[arith_const_19]; 
        double memref_load_133 = func_arg_2[arith_const_19]; 
        double arith_mulf_134 = (memref_load_132 * memref_load_133); 
        double arith_addf_135 = (memref_load_131 + arith_mulf_134); 
        memref_alloca_25[arith_const_19] = arith_addf_135; 
        double memref_load_136 = memref_alloca_25[arith_const_19]; 
        func_arg_2[arith_const_19] = memref_load_136; 
        double memref_load_137 = memref_alloca_24[arith_const_19]; 
        memref_alloca_28[arith_const_19] = memref_load_137; 
        memref_alloca_27[0] = memref_load_137; 
        double memref_load_138 = memref_alloca_28[arith_const_19]; 
        func_arg_2[arith_const_17] = memref_load_138; 
      }
      int arith_muli_139 = (for_iter_33 * arith_const_16); 
      int arith_addi_140 = (for_iter_39 + arith_muli_139); 
      int arith_addi_141 = (arith_addi_140 + arith_const_13); 
      int arith_cmpi_142 = (arith_addi_141 >= arith_const_19); 
      if (arith_cmpi_142) {
        double memref_load_143 = func_arg_1[arith_addi_40]; 
        double memref_load_144 = memref_alloca_23[0]; 
        double arith_addf_145 = (memref_load_143 + memref_load_144); 
        double arith_negf_146 = -(arith_addf_145); 
        double memref_load_147 = memref_alloca_26[0]; 
        double arith_divf_148 = (arith_negf_146 / memref_load_147); 
        memref_alloca_24[arith_const_19] = arith_divf_148; 
        double memref_load_149 = func_arg_2[arith_const_19]; 
        double memref_load_150 = memref_alloca_24[arith_const_19]; 
        int arith_addi_151 = (arith_addi_40 + arith_const_13); 
        double memref_load_152 = func_arg_2[arith_addi_151]; 
        double arith_mulf_153 = (memref_load_150 * memref_load_152); 
        double arith_addf_154 = (memref_load_149 + arith_mulf_153); 
        memref_alloca_25[arith_const_19] = arith_addf_154; 
        double memref_load_155 = memref_alloca_24[arith_const_19]; 
        memref_alloca_28[arith_const_19] = memref_load_155; 
        memref_alloca_27[0] = memref_load_155; 
        double memref_load_156 = memref_alloca_28[arith_const_19]; 
        func_arg_2[arith_addi_40] = memref_load_156; 
      }
      int arith_muli_157 = (for_iter_33 * arith_const_16); 
      int arith_addi_158 = (for_iter_39 + arith_muli_157); 
      int arith_addi_159 = (arith_addi_158 + arith_const_13); 
      int arith_cmpi_160 = (arith_addi_159 < arith_const_19); 
      int arith_subi_161 = (arith_const_13 - arith_addi_159); 
      int arith_select_162 = (arith_cmpi_160 ? arith_subi_161 : arith_addi_159); 
      int arith_divi_163 = (arith_select_162 / arith_const_11); 
      int arith_subi_164 = (arith_const_13 - arith_divi_163); 
      int arith_select_165 = (arith_cmpi_160 ? arith_subi_164 : arith_divi_163); 
      int* async_group_166; 
      int async_group_index_167 = 0; 
      int for_iter_arg_169 = arith_const_19; 
      for (int for_iter_168 = arith_const_19; for_iter_168 < arith_select_165; for_iter_168 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_170); 
        #pragma peqc async_execute
        {
          int arith_muli_171 = (for_iter_168 * arith_const_11); 
          int arith_addi_172 = (arith_muli_171 + arith_const_14); 
          int arith_addi_173 = (arith_addi_172 + arith_const_9); 
          double memref_load_174 = func_arg_2[arith_addi_173]; 
          double memref_load_175 = memref_alloca_24[arith_const_19]; 
          int arith_muli_176 = (arith_addi_172 * arith_const_13); 
          int arith_addi_177 = (arith_muli_176 + arith_addi_40); 
          int arith_addi_178 = (arith_addi_177 + arith_const_8); 
          double memref_load_179 = func_arg_2[arith_addi_178]; 
          double arith_mulf_180 = (memref_load_175 * memref_load_179); 
          double arith_addf_181 = (memref_load_174 + arith_mulf_180); 
          int arith_addi_182 = (arith_addi_172 + arith_const_9); 
          memref_alloca_25[arith_addi_182] = arith_addf_181; 
          int arith_addi_183 = (arith_addi_172 + arith_const_17); 
          int arith_addi_184 = (arith_addi_183 + arith_const_9); 
          double memref_load_185 = func_arg_2[arith_addi_184]; 
          double memref_load_186 = memref_alloca_24[arith_const_19]; 
          int arith_muli_187 = (arith_addi_183 * arith_const_13); 
          int arith_addi_188 = (arith_muli_187 + arith_addi_40); 
          int arith_addi_189 = (arith_addi_188 + arith_const_8); 
          double memref_load_190 = func_arg_2[arith_addi_189]; 
          double arith_mulf_191 = (memref_load_186 * memref_load_190); 
          double arith_addf_192 = (memref_load_185 + arith_mulf_191); 
          int arith_addi_193 = (arith_addi_183 + arith_const_9); 
          memref_alloca_25[arith_addi_193] = arith_addf_192; 
          int arith_addi_194 = (arith_addi_172 + arith_const_18); 
          int arith_addi_195 = (arith_addi_194 + arith_const_9); 
          double memref_load_196 = func_arg_2[arith_addi_195]; 
          double memref_load_197 = memref_alloca_24[arith_const_19]; 
          int arith_muli_198 = (arith_addi_194 * arith_const_13); 
          int arith_addi_199 = (arith_muli_198 + arith_addi_40); 
          int arith_addi_200 = (arith_addi_199 + arith_const_8); 
          double memref_load_201 = func_arg_2[arith_addi_200]; 
          double arith_mulf_202 = (memref_load_197 * memref_load_201); 
          double arith_addf_203 = (memref_load_196 + arith_mulf_202); 
          int arith_addi_204 = (arith_addi_194 + arith_const_9); 
          memref_alloca_25[arith_addi_204] = arith_addf_203; 
          int arith_addi_205 = (arith_addi_172 + arith_const_10); 
          int arith_addi_206 = (arith_addi_205 + arith_const_9); 
          double memref_load_207 = func_arg_2[arith_addi_206]; 
          double memref_load_208 = memref_alloca_24[arith_const_19]; 
          int arith_muli_209 = (arith_addi_205 * arith_const_13); 
          int arith_addi_210 = (arith_muli_209 + arith_addi_40); 
          int arith_addi_211 = (arith_addi_210 + arith_const_8); 
          double memref_load_212 = func_arg_2[arith_addi_211]; 
          double arith_mulf_213 = (memref_load_208 * memref_load_212); 
          double arith_addf_214 = (memref_load_207 + arith_mulf_213); 
          int arith_addi_215 = (arith_addi_205 + arith_const_9); 
          memref_alloca_25[arith_addi_215] = arith_addf_214; 
          PAST_SET_SEMAPHORE(execute_token_170, PAST_TASK_FINISHED); 
        }
        async_group_166[async_group_index_167] = execute_token_170; 
        async_group_index_167++; 
        int arith_addi_216 = (for_iter_arg_169 + arith_const_17); 
        for_iter_arg_169 = arith_addi_216; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_166, async_group_index_167, PAST_TASK_FINISHED); 
      int arith_muli_217 = (for_iter_33 * arith_const_16); 
      int arith_addi_218 = (for_iter_39 + arith_muli_217); 
      int arith_muli_219 = (for_iter_33 * arith_const_16); 
      int arith_addi_220 = (for_iter_39 + arith_muli_219); 
      int arith_addi_221 = (arith_addi_220 + arith_const_13); 
      int arith_cmpi_222 = (arith_addi_221 < arith_const_19); 
      int arith_subi_223 = (arith_const_13 - arith_addi_221); 
      int arith_select_224 = (arith_cmpi_222 ? arith_subi_223 : arith_addi_221); 
      int arith_divi_225 = (arith_select_224 / arith_const_11); 
      int arith_subi_226 = (arith_const_13 - arith_divi_225); 
      int arith_select_227 = (arith_cmpi_222 ? arith_subi_226 : arith_divi_225); 
      int arith_muli_228 = (arith_select_227 * arith_const_7); 
      int arith_addi_229 = (arith_addi_218 + arith_muli_228); 
      int arith_addi_230 = (arith_addi_229 + arith_const_13); 
      int* async_group_231; 
      int async_group_index_232 = 0; 
      int for_iter_arg_234 = arith_const_19; 
      for (int for_iter_233 = arith_const_19; for_iter_233 < arith_addi_230; for_iter_233 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_235); 
        #pragma peqc async_execute
        {
          int arith_addi_236 = (arith_addi_40 + arith_const_6); 
          int arith_cmpi_237 = (arith_addi_236 < arith_const_19); 
          int arith_subi_238 = (arith_const_13 - arith_addi_236); 
          int arith_select_239 = (arith_cmpi_237 ? arith_subi_238 : arith_addi_236); 
          int arith_divi_240 = (arith_select_239 / arith_const_11); 
          int arith_subi_241 = (arith_const_13 - arith_divi_240); 
          int arith_select_242 = (arith_cmpi_237 ? arith_subi_241 : arith_divi_240); 
          int arith_muli_243 = (arith_select_242 * arith_const_11); 
          int arith_addi_244 = (arith_muli_243 + for_iter_233); 
          int arith_addi_245 = (arith_addi_244 + arith_const_14); 
          int arith_addi_246 = (arith_addi_245 + arith_const_9); 
          double memref_load_247 = func_arg_2[arith_addi_246]; 
          double memref_load_248 = memref_alloca_24[arith_const_19]; 
          int arith_muli_249 = (arith_addi_245 * arith_const_13); 
          int arith_addi_250 = (arith_muli_249 + arith_addi_40); 
          int arith_addi_251 = (arith_addi_250 + arith_const_8); 
          double memref_load_252 = func_arg_2[arith_addi_251]; 
          double arith_mulf_253 = (memref_load_248 * memref_load_252); 
          double arith_addf_254 = (memref_load_247 + arith_mulf_253); 
          int arith_addi_255 = (arith_addi_245 + arith_const_9); 
          memref_alloca_25[arith_addi_255] = arith_addf_254; 
          PAST_SET_SEMAPHORE(execute_token_235, PAST_TASK_FINISHED); 
        }
        async_group_231[async_group_index_232] = execute_token_235; 
        async_group_index_232++; 
        int arith_addi_256 = (for_iter_arg_234 + arith_const_17); 
        for_iter_arg_234 = arith_addi_256; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_231, async_group_index_232, PAST_TASK_FINISHED); 
      int arith_muli_257 = (for_iter_33 * arith_const_16); 
      int arith_addi_258 = (for_iter_39 + arith_muli_257); 
      int arith_addi_259 = (arith_addi_258 + arith_const_13); 
      int arith_cmpi_260 = (arith_addi_259 >= arith_const_19); 
      if (arith_cmpi_260) {
        int arith_addi_261 = (arith_addi_40 + arith_const_13); 
        double memref_load_262 = func_arg_2[arith_addi_261]; 
        double memref_load_263 = memref_alloca_24[arith_const_19]; 
        double memref_load_264 = func_arg_2[arith_const_19]; 
        double arith_mulf_265 = (memref_load_263 * memref_load_264); 
        double arith_addf_266 = (memref_load_262 + arith_mulf_265); 
        int arith_addi_267 = (arith_addi_40 + arith_const_13); 
        memref_alloca_25[arith_addi_267] = arith_addf_266; 
        double memref_load_268 = memref_alloca_25[arith_const_19]; 
        func_arg_2[arith_const_19] = memref_load_268; 
      }
      int arith_muli_269 = (for_iter_33 * arith_const_12); 
      int arith_cmpi_270 = (for_iter_39 < arith_const_19); 
      int arith_subi_271 = (arith_const_13 - for_iter_39); 
      int arith_select_272 = (arith_cmpi_270 ? arith_subi_271 : for_iter_39); 
      int arith_divi_273 = (arith_select_272 / arith_const_11); 
      int arith_subi_274 = (arith_const_13 - arith_divi_273); 
      int arith_select_275 = (arith_cmpi_270 ? arith_subi_274 : arith_divi_273); 
      int arith_addi_276 = (arith_muli_269 + arith_select_275); 
      for (int for_iter_277 = arith_const_19; for_iter_277 < arith_addi_276; for_iter_277 += arith_const_17) {
        int arith_muli_278 = (for_iter_277 * arith_const_11); 
        int arith_addi_279 = (arith_addi_40 + arith_muli_278); 
        int arith_addi_280 = (arith_addi_279 + arith_const_5); 
        int arith_muli_281 = (arith_addi_40 * arith_const_13); 
        int arith_addi_282 = (arith_muli_281 + arith_addi_280); 
        int arith_addi_283 = (arith_addi_282 + arith_const_4); 
        double memref_load_284 = memref_alloca_25[arith_addi_283]; 
        int arith_muli_285 = (arith_addi_40 * arith_const_13); 
        int arith_addi_286 = (arith_muli_285 + arith_addi_280); 
        int arith_addi_287 = (arith_addi_286 + arith_const_4); 
        func_arg_2[arith_addi_287] = memref_load_284; 
        int arith_addi_288 = (arith_addi_280 + arith_const_17); 
        int arith_muli_289 = (arith_addi_40 * arith_const_13); 
        int arith_addi_290 = (arith_muli_289 + arith_addi_288); 
        int arith_addi_291 = (arith_addi_290 + arith_const_4); 
        double memref_load_292 = memref_alloca_25[arith_addi_291]; 
        int arith_muli_293 = (arith_addi_40 * arith_const_13); 
        int arith_addi_294 = (arith_muli_293 + arith_addi_288); 
        int arith_addi_295 = (arith_addi_294 + arith_const_4); 
        func_arg_2[arith_addi_295] = memref_load_292; 
        int arith_addi_296 = (arith_addi_280 + arith_const_18); 
        int arith_muli_297 = (arith_addi_40 * arith_const_13); 
        int arith_addi_298 = (arith_muli_297 + arith_addi_296); 
        int arith_addi_299 = (arith_addi_298 + arith_const_4); 
        double memref_load_300 = memref_alloca_25[arith_addi_299]; 
        int arith_muli_301 = (arith_addi_40 * arith_const_13); 
        int arith_addi_302 = (arith_muli_301 + arith_addi_296); 
        int arith_addi_303 = (arith_addi_302 + arith_const_4); 
        func_arg_2[arith_addi_303] = memref_load_300; 
        int arith_addi_304 = (arith_addi_280 + arith_const_10); 
        int arith_muli_305 = (arith_addi_40 * arith_const_13); 
        int arith_addi_306 = (arith_muli_305 + arith_addi_304); 
        int arith_addi_307 = (arith_addi_306 + arith_const_4); 
        double memref_load_308 = memref_alloca_25[arith_addi_307]; 
        int arith_muli_309 = (arith_addi_40 * arith_const_13); 
        int arith_addi_310 = (arith_muli_309 + arith_addi_304); 
        int arith_addi_311 = (arith_addi_310 + arith_const_4); 
        func_arg_2[arith_addi_311] = memref_load_308; 
      }
      int arith_remsi_312 = (for_iter_39 % arith_const_11); 
      int arith_cmpi_313 = (arith_remsi_312 < arith_const_19); 
      int arith_addi_314 = (arith_remsi_312 + arith_const_11); 
      int arith_select_315 = (arith_cmpi_313 ? arith_addi_314 : arith_remsi_312); 
      int* async_group_316; 
      int async_group_index_317 = 0; 
      int for_iter_arg_319 = arith_const_19; 
      for (int for_iter_318 = arith_const_19; for_iter_318 < arith_select_315; for_iter_318 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_320); 
        #pragma peqc async_execute
        {
          int arith_addi_321 = (arith_addi_40 + arith_const_13); 
          int arith_cmpi_322 = (arith_addi_321 < arith_const_19); 
          int arith_subi_323 = (arith_const_13 - arith_addi_321); 
          int arith_select_324 = (arith_cmpi_322 ? arith_subi_323 : arith_addi_321); 
          int arith_divi_325 = (arith_select_324 / arith_const_11); 
          int arith_subi_326 = (arith_const_13 - arith_divi_325); 
          int arith_select_327 = (arith_cmpi_322 ? arith_subi_326 : arith_divi_325); 
          int arith_muli_328 = (arith_select_327 * arith_const_11); 
          int arith_addi_329 = (arith_addi_40 + arith_muli_328); 
          int arith_addi_330 = (arith_addi_329 + for_iter_318); 
          int arith_addi_331 = (arith_addi_330 + arith_const_5); 
          int arith_muli_332 = (arith_addi_40 * arith_const_13); 
          int arith_addi_333 = (arith_muli_332 + arith_addi_331); 
          int arith_addi_334 = (arith_addi_333 + arith_const_4); 
          double memref_load_335 = memref_alloca_25[arith_addi_334]; 
          int arith_muli_336 = (arith_addi_40 * arith_const_13); 
          int arith_addi_337 = (arith_muli_336 + arith_addi_331); 
          int arith_addi_338 = (arith_addi_337 + arith_const_4); 
          func_arg_2[arith_addi_338] = memref_load_335; 
          PAST_SET_SEMAPHORE(execute_token_320, PAST_TASK_FINISHED); 
        }
        async_group_316[async_group_index_317] = execute_token_320; 
        async_group_index_317++; 
        int arith_addi_339 = (for_iter_arg_319 + arith_const_17); 
        for_iter_arg_319 = arith_addi_339; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_316, async_group_index_317, PAST_TASK_FINISHED); 
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
