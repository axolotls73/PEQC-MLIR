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
      func_arg_7[for_iter_14] = arith_const_8; 
      PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
    }
    async_group_12[async_group_index_13] = execute_token_16; 
    async_group_index_13++; 
    int arith_addi_17 = (for_iter_arg_15 + arith_const_11); 
    for_iter_arg_15 = arith_addi_17; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  int* async_group_18; 
  int async_group_index_19 = 0; 
  int for_iter_arg_21 = arith_const_9; 
  for (int for_iter_20 = arith_const_9; for_iter_20 < arith_const_10; for_iter_20 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_22); 
    #pragma peqc async_execute
    {
      for (int for_iter_23 = arith_const_9; for_iter_23 < arith_const_10; for_iter_23 += arith_const_11) {
        double memref_load_24 = func_arg_4[for_iter_20][for_iter_23]; 
        double memref_load_25 = func_arg_6[for_iter_23]; 
        double arith_mulf_26 = (memref_load_24 * memref_load_25); 
        double memref_load_27 = func_arg_7[for_iter_20]; 
        double arith_addf_28 = (arith_mulf_26 + memref_load_27); 
        func_arg_7[for_iter_20] = arith_addf_28; 
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_29 = (for_iter_arg_21 + arith_const_11); 
    for_iter_arg_21 = arith_addi_29; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  int* async_group_30; 
  int async_group_index_31 = 0; 
  int for_iter_arg_33 = arith_const_9; 
  for (int for_iter_32 = arith_const_9; for_iter_32 < arith_const_10; for_iter_32 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_34); 
    #pragma peqc async_execute
    {
      func_arg_5[for_iter_32] = arith_const_8; 
      PAST_SET_SEMAPHORE(execute_token_34, PAST_TASK_FINISHED); 
    }
    async_group_30[async_group_index_31] = execute_token_34; 
    async_group_index_31++; 
    int arith_addi_35 = (for_iter_arg_33 + arith_const_11); 
    for_iter_arg_33 = arith_addi_35; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_30, async_group_index_31, PAST_TASK_FINISHED); 
  int* async_group_36; 
  int async_group_index_37 = 0; 
  int for_iter_arg_39 = arith_const_9; 
  for (int for_iter_38 = arith_const_9; for_iter_38 < arith_const_10; for_iter_38 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_40); 
    #pragma peqc async_execute
    {
      for (int for_iter_41 = arith_const_9; for_iter_41 < arith_const_10; for_iter_41 += arith_const_11) {
        double memref_load_42 = func_arg_3[for_iter_38][for_iter_41]; 
        double memref_load_43 = func_arg_6[for_iter_41]; 
        double arith_mulf_44 = (memref_load_42 * memref_load_43); 
        double memref_load_45 = func_arg_5[for_iter_38]; 
        double arith_addf_46 = (arith_mulf_44 + memref_load_45); 
        func_arg_5[for_iter_38] = arith_addf_46; 
      }
      PAST_SET_SEMAPHORE(execute_token_40, PAST_TASK_FINISHED); 
    }
    async_group_36[async_group_index_37] = execute_token_40; 
    async_group_index_37++; 
    int arith_addi_47 = (for_iter_arg_39 + arith_const_11); 
    for_iter_arg_39 = arith_addi_47; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_36, async_group_index_37, PAST_TASK_FINISHED); 
  int* async_group_48; 
  int async_group_index_49 = 0; 
  int for_iter_arg_51 = arith_const_9; 
  for (int for_iter_50 = arith_const_9; for_iter_50 < arith_const_10; for_iter_50 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_52); 
    #pragma peqc async_execute
    {
      double memref_load_53 = func_arg_5[for_iter_50]; 
      double arith_mulf_54 = (func_arg_1 * memref_load_53); 
      double memref_load_55 = func_arg_7[for_iter_50]; 
      double arith_mulf_56 = (func_arg_2 * memref_load_55); 
      double arith_addf_57 = (arith_mulf_54 + arith_mulf_56); 
      func_arg_7[for_iter_50] = arith_addf_57; 
      PAST_SET_SEMAPHORE(execute_token_52, PAST_TASK_FINISHED); 
    }
    async_group_48[async_group_index_49] = execute_token_52; 
    async_group_index_49++; 
    int arith_addi_58 = (for_iter_arg_51 + arith_const_11); 
    for_iter_arg_51 = arith_addi_58; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_48, async_group_index_49, PAST_TASK_FINISHED); 
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
