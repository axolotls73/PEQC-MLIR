#pragma pocc-region-start
void kernel_gramschmidt(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = -28; 
  int arith_const_6 = 31; 
  int arith_const_7 = 38; 
  int arith_const_8 = 10; 
  int arith_const_9 = 16; 
  int arith_const_10 = 4; 
  int arith_const_11 = 5; 
  int arith_const_12 = -19; 
  int arith_const_13 = 39; 
  int arith_const_14 = 19; 
  int arith_const_15 = 20; 
  int arith_const_16 = 2; 
  int arith_const_17 = 32; 
  int arith_const_18 = 30; 
  int arith_const_19 = 1; 
  int arith_const_20 = 29; 
  int arith_const_21 = 0; 
  double arith_const_22 = 0.000000; 
  double* memref_alloca_23; 
  for (int for_iter_24 = arith_const_21; for_iter_24 < arith_const_20; for_iter_24 += arith_const_19) {
    int arith_addi_25 = (for_iter_24 + arith_const_19); 
    for (int for_iter_26 = arith_addi_25; for_iter_26 < arith_const_18; for_iter_26 += arith_const_19) {
      func_arg_3[for_iter_24][for_iter_26] = arith_const_22; 
    }
  }
  double _27; 
  memref_alloca_23[0] = _27; 
  for (int for_iter_28 = arith_const_21; for_iter_28 < arith_const_18; for_iter_28 += arith_const_17) {
    int arith_addi_29 = (for_iter_28 + arith_const_18); 
    for (int for_iter_30 = for_iter_28; for_iter_30 < arith_addi_29; for_iter_30 += arith_const_19) {
      for (int for_iter_31 = arith_const_21; for_iter_31 < arith_const_16; for_iter_31 += arith_const_19) {
        int arith_cmpi_32 = (for_iter_31 == arith_const_21); 
        if (arith_cmpi_32) {
          for (int for_iter_33 = arith_const_21; for_iter_33 < arith_const_15; for_iter_33 += arith_const_19) {
            double memref_load_34 = memref_alloca_23[0]; 
            double memref_load_35 = func_arg_2[for_iter_33][for_iter_30]; 
            double arith_mulf_36 = (memref_load_35 * memref_load_35); 
            double arith_addf_37 = (memref_load_34 + arith_mulf_36); 
            memref_alloca_23[0] = arith_addf_37; 
          }
        }
        int arith_muli_38 = (for_iter_31 * arith_const_17); 
        int arith_maxsi_39 = max(arith_muli_38, arith_const_14); 
        int arith_muli_40 = (for_iter_31 * arith_const_17); 
        int arith_addi_41 = (arith_muli_40 + arith_const_17); 
        int arith_minsi_42 = min(arith_addi_41, arith_const_13); 
        for (int for_iter_43 = arith_maxsi_39; for_iter_43 < arith_minsi_42; for_iter_43 += arith_const_19) {
          int arith_addi_44 = (for_iter_43 + arith_const_12); 
          double memref_load_45 = func_arg_2[arith_addi_44][for_iter_30]; 
          double memref_load_46 = func_arg_3[for_iter_30][for_iter_30]; 
          double arith_divf_47 = (memref_load_45 / memref_load_46); 
          int arith_addi_48 = (for_iter_43 + arith_const_12); 
          func_arg_4[arith_addi_48][for_iter_30] = arith_divf_47; 
        }
        int arith_cmpi_49 = (for_iter_31 == arith_const_21); 
        if (arith_cmpi_49) {
          memref_alloca_23[0] = arith_const_22; 
        }
      }
      int arith_muli_50 = (for_iter_30 * arith_const_11); 
      int arith_addi_51 = (arith_muli_50 + arith_const_10); 
      int arith_cmpi_52 = (arith_addi_51 <= arith_const_21); 
      int arith_subi_53 = (arith_const_21 - arith_addi_51); 
      int arith_subi_54 = (arith_addi_51 - arith_const_19); 
      int arith_select_55 = (arith_cmpi_52 ? arith_subi_53 : arith_subi_54); 
      int arith_divi_56 = (arith_select_55 / arith_const_9); 
      int arith_subi_57 = (arith_const_21 - arith_divi_56); 
      int arith_addi_58 = (arith_divi_56 + arith_const_19); 
      int arith_select_59 = (arith_cmpi_52 ? arith_subi_57 : arith_addi_58); 
      for (int for_iter_60 = arith_select_59; for_iter_60 < arith_const_8; for_iter_60 += arith_const_19) {
        for (int for_iter_61 = arith_const_21; for_iter_61 < arith_const_16; for_iter_61 += arith_const_19) {
          int arith_cmpi_62 = (for_iter_61 == arith_const_21); 
          if (arith_cmpi_62) {
            for (int for_iter_63 = arith_const_21; for_iter_63 < arith_const_14; for_iter_63 += arith_const_19) {
              int arith_muli_64 = (for_iter_60 * arith_const_17); 
              int arith_muli_65 = (for_iter_30 * arith_const_8); 
              int arith_addi_66 = (arith_muli_65 + arith_const_7); 
              int arith_maxsi_67 = max(arith_muli_64, arith_addi_66); 
              int arith_muli_68 = (for_iter_60 * arith_const_17); 
              int arith_addi_69 = (arith_muli_68 + arith_const_6); 
              for (int for_iter_70 = arith_maxsi_67; for_iter_70 < arith_addi_69; for_iter_70 += arith_const_19) {
                int arith_addi_71 = (for_iter_70 + arith_const_16); 
                int arith_remsi_72 = (arith_addi_71 % arith_const_8); 
                int arith_cmpi_73 = (arith_remsi_72 < arith_const_21); 
                int arith_addi_74 = (arith_remsi_72 + arith_const_8); 
                int arith_select_75 = (arith_cmpi_73 ? arith_addi_74 : arith_remsi_72); 
                int arith_cmpi_76 = (arith_select_75 == arith_const_21); 
                if (arith_cmpi_76) {
                  int arith_addi_77 = (for_iter_70 + arith_const_5); 
                  int arith_cmpi_78 = (arith_addi_77 <= arith_const_21); 
                  int arith_subi_79 = (arith_const_21 - arith_addi_77); 
                  int arith_subi_80 = (arith_addi_77 - arith_const_19); 
                  int arith_select_81 = (arith_cmpi_78 ? arith_subi_79 : arith_subi_80); 
                  int arith_divi_82 = (arith_select_81 / arith_const_8); 
                  int arith_subi_83 = (arith_const_21 - arith_divi_82); 
                  int arith_addi_84 = (arith_divi_82 + arith_const_19); 
                  int arith_select_85 = (arith_cmpi_78 ? arith_subi_83 : arith_addi_84); 
                  double memref_load_86 = func_arg_3[for_iter_30][arith_select_85]; 
                  double memref_load_87 = func_arg_4[for_iter_63][for_iter_30]; 
                  int arith_addi_88 = (for_iter_70 + arith_const_5); 
                  int arith_cmpi_89 = (arith_addi_88 <= arith_const_21); 
                  int arith_subi_90 = (arith_const_21 - arith_addi_88); 
                  int arith_subi_91 = (arith_addi_88 - arith_const_19); 
                  int arith_select_92 = (arith_cmpi_89 ? arith_subi_90 : arith_subi_91); 
                  int arith_divi_93 = (arith_select_92 / arith_const_8); 
                  int arith_subi_94 = (arith_const_21 - arith_divi_93); 
                  int arith_addi_95 = (arith_divi_93 + arith_const_19); 
                  int arith_select_96 = (arith_cmpi_89 ? arith_subi_94 : arith_addi_95); 
                  double memref_load_97 = func_arg_2[for_iter_63][arith_select_96]; 
                  double arith_mulf_98 = (memref_load_87 * memref_load_97); 
                  double arith_addf_99 = (memref_load_86 + arith_mulf_98); 
                  int arith_addi_100 = (for_iter_70 + arith_const_5); 
                  int arith_cmpi_101 = (arith_addi_100 <= arith_const_21); 
                  int arith_subi_102 = (arith_const_21 - arith_addi_100); 
                  int arith_subi_103 = (arith_addi_100 - arith_const_19); 
                  int arith_select_104 = (arith_cmpi_101 ? arith_subi_102 : arith_subi_103); 
                  int arith_divi_105 = (arith_select_104 / arith_const_8); 
                  int arith_subi_106 = (arith_const_21 - arith_divi_105); 
                  int arith_addi_107 = (arith_divi_105 + arith_const_19); 
                  int arith_select_108 = (arith_cmpi_101 ? arith_subi_106 : arith_addi_107); 
                  func_arg_3[for_iter_30][arith_select_108] = arith_addf_99; 
                }
              }
            }
          }
          int arith_cmpi_109 = (for_iter_61 == arith_const_21); 
          if (arith_cmpi_109) {
            int arith_muli_110 = (for_iter_60 * arith_const_17); 
            int arith_muli_111 = (for_iter_30 * arith_const_8); 
            int arith_addi_112 = (arith_muli_111 + arith_const_7); 
            int arith_maxsi_113 = max(arith_muli_110, arith_addi_112); 
            int arith_muli_114 = (for_iter_60 * arith_const_17); 
            int arith_addi_115 = (arith_muli_114 + arith_const_6); 
            for (int for_iter_116 = arith_maxsi_113; for_iter_116 < arith_addi_115; for_iter_116 += arith_const_19) {
              int arith_addi_117 = (for_iter_116 + arith_const_16); 
              int arith_remsi_118 = (arith_addi_117 % arith_const_8); 
              int arith_cmpi_119 = (arith_remsi_118 < arith_const_21); 
              int arith_addi_120 = (arith_remsi_118 + arith_const_8); 
              int arith_select_121 = (arith_cmpi_119 ? arith_addi_120 : arith_remsi_118); 
              int arith_cmpi_122 = (arith_select_121 == arith_const_21); 
              if (arith_cmpi_122) {
                int arith_addi_123 = (for_iter_116 + arith_const_5); 
                int arith_cmpi_124 = (arith_addi_123 <= arith_const_21); 
                int arith_subi_125 = (arith_const_21 - arith_addi_123); 
                int arith_subi_126 = (arith_addi_123 - arith_const_19); 
                int arith_select_127 = (arith_cmpi_124 ? arith_subi_125 : arith_subi_126); 
                int arith_divi_128 = (arith_select_127 / arith_const_8); 
                int arith_subi_129 = (arith_const_21 - arith_divi_128); 
                int arith_addi_130 = (arith_divi_128 + arith_const_19); 
                int arith_select_131 = (arith_cmpi_124 ? arith_subi_129 : arith_addi_130); 
                double memref_load_132 = func_arg_3[for_iter_30][arith_select_131]; 
                double memref_load_133 = func_arg_4[arith_const_14][for_iter_30]; 
                int arith_addi_134 = (for_iter_116 + arith_const_5); 
                int arith_cmpi_135 = (arith_addi_134 <= arith_const_21); 
                int arith_subi_136 = (arith_const_21 - arith_addi_134); 
                int arith_subi_137 = (arith_addi_134 - arith_const_19); 
                int arith_select_138 = (arith_cmpi_135 ? arith_subi_136 : arith_subi_137); 
                int arith_divi_139 = (arith_select_138 / arith_const_8); 
                int arith_subi_140 = (arith_const_21 - arith_divi_139); 
                int arith_addi_141 = (arith_divi_139 + arith_const_19); 
                int arith_select_142 = (arith_cmpi_135 ? arith_subi_140 : arith_addi_141); 
                double memref_load_143 = func_arg_2[arith_const_14][arith_select_142]; 
                double arith_mulf_144 = (memref_load_133 * memref_load_143); 
                double arith_addf_145 = (memref_load_132 + arith_mulf_144); 
                int arith_addi_146 = (for_iter_116 + arith_const_5); 
                int arith_cmpi_147 = (arith_addi_146 <= arith_const_21); 
                int arith_subi_148 = (arith_const_21 - arith_addi_146); 
                int arith_subi_149 = (arith_addi_146 - arith_const_19); 
                int arith_select_150 = (arith_cmpi_147 ? arith_subi_148 : arith_subi_149); 
                int arith_divi_151 = (arith_select_150 / arith_const_8); 
                int arith_subi_152 = (arith_const_21 - arith_divi_151); 
                int arith_addi_153 = (arith_divi_151 + arith_const_19); 
                int arith_select_154 = (arith_cmpi_147 ? arith_subi_152 : arith_addi_153); 
                func_arg_3[for_iter_30][arith_select_154] = arith_addf_145; 
              }
              int arith_addi_155 = (for_iter_116 + arith_const_16); 
              int arith_remsi_156 = (arith_addi_155 % arith_const_8); 
              int arith_cmpi_157 = (arith_remsi_156 < arith_const_21); 
              int arith_addi_158 = (arith_remsi_156 + arith_const_8); 
              int arith_select_159 = (arith_cmpi_157 ? arith_addi_158 : arith_remsi_156); 
              int arith_cmpi_160 = (arith_select_159 == arith_const_21); 
              if (arith_cmpi_160) {
                int arith_addi_161 = (for_iter_116 + arith_const_5); 
                int arith_cmpi_162 = (arith_addi_161 <= arith_const_21); 
                int arith_subi_163 = (arith_const_21 - arith_addi_161); 
                int arith_subi_164 = (arith_addi_161 - arith_const_19); 
                int arith_select_165 = (arith_cmpi_162 ? arith_subi_163 : arith_subi_164); 
                int arith_divi_166 = (arith_select_165 / arith_const_8); 
                int arith_subi_167 = (arith_const_21 - arith_divi_166); 
                int arith_addi_168 = (arith_divi_166 + arith_const_19); 
                int arith_select_169 = (arith_cmpi_162 ? arith_subi_167 : arith_addi_168); 
                double memref_load_170 = func_arg_2[arith_const_21][arith_select_169]; 
                double memref_load_171 = func_arg_4[arith_const_21][for_iter_30]; 
                int arith_addi_172 = (for_iter_116 + arith_const_5); 
                int arith_cmpi_173 = (arith_addi_172 <= arith_const_21); 
                int arith_subi_174 = (arith_const_21 - arith_addi_172); 
                int arith_subi_175 = (arith_addi_172 - arith_const_19); 
                int arith_select_176 = (arith_cmpi_173 ? arith_subi_174 : arith_subi_175); 
                int arith_divi_177 = (arith_select_176 / arith_const_8); 
                int arith_subi_178 = (arith_const_21 - arith_divi_177); 
                int arith_addi_179 = (arith_divi_177 + arith_const_19); 
                int arith_select_180 = (arith_cmpi_173 ? arith_subi_178 : arith_addi_179); 
                double memref_load_181 = func_arg_3[for_iter_30][arith_select_180]; 
                double arith_mulf_182 = (memref_load_171 * memref_load_181); 
                double arith_subf_183 = (memref_load_170 - arith_mulf_182); 
                int arith_addi_184 = (for_iter_116 + arith_const_5); 
                int arith_cmpi_185 = (arith_addi_184 <= arith_const_21); 
                int arith_subi_186 = (arith_const_21 - arith_addi_184); 
                int arith_subi_187 = (arith_addi_184 - arith_const_19); 
                int arith_select_188 = (arith_cmpi_185 ? arith_subi_186 : arith_subi_187); 
                int arith_divi_189 = (arith_select_188 / arith_const_8); 
                int arith_subi_190 = (arith_const_21 - arith_divi_189); 
                int arith_addi_191 = (arith_divi_189 + arith_const_19); 
                int arith_select_192 = (arith_cmpi_185 ? arith_subi_190 : arith_addi_191); 
                func_arg_2[arith_const_21][arith_select_192] = arith_subf_183; 
              }
            }
          }
          int arith_muli_193 = (for_iter_61 * arith_const_17); 
          int arith_maxsi_194 = max(arith_muli_193, arith_const_15); 
          int arith_muli_195 = (for_iter_61 * arith_const_17); 
          int arith_addi_196 = (arith_muli_195 + arith_const_17); 
          int arith_minsi_197 = min(arith_addi_196, arith_const_13); 
          for (int for_iter_198 = arith_maxsi_194; for_iter_198 < arith_minsi_197; for_iter_198 += arith_const_19) {
            int arith_muli_199 = (for_iter_60 * arith_const_17); 
            int arith_muli_200 = (for_iter_30 * arith_const_8); 
            int arith_addi_201 = (arith_muli_200 + arith_const_7); 
            int arith_maxsi_202 = max(arith_muli_199, arith_addi_201); 
            int arith_muli_203 = (for_iter_60 * arith_const_17); 
            int arith_addi_204 = (arith_muli_203 + arith_const_6); 
            for (int for_iter_205 = arith_maxsi_202; for_iter_205 < arith_addi_204; for_iter_205 += arith_const_19) {
              int arith_addi_206 = (for_iter_205 + arith_const_16); 
              int arith_remsi_207 = (arith_addi_206 % arith_const_8); 
              int arith_cmpi_208 = (arith_remsi_207 < arith_const_21); 
              int arith_addi_209 = (arith_remsi_207 + arith_const_8); 
              int arith_select_210 = (arith_cmpi_208 ? arith_addi_209 : arith_remsi_207); 
              int arith_cmpi_211 = (arith_select_210 == arith_const_21); 
              if (arith_cmpi_211) {
                int arith_addi_212 = (for_iter_198 + arith_const_12); 
                int arith_addi_213 = (for_iter_205 + arith_const_5); 
                int arith_cmpi_214 = (arith_addi_213 <= arith_const_21); 
                int arith_subi_215 = (arith_const_21 - arith_addi_213); 
                int arith_subi_216 = (arith_addi_213 - arith_const_19); 
                int arith_select_217 = (arith_cmpi_214 ? arith_subi_215 : arith_subi_216); 
                int arith_divi_218 = (arith_select_217 / arith_const_8); 
                int arith_subi_219 = (arith_const_21 - arith_divi_218); 
                int arith_addi_220 = (arith_divi_218 + arith_const_19); 
                int arith_select_221 = (arith_cmpi_214 ? arith_subi_219 : arith_addi_220); 
                double memref_load_222 = func_arg_2[arith_addi_212][arith_select_221]; 
                int arith_addi_223 = (for_iter_198 + arith_const_12); 
                double memref_load_224 = func_arg_4[arith_addi_223][for_iter_30]; 
                int arith_addi_225 = (for_iter_205 + arith_const_5); 
                int arith_cmpi_226 = (arith_addi_225 <= arith_const_21); 
                int arith_subi_227 = (arith_const_21 - arith_addi_225); 
                int arith_subi_228 = (arith_addi_225 - arith_const_19); 
                int arith_select_229 = (arith_cmpi_226 ? arith_subi_227 : arith_subi_228); 
                int arith_divi_230 = (arith_select_229 / arith_const_8); 
                int arith_subi_231 = (arith_const_21 - arith_divi_230); 
                int arith_addi_232 = (arith_divi_230 + arith_const_19); 
                int arith_select_233 = (arith_cmpi_226 ? arith_subi_231 : arith_addi_232); 
                double memref_load_234 = func_arg_3[for_iter_30][arith_select_233]; 
                double arith_mulf_235 = (memref_load_224 * memref_load_234); 
                double arith_subf_236 = (memref_load_222 - arith_mulf_235); 
                int arith_addi_237 = (for_iter_198 + arith_const_12); 
                int arith_addi_238 = (for_iter_205 + arith_const_5); 
                int arith_cmpi_239 = (arith_addi_238 <= arith_const_21); 
                int arith_subi_240 = (arith_const_21 - arith_addi_238); 
                int arith_subi_241 = (arith_addi_238 - arith_const_19); 
                int arith_select_242 = (arith_cmpi_239 ? arith_subi_240 : arith_subi_241); 
                int arith_divi_243 = (arith_select_242 / arith_const_8); 
                int arith_subi_244 = (arith_const_21 - arith_divi_243); 
                int arith_addi_245 = (arith_divi_243 + arith_const_19); 
                int arith_select_246 = (arith_cmpi_239 ? arith_subi_244 : arith_addi_245); 
                func_arg_2[arith_addi_237][arith_select_246] = arith_subf_236; 
              }
            }
          }
        }
      }
      double memref_load_247 = memref_alloca_23[0]; 
      double math_sqrt_248 = sqrt(memref_load_247); 
      func_arg_3[for_iter_30][for_iter_30] = math_sqrt_248; 
    }
  }
  return; 

}
#pragma pocc-region-end
