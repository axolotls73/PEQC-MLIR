#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 40; 
  int arith_const_7 = -32; 
  int arith_const_8 = 32; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 10; 
  int arith_const_13 = 128; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  int* async_group_16; 
  int async_group_index_17 = 0; 
  int for_iter_arg_19 = arith_const_14; 
  for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      int arith_muli_21 = (for_iter_18 * arith_const_13); 
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_15; for_iter_22 += arith_const_15) {
        int arith_muli_23 = (for_iter_22 * arith_const_13); 
        for (int for_iter_24 = arith_const_14; for_iter_24 < arith_const_12; for_iter_24 += arith_const_15) {
          int arith_muli_25 = (for_iter_24 * arith_const_11); 
          int arith_addi_26 = (arith_muli_21 + arith_muli_25); 
          int arith_addi_27 = (arith_addi_26 + arith_const_15); 
          int arith_addi_28 = (arith_addi_26 + arith_const_10); 
          int arith_addi_29 = (arith_addi_26 + arith_const_9); 
          for (int for_iter_30 = arith_const_14; for_iter_30 < arith_const_12; for_iter_30 += arith_const_15) {
            int arith_muli_31 = (for_iter_30 * arith_const_11); 
            int arith_addi_32 = (arith_muli_23 + arith_muli_31); 
            double memref_load_33 = func_arg_1[arith_addi_26]; 
            double memref_load_34 = func_arg_5[arith_addi_26][arith_addi_32]; 
            double memref_load_35 = func_arg_3[arith_addi_32]; 
            double arith_mulf_36 = (memref_load_34 * memref_load_35); 
            double arith_addf_37 = (memref_load_33 + arith_mulf_36); 
            func_arg_1[arith_addi_26] = arith_addf_37; 
            int arith_addi_38 = (arith_addi_32 + arith_const_15); 
            double memref_load_39 = func_arg_1[arith_addi_26]; 
            double memref_load_40 = func_arg_5[arith_addi_26][arith_addi_38]; 
            double memref_load_41 = func_arg_3[arith_addi_38]; 
            double arith_mulf_42 = (memref_load_40 * memref_load_41); 
            double arith_addf_43 = (memref_load_39 + arith_mulf_42); 
            func_arg_1[arith_addi_26] = arith_addf_43; 
            int arith_addi_44 = (arith_addi_32 + arith_const_10); 
            double memref_load_45 = func_arg_1[arith_addi_26]; 
            double memref_load_46 = func_arg_5[arith_addi_26][arith_addi_44]; 
            double memref_load_47 = func_arg_3[arith_addi_44]; 
            double arith_mulf_48 = (memref_load_46 * memref_load_47); 
            double arith_addf_49 = (memref_load_45 + arith_mulf_48); 
            func_arg_1[arith_addi_26] = arith_addf_49; 
            int arith_addi_50 = (arith_addi_32 + arith_const_9); 
            double memref_load_51 = func_arg_1[arith_addi_26]; 
            double memref_load_52 = func_arg_5[arith_addi_26][arith_addi_50]; 
            double memref_load_53 = func_arg_3[arith_addi_50]; 
            double arith_mulf_54 = (memref_load_52 * memref_load_53); 
            double arith_addf_55 = (memref_load_51 + arith_mulf_54); 
            func_arg_1[arith_addi_26] = arith_addf_55; 
            double memref_load_56 = func_arg_1[arith_addi_27]; 
            double memref_load_57 = func_arg_5[arith_addi_27][arith_addi_32]; 
            double memref_load_58 = func_arg_3[arith_addi_32]; 
            double arith_mulf_59 = (memref_load_57 * memref_load_58); 
            double arith_addf_60 = (memref_load_56 + arith_mulf_59); 
            func_arg_1[arith_addi_27] = arith_addf_60; 
            int arith_addi_61 = (arith_addi_32 + arith_const_15); 
            double memref_load_62 = func_arg_1[arith_addi_27]; 
            double memref_load_63 = func_arg_5[arith_addi_27][arith_addi_61]; 
            double memref_load_64 = func_arg_3[arith_addi_61]; 
            double arith_mulf_65 = (memref_load_63 * memref_load_64); 
            double arith_addf_66 = (memref_load_62 + arith_mulf_65); 
            func_arg_1[arith_addi_27] = arith_addf_66; 
            int arith_addi_67 = (arith_addi_32 + arith_const_10); 
            double memref_load_68 = func_arg_1[arith_addi_27]; 
            double memref_load_69 = func_arg_5[arith_addi_27][arith_addi_67]; 
            double memref_load_70 = func_arg_3[arith_addi_67]; 
            double arith_mulf_71 = (memref_load_69 * memref_load_70); 
            double arith_addf_72 = (memref_load_68 + arith_mulf_71); 
            func_arg_1[arith_addi_27] = arith_addf_72; 
            int arith_addi_73 = (arith_addi_32 + arith_const_9); 
            double memref_load_74 = func_arg_1[arith_addi_27]; 
            double memref_load_75 = func_arg_5[arith_addi_27][arith_addi_73]; 
            double memref_load_76 = func_arg_3[arith_addi_73]; 
            double arith_mulf_77 = (memref_load_75 * memref_load_76); 
            double arith_addf_78 = (memref_load_74 + arith_mulf_77); 
            func_arg_1[arith_addi_27] = arith_addf_78; 
            double memref_load_79 = func_arg_1[arith_addi_28]; 
            double memref_load_80 = func_arg_5[arith_addi_28][arith_addi_32]; 
            double memref_load_81 = func_arg_3[arith_addi_32]; 
            double arith_mulf_82 = (memref_load_80 * memref_load_81); 
            double arith_addf_83 = (memref_load_79 + arith_mulf_82); 
            func_arg_1[arith_addi_28] = arith_addf_83; 
            int arith_addi_84 = (arith_addi_32 + arith_const_15); 
            double memref_load_85 = func_arg_1[arith_addi_28]; 
            double memref_load_86 = func_arg_5[arith_addi_28][arith_addi_84]; 
            double memref_load_87 = func_arg_3[arith_addi_84]; 
            double arith_mulf_88 = (memref_load_86 * memref_load_87); 
            double arith_addf_89 = (memref_load_85 + arith_mulf_88); 
            func_arg_1[arith_addi_28] = arith_addf_89; 
            int arith_addi_90 = (arith_addi_32 + arith_const_10); 
            double memref_load_91 = func_arg_1[arith_addi_28]; 
            double memref_load_92 = func_arg_5[arith_addi_28][arith_addi_90]; 
            double memref_load_93 = func_arg_3[arith_addi_90]; 
            double arith_mulf_94 = (memref_load_92 * memref_load_93); 
            double arith_addf_95 = (memref_load_91 + arith_mulf_94); 
            func_arg_1[arith_addi_28] = arith_addf_95; 
            int arith_addi_96 = (arith_addi_32 + arith_const_9); 
            double memref_load_97 = func_arg_1[arith_addi_28]; 
            double memref_load_98 = func_arg_5[arith_addi_28][arith_addi_96]; 
            double memref_load_99 = func_arg_3[arith_addi_96]; 
            double arith_mulf_100 = (memref_load_98 * memref_load_99); 
            double arith_addf_101 = (memref_load_97 + arith_mulf_100); 
            func_arg_1[arith_addi_28] = arith_addf_101; 
            double memref_load_102 = func_arg_1[arith_addi_29]; 
            double memref_load_103 = func_arg_5[arith_addi_29][arith_addi_32]; 
            double memref_load_104 = func_arg_3[arith_addi_32]; 
            double arith_mulf_105 = (memref_load_103 * memref_load_104); 
            double arith_addf_106 = (memref_load_102 + arith_mulf_105); 
            func_arg_1[arith_addi_29] = arith_addf_106; 
            int arith_addi_107 = (arith_addi_32 + arith_const_15); 
            double memref_load_108 = func_arg_1[arith_addi_29]; 
            double memref_load_109 = func_arg_5[arith_addi_29][arith_addi_107]; 
            double memref_load_110 = func_arg_3[arith_addi_107]; 
            double arith_mulf_111 = (memref_load_109 * memref_load_110); 
            double arith_addf_112 = (memref_load_108 + arith_mulf_111); 
            func_arg_1[arith_addi_29] = arith_addf_112; 
            int arith_addi_113 = (arith_addi_32 + arith_const_10); 
            double memref_load_114 = func_arg_1[arith_addi_29]; 
            double memref_load_115 = func_arg_5[arith_addi_29][arith_addi_113]; 
            double memref_load_116 = func_arg_3[arith_addi_113]; 
            double arith_mulf_117 = (memref_load_115 * memref_load_116); 
            double arith_addf_118 = (memref_load_114 + arith_mulf_117); 
            func_arg_1[arith_addi_29] = arith_addf_118; 
            int arith_addi_119 = (arith_addi_32 + arith_const_9); 
            double memref_load_120 = func_arg_1[arith_addi_29]; 
            double memref_load_121 = func_arg_5[arith_addi_29][arith_addi_119]; 
            double memref_load_122 = func_arg_3[arith_addi_119]; 
            double arith_mulf_123 = (memref_load_121 * memref_load_122); 
            double arith_addf_124 = (memref_load_120 + arith_mulf_123); 
            func_arg_1[arith_addi_29] = arith_addf_124; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_125 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_125; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  int* async_group_126; 
  int async_group_index_127 = 0; 
  int for_iter_arg_129 = arith_const_14; 
  for (int for_iter_128 = arith_const_14; for_iter_128 < arith_const_10; for_iter_128 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_130); 
    #pragma peqc async_execute
    {
      int arith_muli_131 = (for_iter_128 * arith_const_8); 
      for (int for_iter_132 = arith_const_14; for_iter_132 < arith_const_15; for_iter_132 += arith_const_15) {
        int arith_muli_133 = (for_iter_132 * arith_const_13); 
        int arith_muli_134 = (for_iter_128 * arith_const_7); 
        int arith_addi_135 = (arith_muli_134 + arith_const_6); 
        int arith_minsi_136 = min(arith_addi_135, arith_const_8); 
        for (int for_iter_137 = arith_const_14; for_iter_137 < arith_minsi_136; for_iter_137 += arith_const_15) {
          int arith_addi_138 = (arith_muli_131 + for_iter_137); 
          for (int for_iter_139 = arith_const_14; for_iter_139 < arith_const_12; for_iter_139 += arith_const_15) {
            int arith_muli_140 = (for_iter_139 * arith_const_11); 
            int arith_addi_141 = (arith_muli_133 + arith_muli_140); 
            double memref_load_142 = func_arg_2[arith_addi_138]; 
            double memref_load_143 = func_arg_5[arith_addi_141][arith_addi_138]; 
            double memref_load_144 = func_arg_4[arith_addi_141]; 
            double arith_mulf_145 = (memref_load_143 * memref_load_144); 
            double arith_addf_146 = (memref_load_142 + arith_mulf_145); 
            func_arg_2[arith_addi_138] = arith_addf_146; 
            int arith_addi_147 = (arith_addi_141 + arith_const_15); 
            double memref_load_148 = func_arg_2[arith_addi_138]; 
            double memref_load_149 = func_arg_5[arith_addi_147][arith_addi_138]; 
            double memref_load_150 = func_arg_4[arith_addi_147]; 
            double arith_mulf_151 = (memref_load_149 * memref_load_150); 
            double arith_addf_152 = (memref_load_148 + arith_mulf_151); 
            func_arg_2[arith_addi_138] = arith_addf_152; 
            int arith_addi_153 = (arith_addi_141 + arith_const_10); 
            double memref_load_154 = func_arg_2[arith_addi_138]; 
            double memref_load_155 = func_arg_5[arith_addi_153][arith_addi_138]; 
            double memref_load_156 = func_arg_4[arith_addi_153]; 
            double arith_mulf_157 = (memref_load_155 * memref_load_156); 
            double arith_addf_158 = (memref_load_154 + arith_mulf_157); 
            func_arg_2[arith_addi_138] = arith_addf_158; 
            int arith_addi_159 = (arith_addi_141 + arith_const_9); 
            double memref_load_160 = func_arg_2[arith_addi_138]; 
            double memref_load_161 = func_arg_5[arith_addi_159][arith_addi_138]; 
            double memref_load_162 = func_arg_4[arith_addi_159]; 
            double arith_mulf_163 = (memref_load_161 * memref_load_162); 
            double arith_addf_164 = (memref_load_160 + arith_mulf_163); 
            func_arg_2[arith_addi_138] = arith_addf_164; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_130, PAST_TASK_FINISHED); 
    }
    async_group_126[async_group_index_127] = execute_token_130; 
    async_group_index_127++; 
    int arith_addi_165 = (for_iter_arg_129 + arith_const_15); 
    for_iter_arg_129 = arith_addi_165; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_126, async_group_index_127, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;

#pragma peqc async_execute
{
  kernel_mvt(n, x1, x2, y_1, y_2, A);
}
}

#pragma pocc-region-end
