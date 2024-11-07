#pragma pocc-region-start
void kernel_gesummv(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 28; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 7; 
  double arith_const_13 = 0.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 30; 
  int arith_const_16 = 1; 
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_14; 
  for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_15; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      int* async_group_22; 
      int async_group_index_23 = 0; 
      int for_iter_arg_25 = arith_const_14; 
      for (int for_iter_24 = arith_const_14; for_iter_24 < arith_const_16; for_iter_24 += arith_const_16) {
        PAST_NEW_SEMAPHORE(execute_token_26); 
        #pragma peqc async_execute
        {
          int arith_addi_27 = (for_iter_19 + for_iter_24); 
          func_arg_5[arith_addi_27] = arith_const_13; 
          func_arg_7[arith_addi_27] = arith_const_13; 
          for (int for_iter_28 = arith_const_14; for_iter_28 < arith_const_12; for_iter_28 += arith_const_16) {
            int arith_muli_29 = (for_iter_28 * arith_const_11); 
            double memref_load_30 = func_arg_3[arith_addi_27][arith_muli_29]; 
            double memref_load_31 = func_arg_6[arith_muli_29]; 
            double arith_mulf_32 = (memref_load_30 * memref_load_31); 
            double memref_load_33 = func_arg_5[arith_addi_27]; 
            double arith_addf_34 = (arith_mulf_32 + memref_load_33); 
            func_arg_5[arith_addi_27] = arith_addf_34; 
            double memref_load_35 = func_arg_4[arith_addi_27][arith_muli_29]; 
            double memref_load_36 = func_arg_6[arith_muli_29]; 
            double arith_mulf_37 = (memref_load_35 * memref_load_36); 
            double memref_load_38 = func_arg_7[arith_addi_27]; 
            double arith_addf_39 = (arith_mulf_37 + memref_load_38); 
            func_arg_7[arith_addi_27] = arith_addf_39; 
            int arith_addi_40 = (arith_muli_29 + arith_const_16); 
            double memref_load_41 = func_arg_3[arith_addi_27][arith_addi_40]; 
            double memref_load_42 = func_arg_6[arith_addi_40]; 
            double arith_mulf_43 = (memref_load_41 * memref_load_42); 
            double memref_load_44 = func_arg_5[arith_addi_27]; 
            double arith_addf_45 = (arith_mulf_43 + memref_load_44); 
            func_arg_5[arith_addi_27] = arith_addf_45; 
            double memref_load_46 = func_arg_4[arith_addi_27][arith_addi_40]; 
            double memref_load_47 = func_arg_6[arith_addi_40]; 
            double arith_mulf_48 = (memref_load_46 * memref_load_47); 
            double memref_load_49 = func_arg_7[arith_addi_27]; 
            double arith_addf_50 = (arith_mulf_48 + memref_load_49); 
            func_arg_7[arith_addi_27] = arith_addf_50; 
            int arith_addi_51 = (arith_muli_29 + arith_const_10); 
            double memref_load_52 = func_arg_3[arith_addi_27][arith_addi_51]; 
            double memref_load_53 = func_arg_6[arith_addi_51]; 
            double arith_mulf_54 = (memref_load_52 * memref_load_53); 
            double memref_load_55 = func_arg_5[arith_addi_27]; 
            double arith_addf_56 = (arith_mulf_54 + memref_load_55); 
            func_arg_5[arith_addi_27] = arith_addf_56; 
            double memref_load_57 = func_arg_4[arith_addi_27][arith_addi_51]; 
            double memref_load_58 = func_arg_6[arith_addi_51]; 
            double arith_mulf_59 = (memref_load_57 * memref_load_58); 
            double memref_load_60 = func_arg_7[arith_addi_27]; 
            double arith_addf_61 = (arith_mulf_59 + memref_load_60); 
            func_arg_7[arith_addi_27] = arith_addf_61; 
            int arith_addi_62 = (arith_muli_29 + arith_const_9); 
            double memref_load_63 = func_arg_3[arith_addi_27][arith_addi_62]; 
            double memref_load_64 = func_arg_6[arith_addi_62]; 
            double arith_mulf_65 = (memref_load_63 * memref_load_64); 
            double memref_load_66 = func_arg_5[arith_addi_27]; 
            double arith_addf_67 = (arith_mulf_65 + memref_load_66); 
            func_arg_5[arith_addi_27] = arith_addf_67; 
            double memref_load_68 = func_arg_4[arith_addi_27][arith_addi_62]; 
            double memref_load_69 = func_arg_6[arith_addi_62]; 
            double arith_mulf_70 = (memref_load_68 * memref_load_69); 
            double memref_load_71 = func_arg_7[arith_addi_27]; 
            double arith_addf_72 = (arith_mulf_70 + memref_load_71); 
            func_arg_7[arith_addi_27] = arith_addf_72; 
          }
          for (int for_iter_73 = arith_const_14; for_iter_73 < arith_const_10; for_iter_73 += arith_const_16) {
            int arith_addi_74 = (for_iter_73 + arith_const_8); 
            double memref_load_75 = func_arg_3[arith_addi_27][arith_addi_74]; 
            double memref_load_76 = func_arg_6[arith_addi_74]; 
            double arith_mulf_77 = (memref_load_75 * memref_load_76); 
            double memref_load_78 = func_arg_5[arith_addi_27]; 
            double arith_addf_79 = (arith_mulf_77 + memref_load_78); 
            func_arg_5[arith_addi_27] = arith_addf_79; 
            double memref_load_80 = func_arg_4[arith_addi_27][arith_addi_74]; 
            double memref_load_81 = func_arg_6[arith_addi_74]; 
            double arith_mulf_82 = (memref_load_80 * memref_load_81); 
            double memref_load_83 = func_arg_7[arith_addi_27]; 
            double arith_addf_84 = (arith_mulf_82 + memref_load_83); 
            func_arg_7[arith_addi_27] = arith_addf_84; 
          }
          double memref_load_85 = func_arg_5[arith_addi_27]; 
          double arith_mulf_86 = (func_arg_1 * memref_load_85); 
          double memref_load_87 = func_arg_7[arith_addi_27]; 
          double arith_mulf_88 = (func_arg_2 * memref_load_87); 
          double arith_addf_89 = (arith_mulf_86 + arith_mulf_88); 
          func_arg_7[arith_addi_27] = arith_addf_89; 
          PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_26; 
        async_group_index_23++; 
        int arith_addi_90 = (for_iter_arg_25 + arith_const_16); 
        for_iter_arg_25 = arith_addi_90; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_91 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_91; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
