#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_heat_3d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 2; 
  int arith_const_8 = 8; 
  double arith_const_9 = 0.125000; 
  double arith_const_10 = 2.000000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_13; for_iter_15 += arith_const_13) {
      for (int for_iter_16 = arith_const_11; for_iter_16 < arith_const_8; for_iter_16 += arith_const_13) {
        int arith_addi_17 = (for_iter_16 + arith_const_13); 
        for (int for_iter_18 = arith_const_11; for_iter_18 < arith_const_7; for_iter_18 += arith_const_13) {
          int arith_muli_19 = (for_iter_18 * arith_const_6); 
          int arith_addi_20 = (arith_muli_19 + arith_const_13); 
          for (int for_iter_21 = arith_const_11; for_iter_21 < arith_const_8; for_iter_21 += arith_const_13) {
            int arith_addi_22 = (for_iter_21 + arith_const_13); 
            int arith_addi_23 = (arith_addi_22 + arith_const_13); 
            double memref_load_24 = func_arg_2[arith_addi_23][arith_addi_17][arith_addi_20]; 
            double memref_load_25 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_20]; 
            double arith_mulf_26 = (memref_load_25 * arith_const_10); 
            double arith_subf_27 = (memref_load_24 - arith_mulf_26); 
            int arith_addi_28 = (arith_addi_22 + arith_const_5); 
            double memref_load_29 = func_arg_2[arith_addi_28][arith_addi_17][arith_addi_20]; 
            double arith_addf_30 = (arith_subf_27 + memref_load_29); 
            double arith_mulf_31 = (arith_addf_30 * arith_const_9); 
            int arith_addi_32 = (arith_addi_17 + arith_const_13); 
            double memref_load_33 = func_arg_2[arith_addi_22][arith_addi_32][arith_addi_20]; 
            double arith_subf_34 = (memref_load_33 - arith_mulf_26); 
            int arith_addi_35 = (arith_addi_17 + arith_const_5); 
            double memref_load_36 = func_arg_2[arith_addi_22][arith_addi_35][arith_addi_20]; 
            double arith_addf_37 = (arith_subf_34 + memref_load_36); 
            double arith_mulf_38 = (arith_addf_37 * arith_const_9); 
            double arith_addf_39 = (arith_mulf_31 + arith_mulf_38); 
            int arith_addi_40 = (arith_addi_20 + arith_const_13); 
            double memref_load_41 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_40]; 
            double arith_subf_42 = (memref_load_41 - arith_mulf_26); 
            int arith_addi_43 = (arith_addi_20 + arith_const_5); 
            double memref_load_44 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_43]; 
            double arith_addf_45 = (arith_subf_42 + memref_load_44); 
            double arith_mulf_46 = (arith_addf_45 * arith_const_9); 
            double arith_addf_47 = (arith_addf_39 + arith_mulf_46); 
            double arith_addf_48 = (arith_addf_47 + memref_load_25); 
            func_arg_3[arith_addi_22][arith_addi_17][arith_addi_20] = arith_addf_48; 
            int arith_addi_49 = (arith_addi_20 + arith_const_13); 
            int arith_addi_50 = (arith_addi_22 + arith_const_13); 
            double memref_load_51 = func_arg_2[arith_addi_50][arith_addi_17][arith_addi_49]; 
            double memref_load_52 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_49]; 
            double arith_mulf_53 = (memref_load_52 * arith_const_10); 
            double arith_subf_54 = (memref_load_51 - arith_mulf_53); 
            int arith_addi_55 = (arith_addi_22 + arith_const_5); 
            double memref_load_56 = func_arg_2[arith_addi_55][arith_addi_17][arith_addi_49]; 
            double arith_addf_57 = (arith_subf_54 + memref_load_56); 
            double arith_mulf_58 = (arith_addf_57 * arith_const_9); 
            int arith_addi_59 = (arith_addi_17 + arith_const_13); 
            double memref_load_60 = func_arg_2[arith_addi_22][arith_addi_59][arith_addi_49]; 
            double arith_subf_61 = (memref_load_60 - arith_mulf_53); 
            int arith_addi_62 = (arith_addi_17 + arith_const_5); 
            double memref_load_63 = func_arg_2[arith_addi_22][arith_addi_62][arith_addi_49]; 
            double arith_addf_64 = (arith_subf_61 + memref_load_63); 
            double arith_mulf_65 = (arith_addf_64 * arith_const_9); 
            double arith_addf_66 = (arith_mulf_58 + arith_mulf_65); 
            int arith_addi_67 = (arith_addi_49 + arith_const_13); 
            double memref_load_68 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_67]; 
            double arith_subf_69 = (memref_load_68 - arith_mulf_53); 
            int arith_addi_70 = (arith_addi_49 + arith_const_5); 
            double memref_load_71 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_70]; 
            double arith_addf_72 = (arith_subf_69 + memref_load_71); 
            double arith_mulf_73 = (arith_addf_72 * arith_const_9); 
            double arith_addf_74 = (arith_addf_66 + arith_mulf_73); 
            double arith_addf_75 = (arith_addf_74 + memref_load_52); 
            func_arg_3[arith_addi_22][arith_addi_17][arith_addi_49] = arith_addf_75; 
            int arith_addi_76 = (arith_addi_20 + arith_const_7); 
            int arith_addi_77 = (arith_addi_22 + arith_const_13); 
            double memref_load_78 = func_arg_2[arith_addi_77][arith_addi_17][arith_addi_76]; 
            double memref_load_79 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_76]; 
            double arith_mulf_80 = (memref_load_79 * arith_const_10); 
            double arith_subf_81 = (memref_load_78 - arith_mulf_80); 
            int arith_addi_82 = (arith_addi_22 + arith_const_5); 
            double memref_load_83 = func_arg_2[arith_addi_82][arith_addi_17][arith_addi_76]; 
            double arith_addf_84 = (arith_subf_81 + memref_load_83); 
            double arith_mulf_85 = (arith_addf_84 * arith_const_9); 
            int arith_addi_86 = (arith_addi_17 + arith_const_13); 
            double memref_load_87 = func_arg_2[arith_addi_22][arith_addi_86][arith_addi_76]; 
            double arith_subf_88 = (memref_load_87 - arith_mulf_80); 
            int arith_addi_89 = (arith_addi_17 + arith_const_5); 
            double memref_load_90 = func_arg_2[arith_addi_22][arith_addi_89][arith_addi_76]; 
            double arith_addf_91 = (arith_subf_88 + memref_load_90); 
            double arith_mulf_92 = (arith_addf_91 * arith_const_9); 
            double arith_addf_93 = (arith_mulf_85 + arith_mulf_92); 
            int arith_addi_94 = (arith_addi_76 + arith_const_13); 
            double memref_load_95 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_94]; 
            double arith_subf_96 = (memref_load_95 - arith_mulf_80); 
            int arith_addi_97 = (arith_addi_76 + arith_const_5); 
            double memref_load_98 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_97]; 
            double arith_addf_99 = (arith_subf_96 + memref_load_98); 
            double arith_mulf_100 = (arith_addf_99 * arith_const_9); 
            double arith_addf_101 = (arith_addf_93 + arith_mulf_100); 
            double arith_addf_102 = (arith_addf_101 + memref_load_79); 
            func_arg_3[arith_addi_22][arith_addi_17][arith_addi_76] = arith_addf_102; 
            int arith_addi_103 = (arith_addi_20 + arith_const_4); 
            int arith_addi_104 = (arith_addi_22 + arith_const_13); 
            double memref_load_105 = func_arg_2[arith_addi_104][arith_addi_17][arith_addi_103]; 
            double memref_load_106 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_103]; 
            double arith_mulf_107 = (memref_load_106 * arith_const_10); 
            double arith_subf_108 = (memref_load_105 - arith_mulf_107); 
            int arith_addi_109 = (arith_addi_22 + arith_const_5); 
            double memref_load_110 = func_arg_2[arith_addi_109][arith_addi_17][arith_addi_103]; 
            double arith_addf_111 = (arith_subf_108 + memref_load_110); 
            double arith_mulf_112 = (arith_addf_111 * arith_const_9); 
            int arith_addi_113 = (arith_addi_17 + arith_const_13); 
            double memref_load_114 = func_arg_2[arith_addi_22][arith_addi_113][arith_addi_103]; 
            double arith_subf_115 = (memref_load_114 - arith_mulf_107); 
            int arith_addi_116 = (arith_addi_17 + arith_const_5); 
            double memref_load_117 = func_arg_2[arith_addi_22][arith_addi_116][arith_addi_103]; 
            double arith_addf_118 = (arith_subf_115 + memref_load_117); 
            double arith_mulf_119 = (arith_addf_118 * arith_const_9); 
            double arith_addf_120 = (arith_mulf_112 + arith_mulf_119); 
            int arith_addi_121 = (arith_addi_103 + arith_const_13); 
            double memref_load_122 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_121]; 
            double arith_subf_123 = (memref_load_122 - arith_mulf_107); 
            int arith_addi_124 = (arith_addi_103 + arith_const_5); 
            double memref_load_125 = func_arg_2[arith_addi_22][arith_addi_17][arith_addi_124]; 
            double arith_addf_126 = (arith_subf_123 + memref_load_125); 
            double arith_mulf_127 = (arith_addf_126 * arith_const_9); 
            double arith_addf_128 = (arith_addf_120 + arith_mulf_127); 
            double arith_addf_129 = (arith_addf_128 + memref_load_106); 
            func_arg_3[arith_addi_22][arith_addi_17][arith_addi_103] = arith_addf_129; 
          }
        }
      }
      for (int for_iter_130 = arith_const_11; for_iter_130 < arith_const_8; for_iter_130 += arith_const_13) {
        int arith_addi_131 = (for_iter_130 + arith_const_13); 
        for (int for_iter_132 = arith_const_11; for_iter_132 < arith_const_7; for_iter_132 += arith_const_13) {
          int arith_muli_133 = (for_iter_132 * arith_const_6); 
          int arith_addi_134 = (arith_muli_133 + arith_const_13); 
          for (int for_iter_135 = arith_const_11; for_iter_135 < arith_const_8; for_iter_135 += arith_const_13) {
            int arith_addi_136 = (for_iter_135 + arith_const_13); 
            int arith_addi_137 = (arith_addi_136 + arith_const_13); 
            double memref_load_138 = func_arg_3[arith_addi_137][arith_addi_131][arith_addi_134]; 
            double memref_load_139 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_134]; 
            double arith_mulf_140 = (memref_load_139 * arith_const_10); 
            double arith_subf_141 = (memref_load_138 - arith_mulf_140); 
            int arith_addi_142 = (arith_addi_136 + arith_const_5); 
            double memref_load_143 = func_arg_3[arith_addi_142][arith_addi_131][arith_addi_134]; 
            double arith_addf_144 = (arith_subf_141 + memref_load_143); 
            double arith_mulf_145 = (arith_addf_144 * arith_const_9); 
            int arith_addi_146 = (arith_addi_131 + arith_const_13); 
            double memref_load_147 = func_arg_3[arith_addi_136][arith_addi_146][arith_addi_134]; 
            double arith_subf_148 = (memref_load_147 - arith_mulf_140); 
            int arith_addi_149 = (arith_addi_131 + arith_const_5); 
            double memref_load_150 = func_arg_3[arith_addi_136][arith_addi_149][arith_addi_134]; 
            double arith_addf_151 = (arith_subf_148 + memref_load_150); 
            double arith_mulf_152 = (arith_addf_151 * arith_const_9); 
            double arith_addf_153 = (arith_mulf_145 + arith_mulf_152); 
            int arith_addi_154 = (arith_addi_134 + arith_const_13); 
            double memref_load_155 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_154]; 
            double arith_subf_156 = (memref_load_155 - arith_mulf_140); 
            int arith_addi_157 = (arith_addi_134 + arith_const_5); 
            double memref_load_158 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_157]; 
            double arith_addf_159 = (arith_subf_156 + memref_load_158); 
            double arith_mulf_160 = (arith_addf_159 * arith_const_9); 
            double arith_addf_161 = (arith_addf_153 + arith_mulf_160); 
            double arith_addf_162 = (arith_addf_161 + memref_load_139); 
            func_arg_2[arith_addi_136][arith_addi_131][arith_addi_134] = arith_addf_162; 
            int arith_addi_163 = (arith_addi_134 + arith_const_13); 
            int arith_addi_164 = (arith_addi_136 + arith_const_13); 
            double memref_load_165 = func_arg_3[arith_addi_164][arith_addi_131][arith_addi_163]; 
            double memref_load_166 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_163]; 
            double arith_mulf_167 = (memref_load_166 * arith_const_10); 
            double arith_subf_168 = (memref_load_165 - arith_mulf_167); 
            int arith_addi_169 = (arith_addi_136 + arith_const_5); 
            double memref_load_170 = func_arg_3[arith_addi_169][arith_addi_131][arith_addi_163]; 
            double arith_addf_171 = (arith_subf_168 + memref_load_170); 
            double arith_mulf_172 = (arith_addf_171 * arith_const_9); 
            int arith_addi_173 = (arith_addi_131 + arith_const_13); 
            double memref_load_174 = func_arg_3[arith_addi_136][arith_addi_173][arith_addi_163]; 
            double arith_subf_175 = (memref_load_174 - arith_mulf_167); 
            int arith_addi_176 = (arith_addi_131 + arith_const_5); 
            double memref_load_177 = func_arg_3[arith_addi_136][arith_addi_176][arith_addi_163]; 
            double arith_addf_178 = (arith_subf_175 + memref_load_177); 
            double arith_mulf_179 = (arith_addf_178 * arith_const_9); 
            double arith_addf_180 = (arith_mulf_172 + arith_mulf_179); 
            int arith_addi_181 = (arith_addi_163 + arith_const_13); 
            double memref_load_182 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_181]; 
            double arith_subf_183 = (memref_load_182 - arith_mulf_167); 
            int arith_addi_184 = (arith_addi_163 + arith_const_5); 
            double memref_load_185 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_184]; 
            double arith_addf_186 = (arith_subf_183 + memref_load_185); 
            double arith_mulf_187 = (arith_addf_186 * arith_const_9); 
            double arith_addf_188 = (arith_addf_180 + arith_mulf_187); 
            double arith_addf_189 = (arith_addf_188 + memref_load_166); 
            func_arg_2[arith_addi_136][arith_addi_131][arith_addi_163] = arith_addf_189; 
            int arith_addi_190 = (arith_addi_134 + arith_const_7); 
            int arith_addi_191 = (arith_addi_136 + arith_const_13); 
            double memref_load_192 = func_arg_3[arith_addi_191][arith_addi_131][arith_addi_190]; 
            double memref_load_193 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_190]; 
            double arith_mulf_194 = (memref_load_193 * arith_const_10); 
            double arith_subf_195 = (memref_load_192 - arith_mulf_194); 
            int arith_addi_196 = (arith_addi_136 + arith_const_5); 
            double memref_load_197 = func_arg_3[arith_addi_196][arith_addi_131][arith_addi_190]; 
            double arith_addf_198 = (arith_subf_195 + memref_load_197); 
            double arith_mulf_199 = (arith_addf_198 * arith_const_9); 
            int arith_addi_200 = (arith_addi_131 + arith_const_13); 
            double memref_load_201 = func_arg_3[arith_addi_136][arith_addi_200][arith_addi_190]; 
            double arith_subf_202 = (memref_load_201 - arith_mulf_194); 
            int arith_addi_203 = (arith_addi_131 + arith_const_5); 
            double memref_load_204 = func_arg_3[arith_addi_136][arith_addi_203][arith_addi_190]; 
            double arith_addf_205 = (arith_subf_202 + memref_load_204); 
            double arith_mulf_206 = (arith_addf_205 * arith_const_9); 
            double arith_addf_207 = (arith_mulf_199 + arith_mulf_206); 
            int arith_addi_208 = (arith_addi_190 + arith_const_13); 
            double memref_load_209 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_208]; 
            double arith_subf_210 = (memref_load_209 - arith_mulf_194); 
            int arith_addi_211 = (arith_addi_190 + arith_const_5); 
            double memref_load_212 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_211]; 
            double arith_addf_213 = (arith_subf_210 + memref_load_212); 
            double arith_mulf_214 = (arith_addf_213 * arith_const_9); 
            double arith_addf_215 = (arith_addf_207 + arith_mulf_214); 
            double arith_addf_216 = (arith_addf_215 + memref_load_193); 
            func_arg_2[arith_addi_136][arith_addi_131][arith_addi_190] = arith_addf_216; 
            int arith_addi_217 = (arith_addi_134 + arith_const_4); 
            int arith_addi_218 = (arith_addi_136 + arith_const_13); 
            double memref_load_219 = func_arg_3[arith_addi_218][arith_addi_131][arith_addi_217]; 
            double memref_load_220 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_217]; 
            double arith_mulf_221 = (memref_load_220 * arith_const_10); 
            double arith_subf_222 = (memref_load_219 - arith_mulf_221); 
            int arith_addi_223 = (arith_addi_136 + arith_const_5); 
            double memref_load_224 = func_arg_3[arith_addi_223][arith_addi_131][arith_addi_217]; 
            double arith_addf_225 = (arith_subf_222 + memref_load_224); 
            double arith_mulf_226 = (arith_addf_225 * arith_const_9); 
            int arith_addi_227 = (arith_addi_131 + arith_const_13); 
            double memref_load_228 = func_arg_3[arith_addi_136][arith_addi_227][arith_addi_217]; 
            double arith_subf_229 = (memref_load_228 - arith_mulf_221); 
            int arith_addi_230 = (arith_addi_131 + arith_const_5); 
            double memref_load_231 = func_arg_3[arith_addi_136][arith_addi_230][arith_addi_217]; 
            double arith_addf_232 = (arith_subf_229 + memref_load_231); 
            double arith_mulf_233 = (arith_addf_232 * arith_const_9); 
            double arith_addf_234 = (arith_mulf_226 + arith_mulf_233); 
            int arith_addi_235 = (arith_addi_217 + arith_const_13); 
            double memref_load_236 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_235]; 
            double arith_subf_237 = (memref_load_236 - arith_mulf_221); 
            int arith_addi_238 = (arith_addi_217 + arith_const_5); 
            double memref_load_239 = func_arg_3[arith_addi_136][arith_addi_131][arith_addi_238]; 
            double arith_addf_240 = (arith_subf_237 + memref_load_239); 
            double arith_mulf_241 = (arith_addf_240 * arith_const_9); 
            double arith_addf_242 = (arith_addf_234 + arith_mulf_241); 
            double arith_addf_243 = (arith_addf_242 + memref_load_220); 
            func_arg_2[arith_addi_136][arith_addi_131][arith_addi_217] = arith_addf_243; 
          }
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


  kernel_heat_3d(tsteps, n, A, B);

}

#pragma pocc-region-end
