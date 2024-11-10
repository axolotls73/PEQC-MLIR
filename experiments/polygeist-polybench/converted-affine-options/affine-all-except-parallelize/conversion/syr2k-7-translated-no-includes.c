#pragma pocc-region-start
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 5; 
  int arith_const_8 = -4; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = -1; 
  int arith_const_12 = 4; 
  int arith_const_13 = 0; 
  int arith_const_14 = 30; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    for (int for_iter_17 = arith_const_13; for_iter_17 < arith_const_15; for_iter_17 += arith_const_15) {
      int arith_addi_18 = (for_iter_16 + for_iter_17); 
      int arith_addi_19 = (for_iter_16 + for_iter_17); 
      int arith_addi_20 = (arith_addi_19 + arith_const_15); 
      int arith_cmpi_21 = (arith_addi_20 < arith_const_13); 
      int arith_subi_22 = (arith_const_11 - arith_addi_20); 
      int arith_select_23 = (arith_cmpi_21 ? arith_subi_22 : arith_addi_20); 
      int arith_divi_24 = (arith_select_23 / arith_const_12); 
      int arith_subi_25 = (arith_const_11 - arith_divi_24); 
      int arith_select_26 = (arith_cmpi_21 ? arith_subi_25 : arith_divi_24); 
      for (int for_iter_27 = arith_const_13; for_iter_27 < arith_select_26; for_iter_27 += arith_const_15) {
        int arith_muli_28 = (for_iter_27 * arith_const_12); 
        double memref_load_29 = func_arg_4[arith_addi_18][arith_muli_28]; 
        double arith_mulf_30 = (memref_load_29 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_muli_28] = arith_mulf_30; 
        int arith_addi_31 = (arith_muli_28 + arith_const_15); 
        double memref_load_32 = func_arg_4[arith_addi_18][arith_addi_31]; 
        double arith_mulf_33 = (memref_load_32 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_31] = arith_mulf_33; 
        int arith_addi_34 = (arith_muli_28 + arith_const_10); 
        double memref_load_35 = func_arg_4[arith_addi_18][arith_addi_34]; 
        double arith_mulf_36 = (memref_load_35 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_34] = arith_mulf_36; 
        int arith_addi_37 = (arith_muli_28 + arith_const_9); 
        double memref_load_38 = func_arg_4[arith_addi_18][arith_addi_37]; 
        double arith_mulf_39 = (memref_load_38 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_37] = arith_mulf_39; 
      }
      int arith_addi_40 = (for_iter_16 + for_iter_17); 
      int arith_addi_41 = (for_iter_16 + for_iter_17); 
      int arith_addi_42 = (arith_addi_41 + arith_const_15); 
      int arith_cmpi_43 = (arith_addi_42 < arith_const_13); 
      int arith_subi_44 = (arith_const_11 - arith_addi_42); 
      int arith_select_45 = (arith_cmpi_43 ? arith_subi_44 : arith_addi_42); 
      int arith_divi_46 = (arith_select_45 / arith_const_12); 
      int arith_subi_47 = (arith_const_11 - arith_divi_46); 
      int arith_select_48 = (arith_cmpi_43 ? arith_subi_47 : arith_divi_46); 
      int arith_muli_49 = (arith_select_48 * arith_const_8); 
      int arith_addi_50 = (arith_addi_40 + arith_muli_49); 
      int arith_addi_51 = (arith_addi_50 + arith_const_15); 
      for (int for_iter_52 = arith_const_13; for_iter_52 < arith_addi_51; for_iter_52 += arith_const_15) {
        int arith_addi_53 = (arith_addi_18 + arith_const_15); 
        int arith_cmpi_54 = (arith_addi_53 < arith_const_13); 
        int arith_subi_55 = (arith_const_11 - arith_addi_53); 
        int arith_select_56 = (arith_cmpi_54 ? arith_subi_55 : arith_addi_53); 
        int arith_divi_57 = (arith_select_56 / arith_const_12); 
        int arith_subi_58 = (arith_const_11 - arith_divi_57); 
        int arith_select_59 = (arith_cmpi_54 ? arith_subi_58 : arith_divi_57); 
        int arith_muli_60 = (arith_select_59 * arith_const_12); 
        int arith_addi_61 = (for_iter_52 + arith_muli_60); 
        double memref_load_62 = func_arg_4[arith_addi_18][arith_addi_61]; 
        double arith_mulf_63 = (memref_load_62 * func_arg_3); 
        func_arg_4[arith_addi_18][arith_addi_61] = arith_mulf_63; 
      }
    }
  }
  for (int for_iter_64 = arith_const_13; for_iter_64 < arith_const_14; for_iter_64 += arith_const_15) {
    int arith_addi_65 = (for_iter_64 + arith_const_15); 
    for (int for_iter_66 = arith_const_13; for_iter_66 < arith_addi_65; for_iter_66 += arith_const_15) {
      for (int for_iter_67 = arith_const_13; for_iter_67 < arith_const_7; for_iter_67 += arith_const_15) {
        int arith_muli_68 = (for_iter_67 * arith_const_12); 
        double memref_load_69 = func_arg_4[for_iter_64][for_iter_66]; 
        double memref_load_70 = func_arg_5[for_iter_66][arith_muli_68]; 
        double arith_mulf_71 = (memref_load_70 * func_arg_2); 
        double memref_load_72 = func_arg_6[for_iter_64][arith_muli_68]; 
        double arith_mulf_73 = (arith_mulf_71 * memref_load_72); 
        double memref_load_74 = func_arg_6[for_iter_66][arith_muli_68]; 
        double arith_mulf_75 = (memref_load_74 * func_arg_2); 
        double memref_load_76 = func_arg_5[for_iter_64][arith_muli_68]; 
        double arith_mulf_77 = (arith_mulf_75 * memref_load_76); 
        double arith_addf_78 = (arith_mulf_73 + arith_mulf_77); 
        double arith_addf_79 = (memref_load_69 + arith_addf_78); 
        func_arg_4[for_iter_64][for_iter_66] = arith_addf_79; 
        int arith_addi_80 = (arith_muli_68 + arith_const_15); 
        double memref_load_81 = func_arg_4[for_iter_64][for_iter_66]; 
        double memref_load_82 = func_arg_5[for_iter_66][arith_addi_80]; 
        double arith_mulf_83 = (memref_load_82 * func_arg_2); 
        double memref_load_84 = func_arg_6[for_iter_64][arith_addi_80]; 
        double arith_mulf_85 = (arith_mulf_83 * memref_load_84); 
        double memref_load_86 = func_arg_6[for_iter_66][arith_addi_80]; 
        double arith_mulf_87 = (memref_load_86 * func_arg_2); 
        double memref_load_88 = func_arg_5[for_iter_64][arith_addi_80]; 
        double arith_mulf_89 = (arith_mulf_87 * memref_load_88); 
        double arith_addf_90 = (arith_mulf_85 + arith_mulf_89); 
        double arith_addf_91 = (memref_load_81 + arith_addf_90); 
        func_arg_4[for_iter_64][for_iter_66] = arith_addf_91; 
        int arith_addi_92 = (arith_muli_68 + arith_const_10); 
        double memref_load_93 = func_arg_4[for_iter_64][for_iter_66]; 
        double memref_load_94 = func_arg_5[for_iter_66][arith_addi_92]; 
        double arith_mulf_95 = (memref_load_94 * func_arg_2); 
        double memref_load_96 = func_arg_6[for_iter_64][arith_addi_92]; 
        double arith_mulf_97 = (arith_mulf_95 * memref_load_96); 
        double memref_load_98 = func_arg_6[for_iter_66][arith_addi_92]; 
        double arith_mulf_99 = (memref_load_98 * func_arg_2); 
        double memref_load_100 = func_arg_5[for_iter_64][arith_addi_92]; 
        double arith_mulf_101 = (arith_mulf_99 * memref_load_100); 
        double arith_addf_102 = (arith_mulf_97 + arith_mulf_101); 
        double arith_addf_103 = (memref_load_93 + arith_addf_102); 
        func_arg_4[for_iter_64][for_iter_66] = arith_addf_103; 
        int arith_addi_104 = (arith_muli_68 + arith_const_9); 
        double memref_load_105 = func_arg_4[for_iter_64][for_iter_66]; 
        double memref_load_106 = func_arg_5[for_iter_66][arith_addi_104]; 
        double arith_mulf_107 = (memref_load_106 * func_arg_2); 
        double memref_load_108 = func_arg_6[for_iter_64][arith_addi_104]; 
        double arith_mulf_109 = (arith_mulf_107 * memref_load_108); 
        double memref_load_110 = func_arg_6[for_iter_66][arith_addi_104]; 
        double arith_mulf_111 = (memref_load_110 * func_arg_2); 
        double memref_load_112 = func_arg_5[for_iter_64][arith_addi_104]; 
        double arith_mulf_113 = (arith_mulf_111 * memref_load_112); 
        double arith_addf_114 = (arith_mulf_109 + arith_mulf_113); 
        double arith_addf_115 = (memref_load_105 + arith_addf_114); 
        func_arg_4[for_iter_64][for_iter_66] = arith_addf_115; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
