#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 23; 
  int arith_const_12 = 32; 
  int arith_const_13 = -1; 
  int arith_const_14 = 29; 
  int arith_const_15 = -21; 
  int arith_const_16 = 5; 
  int arith_const_17 = 22; 
  int arith_const_18 = 3; 
  int arith_const_19 = 2; 
  int arith_const_20 = 4; 
  int arith_const_21 = 18; 
  double arith_const_22 = 0.000000; 
  int arith_const_23 = 19; 
  int arith_const_24 = 20; 
  int arith_const_25 = 21; 
  int arith_const_26 = 0; 
  int arith_const_27 = 16; 
  int arith_const_28 = 1; 
  for (int for_iter_29 = arith_const_26; for_iter_29 < arith_const_27; for_iter_29 += arith_const_28) {
    for (int for_iter_30 = arith_const_26; for_iter_30 < arith_const_28; for_iter_30 += arith_const_28) {
      int arith_addi_31 = (for_iter_29 + for_iter_30); 
      for (int for_iter_32 = arith_const_26; for_iter_32 < arith_const_20; for_iter_32 += arith_const_28) {
        int arith_muli_33 = (for_iter_32 * arith_const_20); 
        double memref_load_34 = func_arg_10[arith_addi_31][arith_muli_33]; 
        double arith_mulf_35 = (memref_load_34 * func_arg_5); 
        func_arg_10[arith_addi_31][arith_muli_33] = arith_mulf_35; 
        func_arg_6[arith_addi_31][arith_muli_33] = arith_const_22; 
        int arith_addi_36 = (arith_muli_33 + arith_const_28); 
        double memref_load_37 = func_arg_10[arith_addi_31][arith_addi_36]; 
        double arith_mulf_38 = (memref_load_37 * func_arg_5); 
        func_arg_10[arith_addi_31][arith_addi_36] = arith_mulf_38; 
        func_arg_6[arith_addi_31][arith_addi_36] = arith_const_22; 
        int arith_addi_39 = (arith_muli_33 + arith_const_19); 
        double memref_load_40 = func_arg_10[arith_addi_31][arith_addi_39]; 
        double arith_mulf_41 = (memref_load_40 * func_arg_5); 
        func_arg_10[arith_addi_31][arith_addi_39] = arith_mulf_41; 
        func_arg_6[arith_addi_31][arith_addi_39] = arith_const_22; 
        int arith_addi_42 = (arith_muli_33 + arith_const_18); 
        double memref_load_43 = func_arg_10[arith_addi_31][arith_addi_42]; 
        double arith_mulf_44 = (memref_load_43 * func_arg_5); 
        func_arg_10[arith_addi_31][arith_addi_42] = arith_mulf_44; 
        func_arg_6[arith_addi_31][arith_addi_42] = arith_const_22; 
      }
      for (int for_iter_45 = arith_const_26; for_iter_45 < arith_const_19; for_iter_45 += arith_const_28) {
        int arith_addi_46 = (for_iter_45 + arith_const_27); 
        double memref_load_47 = func_arg_10[arith_addi_31][arith_addi_46]; 
        double arith_mulf_48 = (memref_load_47 * func_arg_5); 
        func_arg_10[arith_addi_31][arith_addi_46] = arith_mulf_48; 
        func_arg_6[arith_addi_31][arith_addi_46] = arith_const_22; 
      }
      double memref_load_49 = func_arg_10[arith_addi_31][arith_const_21]; 
      double arith_mulf_50 = (memref_load_49 * func_arg_5); 
      func_arg_10[arith_addi_31][arith_const_21] = arith_mulf_50; 
      double memref_load_51 = func_arg_10[arith_addi_31][arith_const_23]; 
      double arith_mulf_52 = (memref_load_51 * func_arg_5); 
      func_arg_10[arith_addi_31][arith_const_23] = arith_mulf_52; 
      double memref_load_53 = func_arg_10[arith_addi_31][arith_const_24]; 
      double arith_mulf_54 = (memref_load_53 * func_arg_5); 
      func_arg_10[arith_addi_31][arith_const_24] = arith_mulf_54; 
      double memref_load_55 = func_arg_10[arith_addi_31][arith_const_25]; 
      double arith_mulf_56 = (memref_load_55 * func_arg_5); 
      func_arg_10[arith_addi_31][arith_const_25] = arith_mulf_56; 
      for (int for_iter_57 = arith_const_26; for_iter_57 < arith_const_19; for_iter_57 += arith_const_28) {
        int arith_addi_58 = (for_iter_57 + arith_const_17); 
        double memref_load_59 = func_arg_10[arith_addi_31][arith_addi_58]; 
        double arith_mulf_60 = (memref_load_59 * func_arg_5); 
        func_arg_10[arith_addi_31][arith_addi_58] = arith_mulf_60; 
      }
    }
  }
  for (int for_iter_61 = arith_const_26; for_iter_61 < arith_const_19; for_iter_61 += arith_const_28) {
    for (int for_iter_62 = arith_const_26; for_iter_62 < arith_const_28; for_iter_62 += arith_const_28) {
      int arith_addi_63 = (for_iter_61 + for_iter_62); 
      int arith_cmpi_64 = (arith_addi_63 == arith_const_26); 
      if (arith_cmpi_64) {
        for (int for_iter_65 = arith_const_26; for_iter_65 < arith_const_27; for_iter_65 += arith_const_28) {
          for (int for_iter_66 = arith_const_26; for_iter_66 < arith_const_21; for_iter_66 += arith_const_28) {
            for (int for_iter_67 = arith_const_26; for_iter_67 < arith_const_16; for_iter_67 += arith_const_28) {
              int arith_muli_68 = (for_iter_67 * arith_const_20); 
              double memref_load_69 = func_arg_6[for_iter_65][for_iter_66]; 
              double memref_load_70 = func_arg_7[for_iter_65][arith_muli_68]; 
              double arith_mulf_71 = (func_arg_4 * memref_load_70); 
              double memref_load_72 = func_arg_8[arith_muli_68][for_iter_66]; 
              double arith_mulf_73 = (arith_mulf_71 * memref_load_72); 
              double arith_addf_74 = (memref_load_69 + arith_mulf_73); 
              func_arg_6[for_iter_65][for_iter_66] = arith_addf_74; 
              int arith_addi_75 = (arith_muli_68 + arith_const_28); 
              double memref_load_76 = func_arg_6[for_iter_65][for_iter_66]; 
              double memref_load_77 = func_arg_7[for_iter_65][arith_addi_75]; 
              double arith_mulf_78 = (func_arg_4 * memref_load_77); 
              double memref_load_79 = func_arg_8[arith_addi_75][for_iter_66]; 
              double arith_mulf_80 = (arith_mulf_78 * memref_load_79); 
              double arith_addf_81 = (memref_load_76 + arith_mulf_80); 
              func_arg_6[for_iter_65][for_iter_66] = arith_addf_81; 
              int arith_addi_82 = (arith_muli_68 + arith_const_19); 
              double memref_load_83 = func_arg_6[for_iter_65][for_iter_66]; 
              double memref_load_84 = func_arg_7[for_iter_65][arith_addi_82]; 
              double arith_mulf_85 = (func_arg_4 * memref_load_84); 
              double memref_load_86 = func_arg_8[arith_addi_82][for_iter_66]; 
              double arith_mulf_87 = (arith_mulf_85 * memref_load_86); 
              double arith_addf_88 = (memref_load_83 + arith_mulf_87); 
              func_arg_6[for_iter_65][for_iter_66] = arith_addf_88; 
              int arith_addi_89 = (arith_muli_68 + arith_const_18); 
              double memref_load_90 = func_arg_6[for_iter_65][for_iter_66]; 
              double memref_load_91 = func_arg_7[for_iter_65][arith_addi_89]; 
              double arith_mulf_92 = (func_arg_4 * memref_load_91); 
              double memref_load_93 = func_arg_8[arith_addi_89][for_iter_66]; 
              double arith_mulf_94 = (arith_mulf_92 * memref_load_93); 
              double arith_addf_95 = (memref_load_90 + arith_mulf_94); 
              func_arg_6[for_iter_65][for_iter_66] = arith_addf_95; 
            }
            for (int for_iter_96 = arith_const_26; for_iter_96 < arith_const_19; for_iter_96 += arith_const_28) {
              int arith_addi_97 = (for_iter_96 + arith_const_24); 
              double memref_load_98 = func_arg_6[for_iter_65][for_iter_66]; 
              double memref_load_99 = func_arg_7[for_iter_65][arith_addi_97]; 
              double arith_mulf_100 = (func_arg_4 * memref_load_99); 
              double memref_load_101 = func_arg_8[arith_addi_97][for_iter_66]; 
              double arith_mulf_102 = (arith_mulf_100 * memref_load_101); 
              double arith_addf_103 = (memref_load_98 + arith_mulf_102); 
              func_arg_6[for_iter_65][for_iter_66] = arith_addf_103; 
            }
            double memref_load_104 = func_arg_6[for_iter_65][for_iter_66]; 
            double memref_load_105 = func_arg_6[for_iter_65][for_iter_66]; 
            double memref_load_106 = func_arg_6[for_iter_65][for_iter_66]; 
            double memref_load_107 = func_arg_6[for_iter_65][for_iter_66]; 
            for (int for_iter_108 = arith_const_26; for_iter_108 < arith_const_19; for_iter_108 += arith_const_28) {
              int arith_muli_109 = (for_iter_108 * arith_const_20); 
              int arith_addi_110 = (arith_muli_109 + arith_const_25); 
              int arith_addi_111 = (arith_addi_110 + arith_const_15); 
              double memref_load_112 = func_arg_10[for_iter_65][arith_addi_111]; 
              int arith_addi_113 = (arith_addi_110 + arith_const_15); 
              double memref_load_114 = func_arg_9[for_iter_66][arith_addi_113]; 
              double arith_mulf_115 = (memref_load_104 * memref_load_114); 
              double arith_addf_116 = (memref_load_112 + arith_mulf_115); 
              int arith_addi_117 = (arith_addi_110 + arith_const_15); 
              func_arg_10[for_iter_65][arith_addi_117] = arith_addf_116; 
              int arith_addi_118 = (arith_addi_110 + arith_const_28); 
              int arith_addi_119 = (arith_addi_118 + arith_const_15); 
              double memref_load_120 = func_arg_10[for_iter_65][arith_addi_119]; 
              int arith_addi_121 = (arith_addi_118 + arith_const_15); 
              double memref_load_122 = func_arg_9[for_iter_66][arith_addi_121]; 
              double arith_mulf_123 = (memref_load_105 * memref_load_122); 
              double arith_addf_124 = (memref_load_120 + arith_mulf_123); 
              int arith_addi_125 = (arith_addi_118 + arith_const_15); 
              func_arg_10[for_iter_65][arith_addi_125] = arith_addf_124; 
              int arith_addi_126 = (arith_addi_110 + arith_const_19); 
              int arith_addi_127 = (arith_addi_126 + arith_const_15); 
              double memref_load_128 = func_arg_10[for_iter_65][arith_addi_127]; 
              int arith_addi_129 = (arith_addi_126 + arith_const_15); 
              double memref_load_130 = func_arg_9[for_iter_66][arith_addi_129]; 
              double arith_mulf_131 = (memref_load_106 * memref_load_130); 
              double arith_addf_132 = (memref_load_128 + arith_mulf_131); 
              int arith_addi_133 = (arith_addi_126 + arith_const_15); 
              func_arg_10[for_iter_65][arith_addi_133] = arith_addf_132; 
              int arith_addi_134 = (arith_addi_110 + arith_const_18); 
              int arith_addi_135 = (arith_addi_134 + arith_const_15); 
              double memref_load_136 = func_arg_10[for_iter_65][arith_addi_135]; 
              int arith_addi_137 = (arith_addi_134 + arith_const_15); 
              double memref_load_138 = func_arg_9[for_iter_66][arith_addi_137]; 
              double arith_mulf_139 = (memref_load_107 * memref_load_138); 
              double arith_addf_140 = (memref_load_136 + arith_mulf_139); 
              int arith_addi_141 = (arith_addi_134 + arith_const_15); 
              func_arg_10[for_iter_65][arith_addi_141] = arith_addf_140; 
            }
            double memref_load_142 = func_arg_6[for_iter_65][for_iter_66]; 
            for (int for_iter_143 = arith_const_26; for_iter_143 < arith_const_18; for_iter_143 += arith_const_28) {
              int arith_addi_144 = (for_iter_143 + arith_const_14); 
              int arith_addi_145 = (arith_addi_144 + arith_const_15); 
              double memref_load_146 = func_arg_10[for_iter_65][arith_addi_145]; 
              int arith_addi_147 = (arith_addi_144 + arith_const_15); 
              double memref_load_148 = func_arg_9[for_iter_66][arith_addi_147]; 
              double arith_mulf_149 = (memref_load_142 * memref_load_148); 
              double arith_addf_150 = (memref_load_146 + arith_mulf_149); 
              int arith_addi_151 = (arith_addi_144 + arith_const_15); 
              func_arg_10[for_iter_65][arith_addi_151] = arith_addf_150; 
            }
          }
        }
      }
      int arith_addi_152 = (for_iter_61 + for_iter_62); 
      int arith_addi_153 = (arith_addi_152 + arith_const_13); 
      int arith_cmpi_154 = (arith_addi_153 == arith_const_26); 
      if (arith_cmpi_154) {
        for (int for_iter_155 = arith_const_26; for_iter_155 < arith_const_27; for_iter_155 += arith_const_28) {
          for (int for_iter_156 = arith_const_26; for_iter_156 < arith_const_21; for_iter_156 += arith_const_28) {
            double memref_load_157 = func_arg_6[for_iter_155][for_iter_156]; 
            double memref_load_158 = func_arg_6[for_iter_155][for_iter_156]; 
            double memref_load_159 = func_arg_6[for_iter_155][for_iter_156]; 
            double memref_load_160 = func_arg_6[for_iter_155][for_iter_156]; 
            for (int for_iter_161 = arith_const_26; for_iter_161 < arith_const_18; for_iter_161 += arith_const_28) {
              int arith_muli_162 = (for_iter_161 * arith_const_20); 
              int arith_addi_163 = (arith_muli_162 + arith_const_12); 
              int arith_addi_164 = (arith_addi_163 + arith_const_15); 
              double memref_load_165 = func_arg_10[for_iter_155][arith_addi_164]; 
              int arith_addi_166 = (arith_addi_163 + arith_const_15); 
              double memref_load_167 = func_arg_9[for_iter_156][arith_addi_166]; 
              double arith_mulf_168 = (memref_load_157 * memref_load_167); 
              double arith_addf_169 = (memref_load_165 + arith_mulf_168); 
              int arith_addi_170 = (arith_addi_163 + arith_const_15); 
              func_arg_10[for_iter_155][arith_addi_170] = arith_addf_169; 
              int arith_addi_171 = (arith_addi_163 + arith_const_28); 
              int arith_addi_172 = (arith_addi_171 + arith_const_15); 
              double memref_load_173 = func_arg_10[for_iter_155][arith_addi_172]; 
              int arith_addi_174 = (arith_addi_171 + arith_const_15); 
              double memref_load_175 = func_arg_9[for_iter_156][arith_addi_174]; 
              double arith_mulf_176 = (memref_load_158 * memref_load_175); 
              double arith_addf_177 = (memref_load_173 + arith_mulf_176); 
              int arith_addi_178 = (arith_addi_171 + arith_const_15); 
              func_arg_10[for_iter_155][arith_addi_178] = arith_addf_177; 
              int arith_addi_179 = (arith_addi_163 + arith_const_19); 
              int arith_addi_180 = (arith_addi_179 + arith_const_15); 
              double memref_load_181 = func_arg_10[for_iter_155][arith_addi_180]; 
              int arith_addi_182 = (arith_addi_179 + arith_const_15); 
              double memref_load_183 = func_arg_9[for_iter_156][arith_addi_182]; 
              double arith_mulf_184 = (memref_load_159 * memref_load_183); 
              double arith_addf_185 = (memref_load_181 + arith_mulf_184); 
              int arith_addi_186 = (arith_addi_179 + arith_const_15); 
              func_arg_10[for_iter_155][arith_addi_186] = arith_addf_185; 
              int arith_addi_187 = (arith_addi_163 + arith_const_18); 
              int arith_addi_188 = (arith_addi_187 + arith_const_15); 
              double memref_load_189 = func_arg_10[for_iter_155][arith_addi_188]; 
              int arith_addi_190 = (arith_addi_187 + arith_const_15); 
              double memref_load_191 = func_arg_9[for_iter_156][arith_addi_190]; 
              double arith_mulf_192 = (memref_load_160 * memref_load_191); 
              double arith_addf_193 = (memref_load_189 + arith_mulf_192); 
              int arith_addi_194 = (arith_addi_187 + arith_const_15); 
              func_arg_10[for_iter_155][arith_addi_194] = arith_addf_193; 
            }
            double memref_load_195 = func_arg_10[for_iter_155][arith_const_11]; 
            double memref_load_196 = func_arg_6[for_iter_155][for_iter_156]; 
            double memref_load_197 = func_arg_9[for_iter_156][arith_const_11]; 
            double arith_mulf_198 = (memref_load_196 * memref_load_197); 
            double arith_addf_199 = (memref_load_195 + arith_mulf_198); 
            func_arg_10[for_iter_155][arith_const_11] = arith_addf_199; 
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
  double alpha;
  double beta;
  double* tmp;
  double* A;
  double* B;
  double* C;
  double* D;


  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);

}

#pragma pocc-region-end
