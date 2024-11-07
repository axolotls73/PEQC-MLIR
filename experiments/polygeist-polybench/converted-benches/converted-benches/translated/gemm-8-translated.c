#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
      int* async_group_18; 
      int async_group_index_19 = 0; 
      int for_iter_arg_21 = arith_const_10; 
      for (int for_iter_20 = arith_const_10; for_iter_20 < arith_const_9; for_iter_20 += arith_const_12) {
        PAST_NEW_SEMAPHORE(execute_token_22); 
        #pragma peqc async_execute
        {
          double memref_load_23 = func_arg_5[for_iter_15][for_iter_20]; 
          double arith_mulf_24 = (memref_load_23 * func_arg_4); 
          func_arg_5[for_iter_15][for_iter_20] = arith_mulf_24; 
          PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
        }
        async_group_18[async_group_index_19] = execute_token_22; 
        async_group_index_19++; 
        int arith_addi_25 = (for_iter_arg_21 + arith_const_12); 
        for_iter_arg_21 = arith_addi_25; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
    }
    async_group_13[async_group_index_14] = execute_token_17; 
    async_group_index_14++; 
    int arith_addi_26 = (for_iter_arg_16 + arith_const_12); 
    for_iter_arg_16 = arith_addi_26; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
  int* async_group_27; 
  int async_group_index_28 = 0; 
  int for_iter_arg_30 = arith_const_10; 
  for (int for_iter_29 = arith_const_10; for_iter_29 < arith_const_11; for_iter_29 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_31); 
    #pragma peqc async_execute
    {
      for (int for_iter_32 = arith_const_10; for_iter_32 < arith_const_8; for_iter_32 += arith_const_12) {
        int* async_group_33; 
        int async_group_index_34 = 0; 
        int for_iter_arg_36 = arith_const_10; 
        for (int for_iter_35 = arith_const_10; for_iter_35 < arith_const_9; for_iter_35 += arith_const_12) {
          PAST_NEW_SEMAPHORE(execute_token_37); 
          #pragma peqc async_execute
          {
            double memref_load_38 = func_arg_5[for_iter_29][for_iter_35]; 
            double memref_load_39 = func_arg_6[for_iter_29][for_iter_32]; 
            double arith_mulf_40 = (func_arg_3 * memref_load_39); 
            double memref_load_41 = func_arg_7[for_iter_32][for_iter_35]; 
            double arith_mulf_42 = (arith_mulf_40 * memref_load_41); 
            double arith_addf_43 = (memref_load_38 + arith_mulf_42); 
            func_arg_5[for_iter_29][for_iter_35] = arith_addf_43; 
            PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
          }
          async_group_33[async_group_index_34] = execute_token_37; 
          async_group_index_34++; 
          int arith_addi_44 = (for_iter_arg_36 + arith_const_12); 
          for_iter_arg_36 = arith_addi_44; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
    }
    async_group_27[async_group_index_28] = execute_token_31; 
    async_group_index_28++; 
    int arith_addi_45 = (for_iter_arg_30 + arith_const_12); 
    for_iter_arg_30 = arith_addi_45; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int ni;
  int nj;
  int nk;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_gemm(ni, nj, nk, alpha, beta, C, A, B);
}
}

#pragma pocc-region-end
