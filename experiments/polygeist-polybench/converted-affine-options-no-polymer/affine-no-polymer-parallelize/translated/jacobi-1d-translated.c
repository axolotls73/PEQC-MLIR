#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 28; 
  int arith_const_5 = -1; 
  int arith_const_6 = 29; 
  double arith_const_7 = 0.333330; 
  int arith_const_8 = 0; 
  int arith_const_9 = 20; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int* async_group_12; 
    int async_group_index_13 = 0; 
    int for_iter_arg_15 = arith_const_8; 
    for (int for_iter_14 = arith_const_10; for_iter_14 < arith_const_6; for_iter_14 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_16); 
      #pragma peqc async_execute
      {
        int arith_addi_17 = (for_iter_14 + arith_const_5); 
        double memref_load_18 = func_arg_2[arith_addi_17]; 
        double memref_load_19 = func_arg_2[for_iter_14]; 
        double arith_addf_20 = (memref_load_18 + memref_load_19); 
        int arith_addi_21 = (for_iter_14 + arith_const_10); 
        double memref_load_22 = func_arg_2[arith_addi_21]; 
        double arith_addf_23 = (arith_addf_20 + memref_load_22); 
        double arith_mulf_24 = (arith_addf_23 * arith_const_7); 
        func_arg_3[for_iter_14] = arith_mulf_24; 
        PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
      }
      async_group_12[async_group_index_13] = execute_token_16; 
      async_group_index_13++; 
      int arith_addi_25 = (for_iter_arg_15 + arith_const_10); 
      for_iter_arg_15 = arith_addi_25; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
    int* async_group_26; 
    int async_group_index_27 = 0; 
    int for_iter_arg_29 = arith_const_8; 
    for (int for_iter_28 = arith_const_10; for_iter_28 < arith_const_6; for_iter_28 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_30); 
      #pragma peqc async_execute
      {
        int arith_addi_31 = (for_iter_28 + arith_const_5); 
        double memref_load_32 = func_arg_3[arith_addi_31]; 
        double memref_load_33 = func_arg_3[for_iter_28]; 
        double arith_addf_34 = (memref_load_32 + memref_load_33); 
        int arith_addi_35 = (for_iter_28 + arith_const_10); 
        double memref_load_36 = func_arg_3[arith_addi_35]; 
        double arith_addf_37 = (arith_addf_34 + memref_load_36); 
        double arith_mulf_38 = (arith_addf_37 * arith_const_7); 
        func_arg_2[for_iter_28] = arith_mulf_38; 
        PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
      }
      async_group_26[async_group_index_27] = execute_token_30; 
      async_group_index_27++; 
      int arith_addi_39 = (for_iter_arg_29 + arith_const_10); 
      for_iter_arg_29 = arith_addi_39; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_1d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
