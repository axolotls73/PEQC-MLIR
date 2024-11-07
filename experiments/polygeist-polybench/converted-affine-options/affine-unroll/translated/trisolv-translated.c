#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 39; 
  int arith_const_5 = 29; 
  int arith_const_6 = -2; 
  int arith_const_7 = 33; 
  int arith_const_8 = 31; 
  int arith_const_9 = -1; 
  int arith_const_10 = 3; 
  int arith_const_11 = 4; 
  int arith_const_12 = 40; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 2; 
  int arith_const_16 = 1; 
  for (int for_iter_17 = arith_const_14; for_iter_17 < arith_const_15; for_iter_17 += arith_const_16) {
    int arith_muli_18 = (for_iter_17 * arith_const_13); 
    int arith_muli_19 = (for_iter_17 * arith_const_13); 
    int arith_addi_20 = (arith_muli_19 + arith_const_13); 
    int arith_minsi_21 = min(arith_addi_20, arith_const_12); 
    for (int for_iter_22 = arith_muli_18; for_iter_22 < arith_minsi_21; for_iter_22 += arith_const_11) {
      double memref_load_23 = func_arg_3[for_iter_22]; 
      func_arg_2[for_iter_22] = memref_load_23; 
      int arith_addi_24 = (for_iter_22 + arith_const_16); 
      double memref_load_25 = func_arg_3[arith_addi_24]; 
      func_arg_2[arith_addi_24] = memref_load_25; 
      int arith_addi_26 = (for_iter_22 + arith_const_15); 
      double memref_load_27 = func_arg_3[arith_addi_26]; 
      func_arg_2[arith_addi_26] = memref_load_27; 
      int arith_addi_28 = (for_iter_22 + arith_const_10); 
      double memref_load_29 = func_arg_3[arith_addi_28]; 
      func_arg_2[arith_addi_28] = memref_load_29; 
    }
  }
  for (int for_iter_30 = arith_const_14; for_iter_30 < arith_const_15; for_iter_30 += arith_const_16) {
    int arith_addi_31 = (for_iter_30 + arith_const_16); 
    for (int for_iter_32 = arith_const_14; for_iter_32 < arith_addi_31; for_iter_32 += arith_const_16) {
      int arith_addi_33 = (for_iter_30 + arith_const_9); 
      int arith_cmpi_34 = ((arith_addi_33 == arith_const_14) ? 1 : 0); 
      int arith_addi_35 = (for_iter_32 + arith_const_9); 
      int arith_cmpi_36 = ((arith_addi_35 == arith_const_14) ? 1 : 0); 
      int arith_andi_37 = (arith_cmpi_34 & arith_cmpi_36); 
      if (arith_andi_37) {
        double memref_load_38 = func_arg_2[arith_const_13]; 
        double memref_load_39 = func_arg_1[arith_const_13][arith_const_8]; 
        double memref_load_40 = func_arg_2[arith_const_8]; 
        double arith_mulf_41 = (memref_load_39 * memref_load_40); 
        double arith_subf_42 = (memref_load_38 - arith_mulf_41); 
        func_arg_2[arith_const_13] = arith_subf_42; 
      }
      int arith_muli_43 = (for_iter_30 * arith_const_13); 
      int arith_muli_44 = (for_iter_32 * arith_const_13); 
      int arith_addi_45 = (arith_muli_44 + arith_const_16); 
      int arith_maxsi_46 = max(arith_muli_43, arith_addi_45); 
      int arith_muli_47 = (for_iter_30 * arith_const_13); 
      int arith_addi_48 = (arith_muli_47 + arith_const_13); 
      int arith_muli_49 = (for_iter_32 * arith_const_13); 
      int arith_addi_50 = (arith_muli_49 + arith_const_7); 
      int arith_minsi_51 = min(arith_addi_48, arith_const_12); 
      int arith_minsi_52 = min(arith_minsi_51, arith_addi_50); 
      for (int for_iter_53 = arith_maxsi_46; for_iter_53 < arith_minsi_52; for_iter_53 += arith_const_16) {
        int arith_muli_54 = (for_iter_32 * arith_const_13); 
        int arith_maxsi_55 = max(arith_muli_54, arith_const_16); 
        int arith_addi_56 = (for_iter_53 + arith_const_9); 
        for (int for_iter_57 = arith_maxsi_55; for_iter_57 < arith_addi_56; for_iter_57 += arith_const_16) {
          double memref_load_58 = func_arg_2[for_iter_53]; 
          int arith_addi_59 = (for_iter_57 + arith_const_9); 
          double memref_load_60 = func_arg_1[for_iter_53][arith_addi_59]; 
          int arith_addi_61 = (for_iter_57 + arith_const_9); 
          double memref_load_62 = func_arg_2[arith_addi_61]; 
          double arith_mulf_63 = (memref_load_60 * memref_load_62); 
          double arith_subf_64 = (memref_load_58 - arith_mulf_63); 
          func_arg_2[for_iter_53] = arith_subf_64; 
        }
        int arith_cmpi_65 = ((for_iter_30 == arith_const_14) ? 1 : 0); 
        int arith_cmpi_66 = ((for_iter_32 == arith_const_14) ? 1 : 0); 
        int arith_andi_67 = (arith_cmpi_65 & arith_cmpi_66); 
        int arith_addi_68 = (for_iter_53 + arith_const_9); 
        int arith_cmpi_69 = ((arith_addi_68 == arith_const_14) ? 1 : 0); 
        int arith_andi_70 = (arith_andi_67 & arith_cmpi_69); 
        if (arith_andi_70) {
          double memref_load_71 = func_arg_2[arith_const_14]; 
          double memref_load_72 = func_arg_1[arith_const_14][arith_const_14]; 
          double arith_divf_73 = (memref_load_71 / memref_load_72); 
          func_arg_2[arith_const_14] = arith_divf_73; 
        }
        int arith_addi_74 = (for_iter_53 + arith_const_6); 
        int arith_cmpi_75 = ((arith_addi_74 >= arith_const_14) ? 1 : 0); 
        if (arith_cmpi_75) {
          int arith_addi_76 = (for_iter_53 + arith_const_9); 
          double memref_load_77 = func_arg_2[arith_addi_76]; 
          int arith_addi_78 = (for_iter_53 + arith_const_9); 
          int arith_addi_79 = (for_iter_53 + arith_const_9); 
          double memref_load_80 = func_arg_1[arith_addi_78][arith_addi_79]; 
          double arith_divf_81 = (memref_load_77 / memref_load_80); 
          int arith_addi_82 = (for_iter_53 + arith_const_9); 
          func_arg_2[arith_addi_82] = arith_divf_81; 
          double memref_load_83 = func_arg_2[for_iter_53]; 
          int arith_addi_84 = (for_iter_53 + arith_const_6); 
          double memref_load_85 = func_arg_1[for_iter_53][arith_addi_84]; 
          int arith_addi_86 = (for_iter_53 + arith_const_6); 
          double memref_load_87 = func_arg_2[arith_addi_86]; 
          double arith_mulf_88 = (memref_load_85 * memref_load_87); 
          double arith_subf_89 = (memref_load_83 - arith_mulf_88); 
          func_arg_2[for_iter_53] = arith_subf_89; 
        }
        int arith_muli_90 = (for_iter_32 * arith_const_9); 
        int arith_addi_91 = (for_iter_30 + arith_muli_90); 
        int arith_cmpi_92 = ((arith_addi_91 == arith_const_14) ? 1 : 0); 
        if (arith_cmpi_92) {
          double memref_load_93 = func_arg_2[for_iter_53]; 
          int arith_addi_94 = (for_iter_53 + arith_const_9); 
          double memref_load_95 = func_arg_1[for_iter_53][arith_addi_94]; 
          int arith_addi_96 = (for_iter_53 + arith_const_9); 
          double memref_load_97 = func_arg_2[arith_addi_96]; 
          double arith_mulf_98 = (memref_load_95 * memref_load_97); 
          double arith_subf_99 = (memref_load_93 - arith_mulf_98); 
          func_arg_2[for_iter_53] = arith_subf_99; 
        }
      }
      int arith_addi_100 = (for_iter_30 + arith_const_9); 
      int arith_cmpi_101 = ((arith_addi_100 == arith_const_14) ? 1 : 0); 
      int arith_cmpi_102 = ((for_iter_32 == arith_const_14) ? 1 : 0); 
      int arith_andi_103 = (arith_cmpi_101 & arith_cmpi_102); 
      if (arith_andi_103) {
        for (int for_iter_104 = arith_const_7; for_iter_104 < arith_const_12; for_iter_104 += arith_const_16) {
          for (int for_iter_105 = arith_const_16; for_iter_105 < arith_const_5; for_iter_105 += arith_const_11) {
            double memref_load_106 = func_arg_2[for_iter_104]; 
            int arith_addi_107 = (for_iter_105 + arith_const_9); 
            double memref_load_108 = func_arg_1[for_iter_104][arith_addi_107]; 
            int arith_addi_109 = (for_iter_105 + arith_const_9); 
            double memref_load_110 = func_arg_2[arith_addi_109]; 
            double arith_mulf_111 = (memref_load_108 * memref_load_110); 
            double arith_subf_112 = (memref_load_106 - arith_mulf_111); 
            func_arg_2[for_iter_104] = arith_subf_112; 
            int arith_addi_113 = (for_iter_105 + arith_const_16); 
            double memref_load_114 = func_arg_2[for_iter_104]; 
            int arith_addi_115 = (arith_addi_113 + arith_const_9); 
            double memref_load_116 = func_arg_1[for_iter_104][arith_addi_115]; 
            int arith_addi_117 = (arith_addi_113 + arith_const_9); 
            double memref_load_118 = func_arg_2[arith_addi_117]; 
            double arith_mulf_119 = (memref_load_116 * memref_load_118); 
            double arith_subf_120 = (memref_load_114 - arith_mulf_119); 
            func_arg_2[for_iter_104] = arith_subf_120; 
            int arith_addi_121 = (for_iter_105 + arith_const_15); 
            double memref_load_122 = func_arg_2[for_iter_104]; 
            int arith_addi_123 = (arith_addi_121 + arith_const_9); 
            double memref_load_124 = func_arg_1[for_iter_104][arith_addi_123]; 
            int arith_addi_125 = (arith_addi_121 + arith_const_9); 
            double memref_load_126 = func_arg_2[arith_addi_125]; 
            double arith_mulf_127 = (memref_load_124 * memref_load_126); 
            double arith_subf_128 = (memref_load_122 - arith_mulf_127); 
            func_arg_2[for_iter_104] = arith_subf_128; 
            int arith_addi_129 = (for_iter_105 + arith_const_10); 
            double memref_load_130 = func_arg_2[for_iter_104]; 
            int arith_addi_131 = (arith_addi_129 + arith_const_9); 
            double memref_load_132 = func_arg_1[for_iter_104][arith_addi_131]; 
            int arith_addi_133 = (arith_addi_129 + arith_const_9); 
            double memref_load_134 = func_arg_2[arith_addi_133]; 
            double arith_mulf_135 = (memref_load_132 * memref_load_134); 
            double arith_subf_136 = (memref_load_130 - arith_mulf_135); 
            func_arg_2[for_iter_104] = arith_subf_136; 
          }
          for (int for_iter_137 = arith_const_5; for_iter_137 < arith_const_13; for_iter_137 += arith_const_16) {
            double memref_load_138 = func_arg_2[for_iter_104]; 
            int arith_addi_139 = (for_iter_137 + arith_const_9); 
            double memref_load_140 = func_arg_1[for_iter_104][arith_addi_139]; 
            int arith_addi_141 = (for_iter_137 + arith_const_9); 
            double memref_load_142 = func_arg_2[arith_addi_141]; 
            double arith_mulf_143 = (memref_load_140 * memref_load_142); 
            double arith_subf_144 = (memref_load_138 - arith_mulf_143); 
            func_arg_2[for_iter_104] = arith_subf_144; 
          }
        }
      }
      int arith_addi_145 = (for_iter_30 + arith_const_9); 
      int arith_cmpi_146 = ((arith_addi_145 == arith_const_14) ? 1 : 0); 
      int arith_addi_147 = (for_iter_32 + arith_const_9); 
      int arith_cmpi_148 = ((arith_addi_147 == arith_const_14) ? 1 : 0); 
      int arith_andi_149 = (arith_cmpi_146 & arith_cmpi_148); 
      if (arith_andi_149) {
        double memref_load_150 = func_arg_2[arith_const_4]; 
        double memref_load_151 = func_arg_1[arith_const_4][arith_const_4]; 
        double arith_divf_152 = (memref_load_150 / memref_load_151); 
        func_arg_2[arith_const_4] = arith_divf_152; 
      }
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* L;
  double* x;
  double* b;

#pragma peqc async_execute
{
  kernel_trisolv(n, L, x, b);
}
}

#pragma pocc-region-end
