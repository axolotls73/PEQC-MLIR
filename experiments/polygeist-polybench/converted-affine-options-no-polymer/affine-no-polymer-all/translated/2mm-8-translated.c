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
  int arith_const_18 = 16; 
  int arith_const_19 = 32; 
  double arith_const_20 = 0.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 1; 
  int* async_group_23; 
  int async_group_index_24 = 0; 
  int for_iter_arg_26 = arith_const_21; 
  for (int for_iter_25 = arith_const_21; for_iter_25 < arith_const_22; for_iter_25 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_27); 
    #pragma peqc async_execute
    {
      int arith_muli_28 = (for_iter_25 * arith_const_19); 
      for (int for_iter_29 = arith_const_21; for_iter_29 < arith_const_22; for_iter_29 += arith_const_22) {
        int arith_muli_30 = (for_iter_29 * arith_const_19); 
        for (int for_iter_31 = arith_const_21; for_iter_31 < arith_const_18; for_iter_31 += arith_const_22) {
          int arith_addi_32 = (arith_muli_28 + for_iter_31); 
          for (int for_iter_33 = arith_const_21; for_iter_33 < arith_const_17; for_iter_33 += arith_const_22) {
            int arith_addi_34 = (arith_muli_30 + for_iter_33); 
            func_arg_6[arith_addi_32][arith_addi_34] = arith_const_20; 
            for (int for_iter_35 = arith_const_21; for_iter_35 < arith_const_16; for_iter_35 += arith_const_22) {
              int arith_muli_36 = (for_iter_35 * arith_const_15); 
              double memref_load_37 = func_arg_7[arith_addi_32][arith_muli_36]; 
              double arith_mulf_38 = (func_arg_4 * memref_load_37); 
              double memref_load_39 = func_arg_8[arith_muli_36][arith_addi_34]; 
              double arith_mulf_40 = (arith_mulf_38 * memref_load_39); 
              double memref_load_41 = func_arg_6[arith_addi_32][arith_addi_34]; 
              double arith_addf_42 = (memref_load_41 + arith_mulf_40); 
              func_arg_6[arith_addi_32][arith_addi_34] = arith_addf_42; 
              int arith_addi_43 = (arith_muli_36 + arith_const_22); 
              double memref_load_44 = func_arg_7[arith_addi_32][arith_addi_43]; 
              double arith_mulf_45 = (func_arg_4 * memref_load_44); 
              double memref_load_46 = func_arg_8[arith_addi_43][arith_addi_34]; 
              double arith_mulf_47 = (arith_mulf_45 * memref_load_46); 
              double memref_load_48 = func_arg_6[arith_addi_32][arith_addi_34]; 
              double arith_addf_49 = (memref_load_48 + arith_mulf_47); 
              func_arg_6[arith_addi_32][arith_addi_34] = arith_addf_49; 
              int arith_addi_50 = (arith_muli_36 + arith_const_14); 
              double memref_load_51 = func_arg_7[arith_addi_32][arith_addi_50]; 
              double arith_mulf_52 = (func_arg_4 * memref_load_51); 
              double memref_load_53 = func_arg_8[arith_addi_50][arith_addi_34]; 
              double arith_mulf_54 = (arith_mulf_52 * memref_load_53); 
              double memref_load_55 = func_arg_6[arith_addi_32][arith_addi_34]; 
              double arith_addf_56 = (memref_load_55 + arith_mulf_54); 
              func_arg_6[arith_addi_32][arith_addi_34] = arith_addf_56; 
              int arith_addi_57 = (arith_muli_36 + arith_const_13); 
              double memref_load_58 = func_arg_7[arith_addi_32][arith_addi_57]; 
              double arith_mulf_59 = (func_arg_4 * memref_load_58); 
              double memref_load_60 = func_arg_8[arith_addi_57][arith_addi_34]; 
              double arith_mulf_61 = (arith_mulf_59 * memref_load_60); 
              double memref_load_62 = func_arg_6[arith_addi_32][arith_addi_34]; 
              double arith_addf_63 = (memref_load_62 + arith_mulf_61); 
              func_arg_6[arith_addi_32][arith_addi_34] = arith_addf_63; 
            }
            for (int for_iter_64 = arith_const_21; for_iter_64 < arith_const_14; for_iter_64 += arith_const_22) {
              int arith_addi_65 = (for_iter_64 + arith_const_12); 
              double memref_load_66 = func_arg_7[arith_addi_32][arith_addi_65]; 
              double arith_mulf_67 = (func_arg_4 * memref_load_66); 
              double memref_load_68 = func_arg_8[arith_addi_65][arith_addi_34]; 
              double arith_mulf_69 = (arith_mulf_67 * memref_load_68); 
              double memref_load_70 = func_arg_6[arith_addi_32][arith_addi_34]; 
              double arith_addf_71 = (memref_load_70 + arith_mulf_69); 
              func_arg_6[arith_addi_32][arith_addi_34] = arith_addf_71; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
    }
    async_group_23[async_group_index_24] = execute_token_27; 
    async_group_index_24++; 
    int arith_addi_72 = (for_iter_arg_26 + arith_const_22); 
    for_iter_arg_26 = arith_addi_72; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
  int* async_group_73; 
  int async_group_index_74 = 0; 
  int for_iter_arg_76 = arith_const_21; 
  for (int for_iter_75 = arith_const_21; for_iter_75 < arith_const_22; for_iter_75 += arith_const_22) {
    PAST_NEW_SEMAPHORE(execute_token_77); 
    #pragma peqc async_execute
    {
      int arith_muli_78 = (for_iter_75 * arith_const_19); 
      for (int for_iter_79 = arith_const_21; for_iter_79 < arith_const_22; for_iter_79 += arith_const_22) {
        int arith_muli_80 = (for_iter_79 * arith_const_19); 
        for (int for_iter_81 = arith_const_21; for_iter_81 < arith_const_18; for_iter_81 += arith_const_22) {
          int arith_addi_82 = (arith_muli_78 + for_iter_81); 
          for (int for_iter_83 = arith_const_21; for_iter_83 < arith_const_11; for_iter_83 += arith_const_22) {
            int arith_addi_84 = (arith_muli_80 + for_iter_83); 
            double memref_load_85 = func_arg_10[arith_addi_82][arith_addi_84]; 
            double arith_mulf_86 = (memref_load_85 * func_arg_5); 
            func_arg_10[arith_addi_82][arith_addi_84] = arith_mulf_86; 
            for (int for_iter_87 = arith_const_21; for_iter_87 < arith_const_15; for_iter_87 += arith_const_22) {
              int arith_muli_88 = (for_iter_87 * arith_const_15); 
              double memref_load_89 = func_arg_6[arith_addi_82][arith_muli_88]; 
              double memref_load_90 = func_arg_9[arith_muli_88][arith_addi_84]; 
              double arith_mulf_91 = (memref_load_89 * memref_load_90); 
              double memref_load_92 = func_arg_10[arith_addi_82][arith_addi_84]; 
              double arith_addf_93 = (memref_load_92 + arith_mulf_91); 
              func_arg_10[arith_addi_82][arith_addi_84] = arith_addf_93; 
              int arith_addi_94 = (arith_muli_88 + arith_const_22); 
              double memref_load_95 = func_arg_6[arith_addi_82][arith_addi_94]; 
              double memref_load_96 = func_arg_9[arith_addi_94][arith_addi_84]; 
              double arith_mulf_97 = (memref_load_95 * memref_load_96); 
              double memref_load_98 = func_arg_10[arith_addi_82][arith_addi_84]; 
              double arith_addf_99 = (memref_load_98 + arith_mulf_97); 
              func_arg_10[arith_addi_82][arith_addi_84] = arith_addf_99; 
              int arith_addi_100 = (arith_muli_88 + arith_const_14); 
              double memref_load_101 = func_arg_6[arith_addi_82][arith_addi_100]; 
              double memref_load_102 = func_arg_9[arith_addi_100][arith_addi_84]; 
              double arith_mulf_103 = (memref_load_101 * memref_load_102); 
              double memref_load_104 = func_arg_10[arith_addi_82][arith_addi_84]; 
              double arith_addf_105 = (memref_load_104 + arith_mulf_103); 
              func_arg_10[arith_addi_82][arith_addi_84] = arith_addf_105; 
              int arith_addi_106 = (arith_muli_88 + arith_const_13); 
              double memref_load_107 = func_arg_6[arith_addi_82][arith_addi_106]; 
              double memref_load_108 = func_arg_9[arith_addi_106][arith_addi_84]; 
              double arith_mulf_109 = (memref_load_107 * memref_load_108); 
              double memref_load_110 = func_arg_10[arith_addi_82][arith_addi_84]; 
              double arith_addf_111 = (memref_load_110 + arith_mulf_109); 
              func_arg_10[arith_addi_82][arith_addi_84] = arith_addf_111; 
            }
            for (int for_iter_112 = arith_const_21; for_iter_112 < arith_const_14; for_iter_112 += arith_const_22) {
              int arith_addi_113 = (for_iter_112 + arith_const_18); 
              double memref_load_114 = func_arg_6[arith_addi_82][arith_addi_113]; 
              double memref_load_115 = func_arg_9[arith_addi_113][arith_addi_84]; 
              double arith_mulf_116 = (memref_load_114 * memref_load_115); 
              double memref_load_117 = func_arg_10[arith_addi_82][arith_addi_84]; 
              double arith_addf_118 = (memref_load_117 + arith_mulf_116); 
              func_arg_10[arith_addi_82][arith_addi_84] = arith_addf_118; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_77, PAST_TASK_FINISHED); 
    }
    async_group_73[async_group_index_74] = execute_token_77; 
    async_group_index_74++; 
    int arith_addi_119 = (for_iter_arg_76 + arith_const_22); 
    for_iter_arg_76 = arith_addi_119; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_73, async_group_index_74, PAST_TASK_FINISHED); 
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
