#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 38; 
  int arith_const_8 = 32; 
  int arith_const_9 = 42; 
  int arith_const_10 = -32; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 2; 
  int arith_const_14 = 1; 
  int* async_group_15; 
  int async_group_index_16 = 0; 
  int for_iter_arg_18 = arith_const_12; 
  for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_13; for_iter_17 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_19); 
    #pragma peqc async_execute
    {
      int arith_muli_20 = (for_iter_17 * arith_const_10); 
      int arith_addi_21 = (arith_muli_20 + arith_const_9); 
      int arith_minsi_22 = min(arith_addi_21, arith_const_8); 
      for (int for_iter_23 = arith_const_12; for_iter_23 < arith_minsi_22; for_iter_23 += arith_const_14) {
        int arith_muli_24 = (for_iter_17 * arith_const_8); 
        int arith_addi_25 = (arith_muli_24 + for_iter_23); 
        func_arg_4[arith_addi_25] = arith_const_11; 
      }
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
      for (int for_iter_32 = arith_const_12; for_iter_32 < arith_const_13; for_iter_32 += arith_const_14) {
        int arith_muli_33 = (for_iter_29 * arith_const_10); 
        int arith_addi_34 = (arith_muli_33 + arith_const_9); 
        int arith_minsi_35 = min(arith_addi_34, arith_const_8); 
        for (int for_iter_36 = arith_const_12; for_iter_36 < arith_minsi_35; for_iter_36 += arith_const_14) {
          int arith_muli_37 = (for_iter_29 * arith_const_8); 
          int arith_addi_38 = (arith_muli_37 + for_iter_36); 
          int arith_muli_39 = (for_iter_32 * arith_const_10); 
          int arith_addi_40 = (arith_muli_39 + arith_const_7); 
          int arith_minsi_41 = min(arith_addi_40, arith_const_8); 
          for (int for_iter_42 = arith_const_12; for_iter_42 < arith_minsi_41; for_iter_42 += arith_const_14) {
            int arith_muli_43 = (for_iter_32 * arith_const_8); 
            int arith_addi_44 = (arith_muli_43 + for_iter_42); 
            double memref_load_45 = func_arg_4[arith_addi_38]; 
            double memref_load_46 = func_arg_2[arith_addi_38][arith_addi_44]; 
            double memref_load_47 = func_arg_5[arith_addi_44]; 
            double arith_mulf_48 = (memref_load_46 * memref_load_47); 
            double arith_addf_49 = (memref_load_45 + arith_mulf_48); 
            func_arg_4[arith_addi_38] = arith_addf_49; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
    }
    async_group_27[async_group_index_28] = execute_token_31; 
    async_group_index_28++; 
    int arith_addi_50 = (for_iter_arg_30 + arith_const_14); 
    for_iter_arg_30 = arith_addi_50; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
  int* async_group_51; 
  int async_group_index_52 = 0; 
  int for_iter_arg_54 = arith_const_12; 
  for (int for_iter_53 = arith_const_12; for_iter_53 < arith_const_13; for_iter_53 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_55); 
    #pragma peqc async_execute
    {
      int arith_muli_56 = (for_iter_53 * arith_const_10); 
      int arith_addi_57 = (arith_muli_56 + arith_const_7); 
      int arith_minsi_58 = min(arith_addi_57, arith_const_8); 
      for (int for_iter_59 = arith_const_12; for_iter_59 < arith_minsi_58; for_iter_59 += arith_const_14) {
        int arith_muli_60 = (for_iter_53 * arith_const_8); 
        int arith_addi_61 = (arith_muli_60 + for_iter_59); 
        func_arg_3[arith_addi_61] = arith_const_11; 
      }
      PAST_SET_SEMAPHORE(execute_token_55, PAST_TASK_FINISHED); 
    }
    async_group_51[async_group_index_52] = execute_token_55; 
    async_group_index_52++; 
    int arith_addi_62 = (for_iter_arg_54 + arith_const_14); 
    for_iter_arg_54 = arith_addi_62; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_51, async_group_index_52, PAST_TASK_FINISHED); 
  int* async_group_63; 
  int async_group_index_64 = 0; 
  int for_iter_arg_66 = arith_const_12; 
  for (int for_iter_65 = arith_const_12; for_iter_65 < arith_const_13; for_iter_65 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_67); 
    #pragma peqc async_execute
    {
      for (int for_iter_68 = arith_const_12; for_iter_68 < arith_const_13; for_iter_68 += arith_const_14) {
        int arith_muli_69 = (for_iter_68 * arith_const_10); 
        int arith_addi_70 = (arith_muli_69 + arith_const_9); 
        int arith_minsi_71 = min(arith_addi_70, arith_const_8); 
        for (int for_iter_72 = arith_const_12; for_iter_72 < arith_minsi_71; for_iter_72 += arith_const_14) {
          int arith_muli_73 = (for_iter_68 * arith_const_8); 
          int arith_addi_74 = (arith_muli_73 + for_iter_72); 
          double memref_load_75 = func_arg_6[arith_addi_74]; 
          int arith_muli_76 = (for_iter_65 * arith_const_10); 
          int arith_addi_77 = (arith_muli_76 + arith_const_7); 
          int arith_minsi_78 = min(arith_addi_77, arith_const_8); 
          for (int for_iter_79 = arith_const_12; for_iter_79 < arith_minsi_78; for_iter_79 += arith_const_14) {
            int arith_muli_80 = (for_iter_65 * arith_const_8); 
            int arith_addi_81 = (arith_muli_80 + for_iter_79); 
            double memref_load_82 = func_arg_3[arith_addi_81]; 
            double memref_load_83 = func_arg_2[arith_addi_74][arith_addi_81]; 
            double arith_mulf_84 = (memref_load_75 * memref_load_83); 
            double arith_addf_85 = (memref_load_82 + arith_mulf_84); 
            func_arg_3[arith_addi_81] = arith_addf_85; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_67, PAST_TASK_FINISHED); 
    }
    async_group_63[async_group_index_64] = execute_token_67; 
    async_group_index_64++; 
    int arith_addi_86 = (for_iter_arg_66 + arith_const_14); 
    for_iter_arg_66 = arith_addi_86; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_63, async_group_index_64, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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
