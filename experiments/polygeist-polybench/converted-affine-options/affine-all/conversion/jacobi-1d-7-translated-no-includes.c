#pragma pocc-region-start
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 28; 
  int arith_const_5 = 27; 
  int arith_const_6 = -2; 
  int arith_const_7 = 29; 
  int arith_const_8 = 1024; 
  int arith_const_9 = 2; 
  int arith_const_10 = -32; 
  int arith_const_11 = -1; 
  int arith_const_12 = 15; 
  int arith_const_13 = 20; 
  int arith_const_14 = -14; 
  int arith_const_15 = 512; 
  int arith_const_16 = 16; 
  int arith_const_17 = 3; 
  int arith_const_18 = 32; 
  double arith_const_19 = 0.333330; 
  int arith_const_20 = 0; 
  int arith_const_21 = 1; 
  int* async_group_22; 
  int async_group_index_23 = 0; 
  int for_iter_arg_25 = arith_const_20; 
  for (int for_iter_24 = arith_const_20; for_iter_24 < arith_const_21; for_iter_24 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_26); 
    #pragma peqc async_execute
    {
      for (int for_iter_27 = arith_const_20; for_iter_27 < arith_const_17; for_iter_27 += arith_const_21) {
        int arith_muli_28 = (for_iter_27 * arith_const_16); 
        int arith_muli_29 = (for_iter_24 * arith_const_15); 
        int arith_addi_30 = (arith_muli_28 + arith_muli_29); 
        int arith_addi_31 = (arith_addi_30 + arith_const_14); 
        int arith_maxsi_32 = max(arith_addi_31, arith_const_20); 
        int arith_muli_33 = (for_iter_27 * arith_const_16); 
        int arith_muli_34 = (for_iter_24 * arith_const_15); 
        int arith_addi_35 = (arith_muli_33 + arith_muli_34); 
        int arith_addi_36 = (arith_addi_35 + arith_const_12); 
        int arith_minsi_37 = min(arith_addi_36, arith_const_13); 
        for (int for_iter_38 = arith_maxsi_32; for_iter_38 < arith_minsi_37; for_iter_38 += arith_const_21) {
          int arith_muli_39 = (for_iter_27 * arith_const_11); 
          int arith_muli_40 = (for_iter_24 * arith_const_10); 
          int arith_addi_41 = (arith_muli_39 + arith_muli_40); 
          int arith_cmpi_42 = (for_iter_38 < arith_const_20); 
          int arith_subi_43 = (arith_const_11 - for_iter_38); 
          int arith_select_44 = (arith_cmpi_42 ? arith_subi_43 : for_iter_38); 
          int arith_divi_45 = (arith_select_44 / arith_const_16); 
          int arith_subi_46 = (arith_const_11 - arith_divi_45); 
          int arith_select_47 = (arith_cmpi_42 ? arith_subi_46 : arith_divi_45); 
          int arith_addi_48 = (arith_addi_41 + arith_select_47); 
          int arith_cmpi_49 = (arith_addi_48 >= arith_const_20); 
          if (arith_cmpi_49) {
            double memref_load_50 = func_arg_2[arith_const_20]; 
            double memref_load_51 = func_arg_2[arith_const_21]; 
            double arith_addf_52 = (memref_load_50 + memref_load_51); 
            double memref_load_53 = func_arg_2[arith_const_9]; 
            double arith_addf_54 = (arith_addf_52 + memref_load_53); 
            double arith_mulf_55 = (arith_addf_54 * arith_const_19); 
            func_arg_3[arith_const_21] = arith_mulf_55; 
          }
          int arith_muli_56 = (for_iter_27 * arith_const_18); 
          int arith_muli_57 = (for_iter_24 * arith_const_8); 
          int arith_addi_58 = (arith_muli_56 + arith_muli_57); 
          int arith_muli_59 = (for_iter_38 * arith_const_9); 
          int arith_addi_60 = (arith_muli_59 + arith_const_9); 
          int arith_maxsi_61 = max(arith_addi_58, arith_addi_60); 
          int arith_muli_62 = (for_iter_27 * arith_const_18); 
          int arith_muli_63 = (for_iter_24 * arith_const_8); 
          int arith_addi_64 = (arith_muli_62 + arith_muli_63); 
          int arith_addi_65 = (arith_addi_64 + arith_const_18); 
          int arith_muli_66 = (for_iter_38 * arith_const_9); 
          int arith_addi_67 = (arith_muli_66 + arith_const_7); 
          int arith_minsi_68 = min(arith_addi_65, arith_addi_67); 
          for (int for_iter_69 = arith_maxsi_61; for_iter_69 < arith_minsi_68; for_iter_69 += arith_const_21) {
            int arith_muli_70 = (for_iter_38 * arith_const_6); 
            int arith_addi_71 = (arith_muli_70 + for_iter_69); 
            int arith_addi_72 = (arith_addi_71 + arith_const_11); 
            double memref_load_73 = func_arg_2[arith_addi_72]; 
            int arith_muli_74 = (for_iter_38 * arith_const_6); 
            int arith_addi_75 = (arith_muli_74 + for_iter_69); 
            double memref_load_76 = func_arg_2[arith_addi_75]; 
            double arith_addf_77 = (memref_load_73 + memref_load_76); 
            int arith_muli_78 = (for_iter_38 * arith_const_6); 
            int arith_addi_79 = (arith_muli_78 + for_iter_69); 
            int arith_addi_80 = (arith_addi_79 + arith_const_21); 
            double memref_load_81 = func_arg_2[arith_addi_80]; 
            double arith_addf_82 = (arith_addf_77 + memref_load_81); 
            double arith_mulf_83 = (arith_addf_82 * arith_const_19); 
            int arith_muli_84 = (for_iter_38 * arith_const_6); 
            int arith_addi_85 = (arith_muli_84 + for_iter_69); 
            func_arg_3[arith_addi_85] = arith_mulf_83; 
            int arith_muli_86 = (for_iter_38 * arith_const_6); 
            int arith_addi_87 = (arith_muli_86 + for_iter_69); 
            int arith_addi_88 = (arith_addi_87 + arith_const_6); 
            double memref_load_89 = func_arg_3[arith_addi_88]; 
            int arith_muli_90 = (for_iter_38 * arith_const_6); 
            int arith_addi_91 = (arith_muli_90 + for_iter_69); 
            int arith_addi_92 = (arith_addi_91 + arith_const_11); 
            double memref_load_93 = func_arg_3[arith_addi_92]; 
            double arith_addf_94 = (memref_load_89 + memref_load_93); 
            int arith_muli_95 = (for_iter_38 * arith_const_6); 
            int arith_addi_96 = (arith_muli_95 + for_iter_69); 
            double memref_load_97 = func_arg_3[arith_addi_96]; 
            double arith_addf_98 = (arith_addf_94 + memref_load_97); 
            double arith_mulf_99 = (arith_addf_98 * arith_const_19); 
            int arith_muli_100 = (for_iter_38 * arith_const_6); 
            int arith_addi_101 = (arith_muli_100 + for_iter_69); 
            int arith_addi_102 = (arith_addi_101 + arith_const_11); 
            func_arg_2[arith_addi_102] = arith_mulf_99; 
          }
          int arith_muli_103 = (for_iter_24 * arith_const_18); 
          int arith_addi_104 = (for_iter_27 + arith_muli_103); 
          int arith_addi_105 = (for_iter_38 + arith_const_11); 
          int arith_cmpi_106 = (arith_addi_105 <= arith_const_20); 
          int arith_subi_107 = (arith_const_20 - arith_addi_105); 
          int arith_subi_108 = (arith_addi_105 - arith_const_21); 
          int arith_select_109 = (arith_cmpi_106 ? arith_subi_107 : arith_subi_108); 
          int arith_divi_110 = (arith_select_109 / arith_const_16); 
          int arith_subi_111 = (arith_const_20 - arith_divi_110); 
          int arith_addi_112 = (arith_divi_110 + arith_const_21); 
          int arith_select_113 = (arith_cmpi_106 ? arith_subi_111 : arith_addi_112); 
          int arith_muli_114 = (arith_select_113 * arith_const_11); 
          int arith_addi_115 = (arith_addi_104 + arith_muli_114); 
          int arith_cmpi_116 = (arith_addi_115 >= arith_const_20); 
          if (arith_cmpi_116) {
            double memref_load_117 = func_arg_3[arith_const_5]; 
            double memref_load_118 = func_arg_3[arith_const_4]; 
            double arith_addf_119 = (memref_load_117 + memref_load_118); 
            double memref_load_120 = func_arg_3[arith_const_7]; 
            double arith_addf_121 = (arith_addf_119 + memref_load_120); 
            double arith_mulf_122 = (arith_addf_121 * arith_const_19); 
            func_arg_2[arith_const_4] = arith_mulf_122; 
          }
        }
        int arith_muli_123 = (for_iter_24 * arith_const_18); 
        int arith_addi_124 = (for_iter_27 + arith_muli_123); 
        int arith_cmpi_125 = (arith_addi_124 == arith_const_20); 
        if (arith_cmpi_125) {
          double memref_load_126 = func_arg_2[arith_const_20]; 
          double memref_load_127 = func_arg_2[arith_const_21]; 
          double arith_addf_128 = (memref_load_126 + memref_load_127); 
          double memref_load_129 = func_arg_2[arith_const_9]; 
          double arith_addf_130 = (arith_addf_128 + memref_load_129); 
          double arith_mulf_131 = (arith_addf_130 * arith_const_19); 
          func_arg_3[arith_const_21] = arith_mulf_131; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
    }
    async_group_22[async_group_index_23] = execute_token_26; 
    async_group_index_23++; 
    int arith_addi_132 = (for_iter_arg_25 + arith_const_21); 
    for_iter_arg_25 = arith_addi_132; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
