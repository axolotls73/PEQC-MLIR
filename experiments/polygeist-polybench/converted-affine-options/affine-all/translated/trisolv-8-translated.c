#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 39; 
  int arith_const_5 = 29; 
  int arith_const_6 = 7; 
  int arith_const_7 = -2; 
  int arith_const_8 = 33; 
  int arith_const_9 = 40; 
  int arith_const_10 = 31; 
  int arith_const_11 = -1; 
  int arith_const_12 = 3; 
  int arith_const_13 = 4; 
  int arith_const_14 = 32; 
  int arith_const_15 = 8; 
  int arith_const_16 = 10; 
  int arith_const_17 = -8; 
  int arith_const_18 = 0; 
  int arith_const_19 = 2; 
  int arith_const_20 = 1; 
  for (int for_iter_21 = arith_const_18; for_iter_21 < arith_const_19; for_iter_21 += arith_const_20) {
    int arith_muli_22 = (for_iter_21 * arith_const_17); 
    int arith_addi_23 = (arith_muli_22 + arith_const_16); 
    int arith_minsi_24 = min(arith_addi_23, arith_const_15); 
    for (int for_iter_25 = arith_const_18; for_iter_25 < arith_minsi_24; for_iter_25 += arith_const_20) {
      int arith_muli_26 = (for_iter_21 * arith_const_14); 
      int arith_muli_27 = (for_iter_25 * arith_const_13); 
      int arith_addi_28 = (arith_muli_26 + arith_muli_27); 
      double memref_load_29 = func_arg_3[arith_addi_28]; 
      func_arg_2[arith_addi_28] = memref_load_29; 
      int arith_addi_30 = (arith_addi_28 + arith_const_20); 
      double memref_load_31 = func_arg_3[arith_addi_30]; 
      func_arg_2[arith_addi_30] = memref_load_31; 
      int arith_addi_32 = (arith_addi_28 + arith_const_19); 
      double memref_load_33 = func_arg_3[arith_addi_32]; 
      func_arg_2[arith_addi_32] = memref_load_33; 
      int arith_addi_34 = (arith_addi_28 + arith_const_12); 
      double memref_load_35 = func_arg_3[arith_addi_34]; 
      func_arg_2[arith_addi_34] = memref_load_35; 
    }
  }
  for (int for_iter_36 = arith_const_18; for_iter_36 < arith_const_19; for_iter_36 += arith_const_20) {
    int arith_addi_37 = (for_iter_36 + arith_const_20); 
    for (int for_iter_38 = arith_const_18; for_iter_38 < arith_addi_37; for_iter_38 += arith_const_20) {
      int arith_addi_39 = (for_iter_36 + arith_const_11); 
      int arith_cmpi_40 = ((arith_addi_39 == arith_const_18) ? 1 : 0); 
      int arith_addi_41 = (for_iter_38 + arith_const_11); 
      int arith_cmpi_42 = ((arith_addi_41 == arith_const_18) ? 1 : 0); 
      int arith_andi_43 = (arith_cmpi_40 & arith_cmpi_42); 
      if (arith_andi_43) {
        double memref_load_44 = func_arg_2[arith_const_14]; 
        double memref_load_45 = func_arg_1[arith_const_14][arith_const_10]; 
        double memref_load_46 = func_arg_2[arith_const_10]; 
        double arith_mulf_47 = (memref_load_45 * memref_load_46); 
        double arith_subf_48 = (memref_load_44 - arith_mulf_47); 
        func_arg_2[arith_const_14] = arith_subf_48; 
      }
      int arith_muli_49 = (for_iter_36 * arith_const_14); 
      int arith_muli_50 = (for_iter_38 * arith_const_14); 
      int arith_addi_51 = (arith_muli_50 + arith_const_20); 
      int arith_maxsi_52 = max(arith_muli_49, arith_addi_51); 
      int arith_muli_53 = (for_iter_36 * arith_const_14); 
      int arith_addi_54 = (arith_muli_53 + arith_const_14); 
      int arith_muli_55 = (for_iter_38 * arith_const_14); 
      int arith_addi_56 = (arith_muli_55 + arith_const_8); 
      int arith_minsi_57 = min(arith_addi_54, arith_const_9); 
      int arith_minsi_58 = min(arith_minsi_57, arith_addi_56); 
      for (int for_iter_59 = arith_maxsi_52; for_iter_59 < arith_minsi_58; for_iter_59 += arith_const_20) {
        int arith_muli_60 = (for_iter_38 * arith_const_14); 
        int arith_maxsi_61 = max(arith_muli_60, arith_const_20); 
        int arith_addi_62 = (for_iter_59 + arith_const_11); 
        for (int for_iter_63 = arith_maxsi_61; for_iter_63 < arith_addi_62; for_iter_63 += arith_const_20) {
          double memref_load_64 = func_arg_2[for_iter_59]; 
          int arith_addi_65 = (for_iter_63 + arith_const_11); 
          double memref_load_66 = func_arg_1[for_iter_59][arith_addi_65]; 
          int arith_addi_67 = (for_iter_63 + arith_const_11); 
          double memref_load_68 = func_arg_2[arith_addi_67]; 
          double arith_mulf_69 = (memref_load_66 * memref_load_68); 
          double arith_subf_70 = (memref_load_64 - arith_mulf_69); 
          func_arg_2[for_iter_59] = arith_subf_70; 
        }
        int arith_cmpi_71 = ((for_iter_36 == arith_const_18) ? 1 : 0); 
        int arith_cmpi_72 = ((for_iter_38 == arith_const_18) ? 1 : 0); 
        int arith_andi_73 = (arith_cmpi_71 & arith_cmpi_72); 
        int arith_addi_74 = (for_iter_59 + arith_const_11); 
        int arith_cmpi_75 = ((arith_addi_74 == arith_const_18) ? 1 : 0); 
        int arith_andi_76 = (arith_andi_73 & arith_cmpi_75); 
        if (arith_andi_76) {
          double memref_load_77 = func_arg_2[arith_const_18]; 
          double memref_load_78 = func_arg_1[arith_const_18][arith_const_18]; 
          double arith_divf_79 = (memref_load_77 / memref_load_78); 
          func_arg_2[arith_const_18] = arith_divf_79; 
        }
        int arith_addi_80 = (for_iter_59 + arith_const_7); 
        int arith_cmpi_81 = ((arith_addi_80 >= arith_const_18) ? 1 : 0); 
        if (arith_cmpi_81) {
          int arith_addi_82 = (for_iter_59 + arith_const_11); 
          double memref_load_83 = func_arg_2[arith_addi_82]; 
          int arith_addi_84 = (for_iter_59 + arith_const_11); 
          int arith_addi_85 = (for_iter_59 + arith_const_11); 
          double memref_load_86 = func_arg_1[arith_addi_84][arith_addi_85]; 
          double arith_divf_87 = (memref_load_83 / memref_load_86); 
          int arith_addi_88 = (for_iter_59 + arith_const_11); 
          func_arg_2[arith_addi_88] = arith_divf_87; 
          double memref_load_89 = func_arg_2[for_iter_59]; 
          int arith_addi_90 = (for_iter_59 + arith_const_7); 
          double memref_load_91 = func_arg_1[for_iter_59][arith_addi_90]; 
          int arith_addi_92 = (for_iter_59 + arith_const_7); 
          double memref_load_93 = func_arg_2[arith_addi_92]; 
          double arith_mulf_94 = (memref_load_91 * memref_load_93); 
          double arith_subf_95 = (memref_load_89 - arith_mulf_94); 
          func_arg_2[for_iter_59] = arith_subf_95; 
        }
        int arith_muli_96 = (for_iter_38 * arith_const_11); 
        int arith_addi_97 = (for_iter_36 + arith_muli_96); 
        int arith_cmpi_98 = ((arith_addi_97 == arith_const_18) ? 1 : 0); 
        if (arith_cmpi_98) {
          double memref_load_99 = func_arg_2[for_iter_59]; 
          int arith_addi_100 = (for_iter_59 + arith_const_11); 
          double memref_load_101 = func_arg_1[for_iter_59][arith_addi_100]; 
          int arith_addi_102 = (for_iter_59 + arith_const_11); 
          double memref_load_103 = func_arg_2[arith_addi_102]; 
          double arith_mulf_104 = (memref_load_101 * memref_load_103); 
          double arith_subf_105 = (memref_load_99 - arith_mulf_104); 
          func_arg_2[for_iter_59] = arith_subf_105; 
        }
      }
      int arith_addi_106 = (for_iter_36 + arith_const_11); 
      int arith_cmpi_107 = ((arith_addi_106 == arith_const_18) ? 1 : 0); 
      int arith_cmpi_108 = ((for_iter_38 == arith_const_18) ? 1 : 0); 
      int arith_andi_109 = (arith_cmpi_107 & arith_cmpi_108); 
      if (arith_andi_109) {
        int* async_group_110; 
        int async_group_index_111 = 0; 
        int for_iter_arg_113 = arith_const_18; 
        for (int for_iter_112 = arith_const_18; for_iter_112 < arith_const_6; for_iter_112 += arith_const_20) {
          PAST_NEW_SEMAPHORE(execute_token_114); 
          #pragma peqc async_execute
          {
            int arith_addi_115 = (for_iter_112 + arith_const_8); 
            for (int for_iter_116 = arith_const_18; for_iter_116 < arith_const_6; for_iter_116 += arith_const_20) {
              int arith_muli_117 = (for_iter_116 * arith_const_13); 
              int arith_addi_118 = (arith_muli_117 + arith_const_20); 
              double memref_load_119 = func_arg_2[arith_addi_115]; 
              int arith_addi_120 = (arith_addi_118 + arith_const_11); 
              double memref_load_121 = func_arg_1[arith_addi_115][arith_addi_120]; 
              int arith_addi_122 = (arith_addi_118 + arith_const_11); 
              double memref_load_123 = func_arg_2[arith_addi_122]; 
              double arith_mulf_124 = (memref_load_121 * memref_load_123); 
              double arith_subf_125 = (memref_load_119 - arith_mulf_124); 
              func_arg_2[arith_addi_115] = arith_subf_125; 
              int arith_addi_126 = (arith_addi_118 + arith_const_20); 
              double memref_load_127 = func_arg_2[arith_addi_115]; 
              int arith_addi_128 = (arith_addi_126 + arith_const_11); 
              double memref_load_129 = func_arg_1[arith_addi_115][arith_addi_128]; 
              int arith_addi_130 = (arith_addi_126 + arith_const_11); 
              double memref_load_131 = func_arg_2[arith_addi_130]; 
              double arith_mulf_132 = (memref_load_129 * memref_load_131); 
              double arith_subf_133 = (memref_load_127 - arith_mulf_132); 
              func_arg_2[arith_addi_115] = arith_subf_133; 
              int arith_addi_134 = (arith_addi_118 + arith_const_19); 
              double memref_load_135 = func_arg_2[arith_addi_115]; 
              int arith_addi_136 = (arith_addi_134 + arith_const_11); 
              double memref_load_137 = func_arg_1[arith_addi_115][arith_addi_136]; 
              int arith_addi_138 = (arith_addi_134 + arith_const_11); 
              double memref_load_139 = func_arg_2[arith_addi_138]; 
              double arith_mulf_140 = (memref_load_137 * memref_load_139); 
              double arith_subf_141 = (memref_load_135 - arith_mulf_140); 
              func_arg_2[arith_addi_115] = arith_subf_141; 
              int arith_addi_142 = (arith_addi_118 + arith_const_12); 
              double memref_load_143 = func_arg_2[arith_addi_115]; 
              int arith_addi_144 = (arith_addi_142 + arith_const_11); 
              double memref_load_145 = func_arg_1[arith_addi_115][arith_addi_144]; 
              int arith_addi_146 = (arith_addi_142 + arith_const_11); 
              double memref_load_147 = func_arg_2[arith_addi_146]; 
              double arith_mulf_148 = (memref_load_145 * memref_load_147); 
              double arith_subf_149 = (memref_load_143 - arith_mulf_148); 
              func_arg_2[arith_addi_115] = arith_subf_149; 
            }
            for (int for_iter_150 = arith_const_18; for_iter_150 < arith_const_12; for_iter_150 += arith_const_20) {
              int arith_addi_151 = (for_iter_150 + arith_const_5); 
              double memref_load_152 = func_arg_2[arith_addi_115]; 
              int arith_addi_153 = (arith_addi_151 + arith_const_11); 
              double memref_load_154 = func_arg_1[arith_addi_115][arith_addi_153]; 
              int arith_addi_155 = (arith_addi_151 + arith_const_11); 
              double memref_load_156 = func_arg_2[arith_addi_155]; 
              double arith_mulf_157 = (memref_load_154 * memref_load_156); 
              double arith_subf_158 = (memref_load_152 - arith_mulf_157); 
              func_arg_2[arith_addi_115] = arith_subf_158; 
            }
            PAST_SET_SEMAPHORE(execute_token_114, PAST_TASK_FINISHED); 
          }
          async_group_110[async_group_index_111] = execute_token_114; 
          async_group_index_111++; 
          int arith_addi_159 = (for_iter_arg_113 + arith_const_20); 
          for_iter_arg_113 = arith_addi_159; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_110, async_group_index_111, PAST_TASK_FINISHED); 
      }
      int arith_addi_160 = (for_iter_36 + arith_const_11); 
      int arith_cmpi_161 = ((arith_addi_160 == arith_const_18) ? 1 : 0); 
      int arith_addi_162 = (for_iter_38 + arith_const_11); 
      int arith_cmpi_163 = ((arith_addi_162 == arith_const_18) ? 1 : 0); 
      int arith_andi_164 = (arith_cmpi_161 & arith_cmpi_163); 
      if (arith_andi_164) {
        double memref_load_165 = func_arg_2[arith_const_4]; 
        double memref_load_166 = func_arg_1[arith_const_4][arith_const_4]; 
        double arith_divf_167 = (memref_load_165 / memref_load_166); 
        func_arg_2[arith_const_4] = arith_divf_167; 
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
