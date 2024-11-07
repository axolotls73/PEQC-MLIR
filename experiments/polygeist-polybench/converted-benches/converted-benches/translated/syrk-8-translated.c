#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 20; 
  int arith_const_8 = 0; 
  int arith_const_9 = 30; 
  int arith_const_10 = 1; 
  int* async_group_11; 
  int async_group_index_12 = 0; 
  int for_iter_arg_14 = arith_const_8; 
  for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_9; for_iter_13 += arith_const_10) {
    PAST_NEW_SEMAPHORE(execute_token_15); 
    #pragma peqc async_execute
    {
      int arith_addi_16 = (for_iter_13 + arith_const_10); 
      int* async_group_17; 
      int async_group_index_18 = 0; 
      int for_iter_arg_20 = arith_const_8; 
      for (int for_iter_19 = arith_const_8; for_iter_19 < arith_addi_16; for_iter_19 += arith_const_10) {
        PAST_NEW_SEMAPHORE(execute_token_21); 
        #pragma peqc async_execute
        {
          double memref_load_22 = func_arg_4[for_iter_13][for_iter_19]; 
          double arith_mulf_23 = (memref_load_22 * func_arg_3); 
          func_arg_4[for_iter_13][for_iter_19] = arith_mulf_23; 
          PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
        }
        async_group_17[async_group_index_18] = execute_token_21; 
        async_group_index_18++; 
        int arith_addi_24 = (for_iter_arg_20 + arith_const_10); 
        for_iter_arg_20 = arith_addi_24; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_15, PAST_TASK_FINISHED); 
    }
    async_group_11[async_group_index_12] = execute_token_15; 
    async_group_index_12++; 
    int arith_addi_25 = (for_iter_arg_14 + arith_const_10); 
    for_iter_arg_14 = arith_addi_25; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  int* async_group_26; 
  int async_group_index_27 = 0; 
  int for_iter_arg_29 = arith_const_8; 
  for (int for_iter_28 = arith_const_8; for_iter_28 < arith_const_9; for_iter_28 += arith_const_10) {
    PAST_NEW_SEMAPHORE(execute_token_30); 
    #pragma peqc async_execute
    {
      int arith_addi_31 = (for_iter_28 + arith_const_10); 
      int* async_group_32; 
      int async_group_index_33 = 0; 
      int for_iter_arg_35 = arith_const_8; 
      for (int for_iter_34 = arith_const_8; for_iter_34 < arith_addi_31; for_iter_34 += arith_const_10) {
        PAST_NEW_SEMAPHORE(execute_token_36); 
        #pragma peqc async_execute
        {
          for (int for_iter_37 = arith_const_8; for_iter_37 < arith_const_7; for_iter_37 += arith_const_10) {
            double memref_load_38 = func_arg_4[for_iter_28][for_iter_34]; 
            double memref_load_39 = func_arg_5[for_iter_28][for_iter_37]; 
            double arith_mulf_40 = (func_arg_2 * memref_load_39); 
            double memref_load_41 = func_arg_5[for_iter_34][for_iter_37]; 
            double arith_mulf_42 = (arith_mulf_40 * memref_load_41); 
            double arith_addf_43 = (memref_load_38 + arith_mulf_42); 
            func_arg_4[for_iter_28][for_iter_34] = arith_addf_43; 
          }
          PAST_SET_SEMAPHORE(execute_token_36, PAST_TASK_FINISHED); 
        }
        async_group_32[async_group_index_33] = execute_token_36; 
        async_group_index_33++; 
        int arith_addi_44 = (for_iter_arg_35 + arith_const_10); 
        for_iter_arg_35 = arith_addi_44; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_32, async_group_index_33, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
    }
    async_group_26[async_group_index_27] = execute_token_30; 
    async_group_index_27++; 
    int arith_addi_45 = (for_iter_arg_29 + arith_const_10); 
    for_iter_arg_29 = arith_addi_45; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;

#pragma peqc async_execute
{
  kernel_syrk(n, m, alpha, beta, C, A);
}
}

#pragma pocc-region-end
