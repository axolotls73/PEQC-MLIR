#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 21; 
  int arith_const_13 = 12; 
  int arith_const_14 = 32; 
  int arith_const_15 = -1; 
  int arith_const_16 = -19; 
  int arith_const_17 = 19; 
  int arith_const_18 = 24; 
  int arith_const_19 = 18; 
  int arith_const_20 = 20; 
  int arith_const_21 = 3; 
  int arith_const_22 = 2; 
  int arith_const_23 = 4; 
  int arith_const_24 = 5; 
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
        for (int for_iter_36 = arith_const_26; for_iter_36 < arith_const_24; for_iter_36 += arith_const_28) {
          int arith_muli_37 = (for_iter_36 * arith_const_23); 
          func_arg_11[arith_addi_35][arith_muli_37] = arith_const_25; 
          func_arg_8[arith_addi_35][arith_muli_37] = arith_const_25; 
          int arith_addi_38 = (arith_muli_37 + arith_const_28); 
          func_arg_11[arith_addi_35][arith_addi_38] = arith_const_25; 
          func_arg_8[arith_addi_35][arith_addi_38] = arith_const_25; 
          int arith_addi_39 = (arith_muli_37 + arith_const_22); 
          func_arg_11[arith_addi_35][arith_addi_39] = arith_const_25; 
          func_arg_8[arith_addi_35][arith_addi_39] = arith_const_25; 
          int arith_addi_40 = (arith_muli_37 + arith_const_21); 
          func_arg_11[arith_addi_35][arith_addi_40] = arith_const_25; 
          func_arg_8[arith_addi_35][arith_addi_40] = arith_const_25; 
        }
        for (int for_iter_41 = arith_const_26; for_iter_41 < arith_const_22; for_iter_41 += arith_const_28) {
          int arith_addi_42 = (for_iter_41 + arith_const_20); 
          func_arg_11[arith_addi_35][arith_addi_42] = arith_const_25; 
          func_arg_8[arith_addi_35][arith_addi_42] = arith_const_25; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_33, PAST_TASK_FINISHED); 
    }
    async_group_29[async_group_index_30] = execute_token_33; 
    async_group_index_30++; 
    int arith_addi_43 = (for_iter_arg_32 + arith_const_28); 
    for_iter_arg_32 = arith_addi_43; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_29, async_group_index_30, PAST_TASK_FINISHED); 
  int* async_group_44; 
  int async_group_index_45 = 0; 
  int for_iter_arg_47 = arith_const_26; 
  for (int for_iter_46 = arith_const_26; for_iter_46 < arith_const_22; for_iter_46 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_48); 
    #pragma peqc async_execute
    {
      int arith_addi_49 = (for_iter_46 + arith_const_27); 
      for (int for_iter_50 = arith_const_26; for_iter_50 < arith_const_28; for_iter_50 += arith_const_28) {
        int arith_addi_51 = (arith_addi_49 + for_iter_50); 
        for (int for_iter_52 = arith_const_26; for_iter_52 < arith_const_24; for_iter_52 += arith_const_28) {
          int arith_muli_53 = (for_iter_52 * arith_const_23); 
          func_arg_8[arith_addi_51][arith_muli_53] = arith_const_25; 
          int arith_addi_54 = (arith_muli_53 + arith_const_28); 
          func_arg_8[arith_addi_51][arith_addi_54] = arith_const_25; 
          int arith_addi_55 = (arith_muli_53 + arith_const_22); 
          func_arg_8[arith_addi_51][arith_addi_55] = arith_const_25; 
          int arith_addi_56 = (arith_muli_53 + arith_const_21); 
          func_arg_8[arith_addi_51][arith_addi_56] = arith_const_25; 
        }
        for (int for_iter_57 = arith_const_26; for_iter_57 < arith_const_22; for_iter_57 += arith_const_28) {
          int arith_addi_58 = (for_iter_57 + arith_const_20); 
          func_arg_8[arith_addi_51][arith_addi_58] = arith_const_25; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_48, PAST_TASK_FINISHED); 
    }
    async_group_44[async_group_index_45] = execute_token_48; 
    async_group_index_45++; 
    int arith_addi_59 = (for_iter_arg_47 + arith_const_28); 
    for_iter_arg_47 = arith_addi_59; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_44, async_group_index_45, PAST_TASK_FINISHED); 
  int* async_group_60; 
  int async_group_index_61 = 0; 
  int for_iter_arg_63 = arith_const_26; 
  for (int for_iter_62 = arith_const_26; for_iter_62 < arith_const_19; for_iter_62 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_64); 
    #pragma peqc async_execute
    {
      for (int for_iter_65 = arith_const_26; for_iter_65 < arith_const_18; for_iter_65 += arith_const_28) {
        for (int for_iter_66 = arith_const_26; for_iter_66 < arith_const_28; for_iter_66 += arith_const_28) {
          int arith_addi_67 = (for_iter_62 + for_iter_66); 
          for (int for_iter_68 = arith_const_26; for_iter_68 < arith_const_28; for_iter_68 += arith_const_28) {
            int arith_addi_69 = (for_iter_65 + for_iter_68); 
            double memref_load_70 = func_arg_9[arith_addi_67][arith_addi_69]; 
            double memref_load_71 = func_arg_9[arith_addi_67][arith_addi_69]; 
            double memref_load_72 = func_arg_9[arith_addi_67][arith_addi_69]; 
            double memref_load_73 = func_arg_9[arith_addi_67][arith_addi_69]; 
            for (int for_iter_74 = arith_const_26; for_iter_74 < arith_const_24; for_iter_74 += arith_const_28) {
              int arith_muli_75 = (for_iter_74 * arith_const_23); 
              double memref_load_76 = func_arg_8[arith_addi_67][arith_muli_75]; 
              double memref_load_77 = func_arg_10[arith_addi_69][arith_muli_75]; 
              double arith_mulf_78 = (memref_load_70 * memref_load_77); 
              double arith_addf_79 = (memref_load_76 + arith_mulf_78); 
              func_arg_8[arith_addi_67][arith_muli_75] = arith_addf_79; 
              int arith_addi_80 = (arith_muli_75 + arith_const_28); 
              double memref_load_81 = func_arg_8[arith_addi_67][arith_addi_80]; 
              double memref_load_82 = func_arg_10[arith_addi_69][arith_addi_80]; 
              double arith_mulf_83 = (memref_load_71 * memref_load_82); 
              double arith_addf_84 = (memref_load_81 + arith_mulf_83); 
              func_arg_8[arith_addi_67][arith_addi_80] = arith_addf_84; 
              int arith_addi_85 = (arith_muli_75 + arith_const_22); 
              double memref_load_86 = func_arg_8[arith_addi_67][arith_addi_85]; 
              double memref_load_87 = func_arg_10[arith_addi_69][arith_addi_85]; 
              double arith_mulf_88 = (memref_load_72 * memref_load_87); 
              double arith_addf_89 = (memref_load_86 + arith_mulf_88); 
              func_arg_8[arith_addi_67][arith_addi_85] = arith_addf_89; 
              int arith_addi_90 = (arith_muli_75 + arith_const_21); 
              double memref_load_91 = func_arg_8[arith_addi_67][arith_addi_90]; 
              double memref_load_92 = func_arg_10[arith_addi_69][arith_addi_90]; 
              double arith_mulf_93 = (memref_load_73 * memref_load_92); 
              double arith_addf_94 = (memref_load_91 + arith_mulf_93); 
              func_arg_8[arith_addi_67][arith_addi_90] = arith_addf_94; 
            }
            double memref_load_95 = func_arg_9[arith_addi_67][arith_addi_69]; 
            for (int for_iter_96 = arith_const_26; for_iter_96 < arith_const_22; for_iter_96 += arith_const_28) {
              int arith_addi_97 = (for_iter_96 + arith_const_20); 
              double memref_load_98 = func_arg_8[arith_addi_67][arith_addi_97]; 
              double memref_load_99 = func_arg_10[arith_addi_69][arith_addi_97]; 
              double arith_mulf_100 = (memref_load_95 * memref_load_99); 
              double arith_addf_101 = (memref_load_98 + arith_mulf_100); 
              func_arg_8[arith_addi_67][arith_addi_97] = arith_addf_101; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_64, PAST_TASK_FINISHED); 
    }
    async_group_60[async_group_index_61] = execute_token_64; 
    async_group_index_61++; 
    int arith_addi_102 = (for_iter_arg_63 + arith_const_28); 
    for_iter_arg_63 = arith_addi_102; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_60, async_group_index_61, PAST_TASK_FINISHED); 
  int* async_group_103; 
  int async_group_index_104 = 0; 
  int for_iter_arg_106 = arith_const_26; 
  for (int for_iter_105 = arith_const_26; for_iter_105 < arith_const_27; for_iter_105 += arith_const_28) {
    PAST_NEW_SEMAPHORE(execute_token_107); 
    #pragma peqc async_execute
    {
      for (int for_iter_108 = arith_const_26; for_iter_108 < arith_const_28; for_iter_108 += arith_const_28) {
        int arith_addi_109 = (for_iter_105 + for_iter_108); 
        for (int for_iter_110 = arith_const_26; for_iter_110 < arith_const_23; for_iter_110 += arith_const_28) {
          int arith_muli_111 = (for_iter_110 * arith_const_23); 
          func_arg_5[arith_addi_109][arith_muli_111] = arith_const_25; 
          int arith_addi_112 = (arith_muli_111 + arith_const_28); 
          func_arg_5[arith_addi_109][arith_addi_112] = arith_const_25; 
          int arith_addi_113 = (arith_muli_111 + arith_const_22); 
          func_arg_5[arith_addi_109][arith_addi_113] = arith_const_25; 
          int arith_addi_114 = (arith_muli_111 + arith_const_21); 
          func_arg_5[arith_addi_109][arith_addi_114] = arith_const_25; 
        }
        for (int for_iter_115 = arith_const_26; for_iter_115 < arith_const_22; for_iter_115 += arith_const_28) {
          int arith_addi_116 = (for_iter_115 + arith_const_27); 
          func_arg_5[arith_addi_109][arith_addi_116] = arith_const_25; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_107, PAST_TASK_FINISHED); 
    }
    async_group_103[async_group_index_104] = execute_token_107; 
    async_group_index_104++; 
    int arith_addi_117 = (for_iter_arg_106 + arith_const_28); 
    for_iter_arg_106 = arith_addi_117; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_103, async_group_index_104, PAST_TASK_FINISHED); 
  for (int for_iter_118 = arith_const_26; for_iter_118 < arith_const_22; for_iter_118 += arith_const_28) {
    int* async_group_119; 
    int async_group_index_120 = 0; 
    int for_iter_arg_122 = arith_const_26; 
    for (int for_iter_121 = arith_const_26; for_iter_121 < arith_const_28; for_iter_121 += arith_const_28) {
      PAST_NEW_SEMAPHORE(execute_token_123); 
      #pragma peqc async_execute
      {
        int arith_addi_124 = (for_iter_118 + for_iter_121); 
        int arith_cmpi_125 = (arith_addi_124 == arith_const_26); 
        if (arith_cmpi_125) {
          for (int for_iter_126 = arith_const_26; for_iter_126 < arith_const_27; for_iter_126 += arith_const_28) {
            for (int for_iter_127 = arith_const_26; for_iter_127 < arith_const_19; for_iter_127 += arith_const_28) {
              for (int for_iter_128 = arith_const_26; for_iter_128 < arith_const_24; for_iter_128 += arith_const_28) {
                int arith_muli_129 = (for_iter_128 * arith_const_23); 
                double memref_load_130 = func_arg_5[for_iter_126][for_iter_127]; 
                double memref_load_131 = func_arg_6[for_iter_126][arith_muli_129]; 
                double memref_load_132 = func_arg_7[arith_muli_129][for_iter_127]; 
                double arith_mulf_133 = (memref_load_131 * memref_load_132); 
                double arith_addf_134 = (memref_load_130 + arith_mulf_133); 
                func_arg_5[for_iter_126][for_iter_127] = arith_addf_134; 
                int arith_addi_135 = (arith_muli_129 + arith_const_28); 
                double memref_load_136 = func_arg_5[for_iter_126][for_iter_127]; 
                double memref_load_137 = func_arg_6[for_iter_126][arith_addi_135]; 
                double memref_load_138 = func_arg_7[arith_addi_135][for_iter_127]; 
                double arith_mulf_139 = (memref_load_137 * memref_load_138); 
                double arith_addf_140 = (memref_load_136 + arith_mulf_139); 
                func_arg_5[for_iter_126][for_iter_127] = arith_addf_140; 
                int arith_addi_141 = (arith_muli_129 + arith_const_22); 
                double memref_load_142 = func_arg_5[for_iter_126][for_iter_127]; 
                double memref_load_143 = func_arg_6[for_iter_126][arith_addi_141]; 
                double memref_load_144 = func_arg_7[arith_addi_141][for_iter_127]; 
                double arith_mulf_145 = (memref_load_143 * memref_load_144); 
                double arith_addf_146 = (memref_load_142 + arith_mulf_145); 
                func_arg_5[for_iter_126][for_iter_127] = arith_addf_146; 
                int arith_addi_147 = (arith_muli_129 + arith_const_21); 
                double memref_load_148 = func_arg_5[for_iter_126][for_iter_127]; 
                double memref_load_149 = func_arg_6[for_iter_126][arith_addi_147]; 
                double memref_load_150 = func_arg_7[arith_addi_147][for_iter_127]; 
                double arith_mulf_151 = (memref_load_149 * memref_load_150); 
                double arith_addf_152 = (memref_load_148 + arith_mulf_151); 
                func_arg_5[for_iter_126][for_iter_127] = arith_addf_152; 
              }
              double memref_load_153 = func_arg_5[for_iter_126][for_iter_127]; 
              double memref_load_154 = func_arg_5[for_iter_126][for_iter_127]; 
              double memref_load_155 = func_arg_5[for_iter_126][for_iter_127]; 
              double memref_load_156 = func_arg_5[for_iter_126][for_iter_127]; 
              for (int for_iter_157 = arith_const_26; for_iter_157 < arith_const_21; for_iter_157 += arith_const_28) {
                int arith_muli_158 = (for_iter_157 * arith_const_23); 
                int arith_addi_159 = (arith_muli_158 + arith_const_17); 
                int arith_addi_160 = (arith_addi_159 + arith_const_16); 
                double memref_load_161 = func_arg_11[for_iter_126][arith_addi_160]; 
                int arith_addi_162 = (arith_addi_159 + arith_const_16); 
                double memref_load_163 = func_arg_8[for_iter_127][arith_addi_162]; 
                double arith_mulf_164 = (memref_load_153 * memref_load_163); 
                double arith_addf_165 = (memref_load_161 + arith_mulf_164); 
                int arith_addi_166 = (arith_addi_159 + arith_const_16); 
                func_arg_11[for_iter_126][arith_addi_166] = arith_addf_165; 
                int arith_addi_167 = (arith_addi_159 + arith_const_28); 
                int arith_addi_168 = (arith_addi_167 + arith_const_16); 
                double memref_load_169 = func_arg_11[for_iter_126][arith_addi_168]; 
                int arith_addi_170 = (arith_addi_167 + arith_const_16); 
                double memref_load_171 = func_arg_8[for_iter_127][arith_addi_170]; 
                double arith_mulf_172 = (memref_load_154 * memref_load_171); 
                double arith_addf_173 = (memref_load_169 + arith_mulf_172); 
                int arith_addi_174 = (arith_addi_167 + arith_const_16); 
                func_arg_11[for_iter_126][arith_addi_174] = arith_addf_173; 
                int arith_addi_175 = (arith_addi_159 + arith_const_22); 
                int arith_addi_176 = (arith_addi_175 + arith_const_16); 
                double memref_load_177 = func_arg_11[for_iter_126][arith_addi_176]; 
                int arith_addi_178 = (arith_addi_175 + arith_const_16); 
                double memref_load_179 = func_arg_8[for_iter_127][arith_addi_178]; 
                double arith_mulf_180 = (memref_load_155 * memref_load_179); 
                double arith_addf_181 = (memref_load_177 + arith_mulf_180); 
                int arith_addi_182 = (arith_addi_175 + arith_const_16); 
                func_arg_11[for_iter_126][arith_addi_182] = arith_addf_181; 
                int arith_addi_183 = (arith_addi_159 + arith_const_21); 
                int arith_addi_184 = (arith_addi_183 + arith_const_16); 
                double memref_load_185 = func_arg_11[for_iter_126][arith_addi_184]; 
                int arith_addi_186 = (arith_addi_183 + arith_const_16); 
                double memref_load_187 = func_arg_8[for_iter_127][arith_addi_186]; 
                double arith_mulf_188 = (memref_load_156 * memref_load_187); 
                double arith_addf_189 = (memref_load_185 + arith_mulf_188); 
                int arith_addi_190 = (arith_addi_183 + arith_const_16); 
                func_arg_11[for_iter_126][arith_addi_190] = arith_addf_189; 
              }
              double memref_load_191 = func_arg_11[for_iter_126][arith_const_13]; 
              double memref_load_192 = func_arg_5[for_iter_126][for_iter_127]; 
              double memref_load_193 = func_arg_8[for_iter_127][arith_const_13]; 
              double arith_mulf_194 = (memref_load_192 * memref_load_193); 
              double arith_addf_195 = (memref_load_191 + arith_mulf_194); 
              func_arg_11[for_iter_126][arith_const_13] = arith_addf_195; 
            }
          }
        }
        int arith_addi_196 = (for_iter_118 + for_iter_121); 
        int arith_addi_197 = (arith_addi_196 + arith_const_15); 
        int arith_cmpi_198 = (arith_addi_197 == arith_const_26); 
        if (arith_cmpi_198) {
          for (int for_iter_199 = arith_const_26; for_iter_199 < arith_const_27; for_iter_199 += arith_const_28) {
            for (int for_iter_200 = arith_const_26; for_iter_200 < arith_const_19; for_iter_200 += arith_const_28) {
              double memref_load_201 = func_arg_5[for_iter_199][for_iter_200]; 
              double memref_load_202 = func_arg_5[for_iter_199][for_iter_200]; 
              double memref_load_203 = func_arg_5[for_iter_199][for_iter_200]; 
              double memref_load_204 = func_arg_5[for_iter_199][for_iter_200]; 
              for (int for_iter_205 = arith_const_26; for_iter_205 < arith_const_22; for_iter_205 += arith_const_28) {
                int arith_muli_206 = (for_iter_205 * arith_const_23); 
                int arith_addi_207 = (arith_muli_206 + arith_const_14); 
                int arith_addi_208 = (arith_addi_207 + arith_const_16); 
                double memref_load_209 = func_arg_11[for_iter_199][arith_addi_208]; 
                int arith_addi_210 = (arith_addi_207 + arith_const_16); 
                double memref_load_211 = func_arg_8[for_iter_200][arith_addi_210]; 
                double arith_mulf_212 = (memref_load_201 * memref_load_211); 
                double arith_addf_213 = (memref_load_209 + arith_mulf_212); 
                int arith_addi_214 = (arith_addi_207 + arith_const_16); 
                func_arg_11[for_iter_199][arith_addi_214] = arith_addf_213; 
                int arith_addi_215 = (arith_addi_207 + arith_const_28); 
                int arith_addi_216 = (arith_addi_215 + arith_const_16); 
                double memref_load_217 = func_arg_11[for_iter_199][arith_addi_216]; 
                int arith_addi_218 = (arith_addi_215 + arith_const_16); 
                double memref_load_219 = func_arg_8[for_iter_200][arith_addi_218]; 
                double arith_mulf_220 = (memref_load_202 * memref_load_219); 
                double arith_addf_221 = (memref_load_217 + arith_mulf_220); 
                int arith_addi_222 = (arith_addi_215 + arith_const_16); 
                func_arg_11[for_iter_199][arith_addi_222] = arith_addf_221; 
                int arith_addi_223 = (arith_addi_207 + arith_const_22); 
                int arith_addi_224 = (arith_addi_223 + arith_const_16); 
                double memref_load_225 = func_arg_11[for_iter_199][arith_addi_224]; 
                int arith_addi_226 = (arith_addi_223 + arith_const_16); 
                double memref_load_227 = func_arg_8[for_iter_200][arith_addi_226]; 
                double arith_mulf_228 = (memref_load_203 * memref_load_227); 
                double arith_addf_229 = (memref_load_225 + arith_mulf_228); 
                int arith_addi_230 = (arith_addi_223 + arith_const_16); 
                func_arg_11[for_iter_199][arith_addi_230] = arith_addf_229; 
                int arith_addi_231 = (arith_addi_207 + arith_const_21); 
                int arith_addi_232 = (arith_addi_231 + arith_const_16); 
                double memref_load_233 = func_arg_11[for_iter_199][arith_addi_232]; 
                int arith_addi_234 = (arith_addi_231 + arith_const_16); 
                double memref_load_235 = func_arg_8[for_iter_200][arith_addi_234]; 
                double arith_mulf_236 = (memref_load_204 * memref_load_235); 
                double arith_addf_237 = (memref_load_233 + arith_mulf_236); 
                int arith_addi_238 = (arith_addi_231 + arith_const_16); 
                func_arg_11[for_iter_199][arith_addi_238] = arith_addf_237; 
              }
              double memref_load_239 = func_arg_11[for_iter_199][arith_const_12]; 
              double memref_load_240 = func_arg_5[for_iter_199][for_iter_200]; 
              double memref_load_241 = func_arg_8[for_iter_200][arith_const_12]; 
              double arith_mulf_242 = (memref_load_240 * memref_load_241); 
              double arith_addf_243 = (memref_load_239 + arith_mulf_242); 
              func_arg_11[for_iter_199][arith_const_12] = arith_addf_243; 
            }
          }
        }
        PAST_SET_SEMAPHORE(execute_token_123, PAST_TASK_FINISHED); 
      }
      async_group_119[async_group_index_120] = execute_token_123; 
      async_group_index_120++; 
      int arith_addi_244 = (for_iter_arg_122 + arith_const_28); 
      for_iter_arg_122 = arith_addi_244; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_119, async_group_index_120, PAST_TASK_FINISHED); 
  }
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
