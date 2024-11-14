#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 43; 
  int arith_const_8 = 14; 
  int arith_const_9 = 13; 
  int arith_const_10 = 7; 
  int arith_const_11 = 19; 
  int arith_const_12 = 31; 
  int arith_const_13 = -1; 
  int arith_const_14 = 30; 
  int arith_const_15 = 20; 
  int arith_const_16 = -29; 
  int arith_const_17 = 1024; 
  int arith_const_18 = 2; 
  int arith_const_19 = 32; 
  double arith_const_20 = 0.700000; 
  double arith_const_21 = 0.500000; 
  int arith_const_22 = 0; 
  int arith_const_23 = 1; 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_22; 
  for (int for_iter_26 = arith_const_22; for_iter_26 < arith_const_23; for_iter_26 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      for (int for_iter_29 = arith_const_22; for_iter_29 < arith_const_23; for_iter_29 += arith_const_23) {
        for (int for_iter_30 = arith_const_22; for_iter_30 < arith_const_18; for_iter_30 += arith_const_23) {
          for (int for_iter_31 = arith_const_22; for_iter_31 < arith_const_18; for_iter_31 += arith_const_23) {
            int arith_muli_32 = (for_iter_29 * arith_const_19); 
            int arith_addi_33 = (for_iter_31 + arith_muli_32); 
            int arith_cmpi_34 = (arith_addi_33 == arith_const_22); 
            if (arith_cmpi_34) {
              int arith_muli_35 = (for_iter_30 * arith_const_19); 
              int arith_muli_36 = (for_iter_26 * arith_const_17); 
              int arith_addi_37 = (arith_muli_35 + arith_muli_36); 
              int arith_addi_38 = (arith_addi_37 + arith_const_16); 
              int arith_maxsi_39 = max(arith_addi_38, arith_const_22); 
              for (int for_iter_40 = arith_maxsi_39; for_iter_40 < arith_const_15; for_iter_40 += arith_const_23) {
                int arith_muli_41 = (for_iter_26 * arith_const_19); 
                int arith_addi_42 = (for_iter_30 + arith_muli_41); 
                int arith_cmpi_43 = (arith_addi_42 == arith_const_22); 
                if (arith_cmpi_43) {
                  double memref_load_44 = func_arg_6[for_iter_40]; 
                  func_arg_4[arith_const_22][arith_const_22] = memref_load_44; 
                }
                double memref_load_45 = func_arg_6[for_iter_40]; 
                int arith_muli_46 = (for_iter_30 * arith_const_19); 
                int arith_muli_47 = (for_iter_26 * arith_const_17); 
                int arith_addi_48 = (arith_muli_46 + arith_muli_47); 
                int arith_addi_49 = (for_iter_40 + arith_const_23); 
                int arith_maxsi_50 = max(arith_addi_48, arith_addi_49); 
                int arith_muli_51 = (for_iter_30 * arith_const_19); 
                int arith_muli_52 = (for_iter_26 * arith_const_17); 
                int arith_addi_53 = (arith_muli_51 + arith_muli_52); 
                int arith_addi_54 = (arith_addi_53 + arith_const_19); 
                int arith_addi_55 = (for_iter_40 + arith_const_14); 
                int arith_minsi_56 = min(arith_addi_54, arith_addi_55); 
                for (int for_iter_57 = arith_maxsi_50; for_iter_57 < arith_minsi_56; for_iter_57 += arith_const_23) {
                  int arith_muli_58 = (for_iter_40 * arith_const_13); 
                  int arith_addi_59 = (arith_muli_58 + for_iter_57); 
                  func_arg_4[arith_const_22][arith_addi_59] = memref_load_45; 
                  int arith_muli_60 = (for_iter_40 * arith_const_13); 
                  int arith_addi_61 = (arith_muli_60 + for_iter_57); 
                  double memref_load_62 = func_arg_3[arith_const_22][arith_addi_61]; 
                  int arith_muli_63 = (for_iter_40 * arith_const_13); 
                  int arith_addi_64 = (arith_muli_63 + for_iter_57); 
                  double memref_load_65 = func_arg_5[arith_const_22][arith_addi_64]; 
                  int arith_muli_66 = (for_iter_40 * arith_const_13); 
                  int arith_addi_67 = (arith_muli_66 + for_iter_57); 
                  int arith_addi_68 = (arith_addi_67 + arith_const_13); 
                  double memref_load_69 = func_arg_5[arith_const_22][arith_addi_68]; 
                  double arith_subf_70 = (memref_load_65 - memref_load_69); 
                  double arith_mulf_71 = (arith_subf_70 * arith_const_21); 
                  double arith_subf_72 = (memref_load_62 - arith_mulf_71); 
                  int arith_muli_73 = (for_iter_40 * arith_const_13); 
                  int arith_addi_74 = (arith_muli_73 + for_iter_57); 
                  func_arg_3[arith_const_22][arith_addi_74] = arith_subf_72; 
                }
                int arith_muli_75 = (for_iter_40 * arith_const_13); 
                int arith_addi_76 = (arith_muli_75 + arith_const_12); 
                int arith_minsi_77 = min(arith_addi_76, arith_const_11); 
                for (int for_iter_78 = arith_const_22; for_iter_78 < arith_minsi_77; for_iter_78 += arith_const_23) {
                  int arith_addi_79 = (for_iter_40 + for_iter_78); 
                  int arith_addi_80 = (arith_addi_79 + arith_const_23); 
                  int arith_muli_81 = (for_iter_26 * arith_const_19); 
                  int arith_addi_82 = (for_iter_30 + arith_muli_81); 
                  int arith_cmpi_83 = (arith_addi_82 == arith_const_22); 
                  if (arith_cmpi_83) {
                    int arith_muli_84 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_85 = (arith_muli_84 + for_iter_40); 
                    double memref_load_86 = func_arg_4[arith_addi_85][arith_const_22]; 
                    int arith_muli_87 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_88 = (arith_muli_87 + for_iter_40); 
                    double memref_load_89 = func_arg_5[arith_addi_88][arith_const_22]; 
                    int arith_muli_90 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_91 = (arith_muli_90 + for_iter_40); 
                    int arith_addi_92 = (arith_addi_91 + arith_const_13); 
                    double memref_load_93 = func_arg_5[arith_addi_92][arith_const_22]; 
                    double arith_subf_94 = (memref_load_89 - memref_load_93); 
                    double arith_mulf_95 = (arith_subf_94 * arith_const_21); 
                    double arith_subf_96 = (memref_load_86 - arith_mulf_95); 
                    int arith_muli_97 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_98 = (arith_muli_97 + for_iter_40); 
                    func_arg_4[arith_addi_98][arith_const_22] = arith_subf_96; 
                  }
                  int arith_muli_99 = (for_iter_30 * arith_const_19); 
                  int arith_muli_100 = (for_iter_26 * arith_const_17); 
                  int arith_addi_101 = (arith_muli_99 + arith_muli_100); 
                  int arith_addi_102 = (for_iter_40 + arith_const_23); 
                  int arith_maxsi_103 = max(arith_addi_101, arith_addi_102); 
                  int arith_muli_104 = (for_iter_30 * arith_const_19); 
                  int arith_muli_105 = (for_iter_26 * arith_const_17); 
                  int arith_addi_106 = (arith_muli_104 + arith_muli_105); 
                  int arith_addi_107 = (arith_addi_106 + arith_const_19); 
                  int arith_addi_108 = (for_iter_40 + arith_const_14); 
                  int arith_minsi_109 = min(arith_addi_107, arith_addi_108); 
                  for (int for_iter_110 = arith_maxsi_103; for_iter_110 < arith_minsi_109; for_iter_110 += arith_const_23) {
                    int arith_muli_111 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_112 = (arith_muli_111 + for_iter_40); 
                    int arith_muli_113 = (for_iter_40 * arith_const_13); 
                    int arith_addi_114 = (arith_muli_113 + for_iter_110); 
                    double memref_load_115 = func_arg_4[arith_addi_112][arith_addi_114]; 
                    int arith_muli_116 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_117 = (arith_muli_116 + for_iter_40); 
                    int arith_muli_118 = (for_iter_40 * arith_const_13); 
                    int arith_addi_119 = (arith_muli_118 + for_iter_110); 
                    double memref_load_120 = func_arg_5[arith_addi_117][arith_addi_119]; 
                    int arith_muli_121 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_122 = (arith_muli_121 + for_iter_40); 
                    int arith_addi_123 = (arith_addi_122 + arith_const_13); 
                    int arith_muli_124 = (for_iter_40 * arith_const_13); 
                    int arith_addi_125 = (arith_muli_124 + for_iter_110); 
                    double memref_load_126 = func_arg_5[arith_addi_123][arith_addi_125]; 
                    double arith_subf_127 = (memref_load_120 - memref_load_126); 
                    double arith_mulf_128 = (arith_subf_127 * arith_const_21); 
                    double arith_subf_129 = (memref_load_115 - arith_mulf_128); 
                    int arith_muli_130 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_131 = (arith_muli_130 + for_iter_40); 
                    int arith_muli_132 = (for_iter_40 * arith_const_13); 
                    int arith_addi_133 = (arith_muli_132 + for_iter_110); 
                    func_arg_4[arith_addi_131][arith_addi_133] = arith_subf_129; 
                    int arith_muli_134 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_135 = (arith_muli_134 + for_iter_40); 
                    int arith_muli_136 = (for_iter_40 * arith_const_13); 
                    int arith_addi_137 = (arith_muli_136 + for_iter_110); 
                    double memref_load_138 = func_arg_3[arith_addi_135][arith_addi_137]; 
                    int arith_muli_139 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_140 = (arith_muli_139 + for_iter_40); 
                    int arith_muli_141 = (for_iter_40 * arith_const_13); 
                    int arith_addi_142 = (arith_muli_141 + for_iter_110); 
                    double memref_load_143 = func_arg_5[arith_addi_140][arith_addi_142]; 
                    int arith_muli_144 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_145 = (arith_muli_144 + for_iter_40); 
                    int arith_muli_146 = (for_iter_40 * arith_const_13); 
                    int arith_addi_147 = (arith_muli_146 + for_iter_110); 
                    int arith_addi_148 = (arith_addi_147 + arith_const_13); 
                    double memref_load_149 = func_arg_5[arith_addi_145][arith_addi_148]; 
                    double arith_subf_150 = (memref_load_143 - memref_load_149); 
                    double arith_mulf_151 = (arith_subf_150 * arith_const_21); 
                    double arith_subf_152 = (memref_load_138 - arith_mulf_151); 
                    int arith_muli_153 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_154 = (arith_muli_153 + for_iter_40); 
                    int arith_muli_155 = (for_iter_40 * arith_const_13); 
                    int arith_addi_156 = (arith_muli_155 + for_iter_110); 
                    func_arg_3[arith_addi_154][arith_addi_156] = arith_subf_152; 
                    int arith_muli_157 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_158 = (arith_muli_157 + for_iter_40); 
                    int arith_addi_159 = (arith_addi_158 + arith_const_13); 
                    int arith_muli_160 = (for_iter_40 * arith_const_13); 
                    int arith_addi_161 = (arith_muli_160 + for_iter_110); 
                    int arith_addi_162 = (arith_addi_161 + arith_const_13); 
                    double memref_load_163 = func_arg_5[arith_addi_159][arith_addi_162]; 
                    int arith_muli_164 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_165 = (arith_muli_164 + for_iter_40); 
                    int arith_addi_166 = (arith_addi_165 + arith_const_13); 
                    int arith_muli_167 = (for_iter_40 * arith_const_13); 
                    int arith_addi_168 = (arith_muli_167 + for_iter_110); 
                    double memref_load_169 = func_arg_3[arith_addi_166][arith_addi_168]; 
                    int arith_muli_170 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_171 = (arith_muli_170 + for_iter_40); 
                    int arith_addi_172 = (arith_addi_171 + arith_const_13); 
                    int arith_muli_173 = (for_iter_40 * arith_const_13); 
                    int arith_addi_174 = (arith_muli_173 + for_iter_110); 
                    int arith_addi_175 = (arith_addi_174 + arith_const_13); 
                    double memref_load_176 = func_arg_3[arith_addi_172][arith_addi_175]; 
                    double arith_subf_177 = (memref_load_169 - memref_load_176); 
                    int arith_muli_178 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_179 = (arith_muli_178 + for_iter_40); 
                    int arith_muli_180 = (for_iter_40 * arith_const_13); 
                    int arith_addi_181 = (arith_muli_180 + for_iter_110); 
                    int arith_addi_182 = (arith_addi_181 + arith_const_13); 
                    double memref_load_183 = func_arg_4[arith_addi_179][arith_addi_182]; 
                    double arith_addf_184 = (arith_subf_177 + memref_load_183); 
                    int arith_muli_185 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_186 = (arith_muli_185 + for_iter_40); 
                    int arith_addi_187 = (arith_addi_186 + arith_const_13); 
                    int arith_muli_188 = (for_iter_40 * arith_const_13); 
                    int arith_addi_189 = (arith_muli_188 + for_iter_110); 
                    int arith_addi_190 = (arith_addi_189 + arith_const_13); 
                    double memref_load_191 = func_arg_4[arith_addi_187][arith_addi_190]; 
                    double arith_subf_192 = (arith_addf_184 - memref_load_191); 
                    double arith_mulf_193 = (arith_subf_192 * arith_const_20); 
                    double arith_subf_194 = (memref_load_163 - arith_mulf_193); 
                    int arith_muli_195 = (arith_addi_80 * arith_const_13); 
                    int arith_addi_196 = (arith_muli_195 + for_iter_40); 
                    int arith_addi_197 = (arith_addi_196 + arith_const_13); 
                    int arith_muli_198 = (for_iter_40 * arith_const_13); 
                    int arith_addi_199 = (arith_muli_198 + for_iter_110); 
                    int arith_addi_200 = (arith_addi_199 + arith_const_13); 
                    func_arg_5[arith_addi_197][arith_addi_200] = arith_subf_194; 
                  }
                }
              }
            }
            int arith_muli_201 = (for_iter_29 * arith_const_19); 
            int arith_addi_202 = (for_iter_31 + arith_muli_201); 
            int arith_addi_203 = (arith_addi_202 + arith_const_13); 
            int arith_cmpi_204 = (arith_addi_203 == arith_const_22); 
            if (arith_cmpi_204) {
              for (int for_iter_205 = arith_const_22; for_iter_205 < arith_const_10; for_iter_205 += arith_const_23) {
                int arith_addi_206 = (for_iter_205 + arith_const_9); 
                int arith_addi_207 = (for_iter_205 + arith_const_23); 
                for (int for_iter_208 = arith_const_22; for_iter_208 < arith_addi_207; for_iter_208 += arith_const_23) {
                  int arith_addi_209 = (for_iter_208 + arith_const_19); 
                  int arith_muli_210 = (for_iter_26 * arith_const_19); 
                  int arith_addi_211 = (for_iter_30 + arith_muli_210); 
                  int arith_cmpi_212 = (arith_addi_211 == arith_const_22); 
                  if (arith_cmpi_212) {
                    int arith_muli_213 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_214 = (arith_muli_213 + arith_addi_206); 
                    double memref_load_215 = func_arg_4[arith_addi_214][arith_const_22]; 
                    int arith_muli_216 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_217 = (arith_muli_216 + arith_addi_206); 
                    double memref_load_218 = func_arg_5[arith_addi_217][arith_const_22]; 
                    int arith_muli_219 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_220 = (arith_muli_219 + arith_addi_206); 
                    int arith_addi_221 = (arith_addi_220 + arith_const_13); 
                    double memref_load_222 = func_arg_5[arith_addi_221][arith_const_22]; 
                    double arith_subf_223 = (memref_load_218 - memref_load_222); 
                    double arith_mulf_224 = (arith_subf_223 * arith_const_21); 
                    double arith_subf_225 = (memref_load_215 - arith_mulf_224); 
                    int arith_muli_226 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_227 = (arith_muli_226 + arith_addi_206); 
                    func_arg_4[arith_addi_227][arith_const_22] = arith_subf_225; 
                  }
                  int arith_muli_228 = (for_iter_30 * arith_const_19); 
                  int arith_muli_229 = (for_iter_26 * arith_const_17); 
                  int arith_addi_230 = (arith_muli_228 + arith_muli_229); 
                  int arith_addi_231 = (for_iter_205 + arith_const_8); 
                  int arith_maxsi_232 = max(arith_addi_230, arith_addi_231); 
                  int arith_muli_233 = (for_iter_30 * arith_const_19); 
                  int arith_muli_234 = (for_iter_26 * arith_const_17); 
                  int arith_addi_235 = (arith_muli_233 + arith_muli_234); 
                  int arith_addi_236 = (arith_addi_235 + arith_const_19); 
                  int arith_addi_237 = (for_iter_205 + arith_const_7); 
                  int arith_minsi_238 = min(arith_addi_236, arith_addi_237); 
                  for (int for_iter_239 = arith_maxsi_232; for_iter_239 < arith_minsi_238; for_iter_239 += arith_const_23) {
                    int arith_muli_240 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_241 = (arith_muli_240 + arith_addi_206); 
                    int arith_muli_242 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_243 = (arith_muli_242 + for_iter_239); 
                    double memref_load_244 = func_arg_4[arith_addi_241][arith_addi_243]; 
                    int arith_muli_245 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_246 = (arith_muli_245 + arith_addi_206); 
                    int arith_muli_247 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_248 = (arith_muli_247 + for_iter_239); 
                    double memref_load_249 = func_arg_5[arith_addi_246][arith_addi_248]; 
                    int arith_muli_250 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_251 = (arith_muli_250 + arith_addi_206); 
                    int arith_addi_252 = (arith_addi_251 + arith_const_13); 
                    int arith_muli_253 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_254 = (arith_muli_253 + for_iter_239); 
                    double memref_load_255 = func_arg_5[arith_addi_252][arith_addi_254]; 
                    double arith_subf_256 = (memref_load_249 - memref_load_255); 
                    double arith_mulf_257 = (arith_subf_256 * arith_const_21); 
                    double arith_subf_258 = (memref_load_244 - arith_mulf_257); 
                    int arith_muli_259 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_260 = (arith_muli_259 + arith_addi_206); 
                    int arith_muli_261 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_262 = (arith_muli_261 + for_iter_239); 
                    func_arg_4[arith_addi_260][arith_addi_262] = arith_subf_258; 
                    int arith_muli_263 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_264 = (arith_muli_263 + arith_addi_206); 
                    int arith_muli_265 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_266 = (arith_muli_265 + for_iter_239); 
                    double memref_load_267 = func_arg_3[arith_addi_264][arith_addi_266]; 
                    int arith_muli_268 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_269 = (arith_muli_268 + arith_addi_206); 
                    int arith_muli_270 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_271 = (arith_muli_270 + for_iter_239); 
                    double memref_load_272 = func_arg_5[arith_addi_269][arith_addi_271]; 
                    int arith_muli_273 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_274 = (arith_muli_273 + arith_addi_206); 
                    int arith_muli_275 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_276 = (arith_muli_275 + for_iter_239); 
                    int arith_addi_277 = (arith_addi_276 + arith_const_13); 
                    double memref_load_278 = func_arg_5[arith_addi_274][arith_addi_277]; 
                    double arith_subf_279 = (memref_load_272 - memref_load_278); 
                    double arith_mulf_280 = (arith_subf_279 * arith_const_21); 
                    double arith_subf_281 = (memref_load_267 - arith_mulf_280); 
                    int arith_muli_282 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_283 = (arith_muli_282 + arith_addi_206); 
                    int arith_muli_284 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_285 = (arith_muli_284 + for_iter_239); 
                    func_arg_3[arith_addi_283][arith_addi_285] = arith_subf_281; 
                    int arith_muli_286 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_287 = (arith_muli_286 + arith_addi_206); 
                    int arith_addi_288 = (arith_addi_287 + arith_const_13); 
                    int arith_muli_289 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_290 = (arith_muli_289 + for_iter_239); 
                    int arith_addi_291 = (arith_addi_290 + arith_const_13); 
                    double memref_load_292 = func_arg_5[arith_addi_288][arith_addi_291]; 
                    int arith_muli_293 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_294 = (arith_muli_293 + arith_addi_206); 
                    int arith_addi_295 = (arith_addi_294 + arith_const_13); 
                    int arith_muli_296 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_297 = (arith_muli_296 + for_iter_239); 
                    double memref_load_298 = func_arg_3[arith_addi_295][arith_addi_297]; 
                    int arith_muli_299 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_300 = (arith_muli_299 + arith_addi_206); 
                    int arith_addi_301 = (arith_addi_300 + arith_const_13); 
                    int arith_muli_302 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_303 = (arith_muli_302 + for_iter_239); 
                    int arith_addi_304 = (arith_addi_303 + arith_const_13); 
                    double memref_load_305 = func_arg_3[arith_addi_301][arith_addi_304]; 
                    double arith_subf_306 = (memref_load_298 - memref_load_305); 
                    int arith_muli_307 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_308 = (arith_muli_307 + arith_addi_206); 
                    int arith_muli_309 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_310 = (arith_muli_309 + for_iter_239); 
                    int arith_addi_311 = (arith_addi_310 + arith_const_13); 
                    double memref_load_312 = func_arg_4[arith_addi_308][arith_addi_311]; 
                    double arith_addf_313 = (arith_subf_306 + memref_load_312); 
                    int arith_muli_314 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_315 = (arith_muli_314 + arith_addi_206); 
                    int arith_addi_316 = (arith_addi_315 + arith_const_13); 
                    int arith_muli_317 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_318 = (arith_muli_317 + for_iter_239); 
                    int arith_addi_319 = (arith_addi_318 + arith_const_13); 
                    double memref_load_320 = func_arg_4[arith_addi_316][arith_addi_319]; 
                    double arith_subf_321 = (arith_addf_313 - memref_load_320); 
                    double arith_mulf_322 = (arith_subf_321 * arith_const_20); 
                    double arith_subf_323 = (memref_load_292 - arith_mulf_322); 
                    int arith_muli_324 = (arith_addi_209 * arith_const_13); 
                    int arith_addi_325 = (arith_muli_324 + arith_addi_206); 
                    int arith_addi_326 = (arith_addi_325 + arith_const_13); 
                    int arith_muli_327 = (arith_addi_206 * arith_const_13); 
                    int arith_addi_328 = (arith_muli_327 + for_iter_239); 
                    int arith_addi_329 = (arith_addi_328 + arith_const_13); 
                    func_arg_5[arith_addi_326][arith_addi_329] = arith_subf_323; 
                  }
                }
              }
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_330 = (for_iter_arg_27 + arith_const_23); 
    for_iter_arg_27 = arith_addi_330; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
