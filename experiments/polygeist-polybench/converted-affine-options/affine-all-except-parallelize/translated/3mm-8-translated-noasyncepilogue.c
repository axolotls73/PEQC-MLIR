#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 21; 
  int arith_const_13 = 12; 
  int arith_const_14 = 32; 
  int arith_const_15 = -1; 
  int arith_const_16 = -19; 
  int arith_const_17 = 19; 
  int arith_const_18 = 24; 
  int arith_const_19 = 18; 
  int arith_const_20 = 20; 
  int arith_const_21 = 3; 
  int arith_const_22 = 2; 
  int arith_const_23 = 4; 
  int arith_const_24 = 5; 
  double arith_const_25 = 0.000000; 
  int arith_const_26 = 0; 
  int arith_const_27 = 16; 
  int arith_const_28 = 1; 
  for (int for_iter_29 = arith_const_26; for_iter_29 < arith_const_27; for_iter_29 += arith_const_28) {
    for (int for_iter_30 = arith_const_26; for_iter_30 < arith_const_28; for_iter_30 += arith_const_28) {
      int arith_addi_31 = (for_iter_29 + for_iter_30); 
      for (int for_iter_32 = arith_const_26; for_iter_32 < arith_const_24; for_iter_32 += arith_const_28) {
        int arith_muli_33 = (for_iter_32 * arith_const_23); 
        func_arg_11[arith_addi_31][arith_muli_33] = arith_const_25; 
        func_arg_8[arith_addi_31][arith_muli_33] = arith_const_25; 
        int arith_addi_34 = (arith_muli_33 + arith_const_28); 
        func_arg_11[arith_addi_31][arith_addi_34] = arith_const_25; 
        func_arg_8[arith_addi_31][arith_addi_34] = arith_const_25; 
        int arith_addi_35 = (arith_muli_33 + arith_const_22); 
        func_arg_11[arith_addi_31][arith_addi_35] = arith_const_25; 
        func_arg_8[arith_addi_31][arith_addi_35] = arith_const_25; 
        int arith_addi_36 = (arith_muli_33 + arith_const_21); 
        func_arg_11[arith_addi_31][arith_addi_36] = arith_const_25; 
        func_arg_8[arith_addi_31][arith_addi_36] = arith_const_25; 
      }
      for (int for_iter_37 = arith_const_26; for_iter_37 < arith_const_22; for_iter_37 += arith_const_28) {
        int arith_addi_38 = (for_iter_37 + arith_const_20); 
        func_arg_11[arith_addi_31][arith_addi_38] = arith_const_25; 
        func_arg_8[arith_addi_31][arith_addi_38] = arith_const_25; 
      }
    }
  }
  for (int for_iter_39 = arith_const_26; for_iter_39 < arith_const_22; for_iter_39 += arith_const_28) {
    int arith_addi_40 = (for_iter_39 + arith_const_27); 
    for (int for_iter_41 = arith_const_26; for_iter_41 < arith_const_28; for_iter_41 += arith_const_28) {
      int arith_addi_42 = (arith_addi_40 + for_iter_41); 
      for (int for_iter_43 = arith_const_26; for_iter_43 < arith_const_24; for_iter_43 += arith_const_28) {
        int arith_muli_44 = (for_iter_43 * arith_const_23); 
        func_arg_8[arith_addi_42][arith_muli_44] = arith_const_25; 
        int arith_addi_45 = (arith_muli_44 + arith_const_28); 
        func_arg_8[arith_addi_42][arith_addi_45] = arith_const_25; 
        int arith_addi_46 = (arith_muli_44 + arith_const_22); 
        func_arg_8[arith_addi_42][arith_addi_46] = arith_const_25; 
        int arith_addi_47 = (arith_muli_44 + arith_const_21); 
        func_arg_8[arith_addi_42][arith_addi_47] = arith_const_25; 
      }
      for (int for_iter_48 = arith_const_26; for_iter_48 < arith_const_22; for_iter_48 += arith_const_28) {
        int arith_addi_49 = (for_iter_48 + arith_const_20); 
        func_arg_8[arith_addi_42][arith_addi_49] = arith_const_25; 
      }
    }
  }
  for (int for_iter_50 = arith_const_26; for_iter_50 < arith_const_19; for_iter_50 += arith_const_28) {
    for (int for_iter_51 = arith_const_26; for_iter_51 < arith_const_28; for_iter_51 += arith_const_28) {
      int arith_addi_52 = (for_iter_50 + for_iter_51); 
      for (int for_iter_53 = arith_const_26; for_iter_53 < arith_const_18; for_iter_53 += arith_const_28) {
        for (int for_iter_54 = arith_const_26; for_iter_54 < arith_const_28; for_iter_54 += arith_const_28) {
          int arith_addi_55 = (for_iter_53 + for_iter_54); 
          double memref_load_56 = func_arg_9[arith_addi_52][arith_addi_55]; 
          double memref_load_57 = func_arg_9[arith_addi_52][arith_addi_55]; 
          double memref_load_58 = func_arg_9[arith_addi_52][arith_addi_55]; 
          double memref_load_59 = func_arg_9[arith_addi_52][arith_addi_55]; 
          for (int for_iter_60 = arith_const_26; for_iter_60 < arith_const_24; for_iter_60 += arith_const_28) {
            int arith_muli_61 = (for_iter_60 * arith_const_23); 
            double memref_load_62 = func_arg_8[arith_addi_52][arith_muli_61]; 
            double memref_load_63 = func_arg_10[arith_addi_55][arith_muli_61]; 
            double arith_mulf_64 = (memref_load_56 * memref_load_63); 
            double arith_addf_65 = (memref_load_62 + arith_mulf_64); 
            func_arg_8[arith_addi_52][arith_muli_61] = arith_addf_65; 
            int arith_addi_66 = (arith_muli_61 + arith_const_28); 
            double memref_load_67 = func_arg_8[arith_addi_52][arith_addi_66]; 
            double memref_load_68 = func_arg_10[arith_addi_55][arith_addi_66]; 
            double arith_mulf_69 = (memref_load_57 * memref_load_68); 
            double arith_addf_70 = (memref_load_67 + arith_mulf_69); 
            func_arg_8[arith_addi_52][arith_addi_66] = arith_addf_70; 
            int arith_addi_71 = (arith_muli_61 + arith_const_22); 
            double memref_load_72 = func_arg_8[arith_addi_52][arith_addi_71]; 
            double memref_load_73 = func_arg_10[arith_addi_55][arith_addi_71]; 
            double arith_mulf_74 = (memref_load_58 * memref_load_73); 
            double arith_addf_75 = (memref_load_72 + arith_mulf_74); 
            func_arg_8[arith_addi_52][arith_addi_71] = arith_addf_75; 
            int arith_addi_76 = (arith_muli_61 + arith_const_21); 
            double memref_load_77 = func_arg_8[arith_addi_52][arith_addi_76]; 
            double memref_load_78 = func_arg_10[arith_addi_55][arith_addi_76]; 
            double arith_mulf_79 = (memref_load_59 * memref_load_78); 
            double arith_addf_80 = (memref_load_77 + arith_mulf_79); 
            func_arg_8[arith_addi_52][arith_addi_76] = arith_addf_80; 
          }
          double memref_load_81 = func_arg_9[arith_addi_52][arith_addi_55]; 
          for (int for_iter_82 = arith_const_26; for_iter_82 < arith_const_22; for_iter_82 += arith_const_28) {
            int arith_addi_83 = (for_iter_82 + arith_const_20); 
            double memref_load_84 = func_arg_8[arith_addi_52][arith_addi_83]; 
            double memref_load_85 = func_arg_10[arith_addi_55][arith_addi_83]; 
            double arith_mulf_86 = (memref_load_81 * memref_load_85); 
            double arith_addf_87 = (memref_load_84 + arith_mulf_86); 
            func_arg_8[arith_addi_52][arith_addi_83] = arith_addf_87; 
          }
        }
      }
    }
  }
  for (int for_iter_88 = arith_const_26; for_iter_88 < arith_const_27; for_iter_88 += arith_const_28) {
    for (int for_iter_89 = arith_const_26; for_iter_89 < arith_const_28; for_iter_89 += arith_const_28) {
      int arith_addi_90 = (for_iter_88 + for_iter_89); 
      for (int for_iter_91 = arith_const_26; for_iter_91 < arith_const_23; for_iter_91 += arith_const_28) {
        int arith_muli_92 = (for_iter_91 * arith_const_23); 
        func_arg_5[arith_addi_90][arith_muli_92] = arith_const_25; 
        int arith_addi_93 = (arith_muli_92 + arith_const_28); 
        func_arg_5[arith_addi_90][arith_addi_93] = arith_const_25; 
        int arith_addi_94 = (arith_muli_92 + arith_const_22); 
        func_arg_5[arith_addi_90][arith_addi_94] = arith_const_25; 
        int arith_addi_95 = (arith_muli_92 + arith_const_21); 
        func_arg_5[arith_addi_90][arith_addi_95] = arith_const_25; 
      }
      for (int for_iter_96 = arith_const_26; for_iter_96 < arith_const_22; for_iter_96 += arith_const_28) {
        int arith_addi_97 = (for_iter_96 + arith_const_27); 
        func_arg_5[arith_addi_90][arith_addi_97] = arith_const_25; 
      }
    }
  }
  for (int for_iter_98 = arith_const_26; for_iter_98 < arith_const_22; for_iter_98 += arith_const_28) {
    for (int for_iter_99 = arith_const_26; for_iter_99 < arith_const_28; for_iter_99 += arith_const_28) {
      int arith_addi_100 = (for_iter_98 + for_iter_99); 
      int arith_cmpi_101 = (arith_addi_100 == arith_const_26); 
      if (arith_cmpi_101) {
        for (int for_iter_102 = arith_const_26; for_iter_102 < arith_const_27; for_iter_102 += arith_const_28) {
          for (int for_iter_103 = arith_const_26; for_iter_103 < arith_const_19; for_iter_103 += arith_const_28) {
            for (int for_iter_104 = arith_const_26; for_iter_104 < arith_const_24; for_iter_104 += arith_const_28) {
              int arith_muli_105 = (for_iter_104 * arith_const_23); 
              double memref_load_106 = func_arg_5[for_iter_102][for_iter_103]; 
              double memref_load_107 = func_arg_6[for_iter_102][arith_muli_105]; 
              double memref_load_108 = func_arg_7[arith_muli_105][for_iter_103]; 
              double arith_mulf_109 = (memref_load_107 * memref_load_108); 
              double arith_addf_110 = (memref_load_106 + arith_mulf_109); 
              func_arg_5[for_iter_102][for_iter_103] = arith_addf_110; 
              int arith_addi_111 = (arith_muli_105 + arith_const_28); 
              double memref_load_112 = func_arg_5[for_iter_102][for_iter_103]; 
              double memref_load_113 = func_arg_6[for_iter_102][arith_addi_111]; 
              double memref_load_114 = func_arg_7[arith_addi_111][for_iter_103]; 
              double arith_mulf_115 = (memref_load_113 * memref_load_114); 
              double arith_addf_116 = (memref_load_112 + arith_mulf_115); 
              func_arg_5[for_iter_102][for_iter_103] = arith_addf_116; 
              int arith_addi_117 = (arith_muli_105 + arith_const_22); 
              double memref_load_118 = func_arg_5[for_iter_102][for_iter_103]; 
              double memref_load_119 = func_arg_6[for_iter_102][arith_addi_117]; 
              double memref_load_120 = func_arg_7[arith_addi_117][for_iter_103]; 
              double arith_mulf_121 = (memref_load_119 * memref_load_120); 
              double arith_addf_122 = (memref_load_118 + arith_mulf_121); 
              func_arg_5[for_iter_102][for_iter_103] = arith_addf_122; 
              int arith_addi_123 = (arith_muli_105 + arith_const_21); 
              double memref_load_124 = func_arg_5[for_iter_102][for_iter_103]; 
              double memref_load_125 = func_arg_6[for_iter_102][arith_addi_123]; 
              double memref_load_126 = func_arg_7[arith_addi_123][for_iter_103]; 
              double arith_mulf_127 = (memref_load_125 * memref_load_126); 
              double arith_addf_128 = (memref_load_124 + arith_mulf_127); 
              func_arg_5[for_iter_102][for_iter_103] = arith_addf_128; 
            }
            double memref_load_129 = func_arg_5[for_iter_102][for_iter_103]; 
            double memref_load_130 = func_arg_5[for_iter_102][for_iter_103]; 
            double memref_load_131 = func_arg_5[for_iter_102][for_iter_103]; 
            double memref_load_132 = func_arg_5[for_iter_102][for_iter_103]; 
            for (int for_iter_133 = arith_const_26; for_iter_133 < arith_const_21; for_iter_133 += arith_const_28) {
              int arith_muli_134 = (for_iter_133 * arith_const_23); 
              int arith_addi_135 = (arith_muli_134 + arith_const_17); 
              int arith_addi_136 = (arith_addi_135 + arith_const_16); 
              double memref_load_137 = func_arg_11[for_iter_102][arith_addi_136]; 
              int arith_addi_138 = (arith_addi_135 + arith_const_16); 
              double memref_load_139 = func_arg_8[for_iter_103][arith_addi_138]; 
              double arith_mulf_140 = (memref_load_129 * memref_load_139); 
              double arith_addf_141 = (memref_load_137 + arith_mulf_140); 
              int arith_addi_142 = (arith_addi_135 + arith_const_16); 
              func_arg_11[for_iter_102][arith_addi_142] = arith_addf_141; 
              int arith_addi_143 = (arith_addi_135 + arith_const_28); 
              int arith_addi_144 = (arith_addi_143 + arith_const_16); 
              double memref_load_145 = func_arg_11[for_iter_102][arith_addi_144]; 
              int arith_addi_146 = (arith_addi_143 + arith_const_16); 
              double memref_load_147 = func_arg_8[for_iter_103][arith_addi_146]; 
              double arith_mulf_148 = (memref_load_130 * memref_load_147); 
              double arith_addf_149 = (memref_load_145 + arith_mulf_148); 
              int arith_addi_150 = (arith_addi_143 + arith_const_16); 
              func_arg_11[for_iter_102][arith_addi_150] = arith_addf_149; 
              int arith_addi_151 = (arith_addi_135 + arith_const_22); 
              int arith_addi_152 = (arith_addi_151 + arith_const_16); 
              double memref_load_153 = func_arg_11[for_iter_102][arith_addi_152]; 
              int arith_addi_154 = (arith_addi_151 + arith_const_16); 
              double memref_load_155 = func_arg_8[for_iter_103][arith_addi_154]; 
              double arith_mulf_156 = (memref_load_131 * memref_load_155); 
              double arith_addf_157 = (memref_load_153 + arith_mulf_156); 
              int arith_addi_158 = (arith_addi_151 + arith_const_16); 
              func_arg_11[for_iter_102][arith_addi_158] = arith_addf_157; 
              int arith_addi_159 = (arith_addi_135 + arith_const_21); 
              int arith_addi_160 = (arith_addi_159 + arith_const_16); 
              double memref_load_161 = func_arg_11[for_iter_102][arith_addi_160]; 
              int arith_addi_162 = (arith_addi_159 + arith_const_16); 
              double memref_load_163 = func_arg_8[for_iter_103][arith_addi_162]; 
              double arith_mulf_164 = (memref_load_132 * memref_load_163); 
              double arith_addf_165 = (memref_load_161 + arith_mulf_164); 
              int arith_addi_166 = (arith_addi_159 + arith_const_16); 
              func_arg_11[for_iter_102][arith_addi_166] = arith_addf_165; 
            }
            double memref_load_167 = func_arg_11[for_iter_102][arith_const_13]; 
            double memref_load_168 = func_arg_5[for_iter_102][for_iter_103]; 
            double memref_load_169 = func_arg_8[for_iter_103][arith_const_13]; 
            double arith_mulf_170 = (memref_load_168 * memref_load_169); 
            double arith_addf_171 = (memref_load_167 + arith_mulf_170); 
            func_arg_11[for_iter_102][arith_const_13] = arith_addf_171; 
          }
        }
      }
      int arith_addi_172 = (for_iter_98 + for_iter_99); 
      int arith_addi_173 = (arith_addi_172 + arith_const_15); 
      int arith_cmpi_174 = (arith_addi_173 == arith_const_26); 
      if (arith_cmpi_174) {
        for (int for_iter_175 = arith_const_26; for_iter_175 < arith_const_27; for_iter_175 += arith_const_28) {
          for (int for_iter_176 = arith_const_26; for_iter_176 < arith_const_19; for_iter_176 += arith_const_28) {
            double memref_load_177 = func_arg_5[for_iter_175][for_iter_176]; 
            double memref_load_178 = func_arg_5[for_iter_175][for_iter_176]; 
            double memref_load_179 = func_arg_5[for_iter_175][for_iter_176]; 
            double memref_load_180 = func_arg_5[for_iter_175][for_iter_176]; 
            for (int for_iter_181 = arith_const_26; for_iter_181 < arith_const_22; for_iter_181 += arith_const_28) {
              int arith_muli_182 = (for_iter_181 * arith_const_23); 
              int arith_addi_183 = (arith_muli_182 + arith_const_14); 
              int arith_addi_184 = (arith_addi_183 + arith_const_16); 
              double memref_load_185 = func_arg_11[for_iter_175][arith_addi_184]; 
              int arith_addi_186 = (arith_addi_183 + arith_const_16); 
              double memref_load_187 = func_arg_8[for_iter_176][arith_addi_186]; 
              double arith_mulf_188 = (memref_load_177 * memref_load_187); 
              double arith_addf_189 = (memref_load_185 + arith_mulf_188); 
              int arith_addi_190 = (arith_addi_183 + arith_const_16); 
              func_arg_11[for_iter_175][arith_addi_190] = arith_addf_189; 
              int arith_addi_191 = (arith_addi_183 + arith_const_28); 
              int arith_addi_192 = (arith_addi_191 + arith_const_16); 
              double memref_load_193 = func_arg_11[for_iter_175][arith_addi_192]; 
              int arith_addi_194 = (arith_addi_191 + arith_const_16); 
              double memref_load_195 = func_arg_8[for_iter_176][arith_addi_194]; 
              double arith_mulf_196 = (memref_load_178 * memref_load_195); 
              double arith_addf_197 = (memref_load_193 + arith_mulf_196); 
              int arith_addi_198 = (arith_addi_191 + arith_const_16); 
              func_arg_11[for_iter_175][arith_addi_198] = arith_addf_197; 
              int arith_addi_199 = (arith_addi_183 + arith_const_22); 
              int arith_addi_200 = (arith_addi_199 + arith_const_16); 
              double memref_load_201 = func_arg_11[for_iter_175][arith_addi_200]; 
              int arith_addi_202 = (arith_addi_199 + arith_const_16); 
              double memref_load_203 = func_arg_8[for_iter_176][arith_addi_202]; 
              double arith_mulf_204 = (memref_load_179 * memref_load_203); 
              double arith_addf_205 = (memref_load_201 + arith_mulf_204); 
              int arith_addi_206 = (arith_addi_199 + arith_const_16); 
              func_arg_11[for_iter_175][arith_addi_206] = arith_addf_205; 
              int arith_addi_207 = (arith_addi_183 + arith_const_21); 
              int arith_addi_208 = (arith_addi_207 + arith_const_16); 
              double memref_load_209 = func_arg_11[for_iter_175][arith_addi_208]; 
              int arith_addi_210 = (arith_addi_207 + arith_const_16); 
              double memref_load_211 = func_arg_8[for_iter_176][arith_addi_210]; 
              double arith_mulf_212 = (memref_load_180 * memref_load_211); 
              double arith_addf_213 = (memref_load_209 + arith_mulf_212); 
              int arith_addi_214 = (arith_addi_207 + arith_const_16); 
              func_arg_11[for_iter_175][arith_addi_214] = arith_addf_213; 
            }
            double memref_load_215 = func_arg_11[for_iter_175][arith_const_12]; 
            double memref_load_216 = func_arg_5[for_iter_175][for_iter_176]; 
            double memref_load_217 = func_arg_8[for_iter_176][arith_const_12]; 
            double arith_mulf_218 = (memref_load_216 * memref_load_217); 
            double arith_addf_219 = (memref_load_215 + arith_mulf_218); 
            func_arg_11[for_iter_175][arith_const_12] = arith_addf_219; 
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
