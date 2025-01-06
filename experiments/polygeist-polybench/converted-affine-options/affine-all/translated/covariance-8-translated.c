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
  int arith_const_15 = 3; 
  int arith_const_16 = 2; 
  int arith_const_17 = 7; 
  int arith_const_18 = 4; 
  int arith_const_19 = -1; 
  int arith_const_20 = -8; 
  int arith_const_21 = 28; 
  int arith_const_22 = 32; 
  int arith_const_23 = 1; 
  int arith_const_24 = 0; 
  double arith_const_25 = 1.000000; 
  double arith_const_26 = 0.000000; 
  double* memref_alloca_27; 
  double* memref_alloca_28; 
  int* async_group_29; 
  int async_group_index_30 = 0; 
  int for_iter_arg_32 = arith_const_24; 
  for (int for_iter_31 = arith_const_24; for_iter_31 < arith_const_23; for_iter_31 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_33); 
    #pragma peqc async_execute
    {
      int arith_muli_34 = (for_iter_31 * arith_const_22); 
      for (int for_iter_35 = arith_const_24; for_iter_35 < arith_const_21; for_iter_35 += arith_const_23) {
        int arith_addi_36 = (arith_muli_34 + for_iter_35); 
        int arith_muli_37 = (for_iter_31 * arith_const_20); 
        int arith_muli_38 = (for_iter_35 * arith_const_19); 
        int arith_cmpi_39 = (arith_muli_38 < arith_const_24); 
        int arith_subi_40 = (arith_const_19 - arith_muli_38); 
        int arith_select_41 = (arith_cmpi_39 ? arith_subi_40 : arith_muli_38); 
        int arith_divi_42 = (arith_select_41 / arith_const_18); 
        int arith_subi_43 = (arith_const_19 - arith_divi_42); 
        int arith_select_44 = (arith_cmpi_39 ? arith_subi_43 : arith_divi_42); 
        int arith_addi_45 = (arith_muli_37 + arith_select_44); 
        int arith_addi_46 = (arith_addi_45 + arith_const_17); 
        for (int for_iter_47 = arith_const_24; for_iter_47 < arith_addi_46; for_iter_47 += arith_const_23) {
          int arith_muli_48 = (for_iter_47 * arith_const_18); 
          int arith_addi_49 = (arith_addi_36 + arith_muli_48); 
          func_arg_4[arith_addi_36][arith_addi_49] = arith_const_26; 
          int arith_addi_50 = (arith_addi_49 + arith_const_23); 
          func_arg_4[arith_addi_36][arith_addi_50] = arith_const_26; 
          int arith_addi_51 = (arith_addi_49 + arith_const_16); 
          func_arg_4[arith_addi_36][arith_addi_51] = arith_const_26; 
          int arith_addi_52 = (arith_addi_49 + arith_const_15); 
          func_arg_4[arith_addi_36][arith_addi_52] = arith_const_26; 
        }
        int arith_muli_53 = (for_iter_35 * arith_const_19); 
        int arith_remsi_54 = (arith_muli_53 % arith_const_18); 
        int arith_cmpi_55 = (arith_remsi_54 < arith_const_24); 
        int arith_addi_56 = (arith_remsi_54 + arith_const_18); 
        int arith_select_57 = (arith_cmpi_55 ? arith_addi_56 : arith_remsi_54); 
        for (int for_iter_58 = arith_const_24; for_iter_58 < arith_select_57; for_iter_58 += arith_const_23) {
          int arith_addi_59 = (arith_addi_36 + for_iter_58); 
          int arith_muli_60 = (arith_addi_36 * arith_const_19); 
          int arith_cmpi_61 = (arith_muli_60 < arith_const_24); 
          int arith_subi_62 = (arith_const_19 - arith_muli_60); 
          int arith_select_63 = (arith_cmpi_61 ? arith_subi_62 : arith_muli_60); 
          int arith_divi_64 = (arith_select_63 / arith_const_18); 
          int arith_subi_65 = (arith_const_19 - arith_divi_64); 
          int arith_select_66 = (arith_cmpi_61 ? arith_subi_65 : arith_divi_64); 
          int arith_muli_67 = (arith_select_66 * arith_const_18); 
          int arith_addi_68 = (arith_addi_59 + arith_muli_67); 
          int arith_addi_69 = (arith_addi_68 + arith_const_21); 
          func_arg_4[arith_addi_36][arith_addi_69] = arith_const_26; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
    }
    async_group_29[async_group_index_30] = execute_token_33; 
    async_group_index_30++; 
    int arith_addi_70 = (for_iter_arg_32 + arith_const_23); 
    for_iter_arg_32 = arith_addi_70; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
  double arith_subf_71 = (func_arg_2 - arith_const_25); 
  memref_alloca_28[arith_const_24] = arith_subf_71; 
  int* async_group_72; 
  int async_group_index_73 = 0; 
  int for_iter_arg_75 = arith_const_24; 
  for (int for_iter_74 = arith_const_24; for_iter_74 < arith_const_23; for_iter_74 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_76); 
    #pragma peqc async_execute
    {
      int arith_muli_77 = (for_iter_74 * arith_const_14); 
      for (int for_iter_78 = arith_const_24; for_iter_78 < arith_const_17; for_iter_78 += arith_const_23) {
        int arith_muli_79 = (for_iter_78 * arith_const_18); 
        int arith_addi_80 = (arith_muli_77 + arith_muli_79); 
        func_arg_5[arith_addi_80] = arith_const_26; 
        int arith_addi_81 = (arith_addi_80 + arith_const_23); 
        func_arg_5[arith_addi_81] = arith_const_26; 
        int arith_addi_82 = (arith_addi_80 + arith_const_16); 
        func_arg_5[arith_addi_82] = arith_const_26; 
        int arith_addi_83 = (arith_addi_80 + arith_const_15); 
        func_arg_5[arith_addi_83] = arith_const_26; 
      }
      PAST_SET_SEMAPHORE(execute_token_76, PAST_TASK_FINISHED); 
    }
    async_group_72[async_group_index_73] = execute_token_76; 
    async_group_index_73++; 
    int arith_addi_84 = (for_iter_arg_75 + arith_const_23); 
    for_iter_arg_75 = arith_addi_84; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_72, async_group_index_73, PAST_TASK_FINISHED); 
  int* async_group_85; 
  int async_group_index_86 = 0; 
  int for_iter_arg_88 = arith_const_24; 
  for (int for_iter_87 = arith_const_24; for_iter_87 < arith_const_23; for_iter_87 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_89); 
    #pragma peqc async_execute
    {
      int arith_muli_90 = (for_iter_87 * arith_const_22); 
      for (int for_iter_91 = arith_const_24; for_iter_91 < arith_const_23; for_iter_91 += arith_const_23) {
        int arith_muli_92 = (for_iter_91 * arith_const_14); 
        for (int for_iter_93 = arith_const_24; for_iter_93 < arith_const_22; for_iter_93 += arith_const_23) {
          int arith_addi_94 = (arith_muli_90 + for_iter_93); 
          for (int for_iter_95 = arith_const_24; for_iter_95 < arith_const_17; for_iter_95 += arith_const_23) {
            int arith_muli_96 = (for_iter_95 * arith_const_18); 
            int arith_addi_97 = (arith_muli_92 + arith_muli_96); 
            double memref_load_98 = func_arg_5[arith_addi_97]; 
            double memref_load_99 = func_arg_3[arith_addi_94][arith_addi_97]; 
            double arith_addf_100 = (memref_load_98 + memref_load_99); 
            func_arg_5[arith_addi_97] = arith_addf_100; 
            int arith_addi_101 = (arith_addi_97 + arith_const_23); 
            double memref_load_102 = func_arg_5[arith_addi_101]; 
            double memref_load_103 = func_arg_3[arith_addi_94][arith_addi_101]; 
            double arith_addf_104 = (memref_load_102 + memref_load_103); 
            func_arg_5[arith_addi_101] = arith_addf_104; 
            int arith_addi_105 = (arith_addi_97 + arith_const_16); 
            double memref_load_106 = func_arg_5[arith_addi_105]; 
            double memref_load_107 = func_arg_3[arith_addi_94][arith_addi_105]; 
            double arith_addf_108 = (memref_load_106 + memref_load_107); 
            func_arg_5[arith_addi_105] = arith_addf_108; 
            int arith_addi_109 = (arith_addi_97 + arith_const_15); 
            double memref_load_110 = func_arg_5[arith_addi_109]; 
            double memref_load_111 = func_arg_3[arith_addi_94][arith_addi_109]; 
            double arith_addf_112 = (memref_load_110 + memref_load_111); 
            func_arg_5[arith_addi_109] = arith_addf_112; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_89, PAST_TASK_FINISHED); 
    }
    async_group_85[async_group_index_86] = execute_token_89; 
    async_group_index_86++; 
    int arith_addi_113 = (for_iter_arg_88 + arith_const_23); 
    for_iter_arg_88 = arith_addi_113; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_85, async_group_index_86, PAST_TASK_FINISHED); 
  int* async_group_114; 
  int async_group_index_115 = 0; 
  int for_iter_arg_117 = arith_const_24; 
  for (int for_iter_116 = arith_const_24; for_iter_116 < arith_const_23; for_iter_116 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_118); 
    #pragma peqc async_execute
    {
      int arith_muli_119 = (for_iter_116 * arith_const_14); 
      for (int for_iter_120 = arith_const_24; for_iter_120 < arith_const_17; for_iter_120 += arith_const_23) {
        int arith_muli_121 = (for_iter_120 * arith_const_18); 
        int arith_addi_122 = (arith_muli_119 + arith_muli_121); 
        double memref_load_123 = func_arg_5[arith_addi_122]; 
        double arith_divf_124 = (memref_load_123 / func_arg_2); 
        func_arg_5[arith_addi_122] = arith_divf_124; 
        int arith_addi_125 = (arith_addi_122 + arith_const_23); 
        double memref_load_126 = func_arg_5[arith_addi_125]; 
        double arith_divf_127 = (memref_load_126 / func_arg_2); 
        func_arg_5[arith_addi_125] = arith_divf_127; 
        int arith_addi_128 = (arith_addi_122 + arith_const_16); 
        double memref_load_129 = func_arg_5[arith_addi_128]; 
        double arith_divf_130 = (memref_load_129 / func_arg_2); 
        func_arg_5[arith_addi_128] = arith_divf_130; 
        int arith_addi_131 = (arith_addi_122 + arith_const_15); 
        double memref_load_132 = func_arg_5[arith_addi_131]; 
        double arith_divf_133 = (memref_load_132 / func_arg_2); 
        func_arg_5[arith_addi_131] = arith_divf_133; 
      }
      PAST_SET_SEMAPHORE(execute_token_118, PAST_TASK_FINISHED); 
    }
    async_group_114[async_group_index_115] = execute_token_118; 
    async_group_index_115++; 
    int arith_addi_134 = (for_iter_arg_117 + arith_const_23); 
    for_iter_arg_117 = arith_addi_134; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_114, async_group_index_115, PAST_TASK_FINISHED); 
  int* async_group_135; 
  int async_group_index_136 = 0; 
  int for_iter_arg_138 = arith_const_24; 
  for (int for_iter_137 = arith_const_24; for_iter_137 < arith_const_23; for_iter_137 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_139); 
    #pragma peqc async_execute
    {
      int arith_muli_140 = (for_iter_137 * arith_const_22); 
      for (int for_iter_141 = arith_const_24; for_iter_141 < arith_const_23; for_iter_141 += arith_const_23) {
        int arith_muli_142 = (for_iter_141 * arith_const_14); 
        for (int for_iter_143 = arith_const_24; for_iter_143 < arith_const_22; for_iter_143 += arith_const_23) {
          int arith_addi_144 = (arith_muli_140 + for_iter_143); 
          for (int for_iter_145 = arith_const_24; for_iter_145 < arith_const_17; for_iter_145 += arith_const_23) {
            int arith_muli_146 = (for_iter_145 * arith_const_18); 
            int arith_addi_147 = (arith_muli_142 + arith_muli_146); 
            double memref_load_148 = func_arg_3[arith_addi_144][arith_addi_147]; 
            double memref_load_149 = func_arg_5[arith_addi_147]; 
            double arith_subf_150 = (memref_load_148 - memref_load_149); 
            func_arg_3[arith_addi_144][arith_addi_147] = arith_subf_150; 
            int arith_addi_151 = (arith_addi_147 + arith_const_23); 
            double memref_load_152 = func_arg_3[arith_addi_144][arith_addi_151]; 
            double memref_load_153 = func_arg_5[arith_addi_151]; 
            double arith_subf_154 = (memref_load_152 - memref_load_153); 
            func_arg_3[arith_addi_144][arith_addi_151] = arith_subf_154; 
            int arith_addi_155 = (arith_addi_147 + arith_const_16); 
            double memref_load_156 = func_arg_3[arith_addi_144][arith_addi_155]; 
            double memref_load_157 = func_arg_5[arith_addi_155]; 
            double arith_subf_158 = (memref_load_156 - memref_load_157); 
            func_arg_3[arith_addi_144][arith_addi_155] = arith_subf_158; 
            int arith_addi_159 = (arith_addi_147 + arith_const_15); 
            double memref_load_160 = func_arg_3[arith_addi_144][arith_addi_159]; 
            double memref_load_161 = func_arg_5[arith_addi_159]; 
            double arith_subf_162 = (memref_load_160 - memref_load_161); 
            func_arg_3[arith_addi_144][arith_addi_159] = arith_subf_162; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_139, PAST_TASK_FINISHED); 
    }
    async_group_135[async_group_index_136] = execute_token_139; 
    async_group_index_136++; 
    int arith_addi_163 = (for_iter_arg_138 + arith_const_23); 
    for_iter_arg_138 = arith_addi_163; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_135, async_group_index_136, PAST_TASK_FINISHED); 
  int* async_group_164; 
  int async_group_index_165 = 0; 
  int for_iter_arg_167 = arith_const_24; 
  for (int for_iter_166 = arith_const_24; for_iter_166 < arith_const_23; for_iter_166 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_168); 
    #pragma peqc async_execute
    {
      int arith_muli_169 = (for_iter_166 * arith_const_22); 
      for (int for_iter_170 = arith_const_24; for_iter_170 < arith_const_23; for_iter_170 += arith_const_23) {
        int arith_muli_171 = (for_iter_170 * arith_const_22); 
        for (int for_iter_172 = arith_const_24; for_iter_172 < arith_const_21; for_iter_172 += arith_const_23) {
          int arith_addi_173 = (arith_muli_169 + for_iter_172); 
          for (int for_iter_174 = arith_const_24; for_iter_174 < arith_const_22; for_iter_174 += arith_const_23) {
            int arith_addi_175 = (arith_muli_171 + for_iter_174); 
            double memref_load_176 = func_arg_3[arith_addi_175][arith_addi_173]; 
            double memref_load_177 = func_arg_3[arith_addi_175][arith_addi_173]; 
            double memref_load_178 = func_arg_3[arith_addi_175][arith_addi_173]; 
            double memref_load_179 = func_arg_3[arith_addi_175][arith_addi_173]; 
            int arith_muli_180 = (for_iter_166 * arith_const_20); 
            int arith_muli_181 = (for_iter_172 * arith_const_19); 
            int arith_cmpi_182 = (arith_muli_181 < arith_const_24); 
            int arith_subi_183 = (arith_const_19 - arith_muli_181); 
            int arith_select_184 = (arith_cmpi_182 ? arith_subi_183 : arith_muli_181); 
            int arith_divi_185 = (arith_select_184 / arith_const_18); 
            int arith_subi_186 = (arith_const_19 - arith_divi_185); 
            int arith_select_187 = (arith_cmpi_182 ? arith_subi_186 : arith_divi_185); 
            int arith_addi_188 = (arith_muli_180 + arith_select_187); 
            int arith_addi_189 = (arith_addi_188 + arith_const_17); 
            for (int for_iter_190 = arith_const_24; for_iter_190 < arith_addi_189; for_iter_190 += arith_const_23) {
              int arith_muli_191 = (for_iter_190 * arith_const_18); 
              int arith_addi_192 = (arith_addi_173 + arith_muli_191); 
              double memref_load_193 = func_arg_4[arith_addi_173][arith_addi_192]; 
              double memref_load_194 = func_arg_3[arith_addi_175][arith_addi_192]; 
              double arith_mulf_195 = (memref_load_176 * memref_load_194); 
              double arith_addf_196 = (memref_load_193 + arith_mulf_195); 
              func_arg_4[arith_addi_173][arith_addi_192] = arith_addf_196; 
              int arith_addi_197 = (arith_addi_192 + arith_const_23); 
              double memref_load_198 = func_arg_4[arith_addi_173][arith_addi_197]; 
              double memref_load_199 = func_arg_3[arith_addi_175][arith_addi_197]; 
              double arith_mulf_200 = (memref_load_177 * memref_load_199); 
              double arith_addf_201 = (memref_load_198 + arith_mulf_200); 
              func_arg_4[arith_addi_173][arith_addi_197] = arith_addf_201; 
              int arith_addi_202 = (arith_addi_192 + arith_const_16); 
              double memref_load_203 = func_arg_4[arith_addi_173][arith_addi_202]; 
              double memref_load_204 = func_arg_3[arith_addi_175][arith_addi_202]; 
              double arith_mulf_205 = (memref_load_178 * memref_load_204); 
              double arith_addf_206 = (memref_load_203 + arith_mulf_205); 
              func_arg_4[arith_addi_173][arith_addi_202] = arith_addf_206; 
              int arith_addi_207 = (arith_addi_192 + arith_const_15); 
              double memref_load_208 = func_arg_4[arith_addi_173][arith_addi_207]; 
              double memref_load_209 = func_arg_3[arith_addi_175][arith_addi_207]; 
              double arith_mulf_210 = (memref_load_179 * memref_load_209); 
              double arith_addf_211 = (memref_load_208 + arith_mulf_210); 
              func_arg_4[arith_addi_173][arith_addi_207] = arith_addf_211; 
            }
            double memref_load_212 = func_arg_3[arith_addi_175][arith_addi_173]; 
            int arith_muli_213 = (for_iter_172 * arith_const_19); 
            int arith_remsi_214 = (arith_muli_213 % arith_const_18); 
            int arith_cmpi_215 = (arith_remsi_214 < arith_const_24); 
            int arith_addi_216 = (arith_remsi_214 + arith_const_18); 
            int arith_select_217 = (arith_cmpi_215 ? arith_addi_216 : arith_remsi_214); 
            for (int for_iter_218 = arith_const_24; for_iter_218 < arith_select_217; for_iter_218 += arith_const_23) {
              int arith_addi_219 = (arith_addi_173 + for_iter_218); 
              int arith_muli_220 = (arith_addi_173 * arith_const_19); 
              int arith_cmpi_221 = (arith_muli_220 < arith_const_24); 
              int arith_subi_222 = (arith_const_19 - arith_muli_220); 
              int arith_select_223 = (arith_cmpi_221 ? arith_subi_222 : arith_muli_220); 
              int arith_divi_224 = (arith_select_223 / arith_const_18); 
              int arith_subi_225 = (arith_const_19 - arith_divi_224); 
              int arith_select_226 = (arith_cmpi_221 ? arith_subi_225 : arith_divi_224); 
              int arith_muli_227 = (arith_select_226 * arith_const_18); 
              int arith_addi_228 = (arith_addi_219 + arith_muli_227); 
              int arith_addi_229 = (arith_addi_228 + arith_const_21); 
              double memref_load_230 = func_arg_4[arith_addi_173][arith_addi_229]; 
              double memref_load_231 = func_arg_3[arith_addi_175][arith_addi_229]; 
              double arith_mulf_232 = (memref_load_212 * memref_load_231); 
              double arith_addf_233 = (memref_load_230 + arith_mulf_232); 
              func_arg_4[arith_addi_173][arith_addi_229] = arith_addf_233; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_168, PAST_TASK_FINISHED); 
    }
    async_group_164[async_group_index_165] = execute_token_168; 
    async_group_index_165++; 
    int arith_addi_234 = (for_iter_arg_167 + arith_const_23); 
    for_iter_arg_167 = arith_addi_234; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_164, async_group_index_165, PAST_TASK_FINISHED); 
  double memref_load_235 = memref_alloca_28[arith_const_24]; 
  for (int for_iter_236 = arith_const_24; for_iter_236 < arith_const_13; for_iter_236 += arith_const_23) {
    int arith_muli_237 = (for_iter_236 * arith_const_12); 
    int arith_addi_238 = (arith_muli_237 + arith_const_11); 
    int arith_cmpi_239 = (arith_addi_238 <= arith_const_24); 
    int arith_subi_240 = (arith_const_24 - arith_addi_238); 
    int arith_subi_241 = (arith_addi_238 - arith_const_23); 
    int arith_select_242 = (arith_cmpi_239 ? arith_subi_240 : arith_subi_241); 
    int arith_divi_243 = (arith_select_242 / arith_const_10); 
    int arith_subi_244 = (arith_const_24 - arith_divi_243); 
    int arith_addi_245 = (arith_divi_243 + arith_const_23); 
    int arith_select_246 = (arith_cmpi_239 ? arith_subi_244 : arith_addi_245); 
    int arith_maxsi_247 = max(arith_select_246, arith_const_24); 
    int arith_muli_248 = (for_iter_236 * arith_const_22); 
    int arith_addi_249 = (arith_muli_248 + arith_const_9); 
    int arith_cmpi_250 = (arith_addi_249 < arith_const_24); 
    int arith_subi_251 = (arith_const_19 - arith_addi_249); 
    int arith_select_252 = (arith_cmpi_250 ? arith_subi_251 : arith_addi_249); 
    int arith_divi_253 = (arith_select_252 / arith_const_8); 
    int arith_subi_254 = (arith_const_19 - arith_divi_253); 
    int arith_select_255 = (arith_cmpi_250 ? arith_subi_254 : arith_divi_253); 
    int arith_addi_256 = (arith_select_255 + arith_const_23); 
    for (int for_iter_257 = arith_maxsi_247; for_iter_257 < arith_addi_256; for_iter_257 += arith_const_23) {
      int arith_muli_258 = (for_iter_236 * arith_const_22); 
      int arith_muli_259 = (for_iter_257 * arith_const_8); 
      int arith_maxsi_260 = max(arith_muli_258, arith_muli_259); 
      int arith_muli_261 = (for_iter_236 * arith_const_22); 
      int arith_addi_262 = (arith_muli_261 + arith_const_22); 
      int arith_muli_263 = (for_iter_257 * arith_const_7); 
      int arith_addi_264 = (arith_muli_263 + arith_const_21); 
      int arith_minsi_265 = min(arith_addi_262, arith_addi_264); 
      for (int for_iter_266 = arith_maxsi_260; for_iter_266 < arith_minsi_265; for_iter_266 += arith_const_23) {
        int arith_muli_267 = (for_iter_266 * arith_const_6); 
        int arith_addi_268 = (arith_muli_267 + for_iter_257); 
        double memref_load_269 = func_arg_4[for_iter_257][arith_addi_268]; 
        double arith_divf_270 = (memref_load_269 / memref_load_235); 
        memref_alloca_27[arith_const_24] = arith_divf_270; 
        int arith_muli_271 = (for_iter_266 * arith_const_6); 
        int arith_addi_272 = (arith_muli_271 + for_iter_257); 
        func_arg_4[for_iter_257][arith_addi_272] = arith_divf_270; 
        double memref_load_273 = memref_alloca_27[arith_const_24]; 
        int arith_muli_274 = (for_iter_266 * arith_const_6); 
        int arith_addi_275 = (arith_muli_274 + for_iter_257); 
        func_arg_4[arith_addi_275][for_iter_257] = memref_load_273; 
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
