#pragma pocc-region-start
void kernel_covariance(int func_arg_0, int func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = -26; 
  int arith_const_7 = 26; 
  int arith_const_8 = -1; 
  int arith_const_9 = 27; 
  int arith_const_10 = 31; 
  int arith_const_11 = 13; 
  int arith_const_12 = -13; 
  int arith_const_13 = 16; 
  int arith_const_14 = 23; 
  int arith_const_15 = 32; 
  int arith_const_16 = 1; 
  int arith_const_17 = 28; 
  int arith_const_18 = 0; 
  double arith_const_19 = 1.000000; 
  double arith_const_20 = 0.000000; 
  double* memref_alloca_21; 
  double* memref_alloca_22; 
  int* async_group_23; 
  int async_group_index_24 = 0; 
  int for_iter_arg_26 = arith_const_18; 
  for (int for_iter_25 = arith_const_18; for_iter_25 < arith_const_17; for_iter_25 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_27); 
    #pragma peqc async_execute
    {
      for (int for_iter_28 = for_iter_25; for_iter_28 < arith_const_17; for_iter_28 += arith_const_16) {
        func_arg_4[for_iter_25][for_iter_28] = arith_const_20; 
      }
      PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
    }
    async_group_23[async_group_index_24] = execute_token_27; 
    async_group_index_24++; 
    int arith_addi_29 = (for_iter_arg_26 + arith_const_16); 
    for_iter_arg_26 = arith_addi_29; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
  double arith_subf_30 = (func_arg_2 - arith_const_19); 
  memref_alloca_22[arith_const_18] = arith_subf_30; 
  int* async_group_31; 
  int async_group_index_32 = 0; 
  int for_iter_arg_34 = arith_const_18; 
  for (int for_iter_33 = arith_const_18; for_iter_33 < arith_const_17; for_iter_33 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_35); 
    #pragma peqc async_execute
    {
      func_arg_5[for_iter_33] = arith_const_20; 
      PAST_SET_SEMAPHORE(execute_token_35, PAST_TASK_FINISHED); 
    }
    async_group_31[async_group_index_32] = execute_token_35; 
    async_group_index_32++; 
    int arith_addi_36 = (for_iter_arg_34 + arith_const_16); 
    for_iter_arg_34 = arith_addi_36; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_31, async_group_index_32, PAST_TASK_FINISHED); 
  for (int for_iter_37 = arith_const_18; for_iter_37 < arith_const_15; for_iter_37 += arith_const_16) {
    int* async_group_38; 
    int async_group_index_39 = 0; 
    int for_iter_arg_41 = arith_const_18; 
    for (int for_iter_40 = arith_const_18; for_iter_40 < arith_const_17; for_iter_40 += arith_const_16) {
      PAST_NEW_SEMAPHORE(execute_token_42); 
      #pragma peqc async_execute
      {
        double memref_load_43 = func_arg_5[for_iter_40]; 
        double memref_load_44 = func_arg_3[for_iter_37][for_iter_40]; 
        double arith_addf_45 = (memref_load_43 + memref_load_44); 
        func_arg_5[for_iter_40] = arith_addf_45; 
        PAST_SET_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
      }
      async_group_38[async_group_index_39] = execute_token_42; 
      async_group_index_39++; 
      int arith_addi_46 = (for_iter_arg_41 + arith_const_16); 
      for_iter_arg_41 = arith_addi_46; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_38, async_group_index_39, PAST_TASK_FINISHED); 
  }
  int* async_group_47; 
  int async_group_index_48 = 0; 
  int for_iter_arg_50 = arith_const_18; 
  for (int for_iter_49 = arith_const_18; for_iter_49 < arith_const_17; for_iter_49 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_51); 
    #pragma peqc async_execute
    {
      double memref_load_52 = func_arg_5[for_iter_49]; 
      double arith_divf_53 = (memref_load_52 / func_arg_2); 
      func_arg_5[for_iter_49] = arith_divf_53; 
      PAST_SET_SEMAPHORE(execute_token_51, PAST_TASK_FINISHED); 
    }
    async_group_47[async_group_index_48] = execute_token_51; 
    async_group_index_48++; 
    int arith_addi_54 = (for_iter_arg_50 + arith_const_16); 
    for_iter_arg_50 = arith_addi_54; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_47, async_group_index_48, PAST_TASK_FINISHED); 
  int* async_group_55; 
  int async_group_index_56 = 0; 
  int for_iter_arg_58 = arith_const_18; 
  for (int for_iter_57 = arith_const_18; for_iter_57 < arith_const_15; for_iter_57 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_59); 
    #pragma peqc async_execute
    {
      for (int for_iter_60 = arith_const_18; for_iter_60 < arith_const_17; for_iter_60 += arith_const_16) {
        double memref_load_61 = func_arg_3[for_iter_57][for_iter_60]; 
        double memref_load_62 = func_arg_5[for_iter_60]; 
        double arith_subf_63 = (memref_load_61 - memref_load_62); 
        func_arg_3[for_iter_57][for_iter_60] = arith_subf_63; 
      }
      PAST_SET_SEMAPHORE(execute_token_59, PAST_TASK_FINISHED); 
    }
    async_group_55[async_group_index_56] = execute_token_59; 
    async_group_index_56++; 
    int arith_addi_64 = (for_iter_arg_58 + arith_const_16); 
    for_iter_arg_58 = arith_addi_64; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_55, async_group_index_56, PAST_TASK_FINISHED); 
  int* async_group_65; 
  int async_group_index_66 = 0; 
  int for_iter_arg_68 = arith_const_18; 
  for (int for_iter_67 = arith_const_18; for_iter_67 < arith_const_17; for_iter_67 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_69); 
    #pragma peqc async_execute
    {
      for (int for_iter_70 = arith_const_18; for_iter_70 < arith_const_15; for_iter_70 += arith_const_16) {
        for (int for_iter_71 = for_iter_67; for_iter_71 < arith_const_17; for_iter_71 += arith_const_16) {
          double memref_load_72 = func_arg_4[for_iter_67][for_iter_71]; 
          double memref_load_73 = func_arg_3[for_iter_70][for_iter_67]; 
          double memref_load_74 = func_arg_3[for_iter_70][for_iter_71]; 
          double arith_mulf_75 = (memref_load_73 * memref_load_74); 
          double arith_addf_76 = (memref_load_72 + arith_mulf_75); 
          func_arg_4[for_iter_67][for_iter_71] = arith_addf_76; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_69, PAST_TASK_FINISHED); 
    }
    async_group_65[async_group_index_66] = execute_token_69; 
    async_group_index_66++; 
    int arith_addi_77 = (for_iter_arg_68 + arith_const_16); 
    for_iter_arg_68 = arith_addi_77; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_65, async_group_index_66, PAST_TASK_FINISHED); 
  for (int for_iter_78 = arith_const_18; for_iter_78 < arith_const_14; for_iter_78 += arith_const_16) {
    int arith_muli_79 = (for_iter_78 * arith_const_13); 
    int arith_addi_80 = (arith_muli_79 + arith_const_12); 
    int arith_cmpi_81 = (arith_addi_80 <= arith_const_18); 
    int arith_subi_82 = (arith_const_18 - arith_addi_80); 
    int arith_subi_83 = (arith_addi_80 - arith_const_16); 
    int arith_select_84 = (arith_cmpi_81 ? arith_subi_82 : arith_subi_83); 
    int arith_divi_85 = (arith_select_84 / arith_const_11); 
    int arith_subi_86 = (arith_const_18 - arith_divi_85); 
    int arith_addi_87 = (arith_divi_85 + arith_const_16); 
    int arith_select_88 = (arith_cmpi_81 ? arith_subi_86 : arith_addi_87); 
    int arith_maxsi_89 = max(arith_select_88, arith_const_18); 
    int arith_muli_90 = (for_iter_78 * arith_const_15); 
    int arith_addi_91 = (arith_muli_90 + arith_const_10); 
    int arith_cmpi_92 = (arith_addi_91 < arith_const_18); 
    int arith_subi_93 = (arith_const_8 - arith_addi_91); 
    int arith_select_94 = (arith_cmpi_92 ? arith_subi_93 : arith_addi_91); 
    int arith_divi_95 = (arith_select_94 / arith_const_9); 
    int arith_subi_96 = (arith_const_8 - arith_divi_95); 
    int arith_select_97 = (arith_cmpi_92 ? arith_subi_96 : arith_divi_95); 
    int arith_addi_98 = (arith_select_97 + arith_const_16); 
    for (int for_iter_99 = arith_maxsi_89; for_iter_99 < arith_addi_98; for_iter_99 += arith_const_16) {
      int arith_muli_100 = (for_iter_78 * arith_const_15); 
      int arith_muli_101 = (for_iter_99 * arith_const_9); 
      int arith_maxsi_102 = max(arith_muli_100, arith_muli_101); 
      int arith_muli_103 = (for_iter_78 * arith_const_15); 
      int arith_addi_104 = (arith_muli_103 + arith_const_15); 
      int arith_muli_105 = (for_iter_99 * arith_const_7); 
      int arith_addi_106 = (arith_muli_105 + arith_const_17); 
      int arith_minsi_107 = min(arith_addi_104, arith_addi_106); 
      for (int for_iter_108 = arith_maxsi_102; for_iter_108 < arith_minsi_107; for_iter_108 += arith_const_16) {
        int arith_muli_109 = (for_iter_108 * arith_const_6); 
        int arith_addi_110 = (arith_muli_109 + for_iter_99); 
        double memref_load_111 = func_arg_4[for_iter_99][arith_addi_110]; 
        double memref_load_112 = memref_alloca_22[arith_const_18]; 
        double arith_divf_113 = (memref_load_111 / memref_load_112); 
        memref_alloca_21[arith_const_18] = arith_divf_113; 
        int arith_muli_114 = (for_iter_108 * arith_const_6); 
        int arith_addi_115 = (arith_muli_114 + for_iter_99); 
        func_arg_4[for_iter_99][arith_addi_115] = arith_divf_113; 
        double memref_load_116 = memref_alloca_21[arith_const_18]; 
        int arith_muli_117 = (for_iter_108 * arith_const_6); 
        int arith_addi_118 = (arith_muli_117 + for_iter_99); 
        func_arg_4[arith_addi_118][for_iter_99] = memref_load_116; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
