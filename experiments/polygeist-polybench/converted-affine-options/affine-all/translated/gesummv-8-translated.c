#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 28; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = 4; 
  double arith_const_13 = 0.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 7; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    int arith_muli_18 = (for_iter_17 * arith_const_12); 
    for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_16; for_iter_19 += arith_const_16) {
      int arith_muli_20 = (for_iter_19 * arith_const_12); 
      int arith_addi_21 = (arith_muli_18 + arith_muli_20); 
      func_arg_7[arith_addi_21] = arith_const_13; 
      int arith_addi_22 = (arith_addi_21 + arith_const_16); 
      func_arg_7[arith_addi_22] = arith_const_13; 
      int arith_addi_23 = (arith_addi_21 + arith_const_11); 
      func_arg_7[arith_addi_23] = arith_const_13; 
      int arith_addi_24 = (arith_addi_21 + arith_const_10); 
      func_arg_7[arith_addi_24] = arith_const_13; 
    }
  }
  int* async_group_25; 
  int async_group_index_26 = 0; 
  int for_iter_arg_28 = arith_const_14; 
  for (int for_iter_27 = arith_const_14; for_iter_27 < arith_const_11; for_iter_27 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_29); 
    #pragma peqc async_execute
    {
      int arith_addi_30 = (for_iter_27 + arith_const_9); 
      for (int for_iter_31 = arith_const_14; for_iter_31 < arith_const_16; for_iter_31 += arith_const_16) {
        int arith_addi_32 = (arith_addi_30 + for_iter_31); 
        func_arg_7[arith_addi_32] = arith_const_13; 
      }
      PAST_SET_SEMAPHORE(execute_token_29, PAST_TASK_FINISHED); 
    }
    async_group_25[async_group_index_26] = execute_token_29; 
    async_group_index_26++; 
    int arith_addi_33 = (for_iter_arg_28 + arith_const_16); 
    for_iter_arg_28 = arith_addi_33; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_25, async_group_index_26, PAST_TASK_FINISHED); 
  int* async_group_34; 
  int async_group_index_35 = 0; 
  int for_iter_arg_37 = arith_const_14; 
  for (int for_iter_36 = arith_const_14; for_iter_36 < arith_const_8; for_iter_36 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_38); 
    #pragma peqc async_execute
    {
      for (int for_iter_39 = arith_const_14; for_iter_39 < arith_const_16; for_iter_39 += arith_const_16) {
        int arith_addi_40 = (for_iter_36 + for_iter_39); 
        for (int for_iter_41 = arith_const_14; for_iter_41 < arith_const_15; for_iter_41 += arith_const_16) {
          int arith_muli_42 = (for_iter_41 * arith_const_12); 
          double memref_load_43 = func_arg_4[arith_addi_40][arith_muli_42]; 
          double memref_load_44 = func_arg_6[arith_muli_42]; 
          double arith_mulf_45 = (memref_load_43 * memref_load_44); 
          double memref_load_46 = func_arg_7[arith_addi_40]; 
          double arith_addf_47 = (arith_mulf_45 + memref_load_46); 
          func_arg_7[arith_addi_40] = arith_addf_47; 
          int arith_addi_48 = (arith_muli_42 + arith_const_16); 
          double memref_load_49 = func_arg_4[arith_addi_40][arith_addi_48]; 
          double memref_load_50 = func_arg_6[arith_addi_48]; 
          double arith_mulf_51 = (memref_load_49 * memref_load_50); 
          double memref_load_52 = func_arg_7[arith_addi_40]; 
          double arith_addf_53 = (arith_mulf_51 + memref_load_52); 
          func_arg_7[arith_addi_40] = arith_addf_53; 
          int arith_addi_54 = (arith_muli_42 + arith_const_11); 
          double memref_load_55 = func_arg_4[arith_addi_40][arith_addi_54]; 
          double memref_load_56 = func_arg_6[arith_addi_54]; 
          double arith_mulf_57 = (memref_load_55 * memref_load_56); 
          double memref_load_58 = func_arg_7[arith_addi_40]; 
          double arith_addf_59 = (arith_mulf_57 + memref_load_58); 
          func_arg_7[arith_addi_40] = arith_addf_59; 
          int arith_addi_60 = (arith_muli_42 + arith_const_10); 
          double memref_load_61 = func_arg_4[arith_addi_40][arith_addi_60]; 
          double memref_load_62 = func_arg_6[arith_addi_60]; 
          double arith_mulf_63 = (memref_load_61 * memref_load_62); 
          double memref_load_64 = func_arg_7[arith_addi_40]; 
          double arith_addf_65 = (arith_mulf_63 + memref_load_64); 
          func_arg_7[arith_addi_40] = arith_addf_65; 
        }
        for (int for_iter_66 = arith_const_14; for_iter_66 < arith_const_11; for_iter_66 += arith_const_16) {
          int arith_addi_67 = (for_iter_66 + arith_const_9); 
          double memref_load_68 = func_arg_4[arith_addi_40][arith_addi_67]; 
          double memref_load_69 = func_arg_6[arith_addi_67]; 
          double arith_mulf_70 = (memref_load_68 * memref_load_69); 
          double memref_load_71 = func_arg_7[arith_addi_40]; 
          double arith_addf_72 = (arith_mulf_70 + memref_load_71); 
          func_arg_7[arith_addi_40] = arith_addf_72; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_38, PAST_TASK_FINISHED); 
    }
    async_group_34[async_group_index_35] = execute_token_38; 
    async_group_index_35++; 
    int arith_addi_73 = (for_iter_arg_37 + arith_const_16); 
    for_iter_arg_37 = arith_addi_73; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_34, async_group_index_35, PAST_TASK_FINISHED); 
  for (int for_iter_74 = arith_const_14; for_iter_74 < arith_const_15; for_iter_74 += arith_const_16) {
    int arith_muli_75 = (for_iter_74 * arith_const_12); 
    for (int for_iter_76 = arith_const_14; for_iter_76 < arith_const_16; for_iter_76 += arith_const_16) {
      int arith_muli_77 = (for_iter_76 * arith_const_12); 
      int arith_addi_78 = (arith_muli_75 + arith_muli_77); 
      func_arg_5[arith_addi_78] = arith_const_13; 
      int arith_addi_79 = (arith_addi_78 + arith_const_16); 
      func_arg_5[arith_addi_79] = arith_const_13; 
      int arith_addi_80 = (arith_addi_78 + arith_const_11); 
      func_arg_5[arith_addi_80] = arith_const_13; 
      int arith_addi_81 = (arith_addi_78 + arith_const_10); 
      func_arg_5[arith_addi_81] = arith_const_13; 
    }
  }
  int* async_group_82; 
  int async_group_index_83 = 0; 
  int for_iter_arg_85 = arith_const_14; 
  for (int for_iter_84 = arith_const_14; for_iter_84 < arith_const_11; for_iter_84 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_86); 
    #pragma peqc async_execute
    {
      int arith_addi_87 = (for_iter_84 + arith_const_9); 
      for (int for_iter_88 = arith_const_14; for_iter_88 < arith_const_16; for_iter_88 += arith_const_16) {
        int arith_addi_89 = (arith_addi_87 + for_iter_88); 
        func_arg_5[arith_addi_89] = arith_const_13; 
      }
      PAST_SET_SEMAPHORE(execute_token_86, PAST_TASK_FINISHED); 
    }
    async_group_82[async_group_index_83] = execute_token_86; 
    async_group_index_83++; 
    int arith_addi_90 = (for_iter_arg_85 + arith_const_16); 
    for_iter_arg_85 = arith_addi_90; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_82, async_group_index_83, PAST_TASK_FINISHED); 
  int* async_group_91; 
  int async_group_index_92 = 0; 
  int for_iter_arg_94 = arith_const_14; 
  for (int for_iter_93 = arith_const_14; for_iter_93 < arith_const_8; for_iter_93 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_95); 
    #pragma peqc async_execute
    {
      for (int for_iter_96 = arith_const_14; for_iter_96 < arith_const_16; for_iter_96 += arith_const_16) {
        int arith_addi_97 = (for_iter_93 + for_iter_96); 
        for (int for_iter_98 = arith_const_14; for_iter_98 < arith_const_15; for_iter_98 += arith_const_16) {
          int arith_muli_99 = (for_iter_98 * arith_const_12); 
          double memref_load_100 = func_arg_3[arith_addi_97][arith_muli_99]; 
          double memref_load_101 = func_arg_6[arith_muli_99]; 
          double arith_mulf_102 = (memref_load_100 * memref_load_101); 
          double memref_load_103 = func_arg_5[arith_addi_97]; 
          double arith_addf_104 = (arith_mulf_102 + memref_load_103); 
          func_arg_5[arith_addi_97] = arith_addf_104; 
          int arith_addi_105 = (arith_muli_99 + arith_const_16); 
          double memref_load_106 = func_arg_3[arith_addi_97][arith_addi_105]; 
          double memref_load_107 = func_arg_6[arith_addi_105]; 
          double arith_mulf_108 = (memref_load_106 * memref_load_107); 
          double memref_load_109 = func_arg_5[arith_addi_97]; 
          double arith_addf_110 = (arith_mulf_108 + memref_load_109); 
          func_arg_5[arith_addi_97] = arith_addf_110; 
          int arith_addi_111 = (arith_muli_99 + arith_const_11); 
          double memref_load_112 = func_arg_3[arith_addi_97][arith_addi_111]; 
          double memref_load_113 = func_arg_6[arith_addi_111]; 
          double arith_mulf_114 = (memref_load_112 * memref_load_113); 
          double memref_load_115 = func_arg_5[arith_addi_97]; 
          double arith_addf_116 = (arith_mulf_114 + memref_load_115); 
          func_arg_5[arith_addi_97] = arith_addf_116; 
          int arith_addi_117 = (arith_muli_99 + arith_const_10); 
          double memref_load_118 = func_arg_3[arith_addi_97][arith_addi_117]; 
          double memref_load_119 = func_arg_6[arith_addi_117]; 
          double arith_mulf_120 = (memref_load_118 * memref_load_119); 
          double memref_load_121 = func_arg_5[arith_addi_97]; 
          double arith_addf_122 = (arith_mulf_120 + memref_load_121); 
          func_arg_5[arith_addi_97] = arith_addf_122; 
        }
        for (int for_iter_123 = arith_const_14; for_iter_123 < arith_const_11; for_iter_123 += arith_const_16) {
          int arith_addi_124 = (for_iter_123 + arith_const_9); 
          double memref_load_125 = func_arg_3[arith_addi_97][arith_addi_124]; 
          double memref_load_126 = func_arg_6[arith_addi_124]; 
          double arith_mulf_127 = (memref_load_125 * memref_load_126); 
          double memref_load_128 = func_arg_5[arith_addi_97]; 
          double arith_addf_129 = (arith_mulf_127 + memref_load_128); 
          func_arg_5[arith_addi_97] = arith_addf_129; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_95, PAST_TASK_FINISHED); 
    }
    async_group_91[async_group_index_92] = execute_token_95; 
    async_group_index_92++; 
    int arith_addi_130 = (for_iter_arg_94 + arith_const_16); 
    for_iter_arg_94 = arith_addi_130; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_91, async_group_index_92, PAST_TASK_FINISHED); 
  for (int for_iter_131 = arith_const_14; for_iter_131 < arith_const_15; for_iter_131 += arith_const_16) {
    int arith_muli_132 = (for_iter_131 * arith_const_12); 
    for (int for_iter_133 = arith_const_14; for_iter_133 < arith_const_16; for_iter_133 += arith_const_16) {
      int arith_muli_134 = (for_iter_133 * arith_const_12); 
      int arith_addi_135 = (arith_muli_132 + arith_muli_134); 
      double memref_load_136 = func_arg_5[arith_addi_135]; 
      double arith_mulf_137 = (func_arg_1 * memref_load_136); 
      double memref_load_138 = func_arg_7[arith_addi_135]; 
      double arith_mulf_139 = (func_arg_2 * memref_load_138); 
      double arith_addf_140 = (arith_mulf_137 + arith_mulf_139); 
      func_arg_7[arith_addi_135] = arith_addf_140; 
      int arith_addi_141 = (arith_addi_135 + arith_const_16); 
      double memref_load_142 = func_arg_5[arith_addi_141]; 
      double arith_mulf_143 = (func_arg_1 * memref_load_142); 
      double memref_load_144 = func_arg_7[arith_addi_141]; 
      double arith_mulf_145 = (func_arg_2 * memref_load_144); 
      double arith_addf_146 = (arith_mulf_143 + arith_mulf_145); 
      func_arg_7[arith_addi_141] = arith_addf_146; 
      int arith_addi_147 = (arith_addi_135 + arith_const_11); 
      double memref_load_148 = func_arg_5[arith_addi_147]; 
      double arith_mulf_149 = (func_arg_1 * memref_load_148); 
      double memref_load_150 = func_arg_7[arith_addi_147]; 
      double arith_mulf_151 = (func_arg_2 * memref_load_150); 
      double arith_addf_152 = (arith_mulf_149 + arith_mulf_151); 
      func_arg_7[arith_addi_147] = arith_addf_152; 
      int arith_addi_153 = (arith_addi_135 + arith_const_10); 
      double memref_load_154 = func_arg_5[arith_addi_153]; 
      double arith_mulf_155 = (func_arg_1 * memref_load_154); 
      double memref_load_156 = func_arg_7[arith_addi_153]; 
      double arith_mulf_157 = (func_arg_2 * memref_load_156); 
      double arith_addf_158 = (arith_mulf_155 + arith_mulf_157); 
      func_arg_7[arith_addi_153] = arith_addf_158; 
    }
  }
  int* async_group_159; 
  int async_group_index_160 = 0; 
  int for_iter_arg_162 = arith_const_14; 
  for (int for_iter_161 = arith_const_14; for_iter_161 < arith_const_11; for_iter_161 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_163); 
    #pragma peqc async_execute
    {
      int arith_addi_164 = (for_iter_161 + arith_const_9); 
      for (int for_iter_165 = arith_const_14; for_iter_165 < arith_const_16; for_iter_165 += arith_const_16) {
        int arith_addi_166 = (arith_addi_164 + for_iter_165); 
        double memref_load_167 = func_arg_5[arith_addi_166]; 
        double arith_mulf_168 = (func_arg_1 * memref_load_167); 
        double memref_load_169 = func_arg_7[arith_addi_166]; 
        double arith_mulf_170 = (func_arg_2 * memref_load_169); 
        double arith_addf_171 = (arith_mulf_168 + arith_mulf_170); 
        func_arg_7[arith_addi_166] = arith_addf_171; 
      }
      PAST_SET_SEMAPHORE(execute_token_163, PAST_TASK_FINISHED); 
    }
    async_group_159[async_group_index_160] = execute_token_163; 
    async_group_index_160++; 
    int arith_addi_172 = (for_iter_arg_162 + arith_const_16); 
    for_iter_arg_162 = arith_addi_172; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_159, async_group_index_160, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* B;
  double* tmp;
  double* x;
  double* y;

#pragma peqc async_execute
{
  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);
}
}

#pragma pocc-region-end
