#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  double arith_const_8 = 0.000000; 
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
      func_arg_5[for_iter_14] = arith_const_8; 
      func_arg_7[for_iter_14] = arith_const_8; 
      for (int for_iter_17 = arith_const_9; for_iter_17 < arith_const_10; for_iter_17 += arith_const_11) {
        double memref_load_18 = func_arg_3[for_iter_14][for_iter_17]; 
        double memref_load_19 = func_arg_6[for_iter_17]; 
        double arith_mulf_20 = (memref_load_18 * memref_load_19); 
        double memref_load_21 = func_arg_5[for_iter_14]; 
        double arith_addf_22 = (arith_mulf_20 + memref_load_21); 
        func_arg_5[for_iter_14] = arith_addf_22; 
        double memref_load_23 = func_arg_4[for_iter_14][for_iter_17]; 
        double memref_load_24 = func_arg_6[for_iter_17]; 
        double arith_mulf_25 = (memref_load_23 * memref_load_24); 
        double memref_load_26 = func_arg_7[for_iter_14]; 
        double arith_addf_27 = (arith_mulf_25 + memref_load_26); 
        func_arg_7[for_iter_14] = arith_addf_27; 
      }
      double memref_load_28 = func_arg_5[for_iter_14]; 
      double arith_mulf_29 = (func_arg_1 * memref_load_28); 
      double memref_load_30 = func_arg_7[for_iter_14]; 
      double arith_mulf_31 = (func_arg_2 * memref_load_30); 
      double arith_addf_32 = (arith_mulf_29 + arith_mulf_31); 
      func_arg_7[for_iter_14] = arith_addf_32; 
      PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
    }
    async_group_12[async_group_index_13] = execute_token_16; 
    async_group_index_13++; 
    int arith_addi_33 = (for_iter_arg_15 + arith_const_11); 
    for_iter_arg_15 = arith_addi_33; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);
}
}

#pragma pocc-region-end
