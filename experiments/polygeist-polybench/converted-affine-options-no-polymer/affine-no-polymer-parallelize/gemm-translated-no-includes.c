#pragma pocc-region-start
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 25; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  int* async_group_13; 
  int async_group_index_14 = 0; 
  int for_iter_arg_16 = arith_const_10; 
  for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_11; for_iter_15 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_17); 
    #pragma peqc async_execute
    {
      for (int for_iter_18 = arith_const_10; for_iter_18 < arith_const_9; for_iter_18 += arith_const_12) {
        double memref_load_19 = func_arg_5[for_iter_15][for_iter_18]; 
        double arith_mulf_20 = (memref_load_19 * func_arg_4); 
        func_arg_5[for_iter_15][for_iter_18] = arith_mulf_20; 
      }
      for (int for_iter_21 = arith_const_10; for_iter_21 < arith_const_8; for_iter_21 += arith_const_12) {
        for (int for_iter_22 = arith_const_10; for_iter_22 < arith_const_9; for_iter_22 += arith_const_12) {
          double memref_load_23 = func_arg_6[for_iter_15][for_iter_21]; 
          double arith_mulf_24 = (func_arg_3 * memref_load_23); 
          double memref_load_25 = func_arg_7[for_iter_21][for_iter_22]; 
          double arith_mulf_26 = (arith_mulf_24 * memref_load_25); 
          double memref_load_27 = func_arg_5[for_iter_15][for_iter_22]; 
          double arith_addf_28 = (memref_load_27 + arith_mulf_26); 
          func_arg_5[for_iter_15][for_iter_22] = arith_addf_28; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
    }
    async_group_13[async_group_index_14] = execute_token_17; 
    async_group_index_14++; 
    int arith_addi_29 = (for_iter_arg_16 + arith_const_12); 
    for_iter_arg_16 = arith_addi_29; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
