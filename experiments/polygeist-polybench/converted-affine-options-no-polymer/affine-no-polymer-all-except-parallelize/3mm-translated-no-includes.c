#pragma pocc-region-start
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 6; 
  int arith_const_13 = 22; 
  int arith_const_14 = 3; 
  int arith_const_15 = 2; 
  int arith_const_16 = 4; 
  int arith_const_17 = 5; 
  int arith_const_18 = 18; 
  double arith_const_19 = 0.000000; 
  int arith_const_20 = 0; 
  int arith_const_21 = 16; 
  int arith_const_22 = 1; 
  int* async_group_23; 
  int async_group_index_24 = 0; 
  int for_iter_arg_26 = arith_const_20; 
  for (int for_iter_25 = arith_const_20; for_iter_25 < arith_const_21; for_iter_25 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_27); 
    #pragma peqc async_execute
    {
      int* async_group_28; 
      int async_group_index_29 = 0; 
      int for_iter_arg_31 = arith_const_20; 
      for (int for_iter_30 = arith_const_20; for_iter_30 < arith_const_18; for_iter_30 += arith_const_22) {
        PAST_NEW_SEMAPHORE(execute_token_32); 
        #pragma peqc async_execute
        {
          int* async_group_33; 
          int async_group_index_34 = 0; 
          int for_iter_arg_36 = arith_const_20; 
          for (int for_iter_35 = arith_const_20; for_iter_35 < arith_const_22; for_iter_35 += arith_const_22) {
            PAST_NEW_SEMAPHORE(execute_token_37); 
            #pragma peqc async_execute
            {
              int arith_addi_38 = (for_iter_25 + for_iter_35); 
              int* async_group_39; 
              int async_group_index_40 = 0; 
              int for_iter_arg_42 = arith_const_20; 
              for (int for_iter_41 = arith_const_20; for_iter_41 < arith_const_22; for_iter_41 += arith_const_22) {
                PAST_NEW_SEMAPHORE(execute_token_43); 
                #pragma peqc async_execute
                {
                  int arith_addi_44 = (for_iter_30 + for_iter_41); 
                  func_arg_5[arith_addi_38][arith_addi_44] = arith_const_19; 
                  for (int for_iter_45 = arith_const_20; for_iter_45 < arith_const_17; for_iter_45 += arith_const_22) {
                    int arith_muli_46 = (for_iter_45 * arith_const_16); 
                    double memref_load_47 = func_arg_6[arith_addi_38][arith_muli_46]; 
                    double memref_load_48 = func_arg_7[arith_muli_46][arith_addi_44]; 
                    double arith_mulf_49 = (memref_load_47 * memref_load_48); 
                    double memref_load_50 = func_arg_5[arith_addi_38][arith_addi_44]; 
                    double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
                    func_arg_5[arith_addi_38][arith_addi_44] = arith_addf_51; 
                    int arith_addi_52 = (arith_muli_46 + arith_const_22); 
                    double memref_load_53 = func_arg_6[arith_addi_38][arith_addi_52]; 
                    double memref_load_54 = func_arg_7[arith_addi_52][arith_addi_44]; 
                    double arith_mulf_55 = (memref_load_53 * memref_load_54); 
                    double memref_load_56 = func_arg_5[arith_addi_38][arith_addi_44]; 
                    double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
                    func_arg_5[arith_addi_38][arith_addi_44] = arith_addf_57; 
                    int arith_addi_58 = (arith_muli_46 + arith_const_15); 
                    double memref_load_59 = func_arg_6[arith_addi_38][arith_addi_58]; 
                    double memref_load_60 = func_arg_7[arith_addi_58][arith_addi_44]; 
                    double arith_mulf_61 = (memref_load_59 * memref_load_60); 
                    double memref_load_62 = func_arg_5[arith_addi_38][arith_addi_44]; 
                    double arith_addf_63 = (memref_load_62 + arith_mulf_61); 
                    func_arg_5[arith_addi_38][arith_addi_44] = arith_addf_63; 
                    int arith_addi_64 = (arith_muli_46 + arith_const_14); 
                    double memref_load_65 = func_arg_6[arith_addi_38][arith_addi_64]; 
                    double memref_load_66 = func_arg_7[arith_addi_64][arith_addi_44]; 
                    double arith_mulf_67 = (memref_load_65 * memref_load_66); 
                    double memref_load_68 = func_arg_5[arith_addi_38][arith_addi_44]; 
                    double arith_addf_69 = (memref_load_68 + arith_mulf_67); 
                    func_arg_5[arith_addi_38][arith_addi_44] = arith_addf_69; 
                  }
                  PAST_SET_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
                }
                async_group_39[async_group_index_40] = execute_token_43; 
                async_group_index_40++; 
                int arith_addi_70 = (for_iter_arg_42 + arith_const_22); 
                for_iter_arg_42 = arith_addi_70; 
              }
              PAST_WAIT_SEMAPHORE_ALL(async_group_39, async_group_index_40, PAST_TASK_FINISHED); 
              PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
            }
            async_group_33[async_group_index_34] = execute_token_37; 
            async_group_index_34++; 
            int arith_addi_71 = (for_iter_arg_36 + arith_const_22); 
            for_iter_arg_36 = arith_addi_71; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_32, PAST_TASK_FINISHED); 
        }
        async_group_28[async_group_index_29] = execute_token_32; 
        async_group_index_29++; 
        int arith_addi_72 = (for_iter_arg_31 + arith_const_22); 
        for_iter_arg_31 = arith_addi_72; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_28, async_group_index_29, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
    }
    async_group_23[async_group_index_24] = execute_token_27; 
    async_group_index_24++; 
    int arith_addi_73 = (for_iter_arg_26 + arith_const_22); 
    for_iter_arg_26 = arith_addi_73; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
  int* async_group_74; 
  int async_group_index_75 = 0; 
  int for_iter_arg_77 = arith_const_20; 
  for (int for_iter_76 = arith_const_20; for_iter_76 < arith_const_18; for_iter_76 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_78); 
    #pragma peqc async_execute
    {
      int* async_group_79; 
      int async_group_index_80 = 0; 
      int for_iter_arg_82 = arith_const_20; 
      for (int for_iter_81 = arith_const_20; for_iter_81 < arith_const_13; for_iter_81 += arith_const_22) {
        PAST_NEW_SEMAPHORE(execute_token_83); 
        #pragma peqc async_execute
        {
          int* async_group_84; 
          int async_group_index_85 = 0; 
          int for_iter_arg_87 = arith_const_20; 
          for (int for_iter_86 = arith_const_20; for_iter_86 < arith_const_22; for_iter_86 += arith_const_22) {
            PAST_NEW_SEMAPHORE(execute_token_88); 
            #pragma peqc async_execute
            {
              int arith_addi_89 = (for_iter_76 + for_iter_86); 
              int* async_group_90; 
              int async_group_index_91 = 0; 
              int for_iter_arg_93 = arith_const_20; 
              for (int for_iter_92 = arith_const_20; for_iter_92 < arith_const_22; for_iter_92 += arith_const_22) {
                PAST_NEW_SEMAPHORE(execute_token_94); 
                #pragma peqc async_execute
                {
                  int arith_addi_95 = (for_iter_81 + for_iter_92); 
                  func_arg_8[arith_addi_89][arith_addi_95] = arith_const_19; 
                  for (int for_iter_96 = arith_const_20; for_iter_96 < arith_const_12; for_iter_96 += arith_const_22) {
                    int arith_muli_97 = (for_iter_96 * arith_const_16); 
                    double memref_load_98 = func_arg_9[arith_addi_89][arith_muli_97]; 
                    double memref_load_99 = func_arg_10[arith_muli_97][arith_addi_95]; 
                    double arith_mulf_100 = (memref_load_98 * memref_load_99); 
                    double memref_load_101 = func_arg_8[arith_addi_89][arith_addi_95]; 
                    double arith_addf_102 = (memref_load_101 + arith_mulf_100); 
                    func_arg_8[arith_addi_89][arith_addi_95] = arith_addf_102; 
                    int arith_addi_103 = (arith_muli_97 + arith_const_22); 
                    double memref_load_104 = func_arg_9[arith_addi_89][arith_addi_103]; 
                    double memref_load_105 = func_arg_10[arith_addi_103][arith_addi_95]; 
                    double arith_mulf_106 = (memref_load_104 * memref_load_105); 
                    double memref_load_107 = func_arg_8[arith_addi_89][arith_addi_95]; 
                    double arith_addf_108 = (memref_load_107 + arith_mulf_106); 
                    func_arg_8[arith_addi_89][arith_addi_95] = arith_addf_108; 
                    int arith_addi_109 = (arith_muli_97 + arith_const_15); 
                    double memref_load_110 = func_arg_9[arith_addi_89][arith_addi_109]; 
                    double memref_load_111 = func_arg_10[arith_addi_109][arith_addi_95]; 
                    double arith_mulf_112 = (memref_load_110 * memref_load_111); 
                    double memref_load_113 = func_arg_8[arith_addi_89][arith_addi_95]; 
                    double arith_addf_114 = (memref_load_113 + arith_mulf_112); 
                    func_arg_8[arith_addi_89][arith_addi_95] = arith_addf_114; 
                    int arith_addi_115 = (arith_muli_97 + arith_const_14); 
                    double memref_load_116 = func_arg_9[arith_addi_89][arith_addi_115]; 
                    double memref_load_117 = func_arg_10[arith_addi_115][arith_addi_95]; 
                    double arith_mulf_118 = (memref_load_116 * memref_load_117); 
                    double memref_load_119 = func_arg_8[arith_addi_89][arith_addi_95]; 
                    double arith_addf_120 = (memref_load_119 + arith_mulf_118); 
                    func_arg_8[arith_addi_89][arith_addi_95] = arith_addf_120; 
                  }
                  PAST_SET_SEMAPHORE(execute_token_94, PAST_TASK_FINISHED); 
                }
                async_group_90[async_group_index_91] = execute_token_94; 
                async_group_index_91++; 
                int arith_addi_121 = (for_iter_arg_93 + arith_const_22); 
                for_iter_arg_93 = arith_addi_121; 
              }
              PAST_WAIT_SEMAPHORE_ALL(async_group_90, async_group_index_91, PAST_TASK_FINISHED); 
              PAST_SET_SEMAPHORE(execute_token_88, PAST_TASK_FINISHED); 
            }
            async_group_84[async_group_index_85] = execute_token_88; 
            async_group_index_85++; 
            int arith_addi_122 = (for_iter_arg_87 + arith_const_22); 
            for_iter_arg_87 = arith_addi_122; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_84, async_group_index_85, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_83, PAST_TASK_FINISHED); 
        }
        async_group_79[async_group_index_80] = execute_token_83; 
        async_group_index_80++; 
        int arith_addi_123 = (for_iter_arg_82 + arith_const_22); 
        for_iter_arg_82 = arith_addi_123; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_79, async_group_index_80, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_78, PAST_TASK_FINISHED); 
    }
    async_group_74[async_group_index_75] = execute_token_78; 
    async_group_index_75++; 
    int arith_addi_124 = (for_iter_arg_77 + arith_const_22); 
    for_iter_arg_77 = arith_addi_124; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_74, async_group_index_75, PAST_TASK_FINISHED); 
  int* async_group_125; 
  int async_group_index_126 = 0; 
  int for_iter_arg_128 = arith_const_20; 
  for (int for_iter_127 = arith_const_20; for_iter_127 < arith_const_21; for_iter_127 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_129); 
    #pragma peqc async_execute
    {
      int* async_group_130; 
      int async_group_index_131 = 0; 
      int for_iter_arg_133 = arith_const_20; 
      for (int for_iter_132 = arith_const_20; for_iter_132 < arith_const_13; for_iter_132 += arith_const_22) {
        PAST_NEW_SEMAPHORE(execute_token_134); 
        #pragma peqc async_execute
        {
          int* async_group_135; 
          int async_group_index_136 = 0; 
          int for_iter_arg_138 = arith_const_20; 
          for (int for_iter_137 = arith_const_20; for_iter_137 < arith_const_22; for_iter_137 += arith_const_22) {
            PAST_NEW_SEMAPHORE(execute_token_139); 
            #pragma peqc async_execute
            {
              int arith_addi_140 = (for_iter_127 + for_iter_137); 
              int* async_group_141; 
              int async_group_index_142 = 0; 
              int for_iter_arg_144 = arith_const_20; 
              for (int for_iter_143 = arith_const_20; for_iter_143 < arith_const_22; for_iter_143 += arith_const_22) {
                PAST_NEW_SEMAPHORE(execute_token_145); 
                #pragma peqc async_execute
                {
                  int arith_addi_146 = (for_iter_132 + for_iter_143); 
                  func_arg_11[arith_addi_140][arith_addi_146] = arith_const_19; 
                  for (int for_iter_147 = arith_const_20; for_iter_147 < arith_const_16; for_iter_147 += arith_const_22) {
                    int arith_muli_148 = (for_iter_147 * arith_const_16); 
                    double memref_load_149 = func_arg_5[arith_addi_140][arith_muli_148]; 
                    double memref_load_150 = func_arg_8[arith_muli_148][arith_addi_146]; 
                    double arith_mulf_151 = (memref_load_149 * memref_load_150); 
                    double memref_load_152 = func_arg_11[arith_addi_140][arith_addi_146]; 
                    double arith_addf_153 = (memref_load_152 + arith_mulf_151); 
                    func_arg_11[arith_addi_140][arith_addi_146] = arith_addf_153; 
                    int arith_addi_154 = (arith_muli_148 + arith_const_22); 
                    double memref_load_155 = func_arg_5[arith_addi_140][arith_addi_154]; 
                    double memref_load_156 = func_arg_8[arith_addi_154][arith_addi_146]; 
                    double arith_mulf_157 = (memref_load_155 * memref_load_156); 
                    double memref_load_158 = func_arg_11[arith_addi_140][arith_addi_146]; 
                    double arith_addf_159 = (memref_load_158 + arith_mulf_157); 
                    func_arg_11[arith_addi_140][arith_addi_146] = arith_addf_159; 
                    int arith_addi_160 = (arith_muli_148 + arith_const_15); 
                    double memref_load_161 = func_arg_5[arith_addi_140][arith_addi_160]; 
                    double memref_load_162 = func_arg_8[arith_addi_160][arith_addi_146]; 
                    double arith_mulf_163 = (memref_load_161 * memref_load_162); 
                    double memref_load_164 = func_arg_11[arith_addi_140][arith_addi_146]; 
                    double arith_addf_165 = (memref_load_164 + arith_mulf_163); 
                    func_arg_11[arith_addi_140][arith_addi_146] = arith_addf_165; 
                    int arith_addi_166 = (arith_muli_148 + arith_const_14); 
                    double memref_load_167 = func_arg_5[arith_addi_140][arith_addi_166]; 
                    double memref_load_168 = func_arg_8[arith_addi_166][arith_addi_146]; 
                    double arith_mulf_169 = (memref_load_167 * memref_load_168); 
                    double memref_load_170 = func_arg_11[arith_addi_140][arith_addi_146]; 
                    double arith_addf_171 = (memref_load_170 + arith_mulf_169); 
                    func_arg_11[arith_addi_140][arith_addi_146] = arith_addf_171; 
                  }
                  for (int for_iter_172 = arith_const_20; for_iter_172 < arith_const_15; for_iter_172 += arith_const_22) {
                    int arith_addi_173 = (for_iter_172 + arith_const_21); 
                    double memref_load_174 = func_arg_5[arith_addi_140][arith_addi_173]; 
                    double memref_load_175 = func_arg_8[arith_addi_173][arith_addi_146]; 
                    double arith_mulf_176 = (memref_load_174 * memref_load_175); 
                    double memref_load_177 = func_arg_11[arith_addi_140][arith_addi_146]; 
                    double arith_addf_178 = (memref_load_177 + arith_mulf_176); 
                    func_arg_11[arith_addi_140][arith_addi_146] = arith_addf_178; 
                  }
                  PAST_SET_SEMAPHORE(execute_token_145, PAST_TASK_FINISHED); 
                }
                async_group_141[async_group_index_142] = execute_token_145; 
                async_group_index_142++; 
                int arith_addi_179 = (for_iter_arg_144 + arith_const_22); 
                for_iter_arg_144 = arith_addi_179; 
              }
              PAST_WAIT_SEMAPHORE_ALL(async_group_141, async_group_index_142, PAST_TASK_FINISHED); 
              PAST_SET_SEMAPHORE(execute_token_139, PAST_TASK_FINISHED); 
            }
            async_group_135[async_group_index_136] = execute_token_139; 
            async_group_index_136++; 
            int arith_addi_180 = (for_iter_arg_138 + arith_const_22); 
            for_iter_arg_138 = arith_addi_180; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_135, async_group_index_136, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_134, PAST_TASK_FINISHED); 
        }
        async_group_130[async_group_index_131] = execute_token_134; 
        async_group_index_131++; 
        int arith_addi_181 = (for_iter_arg_133 + arith_const_22); 
        for_iter_arg_133 = arith_addi_181; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_130, async_group_index_131, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_129, PAST_TASK_FINISHED); 
    }
    async_group_125[async_group_index_126] = execute_token_129; 
    async_group_index_126++; 
    int arith_addi_182 = (for_iter_arg_128 + arith_const_22); 
    for_iter_arg_128 = arith_addi_182; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_125, async_group_index_126, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
