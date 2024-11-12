#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 27; 
  int arith_const_8 = 32; 
  double arith_const_9 = 1.000000; 
  double arith_const_10 = 0.000000; 
  double arith_const_11 = 0.100000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 28; 
  int arith_const_14 = 1; 
  int* async_group_15; 
  int async_group_index_16 = 0; 
  int for_iter_arg_18 = arith_const_12; 
  for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_13; for_iter_17 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_19); 
    #pragma peqc async_execute
    {
      func_arg_5[for_iter_17] = arith_const_10; 
      for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_8; for_iter_20 += arith_const_14) {
        double memref_load_21 = func_arg_3[for_iter_20][for_iter_17]; 
        double memref_load_22 = func_arg_5[for_iter_17]; 
        double arith_addf_23 = (memref_load_22 + memref_load_21); 
        func_arg_5[for_iter_17] = arith_addf_23; 
      }
      double memref_load_24 = func_arg_5[for_iter_17]; 
      double arith_divf_25 = (memref_load_24 / func_arg_2); 
      func_arg_5[for_iter_17] = arith_divf_25; 
      PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
    }
    async_group_15[async_group_index_16] = execute_token_19; 
    async_group_index_16++; 
    int arith_addi_26 = (for_iter_arg_18 + arith_const_14); 
    for_iter_arg_18 = arith_addi_26; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  int* async_group_27; 
  int async_group_index_28 = 0; 
  int for_iter_arg_30 = arith_const_12; 
  for (int for_iter_29 = arith_const_12; for_iter_29 < arith_const_13; for_iter_29 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_31); 
    #pragma peqc async_execute
    {
      func_arg_6[for_iter_29] = arith_const_10; 
      for (int for_iter_32 = arith_const_12; for_iter_32 < arith_const_8; for_iter_32 += arith_const_14) {
        double memref_load_33 = func_arg_3[for_iter_32][for_iter_29]; 
        double memref_load_34 = func_arg_5[for_iter_29]; 
        double arith_subf_35 = (memref_load_33 - memref_load_34); 
        double arith_mulf_36 = (arith_subf_35 * arith_subf_35); 
        double memref_load_37 = func_arg_6[for_iter_29]; 
        double arith_addf_38 = (memref_load_37 + arith_mulf_36); 
        func_arg_6[for_iter_29] = arith_addf_38; 
      }
      double memref_load_39 = func_arg_6[for_iter_29]; 
      double arith_divf_40 = (memref_load_39 / func_arg_2); 
      double math_sqrt_41 = sqrt(arith_divf_40); 
      int arith_cmpi_42 = (math_sqrt_41 <= arith_const_11); 
      double arith_select_43 = (arith_cmpi_42 ? arith_const_9 : math_sqrt_41); 
      func_arg_6[for_iter_29] = arith_select_43; 
      PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
    }
    async_group_27[async_group_index_28] = execute_token_31; 
    async_group_index_28++; 
    int arith_addi_44 = (for_iter_arg_30 + arith_const_14); 
    for_iter_arg_30 = arith_addi_44; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
  double math_sqrt_45 = sqrt(func_arg_2); 
  int* async_group_46; 
  int async_group_index_47 = 0; 
  int for_iter_arg_49 = arith_const_12; 
  for (int for_iter_48 = arith_const_12; for_iter_48 < arith_const_8; for_iter_48 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_50); 
    #pragma peqc async_execute
    {
      for (int for_iter_51 = arith_const_12; for_iter_51 < arith_const_13; for_iter_51 += arith_const_14) {
        double memref_load_52 = func_arg_5[for_iter_51]; 
        double memref_load_53 = func_arg_3[for_iter_48][for_iter_51]; 
        double arith_subf_54 = (memref_load_53 - memref_load_52); 
        func_arg_3[for_iter_48][for_iter_51] = arith_subf_54; 
        double memref_load_55 = func_arg_6[for_iter_51]; 
        double arith_mulf_56 = (math_sqrt_45 * memref_load_55); 
        double arith_divf_57 = (arith_subf_54 / arith_mulf_56); 
        func_arg_3[for_iter_48][for_iter_51] = arith_divf_57; 
      }
      PAST_SET_SEMAPHORE(execute_token_50, PAST_TASK_FINISHED); 
    }
    async_group_46[async_group_index_47] = execute_token_50; 
    async_group_index_47++; 
    int arith_addi_58 = (for_iter_arg_49 + arith_const_14); 
    for_iter_arg_49 = arith_addi_58; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_46, async_group_index_47, PAST_TASK_FINISHED); 
  int* async_group_59; 
  int async_group_index_60 = 0; 
  int for_iter_arg_62 = arith_const_12; 
  for (int for_iter_61 = arith_const_12; for_iter_61 < arith_const_7; for_iter_61 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_63); 
    #pragma peqc async_execute
    {
      func_arg_4[for_iter_61][for_iter_61] = arith_const_9; 
      int arith_addi_64 = (for_iter_61 + arith_const_14); 
      for (int for_iter_65 = arith_addi_64; for_iter_65 < arith_const_13; for_iter_65 += arith_const_14) {
        func_arg_4[for_iter_61][for_iter_65] = arith_const_10; 
        for (int for_iter_66 = arith_const_12; for_iter_66 < arith_const_8; for_iter_66 += arith_const_14) {
          double memref_load_67 = func_arg_3[for_iter_66][for_iter_61]; 
          double memref_load_68 = func_arg_3[for_iter_66][for_iter_65]; 
          double arith_mulf_69 = (memref_load_67 * memref_load_68); 
          double memref_load_70 = func_arg_4[for_iter_61][for_iter_65]; 
          double arith_addf_71 = (memref_load_70 + arith_mulf_69); 
          func_arg_4[for_iter_61][for_iter_65] = arith_addf_71; 
        }
        double memref_load_72 = func_arg_4[for_iter_61][for_iter_65]; 
        func_arg_4[for_iter_65][for_iter_61] = memref_load_72; 
      }
      PAST_SET_SEMAPHORE(execute_token_63, PAST_TASK_FINISHED); 
    }
    async_group_59[async_group_index_60] = execute_token_63; 
    async_group_index_60++; 
    int arith_addi_73 = (for_iter_arg_62 + arith_const_14); 
    for_iter_arg_62 = arith_addi_73; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_59, async_group_index_60, PAST_TASK_FINISHED); 
  func_arg_4[arith_const_7][arith_const_7] = arith_const_9; 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* corr;
  double* mean;
  double* stddev;

#pragma peqc async_execute
{
  kernel_correlation(m, n, float_n, data, corr, mean, stddev);
}
}

#pragma pocc-region-end
