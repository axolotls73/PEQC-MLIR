#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -1; 
  int arith_const_8 = 19; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 7; 
  int arith_const_13 = 28; 
  int arith_const_14 = 29; 
  double arith_const_15 = 0.700000; 
  double arith_const_16 = 0.500000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 20; 
  int arith_const_19 = 1; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
    int* async_group_21; 
    int async_group_index_22 = 0; 
    int for_iter_arg_24 = arith_const_17; 
    for (int for_iter_23 = arith_const_17; for_iter_23 < arith_const_19; for_iter_23 += arith_const_19) {
      PAST_NEW_SEMAPHORE(execute_token_25); 
      #pragma peqc async_execute
      {
        int arith_addi_26 = (for_iter_20 + for_iter_23); 
        int* async_group_27; 
        int async_group_index_28 = 0; 
        int for_iter_arg_30 = arith_const_17; 
        for (int for_iter_29 = arith_const_17; for_iter_29 < arith_const_12; for_iter_29 += arith_const_19) {
          PAST_NEW_SEMAPHORE(execute_token_31); 
          #pragma peqc async_execute
          {
            int arith_muli_32 = (for_iter_29 * arith_const_11); 
            double memref_load_33 = func_arg_6[arith_addi_26]; 
            func_arg_4[arith_const_17][arith_muli_32] = memref_load_33; 
            int arith_addi_34 = (arith_muli_32 + arith_const_19); 
            double memref_load_35 = func_arg_6[arith_addi_26]; 
            func_arg_4[arith_const_17][arith_addi_34] = memref_load_35; 
            int arith_addi_36 = (arith_muli_32 + arith_const_10); 
            double memref_load_37 = func_arg_6[arith_addi_26]; 
            func_arg_4[arith_const_17][arith_addi_36] = memref_load_37; 
            int arith_addi_38 = (arith_muli_32 + arith_const_9); 
            double memref_load_39 = func_arg_6[arith_addi_26]; 
            func_arg_4[arith_const_17][arith_addi_38] = memref_load_39; 
            PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
          }
          async_group_27[async_group_index_28] = execute_token_31; 
          async_group_index_28++; 
          int arith_addi_40 = (for_iter_arg_30 + arith_const_19); 
          for_iter_arg_30 = arith_addi_40; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
        int* async_group_41; 
        int async_group_index_42 = 0; 
        int for_iter_arg_44 = arith_const_17; 
        for (int for_iter_43 = arith_const_17; for_iter_43 < arith_const_10; for_iter_43 += arith_const_19) {
          PAST_NEW_SEMAPHORE(execute_token_45); 
          #pragma peqc async_execute
          {
            int arith_addi_46 = (for_iter_43 + arith_const_13); 
            double memref_load_47 = func_arg_6[arith_addi_26]; 
            func_arg_4[arith_const_17][arith_addi_46] = memref_load_47; 
            PAST_SET_SEMAPHORE(execute_token_45, PAST_TASK_FINISHED); 
          }
          async_group_41[async_group_index_42] = execute_token_45; 
          async_group_index_42++; 
          int arith_addi_48 = (for_iter_arg_44 + arith_const_19); 
          for_iter_arg_44 = arith_addi_48; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_41, async_group_index_42, PAST_TASK_FINISHED); 
        int* async_group_49; 
        int async_group_index_50 = 0; 
        int for_iter_arg_52 = arith_const_17; 
        for (int for_iter_51 = arith_const_17; for_iter_51 < arith_const_8; for_iter_51 += arith_const_19) {
          PAST_NEW_SEMAPHORE(execute_token_53); 
          #pragma peqc async_execute
          {
            int arith_addi_54 = (for_iter_51 + arith_const_19); 
            int* async_group_55; 
            int async_group_index_56 = 0; 
            int for_iter_arg_58 = arith_const_17; 
            for (int for_iter_57 = arith_const_17; for_iter_57 < arith_const_12; for_iter_57 += arith_const_19) {
              PAST_NEW_SEMAPHORE(execute_token_59); 
              #pragma peqc async_execute
              {
                int arith_muli_60 = (for_iter_57 * arith_const_11); 
                double memref_load_61 = func_arg_4[arith_addi_54][arith_muli_60]; 
                double memref_load_62 = func_arg_5[arith_addi_54][arith_muli_60]; 
                int arith_addi_63 = (arith_addi_54 + arith_const_7); 
                double memref_load_64 = func_arg_5[arith_addi_63][arith_muli_60]; 
                double arith_subf_65 = (memref_load_62 - memref_load_64); 
                double arith_mulf_66 = (arith_subf_65 * arith_const_16); 
                double arith_subf_67 = (memref_load_61 - arith_mulf_66); 
                func_arg_4[arith_addi_54][arith_muli_60] = arith_subf_67; 
                int arith_addi_68 = (arith_muli_60 + arith_const_19); 
                double memref_load_69 = func_arg_4[arith_addi_54][arith_addi_68]; 
                double memref_load_70 = func_arg_5[arith_addi_54][arith_addi_68]; 
                int arith_addi_71 = (arith_addi_54 + arith_const_7); 
                double memref_load_72 = func_arg_5[arith_addi_71][arith_addi_68]; 
                double arith_subf_73 = (memref_load_70 - memref_load_72); 
                double arith_mulf_74 = (arith_subf_73 * arith_const_16); 
                double arith_subf_75 = (memref_load_69 - arith_mulf_74); 
                func_arg_4[arith_addi_54][arith_addi_68] = arith_subf_75; 
                int arith_addi_76 = (arith_muli_60 + arith_const_10); 
                double memref_load_77 = func_arg_4[arith_addi_54][arith_addi_76]; 
                double memref_load_78 = func_arg_5[arith_addi_54][arith_addi_76]; 
                int arith_addi_79 = (arith_addi_54 + arith_const_7); 
                double memref_load_80 = func_arg_5[arith_addi_79][arith_addi_76]; 
                double arith_subf_81 = (memref_load_78 - memref_load_80); 
                double arith_mulf_82 = (arith_subf_81 * arith_const_16); 
                double arith_subf_83 = (memref_load_77 - arith_mulf_82); 
                func_arg_4[arith_addi_54][arith_addi_76] = arith_subf_83; 
                int arith_addi_84 = (arith_muli_60 + arith_const_9); 
                double memref_load_85 = func_arg_4[arith_addi_54][arith_addi_84]; 
                double memref_load_86 = func_arg_5[arith_addi_54][arith_addi_84]; 
                int arith_addi_87 = (arith_addi_54 + arith_const_7); 
                double memref_load_88 = func_arg_5[arith_addi_87][arith_addi_84]; 
                double arith_subf_89 = (memref_load_86 - memref_load_88); 
                double arith_mulf_90 = (arith_subf_89 * arith_const_16); 
                double arith_subf_91 = (memref_load_85 - arith_mulf_90); 
                func_arg_4[arith_addi_54][arith_addi_84] = arith_subf_91; 
                PAST_SET_SEMAPHORE(execute_token_59, PAST_TASK_FINISHED); 
              }
              async_group_55[async_group_index_56] = execute_token_59; 
              async_group_index_56++; 
              int arith_addi_92 = (for_iter_arg_58 + arith_const_19); 
              for_iter_arg_58 = arith_addi_92; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_55, async_group_index_56, PAST_TASK_FINISHED); 
            int* async_group_93; 
            int async_group_index_94 = 0; 
            int for_iter_arg_96 = arith_const_17; 
            for (int for_iter_95 = arith_const_17; for_iter_95 < arith_const_10; for_iter_95 += arith_const_19) {
              PAST_NEW_SEMAPHORE(execute_token_97); 
              #pragma peqc async_execute
              {
                int arith_addi_98 = (for_iter_95 + arith_const_13); 
                double memref_load_99 = func_arg_4[arith_addi_54][arith_addi_98]; 
                double memref_load_100 = func_arg_5[arith_addi_54][arith_addi_98]; 
                int arith_addi_101 = (arith_addi_54 + arith_const_7); 
                double memref_load_102 = func_arg_5[arith_addi_101][arith_addi_98]; 
                double arith_subf_103 = (memref_load_100 - memref_load_102); 
                double arith_mulf_104 = (arith_subf_103 * arith_const_16); 
                double arith_subf_105 = (memref_load_99 - arith_mulf_104); 
                func_arg_4[arith_addi_54][arith_addi_98] = arith_subf_105; 
                PAST_SET_SEMAPHORE(execute_token_97, PAST_TASK_FINISHED); 
              }
              async_group_93[async_group_index_94] = execute_token_97; 
              async_group_index_94++; 
              int arith_addi_106 = (for_iter_arg_96 + arith_const_19); 
              for_iter_arg_96 = arith_addi_106; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_93, async_group_index_94, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_53, PAST_TASK_FINISHED); 
          }
          async_group_49[async_group_index_50] = execute_token_53; 
          async_group_index_50++; 
          int arith_addi_107 = (for_iter_arg_52 + arith_const_19); 
          for_iter_arg_52 = arith_addi_107; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_49, async_group_index_50, PAST_TASK_FINISHED); 
        int* async_group_108; 
        int async_group_index_109 = 0; 
        int for_iter_arg_111 = arith_const_17; 
        for (int for_iter_110 = arith_const_17; for_iter_110 < arith_const_18; for_iter_110 += arith_const_19) {
          PAST_NEW_SEMAPHORE(execute_token_112); 
          #pragma peqc async_execute
          {
            int* async_group_113; 
            int async_group_index_114 = 0; 
            int for_iter_arg_116 = arith_const_17; 
            for (int for_iter_115 = arith_const_17; for_iter_115 < arith_const_12; for_iter_115 += arith_const_19) {
              PAST_NEW_SEMAPHORE(execute_token_117); 
              #pragma peqc async_execute
              {
                int arith_muli_118 = (for_iter_115 * arith_const_11); 
                int arith_addi_119 = (arith_muli_118 + arith_const_19); 
                double memref_load_120 = func_arg_3[for_iter_110][arith_addi_119]; 
                double memref_load_121 = func_arg_5[for_iter_110][arith_addi_119]; 
                int arith_addi_122 = (arith_addi_119 + arith_const_7); 
                double memref_load_123 = func_arg_5[for_iter_110][arith_addi_122]; 
                double arith_subf_124 = (memref_load_121 - memref_load_123); 
                double arith_mulf_125 = (arith_subf_124 * arith_const_16); 
                double arith_subf_126 = (memref_load_120 - arith_mulf_125); 
                func_arg_3[for_iter_110][arith_addi_119] = arith_subf_126; 
                int arith_addi_127 = (arith_addi_119 + arith_const_19); 
                double memref_load_128 = func_arg_3[for_iter_110][arith_addi_127]; 
                double memref_load_129 = func_arg_5[for_iter_110][arith_addi_127]; 
                int arith_addi_130 = (arith_addi_127 + arith_const_7); 
                double memref_load_131 = func_arg_5[for_iter_110][arith_addi_130]; 
                double arith_subf_132 = (memref_load_129 - memref_load_131); 
                double arith_mulf_133 = (arith_subf_132 * arith_const_16); 
                double arith_subf_134 = (memref_load_128 - arith_mulf_133); 
                func_arg_3[for_iter_110][arith_addi_127] = arith_subf_134; 
                int arith_addi_135 = (arith_addi_119 + arith_const_10); 
                double memref_load_136 = func_arg_3[for_iter_110][arith_addi_135]; 
                double memref_load_137 = func_arg_5[for_iter_110][arith_addi_135]; 
                int arith_addi_138 = (arith_addi_135 + arith_const_7); 
                double memref_load_139 = func_arg_5[for_iter_110][arith_addi_138]; 
                double arith_subf_140 = (memref_load_137 - memref_load_139); 
                double arith_mulf_141 = (arith_subf_140 * arith_const_16); 
                double arith_subf_142 = (memref_load_136 - arith_mulf_141); 
                func_arg_3[for_iter_110][arith_addi_135] = arith_subf_142; 
                int arith_addi_143 = (arith_addi_119 + arith_const_9); 
                double memref_load_144 = func_arg_3[for_iter_110][arith_addi_143]; 
                double memref_load_145 = func_arg_5[for_iter_110][arith_addi_143]; 
                int arith_addi_146 = (arith_addi_143 + arith_const_7); 
                double memref_load_147 = func_arg_5[for_iter_110][arith_addi_146]; 
                double arith_subf_148 = (memref_load_145 - memref_load_147); 
                double arith_mulf_149 = (arith_subf_148 * arith_const_16); 
                double arith_subf_150 = (memref_load_144 - arith_mulf_149); 
                func_arg_3[for_iter_110][arith_addi_143] = arith_subf_150; 
                PAST_SET_SEMAPHORE(execute_token_117, PAST_TASK_FINISHED); 
              }
              async_group_113[async_group_index_114] = execute_token_117; 
              async_group_index_114++; 
              int arith_addi_151 = (for_iter_arg_116 + arith_const_19); 
              for_iter_arg_116 = arith_addi_151; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_113, async_group_index_114, PAST_TASK_FINISHED); 
            double memref_load_152 = func_arg_3[for_iter_110][arith_const_14]; 
            double memref_load_153 = func_arg_5[for_iter_110][arith_const_14]; 
            double memref_load_154 = func_arg_5[for_iter_110][arith_const_13]; 
            double arith_subf_155 = (memref_load_153 - memref_load_154); 
            double arith_mulf_156 = (arith_subf_155 * arith_const_16); 
            double arith_subf_157 = (memref_load_152 - arith_mulf_156); 
            func_arg_3[for_iter_110][arith_const_14] = arith_subf_157; 
            PAST_SET_SEMAPHORE(execute_token_112, PAST_TASK_FINISHED); 
          }
          async_group_108[async_group_index_109] = execute_token_112; 
          async_group_index_109++; 
          int arith_addi_158 = (for_iter_arg_111 + arith_const_19); 
          for_iter_arg_111 = arith_addi_158; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_108, async_group_index_109, PAST_TASK_FINISHED); 
        int* async_group_159; 
        int async_group_index_160 = 0; 
        int for_iter_arg_162 = arith_const_17; 
        for (int for_iter_161 = arith_const_17; for_iter_161 < arith_const_8; for_iter_161 += arith_const_19) {
          PAST_NEW_SEMAPHORE(execute_token_163); 
          #pragma peqc async_execute
          {
            int* async_group_164; 
            int async_group_index_165 = 0; 
            int for_iter_arg_167 = arith_const_17; 
            for (int for_iter_166 = arith_const_17; for_iter_166 < arith_const_12; for_iter_166 += arith_const_19) {
              PAST_NEW_SEMAPHORE(execute_token_168); 
              #pragma peqc async_execute
              {
                int arith_muli_169 = (for_iter_166 * arith_const_11); 
                double memref_load_170 = func_arg_5[for_iter_161][arith_muli_169]; 
                int arith_addi_171 = (arith_muli_169 + arith_const_19); 
                double memref_load_172 = func_arg_3[for_iter_161][arith_addi_171]; 
                double memref_load_173 = func_arg_3[for_iter_161][arith_muli_169]; 
                double arith_subf_174 = (memref_load_172 - memref_load_173); 
                int arith_addi_175 = (for_iter_161 + arith_const_19); 
                double memref_load_176 = func_arg_4[arith_addi_175][arith_muli_169]; 
                double arith_addf_177 = (arith_subf_174 + memref_load_176); 
                double memref_load_178 = func_arg_4[for_iter_161][arith_muli_169]; 
                double arith_subf_179 = (arith_addf_177 - memref_load_178); 
                double arith_mulf_180 = (arith_subf_179 * arith_const_15); 
                double arith_subf_181 = (memref_load_170 - arith_mulf_180); 
                func_arg_5[for_iter_161][arith_muli_169] = arith_subf_181; 
                int arith_addi_182 = (arith_muli_169 + arith_const_19); 
                double memref_load_183 = func_arg_5[for_iter_161][arith_addi_182]; 
                int arith_addi_184 = (arith_addi_182 + arith_const_19); 
                double memref_load_185 = func_arg_3[for_iter_161][arith_addi_184]; 
                double memref_load_186 = func_arg_3[for_iter_161][arith_addi_182]; 
                double arith_subf_187 = (memref_load_185 - memref_load_186); 
                int arith_addi_188 = (for_iter_161 + arith_const_19); 
                double memref_load_189 = func_arg_4[arith_addi_188][arith_addi_182]; 
                double arith_addf_190 = (arith_subf_187 + memref_load_189); 
                double memref_load_191 = func_arg_4[for_iter_161][arith_addi_182]; 
                double arith_subf_192 = (arith_addf_190 - memref_load_191); 
                double arith_mulf_193 = (arith_subf_192 * arith_const_15); 
                double arith_subf_194 = (memref_load_183 - arith_mulf_193); 
                func_arg_5[for_iter_161][arith_addi_182] = arith_subf_194; 
                int arith_addi_195 = (arith_muli_169 + arith_const_10); 
                double memref_load_196 = func_arg_5[for_iter_161][arith_addi_195]; 
                int arith_addi_197 = (arith_addi_195 + arith_const_19); 
                double memref_load_198 = func_arg_3[for_iter_161][arith_addi_197]; 
                double memref_load_199 = func_arg_3[for_iter_161][arith_addi_195]; 
                double arith_subf_200 = (memref_load_198 - memref_load_199); 
                int arith_addi_201 = (for_iter_161 + arith_const_19); 
                double memref_load_202 = func_arg_4[arith_addi_201][arith_addi_195]; 
                double arith_addf_203 = (arith_subf_200 + memref_load_202); 
                double memref_load_204 = func_arg_4[for_iter_161][arith_addi_195]; 
                double arith_subf_205 = (arith_addf_203 - memref_load_204); 
                double arith_mulf_206 = (arith_subf_205 * arith_const_15); 
                double arith_subf_207 = (memref_load_196 - arith_mulf_206); 
                func_arg_5[for_iter_161][arith_addi_195] = arith_subf_207; 
                int arith_addi_208 = (arith_muli_169 + arith_const_9); 
                double memref_load_209 = func_arg_5[for_iter_161][arith_addi_208]; 
                int arith_addi_210 = (arith_addi_208 + arith_const_19); 
                double memref_load_211 = func_arg_3[for_iter_161][arith_addi_210]; 
                double memref_load_212 = func_arg_3[for_iter_161][arith_addi_208]; 
                double arith_subf_213 = (memref_load_211 - memref_load_212); 
                int arith_addi_214 = (for_iter_161 + arith_const_19); 
                double memref_load_215 = func_arg_4[arith_addi_214][arith_addi_208]; 
                double arith_addf_216 = (arith_subf_213 + memref_load_215); 
                double memref_load_217 = func_arg_4[for_iter_161][arith_addi_208]; 
                double arith_subf_218 = (arith_addf_216 - memref_load_217); 
                double arith_mulf_219 = (arith_subf_218 * arith_const_15); 
                double arith_subf_220 = (memref_load_209 - arith_mulf_219); 
                func_arg_5[for_iter_161][arith_addi_208] = arith_subf_220; 
                PAST_SET_SEMAPHORE(execute_token_168, PAST_TASK_FINISHED); 
              }
              async_group_164[async_group_index_165] = execute_token_168; 
              async_group_index_165++; 
              int arith_addi_221 = (for_iter_arg_167 + arith_const_19); 
              for_iter_arg_167 = arith_addi_221; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_164, async_group_index_165, PAST_TASK_FINISHED); 
            double memref_load_222 = func_arg_5[for_iter_161][arith_const_13]; 
            double memref_load_223 = func_arg_3[for_iter_161][arith_const_14]; 
            double memref_load_224 = func_arg_3[for_iter_161][arith_const_13]; 
            double arith_subf_225 = (memref_load_223 - memref_load_224); 
            int arith_addi_226 = (for_iter_161 + arith_const_19); 
            double memref_load_227 = func_arg_4[arith_addi_226][arith_const_13]; 
            double arith_addf_228 = (arith_subf_225 + memref_load_227); 
            double memref_load_229 = func_arg_4[for_iter_161][arith_const_13]; 
            double arith_subf_230 = (arith_addf_228 - memref_load_229); 
            double arith_mulf_231 = (arith_subf_230 * arith_const_15); 
            double arith_subf_232 = (memref_load_222 - arith_mulf_231); 
            func_arg_5[for_iter_161][arith_const_13] = arith_subf_232; 
            PAST_SET_SEMAPHORE(execute_token_163, PAST_TASK_FINISHED); 
          }
          async_group_159[async_group_index_160] = execute_token_163; 
          async_group_index_160++; 
          int arith_addi_233 = (for_iter_arg_162 + arith_const_19); 
          for_iter_arg_162 = arith_addi_233; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_159, async_group_index_160, PAST_TASK_FINISHED); 
        PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
      }
      async_group_21[async_group_index_22] = execute_token_25; 
      async_group_index_22++; 
      int arith_addi_234 = (for_iter_arg_24 + arith_const_19); 
      for_iter_arg_24 = arith_addi_234; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tmax;
  int nx;
  int ny;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;

#pragma peqc async_execute
{
  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);
}
}

#pragma pocc-region-end
