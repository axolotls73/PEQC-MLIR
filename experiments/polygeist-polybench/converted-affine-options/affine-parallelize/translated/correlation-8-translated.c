#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_correlation(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 28; 
  int arith_const_9 = 1; 
  int arith_const_10 = 0; 
  int arith_const_11 = 27; 
  double arith_const_12 = 0.100000; 
  double arith_const_13 = 0.000000; 
  double arith_const_14 = 1.000000; 
  double* memref_alloca_15; 
  func_arg_4[arith_const_11][arith_const_11] = arith_const_14; 
  int* async_group_16; 
  int async_group_index_17 = 0; 
  int for_iter_arg_19 = arith_const_10; 
  for (int for_iter_18 = arith_const_10; for_iter_18 < arith_const_11; for_iter_18 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      int arith_addi_21 = (for_iter_18 + arith_const_9); 
      for (int for_iter_22 = arith_addi_21; for_iter_22 < arith_const_8; for_iter_22 += arith_const_9) {
        func_arg_4[for_iter_18][for_iter_22] = arith_const_13; 
      }
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_23 = (for_iter_arg_19 + arith_const_9); 
    for_iter_arg_19 = arith_addi_23; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_10; 
  for (int for_iter_26 = arith_const_10; for_iter_26 < arith_const_11; for_iter_26 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      func_arg_4[for_iter_26][for_iter_26] = arith_const_14; 
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_29 = (for_iter_arg_27 + arith_const_9); 
    for_iter_arg_27 = arith_addi_29; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  double math_sqrt_30 = sqrt(func_arg_2); 
  memref_alloca_15[arith_const_10] = math_sqrt_30; 
  int* async_group_31; 
  int async_group_index_32 = 0; 
  int for_iter_arg_34 = arith_const_10; 
  for (int for_iter_33 = arith_const_10; for_iter_33 < arith_const_8; for_iter_33 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_35); 
    #pragma peqc async_execute
    {
      func_arg_6[for_iter_33] = arith_const_13; 
      func_arg_5[for_iter_33] = arith_const_13; 
      PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
    }
    async_group_31[async_group_index_32] = execute_token_35; 
    async_group_index_32++; 
    int arith_addi_36 = (for_iter_arg_34 + arith_const_9); 
    for_iter_arg_34 = arith_addi_36; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
  for (int for_iter_37 = arith_const_10; for_iter_37 < arith_const_7; for_iter_37 += arith_const_9) {
    int* async_group_38; 
    int async_group_index_39 = 0; 
    int for_iter_arg_41 = arith_const_10; 
    for (int for_iter_40 = arith_const_10; for_iter_40 < arith_const_8; for_iter_40 += arith_const_9) {
      PAST_NEW_SEMAPHORE(execute_token_42); 
      #pragma peqc async_execute
      {
        double memref_load_43 = func_arg_5[for_iter_40]; 
        double memref_load_44 = func_arg_3[for_iter_37][for_iter_40]; 
        double arith_addf_45 = (memref_load_43 + memref_load_44); 
        func_arg_5[for_iter_40] = arith_addf_45; 
        PAST_SET_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
      }
      async_group_38[async_group_index_39] = execute_token_42; 
      async_group_index_39++; 
      int arith_addi_46 = (for_iter_arg_41 + arith_const_9); 
      for_iter_arg_41 = arith_addi_46; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_38, async_group_index_39, PAST_TASK_FINISHED); 
  }
  int* async_group_47; 
  int async_group_index_48 = 0; 
  int for_iter_arg_50 = arith_const_10; 
  for (int for_iter_49 = arith_const_10; for_iter_49 < arith_const_8; for_iter_49 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_51); 
    #pragma peqc async_execute
    {
      double memref_load_52 = func_arg_5[for_iter_49]; 
      double arith_divf_53 = (memref_load_52 / func_arg_2); 
      func_arg_5[for_iter_49] = arith_divf_53; 
      PAST_SET_SEMAPHORE(execute_token_51, PAST_TASK_FINISHED); 
    }
    async_group_47[async_group_index_48] = execute_token_51; 
    async_group_index_48++; 
    int arith_addi_54 = (for_iter_arg_50 + arith_const_9); 
    for_iter_arg_50 = arith_addi_54; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_47, async_group_index_48, PAST_TASK_FINISHED); 
  for (int for_iter_55 = arith_const_10; for_iter_55 < arith_const_7; for_iter_55 += arith_const_9) {
    int* async_group_56; 
    int async_group_index_57 = 0; 
    int for_iter_arg_59 = arith_const_10; 
    for (int for_iter_58 = arith_const_10; for_iter_58 < arith_const_8; for_iter_58 += arith_const_9) {
      PAST_NEW_SEMAPHORE(execute_token_60); 
      #pragma peqc async_execute
      {
        double memref_load_61 = func_arg_6[for_iter_58]; 
        double memref_load_62 = func_arg_3[for_iter_55][for_iter_58]; 
        double memref_load_63 = func_arg_5[for_iter_58]; 
        double arith_subf_64 = (memref_load_62 - memref_load_63); 
        double arith_mulf_65 = (arith_subf_64 * arith_subf_64); 
        double arith_addf_66 = (memref_load_61 + arith_mulf_65); 
        func_arg_6[for_iter_58] = arith_addf_66; 
        double memref_load_67 = func_arg_3[for_iter_55][for_iter_58]; 
        double memref_load_68 = func_arg_5[for_iter_58]; 
        double arith_subf_69 = (memref_load_67 - memref_load_68); 
        func_arg_3[for_iter_55][for_iter_58] = arith_subf_69; 
        PAST_SET_SEMAPHORE(execute_token_60, PAST_TASK_FINISHED); 
      }
      async_group_56[async_group_index_57] = execute_token_60; 
      async_group_index_57++; 
      int arith_addi_70 = (for_iter_arg_59 + arith_const_9); 
      for_iter_arg_59 = arith_addi_70; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_56, async_group_index_57, PAST_TASK_FINISHED); 
  }
  int* async_group_71; 
  int async_group_index_72 = 0; 
  int for_iter_arg_74 = arith_const_10; 
  for (int for_iter_73 = arith_const_10; for_iter_73 < arith_const_8; for_iter_73 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_75); 
    #pragma peqc async_execute
    {
      double memref_load_76 = func_arg_6[for_iter_73]; 
      double arith_divf_77 = (memref_load_76 / func_arg_2); 
      double math_sqrt_78 = sqrt(arith_divf_77); 
      int arith_cmpi_79 = (math_sqrt_78 <= arith_const_12); 
      double arith_select_80 = (arith_cmpi_79 ? arith_const_14 : math_sqrt_78); 
      func_arg_6[for_iter_73] = arith_select_80; 
      PAST_SET_SEMAPHORE(execute_token_75, PAST_TASK_FINISHED); 
    }
    async_group_71[async_group_index_72] = execute_token_75; 
    async_group_index_72++; 
    int arith_addi_81 = (for_iter_arg_74 + arith_const_9); 
    for_iter_arg_74 = arith_addi_81; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_71, async_group_index_72, PAST_TASK_FINISHED); 
  int* async_group_82; 
  int async_group_index_83 = 0; 
  int for_iter_arg_85 = arith_const_10; 
  for (int for_iter_84 = arith_const_10; for_iter_84 < arith_const_7; for_iter_84 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_86); 
    #pragma peqc async_execute
    {
      for (int for_iter_87 = arith_const_10; for_iter_87 < arith_const_8; for_iter_87 += arith_const_9) {
        double memref_load_88 = func_arg_3[for_iter_84][for_iter_87]; 
        double memref_load_89 = memref_alloca_15[arith_const_10]; 
        double memref_load_90 = func_arg_6[for_iter_87]; 
        double arith_mulf_91 = (memref_load_89 * memref_load_90); 
        double arith_divf_92 = (memref_load_88 / arith_mulf_91); 
        func_arg_3[for_iter_84][for_iter_87] = arith_divf_92; 
      }
      PAST_SET_SEMAPHORE(execute_token_86, PAST_TASK_FINISHED); 
    }
    async_group_82[async_group_index_83] = execute_token_86; 
    async_group_index_83++; 
    int arith_addi_93 = (for_iter_arg_85 + arith_const_9); 
    for_iter_arg_85 = arith_addi_93; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_82, async_group_index_83, PAST_TASK_FINISHED); 
  int* async_group_94; 
  int async_group_index_95 = 0; 
  int for_iter_arg_97 = arith_const_10; 
  for (int for_iter_96 = arith_const_10; for_iter_96 < arith_const_11; for_iter_96 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_98); 
    #pragma peqc async_execute
    {
      for (int for_iter_99 = arith_const_10; for_iter_99 < arith_const_7; for_iter_99 += arith_const_9) {
        int arith_addi_100 = (for_iter_96 + arith_const_9); 
        for (int for_iter_101 = arith_addi_100; for_iter_101 < arith_const_8; for_iter_101 += arith_const_9) {
          double memref_load_102 = func_arg_4[for_iter_96][for_iter_101]; 
          double memref_load_103 = func_arg_3[for_iter_99][for_iter_96]; 
          double memref_load_104 = func_arg_3[for_iter_99][for_iter_101]; 
          double arith_mulf_105 = (memref_load_103 * memref_load_104); 
          double arith_addf_106 = (memref_load_102 + arith_mulf_105); 
          func_arg_4[for_iter_96][for_iter_101] = arith_addf_106; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_98, PAST_TASK_FINISHED); 
    }
    async_group_94[async_group_index_95] = execute_token_98; 
    async_group_index_95++; 
    int arith_addi_107 = (for_iter_arg_97 + arith_const_9); 
    for_iter_arg_97 = arith_addi_107; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_94, async_group_index_95, PAST_TASK_FINISHED); 
  int* async_group_108; 
  int async_group_index_109 = 0; 
  int for_iter_arg_111 = arith_const_10; 
  for (int for_iter_110 = arith_const_10; for_iter_110 < arith_const_11; for_iter_110 += arith_const_9) {
    PAST_NEW_SEMAPHORE(execute_token_112); 
    #pragma peqc async_execute
    {
      int arith_addi_113 = (for_iter_110 + arith_const_9); 
      for (int for_iter_114 = arith_addi_113; for_iter_114 < arith_const_8; for_iter_114 += arith_const_9) {
        double memref_load_115 = func_arg_4[for_iter_110][for_iter_114]; 
        func_arg_4[for_iter_114][for_iter_110] = memref_load_115; 
      }
      PAST_SET_SEMAPHORE(execute_token_112, PAST_TASK_FINISHED); 
    }
    async_group_108[async_group_index_109] = execute_token_112; 
    async_group_index_109++; 
    int arith_addi_116 = (for_iter_arg_111 + arith_const_9); 
    for_iter_arg_111 = arith_addi_116; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_108, async_group_index_109, PAST_TASK_FINISHED); 
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
