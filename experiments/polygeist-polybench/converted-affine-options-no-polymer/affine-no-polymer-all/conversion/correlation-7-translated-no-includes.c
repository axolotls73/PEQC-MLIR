#pragma pocc-region-start
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 27; 
  int arith_const_9 = 7; 
  int arith_const_10 = 32; 
  int arith_const_11 = 3; 
  int arith_const_12 = 2; 
  int arith_const_13 = 4; 
  int arith_const_14 = 8; 
  double arith_const_15 = 1.000000; 
  double arith_const_16 = 0.000000; 
  double arith_const_17 = 0.100000; 
  int arith_const_18 = 0; 
  int arith_const_19 = 28; 
  int arith_const_20 = 1; 
  int* async_group_21; 
  int async_group_index_22 = 0; 
  int for_iter_arg_24 = arith_const_18; 
  for (int for_iter_23 = arith_const_18; for_iter_23 < arith_const_19; for_iter_23 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_25); 
    #pragma peqc async_execute
    {
      for (int for_iter_26 = arith_const_18; for_iter_26 < arith_const_20; for_iter_26 += arith_const_20) {
        int arith_addi_27 = (for_iter_23 + for_iter_26); 
        func_arg_5[arith_addi_27] = arith_const_16; 
        for (int for_iter_28 = arith_const_18; for_iter_28 < arith_const_14; for_iter_28 += arith_const_20) {
          int arith_muli_29 = (for_iter_28 * arith_const_13); 
          double memref_load_30 = func_arg_3[arith_muli_29][arith_addi_27]; 
          double memref_load_31 = func_arg_5[arith_addi_27]; 
          double arith_addf_32 = (memref_load_31 + memref_load_30); 
          func_arg_5[arith_addi_27] = arith_addf_32; 
          int arith_addi_33 = (arith_muli_29 + arith_const_20); 
          double memref_load_34 = func_arg_3[arith_addi_33][arith_addi_27]; 
          double memref_load_35 = func_arg_5[arith_addi_27]; 
          double arith_addf_36 = (memref_load_35 + memref_load_34); 
          func_arg_5[arith_addi_27] = arith_addf_36; 
          int arith_addi_37 = (arith_muli_29 + arith_const_12); 
          double memref_load_38 = func_arg_3[arith_addi_37][arith_addi_27]; 
          double memref_load_39 = func_arg_5[arith_addi_27]; 
          double arith_addf_40 = (memref_load_39 + memref_load_38); 
          func_arg_5[arith_addi_27] = arith_addf_40; 
          int arith_addi_41 = (arith_muli_29 + arith_const_11); 
          double memref_load_42 = func_arg_3[arith_addi_41][arith_addi_27]; 
          double memref_load_43 = func_arg_5[arith_addi_27]; 
          double arith_addf_44 = (memref_load_43 + memref_load_42); 
          func_arg_5[arith_addi_27] = arith_addf_44; 
        }
        double memref_load_45 = func_arg_5[arith_addi_27]; 
        double arith_divf_46 = (memref_load_45 / func_arg_2); 
        func_arg_5[arith_addi_27] = arith_divf_46; 
      }
      PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
    }
    async_group_21[async_group_index_22] = execute_token_25; 
    async_group_index_22++; 
    int arith_addi_47 = (for_iter_arg_24 + arith_const_20); 
    for_iter_arg_24 = arith_addi_47; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
  int* async_group_48; 
  int async_group_index_49 = 0; 
  int for_iter_arg_51 = arith_const_18; 
  for (int for_iter_50 = arith_const_18; for_iter_50 < arith_const_19; for_iter_50 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_52); 
    #pragma peqc async_execute
    {
      for (int for_iter_53 = arith_const_18; for_iter_53 < arith_const_20; for_iter_53 += arith_const_20) {
        int arith_addi_54 = (for_iter_50 + for_iter_53); 
        func_arg_6[arith_addi_54] = arith_const_16; 
        double memref_load_55 = func_arg_5[arith_addi_54]; 
        double memref_load_56 = func_arg_5[arith_addi_54]; 
        double memref_load_57 = func_arg_5[arith_addi_54]; 
        double memref_load_58 = func_arg_5[arith_addi_54]; 
        for (int for_iter_59 = arith_const_18; for_iter_59 < arith_const_14; for_iter_59 += arith_const_20) {
          int arith_muli_60 = (for_iter_59 * arith_const_13); 
          double memref_load_61 = func_arg_3[arith_muli_60][arith_addi_54]; 
          double arith_subf_62 = (memref_load_61 - memref_load_55); 
          double arith_mulf_63 = (arith_subf_62 * arith_subf_62); 
          double memref_load_64 = func_arg_6[arith_addi_54]; 
          double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
          func_arg_6[arith_addi_54] = arith_addf_65; 
          int arith_addi_66 = (arith_muli_60 + arith_const_20); 
          double memref_load_67 = func_arg_3[arith_addi_66][arith_addi_54]; 
          double arith_subf_68 = (memref_load_67 - memref_load_56); 
          double arith_mulf_69 = (arith_subf_68 * arith_subf_68); 
          double memref_load_70 = func_arg_6[arith_addi_54]; 
          double arith_addf_71 = (memref_load_70 + arith_mulf_69); 
          func_arg_6[arith_addi_54] = arith_addf_71; 
          int arith_addi_72 = (arith_muli_60 + arith_const_12); 
          double memref_load_73 = func_arg_3[arith_addi_72][arith_addi_54]; 
          double arith_subf_74 = (memref_load_73 - memref_load_57); 
          double arith_mulf_75 = (arith_subf_74 * arith_subf_74); 
          double memref_load_76 = func_arg_6[arith_addi_54]; 
          double arith_addf_77 = (memref_load_76 + arith_mulf_75); 
          func_arg_6[arith_addi_54] = arith_addf_77; 
          int arith_addi_78 = (arith_muli_60 + arith_const_11); 
          double memref_load_79 = func_arg_3[arith_addi_78][arith_addi_54]; 
          double arith_subf_80 = (memref_load_79 - memref_load_58); 
          double arith_mulf_81 = (arith_subf_80 * arith_subf_80); 
          double memref_load_82 = func_arg_6[arith_addi_54]; 
          double arith_addf_83 = (memref_load_82 + arith_mulf_81); 
          func_arg_6[arith_addi_54] = arith_addf_83; 
        }
        double memref_load_84 = func_arg_6[arith_addi_54]; 
        double arith_divf_85 = (memref_load_84 / func_arg_2); 
        double math_sqrt_86 = sqrt(arith_divf_85); 
        int arith_cmpi_87 = (math_sqrt_86 <= arith_const_17); 
        double arith_select_88 = (arith_cmpi_87 ? arith_const_15 : math_sqrt_86); 
        func_arg_6[arith_addi_54] = arith_select_88; 
      }
      PAST_SET_SEMAPHORE(execute_token_52, PAST_TASK_FINISHED); 
    }
    async_group_48[async_group_index_49] = execute_token_52; 
    async_group_index_49++; 
    int arith_addi_89 = (for_iter_arg_51 + arith_const_20); 
    for_iter_arg_51 = arith_addi_89; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_48, async_group_index_49, PAST_TASK_FINISHED); 
  double math_sqrt_90 = sqrt(func_arg_2); 
  int* async_group_91; 
  int async_group_index_92 = 0; 
  int for_iter_arg_94 = arith_const_18; 
  for (int for_iter_93 = arith_const_18; for_iter_93 < arith_const_10; for_iter_93 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_95); 
    #pragma peqc async_execute
    {
      for (int for_iter_96 = arith_const_18; for_iter_96 < arith_const_9; for_iter_96 += arith_const_20) {
        int arith_muli_97 = (for_iter_96 * arith_const_13); 
        for (int for_iter_98 = arith_const_18; for_iter_98 < arith_const_20; for_iter_98 += arith_const_20) {
          int arith_addi_99 = (for_iter_93 + for_iter_98); 
          for (int for_iter_100 = arith_const_18; for_iter_100 < arith_const_20; for_iter_100 += arith_const_20) {
            int arith_muli_101 = (for_iter_100 * arith_const_13); 
            int arith_addi_102 = (arith_muli_97 + arith_muli_101); 
            double memref_load_103 = func_arg_5[arith_addi_102]; 
            double memref_load_104 = func_arg_3[arith_addi_99][arith_addi_102]; 
            double arith_subf_105 = (memref_load_104 - memref_load_103); 
            func_arg_3[arith_addi_99][arith_addi_102] = arith_subf_105; 
            double memref_load_106 = func_arg_6[arith_addi_102]; 
            double arith_mulf_107 = (math_sqrt_90 * memref_load_106); 
            double arith_divf_108 = (arith_subf_105 / arith_mulf_107); 
            func_arg_3[arith_addi_99][arith_addi_102] = arith_divf_108; 
            int arith_addi_109 = (arith_addi_102 + arith_const_20); 
            double memref_load_110 = func_arg_5[arith_addi_109]; 
            double memref_load_111 = func_arg_3[arith_addi_99][arith_addi_109]; 
            double arith_subf_112 = (memref_load_111 - memref_load_110); 
            func_arg_3[arith_addi_99][arith_addi_109] = arith_subf_112; 
            double memref_load_113 = func_arg_6[arith_addi_109]; 
            double arith_mulf_114 = (math_sqrt_90 * memref_load_113); 
            double arith_divf_115 = (arith_subf_112 / arith_mulf_114); 
            func_arg_3[arith_addi_99][arith_addi_109] = arith_divf_115; 
            int arith_addi_116 = (arith_addi_102 + arith_const_12); 
            double memref_load_117 = func_arg_5[arith_addi_116]; 
            double memref_load_118 = func_arg_3[arith_addi_99][arith_addi_116]; 
            double arith_subf_119 = (memref_load_118 - memref_load_117); 
            func_arg_3[arith_addi_99][arith_addi_116] = arith_subf_119; 
            double memref_load_120 = func_arg_6[arith_addi_116]; 
            double arith_mulf_121 = (math_sqrt_90 * memref_load_120); 
            double arith_divf_122 = (arith_subf_119 / arith_mulf_121); 
            func_arg_3[arith_addi_99][arith_addi_116] = arith_divf_122; 
            int arith_addi_123 = (arith_addi_102 + arith_const_11); 
            double memref_load_124 = func_arg_5[arith_addi_123]; 
            double memref_load_125 = func_arg_3[arith_addi_99][arith_addi_123]; 
            double arith_subf_126 = (memref_load_125 - memref_load_124); 
            func_arg_3[arith_addi_99][arith_addi_123] = arith_subf_126; 
            double memref_load_127 = func_arg_6[arith_addi_123]; 
            double arith_mulf_128 = (math_sqrt_90 * memref_load_127); 
            double arith_divf_129 = (arith_subf_126 / arith_mulf_128); 
            func_arg_3[arith_addi_99][arith_addi_123] = arith_divf_129; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_95, PAST_TASK_FINISHED); 
    }
    async_group_91[async_group_index_92] = execute_token_95; 
    async_group_index_92++; 
    int arith_addi_130 = (for_iter_arg_94 + arith_const_20); 
    for_iter_arg_94 = arith_addi_130; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_91, async_group_index_92, PAST_TASK_FINISHED); 
  int* async_group_131; 
  int async_group_index_132 = 0; 
  int for_iter_arg_134 = arith_const_18; 
  for (int for_iter_133 = arith_const_18; for_iter_133 < arith_const_8; for_iter_133 += arith_const_20) {
    PAST_NEW_SEMAPHORE(execute_token_135); 
    #pragma peqc async_execute
    {
      for (int for_iter_136 = arith_const_18; for_iter_136 < arith_const_20; for_iter_136 += arith_const_20) {
        int arith_addi_137 = (for_iter_133 + for_iter_136); 
        func_arg_4[arith_addi_137][arith_addi_137] = arith_const_15; 
        int arith_muli_138 = (for_iter_133 * arith_const_7); 
        int arith_muli_139 = (for_iter_136 * arith_const_7); 
        int arith_addi_140 = (arith_muli_138 + arith_muli_139); 
        int arith_addi_141 = (arith_addi_140 + arith_const_8); 
        for (int for_iter_142 = arith_const_18; for_iter_142 < arith_addi_141; for_iter_142 += arith_const_20) {
          int arith_addi_143 = (arith_addi_137 + for_iter_142); 
          int arith_addi_144 = (arith_addi_143 + arith_const_20); 
          func_arg_4[arith_addi_137][arith_addi_144] = arith_const_16; 
          for (int for_iter_145 = arith_const_18; for_iter_145 < arith_const_14; for_iter_145 += arith_const_20) {
            int arith_muli_146 = (for_iter_145 * arith_const_13); 
            double memref_load_147 = func_arg_3[arith_muli_146][arith_addi_137]; 
            double memref_load_148 = func_arg_3[arith_muli_146][arith_addi_144]; 
            double arith_mulf_149 = (memref_load_147 * memref_load_148); 
            double memref_load_150 = func_arg_4[arith_addi_137][arith_addi_144]; 
            double arith_addf_151 = (memref_load_150 + arith_mulf_149); 
            func_arg_4[arith_addi_137][arith_addi_144] = arith_addf_151; 
            int arith_addi_152 = (arith_muli_146 + arith_const_20); 
            double memref_load_153 = func_arg_3[arith_addi_152][arith_addi_137]; 
            double memref_load_154 = func_arg_3[arith_addi_152][arith_addi_144]; 
            double arith_mulf_155 = (memref_load_153 * memref_load_154); 
            double memref_load_156 = func_arg_4[arith_addi_137][arith_addi_144]; 
            double arith_addf_157 = (memref_load_156 + arith_mulf_155); 
            func_arg_4[arith_addi_137][arith_addi_144] = arith_addf_157; 
            int arith_addi_158 = (arith_muli_146 + arith_const_12); 
            double memref_load_159 = func_arg_3[arith_addi_158][arith_addi_137]; 
            double memref_load_160 = func_arg_3[arith_addi_158][arith_addi_144]; 
            double arith_mulf_161 = (memref_load_159 * memref_load_160); 
            double memref_load_162 = func_arg_4[arith_addi_137][arith_addi_144]; 
            double arith_addf_163 = (memref_load_162 + arith_mulf_161); 
            func_arg_4[arith_addi_137][arith_addi_144] = arith_addf_163; 
            int arith_addi_164 = (arith_muli_146 + arith_const_11); 
            double memref_load_165 = func_arg_3[arith_addi_164][arith_addi_137]; 
            double memref_load_166 = func_arg_3[arith_addi_164][arith_addi_144]; 
            double arith_mulf_167 = (memref_load_165 * memref_load_166); 
            double memref_load_168 = func_arg_4[arith_addi_137][arith_addi_144]; 
            double arith_addf_169 = (memref_load_168 + arith_mulf_167); 
            func_arg_4[arith_addi_137][arith_addi_144] = arith_addf_169; 
          }
          double memref_load_170 = func_arg_4[arith_addi_137][arith_addi_144]; 
          func_arg_4[arith_addi_144][arith_addi_137] = memref_load_170; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_135, PAST_TASK_FINISHED); 
    }
    async_group_131[async_group_index_132] = execute_token_135; 
    async_group_index_132++; 
    int arith_addi_171 = (for_iter_arg_134 + arith_const_20); 
    for_iter_arg_134 = arith_addi_171; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_131, async_group_index_132, PAST_TASK_FINISHED); 
  func_arg_4[arith_const_8][arith_const_8] = arith_const_15; 
  return; 

}
#pragma pocc-region-end
