#pragma pocc-region-start
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 20; 
  int arith_const_8 = -4; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = -1; 
  int arith_const_12 = 4; 
  int arith_const_13 = 30; 
  int arith_const_14 = 32; 
  int arith_const_15 = 0; 
  int arith_const_16 = 1; 
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_15; 
  for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      int arith_muli_22 = (for_iter_19 * arith_const_14); 
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_13; for_iter_23 += arith_const_16) {
        int arith_addi_24 = (arith_muli_22 + for_iter_23); 
        int arith_muli_25 = (for_iter_19 * arith_const_14); 
        int arith_addi_26 = (for_iter_23 + arith_muli_25); 
        int arith_addi_27 = (arith_addi_26 + arith_const_16); 
        int arith_cmpi_28 = (arith_addi_27 < arith_const_15); 
        int arith_subi_29 = (arith_const_11 - arith_addi_27); 
        int arith_select_30 = (arith_cmpi_28 ? arith_subi_29 : arith_addi_27); 
        int arith_divi_31 = (arith_select_30 / arith_const_12); 
        int arith_subi_32 = (arith_const_11 - arith_divi_31); 
        int arith_select_33 = (arith_cmpi_28 ? arith_subi_32 : arith_divi_31); 
        for (int for_iter_34 = arith_const_15; for_iter_34 < arith_select_33; for_iter_34 += arith_const_16) {
          int arith_muli_35 = (for_iter_34 * arith_const_12); 
          double memref_load_36 = func_arg_4[arith_addi_24][arith_muli_35]; 
          double arith_mulf_37 = (memref_load_36 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_muli_35] = arith_mulf_37; 
          int arith_addi_38 = (arith_muli_35 + arith_const_16); 
          double memref_load_39 = func_arg_4[arith_addi_24][arith_addi_38]; 
          double arith_mulf_40 = (memref_load_39 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_38] = arith_mulf_40; 
          int arith_addi_41 = (arith_muli_35 + arith_const_10); 
          double memref_load_42 = func_arg_4[arith_addi_24][arith_addi_41]; 
          double arith_mulf_43 = (memref_load_42 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_41] = arith_mulf_43; 
          int arith_addi_44 = (arith_muli_35 + arith_const_9); 
          double memref_load_45 = func_arg_4[arith_addi_24][arith_addi_44]; 
          double arith_mulf_46 = (memref_load_45 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_44] = arith_mulf_46; 
        }
        int arith_muli_47 = (for_iter_19 * arith_const_14); 
        int arith_addi_48 = (for_iter_23 + arith_muli_47); 
        int arith_muli_49 = (for_iter_19 * arith_const_14); 
        int arith_addi_50 = (for_iter_23 + arith_muli_49); 
        int arith_addi_51 = (arith_addi_50 + arith_const_16); 
        int arith_cmpi_52 = (arith_addi_51 < arith_const_15); 
        int arith_subi_53 = (arith_const_11 - arith_addi_51); 
        int arith_select_54 = (arith_cmpi_52 ? arith_subi_53 : arith_addi_51); 
        int arith_divi_55 = (arith_select_54 / arith_const_12); 
        int arith_subi_56 = (arith_const_11 - arith_divi_55); 
        int arith_select_57 = (arith_cmpi_52 ? arith_subi_56 : arith_divi_55); 
        int arith_muli_58 = (arith_select_57 * arith_const_8); 
        int arith_addi_59 = (arith_addi_48 + arith_muli_58); 
        int arith_addi_60 = (arith_addi_59 + arith_const_16); 
        for (int for_iter_61 = arith_const_15; for_iter_61 < arith_addi_60; for_iter_61 += arith_const_16) {
          int arith_addi_62 = (arith_addi_24 + arith_const_16); 
          int arith_cmpi_63 = (arith_addi_62 < arith_const_15); 
          int arith_subi_64 = (arith_const_11 - arith_addi_62); 
          int arith_select_65 = (arith_cmpi_63 ? arith_subi_64 : arith_addi_62); 
          int arith_divi_66 = (arith_select_65 / arith_const_12); 
          int arith_subi_67 = (arith_const_11 - arith_divi_66); 
          int arith_select_68 = (arith_cmpi_63 ? arith_subi_67 : arith_divi_66); 
          int arith_muli_69 = (arith_select_68 * arith_const_12); 
          int arith_addi_70 = (for_iter_61 + arith_muli_69); 
          double memref_load_71 = func_arg_4[arith_addi_24][arith_addi_70]; 
          double arith_mulf_72 = (memref_load_71 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_70] = arith_mulf_72; 
        }
        for (int for_iter_73 = arith_const_15; for_iter_73 < arith_const_7; for_iter_73 += arith_const_16) {
          double memref_load_74 = func_arg_6[arith_addi_24][for_iter_73]; 
          double memref_load_75 = func_arg_5[arith_addi_24][for_iter_73]; 
          double memref_load_76 = func_arg_6[arith_addi_24][for_iter_73]; 
          double memref_load_77 = func_arg_5[arith_addi_24][for_iter_73]; 
          double memref_load_78 = func_arg_6[arith_addi_24][for_iter_73]; 
          double memref_load_79 = func_arg_5[arith_addi_24][for_iter_73]; 
          double memref_load_80 = func_arg_6[arith_addi_24][for_iter_73]; 
          double memref_load_81 = func_arg_5[arith_addi_24][for_iter_73]; 
          int arith_muli_82 = (for_iter_19 * arith_const_14); 
          int arith_addi_83 = (for_iter_23 + arith_muli_82); 
          int arith_addi_84 = (arith_addi_83 + arith_const_16); 
          int arith_cmpi_85 = (arith_addi_84 < arith_const_15); 
          int arith_subi_86 = (arith_const_11 - arith_addi_84); 
          int arith_select_87 = (arith_cmpi_85 ? arith_subi_86 : arith_addi_84); 
          int arith_divi_88 = (arith_select_87 / arith_const_12); 
          int arith_subi_89 = (arith_const_11 - arith_divi_88); 
          int arith_select_90 = (arith_cmpi_85 ? arith_subi_89 : arith_divi_88); 
          for (int for_iter_91 = arith_const_15; for_iter_91 < arith_select_90; for_iter_91 += arith_const_16) {
            int arith_muli_92 = (for_iter_91 * arith_const_12); 
            double memref_load_93 = func_arg_5[arith_muli_92][for_iter_73]; 
            double arith_mulf_94 = (memref_load_93 * func_arg_2); 
            double arith_mulf_95 = (arith_mulf_94 * memref_load_74); 
            double memref_load_96 = func_arg_6[arith_muli_92][for_iter_73]; 
            double arith_mulf_97 = (memref_load_96 * func_arg_2); 
            double arith_mulf_98 = (arith_mulf_97 * memref_load_75); 
            double arith_addf_99 = (arith_mulf_95 + arith_mulf_98); 
            double memref_load_100 = func_arg_4[arith_addi_24][arith_muli_92]; 
            double arith_addf_101 = (memref_load_100 + arith_addf_99); 
            func_arg_4[arith_addi_24][arith_muli_92] = arith_addf_101; 
            int arith_addi_102 = (arith_muli_92 + arith_const_16); 
            double memref_load_103 = func_arg_5[arith_addi_102][for_iter_73]; 
            double arith_mulf_104 = (memref_load_103 * func_arg_2); 
            double arith_mulf_105 = (arith_mulf_104 * memref_load_76); 
            double memref_load_106 = func_arg_6[arith_addi_102][for_iter_73]; 
            double arith_mulf_107 = (memref_load_106 * func_arg_2); 
            double arith_mulf_108 = (arith_mulf_107 * memref_load_77); 
            double arith_addf_109 = (arith_mulf_105 + arith_mulf_108); 
            double memref_load_110 = func_arg_4[arith_addi_24][arith_addi_102]; 
            double arith_addf_111 = (memref_load_110 + arith_addf_109); 
            func_arg_4[arith_addi_24][arith_addi_102] = arith_addf_111; 
            int arith_addi_112 = (arith_muli_92 + arith_const_10); 
            double memref_load_113 = func_arg_5[arith_addi_112][for_iter_73]; 
            double arith_mulf_114 = (memref_load_113 * func_arg_2); 
            double arith_mulf_115 = (arith_mulf_114 * memref_load_78); 
            double memref_load_116 = func_arg_6[arith_addi_112][for_iter_73]; 
            double arith_mulf_117 = (memref_load_116 * func_arg_2); 
            double arith_mulf_118 = (arith_mulf_117 * memref_load_79); 
            double arith_addf_119 = (arith_mulf_115 + arith_mulf_118); 
            double memref_load_120 = func_arg_4[arith_addi_24][arith_addi_112]; 
            double arith_addf_121 = (memref_load_120 + arith_addf_119); 
            func_arg_4[arith_addi_24][arith_addi_112] = arith_addf_121; 
            int arith_addi_122 = (arith_muli_92 + arith_const_9); 
            double memref_load_123 = func_arg_5[arith_addi_122][for_iter_73]; 
            double arith_mulf_124 = (memref_load_123 * func_arg_2); 
            double arith_mulf_125 = (arith_mulf_124 * memref_load_80); 
            double memref_load_126 = func_arg_6[arith_addi_122][for_iter_73]; 
            double arith_mulf_127 = (memref_load_126 * func_arg_2); 
            double arith_mulf_128 = (arith_mulf_127 * memref_load_81); 
            double arith_addf_129 = (arith_mulf_125 + arith_mulf_128); 
            double memref_load_130 = func_arg_4[arith_addi_24][arith_addi_122]; 
            double arith_addf_131 = (memref_load_130 + arith_addf_129); 
            func_arg_4[arith_addi_24][arith_addi_122] = arith_addf_131; 
          }
          double memref_load_132 = func_arg_6[arith_addi_24][for_iter_73]; 
          double memref_load_133 = func_arg_5[arith_addi_24][for_iter_73]; 
          int arith_muli_134 = (for_iter_19 * arith_const_14); 
          int arith_addi_135 = (for_iter_23 + arith_muli_134); 
          int arith_muli_136 = (for_iter_19 * arith_const_14); 
          int arith_addi_137 = (for_iter_23 + arith_muli_136); 
          int arith_addi_138 = (arith_addi_137 + arith_const_16); 
          int arith_cmpi_139 = (arith_addi_138 < arith_const_15); 
          int arith_subi_140 = (arith_const_11 - arith_addi_138); 
          int arith_select_141 = (arith_cmpi_139 ? arith_subi_140 : arith_addi_138); 
          int arith_divi_142 = (arith_select_141 / arith_const_12); 
          int arith_subi_143 = (arith_const_11 - arith_divi_142); 
          int arith_select_144 = (arith_cmpi_139 ? arith_subi_143 : arith_divi_142); 
          int arith_muli_145 = (arith_select_144 * arith_const_8); 
          int arith_addi_146 = (arith_addi_135 + arith_muli_145); 
          int arith_addi_147 = (arith_addi_146 + arith_const_16); 
          for (int for_iter_148 = arith_const_15; for_iter_148 < arith_addi_147; for_iter_148 += arith_const_16) {
            int arith_addi_149 = (arith_addi_24 + arith_const_16); 
            int arith_cmpi_150 = (arith_addi_149 < arith_const_15); 
            int arith_subi_151 = (arith_const_11 - arith_addi_149); 
            int arith_select_152 = (arith_cmpi_150 ? arith_subi_151 : arith_addi_149); 
            int arith_divi_153 = (arith_select_152 / arith_const_12); 
            int arith_subi_154 = (arith_const_11 - arith_divi_153); 
            int arith_select_155 = (arith_cmpi_150 ? arith_subi_154 : arith_divi_153); 
            int arith_muli_156 = (arith_select_155 * arith_const_12); 
            int arith_addi_157 = (for_iter_148 + arith_muli_156); 
            double memref_load_158 = func_arg_5[arith_addi_157][for_iter_73]; 
            double arith_mulf_159 = (memref_load_158 * func_arg_2); 
            double arith_mulf_160 = (arith_mulf_159 * memref_load_132); 
            double memref_load_161 = func_arg_6[arith_addi_157][for_iter_73]; 
            double arith_mulf_162 = (memref_load_161 * func_arg_2); 
            double arith_mulf_163 = (arith_mulf_162 * memref_load_133); 
            double arith_addf_164 = (arith_mulf_160 + arith_mulf_163); 
            double memref_load_165 = func_arg_4[arith_addi_24][arith_addi_157]; 
            double arith_addf_166 = (memref_load_165 + arith_addf_164); 
            func_arg_4[arith_addi_24][arith_addi_157] = arith_addf_166; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_167 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_167; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
