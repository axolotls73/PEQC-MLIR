#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 7; 
  int arith_const_8 = 24; 
  int arith_const_9 = 6; 
  int arith_const_10 = 128; 
  int arith_const_11 = -4; 
  int arith_const_12 = 3; 
  int arith_const_13 = 2; 
  int arith_const_14 = 4; 
  int arith_const_15 = -32; 
  int arith_const_16 = -1; 
  int arith_const_17 = 32; 
  int arith_const_18 = 1; 
  int arith_const_19 = 0; 
  int arith_const_20 = 27; 
  double arith_const_21 = 0.100000; 
  double arith_const_22 = 0.000000; 
  double arith_const_23 = 1.000000; 
  double* memref_alloca_24; 
  func_arg_4[arith_const_20][arith_const_20] = arith_const_23; 
  int* async_group_25; 
  int async_group_index_26 = 0; 
  int for_iter_arg_28 = arith_const_19; 
  for (int for_iter_27 = arith_const_19; for_iter_27 < arith_const_18; for_iter_27 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_29); 
    #pragma peqc async_execute
    {
      int arith_muli_30 = (for_iter_27 * arith_const_17); 
      for (int for_iter_31 = arith_const_19; for_iter_31 < arith_const_20; for_iter_31 += arith_const_18) {
        int arith_addi_32 = (arith_muli_30 + for_iter_31); 
        int arith_muli_33 = (for_iter_31 * arith_const_16); 
        int arith_muli_34 = (for_iter_27 * arith_const_15); 
        int arith_addi_35 = (arith_muli_33 + arith_muli_34); 
        int arith_addi_36 = (arith_addi_35 + arith_const_20); 
        int arith_cmpi_37 = (arith_addi_36 < arith_const_19); 
        int arith_subi_38 = (arith_const_16 - arith_addi_36); 
        int arith_select_39 = (arith_cmpi_37 ? arith_subi_38 : arith_addi_36); 
        int arith_divi_40 = (arith_select_39 / arith_const_14); 
        int arith_subi_41 = (arith_const_16 - arith_divi_40); 
        int arith_select_42 = (arith_cmpi_37 ? arith_subi_41 : arith_divi_40); 
        for (int for_iter_43 = arith_const_19; for_iter_43 < arith_select_42; for_iter_43 += arith_const_18) {
          int arith_muli_44 = (for_iter_43 * arith_const_14); 
          int arith_addi_45 = (arith_addi_32 + arith_muli_44); 
          int arith_addi_46 = (arith_addi_45 + arith_const_18); 
          func_arg_4[arith_addi_32][arith_addi_46] = arith_const_22; 
          int arith_addi_47 = (arith_addi_46 + arith_const_18); 
          func_arg_4[arith_addi_32][arith_addi_47] = arith_const_22; 
          int arith_addi_48 = (arith_addi_46 + arith_const_13); 
          func_arg_4[arith_addi_32][arith_addi_48] = arith_const_22; 
          int arith_addi_49 = (arith_addi_46 + arith_const_12); 
          func_arg_4[arith_addi_32][arith_addi_49] = arith_const_22; 
        }
        int arith_muli_50 = (for_iter_31 * arith_const_16); 
        int arith_muli_51 = (for_iter_27 * arith_const_15); 
        int arith_addi_52 = (arith_muli_50 + arith_muli_51); 
        int arith_muli_53 = (for_iter_31 * arith_const_16); 
        int arith_muli_54 = (for_iter_27 * arith_const_15); 
        int arith_addi_55 = (arith_muli_53 + arith_muli_54); 
        int arith_addi_56 = (arith_addi_55 + arith_const_20); 
        int arith_cmpi_57 = (arith_addi_56 < arith_const_19); 
        int arith_subi_58 = (arith_const_16 - arith_addi_56); 
        int arith_select_59 = (arith_cmpi_57 ? arith_subi_58 : arith_addi_56); 
        int arith_divi_60 = (arith_select_59 / arith_const_14); 
        int arith_subi_61 = (arith_const_16 - arith_divi_60); 
        int arith_select_62 = (arith_cmpi_57 ? arith_subi_61 : arith_divi_60); 
        int arith_muli_63 = (arith_select_62 * arith_const_11); 
        int arith_addi_64 = (arith_addi_52 + arith_muli_63); 
        int arith_addi_65 = (arith_addi_64 + arith_const_20); 
        for (int for_iter_66 = arith_const_19; for_iter_66 < arith_addi_65; for_iter_66 += arith_const_18) {
          int arith_addi_67 = (arith_addi_32 + for_iter_66); 
          int arith_muli_68 = (arith_addi_32 * arith_const_16); 
          int arith_addi_69 = (arith_muli_68 + arith_const_20); 
          int arith_cmpi_70 = (arith_addi_69 < arith_const_19); 
          int arith_subi_71 = (arith_const_16 - arith_addi_69); 
          int arith_select_72 = (arith_cmpi_70 ? arith_subi_71 : arith_addi_69); 
          int arith_divi_73 = (arith_select_72 / arith_const_14); 
          int arith_subi_74 = (arith_const_16 - arith_divi_73); 
          int arith_select_75 = (arith_cmpi_70 ? arith_subi_74 : arith_divi_73); 
          int arith_muli_76 = (arith_select_75 * arith_const_14); 
          int arith_addi_77 = (arith_addi_67 + arith_muli_76); 
          int arith_addi_78 = (arith_addi_77 + arith_const_18); 
          func_arg_4[arith_addi_32][arith_addi_78] = arith_const_22; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_29, PAST_TASK_FINISHED); 
    }
    async_group_25[async_group_index_26] = execute_token_29; 
    async_group_index_26++; 
    int arith_addi_79 = (for_iter_arg_28 + arith_const_18); 
    for_iter_arg_28 = arith_addi_79; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_25, async_group_index_26, PAST_TASK_FINISHED); 
  int* async_group_80; 
  int async_group_index_81 = 0; 
  int for_iter_arg_83 = arith_const_19; 
  for (int for_iter_82 = arith_const_19; for_iter_82 < arith_const_18; for_iter_82 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_84); 
    #pragma peqc async_execute
    {
      int arith_muli_85 = (for_iter_82 * arith_const_10); 
      for (int for_iter_86 = arith_const_19; for_iter_86 < arith_const_9; for_iter_86 += arith_const_18) {
        int arith_muli_87 = (for_iter_86 * arith_const_14); 
        int arith_addi_88 = (arith_muli_85 + arith_muli_87); 
        func_arg_4[arith_addi_88][arith_addi_88] = arith_const_23; 
        int arith_addi_89 = (arith_addi_88 + arith_const_18); 
        func_arg_4[arith_addi_89][arith_addi_89] = arith_const_23; 
        int arith_addi_90 = (arith_addi_88 + arith_const_13); 
        func_arg_4[arith_addi_90][arith_addi_90] = arith_const_23; 
        int arith_addi_91 = (arith_addi_88 + arith_const_12); 
        func_arg_4[arith_addi_91][arith_addi_91] = arith_const_23; 
      }
      PAST_SET_SEMAPHORE(execute_token_84, PAST_TASK_FINISHED); 
    }
    async_group_80[async_group_index_81] = execute_token_84; 
    async_group_index_81++; 
    int arith_addi_92 = (for_iter_arg_83 + arith_const_18); 
    for_iter_arg_83 = arith_addi_92; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_80, async_group_index_81, PAST_TASK_FINISHED); 
  int* async_group_93; 
  int async_group_index_94 = 0; 
  int for_iter_arg_96 = arith_const_19; 
  for (int for_iter_95 = arith_const_19; for_iter_95 < arith_const_18; for_iter_95 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_97); 
    #pragma peqc async_execute
    {
      int arith_muli_98 = (for_iter_95 * arith_const_17); 
      int arith_addi_99 = (arith_muli_98 + arith_const_8); 
      for (int for_iter_100 = arith_const_19; for_iter_100 < arith_const_12; for_iter_100 += arith_const_18) {
        int arith_addi_101 = (arith_addi_99 + for_iter_100); 
        func_arg_4[arith_addi_101][arith_addi_101] = arith_const_23; 
      }
      PAST_SET_SEMAPHORE(execute_token_97, PAST_TASK_FINISHED); 
    }
    async_group_93[async_group_index_94] = execute_token_97; 
    async_group_index_94++; 
    int arith_addi_102 = (for_iter_arg_96 + arith_const_18); 
    for_iter_arg_96 = arith_addi_102; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_93, async_group_index_94, PAST_TASK_FINISHED); 
  double math_sqrt_103 = sqrt(func_arg_2); 
  memref_alloca_24[arith_const_19] = math_sqrt_103; 
  int* async_group_104; 
  int async_group_index_105 = 0; 
  int for_iter_arg_107 = arith_const_19; 
  for (int for_iter_106 = arith_const_19; for_iter_106 < arith_const_18; for_iter_106 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_108); 
    #pragma peqc async_execute
    {
      int arith_muli_109 = (for_iter_106 * arith_const_10); 
      for (int for_iter_110 = arith_const_19; for_iter_110 < arith_const_7; for_iter_110 += arith_const_18) {
        int arith_muli_111 = (for_iter_110 * arith_const_14); 
        int arith_addi_112 = (arith_muli_109 + arith_muli_111); 
        func_arg_6[arith_addi_112] = arith_const_22; 
        func_arg_5[arith_addi_112] = arith_const_22; 
        int arith_addi_113 = (arith_addi_112 + arith_const_18); 
        func_arg_6[arith_addi_113] = arith_const_22; 
        func_arg_5[arith_addi_113] = arith_const_22; 
        int arith_addi_114 = (arith_addi_112 + arith_const_13); 
        func_arg_6[arith_addi_114] = arith_const_22; 
        func_arg_5[arith_addi_114] = arith_const_22; 
        int arith_addi_115 = (arith_addi_112 + arith_const_12); 
        func_arg_6[arith_addi_115] = arith_const_22; 
        func_arg_5[arith_addi_115] = arith_const_22; 
      }
      PAST_SET_SEMAPHORE(execute_token_108, PAST_TASK_FINISHED); 
    }
    async_group_104[async_group_index_105] = execute_token_108; 
    async_group_index_105++; 
    int arith_addi_116 = (for_iter_arg_107 + arith_const_18); 
    for_iter_arg_107 = arith_addi_116; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_104, async_group_index_105, PAST_TASK_FINISHED); 
  int* async_group_117; 
  int async_group_index_118 = 0; 
  int for_iter_arg_120 = arith_const_19; 
  for (int for_iter_119 = arith_const_19; for_iter_119 < arith_const_18; for_iter_119 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_121); 
    #pragma peqc async_execute
    {
      int arith_muli_122 = (for_iter_119 * arith_const_17); 
      for (int for_iter_123 = arith_const_19; for_iter_123 < arith_const_18; for_iter_123 += arith_const_18) {
        int arith_muli_124 = (for_iter_123 * arith_const_10); 
        for (int for_iter_125 = arith_const_19; for_iter_125 < arith_const_17; for_iter_125 += arith_const_18) {
          int arith_addi_126 = (arith_muli_122 + for_iter_125); 
          for (int for_iter_127 = arith_const_19; for_iter_127 < arith_const_7; for_iter_127 += arith_const_18) {
            int arith_muli_128 = (for_iter_127 * arith_const_14); 
            int arith_addi_129 = (arith_muli_124 + arith_muli_128); 
            double memref_load_130 = func_arg_5[arith_addi_129]; 
            double memref_load_131 = func_arg_3[arith_addi_126][arith_addi_129]; 
            double arith_addf_132 = (memref_load_130 + memref_load_131); 
            func_arg_5[arith_addi_129] = arith_addf_132; 
            int arith_addi_133 = (arith_addi_129 + arith_const_18); 
            double memref_load_134 = func_arg_5[arith_addi_133]; 
            double memref_load_135 = func_arg_3[arith_addi_126][arith_addi_133]; 
            double arith_addf_136 = (memref_load_134 + memref_load_135); 
            func_arg_5[arith_addi_133] = arith_addf_136; 
            int arith_addi_137 = (arith_addi_129 + arith_const_13); 
            double memref_load_138 = func_arg_5[arith_addi_137]; 
            double memref_load_139 = func_arg_3[arith_addi_126][arith_addi_137]; 
            double arith_addf_140 = (memref_load_138 + memref_load_139); 
            func_arg_5[arith_addi_137] = arith_addf_140; 
            int arith_addi_141 = (arith_addi_129 + arith_const_12); 
            double memref_load_142 = func_arg_5[arith_addi_141]; 
            double memref_load_143 = func_arg_3[arith_addi_126][arith_addi_141]; 
            double arith_addf_144 = (memref_load_142 + memref_load_143); 
            func_arg_5[arith_addi_141] = arith_addf_144; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_121, PAST_TASK_FINISHED); 
    }
    async_group_117[async_group_index_118] = execute_token_121; 
    async_group_index_118++; 
    int arith_addi_145 = (for_iter_arg_120 + arith_const_18); 
    for_iter_arg_120 = arith_addi_145; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_117, async_group_index_118, PAST_TASK_FINISHED); 
  int* async_group_146; 
  int async_group_index_147 = 0; 
  int for_iter_arg_149 = arith_const_19; 
  for (int for_iter_148 = arith_const_19; for_iter_148 < arith_const_18; for_iter_148 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_150); 
    #pragma peqc async_execute
    {
      int arith_muli_151 = (for_iter_148 * arith_const_10); 
      for (int for_iter_152 = arith_const_19; for_iter_152 < arith_const_7; for_iter_152 += arith_const_18) {
        int arith_muli_153 = (for_iter_152 * arith_const_14); 
        int arith_addi_154 = (arith_muli_151 + arith_muli_153); 
        double memref_load_155 = func_arg_5[arith_addi_154]; 
        double arith_divf_156 = (memref_load_155 / func_arg_2); 
        func_arg_5[arith_addi_154] = arith_divf_156; 
        int arith_addi_157 = (arith_addi_154 + arith_const_18); 
        double memref_load_158 = func_arg_5[arith_addi_157]; 
        double arith_divf_159 = (memref_load_158 / func_arg_2); 
        func_arg_5[arith_addi_157] = arith_divf_159; 
        int arith_addi_160 = (arith_addi_154 + arith_const_13); 
        double memref_load_161 = func_arg_5[arith_addi_160]; 
        double arith_divf_162 = (memref_load_161 / func_arg_2); 
        func_arg_5[arith_addi_160] = arith_divf_162; 
        int arith_addi_163 = (arith_addi_154 + arith_const_12); 
        double memref_load_164 = func_arg_5[arith_addi_163]; 
        double arith_divf_165 = (memref_load_164 / func_arg_2); 
        func_arg_5[arith_addi_163] = arith_divf_165; 
      }
      PAST_SET_SEMAPHORE(execute_token_150, PAST_TASK_FINISHED); 
    }
    async_group_146[async_group_index_147] = execute_token_150; 
    async_group_index_147++; 
    int arith_addi_166 = (for_iter_arg_149 + arith_const_18); 
    for_iter_arg_149 = arith_addi_166; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_146, async_group_index_147, PAST_TASK_FINISHED); 
  int* async_group_167; 
  int async_group_index_168 = 0; 
  int for_iter_arg_170 = arith_const_19; 
  for (int for_iter_169 = arith_const_19; for_iter_169 < arith_const_18; for_iter_169 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_171); 
    #pragma peqc async_execute
    {
      int arith_muli_172 = (for_iter_169 * arith_const_17); 
      for (int for_iter_173 = arith_const_19; for_iter_173 < arith_const_18; for_iter_173 += arith_const_18) {
        int arith_muli_174 = (for_iter_173 * arith_const_10); 
        for (int for_iter_175 = arith_const_19; for_iter_175 < arith_const_17; for_iter_175 += arith_const_18) {
          int arith_addi_176 = (arith_muli_172 + for_iter_175); 
          for (int for_iter_177 = arith_const_19; for_iter_177 < arith_const_7; for_iter_177 += arith_const_18) {
            int arith_muli_178 = (for_iter_177 * arith_const_14); 
            int arith_addi_179 = (arith_muli_174 + arith_muli_178); 
            double memref_load_180 = func_arg_6[arith_addi_179]; 
            double memref_load_181 = func_arg_3[arith_addi_176][arith_addi_179]; 
            double memref_load_182 = func_arg_5[arith_addi_179]; 
            double arith_subf_183 = (memref_load_181 - memref_load_182); 
            double arith_mulf_184 = (arith_subf_183 * arith_subf_183); 
            double arith_addf_185 = (memref_load_180 + arith_mulf_184); 
            func_arg_6[arith_addi_179] = arith_addf_185; 
            double memref_load_186 = func_arg_3[arith_addi_176][arith_addi_179]; 
            double memref_load_187 = func_arg_5[arith_addi_179]; 
            double arith_subf_188 = (memref_load_186 - memref_load_187); 
            func_arg_3[arith_addi_176][arith_addi_179] = arith_subf_188; 
            int arith_addi_189 = (arith_addi_179 + arith_const_18); 
            double memref_load_190 = func_arg_6[arith_addi_189]; 
            double memref_load_191 = func_arg_3[arith_addi_176][arith_addi_189]; 
            double memref_load_192 = func_arg_5[arith_addi_189]; 
            double arith_subf_193 = (memref_load_191 - memref_load_192); 
            double arith_mulf_194 = (arith_subf_193 * arith_subf_193); 
            double arith_addf_195 = (memref_load_190 + arith_mulf_194); 
            func_arg_6[arith_addi_189] = arith_addf_195; 
            double memref_load_196 = func_arg_3[arith_addi_176][arith_addi_189]; 
            double memref_load_197 = func_arg_5[arith_addi_189]; 
            double arith_subf_198 = (memref_load_196 - memref_load_197); 
            func_arg_3[arith_addi_176][arith_addi_189] = arith_subf_198; 
            int arith_addi_199 = (arith_addi_179 + arith_const_13); 
            double memref_load_200 = func_arg_6[arith_addi_199]; 
            double memref_load_201 = func_arg_3[arith_addi_176][arith_addi_199]; 
            double memref_load_202 = func_arg_5[arith_addi_199]; 
            double arith_subf_203 = (memref_load_201 - memref_load_202); 
            double arith_mulf_204 = (arith_subf_203 * arith_subf_203); 
            double arith_addf_205 = (memref_load_200 + arith_mulf_204); 
            func_arg_6[arith_addi_199] = arith_addf_205; 
            double memref_load_206 = func_arg_3[arith_addi_176][arith_addi_199]; 
            double memref_load_207 = func_arg_5[arith_addi_199]; 
            double arith_subf_208 = (memref_load_206 - memref_load_207); 
            func_arg_3[arith_addi_176][arith_addi_199] = arith_subf_208; 
            int arith_addi_209 = (arith_addi_179 + arith_const_12); 
            double memref_load_210 = func_arg_6[arith_addi_209]; 
            double memref_load_211 = func_arg_3[arith_addi_176][arith_addi_209]; 
            double memref_load_212 = func_arg_5[arith_addi_209]; 
            double arith_subf_213 = (memref_load_211 - memref_load_212); 
            double arith_mulf_214 = (arith_subf_213 * arith_subf_213); 
            double arith_addf_215 = (memref_load_210 + arith_mulf_214); 
            func_arg_6[arith_addi_209] = arith_addf_215; 
            double memref_load_216 = func_arg_3[arith_addi_176][arith_addi_209]; 
            double memref_load_217 = func_arg_5[arith_addi_209]; 
            double arith_subf_218 = (memref_load_216 - memref_load_217); 
            func_arg_3[arith_addi_176][arith_addi_209] = arith_subf_218; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_171, PAST_TASK_FINISHED); 
    }
    async_group_167[async_group_index_168] = execute_token_171; 
    async_group_index_168++; 
    int arith_addi_219 = (for_iter_arg_170 + arith_const_18); 
    for_iter_arg_170 = arith_addi_219; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_167, async_group_index_168, PAST_TASK_FINISHED); 
  int* async_group_220; 
  int async_group_index_221 = 0; 
  int for_iter_arg_223 = arith_const_19; 
  for (int for_iter_222 = arith_const_19; for_iter_222 < arith_const_18; for_iter_222 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_224); 
    #pragma peqc async_execute
    {
      int arith_muli_225 = (for_iter_222 * arith_const_10); 
      for (int for_iter_226 = arith_const_19; for_iter_226 < arith_const_7; for_iter_226 += arith_const_18) {
        int arith_muli_227 = (for_iter_226 * arith_const_14); 
        int arith_addi_228 = (arith_muli_225 + arith_muli_227); 
        double memref_load_229 = func_arg_6[arith_addi_228]; 
        double arith_divf_230 = (memref_load_229 / func_arg_2); 
        double math_sqrt_231 = sqrt(arith_divf_230); 
        int arith_cmpi_232 = (math_sqrt_231 <= arith_const_21); 
        double arith_select_233 = (arith_cmpi_232 ? arith_const_23 : math_sqrt_231); 
        func_arg_6[arith_addi_228] = arith_select_233; 
        int arith_addi_234 = (arith_addi_228 + arith_const_18); 
        double memref_load_235 = func_arg_6[arith_addi_234]; 
        double arith_divf_236 = (memref_load_235 / func_arg_2); 
        double math_sqrt_237 = sqrt(arith_divf_236); 
        int arith_cmpi_238 = (math_sqrt_237 <= arith_const_21); 
        double arith_select_239 = (arith_cmpi_238 ? arith_const_23 : math_sqrt_237); 
        func_arg_6[arith_addi_234] = arith_select_239; 
        int arith_addi_240 = (arith_addi_228 + arith_const_13); 
        double memref_load_241 = func_arg_6[arith_addi_240]; 
        double arith_divf_242 = (memref_load_241 / func_arg_2); 
        double math_sqrt_243 = sqrt(arith_divf_242); 
        int arith_cmpi_244 = (math_sqrt_243 <= arith_const_21); 
        double arith_select_245 = (arith_cmpi_244 ? arith_const_23 : math_sqrt_243); 
        func_arg_6[arith_addi_240] = arith_select_245; 
        int arith_addi_246 = (arith_addi_228 + arith_const_12); 
        double memref_load_247 = func_arg_6[arith_addi_246]; 
        double arith_divf_248 = (memref_load_247 / func_arg_2); 
        double math_sqrt_249 = sqrt(arith_divf_248); 
        int arith_cmpi_250 = (math_sqrt_249 <= arith_const_21); 
        double arith_select_251 = (arith_cmpi_250 ? arith_const_23 : math_sqrt_249); 
        func_arg_6[arith_addi_246] = arith_select_251; 
      }
      PAST_SET_SEMAPHORE(execute_token_224, PAST_TASK_FINISHED); 
    }
    async_group_220[async_group_index_221] = execute_token_224; 
    async_group_index_221++; 
    int arith_addi_252 = (for_iter_arg_223 + arith_const_18); 
    for_iter_arg_223 = arith_addi_252; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_220, async_group_index_221, PAST_TASK_FINISHED); 
  int* async_group_253; 
  int async_group_index_254 = 0; 
  int for_iter_arg_256 = arith_const_19; 
  for (int for_iter_255 = arith_const_19; for_iter_255 < arith_const_18; for_iter_255 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_257); 
    #pragma peqc async_execute
    {
      int arith_muli_258 = (for_iter_255 * arith_const_17); 
      double memref_load_259 = memref_alloca_24[arith_const_19]; 
      double memref_load_260 = memref_alloca_24[arith_const_19]; 
      double memref_load_261 = memref_alloca_24[arith_const_19]; 
      double memref_load_262 = memref_alloca_24[arith_const_19]; 
      for (int for_iter_263 = arith_const_19; for_iter_263 < arith_const_18; for_iter_263 += arith_const_18) {
        int arith_muli_264 = (for_iter_263 * arith_const_10); 
        for (int for_iter_265 = arith_const_19; for_iter_265 < arith_const_17; for_iter_265 += arith_const_18) {
          int arith_addi_266 = (arith_muli_258 + for_iter_265); 
          for (int for_iter_267 = arith_const_19; for_iter_267 < arith_const_7; for_iter_267 += arith_const_18) {
            int arith_muli_268 = (for_iter_267 * arith_const_14); 
            int arith_addi_269 = (arith_muli_264 + arith_muli_268); 
            double memref_load_270 = func_arg_3[arith_addi_266][arith_addi_269]; 
            double memref_load_271 = func_arg_6[arith_addi_269]; 
            double arith_mulf_272 = (memref_load_259 * memref_load_271); 
            double arith_divf_273 = (memref_load_270 / arith_mulf_272); 
            func_arg_3[arith_addi_266][arith_addi_269] = arith_divf_273; 
            int arith_addi_274 = (arith_addi_269 + arith_const_18); 
            double memref_load_275 = func_arg_3[arith_addi_266][arith_addi_274]; 
            double memref_load_276 = func_arg_6[arith_addi_274]; 
            double arith_mulf_277 = (memref_load_260 * memref_load_276); 
            double arith_divf_278 = (memref_load_275 / arith_mulf_277); 
            func_arg_3[arith_addi_266][arith_addi_274] = arith_divf_278; 
            int arith_addi_279 = (arith_addi_269 + arith_const_13); 
            double memref_load_280 = func_arg_3[arith_addi_266][arith_addi_279]; 
            double memref_load_281 = func_arg_6[arith_addi_279]; 
            double arith_mulf_282 = (memref_load_261 * memref_load_281); 
            double arith_divf_283 = (memref_load_280 / arith_mulf_282); 
            func_arg_3[arith_addi_266][arith_addi_279] = arith_divf_283; 
            int arith_addi_284 = (arith_addi_269 + arith_const_12); 
            double memref_load_285 = func_arg_3[arith_addi_266][arith_addi_284]; 
            double memref_load_286 = func_arg_6[arith_addi_284]; 
            double arith_mulf_287 = (memref_load_262 * memref_load_286); 
            double arith_divf_288 = (memref_load_285 / arith_mulf_287); 
            func_arg_3[arith_addi_266][arith_addi_284] = arith_divf_288; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_257, PAST_TASK_FINISHED); 
    }
    async_group_253[async_group_index_254] = execute_token_257; 
    async_group_index_254++; 
    int arith_addi_289 = (for_iter_arg_256 + arith_const_18); 
    for_iter_arg_256 = arith_addi_289; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_253, async_group_index_254, PAST_TASK_FINISHED); 
  int* async_group_290; 
  int async_group_index_291 = 0; 
  int for_iter_arg_293 = arith_const_19; 
  for (int for_iter_292 = arith_const_19; for_iter_292 < arith_const_18; for_iter_292 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_294); 
    #pragma peqc async_execute
    {
      int arith_muli_295 = (for_iter_292 * arith_const_17); 
      for (int for_iter_296 = arith_const_19; for_iter_296 < arith_const_18; for_iter_296 += arith_const_18) {
        int arith_muli_297 = (for_iter_296 * arith_const_17); 
        for (int for_iter_298 = arith_const_19; for_iter_298 < arith_const_20; for_iter_298 += arith_const_18) {
          int arith_addi_299 = (arith_muli_295 + for_iter_298); 
          for (int for_iter_300 = arith_const_19; for_iter_300 < arith_const_17; for_iter_300 += arith_const_18) {
            int arith_addi_301 = (arith_muli_297 + for_iter_300); 
            double memref_load_302 = func_arg_3[arith_addi_301][arith_addi_299]; 
            double memref_load_303 = func_arg_3[arith_addi_301][arith_addi_299]; 
            double memref_load_304 = func_arg_3[arith_addi_301][arith_addi_299]; 
            double memref_load_305 = func_arg_3[arith_addi_301][arith_addi_299]; 
            int arith_muli_306 = (for_iter_298 * arith_const_16); 
            int arith_muli_307 = (for_iter_292 * arith_const_15); 
            int arith_addi_308 = (arith_muli_306 + arith_muli_307); 
            int arith_addi_309 = (arith_addi_308 + arith_const_20); 
            int arith_cmpi_310 = (arith_addi_309 < arith_const_19); 
            int arith_subi_311 = (arith_const_16 - arith_addi_309); 
            int arith_select_312 = (arith_cmpi_310 ? arith_subi_311 : arith_addi_309); 
            int arith_divi_313 = (arith_select_312 / arith_const_14); 
            int arith_subi_314 = (arith_const_16 - arith_divi_313); 
            int arith_select_315 = (arith_cmpi_310 ? arith_subi_314 : arith_divi_313); 
            for (int for_iter_316 = arith_const_19; for_iter_316 < arith_select_315; for_iter_316 += arith_const_18) {
              int arith_muli_317 = (for_iter_316 * arith_const_14); 
              int arith_addi_318 = (arith_addi_299 + arith_muli_317); 
              int arith_addi_319 = (arith_addi_318 + arith_const_18); 
              double memref_load_320 = func_arg_4[arith_addi_299][arith_addi_319]; 
              double memref_load_321 = func_arg_3[arith_addi_301][arith_addi_319]; 
              double arith_mulf_322 = (memref_load_302 * memref_load_321); 
              double arith_addf_323 = (memref_load_320 + arith_mulf_322); 
              func_arg_4[arith_addi_299][arith_addi_319] = arith_addf_323; 
              int arith_addi_324 = (arith_addi_319 + arith_const_18); 
              double memref_load_325 = func_arg_4[arith_addi_299][arith_addi_324]; 
              double memref_load_326 = func_arg_3[arith_addi_301][arith_addi_324]; 
              double arith_mulf_327 = (memref_load_303 * memref_load_326); 
              double arith_addf_328 = (memref_load_325 + arith_mulf_327); 
              func_arg_4[arith_addi_299][arith_addi_324] = arith_addf_328; 
              int arith_addi_329 = (arith_addi_319 + arith_const_13); 
              double memref_load_330 = func_arg_4[arith_addi_299][arith_addi_329]; 
              double memref_load_331 = func_arg_3[arith_addi_301][arith_addi_329]; 
              double arith_mulf_332 = (memref_load_304 * memref_load_331); 
              double arith_addf_333 = (memref_load_330 + arith_mulf_332); 
              func_arg_4[arith_addi_299][arith_addi_329] = arith_addf_333; 
              int arith_addi_334 = (arith_addi_319 + arith_const_12); 
              double memref_load_335 = func_arg_4[arith_addi_299][arith_addi_334]; 
              double memref_load_336 = func_arg_3[arith_addi_301][arith_addi_334]; 
              double arith_mulf_337 = (memref_load_305 * memref_load_336); 
              double arith_addf_338 = (memref_load_335 + arith_mulf_337); 
              func_arg_4[arith_addi_299][arith_addi_334] = arith_addf_338; 
            }
            double memref_load_339 = func_arg_3[arith_addi_301][arith_addi_299]; 
            int arith_muli_340 = (for_iter_298 * arith_const_16); 
            int arith_muli_341 = (for_iter_292 * arith_const_15); 
            int arith_addi_342 = (arith_muli_340 + arith_muli_341); 
            int arith_muli_343 = (for_iter_298 * arith_const_16); 
            int arith_muli_344 = (for_iter_292 * arith_const_15); 
            int arith_addi_345 = (arith_muli_343 + arith_muli_344); 
            int arith_addi_346 = (arith_addi_345 + arith_const_20); 
            int arith_cmpi_347 = (arith_addi_346 < arith_const_19); 
            int arith_subi_348 = (arith_const_16 - arith_addi_346); 
            int arith_select_349 = (arith_cmpi_347 ? arith_subi_348 : arith_addi_346); 
            int arith_divi_350 = (arith_select_349 / arith_const_14); 
            int arith_subi_351 = (arith_const_16 - arith_divi_350); 
            int arith_select_352 = (arith_cmpi_347 ? arith_subi_351 : arith_divi_350); 
            int arith_muli_353 = (arith_select_352 * arith_const_11); 
            int arith_addi_354 = (arith_addi_342 + arith_muli_353); 
            int arith_addi_355 = (arith_addi_354 + arith_const_20); 
            for (int for_iter_356 = arith_const_19; for_iter_356 < arith_addi_355; for_iter_356 += arith_const_18) {
              int arith_addi_357 = (arith_addi_299 + for_iter_356); 
              int arith_muli_358 = (arith_addi_299 * arith_const_16); 
              int arith_addi_359 = (arith_muli_358 + arith_const_20); 
              int arith_cmpi_360 = (arith_addi_359 < arith_const_19); 
              int arith_subi_361 = (arith_const_16 - arith_addi_359); 
              int arith_select_362 = (arith_cmpi_360 ? arith_subi_361 : arith_addi_359); 
              int arith_divi_363 = (arith_select_362 / arith_const_14); 
              int arith_subi_364 = (arith_const_16 - arith_divi_363); 
              int arith_select_365 = (arith_cmpi_360 ? arith_subi_364 : arith_divi_363); 
              int arith_muli_366 = (arith_select_365 * arith_const_14); 
              int arith_addi_367 = (arith_addi_357 + arith_muli_366); 
              int arith_addi_368 = (arith_addi_367 + arith_const_18); 
              double memref_load_369 = func_arg_4[arith_addi_299][arith_addi_368]; 
              double memref_load_370 = func_arg_3[arith_addi_301][arith_addi_368]; 
              double arith_mulf_371 = (memref_load_339 * memref_load_370); 
              double arith_addf_372 = (memref_load_369 + arith_mulf_371); 
              func_arg_4[arith_addi_299][arith_addi_368] = arith_addf_372; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_294, PAST_TASK_FINISHED); 
    }
    async_group_290[async_group_index_291] = execute_token_294; 
    async_group_index_291++; 
    int arith_addi_373 = (for_iter_arg_293 + arith_const_18); 
    for_iter_arg_293 = arith_addi_373; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_290, async_group_index_291, PAST_TASK_FINISHED); 
  int* async_group_374; 
  int async_group_index_375 = 0; 
  int for_iter_arg_377 = arith_const_19; 
  for (int for_iter_376 = arith_const_19; for_iter_376 < arith_const_18; for_iter_376 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_378); 
    #pragma peqc async_execute
    {
      int arith_muli_379 = (for_iter_376 * arith_const_17); 
      for (int for_iter_380 = arith_const_19; for_iter_380 < arith_const_20; for_iter_380 += arith_const_18) {
        int arith_addi_381 = (arith_muli_379 + for_iter_380); 
        int arith_muli_382 = (for_iter_380 * arith_const_16); 
        int arith_muli_383 = (for_iter_376 * arith_const_15); 
        int arith_addi_384 = (arith_muli_382 + arith_muli_383); 
        int arith_addi_385 = (arith_addi_384 + arith_const_20); 
        int arith_cmpi_386 = (arith_addi_385 < arith_const_19); 
        int arith_subi_387 = (arith_const_16 - arith_addi_385); 
        int arith_select_388 = (arith_cmpi_386 ? arith_subi_387 : arith_addi_385); 
        int arith_divi_389 = (arith_select_388 / arith_const_14); 
        int arith_subi_390 = (arith_const_16 - arith_divi_389); 
        int arith_select_391 = (arith_cmpi_386 ? arith_subi_390 : arith_divi_389); 
        for (int for_iter_392 = arith_const_19; for_iter_392 < arith_select_391; for_iter_392 += arith_const_18) {
          int arith_muli_393 = (for_iter_392 * arith_const_14); 
          int arith_addi_394 = (arith_addi_381 + arith_muli_393); 
          int arith_addi_395 = (arith_addi_394 + arith_const_18); 
          double memref_load_396 = func_arg_4[arith_addi_381][arith_addi_395]; 
          func_arg_4[arith_addi_395][arith_addi_381] = memref_load_396; 
          int arith_addi_397 = (arith_addi_395 + arith_const_18); 
          double memref_load_398 = func_arg_4[arith_addi_381][arith_addi_397]; 
          func_arg_4[arith_addi_397][arith_addi_381] = memref_load_398; 
          int arith_addi_399 = (arith_addi_395 + arith_const_13); 
          double memref_load_400 = func_arg_4[arith_addi_381][arith_addi_399]; 
          func_arg_4[arith_addi_399][arith_addi_381] = memref_load_400; 
          int arith_addi_401 = (arith_addi_395 + arith_const_12); 
          double memref_load_402 = func_arg_4[arith_addi_381][arith_addi_401]; 
          func_arg_4[arith_addi_401][arith_addi_381] = memref_load_402; 
        }
        int arith_muli_403 = (for_iter_380 * arith_const_16); 
        int arith_muli_404 = (for_iter_376 * arith_const_15); 
        int arith_addi_405 = (arith_muli_403 + arith_muli_404); 
        int arith_muli_406 = (for_iter_380 * arith_const_16); 
        int arith_muli_407 = (for_iter_376 * arith_const_15); 
        int arith_addi_408 = (arith_muli_406 + arith_muli_407); 
        int arith_addi_409 = (arith_addi_408 + arith_const_20); 
        int arith_cmpi_410 = (arith_addi_409 < arith_const_19); 
        int arith_subi_411 = (arith_const_16 - arith_addi_409); 
        int arith_select_412 = (arith_cmpi_410 ? arith_subi_411 : arith_addi_409); 
        int arith_divi_413 = (arith_select_412 / arith_const_14); 
        int arith_subi_414 = (arith_const_16 - arith_divi_413); 
        int arith_select_415 = (arith_cmpi_410 ? arith_subi_414 : arith_divi_413); 
        int arith_muli_416 = (arith_select_415 * arith_const_11); 
        int arith_addi_417 = (arith_addi_405 + arith_muli_416); 
        int arith_addi_418 = (arith_addi_417 + arith_const_20); 
        for (int for_iter_419 = arith_const_19; for_iter_419 < arith_addi_418; for_iter_419 += arith_const_18) {
          int arith_addi_420 = (arith_addi_381 + for_iter_419); 
          int arith_muli_421 = (arith_addi_381 * arith_const_16); 
          int arith_addi_422 = (arith_muli_421 + arith_const_20); 
          int arith_cmpi_423 = (arith_addi_422 < arith_const_19); 
          int arith_subi_424 = (arith_const_16 - arith_addi_422); 
          int arith_select_425 = (arith_cmpi_423 ? arith_subi_424 : arith_addi_422); 
          int arith_divi_426 = (arith_select_425 / arith_const_14); 
          int arith_subi_427 = (arith_const_16 - arith_divi_426); 
          int arith_select_428 = (arith_cmpi_423 ? arith_subi_427 : arith_divi_426); 
          int arith_muli_429 = (arith_select_428 * arith_const_14); 
          int arith_addi_430 = (arith_addi_420 + arith_muli_429); 
          int arith_addi_431 = (arith_addi_430 + arith_const_18); 
          double memref_load_432 = func_arg_4[arith_addi_381][arith_addi_431]; 
          func_arg_4[arith_addi_431][arith_addi_381] = memref_load_432; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_378, PAST_TASK_FINISHED); 
    }
    async_group_374[async_group_index_375] = execute_token_378; 
    async_group_index_375++; 
    int arith_addi_433 = (for_iter_arg_377 + arith_const_18); 
    for_iter_arg_377 = arith_addi_433; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_374, async_group_index_375, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
