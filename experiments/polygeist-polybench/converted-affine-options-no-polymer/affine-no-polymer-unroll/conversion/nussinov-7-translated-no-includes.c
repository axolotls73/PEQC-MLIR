#pragma pocc-region-start
void kernel_nussinov(int func_arg_0, int* func_arg_1, int* func_arg_2)
{
  int arith_const_3 = 3; 
  int arith_const_4 = 2; 
  int arith_const_5 = 4; 
  int arith_const_6 = -61; 
  int arith_const_7 = 59; 
  int arith_const_8 = -1; 
  int arith_const_9 = 3; 
  int arith_const_10 = 0; 
  int arith_const_11 = 60; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_muli_14 = (for_iter_13 * arith_const_8); 
    int arith_addi_15 = (arith_muli_14 + arith_const_11); 
    for (int for_iter_16 = arith_addi_15; for_iter_16 < arith_const_11; for_iter_16 += arith_const_12) {
      int arith_addi_17 = (for_iter_16 + arith_const_8); 
      int arith_cmpi_18 = (arith_addi_17 >= arith_const_10); 
      if (arith_cmpi_18) {
        int arith_muli_19 = (for_iter_13 * arith_const_8); 
        int arith_addi_20 = (arith_muli_19 + arith_const_7); 
        int memref_load_21 = func_arg_2[arith_addi_20][for_iter_16]; 
        int arith_muli_22 = (for_iter_13 * arith_const_8); 
        int arith_addi_23 = (arith_muli_22 + arith_const_7); 
        int arith_addi_24 = (for_iter_16 + arith_const_8); 
        int memref_load_25 = func_arg_2[arith_addi_23][arith_addi_24]; 
        int arith_cmpi_26 = (memref_load_21 >= memref_load_25); 
        int arith_select_27 = (arith_cmpi_26 ? memref_load_21 : memref_load_25); 
        int arith_muli_28 = (for_iter_13 * arith_const_8); 
        int arith_addi_29 = (arith_muli_28 + arith_const_7); 
        func_arg_2[arith_addi_29][for_iter_16] = arith_select_27; 
      }
      int arith_addi_30 = (for_iter_13 + arith_const_8); 
      int arith_cmpi_31 = (arith_addi_30 >= arith_const_10); 
      if (arith_cmpi_31) {
        int arith_muli_32 = (for_iter_13 * arith_const_8); 
        int arith_addi_33 = (arith_muli_32 + arith_const_7); 
        int memref_load_34 = func_arg_2[arith_addi_33][for_iter_16]; 
        int arith_muli_35 = (for_iter_13 * arith_const_8); 
        int arith_addi_36 = (arith_muli_35 + arith_const_11); 
        int memref_load_37 = func_arg_2[arith_addi_36][for_iter_16]; 
        int arith_cmpi_38 = (memref_load_34 >= memref_load_37); 
        int arith_select_39 = (arith_cmpi_38 ? memref_load_34 : memref_load_37); 
        int arith_muli_40 = (for_iter_13 * arith_const_8); 
        int arith_addi_41 = (arith_muli_40 + arith_const_7); 
        func_arg_2[arith_addi_41][for_iter_16] = arith_select_39; 
      }
      int arith_addi_42 = (for_iter_16 + arith_const_8); 
      int arith_cmpi_43 = (arith_addi_42 >= arith_const_10); 
      int arith_addi_44 = (for_iter_13 + arith_const_8); 
      int arith_cmpi_45 = (arith_addi_44 >= arith_const_10); 
      int arith_andi_46 = (arith_cmpi_43 & arith_cmpi_45); 
      if (arith_andi_46) {
        int arith_addi_47 = (for_iter_13 + for_iter_16); 
        int arith_addi_48 = (arith_addi_47 + arith_const_6); 
        int arith_cmpi_49 = (arith_addi_48 >= arith_const_10); 
        if (arith_cmpi_49) {
          int arith_muli_61 = (for_iter_13 * arith_const_8); 
          int arith_addi_62 = (arith_muli_61 + arith_const_7); 
          int memref_load_63 = func_arg_2[arith_addi_62][for_iter_16]; 
          int arith_muli_64 = (for_iter_13 * arith_const_8); 
          int arith_addi_65 = (arith_muli_64 + arith_const_11); 
          int arith_addi_66 = (for_iter_16 + arith_const_8); 
          int memref_load_67 = func_arg_2[arith_addi_65][arith_addi_66]; 
          int arith_muli_68 = (for_iter_13 * arith_const_8); 
          int arith_addi_69 = (arith_muli_68 + arith_const_7); 
          int memref_load_70 = func_arg_1[arith_addi_69]; 
          int memref_load_71 = func_arg_1[for_iter_16]; 
          int arith_addi_72 = (memref_load_70 + memref_load_71); 
          int arith_cmpi_73 = (arith_addi_72 == arith_const_9); 
          int arith_extui_74 = arith_cmpi_73; 
          int arith_addi_75 = (memref_load_67 + arith_extui_74); 
          int arith_cmpi_76 = (memref_load_63 >= arith_addi_75); 
          int arith_select_77 = (arith_cmpi_76 ? memref_load_63 : arith_addi_75); 
          int arith_muli_78 = (for_iter_13 * arith_const_8); 
          int arith_addi_79 = (arith_muli_78 + arith_const_7); 
          func_arg_2[arith_addi_79][for_iter_16] = arith_select_77; 
        }
        else {
          int arith_muli_50 = (for_iter_13 * arith_const_8); 
          int arith_addi_51 = (arith_muli_50 + arith_const_7); 
          int memref_load_52 = func_arg_2[arith_addi_51][for_iter_16]; 
          int arith_muli_53 = (for_iter_13 * arith_const_8); 
          int arith_addi_54 = (arith_muli_53 + arith_const_11); 
          int arith_addi_55 = (for_iter_16 + arith_const_8); 
          int memref_load_56 = func_arg_2[arith_addi_54][arith_addi_55]; 
          int arith_cmpi_57 = (memref_load_52 >= memref_load_56); 
          int arith_select_58 = (arith_cmpi_57 ? memref_load_52 : memref_load_56); 
          int arith_muli_59 = (for_iter_13 * arith_const_8); 
          int arith_addi_60 = (arith_muli_59 + arith_const_7); 
          func_arg_2[arith_addi_60][for_iter_16] = arith_select_58; 
        }
      }
      int arith_muli_80 = (for_iter_13 * arith_const_8); 
      int arith_addi_81 = (arith_muli_80 + arith_const_11); 
      int arith_muli_82 = (for_iter_13 * arith_const_8); 
      int arith_addi_83 = (for_iter_13 + for_iter_16); 
      int arith_cmpi_84 = (arith_addi_83 < arith_const_10); 
      int arith_subi_85 = (arith_const_8 - arith_addi_83); 
      int arith_select_86 = (arith_cmpi_84 ? arith_subi_85 : arith_addi_83); 
      int arith_divi_87 = (arith_select_86 / arith_const_5); 
      int arith_subi_88 = (arith_const_8 - arith_divi_87); 
      int arith_select_89 = (arith_cmpi_84 ? arith_subi_88 : arith_divi_87); 
      int arith_muli_90 = (arith_select_89 * arith_const_5); 
      int arith_addi_91 = (arith_muli_82 + arith_muli_90); 
      for (int for_iter_92 = arith_addi_81; for_iter_92 < arith_addi_91; for_iter_92 += arith_const_5) {
        int arith_muli_93 = (for_iter_13 * arith_const_8); 
        int arith_addi_94 = (arith_muli_93 + arith_const_7); 
        int memref_load_95 = func_arg_2[arith_addi_94][for_iter_16]; 
        int arith_muli_96 = (for_iter_13 * arith_const_8); 
        int arith_addi_97 = (arith_muli_96 + arith_const_7); 
        int memref_load_98 = func_arg_2[arith_addi_97][for_iter_92]; 
        int arith_addi_99 = (for_iter_92 + arith_const_12); 
        int memref_load_100 = func_arg_2[arith_addi_99][for_iter_16]; 
        int arith_addi_101 = (memref_load_98 + memref_load_100); 
        int arith_cmpi_102 = (memref_load_95 >= arith_addi_101); 
        int arith_select_103 = (arith_cmpi_102 ? memref_load_95 : arith_addi_101); 
        int arith_muli_104 = (for_iter_13 * arith_const_8); 
        int arith_addi_105 = (arith_muli_104 + arith_const_7); 
        func_arg_2[arith_addi_105][for_iter_16] = arith_select_103; 
        int arith_addi_106 = (for_iter_92 + arith_const_12); 
        int arith_muli_107 = (for_iter_13 * arith_const_8); 
        int arith_addi_108 = (arith_muli_107 + arith_const_7); 
        int memref_load_109 = func_arg_2[arith_addi_108][for_iter_16]; 
        int arith_muli_110 = (for_iter_13 * arith_const_8); 
        int arith_addi_111 = (arith_muli_110 + arith_const_7); 
        int memref_load_112 = func_arg_2[arith_addi_111][arith_addi_106]; 
        int arith_addi_113 = (arith_addi_106 + arith_const_12); 
        int memref_load_114 = func_arg_2[arith_addi_113][for_iter_16]; 
        int arith_addi_115 = (memref_load_112 + memref_load_114); 
        int arith_cmpi_116 = (memref_load_109 >= arith_addi_115); 
        int arith_select_117 = (arith_cmpi_116 ? memref_load_109 : arith_addi_115); 
        int arith_muli_118 = (for_iter_13 * arith_const_8); 
        int arith_addi_119 = (arith_muli_118 + arith_const_7); 
        func_arg_2[arith_addi_119][for_iter_16] = arith_select_117; 
        int arith_addi_120 = (for_iter_92 + arith_const_4); 
        int arith_muli_121 = (for_iter_13 * arith_const_8); 
        int arith_addi_122 = (arith_muli_121 + arith_const_7); 
        int memref_load_123 = func_arg_2[arith_addi_122][for_iter_16]; 
        int arith_muli_124 = (for_iter_13 * arith_const_8); 
        int arith_addi_125 = (arith_muli_124 + arith_const_7); 
        int memref_load_126 = func_arg_2[arith_addi_125][arith_addi_120]; 
        int arith_addi_127 = (arith_addi_120 + arith_const_12); 
        int memref_load_128 = func_arg_2[arith_addi_127][for_iter_16]; 
        int arith_addi_129 = (memref_load_126 + memref_load_128); 
        int arith_cmpi_130 = (memref_load_123 >= arith_addi_129); 
        int arith_select_131 = (arith_cmpi_130 ? memref_load_123 : arith_addi_129); 
        int arith_muli_132 = (for_iter_13 * arith_const_8); 
        int arith_addi_133 = (arith_muli_132 + arith_const_7); 
        func_arg_2[arith_addi_133][for_iter_16] = arith_select_131; 
        int arith_addi_134 = (for_iter_92 + arith_const_3); 
        int arith_muli_135 = (for_iter_13 * arith_const_8); 
        int arith_addi_136 = (arith_muli_135 + arith_const_7); 
        int memref_load_137 = func_arg_2[arith_addi_136][for_iter_16]; 
        int arith_muli_138 = (for_iter_13 * arith_const_8); 
        int arith_addi_139 = (arith_muli_138 + arith_const_7); 
        int memref_load_140 = func_arg_2[arith_addi_139][arith_addi_134]; 
        int arith_addi_141 = (arith_addi_134 + arith_const_12); 
        int memref_load_142 = func_arg_2[arith_addi_141][for_iter_16]; 
        int arith_addi_143 = (memref_load_140 + memref_load_142); 
        int arith_cmpi_144 = (memref_load_137 >= arith_addi_143); 
        int arith_select_145 = (arith_cmpi_144 ? memref_load_137 : arith_addi_143); 
        int arith_muli_146 = (for_iter_13 * arith_const_8); 
        int arith_addi_147 = (arith_muli_146 + arith_const_7); 
        func_arg_2[arith_addi_147][for_iter_16] = arith_select_145; 
      }
      int arith_muli_148 = (for_iter_13 * arith_const_8); 
      int arith_addi_149 = (for_iter_13 + for_iter_16); 
      int arith_cmpi_150 = (arith_addi_149 < arith_const_10); 
      int arith_subi_151 = (arith_const_8 - arith_addi_149); 
      int arith_select_152 = (arith_cmpi_150 ? arith_subi_151 : arith_addi_149); 
      int arith_divi_153 = (arith_select_152 / arith_const_5); 
      int arith_subi_154 = (arith_const_8 - arith_divi_153); 
      int arith_select_155 = (arith_cmpi_150 ? arith_subi_154 : arith_divi_153); 
      int arith_muli_156 = (arith_select_155 * arith_const_5); 
      int arith_addi_157 = (arith_muli_148 + arith_muli_156); 
      for (int for_iter_158 = arith_addi_157; for_iter_158 < for_iter_16; for_iter_158 += arith_const_12) {
        int arith_muli_159 = (for_iter_13 * arith_const_8); 
        int arith_addi_160 = (arith_muli_159 + arith_const_7); 
        int memref_load_161 = func_arg_2[arith_addi_160][for_iter_16]; 
        int arith_muli_162 = (for_iter_13 * arith_const_8); 
        int arith_addi_163 = (arith_muli_162 + arith_const_7); 
        int memref_load_164 = func_arg_2[arith_addi_163][for_iter_158]; 
        int arith_addi_165 = (for_iter_158 + arith_const_12); 
        int memref_load_166 = func_arg_2[arith_addi_165][for_iter_16]; 
        int arith_addi_167 = (memref_load_164 + memref_load_166); 
        int arith_cmpi_168 = (memref_load_161 >= arith_addi_167); 
        int arith_select_169 = (arith_cmpi_168 ? memref_load_161 : arith_addi_167); 
        int arith_muli_170 = (for_iter_13 * arith_const_8); 
        int arith_addi_171 = (arith_muli_170 + arith_const_7); 
        func_arg_2[arith_addi_171][for_iter_16] = arith_select_169; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
