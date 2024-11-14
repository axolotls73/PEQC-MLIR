#pragma pocc-region-start
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 5; 
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
    }
  }
  for (int for_iter_69 = arith_const_15; for_iter_69 < arith_const_13; for_iter_69 += arith_const_16) {
    int arith_addi_70 = (for_iter_69 + arith_const_16); 
    for (int for_iter_71 = arith_const_15; for_iter_71 < arith_addi_70; for_iter_71 += arith_const_16) {
      for (int for_iter_72 = arith_const_15; for_iter_72 < arith_const_7; for_iter_72 += arith_const_16) {
        int arith_muli_73 = (for_iter_72 * arith_const_12); 
        double memref_load_74 = func_arg_4[for_iter_69][for_iter_71]; 
        double memref_load_75 = func_arg_5[for_iter_71][arith_muli_73]; 
        double arith_mulf_76 = (memref_load_75 * func_arg_2); 
        double memref_load_77 = func_arg_6[for_iter_69][arith_muli_73]; 
        double arith_mulf_78 = (arith_mulf_76 * memref_load_77); 
        double memref_load_79 = func_arg_6[for_iter_71][arith_muli_73]; 
        double arith_mulf_80 = (memref_load_79 * func_arg_2); 
        double memref_load_81 = func_arg_5[for_iter_69][arith_muli_73]; 
        double arith_mulf_82 = (arith_mulf_80 * memref_load_81); 
        double arith_addf_83 = (arith_mulf_78 + arith_mulf_82); 
        double arith_addf_84 = (memref_load_74 + arith_addf_83); 
        func_arg_4[for_iter_69][for_iter_71] = arith_addf_84; 
        int arith_addi_85 = (arith_muli_73 + arith_const_16); 
        double memref_load_86 = func_arg_4[for_iter_69][for_iter_71]; 
        double memref_load_87 = func_arg_5[for_iter_71][arith_addi_85]; 
        double arith_mulf_88 = (memref_load_87 * func_arg_2); 
        double memref_load_89 = func_arg_6[for_iter_69][arith_addi_85]; 
        double arith_mulf_90 = (arith_mulf_88 * memref_load_89); 
        double memref_load_91 = func_arg_6[for_iter_71][arith_addi_85]; 
        double arith_mulf_92 = (memref_load_91 * func_arg_2); 
        double memref_load_93 = func_arg_5[for_iter_69][arith_addi_85]; 
        double arith_mulf_94 = (arith_mulf_92 * memref_load_93); 
        double arith_addf_95 = (arith_mulf_90 + arith_mulf_94); 
        double arith_addf_96 = (memref_load_86 + arith_addf_95); 
        func_arg_4[for_iter_69][for_iter_71] = arith_addf_96; 
        int arith_addi_97 = (arith_muli_73 + arith_const_10); 
        double memref_load_98 = func_arg_4[for_iter_69][for_iter_71]; 
        double memref_load_99 = func_arg_5[for_iter_71][arith_addi_97]; 
        double arith_mulf_100 = (memref_load_99 * func_arg_2); 
        double memref_load_101 = func_arg_6[for_iter_69][arith_addi_97]; 
        double arith_mulf_102 = (arith_mulf_100 * memref_load_101); 
        double memref_load_103 = func_arg_6[for_iter_71][arith_addi_97]; 
        double arith_mulf_104 = (memref_load_103 * func_arg_2); 
        double memref_load_105 = func_arg_5[for_iter_69][arith_addi_97]; 
        double arith_mulf_106 = (arith_mulf_104 * memref_load_105); 
        double arith_addf_107 = (arith_mulf_102 + arith_mulf_106); 
        double arith_addf_108 = (memref_load_98 + arith_addf_107); 
        func_arg_4[for_iter_69][for_iter_71] = arith_addf_108; 
        int arith_addi_109 = (arith_muli_73 + arith_const_9); 
        double memref_load_110 = func_arg_4[for_iter_69][for_iter_71]; 
        double memref_load_111 = func_arg_5[for_iter_71][arith_addi_109]; 
        double arith_mulf_112 = (memref_load_111 * func_arg_2); 
        double memref_load_113 = func_arg_6[for_iter_69][arith_addi_109]; 
        double arith_mulf_114 = (arith_mulf_112 * memref_load_113); 
        double memref_load_115 = func_arg_6[for_iter_71][arith_addi_109]; 
        double arith_mulf_116 = (memref_load_115 * func_arg_2); 
        double memref_load_117 = func_arg_5[for_iter_69][arith_addi_109]; 
        double arith_mulf_118 = (arith_mulf_116 * memref_load_117); 
        double arith_addf_119 = (arith_mulf_114 + arith_mulf_118); 
        double arith_addf_120 = (memref_load_110 + arith_addf_119); 
        func_arg_4[for_iter_69][for_iter_71] = arith_addf_120; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
