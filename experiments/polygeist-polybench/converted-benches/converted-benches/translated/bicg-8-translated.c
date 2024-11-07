#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
      int* async_group_23; 
      int async_group_index_24 = 0; 
      int for_iter_arg_26 = arith_const_11; 
      for (int for_iter_25 = arith_muli_19; for_iter_25 < arith_minsi_22; for_iter_25 += arith_const_13) {
        PAST_NEW_SEMAPHORE(execute_token_27); 
        #pragma peqc async_execute
        {
          func_arg_4[for_iter_25] = arith_const_10; 
          PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
        }
        async_group_23[async_group_index_24] = execute_token_27; 
        async_group_index_24++; 
        int arith_addi_28 = (for_iter_arg_26 + arith_const_13); 
        for_iter_arg_26 = arith_addi_28; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
    }
    async_group_14[async_group_index_15] = execute_token_18; 
    async_group_index_15++; 
    int arith_addi_29 = (for_iter_arg_17 + arith_const_13); 
    for_iter_arg_17 = arith_addi_29; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  int* async_group_30; 
  int async_group_index_31 = 0; 
  int for_iter_arg_33 = arith_const_11; 
  for (int for_iter_32 = arith_const_11; for_iter_32 < arith_const_12; for_iter_32 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_34); 
    #pragma peqc async_execute
    {
      for (int for_iter_35 = arith_const_11; for_iter_35 < arith_const_12; for_iter_35 += arith_const_13) {
        int arith_muli_36 = (for_iter_32 * arith_const_9); 
        int arith_muli_37 = (for_iter_32 * arith_const_9); 
        int arith_addi_38 = (arith_muli_37 + arith_const_9); 
        int arith_minsi_39 = min(arith_addi_38, arith_const_8); 
        int* async_group_40; 
        int async_group_index_41 = 0; 
        int for_iter_arg_43 = arith_const_11; 
        for (int for_iter_42 = arith_muli_36; for_iter_42 < arith_minsi_39; for_iter_42 += arith_const_13) {
          PAST_NEW_SEMAPHORE(execute_token_44); 
          #pragma peqc async_execute
          {
            int arith_muli_45 = (for_iter_35 * arith_const_9); 
            int arith_muli_46 = (for_iter_35 * arith_const_9); 
            int arith_addi_47 = (arith_muli_46 + arith_const_9); 
            int arith_minsi_48 = min(arith_addi_47, arith_const_7); 
            for (int for_iter_49 = arith_muli_45; for_iter_49 < arith_minsi_48; for_iter_49 += arith_const_13) {
              double memref_load_50 = func_arg_4[for_iter_42]; 
              double memref_load_51 = func_arg_2[for_iter_42][for_iter_49]; 
              double memref_load_52 = func_arg_5[for_iter_49]; 
              double arith_mulf_53 = (memref_load_51 * memref_load_52); 
              double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
              func_arg_4[for_iter_42] = arith_addf_54; 
            }
            PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
          }
          async_group_40[async_group_index_41] = execute_token_44; 
          async_group_index_41++; 
          int arith_addi_55 = (for_iter_arg_43 + arith_const_13); 
          for_iter_arg_43 = arith_addi_55; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_40, async_group_index_41, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_34, PAST_TASK_FINISHED); 
    }
    async_group_30[async_group_index_31] = execute_token_34; 
    async_group_index_31++; 
    int arith_addi_56 = (for_iter_arg_33 + arith_const_13); 
    for_iter_arg_33 = arith_addi_56; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_30, async_group_index_31, PAST_TASK_FINISHED); 
  int* async_group_57; 
  int async_group_index_58 = 0; 
  int for_iter_arg_60 = arith_const_11; 
  for (int for_iter_59 = arith_const_11; for_iter_59 < arith_const_12; for_iter_59 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_61); 
    #pragma peqc async_execute
    {
      int arith_muli_62 = (for_iter_59 * arith_const_9); 
      int arith_muli_63 = (for_iter_59 * arith_const_9); 
      int arith_addi_64 = (arith_muli_63 + arith_const_9); 
      int arith_minsi_65 = min(arith_addi_64, arith_const_7); 
      int* async_group_66; 
      int async_group_index_67 = 0; 
      int for_iter_arg_69 = arith_const_11; 
      for (int for_iter_68 = arith_muli_62; for_iter_68 < arith_minsi_65; for_iter_68 += arith_const_13) {
        PAST_NEW_SEMAPHORE(execute_token_70); 
        #pragma peqc async_execute
        {
          func_arg_3[for_iter_68] = arith_const_10; 
          PAST_SET_SEMAPHORE(execute_token_70, PAST_TASK_FINISHED); 
        }
        async_group_66[async_group_index_67] = execute_token_70; 
        async_group_index_67++; 
        int arith_addi_71 = (for_iter_arg_69 + arith_const_13); 
        for_iter_arg_69 = arith_addi_71; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_66, async_group_index_67, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_61, PAST_TASK_FINISHED); 
    }
    async_group_57[async_group_index_58] = execute_token_61; 
    async_group_index_58++; 
    int arith_addi_72 = (for_iter_arg_60 + arith_const_13); 
    for_iter_arg_60 = arith_addi_72; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_57, async_group_index_58, PAST_TASK_FINISHED); 
  int* async_group_73; 
  int async_group_index_74 = 0; 
  int for_iter_arg_76 = arith_const_11; 
  for (int for_iter_75 = arith_const_11; for_iter_75 < arith_const_12; for_iter_75 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_77); 
    #pragma peqc async_execute
    {
      for (int for_iter_78 = arith_const_11; for_iter_78 < arith_const_12; for_iter_78 += arith_const_13) {
        int arith_muli_79 = (for_iter_78 * arith_const_9); 
        int arith_muli_80 = (for_iter_78 * arith_const_9); 
        int arith_addi_81 = (arith_muli_80 + arith_const_9); 
        int arith_minsi_82 = min(arith_addi_81, arith_const_8); 
        for (int for_iter_83 = arith_muli_79; for_iter_83 < arith_minsi_82; for_iter_83 += arith_const_13) {
          int arith_muli_84 = (for_iter_75 * arith_const_9); 
          int arith_muli_85 = (for_iter_75 * arith_const_9); 
          int arith_addi_86 = (arith_muli_85 + arith_const_9); 
          int arith_minsi_87 = min(arith_addi_86, arith_const_7); 
          int* async_group_88; 
          int async_group_index_89 = 0; 
          int for_iter_arg_91 = arith_const_11; 
          for (int for_iter_90 = arith_muli_84; for_iter_90 < arith_minsi_87; for_iter_90 += arith_const_13) {
            PAST_NEW_SEMAPHORE(execute_token_92); 
            #pragma peqc async_execute
            {
              double memref_load_93 = func_arg_3[for_iter_90]; 
              double memref_load_94 = func_arg_6[for_iter_83]; 
              double memref_load_95 = func_arg_2[for_iter_83][for_iter_90]; 
              double arith_mulf_96 = (memref_load_94 * memref_load_95); 
              double arith_addf_97 = (memref_load_93 + arith_mulf_96); 
              func_arg_3[for_iter_90] = arith_addf_97; 
              PAST_SET_SEMAPHORE(execute_token_92, PAST_TASK_FINISHED); 
            }
            async_group_88[async_group_index_89] = execute_token_92; 
            async_group_index_89++; 
            int arith_addi_98 = (for_iter_arg_91 + arith_const_13); 
            for_iter_arg_91 = arith_addi_98; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_88, async_group_index_89, PAST_TASK_FINISHED); 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_77, PAST_TASK_FINISHED); 
    }
    async_group_73[async_group_index_74] = execute_token_77; 
    async_group_index_74++; 
    int arith_addi_99 = (for_iter_arg_76 + arith_const_13); 
    for_iter_arg_76 = arith_addi_99; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_73, async_group_index_74, PAST_TASK_FINISHED); 
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
