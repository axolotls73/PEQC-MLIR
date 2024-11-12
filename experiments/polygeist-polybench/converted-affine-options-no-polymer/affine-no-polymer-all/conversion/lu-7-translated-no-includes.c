#pragma pocc-region-start
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 42; 
  int arith_const_3 = 40; 
  int arith_const_4 = -4; 
  int arith_const_5 = 3; 
  int arith_const_6 = 2; 
  int arith_const_7 = -1; 
  int arith_const_8 = 4; 
  int arith_const_9 = 0; 
  int arith_const_10 = 10; 
  int arith_const_11 = 1; 
  for (int for_iter_12 = arith_const_9; for_iter_12 < arith_const_10; for_iter_12 += arith_const_11) {
    int arith_muli_13 = (for_iter_12 * arith_const_8); 
    for (int for_iter_14 = arith_const_9; for_iter_14 < arith_const_8; for_iter_14 += arith_const_11) {
      int arith_addi_15 = (arith_muli_13 + for_iter_14); 
      int arith_muli_16 = (for_iter_12 * arith_const_8); 
      int arith_addi_17 = (for_iter_14 + arith_muli_16); 
      for (int for_iter_18 = arith_const_9; for_iter_18 < arith_addi_17; for_iter_18 += arith_const_11) {
        int arith_cmpi_19 = (for_iter_18 < arith_const_9); 
        int arith_subi_20 = (arith_const_7 - for_iter_18); 
        int arith_select_21 = (arith_cmpi_19 ? arith_subi_20 : for_iter_18); 
        int arith_divi_22 = (arith_select_21 / arith_const_8); 
        int arith_subi_23 = (arith_const_7 - arith_divi_22); 
        int arith_select_24 = (arith_cmpi_19 ? arith_subi_23 : arith_divi_22); 
        for (int for_iter_25 = arith_const_9; for_iter_25 < arith_select_24; for_iter_25 += arith_const_11) {
          int arith_muli_26 = (for_iter_25 * arith_const_8); 
          double memref_load_27 = func_arg_1[arith_addi_15][arith_muli_26]; 
          double memref_load_28 = func_arg_1[arith_muli_26][for_iter_18]; 
          double arith_mulf_29 = (memref_load_27 * memref_load_28); 
          double memref_load_30 = func_arg_1[arith_addi_15][for_iter_18]; 
          double arith_subf_31 = (memref_load_30 - arith_mulf_29); 
          func_arg_1[arith_addi_15][for_iter_18] = arith_subf_31; 
          int arith_addi_32 = (arith_muli_26 + arith_const_11); 
          double memref_load_33 = func_arg_1[arith_addi_15][arith_addi_32]; 
          double memref_load_34 = func_arg_1[arith_addi_32][for_iter_18]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double memref_load_36 = func_arg_1[arith_addi_15][for_iter_18]; 
          double arith_subf_37 = (memref_load_36 - arith_mulf_35); 
          func_arg_1[arith_addi_15][for_iter_18] = arith_subf_37; 
          int arith_addi_38 = (arith_muli_26 + arith_const_6); 
          double memref_load_39 = func_arg_1[arith_addi_15][arith_addi_38]; 
          double memref_load_40 = func_arg_1[arith_addi_38][for_iter_18]; 
          double arith_mulf_41 = (memref_load_39 * memref_load_40); 
          double memref_load_42 = func_arg_1[arith_addi_15][for_iter_18]; 
          double arith_subf_43 = (memref_load_42 - arith_mulf_41); 
          func_arg_1[arith_addi_15][for_iter_18] = arith_subf_43; 
          int arith_addi_44 = (arith_muli_26 + arith_const_5); 
          double memref_load_45 = func_arg_1[arith_addi_15][arith_addi_44]; 
          double memref_load_46 = func_arg_1[arith_addi_44][for_iter_18]; 
          double arith_mulf_47 = (memref_load_45 * memref_load_46); 
          double memref_load_48 = func_arg_1[arith_addi_15][for_iter_18]; 
          double arith_subf_49 = (memref_load_48 - arith_mulf_47); 
          func_arg_1[arith_addi_15][for_iter_18] = arith_subf_49; 
        }
        int arith_remsi_50 = (for_iter_18 % arith_const_8); 
        int arith_cmpi_51 = (arith_remsi_50 < arith_const_9); 
        int arith_addi_52 = (arith_remsi_50 + arith_const_8); 
        int arith_select_53 = (arith_cmpi_51 ? arith_addi_52 : arith_remsi_50); 
        for (int for_iter_54 = arith_const_9; for_iter_54 < arith_select_53; for_iter_54 += arith_const_11) {
          int arith_cmpi_55 = (for_iter_18 < arith_const_9); 
          int arith_subi_56 = (arith_const_7 - for_iter_18); 
          int arith_select_57 = (arith_cmpi_55 ? arith_subi_56 : for_iter_18); 
          int arith_divi_58 = (arith_select_57 / arith_const_8); 
          int arith_subi_59 = (arith_const_7 - arith_divi_58); 
          int arith_select_60 = (arith_cmpi_55 ? arith_subi_59 : arith_divi_58); 
          int arith_muli_61 = (arith_select_60 * arith_const_8); 
          int arith_addi_62 = (for_iter_54 + arith_muli_61); 
          double memref_load_63 = func_arg_1[arith_addi_15][arith_addi_62]; 
          double memref_load_64 = func_arg_1[arith_addi_62][for_iter_18]; 
          double arith_mulf_65 = (memref_load_63 * memref_load_64); 
          double memref_load_66 = func_arg_1[arith_addi_15][for_iter_18]; 
          double arith_subf_67 = (memref_load_66 - arith_mulf_65); 
          func_arg_1[arith_addi_15][for_iter_18] = arith_subf_67; 
        }
        double memref_load_68 = func_arg_1[for_iter_18][for_iter_18]; 
        double memref_load_69 = func_arg_1[arith_addi_15][for_iter_18]; 
        double arith_divf_70 = (memref_load_69 / memref_load_68); 
        func_arg_1[arith_addi_15][for_iter_18] = arith_divf_70; 
      }
      int arith_muli_71 = (for_iter_14 * arith_const_7); 
      int arith_muli_72 = (for_iter_12 * arith_const_4); 
      int arith_addi_73 = (arith_muli_71 + arith_muli_72); 
      int arith_addi_74 = (arith_addi_73 + arith_const_3); 
      int* async_group_75; 
      int async_group_index_76 = 0; 
      int for_iter_arg_78 = arith_const_9; 
      for (int for_iter_77 = arith_const_9; for_iter_77 < arith_addi_74; for_iter_77 += arith_const_11) {
        PAST_NEW_SEMAPHORE(execute_token_79); 
        #pragma peqc async_execute
        {
          int arith_addi_80 = (arith_addi_15 + for_iter_77); 
          int arith_cmpi_81 = (for_iter_14 < arith_const_9); 
          int arith_subi_82 = (arith_const_7 - for_iter_14); 
          int arith_select_83 = (arith_cmpi_81 ? arith_subi_82 : for_iter_14); 
          int arith_divi_84 = (arith_select_83 / arith_const_8); 
          int arith_subi_85 = (arith_const_7 - arith_divi_84); 
          int arith_select_86 = (arith_cmpi_81 ? arith_subi_85 : arith_divi_84); 
          int arith_addi_87 = (for_iter_12 + arith_select_86); 
          for (int for_iter_88 = arith_const_9; for_iter_88 < arith_addi_87; for_iter_88 += arith_const_11) {
            int arith_muli_89 = (for_iter_88 * arith_const_8); 
            double memref_load_90 = func_arg_1[arith_addi_15][arith_muli_89]; 
            double memref_load_91 = func_arg_1[arith_muli_89][arith_addi_80]; 
            double arith_mulf_92 = (memref_load_90 * memref_load_91); 
            double memref_load_93 = func_arg_1[arith_addi_15][arith_addi_80]; 
            double arith_subf_94 = (memref_load_93 - arith_mulf_92); 
            func_arg_1[arith_addi_15][arith_addi_80] = arith_subf_94; 
            int arith_addi_95 = (arith_muli_89 + arith_const_11); 
            double memref_load_96 = func_arg_1[arith_addi_15][arith_addi_95]; 
            double memref_load_97 = func_arg_1[arith_addi_95][arith_addi_80]; 
            double arith_mulf_98 = (memref_load_96 * memref_load_97); 
            double memref_load_99 = func_arg_1[arith_addi_15][arith_addi_80]; 
            double arith_subf_100 = (memref_load_99 - arith_mulf_98); 
            func_arg_1[arith_addi_15][arith_addi_80] = arith_subf_100; 
            int arith_addi_101 = (arith_muli_89 + arith_const_6); 
            double memref_load_102 = func_arg_1[arith_addi_15][arith_addi_101]; 
            double memref_load_103 = func_arg_1[arith_addi_101][arith_addi_80]; 
            double arith_mulf_104 = (memref_load_102 * memref_load_103); 
            double memref_load_105 = func_arg_1[arith_addi_15][arith_addi_80]; 
            double arith_subf_106 = (memref_load_105 - arith_mulf_104); 
            func_arg_1[arith_addi_15][arith_addi_80] = arith_subf_106; 
            int arith_addi_107 = (arith_muli_89 + arith_const_5); 
            double memref_load_108 = func_arg_1[arith_addi_15][arith_addi_107]; 
            double memref_load_109 = func_arg_1[arith_addi_107][arith_addi_80]; 
            double arith_mulf_110 = (memref_load_108 * memref_load_109); 
            double memref_load_111 = func_arg_1[arith_addi_15][arith_addi_80]; 
            double arith_subf_112 = (memref_load_111 - arith_mulf_110); 
            func_arg_1[arith_addi_15][arith_addi_80] = arith_subf_112; 
          }
          int arith_remsi_113 = (arith_addi_15 % arith_const_8); 
          int arith_cmpi_114 = (arith_remsi_113 < arith_const_9); 
          int arith_addi_115 = (arith_remsi_113 + arith_const_8); 
          int arith_select_116 = (arith_cmpi_114 ? arith_addi_115 : arith_remsi_113); 
          for (int for_iter_117 = arith_const_9; for_iter_117 < arith_select_116; for_iter_117 += arith_const_11) {
            int arith_cmpi_118 = (arith_addi_15 < arith_const_9); 
            int arith_subi_119 = (arith_const_7 - arith_addi_15); 
            int arith_select_120 = (arith_cmpi_118 ? arith_subi_119 : arith_addi_15); 
            int arith_divi_121 = (arith_select_120 / arith_const_8); 
            int arith_subi_122 = (arith_const_7 - arith_divi_121); 
            int arith_select_123 = (arith_cmpi_118 ? arith_subi_122 : arith_divi_121); 
            int arith_muli_124 = (arith_select_123 * arith_const_8); 
            int arith_addi_125 = (for_iter_117 + arith_muli_124); 
            double memref_load_126 = func_arg_1[arith_addi_15][arith_addi_125]; 
            double memref_load_127 = func_arg_1[arith_addi_125][arith_addi_80]; 
            double arith_mulf_128 = (memref_load_126 * memref_load_127); 
            double memref_load_129 = func_arg_1[arith_addi_15][arith_addi_80]; 
            double arith_subf_130 = (memref_load_129 - arith_mulf_128); 
            func_arg_1[arith_addi_15][arith_addi_80] = arith_subf_130; 
          }
          PAST_SET_SEMAPHORE(execute_token_79, PAST_TASK_FINISHED); 
        }
        async_group_75[async_group_index_76] = execute_token_79; 
        async_group_index_76++; 
        int arith_addi_131 = (for_iter_arg_78 + arith_const_11); 
        for_iter_arg_78 = arith_addi_131; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_75, async_group_index_76, PAST_TASK_FINISHED); 
    }
  }
  return; 

}
#pragma pocc-region-end
