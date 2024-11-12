#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
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
      for (int for_iter_20 = arith_const_8; for_iter_20 < arith_const_7; for_iter_20 += arith_const_10) {
        int arith_addi_21 = (for_iter_13 + arith_const_10); 
        for (int for_iter_22 = arith_const_8; for_iter_22 < arith_addi_21; for_iter_22 += arith_const_10) {
          double memref_load_23 = func_arg_5[for_iter_22][for_iter_20]; 
          double arith_mulf_24 = (memref_load_23 * func_arg_2); 
          double memref_load_25 = func_arg_6[for_iter_13][for_iter_20]; 
          double arith_mulf_26 = (arith_mulf_24 * memref_load_25); 
          double memref_load_27 = func_arg_6[for_iter_22][for_iter_20]; 
          double arith_mulf_28 = (memref_load_27 * func_arg_2); 
          double memref_load_29 = func_arg_5[for_iter_13][for_iter_20]; 
          double arith_mulf_30 = (arith_mulf_28 * memref_load_29); 
          double arith_addf_31 = (arith_mulf_26 + arith_mulf_30); 
          double memref_load_32 = func_arg_4[for_iter_13][for_iter_22]; 
          double arith_addf_33 = (memref_load_32 + arith_addf_31); 
          func_arg_4[for_iter_13][for_iter_22] = arith_addf_33; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_15, PAST_TASK_FINISHED); 
    }
    async_group_11[async_group_index_12] = execute_token_15; 
    async_group_index_12++; 
    int arith_addi_34 = (for_iter_arg_14 + arith_const_10); 
    for_iter_arg_14 = arith_addi_34; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
