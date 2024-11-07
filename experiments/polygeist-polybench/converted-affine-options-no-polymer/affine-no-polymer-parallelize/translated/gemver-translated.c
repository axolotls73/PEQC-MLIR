#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 0; 
  int arith_const_13 = 40; 
  int arith_const_14 = 1; 
  int* async_group_15; 
  int async_group_index_16 = 0; 
  int for_iter_arg_18 = arith_const_12; 
  for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_13; for_iter_17 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_19); 
    #pragma peqc async_execute
    {
      for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_13; for_iter_20 += arith_const_14) {
        double memref_load_21 = func_arg_3[for_iter_17][for_iter_20]; 
        double memref_load_22 = func_arg_4[for_iter_17]; 
        double memref_load_23 = func_arg_5[for_iter_20]; 
        double arith_mulf_24 = (memref_load_22 * memref_load_23); 
        double arith_addf_25 = (memref_load_21 + arith_mulf_24); 
        double memref_load_26 = func_arg_6[for_iter_17]; 
        double memref_load_27 = func_arg_7[for_iter_20]; 
        double arith_mulf_28 = (memref_load_26 * memref_load_27); 
        double arith_addf_29 = (arith_addf_25 + arith_mulf_28); 
        func_arg_3[for_iter_17][for_iter_20] = arith_addf_29; 
      }
      PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
    }
    async_group_15[async_group_index_16] = execute_token_19; 
    async_group_index_16++; 
    int arith_addi_30 = (for_iter_arg_18 + arith_const_14); 
    for_iter_arg_18 = arith_addi_30; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  int* async_group_31; 
  int async_group_index_32 = 0; 
  int for_iter_arg_34 = arith_const_12; 
  for (int for_iter_33 = arith_const_12; for_iter_33 < arith_const_13; for_iter_33 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_35); 
    #pragma peqc async_execute
    {
      for (int for_iter_36 = arith_const_12; for_iter_36 < arith_const_13; for_iter_36 += arith_const_14) {
        double memref_load_37 = func_arg_9[for_iter_33]; 
        double memref_load_38 = func_arg_3[for_iter_36][for_iter_33]; 
        double arith_mulf_39 = (func_arg_2 * memref_load_38); 
        double memref_load_40 = func_arg_10[for_iter_36]; 
        double arith_mulf_41 = (arith_mulf_39 * memref_load_40); 
        double arith_addf_42 = (memref_load_37 + arith_mulf_41); 
        func_arg_9[for_iter_33] = arith_addf_42; 
      }
      PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
    }
    async_group_31[async_group_index_32] = execute_token_35; 
    async_group_index_32++; 
    int arith_addi_43 = (for_iter_arg_34 + arith_const_14); 
    for_iter_arg_34 = arith_addi_43; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
  int* async_group_44; 
  int async_group_index_45 = 0; 
  int for_iter_arg_47 = arith_const_12; 
  for (int for_iter_46 = arith_const_12; for_iter_46 < arith_const_13; for_iter_46 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_48); 
    #pragma peqc async_execute
    {
      double memref_load_49 = func_arg_9[for_iter_46]; 
      double memref_load_50 = func_arg_11[for_iter_46]; 
      double arith_addf_51 = (memref_load_49 + memref_load_50); 
      func_arg_9[for_iter_46] = arith_addf_51; 
      PAST_SET_SEMAPHORE(execute_token_48, PAST_TASK_FINISHED); 
    }
    async_group_44[async_group_index_45] = execute_token_48; 
    async_group_index_45++; 
    int arith_addi_52 = (for_iter_arg_47 + arith_const_14); 
    for_iter_arg_47 = arith_addi_52; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_44, async_group_index_45, PAST_TASK_FINISHED); 
  int* async_group_53; 
  int async_group_index_54 = 0; 
  int for_iter_arg_56 = arith_const_12; 
  for (int for_iter_55 = arith_const_12; for_iter_55 < arith_const_13; for_iter_55 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_57); 
    #pragma peqc async_execute
    {
      for (int for_iter_58 = arith_const_12; for_iter_58 < arith_const_13; for_iter_58 += arith_const_14) {
        double memref_load_59 = func_arg_8[for_iter_55]; 
        double memref_load_60 = func_arg_3[for_iter_55][for_iter_58]; 
        double arith_mulf_61 = (func_arg_1 * memref_load_60); 
        double memref_load_62 = func_arg_9[for_iter_58]; 
        double arith_mulf_63 = (arith_mulf_61 * memref_load_62); 
        double arith_addf_64 = (memref_load_59 + arith_mulf_63); 
        func_arg_8[for_iter_55] = arith_addf_64; 
      }
      PAST_SET_SEMAPHORE(execute_token_57, PAST_TASK_FINISHED); 
    }
    async_group_53[async_group_index_54] = execute_token_57; 
    async_group_index_54++; 
    int arith_addi_65 = (for_iter_arg_56 + arith_const_14); 
    for_iter_arg_56 = arith_addi_65; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_53, async_group_index_54, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;

#pragma peqc async_execute
{
  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);
}
}

#pragma pocc-region-end
