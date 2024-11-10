#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros_seq.h"
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 28; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = 4; 
  double arith_const_13 = 0.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 7; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    int arith_muli_18 = (for_iter_17 * arith_const_12); 
    for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_16; for_iter_19 += arith_const_16) {
      int arith_muli_20 = (for_iter_19 * arith_const_12); 
      int arith_addi_21 = (arith_muli_18 + arith_muli_20); 
      func_arg_7[arith_addi_21] = arith_const_13; 
      int arith_addi_22 = (arith_addi_21 + arith_const_16); 
      func_arg_7[arith_addi_22] = arith_const_13; 
      int arith_addi_23 = (arith_addi_21 + arith_const_11); 
      func_arg_7[arith_addi_23] = arith_const_13; 
      int arith_addi_24 = (arith_addi_21 + arith_const_10); 
      func_arg_7[arith_addi_24] = arith_const_13; 
    }
  }
  for (int for_iter_25 = arith_const_14; for_iter_25 < arith_const_11; for_iter_25 += arith_const_16) {
    int arith_addi_26 = (for_iter_25 + arith_const_9); 
    for (int for_iter_27 = arith_const_14; for_iter_27 < arith_const_16; for_iter_27 += arith_const_16) {
      int arith_addi_28 = (arith_addi_26 + for_iter_27); 
      func_arg_7[arith_addi_28] = arith_const_13; 
    }
  }
  for (int for_iter_29 = arith_const_14; for_iter_29 < arith_const_8; for_iter_29 += arith_const_16) {
    for (int for_iter_30 = arith_const_14; for_iter_30 < arith_const_16; for_iter_30 += arith_const_16) {
      int arith_addi_31 = (for_iter_29 + for_iter_30); 
      for (int for_iter_32 = arith_const_14; for_iter_32 < arith_const_15; for_iter_32 += arith_const_16) {
        int arith_muli_33 = (for_iter_32 * arith_const_12); 
        double memref_load_34 = func_arg_4[arith_addi_31][arith_muli_33]; 
        double memref_load_35 = func_arg_6[arith_muli_33]; 
        double arith_mulf_36 = (memref_load_34 * memref_load_35); 
        double memref_load_37 = func_arg_7[arith_addi_31]; 
        double arith_addf_38 = (arith_mulf_36 + memref_load_37); 
        func_arg_7[arith_addi_31] = arith_addf_38; 
        int arith_addi_39 = (arith_muli_33 + arith_const_16); 
        double memref_load_40 = func_arg_4[arith_addi_31][arith_addi_39]; 
        double memref_load_41 = func_arg_6[arith_addi_39]; 
        double arith_mulf_42 = (memref_load_40 * memref_load_41); 
        double memref_load_43 = func_arg_7[arith_addi_31]; 
        double arith_addf_44 = (arith_mulf_42 + memref_load_43); 
        func_arg_7[arith_addi_31] = arith_addf_44; 
        int arith_addi_45 = (arith_muli_33 + arith_const_11); 
        double memref_load_46 = func_arg_4[arith_addi_31][arith_addi_45]; 
        double memref_load_47 = func_arg_6[arith_addi_45]; 
        double arith_mulf_48 = (memref_load_46 * memref_load_47); 
        double memref_load_49 = func_arg_7[arith_addi_31]; 
        double arith_addf_50 = (arith_mulf_48 + memref_load_49); 
        func_arg_7[arith_addi_31] = arith_addf_50; 
        int arith_addi_51 = (arith_muli_33 + arith_const_10); 
        double memref_load_52 = func_arg_4[arith_addi_31][arith_addi_51]; 
        double memref_load_53 = func_arg_6[arith_addi_51]; 
        double arith_mulf_54 = (memref_load_52 * memref_load_53); 
        double memref_load_55 = func_arg_7[arith_addi_31]; 
        double arith_addf_56 = (arith_mulf_54 + memref_load_55); 
        func_arg_7[arith_addi_31] = arith_addf_56; 
      }
      for (int for_iter_57 = arith_const_14; for_iter_57 < arith_const_11; for_iter_57 += arith_const_16) {
        int arith_addi_58 = (for_iter_57 + arith_const_9); 
        double memref_load_59 = func_arg_4[arith_addi_31][arith_addi_58]; 
        double memref_load_60 = func_arg_6[arith_addi_58]; 
        double arith_mulf_61 = (memref_load_59 * memref_load_60); 
        double memref_load_62 = func_arg_7[arith_addi_31]; 
        double arith_addf_63 = (arith_mulf_61 + memref_load_62); 
        func_arg_7[arith_addi_31] = arith_addf_63; 
      }
    }
  }
  for (int for_iter_64 = arith_const_14; for_iter_64 < arith_const_15; for_iter_64 += arith_const_16) {
    int arith_muli_65 = (for_iter_64 * arith_const_12); 
    for (int for_iter_66 = arith_const_14; for_iter_66 < arith_const_16; for_iter_66 += arith_const_16) {
      int arith_muli_67 = (for_iter_66 * arith_const_12); 
      int arith_addi_68 = (arith_muli_65 + arith_muli_67); 
      func_arg_5[arith_addi_68] = arith_const_13; 
      int arith_addi_69 = (arith_addi_68 + arith_const_16); 
      func_arg_5[arith_addi_69] = arith_const_13; 
      int arith_addi_70 = (arith_addi_68 + arith_const_11); 
      func_arg_5[arith_addi_70] = arith_const_13; 
      int arith_addi_71 = (arith_addi_68 + arith_const_10); 
      func_arg_5[arith_addi_71] = arith_const_13; 
    }
  }
  for (int for_iter_72 = arith_const_14; for_iter_72 < arith_const_11; for_iter_72 += arith_const_16) {
    int arith_addi_73 = (for_iter_72 + arith_const_9); 
    for (int for_iter_74 = arith_const_14; for_iter_74 < arith_const_16; for_iter_74 += arith_const_16) {
      int arith_addi_75 = (arith_addi_73 + for_iter_74); 
      func_arg_5[arith_addi_75] = arith_const_13; 
    }
  }
  for (int for_iter_76 = arith_const_14; for_iter_76 < arith_const_8; for_iter_76 += arith_const_16) {
    for (int for_iter_77 = arith_const_14; for_iter_77 < arith_const_16; for_iter_77 += arith_const_16) {
      int arith_addi_78 = (for_iter_76 + for_iter_77); 
      for (int for_iter_79 = arith_const_14; for_iter_79 < arith_const_15; for_iter_79 += arith_const_16) {
        int arith_muli_80 = (for_iter_79 * arith_const_12); 
        double memref_load_81 = func_arg_3[arith_addi_78][arith_muli_80]; 
        double memref_load_82 = func_arg_6[arith_muli_80]; 
        double arith_mulf_83 = (memref_load_81 * memref_load_82); 
        double memref_load_84 = func_arg_5[arith_addi_78]; 
        double arith_addf_85 = (arith_mulf_83 + memref_load_84); 
        func_arg_5[arith_addi_78] = arith_addf_85; 
        int arith_addi_86 = (arith_muli_80 + arith_const_16); 
        double memref_load_87 = func_arg_3[arith_addi_78][arith_addi_86]; 
        double memref_load_88 = func_arg_6[arith_addi_86]; 
        double arith_mulf_89 = (memref_load_87 * memref_load_88); 
        double memref_load_90 = func_arg_5[arith_addi_78]; 
        double arith_addf_91 = (arith_mulf_89 + memref_load_90); 
        func_arg_5[arith_addi_78] = arith_addf_91; 
        int arith_addi_92 = (arith_muli_80 + arith_const_11); 
        double memref_load_93 = func_arg_3[arith_addi_78][arith_addi_92]; 
        double memref_load_94 = func_arg_6[arith_addi_92]; 
        double arith_mulf_95 = (memref_load_93 * memref_load_94); 
        double memref_load_96 = func_arg_5[arith_addi_78]; 
        double arith_addf_97 = (arith_mulf_95 + memref_load_96); 
        func_arg_5[arith_addi_78] = arith_addf_97; 
        int arith_addi_98 = (arith_muli_80 + arith_const_10); 
        double memref_load_99 = func_arg_3[arith_addi_78][arith_addi_98]; 
        double memref_load_100 = func_arg_6[arith_addi_98]; 
        double arith_mulf_101 = (memref_load_99 * memref_load_100); 
        double memref_load_102 = func_arg_5[arith_addi_78]; 
        double arith_addf_103 = (arith_mulf_101 + memref_load_102); 
        func_arg_5[arith_addi_78] = arith_addf_103; 
      }
      for (int for_iter_104 = arith_const_14; for_iter_104 < arith_const_11; for_iter_104 += arith_const_16) {
        int arith_addi_105 = (for_iter_104 + arith_const_9); 
        double memref_load_106 = func_arg_3[arith_addi_78][arith_addi_105]; 
        double memref_load_107 = func_arg_6[arith_addi_105]; 
        double arith_mulf_108 = (memref_load_106 * memref_load_107); 
        double memref_load_109 = func_arg_5[arith_addi_78]; 
        double arith_addf_110 = (arith_mulf_108 + memref_load_109); 
        func_arg_5[arith_addi_78] = arith_addf_110; 
      }
    }
  }
  for (int for_iter_111 = arith_const_14; for_iter_111 < arith_const_15; for_iter_111 += arith_const_16) {
    int arith_muli_112 = (for_iter_111 * arith_const_12); 
    for (int for_iter_113 = arith_const_14; for_iter_113 < arith_const_16; for_iter_113 += arith_const_16) {
      int arith_muli_114 = (for_iter_113 * arith_const_12); 
      int arith_addi_115 = (arith_muli_112 + arith_muli_114); 
      double memref_load_116 = func_arg_5[arith_addi_115]; 
      double arith_mulf_117 = (func_arg_1 * memref_load_116); 
      double memref_load_118 = func_arg_7[arith_addi_115]; 
      double arith_mulf_119 = (func_arg_2 * memref_load_118); 
      double arith_addf_120 = (arith_mulf_117 + arith_mulf_119); 
      func_arg_7[arith_addi_115] = arith_addf_120; 
      int arith_addi_121 = (arith_addi_115 + arith_const_16); 
      double memref_load_122 = func_arg_5[arith_addi_121]; 
      double arith_mulf_123 = (func_arg_1 * memref_load_122); 
      double memref_load_124 = func_arg_7[arith_addi_121]; 
      double arith_mulf_125 = (func_arg_2 * memref_load_124); 
      double arith_addf_126 = (arith_mulf_123 + arith_mulf_125); 
      func_arg_7[arith_addi_121] = arith_addf_126; 
      int arith_addi_127 = (arith_addi_115 + arith_const_11); 
      double memref_load_128 = func_arg_5[arith_addi_127]; 
      double arith_mulf_129 = (func_arg_1 * memref_load_128); 
      double memref_load_130 = func_arg_7[arith_addi_127]; 
      double arith_mulf_131 = (func_arg_2 * memref_load_130); 
      double arith_addf_132 = (arith_mulf_129 + arith_mulf_131); 
      func_arg_7[arith_addi_127] = arith_addf_132; 
      int arith_addi_133 = (arith_addi_115 + arith_const_10); 
      double memref_load_134 = func_arg_5[arith_addi_133]; 
      double arith_mulf_135 = (func_arg_1 * memref_load_134); 
      double memref_load_136 = func_arg_7[arith_addi_133]; 
      double arith_mulf_137 = (func_arg_2 * memref_load_136); 
      double arith_addf_138 = (arith_mulf_135 + arith_mulf_137); 
      func_arg_7[arith_addi_133] = arith_addf_138; 
    }
  }
  for (int for_iter_139 = arith_const_14; for_iter_139 < arith_const_11; for_iter_139 += arith_const_16) {
    int arith_addi_140 = (for_iter_139 + arith_const_9); 
    for (int for_iter_141 = arith_const_14; for_iter_141 < arith_const_16; for_iter_141 += arith_const_16) {
      int arith_addi_142 = (arith_addi_140 + for_iter_141); 
      double memref_load_143 = func_arg_5[arith_addi_142]; 
      double arith_mulf_144 = (func_arg_1 * memref_load_143); 
      double memref_load_145 = func_arg_7[arith_addi_142]; 
      double arith_mulf_146 = (func_arg_2 * memref_load_145); 
      double arith_addf_147 = (arith_mulf_144 + arith_mulf_146); 
      func_arg_7[arith_addi_142] = arith_addf_147; 
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
  double* B;
  double* tmp;
  double* x;
  double* y;


  kernel_gesummv(n, alpha, beta, A, B, tmp, x, y);

}

#pragma pocc-region-end
