#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_ludcmp(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4)
{
  int arith_const_5 = 39; 
  int arith_const_6 = 3; 
  int arith_const_7 = 2; 
  int arith_const_8 = -1; 
  int arith_const_9 = 4; 
  int arith_const_10 = 1; 
  int arith_const_11 = 40; 
  int arith_const_12 = 0; 
  double* memref_alloca_13; 
  double _14; 
  memref_alloca_13[0] = _14; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_11; for_iter_15 += arith_const_10) {
    for (int for_iter_16 = arith_const_12; for_iter_16 < for_iter_15; for_iter_16 += arith_const_10) {
      double memref_load_17 = func_arg_1[for_iter_15][for_iter_16]; 
      memref_alloca_13[0] = memref_load_17; 
      int arith_cmpi_18 = (for_iter_16 < arith_const_12); 
      int arith_subi_19 = (arith_const_8 - for_iter_16); 
      int arith_select_20 = (arith_cmpi_18 ? arith_subi_19 : for_iter_16); 
      int arith_divi_21 = (arith_select_20 / arith_const_9); 
      int arith_subi_22 = (arith_const_8 - arith_divi_21); 
      int arith_select_23 = (arith_cmpi_18 ? arith_subi_22 : arith_divi_21); 
      int arith_muli_24 = (arith_select_23 * arith_const_9); 
      for (int for_iter_25 = arith_const_12; for_iter_25 < arith_muli_24; for_iter_25 += arith_const_9) {
        double memref_load_26 = func_arg_1[for_iter_15][for_iter_25]; 
        double memref_load_27 = func_arg_1[for_iter_25][for_iter_16]; 
        double arith_mulf_28 = (memref_load_26 * memref_load_27); 
        double memref_load_29 = memref_alloca_13[0]; 
        double arith_subf_30 = (memref_load_29 - arith_mulf_28); 
        memref_alloca_13[0] = arith_subf_30; 
        int arith_addi_31 = (for_iter_25 + arith_const_10); 
        double memref_load_32 = func_arg_1[for_iter_15][arith_addi_31]; 
        double memref_load_33 = func_arg_1[arith_addi_31][for_iter_16]; 
        double arith_mulf_34 = (memref_load_32 * memref_load_33); 
        double memref_load_35 = memref_alloca_13[0]; 
        double arith_subf_36 = (memref_load_35 - arith_mulf_34); 
        memref_alloca_13[0] = arith_subf_36; 
        int arith_addi_37 = (for_iter_25 + arith_const_7); 
        double memref_load_38 = func_arg_1[for_iter_15][arith_addi_37]; 
        double memref_load_39 = func_arg_1[arith_addi_37][for_iter_16]; 
        double arith_mulf_40 = (memref_load_38 * memref_load_39); 
        double memref_load_41 = memref_alloca_13[0]; 
        double arith_subf_42 = (memref_load_41 - arith_mulf_40); 
        memref_alloca_13[0] = arith_subf_42; 
        int arith_addi_43 = (for_iter_25 + arith_const_6); 
        double memref_load_44 = func_arg_1[for_iter_15][arith_addi_43]; 
        double memref_load_45 = func_arg_1[arith_addi_43][for_iter_16]; 
        double arith_mulf_46 = (memref_load_44 * memref_load_45); 
        double memref_load_47 = memref_alloca_13[0]; 
        double arith_subf_48 = (memref_load_47 - arith_mulf_46); 
        memref_alloca_13[0] = arith_subf_48; 
      }
      int arith_cmpi_49 = (for_iter_16 < arith_const_12); 
      int arith_subi_50 = (arith_const_8 - for_iter_16); 
      int arith_select_51 = (arith_cmpi_49 ? arith_subi_50 : for_iter_16); 
      int arith_divi_52 = (arith_select_51 / arith_const_9); 
      int arith_subi_53 = (arith_const_8 - arith_divi_52); 
      int arith_select_54 = (arith_cmpi_49 ? arith_subi_53 : arith_divi_52); 
      int arith_muli_55 = (arith_select_54 * arith_const_9); 
      for (int for_iter_56 = arith_muli_55; for_iter_56 < for_iter_16; for_iter_56 += arith_const_10) {
        double memref_load_57 = func_arg_1[for_iter_15][for_iter_56]; 
        double memref_load_58 = func_arg_1[for_iter_56][for_iter_16]; 
        double arith_mulf_59 = (memref_load_57 * memref_load_58); 
        double memref_load_60 = memref_alloca_13[0]; 
        double arith_subf_61 = (memref_load_60 - arith_mulf_59); 
        memref_alloca_13[0] = arith_subf_61; 
      }
      double memref_load_62 = memref_alloca_13[0]; 
      double memref_load_63 = func_arg_1[for_iter_16][for_iter_16]; 
      double arith_divf_64 = (memref_load_62 / memref_load_63); 
      func_arg_1[for_iter_15][for_iter_16] = arith_divf_64; 
    }
    for (int for_iter_65 = for_iter_15; for_iter_65 < arith_const_11; for_iter_65 += arith_const_10) {
      double memref_load_66 = func_arg_1[for_iter_15][for_iter_65]; 
      memref_alloca_13[0] = memref_load_66; 
      int arith_cmpi_67 = (for_iter_15 < arith_const_12); 
      int arith_subi_68 = (arith_const_8 - for_iter_15); 
      int arith_select_69 = (arith_cmpi_67 ? arith_subi_68 : for_iter_15); 
      int arith_divi_70 = (arith_select_69 / arith_const_9); 
      int arith_subi_71 = (arith_const_8 - arith_divi_70); 
      int arith_select_72 = (arith_cmpi_67 ? arith_subi_71 : arith_divi_70); 
      int arith_muli_73 = (arith_select_72 * arith_const_9); 
      for (int for_iter_74 = arith_const_12; for_iter_74 < arith_muli_73; for_iter_74 += arith_const_9) {
        double memref_load_75 = func_arg_1[for_iter_15][for_iter_74]; 
        double memref_load_76 = func_arg_1[for_iter_74][for_iter_65]; 
        double arith_mulf_77 = (memref_load_75 * memref_load_76); 
        double memref_load_78 = memref_alloca_13[0]; 
        double arith_subf_79 = (memref_load_78 - arith_mulf_77); 
        memref_alloca_13[0] = arith_subf_79; 
        int arith_addi_80 = (for_iter_74 + arith_const_10); 
        double memref_load_81 = func_arg_1[for_iter_15][arith_addi_80]; 
        double memref_load_82 = func_arg_1[arith_addi_80][for_iter_65]; 
        double arith_mulf_83 = (memref_load_81 * memref_load_82); 
        double memref_load_84 = memref_alloca_13[0]; 
        double arith_subf_85 = (memref_load_84 - arith_mulf_83); 
        memref_alloca_13[0] = arith_subf_85; 
        int arith_addi_86 = (for_iter_74 + arith_const_7); 
        double memref_load_87 = func_arg_1[for_iter_15][arith_addi_86]; 
        double memref_load_88 = func_arg_1[arith_addi_86][for_iter_65]; 
        double arith_mulf_89 = (memref_load_87 * memref_load_88); 
        double memref_load_90 = memref_alloca_13[0]; 
        double arith_subf_91 = (memref_load_90 - arith_mulf_89); 
        memref_alloca_13[0] = arith_subf_91; 
        int arith_addi_92 = (for_iter_74 + arith_const_6); 
        double memref_load_93 = func_arg_1[for_iter_15][arith_addi_92]; 
        double memref_load_94 = func_arg_1[arith_addi_92][for_iter_65]; 
        double arith_mulf_95 = (memref_load_93 * memref_load_94); 
        double memref_load_96 = memref_alloca_13[0]; 
        double arith_subf_97 = (memref_load_96 - arith_mulf_95); 
        memref_alloca_13[0] = arith_subf_97; 
      }
      int arith_cmpi_98 = (for_iter_15 < arith_const_12); 
      int arith_subi_99 = (arith_const_8 - for_iter_15); 
      int arith_select_100 = (arith_cmpi_98 ? arith_subi_99 : for_iter_15); 
      int arith_divi_101 = (arith_select_100 / arith_const_9); 
      int arith_subi_102 = (arith_const_8 - arith_divi_101); 
      int arith_select_103 = (arith_cmpi_98 ? arith_subi_102 : arith_divi_101); 
      int arith_muli_104 = (arith_select_103 * arith_const_9); 
      for (int for_iter_105 = arith_muli_104; for_iter_105 < for_iter_15; for_iter_105 += arith_const_10) {
        double memref_load_106 = func_arg_1[for_iter_15][for_iter_105]; 
        double memref_load_107 = func_arg_1[for_iter_105][for_iter_65]; 
        double arith_mulf_108 = (memref_load_106 * memref_load_107); 
        double memref_load_109 = memref_alloca_13[0]; 
        double arith_subf_110 = (memref_load_109 - arith_mulf_108); 
        memref_alloca_13[0] = arith_subf_110; 
      }
      double memref_load_111 = memref_alloca_13[0]; 
      func_arg_1[for_iter_15][for_iter_65] = memref_load_111; 
    }
  }
  for (int for_iter_112 = arith_const_12; for_iter_112 < arith_const_11; for_iter_112 += arith_const_10) {
    double memref_load_113 = func_arg_2[for_iter_112]; 
    memref_alloca_13[0] = memref_load_113; 
    int arith_cmpi_114 = (for_iter_112 < arith_const_12); 
    int arith_subi_115 = (arith_const_8 - for_iter_112); 
    int arith_select_116 = (arith_cmpi_114 ? arith_subi_115 : for_iter_112); 
    int arith_divi_117 = (arith_select_116 / arith_const_9); 
    int arith_subi_118 = (arith_const_8 - arith_divi_117); 
    int arith_select_119 = (arith_cmpi_114 ? arith_subi_118 : arith_divi_117); 
    int arith_muli_120 = (arith_select_119 * arith_const_9); 
    for (int for_iter_121 = arith_const_12; for_iter_121 < arith_muli_120; for_iter_121 += arith_const_9) {
      double memref_load_122 = func_arg_1[for_iter_112][for_iter_121]; 
      double memref_load_123 = func_arg_4[for_iter_121]; 
      double arith_mulf_124 = (memref_load_122 * memref_load_123); 
      double memref_load_125 = memref_alloca_13[0]; 
      double arith_subf_126 = (memref_load_125 - arith_mulf_124); 
      memref_alloca_13[0] = arith_subf_126; 
      int arith_addi_127 = (for_iter_121 + arith_const_10); 
      double memref_load_128 = func_arg_1[for_iter_112][arith_addi_127]; 
      double memref_load_129 = func_arg_4[arith_addi_127]; 
      double arith_mulf_130 = (memref_load_128 * memref_load_129); 
      double memref_load_131 = memref_alloca_13[0]; 
      double arith_subf_132 = (memref_load_131 - arith_mulf_130); 
      memref_alloca_13[0] = arith_subf_132; 
      int arith_addi_133 = (for_iter_121 + arith_const_7); 
      double memref_load_134 = func_arg_1[for_iter_112][arith_addi_133]; 
      double memref_load_135 = func_arg_4[arith_addi_133]; 
      double arith_mulf_136 = (memref_load_134 * memref_load_135); 
      double memref_load_137 = memref_alloca_13[0]; 
      double arith_subf_138 = (memref_load_137 - arith_mulf_136); 
      memref_alloca_13[0] = arith_subf_138; 
      int arith_addi_139 = (for_iter_121 + arith_const_6); 
      double memref_load_140 = func_arg_1[for_iter_112][arith_addi_139]; 
      double memref_load_141 = func_arg_4[arith_addi_139]; 
      double arith_mulf_142 = (memref_load_140 * memref_load_141); 
      double memref_load_143 = memref_alloca_13[0]; 
      double arith_subf_144 = (memref_load_143 - arith_mulf_142); 
      memref_alloca_13[0] = arith_subf_144; 
    }
    int arith_cmpi_145 = (for_iter_112 < arith_const_12); 
    int arith_subi_146 = (arith_const_8 - for_iter_112); 
    int arith_select_147 = (arith_cmpi_145 ? arith_subi_146 : for_iter_112); 
    int arith_divi_148 = (arith_select_147 / arith_const_9); 
    int arith_subi_149 = (arith_const_8 - arith_divi_148); 
    int arith_select_150 = (arith_cmpi_145 ? arith_subi_149 : arith_divi_148); 
    int arith_muli_151 = (arith_select_150 * arith_const_9); 
    for (int for_iter_152 = arith_muli_151; for_iter_152 < for_iter_112; for_iter_152 += arith_const_10) {
      double memref_load_153 = func_arg_1[for_iter_112][for_iter_152]; 
      double memref_load_154 = func_arg_4[for_iter_152]; 
      double arith_mulf_155 = (memref_load_153 * memref_load_154); 
      double memref_load_156 = memref_alloca_13[0]; 
      double arith_subf_157 = (memref_load_156 - arith_mulf_155); 
      memref_alloca_13[0] = arith_subf_157; 
    }
    double memref_load_158 = memref_alloca_13[0]; 
    func_arg_4[for_iter_112] = memref_load_158; 
  }
  for (int for_iter_159 = arith_const_12; for_iter_159 < arith_const_11; for_iter_159 += arith_const_10) {
    int arith_muli_160 = (for_iter_159 * arith_const_8); 
    int arith_addi_161 = (arith_muli_160 + arith_const_5); 
    double memref_load_162 = func_arg_4[arith_addi_161]; 
    memref_alloca_13[0] = memref_load_162; 
    int arith_muli_163 = (for_iter_159 * arith_const_8); 
    int arith_addi_164 = (arith_muli_163 + arith_const_11); 
    int arith_muli_165 = (for_iter_159 * arith_const_8); 
    int arith_cmpi_166 = (for_iter_159 < arith_const_12); 
    int arith_subi_167 = (arith_const_8 - for_iter_159); 
    int arith_select_168 = (arith_cmpi_166 ? arith_subi_167 : for_iter_159); 
    int arith_divi_169 = (arith_select_168 / arith_const_9); 
    int arith_subi_170 = (arith_const_8 - arith_divi_169); 
    int arith_select_171 = (arith_cmpi_166 ? arith_subi_170 : arith_divi_169); 
    int arith_muli_172 = (arith_select_171 * arith_const_9); 
    int arith_addi_173 = (arith_muli_165 + arith_muli_172); 
    int arith_addi_174 = (arith_addi_173 + arith_const_11); 
    for (int for_iter_175 = arith_addi_164; for_iter_175 < arith_addi_174; for_iter_175 += arith_const_9) {
      int arith_muli_176 = (for_iter_159 * arith_const_8); 
      int arith_addi_177 = (arith_muli_176 + arith_const_5); 
      double memref_load_178 = func_arg_1[arith_addi_177][for_iter_175]; 
      double memref_load_179 = func_arg_3[for_iter_175]; 
      double arith_mulf_180 = (memref_load_178 * memref_load_179); 
      double memref_load_181 = memref_alloca_13[0]; 
      double arith_subf_182 = (memref_load_181 - arith_mulf_180); 
      memref_alloca_13[0] = arith_subf_182; 
      int arith_addi_183 = (for_iter_175 + arith_const_10); 
      int arith_muli_184 = (for_iter_159 * arith_const_8); 
      int arith_addi_185 = (arith_muli_184 + arith_const_5); 
      double memref_load_186 = func_arg_1[arith_addi_185][arith_addi_183]; 
      double memref_load_187 = func_arg_3[arith_addi_183]; 
      double arith_mulf_188 = (memref_load_186 * memref_load_187); 
      double memref_load_189 = memref_alloca_13[0]; 
      double arith_subf_190 = (memref_load_189 - arith_mulf_188); 
      memref_alloca_13[0] = arith_subf_190; 
      int arith_addi_191 = (for_iter_175 + arith_const_7); 
      int arith_muli_192 = (for_iter_159 * arith_const_8); 
      int arith_addi_193 = (arith_muli_192 + arith_const_5); 
      double memref_load_194 = func_arg_1[arith_addi_193][arith_addi_191]; 
      double memref_load_195 = func_arg_3[arith_addi_191]; 
      double arith_mulf_196 = (memref_load_194 * memref_load_195); 
      double memref_load_197 = memref_alloca_13[0]; 
      double arith_subf_198 = (memref_load_197 - arith_mulf_196); 
      memref_alloca_13[0] = arith_subf_198; 
      int arith_addi_199 = (for_iter_175 + arith_const_6); 
      int arith_muli_200 = (for_iter_159 * arith_const_8); 
      int arith_addi_201 = (arith_muli_200 + arith_const_5); 
      double memref_load_202 = func_arg_1[arith_addi_201][arith_addi_199]; 
      double memref_load_203 = func_arg_3[arith_addi_199]; 
      double arith_mulf_204 = (memref_load_202 * memref_load_203); 
      double memref_load_205 = memref_alloca_13[0]; 
      double arith_subf_206 = (memref_load_205 - arith_mulf_204); 
      memref_alloca_13[0] = arith_subf_206; 
    }
    int arith_muli_207 = (for_iter_159 * arith_const_8); 
    int arith_cmpi_208 = (for_iter_159 < arith_const_12); 
    int arith_subi_209 = (arith_const_8 - for_iter_159); 
    int arith_select_210 = (arith_cmpi_208 ? arith_subi_209 : for_iter_159); 
    int arith_divi_211 = (arith_select_210 / arith_const_9); 
    int arith_subi_212 = (arith_const_8 - arith_divi_211); 
    int arith_select_213 = (arith_cmpi_208 ? arith_subi_212 : arith_divi_211); 
    int arith_muli_214 = (arith_select_213 * arith_const_9); 
    int arith_addi_215 = (arith_muli_207 + arith_muli_214); 
    int arith_addi_216 = (arith_addi_215 + arith_const_11); 
    for (int for_iter_217 = arith_addi_216; for_iter_217 < arith_const_11; for_iter_217 += arith_const_10) {
      int arith_muli_218 = (for_iter_159 * arith_const_8); 
      int arith_addi_219 = (arith_muli_218 + arith_const_5); 
      double memref_load_220 = func_arg_1[arith_addi_219][for_iter_217]; 
      double memref_load_221 = func_arg_3[for_iter_217]; 
      double arith_mulf_222 = (memref_load_220 * memref_load_221); 
      double memref_load_223 = memref_alloca_13[0]; 
      double arith_subf_224 = (memref_load_223 - arith_mulf_222); 
      memref_alloca_13[0] = arith_subf_224; 
    }
    double memref_load_225 = memref_alloca_13[0]; 
    int arith_muli_226 = (for_iter_159 * arith_const_8); 
    int arith_addi_227 = (arith_muli_226 + arith_const_5); 
    int arith_muli_228 = (for_iter_159 * arith_const_8); 
    int arith_addi_229 = (arith_muli_228 + arith_const_5); 
    double memref_load_230 = func_arg_1[arith_addi_227][arith_addi_229]; 
    double arith_divf_231 = (memref_load_225 / memref_load_230); 
    int arith_muli_232 = (for_iter_159 * arith_const_8); 
    int arith_addi_233 = (arith_muli_232 + arith_const_5); 
    func_arg_3[arith_addi_233] = arith_divf_231; 
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
