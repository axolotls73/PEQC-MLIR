#pragma pocc-region-start
void kernel_2mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, double func_arg_4, double func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10)
{
  int arith_const_11 = 24; 
  int arith_const_12 = 20; 
  int arith_const_13 = 3; 
  int arith_const_14 = 2; 
  int arith_const_15 = 4; 
  int arith_const_16 = 5; 
  int arith_const_17 = 18; 
  double arith_const_18 = 0.000000; 
  int arith_const_19 = 0; 
  int arith_const_20 = 16; 
  int arith_const_21 = 1; 
  int* async_group_22; 
  int async_group_index_23 = 0; 
  int for_iter_arg_25 = arith_const_19; 
  for (int for_iter_24 = arith_const_19; for_iter_24 < arith_const_20; for_iter_24 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_26); 
    #pragma peqc async_execute
    {
      int* async_group_27; 
      int async_group_index_28 = 0; 
      int for_iter_arg_30 = arith_const_19; 
      for (int for_iter_29 = arith_const_19; for_iter_29 < arith_const_17; for_iter_29 += arith_const_21) {
        PAST_NEW_SEMAPHORE(execute_token_31); 
        #pragma peqc async_execute
        {
          int* async_group_32; 
          int async_group_index_33 = 0; 
          int for_iter_arg_35 = arith_const_19; 
          for (int for_iter_34 = arith_const_19; for_iter_34 < arith_const_21; for_iter_34 += arith_const_21) {
            PAST_NEW_SEMAPHORE(execute_token_36); 
            #pragma peqc async_execute
            {
              int arith_addi_37 = (for_iter_24 + for_iter_34); 
              int* async_group_38; 
              int async_group_index_39 = 0; 
              int for_iter_arg_41 = arith_const_19; 
              for (int for_iter_40 = arith_const_19; for_iter_40 < arith_const_21; for_iter_40 += arith_const_21) {
                PAST_NEW_SEMAPHORE(execute_token_42); 
                #pragma peqc async_execute
                {
                  int arith_addi_43 = (for_iter_29 + for_iter_40); 
                  func_arg_6[arith_addi_37][arith_addi_43] = arith_const_18; 
                  for (int for_iter_44 = arith_const_19; for_iter_44 < arith_const_16; for_iter_44 += arith_const_21) {
                    int arith_muli_45 = (for_iter_44 * arith_const_15); 
                    double memref_load_46 = func_arg_7[arith_addi_37][arith_muli_45]; 
                    double arith_mulf_47 = (func_arg_4 * memref_load_46); 
                    double memref_load_48 = func_arg_8[arith_muli_45][arith_addi_43]; 
                    double arith_mulf_49 = (arith_mulf_47 * memref_load_48); 
                    double memref_load_50 = func_arg_6[arith_addi_37][arith_addi_43]; 
                    double arith_addf_51 = (memref_load_50 + arith_mulf_49); 
                    func_arg_6[arith_addi_37][arith_addi_43] = arith_addf_51; 
                    int arith_addi_52 = (arith_muli_45 + arith_const_21); 
                    double memref_load_53 = func_arg_7[arith_addi_37][arith_addi_52]; 
                    double arith_mulf_54 = (func_arg_4 * memref_load_53); 
                    double memref_load_55 = func_arg_8[arith_addi_52][arith_addi_43]; 
                    double arith_mulf_56 = (arith_mulf_54 * memref_load_55); 
                    double memref_load_57 = func_arg_6[arith_addi_37][arith_addi_43]; 
                    double arith_addf_58 = (memref_load_57 + arith_mulf_56); 
                    func_arg_6[arith_addi_37][arith_addi_43] = arith_addf_58; 
                    int arith_addi_59 = (arith_muli_45 + arith_const_14); 
                    double memref_load_60 = func_arg_7[arith_addi_37][arith_addi_59]; 
                    double arith_mulf_61 = (func_arg_4 * memref_load_60); 
                    double memref_load_62 = func_arg_8[arith_addi_59][arith_addi_43]; 
                    double arith_mulf_63 = (arith_mulf_61 * memref_load_62); 
                    double memref_load_64 = func_arg_6[arith_addi_37][arith_addi_43]; 
                    double arith_addf_65 = (memref_load_64 + arith_mulf_63); 
                    func_arg_6[arith_addi_37][arith_addi_43] = arith_addf_65; 
                    int arith_addi_66 = (arith_muli_45 + arith_const_13); 
                    double memref_load_67 = func_arg_7[arith_addi_37][arith_addi_66]; 
                    double arith_mulf_68 = (func_arg_4 * memref_load_67); 
                    double memref_load_69 = func_arg_8[arith_addi_66][arith_addi_43]; 
                    double arith_mulf_70 = (arith_mulf_68 * memref_load_69); 
                    double memref_load_71 = func_arg_6[arith_addi_37][arith_addi_43]; 
                    double arith_addf_72 = (memref_load_71 + arith_mulf_70); 
                    func_arg_6[arith_addi_37][arith_addi_43] = arith_addf_72; 
                  }
                  for (int for_iter_73 = arith_const_19; for_iter_73 < arith_const_14; for_iter_73 += arith_const_21) {
                    int arith_addi_74 = (for_iter_73 + arith_const_12); 
                    double memref_load_75 = func_arg_7[arith_addi_37][arith_addi_74]; 
                    double arith_mulf_76 = (func_arg_4 * memref_load_75); 
                    double memref_load_77 = func_arg_8[arith_addi_74][arith_addi_43]; 
                    double arith_mulf_78 = (arith_mulf_76 * memref_load_77); 
                    double memref_load_79 = func_arg_6[arith_addi_37][arith_addi_43]; 
                    double arith_addf_80 = (memref_load_79 + arith_mulf_78); 
                    func_arg_6[arith_addi_37][arith_addi_43] = arith_addf_80; 
                  }
                  PAST_SET_SEMAPHORE(execute_token_42, PAST_TASK_FINISHED); 
                }
                async_group_38[async_group_index_39] = execute_token_42; 
                async_group_index_39++; 
                int arith_addi_81 = (for_iter_arg_41 + arith_const_21); 
                for_iter_arg_41 = arith_addi_81; 
              }
              PAST_WAIT_SEMAPHORE_ALL(async_group_38, async_group_index_39, PAST_TASK_FINISHED); 
              PAST_SET_SEMAPHORE(execute_token_36, PAST_TASK_FINISHED); 
            }
            async_group_32[async_group_index_33] = execute_token_36; 
            async_group_index_33++; 
            int arith_addi_82 = (for_iter_arg_35 + arith_const_21); 
            for_iter_arg_35 = arith_addi_82; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_32, async_group_index_33, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_31, PAST_TASK_FINISHED); 
        }
        async_group_27[async_group_index_28] = execute_token_31; 
        async_group_index_28++; 
        int arith_addi_83 = (for_iter_arg_30 + arith_const_21); 
        for_iter_arg_30 = arith_addi_83; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_27, async_group_index_28, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
    }
    async_group_22[async_group_index_23] = execute_token_26; 
    async_group_index_23++; 
    int arith_addi_84 = (for_iter_arg_25 + arith_const_21); 
    for_iter_arg_25 = arith_addi_84; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
  int* async_group_85; 
  int async_group_index_86 = 0; 
  int for_iter_arg_88 = arith_const_19; 
  for (int for_iter_87 = arith_const_19; for_iter_87 < arith_const_20; for_iter_87 += arith_const_21) {
    PAST_NEW_SEMAPHORE(execute_token_89); 
    #pragma peqc async_execute
    {
      int* async_group_90; 
      int async_group_index_91 = 0; 
      int for_iter_arg_93 = arith_const_19; 
      for (int for_iter_92 = arith_const_19; for_iter_92 < arith_const_11; for_iter_92 += arith_const_21) {
        PAST_NEW_SEMAPHORE(execute_token_94); 
        #pragma peqc async_execute
        {
          int* async_group_95; 
          int async_group_index_96 = 0; 
          int for_iter_arg_98 = arith_const_19; 
          for (int for_iter_97 = arith_const_19; for_iter_97 < arith_const_21; for_iter_97 += arith_const_21) {
            PAST_NEW_SEMAPHORE(execute_token_99); 
            #pragma peqc async_execute
            {
              int arith_addi_100 = (for_iter_87 + for_iter_97); 
              int* async_group_101; 
              int async_group_index_102 = 0; 
              int for_iter_arg_104 = arith_const_19; 
              for (int for_iter_103 = arith_const_19; for_iter_103 < arith_const_21; for_iter_103 += arith_const_21) {
                PAST_NEW_SEMAPHORE(execute_token_105); 
                #pragma peqc async_execute
                {
                  int arith_addi_106 = (for_iter_92 + for_iter_103); 
                  double memref_load_107 = func_arg_10[arith_addi_100][arith_addi_106]; 
                  double arith_mulf_108 = (memref_load_107 * func_arg_5); 
                  func_arg_10[arith_addi_100][arith_addi_106] = arith_mulf_108; 
                  for (int for_iter_109 = arith_const_19; for_iter_109 < arith_const_15; for_iter_109 += arith_const_21) {
                    int arith_muli_110 = (for_iter_109 * arith_const_15); 
                    double memref_load_111 = func_arg_6[arith_addi_100][arith_muli_110]; 
                    double memref_load_112 = func_arg_9[arith_muli_110][arith_addi_106]; 
                    double arith_mulf_113 = (memref_load_111 * memref_load_112); 
                    double memref_load_114 = func_arg_10[arith_addi_100][arith_addi_106]; 
                    double arith_addf_115 = (memref_load_114 + arith_mulf_113); 
                    func_arg_10[arith_addi_100][arith_addi_106] = arith_addf_115; 
                    int arith_addi_116 = (arith_muli_110 + arith_const_21); 
                    double memref_load_117 = func_arg_6[arith_addi_100][arith_addi_116]; 
                    double memref_load_118 = func_arg_9[arith_addi_116][arith_addi_106]; 
                    double arith_mulf_119 = (memref_load_117 * memref_load_118); 
                    double memref_load_120 = func_arg_10[arith_addi_100][arith_addi_106]; 
                    double arith_addf_121 = (memref_load_120 + arith_mulf_119); 
                    func_arg_10[arith_addi_100][arith_addi_106] = arith_addf_121; 
                    int arith_addi_122 = (arith_muli_110 + arith_const_14); 
                    double memref_load_123 = func_arg_6[arith_addi_100][arith_addi_122]; 
                    double memref_load_124 = func_arg_9[arith_addi_122][arith_addi_106]; 
                    double arith_mulf_125 = (memref_load_123 * memref_load_124); 
                    double memref_load_126 = func_arg_10[arith_addi_100][arith_addi_106]; 
                    double arith_addf_127 = (memref_load_126 + arith_mulf_125); 
                    func_arg_10[arith_addi_100][arith_addi_106] = arith_addf_127; 
                    int arith_addi_128 = (arith_muli_110 + arith_const_13); 
                    double memref_load_129 = func_arg_6[arith_addi_100][arith_addi_128]; 
                    double memref_load_130 = func_arg_9[arith_addi_128][arith_addi_106]; 
                    double arith_mulf_131 = (memref_load_129 * memref_load_130); 
                    double memref_load_132 = func_arg_10[arith_addi_100][arith_addi_106]; 
                    double arith_addf_133 = (memref_load_132 + arith_mulf_131); 
                    func_arg_10[arith_addi_100][arith_addi_106] = arith_addf_133; 
                  }
                  for (int for_iter_134 = arith_const_19; for_iter_134 < arith_const_14; for_iter_134 += arith_const_21) {
                    int arith_addi_135 = (for_iter_134 + arith_const_20); 
                    double memref_load_136 = func_arg_6[arith_addi_100][arith_addi_135]; 
                    double memref_load_137 = func_arg_9[arith_addi_135][arith_addi_106]; 
                    double arith_mulf_138 = (memref_load_136 * memref_load_137); 
                    double memref_load_139 = func_arg_10[arith_addi_100][arith_addi_106]; 
                    double arith_addf_140 = (memref_load_139 + arith_mulf_138); 
                    func_arg_10[arith_addi_100][arith_addi_106] = arith_addf_140; 
                  }
                  PAST_SET_SEMAPHORE(execute_token_105, PAST_TASK_FINISHED); 
                }
                async_group_101[async_group_index_102] = execute_token_105; 
                async_group_index_102++; 
                int arith_addi_141 = (for_iter_arg_104 + arith_const_21); 
                for_iter_arg_104 = arith_addi_141; 
              }
              PAST_WAIT_SEMAPHORE_ALL(async_group_101, async_group_index_102, PAST_TASK_FINISHED); 
              PAST_SET_SEMAPHORE(execute_token_99, PAST_TASK_FINISHED); 
            }
            async_group_95[async_group_index_96] = execute_token_99; 
            async_group_index_96++; 
            int arith_addi_142 = (for_iter_arg_98 + arith_const_21); 
            for_iter_arg_98 = arith_addi_142; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_95, async_group_index_96, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_94, PAST_TASK_FINISHED); 
        }
        async_group_90[async_group_index_91] = execute_token_94; 
        async_group_index_91++; 
        int arith_addi_143 = (for_iter_arg_93 + arith_const_21); 
        for_iter_arg_93 = arith_addi_143; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_90, async_group_index_91, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_89, PAST_TASK_FINISHED); 
    }
    async_group_85[async_group_index_86] = execute_token_89; 
    async_group_index_86++; 
    int arith_addi_144 = (for_iter_arg_88 + arith_const_21); 
    for_iter_arg_88 = arith_addi_144; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_85, async_group_index_86, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
