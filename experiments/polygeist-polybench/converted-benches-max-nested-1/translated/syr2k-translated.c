#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
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
      for (int for_iter_17 = arith_const_8; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_10) {
        double memref_load_18 = func_arg_4[for_iter_13][for_iter_17]; 
        double arith_mulf_19 = (memref_load_18 * func_arg_3); 
        func_arg_4[for_iter_13][for_iter_17] = arith_mulf_19; 
      }
      PAST_SET_SEMAPHORE(execute_token_15, PAST_TASK_FINISHED); 
    }
    async_group_11[async_group_index_12] = execute_token_15; 
    async_group_index_12++; 
    int arith_addi_20 = (for_iter_arg_14 + arith_const_10); 
    for_iter_arg_14 = arith_addi_20; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  int* async_group_21; 
  int async_group_index_22 = 0; 
  int for_iter_arg_24 = arith_const_8; 
  for (int for_iter_23 = arith_const_8; for_iter_23 < arith_const_9; for_iter_23 += arith_const_10) {
    PAST_NEW_SEMAPHORE(execute_token_25); 
    #pragma peqc async_execute
    {
      int arith_addi_26 = (for_iter_23 + arith_const_10); 
      for (int for_iter_27 = arith_const_8; for_iter_27 < arith_addi_26; for_iter_27 += arith_const_10) {
        for (int for_iter_28 = arith_const_8; for_iter_28 < arith_const_7; for_iter_28 += arith_const_10) {
          double memref_load_29 = func_arg_4[for_iter_23][for_iter_27]; 
          double memref_load_30 = func_arg_5[for_iter_27][for_iter_28]; 
          double arith_mulf_31 = (memref_load_30 * func_arg_2); 
          double memref_load_32 = func_arg_6[for_iter_23][for_iter_28]; 
          double arith_mulf_33 = (arith_mulf_31 * memref_load_32); 
          double memref_load_34 = func_arg_6[for_iter_27][for_iter_28]; 
          double arith_mulf_35 = (memref_load_34 * func_arg_2); 
          double memref_load_36 = func_arg_5[for_iter_23][for_iter_28]; 
          double arith_mulf_37 = (arith_mulf_35 * memref_load_36); 
          double arith_addf_38 = (arith_mulf_33 + arith_mulf_37); 
          double arith_addf_39 = (memref_load_29 + arith_addf_38); 
          func_arg_4[for_iter_23][for_iter_27] = arith_addf_39; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
    }
    async_group_21[async_group_index_22] = execute_token_25; 
    async_group_index_22++; 
    int arith_addi_40 = (for_iter_arg_24 + arith_const_10); 
    for_iter_arg_24 = arith_addi_40; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
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

  kernel_syr2k(n, m, alpha, beta, C, A, B);
}

#pragma pocc-region-end
