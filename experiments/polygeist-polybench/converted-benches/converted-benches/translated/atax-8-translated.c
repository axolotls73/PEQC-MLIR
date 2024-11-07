#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 38; 
  int arith_const_8 = 32; 
  double arith_const_9 = 0.000000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 2; 
  int arith_const_12 = 1; 
  int* async_group_13; 
  int async_group_index_14 = 0; 
  int for_iter_arg_16 = arith_const_10; 
  for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_11; for_iter_15 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_17); 
    #pragma peqc async_execute
    {
      int arith_muli_18 = (for_iter_15 * arith_const_8); 
      int arith_muli_19 = (for_iter_15 * arith_const_8); 
      int arith_addi_20 = (arith_muli_19 + arith_const_8); 
      int arith_minsi_21 = min(arith_addi_20, arith_const_7); 
      int* async_group_22; 
      int async_group_index_23 = 0; 
      int for_iter_arg_25 = arith_const_10; 
      for (int for_iter_24 = arith_muli_18; for_iter_24 < arith_minsi_21; for_iter_24 += arith_const_12) {
        PAST_NEW_SEMAPHORE(execute_token_26); 
        #pragma peqc async_execute
        {
          func_arg_5[for_iter_24] = arith_const_9; 
          PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_26; 
        async_group_index_23++; 
        int arith_addi_27 = (for_iter_arg_25 + arith_const_12); 
        for_iter_arg_25 = arith_addi_27; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_17, PAST_TASK_FINISHED); 
    }
    async_group_13[async_group_index_14] = execute_token_17; 
    async_group_index_14++; 
    int arith_addi_28 = (for_iter_arg_16 + arith_const_12); 
    for_iter_arg_16 = arith_addi_28; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_13, async_group_index_14, PAST_TASK_FINISHED); 
  int* async_group_29; 
  int async_group_index_30 = 0; 
  int for_iter_arg_32 = arith_const_10; 
  for (int for_iter_31 = arith_const_10; for_iter_31 < arith_const_11; for_iter_31 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_33); 
    #pragma peqc async_execute
    {
      for (int for_iter_34 = arith_const_10; for_iter_34 < arith_const_11; for_iter_34 += arith_const_12) {
        int arith_muli_35 = (for_iter_31 * arith_const_8); 
        int arith_muli_36 = (for_iter_31 * arith_const_8); 
        int arith_addi_37 = (arith_muli_36 + arith_const_8); 
        int arith_minsi_38 = min(arith_addi_37, arith_const_7); 
        int* async_group_39; 
        int async_group_index_40 = 0; 
        int for_iter_arg_42 = arith_const_10; 
        for (int for_iter_41 = arith_muli_35; for_iter_41 < arith_minsi_38; for_iter_41 += arith_const_12) {
          PAST_NEW_SEMAPHORE(execute_token_43); 
          #pragma peqc async_execute
          {
            int arith_muli_44 = (for_iter_34 * arith_const_8); 
            int arith_muli_45 = (for_iter_34 * arith_const_8); 
            int arith_addi_46 = (arith_muli_45 + arith_const_8); 
            int arith_minsi_47 = min(arith_addi_46, arith_const_6); 
            for (int for_iter_48 = arith_muli_44; for_iter_48 < arith_minsi_47; for_iter_48 += arith_const_12) {
              double memref_load_49 = func_arg_5[for_iter_41]; 
              double memref_load_50 = func_arg_2[for_iter_41][for_iter_48]; 
              double memref_load_51 = func_arg_3[for_iter_48]; 
              double arith_mulf_52 = (memref_load_50 * memref_load_51); 
              double arith_addf_53 = (memref_load_49 + arith_mulf_52); 
              func_arg_5[for_iter_41] = arith_addf_53; 
            }
            PAST_SET_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
          }
          async_group_39[async_group_index_40] = execute_token_43; 
          async_group_index_40++; 
          int arith_addi_54 = (for_iter_arg_42 + arith_const_12); 
          for_iter_arg_42 = arith_addi_54; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_39, async_group_index_40, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
    }
    async_group_29[async_group_index_30] = execute_token_33; 
    async_group_index_30++; 
    int arith_addi_55 = (for_iter_arg_32 + arith_const_12); 
    for_iter_arg_32 = arith_addi_55; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
  int* async_group_56; 
  int async_group_index_57 = 0; 
  int for_iter_arg_59 = arith_const_10; 
  for (int for_iter_58 = arith_const_10; for_iter_58 < arith_const_11; for_iter_58 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_60); 
    #pragma peqc async_execute
    {
      int arith_muli_61 = (for_iter_58 * arith_const_8); 
      int arith_muli_62 = (for_iter_58 * arith_const_8); 
      int arith_addi_63 = (arith_muli_62 + arith_const_8); 
      int arith_minsi_64 = min(arith_addi_63, arith_const_6); 
      int* async_group_65; 
      int async_group_index_66 = 0; 
      int for_iter_arg_68 = arith_const_10; 
      for (int for_iter_67 = arith_muli_61; for_iter_67 < arith_minsi_64; for_iter_67 += arith_const_12) {
        PAST_NEW_SEMAPHORE(execute_token_69); 
        #pragma peqc async_execute
        {
          func_arg_4[for_iter_67] = arith_const_9; 
          PAST_SET_SEMAPHORE(execute_token_69, PAST_TASK_FINISHED); 
        }
        async_group_65[async_group_index_66] = execute_token_69; 
        async_group_index_66++; 
        int arith_addi_70 = (for_iter_arg_68 + arith_const_12); 
        for_iter_arg_68 = arith_addi_70; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_65, async_group_index_66, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_60, PAST_TASK_FINISHED); 
    }
    async_group_56[async_group_index_57] = execute_token_60; 
    async_group_index_57++; 
    int arith_addi_71 = (for_iter_arg_59 + arith_const_12); 
    for_iter_arg_59 = arith_addi_71; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_56, async_group_index_57, PAST_TASK_FINISHED); 
  int* async_group_72; 
  int async_group_index_73 = 0; 
  int for_iter_arg_75 = arith_const_10; 
  for (int for_iter_74 = arith_const_10; for_iter_74 < arith_const_11; for_iter_74 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_76); 
    #pragma peqc async_execute
    {
      for (int for_iter_77 = arith_const_10; for_iter_77 < arith_const_11; for_iter_77 += arith_const_12) {
        int arith_muli_78 = (for_iter_77 * arith_const_8); 
        int arith_muli_79 = (for_iter_77 * arith_const_8); 
        int arith_addi_80 = (arith_muli_79 + arith_const_8); 
        int arith_minsi_81 = min(arith_addi_80, arith_const_7); 
        for (int for_iter_82 = arith_muli_78; for_iter_82 < arith_minsi_81; for_iter_82 += arith_const_12) {
          int arith_muli_83 = (for_iter_74 * arith_const_8); 
          int arith_muli_84 = (for_iter_74 * arith_const_8); 
          int arith_addi_85 = (arith_muli_84 + arith_const_8); 
          int arith_minsi_86 = min(arith_addi_85, arith_const_6); 
          int* async_group_87; 
          int async_group_index_88 = 0; 
          int for_iter_arg_90 = arith_const_10; 
          for (int for_iter_89 = arith_muli_83; for_iter_89 < arith_minsi_86; for_iter_89 += arith_const_12) {
            PAST_NEW_SEMAPHORE(execute_token_91); 
            #pragma peqc async_execute
            {
              double memref_load_92 = func_arg_4[for_iter_89]; 
              double memref_load_93 = func_arg_2[for_iter_82][for_iter_89]; 
              double memref_load_94 = func_arg_5[for_iter_82]; 
              double arith_mulf_95 = (memref_load_93 * memref_load_94); 
              double arith_addf_96 = (memref_load_92 + arith_mulf_95); 
              func_arg_4[for_iter_89] = arith_addf_96; 
              PAST_SET_SEMAPHORE(execute_token_91, PAST_TASK_FINISHED); 
            }
            async_group_87[async_group_index_88] = execute_token_91; 
            async_group_index_88++; 
            int arith_addi_97 = (for_iter_arg_90 + arith_const_12); 
            for_iter_arg_90 = arith_addi_97; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_87, async_group_index_88, PAST_TASK_FINISHED); 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_76, PAST_TASK_FINISHED); 
    }
    async_group_72[async_group_index_73] = execute_token_76; 
    async_group_index_73++; 
    int arith_addi_98 = (for_iter_arg_75 + arith_const_12); 
    for_iter_arg_75 = arith_addi_98; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_72, async_group_index_73, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int m;
  int n;
  double* A;
  double* x;
  double* y;
  double* tmp;

#pragma peqc async_execute
{
  kernel_atax(m, n, A, x, y, tmp);
}
}

#pragma pocc-region-end
