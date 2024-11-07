#pragma pocc-region-start
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 38; 
  int arith_const_8 = 32; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 2; 
  int arith_const_12 = 1; 
  int* async_group_13; 
  int async_group_index_14 = 0; 
  int for_iter_arg_16 = arith_const_10; 
  for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_11; for_iter_15 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_17); 
    #pragma peqc async_execute
    {
      int arith_muli_18 = (for_iter_15 * arith_const_8); 
      int arith_muli_19 = (for_iter_15 * arith_const_8); 
      int arith_addi_20 = (arith_muli_19 + arith_const_8); 
      int arith_minsi_21 = min(arith_addi_20, arith_const_7); 
      for (int for_iter_22 = arith_muli_18; for_iter_22 < arith_minsi_21; for_iter_22 += arith_const_12) {
        func_arg_5[for_iter_22] = arith_const_9; 
      }
      PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
    }
    async_group_13[async_group_index_14] = execute_token_17; 
    async_group_index_14++; 
    int arith_addi_23 = (for_iter_arg_16 + arith_const_12); 
    for_iter_arg_16 = arith_addi_23; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_10; 
  for (int for_iter_26 = arith_const_10; for_iter_26 < arith_const_11; for_iter_26 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      for (int for_iter_29 = arith_const_10; for_iter_29 < arith_const_11; for_iter_29 += arith_const_12) {
        int arith_muli_30 = (for_iter_26 * arith_const_8); 
        int arith_muli_31 = (for_iter_26 * arith_const_8); 
        int arith_addi_32 = (arith_muli_31 + arith_const_8); 
        int arith_minsi_33 = min(arith_addi_32, arith_const_7); 
        for (int for_iter_34 = arith_muli_30; for_iter_34 < arith_minsi_33; for_iter_34 += arith_const_12) {
          int arith_muli_35 = (for_iter_29 * arith_const_8); 
          int arith_muli_36 = (for_iter_29 * arith_const_8); 
          int arith_addi_37 = (arith_muli_36 + arith_const_8); 
          int arith_minsi_38 = min(arith_addi_37, arith_const_6); 
          for (int for_iter_39 = arith_muli_35; for_iter_39 < arith_minsi_38; for_iter_39 += arith_const_12) {
            double memref_load_40 = func_arg_5[for_iter_34]; 
            double memref_load_41 = func_arg_2[for_iter_34][for_iter_39]; 
            double memref_load_42 = func_arg_3[for_iter_39]; 
            double arith_mulf_43 = (memref_load_41 * memref_load_42); 
            double arith_addf_44 = (memref_load_40 + arith_mulf_43); 
            func_arg_5[for_iter_34] = arith_addf_44; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_45 = (for_iter_arg_27 + arith_const_12); 
    for_iter_arg_27 = arith_addi_45; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  int* async_group_46; 
  int async_group_index_47 = 0; 
  int for_iter_arg_49 = arith_const_10; 
  for (int for_iter_48 = arith_const_10; for_iter_48 < arith_const_11; for_iter_48 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_50); 
    #pragma peqc async_execute
    {
      int arith_muli_51 = (for_iter_48 * arith_const_8); 
      int arith_muli_52 = (for_iter_48 * arith_const_8); 
      int arith_addi_53 = (arith_muli_52 + arith_const_8); 
      int arith_minsi_54 = min(arith_addi_53, arith_const_6); 
      for (int for_iter_55 = arith_muli_51; for_iter_55 < arith_minsi_54; for_iter_55 += arith_const_12) {
        func_arg_4[for_iter_55] = arith_const_9; 
      }
      PAST_SET_SEMAPHORE(execute_token_50, PAST_TASK_FINISHED); 
    }
    async_group_46[async_group_index_47] = execute_token_50; 
    async_group_index_47++; 
    int arith_addi_56 = (for_iter_arg_49 + arith_const_12); 
    for_iter_arg_49 = arith_addi_56; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_46, async_group_index_47, PAST_TASK_FINISHED); 
  int* async_group_57; 
  int async_group_index_58 = 0; 
  int for_iter_arg_60 = arith_const_10; 
  for (int for_iter_59 = arith_const_10; for_iter_59 < arith_const_11; for_iter_59 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_61); 
    #pragma peqc async_execute
    {
      for (int for_iter_62 = arith_const_10; for_iter_62 < arith_const_11; for_iter_62 += arith_const_12) {
        int arith_muli_63 = (for_iter_62 * arith_const_8); 
        int arith_muli_64 = (for_iter_62 * arith_const_8); 
        int arith_addi_65 = (arith_muli_64 + arith_const_8); 
        int arith_minsi_66 = min(arith_addi_65, arith_const_7); 
        for (int for_iter_67 = arith_muli_63; for_iter_67 < arith_minsi_66; for_iter_67 += arith_const_12) {
          int arith_muli_68 = (for_iter_59 * arith_const_8); 
          int arith_muli_69 = (for_iter_59 * arith_const_8); 
          int arith_addi_70 = (arith_muli_69 + arith_const_8); 
          int arith_minsi_71 = min(arith_addi_70, arith_const_6); 
          for (int for_iter_72 = arith_muli_68; for_iter_72 < arith_minsi_71; for_iter_72 += arith_const_12) {
            double memref_load_73 = func_arg_4[for_iter_72]; 
            double memref_load_74 = func_arg_2[for_iter_67][for_iter_72]; 
            double memref_load_75 = func_arg_5[for_iter_67]; 
            double arith_mulf_76 = (memref_load_74 * memref_load_75); 
            double arith_addf_77 = (memref_load_73 + arith_mulf_76); 
            func_arg_4[for_iter_72] = arith_addf_77; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_61, PAST_TASK_FINISHED); 
    }
    async_group_57[async_group_index_58] = execute_token_61; 
    async_group_index_58++; 
    int arith_addi_78 = (for_iter_arg_60 + arith_const_12); 
    for_iter_arg_60 = arith_addi_78; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_57, async_group_index_58, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
