#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syrk(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 42; 
  int arith_const_7 = 20; 
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
          for (int for_iter_82 = arith_const_13; for_iter_82 < arith_const_7; for_iter_82 += arith_const_15) {
            int arith_addi_83 = (for_iter_18 + for_iter_23); 
            int arith_addi_84 = (arith_addi_83 + arith_const_15); 
            int arith_cmpi_85 = ((arith_addi_84 < arith_const_13) ? 1 : 0); 
            int arith_subi_86 = (arith_const_11 - arith_addi_84); 
            int arith_select_87 = (arith_cmpi_85 ? arith_subi_86 : arith_addi_84); 
            int arith_divi_88 = (arith_select_87 / arith_const_12); 
            int arith_subi_89 = (arith_const_11 - arith_divi_88); 
            int arith_select_90 = (arith_cmpi_85 ? arith_subi_89 : arith_divi_88); 
            int* async_group_91; 
            int async_group_index_92 = 0; 
            int for_iter_arg_94 = arith_const_13; 
            for (int for_iter_93 = arith_const_13; for_iter_93 < arith_select_90; for_iter_93 += arith_const_15) {
              PAST_NEW_SEMAPHORE(execute_token_95); 
              #pragma peqc async_execute
              {
                int arith_muli_96 = (for_iter_93 * arith_const_12); 
                double memref_load_97 = func_arg_5[arith_addi_26][for_iter_82]; 
                double arith_mulf_98 = (func_arg_2 * memref_load_97); 
                double memref_load_99 = func_arg_5[arith_muli_96][for_iter_82]; 
                double arith_mulf_100 = (arith_mulf_98 * memref_load_99); 
                double memref_load_101 = func_arg_4[arith_addi_26][arith_muli_96]; 
                double arith_addf_102 = (memref_load_101 + arith_mulf_100); 
                func_arg_4[arith_addi_26][arith_muli_96] = arith_addf_102; 
                int arith_addi_103 = (arith_muli_96 + arith_const_15); 
                double memref_load_104 = func_arg_5[arith_addi_26][for_iter_82]; 
                double arith_mulf_105 = (func_arg_2 * memref_load_104); 
                double memref_load_106 = func_arg_5[arith_addi_103][for_iter_82]; 
                double arith_mulf_107 = (arith_mulf_105 * memref_load_106); 
                double memref_load_108 = func_arg_4[arith_addi_26][arith_addi_103]; 
                double arith_addf_109 = (memref_load_108 + arith_mulf_107); 
                func_arg_4[arith_addi_26][arith_addi_103] = arith_addf_109; 
                int arith_addi_110 = (arith_muli_96 + arith_const_10); 
                double memref_load_111 = func_arg_5[arith_addi_26][for_iter_82]; 
                double arith_mulf_112 = (func_arg_2 * memref_load_111); 
                double memref_load_113 = func_arg_5[arith_addi_110][for_iter_82]; 
                double arith_mulf_114 = (arith_mulf_112 * memref_load_113); 
                double memref_load_115 = func_arg_4[arith_addi_26][arith_addi_110]; 
                double arith_addf_116 = (memref_load_115 + arith_mulf_114); 
                func_arg_4[arith_addi_26][arith_addi_110] = arith_addf_116; 
                int arith_addi_117 = (arith_muli_96 + arith_const_9); 
                double memref_load_118 = func_arg_5[arith_addi_26][for_iter_82]; 
                double arith_mulf_119 = (func_arg_2 * memref_load_118); 
                double memref_load_120 = func_arg_5[arith_addi_117][for_iter_82]; 
                double arith_mulf_121 = (arith_mulf_119 * memref_load_120); 
                double memref_load_122 = func_arg_4[arith_addi_26][arith_addi_117]; 
                double arith_addf_123 = (memref_load_122 + arith_mulf_121); 
                func_arg_4[arith_addi_26][arith_addi_117] = arith_addf_123; 
                PAST_SET_SEMAPHORE(execute_token_95, PAST_TASK_FINISHED); 
              }
              async_group_91[async_group_index_92] = execute_token_95; 
              async_group_index_92++; 
              int arith_addi_124 = (for_iter_arg_94 + arith_const_15); 
              for_iter_arg_94 = arith_addi_124; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_91, async_group_index_92, PAST_TASK_FINISHED); 
            int arith_addi_125 = (for_iter_18 + for_iter_23); 
            int arith_addi_126 = (for_iter_18 + for_iter_23); 
            int arith_addi_127 = (arith_addi_126 + arith_const_15); 
            int arith_cmpi_128 = ((arith_addi_127 < arith_const_13) ? 1 : 0); 
            int arith_subi_129 = (arith_const_11 - arith_addi_127); 
            int arith_select_130 = (arith_cmpi_128 ? arith_subi_129 : arith_addi_127); 
            int arith_divi_131 = (arith_select_130 / arith_const_12); 
            int arith_subi_132 = (arith_const_11 - arith_divi_131); 
            int arith_select_133 = (arith_cmpi_128 ? arith_subi_132 : arith_divi_131); 
            int arith_muli_134 = (arith_select_133 * arith_const_8); 
            int arith_addi_135 = (arith_addi_125 + arith_muli_134); 
            int arith_addi_136 = (arith_addi_135 + arith_const_15); 
            int* async_group_137; 
            int async_group_index_138 = 0; 
            int for_iter_arg_140 = arith_const_13; 
            for (int for_iter_139 = arith_const_13; for_iter_139 < arith_addi_136; for_iter_139 += arith_const_15) {
              PAST_NEW_SEMAPHORE(execute_token_141); 
              #pragma peqc async_execute
              {
                int arith_addi_142 = (arith_addi_26 + arith_const_15); 
                int arith_cmpi_143 = ((arith_addi_142 < arith_const_13) ? 1 : 0); 
                int arith_subi_144 = (arith_const_11 - arith_addi_142); 
                int arith_select_145 = (arith_cmpi_143 ? arith_subi_144 : arith_addi_142); 
                int arith_divi_146 = (arith_select_145 / arith_const_12); 
                int arith_subi_147 = (arith_const_11 - arith_divi_146); 
                int arith_select_148 = (arith_cmpi_143 ? arith_subi_147 : arith_divi_146); 
                int arith_muli_149 = (arith_select_148 * arith_const_12); 
                int arith_addi_150 = (arith_muli_149 + for_iter_139); 
                double memref_load_151 = func_arg_5[arith_addi_26][for_iter_82]; 
                double arith_mulf_152 = (func_arg_2 * memref_load_151); 
                double memref_load_153 = func_arg_5[arith_addi_150][for_iter_82]; 
                double arith_mulf_154 = (arith_mulf_152 * memref_load_153); 
                double memref_load_155 = func_arg_4[arith_addi_26][arith_addi_150]; 
                double arith_addf_156 = (memref_load_155 + arith_mulf_154); 
                func_arg_4[arith_addi_26][arith_addi_150] = arith_addf_156; 
                PAST_SET_SEMAPHORE(execute_token_141, PAST_TASK_FINISHED); 
              }
              async_group_137[async_group_index_138] = execute_token_141; 
              async_group_index_138++; 
              int arith_addi_157 = (for_iter_arg_140 + arith_const_15); 
              for_iter_arg_140 = arith_addi_157; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_137, async_group_index_138, PAST_TASK_FINISHED); 
          }
          PAST_SET_SEMAPHORE(execute_token_25, PAST_TASK_FINISHED); 
        }
        async_group_21[async_group_index_22] = execute_token_25; 
        async_group_index_22++; 
        int arith_addi_158 = (for_iter_arg_24 + arith_const_15); 
        for_iter_arg_24 = arith_addi_158; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_21, async_group_index_22, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_159 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_159; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
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
