#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
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
    int arith_addi_17 = (for_iter_16 + arith_const_11); 
    for (int for_iter_18 = for_iter_16; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_15) {
      int arith_muli_19 = (for_iter_18 * arith_const_10); 
      int arith_addi_20 = (arith_muli_19 + arith_const_9); 
      int arith_maxsi_21 = max(arith_addi_20, arith_const_13); 
      int arith_muli_22 = (for_iter_18 * arith_const_10); 
      int arith_addi_23 = (arith_muli_22 + arith_const_7); 
      int arith_minsi_24 = min(arith_addi_23, arith_const_8); 
      for (int for_iter_25 = arith_maxsi_21; for_iter_25 < arith_minsi_24; for_iter_25 += arith_const_15) {
        int arith_muli_26 = (for_iter_16 * arith_const_6); 
        int arith_addi_27 = (for_iter_25 + arith_const_15); 
        int arith_muli_28 = (for_iter_25 * arith_const_5); 
        int arith_muli_29 = (for_iter_18 * arith_const_6); 
        int arith_addi_30 = (arith_muli_28 + arith_muli_29); 
        int arith_addi_31 = (arith_addi_30 + arith_const_9); 
        int arith_maxsi_32 = max(arith_muli_26, arith_addi_27); 
        int arith_maxsi_33 = max(arith_maxsi_32, arith_addi_31); 
        int arith_muli_34 = (for_iter_16 * arith_const_6); 
        int arith_addi_35 = (arith_muli_34 + arith_const_6); 
        int arith_addi_36 = (for_iter_25 + arith_const_4); 
        int arith_muli_37 = (for_iter_25 * arith_const_5); 
        int arith_muli_38 = (for_iter_18 * arith_const_6); 
        int arith_addi_39 = (arith_muli_37 + arith_muli_38); 
        int arith_addi_40 = (arith_addi_39 + arith_const_3); 
        int arith_minsi_41 = min(arith_addi_35, arith_addi_36); 
        int arith_minsi_42 = min(arith_minsi_41, arith_addi_40); 
        for (int for_iter_43 = arith_maxsi_33; for_iter_43 < arith_minsi_42; for_iter_43 += arith_const_15) {
          int arith_muli_44 = (for_iter_18 * arith_const_6); 
          int arith_addi_45 = (for_iter_25 + for_iter_43); 
          int arith_addi_46 = (arith_addi_45 + arith_const_15); 
          int arith_maxsi_47 = max(arith_muli_44, arith_addi_46); 
          int arith_muli_48 = (for_iter_18 * arith_const_6); 
          int arith_addi_49 = (arith_muli_48 + arith_const_6); 
          int arith_addi_50 = (for_iter_25 + for_iter_43); 
          int arith_addi_51 = (arith_addi_50 + arith_const_4); 
          int arith_minsi_52 = min(arith_addi_49, arith_addi_51); 
          for (int for_iter_53 = arith_maxsi_47; for_iter_53 < arith_minsi_52; for_iter_53 += arith_const_15) {
            int arith_muli_54 = (for_iter_43 * arith_const_5); 
            int arith_addi_55 = (arith_muli_54 + for_iter_25); 
            int arith_addi_56 = (arith_addi_55 + arith_const_5); 
            int arith_muli_57 = (for_iter_43 * arith_const_5); 
            int arith_muli_58 = (for_iter_25 * arith_const_5); 
            int arith_addi_59 = (arith_muli_57 + arith_muli_58); 
            int arith_addi_60 = (arith_addi_59 + for_iter_53); 
            int arith_addi_61 = (arith_addi_60 + arith_const_5); 
            double memref_load_62 = func_arg_2[arith_addi_56][arith_addi_61]; 
            int arith_muli_63 = (for_iter_43 * arith_const_5); 
            int arith_addi_64 = (arith_muli_63 + for_iter_25); 
            int arith_addi_65 = (arith_addi_64 + arith_const_5); 
            int arith_muli_66 = (for_iter_43 * arith_const_5); 
            int arith_muli_67 = (for_iter_25 * arith_const_5); 
            int arith_addi_68 = (arith_muli_66 + arith_muli_67); 
            int arith_addi_69 = (arith_addi_68 + for_iter_53); 
            double memref_load_70 = func_arg_2[arith_addi_65][arith_addi_69]; 
            double arith_addf_71 = (memref_load_62 + memref_load_70); 
            int arith_muli_72 = (for_iter_43 * arith_const_5); 
            int arith_addi_73 = (arith_muli_72 + for_iter_25); 
            int arith_addi_74 = (arith_addi_73 + arith_const_5); 
            int arith_muli_75 = (for_iter_43 * arith_const_5); 
            int arith_muli_76 = (for_iter_25 * arith_const_5); 
            int arith_addi_77 = (arith_muli_75 + arith_muli_76); 
            int arith_addi_78 = (arith_addi_77 + for_iter_53); 
            int arith_addi_79 = (arith_addi_78 + arith_const_15); 
            double memref_load_80 = func_arg_2[arith_addi_74][arith_addi_79]; 
            double arith_addf_81 = (arith_addf_71 + memref_load_80); 
            int arith_muli_82 = (for_iter_43 * arith_const_5); 
            int arith_addi_83 = (arith_muli_82 + for_iter_25); 
            int arith_muli_84 = (for_iter_43 * arith_const_5); 
            int arith_muli_85 = (for_iter_25 * arith_const_5); 
            int arith_addi_86 = (arith_muli_84 + arith_muli_85); 
            int arith_addi_87 = (arith_addi_86 + for_iter_53); 
            int arith_addi_88 = (arith_addi_87 + arith_const_5); 
            double memref_load_89 = func_arg_2[arith_addi_83][arith_addi_88]; 
            double arith_addf_90 = (arith_addf_81 + memref_load_89); 
            int arith_muli_91 = (for_iter_43 * arith_const_5); 
            int arith_addi_92 = (arith_muli_91 + for_iter_25); 
            int arith_muli_93 = (for_iter_43 * arith_const_5); 
            int arith_muli_94 = (for_iter_25 * arith_const_5); 
            int arith_addi_95 = (arith_muli_93 + arith_muli_94); 
            int arith_addi_96 = (arith_addi_95 + for_iter_53); 
            double memref_load_97 = func_arg_2[arith_addi_92][arith_addi_96]; 
            double arith_addf_98 = (arith_addf_90 + memref_load_97); 
            int arith_muli_99 = (for_iter_43 * arith_const_5); 
            int arith_addi_100 = (arith_muli_99 + for_iter_25); 
            int arith_muli_101 = (for_iter_43 * arith_const_5); 
            int arith_muli_102 = (for_iter_25 * arith_const_5); 
            int arith_addi_103 = (arith_muli_101 + arith_muli_102); 
            int arith_addi_104 = (arith_addi_103 + for_iter_53); 
            int arith_addi_105 = (arith_addi_104 + arith_const_15); 
            double memref_load_106 = func_arg_2[arith_addi_100][arith_addi_105]; 
            double arith_addf_107 = (arith_addf_98 + memref_load_106); 
            int arith_muli_108 = (for_iter_43 * arith_const_5); 
            int arith_addi_109 = (arith_muli_108 + for_iter_25); 
            int arith_addi_110 = (arith_addi_109 + arith_const_15); 
            int arith_muli_111 = (for_iter_43 * arith_const_5); 
            int arith_muli_112 = (for_iter_25 * arith_const_5); 
            int arith_addi_113 = (arith_muli_111 + arith_muli_112); 
            int arith_addi_114 = (arith_addi_113 + for_iter_53); 
            int arith_addi_115 = (arith_addi_114 + arith_const_5); 
            double memref_load_116 = func_arg_2[arith_addi_110][arith_addi_115]; 
            double arith_addf_117 = (arith_addf_107 + memref_load_116); 
            int arith_muli_118 = (for_iter_43 * arith_const_5); 
            int arith_addi_119 = (arith_muli_118 + for_iter_25); 
            int arith_addi_120 = (arith_addi_119 + arith_const_15); 
            int arith_muli_121 = (for_iter_43 * arith_const_5); 
            int arith_muli_122 = (for_iter_25 * arith_const_5); 
            int arith_addi_123 = (arith_muli_121 + arith_muli_122); 
            int arith_addi_124 = (arith_addi_123 + for_iter_53); 
            double memref_load_125 = func_arg_2[arith_addi_120][arith_addi_124]; 
            double arith_addf_126 = (arith_addf_117 + memref_load_125); 
            int arith_muli_127 = (for_iter_43 * arith_const_5); 
            int arith_addi_128 = (arith_muli_127 + for_iter_25); 
            int arith_addi_129 = (arith_addi_128 + arith_const_15); 
            int arith_muli_130 = (for_iter_43 * arith_const_5); 
            int arith_muli_131 = (for_iter_25 * arith_const_5); 
            int arith_addi_132 = (arith_muli_130 + arith_muli_131); 
            int arith_addi_133 = (arith_addi_132 + for_iter_53); 
            int arith_addi_134 = (arith_addi_133 + arith_const_15); 
            double memref_load_135 = func_arg_2[arith_addi_129][arith_addi_134]; 
            double arith_addf_136 = (arith_addf_126 + memref_load_135); 
            double arith_divf_137 = (arith_addf_136 / arith_const_12); 
            int arith_muli_138 = (for_iter_43 * arith_const_5); 
            int arith_addi_139 = (arith_muli_138 + for_iter_25); 
            int arith_muli_140 = (for_iter_43 * arith_const_5); 
            int arith_muli_141 = (for_iter_25 * arith_const_5); 
            int arith_addi_142 = (arith_muli_140 + arith_muli_141); 
            int arith_addi_143 = (arith_addi_142 + for_iter_53); 
            func_arg_2[arith_addi_139][arith_addi_143] = arith_divf_137; 
          }
        }
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


  kernel_seidel_2d(tsteps, n, A);

}

#pragma pocc-region-end
