#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -32; 
  int arith_const_8 = -1; 
  int arith_const_9 = 27; 
  int arith_const_10 = 7; 
  int arith_const_11 = 128; 
  int arith_const_12 = 3; 
  int arith_const_13 = 2; 
  int arith_const_14 = 4; 
  int arith_const_15 = 8; 
  int arith_const_16 = 28; 
  int arith_const_17 = 32; 
  double arith_const_18 = 1.000000; 
  double arith_const_19 = 0.000000; 
  double arith_const_20 = 0.100000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 1; 
  int* async_group_23; 
  int async_group_index_24 = 0; 
  int for_iter_arg_26 = arith_const_21; 
  for (int for_iter_25 = arith_const_21; for_iter_25 < arith_const_22; for_iter_25 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_27); 
    #pragma peqc async_execute
    {
      int arith_muli_28 = (for_iter_25 * arith_const_17); 
      for (int for_iter_29 = arith_const_21; for_iter_29 < arith_const_16; for_iter_29 += arith_const_22) {
        int arith_addi_30 = (arith_muli_28 + for_iter_29); 
        func_arg_5[arith_addi_30] = arith_const_19; 
        for (int for_iter_31 = arith_const_21; for_iter_31 < arith_const_15; for_iter_31 += arith_const_22) {
          int arith_muli_32 = (for_iter_31 * arith_const_14); 
          double memref_load_33 = func_arg_3[arith_muli_32][arith_addi_30]; 
          double memref_load_34 = func_arg_5[arith_addi_30]; 
          double arith_addf_35 = (memref_load_34 + memref_load_33); 
          func_arg_5[arith_addi_30] = arith_addf_35; 
          int arith_addi_36 = (arith_muli_32 + arith_const_22); 
          double memref_load_37 = func_arg_3[arith_addi_36][arith_addi_30]; 
          double memref_load_38 = func_arg_5[arith_addi_30]; 
          double arith_addf_39 = (memref_load_38 + memref_load_37); 
          func_arg_5[arith_addi_30] = arith_addf_39; 
          int arith_addi_40 = (arith_muli_32 + arith_const_13); 
          double memref_load_41 = func_arg_3[arith_addi_40][arith_addi_30]; 
          double memref_load_42 = func_arg_5[arith_addi_30]; 
          double arith_addf_43 = (memref_load_42 + memref_load_41); 
          func_arg_5[arith_addi_30] = arith_addf_43; 
          int arith_addi_44 = (arith_muli_32 + arith_const_12); 
          double memref_load_45 = func_arg_3[arith_addi_44][arith_addi_30]; 
          double memref_load_46 = func_arg_5[arith_addi_30]; 
          double arith_addf_47 = (memref_load_46 + memref_load_45); 
          func_arg_5[arith_addi_30] = arith_addf_47; 
        }
        double memref_load_48 = func_arg_5[arith_addi_30]; 
        double arith_divf_49 = (memref_load_48 / func_arg_2); 
        func_arg_5[arith_addi_30] = arith_divf_49; 
      }
      PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
    }
    async_group_23[async_group_index_24] = execute_token_27; 
    async_group_index_24++; 
    int arith_addi_50 = (for_iter_arg_26 + arith_const_22); 
    for_iter_arg_26 = arith_addi_50; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
  int* async_group_51; 
  int async_group_index_52 = 0; 
  int for_iter_arg_54 = arith_const_21; 
  for (int for_iter_53 = arith_const_21; for_iter_53 < arith_const_22; for_iter_53 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_55); 
    #pragma peqc async_execute
    {
      int arith_muli_56 = (for_iter_53 * arith_const_17); 
      for (int for_iter_57 = arith_const_21; for_iter_57 < arith_const_16; for_iter_57 += arith_const_22) {
        int arith_addi_58 = (arith_muli_56 + for_iter_57); 
        func_arg_6[arith_addi_58] = arith_const_19; 
        double memref_load_59 = func_arg_5[arith_addi_58]; 
        double memref_load_60 = func_arg_5[arith_addi_58]; 
        double memref_load_61 = func_arg_5[arith_addi_58]; 
        double memref_load_62 = func_arg_5[arith_addi_58]; 
        for (int for_iter_63 = arith_const_21; for_iter_63 < arith_const_15; for_iter_63 += arith_const_22) {
          int arith_muli_64 = (for_iter_63 * arith_const_14); 
          double memref_load_65 = func_arg_3[arith_muli_64][arith_addi_58]; 
          double arith_subf_66 = (memref_load_65 - memref_load_59); 
          double arith_mulf_67 = (arith_subf_66 * arith_subf_66); 
          double memref_load_68 = func_arg_6[arith_addi_58]; 
          double arith_addf_69 = (memref_load_68 + arith_mulf_67); 
          func_arg_6[arith_addi_58] = arith_addf_69; 
          int arith_addi_70 = (arith_muli_64 + arith_const_22); 
          double memref_load_71 = func_arg_3[arith_addi_70][arith_addi_58]; 
          double arith_subf_72 = (memref_load_71 - memref_load_60); 
          double arith_mulf_73 = (arith_subf_72 * arith_subf_72); 
          double memref_load_74 = func_arg_6[arith_addi_58]; 
          double arith_addf_75 = (memref_load_74 + arith_mulf_73); 
          func_arg_6[arith_addi_58] = arith_addf_75; 
          int arith_addi_76 = (arith_muli_64 + arith_const_13); 
          double memref_load_77 = func_arg_3[arith_addi_76][arith_addi_58]; 
          double arith_subf_78 = (memref_load_77 - memref_load_61); 
          double arith_mulf_79 = (arith_subf_78 * arith_subf_78); 
          double memref_load_80 = func_arg_6[arith_addi_58]; 
          double arith_addf_81 = (memref_load_80 + arith_mulf_79); 
          func_arg_6[arith_addi_58] = arith_addf_81; 
          int arith_addi_82 = (arith_muli_64 + arith_const_12); 
          double memref_load_83 = func_arg_3[arith_addi_82][arith_addi_58]; 
          double arith_subf_84 = (memref_load_83 - memref_load_62); 
          double arith_mulf_85 = (arith_subf_84 * arith_subf_84); 
          double memref_load_86 = func_arg_6[arith_addi_58]; 
          double arith_addf_87 = (memref_load_86 + arith_mulf_85); 
          func_arg_6[arith_addi_58] = arith_addf_87; 
        }
        double memref_load_88 = func_arg_6[arith_addi_58]; 
        double arith_divf_89 = (memref_load_88 / func_arg_2); 
        double math_sqrt_90 = sqrt(arith_divf_89); 
        int arith_cmpi_91 = (math_sqrt_90 <= arith_const_20); 
        double arith_select_92 = (arith_cmpi_91 ? arith_const_18 : math_sqrt_90); 
        func_arg_6[arith_addi_58] = arith_select_92; 
      }
      PAST_SET_SEMAPHORE(execute_token_55, PAST_TASK_FINISHED); 
    }
    async_group_51[async_group_index_52] = execute_token_55; 
    async_group_index_52++; 
    int arith_addi_93 = (for_iter_arg_54 + arith_const_22); 
    for_iter_arg_54 = arith_addi_93; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_51, async_group_index_52, PAST_TASK_FINISHED); 
  double math_sqrt_94 = sqrt(func_arg_2); 
  int* async_group_95; 
  int async_group_index_96 = 0; 
  int for_iter_arg_98 = arith_const_21; 
  for (int for_iter_97 = arith_const_21; for_iter_97 < arith_const_22; for_iter_97 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_99); 
    #pragma peqc async_execute
    {
      int arith_muli_100 = (for_iter_97 * arith_const_17); 
      for (int for_iter_101 = arith_const_21; for_iter_101 < arith_const_22; for_iter_101 += arith_const_22) {
        int arith_muli_102 = (for_iter_101 * arith_const_11); 
        for (int for_iter_103 = arith_const_21; for_iter_103 < arith_const_17; for_iter_103 += arith_const_22) {
          int arith_addi_104 = (arith_muli_100 + for_iter_103); 
          for (int for_iter_105 = arith_const_21; for_iter_105 < arith_const_10; for_iter_105 += arith_const_22) {
            int arith_muli_106 = (for_iter_105 * arith_const_14); 
            int arith_addi_107 = (arith_muli_102 + arith_muli_106); 
            double memref_load_108 = func_arg_5[arith_addi_107]; 
            double memref_load_109 = func_arg_3[arith_addi_104][arith_addi_107]; 
            double arith_subf_110 = (memref_load_109 - memref_load_108); 
            func_arg_3[arith_addi_104][arith_addi_107] = arith_subf_110; 
            double memref_load_111 = func_arg_6[arith_addi_107]; 
            double arith_mulf_112 = (math_sqrt_94 * memref_load_111); 
            double arith_divf_113 = (arith_subf_110 / arith_mulf_112); 
            func_arg_3[arith_addi_104][arith_addi_107] = arith_divf_113; 
            int arith_addi_114 = (arith_addi_107 + arith_const_22); 
            double memref_load_115 = func_arg_5[arith_addi_114]; 
            double memref_load_116 = func_arg_3[arith_addi_104][arith_addi_114]; 
            double arith_subf_117 = (memref_load_116 - memref_load_115); 
            func_arg_3[arith_addi_104][arith_addi_114] = arith_subf_117; 
            double memref_load_118 = func_arg_6[arith_addi_114]; 
            double arith_mulf_119 = (math_sqrt_94 * memref_load_118); 
            double arith_divf_120 = (arith_subf_117 / arith_mulf_119); 
            func_arg_3[arith_addi_104][arith_addi_114] = arith_divf_120; 
            int arith_addi_121 = (arith_addi_107 + arith_const_13); 
            double memref_load_122 = func_arg_5[arith_addi_121]; 
            double memref_load_123 = func_arg_3[arith_addi_104][arith_addi_121]; 
            double arith_subf_124 = (memref_load_123 - memref_load_122); 
            func_arg_3[arith_addi_104][arith_addi_121] = arith_subf_124; 
            double memref_load_125 = func_arg_6[arith_addi_121]; 
            double arith_mulf_126 = (math_sqrt_94 * memref_load_125); 
            double arith_divf_127 = (arith_subf_124 / arith_mulf_126); 
            func_arg_3[arith_addi_104][arith_addi_121] = arith_divf_127; 
            int arith_addi_128 = (arith_addi_107 + arith_const_12); 
            double memref_load_129 = func_arg_5[arith_addi_128]; 
            double memref_load_130 = func_arg_3[arith_addi_104][arith_addi_128]; 
            double arith_subf_131 = (memref_load_130 - memref_load_129); 
            func_arg_3[arith_addi_104][arith_addi_128] = arith_subf_131; 
            double memref_load_132 = func_arg_6[arith_addi_128]; 
            double arith_mulf_133 = (math_sqrt_94 * memref_load_132); 
            double arith_divf_134 = (arith_subf_131 / arith_mulf_133); 
            func_arg_3[arith_addi_104][arith_addi_128] = arith_divf_134; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_99, PAST_TASK_FINISHED); 
    }
    async_group_95[async_group_index_96] = execute_token_99; 
    async_group_index_96++; 
    int arith_addi_135 = (for_iter_arg_98 + arith_const_22); 
    for_iter_arg_98 = arith_addi_135; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_95, async_group_index_96, PAST_TASK_FINISHED); 
  int* async_group_136; 
  int async_group_index_137 = 0; 
  int for_iter_arg_139 = arith_const_21; 
  for (int for_iter_138 = arith_const_21; for_iter_138 < arith_const_22; for_iter_138 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_140); 
    #pragma peqc async_execute
    {
      int arith_muli_141 = (for_iter_138 * arith_const_17); 
      for (int for_iter_142 = arith_const_21; for_iter_142 < arith_const_9; for_iter_142 += arith_const_22) {
        int arith_addi_143 = (arith_muli_141 + for_iter_142); 
        func_arg_4[arith_addi_143][arith_addi_143] = arith_const_18; 
        int arith_muli_144 = (for_iter_142 * arith_const_8); 
        int arith_muli_145 = (for_iter_138 * arith_const_7); 
        int arith_addi_146 = (arith_muli_144 + arith_muli_145); 
        int arith_addi_147 = (arith_addi_146 + arith_const_9); 
        for (int for_iter_148 = arith_const_21; for_iter_148 < arith_addi_147; for_iter_148 += arith_const_22) {
          int arith_addi_149 = (arith_addi_143 + for_iter_148); 
          int arith_addi_150 = (arith_addi_149 + arith_const_22); 
          func_arg_4[arith_addi_143][arith_addi_150] = arith_const_19; 
          for (int for_iter_151 = arith_const_21; for_iter_151 < arith_const_15; for_iter_151 += arith_const_22) {
            int arith_muli_152 = (for_iter_151 * arith_const_14); 
            double memref_load_153 = func_arg_3[arith_muli_152][arith_addi_143]; 
            double memref_load_154 = func_arg_3[arith_muli_152][arith_addi_150]; 
            double arith_mulf_155 = (memref_load_153 * memref_load_154); 
            double memref_load_156 = func_arg_4[arith_addi_143][arith_addi_150]; 
            double arith_addf_157 = (memref_load_156 + arith_mulf_155); 
            func_arg_4[arith_addi_143][arith_addi_150] = arith_addf_157; 
            int arith_addi_158 = (arith_muli_152 + arith_const_22); 
            double memref_load_159 = func_arg_3[arith_addi_158][arith_addi_143]; 
            double memref_load_160 = func_arg_3[arith_addi_158][arith_addi_150]; 
            double arith_mulf_161 = (memref_load_159 * memref_load_160); 
            double memref_load_162 = func_arg_4[arith_addi_143][arith_addi_150]; 
            double arith_addf_163 = (memref_load_162 + arith_mulf_161); 
            func_arg_4[arith_addi_143][arith_addi_150] = arith_addf_163; 
            int arith_addi_164 = (arith_muli_152 + arith_const_13); 
            double memref_load_165 = func_arg_3[arith_addi_164][arith_addi_143]; 
            double memref_load_166 = func_arg_3[arith_addi_164][arith_addi_150]; 
            double arith_mulf_167 = (memref_load_165 * memref_load_166); 
            double memref_load_168 = func_arg_4[arith_addi_143][arith_addi_150]; 
            double arith_addf_169 = (memref_load_168 + arith_mulf_167); 
            func_arg_4[arith_addi_143][arith_addi_150] = arith_addf_169; 
            int arith_addi_170 = (arith_muli_152 + arith_const_12); 
            double memref_load_171 = func_arg_3[arith_addi_170][arith_addi_143]; 
            double memref_load_172 = func_arg_3[arith_addi_170][arith_addi_150]; 
            double arith_mulf_173 = (memref_load_171 * memref_load_172); 
            double memref_load_174 = func_arg_4[arith_addi_143][arith_addi_150]; 
            double arith_addf_175 = (memref_load_174 + arith_mulf_173); 
            func_arg_4[arith_addi_143][arith_addi_150] = arith_addf_175; 
          }
          double memref_load_176 = func_arg_4[arith_addi_143][arith_addi_150]; 
          func_arg_4[arith_addi_150][arith_addi_143] = memref_load_176; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_140, PAST_TASK_FINISHED); 
    }
    async_group_136[async_group_index_137] = execute_token_140; 
    async_group_index_137++; 
    int arith_addi_177 = (for_iter_arg_139 + arith_const_22); 
    for_iter_arg_139 = arith_addi_177; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_136, async_group_index_137, PAST_TASK_FINISHED); 
  func_arg_4[arith_const_9][arith_const_9] = arith_const_18; 
  return; 

}
#pragma pocc-region-end
