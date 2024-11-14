#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 23; 
  int arith_const_12 = -1; 
  int arith_const_13 = 29; 
  int arith_const_14 = -21; 
  int arith_const_15 = 5; 
  int arith_const_16 = 22; 
  int arith_const_17 = 3; 
  int arith_const_18 = 2; 
  int arith_const_19 = 4; 
  int arith_const_20 = 16; 
  int arith_const_21 = 21; 
  int arith_const_22 = 20; 
  int arith_const_23 = 19; 
  int arith_const_24 = 32; 
  int arith_const_25 = 18; 
  double arith_const_26 = 0.000000; 
  int arith_const_27 = 0; 
  int arith_const_28 = 1; 
  int* async_group_29; 
  int async_group_index_30 = 0; 
  int for_iter_arg_32 = arith_const_27; 
  for (int for_iter_31 = arith_const_27; for_iter_31 < arith_const_28; for_iter_31 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_33); 
    #pragma peqc async_execute
    {
      int arith_muli_34 = (for_iter_31 * arith_const_24); 
      for (int for_iter_35 = arith_const_27; for_iter_35 < arith_const_20; for_iter_35 += arith_const_28) {
        int arith_addi_36 = (arith_muli_34 + for_iter_35); 
        for (int for_iter_37 = arith_const_27; for_iter_37 < arith_const_19; for_iter_37 += arith_const_28) {
          int arith_muli_38 = (for_iter_37 * arith_const_19); 
          double memref_load_39 = func_arg_10[arith_addi_36][arith_muli_38]; 
          double arith_mulf_40 = (memref_load_39 * func_arg_5); 
          func_arg_10[arith_addi_36][arith_muli_38] = arith_mulf_40; 
          func_arg_6[arith_addi_36][arith_muli_38] = arith_const_26; 
          int arith_addi_41 = (arith_muli_38 + arith_const_28); 
          double memref_load_42 = func_arg_10[arith_addi_36][arith_addi_41]; 
          double arith_mulf_43 = (memref_load_42 * func_arg_5); 
          func_arg_10[arith_addi_36][arith_addi_41] = arith_mulf_43; 
          func_arg_6[arith_addi_36][arith_addi_41] = arith_const_26; 
          int arith_addi_44 = (arith_muli_38 + arith_const_18); 
          double memref_load_45 = func_arg_10[arith_addi_36][arith_addi_44]; 
          double arith_mulf_46 = (memref_load_45 * func_arg_5); 
          func_arg_10[arith_addi_36][arith_addi_44] = arith_mulf_46; 
          func_arg_6[arith_addi_36][arith_addi_44] = arith_const_26; 
          int arith_addi_47 = (arith_muli_38 + arith_const_17); 
          double memref_load_48 = func_arg_10[arith_addi_36][arith_addi_47]; 
          double arith_mulf_49 = (memref_load_48 * func_arg_5); 
          func_arg_10[arith_addi_36][arith_addi_47] = arith_mulf_49; 
          func_arg_6[arith_addi_36][arith_addi_47] = arith_const_26; 
        }
        for (int for_iter_50 = arith_const_27; for_iter_50 < arith_const_18; for_iter_50 += arith_const_28) {
          int arith_addi_51 = (for_iter_50 + arith_const_20); 
          double memref_load_52 = func_arg_10[arith_addi_36][arith_addi_51]; 
          double arith_mulf_53 = (memref_load_52 * func_arg_5); 
          func_arg_10[arith_addi_36][arith_addi_51] = arith_mulf_53; 
          func_arg_6[arith_addi_36][arith_addi_51] = arith_const_26; 
        }
        double memref_load_54 = func_arg_10[arith_addi_36][arith_const_25]; 
        double arith_mulf_55 = (memref_load_54 * func_arg_5); 
        func_arg_10[arith_addi_36][arith_const_25] = arith_mulf_55; 
        double memref_load_56 = func_arg_10[arith_addi_36][arith_const_23]; 
        double arith_mulf_57 = (memref_load_56 * func_arg_5); 
        func_arg_10[arith_addi_36][arith_const_23] = arith_mulf_57; 
        double memref_load_58 = func_arg_10[arith_addi_36][arith_const_22]; 
        double arith_mulf_59 = (memref_load_58 * func_arg_5); 
        func_arg_10[arith_addi_36][arith_const_22] = arith_mulf_59; 
        double memref_load_60 = func_arg_10[arith_addi_36][arith_const_21]; 
        double arith_mulf_61 = (memref_load_60 * func_arg_5); 
        func_arg_10[arith_addi_36][arith_const_21] = arith_mulf_61; 
        for (int for_iter_62 = arith_const_27; for_iter_62 < arith_const_18; for_iter_62 += arith_const_28) {
          int arith_addi_63 = (for_iter_62 + arith_const_16); 
          double memref_load_64 = func_arg_10[arith_addi_36][arith_addi_63]; 
          double arith_mulf_65 = (memref_load_64 * func_arg_5); 
          func_arg_10[arith_addi_36][arith_addi_63] = arith_mulf_65; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
    }
    async_group_29[async_group_index_30] = execute_token_33; 
    async_group_index_30++; 
    int arith_addi_66 = (for_iter_arg_32 + arith_const_28); 
    for_iter_arg_32 = arith_addi_66; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
  int* async_group_67; 
  int async_group_index_68 = 0; 
  int for_iter_arg_70 = arith_const_27; 
  for (int for_iter_69 = arith_const_27; for_iter_69 < arith_const_28; for_iter_69 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_71); 
    #pragma peqc async_execute
    {
      for (int for_iter_72 = arith_const_27; for_iter_72 < arith_const_18; for_iter_72 += arith_const_28) {
        int arith_muli_73 = (for_iter_69 * arith_const_24); 
        int arith_addi_74 = (for_iter_72 + arith_muli_73); 
        int arith_cmpi_75 = (arith_addi_74 == arith_const_27); 
        if (arith_cmpi_75) {
          for (int for_iter_76 = arith_const_27; for_iter_76 < arith_const_20; for_iter_76 += arith_const_28) {
            for (int for_iter_77 = arith_const_27; for_iter_77 < arith_const_25; for_iter_77 += arith_const_28) {
              for (int for_iter_78 = arith_const_27; for_iter_78 < arith_const_15; for_iter_78 += arith_const_28) {
                int arith_muli_79 = (for_iter_78 * arith_const_19); 
                double memref_load_80 = func_arg_6[for_iter_76][for_iter_77]; 
                double memref_load_81 = func_arg_7[for_iter_76][arith_muli_79]; 
                double arith_mulf_82 = (func_arg_4 * memref_load_81); 
                double memref_load_83 = func_arg_8[arith_muli_79][for_iter_77]; 
                double arith_mulf_84 = (arith_mulf_82 * memref_load_83); 
                double arith_addf_85 = (memref_load_80 + arith_mulf_84); 
                func_arg_6[for_iter_76][for_iter_77] = arith_addf_85; 
                int arith_addi_86 = (arith_muli_79 + arith_const_28); 
                double memref_load_87 = func_arg_6[for_iter_76][for_iter_77]; 
                double memref_load_88 = func_arg_7[for_iter_76][arith_addi_86]; 
                double arith_mulf_89 = (func_arg_4 * memref_load_88); 
                double memref_load_90 = func_arg_8[arith_addi_86][for_iter_77]; 
                double arith_mulf_91 = (arith_mulf_89 * memref_load_90); 
                double arith_addf_92 = (memref_load_87 + arith_mulf_91); 
                func_arg_6[for_iter_76][for_iter_77] = arith_addf_92; 
                int arith_addi_93 = (arith_muli_79 + arith_const_18); 
                double memref_load_94 = func_arg_6[for_iter_76][for_iter_77]; 
                double memref_load_95 = func_arg_7[for_iter_76][arith_addi_93]; 
                double arith_mulf_96 = (func_arg_4 * memref_load_95); 
                double memref_load_97 = func_arg_8[arith_addi_93][for_iter_77]; 
                double arith_mulf_98 = (arith_mulf_96 * memref_load_97); 
                double arith_addf_99 = (memref_load_94 + arith_mulf_98); 
                func_arg_6[for_iter_76][for_iter_77] = arith_addf_99; 
                int arith_addi_100 = (arith_muli_79 + arith_const_17); 
                double memref_load_101 = func_arg_6[for_iter_76][for_iter_77]; 
                double memref_load_102 = func_arg_7[for_iter_76][arith_addi_100]; 
                double arith_mulf_103 = (func_arg_4 * memref_load_102); 
                double memref_load_104 = func_arg_8[arith_addi_100][for_iter_77]; 
                double arith_mulf_105 = (arith_mulf_103 * memref_load_104); 
                double arith_addf_106 = (memref_load_101 + arith_mulf_105); 
                func_arg_6[for_iter_76][for_iter_77] = arith_addf_106; 
              }
              for (int for_iter_107 = arith_const_27; for_iter_107 < arith_const_18; for_iter_107 += arith_const_28) {
                int arith_addi_108 = (for_iter_107 + arith_const_22); 
                double memref_load_109 = func_arg_6[for_iter_76][for_iter_77]; 
                double memref_load_110 = func_arg_7[for_iter_76][arith_addi_108]; 
                double arith_mulf_111 = (func_arg_4 * memref_load_110); 
                double memref_load_112 = func_arg_8[arith_addi_108][for_iter_77]; 
                double arith_mulf_113 = (arith_mulf_111 * memref_load_112); 
                double arith_addf_114 = (memref_load_109 + arith_mulf_113); 
                func_arg_6[for_iter_76][for_iter_77] = arith_addf_114; 
              }
              double memref_load_115 = func_arg_6[for_iter_76][for_iter_77]; 
              double memref_load_116 = func_arg_6[for_iter_76][for_iter_77]; 
              double memref_load_117 = func_arg_6[for_iter_76][for_iter_77]; 
              double memref_load_118 = func_arg_6[for_iter_76][for_iter_77]; 
              for (int for_iter_119 = arith_const_27; for_iter_119 < arith_const_18; for_iter_119 += arith_const_28) {
                int arith_muli_120 = (for_iter_119 * arith_const_19); 
                int arith_addi_121 = (arith_muli_120 + arith_const_21); 
                int arith_addi_122 = (arith_addi_121 + arith_const_14); 
                double memref_load_123 = func_arg_10[for_iter_76][arith_addi_122]; 
                int arith_addi_124 = (arith_addi_121 + arith_const_14); 
                double memref_load_125 = func_arg_9[for_iter_77][arith_addi_124]; 
                double arith_mulf_126 = (memref_load_115 * memref_load_125); 
                double arith_addf_127 = (memref_load_123 + arith_mulf_126); 
                int arith_addi_128 = (arith_addi_121 + arith_const_14); 
                func_arg_10[for_iter_76][arith_addi_128] = arith_addf_127; 
                int arith_addi_129 = (arith_addi_121 + arith_const_28); 
                int arith_addi_130 = (arith_addi_129 + arith_const_14); 
                double memref_load_131 = func_arg_10[for_iter_76][arith_addi_130]; 
                int arith_addi_132 = (arith_addi_129 + arith_const_14); 
                double memref_load_133 = func_arg_9[for_iter_77][arith_addi_132]; 
                double arith_mulf_134 = (memref_load_116 * memref_load_133); 
                double arith_addf_135 = (memref_load_131 + arith_mulf_134); 
                int arith_addi_136 = (arith_addi_129 + arith_const_14); 
                func_arg_10[for_iter_76][arith_addi_136] = arith_addf_135; 
                int arith_addi_137 = (arith_addi_121 + arith_const_18); 
                int arith_addi_138 = (arith_addi_137 + arith_const_14); 
                double memref_load_139 = func_arg_10[for_iter_76][arith_addi_138]; 
                int arith_addi_140 = (arith_addi_137 + arith_const_14); 
                double memref_load_141 = func_arg_9[for_iter_77][arith_addi_140]; 
                double arith_mulf_142 = (memref_load_117 * memref_load_141); 
                double arith_addf_143 = (memref_load_139 + arith_mulf_142); 
                int arith_addi_144 = (arith_addi_137 + arith_const_14); 
                func_arg_10[for_iter_76][arith_addi_144] = arith_addf_143; 
                int arith_addi_145 = (arith_addi_121 + arith_const_17); 
                int arith_addi_146 = (arith_addi_145 + arith_const_14); 
                double memref_load_147 = func_arg_10[for_iter_76][arith_addi_146]; 
                int arith_addi_148 = (arith_addi_145 + arith_const_14); 
                double memref_load_149 = func_arg_9[for_iter_77][arith_addi_148]; 
                double arith_mulf_150 = (memref_load_118 * memref_load_149); 
                double arith_addf_151 = (memref_load_147 + arith_mulf_150); 
                int arith_addi_152 = (arith_addi_145 + arith_const_14); 
                func_arg_10[for_iter_76][arith_addi_152] = arith_addf_151; 
              }
              double memref_load_153 = func_arg_6[for_iter_76][for_iter_77]; 
              for (int for_iter_154 = arith_const_27; for_iter_154 < arith_const_17; for_iter_154 += arith_const_28) {
                int arith_addi_155 = (for_iter_154 + arith_const_13); 
                int arith_addi_156 = (arith_addi_155 + arith_const_14); 
                double memref_load_157 = func_arg_10[for_iter_76][arith_addi_156]; 
                int arith_addi_158 = (arith_addi_155 + arith_const_14); 
                double memref_load_159 = func_arg_9[for_iter_77][arith_addi_158]; 
                double arith_mulf_160 = (memref_load_153 * memref_load_159); 
                double arith_addf_161 = (memref_load_157 + arith_mulf_160); 
                int arith_addi_162 = (arith_addi_155 + arith_const_14); 
                func_arg_10[for_iter_76][arith_addi_162] = arith_addf_161; 
              }
            }
          }
        }
        int arith_muli_163 = (for_iter_69 * arith_const_24); 
        int arith_addi_164 = (for_iter_72 + arith_muli_163); 
        int arith_addi_165 = (arith_addi_164 + arith_const_12); 
        int arith_cmpi_166 = (arith_addi_165 == arith_const_27); 
        if (arith_cmpi_166) {
          for (int for_iter_167 = arith_const_27; for_iter_167 < arith_const_20; for_iter_167 += arith_const_28) {
            for (int for_iter_168 = arith_const_27; for_iter_168 < arith_const_25; for_iter_168 += arith_const_28) {
              double memref_load_169 = func_arg_6[for_iter_167][for_iter_168]; 
              double memref_load_170 = func_arg_6[for_iter_167][for_iter_168]; 
              double memref_load_171 = func_arg_6[for_iter_167][for_iter_168]; 
              double memref_load_172 = func_arg_6[for_iter_167][for_iter_168]; 
              for (int for_iter_173 = arith_const_27; for_iter_173 < arith_const_17; for_iter_173 += arith_const_28) {
                int arith_muli_174 = (for_iter_173 * arith_const_19); 
                int arith_addi_175 = (arith_muli_174 + arith_const_24); 
                int arith_addi_176 = (arith_addi_175 + arith_const_14); 
                double memref_load_177 = func_arg_10[for_iter_167][arith_addi_176]; 
                int arith_addi_178 = (arith_addi_175 + arith_const_14); 
                double memref_load_179 = func_arg_9[for_iter_168][arith_addi_178]; 
                double arith_mulf_180 = (memref_load_169 * memref_load_179); 
                double arith_addf_181 = (memref_load_177 + arith_mulf_180); 
                int arith_addi_182 = (arith_addi_175 + arith_const_14); 
                func_arg_10[for_iter_167][arith_addi_182] = arith_addf_181; 
                int arith_addi_183 = (arith_addi_175 + arith_const_28); 
                int arith_addi_184 = (arith_addi_183 + arith_const_14); 
                double memref_load_185 = func_arg_10[for_iter_167][arith_addi_184]; 
                int arith_addi_186 = (arith_addi_183 + arith_const_14); 
                double memref_load_187 = func_arg_9[for_iter_168][arith_addi_186]; 
                double arith_mulf_188 = (memref_load_170 * memref_load_187); 
                double arith_addf_189 = (memref_load_185 + arith_mulf_188); 
                int arith_addi_190 = (arith_addi_183 + arith_const_14); 
                func_arg_10[for_iter_167][arith_addi_190] = arith_addf_189; 
                int arith_addi_191 = (arith_addi_175 + arith_const_18); 
                int arith_addi_192 = (arith_addi_191 + arith_const_14); 
                double memref_load_193 = func_arg_10[for_iter_167][arith_addi_192]; 
                int arith_addi_194 = (arith_addi_191 + arith_const_14); 
                double memref_load_195 = func_arg_9[for_iter_168][arith_addi_194]; 
                double arith_mulf_196 = (memref_load_171 * memref_load_195); 
                double arith_addf_197 = (memref_load_193 + arith_mulf_196); 
                int arith_addi_198 = (arith_addi_191 + arith_const_14); 
                func_arg_10[for_iter_167][arith_addi_198] = arith_addf_197; 
                int arith_addi_199 = (arith_addi_175 + arith_const_17); 
                int arith_addi_200 = (arith_addi_199 + arith_const_14); 
                double memref_load_201 = func_arg_10[for_iter_167][arith_addi_200]; 
                int arith_addi_202 = (arith_addi_199 + arith_const_14); 
                double memref_load_203 = func_arg_9[for_iter_168][arith_addi_202]; 
                double arith_mulf_204 = (memref_load_172 * memref_load_203); 
                double arith_addf_205 = (memref_load_201 + arith_mulf_204); 
                int arith_addi_206 = (arith_addi_199 + arith_const_14); 
                func_arg_10[for_iter_167][arith_addi_206] = arith_addf_205; 
              }
              double memref_load_207 = func_arg_10[for_iter_167][arith_const_11]; 
              double memref_load_208 = func_arg_6[for_iter_167][for_iter_168]; 
              double memref_load_209 = func_arg_9[for_iter_168][arith_const_11]; 
              double arith_mulf_210 = (memref_load_208 * memref_load_209); 
              double arith_addf_211 = (memref_load_207 + arith_mulf_210); 
              func_arg_10[for_iter_167][arith_const_11] = arith_addf_211; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_71, PAST_TASK_FINISHED); 
    }
    async_group_67[async_group_index_68] = execute_token_71; 
    async_group_index_68++; 
    int arith_addi_212 = (for_iter_arg_70 + arith_const_28); 
    for_iter_arg_70 = arith_addi_212; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_67, async_group_index_68, PAST_TASK_FINISHED); 
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
