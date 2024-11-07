#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 5; 
  int arith_const_9 = -4; 
  int arith_const_10 = 3; 
  int arith_const_11 = 2; 
  int arith_const_12 = -1; 
  int arith_const_13 = 4; 
  int arith_const_14 = 0; 
  int arith_const_15 = 30; 
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
          int arith_addi_28 = (for_iter_19 + for_iter_24); 
          int arith_addi_29 = (arith_addi_28 + arith_const_16); 
          int arith_cmpi_30 = ((arith_addi_29 < arith_const_14) ? 1 : 0); 
          int arith_subi_31 = (arith_const_12 - arith_addi_29); 
          int arith_select_32 = (arith_cmpi_30 ? arith_subi_31 : arith_addi_29); 
          int arith_divi_33 = (arith_select_32 / arith_const_13); 
          int arith_subi_34 = (arith_const_12 - arith_divi_33); 
          int arith_select_35 = (arith_cmpi_30 ? arith_subi_34 : arith_divi_33); 
          int* async_group_36; 
          int async_group_index_37 = 0; 
          int for_iter_arg_39 = arith_const_14; 
          for (int for_iter_38 = arith_const_14; for_iter_38 < arith_select_35; for_iter_38 += arith_const_16) {
            PAST_NEW_SEMAPHORE(execute_token_40); 
            #pragma peqc async_execute
            {
              int arith_muli_41 = (for_iter_38 * arith_const_13); 
              double memref_load_42 = func_arg_4[arith_addi_27][arith_muli_41]; 
              double arith_mulf_43 = (memref_load_42 * func_arg_3); 
              func_arg_4[arith_addi_27][arith_muli_41] = arith_mulf_43; 
              int arith_addi_44 = (arith_muli_41 + arith_const_16); 
              double memref_load_45 = func_arg_4[arith_addi_27][arith_addi_44]; 
              double arith_mulf_46 = (memref_load_45 * func_arg_3); 
              func_arg_4[arith_addi_27][arith_addi_44] = arith_mulf_46; 
              int arith_addi_47 = (arith_muli_41 + arith_const_11); 
              double memref_load_48 = func_arg_4[arith_addi_27][arith_addi_47]; 
              double arith_mulf_49 = (memref_load_48 * func_arg_3); 
              func_arg_4[arith_addi_27][arith_addi_47] = arith_mulf_49; 
              int arith_addi_50 = (arith_muli_41 + arith_const_10); 
              double memref_load_51 = func_arg_4[arith_addi_27][arith_addi_50]; 
              double arith_mulf_52 = (memref_load_51 * func_arg_3); 
              func_arg_4[arith_addi_27][arith_addi_50] = arith_mulf_52; 
              PAST_SET_SEMAPHORE(execute_token_40, PAST_TASK_FINISHED); 
            }
            async_group_36[async_group_index_37] = execute_token_40; 
            async_group_index_37++; 
            int arith_addi_53 = (for_iter_arg_39 + arith_const_16); 
            for_iter_arg_39 = arith_addi_53; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_36, async_group_index_37, PAST_TASK_FINISHED); 
          int arith_addi_54 = (for_iter_19 + for_iter_24); 
          int arith_addi_55 = (for_iter_19 + for_iter_24); 
          int arith_addi_56 = (arith_addi_55 + arith_const_16); 
          int arith_cmpi_57 = ((arith_addi_56 < arith_const_14) ? 1 : 0); 
          int arith_subi_58 = (arith_const_12 - arith_addi_56); 
          int arith_select_59 = (arith_cmpi_57 ? arith_subi_58 : arith_addi_56); 
          int arith_divi_60 = (arith_select_59 / arith_const_13); 
          int arith_subi_61 = (arith_const_12 - arith_divi_60); 
          int arith_select_62 = (arith_cmpi_57 ? arith_subi_61 : arith_divi_60); 
          int arith_muli_63 = (arith_select_62 * arith_const_9); 
          int arith_addi_64 = (arith_addi_54 + arith_muli_63); 
          int arith_addi_65 = (arith_addi_64 + arith_const_16); 
          int* async_group_66; 
          int async_group_index_67 = 0; 
          int for_iter_arg_69 = arith_const_14; 
          for (int for_iter_68 = arith_const_14; for_iter_68 < arith_addi_65; for_iter_68 += arith_const_16) {
            PAST_NEW_SEMAPHORE(execute_token_70); 
            #pragma peqc async_execute
            {
              int arith_addi_71 = (arith_addi_27 + arith_const_16); 
              int arith_cmpi_72 = ((arith_addi_71 < arith_const_14) ? 1 : 0); 
              int arith_subi_73 = (arith_const_12 - arith_addi_71); 
              int arith_select_74 = (arith_cmpi_72 ? arith_subi_73 : arith_addi_71); 
              int arith_divi_75 = (arith_select_74 / arith_const_13); 
              int arith_subi_76 = (arith_const_12 - arith_divi_75); 
              int arith_select_77 = (arith_cmpi_72 ? arith_subi_76 : arith_divi_75); 
              int arith_muli_78 = (arith_select_77 * arith_const_13); 
              int arith_addi_79 = (arith_muli_78 + for_iter_68); 
              double memref_load_80 = func_arg_4[arith_addi_27][arith_addi_79]; 
              double arith_mulf_81 = (memref_load_80 * func_arg_3); 
              func_arg_4[arith_addi_27][arith_addi_79] = arith_mulf_81; 
              PAST_SET_SEMAPHORE(execute_token_70, PAST_TASK_FINISHED); 
            }
            async_group_66[async_group_index_67] = execute_token_70; 
            async_group_index_67++; 
            int arith_addi_82 = (for_iter_arg_69 + arith_const_16); 
            for_iter_arg_69 = arith_addi_82; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_66, async_group_index_67, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_26; 
        async_group_index_23++; 
        int arith_addi_83 = (for_iter_arg_25 + arith_const_16); 
        for_iter_arg_25 = arith_addi_83; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_84 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_84; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  int* async_group_85; 
  int async_group_index_86 = 0; 
  int for_iter_arg_88 = arith_const_14; 
  for (int for_iter_87 = arith_const_14; for_iter_87 < arith_const_15; for_iter_87 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_89); 
    #pragma peqc async_execute
    {
      int arith_addi_90 = (for_iter_87 + arith_const_16); 
      int* async_group_91; 
      int async_group_index_92 = 0; 
      int for_iter_arg_94 = arith_const_14; 
      for (int for_iter_93 = arith_const_14; for_iter_93 < arith_addi_90; for_iter_93 += arith_const_16) {
        PAST_NEW_SEMAPHORE(execute_token_95); 
        #pragma peqc async_execute
        {
          for (int for_iter_96 = arith_const_14; for_iter_96 < arith_const_8; for_iter_96 += arith_const_16) {
            int arith_muli_97 = (for_iter_96 * arith_const_13); 
            double memref_load_98 = func_arg_4[for_iter_87][for_iter_93]; 
            double memref_load_99 = func_arg_5[for_iter_93][arith_muli_97]; 
            double arith_mulf_100 = (memref_load_99 * func_arg_2); 
            double memref_load_101 = func_arg_6[for_iter_87][arith_muli_97]; 
            double arith_mulf_102 = (arith_mulf_100 * memref_load_101); 
            double memref_load_103 = func_arg_6[for_iter_93][arith_muli_97]; 
            double arith_mulf_104 = (memref_load_103 * func_arg_2); 
            double memref_load_105 = func_arg_5[for_iter_87][arith_muli_97]; 
            double arith_mulf_106 = (arith_mulf_104 * memref_load_105); 
            double arith_addf_107 = (arith_mulf_102 + arith_mulf_106); 
            double arith_addf_108 = (memref_load_98 + arith_addf_107); 
            func_arg_4[for_iter_87][for_iter_93] = arith_addf_108; 
            int arith_addi_109 = (arith_muli_97 + arith_const_16); 
            double memref_load_110 = func_arg_4[for_iter_87][for_iter_93]; 
            double memref_load_111 = func_arg_5[for_iter_93][arith_addi_109]; 
            double arith_mulf_112 = (memref_load_111 * func_arg_2); 
            double memref_load_113 = func_arg_6[for_iter_87][arith_addi_109]; 
            double arith_mulf_114 = (arith_mulf_112 * memref_load_113); 
            double memref_load_115 = func_arg_6[for_iter_93][arith_addi_109]; 
            double arith_mulf_116 = (memref_load_115 * func_arg_2); 
            double memref_load_117 = func_arg_5[for_iter_87][arith_addi_109]; 
            double arith_mulf_118 = (arith_mulf_116 * memref_load_117); 
            double arith_addf_119 = (arith_mulf_114 + arith_mulf_118); 
            double arith_addf_120 = (memref_load_110 + arith_addf_119); 
            func_arg_4[for_iter_87][for_iter_93] = arith_addf_120; 
            int arith_addi_121 = (arith_muli_97 + arith_const_11); 
            double memref_load_122 = func_arg_4[for_iter_87][for_iter_93]; 
            double memref_load_123 = func_arg_5[for_iter_93][arith_addi_121]; 
            double arith_mulf_124 = (memref_load_123 * func_arg_2); 
            double memref_load_125 = func_arg_6[for_iter_87][arith_addi_121]; 
            double arith_mulf_126 = (arith_mulf_124 * memref_load_125); 
            double memref_load_127 = func_arg_6[for_iter_93][arith_addi_121]; 
            double arith_mulf_128 = (memref_load_127 * func_arg_2); 
            double memref_load_129 = func_arg_5[for_iter_87][arith_addi_121]; 
            double arith_mulf_130 = (arith_mulf_128 * memref_load_129); 
            double arith_addf_131 = (arith_mulf_126 + arith_mulf_130); 
            double arith_addf_132 = (memref_load_122 + arith_addf_131); 
            func_arg_4[for_iter_87][for_iter_93] = arith_addf_132; 
            int arith_addi_133 = (arith_muli_97 + arith_const_10); 
            double memref_load_134 = func_arg_4[for_iter_87][for_iter_93]; 
            double memref_load_135 = func_arg_5[for_iter_93][arith_addi_133]; 
            double arith_mulf_136 = (memref_load_135 * func_arg_2); 
            double memref_load_137 = func_arg_6[for_iter_87][arith_addi_133]; 
            double arith_mulf_138 = (arith_mulf_136 * memref_load_137); 
            double memref_load_139 = func_arg_6[for_iter_93][arith_addi_133]; 
            double arith_mulf_140 = (memref_load_139 * func_arg_2); 
            double memref_load_141 = func_arg_5[for_iter_87][arith_addi_133]; 
            double arith_mulf_142 = (arith_mulf_140 * memref_load_141); 
            double arith_addf_143 = (arith_mulf_138 + arith_mulf_142); 
            double arith_addf_144 = (memref_load_134 + arith_addf_143); 
            func_arg_4[for_iter_87][for_iter_93] = arith_addf_144; 
          }
          PAST_SET_SEMAPHORE(execute_token_95, PAST_TASK_FINISHED); 
        }
        async_group_91[async_group_index_92] = execute_token_95; 
        async_group_index_92++; 
        int arith_addi_145 = (for_iter_arg_94 + arith_const_16); 
        for_iter_arg_94 = arith_addi_145; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_91, async_group_index_92, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_89, PAST_TASK_FINISHED); 
    }
    async_group_85[async_group_index_86] = execute_token_89; 
    async_group_index_86++; 
    int arith_addi_146 = (for_iter_arg_88 + arith_const_16); 
    for_iter_arg_88 = arith_addi_146; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_85, async_group_index_86, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  int m;
  double alpha;
  double beta;
  double* C;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_syr2k(n, m, alpha, beta, C, A, B);
}
}

#pragma pocc-region-end
