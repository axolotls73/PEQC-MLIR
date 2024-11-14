#pragma pocc-region-start
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 6; 
  int arith_const_13 = 20; 
  int arith_const_14 = 32; 
  int arith_const_15 = 24; 
  int arith_const_16 = 0; 
  int arith_const_17 = 1; 
  int* async_group_18; 
  int async_group_index_19 = 0; 
  int for_iter_arg_21 = arith_const_16; 
  for (int for_iter_20 = arith_const_16; for_iter_20 < arith_const_17; for_iter_20 += arith_const_17) {
    PAST_NEW_SEMAPHORE(execute_token_22); 
    #pragma peqc async_execute
    {
      int arith_muli_23 = (for_iter_20 * arith_const_14); 
      for (int for_iter_24 = arith_const_16; for_iter_24 < arith_const_13; for_iter_24 += arith_const_17) {
        int arith_addi_25 = (arith_muli_23 + for_iter_24); 
        for (int for_iter_26 = arith_const_16; for_iter_26 < arith_const_12; for_iter_26 += arith_const_17) {
          int arith_muli_27 = (for_iter_26 * arith_const_11); 
          double memref_load_28 = func_arg_5[arith_addi_25][arith_muli_27]; 
          double arith_mulf_29 = (memref_load_28 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_muli_27] = arith_mulf_29; 
          int arith_addi_30 = (arith_muli_27 + arith_const_17); 
          double memref_load_31 = func_arg_5[arith_addi_25][arith_addi_30]; 
          double arith_mulf_32 = (memref_load_31 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_addi_30] = arith_mulf_32; 
          int arith_addi_33 = (arith_muli_27 + arith_const_10); 
          double memref_load_34 = func_arg_5[arith_addi_25][arith_addi_33]; 
          double arith_mulf_35 = (memref_load_34 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_addi_33] = arith_mulf_35; 
          int arith_addi_36 = (arith_muli_27 + arith_const_9); 
          double memref_load_37 = func_arg_5[arith_addi_25][arith_addi_36]; 
          double arith_mulf_38 = (memref_load_37 * func_arg_4); 
          func_arg_5[arith_addi_25][arith_addi_36] = arith_mulf_38; 
        }
        double memref_load_39 = func_arg_5[arith_addi_25][arith_const_15]; 
        double arith_mulf_40 = (memref_load_39 * func_arg_4); 
        func_arg_5[arith_addi_25][arith_const_15] = arith_mulf_40; 
        for (int for_iter_41 = arith_const_16; for_iter_41 < arith_const_8; for_iter_41 += arith_const_17) {
          double memref_load_42 = func_arg_6[arith_addi_25][for_iter_41]; 
          double arith_mulf_43 = (func_arg_3 * memref_load_42); 
          double memref_load_44 = func_arg_6[arith_addi_25][for_iter_41]; 
          double arith_mulf_45 = (func_arg_3 * memref_load_44); 
          double memref_load_46 = func_arg_6[arith_addi_25][for_iter_41]; 
          double arith_mulf_47 = (func_arg_3 * memref_load_46); 
          double memref_load_48 = func_arg_6[arith_addi_25][for_iter_41]; 
          double arith_mulf_49 = (func_arg_3 * memref_load_48); 
          for (int for_iter_50 = arith_const_16; for_iter_50 < arith_const_12; for_iter_50 += arith_const_17) {
            int arith_muli_51 = (for_iter_50 * arith_const_11); 
            double memref_load_52 = func_arg_7[for_iter_41][arith_muli_51]; 
            double arith_mulf_53 = (arith_mulf_43 * memref_load_52); 
            double memref_load_54 = func_arg_5[arith_addi_25][arith_muli_51]; 
            double arith_addf_55 = (memref_load_54 + arith_mulf_53); 
            func_arg_5[arith_addi_25][arith_muli_51] = arith_addf_55; 
            int arith_addi_56 = (arith_muli_51 + arith_const_17); 
            double memref_load_57 = func_arg_7[for_iter_41][arith_addi_56]; 
            double arith_mulf_58 = (arith_mulf_45 * memref_load_57); 
            double memref_load_59 = func_arg_5[arith_addi_25][arith_addi_56]; 
            double arith_addf_60 = (memref_load_59 + arith_mulf_58); 
            func_arg_5[arith_addi_25][arith_addi_56] = arith_addf_60; 
            int arith_addi_61 = (arith_muli_51 + arith_const_10); 
            double memref_load_62 = func_arg_7[for_iter_41][arith_addi_61]; 
            double arith_mulf_63 = (arith_mulf_47 * memref_load_62); 
            double memref_load_64 = func_arg_5[arith_addi_25][arith_addi_61]; 
            double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
            func_arg_5[arith_addi_25][arith_addi_61] = arith_addf_65; 
            int arith_addi_66 = (arith_muli_51 + arith_const_9); 
            double memref_load_67 = func_arg_7[for_iter_41][arith_addi_66]; 
            double arith_mulf_68 = (arith_mulf_49 * memref_load_67); 
            double memref_load_69 = func_arg_5[arith_addi_25][arith_addi_66]; 
            double arith_addf_70 = (memref_load_69 + arith_mulf_68); 
            func_arg_5[arith_addi_25][arith_addi_66] = arith_addf_70; 
          }
          double memref_load_71 = func_arg_6[arith_addi_25][for_iter_41]; 
          double arith_mulf_72 = (func_arg_3 * memref_load_71); 
          double memref_load_73 = func_arg_7[for_iter_41][arith_const_15]; 
          double arith_mulf_74 = (arith_mulf_72 * memref_load_73); 
          double memref_load_75 = func_arg_5[arith_addi_25][arith_const_15]; 
          double arith_addf_76 = (memref_load_75 + arith_mulf_74); 
          func_arg_5[arith_addi_25][arith_const_15] = arith_addf_76; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_22, PAST_TASK_FINISHED); 
    }
    async_group_18[async_group_index_19] = execute_token_22; 
    async_group_index_19++; 
    int arith_addi_77 = (for_iter_arg_21 + arith_const_17); 
    for_iter_arg_21 = arith_addi_77; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_18, async_group_index_19, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
