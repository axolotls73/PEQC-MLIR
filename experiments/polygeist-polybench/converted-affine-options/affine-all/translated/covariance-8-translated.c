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
  int arith_const_14 = 32; 
  int arith_const_15 = 3; 
  int arith_const_16 = 2; 
  int arith_const_17 = 7; 
  int arith_const_18 = 4; 
  int arith_const_19 = -1; 
  int arith_const_20 = 1; 
  int arith_const_21 = 28; 
  int arith_const_22 = 0; 
  double arith_const_23 = 1.000000; 
  double arith_const_24 = 0.000000; 
  double* memref_alloca_25; 
  double* memref_alloca_26; 
  int* async_group_27; 
  int async_group_index_28 = 0; 
  int for_iter_arg_30 = arith_const_22; 
  for (int for_iter_29 = arith_const_22; for_iter_29 < arith_const_21; for_iter_29 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_31); 
    #pragma peqc async_execute
    {
      for (int for_iter_32 = arith_const_22; for_iter_32 < arith_const_20; for_iter_32 += arith_const_20) {
        int arith_addi_33 = (for_iter_29 + for_iter_32); 
        int arith_muli_34 = (for_iter_29 * arith_const_19); 
        int arith_muli_35 = (for_iter_32 * arith_const_19); 
        int arith_addi_36 = (arith_muli_34 + arith_muli_35); 
        int arith_cmpi_37 = (arith_addi_36 < arith_const_22); 
        int arith_subi_38 = (arith_const_19 - arith_addi_36); 
        int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : arith_addi_36); 
        int arith_divi_40 = (arith_select_39 / arith_const_18); 
        int arith_subi_41 = (arith_const_19 - arith_divi_40); 
        int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
        int arith_addi_43 = (arith_select_42 + arith_const_17); 
        for (int for_iter_44 = arith_const_22; for_iter_44 < arith_addi_43; for_iter_44 += arith_const_20) {
          int arith_muli_45 = (for_iter_44 * arith_const_18); 
          int arith_addi_46 = (arith_addi_33 + arith_muli_45); 
          func_arg_4[arith_addi_33][arith_addi_46] = arith_const_24; 
          int arith_addi_47 = (arith_addi_46 + arith_const_20); 
          func_arg_4[arith_addi_33][arith_addi_47] = arith_const_24; 
          int arith_addi_48 = (arith_addi_46 + arith_const_16); 
          func_arg_4[arith_addi_33][arith_addi_48] = arith_const_24; 
          int arith_addi_49 = (arith_addi_46 + arith_const_15); 
          func_arg_4[arith_addi_33][arith_addi_49] = arith_const_24; 
        }
        int arith_muli_50 = (for_iter_29 * arith_const_19); 
        int arith_muli_51 = (for_iter_32 * arith_const_19); 
        int arith_addi_52 = (arith_muli_50 + arith_muli_51); 
        int arith_remsi_53 = (arith_addi_52 % arith_const_18); 
        int arith_cmpi_54 = (arith_remsi_53 < arith_const_22); 
        int arith_addi_55 = (arith_remsi_53 + arith_const_18); 
        int arith_select_56 = (arith_cmpi_54 ? arith_addi_55 : arith_remsi_53); 
        for (int for_iter_57 = arith_const_22; for_iter_57 < arith_select_56; for_iter_57 += arith_const_20) {
          int arith_addi_58 = (arith_addi_33 + for_iter_57); 
          int arith_muli_59 = (arith_addi_33 * arith_const_19); 
          int arith_cmpi_60 = (arith_muli_59 < arith_const_22); 
          int arith_subi_61 = (arith_const_19 - arith_muli_59); 
          int arith_select_62 = (arith_cmpi_60 ? arith_subi_61 : arith_muli_59); 
          int arith_divi_63 = (arith_select_62 / arith_const_18); 
          int arith_subi_64 = (arith_const_19 - arith_divi_63); 
          int arith_select_65 = (arith_cmpi_60 ? arith_subi_64 : arith_divi_63); 
          int arith_muli_66 = (arith_select_65 * arith_const_18); 
          int arith_addi_67 = (arith_addi_58 + arith_muli_66); 
          int arith_addi_68 = (arith_addi_67 + arith_const_21); 
          func_arg_4[arith_addi_33][arith_addi_68] = arith_const_24; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
    }
    async_group_27[async_group_index_28] = execute_token_31; 
    async_group_index_28++; 
    int arith_addi_69 = (for_iter_arg_30 + arith_const_20); 
    for_iter_arg_30 = arith_addi_69; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
  double arith_subf_70 = (func_arg_2 - arith_const_23); 
  memref_alloca_26[arith_const_22] = arith_subf_70; 
  for (int for_iter_71 = arith_const_22; for_iter_71 < arith_const_17; for_iter_71 += arith_const_20) {
    int arith_muli_72 = (for_iter_71 * arith_const_18); 
    for (int for_iter_73 = arith_const_22; for_iter_73 < arith_const_20; for_iter_73 += arith_const_20) {
      int arith_muli_74 = (for_iter_73 * arith_const_18); 
      int arith_addi_75 = (arith_muli_72 + arith_muli_74); 
      func_arg_5[arith_addi_75] = arith_const_24; 
      int arith_addi_76 = (arith_addi_75 + arith_const_20); 
      func_arg_5[arith_addi_76] = arith_const_24; 
      int arith_addi_77 = (arith_addi_75 + arith_const_16); 
      func_arg_5[arith_addi_77] = arith_const_24; 
      int arith_addi_78 = (arith_addi_75 + arith_const_15); 
      func_arg_5[arith_addi_78] = arith_const_24; 
    }
  }
  for (int for_iter_79 = arith_const_22; for_iter_79 < arith_const_14; for_iter_79 += arith_const_20) {
    for (int for_iter_80 = arith_const_22; for_iter_80 < arith_const_17; for_iter_80 += arith_const_20) {
      int arith_muli_81 = (for_iter_80 * arith_const_18); 
      int* async_group_82; 
      int async_group_index_83 = 0; 
      int for_iter_arg_85 = arith_const_22; 
      for (int for_iter_84 = arith_const_22; for_iter_84 < arith_const_20; for_iter_84 += arith_const_20) {
        PAST_NEW_SEMAPHORE(execute_token_86); 
        #pragma peqc async_execute
        {
          int arith_addi_87 = (for_iter_79 + for_iter_84); 
          for (int for_iter_88 = arith_const_22; for_iter_88 < arith_const_20; for_iter_88 += arith_const_20) {
            int arith_muli_89 = (for_iter_88 * arith_const_18); 
            int arith_addi_90 = (arith_muli_81 + arith_muli_89); 
            double memref_load_91 = func_arg_5[arith_addi_90]; 
            double memref_load_92 = func_arg_3[arith_addi_87][arith_addi_90]; 
            double arith_addf_93 = (memref_load_91 + memref_load_92); 
            func_arg_5[arith_addi_90] = arith_addf_93; 
            int arith_addi_94 = (arith_addi_90 + arith_const_20); 
            double memref_load_95 = func_arg_5[arith_addi_94]; 
            double memref_load_96 = func_arg_3[arith_addi_87][arith_addi_94]; 
            double arith_addf_97 = (memref_load_95 + memref_load_96); 
            func_arg_5[arith_addi_94] = arith_addf_97; 
            int arith_addi_98 = (arith_addi_90 + arith_const_16); 
            double memref_load_99 = func_arg_5[arith_addi_98]; 
            double memref_load_100 = func_arg_3[arith_addi_87][arith_addi_98]; 
            double arith_addf_101 = (memref_load_99 + memref_load_100); 
            func_arg_5[arith_addi_98] = arith_addf_101; 
            int arith_addi_102 = (arith_addi_90 + arith_const_15); 
            double memref_load_103 = func_arg_5[arith_addi_102]; 
            double memref_load_104 = func_arg_3[arith_addi_87][arith_addi_102]; 
            double arith_addf_105 = (memref_load_103 + memref_load_104); 
            func_arg_5[arith_addi_102] = arith_addf_105; 
          }
          PAST_SET_SEMAPHORE(execute_token_86, PAST_TASK_FINISHED); 
        }
        async_group_82[async_group_index_83] = execute_token_86; 
        async_group_index_83++; 
        int arith_addi_106 = (for_iter_arg_85 + arith_const_20); 
        for_iter_arg_85 = arith_addi_106; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_82, async_group_index_83, PAST_TASK_FINISHED); 
    }
  }
  for (int for_iter_107 = arith_const_22; for_iter_107 < arith_const_17; for_iter_107 += arith_const_20) {
    int arith_muli_108 = (for_iter_107 * arith_const_18); 
    for (int for_iter_109 = arith_const_22; for_iter_109 < arith_const_20; for_iter_109 += arith_const_20) {
      int arith_muli_110 = (for_iter_109 * arith_const_18); 
      int arith_addi_111 = (arith_muli_108 + arith_muli_110); 
      double memref_load_112 = func_arg_5[arith_addi_111]; 
      double arith_divf_113 = (memref_load_112 / func_arg_2); 
      func_arg_5[arith_addi_111] = arith_divf_113; 
      int arith_addi_114 = (arith_addi_111 + arith_const_20); 
      double memref_load_115 = func_arg_5[arith_addi_114]; 
      double arith_divf_116 = (memref_load_115 / func_arg_2); 
      func_arg_5[arith_addi_114] = arith_divf_116; 
      int arith_addi_117 = (arith_addi_111 + arith_const_16); 
      double memref_load_118 = func_arg_5[arith_addi_117]; 
      double arith_divf_119 = (memref_load_118 / func_arg_2); 
      func_arg_5[arith_addi_117] = arith_divf_119; 
      int arith_addi_120 = (arith_addi_111 + arith_const_15); 
      double memref_load_121 = func_arg_5[arith_addi_120]; 
      double arith_divf_122 = (memref_load_121 / func_arg_2); 
      func_arg_5[arith_addi_120] = arith_divf_122; 
    }
  }
  int* async_group_123; 
  int async_group_index_124 = 0; 
  int for_iter_arg_126 = arith_const_22; 
  for (int for_iter_125 = arith_const_22; for_iter_125 < arith_const_14; for_iter_125 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_127); 
    #pragma peqc async_execute
    {
      for (int for_iter_128 = arith_const_22; for_iter_128 < arith_const_17; for_iter_128 += arith_const_20) {
        int arith_muli_129 = (for_iter_128 * arith_const_18); 
        for (int for_iter_130 = arith_const_22; for_iter_130 < arith_const_20; for_iter_130 += arith_const_20) {
          int arith_addi_131 = (for_iter_125 + for_iter_130); 
          for (int for_iter_132 = arith_const_22; for_iter_132 < arith_const_20; for_iter_132 += arith_const_20) {
            int arith_muli_133 = (for_iter_132 * arith_const_18); 
            int arith_addi_134 = (arith_muli_129 + arith_muli_133); 
            double memref_load_135 = func_arg_3[arith_addi_131][arith_addi_134]; 
            double memref_load_136 = func_arg_5[arith_addi_134]; 
            double arith_subf_137 = (memref_load_135 - memref_load_136); 
            func_arg_3[arith_addi_131][arith_addi_134] = arith_subf_137; 
            int arith_addi_138 = (arith_addi_134 + arith_const_20); 
            double memref_load_139 = func_arg_3[arith_addi_131][arith_addi_138]; 
            double memref_load_140 = func_arg_5[arith_addi_138]; 
            double arith_subf_141 = (memref_load_139 - memref_load_140); 
            func_arg_3[arith_addi_131][arith_addi_138] = arith_subf_141; 
            int arith_addi_142 = (arith_addi_134 + arith_const_16); 
            double memref_load_143 = func_arg_3[arith_addi_131][arith_addi_142]; 
            double memref_load_144 = func_arg_5[arith_addi_142]; 
            double arith_subf_145 = (memref_load_143 - memref_load_144); 
            func_arg_3[arith_addi_131][arith_addi_142] = arith_subf_145; 
            int arith_addi_146 = (arith_addi_134 + arith_const_15); 
            double memref_load_147 = func_arg_3[arith_addi_131][arith_addi_146]; 
            double memref_load_148 = func_arg_5[arith_addi_146]; 
            double arith_subf_149 = (memref_load_147 - memref_load_148); 
            func_arg_3[arith_addi_131][arith_addi_146] = arith_subf_149; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_127, PAST_TASK_FINISHED); 
    }
    async_group_123[async_group_index_124] = execute_token_127; 
    async_group_index_124++; 
    int arith_addi_150 = (for_iter_arg_126 + arith_const_20); 
    for_iter_arg_126 = arith_addi_150; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_123, async_group_index_124, PAST_TASK_FINISHED); 
  int* async_group_151; 
  int async_group_index_152 = 0; 
  int for_iter_arg_154 = arith_const_22; 
  for (int for_iter_153 = arith_const_22; for_iter_153 < arith_const_21; for_iter_153 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_155); 
    #pragma peqc async_execute
    {
      for (int for_iter_156 = arith_const_22; for_iter_156 < arith_const_14; for_iter_156 += arith_const_20) {
        for (int for_iter_157 = arith_const_22; for_iter_157 < arith_const_20; for_iter_157 += arith_const_20) {
          int arith_addi_158 = (for_iter_153 + for_iter_157); 
          for (int for_iter_159 = arith_const_22; for_iter_159 < arith_const_20; for_iter_159 += arith_const_20) {
            int arith_addi_160 = (for_iter_156 + for_iter_159); 
            double memref_load_161 = func_arg_3[arith_addi_160][arith_addi_158]; 
            double memref_load_162 = func_arg_3[arith_addi_160][arith_addi_158]; 
            double memref_load_163 = func_arg_3[arith_addi_160][arith_addi_158]; 
            double memref_load_164 = func_arg_3[arith_addi_160][arith_addi_158]; 
            int arith_muli_165 = (for_iter_153 * arith_const_19); 
            int arith_muli_166 = (for_iter_157 * arith_const_19); 
            int arith_addi_167 = (arith_muli_165 + arith_muli_166); 
            int arith_cmpi_168 = (arith_addi_167 < arith_const_22); 
            int arith_subi_169 = (arith_const_19 - arith_addi_167); 
            int arith_select_170 = (arith_cmpi_168 ? arith_subi_169 : arith_addi_167); 
            int arith_divi_171 = (arith_select_170 / arith_const_18); 
            int arith_subi_172 = (arith_const_19 - arith_divi_171); 
            int arith_select_173 = (arith_cmpi_168 ? arith_subi_172 : arith_divi_171); 
            int arith_addi_174 = (arith_select_173 + arith_const_17); 
            for (int for_iter_175 = arith_const_22; for_iter_175 < arith_addi_174; for_iter_175 += arith_const_20) {
              int arith_muli_176 = (for_iter_175 * arith_const_18); 
              int arith_addi_177 = (arith_addi_158 + arith_muli_176); 
              double memref_load_178 = func_arg_4[arith_addi_158][arith_addi_177]; 
              double memref_load_179 = func_arg_3[arith_addi_160][arith_addi_177]; 
              double arith_mulf_180 = (memref_load_161 * memref_load_179); 
              double arith_addf_181 = (memref_load_178 + arith_mulf_180); 
              func_arg_4[arith_addi_158][arith_addi_177] = arith_addf_181; 
              int arith_addi_182 = (arith_addi_177 + arith_const_20); 
              double memref_load_183 = func_arg_4[arith_addi_158][arith_addi_182]; 
              double memref_load_184 = func_arg_3[arith_addi_160][arith_addi_182]; 
              double arith_mulf_185 = (memref_load_162 * memref_load_184); 
              double arith_addf_186 = (memref_load_183 + arith_mulf_185); 
              func_arg_4[arith_addi_158][arith_addi_182] = arith_addf_186; 
              int arith_addi_187 = (arith_addi_177 + arith_const_16); 
              double memref_load_188 = func_arg_4[arith_addi_158][arith_addi_187]; 
              double memref_load_189 = func_arg_3[arith_addi_160][arith_addi_187]; 
              double arith_mulf_190 = (memref_load_163 * memref_load_189); 
              double arith_addf_191 = (memref_load_188 + arith_mulf_190); 
              func_arg_4[arith_addi_158][arith_addi_187] = arith_addf_191; 
              int arith_addi_192 = (arith_addi_177 + arith_const_15); 
              double memref_load_193 = func_arg_4[arith_addi_158][arith_addi_192]; 
              double memref_load_194 = func_arg_3[arith_addi_160][arith_addi_192]; 
              double arith_mulf_195 = (memref_load_164 * memref_load_194); 
              double arith_addf_196 = (memref_load_193 + arith_mulf_195); 
              func_arg_4[arith_addi_158][arith_addi_192] = arith_addf_196; 
            }
            double memref_load_197 = func_arg_3[arith_addi_160][arith_addi_158]; 
            int arith_muli_198 = (for_iter_153 * arith_const_19); 
            int arith_muli_199 = (for_iter_157 * arith_const_19); 
            int arith_addi_200 = (arith_muli_198 + arith_muli_199); 
            int arith_remsi_201 = (arith_addi_200 % arith_const_18); 
            int arith_cmpi_202 = (arith_remsi_201 < arith_const_22); 
            int arith_addi_203 = (arith_remsi_201 + arith_const_18); 
            int arith_select_204 = (arith_cmpi_202 ? arith_addi_203 : arith_remsi_201); 
            for (int for_iter_205 = arith_const_22; for_iter_205 < arith_select_204; for_iter_205 += arith_const_20) {
              int arith_addi_206 = (arith_addi_158 + for_iter_205); 
              int arith_muli_207 = (arith_addi_158 * arith_const_19); 
              int arith_cmpi_208 = (arith_muli_207 < arith_const_22); 
              int arith_subi_209 = (arith_const_19 - arith_muli_207); 
              int arith_select_210 = (arith_cmpi_208 ? arith_subi_209 : arith_muli_207); 
              int arith_divi_211 = (arith_select_210 / arith_const_18); 
              int arith_subi_212 = (arith_const_19 - arith_divi_211); 
              int arith_select_213 = (arith_cmpi_208 ? arith_subi_212 : arith_divi_211); 
              int arith_muli_214 = (arith_select_213 * arith_const_18); 
              int arith_addi_215 = (arith_addi_206 + arith_muli_214); 
              int arith_addi_216 = (arith_addi_215 + arith_const_21); 
              double memref_load_217 = func_arg_4[arith_addi_158][arith_addi_216]; 
              double memref_load_218 = func_arg_3[arith_addi_160][arith_addi_216]; 
              double arith_mulf_219 = (memref_load_197 * memref_load_218); 
              double arith_addf_220 = (memref_load_217 + arith_mulf_219); 
              func_arg_4[arith_addi_158][arith_addi_216] = arith_addf_220; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_155, PAST_TASK_FINISHED); 
    }
    async_group_151[async_group_index_152] = execute_token_155; 
    async_group_index_152++; 
    int arith_addi_221 = (for_iter_arg_154 + arith_const_20); 
    for_iter_arg_154 = arith_addi_221; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_151, async_group_index_152, PAST_TASK_FINISHED); 
  double memref_load_222 = memref_alloca_26[arith_const_22]; 
  for (int for_iter_223 = arith_const_22; for_iter_223 < arith_const_13; for_iter_223 += arith_const_20) {
    int arith_muli_224 = (for_iter_223 * arith_const_12); 
    int arith_addi_225 = (arith_muli_224 + arith_const_11); 
    int arith_cmpi_226 = (arith_addi_225 <= arith_const_22); 
    int arith_subi_227 = (arith_const_22 - arith_addi_225); 
    int arith_subi_228 = (arith_addi_225 - arith_const_20); 
    int arith_select_229 = (arith_cmpi_226 ? arith_subi_227 : arith_subi_228); 
    int arith_divi_230 = (arith_select_229 / arith_const_10); 
    int arith_subi_231 = (arith_const_22 - arith_divi_230); 
    int arith_addi_232 = (arith_divi_230 + arith_const_20); 
    int arith_select_233 = (arith_cmpi_226 ? arith_subi_231 : arith_addi_232); 
    int arith_maxsi_234 = max(arith_select_233, arith_const_22); 
    int arith_muli_235 = (for_iter_223 * arith_const_14); 
    int arith_addi_236 = (arith_muli_235 + arith_const_9); 
    int arith_cmpi_237 = (arith_addi_236 < arith_const_22); 
    int arith_subi_238 = (arith_const_19 - arith_addi_236); 
    int arith_select_239 = (arith_cmpi_237 ? arith_subi_238 : arith_addi_236); 
    int arith_divi_240 = (arith_select_239 / arith_const_8); 
    int arith_subi_241 = (arith_const_19 - arith_divi_240); 
    int arith_select_242 = (arith_cmpi_237 ? arith_subi_241 : arith_divi_240); 
    int arith_addi_243 = (arith_select_242 + arith_const_20); 
    for (int for_iter_244 = arith_maxsi_234; for_iter_244 < arith_addi_243; for_iter_244 += arith_const_20) {
      int arith_muli_245 = (for_iter_223 * arith_const_14); 
      int arith_muli_246 = (for_iter_244 * arith_const_8); 
      int arith_maxsi_247 = max(arith_muli_245, arith_muli_246); 
      int arith_muli_248 = (for_iter_223 * arith_const_14); 
      int arith_addi_249 = (arith_muli_248 + arith_const_14); 
      int arith_muli_250 = (for_iter_244 * arith_const_7); 
      int arith_addi_251 = (arith_muli_250 + arith_const_21); 
      int arith_minsi_252 = min(arith_addi_249, arith_addi_251); 
      for (int for_iter_253 = arith_maxsi_247; for_iter_253 < arith_minsi_252; for_iter_253 += arith_const_20) {
        int arith_muli_254 = (for_iter_253 * arith_const_6); 
        int arith_addi_255 = (arith_muli_254 + for_iter_244); 
        double memref_load_256 = func_arg_4[for_iter_244][arith_addi_255]; 
        double arith_divf_257 = (memref_load_256 / memref_load_222); 
        memref_alloca_25[arith_const_22] = arith_divf_257; 
        int arith_muli_258 = (for_iter_253 * arith_const_6); 
        int arith_addi_259 = (arith_muli_258 + for_iter_244); 
        func_arg_4[for_iter_244][arith_addi_259] = arith_divf_257; 
        double memref_load_260 = memref_alloca_25[arith_const_22]; 
        int arith_muli_261 = (for_iter_253 * arith_const_6); 
        int arith_addi_262 = (arith_muli_261 + for_iter_244); 
        func_arg_4[arith_addi_262][for_iter_244] = memref_load_260; 
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
