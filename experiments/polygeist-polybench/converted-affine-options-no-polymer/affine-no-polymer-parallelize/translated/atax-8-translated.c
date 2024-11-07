#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  double arith_const_7 = 0.000000; 
  int arith_const_8 = 0; 
  int arith_const_9 = 42; 
  int arith_const_10 = 1; 
  int* async_group_11; 
  int async_group_index_12 = 0; 
  int for_iter_arg_14 = arith_const_8; 
  for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_9; for_iter_13 += arith_const_10) {
    PAST_NEW_SEMAPHORE(execute_token_15); 
    #pragma peqc async_execute
    {
      func_arg_4[for_iter_13] = arith_const_7; 
      PAST_SET_SEMAPHORE(execute_token_15, PAST_TASK_FINISHED); 
    }
    async_group_11[async_group_index_12] = execute_token_15; 
    async_group_index_12++; 
    int arith_addi_16 = (for_iter_arg_14 + arith_const_10); 
    for_iter_arg_14 = arith_addi_16; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  for (int for_iter_17 = arith_const_8; for_iter_17 < arith_const_6; for_iter_17 += arith_const_10) {
    func_arg_5[for_iter_17] = arith_const_7; 
    for (int for_iter_18 = arith_const_8; for_iter_18 < arith_const_9; for_iter_18 += arith_const_10) {
      double memref_load_19 = func_arg_5[for_iter_17]; 
      double memref_load_20 = func_arg_2[for_iter_17][for_iter_18]; 
      double memref_load_21 = func_arg_3[for_iter_18]; 
      double arith_mulf_22 = (memref_load_20 * memref_load_21); 
      double arith_addf_23 = (memref_load_19 + arith_mulf_22); 
      func_arg_5[for_iter_17] = arith_addf_23; 
    }
    int* async_group_24; 
    int async_group_index_25 = 0; 
    int for_iter_arg_27 = arith_const_8; 
    for (int for_iter_26 = arith_const_8; for_iter_26 < arith_const_9; for_iter_26 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_28); 
      #pragma peqc async_execute
      {
        double memref_load_29 = func_arg_4[for_iter_26]; 
        double memref_load_30 = func_arg_2[for_iter_17][for_iter_26]; 
        double memref_load_31 = func_arg_5[for_iter_17]; 
        double arith_mulf_32 = (memref_load_30 * memref_load_31); 
        double arith_addf_33 = (memref_load_29 + arith_mulf_32); 
        func_arg_4[for_iter_26] = arith_addf_33; 
        PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
      }
      async_group_24[async_group_index_25] = execute_token_28; 
      async_group_index_25++; 
      int arith_addi_34 = (for_iter_arg_27 + arith_const_10); 
      for_iter_arg_27 = arith_addi_34; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double* A;
  double* x;
  double* y;
  double* tmp;

#pragma peqc async_execute
{
  kernel_atax(m, n, A, x, y, tmp);
}
}

#pragma pocc-region-end
