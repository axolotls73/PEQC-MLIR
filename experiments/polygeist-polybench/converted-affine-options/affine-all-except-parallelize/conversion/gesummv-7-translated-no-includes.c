#pragma pocc-region-start
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 28; 
  int arith_const_10 = 32; 
  int arith_const_11 = 3; 
  int arith_const_12 = 2; 
  int arith_const_13 = 4; 
  int arith_const_14 = 7; 
  int arith_const_15 = 128; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_17; for_iter_19 < arith_const_18; for_iter_19 += arith_const_18) {
    int arith_muli_20 = (for_iter_19 * arith_const_15); 
    for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_14; for_iter_21 += arith_const_18) {
      int arith_muli_22 = (for_iter_21 * arith_const_13); 
      int arith_addi_23 = (arith_muli_20 + arith_muli_22); 
      func_arg_7[arith_addi_23] = arith_const_16; 
      int arith_addi_24 = (arith_addi_23 + arith_const_18); 
      func_arg_7[arith_addi_24] = arith_const_16; 
      int arith_addi_25 = (arith_addi_23 + arith_const_12); 
      func_arg_7[arith_addi_25] = arith_const_16; 
      int arith_addi_26 = (arith_addi_23 + arith_const_11); 
      func_arg_7[arith_addi_26] = arith_const_16; 
    }
  }
  for (int for_iter_27 = arith_const_17; for_iter_27 < arith_const_18; for_iter_27 += arith_const_18) {
    int arith_muli_28 = (for_iter_27 * arith_const_10); 
    int arith_addi_29 = (arith_muli_28 + arith_const_9); 
    for (int for_iter_30 = arith_const_17; for_iter_30 < arith_const_12; for_iter_30 += arith_const_18) {
      int arith_addi_31 = (arith_addi_29 + for_iter_30); 
      func_arg_7[arith_addi_31] = arith_const_16; 
    }
  }
  for (int for_iter_32 = arith_const_17; for_iter_32 < arith_const_18; for_iter_32 += arith_const_18) {
    int arith_muli_33 = (for_iter_32 * arith_const_10); 
    for (int for_iter_34 = arith_const_17; for_iter_34 < arith_const_8; for_iter_34 += arith_const_18) {
      int arith_addi_35 = (arith_muli_33 + for_iter_34); 
      for (int for_iter_36 = arith_const_17; for_iter_36 < arith_const_14; for_iter_36 += arith_const_18) {
        int arith_muli_37 = (for_iter_36 * arith_const_13); 
        double memref_load_38 = func_arg_4[arith_addi_35][arith_muli_37]; 
        double memref_load_39 = func_arg_6[arith_muli_37]; 
        double arith_mulf_40 = (memref_load_38 * memref_load_39); 
        double memref_load_41 = func_arg_7[arith_addi_35]; 
        double arith_addf_42 = (arith_mulf_40 + memref_load_41); 
        func_arg_7[arith_addi_35] = arith_addf_42; 
        int arith_addi_43 = (arith_muli_37 + arith_const_18); 
        double memref_load_44 = func_arg_4[arith_addi_35][arith_addi_43]; 
        double memref_load_45 = func_arg_6[arith_addi_43]; 
        double arith_mulf_46 = (memref_load_44 * memref_load_45); 
        double memref_load_47 = func_arg_7[arith_addi_35]; 
        double arith_addf_48 = (arith_mulf_46 + memref_load_47); 
        func_arg_7[arith_addi_35] = arith_addf_48; 
        int arith_addi_49 = (arith_muli_37 + arith_const_12); 
        double memref_load_50 = func_arg_4[arith_addi_35][arith_addi_49]; 
        double memref_load_51 = func_arg_6[arith_addi_49]; 
        double arith_mulf_52 = (memref_load_50 * memref_load_51); 
        double memref_load_53 = func_arg_7[arith_addi_35]; 
        double arith_addf_54 = (arith_mulf_52 + memref_load_53); 
        func_arg_7[arith_addi_35] = arith_addf_54; 
        int arith_addi_55 = (arith_muli_37 + arith_const_11); 
        double memref_load_56 = func_arg_4[arith_addi_35][arith_addi_55]; 
        double memref_load_57 = func_arg_6[arith_addi_55]; 
        double arith_mulf_58 = (memref_load_56 * memref_load_57); 
        double memref_load_59 = func_arg_7[arith_addi_35]; 
        double arith_addf_60 = (arith_mulf_58 + memref_load_59); 
        func_arg_7[arith_addi_35] = arith_addf_60; 
      }
      for (int for_iter_61 = arith_const_17; for_iter_61 < arith_const_12; for_iter_61 += arith_const_18) {
        int arith_addi_62 = (for_iter_61 + arith_const_9); 
        double memref_load_63 = func_arg_4[arith_addi_35][arith_addi_62]; 
        double memref_load_64 = func_arg_6[arith_addi_62]; 
        double arith_mulf_65 = (memref_load_63 * memref_load_64); 
        double memref_load_66 = func_arg_7[arith_addi_35]; 
        double arith_addf_67 = (arith_mulf_65 + memref_load_66); 
        func_arg_7[arith_addi_35] = arith_addf_67; 
      }
    }
  }
  for (int for_iter_68 = arith_const_17; for_iter_68 < arith_const_18; for_iter_68 += arith_const_18) {
    int arith_muli_69 = (for_iter_68 * arith_const_15); 
    for (int for_iter_70 = arith_const_17; for_iter_70 < arith_const_14; for_iter_70 += arith_const_18) {
      int arith_muli_71 = (for_iter_70 * arith_const_13); 
      int arith_addi_72 = (arith_muli_69 + arith_muli_71); 
      func_arg_5[arith_addi_72] = arith_const_16; 
      int arith_addi_73 = (arith_addi_72 + arith_const_18); 
      func_arg_5[arith_addi_73] = arith_const_16; 
      int arith_addi_74 = (arith_addi_72 + arith_const_12); 
      func_arg_5[arith_addi_74] = arith_const_16; 
      int arith_addi_75 = (arith_addi_72 + arith_const_11); 
      func_arg_5[arith_addi_75] = arith_const_16; 
    }
  }
  for (int for_iter_76 = arith_const_17; for_iter_76 < arith_const_18; for_iter_76 += arith_const_18) {
    int arith_muli_77 = (for_iter_76 * arith_const_10); 
    int arith_addi_78 = (arith_muli_77 + arith_const_9); 
    for (int for_iter_79 = arith_const_17; for_iter_79 < arith_const_12; for_iter_79 += arith_const_18) {
      int arith_addi_80 = (arith_addi_78 + for_iter_79); 
      func_arg_5[arith_addi_80] = arith_const_16; 
    }
  }
  for (int for_iter_81 = arith_const_17; for_iter_81 < arith_const_18; for_iter_81 += arith_const_18) {
    int arith_muli_82 = (for_iter_81 * arith_const_10); 
    for (int for_iter_83 = arith_const_17; for_iter_83 < arith_const_8; for_iter_83 += arith_const_18) {
      int arith_addi_84 = (arith_muli_82 + for_iter_83); 
      for (int for_iter_85 = arith_const_17; for_iter_85 < arith_const_14; for_iter_85 += arith_const_18) {
        int arith_muli_86 = (for_iter_85 * arith_const_13); 
        double memref_load_87 = func_arg_3[arith_addi_84][arith_muli_86]; 
        double memref_load_88 = func_arg_6[arith_muli_86]; 
        double arith_mulf_89 = (memref_load_87 * memref_load_88); 
        double memref_load_90 = func_arg_5[arith_addi_84]; 
        double arith_addf_91 = (arith_mulf_89 + memref_load_90); 
        func_arg_5[arith_addi_84] = arith_addf_91; 
        int arith_addi_92 = (arith_muli_86 + arith_const_18); 
        double memref_load_93 = func_arg_3[arith_addi_84][arith_addi_92]; 
        double memref_load_94 = func_arg_6[arith_addi_92]; 
        double arith_mulf_95 = (memref_load_93 * memref_load_94); 
        double memref_load_96 = func_arg_5[arith_addi_84]; 
        double arith_addf_97 = (arith_mulf_95 + memref_load_96); 
        func_arg_5[arith_addi_84] = arith_addf_97; 
        int arith_addi_98 = (arith_muli_86 + arith_const_12); 
        double memref_load_99 = func_arg_3[arith_addi_84][arith_addi_98]; 
        double memref_load_100 = func_arg_6[arith_addi_98]; 
        double arith_mulf_101 = (memref_load_99 * memref_load_100); 
        double memref_load_102 = func_arg_5[arith_addi_84]; 
        double arith_addf_103 = (arith_mulf_101 + memref_load_102); 
        func_arg_5[arith_addi_84] = arith_addf_103; 
        int arith_addi_104 = (arith_muli_86 + arith_const_11); 
        double memref_load_105 = func_arg_3[arith_addi_84][arith_addi_104]; 
        double memref_load_106 = func_arg_6[arith_addi_104]; 
        double arith_mulf_107 = (memref_load_105 * memref_load_106); 
        double memref_load_108 = func_arg_5[arith_addi_84]; 
        double arith_addf_109 = (arith_mulf_107 + memref_load_108); 
        func_arg_5[arith_addi_84] = arith_addf_109; 
      }
      for (int for_iter_110 = arith_const_17; for_iter_110 < arith_const_12; for_iter_110 += arith_const_18) {
        int arith_addi_111 = (for_iter_110 + arith_const_9); 
        double memref_load_112 = func_arg_3[arith_addi_84][arith_addi_111]; 
        double memref_load_113 = func_arg_6[arith_addi_111]; 
        double arith_mulf_114 = (memref_load_112 * memref_load_113); 
        double memref_load_115 = func_arg_5[arith_addi_84]; 
        double arith_addf_116 = (arith_mulf_114 + memref_load_115); 
        func_arg_5[arith_addi_84] = arith_addf_116; 
      }
    }
  }
  for (int for_iter_117 = arith_const_17; for_iter_117 < arith_const_18; for_iter_117 += arith_const_18) {
    int arith_muli_118 = (for_iter_117 * arith_const_15); 
    for (int for_iter_119 = arith_const_17; for_iter_119 < arith_const_14; for_iter_119 += arith_const_18) {
      int arith_muli_120 = (for_iter_119 * arith_const_13); 
      int arith_addi_121 = (arith_muli_118 + arith_muli_120); 
      double memref_load_122 = func_arg_5[arith_addi_121]; 
      double arith_mulf_123 = (func_arg_1 * memref_load_122); 
      double memref_load_124 = func_arg_7[arith_addi_121]; 
      double arith_mulf_125 = (func_arg_2 * memref_load_124); 
      double arith_addf_126 = (arith_mulf_123 + arith_mulf_125); 
      func_arg_7[arith_addi_121] = arith_addf_126; 
      int arith_addi_127 = (arith_addi_121 + arith_const_18); 
      double memref_load_128 = func_arg_5[arith_addi_127]; 
      double arith_mulf_129 = (func_arg_1 * memref_load_128); 
      double memref_load_130 = func_arg_7[arith_addi_127]; 
      double arith_mulf_131 = (func_arg_2 * memref_load_130); 
      double arith_addf_132 = (arith_mulf_129 + arith_mulf_131); 
      func_arg_7[arith_addi_127] = arith_addf_132; 
      int arith_addi_133 = (arith_addi_121 + arith_const_12); 
      double memref_load_134 = func_arg_5[arith_addi_133]; 
      double arith_mulf_135 = (func_arg_1 * memref_load_134); 
      double memref_load_136 = func_arg_7[arith_addi_133]; 
      double arith_mulf_137 = (func_arg_2 * memref_load_136); 
      double arith_addf_138 = (arith_mulf_135 + arith_mulf_137); 
      func_arg_7[arith_addi_133] = arith_addf_138; 
      int arith_addi_139 = (arith_addi_121 + arith_const_11); 
      double memref_load_140 = func_arg_5[arith_addi_139]; 
      double arith_mulf_141 = (func_arg_1 * memref_load_140); 
      double memref_load_142 = func_arg_7[arith_addi_139]; 
      double arith_mulf_143 = (func_arg_2 * memref_load_142); 
      double arith_addf_144 = (arith_mulf_141 + arith_mulf_143); 
      func_arg_7[arith_addi_139] = arith_addf_144; 
    }
  }
  for (int for_iter_145 = arith_const_17; for_iter_145 < arith_const_18; for_iter_145 += arith_const_18) {
    int arith_muli_146 = (for_iter_145 * arith_const_10); 
    int arith_addi_147 = (arith_muli_146 + arith_const_9); 
    for (int for_iter_148 = arith_const_17; for_iter_148 < arith_const_12; for_iter_148 += arith_const_18) {
      int arith_addi_149 = (arith_addi_147 + for_iter_148); 
      double memref_load_150 = func_arg_5[arith_addi_149]; 
      double arith_mulf_151 = (func_arg_1 * memref_load_150); 
      double memref_load_152 = func_arg_7[arith_addi_149]; 
      double arith_mulf_153 = (func_arg_2 * memref_load_152); 
      double arith_addf_154 = (arith_mulf_151 + arith_mulf_153); 
      func_arg_7[arith_addi_149] = arith_addf_154; 
    }
  }
  return; 

}
#pragma pocc-region-end
