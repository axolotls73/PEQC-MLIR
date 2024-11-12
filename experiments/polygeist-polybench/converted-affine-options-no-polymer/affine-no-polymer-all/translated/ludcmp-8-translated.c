#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_ludcmp(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 39; 
  int arith_const_6 = 40; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 1; 
  int arith_const_13 = 10; 
  int arith_const_14 = 0; 
  double* memref_alloca_15; 
  double _16; 
  memref_alloca_15[0] = _16; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_13; for_iter_17 += arith_const_12) {
    int arith_muli_18 = (for_iter_17 * arith_const_11); 
    for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_11; for_iter_19 += arith_const_12) {
      int arith_addi_20 = (arith_muli_18 + for_iter_19); 
      int arith_muli_21 = (for_iter_17 * arith_const_11); 
      int arith_addi_22 = (for_iter_19 + arith_muli_21); 
      for (int for_iter_23 = arith_const_14; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_12) {
        double memref_load_24 = func_arg_1[arith_addi_20][for_iter_23]; 
        memref_alloca_15[0] = memref_load_24; 
        int arith_cmpi_25 = (for_iter_23 < arith_const_14); 
        int arith_subi_26 = (arith_const_10 - for_iter_23); 
        int arith_select_27 = (arith_cmpi_25 ? arith_subi_26 : for_iter_23); 
        int arith_divi_28 = (arith_select_27 / arith_const_11); 
        int arith_subi_29 = (arith_const_10 - arith_divi_28); 
        int arith_select_30 = (arith_cmpi_25 ? arith_subi_29 : arith_divi_28); 
        for (int for_iter_31 = arith_const_14; for_iter_31 < arith_select_30; for_iter_31 += arith_const_12) {
          int arith_muli_32 = (for_iter_31 * arith_const_11); 
          double memref_load_33 = func_arg_1[arith_addi_20][arith_muli_32]; 
          double memref_load_34 = func_arg_1[arith_muli_32][for_iter_23]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double memref_load_36 = memref_alloca_15[0]; 
          double arith_subf_37 = (memref_load_36 - arith_mulf_35); 
          memref_alloca_15[0] = arith_subf_37; 
          int arith_addi_38 = (arith_muli_32 + arith_const_12); 
          double memref_load_39 = func_arg_1[arith_addi_20][arith_addi_38]; 
          double memref_load_40 = func_arg_1[arith_addi_38][for_iter_23]; 
          double arith_mulf_41 = (memref_load_39 * memref_load_40); 
          double memref_load_42 = memref_alloca_15[0]; 
          double arith_subf_43 = (memref_load_42 - arith_mulf_41); 
          memref_alloca_15[0] = arith_subf_43; 
          int arith_addi_44 = (arith_muli_32 + arith_const_9); 
          double memref_load_45 = func_arg_1[arith_addi_20][arith_addi_44]; 
          double memref_load_46 = func_arg_1[arith_addi_44][for_iter_23]; 
          double arith_mulf_47 = (memref_load_45 * memref_load_46); 
          double memref_load_48 = memref_alloca_15[0]; 
          double arith_subf_49 = (memref_load_48 - arith_mulf_47); 
          memref_alloca_15[0] = arith_subf_49; 
          int arith_addi_50 = (arith_muli_32 + arith_const_8); 
          double memref_load_51 = func_arg_1[arith_addi_20][arith_addi_50]; 
          double memref_load_52 = func_arg_1[arith_addi_50][for_iter_23]; 
          double arith_mulf_53 = (memref_load_51 * memref_load_52); 
          double memref_load_54 = memref_alloca_15[0]; 
          double arith_subf_55 = (memref_load_54 - arith_mulf_53); 
          memref_alloca_15[0] = arith_subf_55; 
        }
        int arith_remsi_56 = (for_iter_23 % arith_const_11); 
        int arith_cmpi_57 = (arith_remsi_56 < arith_const_14); 
        int arith_addi_58 = (arith_remsi_56 + arith_const_11); 
        int arith_select_59 = (arith_cmpi_57 ? arith_addi_58 : arith_remsi_56); 
        for (int for_iter_60 = arith_const_14; for_iter_60 < arith_select_59; for_iter_60 += arith_const_12) {
          int arith_cmpi_61 = (for_iter_23 < arith_const_14); 
          int arith_subi_62 = (arith_const_10 - for_iter_23); 
          int arith_select_63 = (arith_cmpi_61 ? arith_subi_62 : for_iter_23); 
          int arith_divi_64 = (arith_select_63 / arith_const_11); 
          int arith_subi_65 = (arith_const_10 - arith_divi_64); 
          int arith_select_66 = (arith_cmpi_61 ? arith_subi_65 : arith_divi_64); 
          int arith_muli_67 = (arith_select_66 * arith_const_11); 
          int arith_addi_68 = (for_iter_60 + arith_muli_67); 
          double memref_load_69 = func_arg_1[arith_addi_20][arith_addi_68]; 
          double memref_load_70 = func_arg_1[arith_addi_68][for_iter_23]; 
          double arith_mulf_71 = (memref_load_69 * memref_load_70); 
          double memref_load_72 = memref_alloca_15[0]; 
          double arith_subf_73 = (memref_load_72 - arith_mulf_71); 
          memref_alloca_15[0] = arith_subf_73; 
        }
        double memref_load_74 = memref_alloca_15[0]; 
        double memref_load_75 = func_arg_1[for_iter_23][for_iter_23]; 
        double arith_divf_76 = (memref_load_74 / memref_load_75); 
        func_arg_1[arith_addi_20][for_iter_23] = arith_divf_76; 
      }
      int arith_muli_77 = (for_iter_19 * arith_const_10); 
      int arith_muli_78 = (for_iter_17 * arith_const_7); 
      int arith_addi_79 = (arith_muli_77 + arith_muli_78); 
      int arith_addi_80 = (arith_addi_79 + arith_const_6); 
      for (int for_iter_81 = arith_const_14; for_iter_81 < arith_addi_80; for_iter_81 += arith_const_12) {
        int arith_addi_82 = (arith_addi_20 + for_iter_81); 
        double memref_load_83 = func_arg_1[arith_addi_20][arith_addi_82]; 
        memref_alloca_15[0] = memref_load_83; 
        int arith_cmpi_84 = (for_iter_19 < arith_const_14); 
        int arith_subi_85 = (arith_const_10 - for_iter_19); 
        int arith_select_86 = (arith_cmpi_84 ? arith_subi_85 : for_iter_19); 
        int arith_divi_87 = (arith_select_86 / arith_const_11); 
        int arith_subi_88 = (arith_const_10 - arith_divi_87); 
        int arith_select_89 = (arith_cmpi_84 ? arith_subi_88 : arith_divi_87); 
        int arith_addi_90 = (for_iter_17 + arith_select_89); 
        for (int for_iter_91 = arith_const_14; for_iter_91 < arith_addi_90; for_iter_91 += arith_const_12) {
          int arith_muli_92 = (for_iter_91 * arith_const_11); 
          double memref_load_93 = func_arg_1[arith_addi_20][arith_muli_92]; 
          double memref_load_94 = func_arg_1[arith_muli_92][arith_addi_82]; 
          double arith_mulf_95 = (memref_load_93 * memref_load_94); 
          double memref_load_96 = memref_alloca_15[0]; 
          double arith_subf_97 = (memref_load_96 - arith_mulf_95); 
          memref_alloca_15[0] = arith_subf_97; 
          int arith_addi_98 = (arith_muli_92 + arith_const_12); 
          double memref_load_99 = func_arg_1[arith_addi_20][arith_addi_98]; 
          double memref_load_100 = func_arg_1[arith_addi_98][arith_addi_82]; 
          double arith_mulf_101 = (memref_load_99 * memref_load_100); 
          double memref_load_102 = memref_alloca_15[0]; 
          double arith_subf_103 = (memref_load_102 - arith_mulf_101); 
          memref_alloca_15[0] = arith_subf_103; 
          int arith_addi_104 = (arith_muli_92 + arith_const_9); 
          double memref_load_105 = func_arg_1[arith_addi_20][arith_addi_104]; 
          double memref_load_106 = func_arg_1[arith_addi_104][arith_addi_82]; 
          double arith_mulf_107 = (memref_load_105 * memref_load_106); 
          double memref_load_108 = memref_alloca_15[0]; 
          double arith_subf_109 = (memref_load_108 - arith_mulf_107); 
          memref_alloca_15[0] = arith_subf_109; 
          int arith_addi_110 = (arith_muli_92 + arith_const_8); 
          double memref_load_111 = func_arg_1[arith_addi_20][arith_addi_110]; 
          double memref_load_112 = func_arg_1[arith_addi_110][arith_addi_82]; 
          double arith_mulf_113 = (memref_load_111 * memref_load_112); 
          double memref_load_114 = memref_alloca_15[0]; 
          double arith_subf_115 = (memref_load_114 - arith_mulf_113); 
          memref_alloca_15[0] = arith_subf_115; 
        }
        int arith_remsi_116 = (arith_addi_20 % arith_const_11); 
        int arith_cmpi_117 = (arith_remsi_116 < arith_const_14); 
        int arith_addi_118 = (arith_remsi_116 + arith_const_11); 
        int arith_select_119 = (arith_cmpi_117 ? arith_addi_118 : arith_remsi_116); 
        for (int for_iter_120 = arith_const_14; for_iter_120 < arith_select_119; for_iter_120 += arith_const_12) {
          int arith_cmpi_121 = (arith_addi_20 < arith_const_14); 
          int arith_subi_122 = (arith_const_10 - arith_addi_20); 
          int arith_select_123 = (arith_cmpi_121 ? arith_subi_122 : arith_addi_20); 
          int arith_divi_124 = (arith_select_123 / arith_const_11); 
          int arith_subi_125 = (arith_const_10 - arith_divi_124); 
          int arith_select_126 = (arith_cmpi_121 ? arith_subi_125 : arith_divi_124); 
          int arith_muli_127 = (arith_select_126 * arith_const_11); 
          int arith_addi_128 = (for_iter_120 + arith_muli_127); 
          double memref_load_129 = func_arg_1[arith_addi_20][arith_addi_128]; 
          double memref_load_130 = func_arg_1[arith_addi_128][arith_addi_82]; 
          double arith_mulf_131 = (memref_load_129 * memref_load_130); 
          double memref_load_132 = memref_alloca_15[0]; 
          double arith_subf_133 = (memref_load_132 - arith_mulf_131); 
          memref_alloca_15[0] = arith_subf_133; 
        }
        double memref_load_134 = memref_alloca_15[0]; 
        func_arg_1[arith_addi_20][arith_addi_82] = memref_load_134; 
      }
    }
  }
  for (int for_iter_135 = arith_const_14; for_iter_135 < arith_const_6; for_iter_135 += arith_const_12) {
    int* async_group_136; 
    int async_group_index_137 = 0; 
    int for_iter_arg_139 = arith_const_14; 
    for (int for_iter_138 = arith_const_14; for_iter_138 < arith_const_12; for_iter_138 += arith_const_12) {
      PAST_NEW_SEMAPHORE(execute_token_140); 
      #pragma peqc async_execute
      {
        int arith_addi_141 = (for_iter_135 + for_iter_138); 
        double memref_load_142 = func_arg_2[arith_addi_141]; 
        memref_alloca_15[0] = memref_load_142; 
        int arith_addi_143 = (for_iter_135 + for_iter_138); 
        int arith_cmpi_144 = (arith_addi_143 < arith_const_14); 
        int arith_subi_145 = (arith_const_10 - arith_addi_143); 
        int arith_select_146 = (arith_cmpi_144 ? arith_subi_145 : arith_addi_143); 
        int arith_divi_147 = (arith_select_146 / arith_const_11); 
        int arith_subi_148 = (arith_const_10 - arith_divi_147); 
        int arith_select_149 = (arith_cmpi_144 ? arith_subi_148 : arith_divi_147); 
        for (int for_iter_150 = arith_const_14; for_iter_150 < arith_select_149; for_iter_150 += arith_const_12) {
          int arith_muli_151 = (for_iter_150 * arith_const_11); 
          double memref_load_152 = func_arg_1[arith_addi_141][arith_muli_151]; 
          double memref_load_153 = func_arg_4[arith_muli_151]; 
          double arith_mulf_154 = (memref_load_152 * memref_load_153); 
          double memref_load_155 = memref_alloca_15[0]; 
          double arith_subf_156 = (memref_load_155 - arith_mulf_154); 
          memref_alloca_15[0] = arith_subf_156; 
          int arith_addi_157 = (arith_muli_151 + arith_const_12); 
          double memref_load_158 = func_arg_1[arith_addi_141][arith_addi_157]; 
          double memref_load_159 = func_arg_4[arith_addi_157]; 
          double arith_mulf_160 = (memref_load_158 * memref_load_159); 
          double memref_load_161 = memref_alloca_15[0]; 
          double arith_subf_162 = (memref_load_161 - arith_mulf_160); 
          memref_alloca_15[0] = arith_subf_162; 
          int arith_addi_163 = (arith_muli_151 + arith_const_9); 
          double memref_load_164 = func_arg_1[arith_addi_141][arith_addi_163]; 
          double memref_load_165 = func_arg_4[arith_addi_163]; 
          double arith_mulf_166 = (memref_load_164 * memref_load_165); 
          double memref_load_167 = memref_alloca_15[0]; 
          double arith_subf_168 = (memref_load_167 - arith_mulf_166); 
          memref_alloca_15[0] = arith_subf_168; 
          int arith_addi_169 = (arith_muli_151 + arith_const_8); 
          double memref_load_170 = func_arg_1[arith_addi_141][arith_addi_169]; 
          double memref_load_171 = func_arg_4[arith_addi_169]; 
          double arith_mulf_172 = (memref_load_170 * memref_load_171); 
          double memref_load_173 = memref_alloca_15[0]; 
          double arith_subf_174 = (memref_load_173 - arith_mulf_172); 
          memref_alloca_15[0] = arith_subf_174; 
        }
        int arith_addi_175 = (for_iter_135 + for_iter_138); 
        int arith_remsi_176 = (arith_addi_175 % arith_const_11); 
        int arith_cmpi_177 = (arith_remsi_176 < arith_const_14); 
        int arith_addi_178 = (arith_remsi_176 + arith_const_11); 
        int arith_select_179 = (arith_cmpi_177 ? arith_addi_178 : arith_remsi_176); 
        for (int for_iter_180 = arith_const_14; for_iter_180 < arith_select_179; for_iter_180 += arith_const_12) {
          int arith_cmpi_181 = (arith_addi_141 < arith_const_14); 
          int arith_subi_182 = (arith_const_10 - arith_addi_141); 
          int arith_select_183 = (arith_cmpi_181 ? arith_subi_182 : arith_addi_141); 
          int arith_divi_184 = (arith_select_183 / arith_const_11); 
          int arith_subi_185 = (arith_const_10 - arith_divi_184); 
          int arith_select_186 = (arith_cmpi_181 ? arith_subi_185 : arith_divi_184); 
          int arith_muli_187 = (arith_select_186 * arith_const_11); 
          int arith_addi_188 = (for_iter_180 + arith_muli_187); 
          double memref_load_189 = func_arg_1[arith_addi_141][arith_addi_188]; 
          double memref_load_190 = func_arg_4[arith_addi_188]; 
          double arith_mulf_191 = (memref_load_189 * memref_load_190); 
          double memref_load_192 = memref_alloca_15[0]; 
          double arith_subf_193 = (memref_load_192 - arith_mulf_191); 
          memref_alloca_15[0] = arith_subf_193; 
        }
        double memref_load_194 = memref_alloca_15[0]; 
        func_arg_4[arith_addi_141] = memref_load_194; 
        PAST_SET_SEMAPHORE(execute_token_140, PAST_TASK_FINISHED); 
      }
      async_group_136[async_group_index_137] = execute_token_140; 
      async_group_index_137++; 
      int arith_addi_195 = (for_iter_arg_139 + arith_const_12); 
      for_iter_arg_139 = arith_addi_195; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_136, async_group_index_137, PAST_TASK_FINISHED); 
  }
  for (int for_iter_196 = arith_const_14; for_iter_196 < arith_const_6; for_iter_196 += arith_const_12) {
    int* async_group_197; 
    int async_group_index_198 = 0; 
    int for_iter_arg_200 = arith_const_14; 
    for (int for_iter_199 = arith_const_14; for_iter_199 < arith_const_12; for_iter_199 += arith_const_12) {
      PAST_NEW_SEMAPHORE(execute_token_201); 
      #pragma peqc async_execute
      {
        int arith_addi_202 = (for_iter_196 + for_iter_199); 
        int arith_muli_203 = (arith_addi_202 * arith_const_10); 
        int arith_addi_204 = (arith_muli_203 + arith_const_5); 
        double memref_load_205 = func_arg_4[arith_addi_204]; 
        memref_alloca_15[0] = memref_load_205; 
        int arith_addi_206 = (for_iter_196 + for_iter_199); 
        int arith_cmpi_207 = (arith_addi_206 < arith_const_14); 
        int arith_subi_208 = (arith_const_10 - arith_addi_206); 
        int arith_select_209 = (arith_cmpi_207 ? arith_subi_208 : arith_addi_206); 
        int arith_divi_210 = (arith_select_209 / arith_const_11); 
        int arith_subi_211 = (arith_const_10 - arith_divi_210); 
        int arith_select_212 = (arith_cmpi_207 ? arith_subi_211 : arith_divi_210); 
        for (int for_iter_213 = arith_const_14; for_iter_213 < arith_select_212; for_iter_213 += arith_const_12) {
          int arith_muli_214 = (arith_addi_202 * arith_const_10); 
          int arith_muli_215 = (for_iter_213 * arith_const_11); 
          int arith_addi_216 = (arith_muli_214 + arith_muli_215); 
          int arith_addi_217 = (arith_addi_216 + arith_const_6); 
          int arith_muli_218 = (arith_addi_202 * arith_const_10); 
          int arith_addi_219 = (arith_muli_218 + arith_const_5); 
          double memref_load_220 = func_arg_1[arith_addi_219][arith_addi_217]; 
          double memref_load_221 = func_arg_3[arith_addi_217]; 
          double arith_mulf_222 = (memref_load_220 * memref_load_221); 
          double memref_load_223 = memref_alloca_15[0]; 
          double arith_subf_224 = (memref_load_223 - arith_mulf_222); 
          memref_alloca_15[0] = arith_subf_224; 
          int arith_addi_225 = (arith_addi_217 + arith_const_12); 
          int arith_muli_226 = (arith_addi_202 * arith_const_10); 
          int arith_addi_227 = (arith_muli_226 + arith_const_5); 
          double memref_load_228 = func_arg_1[arith_addi_227][arith_addi_225]; 
          double memref_load_229 = func_arg_3[arith_addi_225]; 
          double arith_mulf_230 = (memref_load_228 * memref_load_229); 
          double memref_load_231 = memref_alloca_15[0]; 
          double arith_subf_232 = (memref_load_231 - arith_mulf_230); 
          memref_alloca_15[0] = arith_subf_232; 
          int arith_addi_233 = (arith_addi_217 + arith_const_9); 
          int arith_muli_234 = (arith_addi_202 * arith_const_10); 
          int arith_addi_235 = (arith_muli_234 + arith_const_5); 
          double memref_load_236 = func_arg_1[arith_addi_235][arith_addi_233]; 
          double memref_load_237 = func_arg_3[arith_addi_233]; 
          double arith_mulf_238 = (memref_load_236 * memref_load_237); 
          double memref_load_239 = memref_alloca_15[0]; 
          double arith_subf_240 = (memref_load_239 - arith_mulf_238); 
          memref_alloca_15[0] = arith_subf_240; 
          int arith_addi_241 = (arith_addi_217 + arith_const_8); 
          int arith_muli_242 = (arith_addi_202 * arith_const_10); 
          int arith_addi_243 = (arith_muli_242 + arith_const_5); 
          double memref_load_244 = func_arg_1[arith_addi_243][arith_addi_241]; 
          double memref_load_245 = func_arg_3[arith_addi_241]; 
          double arith_mulf_246 = (memref_load_244 * memref_load_245); 
          double memref_load_247 = memref_alloca_15[0]; 
          double arith_subf_248 = (memref_load_247 - arith_mulf_246); 
          memref_alloca_15[0] = arith_subf_248; 
        }
        int arith_addi_249 = (for_iter_196 + for_iter_199); 
        int arith_remsi_250 = (arith_addi_249 % arith_const_11); 
        int arith_cmpi_251 = (arith_remsi_250 < arith_const_14); 
        int arith_addi_252 = (arith_remsi_250 + arith_const_11); 
        int arith_select_253 = (arith_cmpi_251 ? arith_addi_252 : arith_remsi_250); 
        for (int for_iter_254 = arith_const_14; for_iter_254 < arith_select_253; for_iter_254 += arith_const_12) {
          int arith_muli_255 = (arith_addi_202 * arith_const_10); 
          int arith_addi_256 = (arith_muli_255 + for_iter_254); 
          int arith_cmpi_257 = (arith_addi_202 < arith_const_14); 
          int arith_subi_258 = (arith_const_10 - arith_addi_202); 
          int arith_select_259 = (arith_cmpi_257 ? arith_subi_258 : arith_addi_202); 
          int arith_divi_260 = (arith_select_259 / arith_const_11); 
          int arith_subi_261 = (arith_const_10 - arith_divi_260); 
          int arith_select_262 = (arith_cmpi_257 ? arith_subi_261 : arith_divi_260); 
          int arith_muli_263 = (arith_select_262 * arith_const_11); 
          int arith_addi_264 = (arith_addi_256 + arith_muli_263); 
          int arith_addi_265 = (arith_addi_264 + arith_const_6); 
          int arith_muli_266 = (arith_addi_202 * arith_const_10); 
          int arith_addi_267 = (arith_muli_266 + arith_const_5); 
          double memref_load_268 = func_arg_1[arith_addi_267][arith_addi_265]; 
          double memref_load_269 = func_arg_3[arith_addi_265]; 
          double arith_mulf_270 = (memref_load_268 * memref_load_269); 
          double memref_load_271 = memref_alloca_15[0]; 
          double arith_subf_272 = (memref_load_271 - arith_mulf_270); 
          memref_alloca_15[0] = arith_subf_272; 
        }
        double memref_load_273 = memref_alloca_15[0]; 
        int arith_muli_274 = (arith_addi_202 * arith_const_10); 
        int arith_addi_275 = (arith_muli_274 + arith_const_5); 
        int arith_muli_276 = (arith_addi_202 * arith_const_10); 
        int arith_addi_277 = (arith_muli_276 + arith_const_5); 
        double memref_load_278 = func_arg_1[arith_addi_275][arith_addi_277]; 
        double arith_divf_279 = (memref_load_273 / memref_load_278); 
        int arith_muli_280 = (arith_addi_202 * arith_const_10); 
        int arith_addi_281 = (arith_muli_280 + arith_const_5); 
        func_arg_3[arith_addi_281] = arith_divf_279; 
        PAST_SET_SEMAPHORE(execute_token_201, PAST_TASK_FINISHED); 
      }
      async_group_197[async_group_index_198] = execute_token_201; 
      async_group_index_198++; 
      int arith_addi_282 = (for_iter_arg_200 + arith_const_12); 
      for_iter_arg_200 = arith_addi_282; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_197, async_group_index_198, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;
  double* b;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_ludcmp(n, A, b, x, y);
}
}

#pragma pocc-region-end
