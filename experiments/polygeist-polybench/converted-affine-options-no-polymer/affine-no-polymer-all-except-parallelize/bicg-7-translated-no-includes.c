#pragma pocc-region-start
void kernel_bicg(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 36; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  double arith_const_12 = 0.000000; 
  int arith_const_13 = 0; 
  int arith_const_14 = 9; 
  int arith_const_15 = 1; 
  for (int for_iter_16 = arith_const_13; for_iter_16 < arith_const_14; for_iter_16 += arith_const_15) {
    int arith_muli_17 = (for_iter_16 * arith_const_11); 
    for (int for_iter_18 = arith_const_13; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
      int arith_muli_19 = (for_iter_18 * arith_const_11); 
      int arith_addi_20 = (arith_muli_17 + arith_muli_19); 
      func_arg_3[arith_addi_20] = arith_const_12; 
      int arith_addi_21 = (arith_addi_20 + arith_const_15); 
      func_arg_3[arith_addi_21] = arith_const_12; 
      int arith_addi_22 = (arith_addi_20 + arith_const_10); 
      func_arg_3[arith_addi_22] = arith_const_12; 
      int arith_addi_23 = (arith_addi_20 + arith_const_9); 
      func_arg_3[arith_addi_23] = arith_const_12; 
    }
  }
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_13; 
  for (int for_iter_26 = arith_const_13; for_iter_26 < arith_const_10; for_iter_26 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      int arith_addi_29 = (for_iter_26 + arith_const_8); 
      int* async_group_30; 
      int async_group_index_31 = 0; 
      int for_iter_arg_33 = arith_const_13; 
      for (int for_iter_32 = arith_const_13; for_iter_32 < arith_const_15; for_iter_32 += arith_const_15) {
        PAST_NEW_SEMAPHORE(execute_token_34); 
        #pragma peqc async_execute
        {
          int arith_addi_35 = (arith_addi_29 + for_iter_32); 
          func_arg_3[arith_addi_35] = arith_const_12; 
          PAST_SET_SEMAPHORE(execute_token_34, PAST_TASK_FINISHED); 
        }
        async_group_30[async_group_index_31] = execute_token_34; 
        async_group_index_31++; 
        int arith_addi_36 = (for_iter_arg_33 + arith_const_15); 
        for_iter_arg_33 = arith_addi_36; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_30, async_group_index_31, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_37 = (for_iter_arg_27 + arith_const_15); 
    for_iter_arg_27 = arith_addi_37; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  for (int for_iter_38 = arith_const_13; for_iter_38 < arith_const_7; for_iter_38 += arith_const_15) {
    int* async_group_39; 
    int async_group_index_40 = 0; 
    int for_iter_arg_42 = arith_const_13; 
    for (int for_iter_41 = arith_const_13; for_iter_41 < arith_const_15; for_iter_41 += arith_const_15) {
      PAST_NEW_SEMAPHORE(execute_token_43); 
      #pragma peqc async_execute
      {
        int arith_addi_44 = (for_iter_38 + for_iter_41); 
        func_arg_4[arith_addi_44] = arith_const_12; 
        double memref_load_45 = func_arg_6[arith_addi_44]; 
        double memref_load_46 = func_arg_6[arith_addi_44]; 
        double memref_load_47 = func_arg_6[arith_addi_44]; 
        double memref_load_48 = func_arg_6[arith_addi_44]; 
        for (int for_iter_49 = arith_const_13; for_iter_49 < arith_const_14; for_iter_49 += arith_const_15) {
          int arith_muli_50 = (for_iter_49 * arith_const_11); 
          double memref_load_51 = func_arg_3[arith_muli_50]; 
          double memref_load_52 = func_arg_2[arith_addi_44][arith_muli_50]; 
          double arith_mulf_53 = (memref_load_45 * memref_load_52); 
          double arith_addf_54 = (memref_load_51 + arith_mulf_53); 
          func_arg_3[arith_muli_50] = arith_addf_54; 
          double memref_load_55 = func_arg_4[arith_addi_44]; 
          double memref_load_56 = func_arg_2[arith_addi_44][arith_muli_50]; 
          double memref_load_57 = func_arg_5[arith_muli_50]; 
          double arith_mulf_58 = (memref_load_56 * memref_load_57); 
          double arith_addf_59 = (memref_load_55 + arith_mulf_58); 
          func_arg_4[arith_addi_44] = arith_addf_59; 
          int arith_addi_60 = (arith_muli_50 + arith_const_15); 
          double memref_load_61 = func_arg_3[arith_addi_60]; 
          double memref_load_62 = func_arg_2[arith_addi_44][arith_addi_60]; 
          double arith_mulf_63 = (memref_load_46 * memref_load_62); 
          double arith_addf_64 = (memref_load_61 + arith_mulf_63); 
          func_arg_3[arith_addi_60] = arith_addf_64; 
          double memref_load_65 = func_arg_4[arith_addi_44]; 
          double memref_load_66 = func_arg_2[arith_addi_44][arith_addi_60]; 
          double memref_load_67 = func_arg_5[arith_addi_60]; 
          double arith_mulf_68 = (memref_load_66 * memref_load_67); 
          double arith_addf_69 = (memref_load_65 + arith_mulf_68); 
          func_arg_4[arith_addi_44] = arith_addf_69; 
          int arith_addi_70 = (arith_muli_50 + arith_const_10); 
          double memref_load_71 = func_arg_3[arith_addi_70]; 
          double memref_load_72 = func_arg_2[arith_addi_44][arith_addi_70]; 
          double arith_mulf_73 = (memref_load_47 * memref_load_72); 
          double arith_addf_74 = (memref_load_71 + arith_mulf_73); 
          func_arg_3[arith_addi_70] = arith_addf_74; 
          double memref_load_75 = func_arg_4[arith_addi_44]; 
          double memref_load_76 = func_arg_2[arith_addi_44][arith_addi_70]; 
          double memref_load_77 = func_arg_5[arith_addi_70]; 
          double arith_mulf_78 = (memref_load_76 * memref_load_77); 
          double arith_addf_79 = (memref_load_75 + arith_mulf_78); 
          func_arg_4[arith_addi_44] = arith_addf_79; 
          int arith_addi_80 = (arith_muli_50 + arith_const_9); 
          double memref_load_81 = func_arg_3[arith_addi_80]; 
          double memref_load_82 = func_arg_2[arith_addi_44][arith_addi_80]; 
          double arith_mulf_83 = (memref_load_48 * memref_load_82); 
          double arith_addf_84 = (memref_load_81 + arith_mulf_83); 
          func_arg_3[arith_addi_80] = arith_addf_84; 
          double memref_load_85 = func_arg_4[arith_addi_44]; 
          double memref_load_86 = func_arg_2[arith_addi_44][arith_addi_80]; 
          double memref_load_87 = func_arg_5[arith_addi_80]; 
          double arith_mulf_88 = (memref_load_86 * memref_load_87); 
          double arith_addf_89 = (memref_load_85 + arith_mulf_88); 
          func_arg_4[arith_addi_44] = arith_addf_89; 
        }
        double memref_load_90 = func_arg_6[arith_addi_44]; 
        for (int for_iter_91 = arith_const_13; for_iter_91 < arith_const_10; for_iter_91 += arith_const_15) {
          int arith_addi_92 = (for_iter_91 + arith_const_8); 
          double memref_load_93 = func_arg_3[arith_addi_92]; 
          double memref_load_94 = func_arg_2[arith_addi_44][arith_addi_92]; 
          double arith_mulf_95 = (memref_load_90 * memref_load_94); 
          double arith_addf_96 = (memref_load_93 + arith_mulf_95); 
          func_arg_3[arith_addi_92] = arith_addf_96; 
          double memref_load_97 = func_arg_4[arith_addi_44]; 
          double memref_load_98 = func_arg_2[arith_addi_44][arith_addi_92]; 
          double memref_load_99 = func_arg_5[arith_addi_92]; 
          double arith_mulf_100 = (memref_load_98 * memref_load_99); 
          double arith_addf_101 = (memref_load_97 + arith_mulf_100); 
          func_arg_4[arith_addi_44] = arith_addf_101; 
        }
        PAST_SET_SEMAPHORE(execute_token_43, PAST_TASK_FINISHED); 
      }
      async_group_39[async_group_index_40] = execute_token_43; 
      async_group_index_40++; 
      int arith_addi_102 = (for_iter_arg_42 + arith_const_15); 
      for_iter_arg_42 = arith_addi_102; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_39, async_group_index_40, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
