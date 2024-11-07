#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 28; 
  int arith_const_5 = -1; 
  int arith_const_6 = 29; 
  double arith_const_7 = 0.200000; 
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
        for (int for_iter_17 = arith_const_10; for_iter_17 < arith_const_6; for_iter_17 += arith_const_10) {
          double memref_load_18 = func_arg_2[for_iter_14][for_iter_17]; 
          int arith_addi_19 = (for_iter_17 + arith_const_5); 
          double memref_load_20 = func_arg_2[for_iter_14][arith_addi_19]; 
          double arith_addf_21 = (memref_load_18 + memref_load_20); 
          int arith_addi_22 = (for_iter_17 + arith_const_10); 
          double memref_load_23 = func_arg_2[for_iter_14][arith_addi_22]; 
          double arith_addf_24 = (arith_addf_21 + memref_load_23); 
          int arith_addi_25 = (for_iter_14 + arith_const_10); 
          double memref_load_26 = func_arg_2[arith_addi_25][for_iter_17]; 
          double arith_addf_27 = (arith_addf_24 + memref_load_26); 
          int arith_addi_28 = (for_iter_14 + arith_const_5); 
          double memref_load_29 = func_arg_2[arith_addi_28][for_iter_17]; 
          double arith_addf_30 = (arith_addf_27 + memref_load_29); 
          double arith_mulf_31 = (arith_addf_30 * arith_const_7); 
          func_arg_3[for_iter_14][for_iter_17] = arith_mulf_31; 
        }
        PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
      }
      async_group_12[async_group_index_13] = execute_token_16; 
      async_group_index_13++; 
      int arith_addi_32 = (for_iter_arg_15 + arith_const_10); 
      for_iter_arg_15 = arith_addi_32; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
    int* async_group_33; 
    int async_group_index_34 = 0; 
    int for_iter_arg_36 = arith_const_8; 
    for (int for_iter_35 = arith_const_10; for_iter_35 < arith_const_6; for_iter_35 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_37); 
      #pragma peqc async_execute
      {
        for (int for_iter_38 = arith_const_10; for_iter_38 < arith_const_6; for_iter_38 += arith_const_10) {
          double memref_load_39 = func_arg_3[for_iter_35][for_iter_38]; 
          int arith_addi_40 = (for_iter_38 + arith_const_5); 
          double memref_load_41 = func_arg_3[for_iter_35][arith_addi_40]; 
          double arith_addf_42 = (memref_load_39 + memref_load_41); 
          int arith_addi_43 = (for_iter_38 + arith_const_10); 
          double memref_load_44 = func_arg_3[for_iter_35][arith_addi_43]; 
          double arith_addf_45 = (arith_addf_42 + memref_load_44); 
          int arith_addi_46 = (for_iter_35 + arith_const_10); 
          double memref_load_47 = func_arg_3[arith_addi_46][for_iter_38]; 
          double arith_addf_48 = (arith_addf_45 + memref_load_47); 
          int arith_addi_49 = (for_iter_35 + arith_const_5); 
          double memref_load_50 = func_arg_3[arith_addi_49][for_iter_38]; 
          double arith_addf_51 = (arith_addf_48 + memref_load_50); 
          double arith_mulf_52 = (arith_addf_51 * arith_const_7); 
          func_arg_2[for_iter_35][for_iter_38] = arith_mulf_52; 
        }
        PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
      }
      async_group_33[async_group_index_34] = execute_token_37; 
      async_group_index_34++; 
      int arith_addi_53 = (for_iter_arg_36 + arith_const_10); 
      for_iter_arg_36 = arith_addi_53; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
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
  kernel_jacobi_2d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
