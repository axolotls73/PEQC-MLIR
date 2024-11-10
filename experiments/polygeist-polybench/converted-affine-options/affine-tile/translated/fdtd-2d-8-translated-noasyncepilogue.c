#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 13; 
  int arith_const_8 = -1; 
  int arith_const_9 = 30; 
  int arith_const_10 = 20; 
  int arith_const_11 = -29; 
  int arith_const_12 = 1; 
  double arith_const_13 = 0.700000; 
  double arith_const_14 = 0.500000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 2; 
  int arith_const_17 = 32; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_17) {
      int arith_addi_20 = (for_iter_18 + arith_const_16); 
      for (int for_iter_21 = for_iter_18; for_iter_21 < arith_addi_20; for_iter_21 += arith_const_12) {
        int arith_addi_22 = (for_iter_19 + arith_const_16); 
        for (int for_iter_23 = for_iter_19; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_12) {
          int arith_cmpi_24 = (for_iter_23 == arith_const_15); 
          if (arith_cmpi_24) {
            int arith_muli_25 = (for_iter_21 * arith_const_17); 
            int arith_addi_26 = (arith_muli_25 + arith_const_11); 
            int arith_maxsi_27 = max(arith_addi_26, arith_const_15); 
            for (int for_iter_28 = arith_maxsi_27; for_iter_28 < arith_const_10; for_iter_28 += arith_const_12) {
              int arith_cmpi_29 = (for_iter_21 == arith_const_15); 
              if (arith_cmpi_29) {
                double memref_load_30 = func_arg_6[for_iter_28]; 
                func_arg_4[arith_const_15][arith_const_15] = memref_load_30; 
              }
              int arith_muli_31 = (for_iter_21 * arith_const_17); 
              int arith_addi_32 = (for_iter_28 + arith_const_12); 
              int arith_maxsi_33 = max(arith_muli_31, arith_addi_32); 
              int arith_muli_34 = (for_iter_21 * arith_const_17); 
              int arith_addi_35 = (arith_muli_34 + arith_const_17); 
              int arith_addi_36 = (for_iter_28 + arith_const_9); 
              int arith_minsi_37 = min(arith_addi_35, arith_addi_36); 
              for (int for_iter_38 = arith_maxsi_33; for_iter_38 < arith_minsi_37; for_iter_38 += arith_const_12) {
                double memref_load_39 = func_arg_6[for_iter_28]; 
                int arith_muli_40 = (for_iter_28 * arith_const_8); 
                int arith_addi_41 = (arith_muli_40 + for_iter_38); 
                func_arg_4[arith_const_15][arith_addi_41] = memref_load_39; 
                int arith_muli_42 = (for_iter_28 * arith_const_8); 
                int arith_addi_43 = (arith_muli_42 + for_iter_38); 
                double memref_load_44 = func_arg_3[arith_const_15][arith_addi_43]; 
                int arith_muli_45 = (for_iter_28 * arith_const_8); 
                int arith_addi_46 = (arith_muli_45 + for_iter_38); 
                double memref_load_47 = func_arg_5[arith_const_15][arith_addi_46]; 
                int arith_muli_48 = (for_iter_28 * arith_const_8); 
                int arith_addi_49 = (arith_muli_48 + for_iter_38); 
                int arith_addi_50 = (arith_addi_49 + arith_const_8); 
                double memref_load_51 = func_arg_5[arith_const_15][arith_addi_50]; 
                double arith_subf_52 = (memref_load_47 - memref_load_51); 
                double arith_mulf_53 = (arith_subf_52 * arith_const_14); 
                double arith_subf_54 = (memref_load_44 - arith_mulf_53); 
                int arith_muli_55 = (for_iter_28 * arith_const_8); 
                int arith_addi_56 = (arith_muli_55 + for_iter_38); 
                func_arg_3[arith_const_15][arith_addi_56] = arith_subf_54; 
              }
              int arith_addi_57 = (for_iter_28 + arith_const_12); 
              int arith_addi_58 = (for_iter_28 + arith_const_10); 
              int arith_minsi_59 = min(arith_addi_58, arith_const_17); 
              for (int for_iter_60 = arith_addi_57; for_iter_60 < arith_minsi_59; for_iter_60 += arith_const_12) {
                int arith_cmpi_61 = (for_iter_21 == arith_const_15); 
                if (arith_cmpi_61) {
                  int arith_muli_62 = (for_iter_60 * arith_const_8); 
                  int arith_addi_63 = (arith_muli_62 + for_iter_28); 
                  double memref_load_64 = func_arg_4[arith_addi_63][arith_const_15]; 
                  int arith_muli_65 = (for_iter_60 * arith_const_8); 
                  int arith_addi_66 = (arith_muli_65 + for_iter_28); 
                  double memref_load_67 = func_arg_5[arith_addi_66][arith_const_15]; 
                  int arith_muli_68 = (for_iter_60 * arith_const_8); 
                  int arith_addi_69 = (arith_muli_68 + for_iter_28); 
                  int arith_addi_70 = (arith_addi_69 + arith_const_8); 
                  double memref_load_71 = func_arg_5[arith_addi_70][arith_const_15]; 
                  double arith_subf_72 = (memref_load_67 - memref_load_71); 
                  double arith_mulf_73 = (arith_subf_72 * arith_const_14); 
                  double arith_subf_74 = (memref_load_64 - arith_mulf_73); 
                  int arith_muli_75 = (for_iter_60 * arith_const_8); 
                  int arith_addi_76 = (arith_muli_75 + for_iter_28); 
                  func_arg_4[arith_addi_76][arith_const_15] = arith_subf_74; 
                }
                int arith_muli_77 = (for_iter_21 * arith_const_17); 
                int arith_addi_78 = (for_iter_28 + arith_const_12); 
                int arith_maxsi_79 = max(arith_muli_77, arith_addi_78); 
                int arith_muli_80 = (for_iter_21 * arith_const_17); 
                int arith_addi_81 = (arith_muli_80 + arith_const_17); 
                int arith_addi_82 = (for_iter_28 + arith_const_9); 
                int arith_minsi_83 = min(arith_addi_81, arith_addi_82); 
                for (int for_iter_84 = arith_maxsi_79; for_iter_84 < arith_minsi_83; for_iter_84 += arith_const_12) {
                  int arith_muli_85 = (for_iter_60 * arith_const_8); 
                  int arith_addi_86 = (arith_muli_85 + for_iter_28); 
                  int arith_muli_87 = (for_iter_28 * arith_const_8); 
                  int arith_addi_88 = (arith_muli_87 + for_iter_84); 
                  double memref_load_89 = func_arg_4[arith_addi_86][arith_addi_88]; 
                  int arith_muli_90 = (for_iter_60 * arith_const_8); 
                  int arith_addi_91 = (arith_muli_90 + for_iter_28); 
                  int arith_muli_92 = (for_iter_28 * arith_const_8); 
                  int arith_addi_93 = (arith_muli_92 + for_iter_84); 
                  double memref_load_94 = func_arg_5[arith_addi_91][arith_addi_93]; 
                  int arith_muli_95 = (for_iter_60 * arith_const_8); 
                  int arith_addi_96 = (arith_muli_95 + for_iter_28); 
                  int arith_addi_97 = (arith_addi_96 + arith_const_8); 
                  int arith_muli_98 = (for_iter_28 * arith_const_8); 
                  int arith_addi_99 = (arith_muli_98 + for_iter_84); 
                  double memref_load_100 = func_arg_5[arith_addi_97][arith_addi_99]; 
                  double arith_subf_101 = (memref_load_94 - memref_load_100); 
                  double arith_mulf_102 = (arith_subf_101 * arith_const_14); 
                  double arith_subf_103 = (memref_load_89 - arith_mulf_102); 
                  int arith_muli_104 = (for_iter_60 * arith_const_8); 
                  int arith_addi_105 = (arith_muli_104 + for_iter_28); 
                  int arith_muli_106 = (for_iter_28 * arith_const_8); 
                  int arith_addi_107 = (arith_muli_106 + for_iter_84); 
                  func_arg_4[arith_addi_105][arith_addi_107] = arith_subf_103; 
                  int arith_muli_108 = (for_iter_60 * arith_const_8); 
                  int arith_addi_109 = (arith_muli_108 + for_iter_28); 
                  int arith_muli_110 = (for_iter_28 * arith_const_8); 
                  int arith_addi_111 = (arith_muli_110 + for_iter_84); 
                  double memref_load_112 = func_arg_3[arith_addi_109][arith_addi_111]; 
                  int arith_muli_113 = (for_iter_60 * arith_const_8); 
                  int arith_addi_114 = (arith_muli_113 + for_iter_28); 
                  int arith_muli_115 = (for_iter_28 * arith_const_8); 
                  int arith_addi_116 = (arith_muli_115 + for_iter_84); 
                  double memref_load_117 = func_arg_5[arith_addi_114][arith_addi_116]; 
                  int arith_muli_118 = (for_iter_60 * arith_const_8); 
                  int arith_addi_119 = (arith_muli_118 + for_iter_28); 
                  int arith_muli_120 = (for_iter_28 * arith_const_8); 
                  int arith_addi_121 = (arith_muli_120 + for_iter_84); 
                  int arith_addi_122 = (arith_addi_121 + arith_const_8); 
                  double memref_load_123 = func_arg_5[arith_addi_119][arith_addi_122]; 
                  double arith_subf_124 = (memref_load_117 - memref_load_123); 
                  double arith_mulf_125 = (arith_subf_124 * arith_const_14); 
                  double arith_subf_126 = (memref_load_112 - arith_mulf_125); 
                  int arith_muli_127 = (for_iter_60 * arith_const_8); 
                  int arith_addi_128 = (arith_muli_127 + for_iter_28); 
                  int arith_muli_129 = (for_iter_28 * arith_const_8); 
                  int arith_addi_130 = (arith_muli_129 + for_iter_84); 
                  func_arg_3[arith_addi_128][arith_addi_130] = arith_subf_126; 
                  int arith_muli_131 = (for_iter_60 * arith_const_8); 
                  int arith_addi_132 = (arith_muli_131 + for_iter_28); 
                  int arith_addi_133 = (arith_addi_132 + arith_const_8); 
                  int arith_muli_134 = (for_iter_28 * arith_const_8); 
                  int arith_addi_135 = (arith_muli_134 + for_iter_84); 
                  int arith_addi_136 = (arith_addi_135 + arith_const_8); 
                  double memref_load_137 = func_arg_5[arith_addi_133][arith_addi_136]; 
                  int arith_muli_138 = (for_iter_60 * arith_const_8); 
                  int arith_addi_139 = (arith_muli_138 + for_iter_28); 
                  int arith_addi_140 = (arith_addi_139 + arith_const_8); 
                  int arith_muli_141 = (for_iter_28 * arith_const_8); 
                  int arith_addi_142 = (arith_muli_141 + for_iter_84); 
                  double memref_load_143 = func_arg_3[arith_addi_140][arith_addi_142]; 
                  int arith_muli_144 = (for_iter_60 * arith_const_8); 
                  int arith_addi_145 = (arith_muli_144 + for_iter_28); 
                  int arith_addi_146 = (arith_addi_145 + arith_const_8); 
                  int arith_muli_147 = (for_iter_28 * arith_const_8); 
                  int arith_addi_148 = (arith_muli_147 + for_iter_84); 
                  int arith_addi_149 = (arith_addi_148 + arith_const_8); 
                  double memref_load_150 = func_arg_3[arith_addi_146][arith_addi_149]; 
                  double arith_subf_151 = (memref_load_143 - memref_load_150); 
                  int arith_muli_152 = (for_iter_60 * arith_const_8); 
                  int arith_addi_153 = (arith_muli_152 + for_iter_28); 
                  int arith_muli_154 = (for_iter_28 * arith_const_8); 
                  int arith_addi_155 = (arith_muli_154 + for_iter_84); 
                  int arith_addi_156 = (arith_addi_155 + arith_const_8); 
                  double memref_load_157 = func_arg_4[arith_addi_153][arith_addi_156]; 
                  double arith_addf_158 = (arith_subf_151 + memref_load_157); 
                  int arith_muli_159 = (for_iter_60 * arith_const_8); 
                  int arith_addi_160 = (arith_muli_159 + for_iter_28); 
                  int arith_addi_161 = (arith_addi_160 + arith_const_8); 
                  int arith_muli_162 = (for_iter_28 * arith_const_8); 
                  int arith_addi_163 = (arith_muli_162 + for_iter_84); 
                  int arith_addi_164 = (arith_addi_163 + arith_const_8); 
                  double memref_load_165 = func_arg_4[arith_addi_161][arith_addi_164]; 
                  double arith_subf_166 = (arith_addf_158 - memref_load_165); 
                  double arith_mulf_167 = (arith_subf_166 * arith_const_13); 
                  double arith_subf_168 = (memref_load_137 - arith_mulf_167); 
                  int arith_muli_169 = (for_iter_60 * arith_const_8); 
                  int arith_addi_170 = (arith_muli_169 + for_iter_28); 
                  int arith_addi_171 = (arith_addi_170 + arith_const_8); 
                  int arith_muli_172 = (for_iter_28 * arith_const_8); 
                  int arith_addi_173 = (arith_muli_172 + for_iter_84); 
                  int arith_addi_174 = (arith_addi_173 + arith_const_8); 
                  func_arg_5[arith_addi_171][arith_addi_174] = arith_subf_168; 
                }
              }
            }
          }
          int arith_addi_175 = (for_iter_23 + arith_const_8); 
          int arith_cmpi_176 = (arith_addi_175 == arith_const_15); 
          if (arith_cmpi_176) {
            for (int for_iter_177 = arith_const_7; for_iter_177 < arith_const_10; for_iter_177 += arith_const_12) {
              int arith_addi_178 = (for_iter_177 + arith_const_10); 
              for (int for_iter_179 = arith_const_17; for_iter_179 < arith_addi_178; for_iter_179 += arith_const_12) {
                int arith_cmpi_180 = (for_iter_21 == arith_const_15); 
                if (arith_cmpi_180) {
                  int arith_muli_181 = (for_iter_179 * arith_const_8); 
                  int arith_addi_182 = (arith_muli_181 + for_iter_177); 
                  double memref_load_183 = func_arg_4[arith_addi_182][arith_const_15]; 
                  int arith_muli_184 = (for_iter_179 * arith_const_8); 
                  int arith_addi_185 = (arith_muli_184 + for_iter_177); 
                  double memref_load_186 = func_arg_5[arith_addi_185][arith_const_15]; 
                  int arith_muli_187 = (for_iter_179 * arith_const_8); 
                  int arith_addi_188 = (arith_muli_187 + for_iter_177); 
                  int arith_addi_189 = (arith_addi_188 + arith_const_8); 
                  double memref_load_190 = func_arg_5[arith_addi_189][arith_const_15]; 
                  double arith_subf_191 = (memref_load_186 - memref_load_190); 
                  double arith_mulf_192 = (arith_subf_191 * arith_const_14); 
                  double arith_subf_193 = (memref_load_183 - arith_mulf_192); 
                  int arith_muli_194 = (for_iter_179 * arith_const_8); 
                  int arith_addi_195 = (arith_muli_194 + for_iter_177); 
                  func_arg_4[arith_addi_195][arith_const_15] = arith_subf_193; 
                }
                int arith_muli_196 = (for_iter_21 * arith_const_17); 
                int arith_addi_197 = (for_iter_177 + arith_const_12); 
                int arith_maxsi_198 = max(arith_muli_196, arith_addi_197); 
                int arith_muli_199 = (for_iter_21 * arith_const_17); 
                int arith_addi_200 = (arith_muli_199 + arith_const_17); 
                int arith_addi_201 = (for_iter_177 + arith_const_9); 
                int arith_minsi_202 = min(arith_addi_200, arith_addi_201); 
                for (int for_iter_203 = arith_maxsi_198; for_iter_203 < arith_minsi_202; for_iter_203 += arith_const_12) {
                  int arith_muli_204 = (for_iter_179 * arith_const_8); 
                  int arith_addi_205 = (arith_muli_204 + for_iter_177); 
                  int arith_muli_206 = (for_iter_177 * arith_const_8); 
                  int arith_addi_207 = (arith_muli_206 + for_iter_203); 
                  double memref_load_208 = func_arg_4[arith_addi_205][arith_addi_207]; 
                  int arith_muli_209 = (for_iter_179 * arith_const_8); 
                  int arith_addi_210 = (arith_muli_209 + for_iter_177); 
                  int arith_muli_211 = (for_iter_177 * arith_const_8); 
                  int arith_addi_212 = (arith_muli_211 + for_iter_203); 
                  double memref_load_213 = func_arg_5[arith_addi_210][arith_addi_212]; 
                  int arith_muli_214 = (for_iter_179 * arith_const_8); 
                  int arith_addi_215 = (arith_muli_214 + for_iter_177); 
                  int arith_addi_216 = (arith_addi_215 + arith_const_8); 
                  int arith_muli_217 = (for_iter_177 * arith_const_8); 
                  int arith_addi_218 = (arith_muli_217 + for_iter_203); 
                  double memref_load_219 = func_arg_5[arith_addi_216][arith_addi_218]; 
                  double arith_subf_220 = (memref_load_213 - memref_load_219); 
                  double arith_mulf_221 = (arith_subf_220 * arith_const_14); 
                  double arith_subf_222 = (memref_load_208 - arith_mulf_221); 
                  int arith_muli_223 = (for_iter_179 * arith_const_8); 
                  int arith_addi_224 = (arith_muli_223 + for_iter_177); 
                  int arith_muli_225 = (for_iter_177 * arith_const_8); 
                  int arith_addi_226 = (arith_muli_225 + for_iter_203); 
                  func_arg_4[arith_addi_224][arith_addi_226] = arith_subf_222; 
                  int arith_muli_227 = (for_iter_179 * arith_const_8); 
                  int arith_addi_228 = (arith_muli_227 + for_iter_177); 
                  int arith_muli_229 = (for_iter_177 * arith_const_8); 
                  int arith_addi_230 = (arith_muli_229 + for_iter_203); 
                  double memref_load_231 = func_arg_3[arith_addi_228][arith_addi_230]; 
                  int arith_muli_232 = (for_iter_179 * arith_const_8); 
                  int arith_addi_233 = (arith_muli_232 + for_iter_177); 
                  int arith_muli_234 = (for_iter_177 * arith_const_8); 
                  int arith_addi_235 = (arith_muli_234 + for_iter_203); 
                  double memref_load_236 = func_arg_5[arith_addi_233][arith_addi_235]; 
                  int arith_muli_237 = (for_iter_179 * arith_const_8); 
                  int arith_addi_238 = (arith_muli_237 + for_iter_177); 
                  int arith_muli_239 = (for_iter_177 * arith_const_8); 
                  int arith_addi_240 = (arith_muli_239 + for_iter_203); 
                  int arith_addi_241 = (arith_addi_240 + arith_const_8); 
                  double memref_load_242 = func_arg_5[arith_addi_238][arith_addi_241]; 
                  double arith_subf_243 = (memref_load_236 - memref_load_242); 
                  double arith_mulf_244 = (arith_subf_243 * arith_const_14); 
                  double arith_subf_245 = (memref_load_231 - arith_mulf_244); 
                  int arith_muli_246 = (for_iter_179 * arith_const_8); 
                  int arith_addi_247 = (arith_muli_246 + for_iter_177); 
                  int arith_muli_248 = (for_iter_177 * arith_const_8); 
                  int arith_addi_249 = (arith_muli_248 + for_iter_203); 
                  func_arg_3[arith_addi_247][arith_addi_249] = arith_subf_245; 
                  int arith_muli_250 = (for_iter_179 * arith_const_8); 
                  int arith_addi_251 = (arith_muli_250 + for_iter_177); 
                  int arith_addi_252 = (arith_addi_251 + arith_const_8); 
                  int arith_muli_253 = (for_iter_177 * arith_const_8); 
                  int arith_addi_254 = (arith_muli_253 + for_iter_203); 
                  int arith_addi_255 = (arith_addi_254 + arith_const_8); 
                  double memref_load_256 = func_arg_5[arith_addi_252][arith_addi_255]; 
                  int arith_muli_257 = (for_iter_179 * arith_const_8); 
                  int arith_addi_258 = (arith_muli_257 + for_iter_177); 
                  int arith_addi_259 = (arith_addi_258 + arith_const_8); 
                  int arith_muli_260 = (for_iter_177 * arith_const_8); 
                  int arith_addi_261 = (arith_muli_260 + for_iter_203); 
                  double memref_load_262 = func_arg_3[arith_addi_259][arith_addi_261]; 
                  int arith_muli_263 = (for_iter_179 * arith_const_8); 
                  int arith_addi_264 = (arith_muli_263 + for_iter_177); 
                  int arith_addi_265 = (arith_addi_264 + arith_const_8); 
                  int arith_muli_266 = (for_iter_177 * arith_const_8); 
                  int arith_addi_267 = (arith_muli_266 + for_iter_203); 
                  int arith_addi_268 = (arith_addi_267 + arith_const_8); 
                  double memref_load_269 = func_arg_3[arith_addi_265][arith_addi_268]; 
                  double arith_subf_270 = (memref_load_262 - memref_load_269); 
                  int arith_muli_271 = (for_iter_179 * arith_const_8); 
                  int arith_addi_272 = (arith_muli_271 + for_iter_177); 
                  int arith_muli_273 = (for_iter_177 * arith_const_8); 
                  int arith_addi_274 = (arith_muli_273 + for_iter_203); 
                  int arith_addi_275 = (arith_addi_274 + arith_const_8); 
                  double memref_load_276 = func_arg_4[arith_addi_272][arith_addi_275]; 
                  double arith_addf_277 = (arith_subf_270 + memref_load_276); 
                  int arith_muli_278 = (for_iter_179 * arith_const_8); 
                  int arith_addi_279 = (arith_muli_278 + for_iter_177); 
                  int arith_addi_280 = (arith_addi_279 + arith_const_8); 
                  int arith_muli_281 = (for_iter_177 * arith_const_8); 
                  int arith_addi_282 = (arith_muli_281 + for_iter_203); 
                  int arith_addi_283 = (arith_addi_282 + arith_const_8); 
                  double memref_load_284 = func_arg_4[arith_addi_280][arith_addi_283]; 
                  double arith_subf_285 = (arith_addf_277 - memref_load_284); 
                  double arith_mulf_286 = (arith_subf_285 * arith_const_13); 
                  double arith_subf_287 = (memref_load_256 - arith_mulf_286); 
                  int arith_muli_288 = (for_iter_179 * arith_const_8); 
                  int arith_addi_289 = (arith_muli_288 + for_iter_177); 
                  int arith_addi_290 = (arith_addi_289 + arith_const_8); 
                  int arith_muli_291 = (for_iter_177 * arith_const_8); 
                  int arith_addi_292 = (arith_muli_291 + for_iter_203); 
                  int arith_addi_293 = (arith_addi_292 + arith_const_8); 
                  func_arg_5[arith_addi_290][arith_addi_293] = arith_subf_287; 
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
