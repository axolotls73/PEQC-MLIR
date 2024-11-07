#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 29; 
  double arith_const_9 = 0.200000; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    for (int for_iter_14 = arith_const_12; for_iter_14 < arith_const_8; for_iter_14 += arith_const_12) {
      for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_8; for_iter_15 += arith_const_7) {
        double memref_load_16 = func_arg_2[for_iter_14][for_iter_15]; 
        int arith_addi_17 = (for_iter_15 + arith_const_6); 
        double memref_load_18 = func_arg_2[for_iter_14][arith_addi_17]; 
        double arith_addf_19 = (memref_load_16 + memref_load_18); 
        int arith_addi_20 = (for_iter_15 + arith_const_12); 
        double memref_load_21 = func_arg_2[for_iter_14][arith_addi_20]; 
        double arith_addf_22 = (arith_addf_19 + memref_load_21); 
        int arith_addi_23 = (for_iter_14 + arith_const_12); 
        double memref_load_24 = func_arg_2[arith_addi_23][for_iter_15]; 
        double arith_addf_25 = (arith_addf_22 + memref_load_24); 
        int arith_addi_26 = (for_iter_14 + arith_const_6); 
        double memref_load_27 = func_arg_2[arith_addi_26][for_iter_15]; 
        double arith_addf_28 = (arith_addf_25 + memref_load_27); 
        double arith_mulf_29 = (arith_addf_28 * arith_const_9); 
        func_arg_3[for_iter_14][for_iter_15] = arith_mulf_29; 
        int arith_addi_30 = (for_iter_15 + arith_const_12); 
        double memref_load_31 = func_arg_2[for_iter_14][arith_addi_30]; 
        int arith_addi_32 = (arith_addi_30 + arith_const_6); 
        double memref_load_33 = func_arg_2[for_iter_14][arith_addi_32]; 
        double arith_addf_34 = (memref_load_31 + memref_load_33); 
        int arith_addi_35 = (arith_addi_30 + arith_const_12); 
        double memref_load_36 = func_arg_2[for_iter_14][arith_addi_35]; 
        double arith_addf_37 = (arith_addf_34 + memref_load_36); 
        int arith_addi_38 = (for_iter_14 + arith_const_12); 
        double memref_load_39 = func_arg_2[arith_addi_38][arith_addi_30]; 
        double arith_addf_40 = (arith_addf_37 + memref_load_39); 
        int arith_addi_41 = (for_iter_14 + arith_const_6); 
        double memref_load_42 = func_arg_2[arith_addi_41][arith_addi_30]; 
        double arith_addf_43 = (arith_addf_40 + memref_load_42); 
        double arith_mulf_44 = (arith_addf_43 * arith_const_9); 
        func_arg_3[for_iter_14][arith_addi_30] = arith_mulf_44; 
        int arith_addi_45 = (for_iter_15 + arith_const_5); 
        double memref_load_46 = func_arg_2[for_iter_14][arith_addi_45]; 
        int arith_addi_47 = (arith_addi_45 + arith_const_6); 
        double memref_load_48 = func_arg_2[for_iter_14][arith_addi_47]; 
        double arith_addf_49 = (memref_load_46 + memref_load_48); 
        int arith_addi_50 = (arith_addi_45 + arith_const_12); 
        double memref_load_51 = func_arg_2[for_iter_14][arith_addi_50]; 
        double arith_addf_52 = (arith_addf_49 + memref_load_51); 
        int arith_addi_53 = (for_iter_14 + arith_const_12); 
        double memref_load_54 = func_arg_2[arith_addi_53][arith_addi_45]; 
        double arith_addf_55 = (arith_addf_52 + memref_load_54); 
        int arith_addi_56 = (for_iter_14 + arith_const_6); 
        double memref_load_57 = func_arg_2[arith_addi_56][arith_addi_45]; 
        double arith_addf_58 = (arith_addf_55 + memref_load_57); 
        double arith_mulf_59 = (arith_addf_58 * arith_const_9); 
        func_arg_3[for_iter_14][arith_addi_45] = arith_mulf_59; 
        int arith_addi_60 = (for_iter_15 + arith_const_4); 
        double memref_load_61 = func_arg_2[for_iter_14][arith_addi_60]; 
        int arith_addi_62 = (arith_addi_60 + arith_const_6); 
        double memref_load_63 = func_arg_2[for_iter_14][arith_addi_62]; 
        double arith_addf_64 = (memref_load_61 + memref_load_63); 
        int arith_addi_65 = (arith_addi_60 + arith_const_12); 
        double memref_load_66 = func_arg_2[for_iter_14][arith_addi_65]; 
        double arith_addf_67 = (arith_addf_64 + memref_load_66); 
        int arith_addi_68 = (for_iter_14 + arith_const_12); 
        double memref_load_69 = func_arg_2[arith_addi_68][arith_addi_60]; 
        double arith_addf_70 = (arith_addf_67 + memref_load_69); 
        int arith_addi_71 = (for_iter_14 + arith_const_6); 
        double memref_load_72 = func_arg_2[arith_addi_71][arith_addi_60]; 
        double arith_addf_73 = (arith_addf_70 + memref_load_72); 
        double arith_mulf_74 = (arith_addf_73 * arith_const_9); 
        func_arg_3[for_iter_14][arith_addi_60] = arith_mulf_74; 
      }
    }
    for (int for_iter_75 = arith_const_12; for_iter_75 < arith_const_8; for_iter_75 += arith_const_12) {
      for (int for_iter_76 = arith_const_12; for_iter_76 < arith_const_8; for_iter_76 += arith_const_7) {
        double memref_load_77 = func_arg_3[for_iter_75][for_iter_76]; 
        int arith_addi_78 = (for_iter_76 + arith_const_6); 
        double memref_load_79 = func_arg_3[for_iter_75][arith_addi_78]; 
        double arith_addf_80 = (memref_load_77 + memref_load_79); 
        int arith_addi_81 = (for_iter_76 + arith_const_12); 
        double memref_load_82 = func_arg_3[for_iter_75][arith_addi_81]; 
        double arith_addf_83 = (arith_addf_80 + memref_load_82); 
        int arith_addi_84 = (for_iter_75 + arith_const_12); 
        double memref_load_85 = func_arg_3[arith_addi_84][for_iter_76]; 
        double arith_addf_86 = (arith_addf_83 + memref_load_85); 
        int arith_addi_87 = (for_iter_75 + arith_const_6); 
        double memref_load_88 = func_arg_3[arith_addi_87][for_iter_76]; 
        double arith_addf_89 = (arith_addf_86 + memref_load_88); 
        double arith_mulf_90 = (arith_addf_89 * arith_const_9); 
        func_arg_2[for_iter_75][for_iter_76] = arith_mulf_90; 
        int arith_addi_91 = (for_iter_76 + arith_const_12); 
        double memref_load_92 = func_arg_3[for_iter_75][arith_addi_91]; 
        int arith_addi_93 = (arith_addi_91 + arith_const_6); 
        double memref_load_94 = func_arg_3[for_iter_75][arith_addi_93]; 
        double arith_addf_95 = (memref_load_92 + memref_load_94); 
        int arith_addi_96 = (arith_addi_91 + arith_const_12); 
        double memref_load_97 = func_arg_3[for_iter_75][arith_addi_96]; 
        double arith_addf_98 = (arith_addf_95 + memref_load_97); 
        int arith_addi_99 = (for_iter_75 + arith_const_12); 
        double memref_load_100 = func_arg_3[arith_addi_99][arith_addi_91]; 
        double arith_addf_101 = (arith_addf_98 + memref_load_100); 
        int arith_addi_102 = (for_iter_75 + arith_const_6); 
        double memref_load_103 = func_arg_3[arith_addi_102][arith_addi_91]; 
        double arith_addf_104 = (arith_addf_101 + memref_load_103); 
        double arith_mulf_105 = (arith_addf_104 * arith_const_9); 
        func_arg_2[for_iter_75][arith_addi_91] = arith_mulf_105; 
        int arith_addi_106 = (for_iter_76 + arith_const_5); 
        double memref_load_107 = func_arg_3[for_iter_75][arith_addi_106]; 
        int arith_addi_108 = (arith_addi_106 + arith_const_6); 
        double memref_load_109 = func_arg_3[for_iter_75][arith_addi_108]; 
        double arith_addf_110 = (memref_load_107 + memref_load_109); 
        int arith_addi_111 = (arith_addi_106 + arith_const_12); 
        double memref_load_112 = func_arg_3[for_iter_75][arith_addi_111]; 
        double arith_addf_113 = (arith_addf_110 + memref_load_112); 
        int arith_addi_114 = (for_iter_75 + arith_const_12); 
        double memref_load_115 = func_arg_3[arith_addi_114][arith_addi_106]; 
        double arith_addf_116 = (arith_addf_113 + memref_load_115); 
        int arith_addi_117 = (for_iter_75 + arith_const_6); 
        double memref_load_118 = func_arg_3[arith_addi_117][arith_addi_106]; 
        double arith_addf_119 = (arith_addf_116 + memref_load_118); 
        double arith_mulf_120 = (arith_addf_119 * arith_const_9); 
        func_arg_2[for_iter_75][arith_addi_106] = arith_mulf_120; 
        int arith_addi_121 = (for_iter_76 + arith_const_4); 
        double memref_load_122 = func_arg_3[for_iter_75][arith_addi_121]; 
        int arith_addi_123 = (arith_addi_121 + arith_const_6); 
        double memref_load_124 = func_arg_3[for_iter_75][arith_addi_123]; 
        double arith_addf_125 = (memref_load_122 + memref_load_124); 
        int arith_addi_126 = (arith_addi_121 + arith_const_12); 
        double memref_load_127 = func_arg_3[for_iter_75][arith_addi_126]; 
        double arith_addf_128 = (arith_addf_125 + memref_load_127); 
        int arith_addi_129 = (for_iter_75 + arith_const_12); 
        double memref_load_130 = func_arg_3[arith_addi_129][arith_addi_121]; 
        double arith_addf_131 = (arith_addf_128 + memref_load_130); 
        int arith_addi_132 = (for_iter_75 + arith_const_6); 
        double memref_load_133 = func_arg_3[arith_addi_132][arith_addi_121]; 
        double arith_addf_134 = (arith_addf_131 + memref_load_133); 
        double arith_mulf_135 = (arith_addf_134 * arith_const_9); 
        func_arg_2[for_iter_75][arith_addi_121] = arith_mulf_135; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;


  kernel_jacobi_2d(tsteps, n, A, B);

}

#pragma pocc-region-end
