#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = -14; 
  int arith_const_8 = -13; 
  int arith_const_9 = 43; 
  int arith_const_10 = 14; 
  int arith_const_11 = -20; 
  int arith_const_12 = -19; 
  int arith_const_13 = 7; 
  int arith_const_14 = -2; 
  int arith_const_15 = 19; 
  int arith_const_16 = 31; 
  int arith_const_17 = -1; 
  int arith_const_18 = 30; 
  int arith_const_19 = 20; 
  int arith_const_20 = -29; 
  int arith_const_21 = 1; 
  double arith_const_22 = 0.700000; 
  double arith_const_23 = 0.500000; 
  int arith_const_24 = 0; 
  int arith_const_25 = 2; 
  int arith_const_26 = 32; 
  for (int for_iter_27 = arith_const_24; for_iter_27 < arith_const_25; for_iter_27 += arith_const_26) {
    for (int for_iter_28 = arith_const_24; for_iter_28 < arith_const_25; for_iter_28 += arith_const_26) {
      int arith_addi_29 = (for_iter_27 + arith_const_25); 
      for (int for_iter_30 = for_iter_27; for_iter_30 < arith_addi_29; for_iter_30 += arith_const_21) {
        int arith_addi_31 = (for_iter_28 + arith_const_25); 
        for (int for_iter_32 = for_iter_28; for_iter_32 < arith_addi_31; for_iter_32 += arith_const_21) {
          int arith_cmpi_33 = (for_iter_32 == arith_const_24); 
          if (arith_cmpi_33) {
            int arith_muli_34 = (for_iter_30 * arith_const_26); 
            int arith_addi_35 = (arith_muli_34 + arith_const_20); 
            int arith_maxsi_36 = max(arith_addi_35, arith_const_24); 
            for (int for_iter_37 = arith_maxsi_36; for_iter_37 < arith_const_19; for_iter_37 += arith_const_21) {
              int arith_cmpi_38 = (for_iter_30 == arith_const_24); 
              if (arith_cmpi_38) {
                double memref_load_39 = func_arg_6[for_iter_37]; 
                func_arg_4[arith_const_24][arith_const_24] = memref_load_39; 
              }
              int arith_muli_40 = (for_iter_30 * arith_const_26); 
              int arith_addi_41 = (for_iter_37 + arith_const_21); 
              int arith_maxsi_42 = max(arith_muli_40, arith_addi_41); 
              int arith_muli_43 = (for_iter_30 * arith_const_26); 
              int arith_addi_44 = (arith_muli_43 + arith_const_26); 
              int arith_addi_45 = (for_iter_37 + arith_const_18); 
              int arith_minsi_46 = min(arith_addi_44, arith_addi_45); 
              for (int for_iter_47 = arith_maxsi_42; for_iter_47 < arith_minsi_46; for_iter_47 += arith_const_21) {
                double memref_load_48 = func_arg_6[for_iter_37]; 
                int arith_muli_49 = (for_iter_37 * arith_const_17); 
                int arith_addi_50 = (arith_muli_49 + for_iter_47); 
                func_arg_4[arith_const_24][arith_addi_50] = memref_load_48; 
                int arith_muli_51 = (for_iter_37 * arith_const_17); 
                int arith_addi_52 = (arith_muli_51 + for_iter_47); 
                double memref_load_53 = func_arg_3[arith_const_24][arith_addi_52]; 
                int arith_muli_54 = (for_iter_37 * arith_const_17); 
                int arith_addi_55 = (arith_muli_54 + for_iter_47); 
                double memref_load_56 = func_arg_5[arith_const_24][arith_addi_55]; 
                int arith_muli_57 = (for_iter_37 * arith_const_17); 
                int arith_addi_58 = (arith_muli_57 + for_iter_47); 
                int arith_addi_59 = (arith_addi_58 + arith_const_17); 
                double memref_load_60 = func_arg_5[arith_const_24][arith_addi_59]; 
                double arith_subf_61 = (memref_load_56 - memref_load_60); 
                double arith_mulf_62 = (arith_subf_61 * arith_const_23); 
                double arith_subf_63 = (memref_load_53 - arith_mulf_62); 
                int arith_muli_64 = (for_iter_37 * arith_const_17); 
                int arith_addi_65 = (arith_muli_64 + for_iter_47); 
                func_arg_3[arith_const_24][arith_addi_65] = arith_subf_63; 
              }
              int arith_muli_66 = (for_iter_37 * arith_const_17); 
              int arith_addi_67 = (arith_muli_66 + arith_const_16); 
              int arith_minsi_68 = min(arith_addi_67, arith_const_15); 
              for (int for_iter_69 = arith_const_24; for_iter_69 < arith_minsi_68; for_iter_69 += arith_const_21) {
                int arith_cmpi_70 = (for_iter_30 == arith_const_24); 
                if (arith_cmpi_70) {
                  int arith_muli_71 = (for_iter_69 * arith_const_17); 
                  int arith_addi_72 = (arith_muli_71 + arith_const_17); 
                  double memref_load_73 = func_arg_4[arith_addi_72][arith_const_24]; 
                  int arith_muli_74 = (for_iter_69 * arith_const_17); 
                  int arith_addi_75 = (arith_muli_74 + arith_const_17); 
                  double memref_load_76 = func_arg_5[arith_addi_75][arith_const_24]; 
                  int arith_muli_77 = (for_iter_69 * arith_const_17); 
                  int arith_addi_78 = (arith_muli_77 + arith_const_14); 
                  double memref_load_79 = func_arg_5[arith_addi_78][arith_const_24]; 
                  double arith_subf_80 = (memref_load_76 - memref_load_79); 
                  double arith_mulf_81 = (arith_subf_80 * arith_const_23); 
                  double arith_subf_82 = (memref_load_73 - arith_mulf_81); 
                  int arith_muli_83 = (for_iter_69 * arith_const_17); 
                  int arith_addi_84 = (arith_muli_83 + arith_const_17); 
                  func_arg_4[arith_addi_84][arith_const_24] = arith_subf_82; 
                }
                int arith_muli_85 = (for_iter_30 * arith_const_26); 
                int arith_addi_86 = (for_iter_37 + arith_const_21); 
                int arith_maxsi_87 = max(arith_muli_85, arith_addi_86); 
                int arith_muli_88 = (for_iter_30 * arith_const_26); 
                int arith_addi_89 = (arith_muli_88 + arith_const_26); 
                int arith_addi_90 = (for_iter_37 + arith_const_18); 
                int arith_minsi_91 = min(arith_addi_89, arith_addi_90); 
                for (int for_iter_92 = arith_maxsi_87; for_iter_92 < arith_minsi_91; for_iter_92 += arith_const_21) {
                  int arith_muli_93 = (for_iter_69 * arith_const_17); 
                  int arith_addi_94 = (arith_muli_93 + arith_const_17); 
                  int arith_muli_95 = (for_iter_37 * arith_const_17); 
                  int arith_addi_96 = (arith_muli_95 + for_iter_92); 
                  double memref_load_97 = func_arg_4[arith_addi_94][arith_addi_96]; 
                  int arith_muli_98 = (for_iter_69 * arith_const_17); 
                  int arith_addi_99 = (arith_muli_98 + arith_const_17); 
                  int arith_muli_100 = (for_iter_37 * arith_const_17); 
                  int arith_addi_101 = (arith_muli_100 + for_iter_92); 
                  double memref_load_102 = func_arg_5[arith_addi_99][arith_addi_101]; 
                  int arith_muli_103 = (for_iter_69 * arith_const_17); 
                  int arith_addi_104 = (arith_muli_103 + arith_const_14); 
                  int arith_muli_105 = (for_iter_37 * arith_const_17); 
                  int arith_addi_106 = (arith_muli_105 + for_iter_92); 
                  double memref_load_107 = func_arg_5[arith_addi_104][arith_addi_106]; 
                  double arith_subf_108 = (memref_load_102 - memref_load_107); 
                  double arith_mulf_109 = (arith_subf_108 * arith_const_23); 
                  double arith_subf_110 = (memref_load_97 - arith_mulf_109); 
                  int arith_muli_111 = (for_iter_69 * arith_const_17); 
                  int arith_addi_112 = (arith_muli_111 + arith_const_17); 
                  int arith_muli_113 = (for_iter_37 * arith_const_17); 
                  int arith_addi_114 = (arith_muli_113 + for_iter_92); 
                  func_arg_4[arith_addi_112][arith_addi_114] = arith_subf_110; 
                  int arith_muli_115 = (for_iter_69 * arith_const_17); 
                  int arith_addi_116 = (arith_muli_115 + arith_const_17); 
                  int arith_muli_117 = (for_iter_37 * arith_const_17); 
                  int arith_addi_118 = (arith_muli_117 + for_iter_92); 
                  double memref_load_119 = func_arg_3[arith_addi_116][arith_addi_118]; 
                  int arith_muli_120 = (for_iter_69 * arith_const_17); 
                  int arith_addi_121 = (arith_muli_120 + arith_const_17); 
                  int arith_muli_122 = (for_iter_37 * arith_const_17); 
                  int arith_addi_123 = (arith_muli_122 + for_iter_92); 
                  double memref_load_124 = func_arg_5[arith_addi_121][arith_addi_123]; 
                  int arith_muli_125 = (for_iter_69 * arith_const_17); 
                  int arith_addi_126 = (arith_muli_125 + arith_const_17); 
                  int arith_muli_127 = (for_iter_37 * arith_const_17); 
                  int arith_addi_128 = (arith_muli_127 + for_iter_92); 
                  int arith_addi_129 = (arith_addi_128 + arith_const_17); 
                  double memref_load_130 = func_arg_5[arith_addi_126][arith_addi_129]; 
                  double arith_subf_131 = (memref_load_124 - memref_load_130); 
                  double arith_mulf_132 = (arith_subf_131 * arith_const_23); 
                  double arith_subf_133 = (memref_load_119 - arith_mulf_132); 
                  int arith_muli_134 = (for_iter_69 * arith_const_17); 
                  int arith_addi_135 = (arith_muli_134 + arith_const_17); 
                  int arith_muli_136 = (for_iter_37 * arith_const_17); 
                  int arith_addi_137 = (arith_muli_136 + for_iter_92); 
                  func_arg_3[arith_addi_135][arith_addi_137] = arith_subf_133; 
                  int arith_muli_138 = (for_iter_69 * arith_const_17); 
                  int arith_addi_139 = (arith_muli_138 + arith_const_14); 
                  int arith_muli_140 = (for_iter_37 * arith_const_17); 
                  int arith_addi_141 = (arith_muli_140 + for_iter_92); 
                  int arith_addi_142 = (arith_addi_141 + arith_const_17); 
                  double memref_load_143 = func_arg_5[arith_addi_139][arith_addi_142]; 
                  int arith_muli_144 = (for_iter_69 * arith_const_17); 
                  int arith_addi_145 = (arith_muli_144 + arith_const_14); 
                  int arith_muli_146 = (for_iter_37 * arith_const_17); 
                  int arith_addi_147 = (arith_muli_146 + for_iter_92); 
                  double memref_load_148 = func_arg_3[arith_addi_145][arith_addi_147]; 
                  int arith_muli_149 = (for_iter_69 * arith_const_17); 
                  int arith_addi_150 = (arith_muli_149 + arith_const_14); 
                  int arith_muli_151 = (for_iter_37 * arith_const_17); 
                  int arith_addi_152 = (arith_muli_151 + for_iter_92); 
                  int arith_addi_153 = (arith_addi_152 + arith_const_17); 
                  double memref_load_154 = func_arg_3[arith_addi_150][arith_addi_153]; 
                  double arith_subf_155 = (memref_load_148 - memref_load_154); 
                  int arith_muli_156 = (for_iter_69 * arith_const_17); 
                  int arith_addi_157 = (arith_muli_156 + arith_const_17); 
                  int arith_muli_158 = (for_iter_37 * arith_const_17); 
                  int arith_addi_159 = (arith_muli_158 + for_iter_92); 
                  int arith_addi_160 = (arith_addi_159 + arith_const_17); 
                  double memref_load_161 = func_arg_4[arith_addi_157][arith_addi_160]; 
                  double arith_addf_162 = (arith_subf_155 + memref_load_161); 
                  int arith_muli_163 = (for_iter_69 * arith_const_17); 
                  int arith_addi_164 = (arith_muli_163 + arith_const_14); 
                  int arith_muli_165 = (for_iter_37 * arith_const_17); 
                  int arith_addi_166 = (arith_muli_165 + for_iter_92); 
                  int arith_addi_167 = (arith_addi_166 + arith_const_17); 
                  double memref_load_168 = func_arg_4[arith_addi_164][arith_addi_167]; 
                  double arith_subf_169 = (arith_addf_162 - memref_load_168); 
                  double arith_mulf_170 = (arith_subf_169 * arith_const_22); 
                  double arith_subf_171 = (memref_load_143 - arith_mulf_170); 
                  int arith_muli_172 = (for_iter_69 * arith_const_17); 
                  int arith_addi_173 = (arith_muli_172 + arith_const_14); 
                  int arith_muli_174 = (for_iter_37 * arith_const_17); 
                  int arith_addi_175 = (arith_muli_174 + for_iter_92); 
                  int arith_addi_176 = (arith_addi_175 + arith_const_17); 
                  func_arg_5[arith_addi_173][arith_addi_176] = arith_subf_171; 
                }
              }
            }
          }
          int arith_addi_177 = (for_iter_32 + arith_const_17); 
          int arith_cmpi_178 = (arith_addi_177 == arith_const_24); 
          if (arith_cmpi_178) {
            for (int for_iter_179 = arith_const_24; for_iter_179 < arith_const_13; for_iter_179 += arith_const_21) {
              int arith_addi_180 = (for_iter_179 + arith_const_21); 
              for (int for_iter_181 = arith_const_24; for_iter_181 < arith_addi_180; for_iter_181 += arith_const_21) {
                int arith_cmpi_182 = (for_iter_30 == arith_const_24); 
                if (arith_cmpi_182) {
                  int arith_muli_183 = (for_iter_181 * arith_const_17); 
                  int arith_addi_184 = (arith_muli_183 + for_iter_179); 
                  int arith_addi_185 = (arith_addi_184 + arith_const_12); 
                  double memref_load_186 = func_arg_4[arith_addi_185][arith_const_24]; 
                  int arith_muli_187 = (for_iter_181 * arith_const_17); 
                  int arith_addi_188 = (arith_muli_187 + for_iter_179); 
                  int arith_addi_189 = (arith_addi_188 + arith_const_12); 
                  double memref_load_190 = func_arg_5[arith_addi_189][arith_const_24]; 
                  int arith_muli_191 = (for_iter_181 * arith_const_17); 
                  int arith_addi_192 = (arith_muli_191 + for_iter_179); 
                  int arith_addi_193 = (arith_addi_192 + arith_const_11); 
                  double memref_load_194 = func_arg_5[arith_addi_193][arith_const_24]; 
                  double arith_subf_195 = (memref_load_190 - memref_load_194); 
                  double arith_mulf_196 = (arith_subf_195 * arith_const_23); 
                  double arith_subf_197 = (memref_load_186 - arith_mulf_196); 
                  int arith_muli_198 = (for_iter_181 * arith_const_17); 
                  int arith_addi_199 = (arith_muli_198 + for_iter_179); 
                  int arith_addi_200 = (arith_addi_199 + arith_const_12); 
                  func_arg_4[arith_addi_200][arith_const_24] = arith_subf_197; 
                }
                int arith_muli_201 = (for_iter_30 * arith_const_26); 
                int arith_addi_202 = (for_iter_179 + arith_const_10); 
                int arith_maxsi_203 = max(arith_muli_201, arith_addi_202); 
                int arith_muli_204 = (for_iter_30 * arith_const_26); 
                int arith_addi_205 = (arith_muli_204 + arith_const_26); 
                int arith_addi_206 = (for_iter_179 + arith_const_9); 
                int arith_minsi_207 = min(arith_addi_205, arith_addi_206); 
                for (int for_iter_208 = arith_maxsi_203; for_iter_208 < arith_minsi_207; for_iter_208 += arith_const_21) {
                  int arith_muli_209 = (for_iter_181 * arith_const_17); 
                  int arith_addi_210 = (arith_muli_209 + for_iter_179); 
                  int arith_addi_211 = (arith_addi_210 + arith_const_12); 
                  int arith_muli_212 = (for_iter_179 * arith_const_17); 
                  int arith_addi_213 = (for_iter_208 + arith_muli_212); 
                  int arith_addi_214 = (arith_addi_213 + arith_const_8); 
                  double memref_load_215 = func_arg_4[arith_addi_211][arith_addi_214]; 
                  int arith_muli_216 = (for_iter_181 * arith_const_17); 
                  int arith_addi_217 = (arith_muli_216 + for_iter_179); 
                  int arith_addi_218 = (arith_addi_217 + arith_const_12); 
                  int arith_muli_219 = (for_iter_179 * arith_const_17); 
                  int arith_addi_220 = (for_iter_208 + arith_muli_219); 
                  int arith_addi_221 = (arith_addi_220 + arith_const_8); 
                  double memref_load_222 = func_arg_5[arith_addi_218][arith_addi_221]; 
                  int arith_muli_223 = (for_iter_181 * arith_const_17); 
                  int arith_addi_224 = (arith_muli_223 + for_iter_179); 
                  int arith_addi_225 = (arith_addi_224 + arith_const_11); 
                  int arith_muli_226 = (for_iter_179 * arith_const_17); 
                  int arith_addi_227 = (for_iter_208 + arith_muli_226); 
                  int arith_addi_228 = (arith_addi_227 + arith_const_8); 
                  double memref_load_229 = func_arg_5[arith_addi_225][arith_addi_228]; 
                  double arith_subf_230 = (memref_load_222 - memref_load_229); 
                  double arith_mulf_231 = (arith_subf_230 * arith_const_23); 
                  double arith_subf_232 = (memref_load_215 - arith_mulf_231); 
                  int arith_muli_233 = (for_iter_181 * arith_const_17); 
                  int arith_addi_234 = (arith_muli_233 + for_iter_179); 
                  int arith_addi_235 = (arith_addi_234 + arith_const_12); 
                  int arith_muli_236 = (for_iter_179 * arith_const_17); 
                  int arith_addi_237 = (for_iter_208 + arith_muli_236); 
                  int arith_addi_238 = (arith_addi_237 + arith_const_8); 
                  func_arg_4[arith_addi_235][arith_addi_238] = arith_subf_232; 
                  int arith_muli_239 = (for_iter_181 * arith_const_17); 
                  int arith_addi_240 = (arith_muli_239 + for_iter_179); 
                  int arith_addi_241 = (arith_addi_240 + arith_const_12); 
                  int arith_muli_242 = (for_iter_179 * arith_const_17); 
                  int arith_addi_243 = (for_iter_208 + arith_muli_242); 
                  int arith_addi_244 = (arith_addi_243 + arith_const_8); 
                  double memref_load_245 = func_arg_3[arith_addi_241][arith_addi_244]; 
                  int arith_muli_246 = (for_iter_181 * arith_const_17); 
                  int arith_addi_247 = (arith_muli_246 + for_iter_179); 
                  int arith_addi_248 = (arith_addi_247 + arith_const_12); 
                  int arith_muli_249 = (for_iter_179 * arith_const_17); 
                  int arith_addi_250 = (for_iter_208 + arith_muli_249); 
                  int arith_addi_251 = (arith_addi_250 + arith_const_8); 
                  double memref_load_252 = func_arg_5[arith_addi_248][arith_addi_251]; 
                  int arith_muli_253 = (for_iter_181 * arith_const_17); 
                  int arith_addi_254 = (arith_muli_253 + for_iter_179); 
                  int arith_addi_255 = (arith_addi_254 + arith_const_12); 
                  int arith_muli_256 = (for_iter_179 * arith_const_17); 
                  int arith_addi_257 = (for_iter_208 + arith_muli_256); 
                  int arith_addi_258 = (arith_addi_257 + arith_const_7); 
                  double memref_load_259 = func_arg_5[arith_addi_255][arith_addi_258]; 
                  double arith_subf_260 = (memref_load_252 - memref_load_259); 
                  double arith_mulf_261 = (arith_subf_260 * arith_const_23); 
                  double arith_subf_262 = (memref_load_245 - arith_mulf_261); 
                  int arith_muli_263 = (for_iter_181 * arith_const_17); 
                  int arith_addi_264 = (arith_muli_263 + for_iter_179); 
                  int arith_addi_265 = (arith_addi_264 + arith_const_12); 
                  int arith_muli_266 = (for_iter_179 * arith_const_17); 
                  int arith_addi_267 = (for_iter_208 + arith_muli_266); 
                  int arith_addi_268 = (arith_addi_267 + arith_const_8); 
                  func_arg_3[arith_addi_265][arith_addi_268] = arith_subf_262; 
                  int arith_muli_269 = (for_iter_181 * arith_const_17); 
                  int arith_addi_270 = (arith_muli_269 + for_iter_179); 
                  int arith_addi_271 = (arith_addi_270 + arith_const_11); 
                  int arith_muli_272 = (for_iter_179 * arith_const_17); 
                  int arith_addi_273 = (for_iter_208 + arith_muli_272); 
                  int arith_addi_274 = (arith_addi_273 + arith_const_7); 
                  double memref_load_275 = func_arg_5[arith_addi_271][arith_addi_274]; 
                  int arith_muli_276 = (for_iter_181 * arith_const_17); 
                  int arith_addi_277 = (arith_muli_276 + for_iter_179); 
                  int arith_addi_278 = (arith_addi_277 + arith_const_11); 
                  int arith_muli_279 = (for_iter_179 * arith_const_17); 
                  int arith_addi_280 = (for_iter_208 + arith_muli_279); 
                  int arith_addi_281 = (arith_addi_280 + arith_const_8); 
                  double memref_load_282 = func_arg_3[arith_addi_278][arith_addi_281]; 
                  int arith_muli_283 = (for_iter_181 * arith_const_17); 
                  int arith_addi_284 = (arith_muli_283 + for_iter_179); 
                  int arith_addi_285 = (arith_addi_284 + arith_const_11); 
                  int arith_muli_286 = (for_iter_179 * arith_const_17); 
                  int arith_addi_287 = (for_iter_208 + arith_muli_286); 
                  int arith_addi_288 = (arith_addi_287 + arith_const_7); 
                  double memref_load_289 = func_arg_3[arith_addi_285][arith_addi_288]; 
                  double arith_subf_290 = (memref_load_282 - memref_load_289); 
                  int arith_muli_291 = (for_iter_181 * arith_const_17); 
                  int arith_addi_292 = (arith_muli_291 + for_iter_179); 
                  int arith_addi_293 = (arith_addi_292 + arith_const_12); 
                  int arith_muli_294 = (for_iter_179 * arith_const_17); 
                  int arith_addi_295 = (for_iter_208 + arith_muli_294); 
                  int arith_addi_296 = (arith_addi_295 + arith_const_7); 
                  double memref_load_297 = func_arg_4[arith_addi_293][arith_addi_296]; 
                  double arith_addf_298 = (arith_subf_290 + memref_load_297); 
                  int arith_muli_299 = (for_iter_181 * arith_const_17); 
                  int arith_addi_300 = (arith_muli_299 + for_iter_179); 
                  int arith_addi_301 = (arith_addi_300 + arith_const_11); 
                  int arith_muli_302 = (for_iter_179 * arith_const_17); 
                  int arith_addi_303 = (for_iter_208 + arith_muli_302); 
                  int arith_addi_304 = (arith_addi_303 + arith_const_7); 
                  double memref_load_305 = func_arg_4[arith_addi_301][arith_addi_304]; 
                  double arith_subf_306 = (arith_addf_298 - memref_load_305); 
                  double arith_mulf_307 = (arith_subf_306 * arith_const_22); 
                  double arith_subf_308 = (memref_load_275 - arith_mulf_307); 
                  int arith_muli_309 = (for_iter_181 * arith_const_17); 
                  int arith_addi_310 = (arith_muli_309 + for_iter_179); 
                  int arith_addi_311 = (arith_addi_310 + arith_const_11); 
                  int arith_muli_312 = (for_iter_179 * arith_const_17); 
                  int arith_addi_313 = (for_iter_208 + arith_muli_312); 
                  int arith_addi_314 = (arith_addi_313 + arith_const_7); 
                  func_arg_5[arith_addi_311][arith_addi_314] = arith_subf_308; 
                }
              }
            }
          }
        }
      }
    }
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


  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);

}

#pragma pocc-region-end
