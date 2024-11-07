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
      for (int for_iter_18 = arith_const_10; for_iter_18 < arith_const_9; for_iter_18 += arith_const_12) {
        double memref_load_19 = func_arg_5[for_iter_15][for_iter_18]; 
        double arith_mulf_20 = (memref_load_19 * func_arg_4); 
        func_arg_5[for_iter_15][for_iter_18] = arith_mulf_20; 
      }
      PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
    }
    async_group_13[async_group_index_14] = execute_token_17; 
    async_group_index_14++; 
    int arith_addi_21 = (for_iter_arg_16 + arith_const_12); 
    for_iter_arg_16 = arith_addi_21; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
  int* async_group_22; 
  int async_group_index_23 = 0; 
  int for_iter_arg_25 = arith_const_10; 
  for (int for_iter_24 = arith_const_10; for_iter_24 < arith_const_11; for_iter_24 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_26); 
    #pragma peqc async_execute
    {
      for (int for_iter_27 = arith_const_10; for_iter_27 < arith_const_8; for_iter_27 += arith_const_12) {
        for (int for_iter_28 = arith_const_10; for_iter_28 < arith_const_9; for_iter_28 += arith_const_12) {
          double memref_load_29 = func_arg_5[for_iter_24][for_iter_28]; 
          double memref_load_30 = func_arg_6[for_iter_24][for_iter_27]; 
          double arith_mulf_31 = (func_arg_3 * memref_load_30); 
          double memref_load_32 = func_arg_7[for_iter_27][for_iter_28]; 
          double arith_mulf_33 = (arith_mulf_31 * memref_load_32); 
          double arith_addf_34 = (memref_load_29 + arith_mulf_33); 
          func_arg_5[for_iter_24][for_iter_28] = arith_addf_34; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
    }
    async_group_22[async_group_index_23] = execute_token_26; 
    async_group_index_23++; 
    int arith_addi_35 = (for_iter_arg_25 + arith_const_12); 
    for_iter_arg_25 = arith_addi_35; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
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
