#pragma pocc-region-start
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = -32; 
  int arith_const_8 = 38; 
  int arith_const_9 = 32; 
  double arith_const_10 = 0.000000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 2; 
  int arith_const_13 = 1; 
  int* async_group_14; 
  int async_group_index_15 = 0; 
  int for_iter_arg_17 = arith_const_11; 
  for (int for_iter_16 = arith_const_11; for_iter_16 < arith_const_12; for_iter_16 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_18); 
    #pragma peqc async_execute
    {
      int arith_muli_19 = (for_iter_16 * arith_const_9); 
      int arith_muli_20 = (for_iter_16 * arith_const_9); 
      int arith_addi_21 = (arith_muli_20 + arith_const_9); 
      int arith_minsi_22 = min(arith_addi_21, arith_const_8); 
      int* async_group_23; 
      int async_group_index_24 = 0; 
      int for_iter_arg_26 = arith_const_11; 
      for (int for_iter_25 = arith_muli_19; for_iter_25 < arith_minsi_22; for_iter_25 += arith_const_13) {
        PAST_NEW_SEMAPHORE(execute_token_27); 
        #pragma peqc async_execute
        {
          func_arg_5[for_iter_25] = arith_const_10; 
          PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
        }
        async_group_23[async_group_index_24] = execute_token_27; 
        async_group_index_24++; 
        int arith_addi_28 = (for_iter_arg_26 + arith_const_13); 
        for_iter_arg_26 = arith_addi_28; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
    }
    async_group_14[async_group_index_15] = execute_token_18; 
    async_group_index_15++; 
    int arith_addi_29 = (for_iter_arg_17 + arith_const_13); 
    for_iter_arg_17 = arith_addi_29; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  int* async_group_30; 
  int async_group_index_31 = 0; 
  int for_iter_arg_33 = arith_const_11; 
  for (int for_iter_32 = arith_const_11; for_iter_32 < arith_const_12; for_iter_32 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_34); 
    #pragma peqc async_execute
    {
      for (int for_iter_35 = arith_const_11; for_iter_35 < arith_const_12; for_iter_35 += arith_const_13) {
        int arith_muli_36 = (for_iter_32 * arith_const_9); 
        int arith_muli_37 = (for_iter_32 * arith_const_9); 
        int arith_addi_38 = (arith_muli_37 + arith_const_9); 
        int arith_minsi_39 = min(arith_addi_38, arith_const_8); 
        int* async_group_40; 
        int async_group_index_41 = 0; 
        int for_iter_arg_43 = arith_const_11; 
        for (int for_iter_42 = arith_muli_36; for_iter_42 < arith_minsi_39; for_iter_42 += arith_const_13) {
          PAST_NEW_SEMAPHORE(execute_token_44); 
          #pragma peqc async_execute
          {
            int arith_muli_45 = (for_iter_35 * arith_const_7); 
            int arith_addi_46 = (arith_muli_45 + arith_const_6); 
            int arith_minsi_47 = min(arith_addi_46, arith_const_9); 
            for (int for_iter_48 = arith_const_11; for_iter_48 < arith_minsi_47; for_iter_48 += arith_const_13) {
              int arith_muli_49 = (for_iter_35 * arith_const_9); 
              int arith_addi_50 = (arith_muli_49 + for_iter_48); 
              double memref_load_51 = func_arg_5[for_iter_42]; 
              double memref_load_52 = func_arg_2[for_iter_42][arith_addi_50]; 
              double memref_load_53 = func_arg_3[arith_addi_50]; 
              double arith_mulf_54 = (memref_load_52 * memref_load_53); 
              double arith_addf_55 = (memref_load_51 + arith_mulf_54); 
              func_arg_5[for_iter_42] = arith_addf_55; 
            }
            PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
          }
          async_group_40[async_group_index_41] = execute_token_44; 
          async_group_index_41++; 
          int arith_addi_56 = (for_iter_arg_43 + arith_const_13); 
          for_iter_arg_43 = arith_addi_56; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_40, async_group_index_41, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_34, PAST_TASK_FINISHED); 
    }
    async_group_30[async_group_index_31] = execute_token_34; 
    async_group_index_31++; 
    int arith_addi_57 = (for_iter_arg_33 + arith_const_13); 
    for_iter_arg_33 = arith_addi_57; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_30, async_group_index_31, PAST_TASK_FINISHED); 
  int* async_group_58; 
  int async_group_index_59 = 0; 
  int for_iter_arg_61 = arith_const_11; 
  for (int for_iter_60 = arith_const_11; for_iter_60 < arith_const_12; for_iter_60 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_62); 
    #pragma peqc async_execute
    {
      int arith_muli_63 = (for_iter_60 * arith_const_9); 
      int arith_muli_64 = (for_iter_60 * arith_const_9); 
      int arith_addi_65 = (arith_muli_64 + arith_const_9); 
      int arith_minsi_66 = min(arith_addi_65, arith_const_6); 
      int* async_group_67; 
      int async_group_index_68 = 0; 
      int for_iter_arg_70 = arith_const_11; 
      for (int for_iter_69 = arith_muli_63; for_iter_69 < arith_minsi_66; for_iter_69 += arith_const_13) {
        PAST_NEW_SEMAPHORE(execute_token_71); 
        #pragma peqc async_execute
        {
          func_arg_4[for_iter_69] = arith_const_10; 
          PAST_SET_SEMAPHORE(execute_token_71, PAST_TASK_FINISHED); 
        }
        async_group_67[async_group_index_68] = execute_token_71; 
        async_group_index_68++; 
        int arith_addi_72 = (for_iter_arg_70 + arith_const_13); 
        for_iter_arg_70 = arith_addi_72; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_67, async_group_index_68, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_62, PAST_TASK_FINISHED); 
    }
    async_group_58[async_group_index_59] = execute_token_62; 
    async_group_index_59++; 
    int arith_addi_73 = (for_iter_arg_61 + arith_const_13); 
    for_iter_arg_61 = arith_addi_73; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_58, async_group_index_59, PAST_TASK_FINISHED); 
  int* async_group_74; 
  int async_group_index_75 = 0; 
  int for_iter_arg_77 = arith_const_11; 
  for (int for_iter_76 = arith_const_11; for_iter_76 < arith_const_12; for_iter_76 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_78); 
    #pragma peqc async_execute
    {
      for (int for_iter_79 = arith_const_11; for_iter_79 < arith_const_12; for_iter_79 += arith_const_13) {
        int arith_muli_80 = (for_iter_79 * arith_const_7); 
        int arith_addi_81 = (arith_muli_80 + arith_const_8); 
        int arith_minsi_82 = min(arith_addi_81, arith_const_9); 
        for (int for_iter_83 = arith_const_11; for_iter_83 < arith_minsi_82; for_iter_83 += arith_const_13) {
          int arith_muli_84 = (for_iter_79 * arith_const_9); 
          int arith_addi_85 = (arith_muli_84 + for_iter_83); 
          int arith_muli_86 = (for_iter_76 * arith_const_9); 
          int arith_muli_87 = (for_iter_76 * arith_const_9); 
          int arith_addi_88 = (arith_muli_87 + arith_const_9); 
          int arith_minsi_89 = min(arith_addi_88, arith_const_6); 
          int* async_group_90; 
          int async_group_index_91 = 0; 
          int for_iter_arg_93 = arith_const_11; 
          for (int for_iter_92 = arith_muli_86; for_iter_92 < arith_minsi_89; for_iter_92 += arith_const_13) {
            PAST_NEW_SEMAPHORE(execute_token_94); 
            #pragma peqc async_execute
            {
              double memref_load_95 = func_arg_4[for_iter_92]; 
              double memref_load_96 = func_arg_2[arith_addi_85][for_iter_92]; 
              double memref_load_97 = func_arg_5[arith_addi_85]; 
              double arith_mulf_98 = (memref_load_96 * memref_load_97); 
              double arith_addf_99 = (memref_load_95 + arith_mulf_98); 
              func_arg_4[for_iter_92] = arith_addf_99; 
              PAST_SET_SEMAPHORE(execute_token_94, PAST_TASK_FINISHED); 
            }
            async_group_90[async_group_index_91] = execute_token_94; 
            async_group_index_91++; 
            int arith_addi_100 = (for_iter_arg_93 + arith_const_13); 
            for_iter_arg_93 = arith_addi_100; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_90, async_group_index_91, PAST_TASK_FINISHED); 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_78, PAST_TASK_FINISHED); 
    }
    async_group_74[async_group_index_75] = execute_token_78; 
    async_group_index_75++; 
    int arith_addi_101 = (for_iter_arg_77 + arith_const_13); 
    for_iter_arg_77 = arith_addi_101; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_74, async_group_index_75, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
