#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 2; 
  int arith_const_8 = 8; 
  int arith_const_9 = 20; 
  double arith_const_10 = 0.125000; 
  double arith_const_11 = 2.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 1; 
  int* async_group_14; 
  int async_group_index_15 = 0; 
  int for_iter_arg_17 = arith_const_12; 
  for (int for_iter_16 = arith_const_12; for_iter_16 < arith_const_13; for_iter_16 += arith_const_13) {
    PAST_NEW_SEMAPHORE(execute_token_18); 
    #pragma peqc async_execute
    {
      for (int for_iter_19 = arith_const_12; for_iter_19 < arith_const_9; for_iter_19 += arith_const_13) {
        for (int for_iter_20 = arith_const_12; for_iter_20 < arith_const_8; for_iter_20 += arith_const_13) {
          int arith_addi_21 = (for_iter_20 + arith_const_13); 
          for (int for_iter_22 = arith_const_12; for_iter_22 < arith_const_7; for_iter_22 += arith_const_13) {
            int arith_muli_23 = (for_iter_22 * arith_const_6); 
            int arith_addi_24 = (arith_muli_23 + arith_const_13); 
            for (int for_iter_25 = arith_const_12; for_iter_25 < arith_const_8; for_iter_25 += arith_const_13) {
              int arith_addi_26 = (for_iter_25 + arith_const_13); 
              int arith_addi_27 = (arith_addi_26 + arith_const_13); 
              double memref_load_28 = func_arg_2[arith_addi_27][arith_addi_21][arith_addi_24]; 
              double memref_load_29 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_24]; 
              double arith_mulf_30 = (memref_load_29 * arith_const_11); 
              double arith_subf_31 = (memref_load_28 - arith_mulf_30); 
              int arith_addi_32 = (arith_addi_26 + arith_const_5); 
              double memref_load_33 = func_arg_2[arith_addi_32][arith_addi_21][arith_addi_24]; 
              double arith_addf_34 = (arith_subf_31 + memref_load_33); 
              double arith_mulf_35 = (arith_addf_34 * arith_const_10); 
              int arith_addi_36 = (arith_addi_21 + arith_const_13); 
              double memref_load_37 = func_arg_2[arith_addi_26][arith_addi_36][arith_addi_24]; 
              double arith_subf_38 = (memref_load_37 - arith_mulf_30); 
              int arith_addi_39 = (arith_addi_21 + arith_const_5); 
              double memref_load_40 = func_arg_2[arith_addi_26][arith_addi_39][arith_addi_24]; 
              double arith_addf_41 = (arith_subf_38 + memref_load_40); 
              double arith_mulf_42 = (arith_addf_41 * arith_const_10); 
              double arith_addf_43 = (arith_mulf_35 + arith_mulf_42); 
              int arith_addi_44 = (arith_addi_24 + arith_const_13); 
              double memref_load_45 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_44]; 
              double arith_subf_46 = (memref_load_45 - arith_mulf_30); 
              int arith_addi_47 = (arith_addi_24 + arith_const_5); 
              double memref_load_48 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_47]; 
              double arith_addf_49 = (arith_subf_46 + memref_load_48); 
              double arith_mulf_50 = (arith_addf_49 * arith_const_10); 
              double arith_addf_51 = (arith_addf_43 + arith_mulf_50); 
              double arith_addf_52 = (arith_addf_51 + memref_load_29); 
              func_arg_3[arith_addi_26][arith_addi_21][arith_addi_24] = arith_addf_52; 
              int arith_addi_53 = (arith_addi_24 + arith_const_13); 
              int arith_addi_54 = (arith_addi_26 + arith_const_13); 
              double memref_load_55 = func_arg_2[arith_addi_54][arith_addi_21][arith_addi_53]; 
              double memref_load_56 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_53]; 
              double arith_mulf_57 = (memref_load_56 * arith_const_11); 
              double arith_subf_58 = (memref_load_55 - arith_mulf_57); 
              int arith_addi_59 = (arith_addi_26 + arith_const_5); 
              double memref_load_60 = func_arg_2[arith_addi_59][arith_addi_21][arith_addi_53]; 
              double arith_addf_61 = (arith_subf_58 + memref_load_60); 
              double arith_mulf_62 = (arith_addf_61 * arith_const_10); 
              int arith_addi_63 = (arith_addi_21 + arith_const_13); 
              double memref_load_64 = func_arg_2[arith_addi_26][arith_addi_63][arith_addi_53]; 
              double arith_subf_65 = (memref_load_64 - arith_mulf_57); 
              int arith_addi_66 = (arith_addi_21 + arith_const_5); 
              double memref_load_67 = func_arg_2[arith_addi_26][arith_addi_66][arith_addi_53]; 
              double arith_addf_68 = (arith_subf_65 + memref_load_67); 
              double arith_mulf_69 = (arith_addf_68 * arith_const_10); 
              double arith_addf_70 = (arith_mulf_62 + arith_mulf_69); 
              int arith_addi_71 = (arith_addi_53 + arith_const_13); 
              double memref_load_72 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_71]; 
              double arith_subf_73 = (memref_load_72 - arith_mulf_57); 
              int arith_addi_74 = (arith_addi_53 + arith_const_5); 
              double memref_load_75 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_74]; 
              double arith_addf_76 = (arith_subf_73 + memref_load_75); 
              double arith_mulf_77 = (arith_addf_76 * arith_const_10); 
              double arith_addf_78 = (arith_addf_70 + arith_mulf_77); 
              double arith_addf_79 = (arith_addf_78 + memref_load_56); 
              func_arg_3[arith_addi_26][arith_addi_21][arith_addi_53] = arith_addf_79; 
              int arith_addi_80 = (arith_addi_24 + arith_const_7); 
              int arith_addi_81 = (arith_addi_26 + arith_const_13); 
              double memref_load_82 = func_arg_2[arith_addi_81][arith_addi_21][arith_addi_80]; 
              double memref_load_83 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_80]; 
              double arith_mulf_84 = (memref_load_83 * arith_const_11); 
              double arith_subf_85 = (memref_load_82 - arith_mulf_84); 
              int arith_addi_86 = (arith_addi_26 + arith_const_5); 
              double memref_load_87 = func_arg_2[arith_addi_86][arith_addi_21][arith_addi_80]; 
              double arith_addf_88 = (arith_subf_85 + memref_load_87); 
              double arith_mulf_89 = (arith_addf_88 * arith_const_10); 
              int arith_addi_90 = (arith_addi_21 + arith_const_13); 
              double memref_load_91 = func_arg_2[arith_addi_26][arith_addi_90][arith_addi_80]; 
              double arith_subf_92 = (memref_load_91 - arith_mulf_84); 
              int arith_addi_93 = (arith_addi_21 + arith_const_5); 
              double memref_load_94 = func_arg_2[arith_addi_26][arith_addi_93][arith_addi_80]; 
              double arith_addf_95 = (arith_subf_92 + memref_load_94); 
              double arith_mulf_96 = (arith_addf_95 * arith_const_10); 
              double arith_addf_97 = (arith_mulf_89 + arith_mulf_96); 
              int arith_addi_98 = (arith_addi_80 + arith_const_13); 
              double memref_load_99 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_98]; 
              double arith_subf_100 = (memref_load_99 - arith_mulf_84); 
              int arith_addi_101 = (arith_addi_80 + arith_const_5); 
              double memref_load_102 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_101]; 
              double arith_addf_103 = (arith_subf_100 + memref_load_102); 
              double arith_mulf_104 = (arith_addf_103 * arith_const_10); 
              double arith_addf_105 = (arith_addf_97 + arith_mulf_104); 
              double arith_addf_106 = (arith_addf_105 + memref_load_83); 
              func_arg_3[arith_addi_26][arith_addi_21][arith_addi_80] = arith_addf_106; 
              int arith_addi_107 = (arith_addi_24 + arith_const_4); 
              int arith_addi_108 = (arith_addi_26 + arith_const_13); 
              double memref_load_109 = func_arg_2[arith_addi_108][arith_addi_21][arith_addi_107]; 
              double memref_load_110 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_107]; 
              double arith_mulf_111 = (memref_load_110 * arith_const_11); 
              double arith_subf_112 = (memref_load_109 - arith_mulf_111); 
              int arith_addi_113 = (arith_addi_26 + arith_const_5); 
              double memref_load_114 = func_arg_2[arith_addi_113][arith_addi_21][arith_addi_107]; 
              double arith_addf_115 = (arith_subf_112 + memref_load_114); 
              double arith_mulf_116 = (arith_addf_115 * arith_const_10); 
              int arith_addi_117 = (arith_addi_21 + arith_const_13); 
              double memref_load_118 = func_arg_2[arith_addi_26][arith_addi_117][arith_addi_107]; 
              double arith_subf_119 = (memref_load_118 - arith_mulf_111); 
              int arith_addi_120 = (arith_addi_21 + arith_const_5); 
              double memref_load_121 = func_arg_2[arith_addi_26][arith_addi_120][arith_addi_107]; 
              double arith_addf_122 = (arith_subf_119 + memref_load_121); 
              double arith_mulf_123 = (arith_addf_122 * arith_const_10); 
              double arith_addf_124 = (arith_mulf_116 + arith_mulf_123); 
              int arith_addi_125 = (arith_addi_107 + arith_const_13); 
              double memref_load_126 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_125]; 
              double arith_subf_127 = (memref_load_126 - arith_mulf_111); 
              int arith_addi_128 = (arith_addi_107 + arith_const_5); 
              double memref_load_129 = func_arg_2[arith_addi_26][arith_addi_21][arith_addi_128]; 
              double arith_addf_130 = (arith_subf_127 + memref_load_129); 
              double arith_mulf_131 = (arith_addf_130 * arith_const_10); 
              double arith_addf_132 = (arith_addf_124 + arith_mulf_131); 
              double arith_addf_133 = (arith_addf_132 + memref_load_110); 
              func_arg_3[arith_addi_26][arith_addi_21][arith_addi_107] = arith_addf_133; 
            }
          }
        }
        for (int for_iter_134 = arith_const_12; for_iter_134 < arith_const_8; for_iter_134 += arith_const_13) {
          int arith_addi_135 = (for_iter_134 + arith_const_13); 
          for (int for_iter_136 = arith_const_12; for_iter_136 < arith_const_7; for_iter_136 += arith_const_13) {
            int arith_muli_137 = (for_iter_136 * arith_const_6); 
            int arith_addi_138 = (arith_muli_137 + arith_const_13); 
            for (int for_iter_139 = arith_const_12; for_iter_139 < arith_const_8; for_iter_139 += arith_const_13) {
              int arith_addi_140 = (for_iter_139 + arith_const_13); 
              int arith_addi_141 = (arith_addi_140 + arith_const_13); 
              double memref_load_142 = func_arg_3[arith_addi_141][arith_addi_135][arith_addi_138]; 
              double memref_load_143 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_138]; 
              double arith_mulf_144 = (memref_load_143 * arith_const_11); 
              double arith_subf_145 = (memref_load_142 - arith_mulf_144); 
              int arith_addi_146 = (arith_addi_140 + arith_const_5); 
              double memref_load_147 = func_arg_3[arith_addi_146][arith_addi_135][arith_addi_138]; 
              double arith_addf_148 = (arith_subf_145 + memref_load_147); 
              double arith_mulf_149 = (arith_addf_148 * arith_const_10); 
              int arith_addi_150 = (arith_addi_135 + arith_const_13); 
              double memref_load_151 = func_arg_3[arith_addi_140][arith_addi_150][arith_addi_138]; 
              double arith_subf_152 = (memref_load_151 - arith_mulf_144); 
              int arith_addi_153 = (arith_addi_135 + arith_const_5); 
              double memref_load_154 = func_arg_3[arith_addi_140][arith_addi_153][arith_addi_138]; 
              double arith_addf_155 = (arith_subf_152 + memref_load_154); 
              double arith_mulf_156 = (arith_addf_155 * arith_const_10); 
              double arith_addf_157 = (arith_mulf_149 + arith_mulf_156); 
              int arith_addi_158 = (arith_addi_138 + arith_const_13); 
              double memref_load_159 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_158]; 
              double arith_subf_160 = (memref_load_159 - arith_mulf_144); 
              int arith_addi_161 = (arith_addi_138 + arith_const_5); 
              double memref_load_162 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_161]; 
              double arith_addf_163 = (arith_subf_160 + memref_load_162); 
              double arith_mulf_164 = (arith_addf_163 * arith_const_10); 
              double arith_addf_165 = (arith_addf_157 + arith_mulf_164); 
              double arith_addf_166 = (arith_addf_165 + memref_load_143); 
              func_arg_2[arith_addi_140][arith_addi_135][arith_addi_138] = arith_addf_166; 
              int arith_addi_167 = (arith_addi_138 + arith_const_13); 
              int arith_addi_168 = (arith_addi_140 + arith_const_13); 
              double memref_load_169 = func_arg_3[arith_addi_168][arith_addi_135][arith_addi_167]; 
              double memref_load_170 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_167]; 
              double arith_mulf_171 = (memref_load_170 * arith_const_11); 
              double arith_subf_172 = (memref_load_169 - arith_mulf_171); 
              int arith_addi_173 = (arith_addi_140 + arith_const_5); 
              double memref_load_174 = func_arg_3[arith_addi_173][arith_addi_135][arith_addi_167]; 
              double arith_addf_175 = (arith_subf_172 + memref_load_174); 
              double arith_mulf_176 = (arith_addf_175 * arith_const_10); 
              int arith_addi_177 = (arith_addi_135 + arith_const_13); 
              double memref_load_178 = func_arg_3[arith_addi_140][arith_addi_177][arith_addi_167]; 
              double arith_subf_179 = (memref_load_178 - arith_mulf_171); 
              int arith_addi_180 = (arith_addi_135 + arith_const_5); 
              double memref_load_181 = func_arg_3[arith_addi_140][arith_addi_180][arith_addi_167]; 
              double arith_addf_182 = (arith_subf_179 + memref_load_181); 
              double arith_mulf_183 = (arith_addf_182 * arith_const_10); 
              double arith_addf_184 = (arith_mulf_176 + arith_mulf_183); 
              int arith_addi_185 = (arith_addi_167 + arith_const_13); 
              double memref_load_186 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_185]; 
              double arith_subf_187 = (memref_load_186 - arith_mulf_171); 
              int arith_addi_188 = (arith_addi_167 + arith_const_5); 
              double memref_load_189 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_188]; 
              double arith_addf_190 = (arith_subf_187 + memref_load_189); 
              double arith_mulf_191 = (arith_addf_190 * arith_const_10); 
              double arith_addf_192 = (arith_addf_184 + arith_mulf_191); 
              double arith_addf_193 = (arith_addf_192 + memref_load_170); 
              func_arg_2[arith_addi_140][arith_addi_135][arith_addi_167] = arith_addf_193; 
              int arith_addi_194 = (arith_addi_138 + arith_const_7); 
              int arith_addi_195 = (arith_addi_140 + arith_const_13); 
              double memref_load_196 = func_arg_3[arith_addi_195][arith_addi_135][arith_addi_194]; 
              double memref_load_197 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_194]; 
              double arith_mulf_198 = (memref_load_197 * arith_const_11); 
              double arith_subf_199 = (memref_load_196 - arith_mulf_198); 
              int arith_addi_200 = (arith_addi_140 + arith_const_5); 
              double memref_load_201 = func_arg_3[arith_addi_200][arith_addi_135][arith_addi_194]; 
              double arith_addf_202 = (arith_subf_199 + memref_load_201); 
              double arith_mulf_203 = (arith_addf_202 * arith_const_10); 
              int arith_addi_204 = (arith_addi_135 + arith_const_13); 
              double memref_load_205 = func_arg_3[arith_addi_140][arith_addi_204][arith_addi_194]; 
              double arith_subf_206 = (memref_load_205 - arith_mulf_198); 
              int arith_addi_207 = (arith_addi_135 + arith_const_5); 
              double memref_load_208 = func_arg_3[arith_addi_140][arith_addi_207][arith_addi_194]; 
              double arith_addf_209 = (arith_subf_206 + memref_load_208); 
              double arith_mulf_210 = (arith_addf_209 * arith_const_10); 
              double arith_addf_211 = (arith_mulf_203 + arith_mulf_210); 
              int arith_addi_212 = (arith_addi_194 + arith_const_13); 
              double memref_load_213 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_212]; 
              double arith_subf_214 = (memref_load_213 - arith_mulf_198); 
              int arith_addi_215 = (arith_addi_194 + arith_const_5); 
              double memref_load_216 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_215]; 
              double arith_addf_217 = (arith_subf_214 + memref_load_216); 
              double arith_mulf_218 = (arith_addf_217 * arith_const_10); 
              double arith_addf_219 = (arith_addf_211 + arith_mulf_218); 
              double arith_addf_220 = (arith_addf_219 + memref_load_197); 
              func_arg_2[arith_addi_140][arith_addi_135][arith_addi_194] = arith_addf_220; 
              int arith_addi_221 = (arith_addi_138 + arith_const_4); 
              int arith_addi_222 = (arith_addi_140 + arith_const_13); 
              double memref_load_223 = func_arg_3[arith_addi_222][arith_addi_135][arith_addi_221]; 
              double memref_load_224 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_221]; 
              double arith_mulf_225 = (memref_load_224 * arith_const_11); 
              double arith_subf_226 = (memref_load_223 - arith_mulf_225); 
              int arith_addi_227 = (arith_addi_140 + arith_const_5); 
              double memref_load_228 = func_arg_3[arith_addi_227][arith_addi_135][arith_addi_221]; 
              double arith_addf_229 = (arith_subf_226 + memref_load_228); 
              double arith_mulf_230 = (arith_addf_229 * arith_const_10); 
              int arith_addi_231 = (arith_addi_135 + arith_const_13); 
              double memref_load_232 = func_arg_3[arith_addi_140][arith_addi_231][arith_addi_221]; 
              double arith_subf_233 = (memref_load_232 - arith_mulf_225); 
              int arith_addi_234 = (arith_addi_135 + arith_const_5); 
              double memref_load_235 = func_arg_3[arith_addi_140][arith_addi_234][arith_addi_221]; 
              double arith_addf_236 = (arith_subf_233 + memref_load_235); 
              double arith_mulf_237 = (arith_addf_236 * arith_const_10); 
              double arith_addf_238 = (arith_mulf_230 + arith_mulf_237); 
              int arith_addi_239 = (arith_addi_221 + arith_const_13); 
              double memref_load_240 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_239]; 
              double arith_subf_241 = (memref_load_240 - arith_mulf_225); 
              int arith_addi_242 = (arith_addi_221 + arith_const_5); 
              double memref_load_243 = func_arg_3[arith_addi_140][arith_addi_135][arith_addi_242]; 
              double arith_addf_244 = (arith_subf_241 + memref_load_243); 
              double arith_mulf_245 = (arith_addf_244 * arith_const_10); 
              double arith_addf_246 = (arith_addf_238 + arith_mulf_245); 
              double arith_addf_247 = (arith_addf_246 + memref_load_224); 
              func_arg_2[arith_addi_140][arith_addi_135][arith_addi_221] = arith_addf_247; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
    }
    async_group_14[async_group_index_15] = execute_token_18; 
    async_group_index_15++; 
    int arith_addi_248 = (for_iter_arg_17 + arith_const_13); 
    for_iter_arg_17 = arith_addi_248; 
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
  kernel_heat_3d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
