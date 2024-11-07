#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  int arith_const_7 = 40; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 10; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_muli_16 = (for_iter_15 * arith_const_10); 
    for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_14; for_iter_17 += arith_const_14) {
      int arith_muli_18 = (for_iter_17 * arith_const_10); 
      int arith_addi_19 = (arith_muli_16 + arith_muli_18); 
      func_arg_4[arith_addi_19] = arith_const_11; 
      int arith_addi_20 = (arith_addi_19 + arith_const_14); 
      func_arg_4[arith_addi_20] = arith_const_11; 
      int arith_addi_21 = (arith_addi_19 + arith_const_9); 
      func_arg_4[arith_addi_21] = arith_const_11; 
      int arith_addi_22 = (arith_addi_19 + arith_const_8); 
      func_arg_4[arith_addi_22] = arith_const_11; 
    }
  }
  int* async_group_23; 
  int async_group_index_24 = 0; 
  int for_iter_arg_26 = arith_const_12; 
  for (int for_iter_25 = arith_const_12; for_iter_25 < arith_const_9; for_iter_25 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_27); 
    #pragma peqc async_execute
    {
      int arith_addi_28 = (for_iter_25 + arith_const_7); 
      int* async_group_29; 
      int async_group_index_30 = 0; 
      int for_iter_arg_32 = arith_const_12; 
      for (int for_iter_31 = arith_const_12; for_iter_31 < arith_const_14; for_iter_31 += arith_const_14) {
        PAST_NEW_SEMAPHORE(execute_token_33); 
        #pragma peqc async_execute
        {
          int arith_addi_34 = (arith_addi_28 + for_iter_31); 
          func_arg_4[arith_addi_34] = arith_const_11; 
          PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
        }
        async_group_29[async_group_index_30] = execute_token_33; 
        async_group_index_30++; 
        int arith_addi_35 = (for_iter_arg_32 + arith_const_14); 
        for_iter_arg_32 = arith_addi_35; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
    }
    async_group_23[async_group_index_24] = execute_token_27; 
    async_group_index_24++; 
    int arith_addi_36 = (for_iter_arg_26 + arith_const_14); 
    for_iter_arg_26 = arith_addi_36; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
  for (int for_iter_37 = arith_const_12; for_iter_37 < arith_const_6; for_iter_37 += arith_const_14) {
    int* async_group_38; 
    int async_group_index_39 = 0; 
    int for_iter_arg_41 = arith_const_12; 
    for (int for_iter_40 = arith_const_12; for_iter_40 < arith_const_14; for_iter_40 += arith_const_14) {
      PAST_NEW_SEMAPHORE(execute_token_42); 
      #pragma peqc async_execute
      {
        int arith_addi_43 = (for_iter_37 + for_iter_40); 
        func_arg_5[arith_addi_43] = arith_const_11; 
        for (int for_iter_44 = arith_const_12; for_iter_44 < arith_const_13; for_iter_44 += arith_const_14) {
          int arith_muli_45 = (for_iter_44 * arith_const_10); 
          double memref_load_46 = func_arg_5[arith_addi_43]; 
          double memref_load_47 = func_arg_2[arith_addi_43][arith_muli_45]; 
          double memref_load_48 = func_arg_3[arith_muli_45]; 
          double arith_mulf_49 = (memref_load_47 * memref_load_48); 
          double arith_addf_50 = (memref_load_46 + arith_mulf_49); 
          func_arg_5[arith_addi_43] = arith_addf_50; 
          int arith_addi_51 = (arith_muli_45 + arith_const_14); 
          double memref_load_52 = func_arg_5[arith_addi_43]; 
          double memref_load_53 = func_arg_2[arith_addi_43][arith_addi_51]; 
          double memref_load_54 = func_arg_3[arith_addi_51]; 
          double arith_mulf_55 = (memref_load_53 * memref_load_54); 
          double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
          func_arg_5[arith_addi_43] = arith_addf_56; 
          int arith_addi_57 = (arith_muli_45 + arith_const_9); 
          double memref_load_58 = func_arg_5[arith_addi_43]; 
          double memref_load_59 = func_arg_2[arith_addi_43][arith_addi_57]; 
          double memref_load_60 = func_arg_3[arith_addi_57]; 
          double arith_mulf_61 = (memref_load_59 * memref_load_60); 
          double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
          func_arg_5[arith_addi_43] = arith_addf_62; 
          int arith_addi_63 = (arith_muli_45 + arith_const_8); 
          double memref_load_64 = func_arg_5[arith_addi_43]; 
          double memref_load_65 = func_arg_2[arith_addi_43][arith_addi_63]; 
          double memref_load_66 = func_arg_3[arith_addi_63]; 
          double arith_mulf_67 = (memref_load_65 * memref_load_66); 
          double arith_addf_68 = (memref_load_64 + arith_mulf_67); 
          func_arg_5[arith_addi_43] = arith_addf_68; 
        }
        for (int for_iter_69 = arith_const_12; for_iter_69 < arith_const_9; for_iter_69 += arith_const_14) {
          int arith_addi_70 = (for_iter_69 + arith_const_7); 
          double memref_load_71 = func_arg_5[arith_addi_43]; 
          double memref_load_72 = func_arg_2[arith_addi_43][arith_addi_70]; 
          double memref_load_73 = func_arg_3[arith_addi_70]; 
          double arith_mulf_74 = (memref_load_72 * memref_load_73); 
          double arith_addf_75 = (memref_load_71 + arith_mulf_74); 
          func_arg_5[arith_addi_43] = arith_addf_75; 
        }
        int* async_group_76; 
        int async_group_index_77 = 0; 
        int for_iter_arg_79 = arith_const_12; 
        for (int for_iter_78 = arith_const_12; for_iter_78 < arith_const_13; for_iter_78 += arith_const_14) {
          PAST_NEW_SEMAPHORE(execute_token_80); 
          #pragma peqc async_execute
          {
            int arith_muli_81 = (for_iter_78 * arith_const_10); 
            double memref_load_82 = func_arg_4[arith_muli_81]; 
            double memref_load_83 = func_arg_2[arith_addi_43][arith_muli_81]; 
            double memref_load_84 = func_arg_5[arith_addi_43]; 
            double arith_mulf_85 = (memref_load_83 * memref_load_84); 
            double arith_addf_86 = (memref_load_82 + arith_mulf_85); 
            func_arg_4[arith_muli_81] = arith_addf_86; 
            int arith_addi_87 = (arith_muli_81 + arith_const_14); 
            double memref_load_88 = func_arg_4[arith_addi_87]; 
            double memref_load_89 = func_arg_2[arith_addi_43][arith_addi_87]; 
            double memref_load_90 = func_arg_5[arith_addi_43]; 
            double arith_mulf_91 = (memref_load_89 * memref_load_90); 
            double arith_addf_92 = (memref_load_88 + arith_mulf_91); 
            func_arg_4[arith_addi_87] = arith_addf_92; 
            int arith_addi_93 = (arith_muli_81 + arith_const_9); 
            double memref_load_94 = func_arg_4[arith_addi_93]; 
            double memref_load_95 = func_arg_2[arith_addi_43][arith_addi_93]; 
            double memref_load_96 = func_arg_5[arith_addi_43]; 
            double arith_mulf_97 = (memref_load_95 * memref_load_96); 
            double arith_addf_98 = (memref_load_94 + arith_mulf_97); 
            func_arg_4[arith_addi_93] = arith_addf_98; 
            int arith_addi_99 = (arith_muli_81 + arith_const_8); 
            double memref_load_100 = func_arg_4[arith_addi_99]; 
            double memref_load_101 = func_arg_2[arith_addi_43][arith_addi_99]; 
            double memref_load_102 = func_arg_5[arith_addi_43]; 
            double arith_mulf_103 = (memref_load_101 * memref_load_102); 
            double arith_addf_104 = (memref_load_100 + arith_mulf_103); 
            func_arg_4[arith_addi_99] = arith_addf_104; 
            PAST_SET_SEMAPHORE(execute_token_80, PAST_TASK_FINISHED); 
          }
          async_group_76[async_group_index_77] = execute_token_80; 
          async_group_index_77++; 
          int arith_addi_105 = (for_iter_arg_79 + arith_const_14); 
          for_iter_arg_79 = arith_addi_105; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_76, async_group_index_77, PAST_TASK_FINISHED); 
        int* async_group_106; 
        int async_group_index_107 = 0; 
        int for_iter_arg_109 = arith_const_12; 
        for (int for_iter_108 = arith_const_12; for_iter_108 < arith_const_9; for_iter_108 += arith_const_14) {
          PAST_NEW_SEMAPHORE(execute_token_110); 
          #pragma peqc async_execute
          {
            int arith_addi_111 = (for_iter_108 + arith_const_7); 
            double memref_load_112 = func_arg_4[arith_addi_111]; 
            double memref_load_113 = func_arg_2[arith_addi_43][arith_addi_111]; 
            double memref_load_114 = func_arg_5[arith_addi_43]; 
            double arith_mulf_115 = (memref_load_113 * memref_load_114); 
            double arith_addf_116 = (memref_load_112 + arith_mulf_115); 
            func_arg_4[arith_addi_111] = arith_addf_116; 
            PAST_SET_SEMAPHORE(execute_token_110, PAST_TASK_FINISHED); 
          }
          async_group_106[async_group_index_107] = execute_token_110; 
          async_group_index_107++; 
          int arith_addi_117 = (for_iter_arg_109 + arith_const_14); 
          for_iter_arg_109 = arith_addi_117; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_106, async_group_index_107, PAST_TASK_FINISHED); 
        PAST_SET_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
      }
      async_group_38[async_group_index_39] = execute_token_42; 
      async_group_index_39++; 
      int arith_addi_118 = (for_iter_arg_41 + arith_const_14); 
      for_iter_arg_41 = arith_addi_118; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_38, async_group_index_39, PAST_TASK_FINISHED); 
  }
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
