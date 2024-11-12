#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 13; 
  int arith_const_8 = -1; 
  int arith_const_9 = 30; 
  int arith_const_10 = 20; 
  int arith_const_11 = -29; 
  int arith_const_12 = 32; 
  double arith_const_13 = 0.700000; 
  double arith_const_14 = 0.500000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 2; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_17) {
      int arith_cmpi_20 = (for_iter_19 == arith_const_15); 
      if (arith_cmpi_20) {
        int arith_muli_21 = (for_iter_18 * arith_const_12); 
        int arith_addi_22 = (arith_muli_21 + arith_const_11); 
        int arith_maxsi_23 = max(arith_addi_22, arith_const_15); 
        for (int for_iter_24 = arith_maxsi_23; for_iter_24 < arith_const_10; for_iter_24 += arith_const_17) {
          int arith_cmpi_25 = (for_iter_18 == arith_const_15); 
          if (arith_cmpi_25) {
            double memref_load_26 = func_arg_6[for_iter_24]; 
            func_arg_4[arith_const_15][arith_const_15] = memref_load_26; 
          }
          double memref_load_27 = func_arg_6[for_iter_24]; 
          int arith_muli_28 = (for_iter_18 * arith_const_12); 
          int arith_addi_29 = (for_iter_24 + arith_const_17); 
          int arith_maxsi_30 = max(arith_muli_28, arith_addi_29); 
          int arith_muli_31 = (for_iter_18 * arith_const_12); 
          int arith_addi_32 = (arith_muli_31 + arith_const_12); 
          int arith_addi_33 = (for_iter_24 + arith_const_9); 
          int arith_minsi_34 = min(arith_addi_32, arith_addi_33); 
          for (int for_iter_35 = arith_maxsi_30; for_iter_35 < arith_minsi_34; for_iter_35 += arith_const_17) {
            int arith_muli_36 = (for_iter_24 * arith_const_8); 
            int arith_addi_37 = (arith_muli_36 + for_iter_35); 
            func_arg_4[arith_const_15][arith_addi_37] = memref_load_27; 
            int arith_muli_38 = (for_iter_24 * arith_const_8); 
            int arith_addi_39 = (arith_muli_38 + for_iter_35); 
            double memref_load_40 = func_arg_3[arith_const_15][arith_addi_39]; 
            int arith_muli_41 = (for_iter_24 * arith_const_8); 
            int arith_addi_42 = (arith_muli_41 + for_iter_35); 
            double memref_load_43 = func_arg_5[arith_const_15][arith_addi_42]; 
            int arith_muli_44 = (for_iter_24 * arith_const_8); 
            int arith_addi_45 = (arith_muli_44 + for_iter_35); 
            int arith_addi_46 = (arith_addi_45 + arith_const_8); 
            double memref_load_47 = func_arg_5[arith_const_15][arith_addi_46]; 
            double arith_subf_48 = (memref_load_43 - memref_load_47); 
            double arith_mulf_49 = (arith_subf_48 * arith_const_14); 
            double arith_subf_50 = (memref_load_40 - arith_mulf_49); 
            int arith_muli_51 = (for_iter_24 * arith_const_8); 
            int arith_addi_52 = (arith_muli_51 + for_iter_35); 
            func_arg_3[arith_const_15][arith_addi_52] = arith_subf_50; 
          }
          int arith_addi_53 = (for_iter_24 + arith_const_17); 
          int arith_addi_54 = (for_iter_24 + arith_const_10); 
          int arith_minsi_55 = min(arith_addi_54, arith_const_12); 
          for (int for_iter_56 = arith_addi_53; for_iter_56 < arith_minsi_55; for_iter_56 += arith_const_17) {
            int arith_cmpi_57 = (for_iter_18 == arith_const_15); 
            if (arith_cmpi_57) {
              int arith_muli_58 = (for_iter_56 * arith_const_8); 
              int arith_addi_59 = (arith_muli_58 + for_iter_24); 
              double memref_load_60 = func_arg_4[arith_addi_59][arith_const_15]; 
              int arith_muli_61 = (for_iter_56 * arith_const_8); 
              int arith_addi_62 = (arith_muli_61 + for_iter_24); 
              double memref_load_63 = func_arg_5[arith_addi_62][arith_const_15]; 
              int arith_muli_64 = (for_iter_56 * arith_const_8); 
              int arith_addi_65 = (arith_muli_64 + for_iter_24); 
              int arith_addi_66 = (arith_addi_65 + arith_const_8); 
              double memref_load_67 = func_arg_5[arith_addi_66][arith_const_15]; 
              double arith_subf_68 = (memref_load_63 - memref_load_67); 
              double arith_mulf_69 = (arith_subf_68 * arith_const_14); 
              double arith_subf_70 = (memref_load_60 - arith_mulf_69); 
              int arith_muli_71 = (for_iter_56 * arith_const_8); 
              int arith_addi_72 = (arith_muli_71 + for_iter_24); 
              func_arg_4[arith_addi_72][arith_const_15] = arith_subf_70; 
            }
            int arith_muli_73 = (for_iter_18 * arith_const_12); 
            int arith_addi_74 = (for_iter_24 + arith_const_17); 
            int arith_maxsi_75 = max(arith_muli_73, arith_addi_74); 
            int arith_muli_76 = (for_iter_18 * arith_const_12); 
            int arith_addi_77 = (arith_muli_76 + arith_const_12); 
            int arith_addi_78 = (for_iter_24 + arith_const_9); 
            int arith_minsi_79 = min(arith_addi_77, arith_addi_78); 
            for (int for_iter_80 = arith_maxsi_75; for_iter_80 < arith_minsi_79; for_iter_80 += arith_const_17) {
              int arith_muli_81 = (for_iter_56 * arith_const_8); 
              int arith_addi_82 = (arith_muli_81 + for_iter_24); 
              int arith_muli_83 = (for_iter_24 * arith_const_8); 
              int arith_addi_84 = (arith_muli_83 + for_iter_80); 
              double memref_load_85 = func_arg_4[arith_addi_82][arith_addi_84]; 
              int arith_muli_86 = (for_iter_56 * arith_const_8); 
              int arith_addi_87 = (arith_muli_86 + for_iter_24); 
              int arith_muli_88 = (for_iter_24 * arith_const_8); 
              int arith_addi_89 = (arith_muli_88 + for_iter_80); 
              double memref_load_90 = func_arg_5[arith_addi_87][arith_addi_89]; 
              int arith_muli_91 = (for_iter_56 * arith_const_8); 
              int arith_addi_92 = (arith_muli_91 + for_iter_24); 
              int arith_addi_93 = (arith_addi_92 + arith_const_8); 
              int arith_muli_94 = (for_iter_24 * arith_const_8); 
              int arith_addi_95 = (arith_muli_94 + for_iter_80); 
              double memref_load_96 = func_arg_5[arith_addi_93][arith_addi_95]; 
              double arith_subf_97 = (memref_load_90 - memref_load_96); 
              double arith_mulf_98 = (arith_subf_97 * arith_const_14); 
              double arith_subf_99 = (memref_load_85 - arith_mulf_98); 
              int arith_muli_100 = (for_iter_56 * arith_const_8); 
              int arith_addi_101 = (arith_muli_100 + for_iter_24); 
              int arith_muli_102 = (for_iter_24 * arith_const_8); 
              int arith_addi_103 = (arith_muli_102 + for_iter_80); 
              func_arg_4[arith_addi_101][arith_addi_103] = arith_subf_99; 
              int arith_muli_104 = (for_iter_56 * arith_const_8); 
              int arith_addi_105 = (arith_muli_104 + for_iter_24); 
              int arith_muli_106 = (for_iter_24 * arith_const_8); 
              int arith_addi_107 = (arith_muli_106 + for_iter_80); 
              double memref_load_108 = func_arg_3[arith_addi_105][arith_addi_107]; 
              int arith_muli_109 = (for_iter_56 * arith_const_8); 
              int arith_addi_110 = (arith_muli_109 + for_iter_24); 
              int arith_muli_111 = (for_iter_24 * arith_const_8); 
              int arith_addi_112 = (arith_muli_111 + for_iter_80); 
              double memref_load_113 = func_arg_5[arith_addi_110][arith_addi_112]; 
              int arith_muli_114 = (for_iter_56 * arith_const_8); 
              int arith_addi_115 = (arith_muli_114 + for_iter_24); 
              int arith_muli_116 = (for_iter_24 * arith_const_8); 
              int arith_addi_117 = (arith_muli_116 + for_iter_80); 
              int arith_addi_118 = (arith_addi_117 + arith_const_8); 
              double memref_load_119 = func_arg_5[arith_addi_115][arith_addi_118]; 
              double arith_subf_120 = (memref_load_113 - memref_load_119); 
              double arith_mulf_121 = (arith_subf_120 * arith_const_14); 
              double arith_subf_122 = (memref_load_108 - arith_mulf_121); 
              int arith_muli_123 = (for_iter_56 * arith_const_8); 
              int arith_addi_124 = (arith_muli_123 + for_iter_24); 
              int arith_muli_125 = (for_iter_24 * arith_const_8); 
              int arith_addi_126 = (arith_muli_125 + for_iter_80); 
              func_arg_3[arith_addi_124][arith_addi_126] = arith_subf_122; 
              int arith_muli_127 = (for_iter_56 * arith_const_8); 
              int arith_addi_128 = (arith_muli_127 + for_iter_24); 
              int arith_addi_129 = (arith_addi_128 + arith_const_8); 
              int arith_muli_130 = (for_iter_24 * arith_const_8); 
              int arith_addi_131 = (arith_muli_130 + for_iter_80); 
              int arith_addi_132 = (arith_addi_131 + arith_const_8); 
              double memref_load_133 = func_arg_5[arith_addi_129][arith_addi_132]; 
              int arith_muli_134 = (for_iter_56 * arith_const_8); 
              int arith_addi_135 = (arith_muli_134 + for_iter_24); 
              int arith_addi_136 = (arith_addi_135 + arith_const_8); 
              int arith_muli_137 = (for_iter_24 * arith_const_8); 
              int arith_addi_138 = (arith_muli_137 + for_iter_80); 
              double memref_load_139 = func_arg_3[arith_addi_136][arith_addi_138]; 
              int arith_muli_140 = (for_iter_56 * arith_const_8); 
              int arith_addi_141 = (arith_muli_140 + for_iter_24); 
              int arith_addi_142 = (arith_addi_141 + arith_const_8); 
              int arith_muli_143 = (for_iter_24 * arith_const_8); 
              int arith_addi_144 = (arith_muli_143 + for_iter_80); 
              int arith_addi_145 = (arith_addi_144 + arith_const_8); 
              double memref_load_146 = func_arg_3[arith_addi_142][arith_addi_145]; 
              double arith_subf_147 = (memref_load_139 - memref_load_146); 
              int arith_muli_148 = (for_iter_56 * arith_const_8); 
              int arith_addi_149 = (arith_muli_148 + for_iter_24); 
              int arith_muli_150 = (for_iter_24 * arith_const_8); 
              int arith_addi_151 = (arith_muli_150 + for_iter_80); 
              int arith_addi_152 = (arith_addi_151 + arith_const_8); 
              double memref_load_153 = func_arg_4[arith_addi_149][arith_addi_152]; 
              double arith_addf_154 = (arith_subf_147 + memref_load_153); 
              int arith_muli_155 = (for_iter_56 * arith_const_8); 
              int arith_addi_156 = (arith_muli_155 + for_iter_24); 
              int arith_addi_157 = (arith_addi_156 + arith_const_8); 
              int arith_muli_158 = (for_iter_24 * arith_const_8); 
              int arith_addi_159 = (arith_muli_158 + for_iter_80); 
              int arith_addi_160 = (arith_addi_159 + arith_const_8); 
              double memref_load_161 = func_arg_4[arith_addi_157][arith_addi_160]; 
              double arith_subf_162 = (arith_addf_154 - memref_load_161); 
              double arith_mulf_163 = (arith_subf_162 * arith_const_13); 
              double arith_subf_164 = (memref_load_133 - arith_mulf_163); 
              int arith_muli_165 = (for_iter_56 * arith_const_8); 
              int arith_addi_166 = (arith_muli_165 + for_iter_24); 
              int arith_addi_167 = (arith_addi_166 + arith_const_8); 
              int arith_muli_168 = (for_iter_24 * arith_const_8); 
              int arith_addi_169 = (arith_muli_168 + for_iter_80); 
              int arith_addi_170 = (arith_addi_169 + arith_const_8); 
              func_arg_5[arith_addi_167][arith_addi_170] = arith_subf_164; 
            }
          }
        }
      }
      int arith_addi_171 = (for_iter_19 + arith_const_8); 
      int arith_cmpi_172 = (arith_addi_171 == arith_const_15); 
      if (arith_cmpi_172) {
        for (int for_iter_173 = arith_const_7; for_iter_173 < arith_const_10; for_iter_173 += arith_const_17) {
          int arith_addi_174 = (for_iter_173 + arith_const_10); 
          for (int for_iter_175 = arith_const_12; for_iter_175 < arith_addi_174; for_iter_175 += arith_const_17) {
            int arith_cmpi_176 = (for_iter_18 == arith_const_15); 
            if (arith_cmpi_176) {
              int arith_muli_177 = (for_iter_175 * arith_const_8); 
              int arith_addi_178 = (arith_muli_177 + for_iter_173); 
              double memref_load_179 = func_arg_4[arith_addi_178][arith_const_15]; 
              int arith_muli_180 = (for_iter_175 * arith_const_8); 
              int arith_addi_181 = (arith_muli_180 + for_iter_173); 
              double memref_load_182 = func_arg_5[arith_addi_181][arith_const_15]; 
              int arith_muli_183 = (for_iter_175 * arith_const_8); 
              int arith_addi_184 = (arith_muli_183 + for_iter_173); 
              int arith_addi_185 = (arith_addi_184 + arith_const_8); 
              double memref_load_186 = func_arg_5[arith_addi_185][arith_const_15]; 
              double arith_subf_187 = (memref_load_182 - memref_load_186); 
              double arith_mulf_188 = (arith_subf_187 * arith_const_14); 
              double arith_subf_189 = (memref_load_179 - arith_mulf_188); 
              int arith_muli_190 = (for_iter_175 * arith_const_8); 
              int arith_addi_191 = (arith_muli_190 + for_iter_173); 
              func_arg_4[arith_addi_191][arith_const_15] = arith_subf_189; 
            }
            int arith_muli_192 = (for_iter_18 * arith_const_12); 
            int arith_addi_193 = (for_iter_173 + arith_const_17); 
            int arith_maxsi_194 = max(arith_muli_192, arith_addi_193); 
            int arith_muli_195 = (for_iter_18 * arith_const_12); 
            int arith_addi_196 = (arith_muli_195 + arith_const_12); 
            int arith_addi_197 = (for_iter_173 + arith_const_9); 
            int arith_minsi_198 = min(arith_addi_196, arith_addi_197); 
            for (int for_iter_199 = arith_maxsi_194; for_iter_199 < arith_minsi_198; for_iter_199 += arith_const_17) {
              int arith_muli_200 = (for_iter_175 * arith_const_8); 
              int arith_addi_201 = (arith_muli_200 + for_iter_173); 
              int arith_muli_202 = (for_iter_173 * arith_const_8); 
              int arith_addi_203 = (arith_muli_202 + for_iter_199); 
              double memref_load_204 = func_arg_4[arith_addi_201][arith_addi_203]; 
              int arith_muli_205 = (for_iter_175 * arith_const_8); 
              int arith_addi_206 = (arith_muli_205 + for_iter_173); 
              int arith_muli_207 = (for_iter_173 * arith_const_8); 
              int arith_addi_208 = (arith_muli_207 + for_iter_199); 
              double memref_load_209 = func_arg_5[arith_addi_206][arith_addi_208]; 
              int arith_muli_210 = (for_iter_175 * arith_const_8); 
              int arith_addi_211 = (arith_muli_210 + for_iter_173); 
              int arith_addi_212 = (arith_addi_211 + arith_const_8); 
              int arith_muli_213 = (for_iter_173 * arith_const_8); 
              int arith_addi_214 = (arith_muli_213 + for_iter_199); 
              double memref_load_215 = func_arg_5[arith_addi_212][arith_addi_214]; 
              double arith_subf_216 = (memref_load_209 - memref_load_215); 
              double arith_mulf_217 = (arith_subf_216 * arith_const_14); 
              double arith_subf_218 = (memref_load_204 - arith_mulf_217); 
              int arith_muli_219 = (for_iter_175 * arith_const_8); 
              int arith_addi_220 = (arith_muli_219 + for_iter_173); 
              int arith_muli_221 = (for_iter_173 * arith_const_8); 
              int arith_addi_222 = (arith_muli_221 + for_iter_199); 
              func_arg_4[arith_addi_220][arith_addi_222] = arith_subf_218; 
              int arith_muli_223 = (for_iter_175 * arith_const_8); 
              int arith_addi_224 = (arith_muli_223 + for_iter_173); 
              int arith_muli_225 = (for_iter_173 * arith_const_8); 
              int arith_addi_226 = (arith_muli_225 + for_iter_199); 
              double memref_load_227 = func_arg_3[arith_addi_224][arith_addi_226]; 
              int arith_muli_228 = (for_iter_175 * arith_const_8); 
              int arith_addi_229 = (arith_muli_228 + for_iter_173); 
              int arith_muli_230 = (for_iter_173 * arith_const_8); 
              int arith_addi_231 = (arith_muli_230 + for_iter_199); 
              double memref_load_232 = func_arg_5[arith_addi_229][arith_addi_231]; 
              int arith_muli_233 = (for_iter_175 * arith_const_8); 
              int arith_addi_234 = (arith_muli_233 + for_iter_173); 
              int arith_muli_235 = (for_iter_173 * arith_const_8); 
              int arith_addi_236 = (arith_muli_235 + for_iter_199); 
              int arith_addi_237 = (arith_addi_236 + arith_const_8); 
              double memref_load_238 = func_arg_5[arith_addi_234][arith_addi_237]; 
              double arith_subf_239 = (memref_load_232 - memref_load_238); 
              double arith_mulf_240 = (arith_subf_239 * arith_const_14); 
              double arith_subf_241 = (memref_load_227 - arith_mulf_240); 
              int arith_muli_242 = (for_iter_175 * arith_const_8); 
              int arith_addi_243 = (arith_muli_242 + for_iter_173); 
              int arith_muli_244 = (for_iter_173 * arith_const_8); 
              int arith_addi_245 = (arith_muli_244 + for_iter_199); 
              func_arg_3[arith_addi_243][arith_addi_245] = arith_subf_241; 
              int arith_muli_246 = (for_iter_175 * arith_const_8); 
              int arith_addi_247 = (arith_muli_246 + for_iter_173); 
              int arith_addi_248 = (arith_addi_247 + arith_const_8); 
              int arith_muli_249 = (for_iter_173 * arith_const_8); 
              int arith_addi_250 = (arith_muli_249 + for_iter_199); 
              int arith_addi_251 = (arith_addi_250 + arith_const_8); 
              double memref_load_252 = func_arg_5[arith_addi_248][arith_addi_251]; 
              int arith_muli_253 = (for_iter_175 * arith_const_8); 
              int arith_addi_254 = (arith_muli_253 + for_iter_173); 
              int arith_addi_255 = (arith_addi_254 + arith_const_8); 
              int arith_muli_256 = (for_iter_173 * arith_const_8); 
              int arith_addi_257 = (arith_muli_256 + for_iter_199); 
              double memref_load_258 = func_arg_3[arith_addi_255][arith_addi_257]; 
              int arith_muli_259 = (for_iter_175 * arith_const_8); 
              int arith_addi_260 = (arith_muli_259 + for_iter_173); 
              int arith_addi_261 = (arith_addi_260 + arith_const_8); 
              int arith_muli_262 = (for_iter_173 * arith_const_8); 
              int arith_addi_263 = (arith_muli_262 + for_iter_199); 
              int arith_addi_264 = (arith_addi_263 + arith_const_8); 
              double memref_load_265 = func_arg_3[arith_addi_261][arith_addi_264]; 
              double arith_subf_266 = (memref_load_258 - memref_load_265); 
              int arith_muli_267 = (for_iter_175 * arith_const_8); 
              int arith_addi_268 = (arith_muli_267 + for_iter_173); 
              int arith_muli_269 = (for_iter_173 * arith_const_8); 
              int arith_addi_270 = (arith_muli_269 + for_iter_199); 
              int arith_addi_271 = (arith_addi_270 + arith_const_8); 
              double memref_load_272 = func_arg_4[arith_addi_268][arith_addi_271]; 
              double arith_addf_273 = (arith_subf_266 + memref_load_272); 
              int arith_muli_274 = (for_iter_175 * arith_const_8); 
              int arith_addi_275 = (arith_muli_274 + for_iter_173); 
              int arith_addi_276 = (arith_addi_275 + arith_const_8); 
              int arith_muli_277 = (for_iter_173 * arith_const_8); 
              int arith_addi_278 = (arith_muli_277 + for_iter_199); 
              int arith_addi_279 = (arith_addi_278 + arith_const_8); 
              double memref_load_280 = func_arg_4[arith_addi_276][arith_addi_279]; 
              double arith_subf_281 = (arith_addf_273 - memref_load_280); 
              double arith_mulf_282 = (arith_subf_281 * arith_const_13); 
              double arith_subf_283 = (memref_load_252 - arith_mulf_282); 
              int arith_muli_284 = (for_iter_175 * arith_const_8); 
              int arith_addi_285 = (arith_muli_284 + for_iter_173); 
              int arith_addi_286 = (arith_addi_285 + arith_const_8); 
              int arith_muli_287 = (for_iter_173 * arith_const_8); 
              int arith_addi_288 = (arith_muli_287 + for_iter_199); 
              int arith_addi_289 = (arith_addi_288 + arith_const_8); 
              func_arg_5[arith_addi_286][arith_addi_289] = arith_subf_283; 
            }
          }
        }
      }
    }
  }
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


  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);

}

#pragma pocc-region-end
