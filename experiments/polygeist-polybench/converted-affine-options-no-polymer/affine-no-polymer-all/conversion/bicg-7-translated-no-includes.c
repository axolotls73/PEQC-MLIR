#pragma pocc-region-start
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = -32; 
  int arith_const_9 = 36; 
  int arith_const_10 = 32; 
  int arith_const_11 = 3; 
  int arith_const_12 = 2; 
  int arith_const_13 = 4; 
  int arith_const_14 = 9; 
  int arith_const_15 = 128; 
  double arith_const_16 = 0.000000; 
  int arith_const_17 = 0; 
  int arith_const_18 = 1; 
  int* async_group_19; 
  int async_group_index_20 = 0; 
  int for_iter_arg_22 = arith_const_17; 
  for (int for_iter_21 = arith_const_17; for_iter_21 < arith_const_18; for_iter_21 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_23); 
    #pragma peqc async_execute
    {
      int arith_muli_24 = (for_iter_21 * arith_const_15); 
      for (int for_iter_25 = arith_const_17; for_iter_25 < arith_const_14; for_iter_25 += arith_const_18) {
        int arith_muli_26 = (for_iter_25 * arith_const_13); 
        int arith_addi_27 = (arith_muli_24 + arith_muli_26); 
        func_arg_3[arith_addi_27] = arith_const_16; 
        int arith_addi_28 = (arith_addi_27 + arith_const_18); 
        func_arg_3[arith_addi_28] = arith_const_16; 
        int arith_addi_29 = (arith_addi_27 + arith_const_12); 
        func_arg_3[arith_addi_29] = arith_const_16; 
        int arith_addi_30 = (arith_addi_27 + arith_const_11); 
        func_arg_3[arith_addi_30] = arith_const_16; 
      }
      PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
    }
    async_group_19[async_group_index_20] = execute_token_23; 
    async_group_index_20++; 
    int arith_addi_31 = (for_iter_arg_22 + arith_const_18); 
    for_iter_arg_22 = arith_addi_31; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
  int* async_group_32; 
  int async_group_index_33 = 0; 
  int for_iter_arg_35 = arith_const_17; 
  for (int for_iter_34 = arith_const_17; for_iter_34 < arith_const_18; for_iter_34 += arith_const_18) {
    PAST_NEW_SEMAPHORE(execute_token_36); 
    #pragma peqc async_execute
    {
      int arith_muli_37 = (for_iter_34 * arith_const_10); 
      int arith_addi_38 = (arith_muli_37 + arith_const_9); 
      for (int for_iter_39 = arith_const_17; for_iter_39 < arith_const_12; for_iter_39 += arith_const_18) {
        int arith_addi_40 = (arith_addi_38 + for_iter_39); 
        func_arg_3[arith_addi_40] = arith_const_16; 
      }
      PAST_SET_SEMAPHORE(execute_token_36, PAST_TASK_FINISHED); 
    }
    async_group_32[async_group_index_33] = execute_token_36; 
    async_group_index_33++; 
    int arith_addi_41 = (for_iter_arg_35 + arith_const_18); 
    for_iter_arg_35 = arith_addi_41; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_32, async_group_index_33, PAST_TASK_FINISHED); 
  for (int for_iter_42 = arith_const_17; for_iter_42 < arith_const_12; for_iter_42 += arith_const_18) {
    int arith_muli_43 = (for_iter_42 * arith_const_10); 
    int arith_muli_44 = (for_iter_42 * arith_const_8); 
    int arith_addi_45 = (arith_muli_44 + arith_const_7); 
    int arith_minsi_46 = min(arith_addi_45, arith_const_10); 
    for (int for_iter_47 = arith_const_17; for_iter_47 < arith_minsi_46; for_iter_47 += arith_const_18) {
      int arith_addi_48 = (arith_muli_43 + for_iter_47); 
      func_arg_4[arith_addi_48] = arith_const_16; 
      double memref_load_49 = func_arg_6[arith_addi_48]; 
      double memref_load_50 = func_arg_6[arith_addi_48]; 
      double memref_load_51 = func_arg_6[arith_addi_48]; 
      double memref_load_52 = func_arg_6[arith_addi_48]; 
      for (int for_iter_53 = arith_const_17; for_iter_53 < arith_const_14; for_iter_53 += arith_const_18) {
        int arith_muli_54 = (for_iter_53 * arith_const_13); 
        double memref_load_55 = func_arg_3[arith_muli_54]; 
        double memref_load_56 = func_arg_2[arith_addi_48][arith_muli_54]; 
        double arith_mulf_57 = (memref_load_49 * memref_load_56); 
        double arith_addf_58 = (memref_load_55 + arith_mulf_57); 
        func_arg_3[arith_muli_54] = arith_addf_58; 
        double memref_load_59 = func_arg_4[arith_addi_48]; 
        double memref_load_60 = func_arg_2[arith_addi_48][arith_muli_54]; 
        double memref_load_61 = func_arg_5[arith_muli_54]; 
        double arith_mulf_62 = (memref_load_60 * memref_load_61); 
        double arith_addf_63 = (memref_load_59 + arith_mulf_62); 
        func_arg_4[arith_addi_48] = arith_addf_63; 
        int arith_addi_64 = (arith_muli_54 + arith_const_18); 
        double memref_load_65 = func_arg_3[arith_addi_64]; 
        double memref_load_66 = func_arg_2[arith_addi_48][arith_addi_64]; 
        double arith_mulf_67 = (memref_load_50 * memref_load_66); 
        double arith_addf_68 = (memref_load_65 + arith_mulf_67); 
        func_arg_3[arith_addi_64] = arith_addf_68; 
        double memref_load_69 = func_arg_4[arith_addi_48]; 
        double memref_load_70 = func_arg_2[arith_addi_48][arith_addi_64]; 
        double memref_load_71 = func_arg_5[arith_addi_64]; 
        double arith_mulf_72 = (memref_load_70 * memref_load_71); 
        double arith_addf_73 = (memref_load_69 + arith_mulf_72); 
        func_arg_4[arith_addi_48] = arith_addf_73; 
        int arith_addi_74 = (arith_muli_54 + arith_const_12); 
        double memref_load_75 = func_arg_3[arith_addi_74]; 
        double memref_load_76 = func_arg_2[arith_addi_48][arith_addi_74]; 
        double arith_mulf_77 = (memref_load_51 * memref_load_76); 
        double arith_addf_78 = (memref_load_75 + arith_mulf_77); 
        func_arg_3[arith_addi_74] = arith_addf_78; 
        double memref_load_79 = func_arg_4[arith_addi_48]; 
        double memref_load_80 = func_arg_2[arith_addi_48][arith_addi_74]; 
        double memref_load_81 = func_arg_5[arith_addi_74]; 
        double arith_mulf_82 = (memref_load_80 * memref_load_81); 
        double arith_addf_83 = (memref_load_79 + arith_mulf_82); 
        func_arg_4[arith_addi_48] = arith_addf_83; 
        int arith_addi_84 = (arith_muli_54 + arith_const_11); 
        double memref_load_85 = func_arg_3[arith_addi_84]; 
        double memref_load_86 = func_arg_2[arith_addi_48][arith_addi_84]; 
        double arith_mulf_87 = (memref_load_52 * memref_load_86); 
        double arith_addf_88 = (memref_load_85 + arith_mulf_87); 
        func_arg_3[arith_addi_84] = arith_addf_88; 
        double memref_load_89 = func_arg_4[arith_addi_48]; 
        double memref_load_90 = func_arg_2[arith_addi_48][arith_addi_84]; 
        double memref_load_91 = func_arg_5[arith_addi_84]; 
        double arith_mulf_92 = (memref_load_90 * memref_load_91); 
        double arith_addf_93 = (memref_load_89 + arith_mulf_92); 
        func_arg_4[arith_addi_48] = arith_addf_93; 
      }
      double memref_load_94 = func_arg_6[arith_addi_48]; 
      for (int for_iter_95 = arith_const_17; for_iter_95 < arith_const_12; for_iter_95 += arith_const_18) {
        int arith_addi_96 = (for_iter_95 + arith_const_9); 
        double memref_load_97 = func_arg_3[arith_addi_96]; 
        double memref_load_98 = func_arg_2[arith_addi_48][arith_addi_96]; 
        double arith_mulf_99 = (memref_load_94 * memref_load_98); 
        double arith_addf_100 = (memref_load_97 + arith_mulf_99); 
        func_arg_3[arith_addi_96] = arith_addf_100; 
        double memref_load_101 = func_arg_4[arith_addi_48]; 
        double memref_load_102 = func_arg_2[arith_addi_48][arith_addi_96]; 
        double memref_load_103 = func_arg_5[arith_addi_96]; 
        double arith_mulf_104 = (memref_load_102 * memref_load_103); 
        double arith_addf_105 = (memref_load_101 + arith_mulf_104); 
        func_arg_4[arith_addi_48] = arith_addf_105; 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
