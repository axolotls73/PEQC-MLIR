#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 40; 
  int arith_const_13 = -32; 
  int arith_const_14 = 32; 
  int arith_const_15 = 3; 
  int arith_const_16 = 2; 
  int arith_const_17 = 4; 
  int arith_const_18 = 10; 
  int arith_const_19 = 128; 
  int arith_const_20 = 0; 
  int arith_const_21 = 1; 
  for (int for_iter_22 = arith_const_20; for_iter_22 < arith_const_21; for_iter_22 += arith_const_21) {
    int arith_muli_23 = (for_iter_22 * arith_const_19); 
    for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_21; for_iter_24 += arith_const_21) {
      int arith_muli_25 = (for_iter_24 * arith_const_19); 
      for (int for_iter_26 = arith_const_20; for_iter_26 < arith_const_18; for_iter_26 += arith_const_21) {
        int arith_muli_27 = (for_iter_26 * arith_const_17); 
        int arith_addi_28 = (arith_muli_23 + arith_muli_27); 
        double memref_load_29 = func_arg_4[arith_addi_28]; 
        double memref_load_30 = func_arg_6[arith_addi_28]; 
        double memref_load_31 = func_arg_4[arith_addi_28]; 
        double memref_load_32 = func_arg_6[arith_addi_28]; 
        double memref_load_33 = func_arg_4[arith_addi_28]; 
        double memref_load_34 = func_arg_6[arith_addi_28]; 
        double memref_load_35 = func_arg_4[arith_addi_28]; 
        double memref_load_36 = func_arg_6[arith_addi_28]; 
        int arith_addi_37 = (arith_addi_28 + arith_const_21); 
        double memref_load_38 = func_arg_4[arith_addi_37]; 
        double memref_load_39 = func_arg_6[arith_addi_37]; 
        double memref_load_40 = func_arg_4[arith_addi_37]; 
        double memref_load_41 = func_arg_6[arith_addi_37]; 
        double memref_load_42 = func_arg_4[arith_addi_37]; 
        double memref_load_43 = func_arg_6[arith_addi_37]; 
        double memref_load_44 = func_arg_4[arith_addi_37]; 
        double memref_load_45 = func_arg_6[arith_addi_37]; 
        int arith_addi_46 = (arith_addi_28 + arith_const_16); 
        double memref_load_47 = func_arg_4[arith_addi_46]; 
        double memref_load_48 = func_arg_6[arith_addi_46]; 
        double memref_load_49 = func_arg_4[arith_addi_46]; 
        double memref_load_50 = func_arg_6[arith_addi_46]; 
        double memref_load_51 = func_arg_4[arith_addi_46]; 
        double memref_load_52 = func_arg_6[arith_addi_46]; 
        double memref_load_53 = func_arg_4[arith_addi_46]; 
        double memref_load_54 = func_arg_6[arith_addi_46]; 
        int arith_addi_55 = (arith_addi_28 + arith_const_15); 
        double memref_load_56 = func_arg_4[arith_addi_55]; 
        double memref_load_57 = func_arg_6[arith_addi_55]; 
        double memref_load_58 = func_arg_4[arith_addi_55]; 
        double memref_load_59 = func_arg_6[arith_addi_55]; 
        double memref_load_60 = func_arg_4[arith_addi_55]; 
        double memref_load_61 = func_arg_6[arith_addi_55]; 
        double memref_load_62 = func_arg_4[arith_addi_55]; 
        double memref_load_63 = func_arg_6[arith_addi_55]; 
        for (int for_iter_64 = arith_const_20; for_iter_64 < arith_const_18; for_iter_64 += arith_const_21) {
          int arith_muli_65 = (for_iter_64 * arith_const_17); 
          int arith_addi_66 = (arith_muli_25 + arith_muli_65); 
          double memref_load_67 = func_arg_3[arith_addi_28][arith_addi_66]; 
          double memref_load_68 = func_arg_5[arith_addi_66]; 
          double arith_mulf_69 = (memref_load_29 * memref_load_68); 
          double arith_addf_70 = (memref_load_67 + arith_mulf_69); 
          double memref_load_71 = func_arg_7[arith_addi_66]; 
          double arith_mulf_72 = (memref_load_30 * memref_load_71); 
          double arith_addf_73 = (arith_addf_70 + arith_mulf_72); 
          func_arg_3[arith_addi_28][arith_addi_66] = arith_addf_73; 
          int arith_addi_74 = (arith_addi_66 + arith_const_21); 
          double memref_load_75 = func_arg_3[arith_addi_28][arith_addi_74]; 
          double memref_load_76 = func_arg_5[arith_addi_74]; 
          double arith_mulf_77 = (memref_load_31 * memref_load_76); 
          double arith_addf_78 = (memref_load_75 + arith_mulf_77); 
          double memref_load_79 = func_arg_7[arith_addi_74]; 
          double arith_mulf_80 = (memref_load_32 * memref_load_79); 
          double arith_addf_81 = (arith_addf_78 + arith_mulf_80); 
          func_arg_3[arith_addi_28][arith_addi_74] = arith_addf_81; 
          int arith_addi_82 = (arith_addi_66 + arith_const_16); 
          double memref_load_83 = func_arg_3[arith_addi_28][arith_addi_82]; 
          double memref_load_84 = func_arg_5[arith_addi_82]; 
          double arith_mulf_85 = (memref_load_33 * memref_load_84); 
          double arith_addf_86 = (memref_load_83 + arith_mulf_85); 
          double memref_load_87 = func_arg_7[arith_addi_82]; 
          double arith_mulf_88 = (memref_load_34 * memref_load_87); 
          double arith_addf_89 = (arith_addf_86 + arith_mulf_88); 
          func_arg_3[arith_addi_28][arith_addi_82] = arith_addf_89; 
          int arith_addi_90 = (arith_addi_66 + arith_const_15); 
          double memref_load_91 = func_arg_3[arith_addi_28][arith_addi_90]; 
          double memref_load_92 = func_arg_5[arith_addi_90]; 
          double arith_mulf_93 = (memref_load_35 * memref_load_92); 
          double arith_addf_94 = (memref_load_91 + arith_mulf_93); 
          double memref_load_95 = func_arg_7[arith_addi_90]; 
          double arith_mulf_96 = (memref_load_36 * memref_load_95); 
          double arith_addf_97 = (arith_addf_94 + arith_mulf_96); 
          func_arg_3[arith_addi_28][arith_addi_90] = arith_addf_97; 
          double memref_load_98 = func_arg_3[arith_addi_37][arith_addi_66]; 
          double memref_load_99 = func_arg_5[arith_addi_66]; 
          double arith_mulf_100 = (memref_load_38 * memref_load_99); 
          double arith_addf_101 = (memref_load_98 + arith_mulf_100); 
          double memref_load_102 = func_arg_7[arith_addi_66]; 
          double arith_mulf_103 = (memref_load_39 * memref_load_102); 
          double arith_addf_104 = (arith_addf_101 + arith_mulf_103); 
          func_arg_3[arith_addi_37][arith_addi_66] = arith_addf_104; 
          int arith_addi_105 = (arith_addi_66 + arith_const_21); 
          double memref_load_106 = func_arg_3[arith_addi_37][arith_addi_105]; 
          double memref_load_107 = func_arg_5[arith_addi_105]; 
          double arith_mulf_108 = (memref_load_40 * memref_load_107); 
          double arith_addf_109 = (memref_load_106 + arith_mulf_108); 
          double memref_load_110 = func_arg_7[arith_addi_105]; 
          double arith_mulf_111 = (memref_load_41 * memref_load_110); 
          double arith_addf_112 = (arith_addf_109 + arith_mulf_111); 
          func_arg_3[arith_addi_37][arith_addi_105] = arith_addf_112; 
          int arith_addi_113 = (arith_addi_66 + arith_const_16); 
          double memref_load_114 = func_arg_3[arith_addi_37][arith_addi_113]; 
          double memref_load_115 = func_arg_5[arith_addi_113]; 
          double arith_mulf_116 = (memref_load_42 * memref_load_115); 
          double arith_addf_117 = (memref_load_114 + arith_mulf_116); 
          double memref_load_118 = func_arg_7[arith_addi_113]; 
          double arith_mulf_119 = (memref_load_43 * memref_load_118); 
          double arith_addf_120 = (arith_addf_117 + arith_mulf_119); 
          func_arg_3[arith_addi_37][arith_addi_113] = arith_addf_120; 
          int arith_addi_121 = (arith_addi_66 + arith_const_15); 
          double memref_load_122 = func_arg_3[arith_addi_37][arith_addi_121]; 
          double memref_load_123 = func_arg_5[arith_addi_121]; 
          double arith_mulf_124 = (memref_load_44 * memref_load_123); 
          double arith_addf_125 = (memref_load_122 + arith_mulf_124); 
          double memref_load_126 = func_arg_7[arith_addi_121]; 
          double arith_mulf_127 = (memref_load_45 * memref_load_126); 
          double arith_addf_128 = (arith_addf_125 + arith_mulf_127); 
          func_arg_3[arith_addi_37][arith_addi_121] = arith_addf_128; 
          double memref_load_129 = func_arg_3[arith_addi_46][arith_addi_66]; 
          double memref_load_130 = func_arg_5[arith_addi_66]; 
          double arith_mulf_131 = (memref_load_47 * memref_load_130); 
          double arith_addf_132 = (memref_load_129 + arith_mulf_131); 
          double memref_load_133 = func_arg_7[arith_addi_66]; 
          double arith_mulf_134 = (memref_load_48 * memref_load_133); 
          double arith_addf_135 = (arith_addf_132 + arith_mulf_134); 
          func_arg_3[arith_addi_46][arith_addi_66] = arith_addf_135; 
          int arith_addi_136 = (arith_addi_66 + arith_const_21); 
          double memref_load_137 = func_arg_3[arith_addi_46][arith_addi_136]; 
          double memref_load_138 = func_arg_5[arith_addi_136]; 
          double arith_mulf_139 = (memref_load_49 * memref_load_138); 
          double arith_addf_140 = (memref_load_137 + arith_mulf_139); 
          double memref_load_141 = func_arg_7[arith_addi_136]; 
          double arith_mulf_142 = (memref_load_50 * memref_load_141); 
          double arith_addf_143 = (arith_addf_140 + arith_mulf_142); 
          func_arg_3[arith_addi_46][arith_addi_136] = arith_addf_143; 
          int arith_addi_144 = (arith_addi_66 + arith_const_16); 
          double memref_load_145 = func_arg_3[arith_addi_46][arith_addi_144]; 
          double memref_load_146 = func_arg_5[arith_addi_144]; 
          double arith_mulf_147 = (memref_load_51 * memref_load_146); 
          double arith_addf_148 = (memref_load_145 + arith_mulf_147); 
          double memref_load_149 = func_arg_7[arith_addi_144]; 
          double arith_mulf_150 = (memref_load_52 * memref_load_149); 
          double arith_addf_151 = (arith_addf_148 + arith_mulf_150); 
          func_arg_3[arith_addi_46][arith_addi_144] = arith_addf_151; 
          int arith_addi_152 = (arith_addi_66 + arith_const_15); 
          double memref_load_153 = func_arg_3[arith_addi_46][arith_addi_152]; 
          double memref_load_154 = func_arg_5[arith_addi_152]; 
          double arith_mulf_155 = (memref_load_53 * memref_load_154); 
          double arith_addf_156 = (memref_load_153 + arith_mulf_155); 
          double memref_load_157 = func_arg_7[arith_addi_152]; 
          double arith_mulf_158 = (memref_load_54 * memref_load_157); 
          double arith_addf_159 = (arith_addf_156 + arith_mulf_158); 
          func_arg_3[arith_addi_46][arith_addi_152] = arith_addf_159; 
          double memref_load_160 = func_arg_3[arith_addi_55][arith_addi_66]; 
          double memref_load_161 = func_arg_5[arith_addi_66]; 
          double arith_mulf_162 = (memref_load_56 * memref_load_161); 
          double arith_addf_163 = (memref_load_160 + arith_mulf_162); 
          double memref_load_164 = func_arg_7[arith_addi_66]; 
          double arith_mulf_165 = (memref_load_57 * memref_load_164); 
          double arith_addf_166 = (arith_addf_163 + arith_mulf_165); 
          func_arg_3[arith_addi_55][arith_addi_66] = arith_addf_166; 
          int arith_addi_167 = (arith_addi_66 + arith_const_21); 
          double memref_load_168 = func_arg_3[arith_addi_55][arith_addi_167]; 
          double memref_load_169 = func_arg_5[arith_addi_167]; 
          double arith_mulf_170 = (memref_load_58 * memref_load_169); 
          double arith_addf_171 = (memref_load_168 + arith_mulf_170); 
          double memref_load_172 = func_arg_7[arith_addi_167]; 
          double arith_mulf_173 = (memref_load_59 * memref_load_172); 
          double arith_addf_174 = (arith_addf_171 + arith_mulf_173); 
          func_arg_3[arith_addi_55][arith_addi_167] = arith_addf_174; 
          int arith_addi_175 = (arith_addi_66 + arith_const_16); 
          double memref_load_176 = func_arg_3[arith_addi_55][arith_addi_175]; 
          double memref_load_177 = func_arg_5[arith_addi_175]; 
          double arith_mulf_178 = (memref_load_60 * memref_load_177); 
          double arith_addf_179 = (memref_load_176 + arith_mulf_178); 
          double memref_load_180 = func_arg_7[arith_addi_175]; 
          double arith_mulf_181 = (memref_load_61 * memref_load_180); 
          double arith_addf_182 = (arith_addf_179 + arith_mulf_181); 
          func_arg_3[arith_addi_55][arith_addi_175] = arith_addf_182; 
          int arith_addi_183 = (arith_addi_66 + arith_const_15); 
          double memref_load_184 = func_arg_3[arith_addi_55][arith_addi_183]; 
          double memref_load_185 = func_arg_5[arith_addi_183]; 
          double arith_mulf_186 = (memref_load_62 * memref_load_185); 
          double arith_addf_187 = (memref_load_184 + arith_mulf_186); 
          double memref_load_188 = func_arg_7[arith_addi_183]; 
          double arith_mulf_189 = (memref_load_63 * memref_load_188); 
          double arith_addf_190 = (arith_addf_187 + arith_mulf_189); 
          func_arg_3[arith_addi_55][arith_addi_183] = arith_addf_190; 
        }
      }
    }
  }
  for (int for_iter_191 = arith_const_20; for_iter_191 < arith_const_16; for_iter_191 += arith_const_21) {
    int arith_muli_192 = (for_iter_191 * arith_const_14); 
    for (int for_iter_193 = arith_const_20; for_iter_193 < arith_const_21; for_iter_193 += arith_const_21) {
      int arith_muli_194 = (for_iter_193 * arith_const_19); 
      int arith_muli_195 = (for_iter_191 * arith_const_13); 
      int arith_addi_196 = (arith_muli_195 + arith_const_12); 
      int arith_minsi_197 = min(arith_addi_196, arith_const_14); 
      for (int for_iter_198 = arith_const_20; for_iter_198 < arith_minsi_197; for_iter_198 += arith_const_21) {
        int arith_addi_199 = (arith_muli_192 + for_iter_198); 
        for (int for_iter_200 = arith_const_20; for_iter_200 < arith_const_18; for_iter_200 += arith_const_21) {
          int arith_muli_201 = (for_iter_200 * arith_const_17); 
          int arith_addi_202 = (arith_muli_194 + arith_muli_201); 
          double memref_load_203 = func_arg_9[arith_addi_199]; 
          double memref_load_204 = func_arg_3[arith_addi_202][arith_addi_199]; 
          double arith_mulf_205 = (func_arg_2 * memref_load_204); 
          double memref_load_206 = func_arg_10[arith_addi_202]; 
          double arith_mulf_207 = (arith_mulf_205 * memref_load_206); 
          double arith_addf_208 = (memref_load_203 + arith_mulf_207); 
          func_arg_9[arith_addi_199] = arith_addf_208; 
          int arith_addi_209 = (arith_addi_202 + arith_const_21); 
          double memref_load_210 = func_arg_9[arith_addi_199]; 
          double memref_load_211 = func_arg_3[arith_addi_209][arith_addi_199]; 
          double arith_mulf_212 = (func_arg_2 * memref_load_211); 
          double memref_load_213 = func_arg_10[arith_addi_209]; 
          double arith_mulf_214 = (arith_mulf_212 * memref_load_213); 
          double arith_addf_215 = (memref_load_210 + arith_mulf_214); 
          func_arg_9[arith_addi_199] = arith_addf_215; 
          int arith_addi_216 = (arith_addi_202 + arith_const_16); 
          double memref_load_217 = func_arg_9[arith_addi_199]; 
          double memref_load_218 = func_arg_3[arith_addi_216][arith_addi_199]; 
          double arith_mulf_219 = (func_arg_2 * memref_load_218); 
          double memref_load_220 = func_arg_10[arith_addi_216]; 
          double arith_mulf_221 = (arith_mulf_219 * memref_load_220); 
          double arith_addf_222 = (memref_load_217 + arith_mulf_221); 
          func_arg_9[arith_addi_199] = arith_addf_222; 
          int arith_addi_223 = (arith_addi_202 + arith_const_15); 
          double memref_load_224 = func_arg_9[arith_addi_199]; 
          double memref_load_225 = func_arg_3[arith_addi_223][arith_addi_199]; 
          double arith_mulf_226 = (func_arg_2 * memref_load_225); 
          double memref_load_227 = func_arg_10[arith_addi_223]; 
          double arith_mulf_228 = (arith_mulf_226 * memref_load_227); 
          double arith_addf_229 = (memref_load_224 + arith_mulf_228); 
          func_arg_9[arith_addi_199] = arith_addf_229; 
        }
      }
    }
  }
  for (int for_iter_230 = arith_const_20; for_iter_230 < arith_const_21; for_iter_230 += arith_const_21) {
    int arith_muli_231 = (for_iter_230 * arith_const_19); 
    for (int for_iter_232 = arith_const_20; for_iter_232 < arith_const_18; for_iter_232 += arith_const_21) {
      int arith_muli_233 = (for_iter_232 * arith_const_17); 
      int arith_addi_234 = (arith_muli_231 + arith_muli_233); 
      double memref_load_235 = func_arg_9[arith_addi_234]; 
      double memref_load_236 = func_arg_11[arith_addi_234]; 
      double arith_addf_237 = (memref_load_235 + memref_load_236); 
      func_arg_9[arith_addi_234] = arith_addf_237; 
      int arith_addi_238 = (arith_addi_234 + arith_const_21); 
      double memref_load_239 = func_arg_9[arith_addi_238]; 
      double memref_load_240 = func_arg_11[arith_addi_238]; 
      double arith_addf_241 = (memref_load_239 + memref_load_240); 
      func_arg_9[arith_addi_238] = arith_addf_241; 
      int arith_addi_242 = (arith_addi_234 + arith_const_16); 
      double memref_load_243 = func_arg_9[arith_addi_242]; 
      double memref_load_244 = func_arg_11[arith_addi_242]; 
      double arith_addf_245 = (memref_load_243 + memref_load_244); 
      func_arg_9[arith_addi_242] = arith_addf_245; 
      int arith_addi_246 = (arith_addi_234 + arith_const_15); 
      double memref_load_247 = func_arg_9[arith_addi_246]; 
      double memref_load_248 = func_arg_11[arith_addi_246]; 
      double arith_addf_249 = (memref_load_247 + memref_load_248); 
      func_arg_9[arith_addi_246] = arith_addf_249; 
    }
  }
  for (int for_iter_250 = arith_const_20; for_iter_250 < arith_const_16; for_iter_250 += arith_const_21) {
    int arith_muli_251 = (for_iter_250 * arith_const_14); 
    for (int for_iter_252 = arith_const_20; for_iter_252 < arith_const_21; for_iter_252 += arith_const_21) {
      int arith_muli_253 = (for_iter_252 * arith_const_19); 
      int arith_muli_254 = (for_iter_250 * arith_const_13); 
      int arith_addi_255 = (arith_muli_254 + arith_const_12); 
      int arith_minsi_256 = min(arith_addi_255, arith_const_14); 
      for (int for_iter_257 = arith_const_20; for_iter_257 < arith_minsi_256; for_iter_257 += arith_const_21) {
        int arith_addi_258 = (arith_muli_251 + for_iter_257); 
        for (int for_iter_259 = arith_const_20; for_iter_259 < arith_const_18; for_iter_259 += arith_const_21) {
          int arith_muli_260 = (for_iter_259 * arith_const_17); 
          int arith_addi_261 = (arith_muli_253 + arith_muli_260); 
          double memref_load_262 = func_arg_8[arith_addi_258]; 
          double memref_load_263 = func_arg_3[arith_addi_258][arith_addi_261]; 
          double arith_mulf_264 = (func_arg_1 * memref_load_263); 
          double memref_load_265 = func_arg_9[arith_addi_261]; 
          double arith_mulf_266 = (arith_mulf_264 * memref_load_265); 
          double arith_addf_267 = (memref_load_262 + arith_mulf_266); 
          func_arg_8[arith_addi_258] = arith_addf_267; 
          int arith_addi_268 = (arith_addi_261 + arith_const_21); 
          double memref_load_269 = func_arg_8[arith_addi_258]; 
          double memref_load_270 = func_arg_3[arith_addi_258][arith_addi_268]; 
          double arith_mulf_271 = (func_arg_1 * memref_load_270); 
          double memref_load_272 = func_arg_9[arith_addi_268]; 
          double arith_mulf_273 = (arith_mulf_271 * memref_load_272); 
          double arith_addf_274 = (memref_load_269 + arith_mulf_273); 
          func_arg_8[arith_addi_258] = arith_addf_274; 
          int arith_addi_275 = (arith_addi_261 + arith_const_16); 
          double memref_load_276 = func_arg_8[arith_addi_258]; 
          double memref_load_277 = func_arg_3[arith_addi_258][arith_addi_275]; 
          double arith_mulf_278 = (func_arg_1 * memref_load_277); 
          double memref_load_279 = func_arg_9[arith_addi_275]; 
          double arith_mulf_280 = (arith_mulf_278 * memref_load_279); 
          double arith_addf_281 = (memref_load_276 + arith_mulf_280); 
          func_arg_8[arith_addi_258] = arith_addf_281; 
          int arith_addi_282 = (arith_addi_261 + arith_const_15); 
          double memref_load_283 = func_arg_8[arith_addi_258]; 
          double memref_load_284 = func_arg_3[arith_addi_258][arith_addi_282]; 
          double arith_mulf_285 = (func_arg_1 * memref_load_284); 
          double memref_load_286 = func_arg_9[arith_addi_282]; 
          double arith_mulf_287 = (arith_mulf_285 * memref_load_286); 
          double arith_addf_288 = (memref_load_283 + arith_mulf_287); 
          func_arg_8[arith_addi_258] = arith_addf_288; 
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
