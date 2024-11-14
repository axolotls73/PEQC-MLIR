#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -26; 
  int arith_const_7 = 26; 
  int arith_const_8 = 27; 
  int arith_const_9 = 31; 
  int arith_const_10 = 13; 
  int arith_const_11 = -13; 
  int arith_const_12 = 16; 
  int arith_const_13 = 23; 
  int arith_const_14 = 128; 
  int arith_const_15 = -4; 
  int arith_const_16 = -32; 
  int arith_const_17 = 3; 
  int arith_const_18 = 2; 
  int arith_const_19 = 7; 
  int arith_const_20 = -8; 
  int arith_const_21 = 4; 
  int arith_const_22 = -1; 
  int arith_const_23 = 28; 
  int arith_const_24 = 32; 
  int arith_const_25 = 1; 
  int arith_const_26 = 0; 
  double arith_const_27 = 1.000000; 
  double arith_const_28 = 0.000000; 
  double* memref_alloca_29; 
  double* memref_alloca_30; 
  for (int for_iter_31 = arith_const_26; for_iter_31 < arith_const_25; for_iter_31 += arith_const_25) {
    int arith_muli_32 = (for_iter_31 * arith_const_24); 
    for (int for_iter_33 = arith_const_26; for_iter_33 < arith_const_23; for_iter_33 += arith_const_25) {
      int arith_addi_34 = (arith_muli_32 + for_iter_33); 
      int arith_muli_35 = (for_iter_33 * arith_const_22); 
      int arith_cmpi_36 = (arith_muli_35 < arith_const_26); 
      int arith_subi_37 = (arith_const_22 - arith_muli_35); 
      int arith_select_38 = (arith_cmpi_36 ? arith_subi_37 : arith_muli_35); 
      int arith_divi_39 = (arith_select_38 / arith_const_21); 
      int arith_subi_40 = (arith_const_22 - arith_divi_39); 
      int arith_select_41 = (arith_cmpi_36 ? arith_subi_40 : arith_divi_39); 
      int arith_muli_42 = (for_iter_31 * arith_const_20); 
      int arith_addi_43 = (arith_select_41 + arith_muli_42); 
      int arith_addi_44 = (arith_addi_43 + arith_const_19); 
      for (int for_iter_45 = arith_const_26; for_iter_45 < arith_addi_44; for_iter_45 += arith_const_25) {
        int arith_muli_46 = (for_iter_45 * arith_const_21); 
        int arith_addi_47 = (arith_addi_34 + arith_muli_46); 
        func_arg_4[arith_addi_34][arith_addi_47] = arith_const_28; 
        int arith_addi_48 = (arith_addi_47 + arith_const_25); 
        func_arg_4[arith_addi_34][arith_addi_48] = arith_const_28; 
        int arith_addi_49 = (arith_addi_47 + arith_const_18); 
        func_arg_4[arith_addi_34][arith_addi_49] = arith_const_28; 
        int arith_addi_50 = (arith_addi_47 + arith_const_17); 
        func_arg_4[arith_addi_34][arith_addi_50] = arith_const_28; 
      }
      int arith_muli_51 = (for_iter_33 * arith_const_22); 
      int arith_muli_52 = (for_iter_31 * arith_const_16); 
      int arith_addi_53 = (arith_muli_51 + arith_muli_52); 
      int arith_muli_54 = (for_iter_33 * arith_const_22); 
      int arith_cmpi_55 = (arith_muli_54 < arith_const_26); 
      int arith_subi_56 = (arith_const_22 - arith_muli_54); 
      int arith_select_57 = (arith_cmpi_55 ? arith_subi_56 : arith_muli_54); 
      int arith_divi_58 = (arith_select_57 / arith_const_21); 
      int arith_subi_59 = (arith_const_22 - arith_divi_58); 
      int arith_select_60 = (arith_cmpi_55 ? arith_subi_59 : arith_divi_58); 
      int arith_muli_61 = (for_iter_31 * arith_const_20); 
      int arith_addi_62 = (arith_select_60 + arith_muli_61); 
      int arith_muli_63 = (arith_addi_62 * arith_const_15); 
      int arith_addi_64 = (arith_addi_53 + arith_muli_63); 
      for (int for_iter_65 = arith_const_26; for_iter_65 < arith_addi_64; for_iter_65 += arith_const_25) {
        int arith_addi_66 = (arith_addi_34 + for_iter_65); 
        int arith_muli_67 = (arith_addi_34 * arith_const_22); 
        int arith_cmpi_68 = (arith_muli_67 < arith_const_26); 
        int arith_subi_69 = (arith_const_22 - arith_muli_67); 
        int arith_select_70 = (arith_cmpi_68 ? arith_subi_69 : arith_muli_67); 
        int arith_divi_71 = (arith_select_70 / arith_const_21); 
        int arith_subi_72 = (arith_const_22 - arith_divi_71); 
        int arith_select_73 = (arith_cmpi_68 ? arith_subi_72 : arith_divi_71); 
        int arith_muli_74 = (arith_select_73 * arith_const_21); 
        int arith_addi_75 = (arith_addi_66 + arith_muli_74); 
        int arith_addi_76 = (arith_addi_75 + arith_const_23); 
        func_arg_4[arith_addi_34][arith_addi_76] = arith_const_28; 
      }
    }
  }
  double arith_subf_77 = (func_arg_2 - arith_const_27); 
  memref_alloca_30[arith_const_26] = arith_subf_77; 
  for (int for_iter_78 = arith_const_26; for_iter_78 < arith_const_25; for_iter_78 += arith_const_25) {
    int arith_muli_79 = (for_iter_78 * arith_const_14); 
    for (int for_iter_80 = arith_const_26; for_iter_80 < arith_const_19; for_iter_80 += arith_const_25) {
      int arith_muli_81 = (for_iter_80 * arith_const_21); 
      int arith_addi_82 = (arith_muli_79 + arith_muli_81); 
      func_arg_5[arith_addi_82] = arith_const_28; 
      int arith_addi_83 = (arith_addi_82 + arith_const_25); 
      func_arg_5[arith_addi_83] = arith_const_28; 
      int arith_addi_84 = (arith_addi_82 + arith_const_18); 
      func_arg_5[arith_addi_84] = arith_const_28; 
      int arith_addi_85 = (arith_addi_82 + arith_const_17); 
      func_arg_5[arith_addi_85] = arith_const_28; 
    }
  }
  for (int for_iter_86 = arith_const_26; for_iter_86 < arith_const_25; for_iter_86 += arith_const_25) {
    int arith_muli_87 = (for_iter_86 * arith_const_24); 
    for (int for_iter_88 = arith_const_26; for_iter_88 < arith_const_25; for_iter_88 += arith_const_25) {
      int arith_muli_89 = (for_iter_88 * arith_const_14); 
      for (int for_iter_90 = arith_const_26; for_iter_90 < arith_const_24; for_iter_90 += arith_const_25) {
        int arith_addi_91 = (arith_muli_87 + for_iter_90); 
        for (int for_iter_92 = arith_const_26; for_iter_92 < arith_const_19; for_iter_92 += arith_const_25) {
          int arith_muli_93 = (for_iter_92 * arith_const_21); 
          int arith_addi_94 = (arith_muli_89 + arith_muli_93); 
          double memref_load_95 = func_arg_5[arith_addi_94]; 
          double memref_load_96 = func_arg_3[arith_addi_91][arith_addi_94]; 
          double arith_addf_97 = (memref_load_95 + memref_load_96); 
          func_arg_5[arith_addi_94] = arith_addf_97; 
          int arith_addi_98 = (arith_addi_94 + arith_const_25); 
          double memref_load_99 = func_arg_5[arith_addi_98]; 
          double memref_load_100 = func_arg_3[arith_addi_91][arith_addi_98]; 
          double arith_addf_101 = (memref_load_99 + memref_load_100); 
          func_arg_5[arith_addi_98] = arith_addf_101; 
          int arith_addi_102 = (arith_addi_94 + arith_const_18); 
          double memref_load_103 = func_arg_5[arith_addi_102]; 
          double memref_load_104 = func_arg_3[arith_addi_91][arith_addi_102]; 
          double arith_addf_105 = (memref_load_103 + memref_load_104); 
          func_arg_5[arith_addi_102] = arith_addf_105; 
          int arith_addi_106 = (arith_addi_94 + arith_const_17); 
          double memref_load_107 = func_arg_5[arith_addi_106]; 
          double memref_load_108 = func_arg_3[arith_addi_91][arith_addi_106]; 
          double arith_addf_109 = (memref_load_107 + memref_load_108); 
          func_arg_5[arith_addi_106] = arith_addf_109; 
        }
      }
    }
  }
  for (int for_iter_110 = arith_const_26; for_iter_110 < arith_const_25; for_iter_110 += arith_const_25) {
    int arith_muli_111 = (for_iter_110 * arith_const_14); 
    for (int for_iter_112 = arith_const_26; for_iter_112 < arith_const_19; for_iter_112 += arith_const_25) {
      int arith_muli_113 = (for_iter_112 * arith_const_21); 
      int arith_addi_114 = (arith_muli_111 + arith_muli_113); 
      double memref_load_115 = func_arg_5[arith_addi_114]; 
      double arith_divf_116 = (memref_load_115 / func_arg_2); 
      func_arg_5[arith_addi_114] = arith_divf_116; 
      int arith_addi_117 = (arith_addi_114 + arith_const_25); 
      double memref_load_118 = func_arg_5[arith_addi_117]; 
      double arith_divf_119 = (memref_load_118 / func_arg_2); 
      func_arg_5[arith_addi_117] = arith_divf_119; 
      int arith_addi_120 = (arith_addi_114 + arith_const_18); 
      double memref_load_121 = func_arg_5[arith_addi_120]; 
      double arith_divf_122 = (memref_load_121 / func_arg_2); 
      func_arg_5[arith_addi_120] = arith_divf_122; 
      int arith_addi_123 = (arith_addi_114 + arith_const_17); 
      double memref_load_124 = func_arg_5[arith_addi_123]; 
      double arith_divf_125 = (memref_load_124 / func_arg_2); 
      func_arg_5[arith_addi_123] = arith_divf_125; 
    }
  }
  for (int for_iter_126 = arith_const_26; for_iter_126 < arith_const_25; for_iter_126 += arith_const_25) {
    int arith_muli_127 = (for_iter_126 * arith_const_24); 
    for (int for_iter_128 = arith_const_26; for_iter_128 < arith_const_25; for_iter_128 += arith_const_25) {
      int arith_muli_129 = (for_iter_128 * arith_const_14); 
      for (int for_iter_130 = arith_const_26; for_iter_130 < arith_const_24; for_iter_130 += arith_const_25) {
        int arith_addi_131 = (arith_muli_127 + for_iter_130); 
        for (int for_iter_132 = arith_const_26; for_iter_132 < arith_const_19; for_iter_132 += arith_const_25) {
          int arith_muli_133 = (for_iter_132 * arith_const_21); 
          int arith_addi_134 = (arith_muli_129 + arith_muli_133); 
          double memref_load_135 = func_arg_3[arith_addi_131][arith_addi_134]; 
          double memref_load_136 = func_arg_5[arith_addi_134]; 
          double arith_subf_137 = (memref_load_135 - memref_load_136); 
          func_arg_3[arith_addi_131][arith_addi_134] = arith_subf_137; 
          int arith_addi_138 = (arith_addi_134 + arith_const_25); 
          double memref_load_139 = func_arg_3[arith_addi_131][arith_addi_138]; 
          double memref_load_140 = func_arg_5[arith_addi_138]; 
          double arith_subf_141 = (memref_load_139 - memref_load_140); 
          func_arg_3[arith_addi_131][arith_addi_138] = arith_subf_141; 
          int arith_addi_142 = (arith_addi_134 + arith_const_18); 
          double memref_load_143 = func_arg_3[arith_addi_131][arith_addi_142]; 
          double memref_load_144 = func_arg_5[arith_addi_142]; 
          double arith_subf_145 = (memref_load_143 - memref_load_144); 
          func_arg_3[arith_addi_131][arith_addi_142] = arith_subf_145; 
          int arith_addi_146 = (arith_addi_134 + arith_const_17); 
          double memref_load_147 = func_arg_3[arith_addi_131][arith_addi_146]; 
          double memref_load_148 = func_arg_5[arith_addi_146]; 
          double arith_subf_149 = (memref_load_147 - memref_load_148); 
          func_arg_3[arith_addi_131][arith_addi_146] = arith_subf_149; 
        }
      }
    }
  }
  for (int for_iter_150 = arith_const_26; for_iter_150 < arith_const_25; for_iter_150 += arith_const_25) {
    int arith_muli_151 = (for_iter_150 * arith_const_24); 
    for (int for_iter_152 = arith_const_26; for_iter_152 < arith_const_25; for_iter_152 += arith_const_25) {
      int arith_muli_153 = (for_iter_152 * arith_const_24); 
      for (int for_iter_154 = arith_const_26; for_iter_154 < arith_const_23; for_iter_154 += arith_const_25) {
        int arith_addi_155 = (arith_muli_151 + for_iter_154); 
        for (int for_iter_156 = arith_const_26; for_iter_156 < arith_const_24; for_iter_156 += arith_const_25) {
          int arith_addi_157 = (arith_muli_153 + for_iter_156); 
          double memref_load_158 = func_arg_3[arith_addi_157][arith_addi_155]; 
          double memref_load_159 = func_arg_3[arith_addi_157][arith_addi_155]; 
          double memref_load_160 = func_arg_3[arith_addi_157][arith_addi_155]; 
          double memref_load_161 = func_arg_3[arith_addi_157][arith_addi_155]; 
          int arith_muli_162 = (for_iter_154 * arith_const_22); 
          int arith_cmpi_163 = (arith_muli_162 < arith_const_26); 
          int arith_subi_164 = (arith_const_22 - arith_muli_162); 
          int arith_select_165 = (arith_cmpi_163 ? arith_subi_164 : arith_muli_162); 
          int arith_divi_166 = (arith_select_165 / arith_const_21); 
          int arith_subi_167 = (arith_const_22 - arith_divi_166); 
          int arith_select_168 = (arith_cmpi_163 ? arith_subi_167 : arith_divi_166); 
          int arith_muli_169 = (for_iter_150 * arith_const_20); 
          int arith_addi_170 = (arith_select_168 + arith_muli_169); 
          int arith_addi_171 = (arith_addi_170 + arith_const_19); 
          for (int for_iter_172 = arith_const_26; for_iter_172 < arith_addi_171; for_iter_172 += arith_const_25) {
            int arith_muli_173 = (for_iter_172 * arith_const_21); 
            int arith_addi_174 = (arith_addi_155 + arith_muli_173); 
            double memref_load_175 = func_arg_4[arith_addi_155][arith_addi_174]; 
            double memref_load_176 = func_arg_3[arith_addi_157][arith_addi_174]; 
            double arith_mulf_177 = (memref_load_158 * memref_load_176); 
            double arith_addf_178 = (memref_load_175 + arith_mulf_177); 
            func_arg_4[arith_addi_155][arith_addi_174] = arith_addf_178; 
            int arith_addi_179 = (arith_addi_174 + arith_const_25); 
            double memref_load_180 = func_arg_4[arith_addi_155][arith_addi_179]; 
            double memref_load_181 = func_arg_3[arith_addi_157][arith_addi_179]; 
            double arith_mulf_182 = (memref_load_159 * memref_load_181); 
            double arith_addf_183 = (memref_load_180 + arith_mulf_182); 
            func_arg_4[arith_addi_155][arith_addi_179] = arith_addf_183; 
            int arith_addi_184 = (arith_addi_174 + arith_const_18); 
            double memref_load_185 = func_arg_4[arith_addi_155][arith_addi_184]; 
            double memref_load_186 = func_arg_3[arith_addi_157][arith_addi_184]; 
            double arith_mulf_187 = (memref_load_160 * memref_load_186); 
            double arith_addf_188 = (memref_load_185 + arith_mulf_187); 
            func_arg_4[arith_addi_155][arith_addi_184] = arith_addf_188; 
            int arith_addi_189 = (arith_addi_174 + arith_const_17); 
            double memref_load_190 = func_arg_4[arith_addi_155][arith_addi_189]; 
            double memref_load_191 = func_arg_3[arith_addi_157][arith_addi_189]; 
            double arith_mulf_192 = (memref_load_161 * memref_load_191); 
            double arith_addf_193 = (memref_load_190 + arith_mulf_192); 
            func_arg_4[arith_addi_155][arith_addi_189] = arith_addf_193; 
          }
          double memref_load_194 = func_arg_3[arith_addi_157][arith_addi_155]; 
          int arith_muli_195 = (for_iter_154 * arith_const_22); 
          int arith_muli_196 = (for_iter_150 * arith_const_16); 
          int arith_addi_197 = (arith_muli_195 + arith_muli_196); 
          int arith_muli_198 = (for_iter_154 * arith_const_22); 
          int arith_cmpi_199 = (arith_muli_198 < arith_const_26); 
          int arith_subi_200 = (arith_const_22 - arith_muli_198); 
          int arith_select_201 = (arith_cmpi_199 ? arith_subi_200 : arith_muli_198); 
          int arith_divi_202 = (arith_select_201 / arith_const_21); 
          int arith_subi_203 = (arith_const_22 - arith_divi_202); 
          int arith_select_204 = (arith_cmpi_199 ? arith_subi_203 : arith_divi_202); 
          int arith_muli_205 = (for_iter_150 * arith_const_20); 
          int arith_addi_206 = (arith_select_204 + arith_muli_205); 
          int arith_muli_207 = (arith_addi_206 * arith_const_15); 
          int arith_addi_208 = (arith_addi_197 + arith_muli_207); 
          for (int for_iter_209 = arith_const_26; for_iter_209 < arith_addi_208; for_iter_209 += arith_const_25) {
            int arith_addi_210 = (arith_addi_155 + for_iter_209); 
            int arith_muli_211 = (arith_addi_155 * arith_const_22); 
            int arith_cmpi_212 = (arith_muli_211 < arith_const_26); 
            int arith_subi_213 = (arith_const_22 - arith_muli_211); 
            int arith_select_214 = (arith_cmpi_212 ? arith_subi_213 : arith_muli_211); 
            int arith_divi_215 = (arith_select_214 / arith_const_21); 
            int arith_subi_216 = (arith_const_22 - arith_divi_215); 
            int arith_select_217 = (arith_cmpi_212 ? arith_subi_216 : arith_divi_215); 
            int arith_muli_218 = (arith_select_217 * arith_const_21); 
            int arith_addi_219 = (arith_addi_210 + arith_muli_218); 
            int arith_addi_220 = (arith_addi_219 + arith_const_23); 
            double memref_load_221 = func_arg_4[arith_addi_155][arith_addi_220]; 
            double memref_load_222 = func_arg_3[arith_addi_157][arith_addi_220]; 
            double arith_mulf_223 = (memref_load_194 * memref_load_222); 
            double arith_addf_224 = (memref_load_221 + arith_mulf_223); 
            func_arg_4[arith_addi_155][arith_addi_220] = arith_addf_224; 
          }
        }
      }
    }
  }
  double memref_load_225 = memref_alloca_30[arith_const_26]; 
  for (int for_iter_226 = arith_const_26; for_iter_226 < arith_const_13; for_iter_226 += arith_const_25) {
    int arith_muli_227 = (for_iter_226 * arith_const_12); 
    int arith_addi_228 = (arith_muli_227 + arith_const_11); 
    int arith_cmpi_229 = (arith_addi_228 <= arith_const_26); 
    int arith_subi_230 = (arith_const_26 - arith_addi_228); 
    int arith_subi_231 = (arith_addi_228 - arith_const_25); 
    int arith_select_232 = (arith_cmpi_229 ? arith_subi_230 : arith_subi_231); 
    int arith_divi_233 = (arith_select_232 / arith_const_10); 
    int arith_subi_234 = (arith_const_26 - arith_divi_233); 
    int arith_addi_235 = (arith_divi_233 + arith_const_25); 
    int arith_select_236 = (arith_cmpi_229 ? arith_subi_234 : arith_addi_235); 
    int arith_maxsi_237 = max(arith_select_236, arith_const_26); 
    int arith_muli_238 = (for_iter_226 * arith_const_24); 
    int arith_addi_239 = (arith_muli_238 + arith_const_9); 
    int arith_cmpi_240 = (arith_addi_239 < arith_const_26); 
    int arith_subi_241 = (arith_const_22 - arith_addi_239); 
    int arith_select_242 = (arith_cmpi_240 ? arith_subi_241 : arith_addi_239); 
    int arith_divi_243 = (arith_select_242 / arith_const_8); 
    int arith_subi_244 = (arith_const_22 - arith_divi_243); 
    int arith_select_245 = (arith_cmpi_240 ? arith_subi_244 : arith_divi_243); 
    int arith_addi_246 = (arith_select_245 + arith_const_25); 
    for (int for_iter_247 = arith_maxsi_237; for_iter_247 < arith_addi_246; for_iter_247 += arith_const_25) {
      int arith_muli_248 = (for_iter_226 * arith_const_24); 
      int arith_muli_249 = (for_iter_247 * arith_const_8); 
      int arith_maxsi_250 = max(arith_muli_248, arith_muli_249); 
      int arith_muli_251 = (for_iter_226 * arith_const_24); 
      int arith_addi_252 = (arith_muli_251 + arith_const_24); 
      int arith_muli_253 = (for_iter_247 * arith_const_7); 
      int arith_addi_254 = (arith_muli_253 + arith_const_23); 
      int arith_minsi_255 = min(arith_addi_252, arith_addi_254); 
      for (int for_iter_256 = arith_maxsi_250; for_iter_256 < arith_minsi_255; for_iter_256 += arith_const_25) {
        int arith_muli_257 = (for_iter_256 * arith_const_6); 
        int arith_addi_258 = (arith_muli_257 + for_iter_247); 
        double memref_load_259 = func_arg_4[for_iter_247][arith_addi_258]; 
        double arith_divf_260 = (memref_load_259 / memref_load_225); 
        memref_alloca_29[arith_const_26] = arith_divf_260; 
        int arith_muli_261 = (for_iter_256 * arith_const_6); 
        int arith_addi_262 = (arith_muli_261 + for_iter_247); 
        func_arg_4[for_iter_247][arith_addi_262] = arith_divf_260; 
        double memref_load_263 = memref_alloca_29[arith_const_26]; 
        int arith_muli_264 = (for_iter_256 * arith_const_6); 
        int arith_addi_265 = (arith_muli_264 + for_iter_247); 
        func_arg_4[arith_addi_265][for_iter_247] = memref_load_263; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double float_n;
  double* data;
  double* cov;
  double* mean;


  kernel_covariance(m, n, float_n, data, cov, mean);

}

#pragma pocc-region-end
