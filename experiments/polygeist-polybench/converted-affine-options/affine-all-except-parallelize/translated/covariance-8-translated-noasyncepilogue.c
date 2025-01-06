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
  int arith_const_15 = 3; 
  int arith_const_16 = 2; 
  int arith_const_17 = 7; 
  int arith_const_18 = 4; 
  int arith_const_19 = -1; 
  int arith_const_20 = -8; 
  int arith_const_21 = 28; 
  int arith_const_22 = 32; 
  int arith_const_23 = 1; 
  int arith_const_24 = 0; 
  double arith_const_25 = 1.000000; 
  double arith_const_26 = 0.000000; 
  double* memref_alloca_27; 
  double* memref_alloca_28; 
  for (int for_iter_29 = arith_const_24; for_iter_29 < arith_const_23; for_iter_29 += arith_const_23) {
    int arith_muli_30 = (for_iter_29 * arith_const_22); 
    for (int for_iter_31 = arith_const_24; for_iter_31 < arith_const_21; for_iter_31 += arith_const_23) {
      int arith_addi_32 = (arith_muli_30 + for_iter_31); 
      int arith_muli_33 = (for_iter_29 * arith_const_20); 
      int arith_muli_34 = (for_iter_31 * arith_const_19); 
      int arith_cmpi_35 = (arith_muli_34 < arith_const_24); 
      int arith_subi_36 = (arith_const_19 - arith_muli_34); 
      int arith_select_37 = (arith_cmpi_35 ? arith_subi_36 : arith_muli_34); 
      int arith_divi_38 = (arith_select_37 / arith_const_18); 
      int arith_subi_39 = (arith_const_19 - arith_divi_38); 
      int arith_select_40 = (arith_cmpi_35 ? arith_subi_39 : arith_divi_38); 
      int arith_addi_41 = (arith_muli_33 + arith_select_40); 
      int arith_addi_42 = (arith_addi_41 + arith_const_17); 
      for (int for_iter_43 = arith_const_24; for_iter_43 < arith_addi_42; for_iter_43 += arith_const_23) {
        int arith_muli_44 = (for_iter_43 * arith_const_18); 
        int arith_addi_45 = (arith_addi_32 + arith_muli_44); 
        func_arg_4[arith_addi_32][arith_addi_45] = arith_const_26; 
        int arith_addi_46 = (arith_addi_45 + arith_const_23); 
        func_arg_4[arith_addi_32][arith_addi_46] = arith_const_26; 
        int arith_addi_47 = (arith_addi_45 + arith_const_16); 
        func_arg_4[arith_addi_32][arith_addi_47] = arith_const_26; 
        int arith_addi_48 = (arith_addi_45 + arith_const_15); 
        func_arg_4[arith_addi_32][arith_addi_48] = arith_const_26; 
      }
      int arith_muli_49 = (for_iter_31 * arith_const_19); 
      int arith_remsi_50 = (arith_muli_49 % arith_const_18); 
      int arith_cmpi_51 = (arith_remsi_50 < arith_const_24); 
      int arith_addi_52 = (arith_remsi_50 + arith_const_18); 
      int arith_select_53 = (arith_cmpi_51 ? arith_addi_52 : arith_remsi_50); 
      for (int for_iter_54 = arith_const_24; for_iter_54 < arith_select_53; for_iter_54 += arith_const_23) {
        int arith_addi_55 = (arith_addi_32 + for_iter_54); 
        int arith_muli_56 = (arith_addi_32 * arith_const_19); 
        int arith_cmpi_57 = (arith_muli_56 < arith_const_24); 
        int arith_subi_58 = (arith_const_19 - arith_muli_56); 
        int arith_select_59 = (arith_cmpi_57 ? arith_subi_58 : arith_muli_56); 
        int arith_divi_60 = (arith_select_59 / arith_const_18); 
        int arith_subi_61 = (arith_const_19 - arith_divi_60); 
        int arith_select_62 = (arith_cmpi_57 ? arith_subi_61 : arith_divi_60); 
        int arith_muli_63 = (arith_select_62 * arith_const_18); 
        int arith_addi_64 = (arith_addi_55 + arith_muli_63); 
        int arith_addi_65 = (arith_addi_64 + arith_const_21); 
        func_arg_4[arith_addi_32][arith_addi_65] = arith_const_26; 
      }
    }
  }
  double arith_subf_66 = (func_arg_2 - arith_const_25); 
  memref_alloca_28[arith_const_24] = arith_subf_66; 
  for (int for_iter_67 = arith_const_24; for_iter_67 < arith_const_23; for_iter_67 += arith_const_23) {
    int arith_muli_68 = (for_iter_67 * arith_const_14); 
    for (int for_iter_69 = arith_const_24; for_iter_69 < arith_const_17; for_iter_69 += arith_const_23) {
      int arith_muli_70 = (for_iter_69 * arith_const_18); 
      int arith_addi_71 = (arith_muli_68 + arith_muli_70); 
      func_arg_5[arith_addi_71] = arith_const_26; 
      int arith_addi_72 = (arith_addi_71 + arith_const_23); 
      func_arg_5[arith_addi_72] = arith_const_26; 
      int arith_addi_73 = (arith_addi_71 + arith_const_16); 
      func_arg_5[arith_addi_73] = arith_const_26; 
      int arith_addi_74 = (arith_addi_71 + arith_const_15); 
      func_arg_5[arith_addi_74] = arith_const_26; 
    }
  }
  for (int for_iter_75 = arith_const_24; for_iter_75 < arith_const_23; for_iter_75 += arith_const_23) {
    int arith_muli_76 = (for_iter_75 * arith_const_22); 
    for (int for_iter_77 = arith_const_24; for_iter_77 < arith_const_23; for_iter_77 += arith_const_23) {
      int arith_muli_78 = (for_iter_77 * arith_const_14); 
      for (int for_iter_79 = arith_const_24; for_iter_79 < arith_const_22; for_iter_79 += arith_const_23) {
        int arith_addi_80 = (arith_muli_76 + for_iter_79); 
        for (int for_iter_81 = arith_const_24; for_iter_81 < arith_const_17; for_iter_81 += arith_const_23) {
          int arith_muli_82 = (for_iter_81 * arith_const_18); 
          int arith_addi_83 = (arith_muli_78 + arith_muli_82); 
          double memref_load_84 = func_arg_5[arith_addi_83]; 
          double memref_load_85 = func_arg_3[arith_addi_80][arith_addi_83]; 
          double arith_addf_86 = (memref_load_84 + memref_load_85); 
          func_arg_5[arith_addi_83] = arith_addf_86; 
          int arith_addi_87 = (arith_addi_83 + arith_const_23); 
          double memref_load_88 = func_arg_5[arith_addi_87]; 
          double memref_load_89 = func_arg_3[arith_addi_80][arith_addi_87]; 
          double arith_addf_90 = (memref_load_88 + memref_load_89); 
          func_arg_5[arith_addi_87] = arith_addf_90; 
          int arith_addi_91 = (arith_addi_83 + arith_const_16); 
          double memref_load_92 = func_arg_5[arith_addi_91]; 
          double memref_load_93 = func_arg_3[arith_addi_80][arith_addi_91]; 
          double arith_addf_94 = (memref_load_92 + memref_load_93); 
          func_arg_5[arith_addi_91] = arith_addf_94; 
          int arith_addi_95 = (arith_addi_83 + arith_const_15); 
          double memref_load_96 = func_arg_5[arith_addi_95]; 
          double memref_load_97 = func_arg_3[arith_addi_80][arith_addi_95]; 
          double arith_addf_98 = (memref_load_96 + memref_load_97); 
          func_arg_5[arith_addi_95] = arith_addf_98; 
        }
      }
    }
  }
  for (int for_iter_99 = arith_const_24; for_iter_99 < arith_const_23; for_iter_99 += arith_const_23) {
    int arith_muli_100 = (for_iter_99 * arith_const_14); 
    for (int for_iter_101 = arith_const_24; for_iter_101 < arith_const_17; for_iter_101 += arith_const_23) {
      int arith_muli_102 = (for_iter_101 * arith_const_18); 
      int arith_addi_103 = (arith_muli_100 + arith_muli_102); 
      double memref_load_104 = func_arg_5[arith_addi_103]; 
      double arith_divf_105 = (memref_load_104 / func_arg_2); 
      func_arg_5[arith_addi_103] = arith_divf_105; 
      int arith_addi_106 = (arith_addi_103 + arith_const_23); 
      double memref_load_107 = func_arg_5[arith_addi_106]; 
      double arith_divf_108 = (memref_load_107 / func_arg_2); 
      func_arg_5[arith_addi_106] = arith_divf_108; 
      int arith_addi_109 = (arith_addi_103 + arith_const_16); 
      double memref_load_110 = func_arg_5[arith_addi_109]; 
      double arith_divf_111 = (memref_load_110 / func_arg_2); 
      func_arg_5[arith_addi_109] = arith_divf_111; 
      int arith_addi_112 = (arith_addi_103 + arith_const_15); 
      double memref_load_113 = func_arg_5[arith_addi_112]; 
      double arith_divf_114 = (memref_load_113 / func_arg_2); 
      func_arg_5[arith_addi_112] = arith_divf_114; 
    }
  }
  for (int for_iter_115 = arith_const_24; for_iter_115 < arith_const_23; for_iter_115 += arith_const_23) {
    int arith_muli_116 = (for_iter_115 * arith_const_22); 
    for (int for_iter_117 = arith_const_24; for_iter_117 < arith_const_23; for_iter_117 += arith_const_23) {
      int arith_muli_118 = (for_iter_117 * arith_const_14); 
      for (int for_iter_119 = arith_const_24; for_iter_119 < arith_const_22; for_iter_119 += arith_const_23) {
        int arith_addi_120 = (arith_muli_116 + for_iter_119); 
        for (int for_iter_121 = arith_const_24; for_iter_121 < arith_const_17; for_iter_121 += arith_const_23) {
          int arith_muli_122 = (for_iter_121 * arith_const_18); 
          int arith_addi_123 = (arith_muli_118 + arith_muli_122); 
          double memref_load_124 = func_arg_3[arith_addi_120][arith_addi_123]; 
          double memref_load_125 = func_arg_5[arith_addi_123]; 
          double arith_subf_126 = (memref_load_124 - memref_load_125); 
          func_arg_3[arith_addi_120][arith_addi_123] = arith_subf_126; 
          int arith_addi_127 = (arith_addi_123 + arith_const_23); 
          double memref_load_128 = func_arg_3[arith_addi_120][arith_addi_127]; 
          double memref_load_129 = func_arg_5[arith_addi_127]; 
          double arith_subf_130 = (memref_load_128 - memref_load_129); 
          func_arg_3[arith_addi_120][arith_addi_127] = arith_subf_130; 
          int arith_addi_131 = (arith_addi_123 + arith_const_16); 
          double memref_load_132 = func_arg_3[arith_addi_120][arith_addi_131]; 
          double memref_load_133 = func_arg_5[arith_addi_131]; 
          double arith_subf_134 = (memref_load_132 - memref_load_133); 
          func_arg_3[arith_addi_120][arith_addi_131] = arith_subf_134; 
          int arith_addi_135 = (arith_addi_123 + arith_const_15); 
          double memref_load_136 = func_arg_3[arith_addi_120][arith_addi_135]; 
          double memref_load_137 = func_arg_5[arith_addi_135]; 
          double arith_subf_138 = (memref_load_136 - memref_load_137); 
          func_arg_3[arith_addi_120][arith_addi_135] = arith_subf_138; 
        }
      }
    }
  }
  for (int for_iter_139 = arith_const_24; for_iter_139 < arith_const_23; for_iter_139 += arith_const_23) {
    int arith_muli_140 = (for_iter_139 * arith_const_22); 
    for (int for_iter_141 = arith_const_24; for_iter_141 < arith_const_23; for_iter_141 += arith_const_23) {
      int arith_muli_142 = (for_iter_141 * arith_const_22); 
      for (int for_iter_143 = arith_const_24; for_iter_143 < arith_const_21; for_iter_143 += arith_const_23) {
        int arith_addi_144 = (arith_muli_140 + for_iter_143); 
        for (int for_iter_145 = arith_const_24; for_iter_145 < arith_const_22; for_iter_145 += arith_const_23) {
          int arith_addi_146 = (arith_muli_142 + for_iter_145); 
          double memref_load_147 = func_arg_3[arith_addi_146][arith_addi_144]; 
          double memref_load_148 = func_arg_3[arith_addi_146][arith_addi_144]; 
          double memref_load_149 = func_arg_3[arith_addi_146][arith_addi_144]; 
          double memref_load_150 = func_arg_3[arith_addi_146][arith_addi_144]; 
          int arith_muli_151 = (for_iter_139 * arith_const_20); 
          int arith_muli_152 = (for_iter_143 * arith_const_19); 
          int arith_cmpi_153 = (arith_muli_152 < arith_const_24); 
          int arith_subi_154 = (arith_const_19 - arith_muli_152); 
          int arith_select_155 = (arith_cmpi_153 ? arith_subi_154 : arith_muli_152); 
          int arith_divi_156 = (arith_select_155 / arith_const_18); 
          int arith_subi_157 = (arith_const_19 - arith_divi_156); 
          int arith_select_158 = (arith_cmpi_153 ? arith_subi_157 : arith_divi_156); 
          int arith_addi_159 = (arith_muli_151 + arith_select_158); 
          int arith_addi_160 = (arith_addi_159 + arith_const_17); 
          for (int for_iter_161 = arith_const_24; for_iter_161 < arith_addi_160; for_iter_161 += arith_const_23) {
            int arith_muli_162 = (for_iter_161 * arith_const_18); 
            int arith_addi_163 = (arith_addi_144 + arith_muli_162); 
            double memref_load_164 = func_arg_4[arith_addi_144][arith_addi_163]; 
            double memref_load_165 = func_arg_3[arith_addi_146][arith_addi_163]; 
            double arith_mulf_166 = (memref_load_147 * memref_load_165); 
            double arith_addf_167 = (memref_load_164 + arith_mulf_166); 
            func_arg_4[arith_addi_144][arith_addi_163] = arith_addf_167; 
            int arith_addi_168 = (arith_addi_163 + arith_const_23); 
            double memref_load_169 = func_arg_4[arith_addi_144][arith_addi_168]; 
            double memref_load_170 = func_arg_3[arith_addi_146][arith_addi_168]; 
            double arith_mulf_171 = (memref_load_148 * memref_load_170); 
            double arith_addf_172 = (memref_load_169 + arith_mulf_171); 
            func_arg_4[arith_addi_144][arith_addi_168] = arith_addf_172; 
            int arith_addi_173 = (arith_addi_163 + arith_const_16); 
            double memref_load_174 = func_arg_4[arith_addi_144][arith_addi_173]; 
            double memref_load_175 = func_arg_3[arith_addi_146][arith_addi_173]; 
            double arith_mulf_176 = (memref_load_149 * memref_load_175); 
            double arith_addf_177 = (memref_load_174 + arith_mulf_176); 
            func_arg_4[arith_addi_144][arith_addi_173] = arith_addf_177; 
            int arith_addi_178 = (arith_addi_163 + arith_const_15); 
            double memref_load_179 = func_arg_4[arith_addi_144][arith_addi_178]; 
            double memref_load_180 = func_arg_3[arith_addi_146][arith_addi_178]; 
            double arith_mulf_181 = (memref_load_150 * memref_load_180); 
            double arith_addf_182 = (memref_load_179 + arith_mulf_181); 
            func_arg_4[arith_addi_144][arith_addi_178] = arith_addf_182; 
          }
          double memref_load_183 = func_arg_3[arith_addi_146][arith_addi_144]; 
          int arith_muli_184 = (for_iter_143 * arith_const_19); 
          int arith_remsi_185 = (arith_muli_184 % arith_const_18); 
          int arith_cmpi_186 = (arith_remsi_185 < arith_const_24); 
          int arith_addi_187 = (arith_remsi_185 + arith_const_18); 
          int arith_select_188 = (arith_cmpi_186 ? arith_addi_187 : arith_remsi_185); 
          for (int for_iter_189 = arith_const_24; for_iter_189 < arith_select_188; for_iter_189 += arith_const_23) {
            int arith_addi_190 = (arith_addi_144 + for_iter_189); 
            int arith_muli_191 = (arith_addi_144 * arith_const_19); 
            int arith_cmpi_192 = (arith_muli_191 < arith_const_24); 
            int arith_subi_193 = (arith_const_19 - arith_muli_191); 
            int arith_select_194 = (arith_cmpi_192 ? arith_subi_193 : arith_muli_191); 
            int arith_divi_195 = (arith_select_194 / arith_const_18); 
            int arith_subi_196 = (arith_const_19 - arith_divi_195); 
            int arith_select_197 = (arith_cmpi_192 ? arith_subi_196 : arith_divi_195); 
            int arith_muli_198 = (arith_select_197 * arith_const_18); 
            int arith_addi_199 = (arith_addi_190 + arith_muli_198); 
            int arith_addi_200 = (arith_addi_199 + arith_const_21); 
            double memref_load_201 = func_arg_4[arith_addi_144][arith_addi_200]; 
            double memref_load_202 = func_arg_3[arith_addi_146][arith_addi_200]; 
            double arith_mulf_203 = (memref_load_183 * memref_load_202); 
            double arith_addf_204 = (memref_load_201 + arith_mulf_203); 
            func_arg_4[arith_addi_144][arith_addi_200] = arith_addf_204; 
          }
        }
      }
    }
  }
  double memref_load_205 = memref_alloca_28[arith_const_24]; 
  for (int for_iter_206 = arith_const_24; for_iter_206 < arith_const_13; for_iter_206 += arith_const_23) {
    int arith_muli_207 = (for_iter_206 * arith_const_12); 
    int arith_addi_208 = (arith_muli_207 + arith_const_11); 
    int arith_cmpi_209 = (arith_addi_208 <= arith_const_24); 
    int arith_subi_210 = (arith_const_24 - arith_addi_208); 
    int arith_subi_211 = (arith_addi_208 - arith_const_23); 
    int arith_select_212 = (arith_cmpi_209 ? arith_subi_210 : arith_subi_211); 
    int arith_divi_213 = (arith_select_212 / arith_const_10); 
    int arith_subi_214 = (arith_const_24 - arith_divi_213); 
    int arith_addi_215 = (arith_divi_213 + arith_const_23); 
    int arith_select_216 = (arith_cmpi_209 ? arith_subi_214 : arith_addi_215); 
    int arith_maxsi_217 = max(arith_select_216, arith_const_24); 
    int arith_muli_218 = (for_iter_206 * arith_const_22); 
    int arith_addi_219 = (arith_muli_218 + arith_const_9); 
    int arith_cmpi_220 = (arith_addi_219 < arith_const_24); 
    int arith_subi_221 = (arith_const_19 - arith_addi_219); 
    int arith_select_222 = (arith_cmpi_220 ? arith_subi_221 : arith_addi_219); 
    int arith_divi_223 = (arith_select_222 / arith_const_8); 
    int arith_subi_224 = (arith_const_19 - arith_divi_223); 
    int arith_select_225 = (arith_cmpi_220 ? arith_subi_224 : arith_divi_223); 
    int arith_addi_226 = (arith_select_225 + arith_const_23); 
    for (int for_iter_227 = arith_maxsi_217; for_iter_227 < arith_addi_226; for_iter_227 += arith_const_23) {
      int arith_muli_228 = (for_iter_206 * arith_const_22); 
      int arith_muli_229 = (for_iter_227 * arith_const_8); 
      int arith_maxsi_230 = max(arith_muli_228, arith_muli_229); 
      int arith_muli_231 = (for_iter_206 * arith_const_22); 
      int arith_addi_232 = (arith_muli_231 + arith_const_22); 
      int arith_muli_233 = (for_iter_227 * arith_const_7); 
      int arith_addi_234 = (arith_muli_233 + arith_const_21); 
      int arith_minsi_235 = min(arith_addi_232, arith_addi_234); 
      for (int for_iter_236 = arith_maxsi_230; for_iter_236 < arith_minsi_235; for_iter_236 += arith_const_23) {
        int arith_muli_237 = (for_iter_236 * arith_const_6); 
        int arith_addi_238 = (arith_muli_237 + for_iter_227); 
        double memref_load_239 = func_arg_4[for_iter_227][arith_addi_238]; 
        double arith_divf_240 = (memref_load_239 / memref_load_205); 
        memref_alloca_27[arith_const_24] = arith_divf_240; 
        int arith_muli_241 = (for_iter_236 * arith_const_6); 
        int arith_addi_242 = (arith_muli_241 + for_iter_227); 
        func_arg_4[for_iter_227][arith_addi_242] = arith_divf_240; 
        double memref_load_243 = memref_alloca_27[arith_const_24]; 
        int arith_muli_244 = (for_iter_236 * arith_const_6); 
        int arith_addi_245 = (arith_muli_244 + for_iter_227); 
        func_arg_4[arith_addi_245][for_iter_227] = memref_load_243; 
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
