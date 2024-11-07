#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 5; 
  int arith_const_8 = -4; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = -1; 
  int arith_const_12 = 4; 
  int arith_const_13 = 0; 
  int arith_const_14 = 30; 
  int arith_const_15 = 1; 
  int* async_group_16; 
  int async_group_index_17 = 0; 
  int for_iter_arg_19 = arith_const_13; 
  for (int for_iter_18 = arith_const_13; for_iter_18 < arith_const_14; for_iter_18 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_20); 
    #pragma peqc async_execute
    {
      int* async_group_21; 
      int async_group_index_22 = 0; 
      int for_iter_arg_24 = arith_const_13; 
      for (int for_iter_23 = arith_const_13; for_iter_23 < arith_const_15; for_iter_23 += arith_const_15) {
        PAST_NEW_SEMAPHORE(execute_token_25); 
        #pragma peqc async_execute
        {
          int arith_addi_26 = (for_iter_18 + for_iter_23); 
          int arith_addi_27 = (for_iter_18 + for_iter_23); 
          int arith_addi_28 = (arith_addi_27 + arith_const_15); 
          int arith_cmpi_29 = ((arith_addi_28 < arith_const_13) ? 1 : 0); 
          int arith_subi_30 = (arith_const_11 - arith_addi_28); 
          int arith_select_31 = (arith_cmpi_29 ? arith_subi_30 : arith_addi_28); 
          int arith_divi_32 = (arith_select_31 / arith_const_12); 
          int arith_subi_33 = (arith_const_11 - arith_divi_32); 
          int arith_select_34 = (arith_cmpi_29 ? arith_subi_33 : arith_divi_32); 
          int* async_group_35; 
          int async_group_index_36 = 0; 
          int for_iter_arg_38 = arith_const_13; 
          for (int for_iter_37 = arith_const_13; for_iter_37 < arith_select_34; for_iter_37 += arith_const_15) {
            PAST_NEW_SEMAPHORE(execute_token_39); 
            #pragma peqc async_execute
            {
              int arith_muli_40 = (for_iter_37 * arith_const_12); 
              double memref_load_41 = func_arg_4[arith_addi_26][arith_muli_40]; 
              double arith_mulf_42 = (memref_load_41 * func_arg_3); 
              func_arg_4[arith_addi_26][arith_muli_40] = arith_mulf_42; 
              int arith_addi_43 = (arith_muli_40 + arith_const_15); 
              double memref_load_44 = func_arg_4[arith_addi_26][arith_addi_43]; 
              double arith_mulf_45 = (memref_load_44 * func_arg_3); 
              func_arg_4[arith_addi_26][arith_addi_43] = arith_mulf_45; 
              int arith_addi_46 = (arith_muli_40 + arith_const_10); 
              double memref_load_47 = func_arg_4[arith_addi_26][arith_addi_46]; 
              double arith_mulf_48 = (memref_load_47 * func_arg_3); 
              func_arg_4[arith_addi_26][arith_addi_46] = arith_mulf_48; 
              int arith_addi_49 = (arith_muli_40 + arith_const_9); 
              double memref_load_50 = func_arg_4[arith_addi_26][arith_addi_49]; 
              double arith_mulf_51 = (memref_load_50 * func_arg_3); 
              func_arg_4[arith_addi_26][arith_addi_49] = arith_mulf_51; 
              PAST_SET_SEMAPHORE(execute_token_39, PAST_TASK_FINISHED); 
            }
            async_group_35[async_group_index_36] = execute_token_39; 
            async_group_index_36++; 
            int arith_addi_52 = (for_iter_arg_38 + arith_const_15); 
            for_iter_arg_38 = arith_addi_52; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_35, async_group_index_36, PAST_TASK_FINISHED); 
          int arith_addi_53 = (for_iter_18 + for_iter_23); 
          int arith_addi_54 = (for_iter_18 + for_iter_23); 
          int arith_addi_55 = (arith_addi_54 + arith_const_15); 
          int arith_cmpi_56 = ((arith_addi_55 < arith_const_13) ? 1 : 0); 
          int arith_subi_57 = (arith_const_11 - arith_addi_55); 
          int arith_select_58 = (arith_cmpi_56 ? arith_subi_57 : arith_addi_55); 
          int arith_divi_59 = (arith_select_58 / arith_const_12); 
          int arith_subi_60 = (arith_const_11 - arith_divi_59); 
          int arith_select_61 = (arith_cmpi_56 ? arith_subi_60 : arith_divi_59); 
          int arith_muli_62 = (arith_select_61 * arith_const_8); 
          int arith_addi_63 = (arith_addi_53 + arith_muli_62); 
          int arith_addi_64 = (arith_addi_63 + arith_const_15); 
          int* async_group_65; 
          int async_group_index_66 = 0; 
          int for_iter_arg_68 = arith_const_13; 
          for (int for_iter_67 = arith_const_13; for_iter_67 < arith_addi_64; for_iter_67 += arith_const_15) {
            PAST_NEW_SEMAPHORE(execute_token_69); 
            #pragma peqc async_execute
            {
              int arith_addi_70 = (arith_addi_26 + arith_const_15); 
              int arith_cmpi_71 = ((arith_addi_70 < arith_const_13) ? 1 : 0); 
              int arith_subi_72 = (arith_const_11 - arith_addi_70); 
              int arith_select_73 = (arith_cmpi_71 ? arith_subi_72 : arith_addi_70); 
              int arith_divi_74 = (arith_select_73 / arith_const_12); 
              int arith_subi_75 = (arith_const_11 - arith_divi_74); 
              int arith_select_76 = (arith_cmpi_71 ? arith_subi_75 : arith_divi_74); 
              int arith_muli_77 = (arith_select_76 * arith_const_12); 
              int arith_addi_78 = (arith_muli_77 + for_iter_67); 
              double memref_load_79 = func_arg_4[arith_addi_26][arith_addi_78]; 
              double arith_mulf_80 = (memref_load_79 * func_arg_3); 
              func_arg_4[arith_addi_26][arith_addi_78] = arith_mulf_80; 
              PAST_SET_SEMAPHORE(execute_token_69, PAST_TASK_FINISHED); 
            }
            async_group_65[async_group_index_66] = execute_token_69; 
            async_group_index_66++; 
            int arith_addi_81 = (for_iter_arg_68 + arith_const_15); 
            for_iter_arg_68 = arith_addi_81; 
          }
          PAST_WAIT_SEMAPHORE_ALL(async_group_65, async_group_index_66, PAST_TASK_FINISHED); 
          PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
        }
        async_group_21[async_group_index_22] = execute_token_25; 
        async_group_index_22++; 
        int arith_addi_82 = (for_iter_arg_24 + arith_const_15); 
        for_iter_arg_24 = arith_addi_82; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_83 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_83; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  int* async_group_84; 
  int async_group_index_85 = 0; 
  int for_iter_arg_87 = arith_const_13; 
  for (int for_iter_86 = arith_const_13; for_iter_86 < arith_const_14; for_iter_86 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_88); 
    #pragma peqc async_execute
    {
      int arith_addi_89 = (for_iter_86 + arith_const_15); 
      int* async_group_90; 
      int async_group_index_91 = 0; 
      int for_iter_arg_93 = arith_const_13; 
      for (int for_iter_92 = arith_const_13; for_iter_92 < arith_addi_89; for_iter_92 += arith_const_15) {
        PAST_NEW_SEMAPHORE(execute_token_94); 
        #pragma peqc async_execute
        {
          for (int for_iter_95 = arith_const_13; for_iter_95 < arith_const_7; for_iter_95 += arith_const_15) {
            int arith_muli_96 = (for_iter_95 * arith_const_12); 
            double memref_load_97 = func_arg_4[for_iter_86][for_iter_92]; 
            double memref_load_98 = func_arg_5[for_iter_86][arith_muli_96]; 
            double arith_mulf_99 = (func_arg_2 * memref_load_98); 
            double memref_load_100 = func_arg_5[for_iter_92][arith_muli_96]; 
            double arith_mulf_101 = (arith_mulf_99 * memref_load_100); 
            double arith_addf_102 = (memref_load_97 + arith_mulf_101); 
            func_arg_4[for_iter_86][for_iter_92] = arith_addf_102; 
            int arith_addi_103 = (arith_muli_96 + arith_const_15); 
            double memref_load_104 = func_arg_4[for_iter_86][for_iter_92]; 
            double memref_load_105 = func_arg_5[for_iter_86][arith_addi_103]; 
            double arith_mulf_106 = (func_arg_2 * memref_load_105); 
            double memref_load_107 = func_arg_5[for_iter_92][arith_addi_103]; 
            double arith_mulf_108 = (arith_mulf_106 * memref_load_107); 
            double arith_addf_109 = (memref_load_104 + arith_mulf_108); 
            func_arg_4[for_iter_86][for_iter_92] = arith_addf_109; 
            int arith_addi_110 = (arith_muli_96 + arith_const_10); 
            double memref_load_111 = func_arg_4[for_iter_86][for_iter_92]; 
            double memref_load_112 = func_arg_5[for_iter_86][arith_addi_110]; 
            double arith_mulf_113 = (func_arg_2 * memref_load_112); 
            double memref_load_114 = func_arg_5[for_iter_92][arith_addi_110]; 
            double arith_mulf_115 = (arith_mulf_113 * memref_load_114); 
            double arith_addf_116 = (memref_load_111 + arith_mulf_115); 
            func_arg_4[for_iter_86][for_iter_92] = arith_addf_116; 
            int arith_addi_117 = (arith_muli_96 + arith_const_9); 
            double memref_load_118 = func_arg_4[for_iter_86][for_iter_92]; 
            double memref_load_119 = func_arg_5[for_iter_86][arith_addi_117]; 
            double arith_mulf_120 = (func_arg_2 * memref_load_119); 
            double memref_load_121 = func_arg_5[for_iter_92][arith_addi_117]; 
            double arith_mulf_122 = (arith_mulf_120 * memref_load_121); 
            double arith_addf_123 = (memref_load_118 + arith_mulf_122); 
            func_arg_4[for_iter_86][for_iter_92] = arith_addf_123; 
          }
          PAST_SET_SEMAPHORE(execute_token_94, PAST_TASK_FINISHED); 
        }
        async_group_90[async_group_index_91] = execute_token_94; 
        async_group_index_91++; 
        int arith_addi_124 = (for_iter_arg_93 + arith_const_15); 
        for_iter_arg_93 = arith_addi_124; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_90, async_group_index_91, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_88, PAST_TASK_FINISHED); 
    }
    async_group_84[async_group_index_85] = execute_token_88; 
    async_group_index_85++; 
    int arith_addi_125 = (for_iter_arg_87 + arith_const_15); 
    for_iter_arg_87 = arith_addi_125; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_84, async_group_index_85, PAST_TASK_FINISHED); 
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

#pragma peqc async_execute
{
  kernel_syrk(n, m, alpha, beta, C, A);
}
}

#pragma pocc-region-end
