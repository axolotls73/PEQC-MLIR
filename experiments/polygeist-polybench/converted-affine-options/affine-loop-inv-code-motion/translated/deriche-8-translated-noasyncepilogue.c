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
  memref_alloca_21[arith_const_13] = arith_negf_44; 
  float arith_negf_45 = -(func_arg_2); 
  float math_powf_46 = pow(arith_const_16, arith_negf_45); 
  memref_alloca_30[arith_const_13] = math_powf_46; 
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
  memref_alloca_24[arith_const_13] = arith_divf_57; 
  float memref_load_58 = memref_alloca_24[arith_const_13]; 
  memref_alloca_20[arith_const_13] = memref_load_58; 
  float arith_negf_59 = -(func_arg_2); 
  float math_exp_60 = exp(arith_negf_59); 
  float arith_mulf_61 = (memref_load_58 * math_exp_60); 
  memref_alloca_22[arith_const_13] = arith_mulf_61; 
  float arith_subf_62 = (func_arg_2 - arith_const_15); 
  float arith_mulf_63 = (arith_mulf_61 * arith_subf_62); 
  memref_alloca_33[arith_const_13] = arith_mulf_63; 
  float memref_load_64 = memref_alloca_20[arith_const_13]; 
  float arith_negf_65 = -(memref_load_64); 
  float arith_mulf_66 = (func_arg_2 * arith_const_17); 
  float math_exp_67 = exp(arith_mulf_66); 
  float arith_mulf_68 = (arith_negf_65 * math_exp_67); 
  memref_alloca_29[arith_const_13] = arith_mulf_68; 
  float memref_load_69 = memref_alloca_22[arith_const_13]; 
  float arith_addf_70 = (func_arg_2 + arith_const_15); 
  float arith_mulf_71 = (memref_load_69 * arith_addf_70); 
  memref_alloca_27[arith_const_13] = arith_mulf_71; 
  float _72; 
  memref_alloca_19[0] = _72; 
  float _73; 
  memref_alloca_26[0] = _73; 
  float _74; 
  memref_alloca_18[0] = _74; 
  float _75; 
  memref_alloca_39[0] = _75; 
  float memref_load_76 = memref_alloca_24[arith_const_13]; 
  float memref_load_77 = memref_alloca_33[arith_const_13]; 
  float memref_load_78 = memref_alloca_30[arith_const_13]; 
  float memref_load_79 = memref_alloca_21[arith_const_13]; 
  for (int for_iter_80 = arith_const_13; for_iter_80 < arith_const_12; for_iter_80 += arith_const_11) {
    memref_alloca_19[0] = arith_const_14; 
    memref_alloca_39[0] = arith_const_14; 
    memref_alloca_18[0] = arith_const_14; 
    for (int for_iter_81 = arith_const_13; for_iter_81 < arith_const_12; for_iter_81 += arith_const_11) {
      float memref_load_82 = func_arg_3[for_iter_80][for_iter_81]; 
      float arith_mulf_83 = (memref_load_76 * memref_load_82); 
      float memref_load_84 = memref_alloca_19[0]; 
      float arith_mulf_85 = (memref_load_77 * memref_load_84); 
      float arith_addf_86 = (arith_mulf_83 + arith_mulf_85); 
      float memref_load_87 = memref_alloca_18[0]; 
      memref_alloca_23[arith_const_13] = memref_load_87; 
      float arith_mulf_88 = (memref_load_78 * memref_load_87); 
      float arith_addf_89 = (arith_addf_86 + arith_mulf_88); 
      float memref_load_90 = memref_alloca_39[0]; 
      float arith_mulf_91 = (memref_load_79 * memref_load_90); 
      float arith_addf_92 = (arith_addf_89 + arith_mulf_91); 
      func_arg_5[for_iter_80][for_iter_81] = arith_addf_92; 
      float memref_load_93 = func_arg_5[for_iter_80][for_iter_81]; 
      memref_alloca_18[0] = memref_load_93; 
      float memref_load_94 = memref_alloca_23[arith_const_13]; 
      memref_alloca_39[0] = memref_load_94; 
      float memref_load_95 = func_arg_3[for_iter_80][for_iter_81]; 
      memref_alloca_19[0] = memref_load_95; 
    }
  }
  float _96; 
  memref_alloca_41[0] = _96; 
  float _97; 
  memref_alloca_36[0] = _97; 
  float _98; 
  memref_alloca_25[0] = _98; 
  float _99; 
  memref_alloca_38[0] = _99; 
  float _100; 
  memref_alloca_37[0] = _100; 
  float _101; 
  memref_alloca_40[0] = _101; 
  float memref_load_102 = memref_alloca_27[arith_const_13]; 
  float memref_load_103 = memref_alloca_29[arith_const_13]; 
  float memref_load_104 = memref_alloca_30[arith_const_13]; 
  float memref_load_105 = memref_alloca_21[arith_const_13]; 
  for (int for_iter_106 = arith_const_13; for_iter_106 < arith_const_12; for_iter_106 += arith_const_11) {
    memref_alloca_36[0] = arith_const_14; 
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_37[0] = arith_const_14; 
    for (int for_iter_107 = arith_const_13; for_iter_107 < arith_const_12; for_iter_107 += arith_const_11) {
      float memref_load_108 = memref_alloca_41[0]; 
      memref_alloca_28[arith_const_13] = memref_load_108; 
      float arith_mulf_109 = (memref_load_102 * memref_load_108); 
      float memref_load_110 = memref_alloca_36[0]; 
      float arith_mulf_111 = (memref_load_103 * memref_load_110); 
      float arith_addf_112 = (arith_mulf_109 + arith_mulf_111); 
      float memref_load_113 = memref_alloca_37[0]; 
      memref_alloca_32[arith_const_13] = memref_load_113; 
      float arith_mulf_114 = (memref_load_104 * memref_load_113); 
      float arith_addf_115 = (arith_addf_112 + arith_mulf_114); 
      float memref_load_116 = memref_alloca_40[0]; 
      float arith_mulf_117 = (memref_load_105 * memref_load_116); 
      float arith_addf_118 = (arith_addf_115 + arith_mulf_117); 
      int arith_muli_119 = (for_iter_107 * arith_const_10); 
      int arith_addi_120 = (arith_muli_119 + arith_const_9); 
      func_arg_6[for_iter_106][arith_addi_120] = arith_addf_118; 
      int arith_muli_121 = (for_iter_107 * arith_const_10); 
      int arith_addi_122 = (arith_muli_121 + arith_const_9); 
      float memref_load_123 = func_arg_6[for_iter_106][arith_addi_122]; 
      memref_alloca_37[0] = memref_load_123; 
      float memref_load_124 = memref_alloca_32[arith_const_13]; 
      memref_alloca_40[0] = memref_load_124; 
      int arith_muli_125 = (for_iter_107 * arith_const_10); 
      int arith_addi_126 = (arith_muli_125 + arith_const_9); 
      float memref_load_127 = func_arg_3[for_iter_106][arith_addi_126]; 
      memref_alloca_41[0] = memref_load_127; 
      float memref_load_128 = memref_alloca_28[arith_const_13]; 
      memref_alloca_36[0] = memref_load_128; 
    }
  }
  for (int for_iter_129 = arith_const_13; for_iter_129 < arith_const_8; for_iter_129 += arith_const_11) {
    for (int for_iter_130 = arith_const_13; for_iter_130 < arith_const_8; for_iter_130 += arith_const_11) {
      int arith_muli_131 = (for_iter_129 * arith_const_7); 
      int arith_muli_132 = (for_iter_129 * arith_const_7); 
      int arith_addi_133 = (arith_muli_132 + arith_const_7); 
      for (int for_iter_134 = arith_muli_131; for_iter_134 < arith_addi_133; for_iter_134 += arith_const_11) {
        int arith_muli_135 = (for_iter_130 * arith_const_7); 
        int arith_muli_136 = (for_iter_130 * arith_const_7); 
        int arith_addi_137 = (arith_muli_136 + arith_const_7); 
        for (int for_iter_138 = arith_muli_135; for_iter_138 < arith_addi_137; for_iter_138 += arith_const_11) {
          float memref_load_139 = func_arg_5[for_iter_134][for_iter_138]; 
          float memref_load_140 = func_arg_6[for_iter_134][for_iter_138]; 
          float arith_addf_141 = (memref_load_139 + memref_load_140); 
          func_arg_4[for_iter_134][for_iter_138] = arith_addf_141; 
        }
      }
    }
  }
  float memref_load_142 = memref_alloca_24[arith_const_13]; 
  float memref_load_143 = memref_alloca_33[arith_const_13]; 
  float memref_load_144 = memref_alloca_30[arith_const_13]; 
  float memref_load_145 = memref_alloca_21[arith_const_13]; 
  for (int for_iter_146 = arith_const_13; for_iter_146 < arith_const_12; for_iter_146 += arith_const_11) {
    memref_alloca_39[0] = arith_const_14; 
    memref_alloca_18[0] = arith_const_14; 
    memref_alloca_26[0] = arith_const_14; 
    for (int for_iter_147 = arith_const_13; for_iter_147 < arith_const_12; for_iter_147 += arith_const_11) {
      float memref_load_148 = func_arg_4[for_iter_147][for_iter_146]; 
      float arith_mulf_149 = (memref_load_142 * memref_load_148); 
      float memref_load_150 = memref_alloca_26[0]; 
      float arith_mulf_151 = (memref_load_143 * memref_load_150); 
      float arith_addf_152 = (arith_mulf_149 + arith_mulf_151); 
      float memref_load_153 = memref_alloca_18[0]; 
      memref_alloca_34[arith_const_13] = memref_load_153; 
      float arith_mulf_154 = (memref_load_144 * memref_load_153); 
      float arith_addf_155 = (arith_addf_152 + arith_mulf_154); 
      float memref_load_156 = memref_alloca_39[0]; 
      float arith_mulf_157 = (memref_load_145 * memref_load_156); 
      float arith_addf_158 = (arith_addf_155 + arith_mulf_157); 
      func_arg_5[for_iter_147][for_iter_146] = arith_addf_158; 
      float memref_load_159 = func_arg_5[for_iter_147][for_iter_146]; 
      memref_alloca_18[0] = memref_load_159; 
      float memref_load_160 = memref_alloca_34[arith_const_13]; 
      memref_alloca_39[0] = memref_load_160; 
      float memref_load_161 = func_arg_4[for_iter_147][for_iter_146]; 
      memref_alloca_26[0] = memref_load_161; 
    }
  }
  float memref_load_162 = memref_alloca_27[arith_const_13]; 
  float memref_load_163 = memref_alloca_29[arith_const_13]; 
  float memref_load_164 = memref_alloca_30[arith_const_13]; 
  float memref_load_165 = memref_alloca_21[arith_const_13]; 
  for (int for_iter_166 = arith_const_13; for_iter_166 < arith_const_12; for_iter_166 += arith_const_11) {
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_37[0] = arith_const_14; 
    memref_alloca_38[0] = arith_const_14; 
    memref_alloca_25[0] = arith_const_14; 
    for (int for_iter_167 = arith_const_13; for_iter_167 < arith_const_12; for_iter_167 += arith_const_11) {
      float memref_load_168 = memref_alloca_25[0]; 
      memref_alloca_31[arith_const_13] = memref_load_168; 
      float arith_mulf_169 = (memref_load_162 * memref_load_168); 
      float memref_load_170 = memref_alloca_38[0]; 
      float arith_mulf_171 = (memref_load_163 * memref_load_170); 
      float arith_addf_172 = (arith_mulf_169 + arith_mulf_171); 
      float memref_load_173 = memref_alloca_37[0]; 
      memref_alloca_35[arith_const_13] = memref_load_173; 
      float arith_mulf_174 = (memref_load_164 * memref_load_173); 
      float arith_addf_175 = (arith_addf_172 + arith_mulf_174); 
      float memref_load_176 = memref_alloca_40[0]; 
      float arith_mulf_177 = (memref_load_165 * memref_load_176); 
      float arith_addf_178 = (arith_addf_175 + arith_mulf_177); 
      int arith_muli_179 = (for_iter_167 * arith_const_10); 
      int arith_addi_180 = (arith_muli_179 + arith_const_9); 
      func_arg_6[arith_addi_180][for_iter_166] = arith_addf_178; 
      int arith_muli_181 = (for_iter_167 * arith_const_10); 
      int arith_addi_182 = (arith_muli_181 + arith_const_9); 
      float memref_load_183 = func_arg_6[arith_addi_182][for_iter_166]; 
      memref_alloca_37[0] = memref_load_183; 
      float memref_load_184 = memref_alloca_35[arith_const_13]; 
      memref_alloca_40[0] = memref_load_184; 
      int arith_muli_185 = (for_iter_167 * arith_const_10); 
      int arith_addi_186 = (arith_muli_185 + arith_const_9); 
      float memref_load_187 = func_arg_4[arith_addi_186][for_iter_166]; 
      memref_alloca_25[0] = memref_load_187; 
      float memref_load_188 = memref_alloca_31[arith_const_13]; 
      memref_alloca_38[0] = memref_load_188; 
    }
  }
  for (int for_iter_189 = arith_const_13; for_iter_189 < arith_const_8; for_iter_189 += arith_const_11) {
    for (int for_iter_190 = arith_const_13; for_iter_190 < arith_const_8; for_iter_190 += arith_const_11) {
      int arith_muli_191 = (for_iter_189 * arith_const_7); 
      int arith_muli_192 = (for_iter_189 * arith_const_7); 
      int arith_addi_193 = (arith_muli_192 + arith_const_7); 
      for (int for_iter_194 = arith_muli_191; for_iter_194 < arith_addi_193; for_iter_194 += arith_const_11) {
        int arith_muli_195 = (for_iter_190 * arith_const_7); 
        int arith_muli_196 = (for_iter_190 * arith_const_7); 
        int arith_addi_197 = (arith_muli_196 + arith_const_7); 
        for (int for_iter_198 = arith_muli_195; for_iter_198 < arith_addi_197; for_iter_198 += arith_const_11) {
          float memref_load_199 = func_arg_5[for_iter_194][for_iter_198]; 
          float memref_load_200 = func_arg_6[for_iter_194][for_iter_198]; 
          float arith_addf_201 = (memref_load_199 + memref_load_200); 
          func_arg_4[for_iter_194][for_iter_198] = arith_addf_201; 
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
