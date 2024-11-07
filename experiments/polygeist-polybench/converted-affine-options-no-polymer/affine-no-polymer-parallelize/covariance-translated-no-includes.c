#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 32; 
  double arith_const_7 = 1.000000; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 28; 
  int arith_const_11 = 1; 
  int* async_group_12; 
  int async_group_index_13 = 0; 
  int for_iter_arg_15 = arith_const_9; 
  for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_10; for_iter_14 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_16); 
    #pragma peqc async_execute
    {
      func_arg_5[for_iter_14] = arith_const_8; 
      for (int for_iter_17 = arith_const_9; for_iter_17 < arith_const_6; for_iter_17 += arith_const_11) {
        double memref_load_18 = func_arg_3[for_iter_17][for_iter_14]; 
        double memref_load_19 = func_arg_5[for_iter_14]; 
        double arith_addf_20 = (memref_load_19 + memref_load_18); 
        func_arg_5[for_iter_14] = arith_addf_20; 
      }
      double memref_load_21 = func_arg_5[for_iter_14]; 
      double arith_divf_22 = (memref_load_21 / func_arg_2); 
      func_arg_5[for_iter_14] = arith_divf_22; 
      PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
    }
    async_group_12[async_group_index_13] = execute_token_16; 
    async_group_index_13++; 
    int arith_addi_23 = (for_iter_arg_15 + arith_const_11); 
    for_iter_arg_15 = arith_addi_23; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_9; 
  for (int for_iter_26 = arith_const_9; for_iter_26 < arith_const_6; for_iter_26 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      for (int for_iter_29 = arith_const_9; for_iter_29 < arith_const_10; for_iter_29 += arith_const_11) {
        double memref_load_30 = func_arg_5[for_iter_29]; 
        double memref_load_31 = func_arg_3[for_iter_26][for_iter_29]; 
        double arith_subf_32 = (memref_load_31 - memref_load_30); 
        func_arg_3[for_iter_26][for_iter_29] = arith_subf_32; 
      }
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_33 = (for_iter_arg_27 + arith_const_11); 
    for_iter_arg_27 = arith_addi_33; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  double arith_subf_34 = (func_arg_2 - arith_const_7); 
  int* async_group_35; 
  int async_group_index_36 = 0; 
  int for_iter_arg_38 = arith_const_9; 
  for (int for_iter_37 = arith_const_9; for_iter_37 < arith_const_10; for_iter_37 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_39); 
    #pragma peqc async_execute
    {
      for (int for_iter_40 = for_iter_37; for_iter_40 < arith_const_10; for_iter_40 += arith_const_11) {
        func_arg_4[for_iter_37][for_iter_40] = arith_const_8; 
        for (int for_iter_41 = arith_const_9; for_iter_41 < arith_const_6; for_iter_41 += arith_const_11) {
          double memref_load_42 = func_arg_3[for_iter_41][for_iter_37]; 
          double memref_load_43 = func_arg_3[for_iter_41][for_iter_40]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double memref_load_45 = func_arg_4[for_iter_37][for_iter_40]; 
          double arith_addf_46 = (memref_load_45 + arith_mulf_44); 
          func_arg_4[for_iter_37][for_iter_40] = arith_addf_46; 
        }
        double memref_load_47 = func_arg_4[for_iter_37][for_iter_40]; 
        double arith_divf_48 = (memref_load_47 / arith_subf_34); 
        func_arg_4[for_iter_37][for_iter_40] = arith_divf_48; 
        func_arg_4[for_iter_40][for_iter_37] = arith_divf_48; 
      }
      PAST_SET_SEMAPHORE(execute_token_39, PAST_TASK_FINISHED); 
    }
    async_group_35[async_group_index_36] = execute_token_39; 
    async_group_index_36++; 
    int arith_addi_49 = (for_iter_arg_38 + arith_const_11); 
    for_iter_arg_38 = arith_addi_49; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_35, async_group_index_36, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
