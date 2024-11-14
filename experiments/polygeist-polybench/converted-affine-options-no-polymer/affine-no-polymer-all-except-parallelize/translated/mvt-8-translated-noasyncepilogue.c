#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 40; 
  int arith_const_7 = -32; 
  int arith_const_8 = 32; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 10; 
  int arith_const_13 = 128; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_14; for_iter_16 < arith_const_15; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_13); 
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
      int arith_muli_19 = (for_iter_18 * arith_const_13); 
      for (int for_iter_20 = arith_const_14; for_iter_20 < arith_const_12; for_iter_20 += arith_const_15) {
        int arith_muli_21 = (for_iter_20 * arith_const_11); 
        int arith_addi_22 = (arith_muli_17 + arith_muli_21); 
        int arith_addi_23 = (arith_addi_22 + arith_const_15); 
        int arith_addi_24 = (arith_addi_22 + arith_const_10); 
        int arith_addi_25 = (arith_addi_22 + arith_const_9); 
        for (int for_iter_26 = arith_const_14; for_iter_26 < arith_const_12; for_iter_26 += arith_const_15) {
          int arith_muli_27 = (for_iter_26 * arith_const_11); 
          int arith_addi_28 = (arith_muli_19 + arith_muli_27); 
          double memref_load_29 = func_arg_1[arith_addi_22]; 
          double memref_load_30 = func_arg_5[arith_addi_22][arith_addi_28]; 
          double memref_load_31 = func_arg_3[arith_addi_28]; 
          double arith_mulf_32 = (memref_load_30 * memref_load_31); 
          double arith_addf_33 = (memref_load_29 + arith_mulf_32); 
          func_arg_1[arith_addi_22] = arith_addf_33; 
          int arith_addi_34 = (arith_addi_28 + arith_const_15); 
          double memref_load_35 = func_arg_1[arith_addi_22]; 
          double memref_load_36 = func_arg_5[arith_addi_22][arith_addi_34]; 
          double memref_load_37 = func_arg_3[arith_addi_34]; 
          double arith_mulf_38 = (memref_load_36 * memref_load_37); 
          double arith_addf_39 = (memref_load_35 + arith_mulf_38); 
          func_arg_1[arith_addi_22] = arith_addf_39; 
          int arith_addi_40 = (arith_addi_28 + arith_const_10); 
          double memref_load_41 = func_arg_1[arith_addi_22]; 
          double memref_load_42 = func_arg_5[arith_addi_22][arith_addi_40]; 
          double memref_load_43 = func_arg_3[arith_addi_40]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double arith_addf_45 = (memref_load_41 + arith_mulf_44); 
          func_arg_1[arith_addi_22] = arith_addf_45; 
          int arith_addi_46 = (arith_addi_28 + arith_const_9); 
          double memref_load_47 = func_arg_1[arith_addi_22]; 
          double memref_load_48 = func_arg_5[arith_addi_22][arith_addi_46]; 
          double memref_load_49 = func_arg_3[arith_addi_46]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
          func_arg_1[arith_addi_22] = arith_addf_51; 
          double memref_load_52 = func_arg_1[arith_addi_23]; 
          double memref_load_53 = func_arg_5[arith_addi_23][arith_addi_28]; 
          double memref_load_54 = func_arg_3[arith_addi_28]; 
          double arith_mulf_55 = (memref_load_53 * memref_load_54); 
          double arith_addf_56 = (memref_load_52 + arith_mulf_55); 
          func_arg_1[arith_addi_23] = arith_addf_56; 
          int arith_addi_57 = (arith_addi_28 + arith_const_15); 
          double memref_load_58 = func_arg_1[arith_addi_23]; 
          double memref_load_59 = func_arg_5[arith_addi_23][arith_addi_57]; 
          double memref_load_60 = func_arg_3[arith_addi_57]; 
          double arith_mulf_61 = (memref_load_59 * memref_load_60); 
          double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
          func_arg_1[arith_addi_23] = arith_addf_62; 
          int arith_addi_63 = (arith_addi_28 + arith_const_10); 
          double memref_load_64 = func_arg_1[arith_addi_23]; 
          double memref_load_65 = func_arg_5[arith_addi_23][arith_addi_63]; 
          double memref_load_66 = func_arg_3[arith_addi_63]; 
          double arith_mulf_67 = (memref_load_65 * memref_load_66); 
          double arith_addf_68 = (memref_load_64 + arith_mulf_67); 
          func_arg_1[arith_addi_23] = arith_addf_68; 
          int arith_addi_69 = (arith_addi_28 + arith_const_9); 
          double memref_load_70 = func_arg_1[arith_addi_23]; 
          double memref_load_71 = func_arg_5[arith_addi_23][arith_addi_69]; 
          double memref_load_72 = func_arg_3[arith_addi_69]; 
          double arith_mulf_73 = (memref_load_71 * memref_load_72); 
          double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
          func_arg_1[arith_addi_23] = arith_addf_74; 
          double memref_load_75 = func_arg_1[arith_addi_24]; 
          double memref_load_76 = func_arg_5[arith_addi_24][arith_addi_28]; 
          double memref_load_77 = func_arg_3[arith_addi_28]; 
          double arith_mulf_78 = (memref_load_76 * memref_load_77); 
          double arith_addf_79 = (memref_load_75 + arith_mulf_78); 
          func_arg_1[arith_addi_24] = arith_addf_79; 
          int arith_addi_80 = (arith_addi_28 + arith_const_15); 
          double memref_load_81 = func_arg_1[arith_addi_24]; 
          double memref_load_82 = func_arg_5[arith_addi_24][arith_addi_80]; 
          double memref_load_83 = func_arg_3[arith_addi_80]; 
          double arith_mulf_84 = (memref_load_82 * memref_load_83); 
          double arith_addf_85 = (memref_load_81 + arith_mulf_84); 
          func_arg_1[arith_addi_24] = arith_addf_85; 
          int arith_addi_86 = (arith_addi_28 + arith_const_10); 
          double memref_load_87 = func_arg_1[arith_addi_24]; 
          double memref_load_88 = func_arg_5[arith_addi_24][arith_addi_86]; 
          double memref_load_89 = func_arg_3[arith_addi_86]; 
          double arith_mulf_90 = (memref_load_88 * memref_load_89); 
          double arith_addf_91 = (memref_load_87 + arith_mulf_90); 
          func_arg_1[arith_addi_24] = arith_addf_91; 
          int arith_addi_92 = (arith_addi_28 + arith_const_9); 
          double memref_load_93 = func_arg_1[arith_addi_24]; 
          double memref_load_94 = func_arg_5[arith_addi_24][arith_addi_92]; 
          double memref_load_95 = func_arg_3[arith_addi_92]; 
          double arith_mulf_96 = (memref_load_94 * memref_load_95); 
          double arith_addf_97 = (memref_load_93 + arith_mulf_96); 
          func_arg_1[arith_addi_24] = arith_addf_97; 
          double memref_load_98 = func_arg_1[arith_addi_25]; 
          double memref_load_99 = func_arg_5[arith_addi_25][arith_addi_28]; 
          double memref_load_100 = func_arg_3[arith_addi_28]; 
          double arith_mulf_101 = (memref_load_99 * memref_load_100); 
          double arith_addf_102 = (memref_load_98 + arith_mulf_101); 
          func_arg_1[arith_addi_25] = arith_addf_102; 
          int arith_addi_103 = (arith_addi_28 + arith_const_15); 
          double memref_load_104 = func_arg_1[arith_addi_25]; 
          double memref_load_105 = func_arg_5[arith_addi_25][arith_addi_103]; 
          double memref_load_106 = func_arg_3[arith_addi_103]; 
          double arith_mulf_107 = (memref_load_105 * memref_load_106); 
          double arith_addf_108 = (memref_load_104 + arith_mulf_107); 
          func_arg_1[arith_addi_25] = arith_addf_108; 
          int arith_addi_109 = (arith_addi_28 + arith_const_10); 
          double memref_load_110 = func_arg_1[arith_addi_25]; 
          double memref_load_111 = func_arg_5[arith_addi_25][arith_addi_109]; 
          double memref_load_112 = func_arg_3[arith_addi_109]; 
          double arith_mulf_113 = (memref_load_111 * memref_load_112); 
          double arith_addf_114 = (memref_load_110 + arith_mulf_113); 
          func_arg_1[arith_addi_25] = arith_addf_114; 
          int arith_addi_115 = (arith_addi_28 + arith_const_9); 
          double memref_load_116 = func_arg_1[arith_addi_25]; 
          double memref_load_117 = func_arg_5[arith_addi_25][arith_addi_115]; 
          double memref_load_118 = func_arg_3[arith_addi_115]; 
          double arith_mulf_119 = (memref_load_117 * memref_load_118); 
          double arith_addf_120 = (memref_load_116 + arith_mulf_119); 
          func_arg_1[arith_addi_25] = arith_addf_120; 
        }
      }
    }
  }
  for (int for_iter_121 = arith_const_14; for_iter_121 < arith_const_10; for_iter_121 += arith_const_15) {
    int arith_muli_122 = (for_iter_121 * arith_const_8); 
    for (int for_iter_123 = arith_const_14; for_iter_123 < arith_const_15; for_iter_123 += arith_const_15) {
      int arith_muli_124 = (for_iter_123 * arith_const_13); 
      int arith_muli_125 = (for_iter_121 * arith_const_7); 
      int arith_addi_126 = (arith_muli_125 + arith_const_6); 
      int arith_minsi_127 = min(arith_addi_126, arith_const_8); 
      for (int for_iter_128 = arith_const_14; for_iter_128 < arith_minsi_127; for_iter_128 += arith_const_15) {
        int arith_addi_129 = (arith_muli_122 + for_iter_128); 
        for (int for_iter_130 = arith_const_14; for_iter_130 < arith_const_12; for_iter_130 += arith_const_15) {
          int arith_muli_131 = (for_iter_130 * arith_const_11); 
          int arith_addi_132 = (arith_muli_124 + arith_muli_131); 
          double memref_load_133 = func_arg_2[arith_addi_129]; 
          double memref_load_134 = func_arg_5[arith_addi_132][arith_addi_129]; 
          double memref_load_135 = func_arg_4[arith_addi_132]; 
          double arith_mulf_136 = (memref_load_134 * memref_load_135); 
          double arith_addf_137 = (memref_load_133 + arith_mulf_136); 
          func_arg_2[arith_addi_129] = arith_addf_137; 
          int arith_addi_138 = (arith_addi_132 + arith_const_15); 
          double memref_load_139 = func_arg_2[arith_addi_129]; 
          double memref_load_140 = func_arg_5[arith_addi_138][arith_addi_129]; 
          double memref_load_141 = func_arg_4[arith_addi_138]; 
          double arith_mulf_142 = (memref_load_140 * memref_load_141); 
          double arith_addf_143 = (memref_load_139 + arith_mulf_142); 
          func_arg_2[arith_addi_129] = arith_addf_143; 
          int arith_addi_144 = (arith_addi_132 + arith_const_10); 
          double memref_load_145 = func_arg_2[arith_addi_129]; 
          double memref_load_146 = func_arg_5[arith_addi_144][arith_addi_129]; 
          double memref_load_147 = func_arg_4[arith_addi_144]; 
          double arith_mulf_148 = (memref_load_146 * memref_load_147); 
          double arith_addf_149 = (memref_load_145 + arith_mulf_148); 
          func_arg_2[arith_addi_129] = arith_addf_149; 
          int arith_addi_150 = (arith_addi_132 + arith_const_9); 
          double memref_load_151 = func_arg_2[arith_addi_129]; 
          double memref_load_152 = func_arg_5[arith_addi_150][arith_addi_129]; 
          double memref_load_153 = func_arg_4[arith_addi_150]; 
          double arith_mulf_154 = (memref_load_152 * memref_load_153); 
          double arith_addf_155 = (memref_load_151 + arith_mulf_154); 
          func_arg_2[arith_addi_129] = arith_addf_155; 
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;


  kernel_mvt(n, x1, x2, y_1, y_2, A);

}

#pragma pocc-region-end
