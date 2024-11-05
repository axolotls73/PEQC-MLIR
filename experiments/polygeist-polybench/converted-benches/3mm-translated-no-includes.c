#pragma pocc-region-start
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 9; 
  int arith_const_13 = 13; 
  int arith_const_14 = 41; 
  int arith_const_15 = -1; 
  int arith_const_16 = -19; 
  int arith_const_17 = 32; 
  int arith_const_18 = 19; 
  int arith_const_19 = 20; 
  int arith_const_20 = 2; 
  int arith_const_21 = 24; 
  int arith_const_22 = 18; 
  int arith_const_23 = 22; 
  double arith_const_24 = 0.000000; 
  int arith_const_25 = 0; 
  int arith_const_26 = 16; 
  int arith_const_27 = 1; 
  int* async_group_28; 
  int async_group_index_29 = 0; 
  int for_iter_arg_31 = arith_const_25; 
  for (int for_iter_30 = arith_const_25; for_iter_30 < arith_const_26; for_iter_30 += arith_const_27) {
    PAST_NEW_SEMAPHORE(execute_token_32); 
    #pragma peqc async_execute
    {
      int* async_group_33; 
      int async_group_index_34 = 0; 
      int for_iter_arg_36 = arith_const_25; 
      for (int for_iter_35 = arith_const_25; for_iter_35 < arith_const_23; for_iter_35 += arith_const_27) {
        PAST_NEW_SEMAPHORE(execute_token_37); 
        #pragma peqc async_execute
        {
          func_arg_11[for_iter_30][for_iter_35] = arith_const_24; 
          func_arg_8[for_iter_30][for_iter_35] = arith_const_24; 
          PAST_SET_SEMAPHORE(execute_token_37, PAST_TASK_FINISHED); 
        }
        async_group_33[async_group_index_34] = execute_token_37; 
        async_group_index_34++; 
        int arith_addi_38 = (for_iter_arg_36 + arith_const_27); 
        for_iter_arg_36 = arith_addi_38; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_33, async_group_index_34, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_32, PAST_TASK_FINISHED); 
    }
    async_group_28[async_group_index_29] = execute_token_32; 
    async_group_index_29++; 
    int arith_addi_39 = (for_iter_arg_31 + arith_const_27); 
    for_iter_arg_31 = arith_addi_39; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_28, async_group_index_29, PAST_TASK_FINISHED); 
  int* async_group_40; 
  int async_group_index_41 = 0; 
  int for_iter_arg_43 = arith_const_25; 
  for (int for_iter_42 = arith_const_26; for_iter_42 < arith_const_22; for_iter_42 += arith_const_27) {
    PAST_NEW_SEMAPHORE(execute_token_44); 
    #pragma peqc async_execute
    {
      int* async_group_45; 
      int async_group_index_46 = 0; 
      int for_iter_arg_48 = arith_const_25; 
      for (int for_iter_47 = arith_const_25; for_iter_47 < arith_const_23; for_iter_47 += arith_const_27) {
        PAST_NEW_SEMAPHORE(execute_token_49); 
        #pragma peqc async_execute
        {
          func_arg_8[for_iter_42][for_iter_47] = arith_const_24; 
          PAST_SET_SEMAPHORE(execute_token_49, PAST_TASK_FINISHED); 
        }
        async_group_45[async_group_index_46] = execute_token_49; 
        async_group_index_46++; 
        int arith_addi_50 = (for_iter_arg_48 + arith_const_27); 
        for_iter_arg_48 = arith_addi_50; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_45, async_group_index_46, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_44, PAST_TASK_FINISHED); 
    }
    async_group_40[async_group_index_41] = execute_token_44; 
    async_group_index_41++; 
    int arith_addi_51 = (for_iter_arg_43 + arith_const_27); 
    for_iter_arg_43 = arith_addi_51; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_40, async_group_index_41, PAST_TASK_FINISHED); 
  int* async_group_52; 
  int async_group_index_53 = 0; 
  int for_iter_arg_55 = arith_const_25; 
  for (int for_iter_54 = arith_const_25; for_iter_54 < arith_const_22; for_iter_54 += arith_const_27) {
    PAST_NEW_SEMAPHORE(execute_token_56); 
    #pragma peqc async_execute
    {
      for (int for_iter_57 = arith_const_25; for_iter_57 < arith_const_21; for_iter_57 += arith_const_27) {
        int* async_group_58; 
        int async_group_index_59 = 0; 
        int for_iter_arg_61 = arith_const_25; 
        for (int for_iter_60 = arith_const_25; for_iter_60 < arith_const_23; for_iter_60 += arith_const_27) {
          PAST_NEW_SEMAPHORE(execute_token_62); 
          #pragma peqc async_execute
          {
            double memref_load_63 = func_arg_8[for_iter_54][for_iter_60]; 
            double memref_load_64 = func_arg_9[for_iter_54][for_iter_57]; 
            double memref_load_65 = func_arg_10[for_iter_57][for_iter_60]; 
            double arith_mulf_66 = (memref_load_64 * memref_load_65); 
            double arith_addf_67 = (memref_load_63 + arith_mulf_66); 
            func_arg_8[for_iter_54][for_iter_60] = arith_addf_67; 
            PAST_SET_SEMAPHORE(execute_token_62, PAST_TASK_FINISHED); 
          }
          async_group_58[async_group_index_59] = execute_token_62; 
          async_group_index_59++; 
          int arith_addi_68 = (for_iter_arg_61 + arith_const_27); 
          for_iter_arg_61 = arith_addi_68; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_58, async_group_index_59, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_56, PAST_TASK_FINISHED); 
    }
    async_group_52[async_group_index_53] = execute_token_56; 
    async_group_index_53++; 
    int arith_addi_69 = (for_iter_arg_55 + arith_const_27); 
    for_iter_arg_55 = arith_addi_69; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_52, async_group_index_53, PAST_TASK_FINISHED); 
  int* async_group_70; 
  int async_group_index_71 = 0; 
  int for_iter_arg_73 = arith_const_25; 
  for (int for_iter_72 = arith_const_25; for_iter_72 < arith_const_26; for_iter_72 += arith_const_27) {
    PAST_NEW_SEMAPHORE(execute_token_74); 
    #pragma peqc async_execute
    {
      int* async_group_75; 
      int async_group_index_76 = 0; 
      int for_iter_arg_78 = arith_const_25; 
      for (int for_iter_77 = arith_const_25; for_iter_77 < arith_const_22; for_iter_77 += arith_const_27) {
        PAST_NEW_SEMAPHORE(execute_token_79); 
        #pragma peqc async_execute
        {
          func_arg_5[for_iter_72][for_iter_77] = arith_const_24; 
          PAST_SET_SEMAPHORE(execute_token_79, PAST_TASK_FINISHED); 
        }
        async_group_75[async_group_index_76] = execute_token_79; 
        async_group_index_76++; 
        int arith_addi_80 = (for_iter_arg_78 + arith_const_27); 
        for_iter_arg_78 = arith_addi_80; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_75, async_group_index_76, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_74, PAST_TASK_FINISHED); 
    }
    async_group_70[async_group_index_71] = execute_token_74; 
    async_group_index_71++; 
    int arith_addi_81 = (for_iter_arg_73 + arith_const_27); 
    for_iter_arg_73 = arith_addi_81; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_70, async_group_index_71, PAST_TASK_FINISHED); 
  for (int for_iter_82 = arith_const_25; for_iter_82 < arith_const_20; for_iter_82 += arith_const_27) {
    int arith_cmpi_83 = ((for_iter_82 == arith_const_25) ? 1 : 0); 
    if (arith_cmpi_83) {
      int* async_group_84; 
      int async_group_index_85 = 0; 
      int for_iter_arg_87 = arith_const_25; 
      for (int for_iter_86 = arith_const_25; for_iter_86 < arith_const_26; for_iter_86 += arith_const_27) {
        PAST_NEW_SEMAPHORE(execute_token_88); 
        #pragma peqc async_execute
        {
          for (int for_iter_89 = arith_const_25; for_iter_89 < arith_const_22; for_iter_89 += arith_const_27) {
            for (int for_iter_90 = arith_const_25; for_iter_90 < arith_const_19; for_iter_90 += arith_const_27) {
              double memref_load_91 = func_arg_5[for_iter_86][for_iter_89]; 
              double memref_load_92 = func_arg_6[for_iter_86][for_iter_90]; 
              double memref_load_93 = func_arg_7[for_iter_90][for_iter_89]; 
              double arith_mulf_94 = (memref_load_92 * memref_load_93); 
              double arith_addf_95 = (memref_load_91 + arith_mulf_94); 
              func_arg_5[for_iter_86][for_iter_89] = arith_addf_95; 
            }
            int* async_group_96; 
            int async_group_index_97 = 0; 
            int for_iter_arg_99 = arith_const_25; 
            for (int for_iter_98 = arith_const_18; for_iter_98 < arith_const_17; for_iter_98 += arith_const_27) {
              PAST_NEW_SEMAPHORE(execute_token_100); 
              #pragma peqc async_execute
              {
                int arith_addi_101 = (for_iter_98 + arith_const_16); 
                double memref_load_102 = func_arg_11[for_iter_86][arith_addi_101]; 
                double memref_load_103 = func_arg_5[for_iter_86][for_iter_89]; 
                int arith_addi_104 = (for_iter_98 + arith_const_16); 
                double memref_load_105 = func_arg_8[for_iter_89][arith_addi_104]; 
                double arith_mulf_106 = (memref_load_103 * memref_load_105); 
                double arith_addf_107 = (memref_load_102 + arith_mulf_106); 
                int arith_addi_108 = (for_iter_98 + arith_const_16); 
                func_arg_11[for_iter_86][arith_addi_108] = arith_addf_107; 
                PAST_SET_SEMAPHORE(execute_token_100, PAST_TASK_FINISHED); 
              }
              async_group_96[async_group_index_97] = execute_token_100; 
              async_group_index_97++; 
              int arith_addi_109 = (for_iter_arg_99 + arith_const_27); 
              for_iter_arg_99 = arith_addi_109; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_96, async_group_index_97, PAST_TASK_FINISHED); 
          }
          PAST_SET_SEMAPHORE(execute_token_88, PAST_TASK_FINISHED); 
        }
        async_group_84[async_group_index_85] = execute_token_88; 
        async_group_index_85++; 
        int arith_addi_110 = (for_iter_arg_87 + arith_const_27); 
        for_iter_arg_87 = arith_addi_110; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_84, async_group_index_85, PAST_TASK_FINISHED); 
    }
    int arith_addi_111 = (for_iter_82 + arith_const_15); 
    int arith_cmpi_112 = ((arith_addi_111 == arith_const_25) ? 1 : 0); 
    if (arith_cmpi_112) {
      int* async_group_113; 
      int async_group_index_114 = 0; 
      int for_iter_arg_116 = arith_const_25; 
      for (int for_iter_115 = arith_const_25; for_iter_115 < arith_const_26; for_iter_115 += arith_const_27) {
        PAST_NEW_SEMAPHORE(execute_token_117); 
        #pragma peqc async_execute
        {
          for (int for_iter_118 = arith_const_25; for_iter_118 < arith_const_22; for_iter_118 += arith_const_27) {
            int* async_group_119; 
            int async_group_index_120 = 0; 
            int for_iter_arg_122 = arith_const_25; 
            for (int for_iter_121 = arith_const_17; for_iter_121 < arith_const_14; for_iter_121 += arith_const_27) {
              PAST_NEW_SEMAPHORE(execute_token_123); 
              #pragma peqc async_execute
              {
                int arith_addi_124 = (for_iter_121 + arith_const_16); 
                double memref_load_125 = func_arg_11[for_iter_115][arith_addi_124]; 
                double memref_load_126 = func_arg_5[for_iter_115][for_iter_118]; 
                int arith_addi_127 = (for_iter_121 + arith_const_16); 
                double memref_load_128 = func_arg_8[for_iter_118][arith_addi_127]; 
                double arith_mulf_129 = (memref_load_126 * memref_load_128); 
                double arith_addf_130 = (memref_load_125 + arith_mulf_129); 
                int arith_addi_131 = (for_iter_121 + arith_const_16); 
                func_arg_11[for_iter_115][arith_addi_131] = arith_addf_130; 
                PAST_SET_SEMAPHORE(execute_token_123, PAST_TASK_FINISHED); 
              }
              async_group_119[async_group_index_120] = execute_token_123; 
              async_group_index_120++; 
              int arith_addi_132 = (for_iter_arg_122 + arith_const_27); 
              for_iter_arg_122 = arith_addi_132; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_119, async_group_index_120, PAST_TASK_FINISHED); 
          }
          PAST_SET_SEMAPHORE(execute_token_117, PAST_TASK_FINISHED); 
        }
        async_group_113[async_group_index_114] = execute_token_117; 
        async_group_index_114++; 
        int arith_addi_133 = (for_iter_arg_116 + arith_const_27); 
        for_iter_arg_116 = arith_addi_133; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_113, async_group_index_114, PAST_TASK_FINISHED); 
    }
  }
  return; 

}
#pragma pocc-region-end
