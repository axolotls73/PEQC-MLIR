#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_durbin(int func_arg_0, double* func_arg_1, double* func_arg_2)
{
  int arith_const_3 = -37; 
  int arith_const_4 = 38; 
  int arith_const_5 = -2; 
  int arith_const_6 = -4; 
  int arith_const_7 = 37; 
  int arith_const_8 = -38; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = -1; 
  int arith_const_13 = 1; 
  int arith_const_14 = 39; 
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
  for (int for_iter_31 = arith_const_15; for_iter_31 < arith_const_14; for_iter_31 += arith_const_13) {
    int arith_addi_32 = (for_iter_31 + arith_const_13); 
    for (int for_iter_33 = arith_const_15; for_iter_33 < arith_const_13; for_iter_33 += arith_const_13) {
      int arith_addi_34 = (arith_addi_32 + for_iter_33); 
      memref_alloca_19[0] = arith_const_16; 
      double memref_load_35 = memref_alloca_19[0]; 
      int arith_addi_36 = (arith_addi_34 + arith_const_12); 
      double memref_load_37 = func_arg_1[arith_addi_36]; 
      double memref_load_38 = func_arg_2[arith_const_15]; 
      double arith_mulf_39 = (memref_load_37 * memref_load_38); 
      double arith_addf_40 = (memref_load_35 + arith_mulf_39); 
      memref_alloca_19[0] = arith_addf_40; 
      double memref_load_41 = memref_alloca_21[0]; 
      double memref_load_42 = memref_alloca_22[0]; 
      double arith_mulf_43 = (memref_load_42 * memref_load_42); 
      double arith_subf_44 = (memref_load_41 - arith_mulf_43); 
      double memref_load_45 = memref_alloca_21[0]; 
      double arith_mulf_46 = (arith_subf_44 * memref_load_45); 
      memref_alloca_21[0] = arith_mulf_46; 
      int arith_addi_47 = (for_iter_33 + for_iter_31); 
      int arith_cmpi_48 = (arith_addi_47 < arith_const_15); 
      int arith_subi_49 = (arith_const_12 - arith_addi_47); 
      int arith_select_50 = (arith_cmpi_48 ? arith_subi_49 : arith_addi_47); 
      int arith_divi_51 = (arith_select_50 / arith_const_11); 
      int arith_subi_52 = (arith_const_12 - arith_divi_51); 
      int arith_select_53 = (arith_cmpi_48 ? arith_subi_52 : arith_divi_51); 
      for (int for_iter_54 = arith_const_15; for_iter_54 < arith_select_53; for_iter_54 += arith_const_13) {
        int arith_muli_55 = (for_iter_54 * arith_const_11); 
        int arith_addi_56 = (arith_muli_55 + arith_const_13); 
        double memref_load_57 = memref_alloca_19[0]; 
        int arith_muli_58 = (arith_addi_56 * arith_const_12); 
        int arith_addi_59 = (arith_addi_34 + arith_muli_58); 
        int arith_addi_60 = (arith_addi_59 + arith_const_12); 
        double memref_load_61 = func_arg_1[arith_addi_60]; 
        double memref_load_62 = func_arg_2[arith_addi_56]; 
        double arith_mulf_63 = (memref_load_61 * memref_load_62); 
        double arith_addf_64 = (memref_load_57 + arith_mulf_63); 
        memref_alloca_19[0] = arith_addf_64; 
        int arith_addi_65 = (arith_addi_56 + arith_const_13); 
        double memref_load_66 = memref_alloca_19[0]; 
        int arith_muli_67 = (arith_addi_65 * arith_const_12); 
        int arith_addi_68 = (arith_addi_34 + arith_muli_67); 
        int arith_addi_69 = (arith_addi_68 + arith_const_12); 
        double memref_load_70 = func_arg_1[arith_addi_69]; 
        double memref_load_71 = func_arg_2[arith_addi_65]; 
        double arith_mulf_72 = (memref_load_70 * memref_load_71); 
        double arith_addf_73 = (memref_load_66 + arith_mulf_72); 
        memref_alloca_19[0] = arith_addf_73; 
        int arith_addi_74 = (arith_addi_56 + arith_const_10); 
        double memref_load_75 = memref_alloca_19[0]; 
        int arith_muli_76 = (arith_addi_74 * arith_const_12); 
        int arith_addi_77 = (arith_addi_34 + arith_muli_76); 
        int arith_addi_78 = (arith_addi_77 + arith_const_12); 
        double memref_load_79 = func_arg_1[arith_addi_78]; 
        double memref_load_80 = func_arg_2[arith_addi_74]; 
        double arith_mulf_81 = (memref_load_79 * memref_load_80); 
        double arith_addf_82 = (memref_load_75 + arith_mulf_81); 
        memref_alloca_19[0] = arith_addf_82; 
        int arith_addi_83 = (arith_addi_56 + arith_const_9); 
        double memref_load_84 = memref_alloca_19[0]; 
        int arith_muli_85 = (arith_addi_83 * arith_const_12); 
        int arith_addi_86 = (arith_addi_34 + arith_muli_85); 
        int arith_addi_87 = (arith_addi_86 + arith_const_12); 
        double memref_load_88 = func_arg_1[arith_addi_87]; 
        double memref_load_89 = func_arg_2[arith_addi_83]; 
        double arith_mulf_90 = (memref_load_88 * memref_load_89); 
        double arith_addf_91 = (memref_load_84 + arith_mulf_90); 
        memref_alloca_19[0] = arith_addf_91; 
      }
      int arith_addi_92 = (for_iter_33 + for_iter_31); 
      int arith_remsi_93 = (arith_addi_92 % arith_const_11); 
      int arith_cmpi_94 = (arith_remsi_93 < arith_const_15); 
      int arith_addi_95 = (arith_remsi_93 + arith_const_11); 
      int arith_select_96 = (arith_cmpi_94 ? arith_addi_95 : arith_remsi_93); 
      for (int for_iter_97 = arith_const_15; for_iter_97 < arith_select_96; for_iter_97 += arith_const_13) {
        int arith_addi_98 = (arith_addi_34 + arith_const_12); 
        int arith_cmpi_99 = (arith_addi_98 < arith_const_15); 
        int arith_subi_100 = (arith_const_12 - arith_addi_98); 
        int arith_select_101 = (arith_cmpi_99 ? arith_subi_100 : arith_addi_98); 
        int arith_divi_102 = (arith_select_101 / arith_const_11); 
        int arith_subi_103 = (arith_const_12 - arith_divi_102); 
        int arith_select_104 = (arith_cmpi_99 ? arith_subi_103 : arith_divi_102); 
        int arith_muli_105 = (arith_select_104 * arith_const_11); 
        int arith_addi_106 = (for_iter_97 + arith_muli_105); 
        int arith_addi_107 = (arith_addi_106 + arith_const_13); 
        double memref_load_108 = memref_alloca_19[0]; 
        int arith_muli_109 = (arith_addi_107 * arith_const_12); 
        int arith_addi_110 = (arith_addi_34 + arith_muli_109); 
        int arith_addi_111 = (arith_addi_110 + arith_const_12); 
        double memref_load_112 = func_arg_1[arith_addi_111]; 
        double memref_load_113 = func_arg_2[arith_addi_107]; 
        double arith_mulf_114 = (memref_load_112 * memref_load_113); 
        double arith_addf_115 = (memref_load_108 + arith_mulf_114); 
        memref_alloca_19[0] = arith_addf_115; 
      }
      int arith_addi_116 = (for_iter_33 + for_iter_31); 
      int arith_cmpi_117 = (arith_addi_116 == arith_const_15); 
      if (arith_cmpi_117) {
        double memref_load_118 = func_arg_1[arith_const_13]; 
        double memref_load_119 = memref_alloca_19[0]; 
        double arith_addf_120 = (memref_load_118 + memref_load_119); 
        double arith_negf_121 = -(arith_addf_120); 
        double memref_load_122 = memref_alloca_21[0]; 
        double arith_divf_123 = (arith_negf_121 / memref_load_122); 
        memref_alloca_18[arith_const_15] = arith_divf_123; 
        double memref_load_124 = func_arg_2[arith_const_15]; 
        double memref_load_125 = memref_alloca_18[arith_const_15]; 
        double memref_load_126 = func_arg_2[arith_const_15]; 
        double arith_mulf_127 = (memref_load_125 * memref_load_126); 
        double arith_addf_128 = (memref_load_124 + arith_mulf_127); 
        memref_alloca_20[arith_const_15] = arith_addf_128; 
        double memref_load_129 = memref_alloca_20[arith_const_15]; 
        func_arg_2[arith_const_15] = memref_load_129; 
        double memref_load_130 = memref_alloca_18[arith_const_15]; 
        memref_alloca_23[arith_const_15] = memref_load_130; 
        memref_alloca_22[0] = memref_load_130; 
        double memref_load_131 = memref_alloca_23[arith_const_15]; 
        func_arg_2[arith_const_13] = memref_load_131; 
      }
      int arith_addi_132 = (for_iter_33 + for_iter_31); 
      int arith_addi_133 = (arith_addi_132 + arith_const_12); 
      int arith_cmpi_134 = (arith_addi_133 >= arith_const_15); 
      if (arith_cmpi_134) {
        double memref_load_135 = func_arg_1[arith_addi_34]; 
        double memref_load_136 = memref_alloca_19[0]; 
        double arith_addf_137 = (memref_load_135 + memref_load_136); 
        double arith_negf_138 = -(arith_addf_137); 
        double memref_load_139 = memref_alloca_21[0]; 
        double arith_divf_140 = (arith_negf_138 / memref_load_139); 
        memref_alloca_18[arith_const_15] = arith_divf_140; 
        double memref_load_141 = func_arg_2[arith_const_15]; 
        double memref_load_142 = memref_alloca_18[arith_const_15]; 
        int arith_addi_143 = (arith_addi_34 + arith_const_12); 
        double memref_load_144 = func_arg_2[arith_addi_143]; 
        double arith_mulf_145 = (memref_load_142 * memref_load_144); 
        double arith_addf_146 = (memref_load_141 + arith_mulf_145); 
        memref_alloca_20[arith_const_15] = arith_addf_146; 
        double memref_load_147 = memref_alloca_18[arith_const_15]; 
        memref_alloca_23[arith_const_15] = memref_load_147; 
        memref_alloca_22[0] = memref_load_147; 
        double memref_load_148 = memref_alloca_23[arith_const_15]; 
        func_arg_2[arith_addi_34] = memref_load_148; 
      }
      double memref_load_149 = memref_alloca_18[arith_const_15]; 
      double memref_load_150 = memref_alloca_18[arith_const_15]; 
      double memref_load_151 = memref_alloca_18[arith_const_15]; 
      double memref_load_152 = memref_alloca_18[arith_const_15]; 
      int arith_addi_153 = (for_iter_33 + for_iter_31); 
      int arith_addi_154 = (arith_addi_153 + arith_const_12); 
      int arith_cmpi_155 = (arith_addi_154 < arith_const_15); 
      int arith_subi_156 = (arith_const_12 - arith_addi_154); 
      int arith_select_157 = (arith_cmpi_155 ? arith_subi_156 : arith_addi_154); 
      int arith_divi_158 = (arith_select_157 / arith_const_11); 
      int arith_subi_159 = (arith_const_12 - arith_divi_158); 
      int arith_select_160 = (arith_cmpi_155 ? arith_subi_159 : arith_divi_158); 
      for (int for_iter_161 = arith_const_15; for_iter_161 < arith_select_160; for_iter_161 += arith_const_13) {
        int arith_muli_162 = (for_iter_161 * arith_const_11); 
        int arith_addi_163 = (arith_muli_162 + arith_const_14); 
        int arith_addi_164 = (arith_addi_163 + arith_const_8); 
        double memref_load_165 = func_arg_2[arith_addi_164]; 
        int arith_muli_166 = (arith_addi_163 * arith_const_12); 
        int arith_addi_167 = (arith_muli_166 + arith_addi_34); 
        int arith_addi_168 = (arith_addi_167 + arith_const_7); 
        double memref_load_169 = func_arg_2[arith_addi_168]; 
        double arith_mulf_170 = (memref_load_149 * memref_load_169); 
        double arith_addf_171 = (memref_load_165 + arith_mulf_170); 
        int arith_addi_172 = (arith_addi_163 + arith_const_8); 
        memref_alloca_20[arith_addi_172] = arith_addf_171; 
        int arith_addi_173 = (arith_addi_163 + arith_const_13); 
        int arith_addi_174 = (arith_addi_173 + arith_const_8); 
        double memref_load_175 = func_arg_2[arith_addi_174]; 
        int arith_muli_176 = (arith_addi_173 * arith_const_12); 
        int arith_addi_177 = (arith_muli_176 + arith_addi_34); 
        int arith_addi_178 = (arith_addi_177 + arith_const_7); 
        double memref_load_179 = func_arg_2[arith_addi_178]; 
        double arith_mulf_180 = (memref_load_150 * memref_load_179); 
        double arith_addf_181 = (memref_load_175 + arith_mulf_180); 
        int arith_addi_182 = (arith_addi_173 + arith_const_8); 
        memref_alloca_20[arith_addi_182] = arith_addf_181; 
        int arith_addi_183 = (arith_addi_163 + arith_const_10); 
        int arith_addi_184 = (arith_addi_183 + arith_const_8); 
        double memref_load_185 = func_arg_2[arith_addi_184]; 
        int arith_muli_186 = (arith_addi_183 * arith_const_12); 
        int arith_addi_187 = (arith_muli_186 + arith_addi_34); 
        int arith_addi_188 = (arith_addi_187 + arith_const_7); 
        double memref_load_189 = func_arg_2[arith_addi_188]; 
        double arith_mulf_190 = (memref_load_151 * memref_load_189); 
        double arith_addf_191 = (memref_load_185 + arith_mulf_190); 
        int arith_addi_192 = (arith_addi_183 + arith_const_8); 
        memref_alloca_20[arith_addi_192] = arith_addf_191; 
        int arith_addi_193 = (arith_addi_163 + arith_const_9); 
        int arith_addi_194 = (arith_addi_193 + arith_const_8); 
        double memref_load_195 = func_arg_2[arith_addi_194]; 
        int arith_muli_196 = (arith_addi_193 * arith_const_12); 
        int arith_addi_197 = (arith_muli_196 + arith_addi_34); 
        int arith_addi_198 = (arith_addi_197 + arith_const_7); 
        double memref_load_199 = func_arg_2[arith_addi_198]; 
        double arith_mulf_200 = (memref_load_152 * memref_load_199); 
        double arith_addf_201 = (memref_load_195 + arith_mulf_200); 
        int arith_addi_202 = (arith_addi_193 + arith_const_8); 
        memref_alloca_20[arith_addi_202] = arith_addf_201; 
      }
      double memref_load_203 = memref_alloca_18[arith_const_15]; 
      int arith_addi_204 = (for_iter_33 + for_iter_31); 
      int arith_addi_205 = (for_iter_33 + for_iter_31); 
      int arith_addi_206 = (arith_addi_205 + arith_const_12); 
      int arith_cmpi_207 = (arith_addi_206 < arith_const_15); 
      int arith_subi_208 = (arith_const_12 - arith_addi_206); 
      int arith_select_209 = (arith_cmpi_207 ? arith_subi_208 : arith_addi_206); 
      int arith_divi_210 = (arith_select_209 / arith_const_11); 
      int arith_subi_211 = (arith_const_12 - arith_divi_210); 
      int arith_select_212 = (arith_cmpi_207 ? arith_subi_211 : arith_divi_210); 
      int arith_muli_213 = (arith_select_212 * arith_const_6); 
      int arith_addi_214 = (arith_addi_204 + arith_muli_213); 
      int arith_addi_215 = (arith_addi_214 + arith_const_12); 
      for (int for_iter_216 = arith_const_15; for_iter_216 < arith_addi_215; for_iter_216 += arith_const_13) {
        int arith_addi_217 = (arith_addi_34 + arith_const_5); 
        int arith_cmpi_218 = (arith_addi_217 < arith_const_15); 
        int arith_subi_219 = (arith_const_12 - arith_addi_217); 
        int arith_select_220 = (arith_cmpi_218 ? arith_subi_219 : arith_addi_217); 
        int arith_divi_221 = (arith_select_220 / arith_const_11); 
        int arith_subi_222 = (arith_const_12 - arith_divi_221); 
        int arith_select_223 = (arith_cmpi_218 ? arith_subi_222 : arith_divi_221); 
        int arith_muli_224 = (arith_select_223 * arith_const_11); 
        int arith_addi_225 = (for_iter_216 + arith_muli_224); 
        int arith_addi_226 = (arith_addi_225 + arith_const_14); 
        int arith_addi_227 = (arith_addi_226 + arith_const_8); 
        double memref_load_228 = func_arg_2[arith_addi_227]; 
        int arith_muli_229 = (arith_addi_226 * arith_const_12); 
        int arith_addi_230 = (arith_muli_229 + arith_addi_34); 
        int arith_addi_231 = (arith_addi_230 + arith_const_7); 
        double memref_load_232 = func_arg_2[arith_addi_231]; 
        double arith_mulf_233 = (memref_load_203 * memref_load_232); 
        double arith_addf_234 = (memref_load_228 + arith_mulf_233); 
        int arith_addi_235 = (arith_addi_226 + arith_const_8); 
        memref_alloca_20[arith_addi_235] = arith_addf_234; 
      }
      int arith_addi_236 = (for_iter_33 + for_iter_31); 
      int arith_addi_237 = (arith_addi_236 + arith_const_12); 
      int arith_cmpi_238 = (arith_addi_237 >= arith_const_15); 
      if (arith_cmpi_238) {
        int arith_addi_239 = (arith_addi_34 + arith_const_12); 
        double memref_load_240 = func_arg_2[arith_addi_239]; 
        double memref_load_241 = memref_alloca_18[arith_const_15]; 
        double memref_load_242 = func_arg_2[arith_const_15]; 
        double arith_mulf_243 = (memref_load_241 * memref_load_242); 
        double arith_addf_244 = (memref_load_240 + arith_mulf_243); 
        int arith_addi_245 = (arith_addi_34 + arith_const_12); 
        memref_alloca_20[arith_addi_245] = arith_addf_244; 
        double memref_load_246 = memref_alloca_20[arith_const_15]; 
        func_arg_2[arith_const_15] = memref_load_246; 
      }
      int arith_addi_247 = (for_iter_33 + for_iter_31); 
      int arith_cmpi_248 = (arith_addi_247 < arith_const_15); 
      int arith_subi_249 = (arith_const_12 - arith_addi_247); 
      int arith_select_250 = (arith_cmpi_248 ? arith_subi_249 : arith_addi_247); 
      int arith_divi_251 = (arith_select_250 / arith_const_11); 
      int arith_subi_252 = (arith_const_12 - arith_divi_251); 
      int arith_select_253 = (arith_cmpi_248 ? arith_subi_252 : arith_divi_251); 
      for (int for_iter_254 = arith_const_15; for_iter_254 < arith_select_253; for_iter_254 += arith_const_13) {
        int arith_muli_255 = (for_iter_254 * arith_const_11); 
        int arith_addi_256 = (arith_addi_34 + arith_muli_255); 
        int arith_addi_257 = (arith_addi_256 + arith_const_4); 
        int arith_muli_258 = (arith_addi_34 * arith_const_12); 
        int arith_addi_259 = (arith_muli_258 + arith_addi_257); 
        int arith_addi_260 = (arith_addi_259 + arith_const_3); 
        double memref_load_261 = memref_alloca_20[arith_addi_260]; 
        int arith_muli_262 = (arith_addi_34 * arith_const_12); 
        int arith_addi_263 = (arith_muli_262 + arith_addi_257); 
        int arith_addi_264 = (arith_addi_263 + arith_const_3); 
        func_arg_2[arith_addi_264] = memref_load_261; 
        int arith_addi_265 = (arith_addi_257 + arith_const_13); 
        int arith_muli_266 = (arith_addi_34 * arith_const_12); 
        int arith_addi_267 = (arith_muli_266 + arith_addi_265); 
        int arith_addi_268 = (arith_addi_267 + arith_const_3); 
        double memref_load_269 = memref_alloca_20[arith_addi_268]; 
        int arith_muli_270 = (arith_addi_34 * arith_const_12); 
        int arith_addi_271 = (arith_muli_270 + arith_addi_265); 
        int arith_addi_272 = (arith_addi_271 + arith_const_3); 
        func_arg_2[arith_addi_272] = memref_load_269; 
        int arith_addi_273 = (arith_addi_257 + arith_const_10); 
        int arith_muli_274 = (arith_addi_34 * arith_const_12); 
        int arith_addi_275 = (arith_muli_274 + arith_addi_273); 
        int arith_addi_276 = (arith_addi_275 + arith_const_3); 
        double memref_load_277 = memref_alloca_20[arith_addi_276]; 
        int arith_muli_278 = (arith_addi_34 * arith_const_12); 
        int arith_addi_279 = (arith_muli_278 + arith_addi_273); 
        int arith_addi_280 = (arith_addi_279 + arith_const_3); 
        func_arg_2[arith_addi_280] = memref_load_277; 
        int arith_addi_281 = (arith_addi_257 + arith_const_9); 
        int arith_muli_282 = (arith_addi_34 * arith_const_12); 
        int arith_addi_283 = (arith_muli_282 + arith_addi_281); 
        int arith_addi_284 = (arith_addi_283 + arith_const_3); 
        double memref_load_285 = memref_alloca_20[arith_addi_284]; 
        int arith_muli_286 = (arith_addi_34 * arith_const_12); 
        int arith_addi_287 = (arith_muli_286 + arith_addi_281); 
        int arith_addi_288 = (arith_addi_287 + arith_const_3); 
        func_arg_2[arith_addi_288] = memref_load_285; 
      }
      int arith_addi_289 = (for_iter_33 + for_iter_31); 
      int arith_remsi_290 = (arith_addi_289 % arith_const_11); 
      int arith_cmpi_291 = (arith_remsi_290 < arith_const_15); 
      int arith_addi_292 = (arith_remsi_290 + arith_const_11); 
      int arith_select_293 = (arith_cmpi_291 ? arith_addi_292 : arith_remsi_290); 
      for (int for_iter_294 = arith_const_15; for_iter_294 < arith_select_293; for_iter_294 += arith_const_13) {
        int arith_addi_295 = (arith_addi_34 + for_iter_294); 
        int arith_addi_296 = (arith_addi_34 + arith_const_12); 
        int arith_cmpi_297 = (arith_addi_296 < arith_const_15); 
        int arith_subi_298 = (arith_const_12 - arith_addi_296); 
        int arith_select_299 = (arith_cmpi_297 ? arith_subi_298 : arith_addi_296); 
        int arith_divi_300 = (arith_select_299 / arith_const_11); 
        int arith_subi_301 = (arith_const_12 - arith_divi_300); 
        int arith_select_302 = (arith_cmpi_297 ? arith_subi_301 : arith_divi_300); 
        int arith_muli_303 = (arith_select_302 * arith_const_11); 
        int arith_addi_304 = (arith_addi_295 + arith_muli_303); 
        int arith_addi_305 = (arith_addi_304 + arith_const_4); 
        int arith_muli_306 = (arith_addi_34 * arith_const_12); 
        int arith_addi_307 = (arith_muli_306 + arith_addi_305); 
        int arith_addi_308 = (arith_addi_307 + arith_const_3); 
        double memref_load_309 = memref_alloca_20[arith_addi_308]; 
        int arith_muli_310 = (arith_addi_34 * arith_const_12); 
        int arith_addi_311 = (arith_muli_310 + arith_addi_305); 
        int arith_addi_312 = (arith_addi_311 + arith_const_3); 
        func_arg_2[arith_addi_312] = memref_load_309; 
      }
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
