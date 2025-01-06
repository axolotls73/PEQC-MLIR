#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = -32; 
  int arith_const_8 = 2; 
  int arith_const_9 = 63; 
  int arith_const_10 = -1; 
  int arith_const_11 = 1; 
  int arith_const_12 = 32; 
  int arith_const_13 = 64; 
  int arith_const_14 = 0; 
  float arith_const_15 = 0.000000; 
  float _16; 
  float arith_const_17 = 1.000000; 
  float arith_const_18 = 2.000000; 
  float arith_const_19 = -2.000000; 
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
  float* memref_alloca_43; 
  float arith_mulf_44 = (func_arg_2 * arith_const_19); 
  float math_exp_45 = exp(arith_mulf_44); 
  float arith_negf_46 = -(math_exp_45); 
  memref_alloca_24[arith_const_14] = arith_negf_46; 
  float arith_negf_47 = -(func_arg_2); 
  float math_powf_48 = pow(arith_const_18, arith_negf_47); 
  memref_alloca_33[arith_const_14] = math_powf_48; 
  float arith_negf_49 = -(func_arg_2); 
  float math_exp_50 = exp(arith_negf_49); 
  float arith_mulf_51 = (func_arg_2 * math_exp_50); 
  float arith_subf_52 = (arith_const_17 - math_exp_50); 
  float arith_mulf_53 = (arith_subf_52 * arith_subf_52); 
  float arith_mulf_54 = (arith_mulf_51 * arith_const_18); 
  float arith_addf_55 = (arith_mulf_54 + arith_const_17); 
  float arith_mulf_56 = (func_arg_2 * arith_const_18); 
  float math_exp_57 = exp(arith_mulf_56); 
  float arith_subf_58 = (arith_addf_55 - math_exp_57); 
  float arith_divf_59 = (arith_mulf_53 / arith_subf_58); 
  memref_alloca_29[arith_const_14] = arith_divf_59; 
  float memref_load_60 = memref_alloca_29[arith_const_14]; 
  memref_alloca_23[arith_const_14] = memref_load_60; 
  float arith_negf_61 = -(func_arg_2); 
  float math_exp_62 = exp(arith_negf_61); 
  float arith_mulf_63 = (memref_load_60 * math_exp_62); 
  memref_alloca_26[arith_const_14] = arith_mulf_63; 
  float arith_subf_64 = (func_arg_2 - arith_const_17); 
  float arith_mulf_65 = (arith_mulf_63 * arith_subf_64); 
  memref_alloca_36[arith_const_14] = arith_mulf_65; 
  float memref_load_66 = memref_alloca_23[arith_const_14]; 
  float arith_negf_67 = -(memref_load_66); 
  float arith_mulf_68 = (func_arg_2 * arith_const_19); 
  float math_exp_69 = exp(arith_mulf_68); 
  float arith_mulf_70 = (arith_negf_67 * math_exp_69); 
  memref_alloca_32[arith_const_14] = arith_mulf_70; 
  float memref_load_71 = memref_alloca_26[arith_const_14]; 
  float arith_addf_72 = (func_arg_2 + arith_const_17); 
  float arith_mulf_73 = (memref_load_71 * arith_addf_72); 
  memref_alloca_30[arith_const_14] = arith_mulf_73; 
  memref_alloca_42[0] = _16; 
  memref_alloca_25[0] = _16; 
  memref_alloca_22[0] = _16; 
  memref_alloca_43[0] = _16; 
  for (int for_iter_74 = arith_const_14; for_iter_74 < arith_const_13; for_iter_74 += arith_const_12) {
    int arith_addi_75 = (for_iter_74 + arith_const_12); 
    for (int for_iter_76 = for_iter_74; for_iter_76 < arith_addi_75; for_iter_76 += arith_const_11) {
      memref_alloca_42[0] = arith_const_15; 
      memref_alloca_43[0] = arith_const_15; 
      memref_alloca_22[0] = arith_const_15; 
      for (int for_iter_77 = arith_const_14; for_iter_77 < arith_const_13; for_iter_77 += arith_const_11) {
        float memref_load_78 = memref_alloca_29[arith_const_14]; 
        float memref_load_79 = func_arg_3[for_iter_76][for_iter_77]; 
        float arith_mulf_80 = (memref_load_78 * memref_load_79); 
        float memref_load_81 = memref_alloca_36[arith_const_14]; 
        float memref_load_82 = memref_alloca_42[0]; 
        float arith_mulf_83 = (memref_load_81 * memref_load_82); 
        float arith_addf_84 = (arith_mulf_80 + arith_mulf_83); 
        float memref_load_85 = memref_alloca_33[arith_const_14]; 
        float memref_load_86 = memref_alloca_22[0]; 
        memref_alloca_27[arith_const_14] = memref_load_86; 
        float arith_mulf_87 = (memref_load_85 * memref_load_86); 
        float arith_addf_88 = (arith_addf_84 + arith_mulf_87); 
        float memref_load_89 = memref_alloca_24[arith_const_14]; 
        float memref_load_90 = memref_alloca_43[0]; 
        float arith_mulf_91 = (memref_load_89 * memref_load_90); 
        float arith_addf_92 = (arith_addf_88 + arith_mulf_91); 
        func_arg_5[for_iter_76][for_iter_77] = arith_addf_92; 
        float memref_load_93 = func_arg_5[for_iter_76][for_iter_77]; 
        memref_alloca_22[0] = memref_load_93; 
        float memref_load_94 = memref_alloca_27[arith_const_14]; 
        memref_alloca_43[0] = memref_load_94; 
        float memref_load_95 = func_arg_3[for_iter_76][for_iter_77]; 
        memref_alloca_42[0] = memref_load_95; 
      }
    }
  }
  memref_alloca_21[0] = _16; 
  memref_alloca_39[0] = _16; 
  memref_alloca_28[0] = _16; 
  memref_alloca_40[0] = _16; 
  memref_alloca_41[0] = _16; 
  memref_alloca_20[0] = _16; 
  for (int for_iter_96 = arith_const_14; for_iter_96 < arith_const_13; for_iter_96 += arith_const_12) {
    int arith_addi_97 = (for_iter_96 + arith_const_12); 
    for (int for_iter_98 = for_iter_96; for_iter_98 < arith_addi_97; for_iter_98 += arith_const_11) {
      memref_alloca_39[0] = arith_const_15; 
      memref_alloca_21[0] = arith_const_15; 
      memref_alloca_20[0] = arith_const_15; 
      memref_alloca_41[0] = arith_const_15; 
      for (int for_iter_99 = arith_const_14; for_iter_99 < arith_const_13; for_iter_99 += arith_const_11) {
        float memref_load_100 = memref_alloca_30[arith_const_14]; 
        float memref_load_101 = memref_alloca_21[0]; 
        memref_alloca_31[arith_const_14] = memref_load_101; 
        float arith_mulf_102 = (memref_load_100 * memref_load_101); 
        float memref_load_103 = memref_alloca_32[arith_const_14]; 
        float memref_load_104 = memref_alloca_39[0]; 
        float arith_mulf_105 = (memref_load_103 * memref_load_104); 
        float arith_addf_106 = (arith_mulf_102 + arith_mulf_105); 
        float memref_load_107 = memref_alloca_33[arith_const_14]; 
        float memref_load_108 = memref_alloca_41[0]; 
        memref_alloca_34[arith_const_14] = memref_load_108; 
        float arith_mulf_109 = (memref_load_107 * memref_load_108); 
        float arith_addf_110 = (arith_addf_106 + arith_mulf_109); 
        float memref_load_111 = memref_alloca_24[arith_const_14]; 
        float memref_load_112 = memref_alloca_20[0]; 
        float arith_mulf_113 = (memref_load_111 * memref_load_112); 
        float arith_addf_114 = (arith_addf_110 + arith_mulf_113); 
        int arith_muli_115 = (for_iter_99 * arith_const_10); 
        int arith_addi_116 = (arith_muli_115 + arith_const_9); 
        func_arg_6[for_iter_98][arith_addi_116] = arith_addf_114; 
        int arith_muli_117 = (for_iter_99 * arith_const_10); 
        int arith_addi_118 = (arith_muli_117 + arith_const_9); 
        float memref_load_119 = func_arg_6[for_iter_98][arith_addi_118]; 
        memref_alloca_41[0] = memref_load_119; 
        float memref_load_120 = memref_alloca_34[arith_const_14]; 
        memref_alloca_20[0] = memref_load_120; 
        int arith_muli_121 = (for_iter_99 * arith_const_10); 
        int arith_addi_122 = (arith_muli_121 + arith_const_9); 
        float memref_load_123 = func_arg_3[for_iter_98][arith_addi_122]; 
        memref_alloca_21[0] = memref_load_123; 
        float memref_load_124 = memref_alloca_31[arith_const_14]; 
        memref_alloca_39[0] = memref_load_124; 
      }
    }
  }
  for (int for_iter_125 = arith_const_14; for_iter_125 < arith_const_8; for_iter_125 += arith_const_12) {
    for (int for_iter_126 = arith_const_14; for_iter_126 < arith_const_8; for_iter_126 += arith_const_12) {
      for (int for_iter_127 = arith_const_14; for_iter_127 < arith_const_12; for_iter_127 += arith_const_12) {
        for (int for_iter_128 = arith_const_14; for_iter_128 < arith_const_12; for_iter_128 += arith_const_12) {
          int arith_addi_129 = (for_iter_125 + arith_const_8); 
          for (int for_iter_130 = for_iter_125; for_iter_130 < arith_addi_129; for_iter_130 += arith_const_11) {
            int arith_addi_131 = (for_iter_126 + arith_const_8); 
            for (int for_iter_132 = for_iter_126; for_iter_132 < arith_addi_131; for_iter_132 += arith_const_11) {
              int arith_addi_133 = (for_iter_127 + arith_const_12); 
              for (int for_iter_134 = for_iter_127; for_iter_134 < arith_addi_133; for_iter_134 += arith_const_11) {
                int arith_addi_135 = (for_iter_128 + arith_const_12); 
                for (int for_iter_136 = for_iter_128; for_iter_136 < arith_addi_135; for_iter_136 += arith_const_11) {
                  int arith_muli_137 = (for_iter_130 * arith_const_12); 
                  int arith_addi_138 = (arith_muli_137 + for_iter_134); 
                  memref_alloca_42[0] = arith_const_15; 
                  memref_alloca_43[0] = arith_const_15; 
                  memref_alloca_22[0] = arith_const_15; 
                  int arith_muli_139 = (for_iter_132 * arith_const_12); 
                  int arith_addi_140 = (arith_muli_139 + for_iter_136); 
                  float memref_load_141 = memref_alloca_29[arith_const_14]; 
                  float memref_load_142 = func_arg_3[arith_addi_138][arith_addi_140]; 
                  float arith_mulf_143 = (memref_load_141 * memref_load_142); 
                  float memref_load_144 = memref_alloca_36[arith_const_14]; 
                  float memref_load_145 = memref_alloca_42[0]; 
                  float arith_mulf_146 = (memref_load_144 * memref_load_145); 
                  float arith_addf_147 = (arith_mulf_143 + arith_mulf_146); 
                  float memref_load_148 = memref_alloca_33[arith_const_14]; 
                  float memref_load_149 = memref_alloca_22[0]; 
                  memref_alloca_27[arith_const_14] = memref_load_149; 
                  float arith_mulf_150 = (memref_load_148 * memref_load_149); 
                  float arith_addf_151 = (arith_addf_147 + arith_mulf_150); 
                  float memref_load_152 = memref_alloca_24[arith_const_14]; 
                  float memref_load_153 = memref_alloca_43[0]; 
                  float arith_mulf_154 = (memref_load_152 * memref_load_153); 
                  float arith_addf_155 = (arith_addf_151 + arith_mulf_154); 
                  func_arg_5[arith_addi_138][arith_addi_140] = arith_addf_155; 
                  float memref_load_156 = func_arg_5[arith_addi_138][arith_addi_140]; 
                  memref_alloca_22[0] = memref_load_156; 
                  float memref_load_157 = memref_alloca_27[arith_const_14]; 
                  memref_alloca_43[0] = memref_load_157; 
                  float memref_load_158 = func_arg_3[arith_addi_138][arith_addi_140]; 
                  memref_alloca_42[0] = memref_load_158; 
                  int arith_muli_159 = (for_iter_130 * arith_const_12); 
                  int arith_addi_160 = (arith_muli_159 + for_iter_134); 
                  memref_alloca_39[0] = arith_const_15; 
                  memref_alloca_21[0] = arith_const_15; 
                  memref_alloca_20[0] = arith_const_15; 
                  memref_alloca_41[0] = arith_const_15; 
                  int arith_muli_161 = (for_iter_132 * arith_const_7); 
                  int arith_muli_162 = (for_iter_136 * arith_const_10); 
                  int arith_addi_163 = (arith_muli_161 + arith_muli_162); 
                  int arith_addi_164 = (arith_addi_163 + arith_const_9); 
                  float memref_load_165 = memref_alloca_30[arith_const_14]; 
                  float memref_load_166 = memref_alloca_21[0]; 
                  memref_alloca_31[arith_const_14] = memref_load_166; 
                  float arith_mulf_167 = (memref_load_165 * memref_load_166); 
                  float memref_load_168 = memref_alloca_32[arith_const_14]; 
                  float memref_load_169 = memref_alloca_39[0]; 
                  float arith_mulf_170 = (memref_load_168 * memref_load_169); 
                  float arith_addf_171 = (arith_mulf_167 + arith_mulf_170); 
                  float memref_load_172 = memref_alloca_33[arith_const_14]; 
                  float memref_load_173 = memref_alloca_41[0]; 
                  memref_alloca_34[arith_const_14] = memref_load_173; 
                  float arith_mulf_174 = (memref_load_172 * memref_load_173); 
                  float arith_addf_175 = (arith_addf_171 + arith_mulf_174); 
                  float memref_load_176 = memref_alloca_24[arith_const_14]; 
                  float memref_load_177 = memref_alloca_20[0]; 
                  float arith_mulf_178 = (memref_load_176 * memref_load_177); 
                  float arith_addf_179 = (arith_addf_175 + arith_mulf_178); 
                  int arith_muli_180 = (arith_addi_164 * arith_const_10); 
                  int arith_addi_181 = (arith_muli_180 + arith_const_9); 
                  func_arg_6[arith_addi_160][arith_addi_181] = arith_addf_179; 
                  int arith_muli_182 = (arith_addi_164 * arith_const_10); 
                  int arith_addi_183 = (arith_muli_182 + arith_const_9); 
                  float memref_load_184 = func_arg_6[arith_addi_160][arith_addi_183]; 
                  memref_alloca_41[0] = memref_load_184; 
                  float memref_load_185 = memref_alloca_34[arith_const_14]; 
                  memref_alloca_20[0] = memref_load_185; 
                  int arith_muli_186 = (arith_addi_164 * arith_const_10); 
                  int arith_addi_187 = (arith_muli_186 + arith_const_9); 
                  float memref_load_188 = func_arg_3[arith_addi_160][arith_addi_187]; 
                  memref_alloca_21[0] = memref_load_188; 
                  float memref_load_189 = memref_alloca_31[arith_const_14]; 
                  memref_alloca_39[0] = memref_load_189; 
                  int arith_muli_190 = (for_iter_130 * arith_const_12); 
                  int arith_addi_191 = (arith_muli_190 + for_iter_134); 
                  int arith_muli_192 = (for_iter_132 * arith_const_12); 
                  int arith_addi_193 = (arith_muli_192 + for_iter_136); 
                  float memref_load_194 = func_arg_5[arith_addi_191][arith_addi_193]; 
                  int arith_muli_195 = (for_iter_130 * arith_const_12); 
                  int arith_addi_196 = (arith_muli_195 + for_iter_134); 
                  int arith_muli_197 = (for_iter_132 * arith_const_12); 
                  int arith_addi_198 = (arith_muli_197 + for_iter_136); 
                  float memref_load_199 = func_arg_6[arith_addi_196][arith_addi_198]; 
                  float arith_addf_200 = (memref_load_194 + memref_load_199); 
                  int arith_muli_201 = (for_iter_130 * arith_const_12); 
                  int arith_addi_202 = (arith_muli_201 + for_iter_134); 
                  int arith_muli_203 = (for_iter_132 * arith_const_12); 
                  int arith_addi_204 = (arith_muli_203 + for_iter_136); 
                  func_arg_4[arith_addi_202][arith_addi_204] = arith_addf_200; 
                }
              }
            }
          }
        }
      }
    }
  }
  for (int for_iter_205 = arith_const_14; for_iter_205 < arith_const_13; for_iter_205 += arith_const_12) {
    int arith_addi_206 = (for_iter_205 + arith_const_12); 
    for (int for_iter_207 = for_iter_205; for_iter_207 < arith_addi_206; for_iter_207 += arith_const_11) {
      memref_alloca_43[0] = arith_const_15; 
      memref_alloca_22[0] = arith_const_15; 
      memref_alloca_25[0] = arith_const_15; 
      for (int for_iter_208 = arith_const_14; for_iter_208 < arith_const_13; for_iter_208 += arith_const_11) {
        float memref_load_209 = memref_alloca_29[arith_const_14]; 
        float memref_load_210 = func_arg_4[for_iter_208][for_iter_207]; 
        float arith_mulf_211 = (memref_load_209 * memref_load_210); 
        float memref_load_212 = memref_alloca_36[arith_const_14]; 
        float memref_load_213 = memref_alloca_25[0]; 
        float arith_mulf_214 = (memref_load_212 * memref_load_213); 
        float arith_addf_215 = (arith_mulf_211 + arith_mulf_214); 
        float memref_load_216 = memref_alloca_33[arith_const_14]; 
        float memref_load_217 = memref_alloca_22[0]; 
        memref_alloca_37[arith_const_14] = memref_load_217; 
        float arith_mulf_218 = (memref_load_216 * memref_load_217); 
        float arith_addf_219 = (arith_addf_215 + arith_mulf_218); 
        float memref_load_220 = memref_alloca_24[arith_const_14]; 
        float memref_load_221 = memref_alloca_43[0]; 
        float arith_mulf_222 = (memref_load_220 * memref_load_221); 
        float arith_addf_223 = (arith_addf_219 + arith_mulf_222); 
        func_arg_5[for_iter_208][for_iter_207] = arith_addf_223; 
        float memref_load_224 = func_arg_5[for_iter_208][for_iter_207]; 
        memref_alloca_22[0] = memref_load_224; 
        float memref_load_225 = memref_alloca_37[arith_const_14]; 
        memref_alloca_43[0] = memref_load_225; 
        float memref_load_226 = func_arg_4[for_iter_208][for_iter_207]; 
        memref_alloca_25[0] = memref_load_226; 
      }
    }
  }
  for (int for_iter_227 = arith_const_14; for_iter_227 < arith_const_13; for_iter_227 += arith_const_12) {
    int arith_addi_228 = (for_iter_227 + arith_const_12); 
    for (int for_iter_229 = for_iter_227; for_iter_229 < arith_addi_228; for_iter_229 += arith_const_11) {
      memref_alloca_20[0] = arith_const_15; 
      memref_alloca_41[0] = arith_const_15; 
      memref_alloca_40[0] = arith_const_15; 
      memref_alloca_28[0] = arith_const_15; 
      for (int for_iter_230 = arith_const_14; for_iter_230 < arith_const_13; for_iter_230 += arith_const_11) {
        float memref_load_231 = memref_alloca_30[arith_const_14]; 
        float memref_load_232 = memref_alloca_28[0]; 
        memref_alloca_35[arith_const_14] = memref_load_232; 
        float arith_mulf_233 = (memref_load_231 * memref_load_232); 
        float memref_load_234 = memref_alloca_32[arith_const_14]; 
        float memref_load_235 = memref_alloca_40[0]; 
        float arith_mulf_236 = (memref_load_234 * memref_load_235); 
        float arith_addf_237 = (arith_mulf_233 + arith_mulf_236); 
        float memref_load_238 = memref_alloca_33[arith_const_14]; 
        float memref_load_239 = memref_alloca_41[0]; 
        memref_alloca_38[arith_const_14] = memref_load_239; 
        float arith_mulf_240 = (memref_load_238 * memref_load_239); 
        float arith_addf_241 = (arith_addf_237 + arith_mulf_240); 
        float memref_load_242 = memref_alloca_24[arith_const_14]; 
        float memref_load_243 = memref_alloca_20[0]; 
        float arith_mulf_244 = (memref_load_242 * memref_load_243); 
        float arith_addf_245 = (arith_addf_241 + arith_mulf_244); 
        int arith_muli_246 = (for_iter_230 * arith_const_10); 
        int arith_addi_247 = (arith_muli_246 + arith_const_9); 
        func_arg_6[arith_addi_247][for_iter_229] = arith_addf_245; 
        int arith_muli_248 = (for_iter_230 * arith_const_10); 
        int arith_addi_249 = (arith_muli_248 + arith_const_9); 
        float memref_load_250 = func_arg_6[arith_addi_249][for_iter_229]; 
        memref_alloca_41[0] = memref_load_250; 
        float memref_load_251 = memref_alloca_38[arith_const_14]; 
        memref_alloca_20[0] = memref_load_251; 
        int arith_muli_252 = (for_iter_230 * arith_const_10); 
        int arith_addi_253 = (arith_muli_252 + arith_const_9); 
        float memref_load_254 = func_arg_4[arith_addi_253][for_iter_229]; 
        memref_alloca_28[0] = memref_load_254; 
        float memref_load_255 = memref_alloca_35[arith_const_14]; 
        memref_alloca_40[0] = memref_load_255; 
      }
    }
  }
  for (int for_iter_256 = arith_const_14; for_iter_256 < arith_const_8; for_iter_256 += arith_const_12) {
    for (int for_iter_257 = arith_const_14; for_iter_257 < arith_const_8; for_iter_257 += arith_const_12) {
      for (int for_iter_258 = arith_const_14; for_iter_258 < arith_const_12; for_iter_258 += arith_const_12) {
        for (int for_iter_259 = arith_const_14; for_iter_259 < arith_const_12; for_iter_259 += arith_const_12) {
          int arith_addi_260 = (for_iter_256 + arith_const_8); 
          for (int for_iter_261 = for_iter_256; for_iter_261 < arith_addi_260; for_iter_261 += arith_const_11) {
            int arith_addi_262 = (for_iter_257 + arith_const_8); 
            for (int for_iter_263 = for_iter_257; for_iter_263 < arith_addi_262; for_iter_263 += arith_const_11) {
              int arith_addi_264 = (for_iter_258 + arith_const_12); 
              for (int for_iter_265 = for_iter_258; for_iter_265 < arith_addi_264; for_iter_265 += arith_const_11) {
                int arith_addi_266 = (for_iter_259 + arith_const_12); 
                for (int for_iter_267 = for_iter_259; for_iter_267 < arith_addi_266; for_iter_267 += arith_const_11) {
                  int arith_muli_268 = (for_iter_263 * arith_const_12); 
                  int arith_addi_269 = (arith_muli_268 + for_iter_267); 
                  memref_alloca_43[0] = arith_const_15; 
                  memref_alloca_22[0] = arith_const_15; 
                  memref_alloca_25[0] = arith_const_15; 
                  int arith_muli_270 = (for_iter_261 * arith_const_12); 
                  int arith_addi_271 = (arith_muli_270 + for_iter_265); 
                  float memref_load_272 = memref_alloca_29[arith_const_14]; 
                  float memref_load_273 = func_arg_4[arith_addi_271][arith_addi_269]; 
                  float arith_mulf_274 = (memref_load_272 * memref_load_273); 
                  float memref_load_275 = memref_alloca_36[arith_const_14]; 
                  float memref_load_276 = memref_alloca_25[0]; 
                  float arith_mulf_277 = (memref_load_275 * memref_load_276); 
                  float arith_addf_278 = (arith_mulf_274 + arith_mulf_277); 
                  float memref_load_279 = memref_alloca_33[arith_const_14]; 
                  float memref_load_280 = memref_alloca_22[0]; 
                  memref_alloca_37[arith_const_14] = memref_load_280; 
                  float arith_mulf_281 = (memref_load_279 * memref_load_280); 
                  float arith_addf_282 = (arith_addf_278 + arith_mulf_281); 
                  float memref_load_283 = memref_alloca_24[arith_const_14]; 
                  float memref_load_284 = memref_alloca_43[0]; 
                  float arith_mulf_285 = (memref_load_283 * memref_load_284); 
                  float arith_addf_286 = (arith_addf_282 + arith_mulf_285); 
                  func_arg_5[arith_addi_271][arith_addi_269] = arith_addf_286; 
                  float memref_load_287 = func_arg_5[arith_addi_271][arith_addi_269]; 
                  memref_alloca_22[0] = memref_load_287; 
                  float memref_load_288 = memref_alloca_37[arith_const_14]; 
                  memref_alloca_43[0] = memref_load_288; 
                  float memref_load_289 = func_arg_4[arith_addi_271][arith_addi_269]; 
                  memref_alloca_25[0] = memref_load_289; 
                  int arith_muli_290 = (for_iter_263 * arith_const_12); 
                  int arith_addi_291 = (arith_muli_290 + for_iter_267); 
                  memref_alloca_20[0] = arith_const_15; 
                  memref_alloca_41[0] = arith_const_15; 
                  memref_alloca_40[0] = arith_const_15; 
                  memref_alloca_28[0] = arith_const_15; 
                  int arith_muli_292 = (for_iter_261 * arith_const_7); 
                  int arith_muli_293 = (for_iter_265 * arith_const_10); 
                  int arith_addi_294 = (arith_muli_292 + arith_muli_293); 
                  int arith_addi_295 = (arith_addi_294 + arith_const_9); 
                  float memref_load_296 = memref_alloca_30[arith_const_14]; 
                  float memref_load_297 = memref_alloca_28[0]; 
                  memref_alloca_35[arith_const_14] = memref_load_297; 
                  float arith_mulf_298 = (memref_load_296 * memref_load_297); 
                  float memref_load_299 = memref_alloca_32[arith_const_14]; 
                  float memref_load_300 = memref_alloca_40[0]; 
                  float arith_mulf_301 = (memref_load_299 * memref_load_300); 
                  float arith_addf_302 = (arith_mulf_298 + arith_mulf_301); 
                  float memref_load_303 = memref_alloca_33[arith_const_14]; 
                  float memref_load_304 = memref_alloca_41[0]; 
                  memref_alloca_38[arith_const_14] = memref_load_304; 
                  float arith_mulf_305 = (memref_load_303 * memref_load_304); 
                  float arith_addf_306 = (arith_addf_302 + arith_mulf_305); 
                  float memref_load_307 = memref_alloca_24[arith_const_14]; 
                  float memref_load_308 = memref_alloca_20[0]; 
                  float arith_mulf_309 = (memref_load_307 * memref_load_308); 
                  float arith_addf_310 = (arith_addf_306 + arith_mulf_309); 
                  int arith_muli_311 = (arith_addi_295 * arith_const_10); 
                  int arith_addi_312 = (arith_muli_311 + arith_const_9); 
                  func_arg_6[arith_addi_312][arith_addi_291] = arith_addf_310; 
                  int arith_muli_313 = (arith_addi_295 * arith_const_10); 
                  int arith_addi_314 = (arith_muli_313 + arith_const_9); 
                  float memref_load_315 = func_arg_6[arith_addi_314][arith_addi_291]; 
                  memref_alloca_41[0] = memref_load_315; 
                  float memref_load_316 = memref_alloca_38[arith_const_14]; 
                  memref_alloca_20[0] = memref_load_316; 
                  int arith_muli_317 = (arith_addi_295 * arith_const_10); 
                  int arith_addi_318 = (arith_muli_317 + arith_const_9); 
                  float memref_load_319 = func_arg_4[arith_addi_318][arith_addi_291]; 
                  memref_alloca_28[0] = memref_load_319; 
                  float memref_load_320 = memref_alloca_35[arith_const_14]; 
                  memref_alloca_40[0] = memref_load_320; 
                  int arith_muli_321 = (for_iter_261 * arith_const_12); 
                  int arith_addi_322 = (arith_muli_321 + for_iter_265); 
                  int arith_muli_323 = (for_iter_263 * arith_const_12); 
                  int arith_addi_324 = (arith_muli_323 + for_iter_267); 
                  float memref_load_325 = func_arg_5[arith_addi_322][arith_addi_324]; 
                  int arith_muli_326 = (for_iter_261 * arith_const_12); 
                  int arith_addi_327 = (arith_muli_326 + for_iter_265); 
                  int arith_muli_328 = (for_iter_263 * arith_const_12); 
                  int arith_addi_329 = (arith_muli_328 + for_iter_267); 
                  float memref_load_330 = func_arg_6[arith_addi_327][arith_addi_329]; 
                  float arith_addf_331 = (memref_load_325 + memref_load_330); 
                  int arith_muli_332 = (for_iter_261 * arith_const_12); 
                  int arith_addi_333 = (arith_muli_332 + for_iter_265); 
                  int arith_muli_334 = (for_iter_263 * arith_const_12); 
                  int arith_addi_335 = (arith_muli_334 + for_iter_267); 
                  func_arg_4[arith_addi_333][arith_addi_335] = arith_addf_331; 
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
