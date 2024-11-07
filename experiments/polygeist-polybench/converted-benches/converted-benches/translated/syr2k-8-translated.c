#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 20; 
  int arith_const_9 = 0; 
  int arith_const_10 = 30; 
  int arith_const_11 = 1; 
  int* async_group_12; 
  int async_group_index_13 = 0; 
  int for_iter_arg_15 = arith_const_9; 
  for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_10; for_iter_14 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_16); 
    #pragma peqc async_execute
    {
      int arith_addi_17 = (for_iter_14 + arith_const_11); 
      int* async_group_18; 
      int async_group_index_19 = 0; 
      int for_iter_arg_21 = arith_const_9; 
      for (int for_iter_20 = arith_const_9; for_iter_20 < arith_addi_17; for_iter_20 += arith_const_11) {
        PAST_NEW_SEMAPHORE(execute_token_22); 
        #pragma peqc async_execute
        {
          double memref_load_23 = func_arg_4[for_iter_14][for_iter_20]; 
          double arith_mulf_24 = (memref_load_23 * func_arg_3); 
          func_arg_4[for_iter_14][for_iter_20] = arith_mulf_24; 
          PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
        }
        async_group_18[async_group_index_19] = execute_token_22; 
        async_group_index_19++; 
        int arith_addi_25 = (for_iter_arg_21 + arith_const_11); 
        for_iter_arg_21 = arith_addi_25; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
    }
    async_group_12[async_group_index_13] = execute_token_16; 
    async_group_index_13++; 
    int arith_addi_26 = (for_iter_arg_15 + arith_const_11); 
    for_iter_arg_15 = arith_addi_26; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  int* async_group_27; 
  int async_group_index_28 = 0; 
  int for_iter_arg_30 = arith_const_9; 
  for (int for_iter_29 = arith_const_9; for_iter_29 < arith_const_10; for_iter_29 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_31); 
    #pragma peqc async_execute
    {
      int arith_addi_32 = (for_iter_29 + arith_const_11); 
      int* async_group_33; 
      int async_group_index_34 = 0; 
      int for_iter_arg_36 = arith_const_9; 
      for (int for_iter_35 = arith_const_9; for_iter_35 < arith_addi_32; for_iter_35 += arith_const_11) {
        PAST_NEW_SEMAPHORE(execute_token_37); 
        #pragma peqc async_execute
        {
          for (int for_iter_38 = arith_const_9; for_iter_38 < arith_const_8; for_iter_38 += arith_const_11) {
            double memref_load_39 = func_arg_4[for_iter_29][for_iter_35]; 
            double memref_load_40 = func_arg_5[for_iter_35][for_iter_38]; 
            double arith_mulf_41 = (memref_load_40 * func_arg_2); 
            double memref_load_42 = func_arg_6[for_iter_29][for_iter_38]; 
            double arith_mulf_43 = (arith_mulf_41 * memref_load_42); 
            double memref_load_44 = func_arg_6[for_iter_35][for_iter_38]; 
            double arith_mulf_45 = (memref_load_44 * func_arg_2); 
            double memref_load_46 = func_arg_5[for_iter_29][for_iter_38]; 
            double arith_mulf_47 = (arith_mulf_45 * memref_load_46); 
            double arith_addf_48 = (arith_mulf_43 + arith_mulf_47); 
            double arith_addf_49 = (memref_load_39 + arith_addf_48); 
            func_arg_4[for_iter_29][for_iter_35] = arith_addf_49; 
          }
          PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
        }
        async_group_33[async_group_index_34] = execute_token_37; 
        async_group_index_34++; 
        int arith_addi_50 = (for_iter_arg_36 + arith_const_11); 
        for_iter_arg_36 = arith_addi_50; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
    }
    async_group_27[async_group_index_28] = execute_token_31; 
    async_group_index_28++; 
    int arith_addi_51 = (for_iter_arg_30 + arith_const_11); 
    for_iter_arg_30 = arith_addi_51; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
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
  double* B;

#pragma peqc async_execute
{
  kernel_syr2k(n, m, alpha, beta, C, A, B);
}
}

#pragma pocc-region-end
