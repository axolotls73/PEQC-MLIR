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
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_16; for_iter_22 += arith_const_16) {
        int arith_addi_23 = (for_iter_19 + for_iter_22); 
        func_arg_5[arith_addi_23] = arith_const_13; 
        func_arg_7[arith_addi_23] = arith_const_13; 
        for (int for_iter_24 = arith_const_14; for_iter_24 < arith_const_12; for_iter_24 += arith_const_16) {
          int arith_muli_25 = (for_iter_24 * arith_const_11); 
          double memref_load_26 = func_arg_3[arith_addi_23][arith_muli_25]; 
          double memref_load_27 = func_arg_6[arith_muli_25]; 
          double arith_mulf_28 = (memref_load_26 * memref_load_27); 
          double memref_load_29 = func_arg_5[arith_addi_23]; 
          double arith_addf_30 = (arith_mulf_28 + memref_load_29); 
          func_arg_5[arith_addi_23] = arith_addf_30; 
          double memref_load_31 = func_arg_4[arith_addi_23][arith_muli_25]; 
          double memref_load_32 = func_arg_6[arith_muli_25]; 
          double arith_mulf_33 = (memref_load_31 * memref_load_32); 
          double memref_load_34 = func_arg_7[arith_addi_23]; 
          double arith_addf_35 = (arith_mulf_33 + memref_load_34); 
          func_arg_7[arith_addi_23] = arith_addf_35; 
          int arith_addi_36 = (arith_muli_25 + arith_const_16); 
          double memref_load_37 = func_arg_3[arith_addi_23][arith_addi_36]; 
          double memref_load_38 = func_arg_6[arith_addi_36]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double memref_load_40 = func_arg_5[arith_addi_23]; 
          double arith_addf_41 = (arith_mulf_39 + memref_load_40); 
          func_arg_5[arith_addi_23] = arith_addf_41; 
          double memref_load_42 = func_arg_4[arith_addi_23][arith_addi_36]; 
          double memref_load_43 = func_arg_6[arith_addi_36]; 
          double arith_mulf_44 = (memref_load_42 * memref_load_43); 
          double memref_load_45 = func_arg_7[arith_addi_23]; 
          double arith_addf_46 = (arith_mulf_44 + memref_load_45); 
          func_arg_7[arith_addi_23] = arith_addf_46; 
          int arith_addi_47 = (arith_muli_25 + arith_const_10); 
          double memref_load_48 = func_arg_3[arith_addi_23][arith_addi_47]; 
          double memref_load_49 = func_arg_6[arith_addi_47]; 
          double arith_mulf_50 = (memref_load_48 * memref_load_49); 
          double memref_load_51 = func_arg_5[arith_addi_23]; 
          double arith_addf_52 = (arith_mulf_50 + memref_load_51); 
          func_arg_5[arith_addi_23] = arith_addf_52; 
          double memref_load_53 = func_arg_4[arith_addi_23][arith_addi_47]; 
          double memref_load_54 = func_arg_6[arith_addi_47]; 
          double arith_mulf_55 = (memref_load_53 * memref_load_54); 
          double memref_load_56 = func_arg_7[arith_addi_23]; 
          double arith_addf_57 = (arith_mulf_55 + memref_load_56); 
          func_arg_7[arith_addi_23] = arith_addf_57; 
          int arith_addi_58 = (arith_muli_25 + arith_const_9); 
          double memref_load_59 = func_arg_3[arith_addi_23][arith_addi_58]; 
          double memref_load_60 = func_arg_6[arith_addi_58]; 
          double arith_mulf_61 = (memref_load_59 * memref_load_60); 
          double memref_load_62 = func_arg_5[arith_addi_23]; 
          double arith_addf_63 = (arith_mulf_61 + memref_load_62); 
          func_arg_5[arith_addi_23] = arith_addf_63; 
          double memref_load_64 = func_arg_4[arith_addi_23][arith_addi_58]; 
          double memref_load_65 = func_arg_6[arith_addi_58]; 
          double arith_mulf_66 = (memref_load_64 * memref_load_65); 
          double memref_load_67 = func_arg_7[arith_addi_23]; 
          double arith_addf_68 = (arith_mulf_66 + memref_load_67); 
          func_arg_7[arith_addi_23] = arith_addf_68; 
        }
        for (int for_iter_69 = arith_const_14; for_iter_69 < arith_const_10; for_iter_69 += arith_const_16) {
          int arith_addi_70 = (for_iter_69 + arith_const_8); 
          double memref_load_71 = func_arg_3[arith_addi_23][arith_addi_70]; 
          double memref_load_72 = func_arg_6[arith_addi_70]; 
          double arith_mulf_73 = (memref_load_71 * memref_load_72); 
          double memref_load_74 = func_arg_5[arith_addi_23]; 
          double arith_addf_75 = (arith_mulf_73 + memref_load_74); 
          func_arg_5[arith_addi_23] = arith_addf_75; 
          double memref_load_76 = func_arg_4[arith_addi_23][arith_addi_70]; 
          double memref_load_77 = func_arg_6[arith_addi_70]; 
          double arith_mulf_78 = (memref_load_76 * memref_load_77); 
          double memref_load_79 = func_arg_7[arith_addi_23]; 
          double arith_addf_80 = (arith_mulf_78 + memref_load_79); 
          func_arg_7[arith_addi_23] = arith_addf_80; 
        }
        double memref_load_81 = func_arg_5[arith_addi_23]; 
        double arith_mulf_82 = (func_arg_1 * memref_load_81); 
        double memref_load_83 = func_arg_7[arith_addi_23]; 
        double arith_mulf_84 = (func_arg_2 * memref_load_83); 
        double arith_addf_85 = (arith_mulf_82 + arith_mulf_84); 
        func_arg_7[arith_addi_23] = arith_addf_85; 
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_86 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_86; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
