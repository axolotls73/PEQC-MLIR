#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_trmm(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 30; 
  int arith_const_6 = 0; 
  int arith_const_7 = 20; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    int* async_group_10; 
    int async_group_index_11 = 0; 
    int for_iter_arg_13 = arith_const_6; 
    for (int for_iter_12 = arith_const_6; for_iter_12 < arith_const_5; for_iter_12 += arith_const_8) {
      PAST_NEW_SEMAPHORE(execute_token_14); 
      #pragma peqc async_execute
      {
        int arith_addi_15 = (for_iter_9 + arith_const_8); 
        for (int for_iter_16 = arith_addi_15; for_iter_16 < arith_const_7; for_iter_16 += arith_const_8) {
          double memref_load_17 = func_arg_3[for_iter_16][for_iter_9]; 
          double memref_load_18 = func_arg_4[for_iter_16][for_iter_12]; 
          double arith_mulf_19 = (memref_load_17 * memref_load_18); 
          double memref_load_20 = func_arg_4[for_iter_9][for_iter_12]; 
          double arith_addf_21 = (memref_load_20 + arith_mulf_19); 
          func_arg_4[for_iter_9][for_iter_12] = arith_addf_21; 
        }
        double memref_load_22 = func_arg_4[for_iter_9][for_iter_12]; 
        double arith_mulf_23 = (func_arg_2 * memref_load_22); 
        func_arg_4[for_iter_9][for_iter_12] = arith_mulf_23; 
        PAST_SET_SEMAPHORE(execute_token_14, PAST_TASK_FINISHED); 
      }
      async_group_10[async_group_index_11] = execute_token_14; 
      async_group_index_11++; 
      int arith_addi_24 = (for_iter_arg_13 + arith_const_8); 
      for_iter_arg_13 = arith_addi_24; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_10, async_group_index_11, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double alpha;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_trmm(m, n, alpha, A, B);
}
}

#pragma pocc-region-end
