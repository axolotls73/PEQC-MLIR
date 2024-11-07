#pragma pocc-region-start
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 38; 
  int arith_const_8 = -32; 
  int arith_const_9 = 42; 
  int arith_const_10 = 32; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 2; 
  int arith_const_14 = 1; 
  int* async_group_15; 
  int async_group_index_16 = 0; 
  int for_iter_arg_18 = arith_const_12; 
  for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_13; for_iter_17 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_19); 
    #pragma peqc async_execute
    {
      int arith_muli_20 = (for_iter_17 * arith_const_10); 
      int arith_muli_21 = (for_iter_17 * arith_const_10); 
      int arith_addi_22 = (arith_muli_21 + arith_const_10); 
      int arith_minsi_23 = min(arith_addi_22, arith_const_9); 
      int* async_group_24; 
      int async_group_index_25 = 0; 
      int for_iter_arg_27 = arith_const_12; 
      for (int for_iter_26 = arith_muli_20; for_iter_26 < arith_minsi_23; for_iter_26 += arith_const_14) {
        PAST_NEW_SEMAPHORE(execute_token_28); 
        #pragma peqc async_execute
        {
          func_arg_4[for_iter_26] = arith_const_11; 
          PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
        }
        async_group_24[async_group_index_25] = execute_token_28; 
        async_group_index_25++; 
        int arith_addi_29 = (for_iter_arg_27 + arith_const_14); 
        for_iter_arg_27 = arith_addi_29; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
    }
    async_group_15[async_group_index_16] = execute_token_19; 
    async_group_index_16++; 
    int arith_addi_30 = (for_iter_arg_18 + arith_const_14); 
    for_iter_arg_18 = arith_addi_30; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  int* async_group_31; 
  int async_group_index_32 = 0; 
  int for_iter_arg_34 = arith_const_12; 
  for (int for_iter_33 = arith_const_12; for_iter_33 < arith_const_13; for_iter_33 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_35); 
    #pragma peqc async_execute
    {
      for (int for_iter_36 = arith_const_12; for_iter_36 < arith_const_13; for_iter_36 += arith_const_14) {
        int arith_muli_37 = (for_iter_33 * arith_const_10); 
        int arith_muli_38 = (for_iter_33 * arith_const_10); 
        int arith_addi_39 = (arith_muli_38 + arith_const_10); 
        int arith_minsi_40 = min(arith_addi_39, arith_const_9); 
        int* async_group_41; 
        int async_group_index_42 = 0; 
        int for_iter_arg_44 = arith_const_12; 
        for (int for_iter_43 = arith_muli_37; for_iter_43 < arith_minsi_40; for_iter_43 += arith_const_14) {
          PAST_NEW_SEMAPHORE(execute_token_45); 
          #pragma peqc async_execute
          {
            int arith_muli_46 = (for_iter_36 * arith_const_8); 
            int arith_addi_47 = (arith_muli_46 + arith_const_7); 
            int arith_minsi_48 = min(arith_addi_47, arith_const_10); 
            for (int for_iter_49 = arith_const_12; for_iter_49 < arith_minsi_48; for_iter_49 += arith_const_14) {
              int arith_muli_50 = (for_iter_36 * arith_const_10); 
              int arith_addi_51 = (arith_muli_50 + for_iter_49); 
              double memref_load_52 = func_arg_4[for_iter_43]; 
              double memref_load_53 = func_arg_2[for_iter_43][arith_addi_51]; 
              double memref_load_54 = func_arg_5[arith_addi_51]; 
              double arith_mulf_55 = (memref_load_53 * memref_load_54); 
              double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
              func_arg_4[for_iter_43] = arith_addf_56; 
            }
            PAST_SET_SEMAPHORE(execute_token_45, PAST_TASK_FINISHED); 
          }
          async_group_41[async_group_index_42] = execute_token_45; 
          async_group_index_42++; 
          int arith_addi_57 = (for_iter_arg_44 + arith_const_14); 
          for_iter_arg_44 = arith_addi_57; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_41, async_group_index_42, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
    }
    async_group_31[async_group_index_32] = execute_token_35; 
    async_group_index_32++; 
    int arith_addi_58 = (for_iter_arg_34 + arith_const_14); 
    for_iter_arg_34 = arith_addi_58; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
  int* async_group_59; 
  int async_group_index_60 = 0; 
  int for_iter_arg_62 = arith_const_12; 
  for (int for_iter_61 = arith_const_12; for_iter_61 < arith_const_13; for_iter_61 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_63); 
    #pragma peqc async_execute
    {
      int arith_muli_64 = (for_iter_61 * arith_const_10); 
      int arith_muli_65 = (for_iter_61 * arith_const_10); 
      int arith_addi_66 = (arith_muli_65 + arith_const_10); 
      int arith_minsi_67 = min(arith_addi_66, arith_const_7); 
      int* async_group_68; 
      int async_group_index_69 = 0; 
      int for_iter_arg_71 = arith_const_12; 
      for (int for_iter_70 = arith_muli_64; for_iter_70 < arith_minsi_67; for_iter_70 += arith_const_14) {
        PAST_NEW_SEMAPHORE(execute_token_72); 
        #pragma peqc async_execute
        {
          func_arg_3[for_iter_70] = arith_const_11; 
          PAST_SET_SEMAPHORE(execute_token_72, PAST_TASK_FINISHED); 
        }
        async_group_68[async_group_index_69] = execute_token_72; 
        async_group_index_69++; 
        int arith_addi_73 = (for_iter_arg_71 + arith_const_14); 
        for_iter_arg_71 = arith_addi_73; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_68, async_group_index_69, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_63, PAST_TASK_FINISHED); 
    }
    async_group_59[async_group_index_60] = execute_token_63; 
    async_group_index_60++; 
    int arith_addi_74 = (for_iter_arg_62 + arith_const_14); 
    for_iter_arg_62 = arith_addi_74; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_59, async_group_index_60, PAST_TASK_FINISHED); 
  int* async_group_75; 
  int async_group_index_76 = 0; 
  int for_iter_arg_78 = arith_const_12; 
  for (int for_iter_77 = arith_const_12; for_iter_77 < arith_const_13; for_iter_77 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_79); 
    #pragma peqc async_execute
    {
      for (int for_iter_80 = arith_const_12; for_iter_80 < arith_const_13; for_iter_80 += arith_const_14) {
        int arith_muli_81 = (for_iter_80 * arith_const_8); 
        int arith_addi_82 = (arith_muli_81 + arith_const_9); 
        int arith_minsi_83 = min(arith_addi_82, arith_const_10); 
        for (int for_iter_84 = arith_const_12; for_iter_84 < arith_minsi_83; for_iter_84 += arith_const_14) {
          int arith_muli_85 = (for_iter_80 * arith_const_10); 
          int arith_addi_86 = (arith_muli_85 + for_iter_84); 
          int arith_muli_87 = (for_iter_77 * arith_const_10); 
          int arith_muli_88 = (for_iter_77 * arith_const_10); 
          int arith_addi_89 = (arith_muli_88 + arith_const_10); 
          int arith_minsi_90 = min(arith_addi_89, arith_const_7); 
          int* async_group_91; 
          int async_group_index_92 = 0; 
          int for_iter_arg_94 = arith_const_12; 
          for (int for_iter_93 = arith_muli_87; for_iter_93 < arith_minsi_90; for_iter_93 += arith_const_14) {
            PAST_NEW_SEMAPHORE(execute_token_95); 
            #pragma peqc async_execute
            {
              double memref_load_96 = func_arg_3[for_iter_93]; 
              double memref_load_97 = func_arg_6[arith_addi_86]; 
              double memref_load_98 = func_arg_2[arith_addi_86][for_iter_93]; 
              double arith_mulf_99 = (memref_load_97 * memref_load_98); 
              double arith_addf_100 = (memref_load_96 + arith_mulf_99); 
              func_arg_3[for_iter_93] = arith_addf_100; 
              PAST_SET_SEMAPHORE(execute_token_95, PAST_TASK_FINISHED); 
            }
            async_group_91[async_group_index_92] = execute_token_95; 
            async_group_index_92++; 
            int arith_addi_101 = (for_iter_arg_94 + arith_const_14); 
            for_iter_arg_94 = arith_addi_101; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_91, async_group_index_92, PAST_TASK_FINISHED); 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_79, PAST_TASK_FINISHED); 
    }
    async_group_75[async_group_index_76] = execute_token_79; 
    async_group_index_76++; 
    int arith_addi_102 = (for_iter_arg_78 + arith_const_14); 
    for_iter_arg_78 = arith_addi_102; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_75, async_group_index_76, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
