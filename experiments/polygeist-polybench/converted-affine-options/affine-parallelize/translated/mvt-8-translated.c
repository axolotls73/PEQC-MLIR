#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 40; 
  int arith_const_7 = 32; 
  int arith_const_8 = 0; 
  int arith_const_9 = 2; 
  int arith_const_10 = 1; 
  int* async_group_11; 
  int async_group_index_12 = 0; 
  int for_iter_arg_14 = arith_const_8; 
  for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_9; for_iter_13 += arith_const_10) {
    PAST_NEW_SEMAPHORE(execute_token_15); 
    #pragma peqc async_execute
    {
      for (int for_iter_16 = arith_const_8; for_iter_16 < arith_const_9; for_iter_16 += arith_const_10) {
        int arith_muli_17 = (for_iter_13 * arith_const_7); 
        int arith_muli_18 = (for_iter_13 * arith_const_7); 
        int arith_addi_19 = (arith_muli_18 + arith_const_7); 
        int arith_minsi_20 = min(arith_addi_19, arith_const_6); 
        for (int for_iter_21 = arith_muli_17; for_iter_21 < arith_minsi_20; for_iter_21 += arith_const_10) {
          int arith_muli_22 = (for_iter_16 * arith_const_7); 
          int arith_muli_23 = (for_iter_16 * arith_const_7); 
          int arith_addi_24 = (arith_muli_23 + arith_const_7); 
          int arith_minsi_25 = min(arith_addi_24, arith_const_6); 
          for (int for_iter_26 = arith_muli_22; for_iter_26 < arith_minsi_25; for_iter_26 += arith_const_10) {
            double memref_load_27 = func_arg_1[for_iter_21]; 
            double memref_load_28 = func_arg_5[for_iter_21][for_iter_26]; 
            double memref_load_29 = func_arg_3[for_iter_26]; 
            double arith_mulf_30 = (memref_load_28 * memref_load_29); 
            double arith_addf_31 = (memref_load_27 + arith_mulf_30); 
            func_arg_1[for_iter_21] = arith_addf_31; 
            double memref_load_32 = func_arg_2[for_iter_21]; 
            double memref_load_33 = func_arg_5[for_iter_26][for_iter_21]; 
            double memref_load_34 = func_arg_4[for_iter_26]; 
            double arith_mulf_35 = (memref_load_33 * memref_load_34); 
            double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
            func_arg_2[for_iter_21] = arith_addf_36; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_15, PAST_TASK_FINISHED); 
    }
    async_group_11[async_group_index_12] = execute_token_15; 
    async_group_index_12++; 
    int arith_addi_37 = (for_iter_arg_14 + arith_const_10); 
    for_iter_arg_14 = arith_addi_37; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_11, async_group_index_12, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
