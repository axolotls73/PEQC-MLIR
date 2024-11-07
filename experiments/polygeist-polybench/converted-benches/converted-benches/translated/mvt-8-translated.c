#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 40; 
  int arith_const_8 = 32; 
  int arith_const_9 = 0; 
  int arith_const_10 = 2; 
  int arith_const_11 = 1; 
  int* async_group_12; 
  int async_group_index_13 = 0; 
  int for_iter_arg_15 = arith_const_9; 
  for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_10; for_iter_14 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_16); 
    #pragma peqc async_execute
    {
      for (int for_iter_17 = arith_const_9; for_iter_17 < arith_const_10; for_iter_17 += arith_const_11) {
        int arith_muli_18 = (for_iter_14 * arith_const_8); 
        int arith_muli_19 = (for_iter_14 * arith_const_8); 
        int arith_addi_20 = (arith_muli_19 + arith_const_8); 
        int arith_minsi_21 = min(arith_addi_20, arith_const_7); 
        int* async_group_22; 
        int async_group_index_23 = 0; 
        int for_iter_arg_25 = arith_const_9; 
        for (int for_iter_24 = arith_muli_18; for_iter_24 < arith_minsi_21; for_iter_24 += arith_const_11) {
          PAST_NEW_SEMAPHORE(execute_token_26); 
          #pragma peqc async_execute
          {
            int arith_muli_27 = (for_iter_17 * arith_const_8); 
            int arith_muli_28 = (for_iter_17 * arith_const_8); 
            int arith_addi_29 = (arith_muli_28 + arith_const_8); 
            int arith_minsi_30 = min(arith_addi_29, arith_const_7); 
            for (int for_iter_31 = arith_muli_27; for_iter_31 < arith_minsi_30; for_iter_31 += arith_const_11) {
              double memref_load_32 = func_arg_1[for_iter_24]; 
              double memref_load_33 = func_arg_5[for_iter_24][for_iter_31]; 
              double memref_load_34 = func_arg_3[for_iter_31]; 
              double arith_mulf_35 = (memref_load_33 * memref_load_34); 
              double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
              func_arg_1[for_iter_24] = arith_addf_36; 
              double memref_load_37 = func_arg_2[for_iter_24]; 
              double memref_load_38 = func_arg_5[for_iter_31][for_iter_24]; 
              double memref_load_39 = func_arg_4[for_iter_31]; 
              double arith_mulf_40 = (memref_load_38 * memref_load_39); 
              double arith_addf_41 = (memref_load_37 + arith_mulf_40); 
              func_arg_2[for_iter_24] = arith_addf_41; 
            }
            PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
          }
          async_group_22[async_group_index_23] = execute_token_26; 
          async_group_index_23++; 
          int arith_addi_42 = (for_iter_arg_25 + arith_const_11); 
          for_iter_arg_25 = arith_addi_42; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
    }
    async_group_12[async_group_index_13] = execute_token_16; 
    async_group_index_13++; 
    int arith_addi_43 = (for_iter_arg_15 + arith_const_11); 
    for_iter_arg_15 = arith_addi_43; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;

#pragma peqc async_execute
{
  kernel_mvt(n, x1, x2, y_1, y_2, A);
}
}

#pragma pocc-region-end
