#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 24; 
  int arith_const_13 = 22; 
  int arith_const_14 = 20; 
  int arith_const_15 = 18; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 16; 
  int arith_const_19 = 1; 
  int* async_group_20; 
  int async_group_index_21 = 0; 
  int for_iter_arg_23 = arith_const_17; 
  for (int for_iter_22 = arith_const_17; for_iter_22 < arith_const_18; for_iter_22 += arith_const_19) {
    PAST_NEW_SEMAPHORE(execute_token_24); 
    #pragma peqc async_execute
    {
      for (int for_iter_25 = arith_const_17; for_iter_25 < arith_const_15; for_iter_25 += arith_const_19) {
        func_arg_5[for_iter_22][for_iter_25] = arith_const_16; 
        for (int for_iter_26 = arith_const_17; for_iter_26 < arith_const_14; for_iter_26 += arith_const_19) {
          double memref_load_27 = func_arg_6[for_iter_22][for_iter_26]; 
          double memref_load_28 = func_arg_7[for_iter_26][for_iter_25]; 
          double arith_mulf_29 = (memref_load_27 * memref_load_28); 
          double memref_load_30 = func_arg_5[for_iter_22][for_iter_25]; 
          double arith_addf_31 = (memref_load_30 + arith_mulf_29); 
          func_arg_5[for_iter_22][for_iter_25] = arith_addf_31; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_24, PAST_TASK_FINISHED); 
    }
    async_group_20[async_group_index_21] = execute_token_24; 
    async_group_index_21++; 
    int arith_addi_32 = (for_iter_arg_23 + arith_const_19); 
    for_iter_arg_23 = arith_addi_32; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_20, async_group_index_21, PAST_TASK_FINISHED); 
  int* async_group_33; 
  int async_group_index_34 = 0; 
  int for_iter_arg_36 = arith_const_17; 
  for (int for_iter_35 = arith_const_17; for_iter_35 < arith_const_15; for_iter_35 += arith_const_19) {
    PAST_NEW_SEMAPHORE(execute_token_37); 
    #pragma peqc async_execute
    {
      for (int for_iter_38 = arith_const_17; for_iter_38 < arith_const_13; for_iter_38 += arith_const_19) {
        func_arg_8[for_iter_35][for_iter_38] = arith_const_16; 
        for (int for_iter_39 = arith_const_17; for_iter_39 < arith_const_12; for_iter_39 += arith_const_19) {
          double memref_load_40 = func_arg_9[for_iter_35][for_iter_39]; 
          double memref_load_41 = func_arg_10[for_iter_39][for_iter_38]; 
          double arith_mulf_42 = (memref_load_40 * memref_load_41); 
          double memref_load_43 = func_arg_8[for_iter_35][for_iter_38]; 
          double arith_addf_44 = (memref_load_43 + arith_mulf_42); 
          func_arg_8[for_iter_35][for_iter_38] = arith_addf_44; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
    }
    async_group_33[async_group_index_34] = execute_token_37; 
    async_group_index_34++; 
    int arith_addi_45 = (for_iter_arg_36 + arith_const_19); 
    for_iter_arg_36 = arith_addi_45; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
  int* async_group_46; 
  int async_group_index_47 = 0; 
  int for_iter_arg_49 = arith_const_17; 
  for (int for_iter_48 = arith_const_17; for_iter_48 < arith_const_18; for_iter_48 += arith_const_19) {
    PAST_NEW_SEMAPHORE(execute_token_50); 
    #pragma peqc async_execute
    {
      for (int for_iter_51 = arith_const_17; for_iter_51 < arith_const_13; for_iter_51 += arith_const_19) {
        func_arg_11[for_iter_48][for_iter_51] = arith_const_16; 
        for (int for_iter_52 = arith_const_17; for_iter_52 < arith_const_15; for_iter_52 += arith_const_19) {
          double memref_load_53 = func_arg_5[for_iter_48][for_iter_52]; 
          double memref_load_54 = func_arg_8[for_iter_52][for_iter_51]; 
          double arith_mulf_55 = (memref_load_53 * memref_load_54); 
          double memref_load_56 = func_arg_11[for_iter_48][for_iter_51]; 
          double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
          func_arg_11[for_iter_48][for_iter_51] = arith_addf_57; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_50, PAST_TASK_FINISHED); 
    }
    async_group_46[async_group_index_47] = execute_token_50; 
    async_group_index_47++; 
    int arith_addi_58 = (for_iter_arg_49 + arith_const_19); 
    for_iter_arg_49 = arith_addi_58; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_46, async_group_index_47, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  int nm;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;

#pragma peqc async_execute
{
  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);
}
}

#pragma pocc-region-end
