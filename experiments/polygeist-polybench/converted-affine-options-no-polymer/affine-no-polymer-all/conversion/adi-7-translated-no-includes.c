#pragma pocc-region-start
void kernel_adi(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 17; 
  int arith_const_7 = 3; 
  int arith_const_8 = 20; 
  int arith_const_9 = -1; 
  int arith_const_10 = 4; 
  int arith_const_11 = 19; 
  int arith_const_12 = 2; 
  double arith_const_13 = 10.000000; 
  double arith_const_14 = -19.000000; 
  double arith_const_15 = -10.000000; 
  double arith_const_16 = -20.000000; 
  double arith_const_17 = 41.000000; 
  double arith_const_18 = 20.000000; 
  double arith_const_19 = 0.000000; 
  double arith_const_20 = 1.000000; 
  int arith_const_21 = 0; 
  int arith_const_22 = 1; 
  func_arg_3[arith_const_21][arith_const_22] = arith_const_20; 
  func_arg_4[arith_const_22][arith_const_21] = arith_const_19; 
  double memref_load_23 = func_arg_3[arith_const_21][arith_const_22]; 
  func_arg_5[arith_const_22][arith_const_21] = memref_load_23; 
  double memref_load_24 = func_arg_4[arith_const_22][arith_const_21]; 
  double arith_mulf_25 = (memref_load_24 * arith_const_16); 
  double arith_addf_26 = (arith_mulf_25 + arith_const_17); 
  double arith_divf_27 = (arith_const_18 / arith_addf_26); 
  func_arg_4[arith_const_22][arith_const_22] = arith_divf_27; 
  double memref_load_28 = func_arg_2[arith_const_22][arith_const_21]; 
  double arith_mulf_29 = (memref_load_28 * arith_const_13); 
  double memref_load_30 = func_arg_2[arith_const_22][arith_const_22]; 
  double arith_mulf_31 = (memref_load_30 * arith_const_14); 
  double arith_addf_32 = (arith_mulf_29 + arith_mulf_31); 
  double memref_load_33 = func_arg_2[arith_const_22][arith_const_12]; 
  double arith_mulf_34 = (memref_load_33 * arith_const_15); 
  double arith_subf_35 = (arith_addf_32 - arith_mulf_34); 
  double memref_load_36 = func_arg_5[arith_const_22][arith_const_21]; 
  double arith_mulf_37 = (memref_load_36 * arith_const_16); 
  double arith_subf_38 = (arith_subf_35 - arith_mulf_37); 
  double arith_divf_39 = (arith_subf_38 / arith_addf_26); 
  func_arg_5[arith_const_22][arith_const_22] = arith_divf_39; 
  func_arg_3[arith_const_11][arith_const_22] = arith_const_20; 
  for (int for_iter_40 = arith_const_21; for_iter_40 < arith_const_10; for_iter_40 += arith_const_22) {
    int arith_muli_41 = (for_iter_40 * arith_const_10); 
    int arith_addi_42 = (arith_muli_41 + arith_const_22); 
    for (int for_iter_43 = arith_const_21; for_iter_43 < arith_const_22; for_iter_43 += arith_const_22) {
      int arith_muli_44 = (for_iter_43 * arith_const_10); 
      int arith_addi_45 = (arith_addi_42 + arith_muli_44); 
      int arith_muli_46 = (arith_addi_45 * arith_const_9); 
      int arith_addi_47 = (arith_muli_46 + arith_const_11); 
      double memref_load_48 = func_arg_4[arith_const_22][arith_addi_47]; 
      int arith_muli_49 = (arith_addi_45 * arith_const_9); 
      int arith_addi_50 = (arith_muli_49 + arith_const_8); 
      double memref_load_51 = func_arg_3[arith_addi_50][arith_const_22]; 
      double arith_mulf_52 = (memref_load_48 * memref_load_51); 
      int arith_muli_53 = (arith_addi_45 * arith_const_9); 
      int arith_addi_54 = (arith_muli_53 + arith_const_11); 
      double memref_load_55 = func_arg_5[arith_const_22][arith_addi_54]; 
      double arith_addf_56 = (arith_mulf_52 + memref_load_55); 
      int arith_muli_57 = (arith_addi_45 * arith_const_9); 
      int arith_addi_58 = (arith_muli_57 + arith_const_11); 
      func_arg_3[arith_addi_58][arith_const_22] = arith_addf_56; 
      int arith_addi_59 = (arith_addi_45 + arith_const_22); 
      int arith_muli_60 = (arith_addi_59 * arith_const_9); 
      int arith_addi_61 = (arith_muli_60 + arith_const_11); 
      double memref_load_62 = func_arg_4[arith_const_22][arith_addi_61]; 
      int arith_muli_63 = (arith_addi_59 * arith_const_9); 
      int arith_addi_64 = (arith_muli_63 + arith_const_8); 
      double memref_load_65 = func_arg_3[arith_addi_64][arith_const_22]; 
      double arith_mulf_66 = (memref_load_62 * memref_load_65); 
      int arith_muli_67 = (arith_addi_59 * arith_const_9); 
      int arith_addi_68 = (arith_muli_67 + arith_const_11); 
      double memref_load_69 = func_arg_5[arith_const_22][arith_addi_68]; 
      double arith_addf_70 = (arith_mulf_66 + memref_load_69); 
      int arith_muli_71 = (arith_addi_59 * arith_const_9); 
      int arith_addi_72 = (arith_muli_71 + arith_const_11); 
      func_arg_3[arith_addi_72][arith_const_22] = arith_addf_70; 
      int arith_addi_73 = (arith_addi_45 + arith_const_12); 
      int arith_muli_74 = (arith_addi_73 * arith_const_9); 
      int arith_addi_75 = (arith_muli_74 + arith_const_11); 
      double memref_load_76 = func_arg_4[arith_const_22][arith_addi_75]; 
      int arith_muli_77 = (arith_addi_73 * arith_const_9); 
      int arith_addi_78 = (arith_muli_77 + arith_const_8); 
      double memref_load_79 = func_arg_3[arith_addi_78][arith_const_22]; 
      double arith_mulf_80 = (memref_load_76 * memref_load_79); 
      int arith_muli_81 = (arith_addi_73 * arith_const_9); 
      int arith_addi_82 = (arith_muli_81 + arith_const_11); 
      double memref_load_83 = func_arg_5[arith_const_22][arith_addi_82]; 
      double arith_addf_84 = (arith_mulf_80 + memref_load_83); 
      int arith_muli_85 = (arith_addi_73 * arith_const_9); 
      int arith_addi_86 = (arith_muli_85 + arith_const_11); 
      func_arg_3[arith_addi_86][arith_const_22] = arith_addf_84; 
      int arith_addi_87 = (arith_addi_45 + arith_const_7); 
      int arith_muli_88 = (arith_addi_87 * arith_const_9); 
      int arith_addi_89 = (arith_muli_88 + arith_const_11); 
      double memref_load_90 = func_arg_4[arith_const_22][arith_addi_89]; 
      int arith_muli_91 = (arith_addi_87 * arith_const_9); 
      int arith_addi_92 = (arith_muli_91 + arith_const_8); 
      double memref_load_93 = func_arg_3[arith_addi_92][arith_const_22]; 
      double arith_mulf_94 = (memref_load_90 * memref_load_93); 
      int arith_muli_95 = (arith_addi_87 * arith_const_9); 
      int arith_addi_96 = (arith_muli_95 + arith_const_11); 
      double memref_load_97 = func_arg_5[arith_const_22][arith_addi_96]; 
      double arith_addf_98 = (arith_mulf_94 + memref_load_97); 
      int arith_muli_99 = (arith_addi_87 * arith_const_9); 
      int arith_addi_100 = (arith_muli_99 + arith_const_11); 
      func_arg_3[arith_addi_100][arith_const_22] = arith_addf_98; 
    }
  }
  for (int for_iter_101 = arith_const_21; for_iter_101 < arith_const_12; for_iter_101 += arith_const_22) {
    int arith_addi_102 = (for_iter_101 + arith_const_6); 
    int* async_group_103; 
    int async_group_index_104 = 0; 
    int for_iter_arg_106 = arith_const_21; 
    for (int for_iter_105 = arith_const_21; for_iter_105 < arith_const_22; for_iter_105 += arith_const_22) {
      PAST_NEW_SEMAPHORE(execute_token_107); 
      #pragma peqc async_execute
      {
        int arith_addi_108 = (arith_addi_102 + for_iter_105); 
        int arith_muli_109 = (arith_addi_108 * arith_const_9); 
        int arith_addi_110 = (arith_muli_109 + arith_const_11); 
        double memref_load_111 = func_arg_4[arith_const_22][arith_addi_110]; 
        int arith_muli_112 = (arith_addi_108 * arith_const_9); 
        int arith_addi_113 = (arith_muli_112 + arith_const_8); 
        double memref_load_114 = func_arg_3[arith_addi_113][arith_const_22]; 
        double arith_mulf_115 = (memref_load_111 * memref_load_114); 
        int arith_muli_116 = (arith_addi_108 * arith_const_9); 
        int arith_addi_117 = (arith_muli_116 + arith_const_11); 
        double memref_load_118 = func_arg_5[arith_const_22][arith_addi_117]; 
        double arith_addf_119 = (arith_mulf_115 + memref_load_118); 
        int arith_muli_120 = (arith_addi_108 * arith_const_9); 
        int arith_addi_121 = (arith_muli_120 + arith_const_11); 
        func_arg_3[arith_addi_121][arith_const_22] = arith_addf_119; 
        PAST_SET_SEMAPHORE(execute_token_107, PAST_TASK_FINISHED); 
      }
      async_group_103[async_group_index_104] = execute_token_107; 
      async_group_index_104++; 
      int arith_addi_122 = (for_iter_arg_106 + arith_const_22); 
      for_iter_arg_106 = arith_addi_122; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_103, async_group_index_104, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
