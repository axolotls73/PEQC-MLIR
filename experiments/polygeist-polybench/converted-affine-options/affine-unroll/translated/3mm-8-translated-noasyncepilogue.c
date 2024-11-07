#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
  int arith_const_20 = 22; 
  int arith_const_21 = 3; 
  int arith_const_22 = 2; 
  int arith_const_23 = 4; 
  int arith_const_24 = 20; 
  int arith_const_25 = 40; 
  int arith_const_26 = 31; 
  double arith_const_27 = 0.000000; 
  int arith_const_28 = 0; 
  int arith_const_29 = 16; 
  int arith_const_30 = 1; 
  for (int for_iter_31 = arith_const_28; for_iter_31 < arith_const_29; for_iter_31 += arith_const_30) {
    for (int for_iter_32 = arith_const_28; for_iter_32 < arith_const_24; for_iter_32 += arith_const_23) {
      func_arg_11[for_iter_31][for_iter_32] = arith_const_27; 
      func_arg_8[for_iter_31][for_iter_32] = arith_const_27; 
      int arith_addi_33 = (for_iter_32 + arith_const_30); 
      func_arg_11[for_iter_31][arith_addi_33] = arith_const_27; 
      func_arg_8[for_iter_31][arith_addi_33] = arith_const_27; 
      int arith_addi_34 = (for_iter_32 + arith_const_22); 
      func_arg_11[for_iter_31][arith_addi_34] = arith_const_27; 
      func_arg_8[for_iter_31][arith_addi_34] = arith_const_27; 
      int arith_addi_35 = (for_iter_32 + arith_const_21); 
      func_arg_11[for_iter_31][arith_addi_35] = arith_const_27; 
      func_arg_8[for_iter_31][arith_addi_35] = arith_const_27; 
    }
    for (int for_iter_36 = arith_const_24; for_iter_36 < arith_const_20; for_iter_36 += arith_const_30) {
      func_arg_11[for_iter_31][for_iter_36] = arith_const_27; 
      func_arg_8[for_iter_31][for_iter_36] = arith_const_27; 
    }
  }
  for (int for_iter_37 = arith_const_29; for_iter_37 < arith_const_19; for_iter_37 += arith_const_30) {
    for (int for_iter_38 = arith_const_28; for_iter_38 < arith_const_24; for_iter_38 += arith_const_23) {
      func_arg_8[for_iter_37][for_iter_38] = arith_const_27; 
      int arith_addi_39 = (for_iter_38 + arith_const_30); 
      func_arg_8[for_iter_37][arith_addi_39] = arith_const_27; 
      int arith_addi_40 = (for_iter_38 + arith_const_22); 
      func_arg_8[for_iter_37][arith_addi_40] = arith_const_27; 
      int arith_addi_41 = (for_iter_38 + arith_const_21); 
      func_arg_8[for_iter_37][arith_addi_41] = arith_const_27; 
    }
    for (int for_iter_42 = arith_const_24; for_iter_42 < arith_const_20; for_iter_42 += arith_const_30) {
      func_arg_8[for_iter_37][for_iter_42] = arith_const_27; 
    }
  }
  for (int for_iter_43 = arith_const_28; for_iter_43 < arith_const_19; for_iter_43 += arith_const_30) {
    for (int for_iter_44 = arith_const_28; for_iter_44 < arith_const_18; for_iter_44 += arith_const_30) {
      for (int for_iter_45 = arith_const_28; for_iter_45 < arith_const_24; for_iter_45 += arith_const_23) {
        double memref_load_46 = func_arg_8[for_iter_43][for_iter_45]; 
        double memref_load_47 = func_arg_9[for_iter_43][for_iter_44]; 
        double memref_load_48 = func_arg_10[for_iter_44][for_iter_45]; 
        double arith_mulf_49 = (memref_load_47 * memref_load_48); 
        double arith_addf_50 = (memref_load_46 + arith_mulf_49); 
        func_arg_8[for_iter_43][for_iter_45] = arith_addf_50; 
        int arith_addi_51 = (for_iter_45 + arith_const_30); 
        double memref_load_52 = func_arg_8[for_iter_43][arith_addi_51]; 
        double memref_load_53 = func_arg_9[for_iter_43][for_iter_44]; 
        double memref_load_54 = func_arg_10[for_iter_44][arith_addi_51]; 
        double arith_mulf_55 = (memref_load_53 * memref_load_54); 
        double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
        func_arg_8[for_iter_43][arith_addi_51] = arith_addf_56; 
        int arith_addi_57 = (for_iter_45 + arith_const_22); 
        double memref_load_58 = func_arg_8[for_iter_43][arith_addi_57]; 
        double memref_load_59 = func_arg_9[for_iter_43][for_iter_44]; 
        double memref_load_60 = func_arg_10[for_iter_44][arith_addi_57]; 
        double arith_mulf_61 = (memref_load_59 * memref_load_60); 
        double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
        func_arg_8[for_iter_43][arith_addi_57] = arith_addf_62; 
        int arith_addi_63 = (for_iter_45 + arith_const_21); 
        double memref_load_64 = func_arg_8[for_iter_43][arith_addi_63]; 
        double memref_load_65 = func_arg_9[for_iter_43][for_iter_44]; 
        double memref_load_66 = func_arg_10[for_iter_44][arith_addi_63]; 
        double arith_mulf_67 = (memref_load_65 * memref_load_66); 
        double arith_addf_68 = (memref_load_64 + arith_mulf_67); 
        func_arg_8[for_iter_43][arith_addi_63] = arith_addf_68; 
      }
      for (int for_iter_69 = arith_const_24; for_iter_69 < arith_const_20; for_iter_69 += arith_const_30) {
        double memref_load_70 = func_arg_8[for_iter_43][for_iter_69]; 
        double memref_load_71 = func_arg_9[for_iter_43][for_iter_44]; 
        double memref_load_72 = func_arg_10[for_iter_44][for_iter_69]; 
        double arith_mulf_73 = (memref_load_71 * memref_load_72); 
        double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
        func_arg_8[for_iter_43][for_iter_69] = arith_addf_74; 
      }
    }
  }
  for (int for_iter_75 = arith_const_28; for_iter_75 < arith_const_29; for_iter_75 += arith_const_30) {
    for (int for_iter_76 = arith_const_28; for_iter_76 < arith_const_29; for_iter_76 += arith_const_23) {
      func_arg_5[for_iter_75][for_iter_76] = arith_const_27; 
      int arith_addi_77 = (for_iter_76 + arith_const_30); 
      func_arg_5[for_iter_75][arith_addi_77] = arith_const_27; 
      int arith_addi_78 = (for_iter_76 + arith_const_22); 
      func_arg_5[for_iter_75][arith_addi_78] = arith_const_27; 
      int arith_addi_79 = (for_iter_76 + arith_const_21); 
      func_arg_5[for_iter_75][arith_addi_79] = arith_const_27; 
    }
    for (int for_iter_80 = arith_const_29; for_iter_80 < arith_const_19; for_iter_80 += arith_const_30) {
      func_arg_5[for_iter_75][for_iter_80] = arith_const_27; 
    }
  }
  for (int for_iter_81 = arith_const_28; for_iter_81 < arith_const_22; for_iter_81 += arith_const_30) {
    int arith_cmpi_82 = ((for_iter_81 == arith_const_28) ? 1 : 0); 
    if (arith_cmpi_82) {
      for (int for_iter_83 = arith_const_28; for_iter_83 < arith_const_29; for_iter_83 += arith_const_30) {
        for (int for_iter_84 = arith_const_28; for_iter_84 < arith_const_19; for_iter_84 += arith_const_30) {
          for (int for_iter_85 = arith_const_28; for_iter_85 < arith_const_24; for_iter_85 += arith_const_23) {
            double memref_load_86 = func_arg_5[for_iter_83][for_iter_84]; 
            double memref_load_87 = func_arg_6[for_iter_83][for_iter_85]; 
            double memref_load_88 = func_arg_7[for_iter_85][for_iter_84]; 
            double arith_mulf_89 = (memref_load_87 * memref_load_88); 
            double arith_addf_90 = (memref_load_86 + arith_mulf_89); 
            func_arg_5[for_iter_83][for_iter_84] = arith_addf_90; 
            int arith_addi_91 = (for_iter_85 + arith_const_30); 
            double memref_load_92 = func_arg_5[for_iter_83][for_iter_84]; 
            double memref_load_93 = func_arg_6[for_iter_83][arith_addi_91]; 
            double memref_load_94 = func_arg_7[arith_addi_91][for_iter_84]; 
            double arith_mulf_95 = (memref_load_93 * memref_load_94); 
            double arith_addf_96 = (memref_load_92 + arith_mulf_95); 
            func_arg_5[for_iter_83][for_iter_84] = arith_addf_96; 
            int arith_addi_97 = (for_iter_85 + arith_const_22); 
            double memref_load_98 = func_arg_5[for_iter_83][for_iter_84]; 
            double memref_load_99 = func_arg_6[for_iter_83][arith_addi_97]; 
            double memref_load_100 = func_arg_7[arith_addi_97][for_iter_84]; 
            double arith_mulf_101 = (memref_load_99 * memref_load_100); 
            double arith_addf_102 = (memref_load_98 + arith_mulf_101); 
            func_arg_5[for_iter_83][for_iter_84] = arith_addf_102; 
            int arith_addi_103 = (for_iter_85 + arith_const_21); 
            double memref_load_104 = func_arg_5[for_iter_83][for_iter_84]; 
            double memref_load_105 = func_arg_6[for_iter_83][arith_addi_103]; 
            double memref_load_106 = func_arg_7[arith_addi_103][for_iter_84]; 
            double arith_mulf_107 = (memref_load_105 * memref_load_106); 
            double arith_addf_108 = (memref_load_104 + arith_mulf_107); 
            func_arg_5[for_iter_83][for_iter_84] = arith_addf_108; 
          }
          for (int for_iter_109 = arith_const_17; for_iter_109 < arith_const_26; for_iter_109 += arith_const_23) {
            int arith_addi_110 = (for_iter_109 + arith_const_16); 
            double memref_load_111 = func_arg_11[for_iter_83][arith_addi_110]; 
            double memref_load_112 = func_arg_5[for_iter_83][for_iter_84]; 
            int arith_addi_113 = (for_iter_109 + arith_const_16); 
            double memref_load_114 = func_arg_8[for_iter_84][arith_addi_113]; 
            double arith_mulf_115 = (memref_load_112 * memref_load_114); 
            double arith_addf_116 = (memref_load_111 + arith_mulf_115); 
            int arith_addi_117 = (for_iter_109 + arith_const_16); 
            func_arg_11[for_iter_83][arith_addi_117] = arith_addf_116; 
            int arith_addi_118 = (for_iter_109 + arith_const_30); 
            int arith_addi_119 = (arith_addi_118 + arith_const_16); 
            double memref_load_120 = func_arg_11[for_iter_83][arith_addi_119]; 
            double memref_load_121 = func_arg_5[for_iter_83][for_iter_84]; 
            int arith_addi_122 = (arith_addi_118 + arith_const_16); 
            double memref_load_123 = func_arg_8[for_iter_84][arith_addi_122]; 
            double arith_mulf_124 = (memref_load_121 * memref_load_123); 
            double arith_addf_125 = (memref_load_120 + arith_mulf_124); 
            int arith_addi_126 = (arith_addi_118 + arith_const_16); 
            func_arg_11[for_iter_83][arith_addi_126] = arith_addf_125; 
            int arith_addi_127 = (for_iter_109 + arith_const_22); 
            int arith_addi_128 = (arith_addi_127 + arith_const_16); 
            double memref_load_129 = func_arg_11[for_iter_83][arith_addi_128]; 
            double memref_load_130 = func_arg_5[for_iter_83][for_iter_84]; 
            int arith_addi_131 = (arith_addi_127 + arith_const_16); 
            double memref_load_132 = func_arg_8[for_iter_84][arith_addi_131]; 
            double arith_mulf_133 = (memref_load_130 * memref_load_132); 
            double arith_addf_134 = (memref_load_129 + arith_mulf_133); 
            int arith_addi_135 = (arith_addi_127 + arith_const_16); 
            func_arg_11[for_iter_83][arith_addi_135] = arith_addf_134; 
            int arith_addi_136 = (for_iter_109 + arith_const_21); 
            int arith_addi_137 = (arith_addi_136 + arith_const_16); 
            double memref_load_138 = func_arg_11[for_iter_83][arith_addi_137]; 
            double memref_load_139 = func_arg_5[for_iter_83][for_iter_84]; 
            int arith_addi_140 = (arith_addi_136 + arith_const_16); 
            double memref_load_141 = func_arg_8[for_iter_84][arith_addi_140]; 
            double arith_mulf_142 = (memref_load_139 * memref_load_141); 
            double arith_addf_143 = (memref_load_138 + arith_mulf_142); 
            int arith_addi_144 = (arith_addi_136 + arith_const_16); 
            func_arg_11[for_iter_83][arith_addi_144] = arith_addf_143; 
          }
          double memref_load_145 = func_arg_11[for_iter_83][arith_const_13]; 
          double memref_load_146 = func_arg_5[for_iter_83][for_iter_84]; 
          double memref_load_147 = func_arg_8[for_iter_84][arith_const_13]; 
          double arith_mulf_148 = (memref_load_146 * memref_load_147); 
          double arith_addf_149 = (memref_load_145 + arith_mulf_148); 
          func_arg_11[for_iter_83][arith_const_13] = arith_addf_149; 
        }
      }
    }
    int arith_addi_150 = (for_iter_81 + arith_const_15); 
    int arith_cmpi_151 = ((arith_addi_150 == arith_const_28) ? 1 : 0); 
    if (arith_cmpi_151) {
      for (int for_iter_152 = arith_const_28; for_iter_152 < arith_const_29; for_iter_152 += arith_const_30) {
        for (int for_iter_153 = arith_const_28; for_iter_153 < arith_const_19; for_iter_153 += arith_const_30) {
          for (int for_iter_154 = arith_const_14; for_iter_154 < arith_const_25; for_iter_154 += arith_const_23) {
            int arith_addi_155 = (for_iter_154 + arith_const_16); 
            double memref_load_156 = func_arg_11[for_iter_152][arith_addi_155]; 
            double memref_load_157 = func_arg_5[for_iter_152][for_iter_153]; 
            int arith_addi_158 = (for_iter_154 + arith_const_16); 
            double memref_load_159 = func_arg_8[for_iter_153][arith_addi_158]; 
            double arith_mulf_160 = (memref_load_157 * memref_load_159); 
            double arith_addf_161 = (memref_load_156 + arith_mulf_160); 
            int arith_addi_162 = (for_iter_154 + arith_const_16); 
            func_arg_11[for_iter_152][arith_addi_162] = arith_addf_161; 
            int arith_addi_163 = (for_iter_154 + arith_const_30); 
            int arith_addi_164 = (arith_addi_163 + arith_const_16); 
            double memref_load_165 = func_arg_11[for_iter_152][arith_addi_164]; 
            double memref_load_166 = func_arg_5[for_iter_152][for_iter_153]; 
            int arith_addi_167 = (arith_addi_163 + arith_const_16); 
            double memref_load_168 = func_arg_8[for_iter_153][arith_addi_167]; 
            double arith_mulf_169 = (memref_load_166 * memref_load_168); 
            double arith_addf_170 = (memref_load_165 + arith_mulf_169); 
            int arith_addi_171 = (arith_addi_163 + arith_const_16); 
            func_arg_11[for_iter_152][arith_addi_171] = arith_addf_170; 
            int arith_addi_172 = (for_iter_154 + arith_const_22); 
            int arith_addi_173 = (arith_addi_172 + arith_const_16); 
            double memref_load_174 = func_arg_11[for_iter_152][arith_addi_173]; 
            double memref_load_175 = func_arg_5[for_iter_152][for_iter_153]; 
            int arith_addi_176 = (arith_addi_172 + arith_const_16); 
            double memref_load_177 = func_arg_8[for_iter_153][arith_addi_176]; 
            double arith_mulf_178 = (memref_load_175 * memref_load_177); 
            double arith_addf_179 = (memref_load_174 + arith_mulf_178); 
            int arith_addi_180 = (arith_addi_172 + arith_const_16); 
            func_arg_11[for_iter_152][arith_addi_180] = arith_addf_179; 
            int arith_addi_181 = (for_iter_154 + arith_const_21); 
            int arith_addi_182 = (arith_addi_181 + arith_const_16); 
            double memref_load_183 = func_arg_11[for_iter_152][arith_addi_182]; 
            double memref_load_184 = func_arg_5[for_iter_152][for_iter_153]; 
            int arith_addi_185 = (arith_addi_181 + arith_const_16); 
            double memref_load_186 = func_arg_8[for_iter_153][arith_addi_185]; 
            double arith_mulf_187 = (memref_load_184 * memref_load_186); 
            double arith_addf_188 = (memref_load_183 + arith_mulf_187); 
            int arith_addi_189 = (arith_addi_181 + arith_const_16); 
            func_arg_11[for_iter_152][arith_addi_189] = arith_addf_188; 
          }
          double memref_load_190 = func_arg_11[for_iter_152][arith_const_12]; 
          double memref_load_191 = func_arg_5[for_iter_152][for_iter_153]; 
          double memref_load_192 = func_arg_8[for_iter_153][arith_const_12]; 
          double arith_mulf_193 = (memref_load_191 * memref_load_192); 
          double arith_addf_194 = (memref_load_190 + arith_mulf_193); 
          func_arg_11[for_iter_152][arith_const_12] = arith_addf_194; 
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
