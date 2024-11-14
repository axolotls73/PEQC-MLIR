#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -26; 
  int arith_const_7 = 26; 
  int arith_const_8 = 27; 
  int arith_const_9 = 31; 
  int arith_const_10 = 13; 
  int arith_const_11 = -13; 
  int arith_const_12 = 16; 
  int arith_const_13 = 23; 
  int arith_const_14 = 128; 
  int arith_const_15 = -4; 
  int arith_const_16 = -32; 
  int arith_const_17 = 3; 
  int arith_const_18 = 2; 
  int arith_const_19 = 7; 
  int arith_const_20 = -8; 
  int arith_const_21 = 4; 
  int arith_const_22 = -1; 
  int arith_const_23 = 28; 
  int arith_const_24 = 32; 
  int arith_const_25 = 1; 
  int arith_const_26 = 0; 
  double arith_const_27 = 1.000000; 
  double arith_const_28 = 0.000000; 
  double* memref_alloca_29; 
  double* memref_alloca_30; 
  int* async_group_31; 
  int async_group_index_32 = 0; 
  int for_iter_arg_34 = arith_const_26; 
  for (int for_iter_33 = arith_const_26; for_iter_33 < arith_const_25; for_iter_33 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_35); 
    #pragma peqc async_execute
    {
      int arith_muli_36 = (for_iter_33 * arith_const_24); 
      for (int for_iter_37 = arith_const_26; for_iter_37 < arith_const_23; for_iter_37 += arith_const_25) {
        int arith_addi_38 = (arith_muli_36 + for_iter_37); 
        int arith_muli_39 = (for_iter_37 * arith_const_22); 
        int arith_cmpi_40 = (arith_muli_39 < arith_const_26); 
        int arith_subi_41 = (arith_const_22 - arith_muli_39); 
        int arith_select_42 = (arith_cmpi_40 ? arith_subi_41 : arith_muli_39); 
        int arith_divi_43 = (arith_select_42 / arith_const_21); 
        int arith_subi_44 = (arith_const_22 - arith_divi_43); 
        int arith_select_45 = (arith_cmpi_40 ? arith_subi_44 : arith_divi_43); 
        int arith_muli_46 = (for_iter_33 * arith_const_20); 
        int arith_addi_47 = (arith_select_45 + arith_muli_46); 
        int arith_addi_48 = (arith_addi_47 + arith_const_19); 
        for (int for_iter_49 = arith_const_26; for_iter_49 < arith_addi_48; for_iter_49 += arith_const_25) {
          int arith_muli_50 = (for_iter_49 * arith_const_21); 
          int arith_addi_51 = (arith_addi_38 + arith_muli_50); 
          func_arg_4[arith_addi_38][arith_addi_51] = arith_const_28; 
          int arith_addi_52 = (arith_addi_51 + arith_const_25); 
          func_arg_4[arith_addi_38][arith_addi_52] = arith_const_28; 
          int arith_addi_53 = (arith_addi_51 + arith_const_18); 
          func_arg_4[arith_addi_38][arith_addi_53] = arith_const_28; 
          int arith_addi_54 = (arith_addi_51 + arith_const_17); 
          func_arg_4[arith_addi_38][arith_addi_54] = arith_const_28; 
        }
        int arith_muli_55 = (for_iter_37 * arith_const_22); 
        int arith_muli_56 = (for_iter_33 * arith_const_16); 
        int arith_addi_57 = (arith_muli_55 + arith_muli_56); 
        int arith_muli_58 = (for_iter_37 * arith_const_22); 
        int arith_cmpi_59 = (arith_muli_58 < arith_const_26); 
        int arith_subi_60 = (arith_const_22 - arith_muli_58); 
        int arith_select_61 = (arith_cmpi_59 ? arith_subi_60 : arith_muli_58); 
        int arith_divi_62 = (arith_select_61 / arith_const_21); 
        int arith_subi_63 = (arith_const_22 - arith_divi_62); 
        int arith_select_64 = (arith_cmpi_59 ? arith_subi_63 : arith_divi_62); 
        int arith_muli_65 = (for_iter_33 * arith_const_20); 
        int arith_addi_66 = (arith_select_64 + arith_muli_65); 
        int arith_muli_67 = (arith_addi_66 * arith_const_15); 
        int arith_addi_68 = (arith_addi_57 + arith_muli_67); 
        for (int for_iter_69 = arith_const_26; for_iter_69 < arith_addi_68; for_iter_69 += arith_const_25) {
          int arith_addi_70 = (arith_addi_38 + for_iter_69); 
          int arith_muli_71 = (arith_addi_38 * arith_const_22); 
          int arith_cmpi_72 = (arith_muli_71 < arith_const_26); 
          int arith_subi_73 = (arith_const_22 - arith_muli_71); 
          int arith_select_74 = (arith_cmpi_72 ? arith_subi_73 : arith_muli_71); 
          int arith_divi_75 = (arith_select_74 / arith_const_21); 
          int arith_subi_76 = (arith_const_22 - arith_divi_75); 
          int arith_select_77 = (arith_cmpi_72 ? arith_subi_76 : arith_divi_75); 
          int arith_muli_78 = (arith_select_77 * arith_const_21); 
          int arith_addi_79 = (arith_addi_70 + arith_muli_78); 
          int arith_addi_80 = (arith_addi_79 + arith_const_23); 
          func_arg_4[arith_addi_38][arith_addi_80] = arith_const_28; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
    }
    async_group_31[async_group_index_32] = execute_token_35; 
    async_group_index_32++; 
    int arith_addi_81 = (for_iter_arg_34 + arith_const_25); 
    for_iter_arg_34 = arith_addi_81; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
  double arith_subf_82 = (func_arg_2 - arith_const_27); 
  memref_alloca_30[arith_const_26] = arith_subf_82; 
  int* async_group_83; 
  int async_group_index_84 = 0; 
  int for_iter_arg_86 = arith_const_26; 
  for (int for_iter_85 = arith_const_26; for_iter_85 < arith_const_25; for_iter_85 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_87); 
    #pragma peqc async_execute
    {
      int arith_muli_88 = (for_iter_85 * arith_const_14); 
      for (int for_iter_89 = arith_const_26; for_iter_89 < arith_const_19; for_iter_89 += arith_const_25) {
        int arith_muli_90 = (for_iter_89 * arith_const_21); 
        int arith_addi_91 = (arith_muli_88 + arith_muli_90); 
        func_arg_5[arith_addi_91] = arith_const_28; 
        int arith_addi_92 = (arith_addi_91 + arith_const_25); 
        func_arg_5[arith_addi_92] = arith_const_28; 
        int arith_addi_93 = (arith_addi_91 + arith_const_18); 
        func_arg_5[arith_addi_93] = arith_const_28; 
        int arith_addi_94 = (arith_addi_91 + arith_const_17); 
        func_arg_5[arith_addi_94] = arith_const_28; 
      }
      PAST_SET_SEMAPHORE(execute_token_87, PAST_TASK_FINISHED); 
    }
    async_group_83[async_group_index_84] = execute_token_87; 
    async_group_index_84++; 
    int arith_addi_95 = (for_iter_arg_86 + arith_const_25); 
    for_iter_arg_86 = arith_addi_95; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_83, async_group_index_84, PAST_TASK_FINISHED); 
  int* async_group_96; 
  int async_group_index_97 = 0; 
  int for_iter_arg_99 = arith_const_26; 
  for (int for_iter_98 = arith_const_26; for_iter_98 < arith_const_25; for_iter_98 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_100); 
    #pragma peqc async_execute
    {
      int arith_muli_101 = (for_iter_98 * arith_const_24); 
      for (int for_iter_102 = arith_const_26; for_iter_102 < arith_const_25; for_iter_102 += arith_const_25) {
        int arith_muli_103 = (for_iter_102 * arith_const_14); 
        for (int for_iter_104 = arith_const_26; for_iter_104 < arith_const_24; for_iter_104 += arith_const_25) {
          int arith_addi_105 = (arith_muli_101 + for_iter_104); 
          for (int for_iter_106 = arith_const_26; for_iter_106 < arith_const_19; for_iter_106 += arith_const_25) {
            int arith_muli_107 = (for_iter_106 * arith_const_21); 
            int arith_addi_108 = (arith_muli_103 + arith_muli_107); 
            double memref_load_109 = func_arg_5[arith_addi_108]; 
            double memref_load_110 = func_arg_3[arith_addi_105][arith_addi_108]; 
            double arith_addf_111 = (memref_load_109 + memref_load_110); 
            func_arg_5[arith_addi_108] = arith_addf_111; 
            int arith_addi_112 = (arith_addi_108 + arith_const_25); 
            double memref_load_113 = func_arg_5[arith_addi_112]; 
            double memref_load_114 = func_arg_3[arith_addi_105][arith_addi_112]; 
            double arith_addf_115 = (memref_load_113 + memref_load_114); 
            func_arg_5[arith_addi_112] = arith_addf_115; 
            int arith_addi_116 = (arith_addi_108 + arith_const_18); 
            double memref_load_117 = func_arg_5[arith_addi_116]; 
            double memref_load_118 = func_arg_3[arith_addi_105][arith_addi_116]; 
            double arith_addf_119 = (memref_load_117 + memref_load_118); 
            func_arg_5[arith_addi_116] = arith_addf_119; 
            int arith_addi_120 = (arith_addi_108 + arith_const_17); 
            double memref_load_121 = func_arg_5[arith_addi_120]; 
            double memref_load_122 = func_arg_3[arith_addi_105][arith_addi_120]; 
            double arith_addf_123 = (memref_load_121 + memref_load_122); 
            func_arg_5[arith_addi_120] = arith_addf_123; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_100, PAST_TASK_FINISHED); 
    }
    async_group_96[async_group_index_97] = execute_token_100; 
    async_group_index_97++; 
    int arith_addi_124 = (for_iter_arg_99 + arith_const_25); 
    for_iter_arg_99 = arith_addi_124; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_96, async_group_index_97, PAST_TASK_FINISHED); 
  int* async_group_125; 
  int async_group_index_126 = 0; 
  int for_iter_arg_128 = arith_const_26; 
  for (int for_iter_127 = arith_const_26; for_iter_127 < arith_const_25; for_iter_127 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_129); 
    #pragma peqc async_execute
    {
      int arith_muli_130 = (for_iter_127 * arith_const_14); 
      for (int for_iter_131 = arith_const_26; for_iter_131 < arith_const_19; for_iter_131 += arith_const_25) {
        int arith_muli_132 = (for_iter_131 * arith_const_21); 
        int arith_addi_133 = (arith_muli_130 + arith_muli_132); 
        double memref_load_134 = func_arg_5[arith_addi_133]; 
        double arith_divf_135 = (memref_load_134 / func_arg_2); 
        func_arg_5[arith_addi_133] = arith_divf_135; 
        int arith_addi_136 = (arith_addi_133 + arith_const_25); 
        double memref_load_137 = func_arg_5[arith_addi_136]; 
        double arith_divf_138 = (memref_load_137 / func_arg_2); 
        func_arg_5[arith_addi_136] = arith_divf_138; 
        int arith_addi_139 = (arith_addi_133 + arith_const_18); 
        double memref_load_140 = func_arg_5[arith_addi_139]; 
        double arith_divf_141 = (memref_load_140 / func_arg_2); 
        func_arg_5[arith_addi_139] = arith_divf_141; 
        int arith_addi_142 = (arith_addi_133 + arith_const_17); 
        double memref_load_143 = func_arg_5[arith_addi_142]; 
        double arith_divf_144 = (memref_load_143 / func_arg_2); 
        func_arg_5[arith_addi_142] = arith_divf_144; 
      }
      PAST_SET_SEMAPHORE(execute_token_129, PAST_TASK_FINISHED); 
    }
    async_group_125[async_group_index_126] = execute_token_129; 
    async_group_index_126++; 
    int arith_addi_145 = (for_iter_arg_128 + arith_const_25); 
    for_iter_arg_128 = arith_addi_145; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_125, async_group_index_126, PAST_TASK_FINISHED); 
  int* async_group_146; 
  int async_group_index_147 = 0; 
  int for_iter_arg_149 = arith_const_26; 
  for (int for_iter_148 = arith_const_26; for_iter_148 < arith_const_25; for_iter_148 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_150); 
    #pragma peqc async_execute
    {
      int arith_muli_151 = (for_iter_148 * arith_const_24); 
      for (int for_iter_152 = arith_const_26; for_iter_152 < arith_const_25; for_iter_152 += arith_const_25) {
        int arith_muli_153 = (for_iter_152 * arith_const_14); 
        for (int for_iter_154 = arith_const_26; for_iter_154 < arith_const_24; for_iter_154 += arith_const_25) {
          int arith_addi_155 = (arith_muli_151 + for_iter_154); 
          for (int for_iter_156 = arith_const_26; for_iter_156 < arith_const_19; for_iter_156 += arith_const_25) {
            int arith_muli_157 = (for_iter_156 * arith_const_21); 
            int arith_addi_158 = (arith_muli_153 + arith_muli_157); 
            double memref_load_159 = func_arg_3[arith_addi_155][arith_addi_158]; 
            double memref_load_160 = func_arg_5[arith_addi_158]; 
            double arith_subf_161 = (memref_load_159 - memref_load_160); 
            func_arg_3[arith_addi_155][arith_addi_158] = arith_subf_161; 
            int arith_addi_162 = (arith_addi_158 + arith_const_25); 
            double memref_load_163 = func_arg_3[arith_addi_155][arith_addi_162]; 
            double memref_load_164 = func_arg_5[arith_addi_162]; 
            double arith_subf_165 = (memref_load_163 - memref_load_164); 
            func_arg_3[arith_addi_155][arith_addi_162] = arith_subf_165; 
            int arith_addi_166 = (arith_addi_158 + arith_const_18); 
            double memref_load_167 = func_arg_3[arith_addi_155][arith_addi_166]; 
            double memref_load_168 = func_arg_5[arith_addi_166]; 
            double arith_subf_169 = (memref_load_167 - memref_load_168); 
            func_arg_3[arith_addi_155][arith_addi_166] = arith_subf_169; 
            int arith_addi_170 = (arith_addi_158 + arith_const_17); 
            double memref_load_171 = func_arg_3[arith_addi_155][arith_addi_170]; 
            double memref_load_172 = func_arg_5[arith_addi_170]; 
            double arith_subf_173 = (memref_load_171 - memref_load_172); 
            func_arg_3[arith_addi_155][arith_addi_170] = arith_subf_173; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_150, PAST_TASK_FINISHED); 
    }
    async_group_146[async_group_index_147] = execute_token_150; 
    async_group_index_147++; 
    int arith_addi_174 = (for_iter_arg_149 + arith_const_25); 
    for_iter_arg_149 = arith_addi_174; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_146, async_group_index_147, PAST_TASK_FINISHED); 
  int* async_group_175; 
  int async_group_index_176 = 0; 
  int for_iter_arg_178 = arith_const_26; 
  for (int for_iter_177 = arith_const_26; for_iter_177 < arith_const_25; for_iter_177 += arith_const_25) {
    PAST_NEW_SEMAPHORE(execute_token_179); 
    #pragma peqc async_execute
    {
      int arith_muli_180 = (for_iter_177 * arith_const_24); 
      for (int for_iter_181 = arith_const_26; for_iter_181 < arith_const_25; for_iter_181 += arith_const_25) {
        int arith_muli_182 = (for_iter_181 * arith_const_24); 
        for (int for_iter_183 = arith_const_26; for_iter_183 < arith_const_23; for_iter_183 += arith_const_25) {
          int arith_addi_184 = (arith_muli_180 + for_iter_183); 
          for (int for_iter_185 = arith_const_26; for_iter_185 < arith_const_24; for_iter_185 += arith_const_25) {
            int arith_addi_186 = (arith_muli_182 + for_iter_185); 
            double memref_load_187 = func_arg_3[arith_addi_186][arith_addi_184]; 
            double memref_load_188 = func_arg_3[arith_addi_186][arith_addi_184]; 
            double memref_load_189 = func_arg_3[arith_addi_186][arith_addi_184]; 
            double memref_load_190 = func_arg_3[arith_addi_186][arith_addi_184]; 
            int arith_muli_191 = (for_iter_183 * arith_const_22); 
            int arith_cmpi_192 = (arith_muli_191 < arith_const_26); 
            int arith_subi_193 = (arith_const_22 - arith_muli_191); 
            int arith_select_194 = (arith_cmpi_192 ? arith_subi_193 : arith_muli_191); 
            int arith_divi_195 = (arith_select_194 / arith_const_21); 
            int arith_subi_196 = (arith_const_22 - arith_divi_195); 
            int arith_select_197 = (arith_cmpi_192 ? arith_subi_196 : arith_divi_195); 
            int arith_muli_198 = (for_iter_177 * arith_const_20); 
            int arith_addi_199 = (arith_select_197 + arith_muli_198); 
            int arith_addi_200 = (arith_addi_199 + arith_const_19); 
            for (int for_iter_201 = arith_const_26; for_iter_201 < arith_addi_200; for_iter_201 += arith_const_25) {
              int arith_muli_202 = (for_iter_201 * arith_const_21); 
              int arith_addi_203 = (arith_addi_184 + arith_muli_202); 
              double memref_load_204 = func_arg_4[arith_addi_184][arith_addi_203]; 
              double memref_load_205 = func_arg_3[arith_addi_186][arith_addi_203]; 
              double arith_mulf_206 = (memref_load_187 * memref_load_205); 
              double arith_addf_207 = (memref_load_204 + arith_mulf_206); 
              func_arg_4[arith_addi_184][arith_addi_203] = arith_addf_207; 
              int arith_addi_208 = (arith_addi_203 + arith_const_25); 
              double memref_load_209 = func_arg_4[arith_addi_184][arith_addi_208]; 
              double memref_load_210 = func_arg_3[arith_addi_186][arith_addi_208]; 
              double arith_mulf_211 = (memref_load_188 * memref_load_210); 
              double arith_addf_212 = (memref_load_209 + arith_mulf_211); 
              func_arg_4[arith_addi_184][arith_addi_208] = arith_addf_212; 
              int arith_addi_213 = (arith_addi_203 + arith_const_18); 
              double memref_load_214 = func_arg_4[arith_addi_184][arith_addi_213]; 
              double memref_load_215 = func_arg_3[arith_addi_186][arith_addi_213]; 
              double arith_mulf_216 = (memref_load_189 * memref_load_215); 
              double arith_addf_217 = (memref_load_214 + arith_mulf_216); 
              func_arg_4[arith_addi_184][arith_addi_213] = arith_addf_217; 
              int arith_addi_218 = (arith_addi_203 + arith_const_17); 
              double memref_load_219 = func_arg_4[arith_addi_184][arith_addi_218]; 
              double memref_load_220 = func_arg_3[arith_addi_186][arith_addi_218]; 
              double arith_mulf_221 = (memref_load_190 * memref_load_220); 
              double arith_addf_222 = (memref_load_219 + arith_mulf_221); 
              func_arg_4[arith_addi_184][arith_addi_218] = arith_addf_222; 
            }
            double memref_load_223 = func_arg_3[arith_addi_186][arith_addi_184]; 
            int arith_muli_224 = (for_iter_183 * arith_const_22); 
            int arith_muli_225 = (for_iter_177 * arith_const_16); 
            int arith_addi_226 = (arith_muli_224 + arith_muli_225); 
            int arith_muli_227 = (for_iter_183 * arith_const_22); 
            int arith_cmpi_228 = (arith_muli_227 < arith_const_26); 
            int arith_subi_229 = (arith_const_22 - arith_muli_227); 
            int arith_select_230 = (arith_cmpi_228 ? arith_subi_229 : arith_muli_227); 
            int arith_divi_231 = (arith_select_230 / arith_const_21); 
            int arith_subi_232 = (arith_const_22 - arith_divi_231); 
            int arith_select_233 = (arith_cmpi_228 ? arith_subi_232 : arith_divi_231); 
            int arith_muli_234 = (for_iter_177 * arith_const_20); 
            int arith_addi_235 = (arith_select_233 + arith_muli_234); 
            int arith_muli_236 = (arith_addi_235 * arith_const_15); 
            int arith_addi_237 = (arith_addi_226 + arith_muli_236); 
            for (int for_iter_238 = arith_const_26; for_iter_238 < arith_addi_237; for_iter_238 += arith_const_25) {
              int arith_addi_239 = (arith_addi_184 + for_iter_238); 
              int arith_muli_240 = (arith_addi_184 * arith_const_22); 
              int arith_cmpi_241 = (arith_muli_240 < arith_const_26); 
              int arith_subi_242 = (arith_const_22 - arith_muli_240); 
              int arith_select_243 = (arith_cmpi_241 ? arith_subi_242 : arith_muli_240); 
              int arith_divi_244 = (arith_select_243 / arith_const_21); 
              int arith_subi_245 = (arith_const_22 - arith_divi_244); 
              int arith_select_246 = (arith_cmpi_241 ? arith_subi_245 : arith_divi_244); 
              int arith_muli_247 = (arith_select_246 * arith_const_21); 
              int arith_addi_248 = (arith_addi_239 + arith_muli_247); 
              int arith_addi_249 = (arith_addi_248 + arith_const_23); 
              double memref_load_250 = func_arg_4[arith_addi_184][arith_addi_249]; 
              double memref_load_251 = func_arg_3[arith_addi_186][arith_addi_249]; 
              double arith_mulf_252 = (memref_load_223 * memref_load_251); 
              double arith_addf_253 = (memref_load_250 + arith_mulf_252); 
              func_arg_4[arith_addi_184][arith_addi_249] = arith_addf_253; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_179, PAST_TASK_FINISHED); 
    }
    async_group_175[async_group_index_176] = execute_token_179; 
    async_group_index_176++; 
    int arith_addi_254 = (for_iter_arg_178 + arith_const_25); 
    for_iter_arg_178 = arith_addi_254; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_175, async_group_index_176, PAST_TASK_FINISHED); 
  double memref_load_255 = memref_alloca_30[arith_const_26]; 
  for (int for_iter_256 = arith_const_26; for_iter_256 < arith_const_13; for_iter_256 += arith_const_25) {
    int arith_muli_257 = (for_iter_256 * arith_const_12); 
    int arith_addi_258 = (arith_muli_257 + arith_const_11); 
    int arith_cmpi_259 = (arith_addi_258 <= arith_const_26); 
    int arith_subi_260 = (arith_const_26 - arith_addi_258); 
    int arith_subi_261 = (arith_addi_258 - arith_const_25); 
    int arith_select_262 = (arith_cmpi_259 ? arith_subi_260 : arith_subi_261); 
    int arith_divi_263 = (arith_select_262 / arith_const_10); 
    int arith_subi_264 = (arith_const_26 - arith_divi_263); 
    int arith_addi_265 = (arith_divi_263 + arith_const_25); 
    int arith_select_266 = (arith_cmpi_259 ? arith_subi_264 : arith_addi_265); 
    int arith_maxsi_267 = max(arith_select_266, arith_const_26); 
    int arith_muli_268 = (for_iter_256 * arith_const_24); 
    int arith_addi_269 = (arith_muli_268 + arith_const_9); 
    int arith_cmpi_270 = (arith_addi_269 < arith_const_26); 
    int arith_subi_271 = (arith_const_22 - arith_addi_269); 
    int arith_select_272 = (arith_cmpi_270 ? arith_subi_271 : arith_addi_269); 
    int arith_divi_273 = (arith_select_272 / arith_const_8); 
    int arith_subi_274 = (arith_const_22 - arith_divi_273); 
    int arith_select_275 = (arith_cmpi_270 ? arith_subi_274 : arith_divi_273); 
    int arith_addi_276 = (arith_select_275 + arith_const_25); 
    for (int for_iter_277 = arith_maxsi_267; for_iter_277 < arith_addi_276; for_iter_277 += arith_const_25) {
      int arith_muli_278 = (for_iter_256 * arith_const_24); 
      int arith_muli_279 = (for_iter_277 * arith_const_8); 
      int arith_maxsi_280 = max(arith_muli_278, arith_muli_279); 
      int arith_muli_281 = (for_iter_256 * arith_const_24); 
      int arith_addi_282 = (arith_muli_281 + arith_const_24); 
      int arith_muli_283 = (for_iter_277 * arith_const_7); 
      int arith_addi_284 = (arith_muli_283 + arith_const_23); 
      int arith_minsi_285 = min(arith_addi_282, arith_addi_284); 
      for (int for_iter_286 = arith_maxsi_280; for_iter_286 < arith_minsi_285; for_iter_286 += arith_const_25) {
        int arith_muli_287 = (for_iter_286 * arith_const_6); 
        int arith_addi_288 = (arith_muli_287 + for_iter_277); 
        double memref_load_289 = func_arg_4[for_iter_277][arith_addi_288]; 
        double arith_divf_290 = (memref_load_289 / memref_load_255); 
        memref_alloca_29[arith_const_26] = arith_divf_290; 
        int arith_muli_291 = (for_iter_286 * arith_const_6); 
        int arith_addi_292 = (arith_muli_291 + for_iter_277); 
        func_arg_4[for_iter_277][arith_addi_292] = arith_divf_290; 
        double memref_load_293 = memref_alloca_29[arith_const_26]; 
        int arith_muli_294 = (for_iter_286 * arith_const_6); 
        int arith_addi_295 = (arith_muli_294 + for_iter_277); 
        func_arg_4[arith_addi_295][for_iter_277] = memref_load_293; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;

#pragma peqc async_execute
{
  kernel_covariance(m, n, float_n, data, cov, mean);
}
}

#pragma pocc-region-end
