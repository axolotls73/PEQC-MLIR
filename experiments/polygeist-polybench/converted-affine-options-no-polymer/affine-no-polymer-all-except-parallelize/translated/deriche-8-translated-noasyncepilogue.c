#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 63; 
  int arith_const_8 = -1; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 16; 
  int arith_const_13 = 1; 
  int arith_const_14 = 64; 
  int arith_const_15 = 0; 
  float arith_const_16 = 0.000000; 
  float arith_const_17 = -2.000000; 
  float arith_const_18 = 2.000000; 
  float arith_const_19 = 1.000000; 
  float _20; 
  float* memref_alloca_21; 
  memref_alloca_21[0] = _20; 
  float* memref_alloca_22; 
  memref_alloca_22[0] = _20; 
  float* memref_alloca_23; 
  memref_alloca_23[0] = _20; 
  float* memref_alloca_24; 
  memref_alloca_24[0] = _20; 
  float* memref_alloca_25; 
  memref_alloca_25[0] = _20; 
  float* memref_alloca_26; 
  memref_alloca_26[0] = _20; 
  float* memref_alloca_27; 
  memref_alloca_27[0] = _20; 
  float* memref_alloca_28; 
  memref_alloca_28[0] = _20; 
  float* memref_alloca_29; 
  memref_alloca_29[0] = _20; 
  float* memref_alloca_30; 
  memref_alloca_30[0] = _20; 
  float arith_negf_31 = -(func_arg_2); 
  float math_exp_32 = exp(arith_negf_31); 
  float arith_subf_33 = (arith_const_19 - math_exp_32); 
  float arith_mulf_34 = (arith_subf_33 * arith_subf_33); 
  float arith_mulf_35 = (func_arg_2 * math_exp_32); 
  float arith_mulf_36 = (arith_mulf_35 * arith_const_18); 
  float arith_addf_37 = (arith_mulf_36 + arith_const_19); 
  float arith_mulf_38 = (func_arg_2 * arith_const_18); 
  float math_exp_39 = exp(arith_mulf_38); 
  float arith_subf_40 = (arith_addf_37 - math_exp_39); 
  float arith_divf_41 = (arith_mulf_34 / arith_subf_40); 
  float arith_mulf_42 = (arith_divf_41 * math_exp_32); 
  float arith_subf_43 = (func_arg_2 - arith_const_19); 
  float arith_mulf_44 = (arith_mulf_42 * arith_subf_43); 
  float arith_addf_45 = (func_arg_2 + arith_const_19); 
  float arith_mulf_46 = (arith_mulf_42 * arith_addf_45); 
  float arith_negf_47 = -(arith_divf_41); 
  float arith_mulf_48 = (func_arg_2 * arith_const_17); 
  float math_exp_49 = exp(arith_mulf_48); 
  float arith_mulf_50 = (arith_negf_47 * math_exp_49); 
  float math_powf_51 = pow(arith_const_18, arith_negf_31); 
  float arith_negf_52 = -(math_exp_49); 
  for (int for_iter_53 = arith_const_15; for_iter_53 < arith_const_14; for_iter_53 += arith_const_13) {
    for (int for_iter_54 = arith_const_15; for_iter_54 < arith_const_13; for_iter_54 += arith_const_13) {
      int arith_addi_55 = (for_iter_53 + for_iter_54); 
      memref_alloca_28[0] = arith_const_16; 
      memref_alloca_27[0] = arith_const_16; 
      memref_alloca_30[0] = arith_const_16; 
      for (int for_iter_56 = arith_const_15; for_iter_56 < arith_const_12; for_iter_56 += arith_const_13) {
        int arith_muli_57 = (for_iter_56 * arith_const_11); 
        float memref_load_58 = func_arg_3[arith_addi_55][arith_muli_57]; 
        float arith_mulf_59 = (arith_divf_41 * memref_load_58); 
        float memref_load_60 = memref_alloca_30[0]; 
        float arith_mulf_61 = (arith_mulf_44 * memref_load_60); 
        float arith_addf_62 = (arith_mulf_59 + arith_mulf_61); 
        float memref_load_63 = memref_alloca_28[0]; 
        float arith_mulf_64 = (math_powf_51 * memref_load_63); 
        float arith_addf_65 = (arith_addf_62 + arith_mulf_64); 
        float memref_load_66 = memref_alloca_27[0]; 
        float arith_mulf_67 = (arith_negf_52 * memref_load_66); 
        float arith_addf_68 = (arith_addf_65 + arith_mulf_67); 
        func_arg_5[arith_addi_55][arith_muli_57] = arith_addf_68; 
        float memref_load_69 = func_arg_3[arith_addi_55][arith_muli_57]; 
        memref_alloca_30[0] = memref_load_69; 
        memref_alloca_27[0] = memref_load_63; 
        float memref_load_70 = func_arg_5[arith_addi_55][arith_muli_57]; 
        memref_alloca_28[0] = memref_load_70; 
        int arith_addi_71 = (arith_muli_57 + arith_const_13); 
        float memref_load_72 = func_arg_3[arith_addi_55][arith_addi_71]; 
        float arith_mulf_73 = (arith_divf_41 * memref_load_72); 
        float memref_load_74 = memref_alloca_30[0]; 
        float arith_mulf_75 = (arith_mulf_44 * memref_load_74); 
        float arith_addf_76 = (arith_mulf_73 + arith_mulf_75); 
        float memref_load_77 = memref_alloca_28[0]; 
        float arith_mulf_78 = (math_powf_51 * memref_load_77); 
        float arith_addf_79 = (arith_addf_76 + arith_mulf_78); 
        float memref_load_80 = memref_alloca_27[0]; 
        float arith_mulf_81 = (arith_negf_52 * memref_load_80); 
        float arith_addf_82 = (arith_addf_79 + arith_mulf_81); 
        func_arg_5[arith_addi_55][arith_addi_71] = arith_addf_82; 
        float memref_load_83 = func_arg_3[arith_addi_55][arith_addi_71]; 
        memref_alloca_30[0] = memref_load_83; 
        memref_alloca_27[0] = memref_load_77; 
        float memref_load_84 = func_arg_5[arith_addi_55][arith_addi_71]; 
        memref_alloca_28[0] = memref_load_84; 
        int arith_addi_85 = (arith_muli_57 + arith_const_10); 
        float memref_load_86 = func_arg_3[arith_addi_55][arith_addi_85]; 
        float arith_mulf_87 = (arith_divf_41 * memref_load_86); 
        float memref_load_88 = memref_alloca_30[0]; 
        float arith_mulf_89 = (arith_mulf_44 * memref_load_88); 
        float arith_addf_90 = (arith_mulf_87 + arith_mulf_89); 
        float memref_load_91 = memref_alloca_28[0]; 
        float arith_mulf_92 = (math_powf_51 * memref_load_91); 
        float arith_addf_93 = (arith_addf_90 + arith_mulf_92); 
        float memref_load_94 = memref_alloca_27[0]; 
        float arith_mulf_95 = (arith_negf_52 * memref_load_94); 
        float arith_addf_96 = (arith_addf_93 + arith_mulf_95); 
        func_arg_5[arith_addi_55][arith_addi_85] = arith_addf_96; 
        float memref_load_97 = func_arg_3[arith_addi_55][arith_addi_85]; 
        memref_alloca_30[0] = memref_load_97; 
        memref_alloca_27[0] = memref_load_91; 
        float memref_load_98 = func_arg_5[arith_addi_55][arith_addi_85]; 
        memref_alloca_28[0] = memref_load_98; 
        int arith_addi_99 = (arith_muli_57 + arith_const_9); 
        float memref_load_100 = func_arg_3[arith_addi_55][arith_addi_99]; 
        float arith_mulf_101 = (arith_divf_41 * memref_load_100); 
        float memref_load_102 = memref_alloca_30[0]; 
        float arith_mulf_103 = (arith_mulf_44 * memref_load_102); 
        float arith_addf_104 = (arith_mulf_101 + arith_mulf_103); 
        float memref_load_105 = memref_alloca_28[0]; 
        float arith_mulf_106 = (math_powf_51 * memref_load_105); 
        float arith_addf_107 = (arith_addf_104 + arith_mulf_106); 
        float memref_load_108 = memref_alloca_27[0]; 
        float arith_mulf_109 = (arith_negf_52 * memref_load_108); 
        float arith_addf_110 = (arith_addf_107 + arith_mulf_109); 
        func_arg_5[arith_addi_55][arith_addi_99] = arith_addf_110; 
        float memref_load_111 = func_arg_3[arith_addi_55][arith_addi_99]; 
        memref_alloca_30[0] = memref_load_111; 
        memref_alloca_27[0] = memref_load_105; 
        float memref_load_112 = func_arg_5[arith_addi_55][arith_addi_99]; 
        memref_alloca_28[0] = memref_load_112; 
      }
    }
  }
  for (int for_iter_113 = arith_const_15; for_iter_113 < arith_const_14; for_iter_113 += arith_const_13) {
    for (int for_iter_114 = arith_const_15; for_iter_114 < arith_const_13; for_iter_114 += arith_const_13) {
      int arith_addi_115 = (for_iter_113 + for_iter_114); 
      memref_alloca_22[0] = arith_const_16; 
      memref_alloca_21[0] = arith_const_16; 
      memref_alloca_26[0] = arith_const_16; 
      memref_alloca_25[0] = arith_const_16; 
      for (int for_iter_116 = arith_const_15; for_iter_116 < arith_const_12; for_iter_116 += arith_const_13) {
        int arith_muli_117 = (for_iter_116 * arith_const_11); 
        float memref_load_118 = memref_alloca_26[0]; 
        float arith_mulf_119 = (arith_mulf_46 * memref_load_118); 
        float memref_load_120 = memref_alloca_25[0]; 
        float arith_mulf_121 = (arith_mulf_50 * memref_load_120); 
        float arith_addf_122 = (arith_mulf_119 + arith_mulf_121); 
        float memref_load_123 = memref_alloca_22[0]; 
        float arith_mulf_124 = (math_powf_51 * memref_load_123); 
        float arith_addf_125 = (arith_addf_122 + arith_mulf_124); 
        float memref_load_126 = memref_alloca_21[0]; 
        float arith_mulf_127 = (arith_negf_52 * memref_load_126); 
        float arith_addf_128 = (arith_addf_125 + arith_mulf_127); 
        int arith_muli_129 = (arith_muli_117 * arith_const_8); 
        int arith_addi_130 = (arith_muli_129 + arith_const_7); 
        func_arg_6[arith_addi_115][arith_addi_130] = arith_addf_128; 
        memref_alloca_25[0] = memref_load_118; 
        int arith_muli_131 = (arith_muli_117 * arith_const_8); 
        int arith_addi_132 = (arith_muli_131 + arith_const_7); 
        float memref_load_133 = func_arg_3[arith_addi_115][arith_addi_132]; 
        memref_alloca_26[0] = memref_load_133; 
        memref_alloca_21[0] = memref_load_123; 
        int arith_muli_134 = (arith_muli_117 * arith_const_8); 
        int arith_addi_135 = (arith_muli_134 + arith_const_7); 
        float memref_load_136 = func_arg_6[arith_addi_115][arith_addi_135]; 
        memref_alloca_22[0] = memref_load_136; 
        int arith_addi_137 = (arith_muli_117 + arith_const_13); 
        float memref_load_138 = memref_alloca_26[0]; 
        float arith_mulf_139 = (arith_mulf_46 * memref_load_138); 
        float memref_load_140 = memref_alloca_25[0]; 
        float arith_mulf_141 = (arith_mulf_50 * memref_load_140); 
        float arith_addf_142 = (arith_mulf_139 + arith_mulf_141); 
        float memref_load_143 = memref_alloca_22[0]; 
        float arith_mulf_144 = (math_powf_51 * memref_load_143); 
        float arith_addf_145 = (arith_addf_142 + arith_mulf_144); 
        float memref_load_146 = memref_alloca_21[0]; 
        float arith_mulf_147 = (arith_negf_52 * memref_load_146); 
        float arith_addf_148 = (arith_addf_145 + arith_mulf_147); 
        int arith_muli_149 = (arith_addi_137 * arith_const_8); 
        int arith_addi_150 = (arith_muli_149 + arith_const_7); 
        func_arg_6[arith_addi_115][arith_addi_150] = arith_addf_148; 
        memref_alloca_25[0] = memref_load_138; 
        int arith_muli_151 = (arith_addi_137 * arith_const_8); 
        int arith_addi_152 = (arith_muli_151 + arith_const_7); 
        float memref_load_153 = func_arg_3[arith_addi_115][arith_addi_152]; 
        memref_alloca_26[0] = memref_load_153; 
        memref_alloca_21[0] = memref_load_143; 
        int arith_muli_154 = (arith_addi_137 * arith_const_8); 
        int arith_addi_155 = (arith_muli_154 + arith_const_7); 
        float memref_load_156 = func_arg_6[arith_addi_115][arith_addi_155]; 
        memref_alloca_22[0] = memref_load_156; 
        int arith_addi_157 = (arith_muli_117 + arith_const_10); 
        float memref_load_158 = memref_alloca_26[0]; 
        float arith_mulf_159 = (arith_mulf_46 * memref_load_158); 
        float memref_load_160 = memref_alloca_25[0]; 
        float arith_mulf_161 = (arith_mulf_50 * memref_load_160); 
        float arith_addf_162 = (arith_mulf_159 + arith_mulf_161); 
        float memref_load_163 = memref_alloca_22[0]; 
        float arith_mulf_164 = (math_powf_51 * memref_load_163); 
        float arith_addf_165 = (arith_addf_162 + arith_mulf_164); 
        float memref_load_166 = memref_alloca_21[0]; 
        float arith_mulf_167 = (arith_negf_52 * memref_load_166); 
        float arith_addf_168 = (arith_addf_165 + arith_mulf_167); 
        int arith_muli_169 = (arith_addi_157 * arith_const_8); 
        int arith_addi_170 = (arith_muli_169 + arith_const_7); 
        func_arg_6[arith_addi_115][arith_addi_170] = arith_addf_168; 
        memref_alloca_25[0] = memref_load_158; 
        int arith_muli_171 = (arith_addi_157 * arith_const_8); 
        int arith_addi_172 = (arith_muli_171 + arith_const_7); 
        float memref_load_173 = func_arg_3[arith_addi_115][arith_addi_172]; 
        memref_alloca_26[0] = memref_load_173; 
        memref_alloca_21[0] = memref_load_163; 
        int arith_muli_174 = (arith_addi_157 * arith_const_8); 
        int arith_addi_175 = (arith_muli_174 + arith_const_7); 
        float memref_load_176 = func_arg_6[arith_addi_115][arith_addi_175]; 
        memref_alloca_22[0] = memref_load_176; 
        int arith_addi_177 = (arith_muli_117 + arith_const_9); 
        float memref_load_178 = memref_alloca_26[0]; 
        float arith_mulf_179 = (arith_mulf_46 * memref_load_178); 
        float memref_load_180 = memref_alloca_25[0]; 
        float arith_mulf_181 = (arith_mulf_50 * memref_load_180); 
        float arith_addf_182 = (arith_mulf_179 + arith_mulf_181); 
        float memref_load_183 = memref_alloca_22[0]; 
        float arith_mulf_184 = (math_powf_51 * memref_load_183); 
        float arith_addf_185 = (arith_addf_182 + arith_mulf_184); 
        float memref_load_186 = memref_alloca_21[0]; 
        float arith_mulf_187 = (arith_negf_52 * memref_load_186); 
        float arith_addf_188 = (arith_addf_185 + arith_mulf_187); 
        int arith_muli_189 = (arith_addi_177 * arith_const_8); 
        int arith_addi_190 = (arith_muli_189 + arith_const_7); 
        func_arg_6[arith_addi_115][arith_addi_190] = arith_addf_188; 
        memref_alloca_25[0] = memref_load_178; 
        int arith_muli_191 = (arith_addi_177 * arith_const_8); 
        int arith_addi_192 = (arith_muli_191 + arith_const_7); 
        float memref_load_193 = func_arg_3[arith_addi_115][arith_addi_192]; 
        memref_alloca_26[0] = memref_load_193; 
        memref_alloca_21[0] = memref_load_183; 
        int arith_muli_194 = (arith_addi_177 * arith_const_8); 
        int arith_addi_195 = (arith_muli_194 + arith_const_7); 
        float memref_load_196 = func_arg_6[arith_addi_115][arith_addi_195]; 
        memref_alloca_22[0] = memref_load_196; 
      }
    }
  }
  for (int for_iter_197 = arith_const_15; for_iter_197 < arith_const_14; for_iter_197 += arith_const_13) {
    for (int for_iter_198 = arith_const_15; for_iter_198 < arith_const_13; for_iter_198 += arith_const_13) {
      int arith_addi_199 = (for_iter_197 + for_iter_198); 
      for (int for_iter_200 = arith_const_15; for_iter_200 < arith_const_12; for_iter_200 += arith_const_13) {
        int arith_muli_201 = (for_iter_200 * arith_const_11); 
        for (int for_iter_202 = arith_const_15; for_iter_202 < arith_const_13; for_iter_202 += arith_const_13) {
          int arith_muli_203 = (for_iter_202 * arith_const_11); 
          int arith_addi_204 = (arith_muli_201 + arith_muli_203); 
          float memref_load_205 = func_arg_5[arith_addi_199][arith_addi_204]; 
          float memref_load_206 = func_arg_6[arith_addi_199][arith_addi_204]; 
          float arith_addf_207 = (memref_load_205 + memref_load_206); 
          func_arg_4[arith_addi_199][arith_addi_204] = arith_addf_207; 
          int arith_addi_208 = (arith_addi_204 + arith_const_13); 
          float memref_load_209 = func_arg_5[arith_addi_199][arith_addi_208]; 
          float memref_load_210 = func_arg_6[arith_addi_199][arith_addi_208]; 
          float arith_addf_211 = (memref_load_209 + memref_load_210); 
          func_arg_4[arith_addi_199][arith_addi_208] = arith_addf_211; 
          int arith_addi_212 = (arith_addi_204 + arith_const_10); 
          float memref_load_213 = func_arg_5[arith_addi_199][arith_addi_212]; 
          float memref_load_214 = func_arg_6[arith_addi_199][arith_addi_212]; 
          float arith_addf_215 = (memref_load_213 + memref_load_214); 
          func_arg_4[arith_addi_199][arith_addi_212] = arith_addf_215; 
          int arith_addi_216 = (arith_addi_204 + arith_const_9); 
          float memref_load_217 = func_arg_5[arith_addi_199][arith_addi_216]; 
          float memref_load_218 = func_arg_6[arith_addi_199][arith_addi_216]; 
          float arith_addf_219 = (memref_load_217 + memref_load_218); 
          func_arg_4[arith_addi_199][arith_addi_216] = arith_addf_219; 
        }
      }
    }
  }
  for (int for_iter_220 = arith_const_15; for_iter_220 < arith_const_14; for_iter_220 += arith_const_13) {
    for (int for_iter_221 = arith_const_15; for_iter_221 < arith_const_13; for_iter_221 += arith_const_13) {
      int arith_addi_222 = (for_iter_220 + for_iter_221); 
      memref_alloca_29[0] = arith_const_16; 
      memref_alloca_28[0] = arith_const_16; 
      memref_alloca_27[0] = arith_const_16; 
      for (int for_iter_223 = arith_const_15; for_iter_223 < arith_const_12; for_iter_223 += arith_const_13) {
        int arith_muli_224 = (for_iter_223 * arith_const_11); 
        float memref_load_225 = func_arg_4[arith_muli_224][arith_addi_222]; 
        float arith_mulf_226 = (arith_divf_41 * memref_load_225); 
        float memref_load_227 = memref_alloca_29[0]; 
        float arith_mulf_228 = (arith_mulf_44 * memref_load_227); 
        float arith_addf_229 = (arith_mulf_226 + arith_mulf_228); 
        float memref_load_230 = memref_alloca_28[0]; 
        float arith_mulf_231 = (math_powf_51 * memref_load_230); 
        float arith_addf_232 = (arith_addf_229 + arith_mulf_231); 
        float memref_load_233 = memref_alloca_27[0]; 
        float arith_mulf_234 = (arith_negf_52 * memref_load_233); 
        float arith_addf_235 = (arith_addf_232 + arith_mulf_234); 
        func_arg_5[arith_muli_224][arith_addi_222] = arith_addf_235; 
        float memref_load_236 = func_arg_4[arith_muli_224][arith_addi_222]; 
        memref_alloca_29[0] = memref_load_236; 
        memref_alloca_27[0] = memref_load_230; 
        float memref_load_237 = func_arg_5[arith_muli_224][arith_addi_222]; 
        memref_alloca_28[0] = memref_load_237; 
        int arith_addi_238 = (arith_muli_224 + arith_const_13); 
        float memref_load_239 = func_arg_4[arith_addi_238][arith_addi_222]; 
        float arith_mulf_240 = (arith_divf_41 * memref_load_239); 
        float memref_load_241 = memref_alloca_29[0]; 
        float arith_mulf_242 = (arith_mulf_44 * memref_load_241); 
        float arith_addf_243 = (arith_mulf_240 + arith_mulf_242); 
        float memref_load_244 = memref_alloca_28[0]; 
        float arith_mulf_245 = (math_powf_51 * memref_load_244); 
        float arith_addf_246 = (arith_addf_243 + arith_mulf_245); 
        float memref_load_247 = memref_alloca_27[0]; 
        float arith_mulf_248 = (arith_negf_52 * memref_load_247); 
        float arith_addf_249 = (arith_addf_246 + arith_mulf_248); 
        func_arg_5[arith_addi_238][arith_addi_222] = arith_addf_249; 
        float memref_load_250 = func_arg_4[arith_addi_238][arith_addi_222]; 
        memref_alloca_29[0] = memref_load_250; 
        memref_alloca_27[0] = memref_load_244; 
        float memref_load_251 = func_arg_5[arith_addi_238][arith_addi_222]; 
        memref_alloca_28[0] = memref_load_251; 
        int arith_addi_252 = (arith_muli_224 + arith_const_10); 
        float memref_load_253 = func_arg_4[arith_addi_252][arith_addi_222]; 
        float arith_mulf_254 = (arith_divf_41 * memref_load_253); 
        float memref_load_255 = memref_alloca_29[0]; 
        float arith_mulf_256 = (arith_mulf_44 * memref_load_255); 
        float arith_addf_257 = (arith_mulf_254 + arith_mulf_256); 
        float memref_load_258 = memref_alloca_28[0]; 
        float arith_mulf_259 = (math_powf_51 * memref_load_258); 
        float arith_addf_260 = (arith_addf_257 + arith_mulf_259); 
        float memref_load_261 = memref_alloca_27[0]; 
        float arith_mulf_262 = (arith_negf_52 * memref_load_261); 
        float arith_addf_263 = (arith_addf_260 + arith_mulf_262); 
        func_arg_5[arith_addi_252][arith_addi_222] = arith_addf_263; 
        float memref_load_264 = func_arg_4[arith_addi_252][arith_addi_222]; 
        memref_alloca_29[0] = memref_load_264; 
        memref_alloca_27[0] = memref_load_258; 
        float memref_load_265 = func_arg_5[arith_addi_252][arith_addi_222]; 
        memref_alloca_28[0] = memref_load_265; 
        int arith_addi_266 = (arith_muli_224 + arith_const_9); 
        float memref_load_267 = func_arg_4[arith_addi_266][arith_addi_222]; 
        float arith_mulf_268 = (arith_divf_41 * memref_load_267); 
        float memref_load_269 = memref_alloca_29[0]; 
        float arith_mulf_270 = (arith_mulf_44 * memref_load_269); 
        float arith_addf_271 = (arith_mulf_268 + arith_mulf_270); 
        float memref_load_272 = memref_alloca_28[0]; 
        float arith_mulf_273 = (math_powf_51 * memref_load_272); 
        float arith_addf_274 = (arith_addf_271 + arith_mulf_273); 
        float memref_load_275 = memref_alloca_27[0]; 
        float arith_mulf_276 = (arith_negf_52 * memref_load_275); 
        float arith_addf_277 = (arith_addf_274 + arith_mulf_276); 
        func_arg_5[arith_addi_266][arith_addi_222] = arith_addf_277; 
        float memref_load_278 = func_arg_4[arith_addi_266][arith_addi_222]; 
        memref_alloca_29[0] = memref_load_278; 
        memref_alloca_27[0] = memref_load_272; 
        float memref_load_279 = func_arg_5[arith_addi_266][arith_addi_222]; 
        memref_alloca_28[0] = memref_load_279; 
      }
    }
  }
  for (int for_iter_280 = arith_const_15; for_iter_280 < arith_const_14; for_iter_280 += arith_const_13) {
    for (int for_iter_281 = arith_const_15; for_iter_281 < arith_const_13; for_iter_281 += arith_const_13) {
      int arith_addi_282 = (for_iter_280 + for_iter_281); 
      memref_alloca_24[0] = arith_const_16; 
      memref_alloca_23[0] = arith_const_16; 
      memref_alloca_22[0] = arith_const_16; 
      memref_alloca_21[0] = arith_const_16; 
      for (int for_iter_283 = arith_const_15; for_iter_283 < arith_const_12; for_iter_283 += arith_const_13) {
        int arith_muli_284 = (for_iter_283 * arith_const_11); 
        float memref_load_285 = memref_alloca_24[0]; 
        float arith_mulf_286 = (arith_mulf_46 * memref_load_285); 
        float memref_load_287 = memref_alloca_23[0]; 
        float arith_mulf_288 = (arith_mulf_50 * memref_load_287); 
        float arith_addf_289 = (arith_mulf_286 + arith_mulf_288); 
        float memref_load_290 = memref_alloca_22[0]; 
        float arith_mulf_291 = (math_powf_51 * memref_load_290); 
        float arith_addf_292 = (arith_addf_289 + arith_mulf_291); 
        float memref_load_293 = memref_alloca_21[0]; 
        float arith_mulf_294 = (arith_negf_52 * memref_load_293); 
        float arith_addf_295 = (arith_addf_292 + arith_mulf_294); 
        int arith_muli_296 = (arith_muli_284 * arith_const_8); 
        int arith_addi_297 = (arith_muli_296 + arith_const_7); 
        func_arg_6[arith_addi_297][arith_addi_282] = arith_addf_295; 
        memref_alloca_23[0] = memref_load_285; 
        int arith_muli_298 = (arith_muli_284 * arith_const_8); 
        int arith_addi_299 = (arith_muli_298 + arith_const_7); 
        float memref_load_300 = func_arg_4[arith_addi_299][arith_addi_282]; 
        memref_alloca_24[0] = memref_load_300; 
        memref_alloca_21[0] = memref_load_290; 
        int arith_muli_301 = (arith_muli_284 * arith_const_8); 
        int arith_addi_302 = (arith_muli_301 + arith_const_7); 
        float memref_load_303 = func_arg_6[arith_addi_302][arith_addi_282]; 
        memref_alloca_22[0] = memref_load_303; 
        int arith_addi_304 = (arith_muli_284 + arith_const_13); 
        float memref_load_305 = memref_alloca_24[0]; 
        float arith_mulf_306 = (arith_mulf_46 * memref_load_305); 
        float memref_load_307 = memref_alloca_23[0]; 
        float arith_mulf_308 = (arith_mulf_50 * memref_load_307); 
        float arith_addf_309 = (arith_mulf_306 + arith_mulf_308); 
        float memref_load_310 = memref_alloca_22[0]; 
        float arith_mulf_311 = (math_powf_51 * memref_load_310); 
        float arith_addf_312 = (arith_addf_309 + arith_mulf_311); 
        float memref_load_313 = memref_alloca_21[0]; 
        float arith_mulf_314 = (arith_negf_52 * memref_load_313); 
        float arith_addf_315 = (arith_addf_312 + arith_mulf_314); 
        int arith_muli_316 = (arith_addi_304 * arith_const_8); 
        int arith_addi_317 = (arith_muli_316 + arith_const_7); 
        func_arg_6[arith_addi_317][arith_addi_282] = arith_addf_315; 
        memref_alloca_23[0] = memref_load_305; 
        int arith_muli_318 = (arith_addi_304 * arith_const_8); 
        int arith_addi_319 = (arith_muli_318 + arith_const_7); 
        float memref_load_320 = func_arg_4[arith_addi_319][arith_addi_282]; 
        memref_alloca_24[0] = memref_load_320; 
        memref_alloca_21[0] = memref_load_310; 
        int arith_muli_321 = (arith_addi_304 * arith_const_8); 
        int arith_addi_322 = (arith_muli_321 + arith_const_7); 
        float memref_load_323 = func_arg_6[arith_addi_322][arith_addi_282]; 
        memref_alloca_22[0] = memref_load_323; 
        int arith_addi_324 = (arith_muli_284 + arith_const_10); 
        float memref_load_325 = memref_alloca_24[0]; 
        float arith_mulf_326 = (arith_mulf_46 * memref_load_325); 
        float memref_load_327 = memref_alloca_23[0]; 
        float arith_mulf_328 = (arith_mulf_50 * memref_load_327); 
        float arith_addf_329 = (arith_mulf_326 + arith_mulf_328); 
        float memref_load_330 = memref_alloca_22[0]; 
        float arith_mulf_331 = (math_powf_51 * memref_load_330); 
        float arith_addf_332 = (arith_addf_329 + arith_mulf_331); 
        float memref_load_333 = memref_alloca_21[0]; 
        float arith_mulf_334 = (arith_negf_52 * memref_load_333); 
        float arith_addf_335 = (arith_addf_332 + arith_mulf_334); 
        int arith_muli_336 = (arith_addi_324 * arith_const_8); 
        int arith_addi_337 = (arith_muli_336 + arith_const_7); 
        func_arg_6[arith_addi_337][arith_addi_282] = arith_addf_335; 
        memref_alloca_23[0] = memref_load_325; 
        int arith_muli_338 = (arith_addi_324 * arith_const_8); 
        int arith_addi_339 = (arith_muli_338 + arith_const_7); 
        float memref_load_340 = func_arg_4[arith_addi_339][arith_addi_282]; 
        memref_alloca_24[0] = memref_load_340; 
        memref_alloca_21[0] = memref_load_330; 
        int arith_muli_341 = (arith_addi_324 * arith_const_8); 
        int arith_addi_342 = (arith_muli_341 + arith_const_7); 
        float memref_load_343 = func_arg_6[arith_addi_342][arith_addi_282]; 
        memref_alloca_22[0] = memref_load_343; 
        int arith_addi_344 = (arith_muli_284 + arith_const_9); 
        float memref_load_345 = memref_alloca_24[0]; 
        float arith_mulf_346 = (arith_mulf_46 * memref_load_345); 
        float memref_load_347 = memref_alloca_23[0]; 
        float arith_mulf_348 = (arith_mulf_50 * memref_load_347); 
        float arith_addf_349 = (arith_mulf_346 + arith_mulf_348); 
        float memref_load_350 = memref_alloca_22[0]; 
        float arith_mulf_351 = (math_powf_51 * memref_load_350); 
        float arith_addf_352 = (arith_addf_349 + arith_mulf_351); 
        float memref_load_353 = memref_alloca_21[0]; 
        float arith_mulf_354 = (arith_negf_52 * memref_load_353); 
        float arith_addf_355 = (arith_addf_352 + arith_mulf_354); 
        int arith_muli_356 = (arith_addi_344 * arith_const_8); 
        int arith_addi_357 = (arith_muli_356 + arith_const_7); 
        func_arg_6[arith_addi_357][arith_addi_282] = arith_addf_355; 
        memref_alloca_23[0] = memref_load_345; 
        int arith_muli_358 = (arith_addi_344 * arith_const_8); 
        int arith_addi_359 = (arith_muli_358 + arith_const_7); 
        float memref_load_360 = func_arg_4[arith_addi_359][arith_addi_282]; 
        memref_alloca_24[0] = memref_load_360; 
        memref_alloca_21[0] = memref_load_350; 
        int arith_muli_361 = (arith_addi_344 * arith_const_8); 
        int arith_addi_362 = (arith_muli_361 + arith_const_7); 
        float memref_load_363 = func_arg_6[arith_addi_362][arith_addi_282]; 
        memref_alloca_22[0] = memref_load_363; 
      }
    }
  }
  for (int for_iter_364 = arith_const_15; for_iter_364 < arith_const_14; for_iter_364 += arith_const_13) {
    for (int for_iter_365 = arith_const_15; for_iter_365 < arith_const_13; for_iter_365 += arith_const_13) {
      int arith_addi_366 = (for_iter_364 + for_iter_365); 
      for (int for_iter_367 = arith_const_15; for_iter_367 < arith_const_12; for_iter_367 += arith_const_13) {
        int arith_muli_368 = (for_iter_367 * arith_const_11); 
        for (int for_iter_369 = arith_const_15; for_iter_369 < arith_const_13; for_iter_369 += arith_const_13) {
          int arith_muli_370 = (for_iter_369 * arith_const_11); 
          int arith_addi_371 = (arith_muli_368 + arith_muli_370); 
          float memref_load_372 = func_arg_5[arith_addi_366][arith_addi_371]; 
          float memref_load_373 = func_arg_6[arith_addi_366][arith_addi_371]; 
          float arith_addf_374 = (memref_load_372 + memref_load_373); 
          func_arg_4[arith_addi_366][arith_addi_371] = arith_addf_374; 
          int arith_addi_375 = (arith_addi_371 + arith_const_13); 
          float memref_load_376 = func_arg_5[arith_addi_366][arith_addi_375]; 
          float memref_load_377 = func_arg_6[arith_addi_366][arith_addi_375]; 
          float arith_addf_378 = (memref_load_376 + memref_load_377); 
          func_arg_4[arith_addi_366][arith_addi_375] = arith_addf_378; 
          int arith_addi_379 = (arith_addi_371 + arith_const_10); 
          float memref_load_380 = func_arg_5[arith_addi_366][arith_addi_379]; 
          float memref_load_381 = func_arg_6[arith_addi_366][arith_addi_379]; 
          float arith_addf_382 = (memref_load_380 + memref_load_381); 
          func_arg_4[arith_addi_366][arith_addi_379] = arith_addf_382; 
          int arith_addi_383 = (arith_addi_371 + arith_const_9); 
          float memref_load_384 = func_arg_5[arith_addi_366][arith_addi_383]; 
          float memref_load_385 = func_arg_6[arith_addi_366][arith_addi_383]; 
          float arith_addf_386 = (memref_load_384 + memref_load_385); 
          func_arg_4[arith_addi_366][arith_addi_383] = arith_addf_386; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int w;
  int h;
  float alpha;
  float* imgIn;
  float* imgOut;
  float* y1;
  float* y2;


  kernel_deriche(w, h, alpha, imgIn, imgOut, y1, y2);

}

#pragma pocc-region-end
