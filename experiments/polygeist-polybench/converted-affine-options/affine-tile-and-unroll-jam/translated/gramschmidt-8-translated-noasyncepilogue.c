#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = -28; 
  int arith_const_6 = 31; 
  int arith_const_7 = 38; 
  int arith_const_8 = 10; 
  int arith_const_9 = 16; 
  int arith_const_10 = 4; 
  int arith_const_11 = 5; 
  int arith_const_12 = -19; 
  int arith_const_13 = 39; 
  int arith_const_14 = 19; 
  int arith_const_15 = 20; 
  int arith_const_16 = 2; 
  int arith_const_17 = 32; 
  int arith_const_18 = 30; 
  int arith_const_19 = -1; 
  int arith_const_20 = 1; 
  int arith_const_21 = 29; 
  int arith_const_22 = 0; 
  double arith_const_23 = 0.000000; 
  double* memref_alloca_24; 
  for (int for_iter_25 = arith_const_22; for_iter_25 < arith_const_21; for_iter_25 += arith_const_20) {
    int arith_muli_26 = (for_iter_25 * arith_const_19); 
    int arith_addi_27 = (arith_muli_26 + arith_const_21); 
    for (int for_iter_28 = arith_const_22; for_iter_28 < arith_addi_27; for_iter_28 += arith_const_20) {
      int arith_addi_29 = (for_iter_25 + for_iter_28); 
      int arith_addi_30 = (arith_addi_29 + arith_const_20); 
      func_arg_3[for_iter_25][arith_addi_30] = arith_const_23; 
    }
  }
  double _31; 
  memref_alloca_24[0] = _31; 
  for (int for_iter_32 = arith_const_22; for_iter_32 < arith_const_18; for_iter_32 += arith_const_17) {
    int arith_addi_33 = (for_iter_32 + arith_const_18); 
    for (int for_iter_34 = for_iter_32; for_iter_34 < arith_addi_33; for_iter_34 += arith_const_20) {
      for (int for_iter_35 = arith_const_22; for_iter_35 < arith_const_16; for_iter_35 += arith_const_20) {
        int arith_cmpi_36 = (for_iter_35 == arith_const_22); 
        if (arith_cmpi_36) {
          for (int for_iter_37 = arith_const_22; for_iter_37 < arith_const_15; for_iter_37 += arith_const_20) {
            double memref_load_38 = memref_alloca_24[0]; 
            double memref_load_39 = func_arg_2[for_iter_37][for_iter_34]; 
            double arith_mulf_40 = (memref_load_39 * memref_load_39); 
            double arith_addf_41 = (memref_load_38 + arith_mulf_40); 
            memref_alloca_24[0] = arith_addf_41; 
          }
        }
        int arith_muli_42 = (for_iter_35 * arith_const_17); 
        int arith_maxsi_43 = max(arith_muli_42, arith_const_14); 
        int arith_muli_44 = (for_iter_35 * arith_const_17); 
        int arith_addi_45 = (arith_muli_44 + arith_const_17); 
        int arith_minsi_46 = min(arith_addi_45, arith_const_13); 
        for (int for_iter_47 = arith_maxsi_43; for_iter_47 < arith_minsi_46; for_iter_47 += arith_const_20) {
          int arith_addi_48 = (for_iter_47 + arith_const_12); 
          double memref_load_49 = func_arg_2[arith_addi_48][for_iter_34]; 
          double memref_load_50 = func_arg_3[for_iter_34][for_iter_34]; 
          double arith_divf_51 = (memref_load_49 / memref_load_50); 
          int arith_addi_52 = (for_iter_47 + arith_const_12); 
          func_arg_4[arith_addi_52][for_iter_34] = arith_divf_51; 
        }
        int arith_cmpi_53 = (for_iter_35 == arith_const_22); 
        if (arith_cmpi_53) {
          memref_alloca_24[0] = arith_const_23; 
        }
      }
      int arith_muli_54 = (for_iter_34 * arith_const_11); 
      int arith_addi_55 = (arith_muli_54 + arith_const_10); 
      int arith_cmpi_56 = (arith_addi_55 <= arith_const_22); 
      int arith_subi_57 = (arith_const_22 - arith_addi_55); 
      int arith_subi_58 = (arith_addi_55 - arith_const_20); 
      int arith_select_59 = (arith_cmpi_56 ? arith_subi_57 : arith_subi_58); 
      int arith_divi_60 = (arith_select_59 / arith_const_9); 
      int arith_subi_61 = (arith_const_22 - arith_divi_60); 
      int arith_addi_62 = (arith_divi_60 + arith_const_20); 
      int arith_select_63 = (arith_cmpi_56 ? arith_subi_61 : arith_addi_62); 
      int arith_muli_64 = (arith_select_63 * arith_const_19); 
      int arith_addi_65 = (arith_muli_64 + arith_const_8); 
      for (int for_iter_66 = arith_const_22; for_iter_66 < arith_addi_65; for_iter_66 += arith_const_20) {
        for (int for_iter_67 = arith_const_22; for_iter_67 < arith_const_16; for_iter_67 += arith_const_20) {
          int arith_cmpi_68 = (for_iter_67 == arith_const_22); 
          if (arith_cmpi_68) {
            for (int for_iter_69 = arith_const_22; for_iter_69 < arith_const_14; for_iter_69 += arith_const_20) {
              int arith_muli_70 = (for_iter_66 * arith_const_17); 
              int arith_muli_71 = (for_iter_34 * arith_const_11); 
              int arith_addi_72 = (arith_muli_71 + arith_const_10); 
              int arith_cmpi_73 = (arith_addi_72 <= arith_const_22); 
              int arith_subi_74 = (arith_const_22 - arith_addi_72); 
              int arith_subi_75 = (arith_addi_72 - arith_const_20); 
              int arith_select_76 = (arith_cmpi_73 ? arith_subi_74 : arith_subi_75); 
              int arith_divi_77 = (arith_select_76 / arith_const_9); 
              int arith_subi_78 = (arith_const_22 - arith_divi_77); 
              int arith_addi_79 = (arith_divi_77 + arith_const_20); 
              int arith_select_80 = (arith_cmpi_73 ? arith_subi_78 : arith_addi_79); 
              int arith_muli_81 = (arith_select_80 * arith_const_17); 
              int arith_addi_82 = (arith_muli_70 + arith_muli_81); 
              int arith_muli_83 = (for_iter_34 * arith_const_8); 
              int arith_addi_84 = (arith_muli_83 + arith_const_7); 
              int arith_maxsi_85 = max(arith_addi_82, arith_addi_84); 
              int arith_muli_86 = (for_iter_66 * arith_const_17); 
              int arith_muli_87 = (for_iter_34 * arith_const_11); 
              int arith_addi_88 = (arith_muli_87 + arith_const_10); 
              int arith_cmpi_89 = (arith_addi_88 <= arith_const_22); 
              int arith_subi_90 = (arith_const_22 - arith_addi_88); 
              int arith_subi_91 = (arith_addi_88 - arith_const_20); 
              int arith_select_92 = (arith_cmpi_89 ? arith_subi_90 : arith_subi_91); 
              int arith_divi_93 = (arith_select_92 / arith_const_9); 
              int arith_subi_94 = (arith_const_22 - arith_divi_93); 
              int arith_addi_95 = (arith_divi_93 + arith_const_20); 
              int arith_select_96 = (arith_cmpi_89 ? arith_subi_94 : arith_addi_95); 
              int arith_muli_97 = (arith_select_96 * arith_const_17); 
              int arith_addi_98 = (arith_muli_86 + arith_muli_97); 
              int arith_addi_99 = (arith_addi_98 + arith_const_6); 
              for (int for_iter_100 = arith_maxsi_85; for_iter_100 < arith_addi_99; for_iter_100 += arith_const_20) {
                int arith_addi_101 = (for_iter_100 + arith_const_16); 
                int arith_remsi_102 = (arith_addi_101 % arith_const_8); 
                int arith_cmpi_103 = (arith_remsi_102 < arith_const_22); 
                int arith_addi_104 = (arith_remsi_102 + arith_const_8); 
                int arith_select_105 = (arith_cmpi_103 ? arith_addi_104 : arith_remsi_102); 
                int arith_cmpi_106 = (arith_select_105 == arith_const_22); 
                if (arith_cmpi_106) {
                  int arith_addi_107 = (for_iter_100 + arith_const_5); 
                  int arith_cmpi_108 = (arith_addi_107 <= arith_const_22); 
                  int arith_subi_109 = (arith_const_22 - arith_addi_107); 
                  int arith_subi_110 = (arith_addi_107 - arith_const_20); 
                  int arith_select_111 = (arith_cmpi_108 ? arith_subi_109 : arith_subi_110); 
                  int arith_divi_112 = (arith_select_111 / arith_const_8); 
                  int arith_subi_113 = (arith_const_22 - arith_divi_112); 
                  int arith_addi_114 = (arith_divi_112 + arith_const_20); 
                  int arith_select_115 = (arith_cmpi_108 ? arith_subi_113 : arith_addi_114); 
                  double memref_load_116 = func_arg_3[for_iter_34][arith_select_115]; 
                  double memref_load_117 = func_arg_4[for_iter_69][for_iter_34]; 
                  int arith_addi_118 = (for_iter_100 + arith_const_5); 
                  int arith_cmpi_119 = (arith_addi_118 <= arith_const_22); 
                  int arith_subi_120 = (arith_const_22 - arith_addi_118); 
                  int arith_subi_121 = (arith_addi_118 - arith_const_20); 
                  int arith_select_122 = (arith_cmpi_119 ? arith_subi_120 : arith_subi_121); 
                  int arith_divi_123 = (arith_select_122 / arith_const_8); 
                  int arith_subi_124 = (arith_const_22 - arith_divi_123); 
                  int arith_addi_125 = (arith_divi_123 + arith_const_20); 
                  int arith_select_126 = (arith_cmpi_119 ? arith_subi_124 : arith_addi_125); 
                  double memref_load_127 = func_arg_2[for_iter_69][arith_select_126]; 
                  double arith_mulf_128 = (memref_load_117 * memref_load_127); 
                  double arith_addf_129 = (memref_load_116 + arith_mulf_128); 
                  int arith_addi_130 = (for_iter_100 + arith_const_5); 
                  int arith_cmpi_131 = (arith_addi_130 <= arith_const_22); 
                  int arith_subi_132 = (arith_const_22 - arith_addi_130); 
                  int arith_subi_133 = (arith_addi_130 - arith_const_20); 
                  int arith_select_134 = (arith_cmpi_131 ? arith_subi_132 : arith_subi_133); 
                  int arith_divi_135 = (arith_select_134 / arith_const_8); 
                  int arith_subi_136 = (arith_const_22 - arith_divi_135); 
                  int arith_addi_137 = (arith_divi_135 + arith_const_20); 
                  int arith_select_138 = (arith_cmpi_131 ? arith_subi_136 : arith_addi_137); 
                  func_arg_3[for_iter_34][arith_select_138] = arith_addf_129; 
                }
              }
            }
          }
          int arith_cmpi_139 = (for_iter_67 == arith_const_22); 
          if (arith_cmpi_139) {
            int arith_muli_140 = (for_iter_66 * arith_const_17); 
            int arith_muli_141 = (for_iter_34 * arith_const_11); 
            int arith_addi_142 = (arith_muli_141 + arith_const_10); 
            int arith_cmpi_143 = (arith_addi_142 <= arith_const_22); 
            int arith_subi_144 = (arith_const_22 - arith_addi_142); 
            int arith_subi_145 = (arith_addi_142 - arith_const_20); 
            int arith_select_146 = (arith_cmpi_143 ? arith_subi_144 : arith_subi_145); 
            int arith_divi_147 = (arith_select_146 / arith_const_9); 
            int arith_subi_148 = (arith_const_22 - arith_divi_147); 
            int arith_addi_149 = (arith_divi_147 + arith_const_20); 
            int arith_select_150 = (arith_cmpi_143 ? arith_subi_148 : arith_addi_149); 
            int arith_muli_151 = (arith_select_150 * arith_const_17); 
            int arith_addi_152 = (arith_muli_140 + arith_muli_151); 
            int arith_muli_153 = (for_iter_34 * arith_const_8); 
            int arith_addi_154 = (arith_muli_153 + arith_const_7); 
            int arith_maxsi_155 = max(arith_addi_152, arith_addi_154); 
            int arith_muli_156 = (for_iter_66 * arith_const_17); 
            int arith_muli_157 = (for_iter_34 * arith_const_11); 
            int arith_addi_158 = (arith_muli_157 + arith_const_10); 
            int arith_cmpi_159 = (arith_addi_158 <= arith_const_22); 
            int arith_subi_160 = (arith_const_22 - arith_addi_158); 
            int arith_subi_161 = (arith_addi_158 - arith_const_20); 
            int arith_select_162 = (arith_cmpi_159 ? arith_subi_160 : arith_subi_161); 
            int arith_divi_163 = (arith_select_162 / arith_const_9); 
            int arith_subi_164 = (arith_const_22 - arith_divi_163); 
            int arith_addi_165 = (arith_divi_163 + arith_const_20); 
            int arith_select_166 = (arith_cmpi_159 ? arith_subi_164 : arith_addi_165); 
            int arith_muli_167 = (arith_select_166 * arith_const_17); 
            int arith_addi_168 = (arith_muli_156 + arith_muli_167); 
            int arith_addi_169 = (arith_addi_168 + arith_const_6); 
            for (int for_iter_170 = arith_maxsi_155; for_iter_170 < arith_addi_169; for_iter_170 += arith_const_20) {
              int arith_addi_171 = (for_iter_170 + arith_const_16); 
              int arith_remsi_172 = (arith_addi_171 % arith_const_8); 
              int arith_cmpi_173 = (arith_remsi_172 < arith_const_22); 
              int arith_addi_174 = (arith_remsi_172 + arith_const_8); 
              int arith_select_175 = (arith_cmpi_173 ? arith_addi_174 : arith_remsi_172); 
              int arith_cmpi_176 = (arith_select_175 == arith_const_22); 
              if (arith_cmpi_176) {
                int arith_addi_177 = (for_iter_170 + arith_const_5); 
                int arith_cmpi_178 = (arith_addi_177 <= arith_const_22); 
                int arith_subi_179 = (arith_const_22 - arith_addi_177); 
                int arith_subi_180 = (arith_addi_177 - arith_const_20); 
                int arith_select_181 = (arith_cmpi_178 ? arith_subi_179 : arith_subi_180); 
                int arith_divi_182 = (arith_select_181 / arith_const_8); 
                int arith_subi_183 = (arith_const_22 - arith_divi_182); 
                int arith_addi_184 = (arith_divi_182 + arith_const_20); 
                int arith_select_185 = (arith_cmpi_178 ? arith_subi_183 : arith_addi_184); 
                double memref_load_186 = func_arg_3[for_iter_34][arith_select_185]; 
                double memref_load_187 = func_arg_4[arith_const_14][for_iter_34]; 
                int arith_addi_188 = (for_iter_170 + arith_const_5); 
                int arith_cmpi_189 = (arith_addi_188 <= arith_const_22); 
                int arith_subi_190 = (arith_const_22 - arith_addi_188); 
                int arith_subi_191 = (arith_addi_188 - arith_const_20); 
                int arith_select_192 = (arith_cmpi_189 ? arith_subi_190 : arith_subi_191); 
                int arith_divi_193 = (arith_select_192 / arith_const_8); 
                int arith_subi_194 = (arith_const_22 - arith_divi_193); 
                int arith_addi_195 = (arith_divi_193 + arith_const_20); 
                int arith_select_196 = (arith_cmpi_189 ? arith_subi_194 : arith_addi_195); 
                double memref_load_197 = func_arg_2[arith_const_14][arith_select_196]; 
                double arith_mulf_198 = (memref_load_187 * memref_load_197); 
                double arith_addf_199 = (memref_load_186 + arith_mulf_198); 
                int arith_addi_200 = (for_iter_170 + arith_const_5); 
                int arith_cmpi_201 = (arith_addi_200 <= arith_const_22); 
                int arith_subi_202 = (arith_const_22 - arith_addi_200); 
                int arith_subi_203 = (arith_addi_200 - arith_const_20); 
                int arith_select_204 = (arith_cmpi_201 ? arith_subi_202 : arith_subi_203); 
                int arith_divi_205 = (arith_select_204 / arith_const_8); 
                int arith_subi_206 = (arith_const_22 - arith_divi_205); 
                int arith_addi_207 = (arith_divi_205 + arith_const_20); 
                int arith_select_208 = (arith_cmpi_201 ? arith_subi_206 : arith_addi_207); 
                func_arg_3[for_iter_34][arith_select_208] = arith_addf_199; 
              }
              int arith_addi_209 = (for_iter_170 + arith_const_16); 
              int arith_remsi_210 = (arith_addi_209 % arith_const_8); 
              int arith_cmpi_211 = (arith_remsi_210 < arith_const_22); 
              int arith_addi_212 = (arith_remsi_210 + arith_const_8); 
              int arith_select_213 = (arith_cmpi_211 ? arith_addi_212 : arith_remsi_210); 
              int arith_cmpi_214 = (arith_select_213 == arith_const_22); 
              if (arith_cmpi_214) {
                int arith_addi_215 = (for_iter_170 + arith_const_5); 
                int arith_cmpi_216 = (arith_addi_215 <= arith_const_22); 
                int arith_subi_217 = (arith_const_22 - arith_addi_215); 
                int arith_subi_218 = (arith_addi_215 - arith_const_20); 
                int arith_select_219 = (arith_cmpi_216 ? arith_subi_217 : arith_subi_218); 
                int arith_divi_220 = (arith_select_219 / arith_const_8); 
                int arith_subi_221 = (arith_const_22 - arith_divi_220); 
                int arith_addi_222 = (arith_divi_220 + arith_const_20); 
                int arith_select_223 = (arith_cmpi_216 ? arith_subi_221 : arith_addi_222); 
                double memref_load_224 = func_arg_2[arith_const_22][arith_select_223]; 
                double memref_load_225 = func_arg_4[arith_const_22][for_iter_34]; 
                int arith_addi_226 = (for_iter_170 + arith_const_5); 
                int arith_cmpi_227 = (arith_addi_226 <= arith_const_22); 
                int arith_subi_228 = (arith_const_22 - arith_addi_226); 
                int arith_subi_229 = (arith_addi_226 - arith_const_20); 
                int arith_select_230 = (arith_cmpi_227 ? arith_subi_228 : arith_subi_229); 
                int arith_divi_231 = (arith_select_230 / arith_const_8); 
                int arith_subi_232 = (arith_const_22 - arith_divi_231); 
                int arith_addi_233 = (arith_divi_231 + arith_const_20); 
                int arith_select_234 = (arith_cmpi_227 ? arith_subi_232 : arith_addi_233); 
                double memref_load_235 = func_arg_3[for_iter_34][arith_select_234]; 
                double arith_mulf_236 = (memref_load_225 * memref_load_235); 
                double arith_subf_237 = (memref_load_224 - arith_mulf_236); 
                int arith_addi_238 = (for_iter_170 + arith_const_5); 
                int arith_cmpi_239 = (arith_addi_238 <= arith_const_22); 
                int arith_subi_240 = (arith_const_22 - arith_addi_238); 
                int arith_subi_241 = (arith_addi_238 - arith_const_20); 
                int arith_select_242 = (arith_cmpi_239 ? arith_subi_240 : arith_subi_241); 
                int arith_divi_243 = (arith_select_242 / arith_const_8); 
                int arith_subi_244 = (arith_const_22 - arith_divi_243); 
                int arith_addi_245 = (arith_divi_243 + arith_const_20); 
                int arith_select_246 = (arith_cmpi_239 ? arith_subi_244 : arith_addi_245); 
                func_arg_2[arith_const_22][arith_select_246] = arith_subf_237; 
              }
            }
          }
          int arith_muli_247 = (for_iter_67 * arith_const_17); 
          int arith_maxsi_248 = max(arith_muli_247, arith_const_15); 
          int arith_muli_249 = (for_iter_67 * arith_const_17); 
          int arith_addi_250 = (arith_muli_249 + arith_const_17); 
          int arith_minsi_251 = min(arith_addi_250, arith_const_13); 
          for (int for_iter_252 = arith_maxsi_248; for_iter_252 < arith_minsi_251; for_iter_252 += arith_const_20) {
            int arith_muli_253 = (for_iter_66 * arith_const_17); 
            int arith_muli_254 = (for_iter_34 * arith_const_11); 
            int arith_addi_255 = (arith_muli_254 + arith_const_10); 
            int arith_cmpi_256 = (arith_addi_255 <= arith_const_22); 
            int arith_subi_257 = (arith_const_22 - arith_addi_255); 
            int arith_subi_258 = (arith_addi_255 - arith_const_20); 
            int arith_select_259 = (arith_cmpi_256 ? arith_subi_257 : arith_subi_258); 
            int arith_divi_260 = (arith_select_259 / arith_const_9); 
            int arith_subi_261 = (arith_const_22 - arith_divi_260); 
            int arith_addi_262 = (arith_divi_260 + arith_const_20); 
            int arith_select_263 = (arith_cmpi_256 ? arith_subi_261 : arith_addi_262); 
            int arith_muli_264 = (arith_select_263 * arith_const_17); 
            int arith_addi_265 = (arith_muli_253 + arith_muli_264); 
            int arith_muli_266 = (for_iter_34 * arith_const_8); 
            int arith_addi_267 = (arith_muli_266 + arith_const_7); 
            int arith_maxsi_268 = max(arith_addi_265, arith_addi_267); 
            int arith_muli_269 = (for_iter_66 * arith_const_17); 
            int arith_muli_270 = (for_iter_34 * arith_const_11); 
            int arith_addi_271 = (arith_muli_270 + arith_const_10); 
            int arith_cmpi_272 = (arith_addi_271 <= arith_const_22); 
            int arith_subi_273 = (arith_const_22 - arith_addi_271); 
            int arith_subi_274 = (arith_addi_271 - arith_const_20); 
            int arith_select_275 = (arith_cmpi_272 ? arith_subi_273 : arith_subi_274); 
            int arith_divi_276 = (arith_select_275 / arith_const_9); 
            int arith_subi_277 = (arith_const_22 - arith_divi_276); 
            int arith_addi_278 = (arith_divi_276 + arith_const_20); 
            int arith_select_279 = (arith_cmpi_272 ? arith_subi_277 : arith_addi_278); 
            int arith_muli_280 = (arith_select_279 * arith_const_17); 
            int arith_addi_281 = (arith_muli_269 + arith_muli_280); 
            int arith_addi_282 = (arith_addi_281 + arith_const_6); 
            for (int for_iter_283 = arith_maxsi_268; for_iter_283 < arith_addi_282; for_iter_283 += arith_const_20) {
              int arith_addi_284 = (for_iter_283 + arith_const_16); 
              int arith_remsi_285 = (arith_addi_284 % arith_const_8); 
              int arith_cmpi_286 = (arith_remsi_285 < arith_const_22); 
              int arith_addi_287 = (arith_remsi_285 + arith_const_8); 
              int arith_select_288 = (arith_cmpi_286 ? arith_addi_287 : arith_remsi_285); 
              int arith_cmpi_289 = (arith_select_288 == arith_const_22); 
              if (arith_cmpi_289) {
                int arith_addi_290 = (for_iter_252 + arith_const_12); 
                int arith_addi_291 = (for_iter_283 + arith_const_5); 
                int arith_cmpi_292 = (arith_addi_291 <= arith_const_22); 
                int arith_subi_293 = (arith_const_22 - arith_addi_291); 
                int arith_subi_294 = (arith_addi_291 - arith_const_20); 
                int arith_select_295 = (arith_cmpi_292 ? arith_subi_293 : arith_subi_294); 
                int arith_divi_296 = (arith_select_295 / arith_const_8); 
                int arith_subi_297 = (arith_const_22 - arith_divi_296); 
                int arith_addi_298 = (arith_divi_296 + arith_const_20); 
                int arith_select_299 = (arith_cmpi_292 ? arith_subi_297 : arith_addi_298); 
                double memref_load_300 = func_arg_2[arith_addi_290][arith_select_299]; 
                int arith_addi_301 = (for_iter_252 + arith_const_12); 
                double memref_load_302 = func_arg_4[arith_addi_301][for_iter_34]; 
                int arith_addi_303 = (for_iter_283 + arith_const_5); 
                int arith_cmpi_304 = (arith_addi_303 <= arith_const_22); 
                int arith_subi_305 = (arith_const_22 - arith_addi_303); 
                int arith_subi_306 = (arith_addi_303 - arith_const_20); 
                int arith_select_307 = (arith_cmpi_304 ? arith_subi_305 : arith_subi_306); 
                int arith_divi_308 = (arith_select_307 / arith_const_8); 
                int arith_subi_309 = (arith_const_22 - arith_divi_308); 
                int arith_addi_310 = (arith_divi_308 + arith_const_20); 
                int arith_select_311 = (arith_cmpi_304 ? arith_subi_309 : arith_addi_310); 
                double memref_load_312 = func_arg_3[for_iter_34][arith_select_311]; 
                double arith_mulf_313 = (memref_load_302 * memref_load_312); 
                double arith_subf_314 = (memref_load_300 - arith_mulf_313); 
                int arith_addi_315 = (for_iter_252 + arith_const_12); 
                int arith_addi_316 = (for_iter_283 + arith_const_5); 
                int arith_cmpi_317 = (arith_addi_316 <= arith_const_22); 
                int arith_subi_318 = (arith_const_22 - arith_addi_316); 
                int arith_subi_319 = (arith_addi_316 - arith_const_20); 
                int arith_select_320 = (arith_cmpi_317 ? arith_subi_318 : arith_subi_319); 
                int arith_divi_321 = (arith_select_320 / arith_const_8); 
                int arith_subi_322 = (arith_const_22 - arith_divi_321); 
                int arith_addi_323 = (arith_divi_321 + arith_const_20); 
                int arith_select_324 = (arith_cmpi_317 ? arith_subi_322 : arith_addi_323); 
                func_arg_2[arith_addi_315][arith_select_324] = arith_subf_314; 
              }
            }
          }
        }
      }
      double memref_load_325 = memref_alloca_24[0]; 
      double math_sqrt_326 = sqrt(memref_load_325); 
      func_arg_3[for_iter_34][for_iter_34] = math_sqrt_326; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* R;
  double* Q;


  kernel_gramschmidt(m, n, A, R, Q);

}

#pragma pocc-region-end
