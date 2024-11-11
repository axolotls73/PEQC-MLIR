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
      for (int for_iter_30 = arith_const_13; for_iter_30 < arith_const_15; for_iter_30 += arith_const_15) {
        int arith_addi_31 = (arith_addi_29 + for_iter_30); 
        func_arg_3[arith_addi_31] = arith_const_12; 
      }
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_32 = (for_iter_arg_27 + arith_const_15); 
    for_iter_arg_27 = arith_addi_32; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  for (int for_iter_33 = arith_const_13; for_iter_33 < arith_const_7; for_iter_33 += arith_const_15) {
    int* async_group_34; 
    int async_group_index_35 = 0; 
    int for_iter_arg_37 = arith_const_13; 
    for (int for_iter_36 = arith_const_13; for_iter_36 < arith_const_15; for_iter_36 += arith_const_15) {
      PAST_NEW_SEMAPHORE(execute_token_38); 
      #pragma peqc async_execute
      {
        int arith_addi_39 = (for_iter_33 + for_iter_36); 
        func_arg_4[arith_addi_39] = arith_const_12; 
        double memref_load_40 = func_arg_6[arith_addi_39]; 
        double memref_load_41 = func_arg_6[arith_addi_39]; 
        double memref_load_42 = func_arg_6[arith_addi_39]; 
        double memref_load_43 = func_arg_6[arith_addi_39]; 
        for (int for_iter_44 = arith_const_13; for_iter_44 < arith_const_14; for_iter_44 += arith_const_15) {
          int arith_muli_45 = (for_iter_44 * arith_const_11); 
          double memref_load_46 = func_arg_3[arith_muli_45]; 
          double memref_load_47 = func_arg_2[arith_addi_39][arith_muli_45]; 
          double arith_mulf_48 = (memref_load_40 * memref_load_47); 
          double arith_addf_49 = (memref_load_46 + arith_mulf_48); 
          func_arg_3[arith_muli_45] = arith_addf_49; 
          double memref_load_50 = func_arg_4[arith_addi_39]; 
          double memref_load_51 = func_arg_2[arith_addi_39][arith_muli_45]; 
          double memref_load_52 = func_arg_5[arith_muli_45]; 
          double arith_mulf_53 = (memref_load_51 * memref_load_52); 
          double arith_addf_54 = (memref_load_50 + arith_mulf_53); 
          func_arg_4[arith_addi_39] = arith_addf_54; 
          int arith_addi_55 = (arith_muli_45 + arith_const_15); 
          double memref_load_56 = func_arg_3[arith_addi_55]; 
          double memref_load_57 = func_arg_2[arith_addi_39][arith_addi_55]; 
          double arith_mulf_58 = (memref_load_41 * memref_load_57); 
          double arith_addf_59 = (memref_load_56 + arith_mulf_58); 
          func_arg_3[arith_addi_55] = arith_addf_59; 
          double memref_load_60 = func_arg_4[arith_addi_39]; 
          double memref_load_61 = func_arg_2[arith_addi_39][arith_addi_55]; 
          double memref_load_62 = func_arg_5[arith_addi_55]; 
          double arith_mulf_63 = (memref_load_61 * memref_load_62); 
          double arith_addf_64 = (memref_load_60 + arith_mulf_63); 
          func_arg_4[arith_addi_39] = arith_addf_64; 
          int arith_addi_65 = (arith_muli_45 + arith_const_10); 
          double memref_load_66 = func_arg_3[arith_addi_65]; 
          double memref_load_67 = func_arg_2[arith_addi_39][arith_addi_65]; 
          double arith_mulf_68 = (memref_load_42 * memref_load_67); 
          double arith_addf_69 = (memref_load_66 + arith_mulf_68); 
          func_arg_3[arith_addi_65] = arith_addf_69; 
          double memref_load_70 = func_arg_4[arith_addi_39]; 
          double memref_load_71 = func_arg_2[arith_addi_39][arith_addi_65]; 
          double memref_load_72 = func_arg_5[arith_addi_65]; 
          double arith_mulf_73 = (memref_load_71 * memref_load_72); 
          double arith_addf_74 = (memref_load_70 + arith_mulf_73); 
          func_arg_4[arith_addi_39] = arith_addf_74; 
          int arith_addi_75 = (arith_muli_45 + arith_const_9); 
          double memref_load_76 = func_arg_3[arith_addi_75]; 
          double memref_load_77 = func_arg_2[arith_addi_39][arith_addi_75]; 
          double arith_mulf_78 = (memref_load_43 * memref_load_77); 
          double arith_addf_79 = (memref_load_76 + arith_mulf_78); 
          func_arg_3[arith_addi_75] = arith_addf_79; 
          double memref_load_80 = func_arg_4[arith_addi_39]; 
          double memref_load_81 = func_arg_2[arith_addi_39][arith_addi_75]; 
          double memref_load_82 = func_arg_5[arith_addi_75]; 
          double arith_mulf_83 = (memref_load_81 * memref_load_82); 
          double arith_addf_84 = (memref_load_80 + arith_mulf_83); 
          func_arg_4[arith_addi_39] = arith_addf_84; 
        }
        double memref_load_85 = func_arg_6[arith_addi_39]; 
        for (int for_iter_86 = arith_const_13; for_iter_86 < arith_const_10; for_iter_86 += arith_const_15) {
          int arith_addi_87 = (for_iter_86 + arith_const_8); 
          double memref_load_88 = func_arg_3[arith_addi_87]; 
          double memref_load_89 = func_arg_2[arith_addi_39][arith_addi_87]; 
          double arith_mulf_90 = (memref_load_85 * memref_load_89); 
          double arith_addf_91 = (memref_load_88 + arith_mulf_90); 
          func_arg_3[arith_addi_87] = arith_addf_91; 
          double memref_load_92 = func_arg_4[arith_addi_39]; 
          double memref_load_93 = func_arg_2[arith_addi_39][arith_addi_87]; 
          double memref_load_94 = func_arg_5[arith_addi_87]; 
          double arith_mulf_95 = (memref_load_93 * memref_load_94); 
          double arith_addf_96 = (memref_load_92 + arith_mulf_95); 
          func_arg_4[arith_addi_39] = arith_addf_96; 
        }
        PAST_SET_SEMAPHORE(execute_token_38, PAST_TASK_FINISHED); 
      }
      async_group_34[async_group_index_35] = execute_token_38; 
      async_group_index_35++; 
      int arith_addi_97 = (for_iter_arg_37 + arith_const_15); 
      for_iter_arg_37 = arith_addi_97; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_34, async_group_index_35, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
