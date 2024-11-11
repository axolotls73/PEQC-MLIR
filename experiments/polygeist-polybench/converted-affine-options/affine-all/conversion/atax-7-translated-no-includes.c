#pragma pocc-region-start
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 32; 
  int arith_const_8 = 38; 
  int arith_const_9 = -32; 
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
      int arith_addi_20 = (arith_muli_19 + arith_const_8); 
      int arith_minsi_21 = min(arith_addi_20, arith_const_7); 
      for (int for_iter_22 = arith_const_11; for_iter_22 < arith_minsi_21; for_iter_22 += arith_const_13) {
        int arith_muli_23 = (for_iter_16 * arith_const_7); 
        int arith_addi_24 = (arith_muli_23 + for_iter_22); 
        func_arg_5[arith_addi_24] = arith_const_10; 
      }
      PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
    }
    async_group_14[async_group_index_15] = execute_token_18; 
    async_group_index_15++; 
    int arith_addi_25 = (for_iter_arg_17 + arith_const_13); 
    for_iter_arg_17 = arith_addi_25; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  int* async_group_26; 
  int async_group_index_27 = 0; 
  int for_iter_arg_29 = arith_const_11; 
  for (int for_iter_28 = arith_const_11; for_iter_28 < arith_const_12; for_iter_28 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_30); 
    #pragma peqc async_execute
    {
      for (int for_iter_31 = arith_const_11; for_iter_31 < arith_const_12; for_iter_31 += arith_const_13) {
        int arith_muli_32 = (for_iter_28 * arith_const_9); 
        int arith_addi_33 = (arith_muli_32 + arith_const_8); 
        int arith_minsi_34 = min(arith_addi_33, arith_const_7); 
        for (int for_iter_35 = arith_const_11; for_iter_35 < arith_minsi_34; for_iter_35 += arith_const_13) {
          int arith_muli_36 = (for_iter_28 * arith_const_7); 
          int arith_addi_37 = (arith_muli_36 + for_iter_35); 
          int arith_muli_38 = (for_iter_31 * arith_const_9); 
          int arith_addi_39 = (arith_muli_38 + arith_const_6); 
          int arith_minsi_40 = min(arith_addi_39, arith_const_7); 
          for (int for_iter_41 = arith_const_11; for_iter_41 < arith_minsi_40; for_iter_41 += arith_const_13) {
            int arith_muli_42 = (for_iter_31 * arith_const_7); 
            int arith_addi_43 = (arith_muli_42 + for_iter_41); 
            double memref_load_44 = func_arg_5[arith_addi_37]; 
            double memref_load_45 = func_arg_2[arith_addi_37][arith_addi_43]; 
            double memref_load_46 = func_arg_3[arith_addi_43]; 
            double arith_mulf_47 = (memref_load_45 * memref_load_46); 
            double arith_addf_48 = (memref_load_44 + arith_mulf_47); 
            func_arg_5[arith_addi_37] = arith_addf_48; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
    }
    async_group_26[async_group_index_27] = execute_token_30; 
    async_group_index_27++; 
    int arith_addi_49 = (for_iter_arg_29 + arith_const_13); 
    for_iter_arg_29 = arith_addi_49; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
  int* async_group_50; 
  int async_group_index_51 = 0; 
  int for_iter_arg_53 = arith_const_11; 
  for (int for_iter_52 = arith_const_11; for_iter_52 < arith_const_12; for_iter_52 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_54); 
    #pragma peqc async_execute
    {
      int arith_muli_55 = (for_iter_52 * arith_const_9); 
      int arith_addi_56 = (arith_muli_55 + arith_const_6); 
      int arith_minsi_57 = min(arith_addi_56, arith_const_7); 
      for (int for_iter_58 = arith_const_11; for_iter_58 < arith_minsi_57; for_iter_58 += arith_const_13) {
        int arith_muli_59 = (for_iter_52 * arith_const_7); 
        int arith_addi_60 = (arith_muli_59 + for_iter_58); 
        func_arg_4[arith_addi_60] = arith_const_10; 
      }
      PAST_SET_SEMAPHORE(execute_token_54, PAST_TASK_FINISHED); 
    }
    async_group_50[async_group_index_51] = execute_token_54; 
    async_group_index_51++; 
    int arith_addi_61 = (for_iter_arg_53 + arith_const_13); 
    for_iter_arg_53 = arith_addi_61; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_50, async_group_index_51, PAST_TASK_FINISHED); 
  int* async_group_62; 
  int async_group_index_63 = 0; 
  int for_iter_arg_65 = arith_const_11; 
  for (int for_iter_64 = arith_const_11; for_iter_64 < arith_const_12; for_iter_64 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_66); 
    #pragma peqc async_execute
    {
      for (int for_iter_67 = arith_const_11; for_iter_67 < arith_const_12; for_iter_67 += arith_const_13) {
        int arith_muli_68 = (for_iter_67 * arith_const_9); 
        int arith_addi_69 = (arith_muli_68 + arith_const_8); 
        int arith_minsi_70 = min(arith_addi_69, arith_const_7); 
        for (int for_iter_71 = arith_const_11; for_iter_71 < arith_minsi_70; for_iter_71 += arith_const_13) {
          int arith_muli_72 = (for_iter_67 * arith_const_7); 
          int arith_addi_73 = (arith_muli_72 + for_iter_71); 
          double memref_load_74 = func_arg_5[arith_addi_73]; 
          int arith_muli_75 = (for_iter_64 * arith_const_9); 
          int arith_addi_76 = (arith_muli_75 + arith_const_6); 
          int arith_minsi_77 = min(arith_addi_76, arith_const_7); 
          for (int for_iter_78 = arith_const_11; for_iter_78 < arith_minsi_77; for_iter_78 += arith_const_13) {
            int arith_muli_79 = (for_iter_64 * arith_const_7); 
            int arith_addi_80 = (arith_muli_79 + for_iter_78); 
            double memref_load_81 = func_arg_4[arith_addi_80]; 
            double memref_load_82 = func_arg_2[arith_addi_73][arith_addi_80]; 
            double arith_mulf_83 = (memref_load_82 * memref_load_74); 
            double arith_addf_84 = (memref_load_81 + arith_mulf_83); 
            func_arg_4[arith_addi_80] = arith_addf_84; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_66, PAST_TASK_FINISHED); 
    }
    async_group_62[async_group_index_63] = execute_token_66; 
    async_group_index_63++; 
    int arith_addi_85 = (for_iter_arg_65 + arith_const_13); 
    for_iter_arg_65 = arith_addi_85; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_62, async_group_index_63, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
