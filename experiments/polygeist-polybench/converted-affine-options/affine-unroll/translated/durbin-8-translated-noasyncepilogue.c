#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -37; 
  int arith_const_4 = 38; 
  int arith_const_5 = 37; 
  int arith_const_6 = -38; 
  int arith_const_7 = 39; 
  int arith_const_8 = -2; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = -1; 
  int arith_const_13 = 40; 
  int arith_const_14 = 1; 
  int arith_const_15 = 0; 
  double arith_const_16 = 0.000000; 
  double arith_const_17 = 1.000000; 
  double _18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  double* memref_alloca_23; 
  double* memref_alloca_24; 
  double memref_load_25 = func_arg_1[arith_const_15]; 
  double arith_negf_26 = -(memref_load_25); 
  func_arg_2[arith_const_15] = arith_negf_26; 
  memref_alloca_23[0] = _18; 
  double memref_load_27 = func_arg_1[arith_const_15]; 
  double arith_negf_28 = -(memref_load_27); 
  memref_alloca_23[0] = arith_negf_28; 
  memref_alloca_22[0] = _18; 
  memref_alloca_22[0] = arith_const_17; 
  memref_alloca_20[0] = _18; 
  for (int for_iter_29 = arith_const_14; for_iter_29 < arith_const_13; for_iter_29 += arith_const_14) {
    memref_alloca_20[0] = arith_const_16; 
    double memref_load_30 = memref_alloca_20[0]; 
    int arith_addi_31 = (for_iter_29 + arith_const_12); 
    double memref_load_32 = func_arg_1[arith_addi_31]; 
    double memref_load_33 = func_arg_2[arith_const_15]; 
    double arith_mulf_34 = (memref_load_32 * memref_load_33); 
    double arith_addf_35 = (memref_load_30 + arith_mulf_34); 
    memref_alloca_20[0] = arith_addf_35; 
    double memref_load_36 = memref_alloca_22[0]; 
    double memref_load_37 = memref_alloca_23[0]; 
    double arith_mulf_38 = (memref_load_37 * memref_load_37); 
    double arith_subf_39 = (memref_load_36 - arith_mulf_38); 
    double memref_load_40 = memref_alloca_22[0]; 
    double arith_mulf_41 = (arith_subf_39 * memref_load_40); 
    memref_alloca_22[0] = arith_mulf_41; 
    int arith_addi_42 = (for_iter_29 + arith_const_12); 
    int arith_cmpi_43 = (arith_addi_42 < arith_const_15); 
    int arith_subi_44 = (arith_const_12 - arith_addi_42); 
    int arith_select_45 = (arith_cmpi_43 ? arith_subi_44 : arith_addi_42); 
    int arith_divi_46 = (arith_select_45 / arith_const_11); 
    int arith_subi_47 = (arith_const_12 - arith_divi_46); 
    int arith_select_48 = (arith_cmpi_43 ? arith_subi_47 : arith_divi_46); 
    int arith_muli_49 = (arith_select_48 * arith_const_11); 
    int arith_addi_50 = (arith_muli_49 + arith_const_14); 
    for (int for_iter_51 = arith_const_14; for_iter_51 < arith_addi_50; for_iter_51 += arith_const_11) {
      double memref_load_52 = memref_alloca_20[0]; 
      int arith_muli_53 = (for_iter_51 * arith_const_12); 
      int arith_addi_54 = (for_iter_29 + arith_muli_53); 
      int arith_addi_55 = (arith_addi_54 + arith_const_12); 
      double memref_load_56 = func_arg_1[arith_addi_55]; 
      double memref_load_57 = func_arg_2[for_iter_51]; 
      double arith_mulf_58 = (memref_load_56 * memref_load_57); 
      double arith_addf_59 = (memref_load_52 + arith_mulf_58); 
      memref_alloca_20[0] = arith_addf_59; 
      int arith_addi_60 = (for_iter_51 + arith_const_14); 
      double memref_load_61 = memref_alloca_20[0]; 
      int arith_muli_62 = (arith_addi_60 * arith_const_12); 
      int arith_addi_63 = (for_iter_29 + arith_muli_62); 
      int arith_addi_64 = (arith_addi_63 + arith_const_12); 
      double memref_load_65 = func_arg_1[arith_addi_64]; 
      double memref_load_66 = func_arg_2[arith_addi_60]; 
      double arith_mulf_67 = (memref_load_65 * memref_load_66); 
      double arith_addf_68 = (memref_load_61 + arith_mulf_67); 
      memref_alloca_20[0] = arith_addf_68; 
      int arith_addi_69 = (for_iter_51 + arith_const_10); 
      double memref_load_70 = memref_alloca_20[0]; 
      int arith_muli_71 = (arith_addi_69 * arith_const_12); 
      int arith_addi_72 = (for_iter_29 + arith_muli_71); 
      int arith_addi_73 = (arith_addi_72 + arith_const_12); 
      double memref_load_74 = func_arg_1[arith_addi_73]; 
      double memref_load_75 = func_arg_2[arith_addi_69]; 
      double arith_mulf_76 = (memref_load_74 * memref_load_75); 
      double arith_addf_77 = (memref_load_70 + arith_mulf_76); 
      memref_alloca_20[0] = arith_addf_77; 
      int arith_addi_78 = (for_iter_51 + arith_const_9); 
      double memref_load_79 = memref_alloca_20[0]; 
      int arith_muli_80 = (arith_addi_78 * arith_const_12); 
      int arith_addi_81 = (for_iter_29 + arith_muli_80); 
      int arith_addi_82 = (arith_addi_81 + arith_const_12); 
      double memref_load_83 = func_arg_1[arith_addi_82]; 
      double memref_load_84 = func_arg_2[arith_addi_78]; 
      double arith_mulf_85 = (memref_load_83 * memref_load_84); 
      double arith_addf_86 = (memref_load_79 + arith_mulf_85); 
      memref_alloca_20[0] = arith_addf_86; 
    }
    int arith_addi_87 = (for_iter_29 + arith_const_12); 
    int arith_cmpi_88 = (arith_addi_87 < arith_const_15); 
    int arith_subi_89 = (arith_const_12 - arith_addi_87); 
    int arith_select_90 = (arith_cmpi_88 ? arith_subi_89 : arith_addi_87); 
    int arith_divi_91 = (arith_select_90 / arith_const_11); 
    int arith_subi_92 = (arith_const_12 - arith_divi_91); 
    int arith_select_93 = (arith_cmpi_88 ? arith_subi_92 : arith_divi_91); 
    int arith_muli_94 = (arith_select_93 * arith_const_11); 
    int arith_addi_95 = (arith_muli_94 + arith_const_14); 
    for (int for_iter_96 = arith_addi_95; for_iter_96 < for_iter_29; for_iter_96 += arith_const_14) {
      double memref_load_97 = memref_alloca_20[0]; 
      int arith_muli_98 = (for_iter_96 * arith_const_12); 
      int arith_addi_99 = (for_iter_29 + arith_muli_98); 
      int arith_addi_100 = (arith_addi_99 + arith_const_12); 
      double memref_load_101 = func_arg_1[arith_addi_100]; 
      double memref_load_102 = func_arg_2[for_iter_96]; 
      double arith_mulf_103 = (memref_load_101 * memref_load_102); 
      double arith_addf_104 = (memref_load_97 + arith_mulf_103); 
      memref_alloca_20[0] = arith_addf_104; 
    }
    int arith_addi_105 = (for_iter_29 + arith_const_12); 
    int arith_cmpi_106 = (arith_addi_105 == arith_const_15); 
    if (arith_cmpi_106) {
      double memref_load_107 = func_arg_1[arith_const_14]; 
      double memref_load_108 = memref_alloca_20[0]; 
      double arith_addf_109 = (memref_load_107 + memref_load_108); 
      double arith_negf_110 = -(arith_addf_109); 
      double memref_load_111 = memref_alloca_22[0]; 
      double arith_divf_112 = (arith_negf_110 / memref_load_111); 
      memref_alloca_19[arith_const_15] = arith_divf_112; 
      double memref_load_113 = func_arg_2[arith_const_15]; 
      double memref_load_114 = memref_alloca_19[arith_const_15]; 
      double memref_load_115 = func_arg_2[arith_const_15]; 
      double arith_mulf_116 = (memref_load_114 * memref_load_115); 
      double arith_addf_117 = (memref_load_113 + arith_mulf_116); 
      memref_alloca_21[arith_const_15] = arith_addf_117; 
      double memref_load_118 = memref_alloca_21[arith_const_15]; 
      func_arg_2[arith_const_15] = memref_load_118; 
      double memref_load_119 = memref_alloca_19[arith_const_15]; 
      memref_alloca_24[arith_const_15] = memref_load_119; 
      memref_alloca_23[0] = memref_load_119; 
      double memref_load_120 = memref_alloca_24[arith_const_15]; 
      func_arg_2[arith_const_14] = memref_load_120; 
    }
    int arith_addi_121 = (for_iter_29 + arith_const_8); 
    int arith_cmpi_122 = (arith_addi_121 >= arith_const_15); 
    if (arith_cmpi_122) {
      double memref_load_123 = func_arg_1[for_iter_29]; 
      double memref_load_124 = memref_alloca_20[0]; 
      double arith_addf_125 = (memref_load_123 + memref_load_124); 
      double arith_negf_126 = -(arith_addf_125); 
      double memref_load_127 = memref_alloca_22[0]; 
      double arith_divf_128 = (arith_negf_126 / memref_load_127); 
      memref_alloca_19[arith_const_15] = arith_divf_128; 
      double memref_load_129 = func_arg_2[arith_const_15]; 
      double memref_load_130 = memref_alloca_19[arith_const_15]; 
      int arith_addi_131 = (for_iter_29 + arith_const_12); 
      double memref_load_132 = func_arg_2[arith_addi_131]; 
      double arith_mulf_133 = (memref_load_130 * memref_load_132); 
      double arith_addf_134 = (memref_load_129 + arith_mulf_133); 
      memref_alloca_21[arith_const_15] = arith_addf_134; 
      double memref_load_135 = memref_alloca_19[arith_const_15]; 
      memref_alloca_24[arith_const_15] = memref_load_135; 
      memref_alloca_23[0] = memref_load_135; 
      double memref_load_136 = memref_alloca_24[arith_const_15]; 
      func_arg_2[for_iter_29] = memref_load_136; 
    }
    int arith_addi_137 = (for_iter_29 + arith_const_8); 
    int arith_cmpi_138 = (arith_addi_137 < arith_const_15); 
    int arith_subi_139 = (arith_const_12 - arith_addi_137); 
    int arith_select_140 = (arith_cmpi_138 ? arith_subi_139 : arith_addi_137); 
    int arith_divi_141 = (arith_select_140 / arith_const_11); 
    int arith_subi_142 = (arith_const_12 - arith_divi_141); 
    int arith_select_143 = (arith_cmpi_138 ? arith_subi_142 : arith_divi_141); 
    int arith_muli_144 = (arith_select_143 * arith_const_11); 
    int arith_addi_145 = (arith_muli_144 + arith_const_7); 
    for (int for_iter_146 = arith_const_7; for_iter_146 < arith_addi_145; for_iter_146 += arith_const_11) {
      int arith_addi_147 = (for_iter_146 + arith_const_6); 
      double memref_load_148 = func_arg_2[arith_addi_147]; 
      double memref_load_149 = memref_alloca_19[arith_const_15]; 
      int arith_muli_150 = (for_iter_146 * arith_const_12); 
      int arith_addi_151 = (arith_muli_150 + for_iter_29); 
      int arith_addi_152 = (arith_addi_151 + arith_const_5); 
      double memref_load_153 = func_arg_2[arith_addi_152]; 
      double arith_mulf_154 = (memref_load_149 * memref_load_153); 
      double arith_addf_155 = (memref_load_148 + arith_mulf_154); 
      int arith_addi_156 = (for_iter_146 + arith_const_6); 
      memref_alloca_21[arith_addi_156] = arith_addf_155; 
      int arith_addi_157 = (for_iter_146 + arith_const_14); 
      int arith_addi_158 = (arith_addi_157 + arith_const_6); 
      double memref_load_159 = func_arg_2[arith_addi_158]; 
      double memref_load_160 = memref_alloca_19[arith_const_15]; 
      int arith_muli_161 = (arith_addi_157 * arith_const_12); 
      int arith_addi_162 = (arith_muli_161 + for_iter_29); 
      int arith_addi_163 = (arith_addi_162 + arith_const_5); 
      double memref_load_164 = func_arg_2[arith_addi_163]; 
      double arith_mulf_165 = (memref_load_160 * memref_load_164); 
      double arith_addf_166 = (memref_load_159 + arith_mulf_165); 
      int arith_addi_167 = (arith_addi_157 + arith_const_6); 
      memref_alloca_21[arith_addi_167] = arith_addf_166; 
      int arith_addi_168 = (for_iter_146 + arith_const_10); 
      int arith_addi_169 = (arith_addi_168 + arith_const_6); 
      double memref_load_170 = func_arg_2[arith_addi_169]; 
      double memref_load_171 = memref_alloca_19[arith_const_15]; 
      int arith_muli_172 = (arith_addi_168 * arith_const_12); 
      int arith_addi_173 = (arith_muli_172 + for_iter_29); 
      int arith_addi_174 = (arith_addi_173 + arith_const_5); 
      double memref_load_175 = func_arg_2[arith_addi_174]; 
      double arith_mulf_176 = (memref_load_171 * memref_load_175); 
      double arith_addf_177 = (memref_load_170 + arith_mulf_176); 
      int arith_addi_178 = (arith_addi_168 + arith_const_6); 
      memref_alloca_21[arith_addi_178] = arith_addf_177; 
      int arith_addi_179 = (for_iter_146 + arith_const_9); 
      int arith_addi_180 = (arith_addi_179 + arith_const_6); 
      double memref_load_181 = func_arg_2[arith_addi_180]; 
      double memref_load_182 = memref_alloca_19[arith_const_15]; 
      int arith_muli_183 = (arith_addi_179 * arith_const_12); 
      int arith_addi_184 = (arith_muli_183 + for_iter_29); 
      int arith_addi_185 = (arith_addi_184 + arith_const_5); 
      double memref_load_186 = func_arg_2[arith_addi_185]; 
      double arith_mulf_187 = (memref_load_182 * memref_load_186); 
      double arith_addf_188 = (memref_load_181 + arith_mulf_187); 
      int arith_addi_189 = (arith_addi_179 + arith_const_6); 
      memref_alloca_21[arith_addi_189] = arith_addf_188; 
    }
    int arith_addi_190 = (for_iter_29 + arith_const_8); 
    int arith_cmpi_191 = (arith_addi_190 < arith_const_15); 
    int arith_subi_192 = (arith_const_12 - arith_addi_190); 
    int arith_select_193 = (arith_cmpi_191 ? arith_subi_192 : arith_addi_190); 
    int arith_divi_194 = (arith_select_193 / arith_const_11); 
    int arith_subi_195 = (arith_const_12 - arith_divi_194); 
    int arith_select_196 = (arith_cmpi_191 ? arith_subi_195 : arith_divi_194); 
    int arith_muli_197 = (arith_select_196 * arith_const_11); 
    int arith_addi_198 = (arith_muli_197 + arith_const_7); 
    int arith_addi_199 = (for_iter_29 + arith_const_5); 
    for (int for_iter_200 = arith_addi_198; for_iter_200 < arith_addi_199; for_iter_200 += arith_const_14) {
      int arith_addi_201 = (for_iter_200 + arith_const_6); 
      double memref_load_202 = func_arg_2[arith_addi_201]; 
      double memref_load_203 = memref_alloca_19[arith_const_15]; 
      int arith_muli_204 = (for_iter_200 * arith_const_12); 
      int arith_addi_205 = (arith_muli_204 + for_iter_29); 
      int arith_addi_206 = (arith_addi_205 + arith_const_5); 
      double memref_load_207 = func_arg_2[arith_addi_206]; 
      double arith_mulf_208 = (memref_load_203 * memref_load_207); 
      double arith_addf_209 = (memref_load_202 + arith_mulf_208); 
      int arith_addi_210 = (for_iter_200 + arith_const_6); 
      memref_alloca_21[arith_addi_210] = arith_addf_209; 
    }
    int arith_addi_211 = (for_iter_29 + arith_const_8); 
    int arith_cmpi_212 = (arith_addi_211 >= arith_const_15); 
    if (arith_cmpi_212) {
      int arith_addi_213 = (for_iter_29 + arith_const_12); 
      double memref_load_214 = func_arg_2[arith_addi_213]; 
      double memref_load_215 = memref_alloca_19[arith_const_15]; 
      double memref_load_216 = func_arg_2[arith_const_15]; 
      double arith_mulf_217 = (memref_load_215 * memref_load_216); 
      double arith_addf_218 = (memref_load_214 + arith_mulf_217); 
      int arith_addi_219 = (for_iter_29 + arith_const_12); 
      memref_alloca_21[arith_addi_219] = arith_addf_218; 
      double memref_load_220 = memref_alloca_21[arith_const_15]; 
      func_arg_2[arith_const_15] = memref_load_220; 
    }
    int arith_addi_221 = (for_iter_29 + arith_const_4); 
    int arith_addi_222 = (for_iter_29 + arith_const_12); 
    int arith_cmpi_223 = (arith_addi_222 < arith_const_15); 
    int arith_subi_224 = (arith_const_12 - arith_addi_222); 
    int arith_select_225 = (arith_cmpi_223 ? arith_subi_224 : arith_addi_222); 
    int arith_divi_226 = (arith_select_225 / arith_const_11); 
    int arith_subi_227 = (arith_const_12 - arith_divi_226); 
    int arith_select_228 = (arith_cmpi_223 ? arith_subi_227 : arith_divi_226); 
    int arith_muli_229 = (arith_select_228 * arith_const_11); 
    int arith_addi_230 = (for_iter_29 + arith_muli_229); 
    int arith_addi_231 = (arith_addi_230 + arith_const_4); 
    for (int for_iter_232 = arith_addi_221; for_iter_232 < arith_addi_231; for_iter_232 += arith_const_11) {
      int arith_muli_233 = (for_iter_29 * arith_const_12); 
      int arith_addi_234 = (arith_muli_233 + for_iter_232); 
      int arith_addi_235 = (arith_addi_234 + arith_const_3); 
      double memref_load_236 = memref_alloca_21[arith_addi_235]; 
      int arith_muli_237 = (for_iter_29 * arith_const_12); 
      int arith_addi_238 = (arith_muli_237 + for_iter_232); 
      int arith_addi_239 = (arith_addi_238 + arith_const_3); 
      func_arg_2[arith_addi_239] = memref_load_236; 
      int arith_addi_240 = (for_iter_232 + arith_const_14); 
      int arith_muli_241 = (for_iter_29 * arith_const_12); 
      int arith_addi_242 = (arith_muli_241 + arith_addi_240); 
      int arith_addi_243 = (arith_addi_242 + arith_const_3); 
      double memref_load_244 = memref_alloca_21[arith_addi_243]; 
      int arith_muli_245 = (for_iter_29 * arith_const_12); 
      int arith_addi_246 = (arith_muli_245 + arith_addi_240); 
      int arith_addi_247 = (arith_addi_246 + arith_const_3); 
      func_arg_2[arith_addi_247] = memref_load_244; 
      int arith_addi_248 = (for_iter_232 + arith_const_10); 
      int arith_muli_249 = (for_iter_29 * arith_const_12); 
      int arith_addi_250 = (arith_muli_249 + arith_addi_248); 
      int arith_addi_251 = (arith_addi_250 + arith_const_3); 
      double memref_load_252 = memref_alloca_21[arith_addi_251]; 
      int arith_muli_253 = (for_iter_29 * arith_const_12); 
      int arith_addi_254 = (arith_muli_253 + arith_addi_248); 
      int arith_addi_255 = (arith_addi_254 + arith_const_3); 
      func_arg_2[arith_addi_255] = memref_load_252; 
      int arith_addi_256 = (for_iter_232 + arith_const_9); 
      int arith_muli_257 = (for_iter_29 * arith_const_12); 
      int arith_addi_258 = (arith_muli_257 + arith_addi_256); 
      int arith_addi_259 = (arith_addi_258 + arith_const_3); 
      double memref_load_260 = memref_alloca_21[arith_addi_259]; 
      int arith_muli_261 = (for_iter_29 * arith_const_12); 
      int arith_addi_262 = (arith_muli_261 + arith_addi_256); 
      int arith_addi_263 = (arith_addi_262 + arith_const_3); 
      func_arg_2[arith_addi_263] = memref_load_260; 
    }
    int arith_addi_264 = (for_iter_29 + arith_const_12); 
    int arith_cmpi_265 = (arith_addi_264 < arith_const_15); 
    int arith_subi_266 = (arith_const_12 - arith_addi_264); 
    int arith_select_267 = (arith_cmpi_265 ? arith_subi_266 : arith_addi_264); 
    int arith_divi_268 = (arith_select_267 / arith_const_11); 
    int arith_subi_269 = (arith_const_12 - arith_divi_268); 
    int arith_select_270 = (arith_cmpi_265 ? arith_subi_269 : arith_divi_268); 
    int arith_muli_271 = (arith_select_270 * arith_const_11); 
    int arith_addi_272 = (for_iter_29 + arith_muli_271); 
    int arith_addi_273 = (arith_addi_272 + arith_const_4); 
    int arith_muli_274 = (for_iter_29 * arith_const_10); 
    int arith_addi_275 = (arith_muli_274 + arith_const_5); 
    for (int for_iter_276 = arith_addi_273; for_iter_276 < arith_addi_275; for_iter_276 += arith_const_14) {
      int arith_muli_277 = (for_iter_29 * arith_const_12); 
      int arith_addi_278 = (arith_muli_277 + for_iter_276); 
      int arith_addi_279 = (arith_addi_278 + arith_const_3); 
      double memref_load_280 = memref_alloca_21[arith_addi_279]; 
      int arith_muli_281 = (for_iter_29 * arith_const_12); 
      int arith_addi_282 = (arith_muli_281 + for_iter_276); 
      int arith_addi_283 = (arith_addi_282 + arith_const_3); 
      func_arg_2[arith_addi_283] = memref_load_280; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* r;
  double* y;


  kernel_durbin(n, r, y);

}

#pragma pocc-region-end
