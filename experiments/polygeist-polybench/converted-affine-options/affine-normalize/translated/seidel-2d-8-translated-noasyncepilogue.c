#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros_seq.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 31; 
  int arith_const_4 = 39; 
  int arith_const_5 = -1; 
  int arith_const_6 = 32; 
  int arith_const_7 = 15; 
  int arith_const_8 = 20; 
  int arith_const_9 = -38; 
  int arith_const_10 = 16; 
  int arith_const_11 = 3; 
  double arith_const_12 = 9.000000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 2; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_11; for_iter_17 += arith_const_15) {
      int arith_muli_18 = (for_iter_16 * arith_const_10); 
      int arith_muli_19 = (for_iter_17 * arith_const_10); 
      int arith_addi_20 = (arith_muli_18 + arith_muli_19); 
      int arith_addi_21 = (arith_addi_20 + arith_const_9); 
      int arith_maxsi_22 = max(arith_addi_21, arith_const_13); 
      int arith_muli_23 = (for_iter_16 * arith_const_10); 
      int arith_muli_24 = (for_iter_17 * arith_const_10); 
      int arith_addi_25 = (arith_muli_23 + arith_muli_24); 
      int arith_addi_26 = (arith_addi_25 + arith_const_7); 
      int arith_minsi_27 = min(arith_addi_26, arith_const_8); 
      for (int for_iter_28 = arith_maxsi_22; for_iter_28 < arith_minsi_27; for_iter_28 += arith_const_15) {
        int arith_muli_29 = (for_iter_16 * arith_const_6); 
        int arith_addi_30 = (for_iter_28 + arith_const_15); 
        int arith_muli_31 = (for_iter_16 * arith_const_6); 
        int arith_muli_32 = (for_iter_28 * arith_const_5); 
        int arith_addi_33 = (arith_muli_31 + arith_muli_32); 
        int arith_muli_34 = (for_iter_17 * arith_const_6); 
        int arith_addi_35 = (arith_addi_33 + arith_muli_34); 
        int arith_addi_36 = (arith_addi_35 + arith_const_9); 
        int arith_maxsi_37 = max(arith_muli_29, arith_addi_30); 
        int arith_maxsi_38 = max(arith_maxsi_37, arith_addi_36); 
        int arith_muli_39 = (for_iter_16 * arith_const_6); 
        int arith_addi_40 = (arith_muli_39 + arith_const_6); 
        int arith_addi_41 = (for_iter_28 + arith_const_4); 
        int arith_muli_42 = (for_iter_16 * arith_const_6); 
        int arith_muli_43 = (for_iter_28 * arith_const_5); 
        int arith_addi_44 = (arith_muli_42 + arith_muli_43); 
        int arith_muli_45 = (for_iter_17 * arith_const_6); 
        int arith_addi_46 = (arith_addi_44 + arith_muli_45); 
        int arith_addi_47 = (arith_addi_46 + arith_const_3); 
        int arith_minsi_48 = min(arith_addi_40, arith_addi_41); 
        int arith_minsi_49 = min(arith_minsi_48, arith_addi_47); 
        for (int for_iter_50 = arith_maxsi_38; for_iter_50 < arith_minsi_49; for_iter_50 += arith_const_15) {
          int arith_muli_51 = (for_iter_16 * arith_const_6); 
          int arith_muli_52 = (for_iter_17 * arith_const_6); 
          int arith_addi_53 = (arith_muli_51 + arith_muli_52); 
          int arith_addi_54 = (for_iter_28 + for_iter_50); 
          int arith_addi_55 = (arith_addi_54 + arith_const_15); 
          int arith_maxsi_56 = max(arith_addi_53, arith_addi_55); 
          int arith_muli_57 = (for_iter_16 * arith_const_6); 
          int arith_muli_58 = (for_iter_17 * arith_const_6); 
          int arith_addi_59 = (arith_muli_57 + arith_muli_58); 
          int arith_addi_60 = (arith_addi_59 + arith_const_6); 
          int arith_addi_61 = (for_iter_28 + for_iter_50); 
          int arith_addi_62 = (arith_addi_61 + arith_const_4); 
          int arith_minsi_63 = min(arith_addi_60, arith_addi_62); 
          for (int for_iter_64 = arith_maxsi_56; for_iter_64 < arith_minsi_63; for_iter_64 += arith_const_15) {
            int arith_muli_65 = (for_iter_50 * arith_const_5); 
            int arith_addi_66 = (arith_muli_65 + for_iter_28); 
            int arith_addi_67 = (arith_addi_66 + arith_const_5); 
            int arith_muli_68 = (for_iter_50 * arith_const_5); 
            int arith_muli_69 = (for_iter_28 * arith_const_5); 
            int arith_addi_70 = (arith_muli_68 + arith_muli_69); 
            int arith_addi_71 = (arith_addi_70 + for_iter_64); 
            int arith_addi_72 = (arith_addi_71 + arith_const_5); 
            double memref_load_73 = func_arg_2[arith_addi_67][arith_addi_72]; 
            int arith_muli_74 = (for_iter_50 * arith_const_5); 
            int arith_addi_75 = (arith_muli_74 + for_iter_28); 
            int arith_addi_76 = (arith_addi_75 + arith_const_5); 
            int arith_muli_77 = (for_iter_50 * arith_const_5); 
            int arith_muli_78 = (for_iter_28 * arith_const_5); 
            int arith_addi_79 = (arith_muli_77 + arith_muli_78); 
            int arith_addi_80 = (arith_addi_79 + for_iter_64); 
            double memref_load_81 = func_arg_2[arith_addi_76][arith_addi_80]; 
            double arith_addf_82 = (memref_load_73 + memref_load_81); 
            int arith_muli_83 = (for_iter_50 * arith_const_5); 
            int arith_addi_84 = (arith_muli_83 + for_iter_28); 
            int arith_addi_85 = (arith_addi_84 + arith_const_5); 
            int arith_muli_86 = (for_iter_50 * arith_const_5); 
            int arith_muli_87 = (for_iter_28 * arith_const_5); 
            int arith_addi_88 = (arith_muli_86 + arith_muli_87); 
            int arith_addi_89 = (arith_addi_88 + for_iter_64); 
            int arith_addi_90 = (arith_addi_89 + arith_const_15); 
            double memref_load_91 = func_arg_2[arith_addi_85][arith_addi_90]; 
            double arith_addf_92 = (arith_addf_82 + memref_load_91); 
            int arith_muli_93 = (for_iter_50 * arith_const_5); 
            int arith_addi_94 = (arith_muli_93 + for_iter_28); 
            int arith_muli_95 = (for_iter_50 * arith_const_5); 
            int arith_muli_96 = (for_iter_28 * arith_const_5); 
            int arith_addi_97 = (arith_muli_95 + arith_muli_96); 
            int arith_addi_98 = (arith_addi_97 + for_iter_64); 
            int arith_addi_99 = (arith_addi_98 + arith_const_5); 
            double memref_load_100 = func_arg_2[arith_addi_94][arith_addi_99]; 
            double arith_addf_101 = (arith_addf_92 + memref_load_100); 
            int arith_muli_102 = (for_iter_50 * arith_const_5); 
            int arith_addi_103 = (arith_muli_102 + for_iter_28); 
            int arith_muli_104 = (for_iter_50 * arith_const_5); 
            int arith_muli_105 = (for_iter_28 * arith_const_5); 
            int arith_addi_106 = (arith_muli_104 + arith_muli_105); 
            int arith_addi_107 = (arith_addi_106 + for_iter_64); 
            double memref_load_108 = func_arg_2[arith_addi_103][arith_addi_107]; 
            double arith_addf_109 = (arith_addf_101 + memref_load_108); 
            int arith_muli_110 = (for_iter_50 * arith_const_5); 
            int arith_addi_111 = (arith_muli_110 + for_iter_28); 
            int arith_muli_112 = (for_iter_50 * arith_const_5); 
            int arith_muli_113 = (for_iter_28 * arith_const_5); 
            int arith_addi_114 = (arith_muli_112 + arith_muli_113); 
            int arith_addi_115 = (arith_addi_114 + for_iter_64); 
            int arith_addi_116 = (arith_addi_115 + arith_const_15); 
            double memref_load_117 = func_arg_2[arith_addi_111][arith_addi_116]; 
            double arith_addf_118 = (arith_addf_109 + memref_load_117); 
            int arith_muli_119 = (for_iter_50 * arith_const_5); 
            int arith_addi_120 = (arith_muli_119 + for_iter_28); 
            int arith_addi_121 = (arith_addi_120 + arith_const_15); 
            int arith_muli_122 = (for_iter_50 * arith_const_5); 
            int arith_muli_123 = (for_iter_28 * arith_const_5); 
            int arith_addi_124 = (arith_muli_122 + arith_muli_123); 
            int arith_addi_125 = (arith_addi_124 + for_iter_64); 
            int arith_addi_126 = (arith_addi_125 + arith_const_5); 
            double memref_load_127 = func_arg_2[arith_addi_121][arith_addi_126]; 
            double arith_addf_128 = (arith_addf_118 + memref_load_127); 
            int arith_muli_129 = (for_iter_50 * arith_const_5); 
            int arith_addi_130 = (arith_muli_129 + for_iter_28); 
            int arith_addi_131 = (arith_addi_130 + arith_const_15); 
            int arith_muli_132 = (for_iter_50 * arith_const_5); 
            int arith_muli_133 = (for_iter_28 * arith_const_5); 
            int arith_addi_134 = (arith_muli_132 + arith_muli_133); 
            int arith_addi_135 = (arith_addi_134 + for_iter_64); 
            double memref_load_136 = func_arg_2[arith_addi_131][arith_addi_135]; 
            double arith_addf_137 = (arith_addf_128 + memref_load_136); 
            int arith_muli_138 = (for_iter_50 * arith_const_5); 
            int arith_addi_139 = (arith_muli_138 + for_iter_28); 
            int arith_addi_140 = (arith_addi_139 + arith_const_15); 
            int arith_muli_141 = (for_iter_50 * arith_const_5); 
            int arith_muli_142 = (for_iter_28 * arith_const_5); 
            int arith_addi_143 = (arith_muli_141 + arith_muli_142); 
            int arith_addi_144 = (arith_addi_143 + for_iter_64); 
            int arith_addi_145 = (arith_addi_144 + arith_const_15); 
            double memref_load_146 = func_arg_2[arith_addi_140][arith_addi_145]; 
            double arith_addf_147 = (arith_addf_137 + memref_load_146); 
            double arith_divf_148 = (arith_addf_147 / arith_const_12); 
            int arith_muli_149 = (for_iter_50 * arith_const_5); 
            int arith_addi_150 = (arith_muli_149 + for_iter_28); 
            int arith_muli_151 = (for_iter_50 * arith_const_5); 
            int arith_muli_152 = (for_iter_28 * arith_const_5); 
            int arith_addi_153 = (arith_muli_151 + arith_muli_152); 
            int arith_addi_154 = (arith_addi_153 + for_iter_64); 
            func_arg_2[arith_addi_150][arith_addi_154] = arith_divf_148; 
          }
        }
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* A;


  kernel_seidel_2d(tsteps, n, A);

}

#pragma pocc-region-end
