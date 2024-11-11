#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 23; 
  int arith_const_12 = 32; 
  int arith_const_13 = -1; 
  int arith_const_14 = 29; 
  int arith_const_15 = -21; 
  int arith_const_16 = 5; 
  int arith_const_17 = 22; 
  int arith_const_18 = 3; 
  int arith_const_19 = 2; 
  int arith_const_20 = 4; 
  int arith_const_21 = 21; 
  int arith_const_22 = 20; 
  int arith_const_23 = 19; 
  int arith_const_24 = 18; 
  double arith_const_25 = 0.000000; 
  int arith_const_26 = 0; 
  int arith_const_27 = 16; 
  int arith_const_28 = 1; 
  int* async_group_29; 
  int async_group_index_30 = 0; 
  int for_iter_arg_32 = arith_const_26; 
  for (int for_iter_31 = arith_const_26; for_iter_31 < arith_const_27; for_iter_31 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_33); 
    #pragma peqc async_execute
    {
      for (int for_iter_34 = arith_const_26; for_iter_34 < arith_const_28; for_iter_34 += arith_const_28) {
        int arith_addi_35 = (for_iter_31 + for_iter_34); 
        for (int for_iter_36 = arith_const_26; for_iter_36 < arith_const_20; for_iter_36 += arith_const_28) {
          int arith_muli_37 = (for_iter_36 * arith_const_20); 
          double memref_load_38 = func_arg_10[arith_addi_35][arith_muli_37]; 
          double arith_mulf_39 = (memref_load_38 * func_arg_5); 
          func_arg_10[arith_addi_35][arith_muli_37] = arith_mulf_39; 
          func_arg_6[arith_addi_35][arith_muli_37] = arith_const_25; 
          int arith_addi_40 = (arith_muli_37 + arith_const_28); 
          double memref_load_41 = func_arg_10[arith_addi_35][arith_addi_40]; 
          double arith_mulf_42 = (memref_load_41 * func_arg_5); 
          func_arg_10[arith_addi_35][arith_addi_40] = arith_mulf_42; 
          func_arg_6[arith_addi_35][arith_addi_40] = arith_const_25; 
          int arith_addi_43 = (arith_muli_37 + arith_const_19); 
          double memref_load_44 = func_arg_10[arith_addi_35][arith_addi_43]; 
          double arith_mulf_45 = (memref_load_44 * func_arg_5); 
          func_arg_10[arith_addi_35][arith_addi_43] = arith_mulf_45; 
          func_arg_6[arith_addi_35][arith_addi_43] = arith_const_25; 
          int arith_addi_46 = (arith_muli_37 + arith_const_18); 
          double memref_load_47 = func_arg_10[arith_addi_35][arith_addi_46]; 
          double arith_mulf_48 = (memref_load_47 * func_arg_5); 
          func_arg_10[arith_addi_35][arith_addi_46] = arith_mulf_48; 
          func_arg_6[arith_addi_35][arith_addi_46] = arith_const_25; 
        }
        for (int for_iter_49 = arith_const_26; for_iter_49 < arith_const_19; for_iter_49 += arith_const_28) {
          int arith_addi_50 = (for_iter_49 + arith_const_27); 
          double memref_load_51 = func_arg_10[arith_addi_35][arith_addi_50]; 
          double arith_mulf_52 = (memref_load_51 * func_arg_5); 
          func_arg_10[arith_addi_35][arith_addi_50] = arith_mulf_52; 
          func_arg_6[arith_addi_35][arith_addi_50] = arith_const_25; 
        }
        double memref_load_53 = func_arg_10[arith_addi_35][arith_const_24]; 
        double arith_mulf_54 = (memref_load_53 * func_arg_5); 
        func_arg_10[arith_addi_35][arith_const_24] = arith_mulf_54; 
        double memref_load_55 = func_arg_10[arith_addi_35][arith_const_23]; 
        double arith_mulf_56 = (memref_load_55 * func_arg_5); 
        func_arg_10[arith_addi_35][arith_const_23] = arith_mulf_56; 
        double memref_load_57 = func_arg_10[arith_addi_35][arith_const_22]; 
        double arith_mulf_58 = (memref_load_57 * func_arg_5); 
        func_arg_10[arith_addi_35][arith_const_22] = arith_mulf_58; 
        double memref_load_59 = func_arg_10[arith_addi_35][arith_const_21]; 
        double arith_mulf_60 = (memref_load_59 * func_arg_5); 
        func_arg_10[arith_addi_35][arith_const_21] = arith_mulf_60; 
        for (int for_iter_61 = arith_const_26; for_iter_61 < arith_const_19; for_iter_61 += arith_const_28) {
          int arith_addi_62 = (for_iter_61 + arith_const_17); 
          double memref_load_63 = func_arg_10[arith_addi_35][arith_addi_62]; 
          double arith_mulf_64 = (memref_load_63 * func_arg_5); 
          func_arg_10[arith_addi_35][arith_addi_62] = arith_mulf_64; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
    }
    async_group_29[async_group_index_30] = execute_token_33; 
    async_group_index_30++; 
    int arith_addi_65 = (for_iter_arg_32 + arith_const_28); 
    for_iter_arg_32 = arith_addi_65; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
  for (int for_iter_66 = arith_const_26; for_iter_66 < arith_const_19; for_iter_66 += arith_const_28) {
    int* async_group_67; 
    int async_group_index_68 = 0; 
    int for_iter_arg_70 = arith_const_26; 
    for (int for_iter_69 = arith_const_26; for_iter_69 < arith_const_28; for_iter_69 += arith_const_28) {
      PAST_NEW_SEMAPHORE(execute_token_71); 
      #pragma peqc async_execute
      {
        int arith_addi_72 = (for_iter_66 + for_iter_69); 
        int arith_cmpi_73 = (arith_addi_72 == arith_const_26); 
        if (arith_cmpi_73) {
          for (int for_iter_74 = arith_const_26; for_iter_74 < arith_const_27; for_iter_74 += arith_const_28) {
            for (int for_iter_75 = arith_const_26; for_iter_75 < arith_const_24; for_iter_75 += arith_const_28) {
              for (int for_iter_76 = arith_const_26; for_iter_76 < arith_const_16; for_iter_76 += arith_const_28) {
                int arith_muli_77 = (for_iter_76 * arith_const_20); 
                double memref_load_78 = func_arg_6[for_iter_74][for_iter_75]; 
                double memref_load_79 = func_arg_7[for_iter_74][arith_muli_77]; 
                double arith_mulf_80 = (func_arg_4 * memref_load_79); 
                double memref_load_81 = func_arg_8[arith_muli_77][for_iter_75]; 
                double arith_mulf_82 = (arith_mulf_80 * memref_load_81); 
                double arith_addf_83 = (memref_load_78 + arith_mulf_82); 
                func_arg_6[for_iter_74][for_iter_75] = arith_addf_83; 
                int arith_addi_84 = (arith_muli_77 + arith_const_28); 
                double memref_load_85 = func_arg_6[for_iter_74][for_iter_75]; 
                double memref_load_86 = func_arg_7[for_iter_74][arith_addi_84]; 
                double arith_mulf_87 = (func_arg_4 * memref_load_86); 
                double memref_load_88 = func_arg_8[arith_addi_84][for_iter_75]; 
                double arith_mulf_89 = (arith_mulf_87 * memref_load_88); 
                double arith_addf_90 = (memref_load_85 + arith_mulf_89); 
                func_arg_6[for_iter_74][for_iter_75] = arith_addf_90; 
                int arith_addi_91 = (arith_muli_77 + arith_const_19); 
                double memref_load_92 = func_arg_6[for_iter_74][for_iter_75]; 
                double memref_load_93 = func_arg_7[for_iter_74][arith_addi_91]; 
                double arith_mulf_94 = (func_arg_4 * memref_load_93); 
                double memref_load_95 = func_arg_8[arith_addi_91][for_iter_75]; 
                double arith_mulf_96 = (arith_mulf_94 * memref_load_95); 
                double arith_addf_97 = (memref_load_92 + arith_mulf_96); 
                func_arg_6[for_iter_74][for_iter_75] = arith_addf_97; 
                int arith_addi_98 = (arith_muli_77 + arith_const_18); 
                double memref_load_99 = func_arg_6[for_iter_74][for_iter_75]; 
                double memref_load_100 = func_arg_7[for_iter_74][arith_addi_98]; 
                double arith_mulf_101 = (func_arg_4 * memref_load_100); 
                double memref_load_102 = func_arg_8[arith_addi_98][for_iter_75]; 
                double arith_mulf_103 = (arith_mulf_101 * memref_load_102); 
                double arith_addf_104 = (memref_load_99 + arith_mulf_103); 
                func_arg_6[for_iter_74][for_iter_75] = arith_addf_104; 
              }
              for (int for_iter_105 = arith_const_26; for_iter_105 < arith_const_19; for_iter_105 += arith_const_28) {
                int arith_addi_106 = (for_iter_105 + arith_const_22); 
                double memref_load_107 = func_arg_6[for_iter_74][for_iter_75]; 
                double memref_load_108 = func_arg_7[for_iter_74][arith_addi_106]; 
                double arith_mulf_109 = (func_arg_4 * memref_load_108); 
                double memref_load_110 = func_arg_8[arith_addi_106][for_iter_75]; 
                double arith_mulf_111 = (arith_mulf_109 * memref_load_110); 
                double arith_addf_112 = (memref_load_107 + arith_mulf_111); 
                func_arg_6[for_iter_74][for_iter_75] = arith_addf_112; 
              }
              double memref_load_113 = func_arg_6[for_iter_74][for_iter_75]; 
              double memref_load_114 = func_arg_6[for_iter_74][for_iter_75]; 
              double memref_load_115 = func_arg_6[for_iter_74][for_iter_75]; 
              double memref_load_116 = func_arg_6[for_iter_74][for_iter_75]; 
              for (int for_iter_117 = arith_const_26; for_iter_117 < arith_const_19; for_iter_117 += arith_const_28) {
                int arith_muli_118 = (for_iter_117 * arith_const_20); 
                int arith_addi_119 = (arith_muli_118 + arith_const_21); 
                int arith_addi_120 = (arith_addi_119 + arith_const_15); 
                double memref_load_121 = func_arg_10[for_iter_74][arith_addi_120]; 
                int arith_addi_122 = (arith_addi_119 + arith_const_15); 
                double memref_load_123 = func_arg_9[for_iter_75][arith_addi_122]; 
                double arith_mulf_124 = (memref_load_113 * memref_load_123); 
                double arith_addf_125 = (memref_load_121 + arith_mulf_124); 
                int arith_addi_126 = (arith_addi_119 + arith_const_15); 
                func_arg_10[for_iter_74][arith_addi_126] = arith_addf_125; 
                int arith_addi_127 = (arith_addi_119 + arith_const_28); 
                int arith_addi_128 = (arith_addi_127 + arith_const_15); 
                double memref_load_129 = func_arg_10[for_iter_74][arith_addi_128]; 
                int arith_addi_130 = (arith_addi_127 + arith_const_15); 
                double memref_load_131 = func_arg_9[for_iter_75][arith_addi_130]; 
                double arith_mulf_132 = (memref_load_114 * memref_load_131); 
                double arith_addf_133 = (memref_load_129 + arith_mulf_132); 
                int arith_addi_134 = (arith_addi_127 + arith_const_15); 
                func_arg_10[for_iter_74][arith_addi_134] = arith_addf_133; 
                int arith_addi_135 = (arith_addi_119 + arith_const_19); 
                int arith_addi_136 = (arith_addi_135 + arith_const_15); 
                double memref_load_137 = func_arg_10[for_iter_74][arith_addi_136]; 
                int arith_addi_138 = (arith_addi_135 + arith_const_15); 
                double memref_load_139 = func_arg_9[for_iter_75][arith_addi_138]; 
                double arith_mulf_140 = (memref_load_115 * memref_load_139); 
                double arith_addf_141 = (memref_load_137 + arith_mulf_140); 
                int arith_addi_142 = (arith_addi_135 + arith_const_15); 
                func_arg_10[for_iter_74][arith_addi_142] = arith_addf_141; 
                int arith_addi_143 = (arith_addi_119 + arith_const_18); 
                int arith_addi_144 = (arith_addi_143 + arith_const_15); 
                double memref_load_145 = func_arg_10[for_iter_74][arith_addi_144]; 
                int arith_addi_146 = (arith_addi_143 + arith_const_15); 
                double memref_load_147 = func_arg_9[for_iter_75][arith_addi_146]; 
                double arith_mulf_148 = (memref_load_116 * memref_load_147); 
                double arith_addf_149 = (memref_load_145 + arith_mulf_148); 
                int arith_addi_150 = (arith_addi_143 + arith_const_15); 
                func_arg_10[for_iter_74][arith_addi_150] = arith_addf_149; 
              }
              double memref_load_151 = func_arg_6[for_iter_74][for_iter_75]; 
              for (int for_iter_152 = arith_const_26; for_iter_152 < arith_const_18; for_iter_152 += arith_const_28) {
                int arith_addi_153 = (for_iter_152 + arith_const_14); 
                int arith_addi_154 = (arith_addi_153 + arith_const_15); 
                double memref_load_155 = func_arg_10[for_iter_74][arith_addi_154]; 
                int arith_addi_156 = (arith_addi_153 + arith_const_15); 
                double memref_load_157 = func_arg_9[for_iter_75][arith_addi_156]; 
                double arith_mulf_158 = (memref_load_151 * memref_load_157); 
                double arith_addf_159 = (memref_load_155 + arith_mulf_158); 
                int arith_addi_160 = (arith_addi_153 + arith_const_15); 
                func_arg_10[for_iter_74][arith_addi_160] = arith_addf_159; 
              }
            }
          }
        }
        int arith_addi_161 = (for_iter_66 + for_iter_69); 
        int arith_addi_162 = (arith_addi_161 + arith_const_13); 
        int arith_cmpi_163 = (arith_addi_162 == arith_const_26); 
        if (arith_cmpi_163) {
          for (int for_iter_164 = arith_const_26; for_iter_164 < arith_const_27; for_iter_164 += arith_const_28) {
            for (int for_iter_165 = arith_const_26; for_iter_165 < arith_const_24; for_iter_165 += arith_const_28) {
              double memref_load_166 = func_arg_6[for_iter_164][for_iter_165]; 
              double memref_load_167 = func_arg_6[for_iter_164][for_iter_165]; 
              double memref_load_168 = func_arg_6[for_iter_164][for_iter_165]; 
              double memref_load_169 = func_arg_6[for_iter_164][for_iter_165]; 
              for (int for_iter_170 = arith_const_26; for_iter_170 < arith_const_18; for_iter_170 += arith_const_28) {
                int arith_muli_171 = (for_iter_170 * arith_const_20); 
                int arith_addi_172 = (arith_muli_171 + arith_const_12); 
                int arith_addi_173 = (arith_addi_172 + arith_const_15); 
                double memref_load_174 = func_arg_10[for_iter_164][arith_addi_173]; 
                int arith_addi_175 = (arith_addi_172 + arith_const_15); 
                double memref_load_176 = func_arg_9[for_iter_165][arith_addi_175]; 
                double arith_mulf_177 = (memref_load_166 * memref_load_176); 
                double arith_addf_178 = (memref_load_174 + arith_mulf_177); 
                int arith_addi_179 = (arith_addi_172 + arith_const_15); 
                func_arg_10[for_iter_164][arith_addi_179] = arith_addf_178; 
                int arith_addi_180 = (arith_addi_172 + arith_const_28); 
                int arith_addi_181 = (arith_addi_180 + arith_const_15); 
                double memref_load_182 = func_arg_10[for_iter_164][arith_addi_181]; 
                int arith_addi_183 = (arith_addi_180 + arith_const_15); 
                double memref_load_184 = func_arg_9[for_iter_165][arith_addi_183]; 
                double arith_mulf_185 = (memref_load_167 * memref_load_184); 
                double arith_addf_186 = (memref_load_182 + arith_mulf_185); 
                int arith_addi_187 = (arith_addi_180 + arith_const_15); 
                func_arg_10[for_iter_164][arith_addi_187] = arith_addf_186; 
                int arith_addi_188 = (arith_addi_172 + arith_const_19); 
                int arith_addi_189 = (arith_addi_188 + arith_const_15); 
                double memref_load_190 = func_arg_10[for_iter_164][arith_addi_189]; 
                int arith_addi_191 = (arith_addi_188 + arith_const_15); 
                double memref_load_192 = func_arg_9[for_iter_165][arith_addi_191]; 
                double arith_mulf_193 = (memref_load_168 * memref_load_192); 
                double arith_addf_194 = (memref_load_190 + arith_mulf_193); 
                int arith_addi_195 = (arith_addi_188 + arith_const_15); 
                func_arg_10[for_iter_164][arith_addi_195] = arith_addf_194; 
                int arith_addi_196 = (arith_addi_172 + arith_const_18); 
                int arith_addi_197 = (arith_addi_196 + arith_const_15); 
                double memref_load_198 = func_arg_10[for_iter_164][arith_addi_197]; 
                int arith_addi_199 = (arith_addi_196 + arith_const_15); 
                double memref_load_200 = func_arg_9[for_iter_165][arith_addi_199]; 
                double arith_mulf_201 = (memref_load_169 * memref_load_200); 
                double arith_addf_202 = (memref_load_198 + arith_mulf_201); 
                int arith_addi_203 = (arith_addi_196 + arith_const_15); 
                func_arg_10[for_iter_164][arith_addi_203] = arith_addf_202; 
              }
              double memref_load_204 = func_arg_10[for_iter_164][arith_const_11]; 
              double memref_load_205 = func_arg_6[for_iter_164][for_iter_165]; 
              double memref_load_206 = func_arg_9[for_iter_165][arith_const_11]; 
              double arith_mulf_207 = (memref_load_205 * memref_load_206); 
              double arith_addf_208 = (memref_load_204 + arith_mulf_207); 
              func_arg_10[for_iter_164][arith_const_11] = arith_addf_208; 
            }
          }
        }
        PAST_SET_SEMAPHORE(execute_token_71, PAST_TASK_FINISHED); 
      }
      async_group_67[async_group_index_68] = execute_token_71; 
      async_group_index_68++; 
      int arith_addi_209 = (for_iter_arg_70 + arith_const_28); 
      for_iter_arg_70 = arith_addi_209; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_67, async_group_index_68, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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
