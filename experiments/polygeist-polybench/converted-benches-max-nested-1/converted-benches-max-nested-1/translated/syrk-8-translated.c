#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = 0; 
  int arith_const_8 = 30; 
  int arith_const_9 = 1; 
  int* async_group_10; 
  int async_group_index_11 = 0; 
  int for_iter_arg_13 = arith_const_7; 
  for (int for_iter_12 = arith_const_7; for_iter_12 < arith_const_8; for_iter_12 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_14); 
    #pragma peqc async_execute
    {
      int arith_addi_15 = (for_iter_12 + arith_const_9); 
      for (int for_iter_16 = arith_const_7; for_iter_16 < arith_addi_15; for_iter_16 += arith_const_9) {
        double memref_load_17 = func_arg_4[for_iter_12][for_iter_16]; 
        double arith_mulf_18 = (memref_load_17 * func_arg_3); 
        func_arg_4[for_iter_12][for_iter_16] = arith_mulf_18; 
      }
      PAST_SET_SEMAPHORE(execute_token_14, PAST_TASK_FINISHED); 
    }
    async_group_10[async_group_index_11] = execute_token_14; 
    async_group_index_11++; 
    int arith_addi_19 = (for_iter_arg_13 + arith_const_9); 
    for_iter_arg_13 = arith_addi_19; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_10, async_group_index_11, PAST_TASK_FINISHED); 
  int* async_group_20; 
  int async_group_index_21 = 0; 
  int for_iter_arg_23 = arith_const_7; 
  for (int for_iter_22 = arith_const_7; for_iter_22 < arith_const_8; for_iter_22 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_24); 
    #pragma peqc async_execute
    {
      int arith_addi_25 = (for_iter_22 + arith_const_9); 
      for (int for_iter_26 = arith_const_7; for_iter_26 < arith_addi_25; for_iter_26 += arith_const_9) {
        for (int for_iter_27 = arith_const_7; for_iter_27 < arith_const_6; for_iter_27 += arith_const_9) {
          double memref_load_28 = func_arg_4[for_iter_22][for_iter_26]; 
          double memref_load_29 = func_arg_5[for_iter_22][for_iter_27]; 
          double arith_mulf_30 = (func_arg_2 * memref_load_29); 
          double memref_load_31 = func_arg_5[for_iter_26][for_iter_27]; 
          double arith_mulf_32 = (arith_mulf_30 * memref_load_31); 
          double arith_addf_33 = (memref_load_28 + arith_mulf_32); 
          func_arg_4[for_iter_22][for_iter_26] = arith_addf_33; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_24, PAST_TASK_FINISHED); 
    }
    async_group_20[async_group_index_21] = execute_token_24; 
    async_group_index_21++; 
    int arith_addi_34 = (for_iter_arg_23 + arith_const_9); 
    for_iter_arg_23 = arith_addi_34; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_20, async_group_index_21, PAST_TASK_FINISHED); 
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
