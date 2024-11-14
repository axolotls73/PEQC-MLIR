#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 21; 
  int arith_const_13 = 12; 
  int arith_const_14 = -1; 
  int arith_const_15 = -19; 
  int arith_const_16 = 19; 
  int arith_const_17 = 24; 
  int arith_const_18 = 18; 
  int arith_const_19 = 20; 
  int arith_const_20 = 3; 
  int arith_const_21 = 2; 
  int arith_const_22 = 4; 
  int arith_const_23 = 5; 
  int arith_const_24 = 16; 
  int arith_const_25 = 32; 
  double arith_const_26 = 0.000000; 
  int arith_const_27 = 0; 
  int arith_const_28 = 1; 
  for (int for_iter_29 = arith_const_27; for_iter_29 < arith_const_28; for_iter_29 += arith_const_28) {
    int arith_muli_30 = (for_iter_29 * arith_const_25); 
    for (int for_iter_31 = arith_const_27; for_iter_31 < arith_const_24; for_iter_31 += arith_const_28) {
      int arith_addi_32 = (arith_muli_30 + for_iter_31); 
      for (int for_iter_33 = arith_const_27; for_iter_33 < arith_const_23; for_iter_33 += arith_const_28) {
        int arith_muli_34 = (for_iter_33 * arith_const_22); 
        func_arg_11[arith_addi_32][arith_muli_34] = arith_const_26; 
        func_arg_8[arith_addi_32][arith_muli_34] = arith_const_26; 
        int arith_addi_35 = (arith_muli_34 + arith_const_28); 
        func_arg_11[arith_addi_32][arith_addi_35] = arith_const_26; 
        func_arg_8[arith_addi_32][arith_addi_35] = arith_const_26; 
        int arith_addi_36 = (arith_muli_34 + arith_const_21); 
        func_arg_11[arith_addi_32][arith_addi_36] = arith_const_26; 
        func_arg_8[arith_addi_32][arith_addi_36] = arith_const_26; 
        int arith_addi_37 = (arith_muli_34 + arith_const_20); 
        func_arg_11[arith_addi_32][arith_addi_37] = arith_const_26; 
        func_arg_8[arith_addi_32][arith_addi_37] = arith_const_26; 
      }
      for (int for_iter_38 = arith_const_27; for_iter_38 < arith_const_21; for_iter_38 += arith_const_28) {
        int arith_addi_39 = (for_iter_38 + arith_const_19); 
        func_arg_11[arith_addi_32][arith_addi_39] = arith_const_26; 
        func_arg_8[arith_addi_32][arith_addi_39] = arith_const_26; 
      }
    }
  }
  for (int for_iter_40 = arith_const_27; for_iter_40 < arith_const_28; for_iter_40 += arith_const_28) {
    int arith_muli_41 = (for_iter_40 * arith_const_25); 
    int arith_addi_42 = (arith_muli_41 + arith_const_24); 
    for (int for_iter_43 = arith_const_27; for_iter_43 < arith_const_21; for_iter_43 += arith_const_28) {
      int arith_addi_44 = (arith_addi_42 + for_iter_43); 
      for (int for_iter_45 = arith_const_27; for_iter_45 < arith_const_23; for_iter_45 += arith_const_28) {
        int arith_muli_46 = (for_iter_45 * arith_const_22); 
        func_arg_8[arith_addi_44][arith_muli_46] = arith_const_26; 
        int arith_addi_47 = (arith_muli_46 + arith_const_28); 
        func_arg_8[arith_addi_44][arith_addi_47] = arith_const_26; 
        int arith_addi_48 = (arith_muli_46 + arith_const_21); 
        func_arg_8[arith_addi_44][arith_addi_48] = arith_const_26; 
        int arith_addi_49 = (arith_muli_46 + arith_const_20); 
        func_arg_8[arith_addi_44][arith_addi_49] = arith_const_26; 
      }
      for (int for_iter_50 = arith_const_27; for_iter_50 < arith_const_21; for_iter_50 += arith_const_28) {
        int arith_addi_51 = (for_iter_50 + arith_const_19); 
        func_arg_8[arith_addi_44][arith_addi_51] = arith_const_26; 
      }
    }
  }
  for (int for_iter_52 = arith_const_27; for_iter_52 < arith_const_28; for_iter_52 += arith_const_28) {
    int arith_muli_53 = (for_iter_52 * arith_const_25); 
    for (int for_iter_54 = arith_const_27; for_iter_54 < arith_const_28; for_iter_54 += arith_const_28) {
      int arith_muli_55 = (for_iter_54 * arith_const_25); 
      for (int for_iter_56 = arith_const_27; for_iter_56 < arith_const_18; for_iter_56 += arith_const_28) {
        int arith_addi_57 = (arith_muli_53 + for_iter_56); 
        for (int for_iter_58 = arith_const_27; for_iter_58 < arith_const_17; for_iter_58 += arith_const_28) {
          int arith_addi_59 = (arith_muli_55 + for_iter_58); 
          double memref_load_60 = func_arg_9[arith_addi_57][arith_addi_59]; 
          double memref_load_61 = func_arg_9[arith_addi_57][arith_addi_59]; 
          double memref_load_62 = func_arg_9[arith_addi_57][arith_addi_59]; 
          double memref_load_63 = func_arg_9[arith_addi_57][arith_addi_59]; 
          for (int for_iter_64 = arith_const_27; for_iter_64 < arith_const_23; for_iter_64 += arith_const_28) {
            int arith_muli_65 = (for_iter_64 * arith_const_22); 
            double memref_load_66 = func_arg_8[arith_addi_57][arith_muli_65]; 
            double memref_load_67 = func_arg_10[arith_addi_59][arith_muli_65]; 
            double arith_mulf_68 = (memref_load_60 * memref_load_67); 
            double arith_addf_69 = (memref_load_66 + arith_mulf_68); 
            func_arg_8[arith_addi_57][arith_muli_65] = arith_addf_69; 
            int arith_addi_70 = (arith_muli_65 + arith_const_28); 
            double memref_load_71 = func_arg_8[arith_addi_57][arith_addi_70]; 
            double memref_load_72 = func_arg_10[arith_addi_59][arith_addi_70]; 
            double arith_mulf_73 = (memref_load_61 * memref_load_72); 
            double arith_addf_74 = (memref_load_71 + arith_mulf_73); 
            func_arg_8[arith_addi_57][arith_addi_70] = arith_addf_74; 
            int arith_addi_75 = (arith_muli_65 + arith_const_21); 
            double memref_load_76 = func_arg_8[arith_addi_57][arith_addi_75]; 
            double memref_load_77 = func_arg_10[arith_addi_59][arith_addi_75]; 
            double arith_mulf_78 = (memref_load_62 * memref_load_77); 
            double arith_addf_79 = (memref_load_76 + arith_mulf_78); 
            func_arg_8[arith_addi_57][arith_addi_75] = arith_addf_79; 
            int arith_addi_80 = (arith_muli_65 + arith_const_20); 
            double memref_load_81 = func_arg_8[arith_addi_57][arith_addi_80]; 
            double memref_load_82 = func_arg_10[arith_addi_59][arith_addi_80]; 
            double arith_mulf_83 = (memref_load_63 * memref_load_82); 
            double arith_addf_84 = (memref_load_81 + arith_mulf_83); 
            func_arg_8[arith_addi_57][arith_addi_80] = arith_addf_84; 
          }
          double memref_load_85 = func_arg_9[arith_addi_57][arith_addi_59]; 
          for (int for_iter_86 = arith_const_27; for_iter_86 < arith_const_21; for_iter_86 += arith_const_28) {
            int arith_addi_87 = (for_iter_86 + arith_const_19); 
            double memref_load_88 = func_arg_8[arith_addi_57][arith_addi_87]; 
            double memref_load_89 = func_arg_10[arith_addi_59][arith_addi_87]; 
            double arith_mulf_90 = (memref_load_85 * memref_load_89); 
            double arith_addf_91 = (memref_load_88 + arith_mulf_90); 
            func_arg_8[arith_addi_57][arith_addi_87] = arith_addf_91; 
          }
        }
      }
    }
  }
  for (int for_iter_92 = arith_const_27; for_iter_92 < arith_const_28; for_iter_92 += arith_const_28) {
    int arith_muli_93 = (for_iter_92 * arith_const_25); 
    for (int for_iter_94 = arith_const_27; for_iter_94 < arith_const_24; for_iter_94 += arith_const_28) {
      int arith_addi_95 = (arith_muli_93 + for_iter_94); 
      for (int for_iter_96 = arith_const_27; for_iter_96 < arith_const_22; for_iter_96 += arith_const_28) {
        int arith_muli_97 = (for_iter_96 * arith_const_22); 
        func_arg_5[arith_addi_95][arith_muli_97] = arith_const_26; 
        int arith_addi_98 = (arith_muli_97 + arith_const_28); 
        func_arg_5[arith_addi_95][arith_addi_98] = arith_const_26; 
        int arith_addi_99 = (arith_muli_97 + arith_const_21); 
        func_arg_5[arith_addi_95][arith_addi_99] = arith_const_26; 
        int arith_addi_100 = (arith_muli_97 + arith_const_20); 
        func_arg_5[arith_addi_95][arith_addi_100] = arith_const_26; 
      }
      for (int for_iter_101 = arith_const_27; for_iter_101 < arith_const_21; for_iter_101 += arith_const_28) {
        int arith_addi_102 = (for_iter_101 + arith_const_24); 
        func_arg_5[arith_addi_95][arith_addi_102] = arith_const_26; 
      }
    }
  }
  for (int for_iter_103 = arith_const_27; for_iter_103 < arith_const_28; for_iter_103 += arith_const_28) {
    for (int for_iter_104 = arith_const_27; for_iter_104 < arith_const_21; for_iter_104 += arith_const_28) {
      int arith_muli_105 = (for_iter_103 * arith_const_25); 
      int arith_addi_106 = (for_iter_104 + arith_muli_105); 
      int arith_cmpi_107 = (arith_addi_106 == arith_const_27); 
      if (arith_cmpi_107) {
        for (int for_iter_108 = arith_const_27; for_iter_108 < arith_const_24; for_iter_108 += arith_const_28) {
          for (int for_iter_109 = arith_const_27; for_iter_109 < arith_const_18; for_iter_109 += arith_const_28) {
            for (int for_iter_110 = arith_const_27; for_iter_110 < arith_const_23; for_iter_110 += arith_const_28) {
              int arith_muli_111 = (for_iter_110 * arith_const_22); 
              double memref_load_112 = func_arg_5[for_iter_108][for_iter_109]; 
              double memref_load_113 = func_arg_6[for_iter_108][arith_muli_111]; 
              double memref_load_114 = func_arg_7[arith_muli_111][for_iter_109]; 
              double arith_mulf_115 = (memref_load_113 * memref_load_114); 
              double arith_addf_116 = (memref_load_112 + arith_mulf_115); 
              func_arg_5[for_iter_108][for_iter_109] = arith_addf_116; 
              int arith_addi_117 = (arith_muli_111 + arith_const_28); 
              double memref_load_118 = func_arg_5[for_iter_108][for_iter_109]; 
              double memref_load_119 = func_arg_6[for_iter_108][arith_addi_117]; 
              double memref_load_120 = func_arg_7[arith_addi_117][for_iter_109]; 
              double arith_mulf_121 = (memref_load_119 * memref_load_120); 
              double arith_addf_122 = (memref_load_118 + arith_mulf_121); 
              func_arg_5[for_iter_108][for_iter_109] = arith_addf_122; 
              int arith_addi_123 = (arith_muli_111 + arith_const_21); 
              double memref_load_124 = func_arg_5[for_iter_108][for_iter_109]; 
              double memref_load_125 = func_arg_6[for_iter_108][arith_addi_123]; 
              double memref_load_126 = func_arg_7[arith_addi_123][for_iter_109]; 
              double arith_mulf_127 = (memref_load_125 * memref_load_126); 
              double arith_addf_128 = (memref_load_124 + arith_mulf_127); 
              func_arg_5[for_iter_108][for_iter_109] = arith_addf_128; 
              int arith_addi_129 = (arith_muli_111 + arith_const_20); 
              double memref_load_130 = func_arg_5[for_iter_108][for_iter_109]; 
              double memref_load_131 = func_arg_6[for_iter_108][arith_addi_129]; 
              double memref_load_132 = func_arg_7[arith_addi_129][for_iter_109]; 
              double arith_mulf_133 = (memref_load_131 * memref_load_132); 
              double arith_addf_134 = (memref_load_130 + arith_mulf_133); 
              func_arg_5[for_iter_108][for_iter_109] = arith_addf_134; 
            }
            double memref_load_135 = func_arg_5[for_iter_108][for_iter_109]; 
            double memref_load_136 = func_arg_5[for_iter_108][for_iter_109]; 
            double memref_load_137 = func_arg_5[for_iter_108][for_iter_109]; 
            double memref_load_138 = func_arg_5[for_iter_108][for_iter_109]; 
            for (int for_iter_139 = arith_const_27; for_iter_139 < arith_const_20; for_iter_139 += arith_const_28) {
              int arith_muli_140 = (for_iter_139 * arith_const_22); 
              int arith_addi_141 = (arith_muli_140 + arith_const_16); 
              int arith_addi_142 = (arith_addi_141 + arith_const_15); 
              double memref_load_143 = func_arg_11[for_iter_108][arith_addi_142]; 
              int arith_addi_144 = (arith_addi_141 + arith_const_15); 
              double memref_load_145 = func_arg_8[for_iter_109][arith_addi_144]; 
              double arith_mulf_146 = (memref_load_135 * memref_load_145); 
              double arith_addf_147 = (memref_load_143 + arith_mulf_146); 
              int arith_addi_148 = (arith_addi_141 + arith_const_15); 
              func_arg_11[for_iter_108][arith_addi_148] = arith_addf_147; 
              int arith_addi_149 = (arith_addi_141 + arith_const_28); 
              int arith_addi_150 = (arith_addi_149 + arith_const_15); 
              double memref_load_151 = func_arg_11[for_iter_108][arith_addi_150]; 
              int arith_addi_152 = (arith_addi_149 + arith_const_15); 
              double memref_load_153 = func_arg_8[for_iter_109][arith_addi_152]; 
              double arith_mulf_154 = (memref_load_136 * memref_load_153); 
              double arith_addf_155 = (memref_load_151 + arith_mulf_154); 
              int arith_addi_156 = (arith_addi_149 + arith_const_15); 
              func_arg_11[for_iter_108][arith_addi_156] = arith_addf_155; 
              int arith_addi_157 = (arith_addi_141 + arith_const_21); 
              int arith_addi_158 = (arith_addi_157 + arith_const_15); 
              double memref_load_159 = func_arg_11[for_iter_108][arith_addi_158]; 
              int arith_addi_160 = (arith_addi_157 + arith_const_15); 
              double memref_load_161 = func_arg_8[for_iter_109][arith_addi_160]; 
              double arith_mulf_162 = (memref_load_137 * memref_load_161); 
              double arith_addf_163 = (memref_load_159 + arith_mulf_162); 
              int arith_addi_164 = (arith_addi_157 + arith_const_15); 
              func_arg_11[for_iter_108][arith_addi_164] = arith_addf_163; 
              int arith_addi_165 = (arith_addi_141 + arith_const_20); 
              int arith_addi_166 = (arith_addi_165 + arith_const_15); 
              double memref_load_167 = func_arg_11[for_iter_108][arith_addi_166]; 
              int arith_addi_168 = (arith_addi_165 + arith_const_15); 
              double memref_load_169 = func_arg_8[for_iter_109][arith_addi_168]; 
              double arith_mulf_170 = (memref_load_138 * memref_load_169); 
              double arith_addf_171 = (memref_load_167 + arith_mulf_170); 
              int arith_addi_172 = (arith_addi_165 + arith_const_15); 
              func_arg_11[for_iter_108][arith_addi_172] = arith_addf_171; 
            }
            double memref_load_173 = func_arg_11[for_iter_108][arith_const_13]; 
            double memref_load_174 = func_arg_5[for_iter_108][for_iter_109]; 
            double memref_load_175 = func_arg_8[for_iter_109][arith_const_13]; 
            double arith_mulf_176 = (memref_load_174 * memref_load_175); 
            double arith_addf_177 = (memref_load_173 + arith_mulf_176); 
            func_arg_11[for_iter_108][arith_const_13] = arith_addf_177; 
          }
        }
      }
      int arith_muli_178 = (for_iter_103 * arith_const_25); 
      int arith_addi_179 = (for_iter_104 + arith_muli_178); 
      int arith_addi_180 = (arith_addi_179 + arith_const_14); 
      int arith_cmpi_181 = (arith_addi_180 == arith_const_27); 
      if (arith_cmpi_181) {
        for (int for_iter_182 = arith_const_27; for_iter_182 < arith_const_24; for_iter_182 += arith_const_28) {
          for (int for_iter_183 = arith_const_27; for_iter_183 < arith_const_18; for_iter_183 += arith_const_28) {
            double memref_load_184 = func_arg_5[for_iter_182][for_iter_183]; 
            double memref_load_185 = func_arg_5[for_iter_182][for_iter_183]; 
            double memref_load_186 = func_arg_5[for_iter_182][for_iter_183]; 
            double memref_load_187 = func_arg_5[for_iter_182][for_iter_183]; 
            for (int for_iter_188 = arith_const_27; for_iter_188 < arith_const_21; for_iter_188 += arith_const_28) {
              int arith_muli_189 = (for_iter_188 * arith_const_22); 
              int arith_addi_190 = (arith_muli_189 + arith_const_25); 
              int arith_addi_191 = (arith_addi_190 + arith_const_15); 
              double memref_load_192 = func_arg_11[for_iter_182][arith_addi_191]; 
              int arith_addi_193 = (arith_addi_190 + arith_const_15); 
              double memref_load_194 = func_arg_8[for_iter_183][arith_addi_193]; 
              double arith_mulf_195 = (memref_load_184 * memref_load_194); 
              double arith_addf_196 = (memref_load_192 + arith_mulf_195); 
              int arith_addi_197 = (arith_addi_190 + arith_const_15); 
              func_arg_11[for_iter_182][arith_addi_197] = arith_addf_196; 
              int arith_addi_198 = (arith_addi_190 + arith_const_28); 
              int arith_addi_199 = (arith_addi_198 + arith_const_15); 
              double memref_load_200 = func_arg_11[for_iter_182][arith_addi_199]; 
              int arith_addi_201 = (arith_addi_198 + arith_const_15); 
              double memref_load_202 = func_arg_8[for_iter_183][arith_addi_201]; 
              double arith_mulf_203 = (memref_load_185 * memref_load_202); 
              double arith_addf_204 = (memref_load_200 + arith_mulf_203); 
              int arith_addi_205 = (arith_addi_198 + arith_const_15); 
              func_arg_11[for_iter_182][arith_addi_205] = arith_addf_204; 
              int arith_addi_206 = (arith_addi_190 + arith_const_21); 
              int arith_addi_207 = (arith_addi_206 + arith_const_15); 
              double memref_load_208 = func_arg_11[for_iter_182][arith_addi_207]; 
              int arith_addi_209 = (arith_addi_206 + arith_const_15); 
              double memref_load_210 = func_arg_8[for_iter_183][arith_addi_209]; 
              double arith_mulf_211 = (memref_load_186 * memref_load_210); 
              double arith_addf_212 = (memref_load_208 + arith_mulf_211); 
              int arith_addi_213 = (arith_addi_206 + arith_const_15); 
              func_arg_11[for_iter_182][arith_addi_213] = arith_addf_212; 
              int arith_addi_214 = (arith_addi_190 + arith_const_20); 
              int arith_addi_215 = (arith_addi_214 + arith_const_15); 
              double memref_load_216 = func_arg_11[for_iter_182][arith_addi_215]; 
              int arith_addi_217 = (arith_addi_214 + arith_const_15); 
              double memref_load_218 = func_arg_8[for_iter_183][arith_addi_217]; 
              double arith_mulf_219 = (memref_load_187 * memref_load_218); 
              double arith_addf_220 = (memref_load_216 + arith_mulf_219); 
              int arith_addi_221 = (arith_addi_214 + arith_const_15); 
              func_arg_11[for_iter_182][arith_addi_221] = arith_addf_220; 
            }
            double memref_load_222 = func_arg_11[for_iter_182][arith_const_12]; 
            double memref_load_223 = func_arg_5[for_iter_182][for_iter_183]; 
            double memref_load_224 = func_arg_8[for_iter_183][arith_const_12]; 
            double arith_mulf_225 = (memref_load_223 * memref_load_224); 
            double arith_addf_226 = (memref_load_222 + arith_mulf_225); 
            func_arg_11[for_iter_182][arith_const_12] = arith_addf_226; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int ni;
  int nj;
  int nk;
  int nl;
  int nm;
  double* E;
  double* A;
  double* B;
  double* F;
  double* C;
  double* D;
  double* G;


  kernel_3mm(ni, nj, nk, nl, nm, E, A, B, F, C, D, G);

}

#pragma pocc-region-end
