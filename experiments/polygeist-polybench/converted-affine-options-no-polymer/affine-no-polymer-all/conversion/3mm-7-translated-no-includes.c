#pragma pocc-region-start
void kernel_3mm(int func_arg_0, int func_arg_1, int func_arg_2, int func_arg_3, int func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 6; 
  int arith_const_13 = 22; 
  int arith_const_14 = 3; 
  int arith_const_15 = 2; 
  int arith_const_16 = 4; 
  int arith_const_17 = 5; 
  int arith_const_18 = 18; 
  int arith_const_19 = 16; 
  int arith_const_20 = 32; 
  double arith_const_21 = 0.000000; 
  int arith_const_22 = 0; 
  int arith_const_23 = 1; 
  int* async_group_24; 
  int async_group_index_25 = 0; 
  int for_iter_arg_27 = arith_const_22; 
  for (int for_iter_26 = arith_const_22; for_iter_26 < arith_const_23; for_iter_26 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_28); 
    #pragma peqc async_execute
    {
      int arith_muli_29 = (for_iter_26 * arith_const_20); 
      for (int for_iter_30 = arith_const_22; for_iter_30 < arith_const_23; for_iter_30 += arith_const_23) {
        int arith_muli_31 = (for_iter_30 * arith_const_20); 
        for (int for_iter_32 = arith_const_22; for_iter_32 < arith_const_19; for_iter_32 += arith_const_23) {
          int arith_addi_33 = (arith_muli_29 + for_iter_32); 
          for (int for_iter_34 = arith_const_22; for_iter_34 < arith_const_18; for_iter_34 += arith_const_23) {
            int arith_addi_35 = (arith_muli_31 + for_iter_34); 
            func_arg_5[arith_addi_33][arith_addi_35] = arith_const_21; 
            for (int for_iter_36 = arith_const_22; for_iter_36 < arith_const_17; for_iter_36 += arith_const_23) {
              int arith_muli_37 = (for_iter_36 * arith_const_16); 
              double memref_load_38 = func_arg_6[arith_addi_33][arith_muli_37]; 
              double memref_load_39 = func_arg_7[arith_muli_37][arith_addi_35]; 
              double arith_mulf_40 = (memref_load_38 * memref_load_39); 
              double memref_load_41 = func_arg_5[arith_addi_33][arith_addi_35]; 
              double arith_addf_42 = (memref_load_41 + arith_mulf_40); 
              func_arg_5[arith_addi_33][arith_addi_35] = arith_addf_42; 
              int arith_addi_43 = (arith_muli_37 + arith_const_23); 
              double memref_load_44 = func_arg_6[arith_addi_33][arith_addi_43]; 
              double memref_load_45 = func_arg_7[arith_addi_43][arith_addi_35]; 
              double arith_mulf_46 = (memref_load_44 * memref_load_45); 
              double memref_load_47 = func_arg_5[arith_addi_33][arith_addi_35]; 
              double arith_addf_48 = (memref_load_47 + arith_mulf_46); 
              func_arg_5[arith_addi_33][arith_addi_35] = arith_addf_48; 
              int arith_addi_49 = (arith_muli_37 + arith_const_15); 
              double memref_load_50 = func_arg_6[arith_addi_33][arith_addi_49]; 
              double memref_load_51 = func_arg_7[arith_addi_49][arith_addi_35]; 
              double arith_mulf_52 = (memref_load_50 * memref_load_51); 
              double memref_load_53 = func_arg_5[arith_addi_33][arith_addi_35]; 
              double arith_addf_54 = (memref_load_53 + arith_mulf_52); 
              func_arg_5[arith_addi_33][arith_addi_35] = arith_addf_54; 
              int arith_addi_55 = (arith_muli_37 + arith_const_14); 
              double memref_load_56 = func_arg_6[arith_addi_33][arith_addi_55]; 
              double memref_load_57 = func_arg_7[arith_addi_55][arith_addi_35]; 
              double arith_mulf_58 = (memref_load_56 * memref_load_57); 
              double memref_load_59 = func_arg_5[arith_addi_33][arith_addi_35]; 
              double arith_addf_60 = (memref_load_59 + arith_mulf_58); 
              func_arg_5[arith_addi_33][arith_addi_35] = arith_addf_60; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_28, PAST_TASK_FINISHED); 
    }
    async_group_24[async_group_index_25] = execute_token_28; 
    async_group_index_25++; 
    int arith_addi_61 = (for_iter_arg_27 + arith_const_23); 
    for_iter_arg_27 = arith_addi_61; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_24, async_group_index_25, PAST_TASK_FINISHED); 
  int* async_group_62; 
  int async_group_index_63 = 0; 
  int for_iter_arg_65 = arith_const_22; 
  for (int for_iter_64 = arith_const_22; for_iter_64 < arith_const_23; for_iter_64 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_66); 
    #pragma peqc async_execute
    {
      int arith_muli_67 = (for_iter_64 * arith_const_20); 
      for (int for_iter_68 = arith_const_22; for_iter_68 < arith_const_23; for_iter_68 += arith_const_23) {
        int arith_muli_69 = (for_iter_68 * arith_const_20); 
        for (int for_iter_70 = arith_const_22; for_iter_70 < arith_const_18; for_iter_70 += arith_const_23) {
          int arith_addi_71 = (arith_muli_67 + for_iter_70); 
          for (int for_iter_72 = arith_const_22; for_iter_72 < arith_const_13; for_iter_72 += arith_const_23) {
            int arith_addi_73 = (arith_muli_69 + for_iter_72); 
            func_arg_8[arith_addi_71][arith_addi_73] = arith_const_21; 
            for (int for_iter_74 = arith_const_22; for_iter_74 < arith_const_12; for_iter_74 += arith_const_23) {
              int arith_muli_75 = (for_iter_74 * arith_const_16); 
              double memref_load_76 = func_arg_9[arith_addi_71][arith_muli_75]; 
              double memref_load_77 = func_arg_10[arith_muli_75][arith_addi_73]; 
              double arith_mulf_78 = (memref_load_76 * memref_load_77); 
              double memref_load_79 = func_arg_8[arith_addi_71][arith_addi_73]; 
              double arith_addf_80 = (memref_load_79 + arith_mulf_78); 
              func_arg_8[arith_addi_71][arith_addi_73] = arith_addf_80; 
              int arith_addi_81 = (arith_muli_75 + arith_const_23); 
              double memref_load_82 = func_arg_9[arith_addi_71][arith_addi_81]; 
              double memref_load_83 = func_arg_10[arith_addi_81][arith_addi_73]; 
              double arith_mulf_84 = (memref_load_82 * memref_load_83); 
              double memref_load_85 = func_arg_8[arith_addi_71][arith_addi_73]; 
              double arith_addf_86 = (memref_load_85 + arith_mulf_84); 
              func_arg_8[arith_addi_71][arith_addi_73] = arith_addf_86; 
              int arith_addi_87 = (arith_muli_75 + arith_const_15); 
              double memref_load_88 = func_arg_9[arith_addi_71][arith_addi_87]; 
              double memref_load_89 = func_arg_10[arith_addi_87][arith_addi_73]; 
              double arith_mulf_90 = (memref_load_88 * memref_load_89); 
              double memref_load_91 = func_arg_8[arith_addi_71][arith_addi_73]; 
              double arith_addf_92 = (memref_load_91 + arith_mulf_90); 
              func_arg_8[arith_addi_71][arith_addi_73] = arith_addf_92; 
              int arith_addi_93 = (arith_muli_75 + arith_const_14); 
              double memref_load_94 = func_arg_9[arith_addi_71][arith_addi_93]; 
              double memref_load_95 = func_arg_10[arith_addi_93][arith_addi_73]; 
              double arith_mulf_96 = (memref_load_94 * memref_load_95); 
              double memref_load_97 = func_arg_8[arith_addi_71][arith_addi_73]; 
              double arith_addf_98 = (memref_load_97 + arith_mulf_96); 
              func_arg_8[arith_addi_71][arith_addi_73] = arith_addf_98; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_66, PAST_TASK_FINISHED); 
    }
    async_group_62[async_group_index_63] = execute_token_66; 
    async_group_index_63++; 
    int arith_addi_99 = (for_iter_arg_65 + arith_const_23); 
    for_iter_arg_65 = arith_addi_99; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_62, async_group_index_63, PAST_TASK_FINISHED); 
  int* async_group_100; 
  int async_group_index_101 = 0; 
  int for_iter_arg_103 = arith_const_22; 
  for (int for_iter_102 = arith_const_22; for_iter_102 < arith_const_23; for_iter_102 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_104); 
    #pragma peqc async_execute
    {
      int arith_muli_105 = (for_iter_102 * arith_const_20); 
      for (int for_iter_106 = arith_const_22; for_iter_106 < arith_const_23; for_iter_106 += arith_const_23) {
        int arith_muli_107 = (for_iter_106 * arith_const_20); 
        for (int for_iter_108 = arith_const_22; for_iter_108 < arith_const_19; for_iter_108 += arith_const_23) {
          int arith_addi_109 = (arith_muli_105 + for_iter_108); 
          for (int for_iter_110 = arith_const_22; for_iter_110 < arith_const_13; for_iter_110 += arith_const_23) {
            int arith_addi_111 = (arith_muli_107 + for_iter_110); 
            func_arg_11[arith_addi_109][arith_addi_111] = arith_const_21; 
            for (int for_iter_112 = arith_const_22; for_iter_112 < arith_const_16; for_iter_112 += arith_const_23) {
              int arith_muli_113 = (for_iter_112 * arith_const_16); 
              double memref_load_114 = func_arg_5[arith_addi_109][arith_muli_113]; 
              double memref_load_115 = func_arg_8[arith_muli_113][arith_addi_111]; 
              double arith_mulf_116 = (memref_load_114 * memref_load_115); 
              double memref_load_117 = func_arg_11[arith_addi_109][arith_addi_111]; 
              double arith_addf_118 = (memref_load_117 + arith_mulf_116); 
              func_arg_11[arith_addi_109][arith_addi_111] = arith_addf_118; 
              int arith_addi_119 = (arith_muli_113 + arith_const_23); 
              double memref_load_120 = func_arg_5[arith_addi_109][arith_addi_119]; 
              double memref_load_121 = func_arg_8[arith_addi_119][arith_addi_111]; 
              double arith_mulf_122 = (memref_load_120 * memref_load_121); 
              double memref_load_123 = func_arg_11[arith_addi_109][arith_addi_111]; 
              double arith_addf_124 = (memref_load_123 + arith_mulf_122); 
              func_arg_11[arith_addi_109][arith_addi_111] = arith_addf_124; 
              int arith_addi_125 = (arith_muli_113 + arith_const_15); 
              double memref_load_126 = func_arg_5[arith_addi_109][arith_addi_125]; 
              double memref_load_127 = func_arg_8[arith_addi_125][arith_addi_111]; 
              double arith_mulf_128 = (memref_load_126 * memref_load_127); 
              double memref_load_129 = func_arg_11[arith_addi_109][arith_addi_111]; 
              double arith_addf_130 = (memref_load_129 + arith_mulf_128); 
              func_arg_11[arith_addi_109][arith_addi_111] = arith_addf_130; 
              int arith_addi_131 = (arith_muli_113 + arith_const_14); 
              double memref_load_132 = func_arg_5[arith_addi_109][arith_addi_131]; 
              double memref_load_133 = func_arg_8[arith_addi_131][arith_addi_111]; 
              double arith_mulf_134 = (memref_load_132 * memref_load_133); 
              double memref_load_135 = func_arg_11[arith_addi_109][arith_addi_111]; 
              double arith_addf_136 = (memref_load_135 + arith_mulf_134); 
              func_arg_11[arith_addi_109][arith_addi_111] = arith_addf_136; 
            }
            for (int for_iter_137 = arith_const_22; for_iter_137 < arith_const_15; for_iter_137 += arith_const_23) {
              int arith_addi_138 = (for_iter_137 + arith_const_19); 
              double memref_load_139 = func_arg_5[arith_addi_109][arith_addi_138]; 
              double memref_load_140 = func_arg_8[arith_addi_138][arith_addi_111]; 
              double arith_mulf_141 = (memref_load_139 * memref_load_140); 
              double memref_load_142 = func_arg_11[arith_addi_109][arith_addi_111]; 
              double arith_addf_143 = (memref_load_142 + arith_mulf_141); 
              func_arg_11[arith_addi_109][arith_addi_111] = arith_addf_143; 
            }
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_104, PAST_TASK_FINISHED); 
    }
    async_group_100[async_group_index_101] = execute_token_104; 
    async_group_index_101++; 
    int arith_addi_144 = (for_iter_arg_103 + arith_const_23); 
    for_iter_arg_103 = arith_addi_144; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_100, async_group_index_101, PAST_TASK_FINISHED); 
  return; 

}
#pragma pocc-region-end
