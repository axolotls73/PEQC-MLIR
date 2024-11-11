#pragma pocc-region-start
void kernel_atax(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 38; 
  int arith_const_7 = 40; 
  int arith_const_8 = 3; 
  int arith_const_9 = 2; 
  int arith_const_10 = 4; 
  double arith_const_11 = 0.000000; 
  int arith_const_12 = 0; 
  int arith_const_13 = 10; 
  int arith_const_14 = 1; 
  for (int for_iter_15 = arith_const_12; for_iter_15 < arith_const_13; for_iter_15 += arith_const_14) {
    int arith_muli_16 = (for_iter_15 * arith_const_10); 
    for (int for_iter_17 = arith_const_12; for_iter_17 < arith_const_14; for_iter_17 += arith_const_14) {
      int arith_muli_18 = (for_iter_17 * arith_const_10); 
      int arith_addi_19 = (arith_muli_16 + arith_muli_18); 
      func_arg_4[arith_addi_19] = arith_const_11; 
      int arith_addi_20 = (arith_addi_19 + arith_const_14); 
      func_arg_4[arith_addi_20] = arith_const_11; 
      int arith_addi_21 = (arith_addi_19 + arith_const_9); 
      func_arg_4[arith_addi_21] = arith_const_11; 
      int arith_addi_22 = (arith_addi_19 + arith_const_8); 
      func_arg_4[arith_addi_22] = arith_const_11; 
    }
  }
  int* async_group_23; 
  int async_group_index_24 = 0; 
  int for_iter_arg_26 = arith_const_12; 
  for (int for_iter_25 = arith_const_12; for_iter_25 < arith_const_9; for_iter_25 += arith_const_14) {
    PAST_NEW_SEMAPHORE(execute_token_27); 
    #pragma peqc async_execute
    {
      int arith_addi_28 = (for_iter_25 + arith_const_7); 
      for (int for_iter_29 = arith_const_12; for_iter_29 < arith_const_14; for_iter_29 += arith_const_14) {
        int arith_addi_30 = (arith_addi_28 + for_iter_29); 
        func_arg_4[arith_addi_30] = arith_const_11; 
      }
      PAST_SET_SEMAPHORE(execute_token_27, PAST_TASK_FINISHED); 
    }
    async_group_23[async_group_index_24] = execute_token_27; 
    async_group_index_24++; 
    int arith_addi_31 = (for_iter_arg_26 + arith_const_14); 
    for_iter_arg_26 = arith_addi_31; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_23, async_group_index_24, PAST_TASK_FINISHED); 
  for (int for_iter_32 = arith_const_12; for_iter_32 < arith_const_6; for_iter_32 += arith_const_14) {
    int* async_group_33; 
    int async_group_index_34 = 0; 
    int for_iter_arg_36 = arith_const_12; 
    for (int for_iter_35 = arith_const_12; for_iter_35 < arith_const_14; for_iter_35 += arith_const_14) {
      PAST_NEW_SEMAPHORE(execute_token_37); 
      #pragma peqc async_execute
      {
        int arith_addi_38 = (for_iter_32 + for_iter_35); 
        func_arg_5[arith_addi_38] = arith_const_11; 
        for (int for_iter_39 = arith_const_12; for_iter_39 < arith_const_13; for_iter_39 += arith_const_14) {
          int arith_muli_40 = (for_iter_39 * arith_const_10); 
          double memref_load_41 = func_arg_5[arith_addi_38]; 
          double memref_load_42 = func_arg_2[arith_addi_38][arith_muli_40]; 
          double memref_load_43 = func_arg_3[arith_muli_40]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double arith_addf_45 = (memref_load_41 + arith_mulf_44); 
          func_arg_5[arith_addi_38] = arith_addf_45; 
          int arith_addi_46 = (arith_muli_40 + arith_const_14); 
          double memref_load_47 = func_arg_5[arith_addi_38]; 
          double memref_load_48 = func_arg_2[arith_addi_38][arith_addi_46]; 
          double memref_load_49 = func_arg_3[arith_addi_46]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double arith_addf_51 = (memref_load_47 + arith_mulf_50); 
          func_arg_5[arith_addi_38] = arith_addf_51; 
          int arith_addi_52 = (arith_muli_40 + arith_const_9); 
          double memref_load_53 = func_arg_5[arith_addi_38]; 
          double memref_load_54 = func_arg_2[arith_addi_38][arith_addi_52]; 
          double memref_load_55 = func_arg_3[arith_addi_52]; 
          double arith_mulf_56 = (memref_load_54 * memref_load_55); 
          double arith_addf_57 = (memref_load_53 + arith_mulf_56); 
          func_arg_5[arith_addi_38] = arith_addf_57; 
          int arith_addi_58 = (arith_muli_40 + arith_const_8); 
          double memref_load_59 = func_arg_5[arith_addi_38]; 
          double memref_load_60 = func_arg_2[arith_addi_38][arith_addi_58]; 
          double memref_load_61 = func_arg_3[arith_addi_58]; 
          double arith_mulf_62 = (memref_load_60 * memref_load_61); 
          double arith_addf_63 = (memref_load_59 + arith_mulf_62); 
          func_arg_5[arith_addi_38] = arith_addf_63; 
        }
        for (int for_iter_64 = arith_const_12; for_iter_64 < arith_const_9; for_iter_64 += arith_const_14) {
          int arith_addi_65 = (for_iter_64 + arith_const_7); 
          double memref_load_66 = func_arg_5[arith_addi_38]; 
          double memref_load_67 = func_arg_2[arith_addi_38][arith_addi_65]; 
          double memref_load_68 = func_arg_3[arith_addi_65]; 
          double arith_mulf_69 = (memref_load_67 * memref_load_68); 
          double arith_addf_70 = (memref_load_66 + arith_mulf_69); 
          func_arg_5[arith_addi_38] = arith_addf_70; 
        }
        double memref_load_71 = func_arg_5[arith_addi_38]; 
        double memref_load_72 = func_arg_5[arith_addi_38]; 
        double memref_load_73 = func_arg_5[arith_addi_38]; 
        double memref_load_74 = func_arg_5[arith_addi_38]; 
        for (int for_iter_75 = arith_const_12; for_iter_75 < arith_const_13; for_iter_75 += arith_const_14) {
          int arith_muli_76 = (for_iter_75 * arith_const_10); 
          double memref_load_77 = func_arg_4[arith_muli_76]; 
          double memref_load_78 = func_arg_2[arith_addi_38][arith_muli_76]; 
          double arith_mulf_79 = (memref_load_78 * memref_load_71); 
          double arith_addf_80 = (memref_load_77 + arith_mulf_79); 
          func_arg_4[arith_muli_76] = arith_addf_80; 
          int arith_addi_81 = (arith_muli_76 + arith_const_14); 
          double memref_load_82 = func_arg_4[arith_addi_81]; 
          double memref_load_83 = func_arg_2[arith_addi_38][arith_addi_81]; 
          double arith_mulf_84 = (memref_load_83 * memref_load_72); 
          double arith_addf_85 = (memref_load_82 + arith_mulf_84); 
          func_arg_4[arith_addi_81] = arith_addf_85; 
          int arith_addi_86 = (arith_muli_76 + arith_const_9); 
          double memref_load_87 = func_arg_4[arith_addi_86]; 
          double memref_load_88 = func_arg_2[arith_addi_38][arith_addi_86]; 
          double arith_mulf_89 = (memref_load_88 * memref_load_73); 
          double arith_addf_90 = (memref_load_87 + arith_mulf_89); 
          func_arg_4[arith_addi_86] = arith_addf_90; 
          int arith_addi_91 = (arith_muli_76 + arith_const_8); 
          double memref_load_92 = func_arg_4[arith_addi_91]; 
          double memref_load_93 = func_arg_2[arith_addi_38][arith_addi_91]; 
          double arith_mulf_94 = (memref_load_93 * memref_load_74); 
          double arith_addf_95 = (memref_load_92 + arith_mulf_94); 
          func_arg_4[arith_addi_91] = arith_addf_95; 
        }
        double memref_load_96 = func_arg_5[arith_addi_38]; 
        for (int for_iter_97 = arith_const_12; for_iter_97 < arith_const_9; for_iter_97 += arith_const_14) {
          int arith_addi_98 = (for_iter_97 + arith_const_7); 
          double memref_load_99 = func_arg_4[arith_addi_98]; 
          double memref_load_100 = func_arg_2[arith_addi_38][arith_addi_98]; 
          double arith_mulf_101 = (memref_load_100 * memref_load_96); 
          double arith_addf_102 = (memref_load_99 + arith_mulf_101); 
          func_arg_4[arith_addi_98] = arith_addf_102; 
        }
        PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
      }
      async_group_33[async_group_index_34] = execute_token_37; 
      async_group_index_34++; 
      int arith_addi_103 = (for_iter_arg_36 + arith_const_14); 
      for_iter_arg_36 = arith_addi_103; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
