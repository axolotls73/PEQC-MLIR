#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = -1; 
  int arith_const_8 = 7; 
  int arith_const_9 = 32; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = 4; 
  int arith_const_13 = 8; 
  double arith_const_14 = 1.000000; 
  double arith_const_15 = 0.000000; 
  int arith_const_16 = 0; 
  int arith_const_17 = 28; 
  int arith_const_18 = 1; 
  int* async_group_19; 
  int async_group_index_20 = 0; 
  int for_iter_arg_22 = arith_const_16; 
  for (int for_iter_21 = arith_const_16; for_iter_21 < arith_const_17; for_iter_21 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_23); 
    #pragma peqc async_execute
    {
      int* async_group_24; 
      int async_group_index_25 = 0; 
      int for_iter_arg_27 = arith_const_16; 
      for (int for_iter_26 = arith_const_16; for_iter_26 < arith_const_18; for_iter_26 += arith_const_18) {
        PAST_NEW_SEMAPHORE(execute_token_28); 
        #pragma peqc async_execute
        {
          int arith_addi_29 = (for_iter_21 + for_iter_26); 
          func_arg_5[arith_addi_29] = arith_const_15; 
          for (int for_iter_30 = arith_const_16; for_iter_30 < arith_const_13; for_iter_30 += arith_const_18) {
            int arith_muli_31 = (for_iter_30 * arith_const_12); 
            double memref_load_32 = func_arg_3[arith_muli_31][arith_addi_29]; 
            double memref_load_33 = func_arg_5[arith_addi_29]; 
            double arith_addf_34 = (memref_load_33 + memref_load_32); 
            func_arg_5[arith_addi_29] = arith_addf_34; 
            int arith_addi_35 = (arith_muli_31 + arith_const_18); 
            double memref_load_36 = func_arg_3[arith_addi_35][arith_addi_29]; 
            double memref_load_37 = func_arg_5[arith_addi_29]; 
            double arith_addf_38 = (memref_load_37 + memref_load_36); 
            func_arg_5[arith_addi_29] = arith_addf_38; 
            int arith_addi_39 = (arith_muli_31 + arith_const_11); 
            double memref_load_40 = func_arg_3[arith_addi_39][arith_addi_29]; 
            double memref_load_41 = func_arg_5[arith_addi_29]; 
            double arith_addf_42 = (memref_load_41 + memref_load_40); 
            func_arg_5[arith_addi_29] = arith_addf_42; 
            int arith_addi_43 = (arith_muli_31 + arith_const_10); 
            double memref_load_44 = func_arg_3[arith_addi_43][arith_addi_29]; 
            double memref_load_45 = func_arg_5[arith_addi_29]; 
            double arith_addf_46 = (memref_load_45 + memref_load_44); 
            func_arg_5[arith_addi_29] = arith_addf_46; 
          }
          double memref_load_47 = func_arg_5[arith_addi_29]; 
          double arith_divf_48 = (memref_load_47 / func_arg_2); 
          func_arg_5[arith_addi_29] = arith_divf_48; 
          PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
        }
        async_group_24[async_group_index_25] = execute_token_28; 
        async_group_index_25++; 
        int arith_addi_49 = (for_iter_arg_27 + arith_const_18); 
        for_iter_arg_27 = arith_addi_49; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
    }
    async_group_19[async_group_index_20] = execute_token_23; 
    async_group_index_20++; 
    int arith_addi_50 = (for_iter_arg_22 + arith_const_18); 
    for_iter_arg_22 = arith_addi_50; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
  int* async_group_51; 
  int async_group_index_52 = 0; 
  int for_iter_arg_54 = arith_const_16; 
  for (int for_iter_53 = arith_const_16; for_iter_53 < arith_const_9; for_iter_53 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_55); 
    #pragma peqc async_execute
    {
      for (int for_iter_56 = arith_const_16; for_iter_56 < arith_const_8; for_iter_56 += arith_const_18) {
        int arith_muli_57 = (for_iter_56 * arith_const_12); 
        int* async_group_58; 
        int async_group_index_59 = 0; 
        int for_iter_arg_61 = arith_const_16; 
        for (int for_iter_60 = arith_const_16; for_iter_60 < arith_const_18; for_iter_60 += arith_const_18) {
          PAST_NEW_SEMAPHORE(execute_token_62); 
          #pragma peqc async_execute
          {
            int arith_addi_63 = (for_iter_53 + for_iter_60); 
            for (int for_iter_64 = arith_const_16; for_iter_64 < arith_const_18; for_iter_64 += arith_const_18) {
              int arith_muli_65 = (for_iter_64 * arith_const_12); 
              int arith_addi_66 = (arith_muli_57 + arith_muli_65); 
              double memref_load_67 = func_arg_5[arith_addi_66]; 
              double memref_load_68 = func_arg_3[arith_addi_63][arith_addi_66]; 
              double arith_subf_69 = (memref_load_68 - memref_load_67); 
              func_arg_3[arith_addi_63][arith_addi_66] = arith_subf_69; 
              int arith_addi_70 = (arith_addi_66 + arith_const_18); 
              double memref_load_71 = func_arg_5[arith_addi_70]; 
              double memref_load_72 = func_arg_3[arith_addi_63][arith_addi_70]; 
              double arith_subf_73 = (memref_load_72 - memref_load_71); 
              func_arg_3[arith_addi_63][arith_addi_70] = arith_subf_73; 
              int arith_addi_74 = (arith_addi_66 + arith_const_11); 
              double memref_load_75 = func_arg_5[arith_addi_74]; 
              double memref_load_76 = func_arg_3[arith_addi_63][arith_addi_74]; 
              double arith_subf_77 = (memref_load_76 - memref_load_75); 
              func_arg_3[arith_addi_63][arith_addi_74] = arith_subf_77; 
              int arith_addi_78 = (arith_addi_66 + arith_const_10); 
              double memref_load_79 = func_arg_5[arith_addi_78]; 
              double memref_load_80 = func_arg_3[arith_addi_63][arith_addi_78]; 
              double arith_subf_81 = (memref_load_80 - memref_load_79); 
              func_arg_3[arith_addi_63][arith_addi_78] = arith_subf_81; 
            }
            PAST_SET_SEMAPHORE(execute_token_62, PAST_TASK_FINISHED); 
          }
          async_group_58[async_group_index_59] = execute_token_62; 
          async_group_index_59++; 
          int arith_addi_82 = (for_iter_arg_61 + arith_const_18); 
          for_iter_arg_61 = arith_addi_82; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_58, async_group_index_59, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_55, PAST_TASK_FINISHED); 
    }
    async_group_51[async_group_index_52] = execute_token_55; 
    async_group_index_52++; 
    int arith_addi_83 = (for_iter_arg_54 + arith_const_18); 
    for_iter_arg_54 = arith_addi_83; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_51, async_group_index_52, PAST_TASK_FINISHED); 
  double arith_subf_84 = (func_arg_2 - arith_const_14); 
  int* async_group_85; 
  int async_group_index_86 = 0; 
  int for_iter_arg_88 = arith_const_16; 
  for (int for_iter_87 = arith_const_16; for_iter_87 < arith_const_17; for_iter_87 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_89); 
    #pragma peqc async_execute
    {
      int arith_muli_90 = (for_iter_87 * arith_const_7); 
      int arith_addi_91 = (arith_muli_90 + arith_const_17); 
      int* async_group_92; 
      int async_group_index_93 = 0; 
      int for_iter_arg_95 = arith_const_16; 
      for (int for_iter_94 = arith_const_16; for_iter_94 < arith_addi_91; for_iter_94 += arith_const_18) {
        PAST_NEW_SEMAPHORE(execute_token_96); 
        #pragma peqc async_execute
        {
          int arith_addi_97 = (for_iter_87 + for_iter_94); 
          func_arg_4[for_iter_87][arith_addi_97] = arith_const_15; 
          for (int for_iter_98 = arith_const_16; for_iter_98 < arith_const_13; for_iter_98 += arith_const_18) {
            int arith_muli_99 = (for_iter_98 * arith_const_12); 
            double memref_load_100 = func_arg_3[arith_muli_99][for_iter_87]; 
            double memref_load_101 = func_arg_3[arith_muli_99][arith_addi_97]; 
            double arith_mulf_102 = (memref_load_100 * memref_load_101); 
            double memref_load_103 = func_arg_4[for_iter_87][arith_addi_97]; 
            double arith_addf_104 = (memref_load_103 + arith_mulf_102); 
            func_arg_4[for_iter_87][arith_addi_97] = arith_addf_104; 
            int arith_addi_105 = (arith_muli_99 + arith_const_18); 
            double memref_load_106 = func_arg_3[arith_addi_105][for_iter_87]; 
            double memref_load_107 = func_arg_3[arith_addi_105][arith_addi_97]; 
            double arith_mulf_108 = (memref_load_106 * memref_load_107); 
            double memref_load_109 = func_arg_4[for_iter_87][arith_addi_97]; 
            double arith_addf_110 = (memref_load_109 + arith_mulf_108); 
            func_arg_4[for_iter_87][arith_addi_97] = arith_addf_110; 
            int arith_addi_111 = (arith_muli_99 + arith_const_11); 
            double memref_load_112 = func_arg_3[arith_addi_111][for_iter_87]; 
            double memref_load_113 = func_arg_3[arith_addi_111][arith_addi_97]; 
            double arith_mulf_114 = (memref_load_112 * memref_load_113); 
            double memref_load_115 = func_arg_4[for_iter_87][arith_addi_97]; 
            double arith_addf_116 = (memref_load_115 + arith_mulf_114); 
            func_arg_4[for_iter_87][arith_addi_97] = arith_addf_116; 
            int arith_addi_117 = (arith_muli_99 + arith_const_10); 
            double memref_load_118 = func_arg_3[arith_addi_117][for_iter_87]; 
            double memref_load_119 = func_arg_3[arith_addi_117][arith_addi_97]; 
            double arith_mulf_120 = (memref_load_118 * memref_load_119); 
            double memref_load_121 = func_arg_4[for_iter_87][arith_addi_97]; 
            double arith_addf_122 = (memref_load_121 + arith_mulf_120); 
            func_arg_4[for_iter_87][arith_addi_97] = arith_addf_122; 
          }
          double memref_load_123 = func_arg_4[for_iter_87][arith_addi_97]; 
          double arith_divf_124 = (memref_load_123 / arith_subf_84); 
          func_arg_4[for_iter_87][arith_addi_97] = arith_divf_124; 
          func_arg_4[arith_addi_97][for_iter_87] = arith_divf_124; 
          PAST_SET_SEMAPHORE(execute_token_96, PAST_TASK_FINISHED); 
        }
        async_group_92[async_group_index_93] = execute_token_96; 
        async_group_index_93++; 
        int arith_addi_125 = (for_iter_arg_95 + arith_const_18); 
        for_iter_arg_95 = arith_addi_125; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_92, async_group_index_93, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_89, PAST_TASK_FINISHED); 
    }
    async_group_85[async_group_index_86] = execute_token_89; 
    async_group_index_86++; 
    int arith_addi_126 = (for_iter_arg_88 + arith_const_18); 
    for_iter_arg_88 = arith_addi_126; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_85, async_group_index_86, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
