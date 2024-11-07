#pragma pocc-region-start
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 7; 
  double arith_const_9 = 0.333330; 
  int arith_const_10 = 0; 
  int arith_const_11 = 20; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int* async_group_14; 
    int async_group_index_15 = 0; 
    int for_iter_arg_17 = arith_const_10; 
    for (int for_iter_16 = arith_const_10; for_iter_16 < arith_const_12; for_iter_16 += arith_const_12) {
      PAST_NEW_SEMAPHORE(execute_token_18); 
      #pragma peqc async_execute
      {
        int* async_group_19; 
        int async_group_index_20 = 0; 
        int for_iter_arg_22 = arith_const_10; 
        for (int for_iter_21 = arith_const_10; for_iter_21 < arith_const_8; for_iter_21 += arith_const_12) {
          PAST_NEW_SEMAPHORE(execute_token_23); 
          #pragma peqc async_execute
          {
            int arith_muli_24 = (for_iter_21 * arith_const_7); 
            int arith_addi_25 = (arith_muli_24 + arith_const_12); 
            int arith_addi_26 = (arith_addi_25 + arith_const_6); 
            double memref_load_27 = func_arg_2[arith_addi_26]; 
            double memref_load_28 = func_arg_2[arith_addi_25]; 
            double arith_addf_29 = (memref_load_27 + memref_load_28); 
            int arith_addi_30 = (arith_addi_25 + arith_const_12); 
            double memref_load_31 = func_arg_2[arith_addi_30]; 
            double arith_addf_32 = (arith_addf_29 + memref_load_31); 
            double arith_mulf_33 = (arith_addf_32 * arith_const_9); 
            func_arg_3[arith_addi_25] = arith_mulf_33; 
            int arith_addi_34 = (arith_addi_25 + arith_const_12); 
            int arith_addi_35 = (arith_addi_34 + arith_const_6); 
            double memref_load_36 = func_arg_2[arith_addi_35]; 
            double memref_load_37 = func_arg_2[arith_addi_34]; 
            double arith_addf_38 = (memref_load_36 + memref_load_37); 
            int arith_addi_39 = (arith_addi_34 + arith_const_12); 
            double memref_load_40 = func_arg_2[arith_addi_39]; 
            double arith_addf_41 = (arith_addf_38 + memref_load_40); 
            double arith_mulf_42 = (arith_addf_41 * arith_const_9); 
            func_arg_3[arith_addi_34] = arith_mulf_42; 
            int arith_addi_43 = (arith_addi_25 + arith_const_5); 
            int arith_addi_44 = (arith_addi_43 + arith_const_6); 
            double memref_load_45 = func_arg_2[arith_addi_44]; 
            double memref_load_46 = func_arg_2[arith_addi_43]; 
            double arith_addf_47 = (memref_load_45 + memref_load_46); 
            int arith_addi_48 = (arith_addi_43 + arith_const_12); 
            double memref_load_49 = func_arg_2[arith_addi_48]; 
            double arith_addf_50 = (arith_addf_47 + memref_load_49); 
            double arith_mulf_51 = (arith_addf_50 * arith_const_9); 
            func_arg_3[arith_addi_43] = arith_mulf_51; 
            int arith_addi_52 = (arith_addi_25 + arith_const_4); 
            int arith_addi_53 = (arith_addi_52 + arith_const_6); 
            double memref_load_54 = func_arg_2[arith_addi_53]; 
            double memref_load_55 = func_arg_2[arith_addi_52]; 
            double arith_addf_56 = (memref_load_54 + memref_load_55); 
            int arith_addi_57 = (arith_addi_52 + arith_const_12); 
            double memref_load_58 = func_arg_2[arith_addi_57]; 
            double arith_addf_59 = (arith_addf_56 + memref_load_58); 
            double arith_mulf_60 = (arith_addf_59 * arith_const_9); 
            func_arg_3[arith_addi_52] = arith_mulf_60; 
            PAST_SET_SEMAPHORE(execute_token_23, PAST_TASK_FINISHED); 
          }
          async_group_19[async_group_index_20] = execute_token_23; 
          async_group_index_20++; 
          int arith_addi_61 = (for_iter_arg_22 + arith_const_12); 
          for_iter_arg_22 = arith_addi_61; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_19, async_group_index_20, PAST_TASK_FINISHED); 
        int* async_group_62; 
        int async_group_index_63 = 0; 
        int for_iter_arg_65 = arith_const_10; 
        for (int for_iter_64 = arith_const_10; for_iter_64 < arith_const_8; for_iter_64 += arith_const_12) {
          PAST_NEW_SEMAPHORE(execute_token_66); 
          #pragma peqc async_execute
          {
            int arith_muli_67 = (for_iter_64 * arith_const_7); 
            int arith_addi_68 = (arith_muli_67 + arith_const_12); 
            int arith_addi_69 = (arith_addi_68 + arith_const_6); 
            double memref_load_70 = func_arg_3[arith_addi_69]; 
            double memref_load_71 = func_arg_3[arith_addi_68]; 
            double arith_addf_72 = (memref_load_70 + memref_load_71); 
            int arith_addi_73 = (arith_addi_68 + arith_const_12); 
            double memref_load_74 = func_arg_3[arith_addi_73]; 
            double arith_addf_75 = (arith_addf_72 + memref_load_74); 
            double arith_mulf_76 = (arith_addf_75 * arith_const_9); 
            func_arg_2[arith_addi_68] = arith_mulf_76; 
            int arith_addi_77 = (arith_addi_68 + arith_const_12); 
            int arith_addi_78 = (arith_addi_77 + arith_const_6); 
            double memref_load_79 = func_arg_3[arith_addi_78]; 
            double memref_load_80 = func_arg_3[arith_addi_77]; 
            double arith_addf_81 = (memref_load_79 + memref_load_80); 
            int arith_addi_82 = (arith_addi_77 + arith_const_12); 
            double memref_load_83 = func_arg_3[arith_addi_82]; 
            double arith_addf_84 = (arith_addf_81 + memref_load_83); 
            double arith_mulf_85 = (arith_addf_84 * arith_const_9); 
            func_arg_2[arith_addi_77] = arith_mulf_85; 
            int arith_addi_86 = (arith_addi_68 + arith_const_5); 
            int arith_addi_87 = (arith_addi_86 + arith_const_6); 
            double memref_load_88 = func_arg_3[arith_addi_87]; 
            double memref_load_89 = func_arg_3[arith_addi_86]; 
            double arith_addf_90 = (memref_load_88 + memref_load_89); 
            int arith_addi_91 = (arith_addi_86 + arith_const_12); 
            double memref_load_92 = func_arg_3[arith_addi_91]; 
            double arith_addf_93 = (arith_addf_90 + memref_load_92); 
            double arith_mulf_94 = (arith_addf_93 * arith_const_9); 
            func_arg_2[arith_addi_86] = arith_mulf_94; 
            int arith_addi_95 = (arith_addi_68 + arith_const_4); 
            int arith_addi_96 = (arith_addi_95 + arith_const_6); 
            double memref_load_97 = func_arg_3[arith_addi_96]; 
            double memref_load_98 = func_arg_3[arith_addi_95]; 
            double arith_addf_99 = (memref_load_97 + memref_load_98); 
            int arith_addi_100 = (arith_addi_95 + arith_const_12); 
            double memref_load_101 = func_arg_3[arith_addi_100]; 
            double arith_addf_102 = (arith_addf_99 + memref_load_101); 
            double arith_mulf_103 = (arith_addf_102 * arith_const_9); 
            func_arg_2[arith_addi_95] = arith_mulf_103; 
            PAST_SET_SEMAPHORE(execute_token_66, PAST_TASK_FINISHED); 
          }
          async_group_62[async_group_index_63] = execute_token_66; 
          async_group_index_63++; 
          int arith_addi_104 = (for_iter_arg_65 + arith_const_12); 
          for_iter_arg_65 = arith_addi_104; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_62, async_group_index_63, PAST_TASK_FINISHED); 
        PAST_SET_SEMAPHORE(execute_token_18, PAST_TASK_FINISHED); 
      }
      async_group_14[async_group_index_15] = execute_token_18; 
      async_group_index_15++; 
      int arith_addi_105 = (for_iter_arg_17 + arith_const_12); 
      for_iter_arg_17 = arith_addi_105; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_14, async_group_index_15, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
