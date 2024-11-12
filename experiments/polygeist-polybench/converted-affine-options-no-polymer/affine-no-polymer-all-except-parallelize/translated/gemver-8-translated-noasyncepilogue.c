#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 40; 
  int arith_const_13 = 3; 
  int arith_const_14 = 2; 
  int arith_const_15 = 4; 
  int arith_const_16 = 0; 
  int arith_const_17 = 10; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    int arith_muli_20 = (for_iter_19 * arith_const_15); 
    for (int for_iter_21 = arith_const_16; for_iter_21 < arith_const_17; for_iter_21 += arith_const_18) {
      int arith_muli_22 = (for_iter_21 * arith_const_15); 
      for (int for_iter_23 = arith_const_16; for_iter_23 < arith_const_18; for_iter_23 += arith_const_18) {
        int arith_muli_24 = (for_iter_23 * arith_const_15); 
        int arith_addi_25 = (arith_muli_20 + arith_muli_24); 
        double memref_load_26 = func_arg_4[arith_addi_25]; 
        double memref_load_27 = func_arg_6[arith_addi_25]; 
        double memref_load_28 = func_arg_4[arith_addi_25]; 
        double memref_load_29 = func_arg_6[arith_addi_25]; 
        double memref_load_30 = func_arg_4[arith_addi_25]; 
        double memref_load_31 = func_arg_6[arith_addi_25]; 
        double memref_load_32 = func_arg_4[arith_addi_25]; 
        double memref_load_33 = func_arg_6[arith_addi_25]; 
        int arith_addi_34 = (arith_addi_25 + arith_const_18); 
        double memref_load_35 = func_arg_4[arith_addi_34]; 
        double memref_load_36 = func_arg_6[arith_addi_34]; 
        double memref_load_37 = func_arg_4[arith_addi_34]; 
        double memref_load_38 = func_arg_6[arith_addi_34]; 
        double memref_load_39 = func_arg_4[arith_addi_34]; 
        double memref_load_40 = func_arg_6[arith_addi_34]; 
        double memref_load_41 = func_arg_4[arith_addi_34]; 
        double memref_load_42 = func_arg_6[arith_addi_34]; 
        int arith_addi_43 = (arith_addi_25 + arith_const_14); 
        double memref_load_44 = func_arg_4[arith_addi_43]; 
        double memref_load_45 = func_arg_6[arith_addi_43]; 
        double memref_load_46 = func_arg_4[arith_addi_43]; 
        double memref_load_47 = func_arg_6[arith_addi_43]; 
        double memref_load_48 = func_arg_4[arith_addi_43]; 
        double memref_load_49 = func_arg_6[arith_addi_43]; 
        double memref_load_50 = func_arg_4[arith_addi_43]; 
        double memref_load_51 = func_arg_6[arith_addi_43]; 
        int arith_addi_52 = (arith_addi_25 + arith_const_13); 
        double memref_load_53 = func_arg_4[arith_addi_52]; 
        double memref_load_54 = func_arg_6[arith_addi_52]; 
        double memref_load_55 = func_arg_4[arith_addi_52]; 
        double memref_load_56 = func_arg_6[arith_addi_52]; 
        double memref_load_57 = func_arg_4[arith_addi_52]; 
        double memref_load_58 = func_arg_6[arith_addi_52]; 
        double memref_load_59 = func_arg_4[arith_addi_52]; 
        double memref_load_60 = func_arg_6[arith_addi_52]; 
        for (int for_iter_61 = arith_const_16; for_iter_61 < arith_const_18; for_iter_61 += arith_const_18) {
          int arith_muli_62 = (for_iter_61 * arith_const_15); 
          int arith_addi_63 = (arith_muli_22 + arith_muli_62); 
          double memref_load_64 = func_arg_3[arith_addi_25][arith_addi_63]; 
          double memref_load_65 = func_arg_5[arith_addi_63]; 
          double arith_mulf_66 = (memref_load_26 * memref_load_65); 
          double arith_addf_67 = (memref_load_64 + arith_mulf_66); 
          double memref_load_68 = func_arg_7[arith_addi_63]; 
          double arith_mulf_69 = (memref_load_27 * memref_load_68); 
          double arith_addf_70 = (arith_addf_67 + arith_mulf_69); 
          func_arg_3[arith_addi_25][arith_addi_63] = arith_addf_70; 
          int arith_addi_71 = (arith_addi_63 + arith_const_18); 
          double memref_load_72 = func_arg_3[arith_addi_25][arith_addi_71]; 
          double memref_load_73 = func_arg_5[arith_addi_71]; 
          double arith_mulf_74 = (memref_load_28 * memref_load_73); 
          double arith_addf_75 = (memref_load_72 + arith_mulf_74); 
          double memref_load_76 = func_arg_7[arith_addi_71]; 
          double arith_mulf_77 = (memref_load_29 * memref_load_76); 
          double arith_addf_78 = (arith_addf_75 + arith_mulf_77); 
          func_arg_3[arith_addi_25][arith_addi_71] = arith_addf_78; 
          int arith_addi_79 = (arith_addi_63 + arith_const_14); 
          double memref_load_80 = func_arg_3[arith_addi_25][arith_addi_79]; 
          double memref_load_81 = func_arg_5[arith_addi_79]; 
          double arith_mulf_82 = (memref_load_30 * memref_load_81); 
          double arith_addf_83 = (memref_load_80 + arith_mulf_82); 
          double memref_load_84 = func_arg_7[arith_addi_79]; 
          double arith_mulf_85 = (memref_load_31 * memref_load_84); 
          double arith_addf_86 = (arith_addf_83 + arith_mulf_85); 
          func_arg_3[arith_addi_25][arith_addi_79] = arith_addf_86; 
          int arith_addi_87 = (arith_addi_63 + arith_const_13); 
          double memref_load_88 = func_arg_3[arith_addi_25][arith_addi_87]; 
          double memref_load_89 = func_arg_5[arith_addi_87]; 
          double arith_mulf_90 = (memref_load_32 * memref_load_89); 
          double arith_addf_91 = (memref_load_88 + arith_mulf_90); 
          double memref_load_92 = func_arg_7[arith_addi_87]; 
          double arith_mulf_93 = (memref_load_33 * memref_load_92); 
          double arith_addf_94 = (arith_addf_91 + arith_mulf_93); 
          func_arg_3[arith_addi_25][arith_addi_87] = arith_addf_94; 
          double memref_load_95 = func_arg_3[arith_addi_34][arith_addi_63]; 
          double memref_load_96 = func_arg_5[arith_addi_63]; 
          double arith_mulf_97 = (memref_load_35 * memref_load_96); 
          double arith_addf_98 = (memref_load_95 + arith_mulf_97); 
          double memref_load_99 = func_arg_7[arith_addi_63]; 
          double arith_mulf_100 = (memref_load_36 * memref_load_99); 
          double arith_addf_101 = (arith_addf_98 + arith_mulf_100); 
          func_arg_3[arith_addi_34][arith_addi_63] = arith_addf_101; 
          int arith_addi_102 = (arith_addi_63 + arith_const_18); 
          double memref_load_103 = func_arg_3[arith_addi_34][arith_addi_102]; 
          double memref_load_104 = func_arg_5[arith_addi_102]; 
          double arith_mulf_105 = (memref_load_37 * memref_load_104); 
          double arith_addf_106 = (memref_load_103 + arith_mulf_105); 
          double memref_load_107 = func_arg_7[arith_addi_102]; 
          double arith_mulf_108 = (memref_load_38 * memref_load_107); 
          double arith_addf_109 = (arith_addf_106 + arith_mulf_108); 
          func_arg_3[arith_addi_34][arith_addi_102] = arith_addf_109; 
          int arith_addi_110 = (arith_addi_63 + arith_const_14); 
          double memref_load_111 = func_arg_3[arith_addi_34][arith_addi_110]; 
          double memref_load_112 = func_arg_5[arith_addi_110]; 
          double arith_mulf_113 = (memref_load_39 * memref_load_112); 
          double arith_addf_114 = (memref_load_111 + arith_mulf_113); 
          double memref_load_115 = func_arg_7[arith_addi_110]; 
          double arith_mulf_116 = (memref_load_40 * memref_load_115); 
          double arith_addf_117 = (arith_addf_114 + arith_mulf_116); 
          func_arg_3[arith_addi_34][arith_addi_110] = arith_addf_117; 
          int arith_addi_118 = (arith_addi_63 + arith_const_13); 
          double memref_load_119 = func_arg_3[arith_addi_34][arith_addi_118]; 
          double memref_load_120 = func_arg_5[arith_addi_118]; 
          double arith_mulf_121 = (memref_load_41 * memref_load_120); 
          double arith_addf_122 = (memref_load_119 + arith_mulf_121); 
          double memref_load_123 = func_arg_7[arith_addi_118]; 
          double arith_mulf_124 = (memref_load_42 * memref_load_123); 
          double arith_addf_125 = (arith_addf_122 + arith_mulf_124); 
          func_arg_3[arith_addi_34][arith_addi_118] = arith_addf_125; 
          double memref_load_126 = func_arg_3[arith_addi_43][arith_addi_63]; 
          double memref_load_127 = func_arg_5[arith_addi_63]; 
          double arith_mulf_128 = (memref_load_44 * memref_load_127); 
          double arith_addf_129 = (memref_load_126 + arith_mulf_128); 
          double memref_load_130 = func_arg_7[arith_addi_63]; 
          double arith_mulf_131 = (memref_load_45 * memref_load_130); 
          double arith_addf_132 = (arith_addf_129 + arith_mulf_131); 
          func_arg_3[arith_addi_43][arith_addi_63] = arith_addf_132; 
          int arith_addi_133 = (arith_addi_63 + arith_const_18); 
          double memref_load_134 = func_arg_3[arith_addi_43][arith_addi_133]; 
          double memref_load_135 = func_arg_5[arith_addi_133]; 
          double arith_mulf_136 = (memref_load_46 * memref_load_135); 
          double arith_addf_137 = (memref_load_134 + arith_mulf_136); 
          double memref_load_138 = func_arg_7[arith_addi_133]; 
          double arith_mulf_139 = (memref_load_47 * memref_load_138); 
          double arith_addf_140 = (arith_addf_137 + arith_mulf_139); 
          func_arg_3[arith_addi_43][arith_addi_133] = arith_addf_140; 
          int arith_addi_141 = (arith_addi_63 + arith_const_14); 
          double memref_load_142 = func_arg_3[arith_addi_43][arith_addi_141]; 
          double memref_load_143 = func_arg_5[arith_addi_141]; 
          double arith_mulf_144 = (memref_load_48 * memref_load_143); 
          double arith_addf_145 = (memref_load_142 + arith_mulf_144); 
          double memref_load_146 = func_arg_7[arith_addi_141]; 
          double arith_mulf_147 = (memref_load_49 * memref_load_146); 
          double arith_addf_148 = (arith_addf_145 + arith_mulf_147); 
          func_arg_3[arith_addi_43][arith_addi_141] = arith_addf_148; 
          int arith_addi_149 = (arith_addi_63 + arith_const_13); 
          double memref_load_150 = func_arg_3[arith_addi_43][arith_addi_149]; 
          double memref_load_151 = func_arg_5[arith_addi_149]; 
          double arith_mulf_152 = (memref_load_50 * memref_load_151); 
          double arith_addf_153 = (memref_load_150 + arith_mulf_152); 
          double memref_load_154 = func_arg_7[arith_addi_149]; 
          double arith_mulf_155 = (memref_load_51 * memref_load_154); 
          double arith_addf_156 = (arith_addf_153 + arith_mulf_155); 
          func_arg_3[arith_addi_43][arith_addi_149] = arith_addf_156; 
          double memref_load_157 = func_arg_3[arith_addi_52][arith_addi_63]; 
          double memref_load_158 = func_arg_5[arith_addi_63]; 
          double arith_mulf_159 = (memref_load_53 * memref_load_158); 
          double arith_addf_160 = (memref_load_157 + arith_mulf_159); 
          double memref_load_161 = func_arg_7[arith_addi_63]; 
          double arith_mulf_162 = (memref_load_54 * memref_load_161); 
          double arith_addf_163 = (arith_addf_160 + arith_mulf_162); 
          func_arg_3[arith_addi_52][arith_addi_63] = arith_addf_163; 
          int arith_addi_164 = (arith_addi_63 + arith_const_18); 
          double memref_load_165 = func_arg_3[arith_addi_52][arith_addi_164]; 
          double memref_load_166 = func_arg_5[arith_addi_164]; 
          double arith_mulf_167 = (memref_load_55 * memref_load_166); 
          double arith_addf_168 = (memref_load_165 + arith_mulf_167); 
          double memref_load_169 = func_arg_7[arith_addi_164]; 
          double arith_mulf_170 = (memref_load_56 * memref_load_169); 
          double arith_addf_171 = (arith_addf_168 + arith_mulf_170); 
          func_arg_3[arith_addi_52][arith_addi_164] = arith_addf_171; 
          int arith_addi_172 = (arith_addi_63 + arith_const_14); 
          double memref_load_173 = func_arg_3[arith_addi_52][arith_addi_172]; 
          double memref_load_174 = func_arg_5[arith_addi_172]; 
          double arith_mulf_175 = (memref_load_57 * memref_load_174); 
          double arith_addf_176 = (memref_load_173 + arith_mulf_175); 
          double memref_load_177 = func_arg_7[arith_addi_172]; 
          double arith_mulf_178 = (memref_load_58 * memref_load_177); 
          double arith_addf_179 = (arith_addf_176 + arith_mulf_178); 
          func_arg_3[arith_addi_52][arith_addi_172] = arith_addf_179; 
          int arith_addi_180 = (arith_addi_63 + arith_const_13); 
          double memref_load_181 = func_arg_3[arith_addi_52][arith_addi_180]; 
          double memref_load_182 = func_arg_5[arith_addi_180]; 
          double arith_mulf_183 = (memref_load_59 * memref_load_182); 
          double arith_addf_184 = (memref_load_181 + arith_mulf_183); 
          double memref_load_185 = func_arg_7[arith_addi_180]; 
          double arith_mulf_186 = (memref_load_60 * memref_load_185); 
          double arith_addf_187 = (arith_addf_184 + arith_mulf_186); 
          func_arg_3[arith_addi_52][arith_addi_180] = arith_addf_187; 
        }
      }
    }
  }
  for (int for_iter_188 = arith_const_16; for_iter_188 < arith_const_12; for_iter_188 += arith_const_18) {
    for (int for_iter_189 = arith_const_16; for_iter_189 < arith_const_18; for_iter_189 += arith_const_18) {
      int arith_addi_190 = (for_iter_188 + for_iter_189); 
      for (int for_iter_191 = arith_const_16; for_iter_191 < arith_const_17; for_iter_191 += arith_const_18) {
        int arith_muli_192 = (for_iter_191 * arith_const_15); 
        for (int for_iter_193 = arith_const_16; for_iter_193 < arith_const_18; for_iter_193 += arith_const_18) {
          int arith_muli_194 = (for_iter_193 * arith_const_15); 
          int arith_addi_195 = (arith_muli_192 + arith_muli_194); 
          double memref_load_196 = func_arg_9[arith_addi_190]; 
          double memref_load_197 = func_arg_3[arith_addi_195][arith_addi_190]; 
          double arith_mulf_198 = (func_arg_2 * memref_load_197); 
          double memref_load_199 = func_arg_10[arith_addi_195]; 
          double arith_mulf_200 = (arith_mulf_198 * memref_load_199); 
          double arith_addf_201 = (memref_load_196 + arith_mulf_200); 
          func_arg_9[arith_addi_190] = arith_addf_201; 
          int arith_addi_202 = (arith_addi_195 + arith_const_18); 
          double memref_load_203 = func_arg_9[arith_addi_190]; 
          double memref_load_204 = func_arg_3[arith_addi_202][arith_addi_190]; 
          double arith_mulf_205 = (func_arg_2 * memref_load_204); 
          double memref_load_206 = func_arg_10[arith_addi_202]; 
          double arith_mulf_207 = (arith_mulf_205 * memref_load_206); 
          double arith_addf_208 = (memref_load_203 + arith_mulf_207); 
          func_arg_9[arith_addi_190] = arith_addf_208; 
          int arith_addi_209 = (arith_addi_195 + arith_const_14); 
          double memref_load_210 = func_arg_9[arith_addi_190]; 
          double memref_load_211 = func_arg_3[arith_addi_209][arith_addi_190]; 
          double arith_mulf_212 = (func_arg_2 * memref_load_211); 
          double memref_load_213 = func_arg_10[arith_addi_209]; 
          double arith_mulf_214 = (arith_mulf_212 * memref_load_213); 
          double arith_addf_215 = (memref_load_210 + arith_mulf_214); 
          func_arg_9[arith_addi_190] = arith_addf_215; 
          int arith_addi_216 = (arith_addi_195 + arith_const_13); 
          double memref_load_217 = func_arg_9[arith_addi_190]; 
          double memref_load_218 = func_arg_3[arith_addi_216][arith_addi_190]; 
          double arith_mulf_219 = (func_arg_2 * memref_load_218); 
          double memref_load_220 = func_arg_10[arith_addi_216]; 
          double arith_mulf_221 = (arith_mulf_219 * memref_load_220); 
          double arith_addf_222 = (memref_load_217 + arith_mulf_221); 
          func_arg_9[arith_addi_190] = arith_addf_222; 
        }
      }
    }
  }
  for (int for_iter_223 = arith_const_16; for_iter_223 < arith_const_17; for_iter_223 += arith_const_18) {
    int arith_muli_224 = (for_iter_223 * arith_const_15); 
    for (int for_iter_225 = arith_const_16; for_iter_225 < arith_const_18; for_iter_225 += arith_const_18) {
      int arith_muli_226 = (for_iter_225 * arith_const_15); 
      int arith_addi_227 = (arith_muli_224 + arith_muli_226); 
      double memref_load_228 = func_arg_9[arith_addi_227]; 
      double memref_load_229 = func_arg_11[arith_addi_227]; 
      double arith_addf_230 = (memref_load_228 + memref_load_229); 
      func_arg_9[arith_addi_227] = arith_addf_230; 
      int arith_addi_231 = (arith_addi_227 + arith_const_18); 
      double memref_load_232 = func_arg_9[arith_addi_231]; 
      double memref_load_233 = func_arg_11[arith_addi_231]; 
      double arith_addf_234 = (memref_load_232 + memref_load_233); 
      func_arg_9[arith_addi_231] = arith_addf_234; 
      int arith_addi_235 = (arith_addi_227 + arith_const_14); 
      double memref_load_236 = func_arg_9[arith_addi_235]; 
      double memref_load_237 = func_arg_11[arith_addi_235]; 
      double arith_addf_238 = (memref_load_236 + memref_load_237); 
      func_arg_9[arith_addi_235] = arith_addf_238; 
      int arith_addi_239 = (arith_addi_227 + arith_const_13); 
      double memref_load_240 = func_arg_9[arith_addi_239]; 
      double memref_load_241 = func_arg_11[arith_addi_239]; 
      double arith_addf_242 = (memref_load_240 + memref_load_241); 
      func_arg_9[arith_addi_239] = arith_addf_242; 
    }
  }
  for (int for_iter_243 = arith_const_16; for_iter_243 < arith_const_12; for_iter_243 += arith_const_18) {
    for (int for_iter_244 = arith_const_16; for_iter_244 < arith_const_18; for_iter_244 += arith_const_18) {
      int arith_addi_245 = (for_iter_243 + for_iter_244); 
      for (int for_iter_246 = arith_const_16; for_iter_246 < arith_const_17; for_iter_246 += arith_const_18) {
        int arith_muli_247 = (for_iter_246 * arith_const_15); 
        for (int for_iter_248 = arith_const_16; for_iter_248 < arith_const_18; for_iter_248 += arith_const_18) {
          int arith_muli_249 = (for_iter_248 * arith_const_15); 
          int arith_addi_250 = (arith_muli_247 + arith_muli_249); 
          double memref_load_251 = func_arg_8[arith_addi_245]; 
          double memref_load_252 = func_arg_3[arith_addi_245][arith_addi_250]; 
          double arith_mulf_253 = (func_arg_1 * memref_load_252); 
          double memref_load_254 = func_arg_9[arith_addi_250]; 
          double arith_mulf_255 = (arith_mulf_253 * memref_load_254); 
          double arith_addf_256 = (memref_load_251 + arith_mulf_255); 
          func_arg_8[arith_addi_245] = arith_addf_256; 
          int arith_addi_257 = (arith_addi_250 + arith_const_18); 
          double memref_load_258 = func_arg_8[arith_addi_245]; 
          double memref_load_259 = func_arg_3[arith_addi_245][arith_addi_257]; 
          double arith_mulf_260 = (func_arg_1 * memref_load_259); 
          double memref_load_261 = func_arg_9[arith_addi_257]; 
          double arith_mulf_262 = (arith_mulf_260 * memref_load_261); 
          double arith_addf_263 = (memref_load_258 + arith_mulf_262); 
          func_arg_8[arith_addi_245] = arith_addf_263; 
          int arith_addi_264 = (arith_addi_250 + arith_const_14); 
          double memref_load_265 = func_arg_8[arith_addi_245]; 
          double memref_load_266 = func_arg_3[arith_addi_245][arith_addi_264]; 
          double arith_mulf_267 = (func_arg_1 * memref_load_266); 
          double memref_load_268 = func_arg_9[arith_addi_264]; 
          double arith_mulf_269 = (arith_mulf_267 * memref_load_268); 
          double arith_addf_270 = (memref_load_265 + arith_mulf_269); 
          func_arg_8[arith_addi_245] = arith_addf_270; 
          int arith_addi_271 = (arith_addi_250 + arith_const_13); 
          double memref_load_272 = func_arg_8[arith_addi_245]; 
          double memref_load_273 = func_arg_3[arith_addi_245][arith_addi_271]; 
          double arith_mulf_274 = (func_arg_1 * memref_load_273); 
          double memref_load_275 = func_arg_9[arith_addi_271]; 
          double arith_mulf_276 = (arith_mulf_274 * memref_load_275); 
          double arith_addf_277 = (memref_load_272 + arith_mulf_276); 
          func_arg_8[arith_addi_245] = arith_addf_277; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}

#pragma pocc-region-end
