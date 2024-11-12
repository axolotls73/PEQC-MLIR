#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 6; 
  int arith_const_13 = 22; 
  int arith_const_14 = 3; 
  int arith_const_15 = 2; 
  int arith_const_16 = 4; 
  int arith_const_17 = 5; 
  int arith_const_18 = 18; 
  double arith_const_19 = 0.000000; 
  int arith_const_20 = 0; 
  int arith_const_21 = 16; 
  int arith_const_22 = 1; 
  int* async_group_23; 
  int async_group_index_24 = 0; 
  int for_iter_arg_26 = arith_const_20; 
  for (int for_iter_25 = arith_const_20; for_iter_25 < arith_const_21; for_iter_25 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_27); 
    #pragma peqc async_execute
    {
      for (int for_iter_28 = arith_const_20; for_iter_28 < arith_const_18; for_iter_28 += arith_const_22) {
        for (int for_iter_29 = arith_const_20; for_iter_29 < arith_const_22; for_iter_29 += arith_const_22) {
          int arith_addi_30 = (for_iter_25 + for_iter_29); 
          for (int for_iter_31 = arith_const_20; for_iter_31 < arith_const_22; for_iter_31 += arith_const_22) {
            int arith_addi_32 = (for_iter_28 + for_iter_31); 
            func_arg_5[arith_addi_30][arith_addi_32] = arith_const_19; 
            for (int for_iter_33 = arith_const_20; for_iter_33 < arith_const_17; for_iter_33 += arith_const_22) {
              int arith_muli_34 = (for_iter_33 * arith_const_16); 
              double memref_load_35 = func_arg_6[arith_addi_30][arith_muli_34]; 
              double memref_load_36 = func_arg_7[arith_muli_34][arith_addi_32]; 
              double arith_mulf_37 = (memref_load_35 * memref_load_36); 
              double memref_load_38 = func_arg_5[arith_addi_30][arith_addi_32]; 
              double arith_addf_39 = (memref_load_38 + arith_mulf_37); 
              func_arg_5[arith_addi_30][arith_addi_32] = arith_addf_39; 
              int arith_addi_40 = (arith_muli_34 + arith_const_22); 
              double memref_load_41 = func_arg_6[arith_addi_30][arith_addi_40]; 
              double memref_load_42 = func_arg_7[arith_addi_40][arith_addi_32]; 
              double arith_mulf_43 = (memref_load_41 * memref_load_42); 
              double memref_load_44 = func_arg_5[arith_addi_30][arith_addi_32]; 
              double arith_addf_45 = (memref_load_44 + arith_mulf_43); 
              func_arg_5[arith_addi_30][arith_addi_32] = arith_addf_45; 
              int arith_addi_46 = (arith_muli_34 + arith_const_15); 
              double memref_load_47 = func_arg_6[arith_addi_30][arith_addi_46]; 
              double memref_load_48 = func_arg_7[arith_addi_46][arith_addi_32]; 
              double arith_mulf_49 = (memref_load_47 * memref_load_48); 
              double memref_load_50 = func_arg_5[arith_addi_30][arith_addi_32]; 
              double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
              func_arg_5[arith_addi_30][arith_addi_32] = arith_addf_51; 
              int arith_addi_52 = (arith_muli_34 + arith_const_14); 
              double memref_load_53 = func_arg_6[arith_addi_30][arith_addi_52]; 
              double memref_load_54 = func_arg_7[arith_addi_52][arith_addi_32]; 
              double arith_mulf_55 = (memref_load_53 * memref_load_54); 
              double memref_load_56 = func_arg_5[arith_addi_30][arith_addi_32]; 
              double arith_addf_57 = (memref_load_56 + arith_mulf_55); 
              func_arg_5[arith_addi_30][arith_addi_32] = arith_addf_57; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
    }
    async_group_23[async_group_index_24] = execute_token_27; 
    async_group_index_24++; 
    int arith_addi_58 = (for_iter_arg_26 + arith_const_22); 
    for_iter_arg_26 = arith_addi_58; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
  int* async_group_59; 
  int async_group_index_60 = 0; 
  int for_iter_arg_62 = arith_const_20; 
  for (int for_iter_61 = arith_const_20; for_iter_61 < arith_const_18; for_iter_61 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_63); 
    #pragma peqc async_execute
    {
      for (int for_iter_64 = arith_const_20; for_iter_64 < arith_const_13; for_iter_64 += arith_const_22) {
        for (int for_iter_65 = arith_const_20; for_iter_65 < arith_const_22; for_iter_65 += arith_const_22) {
          int arith_addi_66 = (for_iter_61 + for_iter_65); 
          for (int for_iter_67 = arith_const_20; for_iter_67 < arith_const_22; for_iter_67 += arith_const_22) {
            int arith_addi_68 = (for_iter_64 + for_iter_67); 
            func_arg_8[arith_addi_66][arith_addi_68] = arith_const_19; 
            for (int for_iter_69 = arith_const_20; for_iter_69 < arith_const_12; for_iter_69 += arith_const_22) {
              int arith_muli_70 = (for_iter_69 * arith_const_16); 
              double memref_load_71 = func_arg_9[arith_addi_66][arith_muli_70]; 
              double memref_load_72 = func_arg_10[arith_muli_70][arith_addi_68]; 
              double arith_mulf_73 = (memref_load_71 * memref_load_72); 
              double memref_load_74 = func_arg_8[arith_addi_66][arith_addi_68]; 
              double arith_addf_75 = (memref_load_74 + arith_mulf_73); 
              func_arg_8[arith_addi_66][arith_addi_68] = arith_addf_75; 
              int arith_addi_76 = (arith_muli_70 + arith_const_22); 
              double memref_load_77 = func_arg_9[arith_addi_66][arith_addi_76]; 
              double memref_load_78 = func_arg_10[arith_addi_76][arith_addi_68]; 
              double arith_mulf_79 = (memref_load_77 * memref_load_78); 
              double memref_load_80 = func_arg_8[arith_addi_66][arith_addi_68]; 
              double arith_addf_81 = (memref_load_80 + arith_mulf_79); 
              func_arg_8[arith_addi_66][arith_addi_68] = arith_addf_81; 
              int arith_addi_82 = (arith_muli_70 + arith_const_15); 
              double memref_load_83 = func_arg_9[arith_addi_66][arith_addi_82]; 
              double memref_load_84 = func_arg_10[arith_addi_82][arith_addi_68]; 
              double arith_mulf_85 = (memref_load_83 * memref_load_84); 
              double memref_load_86 = func_arg_8[arith_addi_66][arith_addi_68]; 
              double arith_addf_87 = (memref_load_86 + arith_mulf_85); 
              func_arg_8[arith_addi_66][arith_addi_68] = arith_addf_87; 
              int arith_addi_88 = (arith_muli_70 + arith_const_14); 
              double memref_load_89 = func_arg_9[arith_addi_66][arith_addi_88]; 
              double memref_load_90 = func_arg_10[arith_addi_88][arith_addi_68]; 
              double arith_mulf_91 = (memref_load_89 * memref_load_90); 
              double memref_load_92 = func_arg_8[arith_addi_66][arith_addi_68]; 
              double arith_addf_93 = (memref_load_92 + arith_mulf_91); 
              func_arg_8[arith_addi_66][arith_addi_68] = arith_addf_93; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_63, PAST_TASK_FINISHED); 
    }
    async_group_59[async_group_index_60] = execute_token_63; 
    async_group_index_60++; 
    int arith_addi_94 = (for_iter_arg_62 + arith_const_22); 
    for_iter_arg_62 = arith_addi_94; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_59, async_group_index_60, PAST_TASK_FINISHED); 
  int* async_group_95; 
  int async_group_index_96 = 0; 
  int for_iter_arg_98 = arith_const_20; 
  for (int for_iter_97 = arith_const_20; for_iter_97 < arith_const_21; for_iter_97 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_99); 
    #pragma peqc async_execute
    {
      for (int for_iter_100 = arith_const_20; for_iter_100 < arith_const_13; for_iter_100 += arith_const_22) {
        for (int for_iter_101 = arith_const_20; for_iter_101 < arith_const_22; for_iter_101 += arith_const_22) {
          int arith_addi_102 = (for_iter_97 + for_iter_101); 
          for (int for_iter_103 = arith_const_20; for_iter_103 < arith_const_22; for_iter_103 += arith_const_22) {
            int arith_addi_104 = (for_iter_100 + for_iter_103); 
            func_arg_11[arith_addi_102][arith_addi_104] = arith_const_19; 
            for (int for_iter_105 = arith_const_20; for_iter_105 < arith_const_16; for_iter_105 += arith_const_22) {
              int arith_muli_106 = (for_iter_105 * arith_const_16); 
              double memref_load_107 = func_arg_5[arith_addi_102][arith_muli_106]; 
              double memref_load_108 = func_arg_8[arith_muli_106][arith_addi_104]; 
              double arith_mulf_109 = (memref_load_107 * memref_load_108); 
              double memref_load_110 = func_arg_11[arith_addi_102][arith_addi_104]; 
              double arith_addf_111 = (memref_load_110 + arith_mulf_109); 
              func_arg_11[arith_addi_102][arith_addi_104] = arith_addf_111; 
              int arith_addi_112 = (arith_muli_106 + arith_const_22); 
              double memref_load_113 = func_arg_5[arith_addi_102][arith_addi_112]; 
              double memref_load_114 = func_arg_8[arith_addi_112][arith_addi_104]; 
              double arith_mulf_115 = (memref_load_113 * memref_load_114); 
              double memref_load_116 = func_arg_11[arith_addi_102][arith_addi_104]; 
              double arith_addf_117 = (memref_load_116 + arith_mulf_115); 
              func_arg_11[arith_addi_102][arith_addi_104] = arith_addf_117; 
              int arith_addi_118 = (arith_muli_106 + arith_const_15); 
              double memref_load_119 = func_arg_5[arith_addi_102][arith_addi_118]; 
              double memref_load_120 = func_arg_8[arith_addi_118][arith_addi_104]; 
              double arith_mulf_121 = (memref_load_119 * memref_load_120); 
              double memref_load_122 = func_arg_11[arith_addi_102][arith_addi_104]; 
              double arith_addf_123 = (memref_load_122 + arith_mulf_121); 
              func_arg_11[arith_addi_102][arith_addi_104] = arith_addf_123; 
              int arith_addi_124 = (arith_muli_106 + arith_const_14); 
              double memref_load_125 = func_arg_5[arith_addi_102][arith_addi_124]; 
              double memref_load_126 = func_arg_8[arith_addi_124][arith_addi_104]; 
              double arith_mulf_127 = (memref_load_125 * memref_load_126); 
              double memref_load_128 = func_arg_11[arith_addi_102][arith_addi_104]; 
              double arith_addf_129 = (memref_load_128 + arith_mulf_127); 
              func_arg_11[arith_addi_102][arith_addi_104] = arith_addf_129; 
            }
            for (int for_iter_130 = arith_const_20; for_iter_130 < arith_const_15; for_iter_130 += arith_const_22) {
              int arith_addi_131 = (for_iter_130 + arith_const_21); 
              double memref_load_132 = func_arg_5[arith_addi_102][arith_addi_131]; 
              double memref_load_133 = func_arg_8[arith_addi_131][arith_addi_104]; 
              double arith_mulf_134 = (memref_load_132 * memref_load_133); 
              double memref_load_135 = func_arg_11[arith_addi_102][arith_addi_104]; 
              double arith_addf_136 = (memref_load_135 + arith_mulf_134); 
              func_arg_11[arith_addi_102][arith_addi_104] = arith_addf_136; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_99, PAST_TASK_FINISHED); 
    }
    async_group_95[async_group_index_96] = execute_token_99; 
    async_group_index_96++; 
    int arith_addi_137 = (for_iter_arg_98 + arith_const_22); 
    for_iter_arg_98 = arith_addi_137; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_95, async_group_index_96, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  int nm;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;

#pragma peqc async_execute
{
  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);
}
}

#pragma pocc-region-end
