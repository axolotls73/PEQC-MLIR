#pragma pocc-region-start
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 20; 
  int arith_const_7 = -4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 4; 
  int arith_const_12 = 30; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_14; for_iter_16 < arith_const_15; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_13); 
    for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_12; for_iter_18 += arith_const_15) {
      int arith_addi_19 = (arith_muli_17 + for_iter_18); 
      int arith_muli_20 = (for_iter_16 * arith_const_13); 
      int arith_addi_21 = (for_iter_18 + arith_muli_20); 
      int arith_addi_22 = (arith_addi_21 + arith_const_15); 
      int arith_cmpi_23 = (arith_addi_22 < arith_const_14); 
      int arith_subi_24 = (arith_const_10 - arith_addi_22); 
      int arith_select_25 = (arith_cmpi_23 ? arith_subi_24 : arith_addi_22); 
      int arith_divi_26 = (arith_select_25 / arith_const_11); 
      int arith_subi_27 = (arith_const_10 - arith_divi_26); 
      int arith_select_28 = (arith_cmpi_23 ? arith_subi_27 : arith_divi_26); 
      for (int for_iter_29 = arith_const_14; for_iter_29 < arith_select_28; for_iter_29 += arith_const_15) {
        int arith_muli_30 = (for_iter_29 * arith_const_11); 
        double memref_load_31 = func_arg_4[arith_addi_19][arith_muli_30]; 
        double arith_mulf_32 = (memref_load_31 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_muli_30] = arith_mulf_32; 
        int arith_addi_33 = (arith_muli_30 + arith_const_15); 
        double memref_load_34 = func_arg_4[arith_addi_19][arith_addi_33]; 
        double arith_mulf_35 = (memref_load_34 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_33] = arith_mulf_35; 
        int arith_addi_36 = (arith_muli_30 + arith_const_9); 
        double memref_load_37 = func_arg_4[arith_addi_19][arith_addi_36]; 
        double arith_mulf_38 = (memref_load_37 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_36] = arith_mulf_38; 
        int arith_addi_39 = (arith_muli_30 + arith_const_8); 
        double memref_load_40 = func_arg_4[arith_addi_19][arith_addi_39]; 
        double arith_mulf_41 = (memref_load_40 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_39] = arith_mulf_41; 
      }
      int arith_muli_42 = (for_iter_16 * arith_const_13); 
      int arith_addi_43 = (for_iter_18 + arith_muli_42); 
      int arith_muli_44 = (for_iter_16 * arith_const_13); 
      int arith_addi_45 = (for_iter_18 + arith_muli_44); 
      int arith_addi_46 = (arith_addi_45 + arith_const_15); 
      int arith_cmpi_47 = (arith_addi_46 < arith_const_14); 
      int arith_subi_48 = (arith_const_10 - arith_addi_46); 
      int arith_select_49 = (arith_cmpi_47 ? arith_subi_48 : arith_addi_46); 
      int arith_divi_50 = (arith_select_49 / arith_const_11); 
      int arith_subi_51 = (arith_const_10 - arith_divi_50); 
      int arith_select_52 = (arith_cmpi_47 ? arith_subi_51 : arith_divi_50); 
      int arith_muli_53 = (arith_select_52 * arith_const_7); 
      int arith_addi_54 = (arith_addi_43 + arith_muli_53); 
      int arith_addi_55 = (arith_addi_54 + arith_const_15); 
      for (int for_iter_56 = arith_const_14; for_iter_56 < arith_addi_55; for_iter_56 += arith_const_15) {
        int arith_addi_57 = (arith_addi_19 + arith_const_15); 
        int arith_cmpi_58 = (arith_addi_57 < arith_const_14); 
        int arith_subi_59 = (arith_const_10 - arith_addi_57); 
        int arith_select_60 = (arith_cmpi_58 ? arith_subi_59 : arith_addi_57); 
        int arith_divi_61 = (arith_select_60 / arith_const_11); 
        int arith_subi_62 = (arith_const_10 - arith_divi_61); 
        int arith_select_63 = (arith_cmpi_58 ? arith_subi_62 : arith_divi_61); 
        int arith_muli_64 = (arith_select_63 * arith_const_11); 
        int arith_addi_65 = (for_iter_56 + arith_muli_64); 
        double memref_load_66 = func_arg_4[arith_addi_19][arith_addi_65]; 
        double arith_mulf_67 = (memref_load_66 * func_arg_3); 
        func_arg_4[arith_addi_19][arith_addi_65] = arith_mulf_67; 
      }
      for (int for_iter_68 = arith_const_14; for_iter_68 < arith_const_6; for_iter_68 += arith_const_15) {
        double memref_load_69 = func_arg_5[arith_addi_19][for_iter_68]; 
        double arith_mulf_70 = (func_arg_2 * memref_load_69); 
        double memref_load_71 = func_arg_5[arith_addi_19][for_iter_68]; 
        double arith_mulf_72 = (func_arg_2 * memref_load_71); 
        double memref_load_73 = func_arg_5[arith_addi_19][for_iter_68]; 
        double arith_mulf_74 = (func_arg_2 * memref_load_73); 
        double memref_load_75 = func_arg_5[arith_addi_19][for_iter_68]; 
        double arith_mulf_76 = (func_arg_2 * memref_load_75); 
        int arith_muli_77 = (for_iter_16 * arith_const_13); 
        int arith_addi_78 = (for_iter_18 + arith_muli_77); 
        int arith_addi_79 = (arith_addi_78 + arith_const_15); 
        int arith_cmpi_80 = (arith_addi_79 < arith_const_14); 
        int arith_subi_81 = (arith_const_10 - arith_addi_79); 
        int arith_select_82 = (arith_cmpi_80 ? arith_subi_81 : arith_addi_79); 
        int arith_divi_83 = (arith_select_82 / arith_const_11); 
        int arith_subi_84 = (arith_const_10 - arith_divi_83); 
        int arith_select_85 = (arith_cmpi_80 ? arith_subi_84 : arith_divi_83); 
        for (int for_iter_86 = arith_const_14; for_iter_86 < arith_select_85; for_iter_86 += arith_const_15) {
          int arith_muli_87 = (for_iter_86 * arith_const_11); 
          double memref_load_88 = func_arg_5[arith_muli_87][for_iter_68]; 
          double arith_mulf_89 = (arith_mulf_70 * memref_load_88); 
          double memref_load_90 = func_arg_4[arith_addi_19][arith_muli_87]; 
          double arith_addf_91 = (memref_load_90 + arith_mulf_89); 
          func_arg_4[arith_addi_19][arith_muli_87] = arith_addf_91; 
          int arith_addi_92 = (arith_muli_87 + arith_const_15); 
          double memref_load_93 = func_arg_5[arith_addi_92][for_iter_68]; 
          double arith_mulf_94 = (arith_mulf_72 * memref_load_93); 
          double memref_load_95 = func_arg_4[arith_addi_19][arith_addi_92]; 
          double arith_addf_96 = (memref_load_95 + arith_mulf_94); 
          func_arg_4[arith_addi_19][arith_addi_92] = arith_addf_96; 
          int arith_addi_97 = (arith_muli_87 + arith_const_9); 
          double memref_load_98 = func_arg_5[arith_addi_97][for_iter_68]; 
          double arith_mulf_99 = (arith_mulf_74 * memref_load_98); 
          double memref_load_100 = func_arg_4[arith_addi_19][arith_addi_97]; 
          double arith_addf_101 = (memref_load_100 + arith_mulf_99); 
          func_arg_4[arith_addi_19][arith_addi_97] = arith_addf_101; 
          int arith_addi_102 = (arith_muli_87 + arith_const_8); 
          double memref_load_103 = func_arg_5[arith_addi_102][for_iter_68]; 
          double arith_mulf_104 = (arith_mulf_76 * memref_load_103); 
          double memref_load_105 = func_arg_4[arith_addi_19][arith_addi_102]; 
          double arith_addf_106 = (memref_load_105 + arith_mulf_104); 
          func_arg_4[arith_addi_19][arith_addi_102] = arith_addf_106; 
        }
        double memref_load_107 = func_arg_5[arith_addi_19][for_iter_68]; 
        double arith_mulf_108 = (func_arg_2 * memref_load_107); 
        int arith_muli_109 = (for_iter_16 * arith_const_13); 
        int arith_addi_110 = (for_iter_18 + arith_muli_109); 
        int arith_muli_111 = (for_iter_16 * arith_const_13); 
        int arith_addi_112 = (for_iter_18 + arith_muli_111); 
        int arith_addi_113 = (arith_addi_112 + arith_const_15); 
        int arith_cmpi_114 = (arith_addi_113 < arith_const_14); 
        int arith_subi_115 = (arith_const_10 - arith_addi_113); 
        int arith_select_116 = (arith_cmpi_114 ? arith_subi_115 : arith_addi_113); 
        int arith_divi_117 = (arith_select_116 / arith_const_11); 
        int arith_subi_118 = (arith_const_10 - arith_divi_117); 
        int arith_select_119 = (arith_cmpi_114 ? arith_subi_118 : arith_divi_117); 
        int arith_muli_120 = (arith_select_119 * arith_const_7); 
        int arith_addi_121 = (arith_addi_110 + arith_muli_120); 
        int arith_addi_122 = (arith_addi_121 + arith_const_15); 
        for (int for_iter_123 = arith_const_14; for_iter_123 < arith_addi_122; for_iter_123 += arith_const_15) {
          int arith_addi_124 = (arith_addi_19 + arith_const_15); 
          int arith_cmpi_125 = (arith_addi_124 < arith_const_14); 
          int arith_subi_126 = (arith_const_10 - arith_addi_124); 
          int arith_select_127 = (arith_cmpi_125 ? arith_subi_126 : arith_addi_124); 
          int arith_divi_128 = (arith_select_127 / arith_const_11); 
          int arith_subi_129 = (arith_const_10 - arith_divi_128); 
          int arith_select_130 = (arith_cmpi_125 ? arith_subi_129 : arith_divi_128); 
          int arith_muli_131 = (arith_select_130 * arith_const_11); 
          int arith_addi_132 = (for_iter_123 + arith_muli_131); 
          double memref_load_133 = func_arg_5[arith_addi_132][for_iter_68]; 
          double arith_mulf_134 = (arith_mulf_108 * memref_load_133); 
          double memref_load_135 = func_arg_4[arith_addi_19][arith_addi_132]; 
          double arith_addf_136 = (memref_load_135 + arith_mulf_134); 
          func_arg_4[arith_addi_19][arith_addi_132] = arith_addf_136; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
