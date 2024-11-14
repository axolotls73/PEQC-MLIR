#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
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
  memref_alloca_31[arith_const_13] = arith_mulf_63; 
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
  memref_alloca_39[0] = _72; 
  float _73; 
  memref_alloca_26[0] = _73; 
  float _74; 
  memref_alloca_19[0] = _74; 
  float _75; 
  memref_alloca_40[0] = _75; 
  for (int for_iter_76 = arith_const_13; for_iter_76 < arith_const_12; for_iter_76 += arith_const_11) {
    memref_alloca_39[0] = arith_const_14; 
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_19[0] = arith_const_14; 
    for (int for_iter_77 = arith_const_13; for_iter_77 < arith_const_12; for_iter_77 += arith_const_11) {
      float memref_load_78 = memref_alloca_24[arith_const_13]; 
      float memref_load_79 = func_arg_3[for_iter_76][for_iter_77]; 
      float arith_mulf_80 = (memref_load_78 * memref_load_79); 
      float memref_load_81 = memref_alloca_31[arith_const_13]; 
      float memref_load_82 = memref_alloca_39[0]; 
      float arith_mulf_83 = (memref_load_81 * memref_load_82); 
      float arith_addf_84 = (arith_mulf_80 + arith_mulf_83); 
      float memref_load_85 = memref_alloca_30[arith_const_13]; 
      float memref_load_86 = memref_alloca_19[0]; 
      memref_alloca_23[arith_const_13] = memref_load_86; 
      float arith_mulf_87 = (memref_load_85 * memref_load_86); 
      float arith_addf_88 = (arith_addf_84 + arith_mulf_87); 
      float memref_load_89 = memref_alloca_21[arith_const_13]; 
      float memref_load_90 = memref_alloca_40[0]; 
      float arith_mulf_91 = (memref_load_89 * memref_load_90); 
      float arith_addf_92 = (arith_addf_88 + arith_mulf_91); 
      func_arg_5[for_iter_76][for_iter_77] = arith_addf_92; 
      float memref_load_93 = func_arg_5[for_iter_76][for_iter_77]; 
      memref_alloca_19[0] = memref_load_93; 
      float memref_load_94 = memref_alloca_23[arith_const_13]; 
      memref_alloca_40[0] = memref_load_94; 
      float memref_load_95 = func_arg_3[for_iter_76][for_iter_77]; 
      memref_alloca_39[0] = memref_load_95; 
    }
  }
  float _96; 
  memref_alloca_18[0] = _96; 
  float _97; 
  memref_alloca_36[0] = _97; 
  float _98; 
  memref_alloca_25[0] = _98; 
  float _99; 
  memref_alloca_38[0] = _99; 
  float _100; 
  memref_alloca_37[0] = _100; 
  float _101; 
  memref_alloca_41[0] = _101; 
  for (int for_iter_102 = arith_const_13; for_iter_102 < arith_const_12; for_iter_102 += arith_const_11) {
    memref_alloca_36[0] = arith_const_14; 
    memref_alloca_18[0] = arith_const_14; 
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_37[0] = arith_const_14; 
    for (int for_iter_103 = arith_const_13; for_iter_103 < arith_const_12; for_iter_103 += arith_const_11) {
      float memref_load_104 = memref_alloca_27[arith_const_13]; 
      float memref_load_105 = memref_alloca_18[0]; 
      memref_alloca_28[arith_const_13] = memref_load_105; 
      float arith_mulf_106 = (memref_load_104 * memref_load_105); 
      float memref_load_107 = memref_alloca_29[arith_const_13]; 
      float memref_load_108 = memref_alloca_36[0]; 
      float arith_mulf_109 = (memref_load_107 * memref_load_108); 
      float arith_addf_110 = (arith_mulf_106 + arith_mulf_109); 
      float memref_load_111 = memref_alloca_30[arith_const_13]; 
      float memref_load_112 = memref_alloca_37[0]; 
      memref_alloca_33[arith_const_13] = memref_load_112; 
      float arith_mulf_113 = (memref_load_111 * memref_load_112); 
      float arith_addf_114 = (arith_addf_110 + arith_mulf_113); 
      float memref_load_115 = memref_alloca_21[arith_const_13]; 
      float memref_load_116 = memref_alloca_41[0]; 
      float arith_mulf_117 = (memref_load_115 * memref_load_116); 
      float arith_addf_118 = (arith_addf_114 + arith_mulf_117); 
      int arith_muli_119 = (for_iter_103 * arith_const_10); 
      int arith_addi_120 = (arith_muli_119 + arith_const_9); 
      func_arg_6[for_iter_102][arith_addi_120] = arith_addf_118; 
      int arith_muli_121 = (for_iter_103 * arith_const_10); 
      int arith_addi_122 = (arith_muli_121 + arith_const_9); 
      float memref_load_123 = func_arg_6[for_iter_102][arith_addi_122]; 
      memref_alloca_37[0] = memref_load_123; 
      float memref_load_124 = memref_alloca_33[arith_const_13]; 
      memref_alloca_41[0] = memref_load_124; 
      int arith_muli_125 = (for_iter_103 * arith_const_10); 
      int arith_addi_126 = (arith_muli_125 + arith_const_9); 
      float memref_load_127 = func_arg_3[for_iter_102][arith_addi_126]; 
      memref_alloca_18[0] = memref_load_127; 
      float memref_load_128 = memref_alloca_28[arith_const_13]; 
      memref_alloca_36[0] = memref_load_128; 
    }
  }
  int* async_group_129; 
  int async_group_index_130 = 0; 
  int for_iter_arg_132 = arith_const_13; 
  for (int for_iter_131 = arith_const_13; for_iter_131 < arith_const_8; for_iter_131 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_133); 
    #pragma peqc async_execute
    {
      for (int for_iter_134 = arith_const_13; for_iter_134 < arith_const_8; for_iter_134 += arith_const_11) {
        int arith_muli_135 = (for_iter_131 * arith_const_7); 
        int arith_muli_136 = (for_iter_131 * arith_const_7); 
        int arith_addi_137 = (arith_muli_136 + arith_const_7); 
        for (int for_iter_138 = arith_muli_135; for_iter_138 < arith_addi_137; for_iter_138 += arith_const_11) {
          int arith_muli_139 = (for_iter_134 * arith_const_7); 
          int arith_muli_140 = (for_iter_134 * arith_const_7); 
          int arith_addi_141 = (arith_muli_140 + arith_const_7); 
          for (int for_iter_142 = arith_muli_139; for_iter_142 < arith_addi_141; for_iter_142 += arith_const_11) {
            float memref_load_143 = func_arg_5[for_iter_138][for_iter_142]; 
            float memref_load_144 = func_arg_6[for_iter_138][for_iter_142]; 
            float arith_addf_145 = (memref_load_143 + memref_load_144); 
            func_arg_4[for_iter_138][for_iter_142] = arith_addf_145; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_133, PAST_TASK_FINISHED); 
    }
    async_group_129[async_group_index_130] = execute_token_133; 
    async_group_index_130++; 
    int arith_addi_146 = (for_iter_arg_132 + arith_const_11); 
    for_iter_arg_132 = arith_addi_146; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_129, async_group_index_130, PAST_TASK_FINISHED); 
  for (int for_iter_147 = arith_const_13; for_iter_147 < arith_const_12; for_iter_147 += arith_const_11) {
    memref_alloca_40[0] = arith_const_14; 
    memref_alloca_19[0] = arith_const_14; 
    memref_alloca_26[0] = arith_const_14; 
    for (int for_iter_148 = arith_const_13; for_iter_148 < arith_const_12; for_iter_148 += arith_const_11) {
      float memref_load_149 = memref_alloca_24[arith_const_13]; 
      float memref_load_150 = func_arg_4[for_iter_148][for_iter_147]; 
      float arith_mulf_151 = (memref_load_149 * memref_load_150); 
      float memref_load_152 = memref_alloca_31[arith_const_13]; 
      float memref_load_153 = memref_alloca_26[0]; 
      float arith_mulf_154 = (memref_load_152 * memref_load_153); 
      float arith_addf_155 = (arith_mulf_151 + arith_mulf_154); 
      float memref_load_156 = memref_alloca_30[arith_const_13]; 
      float memref_load_157 = memref_alloca_19[0]; 
      memref_alloca_34[arith_const_13] = memref_load_157; 
      float arith_mulf_158 = (memref_load_156 * memref_load_157); 
      float arith_addf_159 = (arith_addf_155 + arith_mulf_158); 
      float memref_load_160 = memref_alloca_21[arith_const_13]; 
      float memref_load_161 = memref_alloca_40[0]; 
      float arith_mulf_162 = (memref_load_160 * memref_load_161); 
      float arith_addf_163 = (arith_addf_159 + arith_mulf_162); 
      func_arg_5[for_iter_148][for_iter_147] = arith_addf_163; 
      float memref_load_164 = func_arg_5[for_iter_148][for_iter_147]; 
      memref_alloca_19[0] = memref_load_164; 
      float memref_load_165 = memref_alloca_34[arith_const_13]; 
      memref_alloca_40[0] = memref_load_165; 
      float memref_load_166 = func_arg_4[for_iter_148][for_iter_147]; 
      memref_alloca_26[0] = memref_load_166; 
    }
  }
  for (int for_iter_167 = arith_const_13; for_iter_167 < arith_const_12; for_iter_167 += arith_const_11) {
    memref_alloca_41[0] = arith_const_14; 
    memref_alloca_37[0] = arith_const_14; 
    memref_alloca_38[0] = arith_const_14; 
    memref_alloca_25[0] = arith_const_14; 
    for (int for_iter_168 = arith_const_13; for_iter_168 < arith_const_12; for_iter_168 += arith_const_11) {
      float memref_load_169 = memref_alloca_27[arith_const_13]; 
      float memref_load_170 = memref_alloca_25[0]; 
      memref_alloca_32[arith_const_13] = memref_load_170; 
      float arith_mulf_171 = (memref_load_169 * memref_load_170); 
      float memref_load_172 = memref_alloca_29[arith_const_13]; 
      float memref_load_173 = memref_alloca_38[0]; 
      float arith_mulf_174 = (memref_load_172 * memref_load_173); 
      float arith_addf_175 = (arith_mulf_171 + arith_mulf_174); 
      float memref_load_176 = memref_alloca_30[arith_const_13]; 
      float memref_load_177 = memref_alloca_37[0]; 
      memref_alloca_35[arith_const_13] = memref_load_177; 
      float arith_mulf_178 = (memref_load_176 * memref_load_177); 
      float arith_addf_179 = (arith_addf_175 + arith_mulf_178); 
      float memref_load_180 = memref_alloca_21[arith_const_13]; 
      float memref_load_181 = memref_alloca_41[0]; 
      float arith_mulf_182 = (memref_load_180 * memref_load_181); 
      float arith_addf_183 = (arith_addf_179 + arith_mulf_182); 
      int arith_muli_184 = (for_iter_168 * arith_const_10); 
      int arith_addi_185 = (arith_muli_184 + arith_const_9); 
      func_arg_6[arith_addi_185][for_iter_167] = arith_addf_183; 
      int arith_muli_186 = (for_iter_168 * arith_const_10); 
      int arith_addi_187 = (arith_muli_186 + arith_const_9); 
      float memref_load_188 = func_arg_6[arith_addi_187][for_iter_167]; 
      memref_alloca_37[0] = memref_load_188; 
      float memref_load_189 = memref_alloca_35[arith_const_13]; 
      memref_alloca_41[0] = memref_load_189; 
      int arith_muli_190 = (for_iter_168 * arith_const_10); 
      int arith_addi_191 = (arith_muli_190 + arith_const_9); 
      float memref_load_192 = func_arg_4[arith_addi_191][for_iter_167]; 
      memref_alloca_25[0] = memref_load_192; 
      float memref_load_193 = memref_alloca_32[arith_const_13]; 
      memref_alloca_38[0] = memref_load_193; 
    }
  }
  int* async_group_194; 
  int async_group_index_195 = 0; 
  int for_iter_arg_197 = arith_const_13; 
  for (int for_iter_196 = arith_const_13; for_iter_196 < arith_const_8; for_iter_196 += arith_const_11) {
    PAST_NEW_SEMAPHORE(execute_token_198); 
    #pragma peqc async_execute
    {
      for (int for_iter_199 = arith_const_13; for_iter_199 < arith_const_8; for_iter_199 += arith_const_11) {
        int arith_muli_200 = (for_iter_196 * arith_const_7); 
        int arith_muli_201 = (for_iter_196 * arith_const_7); 
        int arith_addi_202 = (arith_muli_201 + arith_const_7); 
        for (int for_iter_203 = arith_muli_200; for_iter_203 < arith_addi_202; for_iter_203 += arith_const_11) {
          int arith_muli_204 = (for_iter_199 * arith_const_7); 
          int arith_muli_205 = (for_iter_199 * arith_const_7); 
          int arith_addi_206 = (arith_muli_205 + arith_const_7); 
          for (int for_iter_207 = arith_muli_204; for_iter_207 < arith_addi_206; for_iter_207 += arith_const_11) {
            float memref_load_208 = func_arg_5[for_iter_203][for_iter_207]; 
            float memref_load_209 = func_arg_6[for_iter_203][for_iter_207]; 
            float arith_addf_210 = (memref_load_208 + memref_load_209); 
            func_arg_4[for_iter_203][for_iter_207] = arith_addf_210; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_198, PAST_TASK_FINISHED); 
    }
    async_group_194[async_group_index_195] = execute_token_198; 
    async_group_index_195++; 
    int arith_addi_211 = (for_iter_arg_197 + arith_const_11); 
    for_iter_arg_197 = arith_addi_211; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_194, async_group_index_195, PAST_TASK_FINISHED); 
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

#pragma peqc async_execute
{
  kernel_deriche(w, h, alpha, imgIn, imgOut, y1, y2);
}
}

#pragma pocc-region-end
