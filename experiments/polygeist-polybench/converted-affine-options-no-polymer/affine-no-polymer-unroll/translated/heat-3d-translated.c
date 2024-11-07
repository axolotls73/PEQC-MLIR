#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 9; 
  double arith_const_9 = 2.000000; 
  double arith_const_10 = 0.125000; 
  int arith_const_11 = 1; 
  int arith_const_12 = 21; 
  for (int for_iter_13 = arith_const_11; for_iter_13 < arith_const_12; for_iter_13 += arith_const_11) {
    for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_8; for_iter_14 += arith_const_11) {
      for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_8; for_iter_15 += arith_const_11) {
        for (int for_iter_16 = arith_const_11; for_iter_16 < arith_const_8; for_iter_16 += arith_const_7) {
          int arith_addi_17 = (for_iter_14 + arith_const_11); 
          double memref_load_18 = func_arg_2[arith_addi_17][for_iter_15][for_iter_16]; 
          double memref_load_19 = func_arg_2[for_iter_14][for_iter_15][for_iter_16]; 
          double arith_mulf_20 = (memref_load_19 * arith_const_9); 
          double arith_subf_21 = (memref_load_18 - arith_mulf_20); 
          int arith_addi_22 = (for_iter_14 + arith_const_6); 
          double memref_load_23 = func_arg_2[arith_addi_22][for_iter_15][for_iter_16]; 
          double arith_addf_24 = (arith_subf_21 + memref_load_23); 
          double arith_mulf_25 = (arith_addf_24 * arith_const_10); 
          int arith_addi_26 = (for_iter_15 + arith_const_11); 
          double memref_load_27 = func_arg_2[for_iter_14][arith_addi_26][for_iter_16]; 
          double arith_subf_28 = (memref_load_27 - arith_mulf_20); 
          int arith_addi_29 = (for_iter_15 + arith_const_6); 
          double memref_load_30 = func_arg_2[for_iter_14][arith_addi_29][for_iter_16]; 
          double arith_addf_31 = (arith_subf_28 + memref_load_30); 
          double arith_mulf_32 = (arith_addf_31 * arith_const_10); 
          double arith_addf_33 = (arith_mulf_25 + arith_mulf_32); 
          int arith_addi_34 = (for_iter_16 + arith_const_11); 
          double memref_load_35 = func_arg_2[for_iter_14][for_iter_15][arith_addi_34]; 
          double arith_subf_36 = (memref_load_35 - arith_mulf_20); 
          int arith_addi_37 = (for_iter_16 + arith_const_6); 
          double memref_load_38 = func_arg_2[for_iter_14][for_iter_15][arith_addi_37]; 
          double arith_addf_39 = (arith_subf_36 + memref_load_38); 
          double arith_mulf_40 = (arith_addf_39 * arith_const_10); 
          double arith_addf_41 = (arith_addf_33 + arith_mulf_40); 
          double arith_addf_42 = (arith_addf_41 + memref_load_19); 
          func_arg_3[for_iter_14][for_iter_15][for_iter_16] = arith_addf_42; 
          int arith_addi_43 = (for_iter_16 + arith_const_11); 
          int arith_addi_44 = (for_iter_14 + arith_const_11); 
          double memref_load_45 = func_arg_2[arith_addi_44][for_iter_15][arith_addi_43]; 
          double memref_load_46 = func_arg_2[for_iter_14][for_iter_15][arith_addi_43]; 
          double arith_mulf_47 = (memref_load_46 * arith_const_9); 
          double arith_subf_48 = (memref_load_45 - arith_mulf_47); 
          int arith_addi_49 = (for_iter_14 + arith_const_6); 
          double memref_load_50 = func_arg_2[arith_addi_49][for_iter_15][arith_addi_43]; 
          double arith_addf_51 = (arith_subf_48 + memref_load_50); 
          double arith_mulf_52 = (arith_addf_51 * arith_const_10); 
          int arith_addi_53 = (for_iter_15 + arith_const_11); 
          double memref_load_54 = func_arg_2[for_iter_14][arith_addi_53][arith_addi_43]; 
          double arith_subf_55 = (memref_load_54 - arith_mulf_47); 
          int arith_addi_56 = (for_iter_15 + arith_const_6); 
          double memref_load_57 = func_arg_2[for_iter_14][arith_addi_56][arith_addi_43]; 
          double arith_addf_58 = (arith_subf_55 + memref_load_57); 
          double arith_mulf_59 = (arith_addf_58 * arith_const_10); 
          double arith_addf_60 = (arith_mulf_52 + arith_mulf_59); 
          int arith_addi_61 = (arith_addi_43 + arith_const_11); 
          double memref_load_62 = func_arg_2[for_iter_14][for_iter_15][arith_addi_61]; 
          double arith_subf_63 = (memref_load_62 - arith_mulf_47); 
          int arith_addi_64 = (arith_addi_43 + arith_const_6); 
          double memref_load_65 = func_arg_2[for_iter_14][for_iter_15][arith_addi_64]; 
          double arith_addf_66 = (arith_subf_63 + memref_load_65); 
          double arith_mulf_67 = (arith_addf_66 * arith_const_10); 
          double arith_addf_68 = (arith_addf_60 + arith_mulf_67); 
          double arith_addf_69 = (arith_addf_68 + memref_load_46); 
          func_arg_3[for_iter_14][for_iter_15][arith_addi_43] = arith_addf_69; 
          int arith_addi_70 = (for_iter_16 + arith_const_5); 
          int arith_addi_71 = (for_iter_14 + arith_const_11); 
          double memref_load_72 = func_arg_2[arith_addi_71][for_iter_15][arith_addi_70]; 
          double memref_load_73 = func_arg_2[for_iter_14][for_iter_15][arith_addi_70]; 
          double arith_mulf_74 = (memref_load_73 * arith_const_9); 
          double arith_subf_75 = (memref_load_72 - arith_mulf_74); 
          int arith_addi_76 = (for_iter_14 + arith_const_6); 
          double memref_load_77 = func_arg_2[arith_addi_76][for_iter_15][arith_addi_70]; 
          double arith_addf_78 = (arith_subf_75 + memref_load_77); 
          double arith_mulf_79 = (arith_addf_78 * arith_const_10); 
          int arith_addi_80 = (for_iter_15 + arith_const_11); 
          double memref_load_81 = func_arg_2[for_iter_14][arith_addi_80][arith_addi_70]; 
          double arith_subf_82 = (memref_load_81 - arith_mulf_74); 
          int arith_addi_83 = (for_iter_15 + arith_const_6); 
          double memref_load_84 = func_arg_2[for_iter_14][arith_addi_83][arith_addi_70]; 
          double arith_addf_85 = (arith_subf_82 + memref_load_84); 
          double arith_mulf_86 = (arith_addf_85 * arith_const_10); 
          double arith_addf_87 = (arith_mulf_79 + arith_mulf_86); 
          int arith_addi_88 = (arith_addi_70 + arith_const_11); 
          double memref_load_89 = func_arg_2[for_iter_14][for_iter_15][arith_addi_88]; 
          double arith_subf_90 = (memref_load_89 - arith_mulf_74); 
          int arith_addi_91 = (arith_addi_70 + arith_const_6); 
          double memref_load_92 = func_arg_2[for_iter_14][for_iter_15][arith_addi_91]; 
          double arith_addf_93 = (arith_subf_90 + memref_load_92); 
          double arith_mulf_94 = (arith_addf_93 * arith_const_10); 
          double arith_addf_95 = (arith_addf_87 + arith_mulf_94); 
          double arith_addf_96 = (arith_addf_95 + memref_load_73); 
          func_arg_3[for_iter_14][for_iter_15][arith_addi_70] = arith_addf_96; 
          int arith_addi_97 = (for_iter_16 + arith_const_4); 
          int arith_addi_98 = (for_iter_14 + arith_const_11); 
          double memref_load_99 = func_arg_2[arith_addi_98][for_iter_15][arith_addi_97]; 
          double memref_load_100 = func_arg_2[for_iter_14][for_iter_15][arith_addi_97]; 
          double arith_mulf_101 = (memref_load_100 * arith_const_9); 
          double arith_subf_102 = (memref_load_99 - arith_mulf_101); 
          int arith_addi_103 = (for_iter_14 + arith_const_6); 
          double memref_load_104 = func_arg_2[arith_addi_103][for_iter_15][arith_addi_97]; 
          double arith_addf_105 = (arith_subf_102 + memref_load_104); 
          double arith_mulf_106 = (arith_addf_105 * arith_const_10); 
          int arith_addi_107 = (for_iter_15 + arith_const_11); 
          double memref_load_108 = func_arg_2[for_iter_14][arith_addi_107][arith_addi_97]; 
          double arith_subf_109 = (memref_load_108 - arith_mulf_101); 
          int arith_addi_110 = (for_iter_15 + arith_const_6); 
          double memref_load_111 = func_arg_2[for_iter_14][arith_addi_110][arith_addi_97]; 
          double arith_addf_112 = (arith_subf_109 + memref_load_111); 
          double arith_mulf_113 = (arith_addf_112 * arith_const_10); 
          double arith_addf_114 = (arith_mulf_106 + arith_mulf_113); 
          int arith_addi_115 = (arith_addi_97 + arith_const_11); 
          double memref_load_116 = func_arg_2[for_iter_14][for_iter_15][arith_addi_115]; 
          double arith_subf_117 = (memref_load_116 - arith_mulf_101); 
          int arith_addi_118 = (arith_addi_97 + arith_const_6); 
          double memref_load_119 = func_arg_2[for_iter_14][for_iter_15][arith_addi_118]; 
          double arith_addf_120 = (arith_subf_117 + memref_load_119); 
          double arith_mulf_121 = (arith_addf_120 * arith_const_10); 
          double arith_addf_122 = (arith_addf_114 + arith_mulf_121); 
          double arith_addf_123 = (arith_addf_122 + memref_load_100); 
          func_arg_3[for_iter_14][for_iter_15][arith_addi_97] = arith_addf_123; 
        }
      }
    }
    for (int for_iter_124 = arith_const_11; for_iter_124 < arith_const_8; for_iter_124 += arith_const_11) {
      for (int for_iter_125 = arith_const_11; for_iter_125 < arith_const_8; for_iter_125 += arith_const_11) {
        for (int for_iter_126 = arith_const_11; for_iter_126 < arith_const_8; for_iter_126 += arith_const_7) {
          int arith_addi_127 = (for_iter_124 + arith_const_11); 
          double memref_load_128 = func_arg_3[arith_addi_127][for_iter_125][for_iter_126]; 
          double memref_load_129 = func_arg_3[for_iter_124][for_iter_125][for_iter_126]; 
          double arith_mulf_130 = (memref_load_129 * arith_const_9); 
          double arith_subf_131 = (memref_load_128 - arith_mulf_130); 
          int arith_addi_132 = (for_iter_124 + arith_const_6); 
          double memref_load_133 = func_arg_3[arith_addi_132][for_iter_125][for_iter_126]; 
          double arith_addf_134 = (arith_subf_131 + memref_load_133); 
          double arith_mulf_135 = (arith_addf_134 * arith_const_10); 
          int arith_addi_136 = (for_iter_125 + arith_const_11); 
          double memref_load_137 = func_arg_3[for_iter_124][arith_addi_136][for_iter_126]; 
          double arith_subf_138 = (memref_load_137 - arith_mulf_130); 
          int arith_addi_139 = (for_iter_125 + arith_const_6); 
          double memref_load_140 = func_arg_3[for_iter_124][arith_addi_139][for_iter_126]; 
          double arith_addf_141 = (arith_subf_138 + memref_load_140); 
          double arith_mulf_142 = (arith_addf_141 * arith_const_10); 
          double arith_addf_143 = (arith_mulf_135 + arith_mulf_142); 
          int arith_addi_144 = (for_iter_126 + arith_const_11); 
          double memref_load_145 = func_arg_3[for_iter_124][for_iter_125][arith_addi_144]; 
          double arith_subf_146 = (memref_load_145 - arith_mulf_130); 
          int arith_addi_147 = (for_iter_126 + arith_const_6); 
          double memref_load_148 = func_arg_3[for_iter_124][for_iter_125][arith_addi_147]; 
          double arith_addf_149 = (arith_subf_146 + memref_load_148); 
          double arith_mulf_150 = (arith_addf_149 * arith_const_10); 
          double arith_addf_151 = (arith_addf_143 + arith_mulf_150); 
          double arith_addf_152 = (arith_addf_151 + memref_load_129); 
          func_arg_2[for_iter_124][for_iter_125][for_iter_126] = arith_addf_152; 
          int arith_addi_153 = (for_iter_126 + arith_const_11); 
          int arith_addi_154 = (for_iter_124 + arith_const_11); 
          double memref_load_155 = func_arg_3[arith_addi_154][for_iter_125][arith_addi_153]; 
          double memref_load_156 = func_arg_3[for_iter_124][for_iter_125][arith_addi_153]; 
          double arith_mulf_157 = (memref_load_156 * arith_const_9); 
          double arith_subf_158 = (memref_load_155 - arith_mulf_157); 
          int arith_addi_159 = (for_iter_124 + arith_const_6); 
          double memref_load_160 = func_arg_3[arith_addi_159][for_iter_125][arith_addi_153]; 
          double arith_addf_161 = (arith_subf_158 + memref_load_160); 
          double arith_mulf_162 = (arith_addf_161 * arith_const_10); 
          int arith_addi_163 = (for_iter_125 + arith_const_11); 
          double memref_load_164 = func_arg_3[for_iter_124][arith_addi_163][arith_addi_153]; 
          double arith_subf_165 = (memref_load_164 - arith_mulf_157); 
          int arith_addi_166 = (for_iter_125 + arith_const_6); 
          double memref_load_167 = func_arg_3[for_iter_124][arith_addi_166][arith_addi_153]; 
          double arith_addf_168 = (arith_subf_165 + memref_load_167); 
          double arith_mulf_169 = (arith_addf_168 * arith_const_10); 
          double arith_addf_170 = (arith_mulf_162 + arith_mulf_169); 
          int arith_addi_171 = (arith_addi_153 + arith_const_11); 
          double memref_load_172 = func_arg_3[for_iter_124][for_iter_125][arith_addi_171]; 
          double arith_subf_173 = (memref_load_172 - arith_mulf_157); 
          int arith_addi_174 = (arith_addi_153 + arith_const_6); 
          double memref_load_175 = func_arg_3[for_iter_124][for_iter_125][arith_addi_174]; 
          double arith_addf_176 = (arith_subf_173 + memref_load_175); 
          double arith_mulf_177 = (arith_addf_176 * arith_const_10); 
          double arith_addf_178 = (arith_addf_170 + arith_mulf_177); 
          double arith_addf_179 = (arith_addf_178 + memref_load_156); 
          func_arg_2[for_iter_124][for_iter_125][arith_addi_153] = arith_addf_179; 
          int arith_addi_180 = (for_iter_126 + arith_const_5); 
          int arith_addi_181 = (for_iter_124 + arith_const_11); 
          double memref_load_182 = func_arg_3[arith_addi_181][for_iter_125][arith_addi_180]; 
          double memref_load_183 = func_arg_3[for_iter_124][for_iter_125][arith_addi_180]; 
          double arith_mulf_184 = (memref_load_183 * arith_const_9); 
          double arith_subf_185 = (memref_load_182 - arith_mulf_184); 
          int arith_addi_186 = (for_iter_124 + arith_const_6); 
          double memref_load_187 = func_arg_3[arith_addi_186][for_iter_125][arith_addi_180]; 
          double arith_addf_188 = (arith_subf_185 + memref_load_187); 
          double arith_mulf_189 = (arith_addf_188 * arith_const_10); 
          int arith_addi_190 = (for_iter_125 + arith_const_11); 
          double memref_load_191 = func_arg_3[for_iter_124][arith_addi_190][arith_addi_180]; 
          double arith_subf_192 = (memref_load_191 - arith_mulf_184); 
          int arith_addi_193 = (for_iter_125 + arith_const_6); 
          double memref_load_194 = func_arg_3[for_iter_124][arith_addi_193][arith_addi_180]; 
          double arith_addf_195 = (arith_subf_192 + memref_load_194); 
          double arith_mulf_196 = (arith_addf_195 * arith_const_10); 
          double arith_addf_197 = (arith_mulf_189 + arith_mulf_196); 
          int arith_addi_198 = (arith_addi_180 + arith_const_11); 
          double memref_load_199 = func_arg_3[for_iter_124][for_iter_125][arith_addi_198]; 
          double arith_subf_200 = (memref_load_199 - arith_mulf_184); 
          int arith_addi_201 = (arith_addi_180 + arith_const_6); 
          double memref_load_202 = func_arg_3[for_iter_124][for_iter_125][arith_addi_201]; 
          double arith_addf_203 = (arith_subf_200 + memref_load_202); 
          double arith_mulf_204 = (arith_addf_203 * arith_const_10); 
          double arith_addf_205 = (arith_addf_197 + arith_mulf_204); 
          double arith_addf_206 = (arith_addf_205 + memref_load_183); 
          func_arg_2[for_iter_124][for_iter_125][arith_addi_180] = arith_addf_206; 
          int arith_addi_207 = (for_iter_126 + arith_const_4); 
          int arith_addi_208 = (for_iter_124 + arith_const_11); 
          double memref_load_209 = func_arg_3[arith_addi_208][for_iter_125][arith_addi_207]; 
          double memref_load_210 = func_arg_3[for_iter_124][for_iter_125][arith_addi_207]; 
          double arith_mulf_211 = (memref_load_210 * arith_const_9); 
          double arith_subf_212 = (memref_load_209 - arith_mulf_211); 
          int arith_addi_213 = (for_iter_124 + arith_const_6); 
          double memref_load_214 = func_arg_3[arith_addi_213][for_iter_125][arith_addi_207]; 
          double arith_addf_215 = (arith_subf_212 + memref_load_214); 
          double arith_mulf_216 = (arith_addf_215 * arith_const_10); 
          int arith_addi_217 = (for_iter_125 + arith_const_11); 
          double memref_load_218 = func_arg_3[for_iter_124][arith_addi_217][arith_addi_207]; 
          double arith_subf_219 = (memref_load_218 - arith_mulf_211); 
          int arith_addi_220 = (for_iter_125 + arith_const_6); 
          double memref_load_221 = func_arg_3[for_iter_124][arith_addi_220][arith_addi_207]; 
          double arith_addf_222 = (arith_subf_219 + memref_load_221); 
          double arith_mulf_223 = (arith_addf_222 * arith_const_10); 
          double arith_addf_224 = (arith_mulf_216 + arith_mulf_223); 
          int arith_addi_225 = (arith_addi_207 + arith_const_11); 
          double memref_load_226 = func_arg_3[for_iter_124][for_iter_125][arith_addi_225]; 
          double arith_subf_227 = (memref_load_226 - arith_mulf_211); 
          int arith_addi_228 = (arith_addi_207 + arith_const_6); 
          double memref_load_229 = func_arg_3[for_iter_124][for_iter_125][arith_addi_228]; 
          double arith_addf_230 = (arith_subf_227 + memref_load_229); 
          double arith_mulf_231 = (arith_addf_230 * arith_const_10); 
          double arith_addf_232 = (arith_addf_224 + arith_mulf_231); 
          double arith_addf_233 = (arith_addf_232 + memref_load_210); 
          func_arg_2[for_iter_124][for_iter_125][arith_addi_207] = arith_addf_233; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_heat_3d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
