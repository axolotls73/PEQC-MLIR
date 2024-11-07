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
          PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_26; 
        async_group_index_23++; 
        int arith_addi_48 = (for_iter_arg_25 + arith_const_16); 
        for_iter_arg_25 = arith_addi_48; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_49 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_49; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  int* async_group_50; 
  int async_group_index_51 = 0; 
  int for_iter_arg_53 = arith_const_14; 
  for (int for_iter_52 = arith_const_14; for_iter_52 < arith_const_15; for_iter_52 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_54); 
    #pragma peqc async_execute
    {
      for (int for_iter_55 = arith_const_14; for_iter_55 < arith_const_8; for_iter_55 += arith_const_16) {
        int* async_group_56; 
        int async_group_index_57 = 0; 
        int for_iter_arg_59 = arith_const_14; 
        for (int for_iter_58 = arith_const_14; for_iter_58 < arith_const_16; for_iter_58 += arith_const_16) {
          PAST_NEW_SEMAPHORE(execute_token_60); 
          #pragma peqc async_execute
          {
            int arith_addi_61 = (for_iter_52 + for_iter_58); 
            int* async_group_62; 
            int async_group_index_63 = 0; 
            int for_iter_arg_65 = arith_const_14; 
            for (int for_iter_64 = arith_const_14; for_iter_64 < arith_const_16; for_iter_64 += arith_const_16) {
              PAST_NEW_SEMAPHORE(execute_token_66); 
              #pragma peqc async_execute
              {
                int arith_addi_67 = (for_iter_55 + for_iter_64); 
                int* async_group_68; 
                int async_group_index_69 = 0; 
                int for_iter_arg_71 = arith_const_14; 
                for (int for_iter_70 = arith_const_14; for_iter_70 < arith_const_12; for_iter_70 += arith_const_16) {
                  PAST_NEW_SEMAPHORE(execute_token_72); 
                  #pragma peqc async_execute
                  {
                    int arith_muli_73 = (for_iter_70 * arith_const_11); 
                    double memref_load_74 = func_arg_5[arith_addi_61][arith_muli_73]; 
                    double memref_load_75 = func_arg_6[arith_addi_61][arith_addi_67]; 
                    double arith_mulf_76 = (func_arg_3 * memref_load_75); 
                    double memref_load_77 = func_arg_7[arith_addi_67][arith_muli_73]; 
                    double arith_mulf_78 = (arith_mulf_76 * memref_load_77); 
                    double arith_addf_79 = (memref_load_74 + arith_mulf_78); 
                    func_arg_5[arith_addi_61][arith_muli_73] = arith_addf_79; 
                    int arith_addi_80 = (arith_muli_73 + arith_const_16); 
                    double memref_load_81 = func_arg_5[arith_addi_61][arith_addi_80]; 
                    double memref_load_82 = func_arg_6[arith_addi_61][arith_addi_67]; 
                    double arith_mulf_83 = (func_arg_3 * memref_load_82); 
                    double memref_load_84 = func_arg_7[arith_addi_67][arith_addi_80]; 
                    double arith_mulf_85 = (arith_mulf_83 * memref_load_84); 
                    double arith_addf_86 = (memref_load_81 + arith_mulf_85); 
                    func_arg_5[arith_addi_61][arith_addi_80] = arith_addf_86; 
                    int arith_addi_87 = (arith_muli_73 + arith_const_10); 
                    double memref_load_88 = func_arg_5[arith_addi_61][arith_addi_87]; 
                    double memref_load_89 = func_arg_6[arith_addi_61][arith_addi_67]; 
                    double arith_mulf_90 = (func_arg_3 * memref_load_89); 
                    double memref_load_91 = func_arg_7[arith_addi_67][arith_addi_87]; 
                    double arith_mulf_92 = (arith_mulf_90 * memref_load_91); 
                    double arith_addf_93 = (memref_load_88 + arith_mulf_92); 
                    func_arg_5[arith_addi_61][arith_addi_87] = arith_addf_93; 
                    int arith_addi_94 = (arith_muli_73 + arith_const_9); 
                    double memref_load_95 = func_arg_5[arith_addi_61][arith_addi_94]; 
                    double memref_load_96 = func_arg_6[arith_addi_61][arith_addi_67]; 
                    double arith_mulf_97 = (func_arg_3 * memref_load_96); 
                    double memref_load_98 = func_arg_7[arith_addi_67][arith_addi_94]; 
                    double arith_mulf_99 = (arith_mulf_97 * memref_load_98); 
                    double arith_addf_100 = (memref_load_95 + arith_mulf_99); 
                    func_arg_5[arith_addi_61][arith_addi_94] = arith_addf_100; 
                    PAST_SET_SEMAPHORE(execute_token_72, PAST_TASK_FINISHED); 
                  }
                  async_group_68[async_group_index_69] = execute_token_72; 
                  async_group_index_69++; 
                  int arith_addi_101 = (for_iter_arg_71 + arith_const_16); 
                  for_iter_arg_71 = arith_addi_101; 
                }
                PAST_WAIT_SEMAPHORE_ALL(async_group_68, async_group_index_69, PAST_TASK_FINISHED); 
                double memref_load_102 = func_arg_5[arith_addi_61][arith_const_13]; 
                double memref_load_103 = func_arg_6[arith_addi_61][arith_addi_67]; 
                double arith_mulf_104 = (func_arg_3 * memref_load_103); 
                double memref_load_105 = func_arg_7[arith_addi_67][arith_const_13]; 
                double arith_mulf_106 = (arith_mulf_104 * memref_load_105); 
                double arith_addf_107 = (memref_load_102 + arith_mulf_106); 
                func_arg_5[arith_addi_61][arith_const_13] = arith_addf_107; 
                PAST_SET_SEMAPHORE(execute_token_66, PAST_TASK_FINISHED); 
              }
              async_group_62[async_group_index_63] = execute_token_66; 
              async_group_index_63++; 
              int arith_addi_108 = (for_iter_arg_65 + arith_const_16); 
              for_iter_arg_65 = arith_addi_108; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_62, async_group_index_63, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_60, PAST_TASK_FINISHED); 
          }
          async_group_56[async_group_index_57] = execute_token_60; 
          async_group_index_57++; 
          int arith_addi_109 = (for_iter_arg_59 + arith_const_16); 
          for_iter_arg_59 = arith_addi_109; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_56, async_group_index_57, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_54, PAST_TASK_FINISHED); 
    }
    async_group_50[async_group_index_51] = execute_token_54; 
    async_group_index_51++; 
    int arith_addi_110 = (for_iter_arg_53 + arith_const_16); 
    for_iter_arg_53 = arith_addi_110; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_50, async_group_index_51, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
