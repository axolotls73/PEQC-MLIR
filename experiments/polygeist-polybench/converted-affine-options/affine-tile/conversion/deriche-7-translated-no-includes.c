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
  memref_alloca_28[arith_const_13] = arith_divf_58; 
  float memref_load_59 = memref_alloca_28[arith_const_13]; 
  memref_alloca_22[arith_const_13] = memref_load_59; 
  float arith_negf_60 = -(func_arg_2); 
  float math_exp_61 = exp(arith_negf_60); 
  float arith_mulf_62 = (memref_load_59 * math_exp_61); 
  memref_alloca_25[arith_const_13] = arith_mulf_62; 
  float arith_subf_63 = (func_arg_2 - arith_const_16); 
  float arith_mulf_64 = (arith_mulf_62 * arith_subf_63); 
  memref_alloca_33[arith_const_13] = arith_mulf_64; 
  float memref_load_65 = memref_alloca_22[arith_const_13]; 
  float arith_negf_66 = -(memref_load_65); 
  float arith_mulf_67 = (func_arg_2 * arith_const_18); 
  float math_exp_68 = exp(arith_mulf_67); 
  float arith_mulf_69 = (arith_negf_66 * math_exp_68); 
  memref_alloca_30[arith_const_13] = arith_mulf_69; 
  float memref_load_70 = memref_alloca_25[arith_const_13]; 
  float arith_addf_71 = (func_arg_2 + arith_const_16); 
  float arith_mulf_72 = (memref_load_70 * arith_addf_71); 
  memref_alloca_29[arith_const_13] = arith_mulf_72; 
  memref_alloca_41[0] = _15; 
  memref_alloca_31[0] = _15; 
  memref_alloca_21[0] = _15; 
  memref_alloca_42[0] = _15; 
  for (int for_iter_73 = arith_const_13; for_iter_73 < arith_const_12; for_iter_73 += arith_const_11) {
    int arith_addi_74 = (for_iter_73 + arith_const_11); 
    for (int for_iter_75 = for_iter_73; for_iter_75 < arith_addi_74; for_iter_75 += arith_const_10) {
      memref_alloca_41[0] = arith_const_14; 
      memref_alloca_42[0] = arith_const_14; 
      memref_alloca_21[0] = arith_const_14; 
      for (int for_iter_76 = arith_const_13; for_iter_76 < arith_const_12; for_iter_76 += arith_const_10) {
        float memref_load_77 = memref_alloca_28[arith_const_13]; 
        float memref_load_78 = func_arg_3[for_iter_75][for_iter_76]; 
        float arith_mulf_79 = (memref_load_77 * memref_load_78); 
        float memref_load_80 = memref_alloca_33[arith_const_13]; 
        float memref_load_81 = memref_alloca_41[0]; 
        float arith_mulf_82 = (memref_load_80 * memref_load_81); 
        float arith_addf_83 = (arith_mulf_79 + arith_mulf_82); 
        float memref_load_84 = memref_alloca_32[arith_const_13]; 
        float memref_load_85 = memref_alloca_21[0]; 
        memref_alloca_26[arith_const_13] = memref_load_85; 
        float arith_mulf_86 = (memref_load_84 * memref_load_85); 
        float arith_addf_87 = (arith_addf_83 + arith_mulf_86); 
        float memref_load_88 = memref_alloca_23[arith_const_13]; 
        float memref_load_89 = memref_alloca_42[0]; 
        float arith_mulf_90 = (memref_load_88 * memref_load_89); 
        float arith_addf_91 = (arith_addf_87 + arith_mulf_90); 
        func_arg_5[for_iter_75][for_iter_76] = arith_addf_91; 
        float memref_load_92 = func_arg_5[for_iter_75][for_iter_76]; 
        memref_alloca_21[0] = memref_load_92; 
        float memref_load_93 = memref_alloca_26[arith_const_13]; 
        memref_alloca_42[0] = memref_load_93; 
        float memref_load_94 = func_arg_3[for_iter_75][for_iter_76]; 
        memref_alloca_41[0] = memref_load_94; 
      }
    }
  }
  memref_alloca_20[0] = _15; 
  memref_alloca_38[0] = _15; 
  memref_alloca_27[0] = _15; 
  memref_alloca_40[0] = _15; 
  memref_alloca_39[0] = _15; 
  memref_alloca_19[0] = _15; 
  for (int for_iter_95 = arith_const_13; for_iter_95 < arith_const_12; for_iter_95 += arith_const_11) {
    int arith_addi_96 = (for_iter_95 + arith_const_11); 
    for (int for_iter_97 = for_iter_95; for_iter_97 < arith_addi_96; for_iter_97 += arith_const_10) {
      memref_alloca_38[0] = arith_const_14; 
      memref_alloca_20[0] = arith_const_14; 
      memref_alloca_19[0] = arith_const_14; 
      memref_alloca_39[0] = arith_const_14; 
      for (int for_iter_98 = arith_const_13; for_iter_98 < arith_const_12; for_iter_98 += arith_const_10) {
        float memref_load_99 = memref_alloca_29[arith_const_13]; 
        float memref_load_100 = memref_alloca_20[0]; 
        memref_alloca_24[arith_const_13] = memref_load_100; 
        float arith_mulf_101 = (memref_load_99 * memref_load_100); 
        float memref_load_102 = memref_alloca_30[arith_const_13]; 
        float memref_load_103 = memref_alloca_38[0]; 
        float arith_mulf_104 = (memref_load_102 * memref_load_103); 
        float arith_addf_105 = (arith_mulf_101 + arith_mulf_104); 
        float memref_load_106 = memref_alloca_32[arith_const_13]; 
        float memref_load_107 = memref_alloca_39[0]; 
        memref_alloca_35[arith_const_13] = memref_load_107; 
        float arith_mulf_108 = (memref_load_106 * memref_load_107); 
        float arith_addf_109 = (arith_addf_105 + arith_mulf_108); 
        float memref_load_110 = memref_alloca_23[arith_const_13]; 
        float memref_load_111 = memref_alloca_19[0]; 
        float arith_mulf_112 = (memref_load_110 * memref_load_111); 
        float arith_addf_113 = (arith_addf_109 + arith_mulf_112); 
        int arith_muli_114 = (for_iter_98 * arith_const_9); 
        int arith_addi_115 = (arith_muli_114 + arith_const_8); 
        func_arg_6[for_iter_97][arith_addi_115] = arith_addf_113; 
        int arith_muli_116 = (for_iter_98 * arith_const_9); 
        int arith_addi_117 = (arith_muli_116 + arith_const_8); 
        float memref_load_118 = func_arg_6[for_iter_97][arith_addi_117]; 
        memref_alloca_39[0] = memref_load_118; 
        float memref_load_119 = memref_alloca_35[arith_const_13]; 
        memref_alloca_19[0] = memref_load_119; 
        int arith_muli_120 = (for_iter_98 * arith_const_9); 
        int arith_addi_121 = (arith_muli_120 + arith_const_8); 
        float memref_load_122 = func_arg_3[for_iter_97][arith_addi_121]; 
        memref_alloca_20[0] = memref_load_122; 
        float memref_load_123 = memref_alloca_24[arith_const_13]; 
        memref_alloca_38[0] = memref_load_123; 
      }
    }
  }
  for (int for_iter_124 = arith_const_13; for_iter_124 < arith_const_7; for_iter_124 += arith_const_10) {
    for (int for_iter_125 = arith_const_13; for_iter_125 < arith_const_7; for_iter_125 += arith_const_10) {
      int arith_muli_126 = (for_iter_124 * arith_const_11); 
      int arith_muli_127 = (for_iter_124 * arith_const_11); 
      int arith_addi_128 = (arith_muli_127 + arith_const_11); 
      for (int for_iter_129 = arith_muli_126; for_iter_129 < arith_addi_128; for_iter_129 += arith_const_10) {
        int arith_muli_130 = (for_iter_125 * arith_const_11); 
        int arith_muli_131 = (for_iter_125 * arith_const_11); 
        int arith_addi_132 = (arith_muli_131 + arith_const_11); 
        for (int for_iter_133 = arith_muli_130; for_iter_133 < arith_addi_132; for_iter_133 += arith_const_10) {
          float memref_load_134 = func_arg_5[for_iter_129][for_iter_133]; 
          float memref_load_135 = func_arg_6[for_iter_129][for_iter_133]; 
          float arith_addf_136 = (memref_load_134 + memref_load_135); 
          func_arg_4[for_iter_129][for_iter_133] = arith_addf_136; 
        }
      }
    }
  }
  for (int for_iter_137 = arith_const_13; for_iter_137 < arith_const_12; for_iter_137 += arith_const_11) {
    int arith_addi_138 = (for_iter_137 + arith_const_11); 
    for (int for_iter_139 = for_iter_137; for_iter_139 < arith_addi_138; for_iter_139 += arith_const_10) {
      memref_alloca_42[0] = arith_const_14; 
      memref_alloca_21[0] = arith_const_14; 
      memref_alloca_31[0] = arith_const_14; 
      for (int for_iter_140 = arith_const_13; for_iter_140 < arith_const_12; for_iter_140 += arith_const_10) {
        float memref_load_141 = memref_alloca_28[arith_const_13]; 
        float memref_load_142 = func_arg_4[for_iter_140][for_iter_139]; 
        float arith_mulf_143 = (memref_load_141 * memref_load_142); 
        float memref_load_144 = memref_alloca_33[arith_const_13]; 
        float memref_load_145 = memref_alloca_31[0]; 
        float arith_mulf_146 = (memref_load_144 * memref_load_145); 
        float arith_addf_147 = (arith_mulf_143 + arith_mulf_146); 
        float memref_load_148 = memref_alloca_32[arith_const_13]; 
        float memref_load_149 = memref_alloca_21[0]; 
        memref_alloca_36[arith_const_13] = memref_load_149; 
        float arith_mulf_150 = (memref_load_148 * memref_load_149); 
        float arith_addf_151 = (arith_addf_147 + arith_mulf_150); 
        float memref_load_152 = memref_alloca_23[arith_const_13]; 
        float memref_load_153 = memref_alloca_42[0]; 
        float arith_mulf_154 = (memref_load_152 * memref_load_153); 
        float arith_addf_155 = (arith_addf_151 + arith_mulf_154); 
        func_arg_5[for_iter_140][for_iter_139] = arith_addf_155; 
        float memref_load_156 = func_arg_5[for_iter_140][for_iter_139]; 
        memref_alloca_21[0] = memref_load_156; 
        float memref_load_157 = memref_alloca_36[arith_const_13]; 
        memref_alloca_42[0] = memref_load_157; 
        float memref_load_158 = func_arg_4[for_iter_140][for_iter_139]; 
        memref_alloca_31[0] = memref_load_158; 
      }
    }
  }
  for (int for_iter_159 = arith_const_13; for_iter_159 < arith_const_12; for_iter_159 += arith_const_11) {
    int arith_addi_160 = (for_iter_159 + arith_const_11); 
    for (int for_iter_161 = for_iter_159; for_iter_161 < arith_addi_160; for_iter_161 += arith_const_10) {
      memref_alloca_19[0] = arith_const_14; 
      memref_alloca_39[0] = arith_const_14; 
      memref_alloca_40[0] = arith_const_14; 
      memref_alloca_27[0] = arith_const_14; 
      for (int for_iter_162 = arith_const_13; for_iter_162 < arith_const_12; for_iter_162 += arith_const_10) {
        float memref_load_163 = memref_alloca_29[arith_const_13]; 
        float memref_load_164 = memref_alloca_27[0]; 
        memref_alloca_34[arith_const_13] = memref_load_164; 
        float arith_mulf_165 = (memref_load_163 * memref_load_164); 
        float memref_load_166 = memref_alloca_30[arith_const_13]; 
        float memref_load_167 = memref_alloca_40[0]; 
        float arith_mulf_168 = (memref_load_166 * memref_load_167); 
        float arith_addf_169 = (arith_mulf_165 + arith_mulf_168); 
        float memref_load_170 = memref_alloca_32[arith_const_13]; 
        float memref_load_171 = memref_alloca_39[0]; 
        memref_alloca_37[arith_const_13] = memref_load_171; 
        float arith_mulf_172 = (memref_load_170 * memref_load_171); 
        float arith_addf_173 = (arith_addf_169 + arith_mulf_172); 
        float memref_load_174 = memref_alloca_23[arith_const_13]; 
        float memref_load_175 = memref_alloca_19[0]; 
        float arith_mulf_176 = (memref_load_174 * memref_load_175); 
        float arith_addf_177 = (arith_addf_173 + arith_mulf_176); 
        int arith_muli_178 = (for_iter_162 * arith_const_9); 
        int arith_addi_179 = (arith_muli_178 + arith_const_8); 
        func_arg_6[arith_addi_179][for_iter_161] = arith_addf_177; 
        int arith_muli_180 = (for_iter_162 * arith_const_9); 
        int arith_addi_181 = (arith_muli_180 + arith_const_8); 
        float memref_load_182 = func_arg_6[arith_addi_181][for_iter_161]; 
        memref_alloca_39[0] = memref_load_182; 
        float memref_load_183 = memref_alloca_37[arith_const_13]; 
        memref_alloca_19[0] = memref_load_183; 
        int arith_muli_184 = (for_iter_162 * arith_const_9); 
        int arith_addi_185 = (arith_muli_184 + arith_const_8); 
        float memref_load_186 = func_arg_4[arith_addi_185][for_iter_161]; 
        memref_alloca_27[0] = memref_load_186; 
        float memref_load_187 = memref_alloca_34[arith_const_13]; 
        memref_alloca_40[0] = memref_load_187; 
      }
    }
  }
  for (int for_iter_188 = arith_const_13; for_iter_188 < arith_const_7; for_iter_188 += arith_const_10) {
    for (int for_iter_189 = arith_const_13; for_iter_189 < arith_const_7; for_iter_189 += arith_const_10) {
      int arith_muli_190 = (for_iter_188 * arith_const_11); 
      int arith_muli_191 = (for_iter_188 * arith_const_11); 
      int arith_addi_192 = (arith_muli_191 + arith_const_11); 
      for (int for_iter_193 = arith_muli_190; for_iter_193 < arith_addi_192; for_iter_193 += arith_const_10) {
        int arith_muli_194 = (for_iter_189 * arith_const_11); 
        int arith_muli_195 = (for_iter_189 * arith_const_11); 
        int arith_addi_196 = (arith_muli_195 + arith_const_11); 
        for (int for_iter_197 = arith_muli_194; for_iter_197 < arith_addi_196; for_iter_197 += arith_const_10) {
          float memref_load_198 = func_arg_5[for_iter_193][for_iter_197]; 
          float memref_load_199 = func_arg_6[for_iter_193][for_iter_197]; 
          float arith_addf_200 = (memref_load_198 + memref_load_199); 
          func_arg_4[for_iter_193][for_iter_197] = arith_addf_200; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
