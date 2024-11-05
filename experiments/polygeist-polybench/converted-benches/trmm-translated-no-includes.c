#pragma pocc-region-start
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 30; 
  int arith_const_6 = 20; 
  int arith_const_7 = 0; 
  int arith_const_8 = 19; 
  int arith_const_9 = 1; 
  for (int for_iter_10 = arith_const_7; for_iter_10 < arith_const_8; for_iter_10 += arith_const_9) {
    int arith_addi_11 = (for_iter_10 + arith_const_9); 
    for (int for_iter_12 = arith_addi_11; for_iter_12 < arith_const_6; for_iter_12 += arith_const_9) {
      int* async_group_13; 
      int async_group_index_14 = 0; 
      int for_iter_arg_16 = arith_const_7; 
      for (int for_iter_15 = arith_const_7; for_iter_15 < arith_const_5; for_iter_15 += arith_const_9) {
        PAST_NEW_SEMAPHORE(execute_token_17); 
        #pragma peqc async_execute
        {
          double memref_load_18 = func_arg_4[for_iter_10][for_iter_15]; 
          double memref_load_19 = func_arg_3[for_iter_12][for_iter_10]; 
          double memref_load_20 = func_arg_4[for_iter_12][for_iter_15]; 
          double arith_mulf_21 = (memref_load_19 * memref_load_20); 
          double arith_addf_22 = (memref_load_18 + arith_mulf_21); 
          func_arg_4[for_iter_10][for_iter_15] = arith_addf_22; 
          PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
        }
        async_group_13[async_group_index_14] = execute_token_17; 
        async_group_index_14++; 
        int arith_addi_23 = (for_iter_arg_16 + arith_const_9); 
        for_iter_arg_16 = arith_addi_23; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
    }
  }
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_7; 
  for (int for_iter_26 = arith_const_7; for_iter_26 < arith_const_6; for_iter_26 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      int* async_group_29; 
      int async_group_index_30 = 0; 
      int for_iter_arg_32 = arith_const_7; 
      for (int for_iter_31 = arith_const_7; for_iter_31 < arith_const_5; for_iter_31 += arith_const_9) {
        PAST_NEW_SEMAPHORE(execute_token_33); 
        #pragma peqc async_execute
        {
          double memref_load_34 = func_arg_4[for_iter_26][for_iter_31]; 
          double arith_mulf_35 = (func_arg_2 * memref_load_34); 
          func_arg_4[for_iter_26][for_iter_31] = arith_mulf_35; 
          PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
        }
        async_group_29[async_group_index_30] = execute_token_33; 
        async_group_index_30++; 
        int arith_addi_36 = (for_iter_arg_32 + arith_const_9); 
        for_iter_arg_32 = arith_addi_36; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_37 = (for_iter_arg_27 + arith_const_9); 
    for_iter_arg_27 = arith_addi_37; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
