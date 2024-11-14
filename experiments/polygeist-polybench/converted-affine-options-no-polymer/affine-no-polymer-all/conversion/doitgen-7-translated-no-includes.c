#pragma pocc-region-start
void kernel_doitgen(int func_arg_0, int func_arg_1, int func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 2; 
  int arith_const_7 = 4; 
  int arith_const_8 = 3; 
  int arith_const_9 = 12; 
  int arith_const_10 = 8; 
  int arith_const_11 = 10; 
  int arith_const_12 = 32; 
  double arith_const_13 = 0.000000; 
  int arith_const_14 = 0; 
  int arith_const_15 = 1; 
  int* async_group_16; 
  int async_group_index_17 = 0; 
  int for_iter_arg_19 = arith_const_14; 
  for (int for_iter_18 = arith_const_14; for_iter_18 < arith_const_15; for_iter_18 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      int arith_muli_21 = (for_iter_18 * arith_const_12); 
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_15; for_iter_22 += arith_const_15) {
        int arith_muli_23 = (for_iter_22 * arith_const_12); 
        for (int for_iter_24 = arith_const_14; for_iter_24 < arith_const_11; for_iter_24 += arith_const_15) {
          int arith_addi_25 = (arith_muli_21 + for_iter_24); 
          for (int for_iter_26 = arith_const_14; for_iter_26 < arith_const_10; for_iter_26 += arith_const_15) {
            int arith_addi_27 = (arith_muli_23 + for_iter_26); 
            for (int for_iter_28 = arith_const_14; for_iter_28 < arith_const_9; for_iter_28 += arith_const_15) {
              func_arg_5[for_iter_28] = arith_const_13; 
              for (int for_iter_29 = arith_const_14; for_iter_29 < arith_const_8; for_iter_29 += arith_const_15) {
                int arith_muli_30 = (for_iter_29 * arith_const_7); 
                double memref_load_31 = func_arg_3[arith_addi_25][arith_addi_27][arith_muli_30]; 
                double memref_load_32 = func_arg_4[arith_muli_30][for_iter_28]; 
                double arith_mulf_33 = (memref_load_31 * memref_load_32); 
                double memref_load_34 = func_arg_5[for_iter_28]; 
                double arith_addf_35 = (memref_load_34 + arith_mulf_33); 
                func_arg_5[for_iter_28] = arith_addf_35; 
                int arith_addi_36 = (arith_muli_30 + arith_const_15); 
                double memref_load_37 = func_arg_3[arith_addi_25][arith_addi_27][arith_addi_36]; 
                double memref_load_38 = func_arg_4[arith_addi_36][for_iter_28]; 
                double arith_mulf_39 = (memref_load_37 * memref_load_38); 
                double memref_load_40 = func_arg_5[for_iter_28]; 
                double arith_addf_41 = (memref_load_40 + arith_mulf_39); 
                func_arg_5[for_iter_28] = arith_addf_41; 
                int arith_addi_42 = (arith_muli_30 + arith_const_6); 
                double memref_load_43 = func_arg_3[arith_addi_25][arith_addi_27][arith_addi_42]; 
                double memref_load_44 = func_arg_4[arith_addi_42][for_iter_28]; 
                double arith_mulf_45 = (memref_load_43 * memref_load_44); 
                double memref_load_46 = func_arg_5[for_iter_28]; 
                double arith_addf_47 = (memref_load_46 + arith_mulf_45); 
                func_arg_5[for_iter_28] = arith_addf_47; 
                int arith_addi_48 = (arith_muli_30 + arith_const_8); 
                double memref_load_49 = func_arg_3[arith_addi_25][arith_addi_27][arith_addi_48]; 
                double memref_load_50 = func_arg_4[arith_addi_48][for_iter_28]; 
                double arith_mulf_51 = (memref_load_49 * memref_load_50); 
                double memref_load_52 = func_arg_5[for_iter_28]; 
                double arith_addf_53 = (memref_load_52 + arith_mulf_51); 
                func_arg_5[for_iter_28] = arith_addf_53; 
              }
            }
            for (int for_iter_54 = arith_const_14; for_iter_54 < arith_const_8; for_iter_54 += arith_const_15) {
              int arith_muli_55 = (for_iter_54 * arith_const_7); 
              double memref_load_56 = func_arg_5[arith_muli_55]; 
              func_arg_3[arith_addi_25][arith_addi_27][arith_muli_55] = memref_load_56; 
              int arith_addi_57 = (arith_muli_55 + arith_const_15); 
              double memref_load_58 = func_arg_5[arith_addi_57]; 
              func_arg_3[arith_addi_25][arith_addi_27][arith_addi_57] = memref_load_58; 
              int arith_addi_59 = (arith_muli_55 + arith_const_6); 
              double memref_load_60 = func_arg_5[arith_addi_59]; 
              func_arg_3[arith_addi_25][arith_addi_27][arith_addi_59] = memref_load_60; 
              int arith_addi_61 = (arith_muli_55 + arith_const_8); 
              double memref_load_62 = func_arg_5[arith_addi_61]; 
              func_arg_3[arith_addi_25][arith_addi_27][arith_addi_61] = memref_load_62; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_63 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_63; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
