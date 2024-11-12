#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  double arith_const_8 = 0.000000; 
  int arith_const_9 = 0; 
  int arith_const_10 = 38; 
  int arith_const_11 = 1; 
  int* async_group_12; 
  int async_group_index_13 = 0; 
  int for_iter_arg_15 = arith_const_9; 
  for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_10; for_iter_14 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_16); 
    #pragma peqc async_execute
    {
      func_arg_3[for_iter_14] = arith_const_8; 
      PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
    }
    async_group_12[async_group_index_13] = execute_token_16; 
    async_group_index_13++; 
    int arith_addi_17 = (for_iter_arg_15 + arith_const_11); 
    for_iter_arg_15 = arith_addi_17; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  for (int for_iter_18 = arith_const_9; for_iter_18 < arith_const_7; for_iter_18 += arith_const_11) {
    func_arg_4[for_iter_18] = arith_const_8; 
    for (int for_iter_19 = arith_const_9; for_iter_19 < arith_const_10; for_iter_19 += arith_const_11) {
      double memref_load_20 = func_arg_3[for_iter_19]; 
      double memref_load_21 = func_arg_6[for_iter_18]; 
      double memref_load_22 = func_arg_2[for_iter_18][for_iter_19]; 
      double arith_mulf_23 = (memref_load_21 * memref_load_22); 
      double arith_addf_24 = (memref_load_20 + arith_mulf_23); 
      func_arg_3[for_iter_19] = arith_addf_24; 
      double memref_load_25 = func_arg_4[for_iter_18]; 
      double memref_load_26 = func_arg_2[for_iter_18][for_iter_19]; 
      double memref_load_27 = func_arg_5[for_iter_19]; 
      double arith_mulf_28 = (memref_load_26 * memref_load_27); 
      double arith_addf_29 = (memref_load_25 + arith_mulf_28); 
      func_arg_4[for_iter_18] = arith_addf_29; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;

#pragma peqc async_execute
{
  kernel_bicg(m, n, A, s, q, p, r);
}
}

#pragma pocc-region-end
