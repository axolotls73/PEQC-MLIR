#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 42; 
  int arith_const_3 = 0; 
  int arith_const_4 = 40; 
  int arith_const_5 = 1; 
  for (int for_iter_6 = arith_const_3; for_iter_6 < arith_const_4; for_iter_6 += arith_const_5) {
    for (int for_iter_7 = arith_const_3; for_iter_7 < for_iter_6; for_iter_7 += arith_const_5) {
      for (int for_iter_8 = arith_const_3; for_iter_8 < for_iter_7; for_iter_8 += arith_const_5) {
        double memref_load_9 = func_arg_1[for_iter_6][for_iter_8]; 
        double memref_load_10 = func_arg_1[for_iter_8][for_iter_7]; 
        double arith_mulf_11 = (memref_load_9 * memref_load_10); 
        double memref_load_12 = func_arg_1[for_iter_6][for_iter_7]; 
        double arith_subf_13 = (memref_load_12 - arith_mulf_11); 
        func_arg_1[for_iter_6][for_iter_7] = arith_subf_13; 
      }
      double memref_load_14 = func_arg_1[for_iter_7][for_iter_7]; 
      double memref_load_15 = func_arg_1[for_iter_6][for_iter_7]; 
      double arith_divf_16 = (memref_load_15 / memref_load_14); 
      func_arg_1[for_iter_6][for_iter_7] = arith_divf_16; 
    }
    int* async_group_17; 
    int async_group_index_18 = 0; 
    int for_iter_arg_20 = arith_const_3; 
    for (int for_iter_19 = for_iter_6; for_iter_19 < arith_const_4; for_iter_19 += arith_const_5) {
      PAST_NEW_SEMAPHORE(execute_token_21); 
      #pragma peqc async_execute
      {
        for (int for_iter_22 = arith_const_3; for_iter_22 < for_iter_6; for_iter_22 += arith_const_5) {
          double memref_load_23 = func_arg_1[for_iter_6][for_iter_22]; 
          double memref_load_24 = func_arg_1[for_iter_22][for_iter_19]; 
          double arith_mulf_25 = (memref_load_23 * memref_load_24); 
          double memref_load_26 = func_arg_1[for_iter_6][for_iter_19]; 
          double arith_subf_27 = (memref_load_26 - arith_mulf_25); 
          func_arg_1[for_iter_6][for_iter_19] = arith_subf_27; 
        }
        PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
      }
      async_group_17[async_group_index_18] = execute_token_21; 
      async_group_index_18++; 
      int arith_addi_28 = (for_iter_arg_20 + arith_const_5); 
      for_iter_arg_20 = arith_addi_28; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_lu(n, A);
}
}

#pragma pocc-region-end
