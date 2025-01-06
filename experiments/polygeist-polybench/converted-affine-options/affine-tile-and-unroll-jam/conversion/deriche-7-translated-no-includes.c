#pragma pocc-region-start
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
  memref_alloca_22[arith_const_13] = arith_negf_45; 
  float arith_negf_46 = -(func_arg_2); 
  float math_powf_47 = pow(arith_const_17, arith_negf_46); 
  memref_alloca_31[arith_const_13] = math_powf_47; 
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
  memref_alloca_26[arith_const_13] = arith_divf_58; 
  float memref_load_59 = memref_alloca_26[arith_const_13]; 
  memref_alloca_40[arith_const_13] = memref_load_59; 
  float arith_negf_60 = -(func_arg_2); 
  float math_exp_61 = exp(arith_negf_60); 
  float arith_mulf_62 = (memref_load_59 * math_exp_61); 
  memref_alloca_23[arith_const_13] = arith_mulf_62; 
  float arith_subf_63 = (func_arg_2 - arith_const_16); 
  float arith_mulf_64 = (arith_mulf_62 * arith_subf_63); 
  memref_alloca_34[arith_const_13] = arith_mulf_64; 
  float memref_load_65 = memref_alloca_40[arith_const_13]; 
  float arith_negf_66 = -(memref_load_65); 
  float arith_mulf_67 = (func_arg_2 * arith_const_18); 
  float math_exp_68 = exp(arith_mulf_67); 
  float arith_mulf_69 = (arith_negf_66 * math_exp_68); 
  memref_alloca_30[arith_const_13] = arith_mulf_69; 
  float memref_load_70 = memref_alloca_23[arith_const_13]; 
  float arith_addf_71 = (func_arg_2 + arith_const_16); 
  float arith_mulf_72 = (memref_load_70 * arith_addf_71); 
  memref_alloca_28[arith_const_13] = arith_mulf_72; 
  memref_alloca_21[0] = _15; 
  memref_alloca_27[0] = _15; 
  memref_alloca_20[0] = _15; 
  memref_alloca_41[0] = _15; 
  for (int for_iter_73 = arith_const_13; for_iter_73 < arith_const_12; for_iter_73 += arith_const_11) {
    int arith_addi_74 = (for_iter_73 + arith_const_11); 
    for (int for_iter_75 = for_iter_73; for_iter_75 < arith_addi_74; for_iter_75 += arith_const_10) {
      memref_alloca_21[0] = arith_const_14; 
      memref_alloca_41[0] = arith_const_14; 
      memref_alloca_20[0] = arith_const_14; 
      for (int for_iter_76 = arith_const_13; for_iter_76 < arith_const_12; for_iter_76 += arith_const_10) {
        float memref_load_77 = memref_alloca_26[arith_const_13]; 
        float memref_load_78 = func_arg_3[for_iter_75][for_iter_76]; 
        float arith_mulf_79 = (memref_load_77 * memref_load_78); 
        float memref_load_80 = memref_alloca_34[arith_const_13]; 
        float memref_load_81 = memref_alloca_21[0]; 
        float arith_mulf_82 = (memref_load_80 * memref_load_81); 
        float arith_addf_83 = (arith_mulf_79 + arith_mulf_82); 
        float memref_load_84 = memref_alloca_31[arith_const_13]; 
        float memref_load_85 = memref_alloca_20[0]; 
        memref_alloca_24[arith_const_13] = memref_load_85; 
        float arith_mulf_86 = (memref_load_84 * memref_load_85); 
        float arith_addf_87 = (arith_addf_83 + arith_mulf_86); 
        float memref_load_88 = memref_alloca_22[arith_const_13]; 
        float memref_load_89 = memref_alloca_41[0]; 
        float arith_mulf_90 = (memref_load_88 * memref_load_89); 
        float arith_addf_91 = (arith_addf_87 + arith_mulf_90); 
        func_arg_5[for_iter_75][for_iter_76] = arith_addf_91; 
        float memref_load_92 = func_arg_5[for_iter_75][for_iter_76]; 
        memref_alloca_20[0] = memref_load_92; 
        float memref_load_93 = memref_alloca_24[arith_const_13]; 
        memref_alloca_41[0] = memref_load_93; 
        float memref_load_94 = func_arg_3[for_iter_75][for_iter_76]; 
        memref_alloca_21[0] = memref_load_94; 
      }
    }
  }
  memref_alloca_19[0] = _15; 
  memref_alloca_37[0] = _15; 
  memref_alloca_25[0] = _15; 
  memref_alloca_39[0] = _15; 
  memref_alloca_38[0] = _15; 
  memref_alloca_42[0] = _15; 
  for (int for_iter_95 = arith_const_13; for_iter_95 < arith_const_12; for_iter_95 += arith_const_11) {
    int arith_addi_96 = (for_iter_95 + arith_const_11); 
    for (int for_iter_97 = for_iter_95; for_iter_97 < arith_addi_96; for_iter_97 += arith_const_10) {
      memref_alloca_37[0] = arith_const_14; 
      memref_alloca_19[0] = arith_const_14; 
      memref_alloca_42[0] = arith_const_14; 
      memref_alloca_38[0] = arith_const_14; 
      for (int for_iter_98 = arith_const_13; for_iter_98 < arith_const_12; for_iter_98 += arith_const_10) {
        float memref_load_99 = memref_alloca_28[arith_const_13]; 
        float memref_load_100 = memref_alloca_19[0]; 
        memref_alloca_29[arith_const_13] = memref_load_100; 
        float arith_mulf_101 = (memref_load_99 * memref_load_100); 
        float memref_load_102 = memref_alloca_30[arith_const_13]; 
        float memref_load_103 = memref_alloca_37[0]; 
        float arith_mulf_104 = (memref_load_102 * memref_load_103); 
        float arith_addf_105 = (arith_mulf_101 + arith_mulf_104); 
        float memref_load_106 = memref_alloca_31[arith_const_13]; 
        float memref_load_107 = memref_alloca_38[0]; 
        memref_alloca_32[arith_const_13] = memref_load_107; 
        float arith_mulf_108 = (memref_load_106 * memref_load_107); 
        float arith_addf_109 = (arith_addf_105 + arith_mulf_108); 
        float memref_load_110 = memref_alloca_22[arith_const_13]; 
        float memref_load_111 = memref_alloca_42[0]; 
        float arith_mulf_112 = (memref_load_110 * memref_load_111); 
        float arith_addf_113 = (arith_addf_109 + arith_mulf_112); 
        int arith_muli_114 = (for_iter_98 * arith_const_9); 
        int arith_addi_115 = (arith_muli_114 + arith_const_8); 
        func_arg_6[for_iter_97][arith_addi_115] = arith_addf_113; 
        int arith_muli_116 = (for_iter_98 * arith_const_9); 
        int arith_addi_117 = (arith_muli_116 + arith_const_8); 
        float memref_load_118 = func_arg_6[for_iter_97][arith_addi_117]; 
        memref_alloca_38[0] = memref_load_118; 
        float memref_load_119 = memref_alloca_32[arith_const_13]; 
        memref_alloca_42[0] = memref_load_119; 
        int arith_muli_120 = (for_iter_98 * arith_const_9); 
        int arith_addi_121 = (arith_muli_120 + arith_const_8); 
        float memref_load_122 = func_arg_3[for_iter_97][arith_addi_121]; 
        memref_alloca_19[0] = memref_load_122; 
        float memref_load_123 = memref_alloca_29[arith_const_13]; 
        memref_alloca_37[0] = memref_load_123; 
      }
    }
  }
  for (int for_iter_124 = arith_const_13; for_iter_124 < arith_const_7; for_iter_124 += arith_const_11) {
    for (int for_iter_125 = arith_const_13; for_iter_125 < arith_const_7; for_iter_125 += arith_const_11) {
      for (int for_iter_126 = arith_const_13; for_iter_126 < arith_const_11; for_iter_126 += arith_const_11) {
        for (int for_iter_127 = arith_const_13; for_iter_127 < arith_const_11; for_iter_127 += arith_const_11) {
          int arith_addi_128 = (for_iter_124 + arith_const_7); 
          for (int for_iter_129 = for_iter_124; for_iter_129 < arith_addi_128; for_iter_129 += arith_const_10) {
            int arith_addi_130 = (for_iter_125 + arith_const_7); 
            for (int for_iter_131 = for_iter_125; for_iter_131 < arith_addi_130; for_iter_131 += arith_const_10) {
              int arith_addi_132 = (for_iter_126 + arith_const_11); 
              for (int for_iter_133 = for_iter_126; for_iter_133 < arith_addi_132; for_iter_133 += arith_const_10) {
                int arith_addi_134 = (for_iter_127 + arith_const_11); 
                for (int for_iter_135 = for_iter_127; for_iter_135 < arith_addi_134; for_iter_135 += arith_const_10) {
                  int arith_muli_136 = (for_iter_129 * arith_const_11); 
                  int arith_addi_137 = (arith_muli_136 + for_iter_133); 
                  int arith_muli_138 = (for_iter_131 * arith_const_11); 
                  int arith_addi_139 = (arith_muli_138 + for_iter_135); 
                  float memref_load_140 = func_arg_5[arith_addi_137][arith_addi_139]; 
                  int arith_muli_141 = (for_iter_129 * arith_const_11); 
                  int arith_addi_142 = (arith_muli_141 + for_iter_133); 
                  int arith_muli_143 = (for_iter_131 * arith_const_11); 
                  int arith_addi_144 = (arith_muli_143 + for_iter_135); 
                  float memref_load_145 = func_arg_6[arith_addi_142][arith_addi_144]; 
                  float arith_addf_146 = (memref_load_140 + memref_load_145); 
                  int arith_muli_147 = (for_iter_129 * arith_const_11); 
                  int arith_addi_148 = (arith_muli_147 + for_iter_133); 
                  int arith_muli_149 = (for_iter_131 * arith_const_11); 
                  int arith_addi_150 = (arith_muli_149 + for_iter_135); 
                  func_arg_4[arith_addi_148][arith_addi_150] = arith_addf_146; 
                }
              }
            }
          }
        }
      }
    }
  }
  for (int for_iter_151 = arith_const_13; for_iter_151 < arith_const_12; for_iter_151 += arith_const_11) {
    int arith_addi_152 = (for_iter_151 + arith_const_11); 
    for (int for_iter_153 = for_iter_151; for_iter_153 < arith_addi_152; for_iter_153 += arith_const_10) {
      memref_alloca_41[0] = arith_const_14; 
      memref_alloca_20[0] = arith_const_14; 
      memref_alloca_27[0] = arith_const_14; 
      for (int for_iter_154 = arith_const_13; for_iter_154 < arith_const_12; for_iter_154 += arith_const_10) {
        float memref_load_155 = memref_alloca_26[arith_const_13]; 
        float memref_load_156 = func_arg_4[for_iter_154][for_iter_153]; 
        float arith_mulf_157 = (memref_load_155 * memref_load_156); 
        float memref_load_158 = memref_alloca_34[arith_const_13]; 
        float memref_load_159 = memref_alloca_27[0]; 
        float arith_mulf_160 = (memref_load_158 * memref_load_159); 
        float arith_addf_161 = (arith_mulf_157 + arith_mulf_160); 
        float memref_load_162 = memref_alloca_31[arith_const_13]; 
        float memref_load_163 = memref_alloca_20[0]; 
        memref_alloca_35[arith_const_13] = memref_load_163; 
        float arith_mulf_164 = (memref_load_162 * memref_load_163); 
        float arith_addf_165 = (arith_addf_161 + arith_mulf_164); 
        float memref_load_166 = memref_alloca_22[arith_const_13]; 
        float memref_load_167 = memref_alloca_41[0]; 
        float arith_mulf_168 = (memref_load_166 * memref_load_167); 
        float arith_addf_169 = (arith_addf_165 + arith_mulf_168); 
        func_arg_5[for_iter_154][for_iter_153] = arith_addf_169; 
        float memref_load_170 = func_arg_5[for_iter_154][for_iter_153]; 
        memref_alloca_20[0] = memref_load_170; 
        float memref_load_171 = memref_alloca_35[arith_const_13]; 
        memref_alloca_41[0] = memref_load_171; 
        float memref_load_172 = func_arg_4[for_iter_154][for_iter_153]; 
        memref_alloca_27[0] = memref_load_172; 
      }
    }
  }
  for (int for_iter_173 = arith_const_13; for_iter_173 < arith_const_12; for_iter_173 += arith_const_11) {
    int arith_addi_174 = (for_iter_173 + arith_const_11); 
    for (int for_iter_175 = for_iter_173; for_iter_175 < arith_addi_174; for_iter_175 += arith_const_10) {
      memref_alloca_42[0] = arith_const_14; 
      memref_alloca_38[0] = arith_const_14; 
      memref_alloca_39[0] = arith_const_14; 
      memref_alloca_25[0] = arith_const_14; 
      for (int for_iter_176 = arith_const_13; for_iter_176 < arith_const_12; for_iter_176 += arith_const_10) {
        float memref_load_177 = memref_alloca_28[arith_const_13]; 
        float memref_load_178 = memref_alloca_25[0]; 
        memref_alloca_33[arith_const_13] = memref_load_178; 
        float arith_mulf_179 = (memref_load_177 * memref_load_178); 
        float memref_load_180 = memref_alloca_30[arith_const_13]; 
        float memref_load_181 = memref_alloca_39[0]; 
        float arith_mulf_182 = (memref_load_180 * memref_load_181); 
        float arith_addf_183 = (arith_mulf_179 + arith_mulf_182); 
        float memref_load_184 = memref_alloca_31[arith_const_13]; 
        float memref_load_185 = memref_alloca_38[0]; 
        memref_alloca_36[arith_const_13] = memref_load_185; 
        float arith_mulf_186 = (memref_load_184 * memref_load_185); 
        float arith_addf_187 = (arith_addf_183 + arith_mulf_186); 
        float memref_load_188 = memref_alloca_22[arith_const_13]; 
        float memref_load_189 = memref_alloca_42[0]; 
        float arith_mulf_190 = (memref_load_188 * memref_load_189); 
        float arith_addf_191 = (arith_addf_187 + arith_mulf_190); 
        int arith_muli_192 = (for_iter_176 * arith_const_9); 
        int arith_addi_193 = (arith_muli_192 + arith_const_8); 
        func_arg_6[arith_addi_193][for_iter_175] = arith_addf_191; 
        int arith_muli_194 = (for_iter_176 * arith_const_9); 
        int arith_addi_195 = (arith_muli_194 + arith_const_8); 
        float memref_load_196 = func_arg_6[arith_addi_195][for_iter_175]; 
        memref_alloca_38[0] = memref_load_196; 
        float memref_load_197 = memref_alloca_36[arith_const_13]; 
        memref_alloca_42[0] = memref_load_197; 
        int arith_muli_198 = (for_iter_176 * arith_const_9); 
        int arith_addi_199 = (arith_muli_198 + arith_const_8); 
        float memref_load_200 = func_arg_4[arith_addi_199][for_iter_175]; 
        memref_alloca_25[0] = memref_load_200; 
        float memref_load_201 = memref_alloca_33[arith_const_13]; 
        memref_alloca_39[0] = memref_load_201; 
      }
    }
  }
  for (int for_iter_202 = arith_const_13; for_iter_202 < arith_const_7; for_iter_202 += arith_const_11) {
    for (int for_iter_203 = arith_const_13; for_iter_203 < arith_const_7; for_iter_203 += arith_const_11) {
      for (int for_iter_204 = arith_const_13; for_iter_204 < arith_const_11; for_iter_204 += arith_const_11) {
        for (int for_iter_205 = arith_const_13; for_iter_205 < arith_const_11; for_iter_205 += arith_const_11) {
          int arith_addi_206 = (for_iter_202 + arith_const_7); 
          for (int for_iter_207 = for_iter_202; for_iter_207 < arith_addi_206; for_iter_207 += arith_const_10) {
            int arith_addi_208 = (for_iter_203 + arith_const_7); 
            for (int for_iter_209 = for_iter_203; for_iter_209 < arith_addi_208; for_iter_209 += arith_const_10) {
              int arith_addi_210 = (for_iter_204 + arith_const_11); 
              for (int for_iter_211 = for_iter_204; for_iter_211 < arith_addi_210; for_iter_211 += arith_const_10) {
                int arith_addi_212 = (for_iter_205 + arith_const_11); 
                for (int for_iter_213 = for_iter_205; for_iter_213 < arith_addi_212; for_iter_213 += arith_const_10) {
                  int arith_muli_214 = (for_iter_207 * arith_const_11); 
                  int arith_addi_215 = (arith_muli_214 + for_iter_211); 
                  int arith_muli_216 = (for_iter_209 * arith_const_11); 
                  int arith_addi_217 = (arith_muli_216 + for_iter_213); 
                  float memref_load_218 = func_arg_5[arith_addi_215][arith_addi_217]; 
                  int arith_muli_219 = (for_iter_207 * arith_const_11); 
                  int arith_addi_220 = (arith_muli_219 + for_iter_211); 
                  int arith_muli_221 = (for_iter_209 * arith_const_11); 
                  int arith_addi_222 = (arith_muli_221 + for_iter_213); 
                  float memref_load_223 = func_arg_6[arith_addi_220][arith_addi_222]; 
                  float arith_addf_224 = (memref_load_218 + memref_load_223); 
                  int arith_muli_225 = (for_iter_207 * arith_const_11); 
                  int arith_addi_226 = (arith_muli_225 + for_iter_211); 
                  int arith_muli_227 = (for_iter_209 * arith_const_11); 
                  int arith_addi_228 = (arith_muli_227 + for_iter_213); 
                  func_arg_4[arith_addi_226][arith_addi_228] = arith_addf_224; 
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
#pragma pocc-region-end
