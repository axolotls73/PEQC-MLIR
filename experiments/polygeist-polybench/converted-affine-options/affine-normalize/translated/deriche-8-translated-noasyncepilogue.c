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
  memref_alloca_27[arith_const_13] = arith_divf_58; 
  float memref_load_59 = memref_alloca_27[arith_const_13]; 
  memref_alloca_20[arith_const_13] = memref_load_59; 
  float arith_negf_60 = -(func_arg_2); 
  float math_exp_61 = exp(arith_negf_60); 
  float arith_mulf_62 = (memref_load_59 * math_exp_61); 
  memref_alloca_24[arith_const_13] = arith_mulf_62; 
  float arith_subf_63 = (func_arg_2 - arith_const_16); 
  float arith_mulf_64 = (arith_mulf_62 * arith_subf_63); 
  memref_alloca_32[arith_const_13] = arith_mulf_64; 
  float memref_load_65 = memref_alloca_20[arith_const_13]; 
  float arith_negf_66 = -(memref_load_65); 
  float arith_mulf_67 = (func_arg_2 * arith_const_18); 
  float math_exp_68 = exp(arith_mulf_67); 
  float arith_mulf_69 = (arith_negf_66 * math_exp_68); 
  memref_alloca_25[arith_const_13] = arith_mulf_69; 
  float memref_load_70 = memref_alloca_24[arith_const_13]; 
  float arith_addf_71 = (func_arg_2 + arith_const_16); 
  float arith_mulf_72 = (memref_load_70 * arith_addf_71); 
  memref_alloca_28[arith_const_13] = arith_mulf_72; 
  memref_alloca_21[0] = _15; 
  memref_alloca_30[0] = _15; 
  memref_alloca_42[0] = _15; 
  memref_alloca_40[0] = _15; 
  for (int for_iter_73 = arith_const_13; for_iter_73 < arith_const_12; for_iter_73 += arith_const_11) {
    memref_alloca_21[0] = arith_const_14; 
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_42[0] = arith_const_14; 
    for (int for_iter_74 = arith_const_13; for_iter_74 < arith_const_12; for_iter_74 += arith_const_11) {
      float memref_load_75 = memref_alloca_27[arith_const_13]; 
      float memref_load_76 = func_arg_3[for_iter_73][for_iter_74]; 
      float arith_mulf_77 = (memref_load_75 * memref_load_76); 
      float memref_load_78 = memref_alloca_32[arith_const_13]; 
      float memref_load_79 = memref_alloca_21[0]; 
      float arith_mulf_80 = (memref_load_78 * memref_load_79); 
      float arith_addf_81 = (arith_mulf_77 + arith_mulf_80); 
      float memref_load_82 = memref_alloca_31[arith_const_13]; 
      float memref_load_83 = memref_alloca_42[0]; 
      memref_alloca_23[arith_const_13] = memref_load_83; 
      float arith_mulf_84 = (memref_load_82 * memref_load_83); 
      float arith_addf_85 = (arith_addf_81 + arith_mulf_84); 
      float memref_load_86 = memref_alloca_22[arith_const_13]; 
      float memref_load_87 = memref_alloca_40[0]; 
      float arith_mulf_88 = (memref_load_86 * memref_load_87); 
      float arith_addf_89 = (arith_addf_85 + arith_mulf_88); 
      func_arg_5[for_iter_73][for_iter_74] = arith_addf_89; 
      float memref_load_90 = func_arg_5[for_iter_73][for_iter_74]; 
      memref_alloca_42[0] = memref_load_90; 
      float memref_load_91 = memref_alloca_23[arith_const_13]; 
      memref_alloca_40[0] = memref_load_91; 
      float memref_load_92 = func_arg_3[for_iter_73][for_iter_74]; 
      memref_alloca_21[0] = memref_load_92; 
    }
  }
  memref_alloca_19[0] = _15; 
  memref_alloca_37[0] = _15; 
  memref_alloca_26[0] = _15; 
  memref_alloca_38[0] = _15; 
  memref_alloca_39[0] = _15; 
  memref_alloca_41[0] = _15; 
  for (int for_iter_93 = arith_const_13; for_iter_93 < arith_const_12; for_iter_93 += arith_const_11) {
    memref_alloca_37[0] = arith_const_14; 
    memref_alloca_19[0] = arith_const_14; 
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_39[0] = arith_const_14; 
    for (int for_iter_94 = arith_const_13; for_iter_94 < arith_const_12; for_iter_94 += arith_const_11) {
      float memref_load_95 = memref_alloca_28[arith_const_13]; 
      float memref_load_96 = memref_alloca_19[0]; 
      memref_alloca_29[arith_const_13] = memref_load_96; 
      float arith_mulf_97 = (memref_load_95 * memref_load_96); 
      float memref_load_98 = memref_alloca_25[arith_const_13]; 
      float memref_load_99 = memref_alloca_37[0]; 
      float arith_mulf_100 = (memref_load_98 * memref_load_99); 
      float arith_addf_101 = (arith_mulf_97 + arith_mulf_100); 
      float memref_load_102 = memref_alloca_31[arith_const_13]; 
      float memref_load_103 = memref_alloca_39[0]; 
      memref_alloca_34[arith_const_13] = memref_load_103; 
      float arith_mulf_104 = (memref_load_102 * memref_load_103); 
      float arith_addf_105 = (arith_addf_101 + arith_mulf_104); 
      float memref_load_106 = memref_alloca_22[arith_const_13]; 
      float memref_load_107 = memref_alloca_41[0]; 
      float arith_mulf_108 = (memref_load_106 * memref_load_107); 
      float arith_addf_109 = (arith_addf_105 + arith_mulf_108); 
      int arith_muli_110 = (for_iter_94 * arith_const_10); 
      int arith_addi_111 = (arith_muli_110 + arith_const_9); 
      func_arg_6[for_iter_93][arith_addi_111] = arith_addf_109; 
      int arith_muli_112 = (for_iter_94 * arith_const_10); 
      int arith_addi_113 = (arith_muli_112 + arith_const_9); 
      float memref_load_114 = func_arg_6[for_iter_93][arith_addi_113]; 
      memref_alloca_39[0] = memref_load_114; 
      float memref_load_115 = memref_alloca_34[arith_const_13]; 
      memref_alloca_41[0] = memref_load_115; 
      int arith_muli_116 = (for_iter_94 * arith_const_10); 
      int arith_addi_117 = (arith_muli_116 + arith_const_9); 
      float memref_load_118 = func_arg_3[for_iter_93][arith_addi_117]; 
      memref_alloca_19[0] = memref_load_118; 
      float memref_load_119 = memref_alloca_29[arith_const_13]; 
      memref_alloca_37[0] = memref_load_119; 
    }
  }
  for (int for_iter_120 = arith_const_13; for_iter_120 < arith_const_8; for_iter_120 += arith_const_11) {
    for (int for_iter_121 = arith_const_13; for_iter_121 < arith_const_8; for_iter_121 += arith_const_11) {
      for (int for_iter_122 = arith_const_13; for_iter_122 < arith_const_7; for_iter_122 += arith_const_11) {
        int arith_muli_123 = (for_iter_120 * arith_const_7); 
        int arith_addi_124 = (arith_muli_123 + for_iter_122); 
        for (int for_iter_125 = arith_const_13; for_iter_125 < arith_const_7; for_iter_125 += arith_const_11) {
          int arith_muli_126 = (for_iter_121 * arith_const_7); 
          int arith_addi_127 = (arith_muli_126 + for_iter_125); 
          float memref_load_128 = func_arg_5[arith_addi_124][arith_addi_127]; 
          float memref_load_129 = func_arg_6[arith_addi_124][arith_addi_127]; 
          float arith_addf_130 = (memref_load_128 + memref_load_129); 
          func_arg_4[arith_addi_124][arith_addi_127] = arith_addf_130; 
        }
      }
    }
  }
  for (int for_iter_131 = arith_const_13; for_iter_131 < arith_const_12; for_iter_131 += arith_const_11) {
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_42[0] = arith_const_14; 
    memref_alloca_30[0] = arith_const_14; 
    for (int for_iter_132 = arith_const_13; for_iter_132 < arith_const_12; for_iter_132 += arith_const_11) {
      float memref_load_133 = memref_alloca_27[arith_const_13]; 
      float memref_load_134 = func_arg_4[for_iter_132][for_iter_131]; 
      float arith_mulf_135 = (memref_load_133 * memref_load_134); 
      float memref_load_136 = memref_alloca_32[arith_const_13]; 
      float memref_load_137 = memref_alloca_30[0]; 
      float arith_mulf_138 = (memref_load_136 * memref_load_137); 
      float arith_addf_139 = (arith_mulf_135 + arith_mulf_138); 
      float memref_load_140 = memref_alloca_31[arith_const_13]; 
      float memref_load_141 = memref_alloca_42[0]; 
      memref_alloca_35[arith_const_13] = memref_load_141; 
      float arith_mulf_142 = (memref_load_140 * memref_load_141); 
      float arith_addf_143 = (arith_addf_139 + arith_mulf_142); 
      float memref_load_144 = memref_alloca_22[arith_const_13]; 
      float memref_load_145 = memref_alloca_40[0]; 
      float arith_mulf_146 = (memref_load_144 * memref_load_145); 
      float arith_addf_147 = (arith_addf_143 + arith_mulf_146); 
      func_arg_5[for_iter_132][for_iter_131] = arith_addf_147; 
      float memref_load_148 = func_arg_5[for_iter_132][for_iter_131]; 
      memref_alloca_42[0] = memref_load_148; 
      float memref_load_149 = memref_alloca_35[arith_const_13]; 
      memref_alloca_40[0] = memref_load_149; 
      float memref_load_150 = func_arg_4[for_iter_132][for_iter_131]; 
      memref_alloca_30[0] = memref_load_150; 
    }
  }
  for (int for_iter_151 = arith_const_13; for_iter_151 < arith_const_12; for_iter_151 += arith_const_11) {
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_39[0] = arith_const_14; 
    memref_alloca_38[0] = arith_const_14; 
    memref_alloca_26[0] = arith_const_14; 
    for (int for_iter_152 = arith_const_13; for_iter_152 < arith_const_12; for_iter_152 += arith_const_11) {
      float memref_load_153 = memref_alloca_28[arith_const_13]; 
      float memref_load_154 = memref_alloca_26[0]; 
      memref_alloca_33[arith_const_13] = memref_load_154; 
      float arith_mulf_155 = (memref_load_153 * memref_load_154); 
      float memref_load_156 = memref_alloca_25[arith_const_13]; 
      float memref_load_157 = memref_alloca_38[0]; 
      float arith_mulf_158 = (memref_load_156 * memref_load_157); 
      float arith_addf_159 = (arith_mulf_155 + arith_mulf_158); 
      float memref_load_160 = memref_alloca_31[arith_const_13]; 
      float memref_load_161 = memref_alloca_39[0]; 
      memref_alloca_36[arith_const_13] = memref_load_161; 
      float arith_mulf_162 = (memref_load_160 * memref_load_161); 
      float arith_addf_163 = (arith_addf_159 + arith_mulf_162); 
      float memref_load_164 = memref_alloca_22[arith_const_13]; 
      float memref_load_165 = memref_alloca_41[0]; 
      float arith_mulf_166 = (memref_load_164 * memref_load_165); 
      float arith_addf_167 = (arith_addf_163 + arith_mulf_166); 
      int arith_muli_168 = (for_iter_152 * arith_const_10); 
      int arith_addi_169 = (arith_muli_168 + arith_const_9); 
      func_arg_6[arith_addi_169][for_iter_151] = arith_addf_167; 
      int arith_muli_170 = (for_iter_152 * arith_const_10); 
      int arith_addi_171 = (arith_muli_170 + arith_const_9); 
      float memref_load_172 = func_arg_6[arith_addi_171][for_iter_151]; 
      memref_alloca_39[0] = memref_load_172; 
      float memref_load_173 = memref_alloca_36[arith_const_13]; 
      memref_alloca_41[0] = memref_load_173; 
      int arith_muli_174 = (for_iter_152 * arith_const_10); 
      int arith_addi_175 = (arith_muli_174 + arith_const_9); 
      float memref_load_176 = func_arg_4[arith_addi_175][for_iter_151]; 
      memref_alloca_26[0] = memref_load_176; 
      float memref_load_177 = memref_alloca_33[arith_const_13]; 
      memref_alloca_38[0] = memref_load_177; 
    }
  }
  for (int for_iter_178 = arith_const_13; for_iter_178 < arith_const_8; for_iter_178 += arith_const_11) {
    for (int for_iter_179 = arith_const_13; for_iter_179 < arith_const_8; for_iter_179 += arith_const_11) {
      for (int for_iter_180 = arith_const_13; for_iter_180 < arith_const_7; for_iter_180 += arith_const_11) {
        int arith_muli_181 = (for_iter_178 * arith_const_7); 
        int arith_addi_182 = (arith_muli_181 + for_iter_180); 
        for (int for_iter_183 = arith_const_13; for_iter_183 < arith_const_7; for_iter_183 += arith_const_11) {
          int arith_muli_184 = (for_iter_179 * arith_const_7); 
          int arith_addi_185 = (arith_muli_184 + for_iter_183); 
          float memref_load_186 = func_arg_5[arith_addi_182][arith_addi_185]; 
          float memref_load_187 = func_arg_6[arith_addi_182][arith_addi_185]; 
          float arith_addf_188 = (memref_load_186 + memref_load_187); 
          func_arg_4[arith_addi_182][arith_addi_185] = arith_addf_188; 
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
