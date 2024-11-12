#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 63; 
  int arith_const_8 = -1; 
  int arith_const_9 = 1; 
  int arith_const_10 = 64; 
  int arith_const_11 = 0; 
  float arith_const_12 = 1.000000; 
  float arith_const_13 = 2.000000; 
  float arith_const_14 = -2.000000; 
  float arith_const_15 = 0.000000; 
  float* memref_alloc_16; 
  float _17; 
  float* memref_alloca_18; 
  memref_alloca_18[0] = _17; 
  float* memref_alloca_19; 
  memref_alloca_19[0] = _17; 
  float* memref_alloca_20; 
  memref_alloca_20[0] = _17; 
  float* memref_alloca_21; 
  memref_alloca_21[0] = _17; 
  float* memref_alloca_22; 
  memref_alloca_22[0] = _17; 
  float* memref_alloca_23; 
  memref_alloca_23[0] = _17; 
  float* memref_alloca_24; 
  memref_alloca_24[0] = _17; 
  float* memref_alloca_25; 
  memref_alloca_25[0] = _17; 
  float* memref_alloca_26; 
  memref_alloca_26[0] = _17; 
  float* memref_alloca_27; 
  memref_alloca_27[0] = _17; 
  float arith_negf_28 = -(func_arg_2); 
  float math_exp_29 = exp(arith_negf_28); 
  float arith_subf_30 = (arith_const_12 - math_exp_29); 
  float arith_mulf_31 = (arith_subf_30 * arith_subf_30); 
  float arith_mulf_32 = (func_arg_2 * math_exp_29); 
  float arith_mulf_33 = (arith_mulf_32 * arith_const_13); 
  float arith_addf_34 = (arith_mulf_33 + arith_const_12); 
  float arith_mulf_35 = (func_arg_2 * arith_const_13); 
  float math_exp_36 = exp(arith_mulf_35); 
  float arith_subf_37 = (arith_addf_34 - math_exp_36); 
  float arith_divf_38 = (arith_mulf_31 / arith_subf_37); 
  float arith_mulf_39 = (arith_divf_38 * math_exp_29); 
  float arith_subf_40 = (func_arg_2 - arith_const_12); 
  float arith_mulf_41 = (arith_mulf_39 * arith_subf_40); 
  float arith_addf_42 = (func_arg_2 + arith_const_12); 
  float arith_mulf_43 = (arith_mulf_39 * arith_addf_42); 
  float arith_negf_44 = -(arith_divf_38); 
  float arith_mulf_45 = (func_arg_2 * arith_const_14); 
  float math_exp_46 = exp(arith_mulf_45); 
  float arith_mulf_47 = (arith_negf_44 * math_exp_46); 
  float math_powf_48 = pow(arith_const_13, arith_negf_28); 
  float arith_negf_49 = -(math_exp_46); 
  for (int for_iter_50 = arith_const_11; for_iter_50 < arith_const_10; for_iter_50 += arith_const_9) {
    memref_alloca_19[0] = arith_const_15; 
    memref_alloca_18[0] = arith_const_15; 
    memref_alloca_23[0] = arith_const_15; 
    memref_alloca_22[0] = arith_const_15; 
    for (int for_iter_51 = arith_const_11; for_iter_51 < arith_const_10; for_iter_51 += arith_const_9) {
      float memref_load_52 = memref_alloca_23[0]; 
      float arith_mulf_53 = (arith_mulf_43 * memref_load_52); 
      float memref_load_54 = memref_alloca_22[0]; 
      float arith_mulf_55 = (arith_mulf_47 * memref_load_54); 
      float arith_addf_56 = (arith_mulf_53 + arith_mulf_55); 
      float memref_load_57 = memref_alloca_19[0]; 
      float arith_mulf_58 = (math_powf_48 * memref_load_57); 
      float arith_addf_59 = (arith_addf_56 + arith_mulf_58); 
      float memref_load_60 = memref_alloca_18[0]; 
      float arith_mulf_61 = (arith_negf_49 * memref_load_60); 
      float arith_addf_62 = (arith_addf_59 + arith_mulf_61); 
      int arith_muli_63 = (for_iter_51 * arith_const_8); 
      int arith_addi_64 = (arith_muli_63 + arith_const_7); 
      func_arg_6[for_iter_50][arith_addi_64] = arith_addf_62; 
      memref_alloca_22[0] = memref_load_52; 
      int arith_muli_65 = (for_iter_51 * arith_const_8); 
      int arith_addi_66 = (arith_muli_65 + arith_const_7); 
      float memref_load_67 = func_arg_3[for_iter_50][arith_addi_66]; 
      memref_alloca_23[0] = memref_load_67; 
      memref_alloca_18[0] = memref_load_57; 
      int arith_muli_68 = (for_iter_51 * arith_const_8); 
      int arith_addi_69 = (arith_muli_68 + arith_const_7); 
      float memref_load_70 = func_arg_6[for_iter_50][arith_addi_69]; 
      memref_alloca_19[0] = memref_load_70; 
    }
  }
  for (int for_iter_71 = arith_const_11; for_iter_71 < arith_const_10; for_iter_71 += arith_const_9) {
    for (int for_iter_72 = arith_const_11; for_iter_72 < arith_const_10; for_iter_72 += arith_const_9) {
      memref_alloca_25[0] = arith_const_15; 
      memref_alloca_24[0] = arith_const_15; 
      memref_alloca_27[0] = arith_const_15; 
      float memref_load_73 = func_arg_3[for_iter_71][for_iter_72]; 
      float arith_mulf_74 = (arith_divf_38 * memref_load_73); 
      float memref_load_75 = memref_alloca_27[0]; 
      float arith_mulf_76 = (arith_mulf_41 * memref_load_75); 
      float arith_addf_77 = (arith_mulf_74 + arith_mulf_76); 
      float memref_load_78 = memref_alloca_25[0]; 
      float arith_mulf_79 = (math_powf_48 * memref_load_78); 
      float arith_addf_80 = (arith_addf_77 + arith_mulf_79); 
      float memref_load_81 = memref_alloca_24[0]; 
      float arith_mulf_82 = (arith_negf_49 * memref_load_81); 
      float arith_addf_83 = (arith_addf_80 + arith_mulf_82); 
      func_arg_5[for_iter_71][for_iter_72] = arith_addf_83; 
      float memref_load_84 = func_arg_3[for_iter_71][for_iter_72]; 
      memref_alloca_27[0] = memref_load_84; 
      memref_alloca_24[0] = memref_load_78; 
      float memref_load_85 = func_arg_5[for_iter_71][for_iter_72]; 
      memref_alloca_25[0] = memref_load_85; 
      memref_alloca_19[0] = arith_const_15; 
      memref_alloca_18[0] = arith_const_15; 
      memref_alloca_23[0] = arith_const_15; 
      memref_alloca_22[0] = arith_const_15; 
      int arith_muli_86 = (for_iter_72 * arith_const_8); 
      int arith_addi_87 = (arith_muli_86 + arith_const_7); 
      float memref_load_88 = memref_alloca_23[0]; 
      float arith_mulf_89 = (arith_mulf_43 * memref_load_88); 
      float memref_load_90 = memref_alloca_22[0]; 
      float arith_mulf_91 = (arith_mulf_47 * memref_load_90); 
      float arith_addf_92 = (arith_mulf_89 + arith_mulf_91); 
      float memref_load_93 = memref_alloca_19[0]; 
      float arith_mulf_94 = (math_powf_48 * memref_load_93); 
      float arith_addf_95 = (arith_addf_92 + arith_mulf_94); 
      float memref_load_96 = memref_alloca_18[0]; 
      float arith_mulf_97 = (arith_negf_49 * memref_load_96); 
      float arith_addf_98 = (arith_addf_95 + arith_mulf_97); 
      int arith_muli_99 = (arith_addi_87 * arith_const_8); 
      int arith_addi_100 = (arith_muli_99 + arith_const_7); 
      func_arg_6[for_iter_71][arith_addi_100] = arith_addf_98; 
      memref_alloca_22[0] = memref_load_88; 
      int arith_muli_101 = (arith_addi_87 * arith_const_8); 
      int arith_addi_102 = (arith_muli_101 + arith_const_7); 
      float memref_load_103 = func_arg_3[for_iter_71][arith_addi_102]; 
      memref_alloca_23[0] = memref_load_103; 
      memref_alloca_18[0] = memref_load_93; 
      int arith_muli_104 = (arith_addi_87 * arith_const_8); 
      int arith_addi_105 = (arith_muli_104 + arith_const_7); 
      float memref_load_106 = func_arg_6[for_iter_71][arith_addi_105]; 
      memref_alloca_19[0] = memref_load_106; 
      float memref_load_107 = func_arg_5[for_iter_71][for_iter_72]; 
      float memref_load_108 = func_arg_6[for_iter_71][for_iter_72]; 
      float arith_addf_109 = (memref_load_107 + memref_load_108); 
      func_arg_4[for_iter_71][for_iter_72] = arith_addf_109; 
    }
  }
  for (int for_iter_110 = arith_const_11; for_iter_110 < arith_const_10; for_iter_110 += arith_const_9) {
    memref_alloca_21[0] = arith_const_15; 
    memref_alloca_20[0] = arith_const_15; 
    memref_alloca_19[0] = arith_const_15; 
    memref_alloca_18[0] = arith_const_15; 
    for (int for_iter_111 = arith_const_11; for_iter_111 < arith_const_10; for_iter_111 += arith_const_9) {
      int arith_muli_112 = (for_iter_111 * arith_const_8); 
      int arith_addi_113 = (arith_muli_112 + arith_const_7); 
      float memref_load_114 = func_arg_5[arith_addi_113][for_iter_110]; 
      float memref_load_115 = func_arg_6[arith_addi_113][for_iter_110]; 
      float arith_addf_116 = (memref_load_114 + memref_load_115); 
      memref_alloc_16[arith_const_11][arith_const_11] = arith_addf_116; 
      float memref_load_117 = memref_alloca_21[0]; 
      float arith_mulf_118 = (arith_mulf_43 * memref_load_117); 
      float memref_load_119 = memref_alloca_20[0]; 
      float arith_mulf_120 = (arith_mulf_47 * memref_load_119); 
      float arith_addf_121 = (arith_mulf_118 + arith_mulf_120); 
      float memref_load_122 = memref_alloca_19[0]; 
      float arith_mulf_123 = (math_powf_48 * memref_load_122); 
      float arith_addf_124 = (arith_addf_121 + arith_mulf_123); 
      float memref_load_125 = memref_alloca_18[0]; 
      float arith_mulf_126 = (arith_negf_49 * memref_load_125); 
      float arith_addf_127 = (arith_addf_124 + arith_mulf_126); 
      int arith_muli_128 = (for_iter_111 * arith_const_8); 
      int arith_addi_129 = (arith_muli_128 + arith_const_7); 
      func_arg_6[arith_addi_129][for_iter_110] = arith_addf_127; 
      memref_alloca_20[0] = memref_load_117; 
      float memref_load_130 = memref_alloc_16[arith_const_11][arith_const_11]; 
      memref_alloca_21[0] = memref_load_130; 
      memref_alloca_18[0] = memref_load_122; 
      int arith_muli_131 = (for_iter_111 * arith_const_8); 
      int arith_addi_132 = (arith_muli_131 + arith_const_7); 
      float memref_load_133 = func_arg_6[arith_addi_132][for_iter_110]; 
      memref_alloca_19[0] = memref_load_133; 
    }
  }
  for (int for_iter_134 = arith_const_11; for_iter_134 < arith_const_10; for_iter_134 += arith_const_9) {
    for (int for_iter_135 = arith_const_11; for_iter_135 < arith_const_10; for_iter_135 += arith_const_9) {
      memref_alloca_26[0] = arith_const_15; 
      memref_alloca_25[0] = arith_const_15; 
      memref_alloca_24[0] = arith_const_15; 
      float memref_load_136 = func_arg_4[for_iter_134][for_iter_135]; 
      float arith_mulf_137 = (arith_divf_38 * memref_load_136); 
      float memref_load_138 = memref_alloca_26[0]; 
      float arith_mulf_139 = (arith_mulf_41 * memref_load_138); 
      float arith_addf_140 = (arith_mulf_137 + arith_mulf_139); 
      float memref_load_141 = memref_alloca_25[0]; 
      float arith_mulf_142 = (math_powf_48 * memref_load_141); 
      float arith_addf_143 = (arith_addf_140 + arith_mulf_142); 
      float memref_load_144 = memref_alloca_24[0]; 
      float arith_mulf_145 = (arith_negf_49 * memref_load_144); 
      float arith_addf_146 = (arith_addf_143 + arith_mulf_145); 
      func_arg_5[for_iter_134][for_iter_135] = arith_addf_146; 
      float memref_load_147 = func_arg_4[for_iter_134][for_iter_135]; 
      memref_alloca_26[0] = memref_load_147; 
      memref_alloca_24[0] = memref_load_141; 
      float memref_load_148 = func_arg_5[for_iter_134][for_iter_135]; 
      memref_alloca_25[0] = memref_load_148; 
      memref_alloca_21[0] = arith_const_15; 
      memref_alloca_20[0] = arith_const_15; 
      memref_alloca_19[0] = arith_const_15; 
      memref_alloca_18[0] = arith_const_15; 
      int arith_muli_149 = (for_iter_134 * arith_const_8); 
      int arith_addi_150 = (arith_muli_149 + arith_const_7); 
      float memref_load_151 = memref_alloca_21[0]; 
      float arith_mulf_152 = (arith_mulf_43 * memref_load_151); 
      float memref_load_153 = memref_alloca_20[0]; 
      float arith_mulf_154 = (arith_mulf_47 * memref_load_153); 
      float arith_addf_155 = (arith_mulf_152 + arith_mulf_154); 
      float memref_load_156 = memref_alloca_19[0]; 
      float arith_mulf_157 = (math_powf_48 * memref_load_156); 
      float arith_addf_158 = (arith_addf_155 + arith_mulf_157); 
      float memref_load_159 = memref_alloca_18[0]; 
      float arith_mulf_160 = (arith_negf_49 * memref_load_159); 
      float arith_addf_161 = (arith_addf_158 + arith_mulf_160); 
      int arith_muli_162 = (arith_addi_150 * arith_const_8); 
      int arith_addi_163 = (arith_muli_162 + arith_const_7); 
      func_arg_6[arith_addi_163][for_iter_135] = arith_addf_161; 
      memref_alloca_20[0] = memref_load_151; 
      int arith_muli_164 = (arith_addi_150 * arith_const_8); 
      int arith_addi_165 = (arith_muli_164 + arith_const_7); 
      float memref_load_166 = func_arg_4[arith_addi_165][for_iter_135]; 
      memref_alloca_21[0] = memref_load_166; 
      memref_alloca_18[0] = memref_load_156; 
      int arith_muli_167 = (arith_addi_150 * arith_const_8); 
      int arith_addi_168 = (arith_muli_167 + arith_const_7); 
      float memref_load_169 = func_arg_6[arith_addi_168][for_iter_135]; 
      memref_alloca_19[0] = memref_load_169; 
      float memref_load_170 = func_arg_5[for_iter_134][for_iter_135]; 
      float memref_load_171 = func_arg_6[for_iter_134][for_iter_135]; 
      float arith_addf_172 = (memref_load_170 + memref_load_171); 
      func_arg_4[for_iter_134][for_iter_135] = arith_addf_172; 
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
