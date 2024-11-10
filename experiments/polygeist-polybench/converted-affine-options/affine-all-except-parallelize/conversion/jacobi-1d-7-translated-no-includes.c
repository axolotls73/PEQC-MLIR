#pragma pocc-region-start
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 28; 
  int arith_const_5 = 27; 
  int arith_const_6 = -2; 
  int arith_const_7 = 29; 
  int arith_const_8 = 32; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 15; 
  int arith_const_12 = 20; 
  int arith_const_13 = -14; 
  int arith_const_14 = 16; 
  double arith_const_15 = 0.333330; 
  int arith_const_16 = 0; 
  int arith_const_17 = 3; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_18; for_iter_20 += arith_const_18) {
      int arith_muli_21 = (for_iter_19 * arith_const_14); 
      int arith_muli_22 = (for_iter_20 * arith_const_14); 
      int arith_addi_23 = (arith_muli_21 + arith_muli_22); 
      int arith_addi_24 = (arith_addi_23 + arith_const_13); 
      int arith_maxsi_25 = max(arith_addi_24, arith_const_16); 
      int arith_muli_26 = (for_iter_19 * arith_const_14); 
      int arith_muli_27 = (for_iter_20 * arith_const_14); 
      int arith_addi_28 = (arith_muli_26 + arith_muli_27); 
      int arith_addi_29 = (arith_addi_28 + arith_const_11); 
      int arith_minsi_30 = min(arith_addi_29, arith_const_12); 
      for (int for_iter_31 = arith_maxsi_25; for_iter_31 < arith_minsi_30; for_iter_31 += arith_const_18) {
        int arith_muli_32 = (for_iter_19 * arith_const_10); 
        int arith_muli_33 = (for_iter_20 * arith_const_10); 
        int arith_addi_34 = (arith_muli_32 + arith_muli_33); 
        int arith_cmpi_35 = (for_iter_31 < arith_const_16); 
        int arith_subi_36 = (arith_const_10 - for_iter_31); 
        int arith_select_37 = (arith_cmpi_35 ? arith_subi_36 : for_iter_31); 
        int arith_divi_38 = (arith_select_37 / arith_const_14); 
        int arith_subi_39 = (arith_const_10 - arith_divi_38); 
        int arith_select_40 = (arith_cmpi_35 ? arith_subi_39 : arith_divi_38); 
        int arith_addi_41 = (arith_addi_34 + arith_select_40); 
        int arith_cmpi_42 = (arith_addi_41 >= arith_const_16); 
        if (arith_cmpi_42) {
          double memref_load_43 = func_arg_2[arith_const_16]; 
          double memref_load_44 = func_arg_2[arith_const_18]; 
          double arith_addf_45 = (memref_load_43 + memref_load_44); 
          double memref_load_46 = func_arg_2[arith_const_9]; 
          double arith_addf_47 = (arith_addf_45 + memref_load_46); 
          double arith_mulf_48 = (arith_addf_47 * arith_const_15); 
          func_arg_3[arith_const_18] = arith_mulf_48; 
        }
        int arith_muli_49 = (for_iter_19 * arith_const_8); 
        int arith_muli_50 = (for_iter_20 * arith_const_8); 
        int arith_addi_51 = (arith_muli_49 + arith_muli_50); 
        int arith_muli_52 = (for_iter_31 * arith_const_9); 
        int arith_addi_53 = (arith_muli_52 + arith_const_9); 
        int arith_maxsi_54 = max(arith_addi_51, arith_addi_53); 
        int arith_muli_55 = (for_iter_19 * arith_const_8); 
        int arith_muli_56 = (for_iter_20 * arith_const_8); 
        int arith_addi_57 = (arith_muli_55 + arith_muli_56); 
        int arith_addi_58 = (arith_addi_57 + arith_const_8); 
        int arith_muli_59 = (for_iter_31 * arith_const_9); 
        int arith_addi_60 = (arith_muli_59 + arith_const_7); 
        int arith_minsi_61 = min(arith_addi_58, arith_addi_60); 
        for (int for_iter_62 = arith_maxsi_54; for_iter_62 < arith_minsi_61; for_iter_62 += arith_const_18) {
          int arith_muli_63 = (for_iter_31 * arith_const_6); 
          int arith_addi_64 = (arith_muli_63 + for_iter_62); 
          int arith_addi_65 = (arith_addi_64 + arith_const_10); 
          double memref_load_66 = func_arg_2[arith_addi_65]; 
          int arith_muli_67 = (for_iter_31 * arith_const_6); 
          int arith_addi_68 = (arith_muli_67 + for_iter_62); 
          double memref_load_69 = func_arg_2[arith_addi_68]; 
          double arith_addf_70 = (memref_load_66 + memref_load_69); 
          int arith_muli_71 = (for_iter_31 * arith_const_6); 
          int arith_addi_72 = (arith_muli_71 + for_iter_62); 
          int arith_addi_73 = (arith_addi_72 + arith_const_18); 
          double memref_load_74 = func_arg_2[arith_addi_73]; 
          double arith_addf_75 = (arith_addf_70 + memref_load_74); 
          double arith_mulf_76 = (arith_addf_75 * arith_const_15); 
          int arith_muli_77 = (for_iter_31 * arith_const_6); 
          int arith_addi_78 = (arith_muli_77 + for_iter_62); 
          func_arg_3[arith_addi_78] = arith_mulf_76; 
          int arith_muli_79 = (for_iter_31 * arith_const_6); 
          int arith_addi_80 = (arith_muli_79 + for_iter_62); 
          int arith_addi_81 = (arith_addi_80 + arith_const_6); 
          double memref_load_82 = func_arg_3[arith_addi_81]; 
          int arith_muli_83 = (for_iter_31 * arith_const_6); 
          int arith_addi_84 = (arith_muli_83 + for_iter_62); 
          int arith_addi_85 = (arith_addi_84 + arith_const_10); 
          double memref_load_86 = func_arg_3[arith_addi_85]; 
          double arith_addf_87 = (memref_load_82 + memref_load_86); 
          int arith_muli_88 = (for_iter_31 * arith_const_6); 
          int arith_addi_89 = (arith_muli_88 + for_iter_62); 
          double memref_load_90 = func_arg_3[arith_addi_89]; 
          double arith_addf_91 = (arith_addf_87 + memref_load_90); 
          double arith_mulf_92 = (arith_addf_91 * arith_const_15); 
          int arith_muli_93 = (for_iter_31 * arith_const_6); 
          int arith_addi_94 = (arith_muli_93 + for_iter_62); 
          int arith_addi_95 = (arith_addi_94 + arith_const_10); 
          func_arg_2[arith_addi_95] = arith_mulf_92; 
        }
        int arith_addi_96 = (for_iter_19 + for_iter_20); 
        int arith_addi_97 = (for_iter_31 + arith_const_10); 
        int arith_cmpi_98 = (arith_addi_97 <= arith_const_16); 
        int arith_subi_99 = (arith_const_16 - arith_addi_97); 
        int arith_subi_100 = (arith_addi_97 - arith_const_18); 
        int arith_select_101 = (arith_cmpi_98 ? arith_subi_99 : arith_subi_100); 
        int arith_divi_102 = (arith_select_101 / arith_const_14); 
        int arith_subi_103 = (arith_const_16 - arith_divi_102); 
        int arith_addi_104 = (arith_divi_102 + arith_const_18); 
        int arith_select_105 = (arith_cmpi_98 ? arith_subi_103 : arith_addi_104); 
        int arith_muli_106 = (arith_select_105 * arith_const_10); 
        int arith_addi_107 = (arith_addi_96 + arith_muli_106); 
        int arith_cmpi_108 = (arith_addi_107 >= arith_const_16); 
        if (arith_cmpi_108) {
          double memref_load_109 = func_arg_3[arith_const_5]; 
          double memref_load_110 = func_arg_3[arith_const_4]; 
          double arith_addf_111 = (memref_load_109 + memref_load_110); 
          double memref_load_112 = func_arg_3[arith_const_7]; 
          double arith_addf_113 = (arith_addf_111 + memref_load_112); 
          double arith_mulf_114 = (arith_addf_113 * arith_const_15); 
          func_arg_2[arith_const_4] = arith_mulf_114; 
        }
      }
      int arith_addi_115 = (for_iter_19 + for_iter_20); 
      int arith_cmpi_116 = (arith_addi_115 == arith_const_16); 
      if (arith_cmpi_116) {
        double memref_load_117 = func_arg_2[arith_const_16]; 
        double memref_load_118 = func_arg_2[arith_const_18]; 
        double arith_addf_119 = (memref_load_117 + memref_load_118); 
        double memref_load_120 = func_arg_2[arith_const_9]; 
        double arith_addf_121 = (arith_addf_119 + memref_load_120); 
        double arith_mulf_122 = (arith_addf_121 * arith_const_15); 
        func_arg_3[arith_const_18] = arith_mulf_122; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
