#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 20; 
  int arith_const_13 = 3; 
  int arith_const_14 = 2; 
  int arith_const_15 = 4; 
  int arith_const_16 = 5; 
  int arith_const_17 = 18; 
  double arith_const_18 = 0.000000; 
  int arith_const_19 = 0; 
  int arith_const_20 = 16; 
  int arith_const_21 = 1; 
  int* async_group_22; 
  int async_group_index_23 = 0; 
  int for_iter_arg_25 = arith_const_19; 
  for (int for_iter_24 = arith_const_19; for_iter_24 < arith_const_20; for_iter_24 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_26); 
    #pragma peqc async_execute
    {
      for (int for_iter_27 = arith_const_19; for_iter_27 < arith_const_17; for_iter_27 += arith_const_21) {
        for (int for_iter_28 = arith_const_19; for_iter_28 < arith_const_21; for_iter_28 += arith_const_21) {
          int arith_addi_29 = (for_iter_24 + for_iter_28); 
          for (int for_iter_30 = arith_const_19; for_iter_30 < arith_const_21; for_iter_30 += arith_const_21) {
            int arith_addi_31 = (for_iter_27 + for_iter_30); 
            func_arg_6[arith_addi_29][arith_addi_31] = arith_const_18; 
            for (int for_iter_32 = arith_const_19; for_iter_32 < arith_const_16; for_iter_32 += arith_const_21) {
              int arith_muli_33 = (for_iter_32 * arith_const_15); 
              double memref_load_34 = func_arg_7[arith_addi_29][arith_muli_33]; 
              double arith_mulf_35 = (func_arg_4 * memref_load_34); 
              double memref_load_36 = func_arg_8[arith_muli_33][arith_addi_31]; 
              double arith_mulf_37 = (arith_mulf_35 * memref_load_36); 
              double memref_load_38 = func_arg_6[arith_addi_29][arith_addi_31]; 
              double arith_addf_39 = (memref_load_38 + arith_mulf_37); 
              func_arg_6[arith_addi_29][arith_addi_31] = arith_addf_39; 
              int arith_addi_40 = (arith_muli_33 + arith_const_21); 
              double memref_load_41 = func_arg_7[arith_addi_29][arith_addi_40]; 
              double arith_mulf_42 = (func_arg_4 * memref_load_41); 
              double memref_load_43 = func_arg_8[arith_addi_40][arith_addi_31]; 
              double arith_mulf_44 = (arith_mulf_42 * memref_load_43); 
              double memref_load_45 = func_arg_6[arith_addi_29][arith_addi_31]; 
              double arith_addf_46 = (memref_load_45 + arith_mulf_44); 
              func_arg_6[arith_addi_29][arith_addi_31] = arith_addf_46; 
              int arith_addi_47 = (arith_muli_33 + arith_const_14); 
              double memref_load_48 = func_arg_7[arith_addi_29][arith_addi_47]; 
              double arith_mulf_49 = (func_arg_4 * memref_load_48); 
              double memref_load_50 = func_arg_8[arith_addi_47][arith_addi_31]; 
              double arith_mulf_51 = (arith_mulf_49 * memref_load_50); 
              double memref_load_52 = func_arg_6[arith_addi_29][arith_addi_31]; 
              double arith_addf_53 = (memref_load_52 + arith_mulf_51); 
              func_arg_6[arith_addi_29][arith_addi_31] = arith_addf_53; 
              int arith_addi_54 = (arith_muli_33 + arith_const_13); 
              double memref_load_55 = func_arg_7[arith_addi_29][arith_addi_54]; 
              double arith_mulf_56 = (func_arg_4 * memref_load_55); 
              double memref_load_57 = func_arg_8[arith_addi_54][arith_addi_31]; 
              double arith_mulf_58 = (arith_mulf_56 * memref_load_57); 
              double memref_load_59 = func_arg_6[arith_addi_29][arith_addi_31]; 
              double arith_addf_60 = (memref_load_59 + arith_mulf_58); 
              func_arg_6[arith_addi_29][arith_addi_31] = arith_addf_60; 
            }
            for (int for_iter_61 = arith_const_19; for_iter_61 < arith_const_14; for_iter_61 += arith_const_21) {
              int arith_addi_62 = (for_iter_61 + arith_const_12); 
              double memref_load_63 = func_arg_7[arith_addi_29][arith_addi_62]; 
              double arith_mulf_64 = (func_arg_4 * memref_load_63); 
              double memref_load_65 = func_arg_8[arith_addi_62][arith_addi_31]; 
              double arith_mulf_66 = (arith_mulf_64 * memref_load_65); 
              double memref_load_67 = func_arg_6[arith_addi_29][arith_addi_31]; 
              double arith_addf_68 = (memref_load_67 + arith_mulf_66); 
              func_arg_6[arith_addi_29][arith_addi_31] = arith_addf_68; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
    }
    async_group_22[async_group_index_23] = execute_token_26; 
    async_group_index_23++; 
    int arith_addi_69 = (for_iter_arg_25 + arith_const_21); 
    for_iter_arg_25 = arith_addi_69; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
  int* async_group_70; 
  int async_group_index_71 = 0; 
  int for_iter_arg_73 = arith_const_19; 
  for (int for_iter_72 = arith_const_19; for_iter_72 < arith_const_20; for_iter_72 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_74); 
    #pragma peqc async_execute
    {
      for (int for_iter_75 = arith_const_19; for_iter_75 < arith_const_11; for_iter_75 += arith_const_21) {
        for (int for_iter_76 = arith_const_19; for_iter_76 < arith_const_21; for_iter_76 += arith_const_21) {
          int arith_addi_77 = (for_iter_72 + for_iter_76); 
          for (int for_iter_78 = arith_const_19; for_iter_78 < arith_const_21; for_iter_78 += arith_const_21) {
            int arith_addi_79 = (for_iter_75 + for_iter_78); 
            double memref_load_80 = func_arg_10[arith_addi_77][arith_addi_79]; 
            double arith_mulf_81 = (memref_load_80 * func_arg_5); 
            func_arg_10[arith_addi_77][arith_addi_79] = arith_mulf_81; 
            for (int for_iter_82 = arith_const_19; for_iter_82 < arith_const_15; for_iter_82 += arith_const_21) {
              int arith_muli_83 = (for_iter_82 * arith_const_15); 
              double memref_load_84 = func_arg_6[arith_addi_77][arith_muli_83]; 
              double memref_load_85 = func_arg_9[arith_muli_83][arith_addi_79]; 
              double arith_mulf_86 = (memref_load_84 * memref_load_85); 
              double memref_load_87 = func_arg_10[arith_addi_77][arith_addi_79]; 
              double arith_addf_88 = (memref_load_87 + arith_mulf_86); 
              func_arg_10[arith_addi_77][arith_addi_79] = arith_addf_88; 
              int arith_addi_89 = (arith_muli_83 + arith_const_21); 
              double memref_load_90 = func_arg_6[arith_addi_77][arith_addi_89]; 
              double memref_load_91 = func_arg_9[arith_addi_89][arith_addi_79]; 
              double arith_mulf_92 = (memref_load_90 * memref_load_91); 
              double memref_load_93 = func_arg_10[arith_addi_77][arith_addi_79]; 
              double arith_addf_94 = (memref_load_93 + arith_mulf_92); 
              func_arg_10[arith_addi_77][arith_addi_79] = arith_addf_94; 
              int arith_addi_95 = (arith_muli_83 + arith_const_14); 
              double memref_load_96 = func_arg_6[arith_addi_77][arith_addi_95]; 
              double memref_load_97 = func_arg_9[arith_addi_95][arith_addi_79]; 
              double arith_mulf_98 = (memref_load_96 * memref_load_97); 
              double memref_load_99 = func_arg_10[arith_addi_77][arith_addi_79]; 
              double arith_addf_100 = (memref_load_99 + arith_mulf_98); 
              func_arg_10[arith_addi_77][arith_addi_79] = arith_addf_100; 
              int arith_addi_101 = (arith_muli_83 + arith_const_13); 
              double memref_load_102 = func_arg_6[arith_addi_77][arith_addi_101]; 
              double memref_load_103 = func_arg_9[arith_addi_101][arith_addi_79]; 
              double arith_mulf_104 = (memref_load_102 * memref_load_103); 
              double memref_load_105 = func_arg_10[arith_addi_77][arith_addi_79]; 
              double arith_addf_106 = (memref_load_105 + arith_mulf_104); 
              func_arg_10[arith_addi_77][arith_addi_79] = arith_addf_106; 
            }
            for (int for_iter_107 = arith_const_19; for_iter_107 < arith_const_14; for_iter_107 += arith_const_21) {
              int arith_addi_108 = (for_iter_107 + arith_const_20); 
              double memref_load_109 = func_arg_6[arith_addi_77][arith_addi_108]; 
              double memref_load_110 = func_arg_9[arith_addi_108][arith_addi_79]; 
              double arith_mulf_111 = (memref_load_109 * memref_load_110); 
              double memref_load_112 = func_arg_10[arith_addi_77][arith_addi_79]; 
              double arith_addf_113 = (memref_load_112 + arith_mulf_111); 
              func_arg_10[arith_addi_77][arith_addi_79] = arith_addf_113; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_74, PAST_TASK_FINISHED); 
    }
    async_group_70[async_group_index_71] = execute_token_74; 
    async_group_index_71++; 
    int arith_addi_114 = (for_iter_arg_73 + arith_const_21); 
    for_iter_arg_73 = arith_addi_114; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_70, async_group_index_71, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;

#pragma peqc async_execute
{
  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);
}
}

#pragma pocc-region-end
