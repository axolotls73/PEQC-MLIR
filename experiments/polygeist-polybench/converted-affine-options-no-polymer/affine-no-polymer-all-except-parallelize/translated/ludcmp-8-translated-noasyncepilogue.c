#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_ludcmp(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 39; 
  int arith_const_6 = 40; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 1; 
  int arith_const_13 = 10; 
  int arith_const_14 = 0; 
  double* memref_alloca_15; 
  double _16; 
  memref_alloca_15[0] = _16; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_13; for_iter_17 += arith_const_12) {
    int arith_muli_18 = (for_iter_17 * arith_const_11); 
    for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_11; for_iter_19 += arith_const_12) {
      int arith_addi_20 = (arith_muli_18 + for_iter_19); 
      int arith_muli_21 = (for_iter_17 * arith_const_11); 
      int arith_addi_22 = (for_iter_19 + arith_muli_21); 
      for (int for_iter_23 = arith_const_14; for_iter_23 < arith_addi_22; for_iter_23 += arith_const_12) {
        double memref_load_24 = func_arg_1[arith_addi_20][for_iter_23]; 
        memref_alloca_15[0] = memref_load_24; 
        int arith_cmpi_25 = (for_iter_23 < arith_const_14); 
        int arith_subi_26 = (arith_const_10 - for_iter_23); 
        int arith_select_27 = (arith_cmpi_25 ? arith_subi_26 : for_iter_23); 
        int arith_divi_28 = (arith_select_27 / arith_const_11); 
        int arith_subi_29 = (arith_const_10 - arith_divi_28); 
        int arith_select_30 = (arith_cmpi_25 ? arith_subi_29 : arith_divi_28); 
        for (int for_iter_31 = arith_const_14; for_iter_31 < arith_select_30; for_iter_31 += arith_const_12) {
          int arith_muli_32 = (for_iter_31 * arith_const_11); 
          double memref_load_33 = func_arg_1[arith_addi_20][arith_muli_32]; 
          double memref_load_34 = func_arg_1[arith_muli_32][for_iter_23]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double memref_load_36 = memref_alloca_15[0]; 
          double arith_subf_37 = (memref_load_36 - arith_mulf_35); 
          memref_alloca_15[0] = arith_subf_37; 
          int arith_addi_38 = (arith_muli_32 + arith_const_12); 
          double memref_load_39 = func_arg_1[arith_addi_20][arith_addi_38]; 
          double memref_load_40 = func_arg_1[arith_addi_38][for_iter_23]; 
          double arith_mulf_41 = (memref_load_39 * memref_load_40); 
          double memref_load_42 = memref_alloca_15[0]; 
          double arith_subf_43 = (memref_load_42 - arith_mulf_41); 
          memref_alloca_15[0] = arith_subf_43; 
          int arith_addi_44 = (arith_muli_32 + arith_const_9); 
          double memref_load_45 = func_arg_1[arith_addi_20][arith_addi_44]; 
          double memref_load_46 = func_arg_1[arith_addi_44][for_iter_23]; 
          double arith_mulf_47 = (memref_load_45 * memref_load_46); 
          double memref_load_48 = memref_alloca_15[0]; 
          double arith_subf_49 = (memref_load_48 - arith_mulf_47); 
          memref_alloca_15[0] = arith_subf_49; 
          int arith_addi_50 = (arith_muli_32 + arith_const_8); 
          double memref_load_51 = func_arg_1[arith_addi_20][arith_addi_50]; 
          double memref_load_52 = func_arg_1[arith_addi_50][for_iter_23]; 
          double arith_mulf_53 = (memref_load_51 * memref_load_52); 
          double memref_load_54 = memref_alloca_15[0]; 
          double arith_subf_55 = (memref_load_54 - arith_mulf_53); 
          memref_alloca_15[0] = arith_subf_55; 
        }
        int arith_remsi_56 = (for_iter_23 % arith_const_11); 
        int arith_cmpi_57 = (arith_remsi_56 < arith_const_14); 
        int arith_addi_58 = (arith_remsi_56 + arith_const_11); 
        int arith_select_59 = (arith_cmpi_57 ? arith_addi_58 : arith_remsi_56); 
        for (int for_iter_60 = arith_const_14; for_iter_60 < arith_select_59; for_iter_60 += arith_const_12) {
          int arith_cmpi_61 = (for_iter_23 < arith_const_14); 
          int arith_subi_62 = (arith_const_10 - for_iter_23); 
          int arith_select_63 = (arith_cmpi_61 ? arith_subi_62 : for_iter_23); 
          int arith_divi_64 = (arith_select_63 / arith_const_11); 
          int arith_subi_65 = (arith_const_10 - arith_divi_64); 
          int arith_select_66 = (arith_cmpi_61 ? arith_subi_65 : arith_divi_64); 
          int arith_muli_67 = (arith_select_66 * arith_const_11); 
          int arith_addi_68 = (for_iter_60 + arith_muli_67); 
          double memref_load_69 = func_arg_1[arith_addi_20][arith_addi_68]; 
          double memref_load_70 = func_arg_1[arith_addi_68][for_iter_23]; 
          double arith_mulf_71 = (memref_load_69 * memref_load_70); 
          double memref_load_72 = memref_alloca_15[0]; 
          double arith_subf_73 = (memref_load_72 - arith_mulf_71); 
          memref_alloca_15[0] = arith_subf_73; 
        }
        double memref_load_74 = memref_alloca_15[0]; 
        double memref_load_75 = func_arg_1[for_iter_23][for_iter_23]; 
        double arith_divf_76 = (memref_load_74 / memref_load_75); 
        func_arg_1[arith_addi_20][for_iter_23] = arith_divf_76; 
      }
      int arith_muli_77 = (for_iter_19 * arith_const_10); 
      int arith_muli_78 = (for_iter_17 * arith_const_7); 
      int arith_addi_79 = (arith_muli_77 + arith_muli_78); 
      int arith_addi_80 = (arith_addi_79 + arith_const_6); 
      for (int for_iter_81 = arith_const_14; for_iter_81 < arith_addi_80; for_iter_81 += arith_const_12) {
        int arith_addi_82 = (arith_addi_20 + for_iter_81); 
        double memref_load_83 = func_arg_1[arith_addi_20][arith_addi_82]; 
        memref_alloca_15[0] = memref_load_83; 
        int arith_cmpi_84 = (for_iter_19 < arith_const_14); 
        int arith_subi_85 = (arith_const_10 - for_iter_19); 
        int arith_select_86 = (arith_cmpi_84 ? arith_subi_85 : for_iter_19); 
        int arith_divi_87 = (arith_select_86 / arith_const_11); 
        int arith_subi_88 = (arith_const_10 - arith_divi_87); 
        int arith_select_89 = (arith_cmpi_84 ? arith_subi_88 : arith_divi_87); 
        int arith_addi_90 = (for_iter_17 + arith_select_89); 
        for (int for_iter_91 = arith_const_14; for_iter_91 < arith_addi_90; for_iter_91 += arith_const_12) {
          int arith_muli_92 = (for_iter_91 * arith_const_11); 
          double memref_load_93 = func_arg_1[arith_addi_20][arith_muli_92]; 
          double memref_load_94 = func_arg_1[arith_muli_92][arith_addi_82]; 
          double arith_mulf_95 = (memref_load_93 * memref_load_94); 
          double memref_load_96 = memref_alloca_15[0]; 
          double arith_subf_97 = (memref_load_96 - arith_mulf_95); 
          memref_alloca_15[0] = arith_subf_97; 
          int arith_addi_98 = (arith_muli_92 + arith_const_12); 
          double memref_load_99 = func_arg_1[arith_addi_20][arith_addi_98]; 
          double memref_load_100 = func_arg_1[arith_addi_98][arith_addi_82]; 
          double arith_mulf_101 = (memref_load_99 * memref_load_100); 
          double memref_load_102 = memref_alloca_15[0]; 
          double arith_subf_103 = (memref_load_102 - arith_mulf_101); 
          memref_alloca_15[0] = arith_subf_103; 
          int arith_addi_104 = (arith_muli_92 + arith_const_9); 
          double memref_load_105 = func_arg_1[arith_addi_20][arith_addi_104]; 
          double memref_load_106 = func_arg_1[arith_addi_104][arith_addi_82]; 
          double arith_mulf_107 = (memref_load_105 * memref_load_106); 
          double memref_load_108 = memref_alloca_15[0]; 
          double arith_subf_109 = (memref_load_108 - arith_mulf_107); 
          memref_alloca_15[0] = arith_subf_109; 
          int arith_addi_110 = (arith_muli_92 + arith_const_8); 
          double memref_load_111 = func_arg_1[arith_addi_20][arith_addi_110]; 
          double memref_load_112 = func_arg_1[arith_addi_110][arith_addi_82]; 
          double arith_mulf_113 = (memref_load_111 * memref_load_112); 
          double memref_load_114 = memref_alloca_15[0]; 
          double arith_subf_115 = (memref_load_114 - arith_mulf_113); 
          memref_alloca_15[0] = arith_subf_115; 
        }
        int arith_remsi_116 = (arith_addi_20 % arith_const_11); 
        int arith_cmpi_117 = (arith_remsi_116 < arith_const_14); 
        int arith_addi_118 = (arith_remsi_116 + arith_const_11); 
        int arith_select_119 = (arith_cmpi_117 ? arith_addi_118 : arith_remsi_116); 
        for (int for_iter_120 = arith_const_14; for_iter_120 < arith_select_119; for_iter_120 += arith_const_12) {
          int arith_cmpi_121 = (arith_addi_20 < arith_const_14); 
          int arith_subi_122 = (arith_const_10 - arith_addi_20); 
          int arith_select_123 = (arith_cmpi_121 ? arith_subi_122 : arith_addi_20); 
          int arith_divi_124 = (arith_select_123 / arith_const_11); 
          int arith_subi_125 = (arith_const_10 - arith_divi_124); 
          int arith_select_126 = (arith_cmpi_121 ? arith_subi_125 : arith_divi_124); 
          int arith_muli_127 = (arith_select_126 * arith_const_11); 
          int arith_addi_128 = (for_iter_120 + arith_muli_127); 
          double memref_load_129 = func_arg_1[arith_addi_20][arith_addi_128]; 
          double memref_load_130 = func_arg_1[arith_addi_128][arith_addi_82]; 
          double arith_mulf_131 = (memref_load_129 * memref_load_130); 
          double memref_load_132 = memref_alloca_15[0]; 
          double arith_subf_133 = (memref_load_132 - arith_mulf_131); 
          memref_alloca_15[0] = arith_subf_133; 
        }
        double memref_load_134 = memref_alloca_15[0]; 
        func_arg_1[arith_addi_20][arith_addi_82] = memref_load_134; 
      }
    }
  }
  for (int for_iter_135 = arith_const_14; for_iter_135 < arith_const_6; for_iter_135 += arith_const_12) {
    for (int for_iter_136 = arith_const_14; for_iter_136 < arith_const_12; for_iter_136 += arith_const_12) {
      int arith_addi_137 = (for_iter_135 + for_iter_136); 
      double memref_load_138 = func_arg_2[arith_addi_137]; 
      memref_alloca_15[0] = memref_load_138; 
      int arith_addi_139 = (for_iter_135 + for_iter_136); 
      int arith_cmpi_140 = (arith_addi_139 < arith_const_14); 
      int arith_subi_141 = (arith_const_10 - arith_addi_139); 
      int arith_select_142 = (arith_cmpi_140 ? arith_subi_141 : arith_addi_139); 
      int arith_divi_143 = (arith_select_142 / arith_const_11); 
      int arith_subi_144 = (arith_const_10 - arith_divi_143); 
      int arith_select_145 = (arith_cmpi_140 ? arith_subi_144 : arith_divi_143); 
      for (int for_iter_146 = arith_const_14; for_iter_146 < arith_select_145; for_iter_146 += arith_const_12) {
        int arith_muli_147 = (for_iter_146 * arith_const_11); 
        double memref_load_148 = func_arg_1[arith_addi_137][arith_muli_147]; 
        double memref_load_149 = func_arg_4[arith_muli_147]; 
        double arith_mulf_150 = (memref_load_148 * memref_load_149); 
        double memref_load_151 = memref_alloca_15[0]; 
        double arith_subf_152 = (memref_load_151 - arith_mulf_150); 
        memref_alloca_15[0] = arith_subf_152; 
        int arith_addi_153 = (arith_muli_147 + arith_const_12); 
        double memref_load_154 = func_arg_1[arith_addi_137][arith_addi_153]; 
        double memref_load_155 = func_arg_4[arith_addi_153]; 
        double arith_mulf_156 = (memref_load_154 * memref_load_155); 
        double memref_load_157 = memref_alloca_15[0]; 
        double arith_subf_158 = (memref_load_157 - arith_mulf_156); 
        memref_alloca_15[0] = arith_subf_158; 
        int arith_addi_159 = (arith_muli_147 + arith_const_9); 
        double memref_load_160 = func_arg_1[arith_addi_137][arith_addi_159]; 
        double memref_load_161 = func_arg_4[arith_addi_159]; 
        double arith_mulf_162 = (memref_load_160 * memref_load_161); 
        double memref_load_163 = memref_alloca_15[0]; 
        double arith_subf_164 = (memref_load_163 - arith_mulf_162); 
        memref_alloca_15[0] = arith_subf_164; 
        int arith_addi_165 = (arith_muli_147 + arith_const_8); 
        double memref_load_166 = func_arg_1[arith_addi_137][arith_addi_165]; 
        double memref_load_167 = func_arg_4[arith_addi_165]; 
        double arith_mulf_168 = (memref_load_166 * memref_load_167); 
        double memref_load_169 = memref_alloca_15[0]; 
        double arith_subf_170 = (memref_load_169 - arith_mulf_168); 
        memref_alloca_15[0] = arith_subf_170; 
      }
      int arith_addi_171 = (for_iter_135 + for_iter_136); 
      int arith_remsi_172 = (arith_addi_171 % arith_const_11); 
      int arith_cmpi_173 = (arith_remsi_172 < arith_const_14); 
      int arith_addi_174 = (arith_remsi_172 + arith_const_11); 
      int arith_select_175 = (arith_cmpi_173 ? arith_addi_174 : arith_remsi_172); 
      for (int for_iter_176 = arith_const_14; for_iter_176 < arith_select_175; for_iter_176 += arith_const_12) {
        int arith_cmpi_177 = (arith_addi_137 < arith_const_14); 
        int arith_subi_178 = (arith_const_10 - arith_addi_137); 
        int arith_select_179 = (arith_cmpi_177 ? arith_subi_178 : arith_addi_137); 
        int arith_divi_180 = (arith_select_179 / arith_const_11); 
        int arith_subi_181 = (arith_const_10 - arith_divi_180); 
        int arith_select_182 = (arith_cmpi_177 ? arith_subi_181 : arith_divi_180); 
        int arith_muli_183 = (arith_select_182 * arith_const_11); 
        int arith_addi_184 = (for_iter_176 + arith_muli_183); 
        double memref_load_185 = func_arg_1[arith_addi_137][arith_addi_184]; 
        double memref_load_186 = func_arg_4[arith_addi_184]; 
        double arith_mulf_187 = (memref_load_185 * memref_load_186); 
        double memref_load_188 = memref_alloca_15[0]; 
        double arith_subf_189 = (memref_load_188 - arith_mulf_187); 
        memref_alloca_15[0] = arith_subf_189; 
      }
      double memref_load_190 = memref_alloca_15[0]; 
      func_arg_4[arith_addi_137] = memref_load_190; 
    }
  }
  for (int for_iter_191 = arith_const_14; for_iter_191 < arith_const_6; for_iter_191 += arith_const_12) {
    for (int for_iter_192 = arith_const_14; for_iter_192 < arith_const_12; for_iter_192 += arith_const_12) {
      int arith_addi_193 = (for_iter_191 + for_iter_192); 
      int arith_muli_194 = (arith_addi_193 * arith_const_10); 
      int arith_addi_195 = (arith_muli_194 + arith_const_5); 
      double memref_load_196 = func_arg_4[arith_addi_195]; 
      memref_alloca_15[0] = memref_load_196; 
      int arith_addi_197 = (for_iter_191 + for_iter_192); 
      int arith_cmpi_198 = (arith_addi_197 < arith_const_14); 
      int arith_subi_199 = (arith_const_10 - arith_addi_197); 
      int arith_select_200 = (arith_cmpi_198 ? arith_subi_199 : arith_addi_197); 
      int arith_divi_201 = (arith_select_200 / arith_const_11); 
      int arith_subi_202 = (arith_const_10 - arith_divi_201); 
      int arith_select_203 = (arith_cmpi_198 ? arith_subi_202 : arith_divi_201); 
      for (int for_iter_204 = arith_const_14; for_iter_204 < arith_select_203; for_iter_204 += arith_const_12) {
        int arith_muli_205 = (arith_addi_193 * arith_const_10); 
        int arith_muli_206 = (for_iter_204 * arith_const_11); 
        int arith_addi_207 = (arith_muli_205 + arith_muli_206); 
        int arith_addi_208 = (arith_addi_207 + arith_const_6); 
        int arith_muli_209 = (arith_addi_193 * arith_const_10); 
        int arith_addi_210 = (arith_muli_209 + arith_const_5); 
        double memref_load_211 = func_arg_1[arith_addi_210][arith_addi_208]; 
        double memref_load_212 = func_arg_3[arith_addi_208]; 
        double arith_mulf_213 = (memref_load_211 * memref_load_212); 
        double memref_load_214 = memref_alloca_15[0]; 
        double arith_subf_215 = (memref_load_214 - arith_mulf_213); 
        memref_alloca_15[0] = arith_subf_215; 
        int arith_addi_216 = (arith_addi_208 + arith_const_12); 
        int arith_muli_217 = (arith_addi_193 * arith_const_10); 
        int arith_addi_218 = (arith_muli_217 + arith_const_5); 
        double memref_load_219 = func_arg_1[arith_addi_218][arith_addi_216]; 
        double memref_load_220 = func_arg_3[arith_addi_216]; 
        double arith_mulf_221 = (memref_load_219 * memref_load_220); 
        double memref_load_222 = memref_alloca_15[0]; 
        double arith_subf_223 = (memref_load_222 - arith_mulf_221); 
        memref_alloca_15[0] = arith_subf_223; 
        int arith_addi_224 = (arith_addi_208 + arith_const_9); 
        int arith_muli_225 = (arith_addi_193 * arith_const_10); 
        int arith_addi_226 = (arith_muli_225 + arith_const_5); 
        double memref_load_227 = func_arg_1[arith_addi_226][arith_addi_224]; 
        double memref_load_228 = func_arg_3[arith_addi_224]; 
        double arith_mulf_229 = (memref_load_227 * memref_load_228); 
        double memref_load_230 = memref_alloca_15[0]; 
        double arith_subf_231 = (memref_load_230 - arith_mulf_229); 
        memref_alloca_15[0] = arith_subf_231; 
        int arith_addi_232 = (arith_addi_208 + arith_const_8); 
        int arith_muli_233 = (arith_addi_193 * arith_const_10); 
        int arith_addi_234 = (arith_muli_233 + arith_const_5); 
        double memref_load_235 = func_arg_1[arith_addi_234][arith_addi_232]; 
        double memref_load_236 = func_arg_3[arith_addi_232]; 
        double arith_mulf_237 = (memref_load_235 * memref_load_236); 
        double memref_load_238 = memref_alloca_15[0]; 
        double arith_subf_239 = (memref_load_238 - arith_mulf_237); 
        memref_alloca_15[0] = arith_subf_239; 
      }
      int arith_addi_240 = (for_iter_191 + for_iter_192); 
      int arith_remsi_241 = (arith_addi_240 % arith_const_11); 
      int arith_cmpi_242 = (arith_remsi_241 < arith_const_14); 
      int arith_addi_243 = (arith_remsi_241 + arith_const_11); 
      int arith_select_244 = (arith_cmpi_242 ? arith_addi_243 : arith_remsi_241); 
      for (int for_iter_245 = arith_const_14; for_iter_245 < arith_select_244; for_iter_245 += arith_const_12) {
        int arith_muli_246 = (arith_addi_193 * arith_const_10); 
        int arith_addi_247 = (arith_muli_246 + for_iter_245); 
        int arith_cmpi_248 = (arith_addi_193 < arith_const_14); 
        int arith_subi_249 = (arith_const_10 - arith_addi_193); 
        int arith_select_250 = (arith_cmpi_248 ? arith_subi_249 : arith_addi_193); 
        int arith_divi_251 = (arith_select_250 / arith_const_11); 
        int arith_subi_252 = (arith_const_10 - arith_divi_251); 
        int arith_select_253 = (arith_cmpi_248 ? arith_subi_252 : arith_divi_251); 
        int arith_muli_254 = (arith_select_253 * arith_const_11); 
        int arith_addi_255 = (arith_addi_247 + arith_muli_254); 
        int arith_addi_256 = (arith_addi_255 + arith_const_6); 
        int arith_muli_257 = (arith_addi_193 * arith_const_10); 
        int arith_addi_258 = (arith_muli_257 + arith_const_5); 
        double memref_load_259 = func_arg_1[arith_addi_258][arith_addi_256]; 
        double memref_load_260 = func_arg_3[arith_addi_256]; 
        double arith_mulf_261 = (memref_load_259 * memref_load_260); 
        double memref_load_262 = memref_alloca_15[0]; 
        double arith_subf_263 = (memref_load_262 - arith_mulf_261); 
        memref_alloca_15[0] = arith_subf_263; 
      }
      double memref_load_264 = memref_alloca_15[0]; 
      int arith_muli_265 = (arith_addi_193 * arith_const_10); 
      int arith_addi_266 = (arith_muli_265 + arith_const_5); 
      int arith_muli_267 = (arith_addi_193 * arith_const_10); 
      int arith_addi_268 = (arith_muli_267 + arith_const_5); 
      double memref_load_269 = func_arg_1[arith_addi_266][arith_addi_268]; 
      double arith_divf_270 = (memref_load_264 / memref_load_269); 
      int arith_muli_271 = (arith_addi_193 * arith_const_10); 
      int arith_addi_272 = (arith_muli_271 + arith_const_5); 
      func_arg_3[arith_addi_272] = arith_divf_270; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;
  double* b;
  double* x;
  double* y;


  kernel_ludcmp(n, A, b, x, y);

}

#pragma pocc-region-end
