#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 32; 
  int arith_const_8 = 2; 
  int arith_const_9 = 63; 
  int arith_const_10 = -1; 
  int arith_const_11 = 1; 
  int arith_const_12 = 64; 
  int arith_const_13 = 0; 
  float arith_const_14 = 0.000000; 
  float _15; 
  float arith_const_16 = 1.000000; 
  float arith_const_17 = 2.000000; 
  float arith_const_18 = -2.000000; 
  float* memref_alloca_19; 
  float* memref_alloca_20; 
  float* memref_alloca_21; 
  float* memref_alloca_22; 
  float* memref_alloca_23; 
  float* memref_alloca_24; 
  float* memref_alloca_25; 
  float* memref_alloca_26; 
  float* memref_alloca_27; 
  float* memref_alloca_28; 
  float* memref_alloca_29; 
  float* memref_alloca_30; 
  float* memref_alloca_31; 
  float* memref_alloca_32; 
  float* memref_alloca_33; 
  float* memref_alloca_34; 
  float* memref_alloca_35; 
  float* memref_alloca_36; 
  float* memref_alloca_37; 
  float* memref_alloca_38; 
  float* memref_alloca_39; 
  float* memref_alloca_40; 
  float* memref_alloca_41; 
  float* memref_alloca_42; 
  float arith_mulf_43 = (func_arg_2 * arith_const_18); 
  float math_exp_44 = exp(arith_mulf_43); 
  float arith_negf_45 = -(math_exp_44); 
  memref_alloca_23[arith_const_13] = arith_negf_45; 
  float arith_negf_46 = -(func_arg_2); 
  float math_powf_47 = pow(arith_const_17, arith_negf_46); 
  memref_alloca_32[arith_const_13] = math_powf_47; 
  float arith_negf_48 = -(func_arg_2); 
  float math_exp_49 = exp(arith_negf_48); 
  float arith_mulf_50 = (func_arg_2 * math_exp_49); 
  float arith_subf_51 = (arith_const_16 - math_exp_49); 
  float arith_mulf_52 = (arith_subf_51 * arith_subf_51); 
  float arith_mulf_53 = (arith_mulf_50 * arith_const_17); 
  float arith_addf_54 = (arith_mulf_53 + arith_const_16); 
  float arith_mulf_55 = (func_arg_2 * arith_const_17); 
  float math_exp_56 = exp(arith_mulf_55); 
  float arith_subf_57 = (arith_addf_54 - math_exp_56); 
  float arith_divf_58 = (arith_mulf_52 / arith_subf_57); 
  memref_alloca_27[arith_const_13] = arith_divf_58; 
  float memref_load_59 = memref_alloca_27[arith_const_13]; 
  memref_alloca_21[arith_const_13] = memref_load_59; 
  float arith_negf_60 = -(func_arg_2); 
  float math_exp_61 = exp(arith_negf_60); 
  float arith_mulf_62 = (memref_load_59 * math_exp_61); 
  memref_alloca_24[arith_const_13] = arith_mulf_62; 
  float arith_subf_63 = (func_arg_2 - arith_const_16); 
  float arith_mulf_64 = (arith_mulf_62 * arith_subf_63); 
  memref_alloca_33[arith_const_13] = arith_mulf_64; 
  float memref_load_65 = memref_alloca_21[arith_const_13]; 
  float arith_negf_66 = -(memref_load_65); 
  float arith_mulf_67 = (func_arg_2 * arith_const_18); 
  float math_exp_68 = exp(arith_mulf_67); 
  float arith_mulf_69 = (arith_negf_66 * math_exp_68); 
  memref_alloca_30[arith_const_13] = arith_mulf_69; 
  float memref_load_70 = memref_alloca_24[arith_const_13]; 
  float arith_addf_71 = (func_arg_2 + arith_const_16); 
  float arith_mulf_72 = (memref_load_70 * arith_addf_71); 
  memref_alloca_28[arith_const_13] = arith_mulf_72; 
  memref_alloca_22[0] = _15; 
  memref_alloca_31[0] = _15; 
  memref_alloca_42[0] = _15; 
  memref_alloca_41[0] = _15; 
  for (int for_iter_73 = arith_const_13; for_iter_73 < arith_const_12; for_iter_73 += arith_const_11) {
    memref_alloca_22[0] = arith_const_14; 
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_42[0] = arith_const_14; 
    for (int for_iter_74 = arith_const_13; for_iter_74 < arith_const_12; for_iter_74 += arith_const_11) {
      float memref_load_75 = memref_alloca_27[arith_const_13]; 
      float memref_load_76 = func_arg_3[for_iter_73][for_iter_74]; 
      float arith_mulf_77 = (memref_load_75 * memref_load_76); 
      float memref_load_78 = memref_alloca_33[arith_const_13]; 
      float memref_load_79 = memref_alloca_22[0]; 
      float arith_mulf_80 = (memref_load_78 * memref_load_79); 
      float arith_addf_81 = (arith_mulf_77 + arith_mulf_80); 
      float memref_load_82 = memref_alloca_32[arith_const_13]; 
      float memref_load_83 = memref_alloca_42[0]; 
      memref_alloca_25[arith_const_13] = memref_load_83; 
      float arith_mulf_84 = (memref_load_82 * memref_load_83); 
      float arith_addf_85 = (arith_addf_81 + arith_mulf_84); 
      float memref_load_86 = memref_alloca_23[arith_const_13]; 
      float memref_load_87 = memref_alloca_41[0]; 
      float arith_mulf_88 = (memref_load_86 * memref_load_87); 
      float arith_addf_89 = (arith_addf_85 + arith_mulf_88); 
      func_arg_5[for_iter_73][for_iter_74] = arith_addf_89; 
      float memref_load_90 = func_arg_5[for_iter_73][for_iter_74]; 
      memref_alloca_42[0] = memref_load_90; 
      float memref_load_91 = memref_alloca_25[arith_const_13]; 
      memref_alloca_41[0] = memref_load_91; 
      float memref_load_92 = func_arg_3[for_iter_73][for_iter_74]; 
      memref_alloca_22[0] = memref_load_92; 
    }
  }
  memref_alloca_20[0] = _15; 
  memref_alloca_38[0] = _15; 
  memref_alloca_26[0] = _15; 
  memref_alloca_39[0] = _15; 
  memref_alloca_40[0] = _15; 
  memref_alloca_19[0] = _15; 
  for (int for_iter_93 = arith_const_13; for_iter_93 < arith_const_12; for_iter_93 += arith_const_11) {
    memref_alloca_38[0] = arith_const_14; 
    memref_alloca_20[0] = arith_const_14; 
    memref_alloca_19[0] = arith_const_14; 
    memref_alloca_40[0] = arith_const_14; 
    for (int for_iter_94 = arith_const_13; for_iter_94 < arith_const_12; for_iter_94 += arith_const_11) {
      float memref_load_95 = memref_alloca_28[arith_const_13]; 
      float memref_load_96 = memref_alloca_20[0]; 
      memref_alloca_29[arith_const_13] = memref_load_96; 
      float arith_mulf_97 = (memref_load_95 * memref_load_96); 
      float memref_load_98 = memref_alloca_30[arith_const_13]; 
      float memref_load_99 = memref_alloca_38[0]; 
      float arith_mulf_100 = (memref_load_98 * memref_load_99); 
      float arith_addf_101 = (arith_mulf_97 + arith_mulf_100); 
      float memref_load_102 = memref_alloca_32[arith_const_13]; 
      float memref_load_103 = memref_alloca_40[0]; 
      memref_alloca_35[arith_const_13] = memref_load_103; 
      float arith_mulf_104 = (memref_load_102 * memref_load_103); 
      float arith_addf_105 = (arith_addf_101 + arith_mulf_104); 
      float memref_load_106 = memref_alloca_23[arith_const_13]; 
      float memref_load_107 = memref_alloca_19[0]; 
      float arith_mulf_108 = (memref_load_106 * memref_load_107); 
      float arith_addf_109 = (arith_addf_105 + arith_mulf_108); 
      int arith_muli_110 = (for_iter_94 * arith_const_10); 
      int arith_addi_111 = (arith_muli_110 + arith_const_9); 
      func_arg_6[for_iter_93][arith_addi_111] = arith_addf_109; 
      int arith_muli_112 = (for_iter_94 * arith_const_10); 
      int arith_addi_113 = (arith_muli_112 + arith_const_9); 
      float memref_load_114 = func_arg_6[for_iter_93][arith_addi_113]; 
      memref_alloca_40[0] = memref_load_114; 
      float memref_load_115 = memref_alloca_35[arith_const_13]; 
      memref_alloca_19[0] = memref_load_115; 
      int arith_muli_116 = (for_iter_94 * arith_const_10); 
      int arith_addi_117 = (arith_muli_116 + arith_const_9); 
      float memref_load_118 = func_arg_3[for_iter_93][arith_addi_117]; 
      memref_alloca_20[0] = memref_load_118; 
      float memref_load_119 = memref_alloca_29[arith_const_13]; 
      memref_alloca_38[0] = memref_load_119; 
    }
  }
  for (int for_iter_120 = arith_const_13; for_iter_120 < arith_const_8; for_iter_120 += arith_const_11) {
    for (int for_iter_121 = arith_const_13; for_iter_121 < arith_const_8; for_iter_121 += arith_const_11) {
      int arith_muli_122 = (for_iter_120 * arith_const_7); 
      int arith_muli_123 = (for_iter_120 * arith_const_7); 
      int arith_addi_124 = (arith_muli_123 + arith_const_7); 
      for (int for_iter_125 = arith_muli_122; for_iter_125 < arith_addi_124; for_iter_125 += arith_const_11) {
        int arith_muli_126 = (for_iter_121 * arith_const_7); 
        int arith_muli_127 = (for_iter_121 * arith_const_7); 
        int arith_addi_128 = (arith_muli_127 + arith_const_7); 
        for (int for_iter_129 = arith_muli_126; for_iter_129 < arith_addi_128; for_iter_129 += arith_const_11) {
          memref_alloca_22[0] = arith_const_14; 
          memref_alloca_41[0] = arith_const_14; 
          memref_alloca_42[0] = arith_const_14; 
          float memref_load_130 = memref_alloca_27[arith_const_13]; 
          float memref_load_131 = func_arg_3[for_iter_125][for_iter_129]; 
          float arith_mulf_132 = (memref_load_130 * memref_load_131); 
          float memref_load_133 = memref_alloca_33[arith_const_13]; 
          float memref_load_134 = memref_alloca_22[0]; 
          float arith_mulf_135 = (memref_load_133 * memref_load_134); 
          float arith_addf_136 = (arith_mulf_132 + arith_mulf_135); 
          float memref_load_137 = memref_alloca_32[arith_const_13]; 
          float memref_load_138 = memref_alloca_42[0]; 
          memref_alloca_25[arith_const_13] = memref_load_138; 
          float arith_mulf_139 = (memref_load_137 * memref_load_138); 
          float arith_addf_140 = (arith_addf_136 + arith_mulf_139); 
          float memref_load_141 = memref_alloca_23[arith_const_13]; 
          float memref_load_142 = memref_alloca_41[0]; 
          float arith_mulf_143 = (memref_load_141 * memref_load_142); 
          float arith_addf_144 = (arith_addf_140 + arith_mulf_143); 
          func_arg_5[for_iter_125][for_iter_129] = arith_addf_144; 
          float memref_load_145 = func_arg_5[for_iter_125][for_iter_129]; 
          memref_alloca_42[0] = memref_load_145; 
          float memref_load_146 = memref_alloca_25[arith_const_13]; 
          memref_alloca_41[0] = memref_load_146; 
          float memref_load_147 = func_arg_3[for_iter_125][for_iter_129]; 
          memref_alloca_22[0] = memref_load_147; 
          memref_alloca_38[0] = arith_const_14; 
          memref_alloca_20[0] = arith_const_14; 
          memref_alloca_19[0] = arith_const_14; 
          memref_alloca_40[0] = arith_const_14; 
          int arith_muli_148 = (for_iter_129 * arith_const_10); 
          int arith_addi_149 = (arith_muli_148 + arith_const_9); 
          float memref_load_150 = memref_alloca_28[arith_const_13]; 
          float memref_load_151 = memref_alloca_20[0]; 
          memref_alloca_29[arith_const_13] = memref_load_151; 
          float arith_mulf_152 = (memref_load_150 * memref_load_151); 
          float memref_load_153 = memref_alloca_30[arith_const_13]; 
          float memref_load_154 = memref_alloca_38[0]; 
          float arith_mulf_155 = (memref_load_153 * memref_load_154); 
          float arith_addf_156 = (arith_mulf_152 + arith_mulf_155); 
          float memref_load_157 = memref_alloca_32[arith_const_13]; 
          float memref_load_158 = memref_alloca_40[0]; 
          memref_alloca_35[arith_const_13] = memref_load_158; 
          float arith_mulf_159 = (memref_load_157 * memref_load_158); 
          float arith_addf_160 = (arith_addf_156 + arith_mulf_159); 
          float memref_load_161 = memref_alloca_23[arith_const_13]; 
          float memref_load_162 = memref_alloca_19[0]; 
          float arith_mulf_163 = (memref_load_161 * memref_load_162); 
          float arith_addf_164 = (arith_addf_160 + arith_mulf_163); 
          int arith_muli_165 = (arith_addi_149 * arith_const_10); 
          int arith_addi_166 = (arith_muli_165 + arith_const_9); 
          func_arg_6[for_iter_125][arith_addi_166] = arith_addf_164; 
          int arith_muli_167 = (arith_addi_149 * arith_const_10); 
          int arith_addi_168 = (arith_muli_167 + arith_const_9); 
          float memref_load_169 = func_arg_6[for_iter_125][arith_addi_168]; 
          memref_alloca_40[0] = memref_load_169; 
          float memref_load_170 = memref_alloca_35[arith_const_13]; 
          memref_alloca_19[0] = memref_load_170; 
          int arith_muli_171 = (arith_addi_149 * arith_const_10); 
          int arith_addi_172 = (arith_muli_171 + arith_const_9); 
          float memref_load_173 = func_arg_3[for_iter_125][arith_addi_172]; 
          memref_alloca_20[0] = memref_load_173; 
          float memref_load_174 = memref_alloca_29[arith_const_13]; 
          memref_alloca_38[0] = memref_load_174; 
          float memref_load_175 = func_arg_5[for_iter_125][for_iter_129]; 
          float memref_load_176 = func_arg_6[for_iter_125][for_iter_129]; 
          float arith_addf_177 = (memref_load_175 + memref_load_176); 
          func_arg_4[for_iter_125][for_iter_129] = arith_addf_177; 
        }
      }
    }
  }
  for (int for_iter_178 = arith_const_13; for_iter_178 < arith_const_12; for_iter_178 += arith_const_11) {
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_42[0] = arith_const_14; 
    memref_alloca_31[0] = arith_const_14; 
    for (int for_iter_179 = arith_const_13; for_iter_179 < arith_const_12; for_iter_179 += arith_const_11) {
      float memref_load_180 = memref_alloca_27[arith_const_13]; 
      float memref_load_181 = func_arg_4[for_iter_179][for_iter_178]; 
      float arith_mulf_182 = (memref_load_180 * memref_load_181); 
      float memref_load_183 = memref_alloca_33[arith_const_13]; 
      float memref_load_184 = memref_alloca_31[0]; 
      float arith_mulf_185 = (memref_load_183 * memref_load_184); 
      float arith_addf_186 = (arith_mulf_182 + arith_mulf_185); 
      float memref_load_187 = memref_alloca_32[arith_const_13]; 
      float memref_load_188 = memref_alloca_42[0]; 
      memref_alloca_36[arith_const_13] = memref_load_188; 
      float arith_mulf_189 = (memref_load_187 * memref_load_188); 
      float arith_addf_190 = (arith_addf_186 + arith_mulf_189); 
      float memref_load_191 = memref_alloca_23[arith_const_13]; 
      float memref_load_192 = memref_alloca_41[0]; 
      float arith_mulf_193 = (memref_load_191 * memref_load_192); 
      float arith_addf_194 = (arith_addf_190 + arith_mulf_193); 
      func_arg_5[for_iter_179][for_iter_178] = arith_addf_194; 
      float memref_load_195 = func_arg_5[for_iter_179][for_iter_178]; 
      memref_alloca_42[0] = memref_load_195; 
      float memref_load_196 = memref_alloca_36[arith_const_13]; 
      memref_alloca_41[0] = memref_load_196; 
      float memref_load_197 = func_arg_4[for_iter_179][for_iter_178]; 
      memref_alloca_31[0] = memref_load_197; 
    }
  }
  for (int for_iter_198 = arith_const_13; for_iter_198 < arith_const_12; for_iter_198 += arith_const_11) {
    memref_alloca_19[0] = arith_const_14; 
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_39[0] = arith_const_14; 
    memref_alloca_26[0] = arith_const_14; 
    for (int for_iter_199 = arith_const_13; for_iter_199 < arith_const_12; for_iter_199 += arith_const_11) {
      float memref_load_200 = memref_alloca_28[arith_const_13]; 
      float memref_load_201 = memref_alloca_26[0]; 
      memref_alloca_34[arith_const_13] = memref_load_201; 
      float arith_mulf_202 = (memref_load_200 * memref_load_201); 
      float memref_load_203 = memref_alloca_30[arith_const_13]; 
      float memref_load_204 = memref_alloca_39[0]; 
      float arith_mulf_205 = (memref_load_203 * memref_load_204); 
      float arith_addf_206 = (arith_mulf_202 + arith_mulf_205); 
      float memref_load_207 = memref_alloca_32[arith_const_13]; 
      float memref_load_208 = memref_alloca_40[0]; 
      memref_alloca_37[arith_const_13] = memref_load_208; 
      float arith_mulf_209 = (memref_load_207 * memref_load_208); 
      float arith_addf_210 = (arith_addf_206 + arith_mulf_209); 
      float memref_load_211 = memref_alloca_23[arith_const_13]; 
      float memref_load_212 = memref_alloca_19[0]; 
      float arith_mulf_213 = (memref_load_211 * memref_load_212); 
      float arith_addf_214 = (arith_addf_210 + arith_mulf_213); 
      int arith_muli_215 = (for_iter_199 * arith_const_10); 
      int arith_addi_216 = (arith_muli_215 + arith_const_9); 
      func_arg_6[arith_addi_216][for_iter_198] = arith_addf_214; 
      int arith_muli_217 = (for_iter_199 * arith_const_10); 
      int arith_addi_218 = (arith_muli_217 + arith_const_9); 
      float memref_load_219 = func_arg_6[arith_addi_218][for_iter_198]; 
      memref_alloca_40[0] = memref_load_219; 
      float memref_load_220 = memref_alloca_37[arith_const_13]; 
      memref_alloca_19[0] = memref_load_220; 
      int arith_muli_221 = (for_iter_199 * arith_const_10); 
      int arith_addi_222 = (arith_muli_221 + arith_const_9); 
      float memref_load_223 = func_arg_4[arith_addi_222][for_iter_198]; 
      memref_alloca_26[0] = memref_load_223; 
      float memref_load_224 = memref_alloca_34[arith_const_13]; 
      memref_alloca_39[0] = memref_load_224; 
    }
  }
  for (int for_iter_225 = arith_const_13; for_iter_225 < arith_const_8; for_iter_225 += arith_const_11) {
    for (int for_iter_226 = arith_const_13; for_iter_226 < arith_const_8; for_iter_226 += arith_const_11) {
      int arith_muli_227 = (for_iter_225 * arith_const_7); 
      int arith_muli_228 = (for_iter_225 * arith_const_7); 
      int arith_addi_229 = (arith_muli_228 + arith_const_7); 
      for (int for_iter_230 = arith_muli_227; for_iter_230 < arith_addi_229; for_iter_230 += arith_const_11) {
        int arith_muli_231 = (for_iter_226 * arith_const_7); 
        int arith_muli_232 = (for_iter_226 * arith_const_7); 
        int arith_addi_233 = (arith_muli_232 + arith_const_7); 
        for (int for_iter_234 = arith_muli_231; for_iter_234 < arith_addi_233; for_iter_234 += arith_const_11) {
          memref_alloca_41[0] = arith_const_14; 
          memref_alloca_42[0] = arith_const_14; 
          memref_alloca_31[0] = arith_const_14; 
          float memref_load_235 = memref_alloca_27[arith_const_13]; 
          float memref_load_236 = func_arg_4[for_iter_230][for_iter_234]; 
          float arith_mulf_237 = (memref_load_235 * memref_load_236); 
          float memref_load_238 = memref_alloca_33[arith_const_13]; 
          float memref_load_239 = memref_alloca_31[0]; 
          float arith_mulf_240 = (memref_load_238 * memref_load_239); 
          float arith_addf_241 = (arith_mulf_237 + arith_mulf_240); 
          float memref_load_242 = memref_alloca_32[arith_const_13]; 
          float memref_load_243 = memref_alloca_42[0]; 
          memref_alloca_36[arith_const_13] = memref_load_243; 
          float arith_mulf_244 = (memref_load_242 * memref_load_243); 
          float arith_addf_245 = (arith_addf_241 + arith_mulf_244); 
          float memref_load_246 = memref_alloca_23[arith_const_13]; 
          float memref_load_247 = memref_alloca_41[0]; 
          float arith_mulf_248 = (memref_load_246 * memref_load_247); 
          float arith_addf_249 = (arith_addf_245 + arith_mulf_248); 
          func_arg_5[for_iter_230][for_iter_234] = arith_addf_249; 
          float memref_load_250 = func_arg_5[for_iter_230][for_iter_234]; 
          memref_alloca_42[0] = memref_load_250; 
          float memref_load_251 = memref_alloca_36[arith_const_13]; 
          memref_alloca_41[0] = memref_load_251; 
          float memref_load_252 = func_arg_4[for_iter_230][for_iter_234]; 
          memref_alloca_31[0] = memref_load_252; 
          memref_alloca_19[0] = arith_const_14; 
          memref_alloca_40[0] = arith_const_14; 
          memref_alloca_39[0] = arith_const_14; 
          memref_alloca_26[0] = arith_const_14; 
          int arith_muli_253 = (for_iter_230 * arith_const_10); 
          int arith_addi_254 = (arith_muli_253 + arith_const_9); 
          float memref_load_255 = memref_alloca_28[arith_const_13]; 
          float memref_load_256 = memref_alloca_26[0]; 
          memref_alloca_34[arith_const_13] = memref_load_256; 
          float arith_mulf_257 = (memref_load_255 * memref_load_256); 
          float memref_load_258 = memref_alloca_30[arith_const_13]; 
          float memref_load_259 = memref_alloca_39[0]; 
          float arith_mulf_260 = (memref_load_258 * memref_load_259); 
          float arith_addf_261 = (arith_mulf_257 + arith_mulf_260); 
          float memref_load_262 = memref_alloca_32[arith_const_13]; 
          float memref_load_263 = memref_alloca_40[0]; 
          memref_alloca_37[arith_const_13] = memref_load_263; 
          float arith_mulf_264 = (memref_load_262 * memref_load_263); 
          float arith_addf_265 = (arith_addf_261 + arith_mulf_264); 
          float memref_load_266 = memref_alloca_23[arith_const_13]; 
          float memref_load_267 = memref_alloca_19[0]; 
          float arith_mulf_268 = (memref_load_266 * memref_load_267); 
          float arith_addf_269 = (arith_addf_265 + arith_mulf_268); 
          int arith_muli_270 = (arith_addi_254 * arith_const_10); 
          int arith_addi_271 = (arith_muli_270 + arith_const_9); 
          func_arg_6[arith_addi_271][for_iter_234] = arith_addf_269; 
          int arith_muli_272 = (arith_addi_254 * arith_const_10); 
          int arith_addi_273 = (arith_muli_272 + arith_const_9); 
          float memref_load_274 = func_arg_6[arith_addi_273][for_iter_234]; 
          memref_alloca_40[0] = memref_load_274; 
          float memref_load_275 = memref_alloca_37[arith_const_13]; 
          memref_alloca_19[0] = memref_load_275; 
          int arith_muli_276 = (arith_addi_254 * arith_const_10); 
          int arith_addi_277 = (arith_muli_276 + arith_const_9); 
          float memref_load_278 = func_arg_4[arith_addi_277][for_iter_234]; 
          memref_alloca_26[0] = memref_load_278; 
          float memref_load_279 = memref_alloca_34[arith_const_13]; 
          memref_alloca_39[0] = memref_load_279; 
          float memref_load_280 = func_arg_5[for_iter_230][for_iter_234]; 
          float memref_load_281 = func_arg_6[for_iter_230][for_iter_234]; 
          float arith_addf_282 = (memref_load_280 + memref_load_281); 
          func_arg_4[for_iter_230][for_iter_234] = arith_addf_282; 
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
