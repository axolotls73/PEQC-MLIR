#pragma pocc-region-start
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 13; 
  int arith_const_12 = 11; 
  int arith_const_13 = 6; 
  int arith_const_14 = 45; 
  int arith_const_15 = -1; 
  int arith_const_16 = -21; 
  int arith_const_17 = 32; 
  int arith_const_18 = 21; 
  int arith_const_19 = 22; 
  int arith_const_20 = 2; 
  int arith_const_21 = 24; 
  int arith_const_22 = 18; 
  double arith_const_23 = 0.000000; 
  int arith_const_24 = 0; 
  int arith_const_25 = 16; 
  int arith_const_26 = 1; 
  int* async_group_27; 
  int async_group_index_28 = 0; 
  int for_iter_arg_30 = arith_const_24; 
  for (int for_iter_29 = arith_const_24; for_iter_29 < arith_const_25; for_iter_29 += arith_const_26) {
    PAST_NEW_SEMAPHORE(execute_token_31); 
    #pragma peqc async_execute
    {
      int* async_group_32; 
      int async_group_index_33 = 0; 
      int for_iter_arg_35 = arith_const_24; 
      for (int for_iter_34 = arith_const_24; for_iter_34 < arith_const_22; for_iter_34 += arith_const_26) {
        PAST_NEW_SEMAPHORE(execute_token_36); 
        #pragma peqc async_execute
        {
          double memref_load_37 = func_arg_10[for_iter_29][for_iter_34]; 
          double arith_mulf_38 = (memref_load_37 * func_arg_5); 
          func_arg_10[for_iter_29][for_iter_34] = arith_mulf_38; 
          func_arg_6[for_iter_29][for_iter_34] = arith_const_23; 
          PAST_SET_SEMAPHORE(execute_token_36, PAST_TASK_FINISHED); 
        }
        async_group_32[async_group_index_33] = execute_token_36; 
        async_group_index_33++; 
        int arith_addi_39 = (for_iter_arg_35 + arith_const_26); 
        for_iter_arg_35 = arith_addi_39; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_32, async_group_index_33, PAST_TASK_FINISHED); 
      int* async_group_40; 
      int async_group_index_41 = 0; 
      int for_iter_arg_43 = arith_const_24; 
      for (int for_iter_42 = arith_const_22; for_iter_42 < arith_const_21; for_iter_42 += arith_const_26) {
        PAST_NEW_SEMAPHORE(execute_token_44); 
        #pragma peqc async_execute
        {
          double memref_load_45 = func_arg_10[for_iter_29][for_iter_42]; 
          double arith_mulf_46 = (memref_load_45 * func_arg_5); 
          func_arg_10[for_iter_29][for_iter_42] = arith_mulf_46; 
          PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
        }
        async_group_40[async_group_index_41] = execute_token_44; 
        async_group_index_41++; 
        int arith_addi_47 = (for_iter_arg_43 + arith_const_26); 
        for_iter_arg_43 = arith_addi_47; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_40, async_group_index_41, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
    }
    async_group_27[async_group_index_28] = execute_token_31; 
    async_group_index_28++; 
    int arith_addi_48 = (for_iter_arg_30 + arith_const_26); 
    for_iter_arg_30 = arith_addi_48; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
  for (int for_iter_49 = arith_const_24; for_iter_49 < arith_const_20; for_iter_49 += arith_const_26) {
    int arith_cmpi_50 = ((for_iter_49 == arith_const_24) ? 1 : 0); 
    if (arith_cmpi_50) {
      int* async_group_51; 
      int async_group_index_52 = 0; 
      int for_iter_arg_54 = arith_const_24; 
      for (int for_iter_53 = arith_const_24; for_iter_53 < arith_const_25; for_iter_53 += arith_const_26) {
        PAST_NEW_SEMAPHORE(execute_token_55); 
        #pragma peqc async_execute
        {
          for (int for_iter_56 = arith_const_24; for_iter_56 < arith_const_22; for_iter_56 += arith_const_26) {
            for (int for_iter_57 = arith_const_24; for_iter_57 < arith_const_19; for_iter_57 += arith_const_26) {
              double memref_load_58 = func_arg_6[for_iter_53][for_iter_56]; 
              double memref_load_59 = func_arg_7[for_iter_53][for_iter_57]; 
              double arith_mulf_60 = (func_arg_4 * memref_load_59); 
              double memref_load_61 = func_arg_8[for_iter_57][for_iter_56]; 
              double arith_mulf_62 = (arith_mulf_60 * memref_load_61); 
              double arith_addf_63 = (memref_load_58 + arith_mulf_62); 
              func_arg_6[for_iter_53][for_iter_56] = arith_addf_63; 
            }
            int* async_group_64; 
            int async_group_index_65 = 0; 
            int for_iter_arg_67 = arith_const_24; 
            for (int for_iter_66 = arith_const_18; for_iter_66 < arith_const_17; for_iter_66 += arith_const_26) {
              PAST_NEW_SEMAPHORE(execute_token_68); 
              #pragma peqc async_execute
              {
                int arith_addi_69 = (for_iter_66 + arith_const_16); 
                double memref_load_70 = func_arg_10[for_iter_53][arith_addi_69]; 
                double memref_load_71 = func_arg_6[for_iter_53][for_iter_56]; 
                int arith_addi_72 = (for_iter_66 + arith_const_16); 
                double memref_load_73 = func_arg_9[for_iter_56][arith_addi_72]; 
                double arith_mulf_74 = (memref_load_71 * memref_load_73); 
                double arith_addf_75 = (memref_load_70 + arith_mulf_74); 
                int arith_addi_76 = (for_iter_66 + arith_const_16); 
                func_arg_10[for_iter_53][arith_addi_76] = arith_addf_75; 
                PAST_SET_SEMAPHORE(execute_token_68, PAST_TASK_FINISHED); 
              }
              async_group_64[async_group_index_65] = execute_token_68; 
              async_group_index_65++; 
              int arith_addi_77 = (for_iter_arg_67 + arith_const_26); 
              for_iter_arg_67 = arith_addi_77; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_64, async_group_index_65, PAST_TASK_FINISHED); 
          }
          PAST_SET_SEMAPHORE(execute_token_55, PAST_TASK_FINISHED); 
        }
        async_group_51[async_group_index_52] = execute_token_55; 
        async_group_index_52++; 
        int arith_addi_78 = (for_iter_arg_54 + arith_const_26); 
        for_iter_arg_54 = arith_addi_78; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_51, async_group_index_52, PAST_TASK_FINISHED); 
    }
    int arith_addi_79 = (for_iter_49 + arith_const_15); 
    int arith_cmpi_80 = ((arith_addi_79 == arith_const_24) ? 1 : 0); 
    if (arith_cmpi_80) {
      int* async_group_81; 
      int async_group_index_82 = 0; 
      int for_iter_arg_84 = arith_const_24; 
      for (int for_iter_83 = arith_const_24; for_iter_83 < arith_const_25; for_iter_83 += arith_const_26) {
        PAST_NEW_SEMAPHORE(execute_token_85); 
        #pragma peqc async_execute
        {
          for (int for_iter_86 = arith_const_24; for_iter_86 < arith_const_22; for_iter_86 += arith_const_26) {
            int* async_group_87; 
            int async_group_index_88 = 0; 
            int for_iter_arg_90 = arith_const_24; 
            for (int for_iter_89 = arith_const_17; for_iter_89 < arith_const_14; for_iter_89 += arith_const_26) {
              PAST_NEW_SEMAPHORE(execute_token_91); 
              #pragma peqc async_execute
              {
                int arith_addi_92 = (for_iter_89 + arith_const_16); 
                double memref_load_93 = func_arg_10[for_iter_83][arith_addi_92]; 
                double memref_load_94 = func_arg_6[for_iter_83][for_iter_86]; 
                int arith_addi_95 = (for_iter_89 + arith_const_16); 
                double memref_load_96 = func_arg_9[for_iter_86][arith_addi_95]; 
                double arith_mulf_97 = (memref_load_94 * memref_load_96); 
                double arith_addf_98 = (memref_load_93 + arith_mulf_97); 
                int arith_addi_99 = (for_iter_89 + arith_const_16); 
                func_arg_10[for_iter_83][arith_addi_99] = arith_addf_98; 
                PAST_SET_SEMAPHORE(execute_token_91, PAST_TASK_FINISHED); 
              }
              async_group_87[async_group_index_88] = execute_token_91; 
              async_group_index_88++; 
              int arith_addi_100 = (for_iter_arg_90 + arith_const_26); 
              for_iter_arg_90 = arith_addi_100; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_87, async_group_index_88, PAST_TASK_FINISHED); 
          }
          PAST_SET_SEMAPHORE(execute_token_85, PAST_TASK_FINISHED); 
        }
        async_group_81[async_group_index_82] = execute_token_85; 
        async_group_index_82++; 
        int arith_addi_101 = (for_iter_arg_84 + arith_const_26); 
        for_iter_arg_84 = arith_addi_101; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_81, async_group_index_82, PAST_TASK_FINISHED); 
    }
  }
  return; 

}
#pragma pocc-region-end
