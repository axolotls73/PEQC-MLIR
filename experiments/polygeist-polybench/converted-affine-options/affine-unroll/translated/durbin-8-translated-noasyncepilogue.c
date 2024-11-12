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
  double* memref_alloca_18; 
  double* memref_alloca_19; 
  double* memref_alloca_20; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  double* memref_alloca_23; 
  double memref_load_24 = func_arg_1[arith_const_15]; 
  double arith_negf_25 = -(memref_load_24); 
  func_arg_2[arith_const_15] = arith_negf_25; 
  double _26; 
  memref_alloca_22[0] = _26; 
  double memref_load_27 = func_arg_1[arith_const_15]; 
  double arith_negf_28 = -(memref_load_27); 
  memref_alloca_22[0] = arith_negf_28; 
  double _29; 
  memref_alloca_21[0] = _29; 
  memref_alloca_21[0] = arith_const_17; 
  double _30; 
  memref_alloca_19[0] = _30; 
  for (int for_iter_31 = arith_const_14; for_iter_31 < arith_const_13; for_iter_31 += arith_const_14) {
    memref_alloca_19[0] = arith_const_16; 
    double memref_load_32 = memref_alloca_19[0]; 
    int arith_addi_33 = (for_iter_31 + arith_const_12); 
    double memref_load_34 = func_arg_1[arith_addi_33]; 
    double memref_load_35 = func_arg_2[arith_const_15]; 
    double arith_mulf_36 = (memref_load_34 * memref_load_35); 
    double arith_addf_37 = (memref_load_32 + arith_mulf_36); 
    memref_alloca_19[0] = arith_addf_37; 
    double memref_load_38 = memref_alloca_21[0]; 
    double memref_load_39 = memref_alloca_22[0]; 
    double arith_mulf_40 = (memref_load_39 * memref_load_39); 
    double arith_subf_41 = (memref_load_38 - arith_mulf_40); 
    double memref_load_42 = memref_alloca_21[0]; 
    double arith_mulf_43 = (arith_subf_41 * memref_load_42); 
    memref_alloca_21[0] = arith_mulf_43; 
    int arith_addi_44 = (for_iter_31 + arith_const_12); 
    int arith_cmpi_45 = (arith_addi_44 < arith_const_15); 
    int arith_subi_46 = (arith_const_12 - arith_addi_44); 
    int arith_select_47 = (arith_cmpi_45 ? arith_subi_46 : arith_addi_44); 
    int arith_divi_48 = (arith_select_47 / arith_const_11); 
    int arith_subi_49 = (arith_const_12 - arith_divi_48); 
    int arith_select_50 = (arith_cmpi_45 ? arith_subi_49 : arith_divi_48); 
    int arith_muli_51 = (arith_select_50 * arith_const_11); 
    int arith_addi_52 = (arith_muli_51 + arith_const_14); 
    for (int for_iter_53 = arith_const_14; for_iter_53 < arith_addi_52; for_iter_53 += arith_const_11) {
      double memref_load_54 = memref_alloca_19[0]; 
      int arith_muli_55 = (for_iter_53 * arith_const_12); 
      int arith_addi_56 = (for_iter_31 + arith_muli_55); 
      int arith_addi_57 = (arith_addi_56 + arith_const_12); 
      double memref_load_58 = func_arg_1[arith_addi_57]; 
      double memref_load_59 = func_arg_2[for_iter_53]; 
      double arith_mulf_60 = (memref_load_58 * memref_load_59); 
      double arith_addf_61 = (memref_load_54 + arith_mulf_60); 
      memref_alloca_19[0] = arith_addf_61; 
      int arith_addi_62 = (for_iter_53 + arith_const_14); 
      double memref_load_63 = memref_alloca_19[0]; 
      int arith_muli_64 = (arith_addi_62 * arith_const_12); 
      int arith_addi_65 = (for_iter_31 + arith_muli_64); 
      int arith_addi_66 = (arith_addi_65 + arith_const_12); 
      double memref_load_67 = func_arg_1[arith_addi_66]; 
      double memref_load_68 = func_arg_2[arith_addi_62]; 
      double arith_mulf_69 = (memref_load_67 * memref_load_68); 
      double arith_addf_70 = (memref_load_63 + arith_mulf_69); 
      memref_alloca_19[0] = arith_addf_70; 
      int arith_addi_71 = (for_iter_53 + arith_const_10); 
      double memref_load_72 = memref_alloca_19[0]; 
      int arith_muli_73 = (arith_addi_71 * arith_const_12); 
      int arith_addi_74 = (for_iter_31 + arith_muli_73); 
      int arith_addi_75 = (arith_addi_74 + arith_const_12); 
      double memref_load_76 = func_arg_1[arith_addi_75]; 
      double memref_load_77 = func_arg_2[arith_addi_71]; 
      double arith_mulf_78 = (memref_load_76 * memref_load_77); 
      double arith_addf_79 = (memref_load_72 + arith_mulf_78); 
      memref_alloca_19[0] = arith_addf_79; 
      int arith_addi_80 = (for_iter_53 + arith_const_9); 
      double memref_load_81 = memref_alloca_19[0]; 
      int arith_muli_82 = (arith_addi_80 * arith_const_12); 
      int arith_addi_83 = (for_iter_31 + arith_muli_82); 
      int arith_addi_84 = (arith_addi_83 + arith_const_12); 
      double memref_load_85 = func_arg_1[arith_addi_84]; 
      double memref_load_86 = func_arg_2[arith_addi_80]; 
      double arith_mulf_87 = (memref_load_85 * memref_load_86); 
      double arith_addf_88 = (memref_load_81 + arith_mulf_87); 
      memref_alloca_19[0] = arith_addf_88; 
    }
    int arith_addi_89 = (for_iter_31 + arith_const_12); 
    int arith_cmpi_90 = (arith_addi_89 < arith_const_15); 
    int arith_subi_91 = (arith_const_12 - arith_addi_89); 
    int arith_select_92 = (arith_cmpi_90 ? arith_subi_91 : arith_addi_89); 
    int arith_divi_93 = (arith_select_92 / arith_const_11); 
    int arith_subi_94 = (arith_const_12 - arith_divi_93); 
    int arith_select_95 = (arith_cmpi_90 ? arith_subi_94 : arith_divi_93); 
    int arith_muli_96 = (arith_select_95 * arith_const_11); 
    int arith_addi_97 = (arith_muli_96 + arith_const_14); 
    for (int for_iter_98 = arith_addi_97; for_iter_98 < for_iter_31; for_iter_98 += arith_const_14) {
      double memref_load_99 = memref_alloca_19[0]; 
      int arith_muli_100 = (for_iter_98 * arith_const_12); 
      int arith_addi_101 = (for_iter_31 + arith_muli_100); 
      int arith_addi_102 = (arith_addi_101 + arith_const_12); 
      double memref_load_103 = func_arg_1[arith_addi_102]; 
      double memref_load_104 = func_arg_2[for_iter_98]; 
      double arith_mulf_105 = (memref_load_103 * memref_load_104); 
      double arith_addf_106 = (memref_load_99 + arith_mulf_105); 
      memref_alloca_19[0] = arith_addf_106; 
    }
    int arith_addi_107 = (for_iter_31 + arith_const_12); 
    int arith_cmpi_108 = (arith_addi_107 == arith_const_15); 
    if (arith_cmpi_108) {
      double memref_load_109 = func_arg_1[arith_const_14]; 
      double memref_load_110 = memref_alloca_19[0]; 
      double arith_addf_111 = (memref_load_109 + memref_load_110); 
      double arith_negf_112 = -(arith_addf_111); 
      double memref_load_113 = memref_alloca_21[0]; 
      double arith_divf_114 = (arith_negf_112 / memref_load_113); 
      memref_alloca_18[arith_const_15] = arith_divf_114; 
      double memref_load_115 = func_arg_2[arith_const_15]; 
      double memref_load_116 = memref_alloca_18[arith_const_15]; 
      double memref_load_117 = func_arg_2[arith_const_15]; 
      double arith_mulf_118 = (memref_load_116 * memref_load_117); 
      double arith_addf_119 = (memref_load_115 + arith_mulf_118); 
      memref_alloca_20[arith_const_15] = arith_addf_119; 
      double memref_load_120 = memref_alloca_20[arith_const_15]; 
      func_arg_2[arith_const_15] = memref_load_120; 
      double memref_load_121 = memref_alloca_18[arith_const_15]; 
      memref_alloca_23[arith_const_15] = memref_load_121; 
      memref_alloca_22[0] = memref_load_121; 
      double memref_load_122 = memref_alloca_23[arith_const_15]; 
      func_arg_2[arith_const_14] = memref_load_122; 
    }
    int arith_addi_123 = (for_iter_31 + arith_const_8); 
    int arith_cmpi_124 = (arith_addi_123 >= arith_const_15); 
    if (arith_cmpi_124) {
      double memref_load_125 = func_arg_1[for_iter_31]; 
      double memref_load_126 = memref_alloca_19[0]; 
      double arith_addf_127 = (memref_load_125 + memref_load_126); 
      double arith_negf_128 = -(arith_addf_127); 
      double memref_load_129 = memref_alloca_21[0]; 
      double arith_divf_130 = (arith_negf_128 / memref_load_129); 
      memref_alloca_18[arith_const_15] = arith_divf_130; 
      double memref_load_131 = func_arg_2[arith_const_15]; 
      double memref_load_132 = memref_alloca_18[arith_const_15]; 
      int arith_addi_133 = (for_iter_31 + arith_const_12); 
      double memref_load_134 = func_arg_2[arith_addi_133]; 
      double arith_mulf_135 = (memref_load_132 * memref_load_134); 
      double arith_addf_136 = (memref_load_131 + arith_mulf_135); 
      memref_alloca_20[arith_const_15] = arith_addf_136; 
      double memref_load_137 = memref_alloca_18[arith_const_15]; 
      memref_alloca_23[arith_const_15] = memref_load_137; 
      memref_alloca_22[0] = memref_load_137; 
      double memref_load_138 = memref_alloca_23[arith_const_15]; 
      func_arg_2[for_iter_31] = memref_load_138; 
    }
    int arith_addi_139 = (for_iter_31 + arith_const_8); 
    int arith_cmpi_140 = (arith_addi_139 < arith_const_15); 
    int arith_subi_141 = (arith_const_12 - arith_addi_139); 
    int arith_select_142 = (arith_cmpi_140 ? arith_subi_141 : arith_addi_139); 
    int arith_divi_143 = (arith_select_142 / arith_const_11); 
    int arith_subi_144 = (arith_const_12 - arith_divi_143); 
    int arith_select_145 = (arith_cmpi_140 ? arith_subi_144 : arith_divi_143); 
    int arith_muli_146 = (arith_select_145 * arith_const_11); 
    int arith_addi_147 = (arith_muli_146 + arith_const_7); 
    for (int for_iter_148 = arith_const_7; for_iter_148 < arith_addi_147; for_iter_148 += arith_const_11) {
      int arith_addi_149 = (for_iter_148 + arith_const_6); 
      double memref_load_150 = func_arg_2[arith_addi_149]; 
      double memref_load_151 = memref_alloca_18[arith_const_15]; 
      int arith_muli_152 = (for_iter_148 * arith_const_12); 
      int arith_addi_153 = (arith_muli_152 + for_iter_31); 
      int arith_addi_154 = (arith_addi_153 + arith_const_5); 
      double memref_load_155 = func_arg_2[arith_addi_154]; 
      double arith_mulf_156 = (memref_load_151 * memref_load_155); 
      double arith_addf_157 = (memref_load_150 + arith_mulf_156); 
      int arith_addi_158 = (for_iter_148 + arith_const_6); 
      memref_alloca_20[arith_addi_158] = arith_addf_157; 
      int arith_addi_159 = (for_iter_148 + arith_const_14); 
      int arith_addi_160 = (arith_addi_159 + arith_const_6); 
      double memref_load_161 = func_arg_2[arith_addi_160]; 
      double memref_load_162 = memref_alloca_18[arith_const_15]; 
      int arith_muli_163 = (arith_addi_159 * arith_const_12); 
      int arith_addi_164 = (arith_muli_163 + for_iter_31); 
      int arith_addi_165 = (arith_addi_164 + arith_const_5); 
      double memref_load_166 = func_arg_2[arith_addi_165]; 
      double arith_mulf_167 = (memref_load_162 * memref_load_166); 
      double arith_addf_168 = (memref_load_161 + arith_mulf_167); 
      int arith_addi_169 = (arith_addi_159 + arith_const_6); 
      memref_alloca_20[arith_addi_169] = arith_addf_168; 
      int arith_addi_170 = (for_iter_148 + arith_const_10); 
      int arith_addi_171 = (arith_addi_170 + arith_const_6); 
      double memref_load_172 = func_arg_2[arith_addi_171]; 
      double memref_load_173 = memref_alloca_18[arith_const_15]; 
      int arith_muli_174 = (arith_addi_170 * arith_const_12); 
      int arith_addi_175 = (arith_muli_174 + for_iter_31); 
      int arith_addi_176 = (arith_addi_175 + arith_const_5); 
      double memref_load_177 = func_arg_2[arith_addi_176]; 
      double arith_mulf_178 = (memref_load_173 * memref_load_177); 
      double arith_addf_179 = (memref_load_172 + arith_mulf_178); 
      int arith_addi_180 = (arith_addi_170 + arith_const_6); 
      memref_alloca_20[arith_addi_180] = arith_addf_179; 
      int arith_addi_181 = (for_iter_148 + arith_const_9); 
      int arith_addi_182 = (arith_addi_181 + arith_const_6); 
      double memref_load_183 = func_arg_2[arith_addi_182]; 
      double memref_load_184 = memref_alloca_18[arith_const_15]; 
      int arith_muli_185 = (arith_addi_181 * arith_const_12); 
      int arith_addi_186 = (arith_muli_185 + for_iter_31); 
      int arith_addi_187 = (arith_addi_186 + arith_const_5); 
      double memref_load_188 = func_arg_2[arith_addi_187]; 
      double arith_mulf_189 = (memref_load_184 * memref_load_188); 
      double arith_addf_190 = (memref_load_183 + arith_mulf_189); 
      int arith_addi_191 = (arith_addi_181 + arith_const_6); 
      memref_alloca_20[arith_addi_191] = arith_addf_190; 
    }
    int arith_addi_192 = (for_iter_31 + arith_const_8); 
    int arith_cmpi_193 = (arith_addi_192 < arith_const_15); 
    int arith_subi_194 = (arith_const_12 - arith_addi_192); 
    int arith_select_195 = (arith_cmpi_193 ? arith_subi_194 : arith_addi_192); 
    int arith_divi_196 = (arith_select_195 / arith_const_11); 
    int arith_subi_197 = (arith_const_12 - arith_divi_196); 
    int arith_select_198 = (arith_cmpi_193 ? arith_subi_197 : arith_divi_196); 
    int arith_muli_199 = (arith_select_198 * arith_const_11); 
    int arith_addi_200 = (arith_muli_199 + arith_const_7); 
    int arith_addi_201 = (for_iter_31 + arith_const_5); 
    for (int for_iter_202 = arith_addi_200; for_iter_202 < arith_addi_201; for_iter_202 += arith_const_14) {
      int arith_addi_203 = (for_iter_202 + arith_const_6); 
      double memref_load_204 = func_arg_2[arith_addi_203]; 
      double memref_load_205 = memref_alloca_18[arith_const_15]; 
      int arith_muli_206 = (for_iter_202 * arith_const_12); 
      int arith_addi_207 = (arith_muli_206 + for_iter_31); 
      int arith_addi_208 = (arith_addi_207 + arith_const_5); 
      double memref_load_209 = func_arg_2[arith_addi_208]; 
      double arith_mulf_210 = (memref_load_205 * memref_load_209); 
      double arith_addf_211 = (memref_load_204 + arith_mulf_210); 
      int arith_addi_212 = (for_iter_202 + arith_const_6); 
      memref_alloca_20[arith_addi_212] = arith_addf_211; 
    }
    int arith_addi_213 = (for_iter_31 + arith_const_8); 
    int arith_cmpi_214 = (arith_addi_213 >= arith_const_15); 
    if (arith_cmpi_214) {
      int arith_addi_215 = (for_iter_31 + arith_const_12); 
      double memref_load_216 = func_arg_2[arith_addi_215]; 
      double memref_load_217 = memref_alloca_18[arith_const_15]; 
      double memref_load_218 = func_arg_2[arith_const_15]; 
      double arith_mulf_219 = (memref_load_217 * memref_load_218); 
      double arith_addf_220 = (memref_load_216 + arith_mulf_219); 
      int arith_addi_221 = (for_iter_31 + arith_const_12); 
      memref_alloca_20[arith_addi_221] = arith_addf_220; 
      double memref_load_222 = memref_alloca_20[arith_const_15]; 
      func_arg_2[arith_const_15] = memref_load_222; 
    }
    int arith_addi_223 = (for_iter_31 + arith_const_4); 
    int arith_addi_224 = (for_iter_31 + arith_const_12); 
    int arith_cmpi_225 = (arith_addi_224 < arith_const_15); 
    int arith_subi_226 = (arith_const_12 - arith_addi_224); 
    int arith_select_227 = (arith_cmpi_225 ? arith_subi_226 : arith_addi_224); 
    int arith_divi_228 = (arith_select_227 / arith_const_11); 
    int arith_subi_229 = (arith_const_12 - arith_divi_228); 
    int arith_select_230 = (arith_cmpi_225 ? arith_subi_229 : arith_divi_228); 
    int arith_muli_231 = (arith_select_230 * arith_const_11); 
    int arith_addi_232 = (for_iter_31 + arith_muli_231); 
    int arith_addi_233 = (arith_addi_232 + arith_const_4); 
    for (int for_iter_234 = arith_addi_223; for_iter_234 < arith_addi_233; for_iter_234 += arith_const_11) {
      int arith_muli_235 = (for_iter_31 * arith_const_12); 
      int arith_addi_236 = (arith_muli_235 + for_iter_234); 
      int arith_addi_237 = (arith_addi_236 + arith_const_3); 
      double memref_load_238 = memref_alloca_20[arith_addi_237]; 
      int arith_muli_239 = (for_iter_31 * arith_const_12); 
      int arith_addi_240 = (arith_muli_239 + for_iter_234); 
      int arith_addi_241 = (arith_addi_240 + arith_const_3); 
      func_arg_2[arith_addi_241] = memref_load_238; 
      int arith_addi_242 = (for_iter_234 + arith_const_14); 
      int arith_muli_243 = (for_iter_31 * arith_const_12); 
      int arith_addi_244 = (arith_muli_243 + arith_addi_242); 
      int arith_addi_245 = (arith_addi_244 + arith_const_3); 
      double memref_load_246 = memref_alloca_20[arith_addi_245]; 
      int arith_muli_247 = (for_iter_31 * arith_const_12); 
      int arith_addi_248 = (arith_muli_247 + arith_addi_242); 
      int arith_addi_249 = (arith_addi_248 + arith_const_3); 
      func_arg_2[arith_addi_249] = memref_load_246; 
      int arith_addi_250 = (for_iter_234 + arith_const_10); 
      int arith_muli_251 = (for_iter_31 * arith_const_12); 
      int arith_addi_252 = (arith_muli_251 + arith_addi_250); 
      int arith_addi_253 = (arith_addi_252 + arith_const_3); 
      double memref_load_254 = memref_alloca_20[arith_addi_253]; 
      int arith_muli_255 = (for_iter_31 * arith_const_12); 
      int arith_addi_256 = (arith_muli_255 + arith_addi_250); 
      int arith_addi_257 = (arith_addi_256 + arith_const_3); 
      func_arg_2[arith_addi_257] = memref_load_254; 
      int arith_addi_258 = (for_iter_234 + arith_const_9); 
      int arith_muli_259 = (for_iter_31 * arith_const_12); 
      int arith_addi_260 = (arith_muli_259 + arith_addi_258); 
      int arith_addi_261 = (arith_addi_260 + arith_const_3); 
      double memref_load_262 = memref_alloca_20[arith_addi_261]; 
      int arith_muli_263 = (for_iter_31 * arith_const_12); 
      int arith_addi_264 = (arith_muli_263 + arith_addi_258); 
      int arith_addi_265 = (arith_addi_264 + arith_const_3); 
      func_arg_2[arith_addi_265] = memref_load_262; 
    }
    int arith_addi_266 = (for_iter_31 + arith_const_12); 
    int arith_cmpi_267 = (arith_addi_266 < arith_const_15); 
    int arith_subi_268 = (arith_const_12 - arith_addi_266); 
    int arith_select_269 = (arith_cmpi_267 ? arith_subi_268 : arith_addi_266); 
    int arith_divi_270 = (arith_select_269 / arith_const_11); 
    int arith_subi_271 = (arith_const_12 - arith_divi_270); 
    int arith_select_272 = (arith_cmpi_267 ? arith_subi_271 : arith_divi_270); 
    int arith_muli_273 = (arith_select_272 * arith_const_11); 
    int arith_addi_274 = (for_iter_31 + arith_muli_273); 
    int arith_addi_275 = (arith_addi_274 + arith_const_4); 
    int arith_muli_276 = (for_iter_31 * arith_const_10); 
    int arith_addi_277 = (arith_muli_276 + arith_const_5); 
    for (int for_iter_278 = arith_addi_275; for_iter_278 < arith_addi_277; for_iter_278 += arith_const_14) {
      int arith_muli_279 = (for_iter_31 * arith_const_12); 
      int arith_addi_280 = (arith_muli_279 + for_iter_278); 
      int arith_addi_281 = (arith_addi_280 + arith_const_3); 
      double memref_load_282 = memref_alloca_20[arith_addi_281]; 
      int arith_muli_283 = (for_iter_31 * arith_const_12); 
      int arith_addi_284 = (arith_muli_283 + for_iter_278); 
      int arith_addi_285 = (arith_addi_284 + arith_const_3); 
      func_arg_2[arith_addi_285] = memref_load_282; 
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
