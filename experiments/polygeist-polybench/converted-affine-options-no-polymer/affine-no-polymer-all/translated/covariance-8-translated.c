#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -1; 
  int arith_const_7 = 7; 
  int arith_const_8 = 128; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 8; 
  int arith_const_13 = 28; 
  int arith_const_14 = 32; 
  double arith_const_15 = 1.000000; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 1; 
  int* async_group_19; 
  int async_group_index_20 = 0; 
  int for_iter_arg_22 = arith_const_17; 
  for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_18; for_iter_21 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_23); 
    #pragma peqc async_execute
    {
      int arith_muli_24 = (for_iter_21 * arith_const_14); 
      for (int for_iter_25 = arith_const_17; for_iter_25 < arith_const_13; for_iter_25 += arith_const_18) {
        int arith_addi_26 = (arith_muli_24 + for_iter_25); 
        func_arg_5[arith_addi_26] = arith_const_16; 
        for (int for_iter_27 = arith_const_17; for_iter_27 < arith_const_12; for_iter_27 += arith_const_18) {
          int arith_muli_28 = (for_iter_27 * arith_const_11); 
          double memref_load_29 = func_arg_3[arith_muli_28][arith_addi_26]; 
          double memref_load_30 = func_arg_5[arith_addi_26]; 
          double arith_addf_31 = (memref_load_30 + memref_load_29); 
          func_arg_5[arith_addi_26] = arith_addf_31; 
          int arith_addi_32 = (arith_muli_28 + arith_const_18); 
          double memref_load_33 = func_arg_3[arith_addi_32][arith_addi_26]; 
          double memref_load_34 = func_arg_5[arith_addi_26]; 
          double arith_addf_35 = (memref_load_34 + memref_load_33); 
          func_arg_5[arith_addi_26] = arith_addf_35; 
          int arith_addi_36 = (arith_muli_28 + arith_const_10); 
          double memref_load_37 = func_arg_3[arith_addi_36][arith_addi_26]; 
          double memref_load_38 = func_arg_5[arith_addi_26]; 
          double arith_addf_39 = (memref_load_38 + memref_load_37); 
          func_arg_5[arith_addi_26] = arith_addf_39; 
          int arith_addi_40 = (arith_muli_28 + arith_const_9); 
          double memref_load_41 = func_arg_3[arith_addi_40][arith_addi_26]; 
          double memref_load_42 = func_arg_5[arith_addi_26]; 
          double arith_addf_43 = (memref_load_42 + memref_load_41); 
          func_arg_5[arith_addi_26] = arith_addf_43; 
        }
        double memref_load_44 = func_arg_5[arith_addi_26]; 
        double arith_divf_45 = (memref_load_44 / func_arg_2); 
        func_arg_5[arith_addi_26] = arith_divf_45; 
      }
      PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
    }
    async_group_19[async_group_index_20] = execute_token_23; 
    async_group_index_20++; 
    int arith_addi_46 = (for_iter_arg_22 + arith_const_18); 
    for_iter_arg_22 = arith_addi_46; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
  int* async_group_47; 
  int async_group_index_48 = 0; 
  int for_iter_arg_50 = arith_const_17; 
  for (int for_iter_49 = arith_const_17; for_iter_49 < arith_const_18; for_iter_49 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_51); 
    #pragma peqc async_execute
    {
      int arith_muli_52 = (for_iter_49 * arith_const_14); 
      for (int for_iter_53 = arith_const_17; for_iter_53 < arith_const_18; for_iter_53 += arith_const_18) {
        int arith_muli_54 = (for_iter_53 * arith_const_8); 
        for (int for_iter_55 = arith_const_17; for_iter_55 < arith_const_14; for_iter_55 += arith_const_18) {
          int arith_addi_56 = (arith_muli_52 + for_iter_55); 
          for (int for_iter_57 = arith_const_17; for_iter_57 < arith_const_7; for_iter_57 += arith_const_18) {
            int arith_muli_58 = (for_iter_57 * arith_const_11); 
            int arith_addi_59 = (arith_muli_54 + arith_muli_58); 
            double memref_load_60 = func_arg_5[arith_addi_59]; 
            double memref_load_61 = func_arg_3[arith_addi_56][arith_addi_59]; 
            double arith_subf_62 = (memref_load_61 - memref_load_60); 
            func_arg_3[arith_addi_56][arith_addi_59] = arith_subf_62; 
            int arith_addi_63 = (arith_addi_59 + arith_const_18); 
            double memref_load_64 = func_arg_5[arith_addi_63]; 
            double memref_load_65 = func_arg_3[arith_addi_56][arith_addi_63]; 
            double arith_subf_66 = (memref_load_65 - memref_load_64); 
            func_arg_3[arith_addi_56][arith_addi_63] = arith_subf_66; 
            int arith_addi_67 = (arith_addi_59 + arith_const_10); 
            double memref_load_68 = func_arg_5[arith_addi_67]; 
            double memref_load_69 = func_arg_3[arith_addi_56][arith_addi_67]; 
            double arith_subf_70 = (memref_load_69 - memref_load_68); 
            func_arg_3[arith_addi_56][arith_addi_67] = arith_subf_70; 
            int arith_addi_71 = (arith_addi_59 + arith_const_9); 
            double memref_load_72 = func_arg_5[arith_addi_71]; 
            double memref_load_73 = func_arg_3[arith_addi_56][arith_addi_71]; 
            double arith_subf_74 = (memref_load_73 - memref_load_72); 
            func_arg_3[arith_addi_56][arith_addi_71] = arith_subf_74; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_51, PAST_TASK_FINISHED); 
    }
    async_group_47[async_group_index_48] = execute_token_51; 
    async_group_index_48++; 
    int arith_addi_75 = (for_iter_arg_50 + arith_const_18); 
    for_iter_arg_50 = arith_addi_75; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_47, async_group_index_48, PAST_TASK_FINISHED); 
  double arith_subf_76 = (func_arg_2 - arith_const_15); 
  int* async_group_77; 
  int async_group_index_78 = 0; 
  int for_iter_arg_80 = arith_const_17; 
  for (int for_iter_79 = arith_const_17; for_iter_79 < arith_const_13; for_iter_79 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_81); 
    #pragma peqc async_execute
    {
      int arith_muli_82 = (for_iter_79 * arith_const_6); 
      int arith_addi_83 = (arith_muli_82 + arith_const_13); 
      for (int for_iter_84 = arith_const_17; for_iter_84 < arith_addi_83; for_iter_84 += arith_const_18) {
        int arith_addi_85 = (for_iter_79 + for_iter_84); 
        func_arg_4[for_iter_79][arith_addi_85] = arith_const_16; 
        for (int for_iter_86 = arith_const_17; for_iter_86 < arith_const_12; for_iter_86 += arith_const_18) {
          int arith_muli_87 = (for_iter_86 * arith_const_11); 
          double memref_load_88 = func_arg_3[arith_muli_87][for_iter_79]; 
          double memref_load_89 = func_arg_3[arith_muli_87][arith_addi_85]; 
          double arith_mulf_90 = (memref_load_88 * memref_load_89); 
          double memref_load_91 = func_arg_4[for_iter_79][arith_addi_85]; 
          double arith_addf_92 = (memref_load_91 + arith_mulf_90); 
          func_arg_4[for_iter_79][arith_addi_85] = arith_addf_92; 
          int arith_addi_93 = (arith_muli_87 + arith_const_18); 
          double memref_load_94 = func_arg_3[arith_addi_93][for_iter_79]; 
          double memref_load_95 = func_arg_3[arith_addi_93][arith_addi_85]; 
          double arith_mulf_96 = (memref_load_94 * memref_load_95); 
          double memref_load_97 = func_arg_4[for_iter_79][arith_addi_85]; 
          double arith_addf_98 = (memref_load_97 + arith_mulf_96); 
          func_arg_4[for_iter_79][arith_addi_85] = arith_addf_98; 
          int arith_addi_99 = (arith_muli_87 + arith_const_10); 
          double memref_load_100 = func_arg_3[arith_addi_99][for_iter_79]; 
          double memref_load_101 = func_arg_3[arith_addi_99][arith_addi_85]; 
          double arith_mulf_102 = (memref_load_100 * memref_load_101); 
          double memref_load_103 = func_arg_4[for_iter_79][arith_addi_85]; 
          double arith_addf_104 = (memref_load_103 + arith_mulf_102); 
          func_arg_4[for_iter_79][arith_addi_85] = arith_addf_104; 
          int arith_addi_105 = (arith_muli_87 + arith_const_9); 
          double memref_load_106 = func_arg_3[arith_addi_105][for_iter_79]; 
          double memref_load_107 = func_arg_3[arith_addi_105][arith_addi_85]; 
          double arith_mulf_108 = (memref_load_106 * memref_load_107); 
          double memref_load_109 = func_arg_4[for_iter_79][arith_addi_85]; 
          double arith_addf_110 = (memref_load_109 + arith_mulf_108); 
          func_arg_4[for_iter_79][arith_addi_85] = arith_addf_110; 
        }
        double memref_load_111 = func_arg_4[for_iter_79][arith_addi_85]; 
        double arith_divf_112 = (memref_load_111 / arith_subf_76); 
        func_arg_4[for_iter_79][arith_addi_85] = arith_divf_112; 
        func_arg_4[arith_addi_85][for_iter_79] = arith_divf_112; 
      }
      PAST_SET_SEMAPHORE(execute_token_81, PAST_TASK_FINISHED); 
    }
    async_group_77[async_group_index_78] = execute_token_81; 
    async_group_index_78++; 
    int arith_addi_113 = (for_iter_arg_80 + arith_const_18); 
    for_iter_arg_80 = arith_addi_113; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_77, async_group_index_78, PAST_TASK_FINISHED); 
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
