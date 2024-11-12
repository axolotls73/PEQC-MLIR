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
  int arith_const_14 = 32; 
  int arith_const_15 = 3; 
  int arith_const_16 = 2; 
  int arith_const_17 = 7; 
  int arith_const_18 = 4; 
  int arith_const_19 = -1; 
  int arith_const_20 = 1; 
  int arith_const_21 = 28; 
  int arith_const_22 = 0; 
  double arith_const_23 = 1.000000; 
  double arith_const_24 = 0.000000; 
  double* memref_alloca_25; 
  double* memref_alloca_26; 
  for (int for_iter_27 = arith_const_22; for_iter_27 < arith_const_21; for_iter_27 += arith_const_20) {
    for (int for_iter_28 = arith_const_22; for_iter_28 < arith_const_20; for_iter_28 += arith_const_20) {
      int arith_addi_29 = (for_iter_27 + for_iter_28); 
      int arith_muli_30 = (for_iter_27 * arith_const_19); 
      int arith_muli_31 = (for_iter_28 * arith_const_19); 
      int arith_addi_32 = (arith_muli_30 + arith_muli_31); 
      int arith_cmpi_33 = (arith_addi_32 < arith_const_22); 
      int arith_subi_34 = (arith_const_19 - arith_addi_32); 
      int arith_select_35 = (arith_cmpi_33 ? arith_subi_34 : arith_addi_32); 
      int arith_divi_36 = (arith_select_35 / arith_const_18); 
      int arith_subi_37 = (arith_const_19 - arith_divi_36); 
      int arith_select_38 = (arith_cmpi_33 ? arith_subi_37 : arith_divi_36); 
      int arith_addi_39 = (arith_select_38 + arith_const_17); 
      for (int for_iter_40 = arith_const_22; for_iter_40 < arith_addi_39; for_iter_40 += arith_const_20) {
        int arith_muli_41 = (for_iter_40 * arith_const_18); 
        int arith_addi_42 = (arith_addi_29 + arith_muli_41); 
        func_arg_4[arith_addi_29][arith_addi_42] = arith_const_24; 
        int arith_addi_43 = (arith_addi_42 + arith_const_20); 
        func_arg_4[arith_addi_29][arith_addi_43] = arith_const_24; 
        int arith_addi_44 = (arith_addi_42 + arith_const_16); 
        func_arg_4[arith_addi_29][arith_addi_44] = arith_const_24; 
        int arith_addi_45 = (arith_addi_42 + arith_const_15); 
        func_arg_4[arith_addi_29][arith_addi_45] = arith_const_24; 
      }
      int arith_muli_46 = (for_iter_27 * arith_const_19); 
      int arith_muli_47 = (for_iter_28 * arith_const_19); 
      int arith_addi_48 = (arith_muli_46 + arith_muli_47); 
      int arith_remsi_49 = (arith_addi_48 % arith_const_18); 
      int arith_cmpi_50 = (arith_remsi_49 < arith_const_22); 
      int arith_addi_51 = (arith_remsi_49 + arith_const_18); 
      int arith_select_52 = (arith_cmpi_50 ? arith_addi_51 : arith_remsi_49); 
      for (int for_iter_53 = arith_const_22; for_iter_53 < arith_select_52; for_iter_53 += arith_const_20) {
        int arith_addi_54 = (arith_addi_29 + for_iter_53); 
        int arith_muli_55 = (arith_addi_29 * arith_const_19); 
        int arith_cmpi_56 = (arith_muli_55 < arith_const_22); 
        int arith_subi_57 = (arith_const_19 - arith_muli_55); 
        int arith_select_58 = (arith_cmpi_56 ? arith_subi_57 : arith_muli_55); 
        int arith_divi_59 = (arith_select_58 / arith_const_18); 
        int arith_subi_60 = (arith_const_19 - arith_divi_59); 
        int arith_select_61 = (arith_cmpi_56 ? arith_subi_60 : arith_divi_59); 
        int arith_muli_62 = (arith_select_61 * arith_const_18); 
        int arith_addi_63 = (arith_addi_54 + arith_muli_62); 
        int arith_addi_64 = (arith_addi_63 + arith_const_21); 
        func_arg_4[arith_addi_29][arith_addi_64] = arith_const_24; 
      }
    }
  }
  double arith_subf_65 = (func_arg_2 - arith_const_23); 
  memref_alloca_26[arith_const_22] = arith_subf_65; 
  for (int for_iter_66 = arith_const_22; for_iter_66 < arith_const_17; for_iter_66 += arith_const_20) {
    int arith_muli_67 = (for_iter_66 * arith_const_18); 
    for (int for_iter_68 = arith_const_22; for_iter_68 < arith_const_20; for_iter_68 += arith_const_20) {
      int arith_muli_69 = (for_iter_68 * arith_const_18); 
      int arith_addi_70 = (arith_muli_67 + arith_muli_69); 
      func_arg_5[arith_addi_70] = arith_const_24; 
      int arith_addi_71 = (arith_addi_70 + arith_const_20); 
      func_arg_5[arith_addi_71] = arith_const_24; 
      int arith_addi_72 = (arith_addi_70 + arith_const_16); 
      func_arg_5[arith_addi_72] = arith_const_24; 
      int arith_addi_73 = (arith_addi_70 + arith_const_15); 
      func_arg_5[arith_addi_73] = arith_const_24; 
    }
  }
  for (int for_iter_74 = arith_const_22; for_iter_74 < arith_const_14; for_iter_74 += arith_const_20) {
    for (int for_iter_75 = arith_const_22; for_iter_75 < arith_const_17; for_iter_75 += arith_const_20) {
      int arith_muli_76 = (for_iter_75 * arith_const_18); 
      for (int for_iter_77 = arith_const_22; for_iter_77 < arith_const_20; for_iter_77 += arith_const_20) {
        int arith_addi_78 = (for_iter_74 + for_iter_77); 
        for (int for_iter_79 = arith_const_22; for_iter_79 < arith_const_20; for_iter_79 += arith_const_20) {
          int arith_muli_80 = (for_iter_79 * arith_const_18); 
          int arith_addi_81 = (arith_muli_76 + arith_muli_80); 
          double memref_load_82 = func_arg_5[arith_addi_81]; 
          double memref_load_83 = func_arg_3[arith_addi_78][arith_addi_81]; 
          double arith_addf_84 = (memref_load_82 + memref_load_83); 
          func_arg_5[arith_addi_81] = arith_addf_84; 
          int arith_addi_85 = (arith_addi_81 + arith_const_20); 
          double memref_load_86 = func_arg_5[arith_addi_85]; 
          double memref_load_87 = func_arg_3[arith_addi_78][arith_addi_85]; 
          double arith_addf_88 = (memref_load_86 + memref_load_87); 
          func_arg_5[arith_addi_85] = arith_addf_88; 
          int arith_addi_89 = (arith_addi_81 + arith_const_16); 
          double memref_load_90 = func_arg_5[arith_addi_89]; 
          double memref_load_91 = func_arg_3[arith_addi_78][arith_addi_89]; 
          double arith_addf_92 = (memref_load_90 + memref_load_91); 
          func_arg_5[arith_addi_89] = arith_addf_92; 
          int arith_addi_93 = (arith_addi_81 + arith_const_15); 
          double memref_load_94 = func_arg_5[arith_addi_93]; 
          double memref_load_95 = func_arg_3[arith_addi_78][arith_addi_93]; 
          double arith_addf_96 = (memref_load_94 + memref_load_95); 
          func_arg_5[arith_addi_93] = arith_addf_96; 
        }
      }
    }
  }
  for (int for_iter_97 = arith_const_22; for_iter_97 < arith_const_17; for_iter_97 += arith_const_20) {
    int arith_muli_98 = (for_iter_97 * arith_const_18); 
    for (int for_iter_99 = arith_const_22; for_iter_99 < arith_const_20; for_iter_99 += arith_const_20) {
      int arith_muli_100 = (for_iter_99 * arith_const_18); 
      int arith_addi_101 = (arith_muli_98 + arith_muli_100); 
      double memref_load_102 = func_arg_5[arith_addi_101]; 
      double arith_divf_103 = (memref_load_102 / func_arg_2); 
      func_arg_5[arith_addi_101] = arith_divf_103; 
      int arith_addi_104 = (arith_addi_101 + arith_const_20); 
      double memref_load_105 = func_arg_5[arith_addi_104]; 
      double arith_divf_106 = (memref_load_105 / func_arg_2); 
      func_arg_5[arith_addi_104] = arith_divf_106; 
      int arith_addi_107 = (arith_addi_101 + arith_const_16); 
      double memref_load_108 = func_arg_5[arith_addi_107]; 
      double arith_divf_109 = (memref_load_108 / func_arg_2); 
      func_arg_5[arith_addi_107] = arith_divf_109; 
      int arith_addi_110 = (arith_addi_101 + arith_const_15); 
      double memref_load_111 = func_arg_5[arith_addi_110]; 
      double arith_divf_112 = (memref_load_111 / func_arg_2); 
      func_arg_5[arith_addi_110] = arith_divf_112; 
    }
  }
  for (int for_iter_113 = arith_const_22; for_iter_113 < arith_const_14; for_iter_113 += arith_const_20) {
    for (int for_iter_114 = arith_const_22; for_iter_114 < arith_const_20; for_iter_114 += arith_const_20) {
      int arith_addi_115 = (for_iter_113 + for_iter_114); 
      for (int for_iter_116 = arith_const_22; for_iter_116 < arith_const_17; for_iter_116 += arith_const_20) {
        int arith_muli_117 = (for_iter_116 * arith_const_18); 
        for (int for_iter_118 = arith_const_22; for_iter_118 < arith_const_20; for_iter_118 += arith_const_20) {
          int arith_muli_119 = (for_iter_118 * arith_const_18); 
          int arith_addi_120 = (arith_muli_117 + arith_muli_119); 
          double memref_load_121 = func_arg_3[arith_addi_115][arith_addi_120]; 
          double memref_load_122 = func_arg_5[arith_addi_120]; 
          double arith_subf_123 = (memref_load_121 - memref_load_122); 
          func_arg_3[arith_addi_115][arith_addi_120] = arith_subf_123; 
          int arith_addi_124 = (arith_addi_120 + arith_const_20); 
          double memref_load_125 = func_arg_3[arith_addi_115][arith_addi_124]; 
          double memref_load_126 = func_arg_5[arith_addi_124]; 
          double arith_subf_127 = (memref_load_125 - memref_load_126); 
          func_arg_3[arith_addi_115][arith_addi_124] = arith_subf_127; 
          int arith_addi_128 = (arith_addi_120 + arith_const_16); 
          double memref_load_129 = func_arg_3[arith_addi_115][arith_addi_128]; 
          double memref_load_130 = func_arg_5[arith_addi_128]; 
          double arith_subf_131 = (memref_load_129 - memref_load_130); 
          func_arg_3[arith_addi_115][arith_addi_128] = arith_subf_131; 
          int arith_addi_132 = (arith_addi_120 + arith_const_15); 
          double memref_load_133 = func_arg_3[arith_addi_115][arith_addi_132]; 
          double memref_load_134 = func_arg_5[arith_addi_132]; 
          double arith_subf_135 = (memref_load_133 - memref_load_134); 
          func_arg_3[arith_addi_115][arith_addi_132] = arith_subf_135; 
        }
      }
    }
  }
  for (int for_iter_136 = arith_const_22; for_iter_136 < arith_const_21; for_iter_136 += arith_const_20) {
    for (int for_iter_137 = arith_const_22; for_iter_137 < arith_const_20; for_iter_137 += arith_const_20) {
      int arith_addi_138 = (for_iter_136 + for_iter_137); 
      for (int for_iter_139 = arith_const_22; for_iter_139 < arith_const_14; for_iter_139 += arith_const_20) {
        for (int for_iter_140 = arith_const_22; for_iter_140 < arith_const_20; for_iter_140 += arith_const_20) {
          int arith_addi_141 = (for_iter_139 + for_iter_140); 
          double memref_load_142 = func_arg_3[arith_addi_141][arith_addi_138]; 
          double memref_load_143 = func_arg_3[arith_addi_141][arith_addi_138]; 
          double memref_load_144 = func_arg_3[arith_addi_141][arith_addi_138]; 
          double memref_load_145 = func_arg_3[arith_addi_141][arith_addi_138]; 
          int arith_muli_146 = (for_iter_136 * arith_const_19); 
          int arith_muli_147 = (for_iter_137 * arith_const_19); 
          int arith_addi_148 = (arith_muli_146 + arith_muli_147); 
          int arith_cmpi_149 = (arith_addi_148 < arith_const_22); 
          int arith_subi_150 = (arith_const_19 - arith_addi_148); 
          int arith_select_151 = (arith_cmpi_149 ? arith_subi_150 : arith_addi_148); 
          int arith_divi_152 = (arith_select_151 / arith_const_18); 
          int arith_subi_153 = (arith_const_19 - arith_divi_152); 
          int arith_select_154 = (arith_cmpi_149 ? arith_subi_153 : arith_divi_152); 
          int arith_addi_155 = (arith_select_154 + arith_const_17); 
          for (int for_iter_156 = arith_const_22; for_iter_156 < arith_addi_155; for_iter_156 += arith_const_20) {
            int arith_muli_157 = (for_iter_156 * arith_const_18); 
            int arith_addi_158 = (arith_addi_138 + arith_muli_157); 
            double memref_load_159 = func_arg_4[arith_addi_138][arith_addi_158]; 
            double memref_load_160 = func_arg_3[arith_addi_141][arith_addi_158]; 
            double arith_mulf_161 = (memref_load_142 * memref_load_160); 
            double arith_addf_162 = (memref_load_159 + arith_mulf_161); 
            func_arg_4[arith_addi_138][arith_addi_158] = arith_addf_162; 
            int arith_addi_163 = (arith_addi_158 + arith_const_20); 
            double memref_load_164 = func_arg_4[arith_addi_138][arith_addi_163]; 
            double memref_load_165 = func_arg_3[arith_addi_141][arith_addi_163]; 
            double arith_mulf_166 = (memref_load_143 * memref_load_165); 
            double arith_addf_167 = (memref_load_164 + arith_mulf_166); 
            func_arg_4[arith_addi_138][arith_addi_163] = arith_addf_167; 
            int arith_addi_168 = (arith_addi_158 + arith_const_16); 
            double memref_load_169 = func_arg_4[arith_addi_138][arith_addi_168]; 
            double memref_load_170 = func_arg_3[arith_addi_141][arith_addi_168]; 
            double arith_mulf_171 = (memref_load_144 * memref_load_170); 
            double arith_addf_172 = (memref_load_169 + arith_mulf_171); 
            func_arg_4[arith_addi_138][arith_addi_168] = arith_addf_172; 
            int arith_addi_173 = (arith_addi_158 + arith_const_15); 
            double memref_load_174 = func_arg_4[arith_addi_138][arith_addi_173]; 
            double memref_load_175 = func_arg_3[arith_addi_141][arith_addi_173]; 
            double arith_mulf_176 = (memref_load_145 * memref_load_175); 
            double arith_addf_177 = (memref_load_174 + arith_mulf_176); 
            func_arg_4[arith_addi_138][arith_addi_173] = arith_addf_177; 
          }
          double memref_load_178 = func_arg_3[arith_addi_141][arith_addi_138]; 
          int arith_muli_179 = (for_iter_136 * arith_const_19); 
          int arith_muli_180 = (for_iter_137 * arith_const_19); 
          int arith_addi_181 = (arith_muli_179 + arith_muli_180); 
          int arith_remsi_182 = (arith_addi_181 % arith_const_18); 
          int arith_cmpi_183 = (arith_remsi_182 < arith_const_22); 
          int arith_addi_184 = (arith_remsi_182 + arith_const_18); 
          int arith_select_185 = (arith_cmpi_183 ? arith_addi_184 : arith_remsi_182); 
          for (int for_iter_186 = arith_const_22; for_iter_186 < arith_select_185; for_iter_186 += arith_const_20) {
            int arith_addi_187 = (arith_addi_138 + for_iter_186); 
            int arith_muli_188 = (arith_addi_138 * arith_const_19); 
            int arith_cmpi_189 = (arith_muli_188 < arith_const_22); 
            int arith_subi_190 = (arith_const_19 - arith_muli_188); 
            int arith_select_191 = (arith_cmpi_189 ? arith_subi_190 : arith_muli_188); 
            int arith_divi_192 = (arith_select_191 / arith_const_18); 
            int arith_subi_193 = (arith_const_19 - arith_divi_192); 
            int arith_select_194 = (arith_cmpi_189 ? arith_subi_193 : arith_divi_192); 
            int arith_muli_195 = (arith_select_194 * arith_const_18); 
            int arith_addi_196 = (arith_addi_187 + arith_muli_195); 
            int arith_addi_197 = (arith_addi_196 + arith_const_21); 
            double memref_load_198 = func_arg_4[arith_addi_138][arith_addi_197]; 
            double memref_load_199 = func_arg_3[arith_addi_141][arith_addi_197]; 
            double arith_mulf_200 = (memref_load_178 * memref_load_199); 
            double arith_addf_201 = (memref_load_198 + arith_mulf_200); 
            func_arg_4[arith_addi_138][arith_addi_197] = arith_addf_201; 
          }
        }
      }
    }
  }
  double memref_load_202 = memref_alloca_26[arith_const_22]; 
  for (int for_iter_203 = arith_const_22; for_iter_203 < arith_const_13; for_iter_203 += arith_const_20) {
    int arith_muli_204 = (for_iter_203 * arith_const_12); 
    int arith_addi_205 = (arith_muli_204 + arith_const_11); 
    int arith_cmpi_206 = (arith_addi_205 <= arith_const_22); 
    int arith_subi_207 = (arith_const_22 - arith_addi_205); 
    int arith_subi_208 = (arith_addi_205 - arith_const_20); 
    int arith_select_209 = (arith_cmpi_206 ? arith_subi_207 : arith_subi_208); 
    int arith_divi_210 = (arith_select_209 / arith_const_10); 
    int arith_subi_211 = (arith_const_22 - arith_divi_210); 
    int arith_addi_212 = (arith_divi_210 + arith_const_20); 
    int arith_select_213 = (arith_cmpi_206 ? arith_subi_211 : arith_addi_212); 
    int arith_maxsi_214 = max(arith_select_213, arith_const_22); 
    int arith_muli_215 = (for_iter_203 * arith_const_14); 
    int arith_addi_216 = (arith_muli_215 + arith_const_9); 
    int arith_cmpi_217 = (arith_addi_216 < arith_const_22); 
    int arith_subi_218 = (arith_const_19 - arith_addi_216); 
    int arith_select_219 = (arith_cmpi_217 ? arith_subi_218 : arith_addi_216); 
    int arith_divi_220 = (arith_select_219 / arith_const_8); 
    int arith_subi_221 = (arith_const_19 - arith_divi_220); 
    int arith_select_222 = (arith_cmpi_217 ? arith_subi_221 : arith_divi_220); 
    int arith_addi_223 = (arith_select_222 + arith_const_20); 
    for (int for_iter_224 = arith_maxsi_214; for_iter_224 < arith_addi_223; for_iter_224 += arith_const_20) {
      int arith_muli_225 = (for_iter_203 * arith_const_14); 
      int arith_muli_226 = (for_iter_224 * arith_const_8); 
      int arith_maxsi_227 = max(arith_muli_225, arith_muli_226); 
      int arith_muli_228 = (for_iter_203 * arith_const_14); 
      int arith_addi_229 = (arith_muli_228 + arith_const_14); 
      int arith_muli_230 = (for_iter_224 * arith_const_7); 
      int arith_addi_231 = (arith_muli_230 + arith_const_21); 
      int arith_minsi_232 = min(arith_addi_229, arith_addi_231); 
      for (int for_iter_233 = arith_maxsi_227; for_iter_233 < arith_minsi_232; for_iter_233 += arith_const_20) {
        int arith_muli_234 = (for_iter_233 * arith_const_6); 
        int arith_addi_235 = (arith_muli_234 + for_iter_224); 
        double memref_load_236 = func_arg_4[for_iter_224][arith_addi_235]; 
        double arith_divf_237 = (memref_load_236 / memref_load_202); 
        memref_alloca_25[arith_const_22] = arith_divf_237; 
        int arith_muli_238 = (for_iter_233 * arith_const_6); 
        int arith_addi_239 = (arith_muli_238 + for_iter_224); 
        func_arg_4[for_iter_224][arith_addi_239] = arith_divf_237; 
        double memref_load_240 = memref_alloca_25[arith_const_22]; 
        int arith_muli_241 = (for_iter_233 * arith_const_6); 
        int arith_addi_242 = (arith_muli_241 + for_iter_224); 
        func_arg_4[arith_addi_242][for_iter_224] = memref_load_240; 
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
