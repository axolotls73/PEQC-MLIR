#pragma pocc-region-start
void kernel_nussinov(int func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 3; 
  int arith_const_4 = 2; 
  int arith_const_5 = 4; 
  int arith_const_6 = 59; 
  int arith_const_7 = -1; 
  int arith_const_8 = 3; 
  int arith_const_9 = 0; 
  int arith_const_10 = 60; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    for (int for_iter_13 = arith_const_9; for_iter_13 < for_iter_12; for_iter_13 += arith_const_11) {
      int arith_muli_14 = (for_iter_12 * arith_const_7); 
      int arith_addi_15 = (arith_muli_14 + for_iter_13); 
      int arith_addi_16 = (arith_addi_15 + arith_const_10); 
      int arith_muli_17 = (for_iter_12 * arith_const_7); 
      int arith_addi_18 = (arith_muli_17 + for_iter_13); 
      int arith_addi_19 = (arith_addi_18 + arith_const_6); 
      int arith_cmpi_20 = (arith_addi_19 >= arith_const_9); 
      if (arith_cmpi_20) {
        int arith_muli_21 = (for_iter_12 * arith_const_7); 
        int arith_addi_22 = (arith_muli_21 + arith_const_6); 
        int memref_load_23 = func_arg_2[arith_addi_22][arith_addi_16]; 
        int arith_muli_24 = (for_iter_12 * arith_const_7); 
        int arith_addi_25 = (arith_muli_24 + arith_const_6); 
        int arith_addi_26 = (arith_addi_16 + arith_const_7); 
        int memref_load_27 = func_arg_2[arith_addi_25][arith_addi_26]; 
        int arith_cmpi_28 = (memref_load_23 >= memref_load_27); 
        int arith_select_29 = (arith_cmpi_28 ? memref_load_23 : memref_load_27); 
        int arith_muli_30 = (for_iter_12 * arith_const_7); 
        int arith_addi_31 = (arith_muli_30 + arith_const_6); 
        func_arg_2[arith_addi_31][arith_addi_16] = arith_select_29; 
      }
      int arith_addi_32 = (for_iter_12 + arith_const_7); 
      int arith_cmpi_33 = (arith_addi_32 >= arith_const_9); 
      if (arith_cmpi_33) {
        int arith_muli_34 = (for_iter_12 * arith_const_7); 
        int arith_addi_35 = (arith_muli_34 + arith_const_6); 
        int memref_load_36 = func_arg_2[arith_addi_35][arith_addi_16]; 
        int arith_muli_37 = (for_iter_12 * arith_const_7); 
        int arith_addi_38 = (arith_muli_37 + arith_const_10); 
        int memref_load_39 = func_arg_2[arith_addi_38][arith_addi_16]; 
        int arith_cmpi_40 = (memref_load_36 >= memref_load_39); 
        int arith_select_41 = (arith_cmpi_40 ? memref_load_36 : memref_load_39); 
        int arith_muli_42 = (for_iter_12 * arith_const_7); 
        int arith_addi_43 = (arith_muli_42 + arith_const_6); 
        func_arg_2[arith_addi_43][arith_addi_16] = arith_select_41; 
      }
      int arith_muli_44 = (for_iter_12 * arith_const_7); 
      int arith_addi_45 = (arith_muli_44 + for_iter_13); 
      int arith_addi_46 = (arith_addi_45 + arith_const_6); 
      int arith_cmpi_47 = (arith_addi_46 >= arith_const_9); 
      int arith_addi_48 = (for_iter_12 + arith_const_7); 
      int arith_cmpi_49 = (arith_addi_48 >= arith_const_9); 
      int arith_andi_50 = (arith_cmpi_47 & arith_cmpi_49); 
      if (arith_andi_50) {
        int arith_addi_51 = (for_iter_13 + arith_const_7); 
        int arith_cmpi_52 = (arith_addi_51 >= arith_const_9); 
        if (arith_cmpi_52) {
          int arith_muli_64 = (for_iter_12 * arith_const_7); 
          int arith_addi_65 = (arith_muli_64 + arith_const_6); 
          int memref_load_66 = func_arg_2[arith_addi_65][arith_addi_16]; 
          int arith_muli_67 = (for_iter_12 * arith_const_7); 
          int arith_addi_68 = (arith_muli_67 + arith_const_10); 
          int arith_addi_69 = (arith_addi_16 + arith_const_7); 
          int memref_load_70 = func_arg_2[arith_addi_68][arith_addi_69]; 
          int arith_muli_71 = (for_iter_12 * arith_const_7); 
          int arith_addi_72 = (arith_muli_71 + arith_const_6); 
          int memref_load_73 = func_arg_1[arith_addi_72]; 
          int memref_load_74 = func_arg_1[arith_addi_16]; 
          int arith_addi_75 = (memref_load_73 + memref_load_74); 
          int arith_cmpi_76 = (arith_addi_75 == arith_const_8); 
          int arith_extui_77 = arith_cmpi_76; 
          int arith_addi_78 = (memref_load_70 + arith_extui_77); 
          int arith_cmpi_79 = (memref_load_66 >= arith_addi_78); 
          int arith_select_80 = (arith_cmpi_79 ? memref_load_66 : arith_addi_78); 
          int arith_muli_81 = (for_iter_12 * arith_const_7); 
          int arith_addi_82 = (arith_muli_81 + arith_const_6); 
          func_arg_2[arith_addi_82][arith_addi_16] = arith_select_80; 
        }
        else {
          int arith_muli_53 = (for_iter_12 * arith_const_7); 
          int arith_addi_54 = (arith_muli_53 + arith_const_6); 
          int memref_load_55 = func_arg_2[arith_addi_54][arith_addi_16]; 
          int arith_muli_56 = (for_iter_12 * arith_const_7); 
          int arith_addi_57 = (arith_muli_56 + arith_const_10); 
          int arith_addi_58 = (arith_addi_16 + arith_const_7); 
          int memref_load_59 = func_arg_2[arith_addi_57][arith_addi_58]; 
          int arith_cmpi_60 = (memref_load_55 >= memref_load_59); 
          int arith_select_61 = (arith_cmpi_60 ? memref_load_55 : memref_load_59); 
          int arith_muli_62 = (for_iter_12 * arith_const_7); 
          int arith_addi_63 = (arith_muli_62 + arith_const_6); 
          func_arg_2[arith_addi_63][arith_addi_16] = arith_select_61; 
        }
      }
      int arith_cmpi_83 = (for_iter_13 < arith_const_9); 
      int arith_subi_84 = (arith_const_7 - for_iter_13); 
      int arith_select_85 = (arith_cmpi_83 ? arith_subi_84 : for_iter_13); 
      int arith_divi_86 = (arith_select_85 / arith_const_5); 
      int arith_subi_87 = (arith_const_7 - arith_divi_86); 
      int arith_select_88 = (arith_cmpi_83 ? arith_subi_87 : arith_divi_86); 
      for (int for_iter_89 = arith_const_9; for_iter_89 < arith_select_88; for_iter_89 += arith_const_11) {
        int arith_muli_90 = (for_iter_12 * arith_const_7); 
        int arith_muli_91 = (for_iter_89 * arith_const_5); 
        int arith_addi_92 = (arith_muli_90 + arith_muli_91); 
        int arith_addi_93 = (arith_addi_92 + arith_const_10); 
        int arith_muli_94 = (for_iter_12 * arith_const_7); 
        int arith_addi_95 = (arith_muli_94 + arith_const_6); 
        int memref_load_96 = func_arg_2[arith_addi_95][arith_addi_16]; 
        int arith_muli_97 = (for_iter_12 * arith_const_7); 
        int arith_addi_98 = (arith_muli_97 + arith_const_6); 
        int memref_load_99 = func_arg_2[arith_addi_98][arith_addi_93]; 
        int arith_addi_100 = (arith_addi_93 + arith_const_11); 
        int memref_load_101 = func_arg_2[arith_addi_100][arith_addi_16]; 
        int arith_addi_102 = (memref_load_99 + memref_load_101); 
        int arith_cmpi_103 = (memref_load_96 >= arith_addi_102); 
        int arith_select_104 = (arith_cmpi_103 ? memref_load_96 : arith_addi_102); 
        int arith_muli_105 = (for_iter_12 * arith_const_7); 
        int arith_addi_106 = (arith_muli_105 + arith_const_6); 
        func_arg_2[arith_addi_106][arith_addi_16] = arith_select_104; 
        int arith_addi_107 = (arith_addi_93 + arith_const_11); 
        int arith_muli_108 = (for_iter_12 * arith_const_7); 
        int arith_addi_109 = (arith_muli_108 + arith_const_6); 
        int memref_load_110 = func_arg_2[arith_addi_109][arith_addi_16]; 
        int arith_muli_111 = (for_iter_12 * arith_const_7); 
        int arith_addi_112 = (arith_muli_111 + arith_const_6); 
        int memref_load_113 = func_arg_2[arith_addi_112][arith_addi_107]; 
        int arith_addi_114 = (arith_addi_107 + arith_const_11); 
        int memref_load_115 = func_arg_2[arith_addi_114][arith_addi_16]; 
        int arith_addi_116 = (memref_load_113 + memref_load_115); 
        int arith_cmpi_117 = (memref_load_110 >= arith_addi_116); 
        int arith_select_118 = (arith_cmpi_117 ? memref_load_110 : arith_addi_116); 
        int arith_muli_119 = (for_iter_12 * arith_const_7); 
        int arith_addi_120 = (arith_muli_119 + arith_const_6); 
        func_arg_2[arith_addi_120][arith_addi_16] = arith_select_118; 
        int arith_addi_121 = (arith_addi_93 + arith_const_4); 
        int arith_muli_122 = (for_iter_12 * arith_const_7); 
        int arith_addi_123 = (arith_muli_122 + arith_const_6); 
        int memref_load_124 = func_arg_2[arith_addi_123][arith_addi_16]; 
        int arith_muli_125 = (for_iter_12 * arith_const_7); 
        int arith_addi_126 = (arith_muli_125 + arith_const_6); 
        int memref_load_127 = func_arg_2[arith_addi_126][arith_addi_121]; 
        int arith_addi_128 = (arith_addi_121 + arith_const_11); 
        int memref_load_129 = func_arg_2[arith_addi_128][arith_addi_16]; 
        int arith_addi_130 = (memref_load_127 + memref_load_129); 
        int arith_cmpi_131 = (memref_load_124 >= arith_addi_130); 
        int arith_select_132 = (arith_cmpi_131 ? memref_load_124 : arith_addi_130); 
        int arith_muli_133 = (for_iter_12 * arith_const_7); 
        int arith_addi_134 = (arith_muli_133 + arith_const_6); 
        func_arg_2[arith_addi_134][arith_addi_16] = arith_select_132; 
        int arith_addi_135 = (arith_addi_93 + arith_const_3); 
        int arith_muli_136 = (for_iter_12 * arith_const_7); 
        int arith_addi_137 = (arith_muli_136 + arith_const_6); 
        int memref_load_138 = func_arg_2[arith_addi_137][arith_addi_16]; 
        int arith_muli_139 = (for_iter_12 * arith_const_7); 
        int arith_addi_140 = (arith_muli_139 + arith_const_6); 
        int memref_load_141 = func_arg_2[arith_addi_140][arith_addi_135]; 
        int arith_addi_142 = (arith_addi_135 + arith_const_11); 
        int memref_load_143 = func_arg_2[arith_addi_142][arith_addi_16]; 
        int arith_addi_144 = (memref_load_141 + memref_load_143); 
        int arith_cmpi_145 = (memref_load_138 >= arith_addi_144); 
        int arith_select_146 = (arith_cmpi_145 ? memref_load_138 : arith_addi_144); 
        int arith_muli_147 = (for_iter_12 * arith_const_7); 
        int arith_addi_148 = (arith_muli_147 + arith_const_6); 
        func_arg_2[arith_addi_148][arith_addi_16] = arith_select_146; 
      }
      int arith_remsi_149 = (for_iter_13 % arith_const_5); 
      int arith_cmpi_150 = (arith_remsi_149 < arith_const_9); 
      int arith_addi_151 = (arith_remsi_149 + arith_const_5); 
      int arith_select_152 = (arith_cmpi_150 ? arith_addi_151 : arith_remsi_149); 
      for (int for_iter_153 = arith_const_9; for_iter_153 < arith_select_152; for_iter_153 += arith_const_11) {
        int arith_muli_154 = (for_iter_12 * arith_const_7); 
        int arith_addi_155 = (arith_muli_154 + for_iter_153); 
        int arith_addi_156 = (for_iter_12 + arith_addi_16); 
        int arith_cmpi_157 = (arith_addi_156 < arith_const_9); 
        int arith_subi_158 = (arith_const_7 - arith_addi_156); 
        int arith_select_159 = (arith_cmpi_157 ? arith_subi_158 : arith_addi_156); 
        int arith_divi_160 = (arith_select_159 / arith_const_5); 
        int arith_subi_161 = (arith_const_7 - arith_divi_160); 
        int arith_select_162 = (arith_cmpi_157 ? arith_subi_161 : arith_divi_160); 
        int arith_muli_163 = (arith_select_162 * arith_const_5); 
        int arith_addi_164 = (arith_addi_155 + arith_muli_163); 
        int arith_muli_165 = (for_iter_12 * arith_const_7); 
        int arith_addi_166 = (arith_muli_165 + arith_const_6); 
        int memref_load_167 = func_arg_2[arith_addi_166][arith_addi_16]; 
        int arith_muli_168 = (for_iter_12 * arith_const_7); 
        int arith_addi_169 = (arith_muli_168 + arith_const_6); 
        int memref_load_170 = func_arg_2[arith_addi_169][arith_addi_164]; 
        int arith_addi_171 = (arith_addi_164 + arith_const_11); 
        int memref_load_172 = func_arg_2[arith_addi_171][arith_addi_16]; 
        int arith_addi_173 = (memref_load_170 + memref_load_172); 
        int arith_cmpi_174 = (memref_load_167 >= arith_addi_173); 
        int arith_select_175 = (arith_cmpi_174 ? memref_load_167 : arith_addi_173); 
        int arith_muli_176 = (for_iter_12 * arith_const_7); 
        int arith_addi_177 = (arith_muli_176 + arith_const_6); 
        func_arg_2[arith_addi_177][arith_addi_16] = arith_select_175; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
