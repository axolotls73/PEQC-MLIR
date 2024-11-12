#pragma pocc-region-start
void kernel_trisolv(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 0; 
  int arith_const_9 = 40; 
  int arith_const_10 = 1; 
  for (int for_iter_11 = arith_const_8; for_iter_11 < arith_const_9; for_iter_11 += arith_const_10) {
    int* async_group_12; 
    int async_group_index_13 = 0; 
    int for_iter_arg_15 = arith_const_8; 
    for (int for_iter_14 = arith_const_8; for_iter_14 < arith_const_10; for_iter_14 += arith_const_10) {
      PAST_NEW_SEMAPHORE(execute_token_16); 
      #pragma peqc async_execute
      {
        int arith_addi_17 = (for_iter_11 + for_iter_14); 
        double memref_load_18 = func_arg_3[arith_addi_17]; 
        func_arg_2[arith_addi_17] = memref_load_18; 
        int arith_addi_19 = (for_iter_11 + for_iter_14); 
        int arith_cmpi_20 = (arith_addi_19 < arith_const_8); 
        int arith_subi_21 = (arith_const_6 - arith_addi_19); 
        int arith_select_22 = (arith_cmpi_20 ? arith_subi_21 : arith_addi_19); 
        int arith_divi_23 = (arith_select_22 / arith_const_7); 
        int arith_subi_24 = (arith_const_6 - arith_divi_23); 
        int arith_select_25 = (arith_cmpi_20 ? arith_subi_24 : arith_divi_23); 
        for (int for_iter_26 = arith_const_8; for_iter_26 < arith_select_25; for_iter_26 += arith_const_10) {
          int arith_muli_27 = (for_iter_26 * arith_const_7); 
          double memref_load_28 = func_arg_1[arith_addi_17][arith_muli_27]; 
          double memref_load_29 = func_arg_2[arith_muli_27]; 
          double arith_mulf_30 = (memref_load_28 * memref_load_29); 
          double memref_load_31 = func_arg_2[arith_addi_17]; 
          double arith_subf_32 = (memref_load_31 - arith_mulf_30); 
          func_arg_2[arith_addi_17] = arith_subf_32; 
          int arith_addi_33 = (arith_muli_27 + arith_const_10); 
          double memref_load_34 = func_arg_1[arith_addi_17][arith_addi_33]; 
          double memref_load_35 = func_arg_2[arith_addi_33]; 
          double arith_mulf_36 = (memref_load_34 * memref_load_35); 
          double memref_load_37 = func_arg_2[arith_addi_17]; 
          double arith_subf_38 = (memref_load_37 - arith_mulf_36); 
          func_arg_2[arith_addi_17] = arith_subf_38; 
          int arith_addi_39 = (arith_muli_27 + arith_const_5); 
          double memref_load_40 = func_arg_1[arith_addi_17][arith_addi_39]; 
          double memref_load_41 = func_arg_2[arith_addi_39]; 
          double arith_mulf_42 = (memref_load_40 * memref_load_41); 
          double memref_load_43 = func_arg_2[arith_addi_17]; 
          double arith_subf_44 = (memref_load_43 - arith_mulf_42); 
          func_arg_2[arith_addi_17] = arith_subf_44; 
          int arith_addi_45 = (arith_muli_27 + arith_const_4); 
          double memref_load_46 = func_arg_1[arith_addi_17][arith_addi_45]; 
          double memref_load_47 = func_arg_2[arith_addi_45]; 
          double arith_mulf_48 = (memref_load_46 * memref_load_47); 
          double memref_load_49 = func_arg_2[arith_addi_17]; 
          double arith_subf_50 = (memref_load_49 - arith_mulf_48); 
          func_arg_2[arith_addi_17] = arith_subf_50; 
        }
        int arith_addi_51 = (for_iter_11 + for_iter_14); 
        int arith_remsi_52 = (arith_addi_51 % arith_const_7); 
        int arith_cmpi_53 = (arith_remsi_52 < arith_const_8); 
        int arith_addi_54 = (arith_remsi_52 + arith_const_7); 
        int arith_select_55 = (arith_cmpi_53 ? arith_addi_54 : arith_remsi_52); 
        for (int for_iter_56 = arith_const_8; for_iter_56 < arith_select_55; for_iter_56 += arith_const_10) {
          int arith_cmpi_57 = (arith_addi_17 < arith_const_8); 
          int arith_subi_58 = (arith_const_6 - arith_addi_17); 
          int arith_select_59 = (arith_cmpi_57 ? arith_subi_58 : arith_addi_17); 
          int arith_divi_60 = (arith_select_59 / arith_const_7); 
          int arith_subi_61 = (arith_const_6 - arith_divi_60); 
          int arith_select_62 = (arith_cmpi_57 ? arith_subi_61 : arith_divi_60); 
          int arith_muli_63 = (arith_select_62 * arith_const_7); 
          int arith_addi_64 = (for_iter_56 + arith_muli_63); 
          double memref_load_65 = func_arg_1[arith_addi_17][arith_addi_64]; 
          double memref_load_66 = func_arg_2[arith_addi_64]; 
          double arith_mulf_67 = (memref_load_65 * memref_load_66); 
          double memref_load_68 = func_arg_2[arith_addi_17]; 
          double arith_subf_69 = (memref_load_68 - arith_mulf_67); 
          func_arg_2[arith_addi_17] = arith_subf_69; 
        }
        double memref_load_70 = func_arg_2[arith_addi_17]; 
        double memref_load_71 = func_arg_1[arith_addi_17][arith_addi_17]; 
        double arith_divf_72 = (memref_load_70 / memref_load_71); 
        func_arg_2[arith_addi_17] = arith_divf_72; 
        PAST_SET_SEMAPHORE(execute_token_16, PAST_TASK_FINISHED); 
      }
      async_group_12[async_group_index_13] = execute_token_16; 
      async_group_index_13++; 
      int arith_addi_73 = (for_iter_arg_15 + arith_const_10); 
      for_iter_arg_15 = arith_addi_73; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_12, async_group_index_13, PAST_TASK_FINISHED); 
  }
  return; 

}
#pragma pocc-region-end
