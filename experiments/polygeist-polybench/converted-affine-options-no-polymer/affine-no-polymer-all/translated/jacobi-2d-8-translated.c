#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 7; 
  int arith_const_9 = 28; 
  int arith_const_10 = 20; 
  double arith_const_11 = 0.200000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 1; 
  int* async_group_14; 
  int async_group_index_15 = 0; 
  int for_iter_arg_17 = arith_const_12; 
  for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_13; for_iter_16 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_18); 
    #pragma peqc async_execute
    {
      for (int for_iter_19 = arith_const_12; for_iter_19 < arith_const_10; for_iter_19 += arith_const_13) {
        for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_9; for_iter_20 += arith_const_13) {
          int arith_addi_21 = (for_iter_20 + arith_const_13); 
          for (int for_iter_22 = arith_const_12; for_iter_22 < arith_const_8; for_iter_22 += arith_const_13) {
            int arith_muli_23 = (for_iter_22 * arith_const_7); 
            int arith_addi_24 = (arith_muli_23 + arith_const_13); 
            double memref_load_25 = func_arg_2[arith_addi_21][arith_addi_24]; 
            int arith_addi_26 = (arith_addi_24 + arith_const_6); 
            double memref_load_27 = func_arg_2[arith_addi_21][arith_addi_26]; 
            double arith_addf_28 = (memref_load_25 + memref_load_27); 
            int arith_addi_29 = (arith_addi_24 + arith_const_13); 
            double memref_load_30 = func_arg_2[arith_addi_21][arith_addi_29]; 
            double arith_addf_31 = (arith_addf_28 + memref_load_30); 
            int arith_addi_32 = (arith_addi_21 + arith_const_13); 
            double memref_load_33 = func_arg_2[arith_addi_32][arith_addi_24]; 
            double arith_addf_34 = (arith_addf_31 + memref_load_33); 
            int arith_addi_35 = (arith_addi_21 + arith_const_6); 
            double memref_load_36 = func_arg_2[arith_addi_35][arith_addi_24]; 
            double arith_addf_37 = (arith_addf_34 + memref_load_36); 
            double arith_mulf_38 = (arith_addf_37 * arith_const_11); 
            func_arg_3[arith_addi_21][arith_addi_24] = arith_mulf_38; 
            int arith_addi_39 = (arith_addi_24 + arith_const_13); 
            double memref_load_40 = func_arg_2[arith_addi_21][arith_addi_39]; 
            int arith_addi_41 = (arith_addi_39 + arith_const_6); 
            double memref_load_42 = func_arg_2[arith_addi_21][arith_addi_41]; 
            double arith_addf_43 = (memref_load_40 + memref_load_42); 
            int arith_addi_44 = (arith_addi_39 + arith_const_13); 
            double memref_load_45 = func_arg_2[arith_addi_21][arith_addi_44]; 
            double arith_addf_46 = (arith_addf_43 + memref_load_45); 
            int arith_addi_47 = (arith_addi_21 + arith_const_13); 
            double memref_load_48 = func_arg_2[arith_addi_47][arith_addi_39]; 
            double arith_addf_49 = (arith_addf_46 + memref_load_48); 
            int arith_addi_50 = (arith_addi_21 + arith_const_6); 
            double memref_load_51 = func_arg_2[arith_addi_50][arith_addi_39]; 
            double arith_addf_52 = (arith_addf_49 + memref_load_51); 
            double arith_mulf_53 = (arith_addf_52 * arith_const_11); 
            func_arg_3[arith_addi_21][arith_addi_39] = arith_mulf_53; 
            int arith_addi_54 = (arith_addi_24 + arith_const_5); 
            double memref_load_55 = func_arg_2[arith_addi_21][arith_addi_54]; 
            int arith_addi_56 = (arith_addi_54 + arith_const_6); 
            double memref_load_57 = func_arg_2[arith_addi_21][arith_addi_56]; 
            double arith_addf_58 = (memref_load_55 + memref_load_57); 
            int arith_addi_59 = (arith_addi_54 + arith_const_13); 
            double memref_load_60 = func_arg_2[arith_addi_21][arith_addi_59]; 
            double arith_addf_61 = (arith_addf_58 + memref_load_60); 
            int arith_addi_62 = (arith_addi_21 + arith_const_13); 
            double memref_load_63 = func_arg_2[arith_addi_62][arith_addi_54]; 
            double arith_addf_64 = (arith_addf_61 + memref_load_63); 
            int arith_addi_65 = (arith_addi_21 + arith_const_6); 
            double memref_load_66 = func_arg_2[arith_addi_65][arith_addi_54]; 
            double arith_addf_67 = (arith_addf_64 + memref_load_66); 
            double arith_mulf_68 = (arith_addf_67 * arith_const_11); 
            func_arg_3[arith_addi_21][arith_addi_54] = arith_mulf_68; 
            int arith_addi_69 = (arith_addi_24 + arith_const_4); 
            double memref_load_70 = func_arg_2[arith_addi_21][arith_addi_69]; 
            int arith_addi_71 = (arith_addi_69 + arith_const_6); 
            double memref_load_72 = func_arg_2[arith_addi_21][arith_addi_71]; 
            double arith_addf_73 = (memref_load_70 + memref_load_72); 
            int arith_addi_74 = (arith_addi_69 + arith_const_13); 
            double memref_load_75 = func_arg_2[arith_addi_21][arith_addi_74]; 
            double arith_addf_76 = (arith_addf_73 + memref_load_75); 
            int arith_addi_77 = (arith_addi_21 + arith_const_13); 
            double memref_load_78 = func_arg_2[arith_addi_77][arith_addi_69]; 
            double arith_addf_79 = (arith_addf_76 + memref_load_78); 
            int arith_addi_80 = (arith_addi_21 + arith_const_6); 
            double memref_load_81 = func_arg_2[arith_addi_80][arith_addi_69]; 
            double arith_addf_82 = (arith_addf_79 + memref_load_81); 
            double arith_mulf_83 = (arith_addf_82 * arith_const_11); 
            func_arg_3[arith_addi_21][arith_addi_69] = arith_mulf_83; 
          }
        }
        for (int for_iter_84 = arith_const_12; for_iter_84 < arith_const_9; for_iter_84 += arith_const_13) {
          int arith_addi_85 = (for_iter_84 + arith_const_13); 
          for (int for_iter_86 = arith_const_12; for_iter_86 < arith_const_8; for_iter_86 += arith_const_13) {
            int arith_muli_87 = (for_iter_86 * arith_const_7); 
            int arith_addi_88 = (arith_muli_87 + arith_const_13); 
            double memref_load_89 = func_arg_3[arith_addi_85][arith_addi_88]; 
            int arith_addi_90 = (arith_addi_88 + arith_const_6); 
            double memref_load_91 = func_arg_3[arith_addi_85][arith_addi_90]; 
            double arith_addf_92 = (memref_load_89 + memref_load_91); 
            int arith_addi_93 = (arith_addi_88 + arith_const_13); 
            double memref_load_94 = func_arg_3[arith_addi_85][arith_addi_93]; 
            double arith_addf_95 = (arith_addf_92 + memref_load_94); 
            int arith_addi_96 = (arith_addi_85 + arith_const_13); 
            double memref_load_97 = func_arg_3[arith_addi_96][arith_addi_88]; 
            double arith_addf_98 = (arith_addf_95 + memref_load_97); 
            int arith_addi_99 = (arith_addi_85 + arith_const_6); 
            double memref_load_100 = func_arg_3[arith_addi_99][arith_addi_88]; 
            double arith_addf_101 = (arith_addf_98 + memref_load_100); 
            double arith_mulf_102 = (arith_addf_101 * arith_const_11); 
            func_arg_2[arith_addi_85][arith_addi_88] = arith_mulf_102; 
            int arith_addi_103 = (arith_addi_88 + arith_const_13); 
            double memref_load_104 = func_arg_3[arith_addi_85][arith_addi_103]; 
            int arith_addi_105 = (arith_addi_103 + arith_const_6); 
            double memref_load_106 = func_arg_3[arith_addi_85][arith_addi_105]; 
            double arith_addf_107 = (memref_load_104 + memref_load_106); 
            int arith_addi_108 = (arith_addi_103 + arith_const_13); 
            double memref_load_109 = func_arg_3[arith_addi_85][arith_addi_108]; 
            double arith_addf_110 = (arith_addf_107 + memref_load_109); 
            int arith_addi_111 = (arith_addi_85 + arith_const_13); 
            double memref_load_112 = func_arg_3[arith_addi_111][arith_addi_103]; 
            double arith_addf_113 = (arith_addf_110 + memref_load_112); 
            int arith_addi_114 = (arith_addi_85 + arith_const_6); 
            double memref_load_115 = func_arg_3[arith_addi_114][arith_addi_103]; 
            double arith_addf_116 = (arith_addf_113 + memref_load_115); 
            double arith_mulf_117 = (arith_addf_116 * arith_const_11); 
            func_arg_2[arith_addi_85][arith_addi_103] = arith_mulf_117; 
            int arith_addi_118 = (arith_addi_88 + arith_const_5); 
            double memref_load_119 = func_arg_3[arith_addi_85][arith_addi_118]; 
            int arith_addi_120 = (arith_addi_118 + arith_const_6); 
            double memref_load_121 = func_arg_3[arith_addi_85][arith_addi_120]; 
            double arith_addf_122 = (memref_load_119 + memref_load_121); 
            int arith_addi_123 = (arith_addi_118 + arith_const_13); 
            double memref_load_124 = func_arg_3[arith_addi_85][arith_addi_123]; 
            double arith_addf_125 = (arith_addf_122 + memref_load_124); 
            int arith_addi_126 = (arith_addi_85 + arith_const_13); 
            double memref_load_127 = func_arg_3[arith_addi_126][arith_addi_118]; 
            double arith_addf_128 = (arith_addf_125 + memref_load_127); 
            int arith_addi_129 = (arith_addi_85 + arith_const_6); 
            double memref_load_130 = func_arg_3[arith_addi_129][arith_addi_118]; 
            double arith_addf_131 = (arith_addf_128 + memref_load_130); 
            double arith_mulf_132 = (arith_addf_131 * arith_const_11); 
            func_arg_2[arith_addi_85][arith_addi_118] = arith_mulf_132; 
            int arith_addi_133 = (arith_addi_88 + arith_const_4); 
            double memref_load_134 = func_arg_3[arith_addi_85][arith_addi_133]; 
            int arith_addi_135 = (arith_addi_133 + arith_const_6); 
            double memref_load_136 = func_arg_3[arith_addi_85][arith_addi_135]; 
            double arith_addf_137 = (memref_load_134 + memref_load_136); 
            int arith_addi_138 = (arith_addi_133 + arith_const_13); 
            double memref_load_139 = func_arg_3[arith_addi_85][arith_addi_138]; 
            double arith_addf_140 = (arith_addf_137 + memref_load_139); 
            int arith_addi_141 = (arith_addi_85 + arith_const_13); 
            double memref_load_142 = func_arg_3[arith_addi_141][arith_addi_133]; 
            double arith_addf_143 = (arith_addf_140 + memref_load_142); 
            int arith_addi_144 = (arith_addi_85 + arith_const_6); 
            double memref_load_145 = func_arg_3[arith_addi_144][arith_addi_133]; 
            double arith_addf_146 = (arith_addf_143 + memref_load_145); 
            double arith_mulf_147 = (arith_addf_146 * arith_const_11); 
            func_arg_2[arith_addi_85][arith_addi_133] = arith_mulf_147; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
    }
    async_group_14[async_group_index_15] = execute_token_18; 
    async_group_index_15++; 
    int arith_addi_148 = (for_iter_arg_17 + arith_const_13); 
    for_iter_arg_17 = arith_addi_148; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_2d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
