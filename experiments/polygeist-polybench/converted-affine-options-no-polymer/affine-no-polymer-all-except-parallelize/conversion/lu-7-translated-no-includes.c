#pragma pocc-region-start
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 40; 
  int arith_const_3 = -4; 
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 0; 
  int arith_const_9 = 10; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int arith_muli_12 = (for_iter_11 * arith_const_7); 
    for (int for_iter_13 = arith_const_8; for_iter_13 < arith_const_7; for_iter_13 += arith_const_10) {
      int arith_addi_14 = (arith_muli_12 + for_iter_13); 
      int arith_muli_15 = (for_iter_11 * arith_const_7); 
      int arith_addi_16 = (for_iter_13 + arith_muli_15); 
      for (int for_iter_17 = arith_const_8; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_10) {
        int arith_cmpi_18 = (for_iter_17 < arith_const_8); 
        int arith_subi_19 = (arith_const_6 - for_iter_17); 
        int arith_select_20 = (arith_cmpi_18 ? arith_subi_19 : for_iter_17); 
        int arith_divi_21 = (arith_select_20 / arith_const_7); 
        int arith_subi_22 = (arith_const_6 - arith_divi_21); 
        int arith_select_23 = (arith_cmpi_18 ? arith_subi_22 : arith_divi_21); 
        for (int for_iter_24 = arith_const_8; for_iter_24 < arith_select_23; for_iter_24 += arith_const_10) {
          int arith_muli_25 = (for_iter_24 * arith_const_7); 
          double memref_load_26 = func_arg_1[arith_addi_14][arith_muli_25]; 
          double memref_load_27 = func_arg_1[arith_muli_25][for_iter_17]; 
          double arith_mulf_28 = (memref_load_26 * memref_load_27); 
          double memref_load_29 = func_arg_1[arith_addi_14][for_iter_17]; 
          double arith_subf_30 = (memref_load_29 - arith_mulf_28); 
          func_arg_1[arith_addi_14][for_iter_17] = arith_subf_30; 
          int arith_addi_31 = (arith_muli_25 + arith_const_10); 
          double memref_load_32 = func_arg_1[arith_addi_14][arith_addi_31]; 
          double memref_load_33 = func_arg_1[arith_addi_31][for_iter_17]; 
          double arith_mulf_34 = (memref_load_32 * memref_load_33); 
          double memref_load_35 = func_arg_1[arith_addi_14][for_iter_17]; 
          double arith_subf_36 = (memref_load_35 - arith_mulf_34); 
          func_arg_1[arith_addi_14][for_iter_17] = arith_subf_36; 
          int arith_addi_37 = (arith_muli_25 + arith_const_5); 
          double memref_load_38 = func_arg_1[arith_addi_14][arith_addi_37]; 
          double memref_load_39 = func_arg_1[arith_addi_37][for_iter_17]; 
          double arith_mulf_40 = (memref_load_38 * memref_load_39); 
          double memref_load_41 = func_arg_1[arith_addi_14][for_iter_17]; 
          double arith_subf_42 = (memref_load_41 - arith_mulf_40); 
          func_arg_1[arith_addi_14][for_iter_17] = arith_subf_42; 
          int arith_addi_43 = (arith_muli_25 + arith_const_4); 
          double memref_load_44 = func_arg_1[arith_addi_14][arith_addi_43]; 
          double memref_load_45 = func_arg_1[arith_addi_43][for_iter_17]; 
          double arith_mulf_46 = (memref_load_44 * memref_load_45); 
          double memref_load_47 = func_arg_1[arith_addi_14][for_iter_17]; 
          double arith_subf_48 = (memref_load_47 - arith_mulf_46); 
          func_arg_1[arith_addi_14][for_iter_17] = arith_subf_48; 
        }
        int arith_remsi_49 = (for_iter_17 % arith_const_7); 
        int arith_cmpi_50 = (arith_remsi_49 < arith_const_8); 
        int arith_addi_51 = (arith_remsi_49 + arith_const_7); 
        int arith_select_52 = (arith_cmpi_50 ? arith_addi_51 : arith_remsi_49); 
        for (int for_iter_53 = arith_const_8; for_iter_53 < arith_select_52; for_iter_53 += arith_const_10) {
          int arith_cmpi_54 = (for_iter_17 < arith_const_8); 
          int arith_subi_55 = (arith_const_6 - for_iter_17); 
          int arith_select_56 = (arith_cmpi_54 ? arith_subi_55 : for_iter_17); 
          int arith_divi_57 = (arith_select_56 / arith_const_7); 
          int arith_subi_58 = (arith_const_6 - arith_divi_57); 
          int arith_select_59 = (arith_cmpi_54 ? arith_subi_58 : arith_divi_57); 
          int arith_muli_60 = (arith_select_59 * arith_const_7); 
          int arith_addi_61 = (for_iter_53 + arith_muli_60); 
          double memref_load_62 = func_arg_1[arith_addi_14][arith_addi_61]; 
          double memref_load_63 = func_arg_1[arith_addi_61][for_iter_17]; 
          double arith_mulf_64 = (memref_load_62 * memref_load_63); 
          double memref_load_65 = func_arg_1[arith_addi_14][for_iter_17]; 
          double arith_subf_66 = (memref_load_65 - arith_mulf_64); 
          func_arg_1[arith_addi_14][for_iter_17] = arith_subf_66; 
        }
        double memref_load_67 = func_arg_1[for_iter_17][for_iter_17]; 
        double memref_load_68 = func_arg_1[arith_addi_14][for_iter_17]; 
        double arith_divf_69 = (memref_load_68 / memref_load_67); 
        func_arg_1[arith_addi_14][for_iter_17] = arith_divf_69; 
      }
      int arith_muli_70 = (for_iter_13 * arith_const_6); 
      int arith_muli_71 = (for_iter_11 * arith_const_3); 
      int arith_addi_72 = (arith_muli_70 + arith_muli_71); 
      int arith_addi_73 = (arith_addi_72 + arith_const_2); 
      for (int for_iter_74 = arith_const_8; for_iter_74 < arith_addi_73; for_iter_74 += arith_const_10) {
        int arith_addi_75 = (arith_addi_14 + for_iter_74); 
        int arith_cmpi_76 = (for_iter_13 < arith_const_8); 
        int arith_subi_77 = (arith_const_6 - for_iter_13); 
        int arith_select_78 = (arith_cmpi_76 ? arith_subi_77 : for_iter_13); 
        int arith_divi_79 = (arith_select_78 / arith_const_7); 
        int arith_subi_80 = (arith_const_6 - arith_divi_79); 
        int arith_select_81 = (arith_cmpi_76 ? arith_subi_80 : arith_divi_79); 
        int arith_addi_82 = (for_iter_11 + arith_select_81); 
        for (int for_iter_83 = arith_const_8; for_iter_83 < arith_addi_82; for_iter_83 += arith_const_10) {
          int arith_muli_84 = (for_iter_83 * arith_const_7); 
          double memref_load_85 = func_arg_1[arith_addi_14][arith_muli_84]; 
          double memref_load_86 = func_arg_1[arith_muli_84][arith_addi_75]; 
          double arith_mulf_87 = (memref_load_85 * memref_load_86); 
          double memref_load_88 = func_arg_1[arith_addi_14][arith_addi_75]; 
          double arith_subf_89 = (memref_load_88 - arith_mulf_87); 
          func_arg_1[arith_addi_14][arith_addi_75] = arith_subf_89; 
          int arith_addi_90 = (arith_muli_84 + arith_const_10); 
          double memref_load_91 = func_arg_1[arith_addi_14][arith_addi_90]; 
          double memref_load_92 = func_arg_1[arith_addi_90][arith_addi_75]; 
          double arith_mulf_93 = (memref_load_91 * memref_load_92); 
          double memref_load_94 = func_arg_1[arith_addi_14][arith_addi_75]; 
          double arith_subf_95 = (memref_load_94 - arith_mulf_93); 
          func_arg_1[arith_addi_14][arith_addi_75] = arith_subf_95; 
          int arith_addi_96 = (arith_muli_84 + arith_const_5); 
          double memref_load_97 = func_arg_1[arith_addi_14][arith_addi_96]; 
          double memref_load_98 = func_arg_1[arith_addi_96][arith_addi_75]; 
          double arith_mulf_99 = (memref_load_97 * memref_load_98); 
          double memref_load_100 = func_arg_1[arith_addi_14][arith_addi_75]; 
          double arith_subf_101 = (memref_load_100 - arith_mulf_99); 
          func_arg_1[arith_addi_14][arith_addi_75] = arith_subf_101; 
          int arith_addi_102 = (arith_muli_84 + arith_const_4); 
          double memref_load_103 = func_arg_1[arith_addi_14][arith_addi_102]; 
          double memref_load_104 = func_arg_1[arith_addi_102][arith_addi_75]; 
          double arith_mulf_105 = (memref_load_103 * memref_load_104); 
          double memref_load_106 = func_arg_1[arith_addi_14][arith_addi_75]; 
          double arith_subf_107 = (memref_load_106 - arith_mulf_105); 
          func_arg_1[arith_addi_14][arith_addi_75] = arith_subf_107; 
        }
        int arith_remsi_108 = (arith_addi_14 % arith_const_7); 
        int arith_cmpi_109 = (arith_remsi_108 < arith_const_8); 
        int arith_addi_110 = (arith_remsi_108 + arith_const_7); 
        int arith_select_111 = (arith_cmpi_109 ? arith_addi_110 : arith_remsi_108); 
        for (int for_iter_112 = arith_const_8; for_iter_112 < arith_select_111; for_iter_112 += arith_const_10) {
          int arith_cmpi_113 = (arith_addi_14 < arith_const_8); 
          int arith_subi_114 = (arith_const_6 - arith_addi_14); 
          int arith_select_115 = (arith_cmpi_113 ? arith_subi_114 : arith_addi_14); 
          int arith_divi_116 = (arith_select_115 / arith_const_7); 
          int arith_subi_117 = (arith_const_6 - arith_divi_116); 
          int arith_select_118 = (arith_cmpi_113 ? arith_subi_117 : arith_divi_116); 
          int arith_muli_119 = (arith_select_118 * arith_const_7); 
          int arith_addi_120 = (for_iter_112 + arith_muli_119); 
          double memref_load_121 = func_arg_1[arith_addi_14][arith_addi_120]; 
          double memref_load_122 = func_arg_1[arith_addi_120][arith_addi_75]; 
          double arith_mulf_123 = (memref_load_121 * memref_load_122); 
          double memref_load_124 = func_arg_1[arith_addi_14][arith_addi_75]; 
          double arith_subf_125 = (memref_load_124 - arith_mulf_123); 
          func_arg_1[arith_addi_14][arith_addi_75] = arith_subf_125; 
        }
      }
    }
  }
  return; 

}
#pragma pocc-region-end
