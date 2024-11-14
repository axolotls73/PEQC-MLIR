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
  memref_alloca_32[arith_const_13] = arith_mulf_63; 
  float memref_load_64 = memref_alloca_40[arith_const_13]; 
  float arith_negf_65 = -(memref_load_64); 
  float arith_mulf_66 = (func_arg_2 * arith_const_17); 
  float math_exp_67 = exp(arith_mulf_66); 
  float arith_mulf_68 = (arith_negf_65 * math_exp_67); 
  memref_alloca_30[arith_const_13] = arith_mulf_68; 
  float memref_load_69 = memref_alloca_24[arith_const_13]; 
  float arith_addf_70 = (func_arg_2 + arith_const_15); 
  float arith_mulf_71 = (memref_load_69 * arith_addf_70); 
  memref_alloca_28[arith_const_13] = arith_mulf_71; 
  float _72; 
  memref_alloca_21[0] = _72; 
  float _73; 
  memref_alloca_29[0] = _73; 
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
        float memref_load_83 = memref_alloca_32[arith_const_13]; 
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
  memref_alloca_39[0] = _101; 
  float _102; 
  memref_alloca_38[0] = _102; 
  float _103; 
  memref_alloca_18[0] = _103; 
  for (int for_iter_104 = arith_const_13; for_iter_104 < arith_const_12; for_iter_104 += arith_const_11) {
    int arith_addi_105 = (for_iter_104 + arith_const_11); 
    for (int for_iter_106 = for_iter_104; for_iter_106 < arith_addi_105; for_iter_106 += arith_const_10) {
      memref_alloca_37[0] = arith_const_14; 
      memref_alloca_19[0] = arith_const_14; 
      memref_alloca_18[0] = arith_const_14; 
      memref_alloca_38[0] = arith_const_14; 
      for (int for_iter_107 = arith_const_13; for_iter_107 < arith_const_12; for_iter_107 += arith_const_10) {
        float memref_load_108 = memref_alloca_28[arith_const_13]; 
        float memref_load_109 = memref_alloca_19[0]; 
        memref_alloca_23[arith_const_13] = memref_load_109; 
        float arith_mulf_110 = (memref_load_108 * memref_load_109); 
        float memref_load_111 = memref_alloca_30[arith_const_13]; 
        float memref_load_112 = memref_alloca_37[0]; 
        float arith_mulf_113 = (memref_load_111 * memref_load_112); 
        float arith_addf_114 = (arith_mulf_110 + arith_mulf_113); 
        float memref_load_115 = memref_alloca_31[arith_const_13]; 
        float memref_load_116 = memref_alloca_38[0]; 
        memref_alloca_34[arith_const_13] = memref_load_116; 
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
        memref_alloca_38[0] = memref_load_127; 
        float memref_load_128 = memref_alloca_34[arith_const_13]; 
        memref_alloca_18[0] = memref_load_128; 
        int arith_muli_129 = (for_iter_107 * arith_const_9); 
        int arith_addi_130 = (arith_muli_129 + arith_const_8); 
        float memref_load_131 = func_arg_3[for_iter_106][arith_addi_130]; 
        memref_alloca_19[0] = memref_load_131; 
        float memref_load_132 = memref_alloca_23[arith_const_13]; 
        memref_alloca_37[0] = memref_load_132; 
      }
    }
  }
  for (int for_iter_133 = arith_const_13; for_iter_133 < arith_const_7; for_iter_133 += arith_const_10) {
    for (int for_iter_134 = arith_const_13; for_iter_134 < arith_const_7; for_iter_134 += arith_const_10) {
      int arith_muli_135 = (for_iter_133 * arith_const_11); 
      int arith_muli_136 = (for_iter_133 * arith_const_11); 
      int arith_addi_137 = (arith_muli_136 + arith_const_11); 
      for (int for_iter_138 = arith_muli_135; for_iter_138 < arith_addi_137; for_iter_138 += arith_const_10) {
        int arith_muli_139 = (for_iter_134 * arith_const_11); 
        int arith_muli_140 = (for_iter_134 * arith_const_11); 
        int arith_addi_141 = (arith_muli_140 + arith_const_11); 
        for (int for_iter_142 = arith_muli_139; for_iter_142 < arith_addi_141; for_iter_142 += arith_const_10) {
          float memref_load_143 = func_arg_5[for_iter_138][for_iter_142]; 
          float memref_load_144 = func_arg_6[for_iter_138][for_iter_142]; 
          float arith_addf_145 = (memref_load_143 + memref_load_144); 
          func_arg_4[for_iter_138][for_iter_142] = arith_addf_145; 
        }
      }
    }
  }
  for (int for_iter_146 = arith_const_13; for_iter_146 < arith_const_12; for_iter_146 += arith_const_11) {
    int arith_addi_147 = (for_iter_146 + arith_const_11); 
    for (int for_iter_148 = for_iter_146; for_iter_148 < arith_addi_147; for_iter_148 += arith_const_10) {
      memref_alloca_41[0] = arith_const_14; 
      memref_alloca_20[0] = arith_const_14; 
      memref_alloca_29[0] = arith_const_14; 
      for (int for_iter_149 = arith_const_13; for_iter_149 < arith_const_12; for_iter_149 += arith_const_10) {
        float memref_load_150 = memref_alloca_27[arith_const_13]; 
        float memref_load_151 = func_arg_4[for_iter_149][for_iter_148]; 
        float arith_mulf_152 = (memref_load_150 * memref_load_151); 
        float memref_load_153 = memref_alloca_32[arith_const_13]; 
        float memref_load_154 = memref_alloca_29[0]; 
        float arith_mulf_155 = (memref_load_153 * memref_load_154); 
        float arith_addf_156 = (arith_mulf_152 + arith_mulf_155); 
        float memref_load_157 = memref_alloca_31[arith_const_13]; 
        float memref_load_158 = memref_alloca_20[0]; 
        memref_alloca_35[arith_const_13] = memref_load_158; 
        float arith_mulf_159 = (memref_load_157 * memref_load_158); 
        float arith_addf_160 = (arith_addf_156 + arith_mulf_159); 
        float memref_load_161 = memref_alloca_22[arith_const_13]; 
        float memref_load_162 = memref_alloca_41[0]; 
        float arith_mulf_163 = (memref_load_161 * memref_load_162); 
        float arith_addf_164 = (arith_addf_160 + arith_mulf_163); 
        func_arg_5[for_iter_149][for_iter_148] = arith_addf_164; 
        float memref_load_165 = func_arg_5[for_iter_149][for_iter_148]; 
        memref_alloca_20[0] = memref_load_165; 
        float memref_load_166 = memref_alloca_35[arith_const_13]; 
        memref_alloca_41[0] = memref_load_166; 
        float memref_load_167 = func_arg_4[for_iter_149][for_iter_148]; 
        memref_alloca_29[0] = memref_load_167; 
      }
    }
  }
  for (int for_iter_168 = arith_const_13; for_iter_168 < arith_const_12; for_iter_168 += arith_const_11) {
    int arith_addi_169 = (for_iter_168 + arith_const_11); 
    for (int for_iter_170 = for_iter_168; for_iter_170 < arith_addi_169; for_iter_170 += arith_const_10) {
      memref_alloca_18[0] = arith_const_14; 
      memref_alloca_38[0] = arith_const_14; 
      memref_alloca_39[0] = arith_const_14; 
      memref_alloca_26[0] = arith_const_14; 
      for (int for_iter_171 = arith_const_13; for_iter_171 < arith_const_12; for_iter_171 += arith_const_10) {
        float memref_load_172 = memref_alloca_28[arith_const_13]; 
        float memref_load_173 = memref_alloca_26[0]; 
        memref_alloca_33[arith_const_13] = memref_load_173; 
        float arith_mulf_174 = (memref_load_172 * memref_load_173); 
        float memref_load_175 = memref_alloca_30[arith_const_13]; 
        float memref_load_176 = memref_alloca_39[0]; 
        float arith_mulf_177 = (memref_load_175 * memref_load_176); 
        float arith_addf_178 = (arith_mulf_174 + arith_mulf_177); 
        float memref_load_179 = memref_alloca_31[arith_const_13]; 
        float memref_load_180 = memref_alloca_38[0]; 
        memref_alloca_36[arith_const_13] = memref_load_180; 
        float arith_mulf_181 = (memref_load_179 * memref_load_180); 
        float arith_addf_182 = (arith_addf_178 + arith_mulf_181); 
        float memref_load_183 = memref_alloca_22[arith_const_13]; 
        float memref_load_184 = memref_alloca_18[0]; 
        float arith_mulf_185 = (memref_load_183 * memref_load_184); 
        float arith_addf_186 = (arith_addf_182 + arith_mulf_185); 
        int arith_muli_187 = (for_iter_171 * arith_const_9); 
        int arith_addi_188 = (arith_muli_187 + arith_const_8); 
        func_arg_6[arith_addi_188][for_iter_170] = arith_addf_186; 
        int arith_muli_189 = (for_iter_171 * arith_const_9); 
        int arith_addi_190 = (arith_muli_189 + arith_const_8); 
        float memref_load_191 = func_arg_6[arith_addi_190][for_iter_170]; 
        memref_alloca_38[0] = memref_load_191; 
        float memref_load_192 = memref_alloca_36[arith_const_13]; 
        memref_alloca_18[0] = memref_load_192; 
        int arith_muli_193 = (for_iter_171 * arith_const_9); 
        int arith_addi_194 = (arith_muli_193 + arith_const_8); 
        float memref_load_195 = func_arg_4[arith_addi_194][for_iter_170]; 
        memref_alloca_26[0] = memref_load_195; 
        float memref_load_196 = memref_alloca_33[arith_const_13]; 
        memref_alloca_39[0] = memref_load_196; 
      }
    }
  }
  for (int for_iter_197 = arith_const_13; for_iter_197 < arith_const_7; for_iter_197 += arith_const_10) {
    for (int for_iter_198 = arith_const_13; for_iter_198 < arith_const_7; for_iter_198 += arith_const_10) {
      int arith_muli_199 = (for_iter_197 * arith_const_11); 
      int arith_muli_200 = (for_iter_197 * arith_const_11); 
      int arith_addi_201 = (arith_muli_200 + arith_const_11); 
      for (int for_iter_202 = arith_muli_199; for_iter_202 < arith_addi_201; for_iter_202 += arith_const_10) {
        int arith_muli_203 = (for_iter_198 * arith_const_11); 
        int arith_muli_204 = (for_iter_198 * arith_const_11); 
        int arith_addi_205 = (arith_muli_204 + arith_const_11); 
        for (int for_iter_206 = arith_muli_203; for_iter_206 < arith_addi_205; for_iter_206 += arith_const_10) {
          float memref_load_207 = func_arg_5[for_iter_202][for_iter_206]; 
          float memref_load_208 = func_arg_6[for_iter_202][for_iter_206]; 
          float arith_addf_209 = (memref_load_207 + memref_load_208); 
          func_arg_4[for_iter_202][for_iter_206] = arith_addf_209; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
