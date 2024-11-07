#pragma pocc-region-start
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 21; 
  int arith_const_13 = 12; 
  int arith_const_14 = 32; 
  int arith_const_15 = -1; 
  int arith_const_16 = -19; 
  int arith_const_17 = 19; 
  int arith_const_18 = 24; 
  int arith_const_19 = 18; 
  int arith_const_20 = 20; 
  int arith_const_21 = 3; 
  int arith_const_22 = 2; 
  int arith_const_23 = 4; 
  int arith_const_24 = 5; 
  double arith_const_25 = 0.000000; 
  int arith_const_26 = 0; 
  int arith_const_27 = 16; 
  int arith_const_28 = 1; 
  int* async_group_29; 
  int async_group_index_30 = 0; 
  int for_iter_arg_32 = arith_const_26; 
  for (int for_iter_31 = arith_const_26; for_iter_31 < arith_const_27; for_iter_31 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_33); 
    #pragma peqc async_execute
    {
      int* async_group_34; 
      int async_group_index_35 = 0; 
      int for_iter_arg_37 = arith_const_26; 
      for (int for_iter_36 = arith_const_26; for_iter_36 < arith_const_28; for_iter_36 += arith_const_28) {
        PAST_NEW_SEMAPHORE(execute_token_38); 
        #pragma peqc async_execute
        {
          int arith_addi_39 = (for_iter_31 + for_iter_36); 
          int* async_group_40; 
          int async_group_index_41 = 0; 
          int for_iter_arg_43 = arith_const_26; 
          for (int for_iter_42 = arith_const_26; for_iter_42 < arith_const_24; for_iter_42 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_44); 
            #pragma peqc async_execute
            {
              int arith_muli_45 = (for_iter_42 * arith_const_23); 
              func_arg_11[arith_addi_39][arith_muli_45] = arith_const_25; 
              func_arg_8[arith_addi_39][arith_muli_45] = arith_const_25; 
              int arith_addi_46 = (arith_muli_45 + arith_const_28); 
              func_arg_11[arith_addi_39][arith_addi_46] = arith_const_25; 
              func_arg_8[arith_addi_39][arith_addi_46] = arith_const_25; 
              int arith_addi_47 = (arith_muli_45 + arith_const_22); 
              func_arg_11[arith_addi_39][arith_addi_47] = arith_const_25; 
              func_arg_8[arith_addi_39][arith_addi_47] = arith_const_25; 
              int arith_addi_48 = (arith_muli_45 + arith_const_21); 
              func_arg_11[arith_addi_39][arith_addi_48] = arith_const_25; 
              func_arg_8[arith_addi_39][arith_addi_48] = arith_const_25; 
              PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
            }
            async_group_40[async_group_index_41] = execute_token_44; 
            async_group_index_41++; 
            int arith_addi_49 = (for_iter_arg_43 + arith_const_28); 
            for_iter_arg_43 = arith_addi_49; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_40, async_group_index_41, PAST_TASK_FINISHED); 
          int* async_group_50; 
          int async_group_index_51 = 0; 
          int for_iter_arg_53 = arith_const_26; 
          for (int for_iter_52 = arith_const_26; for_iter_52 < arith_const_22; for_iter_52 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_54); 
            #pragma peqc async_execute
            {
              int arith_addi_55 = (for_iter_52 + arith_const_20); 
              func_arg_11[arith_addi_39][arith_addi_55] = arith_const_25; 
              func_arg_8[arith_addi_39][arith_addi_55] = arith_const_25; 
              PAST_SET_SEMAPHORE(execute_token_54, PAST_TASK_FINISHED); 
            }
            async_group_50[async_group_index_51] = execute_token_54; 
            async_group_index_51++; 
            int arith_addi_56 = (for_iter_arg_53 + arith_const_28); 
            for_iter_arg_53 = arith_addi_56; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_50, async_group_index_51, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_38, PAST_TASK_FINISHED); 
        }
        async_group_34[async_group_index_35] = execute_token_38; 
        async_group_index_35++; 
        int arith_addi_57 = (for_iter_arg_37 + arith_const_28); 
        for_iter_arg_37 = arith_addi_57; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_34, async_group_index_35, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
    }
    async_group_29[async_group_index_30] = execute_token_33; 
    async_group_index_30++; 
    int arith_addi_58 = (for_iter_arg_32 + arith_const_28); 
    for_iter_arg_32 = arith_addi_58; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
  int* async_group_59; 
  int async_group_index_60 = 0; 
  int for_iter_arg_62 = arith_const_26; 
  for (int for_iter_61 = arith_const_26; for_iter_61 < arith_const_22; for_iter_61 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_63); 
    #pragma peqc async_execute
    {
      int arith_addi_64 = (for_iter_61 + arith_const_27); 
      int* async_group_65; 
      int async_group_index_66 = 0; 
      int for_iter_arg_68 = arith_const_26; 
      for (int for_iter_67 = arith_const_26; for_iter_67 < arith_const_28; for_iter_67 += arith_const_28) {
        PAST_NEW_SEMAPHORE(execute_token_69); 
        #pragma peqc async_execute
        {
          int arith_addi_70 = (arith_addi_64 + for_iter_67); 
          int* async_group_71; 
          int async_group_index_72 = 0; 
          int for_iter_arg_74 = arith_const_26; 
          for (int for_iter_73 = arith_const_26; for_iter_73 < arith_const_24; for_iter_73 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_75); 
            #pragma peqc async_execute
            {
              int arith_muli_76 = (for_iter_73 * arith_const_23); 
              func_arg_8[arith_addi_70][arith_muli_76] = arith_const_25; 
              int arith_addi_77 = (arith_muli_76 + arith_const_28); 
              func_arg_8[arith_addi_70][arith_addi_77] = arith_const_25; 
              int arith_addi_78 = (arith_muli_76 + arith_const_22); 
              func_arg_8[arith_addi_70][arith_addi_78] = arith_const_25; 
              int arith_addi_79 = (arith_muli_76 + arith_const_21); 
              func_arg_8[arith_addi_70][arith_addi_79] = arith_const_25; 
              PAST_SET_SEMAPHORE(execute_token_75, PAST_TASK_FINISHED); 
            }
            async_group_71[async_group_index_72] = execute_token_75; 
            async_group_index_72++; 
            int arith_addi_80 = (for_iter_arg_74 + arith_const_28); 
            for_iter_arg_74 = arith_addi_80; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_71, async_group_index_72, PAST_TASK_FINISHED); 
          int* async_group_81; 
          int async_group_index_82 = 0; 
          int for_iter_arg_84 = arith_const_26; 
          for (int for_iter_83 = arith_const_26; for_iter_83 < arith_const_22; for_iter_83 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_85); 
            #pragma peqc async_execute
            {
              int arith_addi_86 = (for_iter_83 + arith_const_20); 
              func_arg_8[arith_addi_70][arith_addi_86] = arith_const_25; 
              PAST_SET_SEMAPHORE(execute_token_85, PAST_TASK_FINISHED); 
            }
            async_group_81[async_group_index_82] = execute_token_85; 
            async_group_index_82++; 
            int arith_addi_87 = (for_iter_arg_84 + arith_const_28); 
            for_iter_arg_84 = arith_addi_87; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_81, async_group_index_82, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_69, PAST_TASK_FINISHED); 
        }
        async_group_65[async_group_index_66] = execute_token_69; 
        async_group_index_66++; 
        int arith_addi_88 = (for_iter_arg_68 + arith_const_28); 
        for_iter_arg_68 = arith_addi_88; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_65, async_group_index_66, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_63, PAST_TASK_FINISHED); 
    }
    async_group_59[async_group_index_60] = execute_token_63; 
    async_group_index_60++; 
    int arith_addi_89 = (for_iter_arg_62 + arith_const_28); 
    for_iter_arg_62 = arith_addi_89; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_59, async_group_index_60, PAST_TASK_FINISHED); 
  int* async_group_90; 
  int async_group_index_91 = 0; 
  int for_iter_arg_93 = arith_const_26; 
  for (int for_iter_92 = arith_const_26; for_iter_92 < arith_const_19; for_iter_92 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_94); 
    #pragma peqc async_execute
    {
      for (int for_iter_95 = arith_const_26; for_iter_95 < arith_const_18; for_iter_95 += arith_const_28) {
        int* async_group_96; 
        int async_group_index_97 = 0; 
        int for_iter_arg_99 = arith_const_26; 
        for (int for_iter_98 = arith_const_26; for_iter_98 < arith_const_28; for_iter_98 += arith_const_28) {
          PAST_NEW_SEMAPHORE(execute_token_100); 
          #pragma peqc async_execute
          {
            int arith_addi_101 = (for_iter_92 + for_iter_98); 
            int* async_group_102; 
            int async_group_index_103 = 0; 
            int for_iter_arg_105 = arith_const_26; 
            for (int for_iter_104 = arith_const_26; for_iter_104 < arith_const_28; for_iter_104 += arith_const_28) {
              PAST_NEW_SEMAPHORE(execute_token_106); 
              #pragma peqc async_execute
              {
                int arith_addi_107 = (for_iter_95 + for_iter_104); 
                int* async_group_108; 
                int async_group_index_109 = 0; 
                int for_iter_arg_111 = arith_const_26; 
                for (int for_iter_110 = arith_const_26; for_iter_110 < arith_const_24; for_iter_110 += arith_const_28) {
                  PAST_NEW_SEMAPHORE(execute_token_112); 
                  #pragma peqc async_execute
                  {
                    int arith_muli_113 = (for_iter_110 * arith_const_23); 
                    double memref_load_114 = func_arg_8[arith_addi_101][arith_muli_113]; 
                    double memref_load_115 = func_arg_9[arith_addi_101][arith_addi_107]; 
                    double memref_load_116 = func_arg_10[arith_addi_107][arith_muli_113]; 
                    double arith_mulf_117 = (memref_load_115 * memref_load_116); 
                    double arith_addf_118 = (memref_load_114 + arith_mulf_117); 
                    func_arg_8[arith_addi_101][arith_muli_113] = arith_addf_118; 
                    int arith_addi_119 = (arith_muli_113 + arith_const_28); 
                    double memref_load_120 = func_arg_8[arith_addi_101][arith_addi_119]; 
                    double memref_load_121 = func_arg_9[arith_addi_101][arith_addi_107]; 
                    double memref_load_122 = func_arg_10[arith_addi_107][arith_addi_119]; 
                    double arith_mulf_123 = (memref_load_121 * memref_load_122); 
                    double arith_addf_124 = (memref_load_120 + arith_mulf_123); 
                    func_arg_8[arith_addi_101][arith_addi_119] = arith_addf_124; 
                    int arith_addi_125 = (arith_muli_113 + arith_const_22); 
                    double memref_load_126 = func_arg_8[arith_addi_101][arith_addi_125]; 
                    double memref_load_127 = func_arg_9[arith_addi_101][arith_addi_107]; 
                    double memref_load_128 = func_arg_10[arith_addi_107][arith_addi_125]; 
                    double arith_mulf_129 = (memref_load_127 * memref_load_128); 
                    double arith_addf_130 = (memref_load_126 + arith_mulf_129); 
                    func_arg_8[arith_addi_101][arith_addi_125] = arith_addf_130; 
                    int arith_addi_131 = (arith_muli_113 + arith_const_21); 
                    double memref_load_132 = func_arg_8[arith_addi_101][arith_addi_131]; 
                    double memref_load_133 = func_arg_9[arith_addi_101][arith_addi_107]; 
                    double memref_load_134 = func_arg_10[arith_addi_107][arith_addi_131]; 
                    double arith_mulf_135 = (memref_load_133 * memref_load_134); 
                    double arith_addf_136 = (memref_load_132 + arith_mulf_135); 
                    func_arg_8[arith_addi_101][arith_addi_131] = arith_addf_136; 
                    PAST_SET_SEMAPHORE(execute_token_112, PAST_TASK_FINISHED); 
                  }
                  async_group_108[async_group_index_109] = execute_token_112; 
                  async_group_index_109++; 
                  int arith_addi_137 = (for_iter_arg_111 + arith_const_28); 
                  for_iter_arg_111 = arith_addi_137; 
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_108, async_group_index_109, PAST_TASK_FINISHED); 
                int* async_group_138; 
                int async_group_index_139 = 0; 
                int for_iter_arg_141 = arith_const_26; 
                for (int for_iter_140 = arith_const_26; for_iter_140 < arith_const_22; for_iter_140 += arith_const_28) {
                  PAST_NEW_SEMAPHORE(execute_token_142); 
                  #pragma peqc async_execute
                  {
                    int arith_addi_143 = (for_iter_140 + arith_const_20); 
                    double memref_load_144 = func_arg_8[arith_addi_101][arith_addi_143]; 
                    double memref_load_145 = func_arg_9[arith_addi_101][arith_addi_107]; 
                    double memref_load_146 = func_arg_10[arith_addi_107][arith_addi_143]; 
                    double arith_mulf_147 = (memref_load_145 * memref_load_146); 
                    double arith_addf_148 = (memref_load_144 + arith_mulf_147); 
                    func_arg_8[arith_addi_101][arith_addi_143] = arith_addf_148; 
                    PAST_SET_SEMAPHORE(execute_token_142, PAST_TASK_FINISHED); 
                  }
                  async_group_138[async_group_index_139] = execute_token_142; 
                  async_group_index_139++; 
                  int arith_addi_149 = (for_iter_arg_141 + arith_const_28); 
                  for_iter_arg_141 = arith_addi_149; 
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_138, async_group_index_139, PAST_TASK_FINISHED); 
                PAST_SET_SEMAPHORE(execute_token_106, PAST_TASK_FINISHED); 
              }
              async_group_102[async_group_index_103] = execute_token_106; 
              async_group_index_103++; 
              int arith_addi_150 = (for_iter_arg_105 + arith_const_28); 
              for_iter_arg_105 = arith_addi_150; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_102, async_group_index_103, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_100, PAST_TASK_FINISHED); 
          }
          async_group_96[async_group_index_97] = execute_token_100; 
          async_group_index_97++; 
          int arith_addi_151 = (for_iter_arg_99 + arith_const_28); 
          for_iter_arg_99 = arith_addi_151; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_96, async_group_index_97, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_94, PAST_TASK_FINISHED); 
    }
    async_group_90[async_group_index_91] = execute_token_94; 
    async_group_index_91++; 
    int arith_addi_152 = (for_iter_arg_93 + arith_const_28); 
    for_iter_arg_93 = arith_addi_152; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_90, async_group_index_91, PAST_TASK_FINISHED); 
  int* async_group_153; 
  int async_group_index_154 = 0; 
  int for_iter_arg_156 = arith_const_26; 
  for (int for_iter_155 = arith_const_26; for_iter_155 < arith_const_27; for_iter_155 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_157); 
    #pragma peqc async_execute
    {
      int* async_group_158; 
      int async_group_index_159 = 0; 
      int for_iter_arg_161 = arith_const_26; 
      for (int for_iter_160 = arith_const_26; for_iter_160 < arith_const_28; for_iter_160 += arith_const_28) {
        PAST_NEW_SEMAPHORE(execute_token_162); 
        #pragma peqc async_execute
        {
          int arith_addi_163 = (for_iter_155 + for_iter_160); 
          int* async_group_164; 
          int async_group_index_165 = 0; 
          int for_iter_arg_167 = arith_const_26; 
          for (int for_iter_166 = arith_const_26; for_iter_166 < arith_const_23; for_iter_166 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_168); 
            #pragma peqc async_execute
            {
              int arith_muli_169 = (for_iter_166 * arith_const_23); 
              func_arg_5[arith_addi_163][arith_muli_169] = arith_const_25; 
              int arith_addi_170 = (arith_muli_169 + arith_const_28); 
              func_arg_5[arith_addi_163][arith_addi_170] = arith_const_25; 
              int arith_addi_171 = (arith_muli_169 + arith_const_22); 
              func_arg_5[arith_addi_163][arith_addi_171] = arith_const_25; 
              int arith_addi_172 = (arith_muli_169 + arith_const_21); 
              func_arg_5[arith_addi_163][arith_addi_172] = arith_const_25; 
              PAST_SET_SEMAPHORE(execute_token_168, PAST_TASK_FINISHED); 
            }
            async_group_164[async_group_index_165] = execute_token_168; 
            async_group_index_165++; 
            int arith_addi_173 = (for_iter_arg_167 + arith_const_28); 
            for_iter_arg_167 = arith_addi_173; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_164, async_group_index_165, PAST_TASK_FINISHED); 
          int* async_group_174; 
          int async_group_index_175 = 0; 
          int for_iter_arg_177 = arith_const_26; 
          for (int for_iter_176 = arith_const_26; for_iter_176 < arith_const_22; for_iter_176 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_178); 
            #pragma peqc async_execute
            {
              int arith_addi_179 = (for_iter_176 + arith_const_27); 
              func_arg_5[arith_addi_163][arith_addi_179] = arith_const_25; 
              PAST_SET_SEMAPHORE(execute_token_178, PAST_TASK_FINISHED); 
            }
            async_group_174[async_group_index_175] = execute_token_178; 
            async_group_index_175++; 
            int arith_addi_180 = (for_iter_arg_177 + arith_const_28); 
            for_iter_arg_177 = arith_addi_180; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_174, async_group_index_175, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_162, PAST_TASK_FINISHED); 
        }
        async_group_158[async_group_index_159] = execute_token_162; 
        async_group_index_159++; 
        int arith_addi_181 = (for_iter_arg_161 + arith_const_28); 
        for_iter_arg_161 = arith_addi_181; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_158, async_group_index_159, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_157, PAST_TASK_FINISHED); 
    }
    async_group_153[async_group_index_154] = execute_token_157; 
    async_group_index_154++; 
    int arith_addi_182 = (for_iter_arg_156 + arith_const_28); 
    for_iter_arg_156 = arith_addi_182; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_153, async_group_index_154, PAST_TASK_FINISHED); 
  for (int for_iter_183 = arith_const_26; for_iter_183 < arith_const_22; for_iter_183 += arith_const_28) {
    int* async_group_184; 
    int async_group_index_185 = 0; 
    int for_iter_arg_187 = arith_const_26; 
    for (int for_iter_186 = arith_const_26; for_iter_186 < arith_const_28; for_iter_186 += arith_const_28) {
      PAST_NEW_SEMAPHORE(execute_token_188); 
      #pragma peqc async_execute
      {
        int arith_addi_189 = (for_iter_183 + for_iter_186); 
        int arith_cmpi_190 = ((arith_addi_189 == arith_const_26) ? 1 : 0); 
        if (arith_cmpi_190) {
          int* async_group_191; 
          int async_group_index_192 = 0; 
          int for_iter_arg_194 = arith_const_26; 
          for (int for_iter_193 = arith_const_26; for_iter_193 < arith_const_27; for_iter_193 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_195); 
            #pragma peqc async_execute
            {
              for (int for_iter_196 = arith_const_26; for_iter_196 < arith_const_19; for_iter_196 += arith_const_28) {
                for (int for_iter_197 = arith_const_26; for_iter_197 < arith_const_24; for_iter_197 += arith_const_28) {
                  int arith_muli_198 = (for_iter_197 * arith_const_23); 
                  double memref_load_199 = func_arg_5[for_iter_193][for_iter_196]; 
                  double memref_load_200 = func_arg_6[for_iter_193][arith_muli_198]; 
                  double memref_load_201 = func_arg_7[arith_muli_198][for_iter_196]; 
                  double arith_mulf_202 = (memref_load_200 * memref_load_201); 
                  double arith_addf_203 = (memref_load_199 + arith_mulf_202); 
                  func_arg_5[for_iter_193][for_iter_196] = arith_addf_203; 
                  int arith_addi_204 = (arith_muli_198 + arith_const_28); 
                  double memref_load_205 = func_arg_5[for_iter_193][for_iter_196]; 
                  double memref_load_206 = func_arg_6[for_iter_193][arith_addi_204]; 
                  double memref_load_207 = func_arg_7[arith_addi_204][for_iter_196]; 
                  double arith_mulf_208 = (memref_load_206 * memref_load_207); 
                  double arith_addf_209 = (memref_load_205 + arith_mulf_208); 
                  func_arg_5[for_iter_193][for_iter_196] = arith_addf_209; 
                  int arith_addi_210 = (arith_muli_198 + arith_const_22); 
                  double memref_load_211 = func_arg_5[for_iter_193][for_iter_196]; 
                  double memref_load_212 = func_arg_6[for_iter_193][arith_addi_210]; 
                  double memref_load_213 = func_arg_7[arith_addi_210][for_iter_196]; 
                  double arith_mulf_214 = (memref_load_212 * memref_load_213); 
                  double arith_addf_215 = (memref_load_211 + arith_mulf_214); 
                  func_arg_5[for_iter_193][for_iter_196] = arith_addf_215; 
                  int arith_addi_216 = (arith_muli_198 + arith_const_21); 
                  double memref_load_217 = func_arg_5[for_iter_193][for_iter_196]; 
                  double memref_load_218 = func_arg_6[for_iter_193][arith_addi_216]; 
                  double memref_load_219 = func_arg_7[arith_addi_216][for_iter_196]; 
                  double arith_mulf_220 = (memref_load_218 * memref_load_219); 
                  double arith_addf_221 = (memref_load_217 + arith_mulf_220); 
                  func_arg_5[for_iter_193][for_iter_196] = arith_addf_221; 
                }
                int* async_group_222; 
                int async_group_index_223 = 0; 
                int for_iter_arg_225 = arith_const_26; 
                for (int for_iter_224 = arith_const_26; for_iter_224 < arith_const_21; for_iter_224 += arith_const_28) {
                  PAST_NEW_SEMAPHORE(execute_token_226); 
                  #pragma peqc async_execute
                  {
                    int arith_muli_227 = (for_iter_224 * arith_const_23); 
                    int arith_addi_228 = (arith_muli_227 + arith_const_17); 
                    int arith_addi_229 = (arith_addi_228 + arith_const_16); 
                    double memref_load_230 = func_arg_11[for_iter_193][arith_addi_229]; 
                    double memref_load_231 = func_arg_5[for_iter_193][for_iter_196]; 
                    int arith_addi_232 = (arith_addi_228 + arith_const_16); 
                    double memref_load_233 = func_arg_8[for_iter_196][arith_addi_232]; 
                    double arith_mulf_234 = (memref_load_231 * memref_load_233); 
                    double arith_addf_235 = (memref_load_230 + arith_mulf_234); 
                    int arith_addi_236 = (arith_addi_228 + arith_const_16); 
                    func_arg_11[for_iter_193][arith_addi_236] = arith_addf_235; 
                    int arith_addi_237 = (arith_addi_228 + arith_const_28); 
                    int arith_addi_238 = (arith_addi_237 + arith_const_16); 
                    double memref_load_239 = func_arg_11[for_iter_193][arith_addi_238]; 
                    double memref_load_240 = func_arg_5[for_iter_193][for_iter_196]; 
                    int arith_addi_241 = (arith_addi_237 + arith_const_16); 
                    double memref_load_242 = func_arg_8[for_iter_196][arith_addi_241]; 
                    double arith_mulf_243 = (memref_load_240 * memref_load_242); 
                    double arith_addf_244 = (memref_load_239 + arith_mulf_243); 
                    int arith_addi_245 = (arith_addi_237 + arith_const_16); 
                    func_arg_11[for_iter_193][arith_addi_245] = arith_addf_244; 
                    int arith_addi_246 = (arith_addi_228 + arith_const_22); 
                    int arith_addi_247 = (arith_addi_246 + arith_const_16); 
                    double memref_load_248 = func_arg_11[for_iter_193][arith_addi_247]; 
                    double memref_load_249 = func_arg_5[for_iter_193][for_iter_196]; 
                    int arith_addi_250 = (arith_addi_246 + arith_const_16); 
                    double memref_load_251 = func_arg_8[for_iter_196][arith_addi_250]; 
                    double arith_mulf_252 = (memref_load_249 * memref_load_251); 
                    double arith_addf_253 = (memref_load_248 + arith_mulf_252); 
                    int arith_addi_254 = (arith_addi_246 + arith_const_16); 
                    func_arg_11[for_iter_193][arith_addi_254] = arith_addf_253; 
                    int arith_addi_255 = (arith_addi_228 + arith_const_21); 
                    int arith_addi_256 = (arith_addi_255 + arith_const_16); 
                    double memref_load_257 = func_arg_11[for_iter_193][arith_addi_256]; 
                    double memref_load_258 = func_arg_5[for_iter_193][for_iter_196]; 
                    int arith_addi_259 = (arith_addi_255 + arith_const_16); 
                    double memref_load_260 = func_arg_8[for_iter_196][arith_addi_259]; 
                    double arith_mulf_261 = (memref_load_258 * memref_load_260); 
                    double arith_addf_262 = (memref_load_257 + arith_mulf_261); 
                    int arith_addi_263 = (arith_addi_255 + arith_const_16); 
                    func_arg_11[for_iter_193][arith_addi_263] = arith_addf_262; 
                    PAST_SET_SEMAPHORE(execute_token_226, PAST_TASK_FINISHED); 
                  }
                  async_group_222[async_group_index_223] = execute_token_226; 
                  async_group_index_223++; 
                  int arith_addi_264 = (for_iter_arg_225 + arith_const_28); 
                  for_iter_arg_225 = arith_addi_264; 
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_222, async_group_index_223, PAST_TASK_FINISHED); 
                double memref_load_265 = func_arg_11[for_iter_193][arith_const_13]; 
                double memref_load_266 = func_arg_5[for_iter_193][for_iter_196]; 
                double memref_load_267 = func_arg_8[for_iter_196][arith_const_13]; 
                double arith_mulf_268 = (memref_load_266 * memref_load_267); 
                double arith_addf_269 = (memref_load_265 + arith_mulf_268); 
                func_arg_11[for_iter_193][arith_const_13] = arith_addf_269; 
              }
              PAST_SET_SEMAPHORE(execute_token_195, PAST_TASK_FINISHED); 
            }
            async_group_191[async_group_index_192] = execute_token_195; 
            async_group_index_192++; 
            int arith_addi_270 = (for_iter_arg_194 + arith_const_28); 
            for_iter_arg_194 = arith_addi_270; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_191, async_group_index_192, PAST_TASK_FINISHED); 
        }
        int arith_addi_271 = (for_iter_183 + for_iter_186); 
        int arith_addi_272 = (arith_addi_271 + arith_const_15); 
        int arith_cmpi_273 = ((arith_addi_272 == arith_const_26) ? 1 : 0); 
        if (arith_cmpi_273) {
          int* async_group_274; 
          int async_group_index_275 = 0; 
          int for_iter_arg_277 = arith_const_26; 
          for (int for_iter_276 = arith_const_26; for_iter_276 < arith_const_27; for_iter_276 += arith_const_28) {
            PAST_NEW_SEMAPHORE(execute_token_278); 
            #pragma peqc async_execute
            {
              for (int for_iter_279 = arith_const_26; for_iter_279 < arith_const_19; for_iter_279 += arith_const_28) {
                int* async_group_280; 
                int async_group_index_281 = 0; 
                int for_iter_arg_283 = arith_const_26; 
                for (int for_iter_282 = arith_const_26; for_iter_282 < arith_const_22; for_iter_282 += arith_const_28) {
                  PAST_NEW_SEMAPHORE(execute_token_284); 
                  #pragma peqc async_execute
                  {
                    int arith_muli_285 = (for_iter_282 * arith_const_23); 
                    int arith_addi_286 = (arith_muli_285 + arith_const_14); 
                    int arith_addi_287 = (arith_addi_286 + arith_const_16); 
                    double memref_load_288 = func_arg_11[for_iter_276][arith_addi_287]; 
                    double memref_load_289 = func_arg_5[for_iter_276][for_iter_279]; 
                    int arith_addi_290 = (arith_addi_286 + arith_const_16); 
                    double memref_load_291 = func_arg_8[for_iter_279][arith_addi_290]; 
                    double arith_mulf_292 = (memref_load_289 * memref_load_291); 
                    double arith_addf_293 = (memref_load_288 + arith_mulf_292); 
                    int arith_addi_294 = (arith_addi_286 + arith_const_16); 
                    func_arg_11[for_iter_276][arith_addi_294] = arith_addf_293; 
                    int arith_addi_295 = (arith_addi_286 + arith_const_28); 
                    int arith_addi_296 = (arith_addi_295 + arith_const_16); 
                    double memref_load_297 = func_arg_11[for_iter_276][arith_addi_296]; 
                    double memref_load_298 = func_arg_5[for_iter_276][for_iter_279]; 
                    int arith_addi_299 = (arith_addi_295 + arith_const_16); 
                    double memref_load_300 = func_arg_8[for_iter_279][arith_addi_299]; 
                    double arith_mulf_301 = (memref_load_298 * memref_load_300); 
                    double arith_addf_302 = (memref_load_297 + arith_mulf_301); 
                    int arith_addi_303 = (arith_addi_295 + arith_const_16); 
                    func_arg_11[for_iter_276][arith_addi_303] = arith_addf_302; 
                    int arith_addi_304 = (arith_addi_286 + arith_const_22); 
                    int arith_addi_305 = (arith_addi_304 + arith_const_16); 
                    double memref_load_306 = func_arg_11[for_iter_276][arith_addi_305]; 
                    double memref_load_307 = func_arg_5[for_iter_276][for_iter_279]; 
                    int arith_addi_308 = (arith_addi_304 + arith_const_16); 
                    double memref_load_309 = func_arg_8[for_iter_279][arith_addi_308]; 
                    double arith_mulf_310 = (memref_load_307 * memref_load_309); 
                    double arith_addf_311 = (memref_load_306 + arith_mulf_310); 
                    int arith_addi_312 = (arith_addi_304 + arith_const_16); 
                    func_arg_11[for_iter_276][arith_addi_312] = arith_addf_311; 
                    int arith_addi_313 = (arith_addi_286 + arith_const_21); 
                    int arith_addi_314 = (arith_addi_313 + arith_const_16); 
                    double memref_load_315 = func_arg_11[for_iter_276][arith_addi_314]; 
                    double memref_load_316 = func_arg_5[for_iter_276][for_iter_279]; 
                    int arith_addi_317 = (arith_addi_313 + arith_const_16); 
                    double memref_load_318 = func_arg_8[for_iter_279][arith_addi_317]; 
                    double arith_mulf_319 = (memref_load_316 * memref_load_318); 
                    double arith_addf_320 = (memref_load_315 + arith_mulf_319); 
                    int arith_addi_321 = (arith_addi_313 + arith_const_16); 
                    func_arg_11[for_iter_276][arith_addi_321] = arith_addf_320; 
                    PAST_SET_SEMAPHORE(execute_token_284, PAST_TASK_FINISHED); 
                  }
                  async_group_280[async_group_index_281] = execute_token_284; 
                  async_group_index_281++; 
                  int arith_addi_322 = (for_iter_arg_283 + arith_const_28); 
                  for_iter_arg_283 = arith_addi_322; 
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_280, async_group_index_281, PAST_TASK_FINISHED); 
                double memref_load_323 = func_arg_11[for_iter_276][arith_const_12]; 
                double memref_load_324 = func_arg_5[for_iter_276][for_iter_279]; 
                double memref_load_325 = func_arg_8[for_iter_279][arith_const_12]; 
                double arith_mulf_326 = (memref_load_324 * memref_load_325); 
                double arith_addf_327 = (memref_load_323 + arith_mulf_326); 
                func_arg_11[for_iter_276][arith_const_12] = arith_addf_327; 
              }
              PAST_SET_SEMAPHORE(execute_token_278, PAST_TASK_FINISHED); 
            }
            async_group_274[async_group_index_275] = execute_token_278; 
            async_group_index_275++; 
            int arith_addi_328 = (for_iter_arg_277 + arith_const_28); 
            for_iter_arg_277 = arith_addi_328; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_274, async_group_index_275, PAST_TASK_FINISHED); 
        }
        PAST_SET_SEMAPHORE(execute_token_188, PAST_TASK_FINISHED); 
      }
      async_group_184[async_group_index_185] = execute_token_188; 
      async_group_index_185++; 
      int arith_addi_329 = (for_iter_arg_187 + arith_const_28); 
      for_iter_arg_187 = arith_addi_329; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_184, async_group_index_185, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
