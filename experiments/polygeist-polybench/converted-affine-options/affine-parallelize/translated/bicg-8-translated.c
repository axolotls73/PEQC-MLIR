#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 38; 
  int arith_const_8 = 42; 
  int arith_const_9 = 32; 
  double arith_const_10 = 0.000000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 2; 
  int arith_const_13 = 1; 
  int* async_group_14; 
  int async_group_index_15 = 0; 
  int for_iter_arg_17 = arith_const_11; 
  for (int for_iter_16 = arith_const_11; for_iter_16 < arith_const_12; for_iter_16 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_18); 
    #pragma peqc async_execute
    {
      int arith_muli_19 = (for_iter_16 * arith_const_9); 
      int arith_muli_20 = (for_iter_16 * arith_const_9); 
      int arith_addi_21 = (arith_muli_20 + arith_const_9); 
      int arith_minsi_22 = min(arith_addi_21, arith_const_8); 
      for (int for_iter_23 = arith_muli_19; for_iter_23 < arith_minsi_22; for_iter_23 += arith_const_13) {
        func_arg_4[for_iter_23] = arith_const_10; 
      }
      PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
    }
    async_group_14[async_group_index_15] = execute_token_18; 
    async_group_index_15++; 
    int arith_addi_24 = (for_iter_arg_17 + arith_const_13); 
    for_iter_arg_17 = arith_addi_24; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  int* async_group_25; 
  int async_group_index_26 = 0; 
  int for_iter_arg_28 = arith_const_11; 
  for (int for_iter_27 = arith_const_11; for_iter_27 < arith_const_12; for_iter_27 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_29); 
    #pragma peqc async_execute
    {
      for (int for_iter_30 = arith_const_11; for_iter_30 < arith_const_12; for_iter_30 += arith_const_13) {
        int arith_muli_31 = (for_iter_27 * arith_const_9); 
        int arith_muli_32 = (for_iter_27 * arith_const_9); 
        int arith_addi_33 = (arith_muli_32 + arith_const_9); 
        int arith_minsi_34 = min(arith_addi_33, arith_const_8); 
        for (int for_iter_35 = arith_muli_31; for_iter_35 < arith_minsi_34; for_iter_35 += arith_const_13) {
          int arith_muli_36 = (for_iter_30 * arith_const_9); 
          int arith_muli_37 = (for_iter_30 * arith_const_9); 
          int arith_addi_38 = (arith_muli_37 + arith_const_9); 
          int arith_minsi_39 = min(arith_addi_38, arith_const_7); 
          for (int for_iter_40 = arith_muli_36; for_iter_40 < arith_minsi_39; for_iter_40 += arith_const_13) {
            double memref_load_41 = func_arg_4[for_iter_35]; 
            double memref_load_42 = func_arg_2[for_iter_35][for_iter_40]; 
            double memref_load_43 = func_arg_5[for_iter_40]; 
            double arith_mulf_44 = (memref_load_42 * memref_load_43); 
            double arith_addf_45 = (memref_load_41 + arith_mulf_44); 
            func_arg_4[for_iter_35] = arith_addf_45; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_29, PAST_TASK_FINISHED); 
    }
    async_group_25[async_group_index_26] = execute_token_29; 
    async_group_index_26++; 
    int arith_addi_46 = (for_iter_arg_28 + arith_const_13); 
    for_iter_arg_28 = arith_addi_46; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_25, async_group_index_26, PAST_TASK_FINISHED); 
  int* async_group_47; 
  int async_group_index_48 = 0; 
  int for_iter_arg_50 = arith_const_11; 
  for (int for_iter_49 = arith_const_11; for_iter_49 < arith_const_12; for_iter_49 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_51); 
    #pragma peqc async_execute
    {
      int arith_muli_52 = (for_iter_49 * arith_const_9); 
      int arith_muli_53 = (for_iter_49 * arith_const_9); 
      int arith_addi_54 = (arith_muli_53 + arith_const_9); 
      int arith_minsi_55 = min(arith_addi_54, arith_const_7); 
      for (int for_iter_56 = arith_muli_52; for_iter_56 < arith_minsi_55; for_iter_56 += arith_const_13) {
        func_arg_3[for_iter_56] = arith_const_10; 
      }
      PAST_SET_SEMAPHORE(execute_token_51, PAST_TASK_FINISHED); 
    }
    async_group_47[async_group_index_48] = execute_token_51; 
    async_group_index_48++; 
    int arith_addi_57 = (for_iter_arg_50 + arith_const_13); 
    for_iter_arg_50 = arith_addi_57; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_47, async_group_index_48, PAST_TASK_FINISHED); 
  int* async_group_58; 
  int async_group_index_59 = 0; 
  int for_iter_arg_61 = arith_const_11; 
  for (int for_iter_60 = arith_const_11; for_iter_60 < arith_const_12; for_iter_60 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_62); 
    #pragma peqc async_execute
    {
      for (int for_iter_63 = arith_const_11; for_iter_63 < arith_const_12; for_iter_63 += arith_const_13) {
        int arith_muli_64 = (for_iter_63 * arith_const_9); 
        int arith_muli_65 = (for_iter_63 * arith_const_9); 
        int arith_addi_66 = (arith_muli_65 + arith_const_9); 
        int arith_minsi_67 = min(arith_addi_66, arith_const_8); 
        for (int for_iter_68 = arith_muli_64; for_iter_68 < arith_minsi_67; for_iter_68 += arith_const_13) {
          int arith_muli_69 = (for_iter_60 * arith_const_9); 
          int arith_muli_70 = (for_iter_60 * arith_const_9); 
          int arith_addi_71 = (arith_muli_70 + arith_const_9); 
          int arith_minsi_72 = min(arith_addi_71, arith_const_7); 
          for (int for_iter_73 = arith_muli_69; for_iter_73 < arith_minsi_72; for_iter_73 += arith_const_13) {
            double memref_load_74 = func_arg_3[for_iter_73]; 
            double memref_load_75 = func_arg_6[for_iter_68]; 
            double memref_load_76 = func_arg_2[for_iter_68][for_iter_73]; 
            double arith_mulf_77 = (memref_load_75 * memref_load_76); 
            double arith_addf_78 = (memref_load_74 + arith_mulf_77); 
            func_arg_3[for_iter_73] = arith_addf_78; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_62, PAST_TASK_FINISHED); 
    }
    async_group_58[async_group_index_59] = execute_token_62; 
    async_group_index_59++; 
    int arith_addi_79 = (for_iter_arg_61 + arith_const_13); 
    for_iter_arg_61 = arith_addi_79; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_58, async_group_index_59, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* s;
  double* q;
  double* p;
  double* r;

#pragma peqc async_execute
{
  kernel_bicg(m, n, A, s, q, p, r);
}
}

#pragma pocc-region-end
