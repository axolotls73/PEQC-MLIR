#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 2; 
  int arith_const_8 = 63; 
  int arith_const_9 = -1; 
  int arith_const_10 = 1; 
  int arith_const_11 = 32; 
  int arith_const_12 = 64; 
  int arith_const_13 = 0; 
  float arith_const_14 = 0.000000; 
  float arith_const_15 = 1.000000; 
  float arith_const_16 = 2.000000; 
  float arith_const_17 = -2.000000; 
  float* memref_alloca_18; 
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
  float arith_mulf_42 = (func_arg_2 * arith_const_17); 
  float math_exp_43 = exp(arith_mulf_42); 
  float arith_negf_44 = -(math_exp_43); 
  memref_alloca_22[arith_const_13] = arith_negf_44; 
  float arith_negf_45 = -(func_arg_2); 
  float math_powf_46 = pow(arith_const_16, arith_negf_45); 
  memref_alloca_31[arith_const_13] = math_powf_46; 
  float arith_negf_47 = -(func_arg_2); 
  float math_exp_48 = exp(arith_negf_47); 
  float arith_mulf_49 = (func_arg_2 * math_exp_48); 
  float arith_subf_50 = (arith_const_15 - math_exp_48); 
  float arith_mulf_51 = (arith_subf_50 * arith_subf_50); 
  float arith_mulf_52 = (arith_mulf_49 * arith_const_16); 
  float arith_addf_53 = (arith_mulf_52 + arith_const_15); 
  float arith_mulf_54 = (func_arg_2 * arith_const_16); 
  float math_exp_55 = exp(arith_mulf_54); 
  float arith_subf_56 = (arith_addf_53 - math_exp_55); 
  float arith_divf_57 = (arith_mulf_51 / arith_subf_56); 
  memref_alloca_27[arith_const_13] = arith_divf_57; 
  float memref_load_58 = memref_alloca_27[arith_const_13]; 
  memref_alloca_40[arith_const_13] = memref_load_58; 
  float arith_negf_59 = -(func_arg_2); 
  float math_exp_60 = exp(arith_negf_59); 
  float arith_mulf_61 = (memref_load_58 * math_exp_60); 
  memref_alloca_24[arith_const_13] = arith_mulf_61; 
  float arith_subf_62 = (func_arg_2 - arith_const_15); 
  float arith_mulf_63 = (arith_mulf_61 * arith_subf_62); 
  memref_alloca_34[arith_const_13] = arith_mulf_63; 
  float memref_load_64 = memref_alloca_40[arith_const_13]; 
  float arith_negf_65 = -(memref_load_64); 
  float arith_mulf_66 = (func_arg_2 * arith_const_17); 
  float math_exp_67 = exp(arith_mulf_66); 
  float arith_mulf_68 = (arith_negf_65 * math_exp_67); 
  memref_alloca_23[arith_const_13] = arith_mulf_68; 
  float memref_load_69 = memref_alloca_24[arith_const_13]; 
  float arith_addf_70 = (func_arg_2 + arith_const_15); 
  float arith_mulf_71 = (memref_load_69 * arith_addf_70); 
  memref_alloca_28[arith_const_13] = arith_mulf_71; 
  float _72; 
  memref_alloca_21[0] = _72; 
  float _73; 
  memref_alloca_30[0] = _73; 
  float _74; 
  memref_alloca_20[0] = _74; 
  float _75; 
  memref_alloca_41[0] = _75; 
  for (int for_iter_76 = arith_const_13; for_iter_76 < arith_const_12; for_iter_76 += arith_const_11) {
    int arith_addi_77 = (for_iter_76 + arith_const_11); 
    for (int for_iter_78 = for_iter_76; for_iter_78 < arith_addi_77; for_iter_78 += arith_const_10) {
      memref_alloca_21[0] = arith_const_14; 
      memref_alloca_41[0] = arith_const_14; 
      memref_alloca_20[0] = arith_const_14; 
      for (int for_iter_79 = arith_const_13; for_iter_79 < arith_const_12; for_iter_79 += arith_const_10) {
        float memref_load_80 = memref_alloca_27[arith_const_13]; 
        float memref_load_81 = func_arg_3[for_iter_78][for_iter_79]; 
        float arith_mulf_82 = (memref_load_80 * memref_load_81); 
        float memref_load_83 = memref_alloca_34[arith_const_13]; 
        float memref_load_84 = memref_alloca_21[0]; 
        float arith_mulf_85 = (memref_load_83 * memref_load_84); 
        float arith_addf_86 = (arith_mulf_82 + arith_mulf_85); 
        float memref_load_87 = memref_alloca_31[arith_const_13]; 
        float memref_load_88 = memref_alloca_20[0]; 
        memref_alloca_25[arith_const_13] = memref_load_88; 
        float arith_mulf_89 = (memref_load_87 * memref_load_88); 
        float arith_addf_90 = (arith_addf_86 + arith_mulf_89); 
        float memref_load_91 = memref_alloca_22[arith_const_13]; 
        float memref_load_92 = memref_alloca_41[0]; 
        float arith_mulf_93 = (memref_load_91 * memref_load_92); 
        float arith_addf_94 = (arith_addf_90 + arith_mulf_93); 
        func_arg_5[for_iter_78][for_iter_79] = arith_addf_94; 
        float memref_load_95 = func_arg_5[for_iter_78][for_iter_79]; 
        memref_alloca_20[0] = memref_load_95; 
        float memref_load_96 = memref_alloca_25[arith_const_13]; 
        memref_alloca_41[0] = memref_load_96; 
        float memref_load_97 = func_arg_3[for_iter_78][for_iter_79]; 
        memref_alloca_21[0] = memref_load_97; 
      }
    }
  }
  float _98; 
  memref_alloca_19[0] = _98; 
  float _99; 
  memref_alloca_37[0] = _99; 
  float _100; 
  memref_alloca_26[0] = _100; 
  float _101; 
  memref_alloca_38[0] = _101; 
  float _102; 
  memref_alloca_39[0] = _102; 
  float _103; 
  memref_alloca_18[0] = _103; 
  for (int for_iter_104 = arith_const_13; for_iter_104 < arith_const_12; for_iter_104 += arith_const_11) {
    int arith_addi_105 = (for_iter_104 + arith_const_11); 
    for (int for_iter_106 = for_iter_104; for_iter_106 < arith_addi_105; for_iter_106 += arith_const_10) {
      memref_alloca_37[0] = arith_const_14; 
      memref_alloca_19[0] = arith_const_14; 
      memref_alloca_18[0] = arith_const_14; 
      memref_alloca_39[0] = arith_const_14; 
      for (int for_iter_107 = arith_const_13; for_iter_107 < arith_const_12; for_iter_107 += arith_const_10) {
        float memref_load_108 = memref_alloca_28[arith_const_13]; 
        float memref_load_109 = memref_alloca_19[0]; 
        memref_alloca_29[arith_const_13] = memref_load_109; 
        float arith_mulf_110 = (memref_load_108 * memref_load_109); 
        float memref_load_111 = memref_alloca_23[arith_const_13]; 
        float memref_load_112 = memref_alloca_37[0]; 
        float arith_mulf_113 = (memref_load_111 * memref_load_112); 
        float arith_addf_114 = (arith_mulf_110 + arith_mulf_113); 
        float memref_load_115 = memref_alloca_31[arith_const_13]; 
        float memref_load_116 = memref_alloca_39[0]; 
        memref_alloca_32[arith_const_13] = memref_load_116; 
        float arith_mulf_117 = (memref_load_115 * memref_load_116); 
        float arith_addf_118 = (arith_addf_114 + arith_mulf_117); 
        float memref_load_119 = memref_alloca_22[arith_const_13]; 
        float memref_load_120 = memref_alloca_18[0]; 
        float arith_mulf_121 = (memref_load_119 * memref_load_120); 
        float arith_addf_122 = (arith_addf_118 + arith_mulf_121); 
        int arith_muli_123 = (for_iter_107 * arith_const_9); 
        int arith_addi_124 = (arith_muli_123 + arith_const_8); 
        func_arg_6[for_iter_106][arith_addi_124] = arith_addf_122; 
        int arith_muli_125 = (for_iter_107 * arith_const_9); 
        int arith_addi_126 = (arith_muli_125 + arith_const_8); 
        float memref_load_127 = func_arg_6[for_iter_106][arith_addi_126]; 
        memref_alloca_39[0] = memref_load_127; 
        float memref_load_128 = memref_alloca_32[arith_const_13]; 
        memref_alloca_18[0] = memref_load_128; 
        int arith_muli_129 = (for_iter_107 * arith_const_9); 
        int arith_addi_130 = (arith_muli_129 + arith_const_8); 
        float memref_load_131 = func_arg_3[for_iter_106][arith_addi_130]; 
        memref_alloca_19[0] = memref_load_131; 
        float memref_load_132 = memref_alloca_29[arith_const_13]; 
        memref_alloca_37[0] = memref_load_132; 
      }
    }
  }
  for (int for_iter_133 = arith_const_13; for_iter_133 < arith_const_7; for_iter_133 += arith_const_11) {
    for (int for_iter_134 = arith_const_13; for_iter_134 < arith_const_7; for_iter_134 += arith_const_11) {
      for (int for_iter_135 = arith_const_13; for_iter_135 < arith_const_11; for_iter_135 += arith_const_11) {
        for (int for_iter_136 = arith_const_13; for_iter_136 < arith_const_11; for_iter_136 += arith_const_11) {
          int arith_addi_137 = (for_iter_133 + arith_const_7); 
          for (int for_iter_138 = for_iter_133; for_iter_138 < arith_addi_137; for_iter_138 += arith_const_10) {
            int arith_addi_139 = (for_iter_134 + arith_const_7); 
            for (int for_iter_140 = for_iter_134; for_iter_140 < arith_addi_139; for_iter_140 += arith_const_10) {
              int arith_addi_141 = (for_iter_135 + arith_const_11); 
              for (int for_iter_142 = for_iter_135; for_iter_142 < arith_addi_141; for_iter_142 += arith_const_10) {
                int arith_addi_143 = (for_iter_136 + arith_const_11); 
                for (int for_iter_144 = for_iter_136; for_iter_144 < arith_addi_143; for_iter_144 += arith_const_10) {
                  int arith_muli_145 = (for_iter_138 * arith_const_11); 
                  int arith_addi_146 = (arith_muli_145 + for_iter_142); 
                  int arith_muli_147 = (for_iter_140 * arith_const_11); 
                  int arith_addi_148 = (arith_muli_147 + for_iter_144); 
                  float memref_load_149 = func_arg_5[arith_addi_146][arith_addi_148]; 
                  int arith_muli_150 = (for_iter_138 * arith_const_11); 
                  int arith_addi_151 = (arith_muli_150 + for_iter_142); 
                  int arith_muli_152 = (for_iter_140 * arith_const_11); 
                  int arith_addi_153 = (arith_muli_152 + for_iter_144); 
                  float memref_load_154 = func_arg_6[arith_addi_151][arith_addi_153]; 
                  float arith_addf_155 = (memref_load_149 + memref_load_154); 
                  int arith_muli_156 = (for_iter_138 * arith_const_11); 
                  int arith_addi_157 = (arith_muli_156 + for_iter_142); 
                  int arith_muli_158 = (for_iter_140 * arith_const_11); 
                  int arith_addi_159 = (arith_muli_158 + for_iter_144); 
                  func_arg_4[arith_addi_157][arith_addi_159] = arith_addf_155; 
                }
              }
            }
          }
        }
      }
    }
  }
  for (int for_iter_160 = arith_const_13; for_iter_160 < arith_const_12; for_iter_160 += arith_const_11) {
    int arith_addi_161 = (for_iter_160 + arith_const_11); 
    for (int for_iter_162 = for_iter_160; for_iter_162 < arith_addi_161; for_iter_162 += arith_const_10) {
      memref_alloca_41[0] = arith_const_14; 
      memref_alloca_20[0] = arith_const_14; 
      memref_alloca_30[0] = arith_const_14; 
      for (int for_iter_163 = arith_const_13; for_iter_163 < arith_const_12; for_iter_163 += arith_const_10) {
        float memref_load_164 = memref_alloca_27[arith_const_13]; 
        float memref_load_165 = func_arg_4[for_iter_163][for_iter_162]; 
        float arith_mulf_166 = (memref_load_164 * memref_load_165); 
        float memref_load_167 = memref_alloca_34[arith_const_13]; 
        float memref_load_168 = memref_alloca_30[0]; 
        float arith_mulf_169 = (memref_load_167 * memref_load_168); 
        float arith_addf_170 = (arith_mulf_166 + arith_mulf_169); 
        float memref_load_171 = memref_alloca_31[arith_const_13]; 
        float memref_load_172 = memref_alloca_20[0]; 
        memref_alloca_35[arith_const_13] = memref_load_172; 
        float arith_mulf_173 = (memref_load_171 * memref_load_172); 
        float arith_addf_174 = (arith_addf_170 + arith_mulf_173); 
        float memref_load_175 = memref_alloca_22[arith_const_13]; 
        float memref_load_176 = memref_alloca_41[0]; 
        float arith_mulf_177 = (memref_load_175 * memref_load_176); 
        float arith_addf_178 = (arith_addf_174 + arith_mulf_177); 
        func_arg_5[for_iter_163][for_iter_162] = arith_addf_178; 
        float memref_load_179 = func_arg_5[for_iter_163][for_iter_162]; 
        memref_alloca_20[0] = memref_load_179; 
        float memref_load_180 = memref_alloca_35[arith_const_13]; 
        memref_alloca_41[0] = memref_load_180; 
        float memref_load_181 = func_arg_4[for_iter_163][for_iter_162]; 
        memref_alloca_30[0] = memref_load_181; 
      }
    }
  }
  for (int for_iter_182 = arith_const_13; for_iter_182 < arith_const_12; for_iter_182 += arith_const_11) {
    int arith_addi_183 = (for_iter_182 + arith_const_11); 
    for (int for_iter_184 = for_iter_182; for_iter_184 < arith_addi_183; for_iter_184 += arith_const_10) {
      memref_alloca_18[0] = arith_const_14; 
      memref_alloca_39[0] = arith_const_14; 
      memref_alloca_38[0] = arith_const_14; 
      memref_alloca_26[0] = arith_const_14; 
      for (int for_iter_185 = arith_const_13; for_iter_185 < arith_const_12; for_iter_185 += arith_const_10) {
        float memref_load_186 = memref_alloca_28[arith_const_13]; 
        float memref_load_187 = memref_alloca_26[0]; 
        memref_alloca_33[arith_const_13] = memref_load_187; 
        float arith_mulf_188 = (memref_load_186 * memref_load_187); 
        float memref_load_189 = memref_alloca_23[arith_const_13]; 
        float memref_load_190 = memref_alloca_38[0]; 
        float arith_mulf_191 = (memref_load_189 * memref_load_190); 
        float arith_addf_192 = (arith_mulf_188 + arith_mulf_191); 
        float memref_load_193 = memref_alloca_31[arith_const_13]; 
        float memref_load_194 = memref_alloca_39[0]; 
        memref_alloca_36[arith_const_13] = memref_load_194; 
        float arith_mulf_195 = (memref_load_193 * memref_load_194); 
        float arith_addf_196 = (arith_addf_192 + arith_mulf_195); 
        float memref_load_197 = memref_alloca_22[arith_const_13]; 
        float memref_load_198 = memref_alloca_18[0]; 
        float arith_mulf_199 = (memref_load_197 * memref_load_198); 
        float arith_addf_200 = (arith_addf_196 + arith_mulf_199); 
        int arith_muli_201 = (for_iter_185 * arith_const_9); 
        int arith_addi_202 = (arith_muli_201 + arith_const_8); 
        func_arg_6[arith_addi_202][for_iter_184] = arith_addf_200; 
        int arith_muli_203 = (for_iter_185 * arith_const_9); 
        int arith_addi_204 = (arith_muli_203 + arith_const_8); 
        float memref_load_205 = func_arg_6[arith_addi_204][for_iter_184]; 
        memref_alloca_39[0] = memref_load_205; 
        float memref_load_206 = memref_alloca_36[arith_const_13]; 
        memref_alloca_18[0] = memref_load_206; 
        int arith_muli_207 = (for_iter_185 * arith_const_9); 
        int arith_addi_208 = (arith_muli_207 + arith_const_8); 
        float memref_load_209 = func_arg_4[arith_addi_208][for_iter_184]; 
        memref_alloca_26[0] = memref_load_209; 
        float memref_load_210 = memref_alloca_33[arith_const_13]; 
        memref_alloca_38[0] = memref_load_210; 
      }
    }
  }
  for (int for_iter_211 = arith_const_13; for_iter_211 < arith_const_7; for_iter_211 += arith_const_11) {
    for (int for_iter_212 = arith_const_13; for_iter_212 < arith_const_7; for_iter_212 += arith_const_11) {
      for (int for_iter_213 = arith_const_13; for_iter_213 < arith_const_11; for_iter_213 += arith_const_11) {
        for (int for_iter_214 = arith_const_13; for_iter_214 < arith_const_11; for_iter_214 += arith_const_11) {
          int arith_addi_215 = (for_iter_211 + arith_const_7); 
          for (int for_iter_216 = for_iter_211; for_iter_216 < arith_addi_215; for_iter_216 += arith_const_10) {
            int arith_addi_217 = (for_iter_212 + arith_const_7); 
            for (int for_iter_218 = for_iter_212; for_iter_218 < arith_addi_217; for_iter_218 += arith_const_10) {
              int arith_addi_219 = (for_iter_213 + arith_const_11); 
              for (int for_iter_220 = for_iter_213; for_iter_220 < arith_addi_219; for_iter_220 += arith_const_10) {
                int arith_addi_221 = (for_iter_214 + arith_const_11); 
                for (int for_iter_222 = for_iter_214; for_iter_222 < arith_addi_221; for_iter_222 += arith_const_10) {
                  int arith_muli_223 = (for_iter_216 * arith_const_11); 
                  int arith_addi_224 = (arith_muli_223 + for_iter_220); 
                  int arith_muli_225 = (for_iter_218 * arith_const_11); 
                  int arith_addi_226 = (arith_muli_225 + for_iter_222); 
                  float memref_load_227 = func_arg_5[arith_addi_224][arith_addi_226]; 
                  int arith_muli_228 = (for_iter_216 * arith_const_11); 
                  int arith_addi_229 = (arith_muli_228 + for_iter_220); 
                  int arith_muli_230 = (for_iter_218 * arith_const_11); 
                  int arith_addi_231 = (arith_muli_230 + for_iter_222); 
                  float memref_load_232 = func_arg_6[arith_addi_229][arith_addi_231]; 
                  float arith_addf_233 = (memref_load_227 + memref_load_232); 
                  int arith_muli_234 = (for_iter_216 * arith_const_11); 
                  int arith_addi_235 = (arith_muli_234 + for_iter_220); 
                  int arith_muli_236 = (for_iter_218 * arith_const_11); 
                  int arith_addi_237 = (arith_muli_236 + for_iter_222); 
                  func_arg_4[arith_addi_235][arith_addi_237] = arith_addf_233; 
                }
              }
            }
          }
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
