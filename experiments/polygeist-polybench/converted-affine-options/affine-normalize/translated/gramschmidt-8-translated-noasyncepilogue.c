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
  int arith_const_14 = 32; 
  int arith_const_15 = 19; 
  int arith_const_16 = 20; 
  int arith_const_17 = 2; 
  int arith_const_18 = 30; 
  int arith_const_19 = -1; 
  int arith_const_20 = 1; 
  int arith_const_21 = 29; 
  int arith_const_22 = 0; 
  double _23; 
  double arith_const_24 = 0.000000; 
  double* memref_alloca_25; 
  for (int for_iter_26 = arith_const_22; for_iter_26 < arith_const_21; for_iter_26 += arith_const_20) {
    int arith_muli_27 = (for_iter_26 * arith_const_19); 
    int arith_addi_28 = (arith_muli_27 + arith_const_21); 
    for (int for_iter_29 = arith_const_22; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_20) {
      int arith_addi_30 = (for_iter_26 + for_iter_29); 
      int arith_addi_31 = (arith_addi_30 + arith_const_20); 
      func_arg_3[for_iter_26][arith_addi_31] = arith_const_24; 
    }
  }
  memref_alloca_25[0] = _23; 
  for (int for_iter_32 = arith_const_22; for_iter_32 < arith_const_18; for_iter_32 += arith_const_20) {
    for (int for_iter_33 = arith_const_22; for_iter_33 < arith_const_17; for_iter_33 += arith_const_20) {
      int arith_cmpi_34 = (for_iter_33 == arith_const_22); 
      if (arith_cmpi_34) {
        for (int for_iter_35 = arith_const_22; for_iter_35 < arith_const_16; for_iter_35 += arith_const_20) {
          double memref_load_36 = memref_alloca_25[0]; 
          double memref_load_37 = func_arg_2[for_iter_35][for_iter_32]; 
          double arith_mulf_38 = (memref_load_37 * memref_load_37); 
          double arith_addf_39 = (memref_load_36 + arith_mulf_38); 
          memref_alloca_25[0] = arith_addf_39; 
        }
      }
      int arith_muli_40 = (for_iter_33 * arith_const_14); 
      int arith_maxsi_41 = max(arith_muli_40, arith_const_15); 
      int arith_muli_42 = (for_iter_33 * arith_const_14); 
      int arith_addi_43 = (arith_muli_42 + arith_const_14); 
      int arith_minsi_44 = min(arith_addi_43, arith_const_13); 
      for (int for_iter_45 = arith_maxsi_41; for_iter_45 < arith_minsi_44; for_iter_45 += arith_const_20) {
        int arith_addi_46 = (for_iter_45 + arith_const_12); 
        double memref_load_47 = func_arg_2[arith_addi_46][for_iter_32]; 
        double memref_load_48 = func_arg_3[for_iter_32][for_iter_32]; 
        double arith_divf_49 = (memref_load_47 / memref_load_48); 
        int arith_addi_50 = (for_iter_45 + arith_const_12); 
        func_arg_4[arith_addi_50][for_iter_32] = arith_divf_49; 
      }
      int arith_cmpi_51 = (for_iter_33 == arith_const_22); 
      if (arith_cmpi_51) {
        memref_alloca_25[0] = arith_const_24; 
      }
    }
    int arith_muli_52 = (for_iter_32 * arith_const_11); 
    int arith_addi_53 = (arith_muli_52 + arith_const_10); 
    int arith_cmpi_54 = (arith_addi_53 <= arith_const_22); 
    int arith_subi_55 = (arith_const_22 - arith_addi_53); 
    int arith_subi_56 = (arith_addi_53 - arith_const_20); 
    int arith_select_57 = (arith_cmpi_54 ? arith_subi_55 : arith_subi_56); 
    int arith_divi_58 = (arith_select_57 / arith_const_9); 
    int arith_subi_59 = (arith_const_22 - arith_divi_58); 
    int arith_addi_60 = (arith_divi_58 + arith_const_20); 
    int arith_select_61 = (arith_cmpi_54 ? arith_subi_59 : arith_addi_60); 
    int arith_muli_62 = (arith_select_61 * arith_const_19); 
    int arith_addi_63 = (arith_muli_62 + arith_const_8); 
    for (int for_iter_64 = arith_const_22; for_iter_64 < arith_addi_63; for_iter_64 += arith_const_20) {
      for (int for_iter_65 = arith_const_22; for_iter_65 < arith_const_17; for_iter_65 += arith_const_20) {
        int arith_cmpi_66 = (for_iter_65 == arith_const_22); 
        if (arith_cmpi_66) {
          for (int for_iter_67 = arith_const_22; for_iter_67 < arith_const_15; for_iter_67 += arith_const_20) {
            int arith_muli_68 = (for_iter_64 * arith_const_14); 
            int arith_muli_69 = (for_iter_32 * arith_const_11); 
            int arith_addi_70 = (arith_muli_69 + arith_const_10); 
            int arith_cmpi_71 = (arith_addi_70 <= arith_const_22); 
            int arith_subi_72 = (arith_const_22 - arith_addi_70); 
            int arith_subi_73 = (arith_addi_70 - arith_const_20); 
            int arith_select_74 = (arith_cmpi_71 ? arith_subi_72 : arith_subi_73); 
            int arith_divi_75 = (arith_select_74 / arith_const_9); 
            int arith_subi_76 = (arith_const_22 - arith_divi_75); 
            int arith_addi_77 = (arith_divi_75 + arith_const_20); 
            int arith_select_78 = (arith_cmpi_71 ? arith_subi_76 : arith_addi_77); 
            int arith_muli_79 = (arith_select_78 * arith_const_14); 
            int arith_addi_80 = (arith_muli_68 + arith_muli_79); 
            int arith_muli_81 = (for_iter_32 * arith_const_8); 
            int arith_addi_82 = (arith_muli_81 + arith_const_7); 
            int arith_maxsi_83 = max(arith_addi_80, arith_addi_82); 
            int arith_muli_84 = (for_iter_64 * arith_const_14); 
            int arith_muli_85 = (for_iter_32 * arith_const_11); 
            int arith_addi_86 = (arith_muli_85 + arith_const_10); 
            int arith_cmpi_87 = (arith_addi_86 <= arith_const_22); 
            int arith_subi_88 = (arith_const_22 - arith_addi_86); 
            int arith_subi_89 = (arith_addi_86 - arith_const_20); 
            int arith_select_90 = (arith_cmpi_87 ? arith_subi_88 : arith_subi_89); 
            int arith_divi_91 = (arith_select_90 / arith_const_9); 
            int arith_subi_92 = (arith_const_22 - arith_divi_91); 
            int arith_addi_93 = (arith_divi_91 + arith_const_20); 
            int arith_select_94 = (arith_cmpi_87 ? arith_subi_92 : arith_addi_93); 
            int arith_muli_95 = (arith_select_94 * arith_const_14); 
            int arith_addi_96 = (arith_muli_84 + arith_muli_95); 
            int arith_addi_97 = (arith_addi_96 + arith_const_6); 
            for (int for_iter_98 = arith_maxsi_83; for_iter_98 < arith_addi_97; for_iter_98 += arith_const_20) {
              int arith_addi_99 = (for_iter_98 + arith_const_17); 
              int arith_remsi_100 = (arith_addi_99 % arith_const_8); 
              int arith_cmpi_101 = (arith_remsi_100 < arith_const_22); 
              int arith_addi_102 = (arith_remsi_100 + arith_const_8); 
              int arith_select_103 = (arith_cmpi_101 ? arith_addi_102 : arith_remsi_100); 
              int arith_cmpi_104 = (arith_select_103 == arith_const_22); 
              if (arith_cmpi_104) {
                int arith_addi_105 = (for_iter_98 + arith_const_5); 
                int arith_cmpi_106 = (arith_addi_105 <= arith_const_22); 
                int arith_subi_107 = (arith_const_22 - arith_addi_105); 
                int arith_subi_108 = (arith_addi_105 - arith_const_20); 
                int arith_select_109 = (arith_cmpi_106 ? arith_subi_107 : arith_subi_108); 
                int arith_divi_110 = (arith_select_109 / arith_const_8); 
                int arith_subi_111 = (arith_const_22 - arith_divi_110); 
                int arith_addi_112 = (arith_divi_110 + arith_const_20); 
                int arith_select_113 = (arith_cmpi_106 ? arith_subi_111 : arith_addi_112); 
                double memref_load_114 = func_arg_3[for_iter_32][arith_select_113]; 
                double memref_load_115 = func_arg_4[for_iter_67][for_iter_32]; 
                int arith_addi_116 = (for_iter_98 + arith_const_5); 
                int arith_cmpi_117 = (arith_addi_116 <= arith_const_22); 
                int arith_subi_118 = (arith_const_22 - arith_addi_116); 
                int arith_subi_119 = (arith_addi_116 - arith_const_20); 
                int arith_select_120 = (arith_cmpi_117 ? arith_subi_118 : arith_subi_119); 
                int arith_divi_121 = (arith_select_120 / arith_const_8); 
                int arith_subi_122 = (arith_const_22 - arith_divi_121); 
                int arith_addi_123 = (arith_divi_121 + arith_const_20); 
                int arith_select_124 = (arith_cmpi_117 ? arith_subi_122 : arith_addi_123); 
                double memref_load_125 = func_arg_2[for_iter_67][arith_select_124]; 
                double arith_mulf_126 = (memref_load_115 * memref_load_125); 
                double arith_addf_127 = (memref_load_114 + arith_mulf_126); 
                int arith_addi_128 = (for_iter_98 + arith_const_5); 
                int arith_cmpi_129 = (arith_addi_128 <= arith_const_22); 
                int arith_subi_130 = (arith_const_22 - arith_addi_128); 
                int arith_subi_131 = (arith_addi_128 - arith_const_20); 
                int arith_select_132 = (arith_cmpi_129 ? arith_subi_130 : arith_subi_131); 
                int arith_divi_133 = (arith_select_132 / arith_const_8); 
                int arith_subi_134 = (arith_const_22 - arith_divi_133); 
                int arith_addi_135 = (arith_divi_133 + arith_const_20); 
                int arith_select_136 = (arith_cmpi_129 ? arith_subi_134 : arith_addi_135); 
                func_arg_3[for_iter_32][arith_select_136] = arith_addf_127; 
              }
            }
          }
        }
        int arith_cmpi_137 = (for_iter_65 == arith_const_22); 
        if (arith_cmpi_137) {
          int arith_muli_138 = (for_iter_64 * arith_const_14); 
          int arith_muli_139 = (for_iter_32 * arith_const_11); 
          int arith_addi_140 = (arith_muli_139 + arith_const_10); 
          int arith_cmpi_141 = (arith_addi_140 <= arith_const_22); 
          int arith_subi_142 = (arith_const_22 - arith_addi_140); 
          int arith_subi_143 = (arith_addi_140 - arith_const_20); 
          int arith_select_144 = (arith_cmpi_141 ? arith_subi_142 : arith_subi_143); 
          int arith_divi_145 = (arith_select_144 / arith_const_9); 
          int arith_subi_146 = (arith_const_22 - arith_divi_145); 
          int arith_addi_147 = (arith_divi_145 + arith_const_20); 
          int arith_select_148 = (arith_cmpi_141 ? arith_subi_146 : arith_addi_147); 
          int arith_muli_149 = (arith_select_148 * arith_const_14); 
          int arith_addi_150 = (arith_muli_138 + arith_muli_149); 
          int arith_muli_151 = (for_iter_32 * arith_const_8); 
          int arith_addi_152 = (arith_muli_151 + arith_const_7); 
          int arith_maxsi_153 = max(arith_addi_150, arith_addi_152); 
          int arith_muli_154 = (for_iter_64 * arith_const_14); 
          int arith_muli_155 = (for_iter_32 * arith_const_11); 
          int arith_addi_156 = (arith_muli_155 + arith_const_10); 
          int arith_cmpi_157 = (arith_addi_156 <= arith_const_22); 
          int arith_subi_158 = (arith_const_22 - arith_addi_156); 
          int arith_subi_159 = (arith_addi_156 - arith_const_20); 
          int arith_select_160 = (arith_cmpi_157 ? arith_subi_158 : arith_subi_159); 
          int arith_divi_161 = (arith_select_160 / arith_const_9); 
          int arith_subi_162 = (arith_const_22 - arith_divi_161); 
          int arith_addi_163 = (arith_divi_161 + arith_const_20); 
          int arith_select_164 = (arith_cmpi_157 ? arith_subi_162 : arith_addi_163); 
          int arith_muli_165 = (arith_select_164 * arith_const_14); 
          int arith_addi_166 = (arith_muli_154 + arith_muli_165); 
          int arith_addi_167 = (arith_addi_166 + arith_const_6); 
          for (int for_iter_168 = arith_maxsi_153; for_iter_168 < arith_addi_167; for_iter_168 += arith_const_20) {
            int arith_addi_169 = (for_iter_168 + arith_const_17); 
            int arith_remsi_170 = (arith_addi_169 % arith_const_8); 
            int arith_cmpi_171 = (arith_remsi_170 < arith_const_22); 
            int arith_addi_172 = (arith_remsi_170 + arith_const_8); 
            int arith_select_173 = (arith_cmpi_171 ? arith_addi_172 : arith_remsi_170); 
            int arith_cmpi_174 = (arith_select_173 == arith_const_22); 
            if (arith_cmpi_174) {
              int arith_addi_175 = (for_iter_168 + arith_const_5); 
              int arith_cmpi_176 = (arith_addi_175 <= arith_const_22); 
              int arith_subi_177 = (arith_const_22 - arith_addi_175); 
              int arith_subi_178 = (arith_addi_175 - arith_const_20); 
              int arith_select_179 = (arith_cmpi_176 ? arith_subi_177 : arith_subi_178); 
              int arith_divi_180 = (arith_select_179 / arith_const_8); 
              int arith_subi_181 = (arith_const_22 - arith_divi_180); 
              int arith_addi_182 = (arith_divi_180 + arith_const_20); 
              int arith_select_183 = (arith_cmpi_176 ? arith_subi_181 : arith_addi_182); 
              double memref_load_184 = func_arg_3[for_iter_32][arith_select_183]; 
              double memref_load_185 = func_arg_4[arith_const_15][for_iter_32]; 
              int arith_addi_186 = (for_iter_168 + arith_const_5); 
              int arith_cmpi_187 = (arith_addi_186 <= arith_const_22); 
              int arith_subi_188 = (arith_const_22 - arith_addi_186); 
              int arith_subi_189 = (arith_addi_186 - arith_const_20); 
              int arith_select_190 = (arith_cmpi_187 ? arith_subi_188 : arith_subi_189); 
              int arith_divi_191 = (arith_select_190 / arith_const_8); 
              int arith_subi_192 = (arith_const_22 - arith_divi_191); 
              int arith_addi_193 = (arith_divi_191 + arith_const_20); 
              int arith_select_194 = (arith_cmpi_187 ? arith_subi_192 : arith_addi_193); 
              double memref_load_195 = func_arg_2[arith_const_15][arith_select_194]; 
              double arith_mulf_196 = (memref_load_185 * memref_load_195); 
              double arith_addf_197 = (memref_load_184 + arith_mulf_196); 
              int arith_addi_198 = (for_iter_168 + arith_const_5); 
              int arith_cmpi_199 = (arith_addi_198 <= arith_const_22); 
              int arith_subi_200 = (arith_const_22 - arith_addi_198); 
              int arith_subi_201 = (arith_addi_198 - arith_const_20); 
              int arith_select_202 = (arith_cmpi_199 ? arith_subi_200 : arith_subi_201); 
              int arith_divi_203 = (arith_select_202 / arith_const_8); 
              int arith_subi_204 = (arith_const_22 - arith_divi_203); 
              int arith_addi_205 = (arith_divi_203 + arith_const_20); 
              int arith_select_206 = (arith_cmpi_199 ? arith_subi_204 : arith_addi_205); 
              func_arg_3[for_iter_32][arith_select_206] = arith_addf_197; 
            }
            int arith_addi_207 = (for_iter_168 + arith_const_17); 
            int arith_remsi_208 = (arith_addi_207 % arith_const_8); 
            int arith_cmpi_209 = (arith_remsi_208 < arith_const_22); 
            int arith_addi_210 = (arith_remsi_208 + arith_const_8); 
            int arith_select_211 = (arith_cmpi_209 ? arith_addi_210 : arith_remsi_208); 
            int arith_cmpi_212 = (arith_select_211 == arith_const_22); 
            if (arith_cmpi_212) {
              int arith_addi_213 = (for_iter_168 + arith_const_5); 
              int arith_cmpi_214 = (arith_addi_213 <= arith_const_22); 
              int arith_subi_215 = (arith_const_22 - arith_addi_213); 
              int arith_subi_216 = (arith_addi_213 - arith_const_20); 
              int arith_select_217 = (arith_cmpi_214 ? arith_subi_215 : arith_subi_216); 
              int arith_divi_218 = (arith_select_217 / arith_const_8); 
              int arith_subi_219 = (arith_const_22 - arith_divi_218); 
              int arith_addi_220 = (arith_divi_218 + arith_const_20); 
              int arith_select_221 = (arith_cmpi_214 ? arith_subi_219 : arith_addi_220); 
              double memref_load_222 = func_arg_2[arith_const_22][arith_select_221]; 
              double memref_load_223 = func_arg_4[arith_const_22][for_iter_32]; 
              int arith_addi_224 = (for_iter_168 + arith_const_5); 
              int arith_cmpi_225 = (arith_addi_224 <= arith_const_22); 
              int arith_subi_226 = (arith_const_22 - arith_addi_224); 
              int arith_subi_227 = (arith_addi_224 - arith_const_20); 
              int arith_select_228 = (arith_cmpi_225 ? arith_subi_226 : arith_subi_227); 
              int arith_divi_229 = (arith_select_228 / arith_const_8); 
              int arith_subi_230 = (arith_const_22 - arith_divi_229); 
              int arith_addi_231 = (arith_divi_229 + arith_const_20); 
              int arith_select_232 = (arith_cmpi_225 ? arith_subi_230 : arith_addi_231); 
              double memref_load_233 = func_arg_3[for_iter_32][arith_select_232]; 
              double arith_mulf_234 = (memref_load_223 * memref_load_233); 
              double arith_subf_235 = (memref_load_222 - arith_mulf_234); 
              int arith_addi_236 = (for_iter_168 + arith_const_5); 
              int arith_cmpi_237 = (arith_addi_236 <= arith_const_22); 
              int arith_subi_238 = (arith_const_22 - arith_addi_236); 
              int arith_subi_239 = (arith_addi_236 - arith_const_20); 
              int arith_select_240 = (arith_cmpi_237 ? arith_subi_238 : arith_subi_239); 
              int arith_divi_241 = (arith_select_240 / arith_const_8); 
              int arith_subi_242 = (arith_const_22 - arith_divi_241); 
              int arith_addi_243 = (arith_divi_241 + arith_const_20); 
              int arith_select_244 = (arith_cmpi_237 ? arith_subi_242 : arith_addi_243); 
              func_arg_2[arith_const_22][arith_select_244] = arith_subf_235; 
            }
          }
        }
        int arith_muli_245 = (for_iter_65 * arith_const_14); 
        int arith_maxsi_246 = max(arith_muli_245, arith_const_16); 
        int arith_muli_247 = (for_iter_65 * arith_const_14); 
        int arith_addi_248 = (arith_muli_247 + arith_const_14); 
        int arith_minsi_249 = min(arith_addi_248, arith_const_13); 
        for (int for_iter_250 = arith_maxsi_246; for_iter_250 < arith_minsi_249; for_iter_250 += arith_const_20) {
          int arith_muli_251 = (for_iter_64 * arith_const_14); 
          int arith_muli_252 = (for_iter_32 * arith_const_11); 
          int arith_addi_253 = (arith_muli_252 + arith_const_10); 
          int arith_cmpi_254 = (arith_addi_253 <= arith_const_22); 
          int arith_subi_255 = (arith_const_22 - arith_addi_253); 
          int arith_subi_256 = (arith_addi_253 - arith_const_20); 
          int arith_select_257 = (arith_cmpi_254 ? arith_subi_255 : arith_subi_256); 
          int arith_divi_258 = (arith_select_257 / arith_const_9); 
          int arith_subi_259 = (arith_const_22 - arith_divi_258); 
          int arith_addi_260 = (arith_divi_258 + arith_const_20); 
          int arith_select_261 = (arith_cmpi_254 ? arith_subi_259 : arith_addi_260); 
          int arith_muli_262 = (arith_select_261 * arith_const_14); 
          int arith_addi_263 = (arith_muli_251 + arith_muli_262); 
          int arith_muli_264 = (for_iter_32 * arith_const_8); 
          int arith_addi_265 = (arith_muli_264 + arith_const_7); 
          int arith_maxsi_266 = max(arith_addi_263, arith_addi_265); 
          int arith_muli_267 = (for_iter_64 * arith_const_14); 
          int arith_muli_268 = (for_iter_32 * arith_const_11); 
          int arith_addi_269 = (arith_muli_268 + arith_const_10); 
          int arith_cmpi_270 = (arith_addi_269 <= arith_const_22); 
          int arith_subi_271 = (arith_const_22 - arith_addi_269); 
          int arith_subi_272 = (arith_addi_269 - arith_const_20); 
          int arith_select_273 = (arith_cmpi_270 ? arith_subi_271 : arith_subi_272); 
          int arith_divi_274 = (arith_select_273 / arith_const_9); 
          int arith_subi_275 = (arith_const_22 - arith_divi_274); 
          int arith_addi_276 = (arith_divi_274 + arith_const_20); 
          int arith_select_277 = (arith_cmpi_270 ? arith_subi_275 : arith_addi_276); 
          int arith_muli_278 = (arith_select_277 * arith_const_14); 
          int arith_addi_279 = (arith_muli_267 + arith_muli_278); 
          int arith_addi_280 = (arith_addi_279 + arith_const_6); 
          for (int for_iter_281 = arith_maxsi_266; for_iter_281 < arith_addi_280; for_iter_281 += arith_const_20) {
            int arith_addi_282 = (for_iter_281 + arith_const_17); 
            int arith_remsi_283 = (arith_addi_282 % arith_const_8); 
            int arith_cmpi_284 = (arith_remsi_283 < arith_const_22); 
            int arith_addi_285 = (arith_remsi_283 + arith_const_8); 
            int arith_select_286 = (arith_cmpi_284 ? arith_addi_285 : arith_remsi_283); 
            int arith_cmpi_287 = (arith_select_286 == arith_const_22); 
            if (arith_cmpi_287) {
              int arith_addi_288 = (for_iter_250 + arith_const_12); 
              int arith_addi_289 = (for_iter_281 + arith_const_5); 
              int arith_cmpi_290 = (arith_addi_289 <= arith_const_22); 
              int arith_subi_291 = (arith_const_22 - arith_addi_289); 
              int arith_subi_292 = (arith_addi_289 - arith_const_20); 
              int arith_select_293 = (arith_cmpi_290 ? arith_subi_291 : arith_subi_292); 
              int arith_divi_294 = (arith_select_293 / arith_const_8); 
              int arith_subi_295 = (arith_const_22 - arith_divi_294); 
              int arith_addi_296 = (arith_divi_294 + arith_const_20); 
              int arith_select_297 = (arith_cmpi_290 ? arith_subi_295 : arith_addi_296); 
              double memref_load_298 = func_arg_2[arith_addi_288][arith_select_297]; 
              int arith_addi_299 = (for_iter_250 + arith_const_12); 
              double memref_load_300 = func_arg_4[arith_addi_299][for_iter_32]; 
              int arith_addi_301 = (for_iter_281 + arith_const_5); 
              int arith_cmpi_302 = (arith_addi_301 <= arith_const_22); 
              int arith_subi_303 = (arith_const_22 - arith_addi_301); 
              int arith_subi_304 = (arith_addi_301 - arith_const_20); 
              int arith_select_305 = (arith_cmpi_302 ? arith_subi_303 : arith_subi_304); 
              int arith_divi_306 = (arith_select_305 / arith_const_8); 
              int arith_subi_307 = (arith_const_22 - arith_divi_306); 
              int arith_addi_308 = (arith_divi_306 + arith_const_20); 
              int arith_select_309 = (arith_cmpi_302 ? arith_subi_307 : arith_addi_308); 
              double memref_load_310 = func_arg_3[for_iter_32][arith_select_309]; 
              double arith_mulf_311 = (memref_load_300 * memref_load_310); 
              double arith_subf_312 = (memref_load_298 - arith_mulf_311); 
              int arith_addi_313 = (for_iter_250 + arith_const_12); 
              int arith_addi_314 = (for_iter_281 + arith_const_5); 
              int arith_cmpi_315 = (arith_addi_314 <= arith_const_22); 
              int arith_subi_316 = (arith_const_22 - arith_addi_314); 
              int arith_subi_317 = (arith_addi_314 - arith_const_20); 
              int arith_select_318 = (arith_cmpi_315 ? arith_subi_316 : arith_subi_317); 
              int arith_divi_319 = (arith_select_318 / arith_const_8); 
              int arith_subi_320 = (arith_const_22 - arith_divi_319); 
              int arith_addi_321 = (arith_divi_319 + arith_const_20); 
              int arith_select_322 = (arith_cmpi_315 ? arith_subi_320 : arith_addi_321); 
              func_arg_2[arith_addi_313][arith_select_322] = arith_subf_312; 
            }
          }
        }
      }
    }
    double memref_load_323 = memref_alloca_25[0]; 
    double math_sqrt_324 = sqrt(memref_load_323); 
    func_arg_3[for_iter_32][for_iter_32] = math_sqrt_324; 
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
