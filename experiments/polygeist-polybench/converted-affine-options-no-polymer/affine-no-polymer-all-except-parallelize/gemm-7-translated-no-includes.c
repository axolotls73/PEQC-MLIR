#pragma pocc-region-start
void kernel_gemm(int func_arg_0, int func_arg_1, int func_arg_2, double func_arg_3, double func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7)
{
  int arith_const_8 = 30; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = 4; 
  int arith_const_12 = 6; 
  int arith_const_13 = 24; 
  int arith_const_14 = 0; 
  int arith_const_15 = 20; 
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
          int* async_group_28; 
          int async_group_index_29 = 0; 
          int for_iter_arg_31 = arith_const_14; 
          for (int for_iter_30 = arith_const_14; for_iter_30 < arith_const_12; for_iter_30 += arith_const_16) {
            PAST_NEW_SEMAPHORE(execute_token_32); 
            #pragma peqc async_execute
            {
              int arith_muli_33 = (for_iter_30 * arith_const_11); 
              double memref_load_34 = func_arg_5[arith_addi_27][arith_muli_33]; 
              double arith_mulf_35 = (memref_load_34 * func_arg_4); 
              func_arg_5[arith_addi_27][arith_muli_33] = arith_mulf_35; 
              int arith_addi_36 = (arith_muli_33 + arith_const_16); 
              double memref_load_37 = func_arg_5[arith_addi_27][arith_addi_36]; 
              double arith_mulf_38 = (memref_load_37 * func_arg_4); 
              func_arg_5[arith_addi_27][arith_addi_36] = arith_mulf_38; 
              int arith_addi_39 = (arith_muli_33 + arith_const_10); 
              double memref_load_40 = func_arg_5[arith_addi_27][arith_addi_39]; 
              double arith_mulf_41 = (memref_load_40 * func_arg_4); 
              func_arg_5[arith_addi_27][arith_addi_39] = arith_mulf_41; 
              int arith_addi_42 = (arith_muli_33 + arith_const_9); 
              double memref_load_43 = func_arg_5[arith_addi_27][arith_addi_42]; 
              double arith_mulf_44 = (memref_load_43 * func_arg_4); 
              func_arg_5[arith_addi_27][arith_addi_42] = arith_mulf_44; 
              PAST_SET_SEMAPHORE(execute_token_32, PAST_TASK_FINISHED); 
            }
            async_group_28[async_group_index_29] = execute_token_32; 
            async_group_index_29++; 
            int arith_addi_45 = (for_iter_arg_31 + arith_const_16); 
            for_iter_arg_31 = arith_addi_45; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_28, async_group_index_29, PAST_TASK_FINISHED); 
          double memref_load_46 = func_arg_5[arith_addi_27][arith_const_13]; 
          double arith_mulf_47 = (memref_load_46 * func_arg_4); 
          func_arg_5[arith_addi_27][arith_const_13] = arith_mulf_47; 
          for (int for_iter_48 = arith_const_14; for_iter_48 < arith_const_8; for_iter_48 += arith_const_16) {
            int* async_group_49; 
            int async_group_index_50 = 0; 
            int for_iter_arg_52 = arith_const_14; 
            for (int for_iter_51 = arith_const_14; for_iter_51 < arith_const_12; for_iter_51 += arith_const_16) {
              PAST_NEW_SEMAPHORE(execute_token_53); 
              #pragma peqc async_execute
              {
                int arith_muli_54 = (for_iter_51 * arith_const_11); 
                double memref_load_55 = func_arg_6[arith_addi_27][for_iter_48]; 
                double arith_mulf_56 = (func_arg_3 * memref_load_55); 
                double memref_load_57 = func_arg_7[for_iter_48][arith_muli_54]; 
                double arith_mulf_58 = (arith_mulf_56 * memref_load_57); 
                double memref_load_59 = func_arg_5[arith_addi_27][arith_muli_54]; 
                double arith_addf_60 = (memref_load_59 + arith_mulf_58); 
                func_arg_5[arith_addi_27][arith_muli_54] = arith_addf_60; 
                int arith_addi_61 = (arith_muli_54 + arith_const_16); 
                double memref_load_62 = func_arg_6[arith_addi_27][for_iter_48]; 
                double arith_mulf_63 = (func_arg_3 * memref_load_62); 
                double memref_load_64 = func_arg_7[for_iter_48][arith_addi_61]; 
                double arith_mulf_65 = (arith_mulf_63 * memref_load_64); 
                double memref_load_66 = func_arg_5[arith_addi_27][arith_addi_61]; 
                double arith_addf_67 = (memref_load_66 + arith_mulf_65); 
                func_arg_5[arith_addi_27][arith_addi_61] = arith_addf_67; 
                int arith_addi_68 = (arith_muli_54 + arith_const_10); 
                double memref_load_69 = func_arg_6[arith_addi_27][for_iter_48]; 
                double arith_mulf_70 = (func_arg_3 * memref_load_69); 
                double memref_load_71 = func_arg_7[for_iter_48][arith_addi_68]; 
                double arith_mulf_72 = (arith_mulf_70 * memref_load_71); 
                double memref_load_73 = func_arg_5[arith_addi_27][arith_addi_68]; 
                double arith_addf_74 = (memref_load_73 + arith_mulf_72); 
                func_arg_5[arith_addi_27][arith_addi_68] = arith_addf_74; 
                int arith_addi_75 = (arith_muli_54 + arith_const_9); 
                double memref_load_76 = func_arg_6[arith_addi_27][for_iter_48]; 
                double arith_mulf_77 = (func_arg_3 * memref_load_76); 
                double memref_load_78 = func_arg_7[for_iter_48][arith_addi_75]; 
                double arith_mulf_79 = (arith_mulf_77 * memref_load_78); 
                double memref_load_80 = func_arg_5[arith_addi_27][arith_addi_75]; 
                double arith_addf_81 = (memref_load_80 + arith_mulf_79); 
                func_arg_5[arith_addi_27][arith_addi_75] = arith_addf_81; 
                PAST_SET_SEMAPHORE(execute_token_53, PAST_TASK_FINISHED); 
              }
              async_group_49[async_group_index_50] = execute_token_53; 
              async_group_index_50++; 
              int arith_addi_82 = (for_iter_arg_52 + arith_const_16); 
              for_iter_arg_52 = arith_addi_82; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_49, async_group_index_50, PAST_TASK_FINISHED); 
            double memref_load_83 = func_arg_6[arith_addi_27][for_iter_48]; 
            double arith_mulf_84 = (func_arg_3 * memref_load_83); 
            double memref_load_85 = func_arg_7[for_iter_48][arith_const_13]; 
            double arith_mulf_86 = (arith_mulf_84 * memref_load_85); 
            double memref_load_87 = func_arg_5[arith_addi_27][arith_const_13]; 
            double arith_addf_88 = (memref_load_87 + arith_mulf_86); 
            func_arg_5[arith_addi_27][arith_const_13] = arith_addf_88; 
          }
          PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_26; 
        async_group_index_23++; 
        int arith_addi_89 = (for_iter_arg_25 + arith_const_16); 
        for_iter_arg_25 = arith_addi_89; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_90 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_90; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
