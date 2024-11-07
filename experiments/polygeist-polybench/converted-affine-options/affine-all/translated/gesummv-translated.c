#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
      int* async_group_31; 
      int async_group_index_32 = 0; 
      int for_iter_arg_34 = arith_const_14; 
      for (int for_iter_33 = arith_const_14; for_iter_33 < arith_const_16; for_iter_33 += arith_const_16) {
        PAST_NEW_SEMAPHORE(execute_token_35); 
        #pragma peqc async_execute
        {
          int arith_addi_36 = (arith_addi_30 + for_iter_33); 
          func_arg_7[arith_addi_36] = arith_const_13; 
          PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
        }
        async_group_31[async_group_index_32] = execute_token_35; 
        async_group_index_32++; 
        int arith_addi_37 = (for_iter_arg_34 + arith_const_16); 
        for_iter_arg_34 = arith_addi_37; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_29, PAST_TASK_FINISHED); 
    }
    async_group_25[async_group_index_26] = execute_token_29; 
    async_group_index_26++; 
    int arith_addi_38 = (for_iter_arg_28 + arith_const_16); 
    for_iter_arg_28 = arith_addi_38; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_25, async_group_index_26, PAST_TASK_FINISHED); 
  int* async_group_39; 
  int async_group_index_40 = 0; 
  int for_iter_arg_42 = arith_const_14; 
  for (int for_iter_41 = arith_const_14; for_iter_41 < arith_const_8; for_iter_41 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_43); 
    #pragma peqc async_execute
    {
      int* async_group_44; 
      int async_group_index_45 = 0; 
      int for_iter_arg_47 = arith_const_14; 
      for (int for_iter_46 = arith_const_14; for_iter_46 < arith_const_16; for_iter_46 += arith_const_16) {
        PAST_NEW_SEMAPHORE(execute_token_48); 
        #pragma peqc async_execute
        {
          int arith_addi_49 = (for_iter_41 + for_iter_46); 
          for (int for_iter_50 = arith_const_14; for_iter_50 < arith_const_15; for_iter_50 += arith_const_16) {
            int arith_muli_51 = (for_iter_50 * arith_const_12); 
            double memref_load_52 = func_arg_4[arith_addi_49][arith_muli_51]; 
            double memref_load_53 = func_arg_6[arith_muli_51]; 
            double arith_mulf_54 = (memref_load_52 * memref_load_53); 
            double memref_load_55 = func_arg_7[arith_addi_49]; 
            double arith_addf_56 = (arith_mulf_54 + memref_load_55); 
            func_arg_7[arith_addi_49] = arith_addf_56; 
            int arith_addi_57 = (arith_muli_51 + arith_const_16); 
            double memref_load_58 = func_arg_4[arith_addi_49][arith_addi_57]; 
            double memref_load_59 = func_arg_6[arith_addi_57]; 
            double arith_mulf_60 = (memref_load_58 * memref_load_59); 
            double memref_load_61 = func_arg_7[arith_addi_49]; 
            double arith_addf_62 = (arith_mulf_60 + memref_load_61); 
            func_arg_7[arith_addi_49] = arith_addf_62; 
            int arith_addi_63 = (arith_muli_51 + arith_const_11); 
            double memref_load_64 = func_arg_4[arith_addi_49][arith_addi_63]; 
            double memref_load_65 = func_arg_6[arith_addi_63]; 
            double arith_mulf_66 = (memref_load_64 * memref_load_65); 
            double memref_load_67 = func_arg_7[arith_addi_49]; 
            double arith_addf_68 = (arith_mulf_66 + memref_load_67); 
            func_arg_7[arith_addi_49] = arith_addf_68; 
            int arith_addi_69 = (arith_muli_51 + arith_const_10); 
            double memref_load_70 = func_arg_4[arith_addi_49][arith_addi_69]; 
            double memref_load_71 = func_arg_6[arith_addi_69]; 
            double arith_mulf_72 = (memref_load_70 * memref_load_71); 
            double memref_load_73 = func_arg_7[arith_addi_49]; 
            double arith_addf_74 = (arith_mulf_72 + memref_load_73); 
            func_arg_7[arith_addi_49] = arith_addf_74; 
          }
          for (int for_iter_75 = arith_const_14; for_iter_75 < arith_const_11; for_iter_75 += arith_const_16) {
            int arith_addi_76 = (for_iter_75 + arith_const_9); 
            double memref_load_77 = func_arg_4[arith_addi_49][arith_addi_76]; 
            double memref_load_78 = func_arg_6[arith_addi_76]; 
            double arith_mulf_79 = (memref_load_77 * memref_load_78); 
            double memref_load_80 = func_arg_7[arith_addi_49]; 
            double arith_addf_81 = (arith_mulf_79 + memref_load_80); 
            func_arg_7[arith_addi_49] = arith_addf_81; 
          }
          PAST_SET_SEMAPHORE(execute_token_48, PAST_TASK_FINISHED); 
        }
        async_group_44[async_group_index_45] = execute_token_48; 
        async_group_index_45++; 
        int arith_addi_82 = (for_iter_arg_47 + arith_const_16); 
        for_iter_arg_47 = arith_addi_82; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_44, async_group_index_45, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
    }
    async_group_39[async_group_index_40] = execute_token_43; 
    async_group_index_40++; 
    int arith_addi_83 = (for_iter_arg_42 + arith_const_16); 
    for_iter_arg_42 = arith_addi_83; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_39, async_group_index_40, PAST_TASK_FINISHED); 
  for (int for_iter_84 = arith_const_14; for_iter_84 < arith_const_15; for_iter_84 += arith_const_16) {
    int arith_muli_85 = (for_iter_84 * arith_const_12); 
    for (int for_iter_86 = arith_const_14; for_iter_86 < arith_const_16; for_iter_86 += arith_const_16) {
      int arith_muli_87 = (for_iter_86 * arith_const_12); 
      int arith_addi_88 = (arith_muli_85 + arith_muli_87); 
      func_arg_5[arith_addi_88] = arith_const_13; 
      int arith_addi_89 = (arith_addi_88 + arith_const_16); 
      func_arg_5[arith_addi_89] = arith_const_13; 
      int arith_addi_90 = (arith_addi_88 + arith_const_11); 
      func_arg_5[arith_addi_90] = arith_const_13; 
      int arith_addi_91 = (arith_addi_88 + arith_const_10); 
      func_arg_5[arith_addi_91] = arith_const_13; 
    }
  }
  int* async_group_92; 
  int async_group_index_93 = 0; 
  int for_iter_arg_95 = arith_const_14; 
  for (int for_iter_94 = arith_const_14; for_iter_94 < arith_const_11; for_iter_94 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_96); 
    #pragma peqc async_execute
    {
      int arith_addi_97 = (for_iter_94 + arith_const_9); 
      int* async_group_98; 
      int async_group_index_99 = 0; 
      int for_iter_arg_101 = arith_const_14; 
      for (int for_iter_100 = arith_const_14; for_iter_100 < arith_const_16; for_iter_100 += arith_const_16) {
        PAST_NEW_SEMAPHORE(execute_token_102); 
        #pragma peqc async_execute
        {
          int arith_addi_103 = (arith_addi_97 + for_iter_100); 
          func_arg_5[arith_addi_103] = arith_const_13; 
          PAST_SET_SEMAPHORE(execute_token_102, PAST_TASK_FINISHED); 
        }
        async_group_98[async_group_index_99] = execute_token_102; 
        async_group_index_99++; 
        int arith_addi_104 = (for_iter_arg_101 + arith_const_16); 
        for_iter_arg_101 = arith_addi_104; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_98, async_group_index_99, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_96, PAST_TASK_FINISHED); 
    }
    async_group_92[async_group_index_93] = execute_token_96; 
    async_group_index_93++; 
    int arith_addi_105 = (for_iter_arg_95 + arith_const_16); 
    for_iter_arg_95 = arith_addi_105; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_92, async_group_index_93, PAST_TASK_FINISHED); 
  int* async_group_106; 
  int async_group_index_107 = 0; 
  int for_iter_arg_109 = arith_const_14; 
  for (int for_iter_108 = arith_const_14; for_iter_108 < arith_const_8; for_iter_108 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_110); 
    #pragma peqc async_execute
    {
      int* async_group_111; 
      int async_group_index_112 = 0; 
      int for_iter_arg_114 = arith_const_14; 
      for (int for_iter_113 = arith_const_14; for_iter_113 < arith_const_16; for_iter_113 += arith_const_16) {
        PAST_NEW_SEMAPHORE(execute_token_115); 
        #pragma peqc async_execute
        {
          int arith_addi_116 = (for_iter_108 + for_iter_113); 
          for (int for_iter_117 = arith_const_14; for_iter_117 < arith_const_15; for_iter_117 += arith_const_16) {
            int arith_muli_118 = (for_iter_117 * arith_const_12); 
            double memref_load_119 = func_arg_3[arith_addi_116][arith_muli_118]; 
            double memref_load_120 = func_arg_6[arith_muli_118]; 
            double arith_mulf_121 = (memref_load_119 * memref_load_120); 
            double memref_load_122 = func_arg_5[arith_addi_116]; 
            double arith_addf_123 = (arith_mulf_121 + memref_load_122); 
            func_arg_5[arith_addi_116] = arith_addf_123; 
            int arith_addi_124 = (arith_muli_118 + arith_const_16); 
            double memref_load_125 = func_arg_3[arith_addi_116][arith_addi_124]; 
            double memref_load_126 = func_arg_6[arith_addi_124]; 
            double arith_mulf_127 = (memref_load_125 * memref_load_126); 
            double memref_load_128 = func_arg_5[arith_addi_116]; 
            double arith_addf_129 = (arith_mulf_127 + memref_load_128); 
            func_arg_5[arith_addi_116] = arith_addf_129; 
            int arith_addi_130 = (arith_muli_118 + arith_const_11); 
            double memref_load_131 = func_arg_3[arith_addi_116][arith_addi_130]; 
            double memref_load_132 = func_arg_6[arith_addi_130]; 
            double arith_mulf_133 = (memref_load_131 * memref_load_132); 
            double memref_load_134 = func_arg_5[arith_addi_116]; 
            double arith_addf_135 = (arith_mulf_133 + memref_load_134); 
            func_arg_5[arith_addi_116] = arith_addf_135; 
            int arith_addi_136 = (arith_muli_118 + arith_const_10); 
            double memref_load_137 = func_arg_3[arith_addi_116][arith_addi_136]; 
            double memref_load_138 = func_arg_6[arith_addi_136]; 
            double arith_mulf_139 = (memref_load_137 * memref_load_138); 
            double memref_load_140 = func_arg_5[arith_addi_116]; 
            double arith_addf_141 = (arith_mulf_139 + memref_load_140); 
            func_arg_5[arith_addi_116] = arith_addf_141; 
          }
          for (int for_iter_142 = arith_const_14; for_iter_142 < arith_const_11; for_iter_142 += arith_const_16) {
            int arith_addi_143 = (for_iter_142 + arith_const_9); 
            double memref_load_144 = func_arg_3[arith_addi_116][arith_addi_143]; 
            double memref_load_145 = func_arg_6[arith_addi_143]; 
            double arith_mulf_146 = (memref_load_144 * memref_load_145); 
            double memref_load_147 = func_arg_5[arith_addi_116]; 
            double arith_addf_148 = (arith_mulf_146 + memref_load_147); 
            func_arg_5[arith_addi_116] = arith_addf_148; 
          }
          PAST_SET_SEMAPHORE(execute_token_115, PAST_TASK_FINISHED); 
        }
        async_group_111[async_group_index_112] = execute_token_115; 
        async_group_index_112++; 
        int arith_addi_149 = (for_iter_arg_114 + arith_const_16); 
        for_iter_arg_114 = arith_addi_149; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_111, async_group_index_112, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_110, PAST_TASK_FINISHED); 
    }
    async_group_106[async_group_index_107] = execute_token_110; 
    async_group_index_107++; 
    int arith_addi_150 = (for_iter_arg_109 + arith_const_16); 
    for_iter_arg_109 = arith_addi_150; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_106, async_group_index_107, PAST_TASK_FINISHED); 
  for (int for_iter_151 = arith_const_14; for_iter_151 < arith_const_15; for_iter_151 += arith_const_16) {
    int arith_muli_152 = (for_iter_151 * arith_const_12); 
    for (int for_iter_153 = arith_const_14; for_iter_153 < arith_const_16; for_iter_153 += arith_const_16) {
      int arith_muli_154 = (for_iter_153 * arith_const_12); 
      int arith_addi_155 = (arith_muli_152 + arith_muli_154); 
      double memref_load_156 = func_arg_5[arith_addi_155]; 
      double arith_mulf_157 = (func_arg_1 * memref_load_156); 
      double memref_load_158 = func_arg_7[arith_addi_155]; 
      double arith_mulf_159 = (func_arg_2 * memref_load_158); 
      double arith_addf_160 = (arith_mulf_157 + arith_mulf_159); 
      func_arg_7[arith_addi_155] = arith_addf_160; 
      int arith_addi_161 = (arith_addi_155 + arith_const_16); 
      double memref_load_162 = func_arg_5[arith_addi_161]; 
      double arith_mulf_163 = (func_arg_1 * memref_load_162); 
      double memref_load_164 = func_arg_7[arith_addi_161]; 
      double arith_mulf_165 = (func_arg_2 * memref_load_164); 
      double arith_addf_166 = (arith_mulf_163 + arith_mulf_165); 
      func_arg_7[arith_addi_161] = arith_addf_166; 
      int arith_addi_167 = (arith_addi_155 + arith_const_11); 
      double memref_load_168 = func_arg_5[arith_addi_167]; 
      double arith_mulf_169 = (func_arg_1 * memref_load_168); 
      double memref_load_170 = func_arg_7[arith_addi_167]; 
      double arith_mulf_171 = (func_arg_2 * memref_load_170); 
      double arith_addf_172 = (arith_mulf_169 + arith_mulf_171); 
      func_arg_7[arith_addi_167] = arith_addf_172; 
      int arith_addi_173 = (arith_addi_155 + arith_const_10); 
      double memref_load_174 = func_arg_5[arith_addi_173]; 
      double arith_mulf_175 = (func_arg_1 * memref_load_174); 
      double memref_load_176 = func_arg_7[arith_addi_173]; 
      double arith_mulf_177 = (func_arg_2 * memref_load_176); 
      double arith_addf_178 = (arith_mulf_175 + arith_mulf_177); 
      func_arg_7[arith_addi_173] = arith_addf_178; 
    }
  }
  int* async_group_179; 
  int async_group_index_180 = 0; 
  int for_iter_arg_182 = arith_const_14; 
  for (int for_iter_181 = arith_const_14; for_iter_181 < arith_const_11; for_iter_181 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_183); 
    #pragma peqc async_execute
    {
      int arith_addi_184 = (for_iter_181 + arith_const_9); 
      int* async_group_185; 
      int async_group_index_186 = 0; 
      int for_iter_arg_188 = arith_const_14; 
      for (int for_iter_187 = arith_const_14; for_iter_187 < arith_const_16; for_iter_187 += arith_const_16) {
        PAST_NEW_SEMAPHORE(execute_token_189); 
        #pragma peqc async_execute
        {
          int arith_addi_190 = (arith_addi_184 + for_iter_187); 
          double memref_load_191 = func_arg_5[arith_addi_190]; 
          double arith_mulf_192 = (func_arg_1 * memref_load_191); 
          double memref_load_193 = func_arg_7[arith_addi_190]; 
          double arith_mulf_194 = (func_arg_2 * memref_load_193); 
          double arith_addf_195 = (arith_mulf_192 + arith_mulf_194); 
          func_arg_7[arith_addi_190] = arith_addf_195; 
          PAST_SET_SEMAPHORE(execute_token_189, PAST_TASK_FINISHED); 
        }
        async_group_185[async_group_index_186] = execute_token_189; 
        async_group_index_186++; 
        int arith_addi_196 = (for_iter_arg_188 + arith_const_16); 
        for_iter_arg_188 = arith_addi_196; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_185, async_group_index_186, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_183, PAST_TASK_FINISHED); 
    }
    async_group_179[async_group_index_180] = execute_token_183; 
    async_group_index_180++; 
    int arith_addi_197 = (for_iter_arg_182 + arith_const_16); 
    for_iter_arg_182 = arith_addi_197; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_179, async_group_index_180, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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
