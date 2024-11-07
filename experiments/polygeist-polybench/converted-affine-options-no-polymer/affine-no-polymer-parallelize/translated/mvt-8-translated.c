#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 0; 
  int arith_const_7 = 40; 
  int arith_const_8 = 1; 
  int* async_group_9; 
  int async_group_index_10 = 0; 
  int for_iter_arg_12 = arith_const_6; 
  for (int for_iter_11 = arith_const_6; for_iter_11 < arith_const_7; for_iter_11 += arith_const_8) {
    PAST_NEW_SEMAPHORE(execute_token_13); 
    #pragma peqc async_execute
    {
      for (int for_iter_14 = arith_const_6; for_iter_14 < arith_const_7; for_iter_14 += arith_const_8) {
        double memref_load_15 = func_arg_1[for_iter_11]; 
        double memref_load_16 = func_arg_5[for_iter_11][for_iter_14]; 
        double memref_load_17 = func_arg_3[for_iter_14]; 
        double arith_mulf_18 = (memref_load_16 * memref_load_17); 
        double arith_addf_19 = (memref_load_15 + arith_mulf_18); 
        func_arg_1[for_iter_11] = arith_addf_19; 
      }
      PAST_SET_SEMAPHORE(execute_token_13, PAST_TASK_FINISHED); 
    }
    async_group_9[async_group_index_10] = execute_token_13; 
    async_group_index_10++; 
    int arith_addi_20 = (for_iter_arg_12 + arith_const_8); 
    for_iter_arg_12 = arith_addi_20; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_9, async_group_index_10, PAST_TASK_FINISHED); 
  int* async_group_21; 
  int async_group_index_22 = 0; 
  int for_iter_arg_24 = arith_const_6; 
  for (int for_iter_23 = arith_const_6; for_iter_23 < arith_const_7; for_iter_23 += arith_const_8) {
    PAST_NEW_SEMAPHORE(execute_token_25); 
    #pragma peqc async_execute
    {
      for (int for_iter_26 = arith_const_6; for_iter_26 < arith_const_7; for_iter_26 += arith_const_8) {
        double memref_load_27 = func_arg_2[for_iter_23]; 
        double memref_load_28 = func_arg_5[for_iter_26][for_iter_23]; 
        double memref_load_29 = func_arg_4[for_iter_26]; 
        double arith_mulf_30 = (memref_load_28 * memref_load_29); 
        double arith_addf_31 = (memref_load_27 + arith_mulf_30); 
        func_arg_2[for_iter_23] = arith_addf_31; 
      }
      PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
    }
    async_group_21[async_group_index_22] = execute_token_25; 
    async_group_index_22++; 
    int arith_addi_32 = (for_iter_arg_24 + arith_const_8); 
    for_iter_arg_24 = arith_addi_32; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;

#pragma peqc async_execute
{
  kernel_mvt(n, x1, x2, y_1, y_2, A);
}
}

#pragma pocc-region-end
