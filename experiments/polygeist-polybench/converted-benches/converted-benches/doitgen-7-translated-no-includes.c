#pragma pocc-region-start
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 12; 
  int arith_const_7 = 8; 
  int arith_const_8 = -1; 
  int arith_const_9 = 31; 
  int arith_const_10 = 10; 
  int arith_const_11 = 7; 
  int arith_const_12 = -7; 
  int arith_const_13 = 32; 
  double arith_const_14 = 0.000000; 
  int arith_const_15 = 0; 
  int arith_const_16 = 3; 
  int arith_const_17 = 1; 
  for (int for_iter_18 = arith_const_15; for_iter_18 < arith_const_16; for_iter_18 += arith_const_17) {
    int arith_muli_19 = (for_iter_18 * arith_const_13); 
    int arith_addi_20 = (arith_muli_19 + arith_const_12); 
    int arith_cmpi_21 = ((arith_addi_20 <= arith_const_15) ? 1 : 0); 
    int arith_subi_22 = (arith_const_15 - arith_addi_20); 
    int arith_subi_23 = (arith_addi_20 - arith_const_17); 
    int arith_select_24 = (arith_cmpi_21 ? arith_subi_22 : arith_subi_23); 
    int arith_divi_25 = (arith_select_24 / arith_const_11); 
    int arith_subi_26 = (arith_const_15 - arith_divi_25); 
    int arith_addi_27 = (arith_divi_25 + arith_const_17); 
    int arith_select_28 = (arith_cmpi_21 ? arith_subi_26 : arith_addi_27); 
    int arith_maxsi_29 = max(arith_select_28, arith_const_15); 
    int arith_muli_30 = (for_iter_18 * arith_const_13); 
    int arith_addi_31 = (arith_muli_30 + arith_const_9); 
    int arith_cmpi_32 = ((arith_addi_31 < arith_const_15) ? 1 : 0); 
    int arith_subi_33 = (arith_const_8 - arith_addi_31); 
    int arith_select_34 = (arith_cmpi_32 ? arith_subi_33 : arith_addi_31); 
    int arith_divi_35 = (arith_select_34 / arith_const_11); 
    int arith_subi_36 = (arith_const_8 - arith_divi_35); 
    int arith_select_37 = (arith_cmpi_32 ? arith_subi_36 : arith_divi_35); 
    int arith_addi_38 = (arith_select_37 + arith_const_17); 
    int arith_minsi_39 = min(arith_addi_38, arith_const_10); 
    for (int for_iter_40 = arith_maxsi_29; for_iter_40 < arith_minsi_39; for_iter_40 += arith_const_17) {
      int arith_muli_41 = (for_iter_18 * arith_const_13); 
      int arith_muli_42 = (for_iter_40 * arith_const_11); 
      int arith_maxsi_43 = max(arith_muli_41, arith_muli_42); 
      int arith_muli_44 = (for_iter_18 * arith_const_13); 
      int arith_addi_45 = (arith_muli_44 + arith_const_13); 
      int arith_muli_46 = (for_iter_40 * arith_const_11); 
      int arith_addi_47 = (arith_muli_46 + arith_const_7); 
      int arith_minsi_48 = min(arith_addi_45, arith_addi_47); 
      for (int for_iter_49 = arith_maxsi_43; for_iter_49 < arith_minsi_48; for_iter_49 += arith_const_17) {
        int* async_group_50; 
        int async_group_index_51 = 0; 
        int for_iter_arg_53 = arith_const_15; 
        for (int for_iter_52 = arith_const_15; for_iter_52 < arith_const_6; for_iter_52 += arith_const_17) {
          PAST_NEW_SEMAPHORE(execute_token_54); 
          #pragma peqc async_execute
          {
            func_arg_5[for_iter_52] = arith_const_14; 
            PAST_SET_SEMAPHORE(execute_token_54, PAST_TASK_FINISHED); 
          }
          async_group_50[async_group_index_51] = execute_token_54; 
          async_group_index_51++; 
          int arith_addi_55 = (for_iter_arg_53 + arith_const_17); 
          for_iter_arg_53 = arith_addi_55; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_50, async_group_index_51, PAST_TASK_FINISHED); 
        for (int for_iter_56 = arith_const_15; for_iter_56 < arith_const_6; for_iter_56 += arith_const_17) {
          int* async_group_57; 
          int async_group_index_58 = 0; 
          int for_iter_arg_60 = arith_const_15; 
          for (int for_iter_59 = arith_const_15; for_iter_59 < arith_const_6; for_iter_59 += arith_const_17) {
            PAST_NEW_SEMAPHORE(execute_token_61); 
            #pragma peqc async_execute
            {
              double memref_load_62 = func_arg_5[for_iter_59]; 
              int arith_muli_63 = (for_iter_40 * arith_const_12); 
              int arith_addi_64 = (arith_muli_63 + for_iter_49); 
              double memref_load_65 = func_arg_3[for_iter_40][arith_addi_64][for_iter_56]; 
              double memref_load_66 = func_arg_4[for_iter_56][for_iter_59]; 
              double arith_mulf_67 = (memref_load_65 * memref_load_66); 
              double arith_addf_68 = (memref_load_62 + arith_mulf_67); 
              func_arg_5[for_iter_59] = arith_addf_68; 
              PAST_SET_SEMAPHORE(execute_token_61, PAST_TASK_FINISHED); 
            }
            async_group_57[async_group_index_58] = execute_token_61; 
            async_group_index_58++; 
            int arith_addi_69 = (for_iter_arg_60 + arith_const_17); 
            for_iter_arg_60 = arith_addi_69; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_57, async_group_index_58, PAST_TASK_FINISHED); 
        }
        int* async_group_70; 
        int async_group_index_71 = 0; 
        int for_iter_arg_73 = arith_const_15; 
        for (int for_iter_72 = arith_const_15; for_iter_72 < arith_const_6; for_iter_72 += arith_const_17) {
          PAST_NEW_SEMAPHORE(execute_token_74); 
          #pragma peqc async_execute
          {
            double memref_load_75 = func_arg_5[for_iter_72]; 
            int arith_muli_76 = (for_iter_40 * arith_const_12); 
            int arith_addi_77 = (arith_muli_76 + for_iter_49); 
            func_arg_3[for_iter_40][arith_addi_77][for_iter_72] = memref_load_75; 
            PAST_SET_SEMAPHORE(execute_token_74, PAST_TASK_FINISHED); 
          }
          async_group_70[async_group_index_71] = execute_token_74; 
          async_group_index_71++; 
          int arith_addi_78 = (for_iter_arg_73 + arith_const_17); 
          for_iter_arg_73 = arith_addi_78; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_70, async_group_index_71, PAST_TASK_FINISHED); 
      }
    }
  }
  return; 

}
#pragma pocc-region-end
