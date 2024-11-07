#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 42; 
  int arith_const_13 = 40; 
  int arith_const_14 = 32; 
  int arith_const_15 = 0; 
  int arith_const_16 = 2; 
  int arith_const_17 = 1; 
  int* async_group_18; 
  int async_group_index_19 = 0; 
  int for_iter_arg_21 = arith_const_15; 
  for (int for_iter_20 = arith_const_15; for_iter_20 < arith_const_16; for_iter_20 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_22); 
    #pragma peqc async_execute
    {
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_16; for_iter_23 += arith_const_17) {
        int arith_muli_24 = (for_iter_23 * arith_const_14); 
        int arith_muli_25 = (for_iter_23 * arith_const_14); 
        int arith_addi_26 = (arith_muli_25 + arith_const_14); 
        int arith_minsi_27 = min(arith_addi_26, arith_const_13); 
        for (int for_iter_28 = arith_muli_24; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_17) {
          int arith_muli_29 = (for_iter_20 * arith_const_14); 
          int arith_muli_30 = (for_iter_20 * arith_const_14); 
          int arith_addi_31 = (arith_muli_30 + arith_const_14); 
          int arith_minsi_32 = min(arith_addi_31, arith_const_13); 
          int* async_group_33; 
          int async_group_index_34 = 0; 
          int for_iter_arg_36 = arith_const_15; 
          for (int for_iter_35 = arith_muli_29; for_iter_35 < arith_minsi_32; for_iter_35 += arith_const_17) {
            PAST_NEW_SEMAPHORE(execute_token_37); 
            #pragma peqc async_execute
            {
              double memref_load_38 = func_arg_3[for_iter_28][for_iter_35]; 
              double memref_load_39 = func_arg_4[for_iter_28]; 
              double memref_load_40 = func_arg_5[for_iter_35]; 
              double arith_mulf_41 = (memref_load_39 * memref_load_40); 
              double arith_addf_42 = (memref_load_38 + arith_mulf_41); 
              double memref_load_43 = func_arg_6[for_iter_28]; 
              double memref_load_44 = func_arg_7[for_iter_35]; 
              double arith_mulf_45 = (memref_load_43 * memref_load_44); 
              double arith_addf_46 = (arith_addf_42 + arith_mulf_45); 
              func_arg_3[for_iter_28][for_iter_35] = arith_addf_46; 
              double memref_load_47 = func_arg_9[for_iter_35]; 
              double memref_load_48 = func_arg_3[for_iter_28][for_iter_35]; 
              double arith_mulf_49 = (func_arg_2 * memref_load_48); 
              double memref_load_50 = func_arg_10[for_iter_28]; 
              double arith_mulf_51 = (arith_mulf_49 * memref_load_50); 
              double arith_addf_52 = (memref_load_47 + arith_mulf_51); 
              func_arg_9[for_iter_35] = arith_addf_52; 
              PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
            }
            async_group_33[async_group_index_34] = execute_token_37; 
            async_group_index_34++; 
            int arith_addi_53 = (for_iter_arg_36 + arith_const_17); 
            for_iter_arg_36 = arith_addi_53; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_54 = (for_iter_arg_21 + arith_const_17); 
    for_iter_arg_21 = arith_addi_54; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  int* async_group_55; 
  int async_group_index_56 = 0; 
  int for_iter_arg_58 = arith_const_15; 
  for (int for_iter_57 = arith_const_15; for_iter_57 < arith_const_16; for_iter_57 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_59); 
    #pragma peqc async_execute
    {
      int arith_muli_60 = (for_iter_57 * arith_const_14); 
      int arith_muli_61 = (for_iter_57 * arith_const_14); 
      int arith_addi_62 = (arith_muli_61 + arith_const_14); 
      int arith_minsi_63 = min(arith_addi_62, arith_const_13); 
      int* async_group_64; 
      int async_group_index_65 = 0; 
      int for_iter_arg_67 = arith_const_15; 
      for (int for_iter_66 = arith_muli_60; for_iter_66 < arith_minsi_63; for_iter_66 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_68); 
        #pragma peqc async_execute
        {
          double memref_load_69 = func_arg_9[for_iter_66]; 
          double memref_load_70 = func_arg_11[for_iter_66]; 
          double arith_addf_71 = (memref_load_69 + memref_load_70); 
          func_arg_9[for_iter_66] = arith_addf_71; 
          PAST_SET_SEMAPHORE(execute_token_68, PAST_TASK_FINISHED); 
        }
        async_group_64[async_group_index_65] = execute_token_68; 
        async_group_index_65++; 
        int arith_addi_72 = (for_iter_arg_67 + arith_const_17); 
        for_iter_arg_67 = arith_addi_72; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_64, async_group_index_65, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_59, PAST_TASK_FINISHED); 
    }
    async_group_55[async_group_index_56] = execute_token_59; 
    async_group_index_56++; 
    int arith_addi_73 = (for_iter_arg_58 + arith_const_17); 
    for_iter_arg_58 = arith_addi_73; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_55, async_group_index_56, PAST_TASK_FINISHED); 
  int* async_group_74; 
  int async_group_index_75 = 0; 
  int for_iter_arg_77 = arith_const_15; 
  for (int for_iter_76 = arith_const_15; for_iter_76 < arith_const_16; for_iter_76 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_78); 
    #pragma peqc async_execute
    {
      for (int for_iter_79 = arith_const_15; for_iter_79 < arith_const_16; for_iter_79 += arith_const_17) {
        int arith_muli_80 = (for_iter_76 * arith_const_14); 
        int arith_muli_81 = (for_iter_76 * arith_const_14); 
        int arith_addi_82 = (arith_muli_81 + arith_const_14); 
        int arith_minsi_83 = min(arith_addi_82, arith_const_13); 
        int* async_group_84; 
        int async_group_index_85 = 0; 
        int for_iter_arg_87 = arith_const_15; 
        for (int for_iter_86 = arith_muli_80; for_iter_86 < arith_minsi_83; for_iter_86 += arith_const_17) {
          PAST_NEW_SEMAPHORE(execute_token_88); 
          #pragma peqc async_execute
          {
            int arith_muli_89 = (for_iter_79 * arith_const_14); 
            int arith_muli_90 = (for_iter_79 * arith_const_14); 
            int arith_addi_91 = (arith_muli_90 + arith_const_14); 
            int arith_minsi_92 = min(arith_addi_91, arith_const_13); 
            for (int for_iter_93 = arith_muli_89; for_iter_93 < arith_minsi_92; for_iter_93 += arith_const_17) {
              double memref_load_94 = func_arg_8[for_iter_86]; 
              double memref_load_95 = func_arg_3[for_iter_86][for_iter_93]; 
              double arith_mulf_96 = (func_arg_1 * memref_load_95); 
              double memref_load_97 = func_arg_9[for_iter_93]; 
              double arith_mulf_98 = (arith_mulf_96 * memref_load_97); 
              double arith_addf_99 = (memref_load_94 + arith_mulf_98); 
              func_arg_8[for_iter_86] = arith_addf_99; 
            }
            PAST_SET_SEMAPHORE(execute_token_88, PAST_TASK_FINISHED); 
          }
          async_group_84[async_group_index_85] = execute_token_88; 
          async_group_index_85++; 
          int arith_addi_100 = (for_iter_arg_87 + arith_const_17); 
          for_iter_arg_87 = arith_addi_100; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_84, async_group_index_85, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_78, PAST_TASK_FINISHED); 
    }
    async_group_74[async_group_index_75] = execute_token_78; 
    async_group_index_75++; 
    int arith_addi_101 = (for_iter_arg_77 + arith_const_17); 
    for_iter_arg_77 = arith_addi_101; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_74, async_group_index_75, PAST_TASK_FINISHED); 
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
