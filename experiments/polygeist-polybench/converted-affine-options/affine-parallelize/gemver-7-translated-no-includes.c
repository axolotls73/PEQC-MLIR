#pragma pocc-region-start
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 40; 
  int arith_const_13 = 32; 
  int arith_const_14 = 0; 
  int arith_const_15 = 2; 
  int arith_const_16 = 1; 
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_14; 
  for (int for_iter_19 = arith_const_14; for_iter_19 < arith_const_15; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      for (int for_iter_22 = arith_const_14; for_iter_22 < arith_const_15; for_iter_22 += arith_const_16) {
        int arith_muli_23 = (for_iter_22 * arith_const_13); 
        int arith_muli_24 = (for_iter_22 * arith_const_13); 
        int arith_addi_25 = (arith_muli_24 + arith_const_13); 
        int arith_minsi_26 = min(arith_addi_25, arith_const_12); 
        for (int for_iter_27 = arith_muli_23; for_iter_27 < arith_minsi_26; for_iter_27 += arith_const_16) {
          int arith_muli_28 = (for_iter_19 * arith_const_13); 
          int arith_muli_29 = (for_iter_19 * arith_const_13); 
          int arith_addi_30 = (arith_muli_29 + arith_const_13); 
          int arith_minsi_31 = min(arith_addi_30, arith_const_12); 
          for (int for_iter_32 = arith_muli_28; for_iter_32 < arith_minsi_31; for_iter_32 += arith_const_16) {
            double memref_load_33 = func_arg_3[for_iter_27][for_iter_32]; 
            double memref_load_34 = func_arg_4[for_iter_27]; 
            double memref_load_35 = func_arg_5[for_iter_32]; 
            double arith_mulf_36 = (memref_load_34 * memref_load_35); 
            double arith_addf_37 = (memref_load_33 + arith_mulf_36); 
            double memref_load_38 = func_arg_6[for_iter_27]; 
            double memref_load_39 = func_arg_7[for_iter_32]; 
            double arith_mulf_40 = (memref_load_38 * memref_load_39); 
            double arith_addf_41 = (arith_addf_37 + arith_mulf_40); 
            func_arg_3[for_iter_27][for_iter_32] = arith_addf_41; 
            double memref_load_42 = func_arg_9[for_iter_32]; 
            double memref_load_43 = func_arg_3[for_iter_27][for_iter_32]; 
            double arith_mulf_44 = (func_arg_2 * memref_load_43); 
            double memref_load_45 = func_arg_10[for_iter_27]; 
            double arith_mulf_46 = (arith_mulf_44 * memref_load_45); 
            double arith_addf_47 = (memref_load_42 + arith_mulf_46); 
            func_arg_9[for_iter_32] = arith_addf_47; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_48 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_48; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  int* async_group_49; 
  int async_group_index_50 = 0; 
  int for_iter_arg_52 = arith_const_14; 
  for (int for_iter_51 = arith_const_14; for_iter_51 < arith_const_15; for_iter_51 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_53); 
    #pragma peqc async_execute
    {
      int arith_muli_54 = (for_iter_51 * arith_const_13); 
      int arith_muli_55 = (for_iter_51 * arith_const_13); 
      int arith_addi_56 = (arith_muli_55 + arith_const_13); 
      int arith_minsi_57 = min(arith_addi_56, arith_const_12); 
      for (int for_iter_58 = arith_muli_54; for_iter_58 < arith_minsi_57; for_iter_58 += arith_const_16) {
        double memref_load_59 = func_arg_9[for_iter_58]; 
        double memref_load_60 = func_arg_11[for_iter_58]; 
        double arith_addf_61 = (memref_load_59 + memref_load_60); 
        func_arg_9[for_iter_58] = arith_addf_61; 
      }
      PAST_SET_SEMAPHORE(execute_token_53, PAST_TASK_FINISHED); 
    }
    async_group_49[async_group_index_50] = execute_token_53; 
    async_group_index_50++; 
    int arith_addi_62 = (for_iter_arg_52 + arith_const_16); 
    for_iter_arg_52 = arith_addi_62; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_49, async_group_index_50, PAST_TASK_FINISHED); 
  int* async_group_63; 
  int async_group_index_64 = 0; 
  int for_iter_arg_66 = arith_const_14; 
  for (int for_iter_65 = arith_const_14; for_iter_65 < arith_const_15; for_iter_65 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_67); 
    #pragma peqc async_execute
    {
      for (int for_iter_68 = arith_const_14; for_iter_68 < arith_const_15; for_iter_68 += arith_const_16) {
        int arith_muli_69 = (for_iter_65 * arith_const_13); 
        int arith_muli_70 = (for_iter_65 * arith_const_13); 
        int arith_addi_71 = (arith_muli_70 + arith_const_13); 
        int arith_minsi_72 = min(arith_addi_71, arith_const_12); 
        for (int for_iter_73 = arith_muli_69; for_iter_73 < arith_minsi_72; for_iter_73 += arith_const_16) {
          int arith_muli_74 = (for_iter_68 * arith_const_13); 
          int arith_muli_75 = (for_iter_68 * arith_const_13); 
          int arith_addi_76 = (arith_muli_75 + arith_const_13); 
          int arith_minsi_77 = min(arith_addi_76, arith_const_12); 
          for (int for_iter_78 = arith_muli_74; for_iter_78 < arith_minsi_77; for_iter_78 += arith_const_16) {
            double memref_load_79 = func_arg_8[for_iter_73]; 
            double memref_load_80 = func_arg_3[for_iter_73][for_iter_78]; 
            double arith_mulf_81 = (func_arg_1 * memref_load_80); 
            double memref_load_82 = func_arg_9[for_iter_78]; 
            double arith_mulf_83 = (arith_mulf_81 * memref_load_82); 
            double arith_addf_84 = (memref_load_79 + arith_mulf_83); 
            func_arg_8[for_iter_73] = arith_addf_84; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_67, PAST_TASK_FINISHED); 
    }
    async_group_63[async_group_index_64] = execute_token_67; 
    async_group_index_64++; 
    int arith_addi_85 = (for_iter_arg_66 + arith_const_16); 
    for_iter_arg_66 = arith_addi_85; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_63, async_group_index_64, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
