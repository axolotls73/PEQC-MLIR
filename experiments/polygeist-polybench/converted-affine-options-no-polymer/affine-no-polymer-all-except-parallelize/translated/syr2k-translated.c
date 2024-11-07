#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 42; 
  int arith_const_8 = 20; 
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
          for (int for_iter_83 = arith_const_14; for_iter_83 < arith_const_8; for_iter_83 += arith_const_16) {
            int arith_addi_84 = (for_iter_19 + for_iter_24); 
            int arith_addi_85 = (arith_addi_84 + arith_const_16); 
            int arith_cmpi_86 = ((arith_addi_85 < arith_const_14) ? 1 : 0); 
            int arith_subi_87 = (arith_const_12 - arith_addi_85); 
            int arith_select_88 = (arith_cmpi_86 ? arith_subi_87 : arith_addi_85); 
            int arith_divi_89 = (arith_select_88 / arith_const_13); 
            int arith_subi_90 = (arith_const_12 - arith_divi_89); 
            int arith_select_91 = (arith_cmpi_86 ? arith_subi_90 : arith_divi_89); 
            int* async_group_92; 
            int async_group_index_93 = 0; 
            int for_iter_arg_95 = arith_const_14; 
            for (int for_iter_94 = arith_const_14; for_iter_94 < arith_select_91; for_iter_94 += arith_const_16) {
              PAST_NEW_SEMAPHORE(execute_token_96); 
              #pragma peqc async_execute
              {
                int arith_muli_97 = (for_iter_94 * arith_const_13); 
                double memref_load_98 = func_arg_5[arith_muli_97][for_iter_83]; 
                double arith_mulf_99 = (memref_load_98 * func_arg_2); 
                double memref_load_100 = func_arg_6[arith_addi_27][for_iter_83]; 
                double arith_mulf_101 = (arith_mulf_99 * memref_load_100); 
                double memref_load_102 = func_arg_6[arith_muli_97][for_iter_83]; 
                double arith_mulf_103 = (memref_load_102 * func_arg_2); 
                double memref_load_104 = func_arg_5[arith_addi_27][for_iter_83]; 
                double arith_mulf_105 = (arith_mulf_103 * memref_load_104); 
                double arith_addf_106 = (arith_mulf_101 + arith_mulf_105); 
                double memref_load_107 = func_arg_4[arith_addi_27][arith_muli_97]; 
                double arith_addf_108 = (memref_load_107 + arith_addf_106); 
                func_arg_4[arith_addi_27][arith_muli_97] = arith_addf_108; 
                int arith_addi_109 = (arith_muli_97 + arith_const_16); 
                double memref_load_110 = func_arg_5[arith_addi_109][for_iter_83]; 
                double arith_mulf_111 = (memref_load_110 * func_arg_2); 
                double memref_load_112 = func_arg_6[arith_addi_27][for_iter_83]; 
                double arith_mulf_113 = (arith_mulf_111 * memref_load_112); 
                double memref_load_114 = func_arg_6[arith_addi_109][for_iter_83]; 
                double arith_mulf_115 = (memref_load_114 * func_arg_2); 
                double memref_load_116 = func_arg_5[arith_addi_27][for_iter_83]; 
                double arith_mulf_117 = (arith_mulf_115 * memref_load_116); 
                double arith_addf_118 = (arith_mulf_113 + arith_mulf_117); 
                double memref_load_119 = func_arg_4[arith_addi_27][arith_addi_109]; 
                double arith_addf_120 = (memref_load_119 + arith_addf_118); 
                func_arg_4[arith_addi_27][arith_addi_109] = arith_addf_120; 
                int arith_addi_121 = (arith_muli_97 + arith_const_11); 
                double memref_load_122 = func_arg_5[arith_addi_121][for_iter_83]; 
                double arith_mulf_123 = (memref_load_122 * func_arg_2); 
                double memref_load_124 = func_arg_6[arith_addi_27][for_iter_83]; 
                double arith_mulf_125 = (arith_mulf_123 * memref_load_124); 
                double memref_load_126 = func_arg_6[arith_addi_121][for_iter_83]; 
                double arith_mulf_127 = (memref_load_126 * func_arg_2); 
                double memref_load_128 = func_arg_5[arith_addi_27][for_iter_83]; 
                double arith_mulf_129 = (arith_mulf_127 * memref_load_128); 
                double arith_addf_130 = (arith_mulf_125 + arith_mulf_129); 
                double memref_load_131 = func_arg_4[arith_addi_27][arith_addi_121]; 
                double arith_addf_132 = (memref_load_131 + arith_addf_130); 
                func_arg_4[arith_addi_27][arith_addi_121] = arith_addf_132; 
                int arith_addi_133 = (arith_muli_97 + arith_const_10); 
                double memref_load_134 = func_arg_5[arith_addi_133][for_iter_83]; 
                double arith_mulf_135 = (memref_load_134 * func_arg_2); 
                double memref_load_136 = func_arg_6[arith_addi_27][for_iter_83]; 
                double arith_mulf_137 = (arith_mulf_135 * memref_load_136); 
                double memref_load_138 = func_arg_6[arith_addi_133][for_iter_83]; 
                double arith_mulf_139 = (memref_load_138 * func_arg_2); 
                double memref_load_140 = func_arg_5[arith_addi_27][for_iter_83]; 
                double arith_mulf_141 = (arith_mulf_139 * memref_load_140); 
                double arith_addf_142 = (arith_mulf_137 + arith_mulf_141); 
                double memref_load_143 = func_arg_4[arith_addi_27][arith_addi_133]; 
                double arith_addf_144 = (memref_load_143 + arith_addf_142); 
                func_arg_4[arith_addi_27][arith_addi_133] = arith_addf_144; 
                PAST_SET_SEMAPHORE(execute_token_96, PAST_TASK_FINISHED); 
              }
              async_group_92[async_group_index_93] = execute_token_96; 
              async_group_index_93++; 
              int arith_addi_145 = (for_iter_arg_95 + arith_const_16); 
              for_iter_arg_95 = arith_addi_145; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_92, async_group_index_93, PAST_TASK_FINISHED); 
            int arith_addi_146 = (for_iter_19 + for_iter_24); 
            int arith_addi_147 = (for_iter_19 + for_iter_24); 
            int arith_addi_148 = (arith_addi_147 + arith_const_16); 
            int arith_cmpi_149 = ((arith_addi_148 < arith_const_14) ? 1 : 0); 
            int arith_subi_150 = (arith_const_12 - arith_addi_148); 
            int arith_select_151 = (arith_cmpi_149 ? arith_subi_150 : arith_addi_148); 
            int arith_divi_152 = (arith_select_151 / arith_const_13); 
            int arith_subi_153 = (arith_const_12 - arith_divi_152); 
            int arith_select_154 = (arith_cmpi_149 ? arith_subi_153 : arith_divi_152); 
            int arith_muli_155 = (arith_select_154 * arith_const_9); 
            int arith_addi_156 = (arith_addi_146 + arith_muli_155); 
            int arith_addi_157 = (arith_addi_156 + arith_const_16); 
            int* async_group_158; 
            int async_group_index_159 = 0; 
            int for_iter_arg_161 = arith_const_14; 
            for (int for_iter_160 = arith_const_14; for_iter_160 < arith_addi_157; for_iter_160 += arith_const_16) {
              PAST_NEW_SEMAPHORE(execute_token_162); 
              #pragma peqc async_execute
              {
                int arith_addi_163 = (arith_addi_27 + arith_const_16); 
                int arith_cmpi_164 = ((arith_addi_163 < arith_const_14) ? 1 : 0); 
                int arith_subi_165 = (arith_const_12 - arith_addi_163); 
                int arith_select_166 = (arith_cmpi_164 ? arith_subi_165 : arith_addi_163); 
                int arith_divi_167 = (arith_select_166 / arith_const_13); 
                int arith_subi_168 = (arith_const_12 - arith_divi_167); 
                int arith_select_169 = (arith_cmpi_164 ? arith_subi_168 : arith_divi_167); 
                int arith_muli_170 = (arith_select_169 * arith_const_13); 
                int arith_addi_171 = (arith_muli_170 + for_iter_160); 
                double memref_load_172 = func_arg_5[arith_addi_171][for_iter_83]; 
                double arith_mulf_173 = (memref_load_172 * func_arg_2); 
                double memref_load_174 = func_arg_6[arith_addi_27][for_iter_83]; 
                double arith_mulf_175 = (arith_mulf_173 * memref_load_174); 
                double memref_load_176 = func_arg_6[arith_addi_171][for_iter_83]; 
                double arith_mulf_177 = (memref_load_176 * func_arg_2); 
                double memref_load_178 = func_arg_5[arith_addi_27][for_iter_83]; 
                double arith_mulf_179 = (arith_mulf_177 * memref_load_178); 
                double arith_addf_180 = (arith_mulf_175 + arith_mulf_179); 
                double memref_load_181 = func_arg_4[arith_addi_27][arith_addi_171]; 
                double arith_addf_182 = (memref_load_181 + arith_addf_180); 
                func_arg_4[arith_addi_27][arith_addi_171] = arith_addf_182; 
                PAST_SET_SEMAPHORE(execute_token_162, PAST_TASK_FINISHED); 
              }
              async_group_158[async_group_index_159] = execute_token_162; 
              async_group_index_159++; 
              int arith_addi_183 = (for_iter_arg_161 + arith_const_16); 
              for_iter_arg_161 = arith_addi_183; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_158, async_group_index_159, PAST_TASK_FINISHED); 
          }
          PAST_SET_SEMAPHORE(execute_token_26, PAST_TASK_FINISHED); 
        }
        async_group_22[async_group_index_23] = execute_token_26; 
        async_group_index_23++; 
        int arith_addi_184 = (for_iter_arg_25 + arith_const_16); 
        for_iter_arg_25 = arith_addi_184; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_22, async_group_index_23, PAST_TASK_FINISHED); 
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_185 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_185; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
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
