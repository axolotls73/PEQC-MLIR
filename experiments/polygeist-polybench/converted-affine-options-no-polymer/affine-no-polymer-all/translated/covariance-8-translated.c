#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 7; 
  int arith_const_8 = 32; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 8; 
  double arith_const_13 = 1.000000; 
  double arith_const_14 = 0.000000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 28; 
  int arith_const_17 = 1; 
  int* async_group_18; 
  int async_group_index_19 = 0; 
  int for_iter_arg_21 = arith_const_15; 
  for (int for_iter_20 = arith_const_15; for_iter_20 < arith_const_16; for_iter_20 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_22); 
    #pragma peqc async_execute
    {
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_17; for_iter_23 += arith_const_17) {
        int arith_addi_24 = (for_iter_20 + for_iter_23); 
        func_arg_5[arith_addi_24] = arith_const_14; 
        for (int for_iter_25 = arith_const_15; for_iter_25 < arith_const_12; for_iter_25 += arith_const_17) {
          int arith_muli_26 = (for_iter_25 * arith_const_11); 
          double memref_load_27 = func_arg_3[arith_muli_26][arith_addi_24]; 
          double memref_load_28 = func_arg_5[arith_addi_24]; 
          double arith_addf_29 = (memref_load_28 + memref_load_27); 
          func_arg_5[arith_addi_24] = arith_addf_29; 
          int arith_addi_30 = (arith_muli_26 + arith_const_17); 
          double memref_load_31 = func_arg_3[arith_addi_30][arith_addi_24]; 
          double memref_load_32 = func_arg_5[arith_addi_24]; 
          double arith_addf_33 = (memref_load_32 + memref_load_31); 
          func_arg_5[arith_addi_24] = arith_addf_33; 
          int arith_addi_34 = (arith_muli_26 + arith_const_10); 
          double memref_load_35 = func_arg_3[arith_addi_34][arith_addi_24]; 
          double memref_load_36 = func_arg_5[arith_addi_24]; 
          double arith_addf_37 = (memref_load_36 + memref_load_35); 
          func_arg_5[arith_addi_24] = arith_addf_37; 
          int arith_addi_38 = (arith_muli_26 + arith_const_9); 
          double memref_load_39 = func_arg_3[arith_addi_38][arith_addi_24]; 
          double memref_load_40 = func_arg_5[arith_addi_24]; 
          double arith_addf_41 = (memref_load_40 + memref_load_39); 
          func_arg_5[arith_addi_24] = arith_addf_41; 
        }
        double memref_load_42 = func_arg_5[arith_addi_24]; 
        double arith_divf_43 = (memref_load_42 / func_arg_2); 
        func_arg_5[arith_addi_24] = arith_divf_43; 
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_44 = (for_iter_arg_21 + arith_const_17); 
    for_iter_arg_21 = arith_addi_44; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  int* async_group_45; 
  int async_group_index_46 = 0; 
  int for_iter_arg_48 = arith_const_15; 
  for (int for_iter_47 = arith_const_15; for_iter_47 < arith_const_8; for_iter_47 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_49); 
    #pragma peqc async_execute
    {
      for (int for_iter_50 = arith_const_15; for_iter_50 < arith_const_7; for_iter_50 += arith_const_17) {
        int arith_muli_51 = (for_iter_50 * arith_const_11); 
        for (int for_iter_52 = arith_const_15; for_iter_52 < arith_const_17; for_iter_52 += arith_const_17) {
          int arith_addi_53 = (for_iter_47 + for_iter_52); 
          for (int for_iter_54 = arith_const_15; for_iter_54 < arith_const_17; for_iter_54 += arith_const_17) {
            int arith_muli_55 = (for_iter_54 * arith_const_11); 
            int arith_addi_56 = (arith_muli_51 + arith_muli_55); 
            double memref_load_57 = func_arg_5[arith_addi_56]; 
            double memref_load_58 = func_arg_3[arith_addi_53][arith_addi_56]; 
            double arith_subf_59 = (memref_load_58 - memref_load_57); 
            func_arg_3[arith_addi_53][arith_addi_56] = arith_subf_59; 
            int arith_addi_60 = (arith_addi_56 + arith_const_17); 
            double memref_load_61 = func_arg_5[arith_addi_60]; 
            double memref_load_62 = func_arg_3[arith_addi_53][arith_addi_60]; 
            double arith_subf_63 = (memref_load_62 - memref_load_61); 
            func_arg_3[arith_addi_53][arith_addi_60] = arith_subf_63; 
            int arith_addi_64 = (arith_addi_56 + arith_const_10); 
            double memref_load_65 = func_arg_5[arith_addi_64]; 
            double memref_load_66 = func_arg_3[arith_addi_53][arith_addi_64]; 
            double arith_subf_67 = (memref_load_66 - memref_load_65); 
            func_arg_3[arith_addi_53][arith_addi_64] = arith_subf_67; 
            int arith_addi_68 = (arith_addi_56 + arith_const_9); 
            double memref_load_69 = func_arg_5[arith_addi_68]; 
            double memref_load_70 = func_arg_3[arith_addi_53][arith_addi_68]; 
            double arith_subf_71 = (memref_load_70 - memref_load_69); 
            func_arg_3[arith_addi_53][arith_addi_68] = arith_subf_71; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_49, PAST_TASK_FINISHED); 
    }
    async_group_45[async_group_index_46] = execute_token_49; 
    async_group_index_46++; 
    int arith_addi_72 = (for_iter_arg_48 + arith_const_17); 
    for_iter_arg_48 = arith_addi_72; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_45, async_group_index_46, PAST_TASK_FINISHED); 
  double arith_subf_73 = (func_arg_2 - arith_const_13); 
  int* async_group_74; 
  int async_group_index_75 = 0; 
  int for_iter_arg_77 = arith_const_15; 
  for (int for_iter_76 = arith_const_15; for_iter_76 < arith_const_16; for_iter_76 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_78); 
    #pragma peqc async_execute
    {
      int arith_muli_79 = (for_iter_76 * arith_const_6); 
      int arith_addi_80 = (arith_muli_79 + arith_const_16); 
      for (int for_iter_81 = arith_const_15; for_iter_81 < arith_addi_80; for_iter_81 += arith_const_17) {
        int arith_addi_82 = (for_iter_76 + for_iter_81); 
        func_arg_4[for_iter_76][arith_addi_82] = arith_const_14; 
        for (int for_iter_83 = arith_const_15; for_iter_83 < arith_const_12; for_iter_83 += arith_const_17) {
          int arith_muli_84 = (for_iter_83 * arith_const_11); 
          double memref_load_85 = func_arg_3[arith_muli_84][for_iter_76]; 
          double memref_load_86 = func_arg_3[arith_muli_84][arith_addi_82]; 
          double arith_mulf_87 = (memref_load_85 * memref_load_86); 
          double memref_load_88 = func_arg_4[for_iter_76][arith_addi_82]; 
          double arith_addf_89 = (memref_load_88 + arith_mulf_87); 
          func_arg_4[for_iter_76][arith_addi_82] = arith_addf_89; 
          int arith_addi_90 = (arith_muli_84 + arith_const_17); 
          double memref_load_91 = func_arg_3[arith_addi_90][for_iter_76]; 
          double memref_load_92 = func_arg_3[arith_addi_90][arith_addi_82]; 
          double arith_mulf_93 = (memref_load_91 * memref_load_92); 
          double memref_load_94 = func_arg_4[for_iter_76][arith_addi_82]; 
          double arith_addf_95 = (memref_load_94 + arith_mulf_93); 
          func_arg_4[for_iter_76][arith_addi_82] = arith_addf_95; 
          int arith_addi_96 = (arith_muli_84 + arith_const_10); 
          double memref_load_97 = func_arg_3[arith_addi_96][for_iter_76]; 
          double memref_load_98 = func_arg_3[arith_addi_96][arith_addi_82]; 
          double arith_mulf_99 = (memref_load_97 * memref_load_98); 
          double memref_load_100 = func_arg_4[for_iter_76][arith_addi_82]; 
          double arith_addf_101 = (memref_load_100 + arith_mulf_99); 
          func_arg_4[for_iter_76][arith_addi_82] = arith_addf_101; 
          int arith_addi_102 = (arith_muli_84 + arith_const_9); 
          double memref_load_103 = func_arg_3[arith_addi_102][for_iter_76]; 
          double memref_load_104 = func_arg_3[arith_addi_102][arith_addi_82]; 
          double arith_mulf_105 = (memref_load_103 * memref_load_104); 
          double memref_load_106 = func_arg_4[for_iter_76][arith_addi_82]; 
          double arith_addf_107 = (memref_load_106 + arith_mulf_105); 
          func_arg_4[for_iter_76][arith_addi_82] = arith_addf_107; 
        }
        double memref_load_108 = func_arg_4[for_iter_76][arith_addi_82]; 
        double arith_divf_109 = (memref_load_108 / arith_subf_73); 
        func_arg_4[for_iter_76][arith_addi_82] = arith_divf_109; 
        func_arg_4[arith_addi_82][for_iter_76] = arith_divf_109; 
      }
      PAST_SET_SEMAPHORE(execute_token_78, PAST_TASK_FINISHED); 
    }
    async_group_74[async_group_index_75] = execute_token_78; 
    async_group_index_75++; 
    int arith_addi_110 = (for_iter_arg_77 + arith_const_17); 
    for_iter_arg_77 = arith_addi_110; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_74, async_group_index_75, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;

#pragma peqc async_execute
{
  kernel_covariance(m, n, float_n, data, cov, mean);
}
}

#pragma pocc-region-end
