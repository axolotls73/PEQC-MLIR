#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_deriche(int func_arg_0, int func_arg_1, float func_arg_2, float* func_arg_3, float* func_arg_4, float* func_arg_5, float* func_arg_6)
{
  int arith_const_7 = 63; 
  int arith_const_8 = -1; 
  int arith_const_9 = 1; 
  int arith_const_10 = 32; 
  int arith_const_11 = 64; 
  int arith_const_12 = 0; 
  float _13; 
  float arith_const_14 = 1.000000; 
  float arith_const_15 = 2.000000; 
  float arith_const_16 = -2.000000; 
  float arith_const_17 = 0.000000; 
  float* memref_alloc_18; 
  float* memref_alloca_19; 
  memref_alloca_19[0] = _13; 
  float* memref_alloca_20; 
  memref_alloca_20[0] = _13; 
  float* memref_alloca_21; 
  memref_alloca_21[0] = _13; 
  float* memref_alloca_22; 
  memref_alloca_22[0] = _13; 
  float* memref_alloca_23; 
  memref_alloca_23[0] = _13; 
  float* memref_alloca_24; 
  memref_alloca_24[0] = _13; 
  float* memref_alloca_25; 
  memref_alloca_25[0] = _13; 
  float* memref_alloca_26; 
  memref_alloca_26[0] = _13; 
  float* memref_alloca_27; 
  memref_alloca_27[0] = _13; 
  float* memref_alloca_28; 
  memref_alloca_28[0] = _13; 
  float arith_negf_29 = -(func_arg_2); 
  float math_exp_30 = exp(arith_negf_29); 
  float arith_subf_31 = (arith_const_14 - math_exp_30); 
  float arith_mulf_32 = (arith_subf_31 * arith_subf_31); 
  float arith_mulf_33 = (func_arg_2 * math_exp_30); 
  float arith_mulf_34 = (arith_mulf_33 * arith_const_15); 
  float arith_addf_35 = (arith_mulf_34 + arith_const_14); 
  float arith_mulf_36 = (func_arg_2 * arith_const_15); 
  float math_exp_37 = exp(arith_mulf_36); 
  float arith_subf_38 = (arith_addf_35 - math_exp_37); 
  float arith_divf_39 = (arith_mulf_32 / arith_subf_38); 
  float arith_mulf_40 = (arith_divf_39 * math_exp_30); 
  float arith_subf_41 = (func_arg_2 - arith_const_14); 
  float arith_mulf_42 = (arith_mulf_40 * arith_subf_41); 
  float arith_addf_43 = (func_arg_2 + arith_const_14); 
  float arith_mulf_44 = (arith_mulf_40 * arith_addf_43); 
  float arith_negf_45 = -(arith_divf_39); 
  float arith_mulf_46 = (func_arg_2 * arith_const_16); 
  float math_exp_47 = exp(arith_mulf_46); 
  float arith_mulf_48 = (arith_negf_45 * math_exp_47); 
  float math_powf_49 = pow(arith_const_15, arith_negf_29); 
  float arith_negf_50 = -(math_exp_47); 
  for (int for_iter_51 = arith_const_12; for_iter_51 < arith_const_11; for_iter_51 += arith_const_10) {
    int arith_addi_52 = (for_iter_51 + arith_const_10); 
    for (int for_iter_53 = for_iter_51; for_iter_53 < arith_addi_52; for_iter_53 += arith_const_9) {
      memref_alloca_20[0] = arith_const_17; 
      memref_alloca_19[0] = arith_const_17; 
      memref_alloca_24[0] = arith_const_17; 
      memref_alloca_23[0] = arith_const_17; 
      for (int for_iter_54 = arith_const_12; for_iter_54 < arith_const_11; for_iter_54 += arith_const_9) {
        float memref_load_55 = memref_alloca_24[0]; 
        float arith_mulf_56 = (arith_mulf_44 * memref_load_55); 
        float memref_load_57 = memref_alloca_23[0]; 
        float arith_mulf_58 = (arith_mulf_48 * memref_load_57); 
        float arith_addf_59 = (arith_mulf_56 + arith_mulf_58); 
        float memref_load_60 = memref_alloca_20[0]; 
        float arith_mulf_61 = (math_powf_49 * memref_load_60); 
        float arith_addf_62 = (arith_addf_59 + arith_mulf_61); 
        float memref_load_63 = memref_alloca_19[0]; 
        float arith_mulf_64 = (arith_negf_50 * memref_load_63); 
        float arith_addf_65 = (arith_addf_62 + arith_mulf_64); 
        int arith_muli_66 = (for_iter_54 * arith_const_8); 
        int arith_addi_67 = (arith_muli_66 + arith_const_7); 
        func_arg_6[for_iter_53][arith_addi_67] = arith_addf_65; 
        memref_alloca_23[0] = memref_load_55; 
        int arith_muli_68 = (for_iter_54 * arith_const_8); 
        int arith_addi_69 = (arith_muli_68 + arith_const_7); 
        float memref_load_70 = func_arg_3[for_iter_53][arith_addi_69]; 
        memref_alloca_24[0] = memref_load_70; 
        memref_alloca_19[0] = memref_load_60; 
        int arith_muli_71 = (for_iter_54 * arith_const_8); 
        int arith_addi_72 = (arith_muli_71 + arith_const_7); 
        float memref_load_73 = func_arg_6[for_iter_53][arith_addi_72]; 
        memref_alloca_20[0] = memref_load_73; 
      }
    }
  }
  for (int for_iter_74 = arith_const_12; for_iter_74 < arith_const_11; for_iter_74 += arith_const_10) {
    for (int for_iter_75 = arith_const_12; for_iter_75 < arith_const_11; for_iter_75 += arith_const_10) {
      int arith_addi_76 = (for_iter_74 + arith_const_10); 
      for (int for_iter_77 = for_iter_74; for_iter_77 < arith_addi_76; for_iter_77 += arith_const_9) {
        int arith_addi_78 = (for_iter_75 + arith_const_10); 
        for (int for_iter_79 = for_iter_75; for_iter_79 < arith_addi_78; for_iter_79 += arith_const_9) {
          memref_alloca_26[0] = arith_const_17; 
          memref_alloca_25[0] = arith_const_17; 
          memref_alloca_28[0] = arith_const_17; 
          float memref_load_80 = func_arg_3[for_iter_77][for_iter_79]; 
          float arith_mulf_81 = (arith_divf_39 * memref_load_80); 
          float memref_load_82 = memref_alloca_28[0]; 
          float arith_mulf_83 = (arith_mulf_42 * memref_load_82); 
          float arith_addf_84 = (arith_mulf_81 + arith_mulf_83); 
          float memref_load_85 = memref_alloca_26[0]; 
          float arith_mulf_86 = (math_powf_49 * memref_load_85); 
          float arith_addf_87 = (arith_addf_84 + arith_mulf_86); 
          float memref_load_88 = memref_alloca_25[0]; 
          float arith_mulf_89 = (arith_negf_50 * memref_load_88); 
          float arith_addf_90 = (arith_addf_87 + arith_mulf_89); 
          func_arg_5[for_iter_77][for_iter_79] = arith_addf_90; 
          float memref_load_91 = func_arg_3[for_iter_77][for_iter_79]; 
          memref_alloca_28[0] = memref_load_91; 
          memref_alloca_25[0] = memref_load_85; 
          float memref_load_92 = func_arg_5[for_iter_77][for_iter_79]; 
          memref_alloca_26[0] = memref_load_92; 
          memref_alloca_20[0] = arith_const_17; 
          memref_alloca_19[0] = arith_const_17; 
          memref_alloca_24[0] = arith_const_17; 
          memref_alloca_23[0] = arith_const_17; 
          int arith_muli_93 = (for_iter_79 * arith_const_8); 
          int arith_addi_94 = (arith_muli_93 + arith_const_7); 
          float memref_load_95 = memref_alloca_24[0]; 
          float arith_mulf_96 = (arith_mulf_44 * memref_load_95); 
          float memref_load_97 = memref_alloca_23[0]; 
          float arith_mulf_98 = (arith_mulf_48 * memref_load_97); 
          float arith_addf_99 = (arith_mulf_96 + arith_mulf_98); 
          float memref_load_100 = memref_alloca_20[0]; 
          float arith_mulf_101 = (math_powf_49 * memref_load_100); 
          float arith_addf_102 = (arith_addf_99 + arith_mulf_101); 
          float memref_load_103 = memref_alloca_19[0]; 
          float arith_mulf_104 = (arith_negf_50 * memref_load_103); 
          float arith_addf_105 = (arith_addf_102 + arith_mulf_104); 
          int arith_muli_106 = (arith_addi_94 * arith_const_8); 
          int arith_addi_107 = (arith_muli_106 + arith_const_7); 
          func_arg_6[for_iter_77][arith_addi_107] = arith_addf_105; 
          memref_alloca_23[0] = memref_load_95; 
          int arith_muli_108 = (arith_addi_94 * arith_const_8); 
          int arith_addi_109 = (arith_muli_108 + arith_const_7); 
          float memref_load_110 = func_arg_3[for_iter_77][arith_addi_109]; 
          memref_alloca_24[0] = memref_load_110; 
          memref_alloca_19[0] = memref_load_100; 
          int arith_muli_111 = (arith_addi_94 * arith_const_8); 
          int arith_addi_112 = (arith_muli_111 + arith_const_7); 
          float memref_load_113 = func_arg_6[for_iter_77][arith_addi_112]; 
          memref_alloca_20[0] = memref_load_113; 
          float memref_load_114 = func_arg_5[for_iter_77][for_iter_79]; 
          float memref_load_115 = func_arg_6[for_iter_77][for_iter_79]; 
          float arith_addf_116 = (memref_load_114 + memref_load_115); 
          func_arg_4[for_iter_77][for_iter_79] = arith_addf_116; 
        }
      }
    }
  }
  for (int for_iter_117 = arith_const_12; for_iter_117 < arith_const_11; for_iter_117 += arith_const_10) {
    int arith_addi_118 = (for_iter_117 + arith_const_10); 
    for (int for_iter_119 = for_iter_117; for_iter_119 < arith_addi_118; for_iter_119 += arith_const_9) {
      memref_alloca_22[0] = arith_const_17; 
      memref_alloca_21[0] = arith_const_17; 
      memref_alloca_20[0] = arith_const_17; 
      memref_alloca_19[0] = arith_const_17; 
      for (int for_iter_120 = arith_const_12; for_iter_120 < arith_const_11; for_iter_120 += arith_const_9) {
        int arith_muli_121 = (for_iter_120 * arith_const_8); 
        int arith_addi_122 = (arith_muli_121 + arith_const_7); 
        float memref_load_123 = func_arg_5[arith_addi_122][for_iter_119]; 
        float memref_load_124 = func_arg_6[arith_addi_122][for_iter_119]; 
        float arith_addf_125 = (memref_load_123 + memref_load_124); 
        memref_alloc_18[arith_const_12][arith_const_12] = arith_addf_125; 
        float memref_load_126 = memref_alloca_22[0]; 
        float arith_mulf_127 = (arith_mulf_44 * memref_load_126); 
        float memref_load_128 = memref_alloca_21[0]; 
        float arith_mulf_129 = (arith_mulf_48 * memref_load_128); 
        float arith_addf_130 = (arith_mulf_127 + arith_mulf_129); 
        float memref_load_131 = memref_alloca_20[0]; 
        float arith_mulf_132 = (math_powf_49 * memref_load_131); 
        float arith_addf_133 = (arith_addf_130 + arith_mulf_132); 
        float memref_load_134 = memref_alloca_19[0]; 
        float arith_mulf_135 = (arith_negf_50 * memref_load_134); 
        float arith_addf_136 = (arith_addf_133 + arith_mulf_135); 
        int arith_muli_137 = (for_iter_120 * arith_const_8); 
        int arith_addi_138 = (arith_muli_137 + arith_const_7); 
        func_arg_6[arith_addi_138][for_iter_119] = arith_addf_136; 
        memref_alloca_21[0] = memref_load_126; 
        float memref_load_139 = memref_alloc_18[arith_const_12][arith_const_12]; 
        memref_alloca_22[0] = memref_load_139; 
        memref_alloca_19[0] = memref_load_131; 
        int arith_muli_140 = (for_iter_120 * arith_const_8); 
        int arith_addi_141 = (arith_muli_140 + arith_const_7); 
        float memref_load_142 = func_arg_6[arith_addi_141][for_iter_119]; 
        memref_alloca_20[0] = memref_load_142; 
      }
    }
  }
  for (int for_iter_143 = arith_const_12; for_iter_143 < arith_const_11; for_iter_143 += arith_const_10) {
    for (int for_iter_144 = arith_const_12; for_iter_144 < arith_const_11; for_iter_144 += arith_const_10) {
      int arith_addi_145 = (for_iter_143 + arith_const_10); 
      for (int for_iter_146 = for_iter_143; for_iter_146 < arith_addi_145; for_iter_146 += arith_const_9) {
        int arith_addi_147 = (for_iter_144 + arith_const_10); 
        for (int for_iter_148 = for_iter_144; for_iter_148 < arith_addi_147; for_iter_148 += arith_const_9) {
          memref_alloca_27[0] = arith_const_17; 
          memref_alloca_26[0] = arith_const_17; 
          memref_alloca_25[0] = arith_const_17; 
          float memref_load_149 = func_arg_4[for_iter_146][for_iter_148]; 
          float arith_mulf_150 = (arith_divf_39 * memref_load_149); 
          float memref_load_151 = memref_alloca_27[0]; 
          float arith_mulf_152 = (arith_mulf_42 * memref_load_151); 
          float arith_addf_153 = (arith_mulf_150 + arith_mulf_152); 
          float memref_load_154 = memref_alloca_26[0]; 
          float arith_mulf_155 = (math_powf_49 * memref_load_154); 
          float arith_addf_156 = (arith_addf_153 + arith_mulf_155); 
          float memref_load_157 = memref_alloca_25[0]; 
          float arith_mulf_158 = (arith_negf_50 * memref_load_157); 
          float arith_addf_159 = (arith_addf_156 + arith_mulf_158); 
          func_arg_5[for_iter_146][for_iter_148] = arith_addf_159; 
          float memref_load_160 = func_arg_4[for_iter_146][for_iter_148]; 
          memref_alloca_27[0] = memref_load_160; 
          memref_alloca_25[0] = memref_load_154; 
          float memref_load_161 = func_arg_5[for_iter_146][for_iter_148]; 
          memref_alloca_26[0] = memref_load_161; 
          memref_alloca_22[0] = arith_const_17; 
          memref_alloca_21[0] = arith_const_17; 
          memref_alloca_20[0] = arith_const_17; 
          memref_alloca_19[0] = arith_const_17; 
          int arith_muli_162 = (for_iter_146 * arith_const_8); 
          int arith_addi_163 = (arith_muli_162 + arith_const_7); 
          float memref_load_164 = memref_alloca_22[0]; 
          float arith_mulf_165 = (arith_mulf_44 * memref_load_164); 
          float memref_load_166 = memref_alloca_21[0]; 
          float arith_mulf_167 = (arith_mulf_48 * memref_load_166); 
          float arith_addf_168 = (arith_mulf_165 + arith_mulf_167); 
          float memref_load_169 = memref_alloca_20[0]; 
          float arith_mulf_170 = (math_powf_49 * memref_load_169); 
          float arith_addf_171 = (arith_addf_168 + arith_mulf_170); 
          float memref_load_172 = memref_alloca_19[0]; 
          float arith_mulf_173 = (arith_negf_50 * memref_load_172); 
          float arith_addf_174 = (arith_addf_171 + arith_mulf_173); 
          int arith_muli_175 = (arith_addi_163 * arith_const_8); 
          int arith_addi_176 = (arith_muli_175 + arith_const_7); 
          func_arg_6[arith_addi_176][for_iter_148] = arith_addf_174; 
          memref_alloca_21[0] = memref_load_164; 
          int arith_muli_177 = (arith_addi_163 * arith_const_8); 
          int arith_addi_178 = (arith_muli_177 + arith_const_7); 
          float memref_load_179 = func_arg_4[arith_addi_178][for_iter_148]; 
          memref_alloca_22[0] = memref_load_179; 
          memref_alloca_19[0] = memref_load_169; 
          int arith_muli_180 = (arith_addi_163 * arith_const_8); 
          int arith_addi_181 = (arith_muli_180 + arith_const_7); 
          float memref_load_182 = func_arg_6[arith_addi_181][for_iter_148]; 
          memref_alloca_20[0] = memref_load_182; 
          float memref_load_183 = func_arg_5[for_iter_146][for_iter_148]; 
          float memref_load_184 = func_arg_6[for_iter_146][for_iter_148]; 
          float arith_addf_185 = (memref_load_183 + memref_load_184); 
          func_arg_4[for_iter_146][for_iter_148] = arith_addf_185; 
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
