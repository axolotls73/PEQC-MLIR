#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 3; 
  int arith_const_13 = 4; 
  int arith_const_14 = 8; 
  int arith_const_15 = 10; 
  int arith_const_16 = -8; 
  int arith_const_17 = 32; 
  int arith_const_18 = 40; 
  int arith_const_19 = -32; 
  int arith_const_20 = 0; 
  int arith_const_21 = 2; 
  int arith_const_22 = 1; 
  for (int for_iter_23 = arith_const_20; for_iter_23 < arith_const_21; for_iter_23 += arith_const_22) {
    for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_21; for_iter_24 += arith_const_22) {
      int arith_muli_25 = (for_iter_24 * arith_const_19); 
      int arith_addi_26 = (arith_muli_25 + arith_const_18); 
      int arith_minsi_27 = min(arith_addi_26, arith_const_17); 
      for (int for_iter_28 = arith_const_20; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_22) {
        int arith_muli_29 = (for_iter_24 * arith_const_17); 
        int arith_addi_30 = (arith_muli_29 + for_iter_28); 
        double memref_load_31 = func_arg_4[arith_addi_30]; 
        double memref_load_32 = func_arg_6[arith_addi_30]; 
        double memref_load_33 = func_arg_10[arith_addi_30]; 
        double memref_load_34 = func_arg_4[arith_addi_30]; 
        double memref_load_35 = func_arg_6[arith_addi_30]; 
        double memref_load_36 = func_arg_10[arith_addi_30]; 
        double memref_load_37 = func_arg_4[arith_addi_30]; 
        double memref_load_38 = func_arg_6[arith_addi_30]; 
        double memref_load_39 = func_arg_10[arith_addi_30]; 
        double memref_load_40 = func_arg_4[arith_addi_30]; 
        double memref_load_41 = func_arg_6[arith_addi_30]; 
        double memref_load_42 = func_arg_10[arith_addi_30]; 
        int arith_muli_43 = (for_iter_23 * arith_const_16); 
        int arith_addi_44 = (arith_muli_43 + arith_const_15); 
        int arith_minsi_45 = min(arith_addi_44, arith_const_14); 
        for (int for_iter_46 = arith_const_20; for_iter_46 < arith_minsi_45; for_iter_46 += arith_const_22) {
          int arith_muli_47 = (for_iter_23 * arith_const_17); 
          int arith_muli_48 = (for_iter_46 * arith_const_13); 
          int arith_addi_49 = (arith_muli_47 + arith_muli_48); 
          double memref_load_50 = func_arg_3[arith_addi_30][arith_addi_49]; 
          double memref_load_51 = func_arg_5[arith_addi_49]; 
          double arith_mulf_52 = (memref_load_31 * memref_load_51); 
          double arith_addf_53 = (memref_load_50 + arith_mulf_52); 
          double memref_load_54 = func_arg_7[arith_addi_49]; 
          double arith_mulf_55 = (memref_load_32 * memref_load_54); 
          double arith_addf_56 = (arith_addf_53 + arith_mulf_55); 
          func_arg_3[arith_addi_30][arith_addi_49] = arith_addf_56; 
          double memref_load_57 = func_arg_9[arith_addi_49]; 
          double memref_load_58 = func_arg_3[arith_addi_30][arith_addi_49]; 
          double arith_mulf_59 = (func_arg_2 * memref_load_58); 
          double arith_mulf_60 = (arith_mulf_59 * memref_load_33); 
          double arith_addf_61 = (memref_load_57 + arith_mulf_60); 
          func_arg_9[arith_addi_49] = arith_addf_61; 
          int arith_addi_62 = (arith_addi_49 + arith_const_22); 
          double memref_load_63 = func_arg_3[arith_addi_30][arith_addi_62]; 
          double memref_load_64 = func_arg_5[arith_addi_62]; 
          double arith_mulf_65 = (memref_load_34 * memref_load_64); 
          double arith_addf_66 = (memref_load_63 + arith_mulf_65); 
          double memref_load_67 = func_arg_7[arith_addi_62]; 
          double arith_mulf_68 = (memref_load_35 * memref_load_67); 
          double arith_addf_69 = (arith_addf_66 + arith_mulf_68); 
          func_arg_3[arith_addi_30][arith_addi_62] = arith_addf_69; 
          double memref_load_70 = func_arg_9[arith_addi_62]; 
          double memref_load_71 = func_arg_3[arith_addi_30][arith_addi_62]; 
          double arith_mulf_72 = (func_arg_2 * memref_load_71); 
          double arith_mulf_73 = (arith_mulf_72 * memref_load_36); 
          double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
          func_arg_9[arith_addi_62] = arith_addf_74; 
          int arith_addi_75 = (arith_addi_49 + arith_const_21); 
          double memref_load_76 = func_arg_3[arith_addi_30][arith_addi_75]; 
          double memref_load_77 = func_arg_5[arith_addi_75]; 
          double arith_mulf_78 = (memref_load_37 * memref_load_77); 
          double arith_addf_79 = (memref_load_76 + arith_mulf_78); 
          double memref_load_80 = func_arg_7[arith_addi_75]; 
          double arith_mulf_81 = (memref_load_38 * memref_load_80); 
          double arith_addf_82 = (arith_addf_79 + arith_mulf_81); 
          func_arg_3[arith_addi_30][arith_addi_75] = arith_addf_82; 
          double memref_load_83 = func_arg_9[arith_addi_75]; 
          double memref_load_84 = func_arg_3[arith_addi_30][arith_addi_75]; 
          double arith_mulf_85 = (func_arg_2 * memref_load_84); 
          double arith_mulf_86 = (arith_mulf_85 * memref_load_39); 
          double arith_addf_87 = (memref_load_83 + arith_mulf_86); 
          func_arg_9[arith_addi_75] = arith_addf_87; 
          int arith_addi_88 = (arith_addi_49 + arith_const_12); 
          double memref_load_89 = func_arg_3[arith_addi_30][arith_addi_88]; 
          double memref_load_90 = func_arg_5[arith_addi_88]; 
          double arith_mulf_91 = (memref_load_40 * memref_load_90); 
          double arith_addf_92 = (memref_load_89 + arith_mulf_91); 
          double memref_load_93 = func_arg_7[arith_addi_88]; 
          double arith_mulf_94 = (memref_load_41 * memref_load_93); 
          double arith_addf_95 = (arith_addf_92 + arith_mulf_94); 
          func_arg_3[arith_addi_30][arith_addi_88] = arith_addf_95; 
          double memref_load_96 = func_arg_9[arith_addi_88]; 
          double memref_load_97 = func_arg_3[arith_addi_30][arith_addi_88]; 
          double arith_mulf_98 = (func_arg_2 * memref_load_97); 
          double arith_mulf_99 = (arith_mulf_98 * memref_load_42); 
          double arith_addf_100 = (memref_load_96 + arith_mulf_99); 
          func_arg_9[arith_addi_88] = arith_addf_100; 
        }
      }
    }
  }
  for (int for_iter_101 = arith_const_20; for_iter_101 < arith_const_21; for_iter_101 += arith_const_22) {
    int arith_muli_102 = (for_iter_101 * arith_const_16); 
    int arith_addi_103 = (arith_muli_102 + arith_const_15); 
    int arith_minsi_104 = min(arith_addi_103, arith_const_14); 
    for (int for_iter_105 = arith_const_20; for_iter_105 < arith_minsi_104; for_iter_105 += arith_const_22) {
      int arith_muli_106 = (for_iter_101 * arith_const_17); 
      int arith_muli_107 = (for_iter_105 * arith_const_13); 
      int arith_addi_108 = (arith_muli_106 + arith_muli_107); 
      double memref_load_109 = func_arg_9[arith_addi_108]; 
      double memref_load_110 = func_arg_11[arith_addi_108]; 
      double arith_addf_111 = (memref_load_109 + memref_load_110); 
      func_arg_9[arith_addi_108] = arith_addf_111; 
      int arith_addi_112 = (arith_addi_108 + arith_const_22); 
      double memref_load_113 = func_arg_9[arith_addi_112]; 
      double memref_load_114 = func_arg_11[arith_addi_112]; 
      double arith_addf_115 = (memref_load_113 + memref_load_114); 
      func_arg_9[arith_addi_112] = arith_addf_115; 
      int arith_addi_116 = (arith_addi_108 + arith_const_21); 
      double memref_load_117 = func_arg_9[arith_addi_116]; 
      double memref_load_118 = func_arg_11[arith_addi_116]; 
      double arith_addf_119 = (memref_load_117 + memref_load_118); 
      func_arg_9[arith_addi_116] = arith_addf_119; 
      int arith_addi_120 = (arith_addi_108 + arith_const_12); 
      double memref_load_121 = func_arg_9[arith_addi_120]; 
      double memref_load_122 = func_arg_11[arith_addi_120]; 
      double arith_addf_123 = (memref_load_121 + memref_load_122); 
      func_arg_9[arith_addi_120] = arith_addf_123; 
    }
  }
  for (int for_iter_124 = arith_const_20; for_iter_124 < arith_const_21; for_iter_124 += arith_const_22) {
    int arith_muli_125 = (for_iter_124 * arith_const_19); 
    int arith_addi_126 = (arith_muli_125 + arith_const_18); 
    int arith_minsi_127 = min(arith_addi_126, arith_const_17); 
    for (int for_iter_128 = arith_const_20; for_iter_128 < arith_minsi_127; for_iter_128 += arith_const_22) {
      int arith_muli_129 = (for_iter_124 * arith_const_17); 
      int arith_addi_130 = (arith_muli_129 + for_iter_128); 
      for (int for_iter_131 = arith_const_20; for_iter_131 < arith_const_21; for_iter_131 += arith_const_22) {
        int arith_muli_132 = (for_iter_131 * arith_const_16); 
        int arith_addi_133 = (arith_muli_132 + arith_const_15); 
        int arith_minsi_134 = min(arith_addi_133, arith_const_14); 
        for (int for_iter_135 = arith_const_20; for_iter_135 < arith_minsi_134; for_iter_135 += arith_const_22) {
          int arith_muli_136 = (for_iter_131 * arith_const_17); 
          int arith_muli_137 = (for_iter_135 * arith_const_13); 
          int arith_addi_138 = (arith_muli_136 + arith_muli_137); 
          double memref_load_139 = func_arg_8[arith_addi_130]; 
          double memref_load_140 = func_arg_3[arith_addi_130][arith_addi_138]; 
          double arith_mulf_141 = (func_arg_1 * memref_load_140); 
          double memref_load_142 = func_arg_9[arith_addi_138]; 
          double arith_mulf_143 = (arith_mulf_141 * memref_load_142); 
          double arith_addf_144 = (memref_load_139 + arith_mulf_143); 
          func_arg_8[arith_addi_130] = arith_addf_144; 
          int arith_addi_145 = (arith_addi_138 + arith_const_22); 
          double memref_load_146 = func_arg_8[arith_addi_130]; 
          double memref_load_147 = func_arg_3[arith_addi_130][arith_addi_145]; 
          double arith_mulf_148 = (func_arg_1 * memref_load_147); 
          double memref_load_149 = func_arg_9[arith_addi_145]; 
          double arith_mulf_150 = (arith_mulf_148 * memref_load_149); 
          double arith_addf_151 = (memref_load_146 + arith_mulf_150); 
          func_arg_8[arith_addi_130] = arith_addf_151; 
          int arith_addi_152 = (arith_addi_138 + arith_const_21); 
          double memref_load_153 = func_arg_8[arith_addi_130]; 
          double memref_load_154 = func_arg_3[arith_addi_130][arith_addi_152]; 
          double arith_mulf_155 = (func_arg_1 * memref_load_154); 
          double memref_load_156 = func_arg_9[arith_addi_152]; 
          double arith_mulf_157 = (arith_mulf_155 * memref_load_156); 
          double arith_addf_158 = (memref_load_153 + arith_mulf_157); 
          func_arg_8[arith_addi_130] = arith_addf_158; 
          int arith_addi_159 = (arith_addi_138 + arith_const_12); 
          double memref_load_160 = func_arg_8[arith_addi_130]; 
          double memref_load_161 = func_arg_3[arith_addi_130][arith_addi_159]; 
          double arith_mulf_162 = (func_arg_1 * memref_load_161); 
          double memref_load_163 = func_arg_9[arith_addi_159]; 
          double arith_mulf_164 = (arith_mulf_162 * memref_load_163); 
          double arith_addf_165 = (memref_load_160 + arith_mulf_164); 
          func_arg_8[arith_addi_130] = arith_addf_165; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;


  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);

}

#pragma pocc-region-end
