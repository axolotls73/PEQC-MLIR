#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 23; 
  int arith_const_12 = -1; 
  int arith_const_13 = 32; 
  int arith_const_14 = -21; 
  int arith_const_15 = 29; 
  int arith_const_16 = 24; 
  int arith_const_17 = 22; 
  int arith_const_18 = 21; 
  int arith_const_19 = 20; 
  int arith_const_20 = 19; 
  int arith_const_21 = 3; 
  int arith_const_22 = 2; 
  int arith_const_23 = 4; 
  int arith_const_24 = 44; 
  int arith_const_25 = 18; 
  double arith_const_26 = 0.000000; 
  int arith_const_27 = 0; 
  int arith_const_28 = 16; 
  int arith_const_29 = 1; 
  for (int for_iter_30 = arith_const_27; for_iter_30 < arith_const_28; for_iter_30 += arith_const_29) {
    for (int for_iter_31 = arith_const_27; for_iter_31 < arith_const_28; for_iter_31 += arith_const_23) {
      double memref_load_32 = func_arg_10[for_iter_30][for_iter_31]; 
      double arith_mulf_33 = (memref_load_32 * func_arg_5); 
      func_arg_10[for_iter_30][for_iter_31] = arith_mulf_33; 
      func_arg_6[for_iter_30][for_iter_31] = arith_const_26; 
      int arith_addi_34 = (for_iter_31 + arith_const_29); 
      double memref_load_35 = func_arg_10[for_iter_30][arith_addi_34]; 
      double arith_mulf_36 = (memref_load_35 * func_arg_5); 
      func_arg_10[for_iter_30][arith_addi_34] = arith_mulf_36; 
      func_arg_6[for_iter_30][arith_addi_34] = arith_const_26; 
      int arith_addi_37 = (for_iter_31 + arith_const_22); 
      double memref_load_38 = func_arg_10[for_iter_30][arith_addi_37]; 
      double arith_mulf_39 = (memref_load_38 * func_arg_5); 
      func_arg_10[for_iter_30][arith_addi_37] = arith_mulf_39; 
      func_arg_6[for_iter_30][arith_addi_37] = arith_const_26; 
      int arith_addi_40 = (for_iter_31 + arith_const_21); 
      double memref_load_41 = func_arg_10[for_iter_30][arith_addi_40]; 
      double arith_mulf_42 = (memref_load_41 * func_arg_5); 
      func_arg_10[for_iter_30][arith_addi_40] = arith_mulf_42; 
      func_arg_6[for_iter_30][arith_addi_40] = arith_const_26; 
    }
    for (int for_iter_43 = arith_const_28; for_iter_43 < arith_const_25; for_iter_43 += arith_const_29) {
      double memref_load_44 = func_arg_10[for_iter_30][for_iter_43]; 
      double arith_mulf_45 = (memref_load_44 * func_arg_5); 
      func_arg_10[for_iter_30][for_iter_43] = arith_mulf_45; 
      func_arg_6[for_iter_30][for_iter_43] = arith_const_26; 
    }
    double memref_load_46 = func_arg_10[for_iter_30][arith_const_25]; 
    double arith_mulf_47 = (memref_load_46 * func_arg_5); 
    func_arg_10[for_iter_30][arith_const_25] = arith_mulf_47; 
    double memref_load_48 = func_arg_10[for_iter_30][arith_const_20]; 
    double arith_mulf_49 = (memref_load_48 * func_arg_5); 
    func_arg_10[for_iter_30][arith_const_20] = arith_mulf_49; 
    double memref_load_50 = func_arg_10[for_iter_30][arith_const_19]; 
    double arith_mulf_51 = (memref_load_50 * func_arg_5); 
    func_arg_10[for_iter_30][arith_const_19] = arith_mulf_51; 
    double memref_load_52 = func_arg_10[for_iter_30][arith_const_18]; 
    double arith_mulf_53 = (memref_load_52 * func_arg_5); 
    func_arg_10[for_iter_30][arith_const_18] = arith_mulf_53; 
    for (int for_iter_54 = arith_const_17; for_iter_54 < arith_const_16; for_iter_54 += arith_const_29) {
      double memref_load_55 = func_arg_10[for_iter_30][for_iter_54]; 
      double arith_mulf_56 = (memref_load_55 * func_arg_5); 
      func_arg_10[for_iter_30][for_iter_54] = arith_mulf_56; 
    }
  }
  for (int for_iter_57 = arith_const_27; for_iter_57 < arith_const_22; for_iter_57 += arith_const_29) {
    int arith_cmpi_58 = ((for_iter_57 == arith_const_27) ? 1 : 0); 
    if (arith_cmpi_58) {
      for (int for_iter_59 = arith_const_27; for_iter_59 < arith_const_28; for_iter_59 += arith_const_29) {
        for (int for_iter_60 = arith_const_27; for_iter_60 < arith_const_25; for_iter_60 += arith_const_29) {
          for (int for_iter_61 = arith_const_27; for_iter_61 < arith_const_19; for_iter_61 += arith_const_23) {
            double memref_load_62 = func_arg_6[for_iter_59][for_iter_60]; 
            double memref_load_63 = func_arg_7[for_iter_59][for_iter_61]; 
            double arith_mulf_64 = (func_arg_4 * memref_load_63); 
            double memref_load_65 = func_arg_8[for_iter_61][for_iter_60]; 
            double arith_mulf_66 = (arith_mulf_64 * memref_load_65); 
            double arith_addf_67 = (memref_load_62 + arith_mulf_66); 
            func_arg_6[for_iter_59][for_iter_60] = arith_addf_67; 
            int arith_addi_68 = (for_iter_61 + arith_const_29); 
            double memref_load_69 = func_arg_6[for_iter_59][for_iter_60]; 
            double memref_load_70 = func_arg_7[for_iter_59][arith_addi_68]; 
            double arith_mulf_71 = (func_arg_4 * memref_load_70); 
            double memref_load_72 = func_arg_8[arith_addi_68][for_iter_60]; 
            double arith_mulf_73 = (arith_mulf_71 * memref_load_72); 
            double arith_addf_74 = (memref_load_69 + arith_mulf_73); 
            func_arg_6[for_iter_59][for_iter_60] = arith_addf_74; 
            int arith_addi_75 = (for_iter_61 + arith_const_22); 
            double memref_load_76 = func_arg_6[for_iter_59][for_iter_60]; 
            double memref_load_77 = func_arg_7[for_iter_59][arith_addi_75]; 
            double arith_mulf_78 = (func_arg_4 * memref_load_77); 
            double memref_load_79 = func_arg_8[arith_addi_75][for_iter_60]; 
            double arith_mulf_80 = (arith_mulf_78 * memref_load_79); 
            double arith_addf_81 = (memref_load_76 + arith_mulf_80); 
            func_arg_6[for_iter_59][for_iter_60] = arith_addf_81; 
            int arith_addi_82 = (for_iter_61 + arith_const_21); 
            double memref_load_83 = func_arg_6[for_iter_59][for_iter_60]; 
            double memref_load_84 = func_arg_7[for_iter_59][arith_addi_82]; 
            double arith_mulf_85 = (func_arg_4 * memref_load_84); 
            double memref_load_86 = func_arg_8[arith_addi_82][for_iter_60]; 
            double arith_mulf_87 = (arith_mulf_85 * memref_load_86); 
            double arith_addf_88 = (memref_load_83 + arith_mulf_87); 
            func_arg_6[for_iter_59][for_iter_60] = arith_addf_88; 
          }
          for (int for_iter_89 = arith_const_19; for_iter_89 < arith_const_17; for_iter_89 += arith_const_29) {
            double memref_load_90 = func_arg_6[for_iter_59][for_iter_60]; 
            double memref_load_91 = func_arg_7[for_iter_59][for_iter_89]; 
            double arith_mulf_92 = (func_arg_4 * memref_load_91); 
            double memref_load_93 = func_arg_8[for_iter_89][for_iter_60]; 
            double arith_mulf_94 = (arith_mulf_92 * memref_load_93); 
            double arith_addf_95 = (memref_load_90 + arith_mulf_94); 
            func_arg_6[for_iter_59][for_iter_60] = arith_addf_95; 
          }
          for (int for_iter_96 = arith_const_18; for_iter_96 < arith_const_15; for_iter_96 += arith_const_23) {
            int arith_addi_97 = (for_iter_96 + arith_const_14); 
            double memref_load_98 = func_arg_10[for_iter_59][arith_addi_97]; 
            double memref_load_99 = func_arg_6[for_iter_59][for_iter_60]; 
            int arith_addi_100 = (for_iter_96 + arith_const_14); 
            double memref_load_101 = func_arg_9[for_iter_60][arith_addi_100]; 
            double arith_mulf_102 = (memref_load_99 * memref_load_101); 
            double arith_addf_103 = (memref_load_98 + arith_mulf_102); 
            int arith_addi_104 = (for_iter_96 + arith_const_14); 
            func_arg_10[for_iter_59][arith_addi_104] = arith_addf_103; 
            int arith_addi_105 = (for_iter_96 + arith_const_29); 
            int arith_addi_106 = (arith_addi_105 + arith_const_14); 
            double memref_load_107 = func_arg_10[for_iter_59][arith_addi_106]; 
            double memref_load_108 = func_arg_6[for_iter_59][for_iter_60]; 
            int arith_addi_109 = (arith_addi_105 + arith_const_14); 
            double memref_load_110 = func_arg_9[for_iter_60][arith_addi_109]; 
            double arith_mulf_111 = (memref_load_108 * memref_load_110); 
            double arith_addf_112 = (memref_load_107 + arith_mulf_111); 
            int arith_addi_113 = (arith_addi_105 + arith_const_14); 
            func_arg_10[for_iter_59][arith_addi_113] = arith_addf_112; 
            int arith_addi_114 = (for_iter_96 + arith_const_22); 
            int arith_addi_115 = (arith_addi_114 + arith_const_14); 
            double memref_load_116 = func_arg_10[for_iter_59][arith_addi_115]; 
            double memref_load_117 = func_arg_6[for_iter_59][for_iter_60]; 
            int arith_addi_118 = (arith_addi_114 + arith_const_14); 
            double memref_load_119 = func_arg_9[for_iter_60][arith_addi_118]; 
            double arith_mulf_120 = (memref_load_117 * memref_load_119); 
            double arith_addf_121 = (memref_load_116 + arith_mulf_120); 
            int arith_addi_122 = (arith_addi_114 + arith_const_14); 
            func_arg_10[for_iter_59][arith_addi_122] = arith_addf_121; 
            int arith_addi_123 = (for_iter_96 + arith_const_21); 
            int arith_addi_124 = (arith_addi_123 + arith_const_14); 
            double memref_load_125 = func_arg_10[for_iter_59][arith_addi_124]; 
            double memref_load_126 = func_arg_6[for_iter_59][for_iter_60]; 
            int arith_addi_127 = (arith_addi_123 + arith_const_14); 
            double memref_load_128 = func_arg_9[for_iter_60][arith_addi_127]; 
            double arith_mulf_129 = (memref_load_126 * memref_load_128); 
            double arith_addf_130 = (memref_load_125 + arith_mulf_129); 
            int arith_addi_131 = (arith_addi_123 + arith_const_14); 
            func_arg_10[for_iter_59][arith_addi_131] = arith_addf_130; 
          }
          for (int for_iter_132 = arith_const_15; for_iter_132 < arith_const_13; for_iter_132 += arith_const_29) {
            int arith_addi_133 = (for_iter_132 + arith_const_14); 
            double memref_load_134 = func_arg_10[for_iter_59][arith_addi_133]; 
            double memref_load_135 = func_arg_6[for_iter_59][for_iter_60]; 
            int arith_addi_136 = (for_iter_132 + arith_const_14); 
            double memref_load_137 = func_arg_9[for_iter_60][arith_addi_136]; 
            double arith_mulf_138 = (memref_load_135 * memref_load_137); 
            double arith_addf_139 = (memref_load_134 + arith_mulf_138); 
            int arith_addi_140 = (for_iter_132 + arith_const_14); 
            func_arg_10[for_iter_59][arith_addi_140] = arith_addf_139; 
          }
        }
      }
    }
    int arith_addi_141 = (for_iter_57 + arith_const_12); 
    int arith_cmpi_142 = ((arith_addi_141 == arith_const_27) ? 1 : 0); 
    if (arith_cmpi_142) {
      for (int for_iter_143 = arith_const_27; for_iter_143 < arith_const_28; for_iter_143 += arith_const_29) {
        for (int for_iter_144 = arith_const_27; for_iter_144 < arith_const_25; for_iter_144 += arith_const_29) {
          for (int for_iter_145 = arith_const_13; for_iter_145 < arith_const_24; for_iter_145 += arith_const_23) {
            int arith_addi_146 = (for_iter_145 + arith_const_14); 
            double memref_load_147 = func_arg_10[for_iter_143][arith_addi_146]; 
            double memref_load_148 = func_arg_6[for_iter_143][for_iter_144]; 
            int arith_addi_149 = (for_iter_145 + arith_const_14); 
            double memref_load_150 = func_arg_9[for_iter_144][arith_addi_149]; 
            double arith_mulf_151 = (memref_load_148 * memref_load_150); 
            double arith_addf_152 = (memref_load_147 + arith_mulf_151); 
            int arith_addi_153 = (for_iter_145 + arith_const_14); 
            func_arg_10[for_iter_143][arith_addi_153] = arith_addf_152; 
            int arith_addi_154 = (for_iter_145 + arith_const_29); 
            int arith_addi_155 = (arith_addi_154 + arith_const_14); 
            double memref_load_156 = func_arg_10[for_iter_143][arith_addi_155]; 
            double memref_load_157 = func_arg_6[for_iter_143][for_iter_144]; 
            int arith_addi_158 = (arith_addi_154 + arith_const_14); 
            double memref_load_159 = func_arg_9[for_iter_144][arith_addi_158]; 
            double arith_mulf_160 = (memref_load_157 * memref_load_159); 
            double arith_addf_161 = (memref_load_156 + arith_mulf_160); 
            int arith_addi_162 = (arith_addi_154 + arith_const_14); 
            func_arg_10[for_iter_143][arith_addi_162] = arith_addf_161; 
            int arith_addi_163 = (for_iter_145 + arith_const_22); 
            int arith_addi_164 = (arith_addi_163 + arith_const_14); 
            double memref_load_165 = func_arg_10[for_iter_143][arith_addi_164]; 
            double memref_load_166 = func_arg_6[for_iter_143][for_iter_144]; 
            int arith_addi_167 = (arith_addi_163 + arith_const_14); 
            double memref_load_168 = func_arg_9[for_iter_144][arith_addi_167]; 
            double arith_mulf_169 = (memref_load_166 * memref_load_168); 
            double arith_addf_170 = (memref_load_165 + arith_mulf_169); 
            int arith_addi_171 = (arith_addi_163 + arith_const_14); 
            func_arg_10[for_iter_143][arith_addi_171] = arith_addf_170; 
            int arith_addi_172 = (for_iter_145 + arith_const_21); 
            int arith_addi_173 = (arith_addi_172 + arith_const_14); 
            double memref_load_174 = func_arg_10[for_iter_143][arith_addi_173]; 
            double memref_load_175 = func_arg_6[for_iter_143][for_iter_144]; 
            int arith_addi_176 = (arith_addi_172 + arith_const_14); 
            double memref_load_177 = func_arg_9[for_iter_144][arith_addi_176]; 
            double arith_mulf_178 = (memref_load_175 * memref_load_177); 
            double arith_addf_179 = (memref_load_174 + arith_mulf_178); 
            int arith_addi_180 = (arith_addi_172 + arith_const_14); 
            func_arg_10[for_iter_143][arith_addi_180] = arith_addf_179; 
          }
          double memref_load_181 = func_arg_10[for_iter_143][arith_const_11]; 
          double memref_load_182 = func_arg_6[for_iter_143][for_iter_144]; 
          double memref_load_183 = func_arg_9[for_iter_144][arith_const_11]; 
          double arith_mulf_184 = (memref_load_182 * memref_load_183); 
          double arith_addf_185 = (memref_load_181 + arith_mulf_184); 
          func_arg_10[for_iter_143][arith_const_11] = arith_addf_185; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
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

#pragma peqc async_execute
{
  kernel_2mm(ni, nj, nk, nl, alpha, beta, tmp, A, B, C, D);
}
}

#pragma pocc-region-end
