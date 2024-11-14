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
  for (int for_iter_17 = arith_const_15; for_iter_17 < arith_const_16; for_iter_17 += arith_const_16) {
    int arith_muli_18 = (for_iter_17 * arith_const_14); 
    for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_13; for_iter_19 += arith_const_16) {
      int arith_addi_20 = (arith_muli_18 + for_iter_19); 
      int arith_muli_21 = (for_iter_17 * arith_const_14); 
      int arith_addi_22 = (for_iter_19 + arith_muli_21); 
      int arith_addi_23 = (arith_addi_22 + arith_const_16); 
      int arith_cmpi_24 = (arith_addi_23 < arith_const_15); 
      int arith_subi_25 = (arith_const_11 - arith_addi_23); 
      int arith_select_26 = (arith_cmpi_24 ? arith_subi_25 : arith_addi_23); 
      int arith_divi_27 = (arith_select_26 / arith_const_12); 
      int arith_subi_28 = (arith_const_11 - arith_divi_27); 
      int arith_select_29 = (arith_cmpi_24 ? arith_subi_28 : arith_divi_27); 
      for (int for_iter_30 = arith_const_15; for_iter_30 < arith_select_29; for_iter_30 += arith_const_16) {
        int arith_muli_31 = (for_iter_30 * arith_const_12); 
        double memref_load_32 = func_arg_4[arith_addi_20][arith_muli_31]; 
        double arith_mulf_33 = (memref_load_32 * func_arg_3); 
        func_arg_4[arith_addi_20][arith_muli_31] = arith_mulf_33; 
        int arith_addi_34 = (arith_muli_31 + arith_const_16); 
        double memref_load_35 = func_arg_4[arith_addi_20][arith_addi_34]; 
        double arith_mulf_36 = (memref_load_35 * func_arg_3); 
        func_arg_4[arith_addi_20][arith_addi_34] = arith_mulf_36; 
        int arith_addi_37 = (arith_muli_31 + arith_const_10); 
        double memref_load_38 = func_arg_4[arith_addi_20][arith_addi_37]; 
        double arith_mulf_39 = (memref_load_38 * func_arg_3); 
        func_arg_4[arith_addi_20][arith_addi_37] = arith_mulf_39; 
        int arith_addi_40 = (arith_muli_31 + arith_const_9); 
        double memref_load_41 = func_arg_4[arith_addi_20][arith_addi_40]; 
        double arith_mulf_42 = (memref_load_41 * func_arg_3); 
        func_arg_4[arith_addi_20][arith_addi_40] = arith_mulf_42; 
      }
      int arith_muli_43 = (for_iter_17 * arith_const_14); 
      int arith_addi_44 = (for_iter_19 + arith_muli_43); 
      int arith_muli_45 = (for_iter_17 * arith_const_14); 
      int arith_addi_46 = (for_iter_19 + arith_muli_45); 
      int arith_addi_47 = (arith_addi_46 + arith_const_16); 
      int arith_cmpi_48 = (arith_addi_47 < arith_const_15); 
      int arith_subi_49 = (arith_const_11 - arith_addi_47); 
      int arith_select_50 = (arith_cmpi_48 ? arith_subi_49 : arith_addi_47); 
      int arith_divi_51 = (arith_select_50 / arith_const_12); 
      int arith_subi_52 = (arith_const_11 - arith_divi_51); 
      int arith_select_53 = (arith_cmpi_48 ? arith_subi_52 : arith_divi_51); 
      int arith_muli_54 = (arith_select_53 * arith_const_8); 
      int arith_addi_55 = (arith_addi_44 + arith_muli_54); 
      int arith_addi_56 = (arith_addi_55 + arith_const_16); 
      for (int for_iter_57 = arith_const_15; for_iter_57 < arith_addi_56; for_iter_57 += arith_const_16) {
        int arith_addi_58 = (arith_addi_20 + arith_const_16); 
        int arith_cmpi_59 = (arith_addi_58 < arith_const_15); 
        int arith_subi_60 = (arith_const_11 - arith_addi_58); 
        int arith_select_61 = (arith_cmpi_59 ? arith_subi_60 : arith_addi_58); 
        int arith_divi_62 = (arith_select_61 / arith_const_12); 
        int arith_subi_63 = (arith_const_11 - arith_divi_62); 
        int arith_select_64 = (arith_cmpi_59 ? arith_subi_63 : arith_divi_62); 
        int arith_muli_65 = (arith_select_64 * arith_const_12); 
        int arith_addi_66 = (for_iter_57 + arith_muli_65); 
        double memref_load_67 = func_arg_4[arith_addi_20][arith_addi_66]; 
        double arith_mulf_68 = (memref_load_67 * func_arg_3); 
        func_arg_4[arith_addi_20][arith_addi_66] = arith_mulf_68; 
      }
      for (int for_iter_69 = arith_const_15; for_iter_69 < arith_const_7; for_iter_69 += arith_const_16) {
        double memref_load_70 = func_arg_6[arith_addi_20][for_iter_69]; 
        double memref_load_71 = func_arg_5[arith_addi_20][for_iter_69]; 
        double memref_load_72 = func_arg_6[arith_addi_20][for_iter_69]; 
        double memref_load_73 = func_arg_5[arith_addi_20][for_iter_69]; 
        double memref_load_74 = func_arg_6[arith_addi_20][for_iter_69]; 
        double memref_load_75 = func_arg_5[arith_addi_20][for_iter_69]; 
        double memref_load_76 = func_arg_6[arith_addi_20][for_iter_69]; 
        double memref_load_77 = func_arg_5[arith_addi_20][for_iter_69]; 
        int arith_muli_78 = (for_iter_17 * arith_const_14); 
        int arith_addi_79 = (for_iter_19 + arith_muli_78); 
        int arith_addi_80 = (arith_addi_79 + arith_const_16); 
        int arith_cmpi_81 = (arith_addi_80 < arith_const_15); 
        int arith_subi_82 = (arith_const_11 - arith_addi_80); 
        int arith_select_83 = (arith_cmpi_81 ? arith_subi_82 : arith_addi_80); 
        int arith_divi_84 = (arith_select_83 / arith_const_12); 
        int arith_subi_85 = (arith_const_11 - arith_divi_84); 
        int arith_select_86 = (arith_cmpi_81 ? arith_subi_85 : arith_divi_84); 
        for (int for_iter_87 = arith_const_15; for_iter_87 < arith_select_86; for_iter_87 += arith_const_16) {
          int arith_muli_88 = (for_iter_87 * arith_const_12); 
          double memref_load_89 = func_arg_5[arith_muli_88][for_iter_69]; 
          double arith_mulf_90 = (memref_load_89 * func_arg_2); 
          double arith_mulf_91 = (arith_mulf_90 * memref_load_70); 
          double memref_load_92 = func_arg_6[arith_muli_88][for_iter_69]; 
          double arith_mulf_93 = (memref_load_92 * func_arg_2); 
          double arith_mulf_94 = (arith_mulf_93 * memref_load_71); 
          double arith_addf_95 = (arith_mulf_91 + arith_mulf_94); 
          double memref_load_96 = func_arg_4[arith_addi_20][arith_muli_88]; 
          double arith_addf_97 = (memref_load_96 + arith_addf_95); 
          func_arg_4[arith_addi_20][arith_muli_88] = arith_addf_97; 
          int arith_addi_98 = (arith_muli_88 + arith_const_16); 
          double memref_load_99 = func_arg_5[arith_addi_98][for_iter_69]; 
          double arith_mulf_100 = (memref_load_99 * func_arg_2); 
          double arith_mulf_101 = (arith_mulf_100 * memref_load_72); 
          double memref_load_102 = func_arg_6[arith_addi_98][for_iter_69]; 
          double arith_mulf_103 = (memref_load_102 * func_arg_2); 
          double arith_mulf_104 = (arith_mulf_103 * memref_load_73); 
          double arith_addf_105 = (arith_mulf_101 + arith_mulf_104); 
          double memref_load_106 = func_arg_4[arith_addi_20][arith_addi_98]; 
          double arith_addf_107 = (memref_load_106 + arith_addf_105); 
          func_arg_4[arith_addi_20][arith_addi_98] = arith_addf_107; 
          int arith_addi_108 = (arith_muli_88 + arith_const_10); 
          double memref_load_109 = func_arg_5[arith_addi_108][for_iter_69]; 
          double arith_mulf_110 = (memref_load_109 * func_arg_2); 
          double arith_mulf_111 = (arith_mulf_110 * memref_load_74); 
          double memref_load_112 = func_arg_6[arith_addi_108][for_iter_69]; 
          double arith_mulf_113 = (memref_load_112 * func_arg_2); 
          double arith_mulf_114 = (arith_mulf_113 * memref_load_75); 
          double arith_addf_115 = (arith_mulf_111 + arith_mulf_114); 
          double memref_load_116 = func_arg_4[arith_addi_20][arith_addi_108]; 
          double arith_addf_117 = (memref_load_116 + arith_addf_115); 
          func_arg_4[arith_addi_20][arith_addi_108] = arith_addf_117; 
          int arith_addi_118 = (arith_muli_88 + arith_const_9); 
          double memref_load_119 = func_arg_5[arith_addi_118][for_iter_69]; 
          double arith_mulf_120 = (memref_load_119 * func_arg_2); 
          double arith_mulf_121 = (arith_mulf_120 * memref_load_76); 
          double memref_load_122 = func_arg_6[arith_addi_118][for_iter_69]; 
          double arith_mulf_123 = (memref_load_122 * func_arg_2); 
          double arith_mulf_124 = (arith_mulf_123 * memref_load_77); 
          double arith_addf_125 = (arith_mulf_121 + arith_mulf_124); 
          double memref_load_126 = func_arg_4[arith_addi_20][arith_addi_118]; 
          double arith_addf_127 = (memref_load_126 + arith_addf_125); 
          func_arg_4[arith_addi_20][arith_addi_118] = arith_addf_127; 
        }
        double memref_load_128 = func_arg_6[arith_addi_20][for_iter_69]; 
        double memref_load_129 = func_arg_5[arith_addi_20][for_iter_69]; 
        int arith_muli_130 = (for_iter_17 * arith_const_14); 
        int arith_addi_131 = (for_iter_19 + arith_muli_130); 
        int arith_muli_132 = (for_iter_17 * arith_const_14); 
        int arith_addi_133 = (for_iter_19 + arith_muli_132); 
        int arith_addi_134 = (arith_addi_133 + arith_const_16); 
        int arith_cmpi_135 = (arith_addi_134 < arith_const_15); 
        int arith_subi_136 = (arith_const_11 - arith_addi_134); 
        int arith_select_137 = (arith_cmpi_135 ? arith_subi_136 : arith_addi_134); 
        int arith_divi_138 = (arith_select_137 / arith_const_12); 
        int arith_subi_139 = (arith_const_11 - arith_divi_138); 
        int arith_select_140 = (arith_cmpi_135 ? arith_subi_139 : arith_divi_138); 
        int arith_muli_141 = (arith_select_140 * arith_const_8); 
        int arith_addi_142 = (arith_addi_131 + arith_muli_141); 
        int arith_addi_143 = (arith_addi_142 + arith_const_16); 
        for (int for_iter_144 = arith_const_15; for_iter_144 < arith_addi_143; for_iter_144 += arith_const_16) {
          int arith_addi_145 = (arith_addi_20 + arith_const_16); 
          int arith_cmpi_146 = (arith_addi_145 < arith_const_15); 
          int arith_subi_147 = (arith_const_11 - arith_addi_145); 
          int arith_select_148 = (arith_cmpi_146 ? arith_subi_147 : arith_addi_145); 
          int arith_divi_149 = (arith_select_148 / arith_const_12); 
          int arith_subi_150 = (arith_const_11 - arith_divi_149); 
          int arith_select_151 = (arith_cmpi_146 ? arith_subi_150 : arith_divi_149); 
          int arith_muli_152 = (arith_select_151 * arith_const_12); 
          int arith_addi_153 = (for_iter_144 + arith_muli_152); 
          double memref_load_154 = func_arg_5[arith_addi_153][for_iter_69]; 
          double arith_mulf_155 = (memref_load_154 * func_arg_2); 
          double arith_mulf_156 = (arith_mulf_155 * memref_load_128); 
          double memref_load_157 = func_arg_6[arith_addi_153][for_iter_69]; 
          double arith_mulf_158 = (memref_load_157 * func_arg_2); 
          double arith_mulf_159 = (arith_mulf_158 * memref_load_129); 
          double arith_addf_160 = (arith_mulf_156 + arith_mulf_159); 
          double memref_load_161 = func_arg_4[arith_addi_20][arith_addi_153]; 
          double arith_addf_162 = (memref_load_161 + arith_addf_160); 
          func_arg_4[arith_addi_20][arith_addi_153] = arith_addf_162; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
