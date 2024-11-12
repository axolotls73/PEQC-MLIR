#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_fdtd_2d(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 19; 
  int arith_const_8 = -1; 
  int arith_const_9 = 30; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = 4; 
  int arith_const_13 = 28; 
  int arith_const_14 = 29; 
  double arith_const_15 = 0.700000; 
  double arith_const_16 = 0.500000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 20; 
  int arith_const_19 = 1; 
  for (int for_iter_20 = arith_const_17; for_iter_20 < arith_const_18; for_iter_20 += arith_const_19) {
    for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_13; for_iter_21 += arith_const_12) {
      double memref_load_22 = func_arg_6[for_iter_20]; 
      func_arg_4[arith_const_17][for_iter_21] = memref_load_22; 
      int arith_addi_23 = (for_iter_21 + arith_const_19); 
      double memref_load_24 = func_arg_6[for_iter_20]; 
      func_arg_4[arith_const_17][arith_addi_23] = memref_load_24; 
      int arith_addi_25 = (for_iter_21 + arith_const_11); 
      double memref_load_26 = func_arg_6[for_iter_20]; 
      func_arg_4[arith_const_17][arith_addi_25] = memref_load_26; 
      int arith_addi_27 = (for_iter_21 + arith_const_10); 
      double memref_load_28 = func_arg_6[for_iter_20]; 
      func_arg_4[arith_const_17][arith_addi_27] = memref_load_28; 
    }
    for (int for_iter_29 = arith_const_13; for_iter_29 < arith_const_9; for_iter_29 += arith_const_19) {
      double memref_load_30 = func_arg_6[for_iter_20]; 
      func_arg_4[arith_const_17][for_iter_29] = memref_load_30; 
    }
    for (int for_iter_31 = arith_const_19; for_iter_31 < arith_const_18; for_iter_31 += arith_const_19) {
      for (int for_iter_32 = arith_const_17; for_iter_32 < arith_const_13; for_iter_32 += arith_const_12) {
        double memref_load_33 = func_arg_4[for_iter_31][for_iter_32]; 
        double memref_load_34 = func_arg_5[for_iter_31][for_iter_32]; 
        int arith_addi_35 = (for_iter_31 + arith_const_8); 
        double memref_load_36 = func_arg_5[arith_addi_35][for_iter_32]; 
        double arith_subf_37 = (memref_load_34 - memref_load_36); 
        double arith_mulf_38 = (arith_subf_37 * arith_const_16); 
        double arith_subf_39 = (memref_load_33 - arith_mulf_38); 
        func_arg_4[for_iter_31][for_iter_32] = arith_subf_39; 
        int arith_addi_40 = (for_iter_32 + arith_const_19); 
        double memref_load_41 = func_arg_4[for_iter_31][arith_addi_40]; 
        double memref_load_42 = func_arg_5[for_iter_31][arith_addi_40]; 
        int arith_addi_43 = (for_iter_31 + arith_const_8); 
        double memref_load_44 = func_arg_5[arith_addi_43][arith_addi_40]; 
        double arith_subf_45 = (memref_load_42 - memref_load_44); 
        double arith_mulf_46 = (arith_subf_45 * arith_const_16); 
        double arith_subf_47 = (memref_load_41 - arith_mulf_46); 
        func_arg_4[for_iter_31][arith_addi_40] = arith_subf_47; 
        int arith_addi_48 = (for_iter_32 + arith_const_11); 
        double memref_load_49 = func_arg_4[for_iter_31][arith_addi_48]; 
        double memref_load_50 = func_arg_5[for_iter_31][arith_addi_48]; 
        int arith_addi_51 = (for_iter_31 + arith_const_8); 
        double memref_load_52 = func_arg_5[arith_addi_51][arith_addi_48]; 
        double arith_subf_53 = (memref_load_50 - memref_load_52); 
        double arith_mulf_54 = (arith_subf_53 * arith_const_16); 
        double arith_subf_55 = (memref_load_49 - arith_mulf_54); 
        func_arg_4[for_iter_31][arith_addi_48] = arith_subf_55; 
        int arith_addi_56 = (for_iter_32 + arith_const_10); 
        double memref_load_57 = func_arg_4[for_iter_31][arith_addi_56]; 
        double memref_load_58 = func_arg_5[for_iter_31][arith_addi_56]; 
        int arith_addi_59 = (for_iter_31 + arith_const_8); 
        double memref_load_60 = func_arg_5[arith_addi_59][arith_addi_56]; 
        double arith_subf_61 = (memref_load_58 - memref_load_60); 
        double arith_mulf_62 = (arith_subf_61 * arith_const_16); 
        double arith_subf_63 = (memref_load_57 - arith_mulf_62); 
        func_arg_4[for_iter_31][arith_addi_56] = arith_subf_63; 
      }
      for (int for_iter_64 = arith_const_13; for_iter_64 < arith_const_9; for_iter_64 += arith_const_19) {
        double memref_load_65 = func_arg_4[for_iter_31][for_iter_64]; 
        double memref_load_66 = func_arg_5[for_iter_31][for_iter_64]; 
        int arith_addi_67 = (for_iter_31 + arith_const_8); 
        double memref_load_68 = func_arg_5[arith_addi_67][for_iter_64]; 
        double arith_subf_69 = (memref_load_66 - memref_load_68); 
        double arith_mulf_70 = (arith_subf_69 * arith_const_16); 
        double arith_subf_71 = (memref_load_65 - arith_mulf_70); 
        func_arg_4[for_iter_31][for_iter_64] = arith_subf_71; 
      }
    }
    for (int for_iter_72 = arith_const_17; for_iter_72 < arith_const_18; for_iter_72 += arith_const_19) {
      for (int for_iter_73 = arith_const_19; for_iter_73 < arith_const_14; for_iter_73 += arith_const_12) {
        double memref_load_74 = func_arg_3[for_iter_72][for_iter_73]; 
        double memref_load_75 = func_arg_5[for_iter_72][for_iter_73]; 
        int arith_addi_76 = (for_iter_73 + arith_const_8); 
        double memref_load_77 = func_arg_5[for_iter_72][arith_addi_76]; 
        double arith_subf_78 = (memref_load_75 - memref_load_77); 
        double arith_mulf_79 = (arith_subf_78 * arith_const_16); 
        double arith_subf_80 = (memref_load_74 - arith_mulf_79); 
        func_arg_3[for_iter_72][for_iter_73] = arith_subf_80; 
        int arith_addi_81 = (for_iter_73 + arith_const_19); 
        double memref_load_82 = func_arg_3[for_iter_72][arith_addi_81]; 
        double memref_load_83 = func_arg_5[for_iter_72][arith_addi_81]; 
        int arith_addi_84 = (arith_addi_81 + arith_const_8); 
        double memref_load_85 = func_arg_5[for_iter_72][arith_addi_84]; 
        double arith_subf_86 = (memref_load_83 - memref_load_85); 
        double arith_mulf_87 = (arith_subf_86 * arith_const_16); 
        double arith_subf_88 = (memref_load_82 - arith_mulf_87); 
        func_arg_3[for_iter_72][arith_addi_81] = arith_subf_88; 
        int arith_addi_89 = (for_iter_73 + arith_const_11); 
        double memref_load_90 = func_arg_3[for_iter_72][arith_addi_89]; 
        double memref_load_91 = func_arg_5[for_iter_72][arith_addi_89]; 
        int arith_addi_92 = (arith_addi_89 + arith_const_8); 
        double memref_load_93 = func_arg_5[for_iter_72][arith_addi_92]; 
        double arith_subf_94 = (memref_load_91 - memref_load_93); 
        double arith_mulf_95 = (arith_subf_94 * arith_const_16); 
        double arith_subf_96 = (memref_load_90 - arith_mulf_95); 
        func_arg_3[for_iter_72][arith_addi_89] = arith_subf_96; 
        int arith_addi_97 = (for_iter_73 + arith_const_10); 
        double memref_load_98 = func_arg_3[for_iter_72][arith_addi_97]; 
        double memref_load_99 = func_arg_5[for_iter_72][arith_addi_97]; 
        int arith_addi_100 = (arith_addi_97 + arith_const_8); 
        double memref_load_101 = func_arg_5[for_iter_72][arith_addi_100]; 
        double arith_subf_102 = (memref_load_99 - memref_load_101); 
        double arith_mulf_103 = (arith_subf_102 * arith_const_16); 
        double arith_subf_104 = (memref_load_98 - arith_mulf_103); 
        func_arg_3[for_iter_72][arith_addi_97] = arith_subf_104; 
      }
      double memref_load_105 = func_arg_3[for_iter_72][arith_const_14]; 
      double memref_load_106 = func_arg_5[for_iter_72][arith_const_14]; 
      double memref_load_107 = func_arg_5[for_iter_72][arith_const_13]; 
      double arith_subf_108 = (memref_load_106 - memref_load_107); 
      double arith_mulf_109 = (arith_subf_108 * arith_const_16); 
      double arith_subf_110 = (memref_load_105 - arith_mulf_109); 
      func_arg_3[for_iter_72][arith_const_14] = arith_subf_110; 
    }
    for (int for_iter_111 = arith_const_17; for_iter_111 < arith_const_7; for_iter_111 += arith_const_19) {
      for (int for_iter_112 = arith_const_17; for_iter_112 < arith_const_13; for_iter_112 += arith_const_12) {
        double memref_load_113 = func_arg_5[for_iter_111][for_iter_112]; 
        int arith_addi_114 = (for_iter_112 + arith_const_19); 
        double memref_load_115 = func_arg_3[for_iter_111][arith_addi_114]; 
        double memref_load_116 = func_arg_3[for_iter_111][for_iter_112]; 
        double arith_subf_117 = (memref_load_115 - memref_load_116); 
        int arith_addi_118 = (for_iter_111 + arith_const_19); 
        double memref_load_119 = func_arg_4[arith_addi_118][for_iter_112]; 
        double arith_addf_120 = (arith_subf_117 + memref_load_119); 
        double memref_load_121 = func_arg_4[for_iter_111][for_iter_112]; 
        double arith_subf_122 = (arith_addf_120 - memref_load_121); 
        double arith_mulf_123 = (arith_subf_122 * arith_const_15); 
        double arith_subf_124 = (memref_load_113 - arith_mulf_123); 
        func_arg_5[for_iter_111][for_iter_112] = arith_subf_124; 
        int arith_addi_125 = (for_iter_112 + arith_const_19); 
        double memref_load_126 = func_arg_5[for_iter_111][arith_addi_125]; 
        int arith_addi_127 = (arith_addi_125 + arith_const_19); 
        double memref_load_128 = func_arg_3[for_iter_111][arith_addi_127]; 
        double memref_load_129 = func_arg_3[for_iter_111][arith_addi_125]; 
        double arith_subf_130 = (memref_load_128 - memref_load_129); 
        int arith_addi_131 = (for_iter_111 + arith_const_19); 
        double memref_load_132 = func_arg_4[arith_addi_131][arith_addi_125]; 
        double arith_addf_133 = (arith_subf_130 + memref_load_132); 
        double memref_load_134 = func_arg_4[for_iter_111][arith_addi_125]; 
        double arith_subf_135 = (arith_addf_133 - memref_load_134); 
        double arith_mulf_136 = (arith_subf_135 * arith_const_15); 
        double arith_subf_137 = (memref_load_126 - arith_mulf_136); 
        func_arg_5[for_iter_111][arith_addi_125] = arith_subf_137; 
        int arith_addi_138 = (for_iter_112 + arith_const_11); 
        double memref_load_139 = func_arg_5[for_iter_111][arith_addi_138]; 
        int arith_addi_140 = (arith_addi_138 + arith_const_19); 
        double memref_load_141 = func_arg_3[for_iter_111][arith_addi_140]; 
        double memref_load_142 = func_arg_3[for_iter_111][arith_addi_138]; 
        double arith_subf_143 = (memref_load_141 - memref_load_142); 
        int arith_addi_144 = (for_iter_111 + arith_const_19); 
        double memref_load_145 = func_arg_4[arith_addi_144][arith_addi_138]; 
        double arith_addf_146 = (arith_subf_143 + memref_load_145); 
        double memref_load_147 = func_arg_4[for_iter_111][arith_addi_138]; 
        double arith_subf_148 = (arith_addf_146 - memref_load_147); 
        double arith_mulf_149 = (arith_subf_148 * arith_const_15); 
        double arith_subf_150 = (memref_load_139 - arith_mulf_149); 
        func_arg_5[for_iter_111][arith_addi_138] = arith_subf_150; 
        int arith_addi_151 = (for_iter_112 + arith_const_10); 
        double memref_load_152 = func_arg_5[for_iter_111][arith_addi_151]; 
        int arith_addi_153 = (arith_addi_151 + arith_const_19); 
        double memref_load_154 = func_arg_3[for_iter_111][arith_addi_153]; 
        double memref_load_155 = func_arg_3[for_iter_111][arith_addi_151]; 
        double arith_subf_156 = (memref_load_154 - memref_load_155); 
        int arith_addi_157 = (for_iter_111 + arith_const_19); 
        double memref_load_158 = func_arg_4[arith_addi_157][arith_addi_151]; 
        double arith_addf_159 = (arith_subf_156 + memref_load_158); 
        double memref_load_160 = func_arg_4[for_iter_111][arith_addi_151]; 
        double arith_subf_161 = (arith_addf_159 - memref_load_160); 
        double arith_mulf_162 = (arith_subf_161 * arith_const_15); 
        double arith_subf_163 = (memref_load_152 - arith_mulf_162); 
        func_arg_5[for_iter_111][arith_addi_151] = arith_subf_163; 
      }
      double memref_load_164 = func_arg_5[for_iter_111][arith_const_13]; 
      double memref_load_165 = func_arg_3[for_iter_111][arith_const_14]; 
      double memref_load_166 = func_arg_3[for_iter_111][arith_const_13]; 
      double arith_subf_167 = (memref_load_165 - memref_load_166); 
      int arith_addi_168 = (for_iter_111 + arith_const_19); 
      double memref_load_169 = func_arg_4[arith_addi_168][arith_const_13]; 
      double arith_addf_170 = (arith_subf_167 + memref_load_169); 
      double memref_load_171 = func_arg_4[for_iter_111][arith_const_13]; 
      double arith_subf_172 = (arith_addf_170 - memref_load_171); 
      double arith_mulf_173 = (arith_subf_172 * arith_const_15); 
      double arith_subf_174 = (memref_load_164 - arith_mulf_173); 
      func_arg_5[for_iter_111][arith_const_13] = arith_subf_174; 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tmax;
  int nx;
  int ny;
  double* ex;
  double* ey;
  double* hz;
  double* _fict_;


  kernel_fdtd_2d(tmax, nx, ny, ex, ey, hz, _fict_);

}

#pragma pocc-region-end
