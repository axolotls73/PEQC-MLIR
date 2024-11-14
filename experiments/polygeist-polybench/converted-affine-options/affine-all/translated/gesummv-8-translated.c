#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 28; 
  int arith_const_10 = 32; 
  int arith_const_11 = 3; 
  int arith_const_12 = 2; 
  int arith_const_13 = 4; 
  int arith_const_14 = 7; 
  int arith_const_15 = 128; 
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
      int arith_muli_24 = (for_iter_21 * arith_const_15); 
      for (int for_iter_25 = arith_const_17; for_iter_25 < arith_const_14; for_iter_25 += arith_const_18) {
        int arith_muli_26 = (for_iter_25 * arith_const_13); 
        int arith_addi_27 = (arith_muli_24 + arith_muli_26); 
        func_arg_7[arith_addi_27] = arith_const_16; 
        int arith_addi_28 = (arith_addi_27 + arith_const_18); 
        func_arg_7[arith_addi_28] = arith_const_16; 
        int arith_addi_29 = (arith_addi_27 + arith_const_12); 
        func_arg_7[arith_addi_29] = arith_const_16; 
        int arith_addi_30 = (arith_addi_27 + arith_const_11); 
        func_arg_7[arith_addi_30] = arith_const_16; 
      }
      PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
    }
    async_group_19[async_group_index_20] = execute_token_23; 
    async_group_index_20++; 
    int arith_addi_31 = (for_iter_arg_22 + arith_const_18); 
    for_iter_arg_22 = arith_addi_31; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
  int* async_group_32; 
  int async_group_index_33 = 0; 
  int for_iter_arg_35 = arith_const_17; 
  for (int for_iter_34 = arith_const_17; for_iter_34 < arith_const_18; for_iter_34 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_36); 
    #pragma peqc async_execute
    {
      int arith_muli_37 = (for_iter_34 * arith_const_10); 
      int arith_addi_38 = (arith_muli_37 + arith_const_9); 
      for (int for_iter_39 = arith_const_17; for_iter_39 < arith_const_12; for_iter_39 += arith_const_18) {
        int arith_addi_40 = (arith_addi_38 + for_iter_39); 
        func_arg_7[arith_addi_40] = arith_const_16; 
      }
      PAST_SET_SEMAPHORE(execute_token_36, PAST_TASK_FINISHED); 
    }
    async_group_32[async_group_index_33] = execute_token_36; 
    async_group_index_33++; 
    int arith_addi_41 = (for_iter_arg_35 + arith_const_18); 
    for_iter_arg_35 = arith_addi_41; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_32, async_group_index_33, PAST_TASK_FINISHED); 
  int* async_group_42; 
  int async_group_index_43 = 0; 
  int for_iter_arg_45 = arith_const_17; 
  for (int for_iter_44 = arith_const_17; for_iter_44 < arith_const_18; for_iter_44 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_46); 
    #pragma peqc async_execute
    {
      int arith_muli_47 = (for_iter_44 * arith_const_10); 
      for (int for_iter_48 = arith_const_17; for_iter_48 < arith_const_8; for_iter_48 += arith_const_18) {
        int arith_addi_49 = (arith_muli_47 + for_iter_48); 
        for (int for_iter_50 = arith_const_17; for_iter_50 < arith_const_14; for_iter_50 += arith_const_18) {
          int arith_muli_51 = (for_iter_50 * arith_const_13); 
          double memref_load_52 = func_arg_4[arith_addi_49][arith_muli_51]; 
          double memref_load_53 = func_arg_6[arith_muli_51]; 
          double arith_mulf_54 = (memref_load_52 * memref_load_53); 
          double memref_load_55 = func_arg_7[arith_addi_49]; 
          double arith_addf_56 = (arith_mulf_54 + memref_load_55); 
          func_arg_7[arith_addi_49] = arith_addf_56; 
          int arith_addi_57 = (arith_muli_51 + arith_const_18); 
          double memref_load_58 = func_arg_4[arith_addi_49][arith_addi_57]; 
          double memref_load_59 = func_arg_6[arith_addi_57]; 
          double arith_mulf_60 = (memref_load_58 * memref_load_59); 
          double memref_load_61 = func_arg_7[arith_addi_49]; 
          double arith_addf_62 = (arith_mulf_60 + memref_load_61); 
          func_arg_7[arith_addi_49] = arith_addf_62; 
          int arith_addi_63 = (arith_muli_51 + arith_const_12); 
          double memref_load_64 = func_arg_4[arith_addi_49][arith_addi_63]; 
          double memref_load_65 = func_arg_6[arith_addi_63]; 
          double arith_mulf_66 = (memref_load_64 * memref_load_65); 
          double memref_load_67 = func_arg_7[arith_addi_49]; 
          double arith_addf_68 = (arith_mulf_66 + memref_load_67); 
          func_arg_7[arith_addi_49] = arith_addf_68; 
          int arith_addi_69 = (arith_muli_51 + arith_const_11); 
          double memref_load_70 = func_arg_4[arith_addi_49][arith_addi_69]; 
          double memref_load_71 = func_arg_6[arith_addi_69]; 
          double arith_mulf_72 = (memref_load_70 * memref_load_71); 
          double memref_load_73 = func_arg_7[arith_addi_49]; 
          double arith_addf_74 = (arith_mulf_72 + memref_load_73); 
          func_arg_7[arith_addi_49] = arith_addf_74; 
        }
        for (int for_iter_75 = arith_const_17; for_iter_75 < arith_const_12; for_iter_75 += arith_const_18) {
          int arith_addi_76 = (for_iter_75 + arith_const_9); 
          double memref_load_77 = func_arg_4[arith_addi_49][arith_addi_76]; 
          double memref_load_78 = func_arg_6[arith_addi_76]; 
          double arith_mulf_79 = (memref_load_77 * memref_load_78); 
          double memref_load_80 = func_arg_7[arith_addi_49]; 
          double arith_addf_81 = (arith_mulf_79 + memref_load_80); 
          func_arg_7[arith_addi_49] = arith_addf_81; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_46, PAST_TASK_FINISHED); 
    }
    async_group_42[async_group_index_43] = execute_token_46; 
    async_group_index_43++; 
    int arith_addi_82 = (for_iter_arg_45 + arith_const_18); 
    for_iter_arg_45 = arith_addi_82; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_42, async_group_index_43, PAST_TASK_FINISHED); 
  int* async_group_83; 
  int async_group_index_84 = 0; 
  int for_iter_arg_86 = arith_const_17; 
  for (int for_iter_85 = arith_const_17; for_iter_85 < arith_const_18; for_iter_85 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_87); 
    #pragma peqc async_execute
    {
      int arith_muli_88 = (for_iter_85 * arith_const_15); 
      for (int for_iter_89 = arith_const_17; for_iter_89 < arith_const_14; for_iter_89 += arith_const_18) {
        int arith_muli_90 = (for_iter_89 * arith_const_13); 
        int arith_addi_91 = (arith_muli_88 + arith_muli_90); 
        func_arg_5[arith_addi_91] = arith_const_16; 
        int arith_addi_92 = (arith_addi_91 + arith_const_18); 
        func_arg_5[arith_addi_92] = arith_const_16; 
        int arith_addi_93 = (arith_addi_91 + arith_const_12); 
        func_arg_5[arith_addi_93] = arith_const_16; 
        int arith_addi_94 = (arith_addi_91 + arith_const_11); 
        func_arg_5[arith_addi_94] = arith_const_16; 
      }
      PAST_SET_SEMAPHORE(execute_token_87, PAST_TASK_FINISHED); 
    }
    async_group_83[async_group_index_84] = execute_token_87; 
    async_group_index_84++; 
    int arith_addi_95 = (for_iter_arg_86 + arith_const_18); 
    for_iter_arg_86 = arith_addi_95; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_83, async_group_index_84, PAST_TASK_FINISHED); 
  int* async_group_96; 
  int async_group_index_97 = 0; 
  int for_iter_arg_99 = arith_const_17; 
  for (int for_iter_98 = arith_const_17; for_iter_98 < arith_const_18; for_iter_98 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_100); 
    #pragma peqc async_execute
    {
      int arith_muli_101 = (for_iter_98 * arith_const_10); 
      int arith_addi_102 = (arith_muli_101 + arith_const_9); 
      for (int for_iter_103 = arith_const_17; for_iter_103 < arith_const_12; for_iter_103 += arith_const_18) {
        int arith_addi_104 = (arith_addi_102 + for_iter_103); 
        func_arg_5[arith_addi_104] = arith_const_16; 
      }
      PAST_SET_SEMAPHORE(execute_token_100, PAST_TASK_FINISHED); 
    }
    async_group_96[async_group_index_97] = execute_token_100; 
    async_group_index_97++; 
    int arith_addi_105 = (for_iter_arg_99 + arith_const_18); 
    for_iter_arg_99 = arith_addi_105; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_96, async_group_index_97, PAST_TASK_FINISHED); 
  int* async_group_106; 
  int async_group_index_107 = 0; 
  int for_iter_arg_109 = arith_const_17; 
  for (int for_iter_108 = arith_const_17; for_iter_108 < arith_const_18; for_iter_108 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_110); 
    #pragma peqc async_execute
    {
      int arith_muli_111 = (for_iter_108 * arith_const_10); 
      for (int for_iter_112 = arith_const_17; for_iter_112 < arith_const_8; for_iter_112 += arith_const_18) {
        int arith_addi_113 = (arith_muli_111 + for_iter_112); 
        for (int for_iter_114 = arith_const_17; for_iter_114 < arith_const_14; for_iter_114 += arith_const_18) {
          int arith_muli_115 = (for_iter_114 * arith_const_13); 
          double memref_load_116 = func_arg_3[arith_addi_113][arith_muli_115]; 
          double memref_load_117 = func_arg_6[arith_muli_115]; 
          double arith_mulf_118 = (memref_load_116 * memref_load_117); 
          double memref_load_119 = func_arg_5[arith_addi_113]; 
          double arith_addf_120 = (arith_mulf_118 + memref_load_119); 
          func_arg_5[arith_addi_113] = arith_addf_120; 
          int arith_addi_121 = (arith_muli_115 + arith_const_18); 
          double memref_load_122 = func_arg_3[arith_addi_113][arith_addi_121]; 
          double memref_load_123 = func_arg_6[arith_addi_121]; 
          double arith_mulf_124 = (memref_load_122 * memref_load_123); 
          double memref_load_125 = func_arg_5[arith_addi_113]; 
          double arith_addf_126 = (arith_mulf_124 + memref_load_125); 
          func_arg_5[arith_addi_113] = arith_addf_126; 
          int arith_addi_127 = (arith_muli_115 + arith_const_12); 
          double memref_load_128 = func_arg_3[arith_addi_113][arith_addi_127]; 
          double memref_load_129 = func_arg_6[arith_addi_127]; 
          double arith_mulf_130 = (memref_load_128 * memref_load_129); 
          double memref_load_131 = func_arg_5[arith_addi_113]; 
          double arith_addf_132 = (arith_mulf_130 + memref_load_131); 
          func_arg_5[arith_addi_113] = arith_addf_132; 
          int arith_addi_133 = (arith_muli_115 + arith_const_11); 
          double memref_load_134 = func_arg_3[arith_addi_113][arith_addi_133]; 
          double memref_load_135 = func_arg_6[arith_addi_133]; 
          double arith_mulf_136 = (memref_load_134 * memref_load_135); 
          double memref_load_137 = func_arg_5[arith_addi_113]; 
          double arith_addf_138 = (arith_mulf_136 + memref_load_137); 
          func_arg_5[arith_addi_113] = arith_addf_138; 
        }
        for (int for_iter_139 = arith_const_17; for_iter_139 < arith_const_12; for_iter_139 += arith_const_18) {
          int arith_addi_140 = (for_iter_139 + arith_const_9); 
          double memref_load_141 = func_arg_3[arith_addi_113][arith_addi_140]; 
          double memref_load_142 = func_arg_6[arith_addi_140]; 
          double arith_mulf_143 = (memref_load_141 * memref_load_142); 
          double memref_load_144 = func_arg_5[arith_addi_113]; 
          double arith_addf_145 = (arith_mulf_143 + memref_load_144); 
          func_arg_5[arith_addi_113] = arith_addf_145; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_110, PAST_TASK_FINISHED); 
    }
    async_group_106[async_group_index_107] = execute_token_110; 
    async_group_index_107++; 
    int arith_addi_146 = (for_iter_arg_109 + arith_const_18); 
    for_iter_arg_109 = arith_addi_146; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_106, async_group_index_107, PAST_TASK_FINISHED); 
  int* async_group_147; 
  int async_group_index_148 = 0; 
  int for_iter_arg_150 = arith_const_17; 
  for (int for_iter_149 = arith_const_17; for_iter_149 < arith_const_18; for_iter_149 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_151); 
    #pragma peqc async_execute
    {
      int arith_muli_152 = (for_iter_149 * arith_const_15); 
      for (int for_iter_153 = arith_const_17; for_iter_153 < arith_const_14; for_iter_153 += arith_const_18) {
        int arith_muli_154 = (for_iter_153 * arith_const_13); 
        int arith_addi_155 = (arith_muli_152 + arith_muli_154); 
        double memref_load_156 = func_arg_5[arith_addi_155]; 
        double arith_mulf_157 = (func_arg_1 * memref_load_156); 
        double memref_load_158 = func_arg_7[arith_addi_155]; 
        double arith_mulf_159 = (func_arg_2 * memref_load_158); 
        double arith_addf_160 = (arith_mulf_157 + arith_mulf_159); 
        func_arg_7[arith_addi_155] = arith_addf_160; 
        int arith_addi_161 = (arith_addi_155 + arith_const_18); 
        double memref_load_162 = func_arg_5[arith_addi_161]; 
        double arith_mulf_163 = (func_arg_1 * memref_load_162); 
        double memref_load_164 = func_arg_7[arith_addi_161]; 
        double arith_mulf_165 = (func_arg_2 * memref_load_164); 
        double arith_addf_166 = (arith_mulf_163 + arith_mulf_165); 
        func_arg_7[arith_addi_161] = arith_addf_166; 
        int arith_addi_167 = (arith_addi_155 + arith_const_12); 
        double memref_load_168 = func_arg_5[arith_addi_167]; 
        double arith_mulf_169 = (func_arg_1 * memref_load_168); 
        double memref_load_170 = func_arg_7[arith_addi_167]; 
        double arith_mulf_171 = (func_arg_2 * memref_load_170); 
        double arith_addf_172 = (arith_mulf_169 + arith_mulf_171); 
        func_arg_7[arith_addi_167] = arith_addf_172; 
        int arith_addi_173 = (arith_addi_155 + arith_const_11); 
        double memref_load_174 = func_arg_5[arith_addi_173]; 
        double arith_mulf_175 = (func_arg_1 * memref_load_174); 
        double memref_load_176 = func_arg_7[arith_addi_173]; 
        double arith_mulf_177 = (func_arg_2 * memref_load_176); 
        double arith_addf_178 = (arith_mulf_175 + arith_mulf_177); 
        func_arg_7[arith_addi_173] = arith_addf_178; 
      }
      PAST_SET_SEMAPHORE(execute_token_151, PAST_TASK_FINISHED); 
    }
    async_group_147[async_group_index_148] = execute_token_151; 
    async_group_index_148++; 
    int arith_addi_179 = (for_iter_arg_150 + arith_const_18); 
    for_iter_arg_150 = arith_addi_179; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_147, async_group_index_148, PAST_TASK_FINISHED); 
  int* async_group_180; 
  int async_group_index_181 = 0; 
  int for_iter_arg_183 = arith_const_17; 
  for (int for_iter_182 = arith_const_17; for_iter_182 < arith_const_18; for_iter_182 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_184); 
    #pragma peqc async_execute
    {
      int arith_muli_185 = (for_iter_182 * arith_const_10); 
      int arith_addi_186 = (arith_muli_185 + arith_const_9); 
      for (int for_iter_187 = arith_const_17; for_iter_187 < arith_const_12; for_iter_187 += arith_const_18) {
        int arith_addi_188 = (arith_addi_186 + for_iter_187); 
        double memref_load_189 = func_arg_5[arith_addi_188]; 
        double arith_mulf_190 = (func_arg_1 * memref_load_189); 
        double memref_load_191 = func_arg_7[arith_addi_188]; 
        double arith_mulf_192 = (func_arg_2 * memref_load_191); 
        double arith_addf_193 = (arith_mulf_190 + arith_mulf_192); 
        func_arg_7[arith_addi_188] = arith_addf_193; 
      }
      PAST_SET_SEMAPHORE(execute_token_184, PAST_TASK_FINISHED); 
    }
    async_group_180[async_group_index_181] = execute_token_184; 
    async_group_index_181++; 
    int arith_addi_194 = (for_iter_arg_183 + arith_const_18); 
    for_iter_arg_183 = arith_addi_194; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_180, async_group_index_181, PAST_TASK_FINISHED); 
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
