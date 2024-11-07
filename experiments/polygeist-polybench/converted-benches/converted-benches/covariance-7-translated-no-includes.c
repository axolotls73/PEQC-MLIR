#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = -26; 
  int arith_const_8 = 26; 
  int arith_const_9 = -1; 
  int arith_const_10 = 27; 
  int arith_const_11 = 31; 
  int arith_const_12 = 13; 
  int arith_const_13 = -13; 
  int arith_const_14 = 16; 
  int arith_const_15 = 23; 
  int arith_const_16 = 32; 
  int arith_const_17 = 1; 
  int arith_const_18 = 28; 
  int arith_const_19 = 0; 
  double arith_const_20 = 1.000000; 
  double arith_const_21 = 0.000000; 
  double* memref_alloca_22; 
  double* memref_alloca_23; 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_19; 
  for (int for_iter_26 = arith_const_19; for_iter_26 < arith_const_18; for_iter_26 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      int* async_group_29; 
      int async_group_index_30 = 0; 
      int for_iter_arg_32 = arith_const_19; 
      for (int for_iter_31 = for_iter_26; for_iter_31 < arith_const_18; for_iter_31 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_33); 
        #pragma peqc async_execute
        {
          func_arg_4[for_iter_26][for_iter_31] = arith_const_21; 
          PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
        }
        async_group_29[async_group_index_30] = execute_token_33; 
        async_group_index_30++; 
        int arith_addi_34 = (for_iter_arg_32 + arith_const_17); 
        for_iter_arg_32 = arith_addi_34; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_35 = (for_iter_arg_27 + arith_const_17); 
    for_iter_arg_27 = arith_addi_35; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  double arith_subf_36 = (func_arg_2 - arith_const_20); 
  memref_alloca_23[arith_const_19] = arith_subf_36; 
  int* async_group_37; 
  int async_group_index_38 = 0; 
  int for_iter_arg_40 = arith_const_19; 
  for (int for_iter_39 = arith_const_19; for_iter_39 < arith_const_18; for_iter_39 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_41); 
    #pragma peqc async_execute
    {
      func_arg_5[for_iter_39] = arith_const_21; 
      PAST_SET_SEMAPHORE(execute_token_41, PAST_TASK_FINISHED); 
    }
    async_group_37[async_group_index_38] = execute_token_41; 
    async_group_index_38++; 
    int arith_addi_42 = (for_iter_arg_40 + arith_const_17); 
    for_iter_arg_40 = arith_addi_42; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_37, async_group_index_38, PAST_TASK_FINISHED); 
  for (int for_iter_43 = arith_const_19; for_iter_43 < arith_const_16; for_iter_43 += arith_const_17) {
    int* async_group_44; 
    int async_group_index_45 = 0; 
    int for_iter_arg_47 = arith_const_19; 
    for (int for_iter_46 = arith_const_19; for_iter_46 < arith_const_18; for_iter_46 += arith_const_17) {
      PAST_NEW_SEMAPHORE(execute_token_48); 
      #pragma peqc async_execute
      {
        double memref_load_49 = func_arg_5[for_iter_46]; 
        double memref_load_50 = func_arg_3[for_iter_43][for_iter_46]; 
        double arith_addf_51 = (memref_load_49 + memref_load_50); 
        func_arg_5[for_iter_46] = arith_addf_51; 
        PAST_SET_SEMAPHORE(execute_token_48, PAST_TASK_FINISHED); 
      }
      async_group_44[async_group_index_45] = execute_token_48; 
      async_group_index_45++; 
      int arith_addi_52 = (for_iter_arg_47 + arith_const_17); 
      for_iter_arg_47 = arith_addi_52; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_44, async_group_index_45, PAST_TASK_FINISHED); 
  }
  int* async_group_53; 
  int async_group_index_54 = 0; 
  int for_iter_arg_56 = arith_const_19; 
  for (int for_iter_55 = arith_const_19; for_iter_55 < arith_const_18; for_iter_55 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_57); 
    #pragma peqc async_execute
    {
      double memref_load_58 = func_arg_5[for_iter_55]; 
      double arith_divf_59 = (memref_load_58 / func_arg_2); 
      func_arg_5[for_iter_55] = arith_divf_59; 
      PAST_SET_SEMAPHORE(execute_token_57, PAST_TASK_FINISHED); 
    }
    async_group_53[async_group_index_54] = execute_token_57; 
    async_group_index_54++; 
    int arith_addi_60 = (for_iter_arg_56 + arith_const_17); 
    for_iter_arg_56 = arith_addi_60; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_53, async_group_index_54, PAST_TASK_FINISHED); 
  int* async_group_61; 
  int async_group_index_62 = 0; 
  int for_iter_arg_64 = arith_const_19; 
  for (int for_iter_63 = arith_const_19; for_iter_63 < arith_const_16; for_iter_63 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_65); 
    #pragma peqc async_execute
    {
      int* async_group_66; 
      int async_group_index_67 = 0; 
      int for_iter_arg_69 = arith_const_19; 
      for (int for_iter_68 = arith_const_19; for_iter_68 < arith_const_18; for_iter_68 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_70); 
        #pragma peqc async_execute
        {
          double memref_load_71 = func_arg_3[for_iter_63][for_iter_68]; 
          double memref_load_72 = func_arg_5[for_iter_68]; 
          double arith_subf_73 = (memref_load_71 - memref_load_72); 
          func_arg_3[for_iter_63][for_iter_68] = arith_subf_73; 
          PAST_SET_SEMAPHORE(execute_token_70, PAST_TASK_FINISHED); 
        }
        async_group_66[async_group_index_67] = execute_token_70; 
        async_group_index_67++; 
        int arith_addi_74 = (for_iter_arg_69 + arith_const_17); 
        for_iter_arg_69 = arith_addi_74; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_66, async_group_index_67, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_65, PAST_TASK_FINISHED); 
    }
    async_group_61[async_group_index_62] = execute_token_65; 
    async_group_index_62++; 
    int arith_addi_75 = (for_iter_arg_64 + arith_const_17); 
    for_iter_arg_64 = arith_addi_75; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_61, async_group_index_62, PAST_TASK_FINISHED); 
  int* async_group_76; 
  int async_group_index_77 = 0; 
  int for_iter_arg_79 = arith_const_19; 
  for (int for_iter_78 = arith_const_19; for_iter_78 < arith_const_18; for_iter_78 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_80); 
    #pragma peqc async_execute
    {
      for (int for_iter_81 = arith_const_19; for_iter_81 < arith_const_16; for_iter_81 += arith_const_17) {
        int* async_group_82; 
        int async_group_index_83 = 0; 
        int for_iter_arg_85 = arith_const_19; 
        for (int for_iter_84 = for_iter_78; for_iter_84 < arith_const_18; for_iter_84 += arith_const_17) {
          PAST_NEW_SEMAPHORE(execute_token_86); 
          #pragma peqc async_execute
          {
            double memref_load_87 = func_arg_4[for_iter_78][for_iter_84]; 
            double memref_load_88 = func_arg_3[for_iter_81][for_iter_78]; 
            double memref_load_89 = func_arg_3[for_iter_81][for_iter_84]; 
            double arith_mulf_90 = (memref_load_88 * memref_load_89); 
            double arith_addf_91 = (memref_load_87 + arith_mulf_90); 
            func_arg_4[for_iter_78][for_iter_84] = arith_addf_91; 
            PAST_SET_SEMAPHORE(execute_token_86, PAST_TASK_FINISHED); 
          }
          async_group_82[async_group_index_83] = execute_token_86; 
          async_group_index_83++; 
          int arith_addi_92 = (for_iter_arg_85 + arith_const_17); 
          for_iter_arg_85 = arith_addi_92; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_82, async_group_index_83, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_80, PAST_TASK_FINISHED); 
    }
    async_group_76[async_group_index_77] = execute_token_80; 
    async_group_index_77++; 
    int arith_addi_93 = (for_iter_arg_79 + arith_const_17); 
    for_iter_arg_79 = arith_addi_93; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_76, async_group_index_77, PAST_TASK_FINISHED); 
  for (int for_iter_94 = arith_const_19; for_iter_94 < arith_const_15; for_iter_94 += arith_const_17) {
    int arith_muli_95 = (for_iter_94 * arith_const_14); 
    int arith_addi_96 = (arith_muli_95 + arith_const_13); 
    int arith_cmpi_97 = ((arith_addi_96 <= arith_const_19) ? 1 : 0); 
    int arith_subi_98 = (arith_const_19 - arith_addi_96); 
    int arith_subi_99 = (arith_addi_96 - arith_const_17); 
    int arith_select_100 = (arith_cmpi_97 ? arith_subi_98 : arith_subi_99); 
    int arith_divi_101 = (arith_select_100 / arith_const_12); 
    int arith_subi_102 = (arith_const_19 - arith_divi_101); 
    int arith_addi_103 = (arith_divi_101 + arith_const_17); 
    int arith_select_104 = (arith_cmpi_97 ? arith_subi_102 : arith_addi_103); 
    int arith_maxsi_105 = max(arith_select_104, arith_const_19); 
    int arith_muli_106 = (for_iter_94 * arith_const_16); 
    int arith_addi_107 = (arith_muli_106 + arith_const_11); 
    int arith_cmpi_108 = ((arith_addi_107 < arith_const_19) ? 1 : 0); 
    int arith_subi_109 = (arith_const_9 - arith_addi_107); 
    int arith_select_110 = (arith_cmpi_108 ? arith_subi_109 : arith_addi_107); 
    int arith_divi_111 = (arith_select_110 / arith_const_10); 
    int arith_subi_112 = (arith_const_9 - arith_divi_111); 
    int arith_select_113 = (arith_cmpi_108 ? arith_subi_112 : arith_divi_111); 
    int arith_addi_114 = (arith_select_113 + arith_const_17); 
    for (int for_iter_115 = arith_maxsi_105; for_iter_115 < arith_addi_114; for_iter_115 += arith_const_17) {
      int arith_muli_116 = (for_iter_94 * arith_const_16); 
      int arith_muli_117 = (for_iter_115 * arith_const_10); 
      int arith_maxsi_118 = max(arith_muli_116, arith_muli_117); 
      int arith_muli_119 = (for_iter_94 * arith_const_16); 
      int arith_addi_120 = (arith_muli_119 + arith_const_16); 
      int arith_muli_121 = (for_iter_115 * arith_const_8); 
      int arith_addi_122 = (arith_muli_121 + arith_const_18); 
      int arith_minsi_123 = min(arith_addi_120, arith_addi_122); 
      for (int for_iter_124 = arith_maxsi_118; for_iter_124 < arith_minsi_123; for_iter_124 += arith_const_17) {
        int arith_muli_125 = (for_iter_124 * arith_const_7); 
        int arith_addi_126 = (arith_muli_125 + for_iter_115); 
        double memref_load_127 = func_arg_4[for_iter_115][arith_addi_126]; 
        double memref_load_128 = memref_alloca_23[arith_const_19]; 
        double arith_divf_129 = (memref_load_127 / memref_load_128); 
        memref_alloca_22[arith_const_19] = arith_divf_129; 
        int arith_muli_130 = (for_iter_124 * arith_const_7); 
        int arith_addi_131 = (arith_muli_130 + for_iter_115); 
        func_arg_4[for_iter_115][arith_addi_131] = arith_divf_129; 
        double memref_load_132 = memref_alloca_22[arith_const_19]; 
        int arith_muli_133 = (for_iter_124 * arith_const_7); 
        int arith_addi_134 = (arith_muli_133 + for_iter_115); 
        func_arg_4[arith_addi_134][for_iter_115] = memref_load_132; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
