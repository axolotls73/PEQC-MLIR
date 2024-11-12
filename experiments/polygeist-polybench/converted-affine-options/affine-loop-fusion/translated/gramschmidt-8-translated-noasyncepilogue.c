#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
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
  int arith_const_14 = 32; 
  int arith_const_15 = 19; 
  int arith_const_16 = 20; 
  int arith_const_17 = 2; 
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
  for (int for_iter_28 = arith_const_21; for_iter_28 < arith_const_18; for_iter_28 += arith_const_19) {
    for (int for_iter_29 = arith_const_21; for_iter_29 < arith_const_17; for_iter_29 += arith_const_19) {
      int arith_cmpi_30 = (for_iter_29 == arith_const_21); 
      if (arith_cmpi_30) {
        for (int for_iter_31 = arith_const_21; for_iter_31 < arith_const_16; for_iter_31 += arith_const_19) {
          double memref_load_32 = memref_alloca_23[0]; 
          double memref_load_33 = func_arg_2[for_iter_31][for_iter_28]; 
          double arith_mulf_34 = (memref_load_33 * memref_load_33); 
          double arith_addf_35 = (memref_load_32 + arith_mulf_34); 
          memref_alloca_23[0] = arith_addf_35; 
        }
      }
      int arith_muli_36 = (for_iter_29 * arith_const_14); 
      int arith_maxsi_37 = max(arith_muli_36, arith_const_15); 
      int arith_muli_38 = (for_iter_29 * arith_const_14); 
      int arith_addi_39 = (arith_muli_38 + arith_const_14); 
      int arith_minsi_40 = min(arith_addi_39, arith_const_13); 
      for (int for_iter_41 = arith_maxsi_37; for_iter_41 < arith_minsi_40; for_iter_41 += arith_const_19) {
        int arith_addi_42 = (for_iter_41 + arith_const_12); 
        double memref_load_43 = func_arg_2[arith_addi_42][for_iter_28]; 
        double memref_load_44 = func_arg_3[for_iter_28][for_iter_28]; 
        double arith_divf_45 = (memref_load_43 / memref_load_44); 
        int arith_addi_46 = (for_iter_41 + arith_const_12); 
        func_arg_4[arith_addi_46][for_iter_28] = arith_divf_45; 
      }
      int arith_cmpi_47 = (for_iter_29 == arith_const_21); 
      if (arith_cmpi_47) {
        memref_alloca_23[0] = arith_const_22; 
      }
    }
    for (int for_iter_48 = arith_const_21; for_iter_48 < arith_const_17; for_iter_48 += arith_const_19) {
      int arith_muli_49 = (for_iter_28 * arith_const_11); 
      int arith_addi_50 = (arith_muli_49 + arith_const_10); 
      int arith_cmpi_51 = (arith_addi_50 <= arith_const_21); 
      int arith_subi_52 = (arith_const_21 - arith_addi_50); 
      int arith_subi_53 = (arith_addi_50 - arith_const_19); 
      int arith_select_54 = (arith_cmpi_51 ? arith_subi_52 : arith_subi_53); 
      int arith_divi_55 = (arith_select_54 / arith_const_9); 
      int arith_subi_56 = (arith_const_21 - arith_divi_55); 
      int arith_addi_57 = (arith_divi_55 + arith_const_19); 
      int arith_select_58 = (arith_cmpi_51 ? arith_subi_56 : arith_addi_57); 
      for (int for_iter_59 = arith_select_58; for_iter_59 < arith_const_8; for_iter_59 += arith_const_19) {
        int arith_cmpi_60 = (for_iter_48 == arith_const_21); 
        if (arith_cmpi_60) {
          for (int for_iter_61 = arith_const_21; for_iter_61 < arith_const_15; for_iter_61 += arith_const_19) {
            int arith_muli_62 = (for_iter_59 * arith_const_14); 
            int arith_muli_63 = (for_iter_28 * arith_const_8); 
            int arith_addi_64 = (arith_muli_63 + arith_const_7); 
            int arith_maxsi_65 = max(arith_muli_62, arith_addi_64); 
            int arith_muli_66 = (for_iter_59 * arith_const_14); 
            int arith_addi_67 = (arith_muli_66 + arith_const_6); 
            for (int for_iter_68 = arith_maxsi_65; for_iter_68 < arith_addi_67; for_iter_68 += arith_const_19) {
              int arith_addi_69 = (for_iter_68 + arith_const_17); 
              int arith_remsi_70 = (arith_addi_69 % arith_const_8); 
              int arith_cmpi_71 = (arith_remsi_70 < arith_const_21); 
              int arith_addi_72 = (arith_remsi_70 + arith_const_8); 
              int arith_select_73 = (arith_cmpi_71 ? arith_addi_72 : arith_remsi_70); 
              int arith_cmpi_74 = (arith_select_73 == arith_const_21); 
              if (arith_cmpi_74) {
                int arith_addi_75 = (for_iter_68 + arith_const_5); 
                int arith_cmpi_76 = (arith_addi_75 <= arith_const_21); 
                int arith_subi_77 = (arith_const_21 - arith_addi_75); 
                int arith_subi_78 = (arith_addi_75 - arith_const_19); 
                int arith_select_79 = (arith_cmpi_76 ? arith_subi_77 : arith_subi_78); 
                int arith_divi_80 = (arith_select_79 / arith_const_8); 
                int arith_subi_81 = (arith_const_21 - arith_divi_80); 
                int arith_addi_82 = (arith_divi_80 + arith_const_19); 
                int arith_select_83 = (arith_cmpi_76 ? arith_subi_81 : arith_addi_82); 
                double memref_load_84 = func_arg_3[for_iter_28][arith_select_83]; 
                double memref_load_85 = func_arg_4[for_iter_61][for_iter_28]; 
                int arith_addi_86 = (for_iter_68 + arith_const_5); 
                int arith_cmpi_87 = (arith_addi_86 <= arith_const_21); 
                int arith_subi_88 = (arith_const_21 - arith_addi_86); 
                int arith_subi_89 = (arith_addi_86 - arith_const_19); 
                int arith_select_90 = (arith_cmpi_87 ? arith_subi_88 : arith_subi_89); 
                int arith_divi_91 = (arith_select_90 / arith_const_8); 
                int arith_subi_92 = (arith_const_21 - arith_divi_91); 
                int arith_addi_93 = (arith_divi_91 + arith_const_19); 
                int arith_select_94 = (arith_cmpi_87 ? arith_subi_92 : arith_addi_93); 
                double memref_load_95 = func_arg_2[for_iter_61][arith_select_94]; 
                double arith_mulf_96 = (memref_load_85 * memref_load_95); 
                double arith_addf_97 = (memref_load_84 + arith_mulf_96); 
                int arith_addi_98 = (for_iter_68 + arith_const_5); 
                int arith_cmpi_99 = (arith_addi_98 <= arith_const_21); 
                int arith_subi_100 = (arith_const_21 - arith_addi_98); 
                int arith_subi_101 = (arith_addi_98 - arith_const_19); 
                int arith_select_102 = (arith_cmpi_99 ? arith_subi_100 : arith_subi_101); 
                int arith_divi_103 = (arith_select_102 / arith_const_8); 
                int arith_subi_104 = (arith_const_21 - arith_divi_103); 
                int arith_addi_105 = (arith_divi_103 + arith_const_19); 
                int arith_select_106 = (arith_cmpi_99 ? arith_subi_104 : arith_addi_105); 
                func_arg_3[for_iter_28][arith_select_106] = arith_addf_97; 
              }
            }
          }
        }
        int arith_cmpi_107 = (for_iter_48 == arith_const_21); 
        if (arith_cmpi_107) {
          int arith_muli_108 = (for_iter_59 * arith_const_14); 
          int arith_muli_109 = (for_iter_28 * arith_const_8); 
          int arith_addi_110 = (arith_muli_109 + arith_const_7); 
          int arith_maxsi_111 = max(arith_muli_108, arith_addi_110); 
          int arith_muli_112 = (for_iter_59 * arith_const_14); 
          int arith_addi_113 = (arith_muli_112 + arith_const_6); 
          for (int for_iter_114 = arith_maxsi_111; for_iter_114 < arith_addi_113; for_iter_114 += arith_const_19) {
            int arith_addi_115 = (for_iter_114 + arith_const_17); 
            int arith_remsi_116 = (arith_addi_115 % arith_const_8); 
            int arith_cmpi_117 = (arith_remsi_116 < arith_const_21); 
            int arith_addi_118 = (arith_remsi_116 + arith_const_8); 
            int arith_select_119 = (arith_cmpi_117 ? arith_addi_118 : arith_remsi_116); 
            int arith_cmpi_120 = (arith_select_119 == arith_const_21); 
            if (arith_cmpi_120) {
              int arith_addi_121 = (for_iter_114 + arith_const_5); 
              int arith_cmpi_122 = (arith_addi_121 <= arith_const_21); 
              int arith_subi_123 = (arith_const_21 - arith_addi_121); 
              int arith_subi_124 = (arith_addi_121 - arith_const_19); 
              int arith_select_125 = (arith_cmpi_122 ? arith_subi_123 : arith_subi_124); 
              int arith_divi_126 = (arith_select_125 / arith_const_8); 
              int arith_subi_127 = (arith_const_21 - arith_divi_126); 
              int arith_addi_128 = (arith_divi_126 + arith_const_19); 
              int arith_select_129 = (arith_cmpi_122 ? arith_subi_127 : arith_addi_128); 
              double memref_load_130 = func_arg_3[for_iter_28][arith_select_129]; 
              double memref_load_131 = func_arg_4[arith_const_15][for_iter_28]; 
              int arith_addi_132 = (for_iter_114 + arith_const_5); 
              int arith_cmpi_133 = (arith_addi_132 <= arith_const_21); 
              int arith_subi_134 = (arith_const_21 - arith_addi_132); 
              int arith_subi_135 = (arith_addi_132 - arith_const_19); 
              int arith_select_136 = (arith_cmpi_133 ? arith_subi_134 : arith_subi_135); 
              int arith_divi_137 = (arith_select_136 / arith_const_8); 
              int arith_subi_138 = (arith_const_21 - arith_divi_137); 
              int arith_addi_139 = (arith_divi_137 + arith_const_19); 
              int arith_select_140 = (arith_cmpi_133 ? arith_subi_138 : arith_addi_139); 
              double memref_load_141 = func_arg_2[arith_const_15][arith_select_140]; 
              double arith_mulf_142 = (memref_load_131 * memref_load_141); 
              double arith_addf_143 = (memref_load_130 + arith_mulf_142); 
              int arith_addi_144 = (for_iter_114 + arith_const_5); 
              int arith_cmpi_145 = (arith_addi_144 <= arith_const_21); 
              int arith_subi_146 = (arith_const_21 - arith_addi_144); 
              int arith_subi_147 = (arith_addi_144 - arith_const_19); 
              int arith_select_148 = (arith_cmpi_145 ? arith_subi_146 : arith_subi_147); 
              int arith_divi_149 = (arith_select_148 / arith_const_8); 
              int arith_subi_150 = (arith_const_21 - arith_divi_149); 
              int arith_addi_151 = (arith_divi_149 + arith_const_19); 
              int arith_select_152 = (arith_cmpi_145 ? arith_subi_150 : arith_addi_151); 
              func_arg_3[for_iter_28][arith_select_152] = arith_addf_143; 
            }
            int arith_addi_153 = (for_iter_114 + arith_const_17); 
            int arith_remsi_154 = (arith_addi_153 % arith_const_8); 
            int arith_cmpi_155 = (arith_remsi_154 < arith_const_21); 
            int arith_addi_156 = (arith_remsi_154 + arith_const_8); 
            int arith_select_157 = (arith_cmpi_155 ? arith_addi_156 : arith_remsi_154); 
            int arith_cmpi_158 = (arith_select_157 == arith_const_21); 
            if (arith_cmpi_158) {
              int arith_addi_159 = (for_iter_114 + arith_const_5); 
              int arith_cmpi_160 = (arith_addi_159 <= arith_const_21); 
              int arith_subi_161 = (arith_const_21 - arith_addi_159); 
              int arith_subi_162 = (arith_addi_159 - arith_const_19); 
              int arith_select_163 = (arith_cmpi_160 ? arith_subi_161 : arith_subi_162); 
              int arith_divi_164 = (arith_select_163 / arith_const_8); 
              int arith_subi_165 = (arith_const_21 - arith_divi_164); 
              int arith_addi_166 = (arith_divi_164 + arith_const_19); 
              int arith_select_167 = (arith_cmpi_160 ? arith_subi_165 : arith_addi_166); 
              double memref_load_168 = func_arg_2[arith_const_21][arith_select_167]; 
              double memref_load_169 = func_arg_4[arith_const_21][for_iter_28]; 
              int arith_addi_170 = (for_iter_114 + arith_const_5); 
              int arith_cmpi_171 = (arith_addi_170 <= arith_const_21); 
              int arith_subi_172 = (arith_const_21 - arith_addi_170); 
              int arith_subi_173 = (arith_addi_170 - arith_const_19); 
              int arith_select_174 = (arith_cmpi_171 ? arith_subi_172 : arith_subi_173); 
              int arith_divi_175 = (arith_select_174 / arith_const_8); 
              int arith_subi_176 = (arith_const_21 - arith_divi_175); 
              int arith_addi_177 = (arith_divi_175 + arith_const_19); 
              int arith_select_178 = (arith_cmpi_171 ? arith_subi_176 : arith_addi_177); 
              double memref_load_179 = func_arg_3[for_iter_28][arith_select_178]; 
              double arith_mulf_180 = (memref_load_169 * memref_load_179); 
              double arith_subf_181 = (memref_load_168 - arith_mulf_180); 
              int arith_addi_182 = (for_iter_114 + arith_const_5); 
              int arith_cmpi_183 = (arith_addi_182 <= arith_const_21); 
              int arith_subi_184 = (arith_const_21 - arith_addi_182); 
              int arith_subi_185 = (arith_addi_182 - arith_const_19); 
              int arith_select_186 = (arith_cmpi_183 ? arith_subi_184 : arith_subi_185); 
              int arith_divi_187 = (arith_select_186 / arith_const_8); 
              int arith_subi_188 = (arith_const_21 - arith_divi_187); 
              int arith_addi_189 = (arith_divi_187 + arith_const_19); 
              int arith_select_190 = (arith_cmpi_183 ? arith_subi_188 : arith_addi_189); 
              func_arg_2[arith_const_21][arith_select_190] = arith_subf_181; 
            }
          }
        }
        int arith_muli_191 = (for_iter_48 * arith_const_14); 
        int arith_maxsi_192 = max(arith_muli_191, arith_const_16); 
        int arith_muli_193 = (for_iter_48 * arith_const_14); 
        int arith_addi_194 = (arith_muli_193 + arith_const_14); 
        int arith_minsi_195 = min(arith_addi_194, arith_const_13); 
        for (int for_iter_196 = arith_maxsi_192; for_iter_196 < arith_minsi_195; for_iter_196 += arith_const_19) {
          int arith_muli_197 = (for_iter_59 * arith_const_14); 
          int arith_muli_198 = (for_iter_28 * arith_const_8); 
          int arith_addi_199 = (arith_muli_198 + arith_const_7); 
          int arith_maxsi_200 = max(arith_muli_197, arith_addi_199); 
          int arith_muli_201 = (for_iter_59 * arith_const_14); 
          int arith_addi_202 = (arith_muli_201 + arith_const_6); 
          for (int for_iter_203 = arith_maxsi_200; for_iter_203 < arith_addi_202; for_iter_203 += arith_const_19) {
            int arith_addi_204 = (for_iter_203 + arith_const_17); 
            int arith_remsi_205 = (arith_addi_204 % arith_const_8); 
            int arith_cmpi_206 = (arith_remsi_205 < arith_const_21); 
            int arith_addi_207 = (arith_remsi_205 + arith_const_8); 
            int arith_select_208 = (arith_cmpi_206 ? arith_addi_207 : arith_remsi_205); 
            int arith_cmpi_209 = (arith_select_208 == arith_const_21); 
            if (arith_cmpi_209) {
              int arith_addi_210 = (for_iter_196 + arith_const_12); 
              int arith_addi_211 = (for_iter_203 + arith_const_5); 
              int arith_cmpi_212 = (arith_addi_211 <= arith_const_21); 
              int arith_subi_213 = (arith_const_21 - arith_addi_211); 
              int arith_subi_214 = (arith_addi_211 - arith_const_19); 
              int arith_select_215 = (arith_cmpi_212 ? arith_subi_213 : arith_subi_214); 
              int arith_divi_216 = (arith_select_215 / arith_const_8); 
              int arith_subi_217 = (arith_const_21 - arith_divi_216); 
              int arith_addi_218 = (arith_divi_216 + arith_const_19); 
              int arith_select_219 = (arith_cmpi_212 ? arith_subi_217 : arith_addi_218); 
              double memref_load_220 = func_arg_2[arith_addi_210][arith_select_219]; 
              int arith_addi_221 = (for_iter_196 + arith_const_12); 
              double memref_load_222 = func_arg_4[arith_addi_221][for_iter_28]; 
              int arith_addi_223 = (for_iter_203 + arith_const_5); 
              int arith_cmpi_224 = (arith_addi_223 <= arith_const_21); 
              int arith_subi_225 = (arith_const_21 - arith_addi_223); 
              int arith_subi_226 = (arith_addi_223 - arith_const_19); 
              int arith_select_227 = (arith_cmpi_224 ? arith_subi_225 : arith_subi_226); 
              int arith_divi_228 = (arith_select_227 / arith_const_8); 
              int arith_subi_229 = (arith_const_21 - arith_divi_228); 
              int arith_addi_230 = (arith_divi_228 + arith_const_19); 
              int arith_select_231 = (arith_cmpi_224 ? arith_subi_229 : arith_addi_230); 
              double memref_load_232 = func_arg_3[for_iter_28][arith_select_231]; 
              double arith_mulf_233 = (memref_load_222 * memref_load_232); 
              double arith_subf_234 = (memref_load_220 - arith_mulf_233); 
              int arith_addi_235 = (for_iter_196 + arith_const_12); 
              int arith_addi_236 = (for_iter_203 + arith_const_5); 
              int arith_cmpi_237 = (arith_addi_236 <= arith_const_21); 
              int arith_subi_238 = (arith_const_21 - arith_addi_236); 
              int arith_subi_239 = (arith_addi_236 - arith_const_19); 
              int arith_select_240 = (arith_cmpi_237 ? arith_subi_238 : arith_subi_239); 
              int arith_divi_241 = (arith_select_240 / arith_const_8); 
              int arith_subi_242 = (arith_const_21 - arith_divi_241); 
              int arith_addi_243 = (arith_divi_241 + arith_const_19); 
              int arith_select_244 = (arith_cmpi_237 ? arith_subi_242 : arith_addi_243); 
              func_arg_2[arith_addi_235][arith_select_244] = arith_subf_234; 
            }
          }
        }
      }
    }
    double memref_load_245 = memref_alloca_23[0]; 
    double math_sqrt_246 = sqrt(memref_load_245); 
    func_arg_3[for_iter_28][for_iter_28] = math_sqrt_246; 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int m;
  int n;
  double* A;
  double* R;
  double* Q;


  kernel_gramschmidt(m, n, A, R, Q);

}

#pragma pocc-region-end
