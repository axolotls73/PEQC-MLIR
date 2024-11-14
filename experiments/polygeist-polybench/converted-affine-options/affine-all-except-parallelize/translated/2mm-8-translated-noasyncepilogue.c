#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 23; 
  int arith_const_12 = -1; 
  int arith_const_13 = 29; 
  int arith_const_14 = -21; 
  int arith_const_15 = 5; 
  int arith_const_16 = 22; 
  int arith_const_17 = 3; 
  int arith_const_18 = 2; 
  int arith_const_19 = 4; 
  int arith_const_20 = 16; 
  int arith_const_21 = 32; 
  int arith_const_22 = 18; 
  double arith_const_23 = 0.000000; 
  int arith_const_24 = 19; 
  int arith_const_25 = 20; 
  int arith_const_26 = 21; 
  int arith_const_27 = 0; 
  int arith_const_28 = 1; 
  for (int for_iter_29 = arith_const_27; for_iter_29 < arith_const_28; for_iter_29 += arith_const_28) {
    int arith_muli_30 = (for_iter_29 * arith_const_21); 
    for (int for_iter_31 = arith_const_27; for_iter_31 < arith_const_20; for_iter_31 += arith_const_28) {
      int arith_addi_32 = (arith_muli_30 + for_iter_31); 
      for (int for_iter_33 = arith_const_27; for_iter_33 < arith_const_19; for_iter_33 += arith_const_28) {
        int arith_muli_34 = (for_iter_33 * arith_const_19); 
        double memref_load_35 = func_arg_10[arith_addi_32][arith_muli_34]; 
        double arith_mulf_36 = (memref_load_35 * func_arg_5); 
        func_arg_10[arith_addi_32][arith_muli_34] = arith_mulf_36; 
        func_arg_6[arith_addi_32][arith_muli_34] = arith_const_23; 
        int arith_addi_37 = (arith_muli_34 + arith_const_28); 
        double memref_load_38 = func_arg_10[arith_addi_32][arith_addi_37]; 
        double arith_mulf_39 = (memref_load_38 * func_arg_5); 
        func_arg_10[arith_addi_32][arith_addi_37] = arith_mulf_39; 
        func_arg_6[arith_addi_32][arith_addi_37] = arith_const_23; 
        int arith_addi_40 = (arith_muli_34 + arith_const_18); 
        double memref_load_41 = func_arg_10[arith_addi_32][arith_addi_40]; 
        double arith_mulf_42 = (memref_load_41 * func_arg_5); 
        func_arg_10[arith_addi_32][arith_addi_40] = arith_mulf_42; 
        func_arg_6[arith_addi_32][arith_addi_40] = arith_const_23; 
        int arith_addi_43 = (arith_muli_34 + arith_const_17); 
        double memref_load_44 = func_arg_10[arith_addi_32][arith_addi_43]; 
        double arith_mulf_45 = (memref_load_44 * func_arg_5); 
        func_arg_10[arith_addi_32][arith_addi_43] = arith_mulf_45; 
        func_arg_6[arith_addi_32][arith_addi_43] = arith_const_23; 
      }
      for (int for_iter_46 = arith_const_27; for_iter_46 < arith_const_18; for_iter_46 += arith_const_28) {
        int arith_addi_47 = (for_iter_46 + arith_const_20); 
        double memref_load_48 = func_arg_10[arith_addi_32][arith_addi_47]; 
        double arith_mulf_49 = (memref_load_48 * func_arg_5); 
        func_arg_10[arith_addi_32][arith_addi_47] = arith_mulf_49; 
        func_arg_6[arith_addi_32][arith_addi_47] = arith_const_23; 
      }
      double memref_load_50 = func_arg_10[arith_addi_32][arith_const_22]; 
      double arith_mulf_51 = (memref_load_50 * func_arg_5); 
      func_arg_10[arith_addi_32][arith_const_22] = arith_mulf_51; 
      double memref_load_52 = func_arg_10[arith_addi_32][arith_const_24]; 
      double arith_mulf_53 = (memref_load_52 * func_arg_5); 
      func_arg_10[arith_addi_32][arith_const_24] = arith_mulf_53; 
      double memref_load_54 = func_arg_10[arith_addi_32][arith_const_25]; 
      double arith_mulf_55 = (memref_load_54 * func_arg_5); 
      func_arg_10[arith_addi_32][arith_const_25] = arith_mulf_55; 
      double memref_load_56 = func_arg_10[arith_addi_32][arith_const_26]; 
      double arith_mulf_57 = (memref_load_56 * func_arg_5); 
      func_arg_10[arith_addi_32][arith_const_26] = arith_mulf_57; 
      for (int for_iter_58 = arith_const_27; for_iter_58 < arith_const_18; for_iter_58 += arith_const_28) {
        int arith_addi_59 = (for_iter_58 + arith_const_16); 
        double memref_load_60 = func_arg_10[arith_addi_32][arith_addi_59]; 
        double arith_mulf_61 = (memref_load_60 * func_arg_5); 
        func_arg_10[arith_addi_32][arith_addi_59] = arith_mulf_61; 
      }
    }
  }
  for (int for_iter_62 = arith_const_27; for_iter_62 < arith_const_28; for_iter_62 += arith_const_28) {
    for (int for_iter_63 = arith_const_27; for_iter_63 < arith_const_18; for_iter_63 += arith_const_28) {
      int arith_muli_64 = (for_iter_62 * arith_const_21); 
      int arith_addi_65 = (for_iter_63 + arith_muli_64); 
      int arith_cmpi_66 = (arith_addi_65 == arith_const_27); 
      if (arith_cmpi_66) {
        for (int for_iter_67 = arith_const_27; for_iter_67 < arith_const_20; for_iter_67 += arith_const_28) {
          for (int for_iter_68 = arith_const_27; for_iter_68 < arith_const_22; for_iter_68 += arith_const_28) {
            for (int for_iter_69 = arith_const_27; for_iter_69 < arith_const_15; for_iter_69 += arith_const_28) {
              int arith_muli_70 = (for_iter_69 * arith_const_19); 
              double memref_load_71 = func_arg_6[for_iter_67][for_iter_68]; 
              double memref_load_72 = func_arg_7[for_iter_67][arith_muli_70]; 
              double arith_mulf_73 = (func_arg_4 * memref_load_72); 
              double memref_load_74 = func_arg_8[arith_muli_70][for_iter_68]; 
              double arith_mulf_75 = (arith_mulf_73 * memref_load_74); 
              double arith_addf_76 = (memref_load_71 + arith_mulf_75); 
              func_arg_6[for_iter_67][for_iter_68] = arith_addf_76; 
              int arith_addi_77 = (arith_muli_70 + arith_const_28); 
              double memref_load_78 = func_arg_6[for_iter_67][for_iter_68]; 
              double memref_load_79 = func_arg_7[for_iter_67][arith_addi_77]; 
              double arith_mulf_80 = (func_arg_4 * memref_load_79); 
              double memref_load_81 = func_arg_8[arith_addi_77][for_iter_68]; 
              double arith_mulf_82 = (arith_mulf_80 * memref_load_81); 
              double arith_addf_83 = (memref_load_78 + arith_mulf_82); 
              func_arg_6[for_iter_67][for_iter_68] = arith_addf_83; 
              int arith_addi_84 = (arith_muli_70 + arith_const_18); 
              double memref_load_85 = func_arg_6[for_iter_67][for_iter_68]; 
              double memref_load_86 = func_arg_7[for_iter_67][arith_addi_84]; 
              double arith_mulf_87 = (func_arg_4 * memref_load_86); 
              double memref_load_88 = func_arg_8[arith_addi_84][for_iter_68]; 
              double arith_mulf_89 = (arith_mulf_87 * memref_load_88); 
              double arith_addf_90 = (memref_load_85 + arith_mulf_89); 
              func_arg_6[for_iter_67][for_iter_68] = arith_addf_90; 
              int arith_addi_91 = (arith_muli_70 + arith_const_17); 
              double memref_load_92 = func_arg_6[for_iter_67][for_iter_68]; 
              double memref_load_93 = func_arg_7[for_iter_67][arith_addi_91]; 
              double arith_mulf_94 = (func_arg_4 * memref_load_93); 
              double memref_load_95 = func_arg_8[arith_addi_91][for_iter_68]; 
              double arith_mulf_96 = (arith_mulf_94 * memref_load_95); 
              double arith_addf_97 = (memref_load_92 + arith_mulf_96); 
              func_arg_6[for_iter_67][for_iter_68] = arith_addf_97; 
            }
            for (int for_iter_98 = arith_const_27; for_iter_98 < arith_const_18; for_iter_98 += arith_const_28) {
              int arith_addi_99 = (for_iter_98 + arith_const_25); 
              double memref_load_100 = func_arg_6[for_iter_67][for_iter_68]; 
              double memref_load_101 = func_arg_7[for_iter_67][arith_addi_99]; 
              double arith_mulf_102 = (func_arg_4 * memref_load_101); 
              double memref_load_103 = func_arg_8[arith_addi_99][for_iter_68]; 
              double arith_mulf_104 = (arith_mulf_102 * memref_load_103); 
              double arith_addf_105 = (memref_load_100 + arith_mulf_104); 
              func_arg_6[for_iter_67][for_iter_68] = arith_addf_105; 
            }
            double memref_load_106 = func_arg_6[for_iter_67][for_iter_68]; 
            double memref_load_107 = func_arg_6[for_iter_67][for_iter_68]; 
            double memref_load_108 = func_arg_6[for_iter_67][for_iter_68]; 
            double memref_load_109 = func_arg_6[for_iter_67][for_iter_68]; 
            for (int for_iter_110 = arith_const_27; for_iter_110 < arith_const_18; for_iter_110 += arith_const_28) {
              int arith_muli_111 = (for_iter_110 * arith_const_19); 
              int arith_addi_112 = (arith_muli_111 + arith_const_26); 
              int arith_addi_113 = (arith_addi_112 + arith_const_14); 
              double memref_load_114 = func_arg_10[for_iter_67][arith_addi_113]; 
              int arith_addi_115 = (arith_addi_112 + arith_const_14); 
              double memref_load_116 = func_arg_9[for_iter_68][arith_addi_115]; 
              double arith_mulf_117 = (memref_load_106 * memref_load_116); 
              double arith_addf_118 = (memref_load_114 + arith_mulf_117); 
              int arith_addi_119 = (arith_addi_112 + arith_const_14); 
              func_arg_10[for_iter_67][arith_addi_119] = arith_addf_118; 
              int arith_addi_120 = (arith_addi_112 + arith_const_28); 
              int arith_addi_121 = (arith_addi_120 + arith_const_14); 
              double memref_load_122 = func_arg_10[for_iter_67][arith_addi_121]; 
              int arith_addi_123 = (arith_addi_120 + arith_const_14); 
              double memref_load_124 = func_arg_9[for_iter_68][arith_addi_123]; 
              double arith_mulf_125 = (memref_load_107 * memref_load_124); 
              double arith_addf_126 = (memref_load_122 + arith_mulf_125); 
              int arith_addi_127 = (arith_addi_120 + arith_const_14); 
              func_arg_10[for_iter_67][arith_addi_127] = arith_addf_126; 
              int arith_addi_128 = (arith_addi_112 + arith_const_18); 
              int arith_addi_129 = (arith_addi_128 + arith_const_14); 
              double memref_load_130 = func_arg_10[for_iter_67][arith_addi_129]; 
              int arith_addi_131 = (arith_addi_128 + arith_const_14); 
              double memref_load_132 = func_arg_9[for_iter_68][arith_addi_131]; 
              double arith_mulf_133 = (memref_load_108 * memref_load_132); 
              double arith_addf_134 = (memref_load_130 + arith_mulf_133); 
              int arith_addi_135 = (arith_addi_128 + arith_const_14); 
              func_arg_10[for_iter_67][arith_addi_135] = arith_addf_134; 
              int arith_addi_136 = (arith_addi_112 + arith_const_17); 
              int arith_addi_137 = (arith_addi_136 + arith_const_14); 
              double memref_load_138 = func_arg_10[for_iter_67][arith_addi_137]; 
              int arith_addi_139 = (arith_addi_136 + arith_const_14); 
              double memref_load_140 = func_arg_9[for_iter_68][arith_addi_139]; 
              double arith_mulf_141 = (memref_load_109 * memref_load_140); 
              double arith_addf_142 = (memref_load_138 + arith_mulf_141); 
              int arith_addi_143 = (arith_addi_136 + arith_const_14); 
              func_arg_10[for_iter_67][arith_addi_143] = arith_addf_142; 
            }
            double memref_load_144 = func_arg_6[for_iter_67][for_iter_68]; 
            for (int for_iter_145 = arith_const_27; for_iter_145 < arith_const_17; for_iter_145 += arith_const_28) {
              int arith_addi_146 = (for_iter_145 + arith_const_13); 
              int arith_addi_147 = (arith_addi_146 + arith_const_14); 
              double memref_load_148 = func_arg_10[for_iter_67][arith_addi_147]; 
              int arith_addi_149 = (arith_addi_146 + arith_const_14); 
              double memref_load_150 = func_arg_9[for_iter_68][arith_addi_149]; 
              double arith_mulf_151 = (memref_load_144 * memref_load_150); 
              double arith_addf_152 = (memref_load_148 + arith_mulf_151); 
              int arith_addi_153 = (arith_addi_146 + arith_const_14); 
              func_arg_10[for_iter_67][arith_addi_153] = arith_addf_152; 
            }
          }
        }
      }
      int arith_muli_154 = (for_iter_62 * arith_const_21); 
      int arith_addi_155 = (for_iter_63 + arith_muli_154); 
      int arith_addi_156 = (arith_addi_155 + arith_const_12); 
      int arith_cmpi_157 = (arith_addi_156 == arith_const_27); 
      if (arith_cmpi_157) {
        for (int for_iter_158 = arith_const_27; for_iter_158 < arith_const_20; for_iter_158 += arith_const_28) {
          for (int for_iter_159 = arith_const_27; for_iter_159 < arith_const_22; for_iter_159 += arith_const_28) {
            double memref_load_160 = func_arg_6[for_iter_158][for_iter_159]; 
            double memref_load_161 = func_arg_6[for_iter_158][for_iter_159]; 
            double memref_load_162 = func_arg_6[for_iter_158][for_iter_159]; 
            double memref_load_163 = func_arg_6[for_iter_158][for_iter_159]; 
            for (int for_iter_164 = arith_const_27; for_iter_164 < arith_const_17; for_iter_164 += arith_const_28) {
              int arith_muli_165 = (for_iter_164 * arith_const_19); 
              int arith_addi_166 = (arith_muli_165 + arith_const_21); 
              int arith_addi_167 = (arith_addi_166 + arith_const_14); 
              double memref_load_168 = func_arg_10[for_iter_158][arith_addi_167]; 
              int arith_addi_169 = (arith_addi_166 + arith_const_14); 
              double memref_load_170 = func_arg_9[for_iter_159][arith_addi_169]; 
              double arith_mulf_171 = (memref_load_160 * memref_load_170); 
              double arith_addf_172 = (memref_load_168 + arith_mulf_171); 
              int arith_addi_173 = (arith_addi_166 + arith_const_14); 
              func_arg_10[for_iter_158][arith_addi_173] = arith_addf_172; 
              int arith_addi_174 = (arith_addi_166 + arith_const_28); 
              int arith_addi_175 = (arith_addi_174 + arith_const_14); 
              double memref_load_176 = func_arg_10[for_iter_158][arith_addi_175]; 
              int arith_addi_177 = (arith_addi_174 + arith_const_14); 
              double memref_load_178 = func_arg_9[for_iter_159][arith_addi_177]; 
              double arith_mulf_179 = (memref_load_161 * memref_load_178); 
              double arith_addf_180 = (memref_load_176 + arith_mulf_179); 
              int arith_addi_181 = (arith_addi_174 + arith_const_14); 
              func_arg_10[for_iter_158][arith_addi_181] = arith_addf_180; 
              int arith_addi_182 = (arith_addi_166 + arith_const_18); 
              int arith_addi_183 = (arith_addi_182 + arith_const_14); 
              double memref_load_184 = func_arg_10[for_iter_158][arith_addi_183]; 
              int arith_addi_185 = (arith_addi_182 + arith_const_14); 
              double memref_load_186 = func_arg_9[for_iter_159][arith_addi_185]; 
              double arith_mulf_187 = (memref_load_162 * memref_load_186); 
              double arith_addf_188 = (memref_load_184 + arith_mulf_187); 
              int arith_addi_189 = (arith_addi_182 + arith_const_14); 
              func_arg_10[for_iter_158][arith_addi_189] = arith_addf_188; 
              int arith_addi_190 = (arith_addi_166 + arith_const_17); 
              int arith_addi_191 = (arith_addi_190 + arith_const_14); 
              double memref_load_192 = func_arg_10[for_iter_158][arith_addi_191]; 
              int arith_addi_193 = (arith_addi_190 + arith_const_14); 
              double memref_load_194 = func_arg_9[for_iter_159][arith_addi_193]; 
              double arith_mulf_195 = (memref_load_163 * memref_load_194); 
              double arith_addf_196 = (memref_load_192 + arith_mulf_195); 
              int arith_addi_197 = (arith_addi_190 + arith_const_14); 
              func_arg_10[for_iter_158][arith_addi_197] = arith_addf_196; 
            }
            double memref_load_198 = func_arg_10[for_iter_158][arith_const_11]; 
            double memref_load_199 = func_arg_6[for_iter_158][for_iter_159]; 
            double memref_load_200 = func_arg_9[for_iter_159][arith_const_11]; 
            double arith_mulf_201 = (memref_load_199 * memref_load_200); 
            double arith_addf_202 = (memref_load_198 + arith_mulf_201); 
            func_arg_10[for_iter_158][arith_const_11] = arith_addf_202; 
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
