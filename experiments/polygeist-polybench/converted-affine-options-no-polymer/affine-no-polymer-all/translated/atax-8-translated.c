#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  int arith_const_7 = -32; 
  int arith_const_8 = 40; 
  int arith_const_9 = 32; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = 4; 
  int arith_const_13 = 10; 
  int arith_const_14 = 128; 
  double arith_const_15 = 0.000000; 
  int arith_const_16 = 0; 
  int arith_const_17 = 1; 
  int* async_group_18; 
  int async_group_index_19 = 0; 
  int for_iter_arg_21 = arith_const_16; 
  for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_17; for_iter_20 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_22); 
    #pragma peqc async_execute
    {
      int arith_muli_23 = (for_iter_20 * arith_const_14); 
      for (int for_iter_24 = arith_const_16; for_iter_24 < arith_const_13; for_iter_24 += arith_const_17) {
        int arith_muli_25 = (for_iter_24 * arith_const_12); 
        int arith_addi_26 = (arith_muli_23 + arith_muli_25); 
        func_arg_4[arith_addi_26] = arith_const_15; 
        int arith_addi_27 = (arith_addi_26 + arith_const_17); 
        func_arg_4[arith_addi_27] = arith_const_15; 
        int arith_addi_28 = (arith_addi_26 + arith_const_11); 
        func_arg_4[arith_addi_28] = arith_const_15; 
        int arith_addi_29 = (arith_addi_26 + arith_const_10); 
        func_arg_4[arith_addi_29] = arith_const_15; 
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_30 = (for_iter_arg_21 + arith_const_17); 
    for_iter_arg_21 = arith_addi_30; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  int* async_group_31; 
  int async_group_index_32 = 0; 
  int for_iter_arg_34 = arith_const_16; 
  for (int for_iter_33 = arith_const_16; for_iter_33 < arith_const_17; for_iter_33 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_35); 
    #pragma peqc async_execute
    {
      int arith_muli_36 = (for_iter_33 * arith_const_9); 
      int arith_addi_37 = (arith_muli_36 + arith_const_8); 
      for (int for_iter_38 = arith_const_16; for_iter_38 < arith_const_11; for_iter_38 += arith_const_17) {
        int arith_addi_39 = (arith_addi_37 + for_iter_38); 
        func_arg_4[arith_addi_39] = arith_const_15; 
      }
      PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
    }
    async_group_31[async_group_index_32] = execute_token_35; 
    async_group_index_32++; 
    int arith_addi_40 = (for_iter_arg_34 + arith_const_17); 
    for_iter_arg_34 = arith_addi_40; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
  for (int for_iter_41 = arith_const_16; for_iter_41 < arith_const_11; for_iter_41 += arith_const_17) {
    int arith_muli_42 = (for_iter_41 * arith_const_9); 
    int arith_muli_43 = (for_iter_41 * arith_const_7); 
    int arith_addi_44 = (arith_muli_43 + arith_const_6); 
    int arith_minsi_45 = min(arith_addi_44, arith_const_9); 
    for (int for_iter_46 = arith_const_16; for_iter_46 < arith_minsi_45; for_iter_46 += arith_const_17) {
      int arith_addi_47 = (arith_muli_42 + for_iter_46); 
      func_arg_5[arith_addi_47] = arith_const_15; 
      for (int for_iter_48 = arith_const_16; for_iter_48 < arith_const_13; for_iter_48 += arith_const_17) {
        int arith_muli_49 = (for_iter_48 * arith_const_12); 
        double memref_load_50 = func_arg_5[arith_addi_47]; 
        double memref_load_51 = func_arg_2[arith_addi_47][arith_muli_49]; 
        double memref_load_52 = func_arg_3[arith_muli_49]; 
        double arith_mulf_53 = (memref_load_51 * memref_load_52); 
        double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
        func_arg_5[arith_addi_47] = arith_addf_54; 
        int arith_addi_55 = (arith_muli_49 + arith_const_17); 
        double memref_load_56 = func_arg_5[arith_addi_47]; 
        double memref_load_57 = func_arg_2[arith_addi_47][arith_addi_55]; 
        double memref_load_58 = func_arg_3[arith_addi_55]; 
        double arith_mulf_59 = (memref_load_57 * memref_load_58); 
        double arith_addf_60 = (memref_load_56 + arith_mulf_59); 
        func_arg_5[arith_addi_47] = arith_addf_60; 
        int arith_addi_61 = (arith_muli_49 + arith_const_11); 
        double memref_load_62 = func_arg_5[arith_addi_47]; 
        double memref_load_63 = func_arg_2[arith_addi_47][arith_addi_61]; 
        double memref_load_64 = func_arg_3[arith_addi_61]; 
        double arith_mulf_65 = (memref_load_63 * memref_load_64); 
        double arith_addf_66 = (memref_load_62 + arith_mulf_65); 
        func_arg_5[arith_addi_47] = arith_addf_66; 
        int arith_addi_67 = (arith_muli_49 + arith_const_10); 
        double memref_load_68 = func_arg_5[arith_addi_47]; 
        double memref_load_69 = func_arg_2[arith_addi_47][arith_addi_67]; 
        double memref_load_70 = func_arg_3[arith_addi_67]; 
        double arith_mulf_71 = (memref_load_69 * memref_load_70); 
        double arith_addf_72 = (memref_load_68 + arith_mulf_71); 
        func_arg_5[arith_addi_47] = arith_addf_72; 
      }
      for (int for_iter_73 = arith_const_16; for_iter_73 < arith_const_11; for_iter_73 += arith_const_17) {
        int arith_addi_74 = (for_iter_73 + arith_const_8); 
        double memref_load_75 = func_arg_5[arith_addi_47]; 
        double memref_load_76 = func_arg_2[arith_addi_47][arith_addi_74]; 
        double memref_load_77 = func_arg_3[arith_addi_74]; 
        double arith_mulf_78 = (memref_load_76 * memref_load_77); 
        double arith_addf_79 = (memref_load_75 + arith_mulf_78); 
        func_arg_5[arith_addi_47] = arith_addf_79; 
      }
      int* async_group_80; 
      int async_group_index_81 = 0; 
      int for_iter_arg_83 = arith_const_16; 
      for (int for_iter_82 = arith_const_16; for_iter_82 < arith_const_13; for_iter_82 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_84); 
        #pragma peqc async_execute
        {
          int arith_muli_85 = (for_iter_82 * arith_const_12); 
          double memref_load_86 = func_arg_4[arith_muli_85]; 
          double memref_load_87 = func_arg_2[arith_addi_47][arith_muli_85]; 
          double memref_load_88 = func_arg_5[arith_addi_47]; 
          double arith_mulf_89 = (memref_load_87 * memref_load_88); 
          double arith_addf_90 = (memref_load_86 + arith_mulf_89); 
          func_arg_4[arith_muli_85] = arith_addf_90; 
          int arith_addi_91 = (arith_muli_85 + arith_const_17); 
          double memref_load_92 = func_arg_4[arith_addi_91]; 
          double memref_load_93 = func_arg_2[arith_addi_47][arith_addi_91]; 
          double memref_load_94 = func_arg_5[arith_addi_47]; 
          double arith_mulf_95 = (memref_load_93 * memref_load_94); 
          double arith_addf_96 = (memref_load_92 + arith_mulf_95); 
          func_arg_4[arith_addi_91] = arith_addf_96; 
          int arith_addi_97 = (arith_muli_85 + arith_const_11); 
          double memref_load_98 = func_arg_4[arith_addi_97]; 
          double memref_load_99 = func_arg_2[arith_addi_47][arith_addi_97]; 
          double memref_load_100 = func_arg_5[arith_addi_47]; 
          double arith_mulf_101 = (memref_load_99 * memref_load_100); 
          double arith_addf_102 = (memref_load_98 + arith_mulf_101); 
          func_arg_4[arith_addi_97] = arith_addf_102; 
          int arith_addi_103 = (arith_muli_85 + arith_const_10); 
          double memref_load_104 = func_arg_4[arith_addi_103]; 
          double memref_load_105 = func_arg_2[arith_addi_47][arith_addi_103]; 
          double memref_load_106 = func_arg_5[arith_addi_47]; 
          double arith_mulf_107 = (memref_load_105 * memref_load_106); 
          double arith_addf_108 = (memref_load_104 + arith_mulf_107); 
          func_arg_4[arith_addi_103] = arith_addf_108; 
          PAST_SET_SEMAPHORE(execute_token_84, PAST_TASK_FINISHED); 
        }
        async_group_80[async_group_index_81] = execute_token_84; 
        async_group_index_81++; 
        int arith_addi_109 = (for_iter_arg_83 + arith_const_17); 
        for_iter_arg_83 = arith_addi_109; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_80, async_group_index_81, PAST_TASK_FINISHED); 
      int* async_group_110; 
      int async_group_index_111 = 0; 
      int for_iter_arg_113 = arith_const_16; 
      for (int for_iter_112 = arith_const_16; for_iter_112 < arith_const_11; for_iter_112 += arith_const_17) {
        PAST_NEW_SEMAPHORE(execute_token_114); 
        #pragma peqc async_execute
        {
          int arith_addi_115 = (for_iter_112 + arith_const_8); 
          double memref_load_116 = func_arg_4[arith_addi_115]; 
          double memref_load_117 = func_arg_2[arith_addi_47][arith_addi_115]; 
          double memref_load_118 = func_arg_5[arith_addi_47]; 
          double arith_mulf_119 = (memref_load_117 * memref_load_118); 
          double arith_addf_120 = (memref_load_116 + arith_mulf_119); 
          func_arg_4[arith_addi_115] = arith_addf_120; 
          PAST_SET_SEMAPHORE(execute_token_114, PAST_TASK_FINISHED); 
        }
        async_group_110[async_group_index_111] = execute_token_114; 
        async_group_index_111++; 
        int arith_addi_121 = (for_iter_arg_113 + arith_const_17); 
        for_iter_arg_113 = arith_addi_121; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_110, async_group_index_111, PAST_TASK_FINISHED); 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
