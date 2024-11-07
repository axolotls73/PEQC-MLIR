#pragma pocc-region-start
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 37; 
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 9; 
  int arith_const_9 = 38; 
  double arith_const_10 = 9.000000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_9; for_iter_15 += arith_const_13) {
      int arith_addi_16 = (for_iter_15 + arith_const_13); 
      int* async_group_17; 
      int async_group_index_18 = 0; 
      int for_iter_arg_20 = arith_const_11; 
      for (int for_iter_19 = arith_const_11; for_iter_19 < arith_const_13; for_iter_19 += arith_const_13) {
        PAST_NEW_SEMAPHORE(execute_token_21); 
        #pragma peqc async_execute
        {
          int* async_group_22; 
          int async_group_index_23 = 0; 
          int for_iter_arg_25 = arith_const_11; 
          for (int for_iter_24 = arith_const_11; for_iter_24 < arith_const_13; for_iter_24 += arith_const_13) {
            PAST_NEW_SEMAPHORE(execute_token_26); 
            #pragma peqc async_execute
            {
              int arith_addi_27 = (arith_addi_16 + for_iter_24); 
              for (int for_iter_28 = arith_const_11; for_iter_28 < arith_const_8; for_iter_28 += arith_const_13) {
                int arith_muli_29 = (for_iter_28 * arith_const_7); 
                int arith_addi_30 = (arith_muli_29 + arith_const_13); 
                int arith_addi_31 = (arith_addi_27 + arith_const_6); 
                int arith_addi_32 = (arith_addi_30 + arith_const_6); 
                double memref_load_33 = func_arg_2[arith_addi_31][arith_addi_32]; 
                int arith_addi_34 = (arith_addi_27 + arith_const_6); 
                double memref_load_35 = func_arg_2[arith_addi_34][arith_addi_30]; 
                double arith_addf_36 = (memref_load_33 + memref_load_35); 
                int arith_addi_37 = (arith_addi_27 + arith_const_6); 
                int arith_addi_38 = (arith_addi_30 + arith_const_13); 
                double memref_load_39 = func_arg_2[arith_addi_37][arith_addi_38]; 
                double arith_addf_40 = (arith_addf_36 + memref_load_39); 
                int arith_addi_41 = (arith_addi_30 + arith_const_6); 
                double memref_load_42 = func_arg_2[arith_addi_27][arith_addi_41]; 
                double arith_addf_43 = (arith_addf_40 + memref_load_42); 
                double memref_load_44 = func_arg_2[arith_addi_27][arith_addi_30]; 
                double arith_addf_45 = (arith_addf_43 + memref_load_44); 
                int arith_addi_46 = (arith_addi_30 + arith_const_13); 
                double memref_load_47 = func_arg_2[arith_addi_27][arith_addi_46]; 
                double arith_addf_48 = (arith_addf_45 + memref_load_47); 
                int arith_addi_49 = (arith_addi_27 + arith_const_13); 
                int arith_addi_50 = (arith_addi_30 + arith_const_6); 
                double memref_load_51 = func_arg_2[arith_addi_49][arith_addi_50]; 
                double arith_addf_52 = (arith_addf_48 + memref_load_51); 
                int arith_addi_53 = (arith_addi_27 + arith_const_13); 
                double memref_load_54 = func_arg_2[arith_addi_53][arith_addi_30]; 
                double arith_addf_55 = (arith_addf_52 + memref_load_54); 
                int arith_addi_56 = (arith_addi_27 + arith_const_13); 
                int arith_addi_57 = (arith_addi_30 + arith_const_13); 
                double memref_load_58 = func_arg_2[arith_addi_56][arith_addi_57]; 
                double arith_addf_59 = (arith_addf_55 + memref_load_58); 
                double arith_divf_60 = (arith_addf_59 / arith_const_10); 
                func_arg_2[arith_addi_27][arith_addi_30] = arith_divf_60; 
                int arith_addi_61 = (arith_addi_30 + arith_const_13); 
                int arith_addi_62 = (arith_addi_27 + arith_const_6); 
                int arith_addi_63 = (arith_addi_61 + arith_const_6); 
                double memref_load_64 = func_arg_2[arith_addi_62][arith_addi_63]; 
                int arith_addi_65 = (arith_addi_27 + arith_const_6); 
                double memref_load_66 = func_arg_2[arith_addi_65][arith_addi_61]; 
                double arith_addf_67 = (memref_load_64 + memref_load_66); 
                int arith_addi_68 = (arith_addi_27 + arith_const_6); 
                int arith_addi_69 = (arith_addi_61 + arith_const_13); 
                double memref_load_70 = func_arg_2[arith_addi_68][arith_addi_69]; 
                double arith_addf_71 = (arith_addf_67 + memref_load_70); 
                int arith_addi_72 = (arith_addi_61 + arith_const_6); 
                double memref_load_73 = func_arg_2[arith_addi_27][arith_addi_72]; 
                double arith_addf_74 = (arith_addf_71 + memref_load_73); 
                double memref_load_75 = func_arg_2[arith_addi_27][arith_addi_61]; 
                double arith_addf_76 = (arith_addf_74 + memref_load_75); 
                int arith_addi_77 = (arith_addi_61 + arith_const_13); 
                double memref_load_78 = func_arg_2[arith_addi_27][arith_addi_77]; 
                double arith_addf_79 = (arith_addf_76 + memref_load_78); 
                int arith_addi_80 = (arith_addi_27 + arith_const_13); 
                int arith_addi_81 = (arith_addi_61 + arith_const_6); 
                double memref_load_82 = func_arg_2[arith_addi_80][arith_addi_81]; 
                double arith_addf_83 = (arith_addf_79 + memref_load_82); 
                int arith_addi_84 = (arith_addi_27 + arith_const_13); 
                double memref_load_85 = func_arg_2[arith_addi_84][arith_addi_61]; 
                double arith_addf_86 = (arith_addf_83 + memref_load_85); 
                int arith_addi_87 = (arith_addi_27 + arith_const_13); 
                int arith_addi_88 = (arith_addi_61 + arith_const_13); 
                double memref_load_89 = func_arg_2[arith_addi_87][arith_addi_88]; 
                double arith_addf_90 = (arith_addf_86 + memref_load_89); 
                double arith_divf_91 = (arith_addf_90 / arith_const_10); 
                func_arg_2[arith_addi_27][arith_addi_61] = arith_divf_91; 
                int arith_addi_92 = (arith_addi_30 + arith_const_5); 
                int arith_addi_93 = (arith_addi_27 + arith_const_6); 
                int arith_addi_94 = (arith_addi_92 + arith_const_6); 
                double memref_load_95 = func_arg_2[arith_addi_93][arith_addi_94]; 
                int arith_addi_96 = (arith_addi_27 + arith_const_6); 
                double memref_load_97 = func_arg_2[arith_addi_96][arith_addi_92]; 
                double arith_addf_98 = (memref_load_95 + memref_load_97); 
                int arith_addi_99 = (arith_addi_27 + arith_const_6); 
                int arith_addi_100 = (arith_addi_92 + arith_const_13); 
                double memref_load_101 = func_arg_2[arith_addi_99][arith_addi_100]; 
                double arith_addf_102 = (arith_addf_98 + memref_load_101); 
                int arith_addi_103 = (arith_addi_92 + arith_const_6); 
                double memref_load_104 = func_arg_2[arith_addi_27][arith_addi_103]; 
                double arith_addf_105 = (arith_addf_102 + memref_load_104); 
                double memref_load_106 = func_arg_2[arith_addi_27][arith_addi_92]; 
                double arith_addf_107 = (arith_addf_105 + memref_load_106); 
                int arith_addi_108 = (arith_addi_92 + arith_const_13); 
                double memref_load_109 = func_arg_2[arith_addi_27][arith_addi_108]; 
                double arith_addf_110 = (arith_addf_107 + memref_load_109); 
                int arith_addi_111 = (arith_addi_27 + arith_const_13); 
                int arith_addi_112 = (arith_addi_92 + arith_const_6); 
                double memref_load_113 = func_arg_2[arith_addi_111][arith_addi_112]; 
                double arith_addf_114 = (arith_addf_110 + memref_load_113); 
                int arith_addi_115 = (arith_addi_27 + arith_const_13); 
                double memref_load_116 = func_arg_2[arith_addi_115][arith_addi_92]; 
                double arith_addf_117 = (arith_addf_114 + memref_load_116); 
                int arith_addi_118 = (arith_addi_27 + arith_const_13); 
                int arith_addi_119 = (arith_addi_92 + arith_const_13); 
                double memref_load_120 = func_arg_2[arith_addi_118][arith_addi_119]; 
                double arith_addf_121 = (arith_addf_117 + memref_load_120); 
                double arith_divf_122 = (arith_addf_121 / arith_const_10); 
                func_arg_2[arith_addi_27][arith_addi_92] = arith_divf_122; 
                int arith_addi_123 = (arith_addi_30 + arith_const_4); 
                int arith_addi_124 = (arith_addi_27 + arith_const_6); 
                int arith_addi_125 = (arith_addi_123 + arith_const_6); 
                double memref_load_126 = func_arg_2[arith_addi_124][arith_addi_125]; 
                int arith_addi_127 = (arith_addi_27 + arith_const_6); 
                double memref_load_128 = func_arg_2[arith_addi_127][arith_addi_123]; 
                double arith_addf_129 = (memref_load_126 + memref_load_128); 
                int arith_addi_130 = (arith_addi_27 + arith_const_6); 
                int arith_addi_131 = (arith_addi_123 + arith_const_13); 
                double memref_load_132 = func_arg_2[arith_addi_130][arith_addi_131]; 
                double arith_addf_133 = (arith_addf_129 + memref_load_132); 
                int arith_addi_134 = (arith_addi_123 + arith_const_6); 
                double memref_load_135 = func_arg_2[arith_addi_27][arith_addi_134]; 
                double arith_addf_136 = (arith_addf_133 + memref_load_135); 
                double memref_load_137 = func_arg_2[arith_addi_27][arith_addi_123]; 
                double arith_addf_138 = (arith_addf_136 + memref_load_137); 
                int arith_addi_139 = (arith_addi_123 + arith_const_13); 
                double memref_load_140 = func_arg_2[arith_addi_27][arith_addi_139]; 
                double arith_addf_141 = (arith_addf_138 + memref_load_140); 
                int arith_addi_142 = (arith_addi_27 + arith_const_13); 
                int arith_addi_143 = (arith_addi_123 + arith_const_6); 
                double memref_load_144 = func_arg_2[arith_addi_142][arith_addi_143]; 
                double arith_addf_145 = (arith_addf_141 + memref_load_144); 
                int arith_addi_146 = (arith_addi_27 + arith_const_13); 
                double memref_load_147 = func_arg_2[arith_addi_146][arith_addi_123]; 
                double arith_addf_148 = (arith_addf_145 + memref_load_147); 
                int arith_addi_149 = (arith_addi_27 + arith_const_13); 
                int arith_addi_150 = (arith_addi_123 + arith_const_13); 
                double memref_load_151 = func_arg_2[arith_addi_149][arith_addi_150]; 
                double arith_addf_152 = (arith_addf_148 + memref_load_151); 
                double arith_divf_153 = (arith_addf_152 / arith_const_10); 
                func_arg_2[arith_addi_27][arith_addi_123] = arith_divf_153; 
              }
              for (int for_iter_154 = arith_const_11; for_iter_154 < arith_const_5; for_iter_154 += arith_const_13) {
                int arith_addi_155 = (for_iter_154 + arith_const_3); 
                int arith_addi_156 = (arith_addi_27 + arith_const_6); 
                int arith_addi_157 = (arith_addi_155 + arith_const_6); 
                double memref_load_158 = func_arg_2[arith_addi_156][arith_addi_157]; 
                int arith_addi_159 = (arith_addi_27 + arith_const_6); 
                double memref_load_160 = func_arg_2[arith_addi_159][arith_addi_155]; 
                double arith_addf_161 = (memref_load_158 + memref_load_160); 
                int arith_addi_162 = (arith_addi_27 + arith_const_6); 
                int arith_addi_163 = (arith_addi_155 + arith_const_13); 
                double memref_load_164 = func_arg_2[arith_addi_162][arith_addi_163]; 
                double arith_addf_165 = (arith_addf_161 + memref_load_164); 
                int arith_addi_166 = (arith_addi_155 + arith_const_6); 
                double memref_load_167 = func_arg_2[arith_addi_27][arith_addi_166]; 
                double arith_addf_168 = (arith_addf_165 + memref_load_167); 
                double memref_load_169 = func_arg_2[arith_addi_27][arith_addi_155]; 
                double arith_addf_170 = (arith_addf_168 + memref_load_169); 
                int arith_addi_171 = (arith_addi_155 + arith_const_13); 
                double memref_load_172 = func_arg_2[arith_addi_27][arith_addi_171]; 
                double arith_addf_173 = (arith_addf_170 + memref_load_172); 
                int arith_addi_174 = (arith_addi_27 + arith_const_13); 
                int arith_addi_175 = (arith_addi_155 + arith_const_6); 
                double memref_load_176 = func_arg_2[arith_addi_174][arith_addi_175]; 
                double arith_addf_177 = (arith_addf_173 + memref_load_176); 
                int arith_addi_178 = (arith_addi_27 + arith_const_13); 
                double memref_load_179 = func_arg_2[arith_addi_178][arith_addi_155]; 
                double arith_addf_180 = (arith_addf_177 + memref_load_179); 
                int arith_addi_181 = (arith_addi_27 + arith_const_13); 
                int arith_addi_182 = (arith_addi_155 + arith_const_13); 
                double memref_load_183 = func_arg_2[arith_addi_181][arith_addi_182]; 
                double arith_addf_184 = (arith_addf_180 + memref_load_183); 
                double arith_divf_185 = (arith_addf_184 / arith_const_10); 
                func_arg_2[arith_addi_27][arith_addi_155] = arith_divf_185; 
              }
              PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
            }
            async_group_22[async_group_index_23] = execute_token_26; 
            async_group_index_23++; 
            int arith_addi_186 = (for_iter_arg_25 + arith_const_13); 
            for_iter_arg_25 = arith_addi_186; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
        }
        async_group_17[async_group_index_18] = execute_token_21; 
        async_group_index_18++; 
        int arith_addi_187 = (for_iter_arg_20 + arith_const_13); 
        for_iter_arg_20 = arith_addi_187; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
    }
  }
  return; 

}
#pragma pocc-region-end
