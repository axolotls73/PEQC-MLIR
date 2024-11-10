#pragma pocc-region-start
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 7; 
  int arith_const_5 = 39; 
  int arith_const_6 = -2; 
  int arith_const_7 = 33; 
  int arith_const_8 = 31; 
  int arith_const_9 = -1; 
  int arith_const_10 = 40; 
  int arith_const_11 = 32; 
  int arith_const_12 = 0; 
  int arith_const_13 = 2; 
  int arith_const_14 = 1; 
  int* async_group_15; 
  int async_group_index_16 = 0; 
  int for_iter_arg_18 = arith_const_12; 
  for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_13; for_iter_17 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_19); 
    #pragma peqc async_execute
    {
      int arith_muli_20 = (for_iter_17 * arith_const_11); 
      int arith_muli_21 = (for_iter_17 * arith_const_11); 
      int arith_addi_22 = (arith_muli_21 + arith_const_11); 
      int arith_minsi_23 = min(arith_addi_22, arith_const_10); 
      for (int for_iter_24 = arith_muli_20; for_iter_24 < arith_minsi_23; for_iter_24 += arith_const_14) {
        double memref_load_25 = func_arg_3[for_iter_24]; 
        func_arg_2[for_iter_24] = memref_load_25; 
      }
      PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
    }
    async_group_15[async_group_index_16] = execute_token_19; 
    async_group_index_16++; 
    int arith_addi_26 = (for_iter_arg_18 + arith_const_14); 
    for_iter_arg_18 = arith_addi_26; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  for (int for_iter_27 = arith_const_12; for_iter_27 < arith_const_13; for_iter_27 += arith_const_14) {
    int arith_addi_28 = (for_iter_27 + arith_const_14); 
    for (int for_iter_29 = arith_const_12; for_iter_29 < arith_addi_28; for_iter_29 += arith_const_14) {
      int arith_addi_30 = (for_iter_27 + arith_const_9); 
      int arith_cmpi_31 = (arith_addi_30 == arith_const_12); 
      int arith_addi_32 = (for_iter_29 + arith_const_9); 
      int arith_cmpi_33 = (arith_addi_32 == arith_const_12); 
      int arith_andi_34 = (arith_cmpi_31 & arith_cmpi_33); 
      if (arith_andi_34) {
        double memref_load_35 = func_arg_2[arith_const_11]; 
        double memref_load_36 = func_arg_1[arith_const_11][arith_const_8]; 
        double memref_load_37 = func_arg_2[arith_const_8]; 
        double arith_mulf_38 = (memref_load_36 * memref_load_37); 
        double arith_subf_39 = (memref_load_35 - arith_mulf_38); 
        func_arg_2[arith_const_11] = arith_subf_39; 
      }
      int arith_muli_40 = (for_iter_27 * arith_const_11); 
      int arith_muli_41 = (for_iter_29 * arith_const_11); 
      int arith_addi_42 = (arith_muli_41 + arith_const_14); 
      int arith_maxsi_43 = max(arith_muli_40, arith_addi_42); 
      int arith_muli_44 = (for_iter_27 * arith_const_11); 
      int arith_addi_45 = (arith_muli_44 + arith_const_11); 
      int arith_muli_46 = (for_iter_29 * arith_const_11); 
      int arith_addi_47 = (arith_muli_46 + arith_const_7); 
      int arith_minsi_48 = min(arith_addi_45, arith_const_10); 
      int arith_minsi_49 = min(arith_minsi_48, arith_addi_47); 
      for (int for_iter_50 = arith_maxsi_43; for_iter_50 < arith_minsi_49; for_iter_50 += arith_const_14) {
        int arith_muli_51 = (for_iter_29 * arith_const_11); 
        int arith_maxsi_52 = max(arith_muli_51, arith_const_14); 
        int arith_addi_53 = (for_iter_50 + arith_const_9); 
        for (int for_iter_54 = arith_maxsi_52; for_iter_54 < arith_addi_53; for_iter_54 += arith_const_14) {
          double memref_load_55 = func_arg_2[for_iter_50]; 
          int arith_addi_56 = (for_iter_54 + arith_const_9); 
          double memref_load_57 = func_arg_1[for_iter_50][arith_addi_56]; 
          int arith_addi_58 = (for_iter_54 + arith_const_9); 
          double memref_load_59 = func_arg_2[arith_addi_58]; 
          double arith_mulf_60 = (memref_load_57 * memref_load_59); 
          double arith_subf_61 = (memref_load_55 - arith_mulf_60); 
          func_arg_2[for_iter_50] = arith_subf_61; 
        }
        int arith_cmpi_62 = (for_iter_27 == arith_const_12); 
        int arith_cmpi_63 = (for_iter_29 == arith_const_12); 
        int arith_andi_64 = (arith_cmpi_62 & arith_cmpi_63); 
        int arith_addi_65 = (for_iter_50 + arith_const_9); 
        int arith_cmpi_66 = (arith_addi_65 == arith_const_12); 
        int arith_andi_67 = (arith_andi_64 & arith_cmpi_66); 
        if (arith_andi_67) {
          double memref_load_68 = func_arg_2[arith_const_12]; 
          double memref_load_69 = func_arg_1[arith_const_12][arith_const_12]; 
          double arith_divf_70 = (memref_load_68 / memref_load_69); 
          func_arg_2[arith_const_12] = arith_divf_70; 
        }
        int arith_addi_71 = (for_iter_50 + arith_const_6); 
        int arith_cmpi_72 = (arith_addi_71 >= arith_const_12); 
        if (arith_cmpi_72) {
          int arith_addi_73 = (for_iter_50 + arith_const_9); 
          double memref_load_74 = func_arg_2[arith_addi_73]; 
          int arith_addi_75 = (for_iter_50 + arith_const_9); 
          int arith_addi_76 = (for_iter_50 + arith_const_9); 
          double memref_load_77 = func_arg_1[arith_addi_75][arith_addi_76]; 
          double arith_divf_78 = (memref_load_74 / memref_load_77); 
          int arith_addi_79 = (for_iter_50 + arith_const_9); 
          func_arg_2[arith_addi_79] = arith_divf_78; 
          double memref_load_80 = func_arg_2[for_iter_50]; 
          int arith_addi_81 = (for_iter_50 + arith_const_6); 
          double memref_load_82 = func_arg_1[for_iter_50][arith_addi_81]; 
          int arith_addi_83 = (for_iter_50 + arith_const_6); 
          double memref_load_84 = func_arg_2[arith_addi_83]; 
          double arith_mulf_85 = (memref_load_82 * memref_load_84); 
          double arith_subf_86 = (memref_load_80 - arith_mulf_85); 
          func_arg_2[for_iter_50] = arith_subf_86; 
        }
        int arith_muli_87 = (for_iter_29 * arith_const_9); 
        int arith_addi_88 = (for_iter_27 + arith_muli_87); 
        int arith_cmpi_89 = (arith_addi_88 == arith_const_12); 
        if (arith_cmpi_89) {
          double memref_load_90 = func_arg_2[for_iter_50]; 
          int arith_addi_91 = (for_iter_50 + arith_const_9); 
          double memref_load_92 = func_arg_1[for_iter_50][arith_addi_91]; 
          int arith_addi_93 = (for_iter_50 + arith_const_9); 
          double memref_load_94 = func_arg_2[arith_addi_93]; 
          double arith_mulf_95 = (memref_load_92 * memref_load_94); 
          double arith_subf_96 = (memref_load_90 - arith_mulf_95); 
          func_arg_2[for_iter_50] = arith_subf_96; 
        }
      }
      int arith_addi_97 = (for_iter_27 + arith_const_9); 
      int arith_cmpi_98 = (arith_addi_97 == arith_const_12); 
      int arith_cmpi_99 = (for_iter_29 == arith_const_12); 
      int arith_andi_100 = (arith_cmpi_98 & arith_cmpi_99); 
      if (arith_andi_100) {
        int* async_group_101; 
        int async_group_index_102 = 0; 
        int for_iter_arg_104 = arith_const_12; 
        for (int for_iter_103 = arith_const_7; for_iter_103 < arith_const_10; for_iter_103 += arith_const_14) {
          PAST_NEW_SEMAPHORE(execute_token_105); 
          #pragma peqc async_execute
          {
            for (int for_iter_106 = arith_const_14; for_iter_106 < arith_const_11; for_iter_106 += arith_const_14) {
              double memref_load_107 = func_arg_2[for_iter_103]; 
              int arith_addi_108 = (for_iter_106 + arith_const_9); 
              double memref_load_109 = func_arg_1[for_iter_103][arith_addi_108]; 
              int arith_addi_110 = (for_iter_106 + arith_const_9); 
              double memref_load_111 = func_arg_2[arith_addi_110]; 
              double arith_mulf_112 = (memref_load_109 * memref_load_111); 
              double arith_subf_113 = (memref_load_107 - arith_mulf_112); 
              func_arg_2[for_iter_103] = arith_subf_113; 
            }
            PAST_SET_SEMAPHORE(execute_token_105, PAST_TASK_FINISHED); 
          }
          async_group_101[async_group_index_102] = execute_token_105; 
          async_group_index_102++; 
          int arith_addi_114 = (for_iter_arg_104 + arith_const_14); 
          for_iter_arg_104 = arith_addi_114; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_101, async_group_index_102, PAST_TASK_FINISHED); 
      }
      int arith_addi_115 = (for_iter_27 + arith_const_9); 
      int arith_cmpi_116 = (arith_addi_115 == arith_const_12); 
      int arith_addi_117 = (for_iter_29 + arith_const_9); 
      int arith_cmpi_118 = (arith_addi_117 == arith_const_12); 
      int arith_andi_119 = (arith_cmpi_116 & arith_cmpi_118); 
      if (arith_andi_119) {
        double memref_load_120 = func_arg_2[arith_const_5]; 
        double memref_load_121 = func_arg_1[arith_const_5][arith_const_5]; 
        double arith_divf_122 = (memref_load_120 / memref_load_121); 
        func_arg_2[arith_const_5] = arith_divf_122; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
