#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 2; 
  int arith_const_8 = 8; 
  double arith_const_9 = 2.000000; 
  double arith_const_10 = 0.125000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int* async_group_15; 
    int async_group_index_16 = 0; 
    int for_iter_arg_18 = arith_const_11; 
    for (int for_iter_17 = arith_const_11; for_iter_17 < arith_const_13; for_iter_17 += arith_const_13) {
      PAST_NEW_SEMAPHORE(execute_token_19); 
      #pragma peqc async_execute
      {
        int* async_group_20; 
        int async_group_index_21 = 0; 
        int for_iter_arg_23 = arith_const_11; 
        for (int for_iter_22 = arith_const_11; for_iter_22 < arith_const_8; for_iter_22 += arith_const_13) {
          PAST_NEW_SEMAPHORE(execute_token_24); 
          #pragma peqc async_execute
          {
            int arith_addi_25 = (for_iter_22 + arith_const_13); 
            int* async_group_26; 
            int async_group_index_27 = 0; 
            int for_iter_arg_29 = arith_const_11; 
            for (int for_iter_28 = arith_const_11; for_iter_28 < arith_const_8; for_iter_28 += arith_const_13) {
              PAST_NEW_SEMAPHORE(execute_token_30); 
              #pragma peqc async_execute
              {
                int arith_addi_31 = (for_iter_28 + arith_const_13); 
                int* async_group_32; 
                int async_group_index_33 = 0; 
                int for_iter_arg_35 = arith_const_11; 
                for (int for_iter_34 = arith_const_11; for_iter_34 < arith_const_7; for_iter_34 += arith_const_13) {
                  PAST_NEW_SEMAPHORE(execute_token_36); 
                  #pragma peqc async_execute
                  {
                    int arith_muli_37 = (for_iter_34 * arith_const_6); 
                    int arith_addi_38 = (arith_muli_37 + arith_const_13); 
                    int arith_addi_39 = (arith_addi_25 + arith_const_13); 
                    double memref_load_40 = func_arg_2[arith_addi_39][arith_addi_31][arith_addi_38]; 
                    double memref_load_41 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_38]; 
                    double arith_mulf_42 = (memref_load_41 * arith_const_9); 
                    double arith_subf_43 = (memref_load_40 - arith_mulf_42); 
                    int arith_addi_44 = (arith_addi_25 + arith_const_5); 
                    double memref_load_45 = func_arg_2[arith_addi_44][arith_addi_31][arith_addi_38]; 
                    double arith_addf_46 = (arith_subf_43 + memref_load_45); 
                    double arith_mulf_47 = (arith_addf_46 * arith_const_10); 
                    int arith_addi_48 = (arith_addi_31 + arith_const_13); 
                    double memref_load_49 = func_arg_2[arith_addi_25][arith_addi_48][arith_addi_38]; 
                    double arith_subf_50 = (memref_load_49 - arith_mulf_42); 
                    int arith_addi_51 = (arith_addi_31 + arith_const_5); 
                    double memref_load_52 = func_arg_2[arith_addi_25][arith_addi_51][arith_addi_38]; 
                    double arith_addf_53 = (arith_subf_50 + memref_load_52); 
                    double arith_mulf_54 = (arith_addf_53 * arith_const_10); 
                    double arith_addf_55 = (arith_mulf_47 + arith_mulf_54); 
                    int arith_addi_56 = (arith_addi_38 + arith_const_13); 
                    double memref_load_57 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_56]; 
                    double arith_subf_58 = (memref_load_57 - arith_mulf_42); 
                    int arith_addi_59 = (arith_addi_38 + arith_const_5); 
                    double memref_load_60 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_59]; 
                    double arith_addf_61 = (arith_subf_58 + memref_load_60); 
                    double arith_mulf_62 = (arith_addf_61 * arith_const_10); 
                    double arith_addf_63 = (arith_addf_55 + arith_mulf_62); 
                    double arith_addf_64 = (arith_addf_63 + memref_load_41); 
                    func_arg_3[arith_addi_25][arith_addi_31][arith_addi_38] = arith_addf_64; 
                    int arith_addi_65 = (arith_addi_38 + arith_const_13); 
                    int arith_addi_66 = (arith_addi_25 + arith_const_13); 
                    double memref_load_67 = func_arg_2[arith_addi_66][arith_addi_31][arith_addi_65]; 
                    double memref_load_68 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_65]; 
                    double arith_mulf_69 = (memref_load_68 * arith_const_9); 
                    double arith_subf_70 = (memref_load_67 - arith_mulf_69); 
                    int arith_addi_71 = (arith_addi_25 + arith_const_5); 
                    double memref_load_72 = func_arg_2[arith_addi_71][arith_addi_31][arith_addi_65]; 
                    double arith_addf_73 = (arith_subf_70 + memref_load_72); 
                    double arith_mulf_74 = (arith_addf_73 * arith_const_10); 
                    int arith_addi_75 = (arith_addi_31 + arith_const_13); 
                    double memref_load_76 = func_arg_2[arith_addi_25][arith_addi_75][arith_addi_65]; 
                    double arith_subf_77 = (memref_load_76 - arith_mulf_69); 
                    int arith_addi_78 = (arith_addi_31 + arith_const_5); 
                    double memref_load_79 = func_arg_2[arith_addi_25][arith_addi_78][arith_addi_65]; 
                    double arith_addf_80 = (arith_subf_77 + memref_load_79); 
                    double arith_mulf_81 = (arith_addf_80 * arith_const_10); 
                    double arith_addf_82 = (arith_mulf_74 + arith_mulf_81); 
                    int arith_addi_83 = (arith_addi_65 + arith_const_13); 
                    double memref_load_84 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_83]; 
                    double arith_subf_85 = (memref_load_84 - arith_mulf_69); 
                    int arith_addi_86 = (arith_addi_65 + arith_const_5); 
                    double memref_load_87 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_86]; 
                    double arith_addf_88 = (arith_subf_85 + memref_load_87); 
                    double arith_mulf_89 = (arith_addf_88 * arith_const_10); 
                    double arith_addf_90 = (arith_addf_82 + arith_mulf_89); 
                    double arith_addf_91 = (arith_addf_90 + memref_load_68); 
                    func_arg_3[arith_addi_25][arith_addi_31][arith_addi_65] = arith_addf_91; 
                    int arith_addi_92 = (arith_addi_38 + arith_const_7); 
                    int arith_addi_93 = (arith_addi_25 + arith_const_13); 
                    double memref_load_94 = func_arg_2[arith_addi_93][arith_addi_31][arith_addi_92]; 
                    double memref_load_95 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_92]; 
                    double arith_mulf_96 = (memref_load_95 * arith_const_9); 
                    double arith_subf_97 = (memref_load_94 - arith_mulf_96); 
                    int arith_addi_98 = (arith_addi_25 + arith_const_5); 
                    double memref_load_99 = func_arg_2[arith_addi_98][arith_addi_31][arith_addi_92]; 
                    double arith_addf_100 = (arith_subf_97 + memref_load_99); 
                    double arith_mulf_101 = (arith_addf_100 * arith_const_10); 
                    int arith_addi_102 = (arith_addi_31 + arith_const_13); 
                    double memref_load_103 = func_arg_2[arith_addi_25][arith_addi_102][arith_addi_92]; 
                    double arith_subf_104 = (memref_load_103 - arith_mulf_96); 
                    int arith_addi_105 = (arith_addi_31 + arith_const_5); 
                    double memref_load_106 = func_arg_2[arith_addi_25][arith_addi_105][arith_addi_92]; 
                    double arith_addf_107 = (arith_subf_104 + memref_load_106); 
                    double arith_mulf_108 = (arith_addf_107 * arith_const_10); 
                    double arith_addf_109 = (arith_mulf_101 + arith_mulf_108); 
                    int arith_addi_110 = (arith_addi_92 + arith_const_13); 
                    double memref_load_111 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_110]; 
                    double arith_subf_112 = (memref_load_111 - arith_mulf_96); 
                    int arith_addi_113 = (arith_addi_92 + arith_const_5); 
                    double memref_load_114 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_113]; 
                    double arith_addf_115 = (arith_subf_112 + memref_load_114); 
                    double arith_mulf_116 = (arith_addf_115 * arith_const_10); 
                    double arith_addf_117 = (arith_addf_109 + arith_mulf_116); 
                    double arith_addf_118 = (arith_addf_117 + memref_load_95); 
                    func_arg_3[arith_addi_25][arith_addi_31][arith_addi_92] = arith_addf_118; 
                    int arith_addi_119 = (arith_addi_38 + arith_const_4); 
                    int arith_addi_120 = (arith_addi_25 + arith_const_13); 
                    double memref_load_121 = func_arg_2[arith_addi_120][arith_addi_31][arith_addi_119]; 
                    double memref_load_122 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_119]; 
                    double arith_mulf_123 = (memref_load_122 * arith_const_9); 
                    double arith_subf_124 = (memref_load_121 - arith_mulf_123); 
                    int arith_addi_125 = (arith_addi_25 + arith_const_5); 
                    double memref_load_126 = func_arg_2[arith_addi_125][arith_addi_31][arith_addi_119]; 
                    double arith_addf_127 = (arith_subf_124 + memref_load_126); 
                    double arith_mulf_128 = (arith_addf_127 * arith_const_10); 
                    int arith_addi_129 = (arith_addi_31 + arith_const_13); 
                    double memref_load_130 = func_arg_2[arith_addi_25][arith_addi_129][arith_addi_119]; 
                    double arith_subf_131 = (memref_load_130 - arith_mulf_123); 
                    int arith_addi_132 = (arith_addi_31 + arith_const_5); 
                    double memref_load_133 = func_arg_2[arith_addi_25][arith_addi_132][arith_addi_119]; 
                    double arith_addf_134 = (arith_subf_131 + memref_load_133); 
                    double arith_mulf_135 = (arith_addf_134 * arith_const_10); 
                    double arith_addf_136 = (arith_mulf_128 + arith_mulf_135); 
                    int arith_addi_137 = (arith_addi_119 + arith_const_13); 
                    double memref_load_138 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_137]; 
                    double arith_subf_139 = (memref_load_138 - arith_mulf_123); 
                    int arith_addi_140 = (arith_addi_119 + arith_const_5); 
                    double memref_load_141 = func_arg_2[arith_addi_25][arith_addi_31][arith_addi_140]; 
                    double arith_addf_142 = (arith_subf_139 + memref_load_141); 
                    double arith_mulf_143 = (arith_addf_142 * arith_const_10); 
                    double arith_addf_144 = (arith_addf_136 + arith_mulf_143); 
                    double arith_addf_145 = (arith_addf_144 + memref_load_122); 
                    func_arg_3[arith_addi_25][arith_addi_31][arith_addi_119] = arith_addf_145; 
                    PAST_SET_SEMAPHORE(execute_token_36, PAST_TASK_FINISHED); 
                  }
                  async_group_32[async_group_index_33] = execute_token_36; 
                  async_group_index_33++; 
                  int arith_addi_146 = (for_iter_arg_35 + arith_const_13); 
                  for_iter_arg_35 = arith_addi_146; 
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_32, async_group_index_33, PAST_TASK_FINISHED); 
                PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
              }
              async_group_26[async_group_index_27] = execute_token_30; 
              async_group_index_27++; 
              int arith_addi_147 = (for_iter_arg_29 + arith_const_13); 
              for_iter_arg_29 = arith_addi_147; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_24, PAST_TASK_FINISHED); 
          }
          async_group_20[async_group_index_21] = execute_token_24; 
          async_group_index_21++; 
          int arith_addi_148 = (for_iter_arg_23 + arith_const_13); 
          for_iter_arg_23 = arith_addi_148; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_20, async_group_index_21, PAST_TASK_FINISHED); 
        int* async_group_149; 
        int async_group_index_150 = 0; 
        int for_iter_arg_152 = arith_const_11; 
        for (int for_iter_151 = arith_const_11; for_iter_151 < arith_const_8; for_iter_151 += arith_const_13) {
          PAST_NEW_SEMAPHORE(execute_token_153); 
          #pragma peqc async_execute
          {
            int arith_addi_154 = (for_iter_151 + arith_const_13); 
            int* async_group_155; 
            int async_group_index_156 = 0; 
            int for_iter_arg_158 = arith_const_11; 
            for (int for_iter_157 = arith_const_11; for_iter_157 < arith_const_8; for_iter_157 += arith_const_13) {
              PAST_NEW_SEMAPHORE(execute_token_159); 
              #pragma peqc async_execute
              {
                int arith_addi_160 = (for_iter_157 + arith_const_13); 
                int* async_group_161; 
                int async_group_index_162 = 0; 
                int for_iter_arg_164 = arith_const_11; 
                for (int for_iter_163 = arith_const_11; for_iter_163 < arith_const_7; for_iter_163 += arith_const_13) {
                  PAST_NEW_SEMAPHORE(execute_token_165); 
                  #pragma peqc async_execute
                  {
                    int arith_muli_166 = (for_iter_163 * arith_const_6); 
                    int arith_addi_167 = (arith_muli_166 + arith_const_13); 
                    int arith_addi_168 = (arith_addi_154 + arith_const_13); 
                    double memref_load_169 = func_arg_3[arith_addi_168][arith_addi_160][arith_addi_167]; 
                    double memref_load_170 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_167]; 
                    double arith_mulf_171 = (memref_load_170 * arith_const_9); 
                    double arith_subf_172 = (memref_load_169 - arith_mulf_171); 
                    int arith_addi_173 = (arith_addi_154 + arith_const_5); 
                    double memref_load_174 = func_arg_3[arith_addi_173][arith_addi_160][arith_addi_167]; 
                    double arith_addf_175 = (arith_subf_172 + memref_load_174); 
                    double arith_mulf_176 = (arith_addf_175 * arith_const_10); 
                    int arith_addi_177 = (arith_addi_160 + arith_const_13); 
                    double memref_load_178 = func_arg_3[arith_addi_154][arith_addi_177][arith_addi_167]; 
                    double arith_subf_179 = (memref_load_178 - arith_mulf_171); 
                    int arith_addi_180 = (arith_addi_160 + arith_const_5); 
                    double memref_load_181 = func_arg_3[arith_addi_154][arith_addi_180][arith_addi_167]; 
                    double arith_addf_182 = (arith_subf_179 + memref_load_181); 
                    double arith_mulf_183 = (arith_addf_182 * arith_const_10); 
                    double arith_addf_184 = (arith_mulf_176 + arith_mulf_183); 
                    int arith_addi_185 = (arith_addi_167 + arith_const_13); 
                    double memref_load_186 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_185]; 
                    double arith_subf_187 = (memref_load_186 - arith_mulf_171); 
                    int arith_addi_188 = (arith_addi_167 + arith_const_5); 
                    double memref_load_189 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_188]; 
                    double arith_addf_190 = (arith_subf_187 + memref_load_189); 
                    double arith_mulf_191 = (arith_addf_190 * arith_const_10); 
                    double arith_addf_192 = (arith_addf_184 + arith_mulf_191); 
                    double arith_addf_193 = (arith_addf_192 + memref_load_170); 
                    func_arg_2[arith_addi_154][arith_addi_160][arith_addi_167] = arith_addf_193; 
                    int arith_addi_194 = (arith_addi_167 + arith_const_13); 
                    int arith_addi_195 = (arith_addi_154 + arith_const_13); 
                    double memref_load_196 = func_arg_3[arith_addi_195][arith_addi_160][arith_addi_194]; 
                    double memref_load_197 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_194]; 
                    double arith_mulf_198 = (memref_load_197 * arith_const_9); 
                    double arith_subf_199 = (memref_load_196 - arith_mulf_198); 
                    int arith_addi_200 = (arith_addi_154 + arith_const_5); 
                    double memref_load_201 = func_arg_3[arith_addi_200][arith_addi_160][arith_addi_194]; 
                    double arith_addf_202 = (arith_subf_199 + memref_load_201); 
                    double arith_mulf_203 = (arith_addf_202 * arith_const_10); 
                    int arith_addi_204 = (arith_addi_160 + arith_const_13); 
                    double memref_load_205 = func_arg_3[arith_addi_154][arith_addi_204][arith_addi_194]; 
                    double arith_subf_206 = (memref_load_205 - arith_mulf_198); 
                    int arith_addi_207 = (arith_addi_160 + arith_const_5); 
                    double memref_load_208 = func_arg_3[arith_addi_154][arith_addi_207][arith_addi_194]; 
                    double arith_addf_209 = (arith_subf_206 + memref_load_208); 
                    double arith_mulf_210 = (arith_addf_209 * arith_const_10); 
                    double arith_addf_211 = (arith_mulf_203 + arith_mulf_210); 
                    int arith_addi_212 = (arith_addi_194 + arith_const_13); 
                    double memref_load_213 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_212]; 
                    double arith_subf_214 = (memref_load_213 - arith_mulf_198); 
                    int arith_addi_215 = (arith_addi_194 + arith_const_5); 
                    double memref_load_216 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_215]; 
                    double arith_addf_217 = (arith_subf_214 + memref_load_216); 
                    double arith_mulf_218 = (arith_addf_217 * arith_const_10); 
                    double arith_addf_219 = (arith_addf_211 + arith_mulf_218); 
                    double arith_addf_220 = (arith_addf_219 + memref_load_197); 
                    func_arg_2[arith_addi_154][arith_addi_160][arith_addi_194] = arith_addf_220; 
                    int arith_addi_221 = (arith_addi_167 + arith_const_7); 
                    int arith_addi_222 = (arith_addi_154 + arith_const_13); 
                    double memref_load_223 = func_arg_3[arith_addi_222][arith_addi_160][arith_addi_221]; 
                    double memref_load_224 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_221]; 
                    double arith_mulf_225 = (memref_load_224 * arith_const_9); 
                    double arith_subf_226 = (memref_load_223 - arith_mulf_225); 
                    int arith_addi_227 = (arith_addi_154 + arith_const_5); 
                    double memref_load_228 = func_arg_3[arith_addi_227][arith_addi_160][arith_addi_221]; 
                    double arith_addf_229 = (arith_subf_226 + memref_load_228); 
                    double arith_mulf_230 = (arith_addf_229 * arith_const_10); 
                    int arith_addi_231 = (arith_addi_160 + arith_const_13); 
                    double memref_load_232 = func_arg_3[arith_addi_154][arith_addi_231][arith_addi_221]; 
                    double arith_subf_233 = (memref_load_232 - arith_mulf_225); 
                    int arith_addi_234 = (arith_addi_160 + arith_const_5); 
                    double memref_load_235 = func_arg_3[arith_addi_154][arith_addi_234][arith_addi_221]; 
                    double arith_addf_236 = (arith_subf_233 + memref_load_235); 
                    double arith_mulf_237 = (arith_addf_236 * arith_const_10); 
                    double arith_addf_238 = (arith_mulf_230 + arith_mulf_237); 
                    int arith_addi_239 = (arith_addi_221 + arith_const_13); 
                    double memref_load_240 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_239]; 
                    double arith_subf_241 = (memref_load_240 - arith_mulf_225); 
                    int arith_addi_242 = (arith_addi_221 + arith_const_5); 
                    double memref_load_243 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_242]; 
                    double arith_addf_244 = (arith_subf_241 + memref_load_243); 
                    double arith_mulf_245 = (arith_addf_244 * arith_const_10); 
                    double arith_addf_246 = (arith_addf_238 + arith_mulf_245); 
                    double arith_addf_247 = (arith_addf_246 + memref_load_224); 
                    func_arg_2[arith_addi_154][arith_addi_160][arith_addi_221] = arith_addf_247; 
                    int arith_addi_248 = (arith_addi_167 + arith_const_4); 
                    int arith_addi_249 = (arith_addi_154 + arith_const_13); 
                    double memref_load_250 = func_arg_3[arith_addi_249][arith_addi_160][arith_addi_248]; 
                    double memref_load_251 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_248]; 
                    double arith_mulf_252 = (memref_load_251 * arith_const_9); 
                    double arith_subf_253 = (memref_load_250 - arith_mulf_252); 
                    int arith_addi_254 = (arith_addi_154 + arith_const_5); 
                    double memref_load_255 = func_arg_3[arith_addi_254][arith_addi_160][arith_addi_248]; 
                    double arith_addf_256 = (arith_subf_253 + memref_load_255); 
                    double arith_mulf_257 = (arith_addf_256 * arith_const_10); 
                    int arith_addi_258 = (arith_addi_160 + arith_const_13); 
                    double memref_load_259 = func_arg_3[arith_addi_154][arith_addi_258][arith_addi_248]; 
                    double arith_subf_260 = (memref_load_259 - arith_mulf_252); 
                    int arith_addi_261 = (arith_addi_160 + arith_const_5); 
                    double memref_load_262 = func_arg_3[arith_addi_154][arith_addi_261][arith_addi_248]; 
                    double arith_addf_263 = (arith_subf_260 + memref_load_262); 
                    double arith_mulf_264 = (arith_addf_263 * arith_const_10); 
                    double arith_addf_265 = (arith_mulf_257 + arith_mulf_264); 
                    int arith_addi_266 = (arith_addi_248 + arith_const_13); 
                    double memref_load_267 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_266]; 
                    double arith_subf_268 = (memref_load_267 - arith_mulf_252); 
                    int arith_addi_269 = (arith_addi_248 + arith_const_5); 
                    double memref_load_270 = func_arg_3[arith_addi_154][arith_addi_160][arith_addi_269]; 
                    double arith_addf_271 = (arith_subf_268 + memref_load_270); 
                    double arith_mulf_272 = (arith_addf_271 * arith_const_10); 
                    double arith_addf_273 = (arith_addf_265 + arith_mulf_272); 
                    double arith_addf_274 = (arith_addf_273 + memref_load_251); 
                    func_arg_2[arith_addi_154][arith_addi_160][arith_addi_248] = arith_addf_274; 
                    PAST_SET_SEMAPHORE(execute_token_165, PAST_TASK_FINISHED); 
                  }
                  async_group_161[async_group_index_162] = execute_token_165; 
                  async_group_index_162++; 
                  int arith_addi_275 = (for_iter_arg_164 + arith_const_13); 
                  for_iter_arg_164 = arith_addi_275; 
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_161, async_group_index_162, PAST_TASK_FINISHED); 
                PAST_SET_SEMAPHORE(execute_token_159, PAST_TASK_FINISHED); 
              }
              async_group_155[async_group_index_156] = execute_token_159; 
              async_group_index_156++; 
              int arith_addi_276 = (for_iter_arg_158 + arith_const_13); 
              for_iter_arg_158 = arith_addi_276; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_155, async_group_index_156, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_153, PAST_TASK_FINISHED); 
          }
          async_group_149[async_group_index_150] = execute_token_153; 
          async_group_index_150++; 
          int arith_addi_277 = (for_iter_arg_152 + arith_const_13); 
          for_iter_arg_152 = arith_addi_277; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_149, async_group_index_150, PAST_TASK_FINISHED); 
        PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
      }
      async_group_15[async_group_index_16] = execute_token_19; 
      async_group_index_16++; 
      int arith_addi_278 = (for_iter_arg_18 + arith_const_13); 
      for_iter_arg_18 = arith_addi_278; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_heat_3d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
