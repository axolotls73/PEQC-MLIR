#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 22; 
  int arith_const_13 = 18; 
  double arith_const_14 = 0.000000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 16; 
  int arith_const_17 = 1; 
  int* async_group_18; 
  int async_group_index_19 = 0; 
  int for_iter_arg_21 = arith_const_15; 
  for (int for_iter_20 = arith_const_15; for_iter_20 < arith_const_16; for_iter_20 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_22); 
    #pragma peqc async_execute
    {
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_13; for_iter_23 += arith_const_17) {
        func_arg_6[for_iter_20][for_iter_23] = arith_const_14; 
        for (int for_iter_24 = arith_const_15; for_iter_24 < arith_const_12; for_iter_24 += arith_const_17) {
          double memref_load_25 = func_arg_7[for_iter_20][for_iter_24]; 
          double arith_mulf_26 = (func_arg_4 * memref_load_25); 
          double memref_load_27 = func_arg_8[for_iter_24][for_iter_23]; 
          double arith_mulf_28 = (arith_mulf_26 * memref_load_27); 
          double memref_load_29 = func_arg_6[for_iter_20][for_iter_23]; 
          double arith_addf_30 = (memref_load_29 + arith_mulf_28); 
          func_arg_6[for_iter_20][for_iter_23] = arith_addf_30; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_31 = (for_iter_arg_21 + arith_const_17); 
    for_iter_arg_21 = arith_addi_31; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  int* async_group_32; 
  int async_group_index_33 = 0; 
  int for_iter_arg_35 = arith_const_15; 
  for (int for_iter_34 = arith_const_15; for_iter_34 < arith_const_16; for_iter_34 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_36); 
    #pragma peqc async_execute
    {
      for (int for_iter_37 = arith_const_15; for_iter_37 < arith_const_11; for_iter_37 += arith_const_17) {
        double memref_load_38 = func_arg_10[for_iter_34][for_iter_37]; 
        double arith_mulf_39 = (memref_load_38 * func_arg_5); 
        func_arg_10[for_iter_34][for_iter_37] = arith_mulf_39; 
        for (int for_iter_40 = arith_const_15; for_iter_40 < arith_const_13; for_iter_40 += arith_const_17) {
          double memref_load_41 = func_arg_6[for_iter_34][for_iter_40]; 
          double memref_load_42 = func_arg_9[for_iter_40][for_iter_37]; 
          double arith_mulf_43 = (memref_load_41 * memref_load_42); 
          double memref_load_44 = func_arg_10[for_iter_34][for_iter_37]; 
          double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
          func_arg_10[for_iter_34][for_iter_37] = arith_addf_45; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_36, PAST_TASK_FINISHED); 
    }
    async_group_32[async_group_index_33] = execute_token_36; 
    async_group_index_33++; 
    int arith_addi_46 = (for_iter_arg_35 + arith_const_17); 
    for_iter_arg_35 = arith_addi_46; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_32, async_group_index_33, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;

#pragma peqc async_execute
{
  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);
}
}

#pragma pocc-region-end
