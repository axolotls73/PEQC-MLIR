#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_2d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 7; 
  int arith_const_9 = 28; 
  double arith_const_10 = 0.200000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    int* async_group_15; 
    int async_group_index_16 = 0; 
    int for_iter_arg_18 = arith_const_11; 
    for (int for_iter_17 = arith_const_11; for_iter_17 < arith_const_13; for_iter_17 += arith_const_13) {
      PAST_NEW_SEMAPHORE(execute_token_19); 
      #pragma peqc async_execute
      {
        int* async_group_20; 
        int async_group_index_21 = 0; 
        int for_iter_arg_23 = arith_const_11; 
        for (int for_iter_22 = arith_const_11; for_iter_22 < arith_const_9; for_iter_22 += arith_const_13) {
          PAST_NEW_SEMAPHORE(execute_token_24); 
          #pragma peqc async_execute
          {
            int arith_addi_25 = (for_iter_22 + arith_const_13); 
            int* async_group_26; 
            int async_group_index_27 = 0; 
            int for_iter_arg_29 = arith_const_11; 
            for (int for_iter_28 = arith_const_11; for_iter_28 < arith_const_8; for_iter_28 += arith_const_13) {
              PAST_NEW_SEMAPHORE(execute_token_30); 
              #pragma peqc async_execute
              {
                int arith_muli_31 = (for_iter_28 * arith_const_7); 
                int arith_addi_32 = (arith_muli_31 + arith_const_13); 
                double memref_load_33 = func_arg_2[arith_addi_25][arith_addi_32]; 
                int arith_addi_34 = (arith_addi_32 + arith_const_6); 
                double memref_load_35 = func_arg_2[arith_addi_25][arith_addi_34]; 
                double arith_addf_36 = (memref_load_33 + memref_load_35); 
                int arith_addi_37 = (arith_addi_32 + arith_const_13); 
                double memref_load_38 = func_arg_2[arith_addi_25][arith_addi_37]; 
                double arith_addf_39 = (arith_addf_36 + memref_load_38); 
                int arith_addi_40 = (arith_addi_25 + arith_const_13); 
                double memref_load_41 = func_arg_2[arith_addi_40][arith_addi_32]; 
                double arith_addf_42 = (arith_addf_39 + memref_load_41); 
                int arith_addi_43 = (arith_addi_25 + arith_const_6); 
                double memref_load_44 = func_arg_2[arith_addi_43][arith_addi_32]; 
                double arith_addf_45 = (arith_addf_42 + memref_load_44); 
                double arith_mulf_46 = (arith_addf_45 * arith_const_10); 
                func_arg_3[arith_addi_25][arith_addi_32] = arith_mulf_46; 
                int arith_addi_47 = (arith_addi_32 + arith_const_13); 
                double memref_load_48 = func_arg_2[arith_addi_25][arith_addi_47]; 
                int arith_addi_49 = (arith_addi_47 + arith_const_6); 
                double memref_load_50 = func_arg_2[arith_addi_25][arith_addi_49]; 
                double arith_addf_51 = (memref_load_48 + memref_load_50); 
                int arith_addi_52 = (arith_addi_47 + arith_const_13); 
                double memref_load_53 = func_arg_2[arith_addi_25][arith_addi_52]; 
                double arith_addf_54 = (arith_addf_51 + memref_load_53); 
                int arith_addi_55 = (arith_addi_25 + arith_const_13); 
                double memref_load_56 = func_arg_2[arith_addi_55][arith_addi_47]; 
                double arith_addf_57 = (arith_addf_54 + memref_load_56); 
                int arith_addi_58 = (arith_addi_25 + arith_const_6); 
                double memref_load_59 = func_arg_2[arith_addi_58][arith_addi_47]; 
                double arith_addf_60 = (arith_addf_57 + memref_load_59); 
                double arith_mulf_61 = (arith_addf_60 * arith_const_10); 
                func_arg_3[arith_addi_25][arith_addi_47] = arith_mulf_61; 
                int arith_addi_62 = (arith_addi_32 + arith_const_5); 
                double memref_load_63 = func_arg_2[arith_addi_25][arith_addi_62]; 
                int arith_addi_64 = (arith_addi_62 + arith_const_6); 
                double memref_load_65 = func_arg_2[arith_addi_25][arith_addi_64]; 
                double arith_addf_66 = (memref_load_63 + memref_load_65); 
                int arith_addi_67 = (arith_addi_62 + arith_const_13); 
                double memref_load_68 = func_arg_2[arith_addi_25][arith_addi_67]; 
                double arith_addf_69 = (arith_addf_66 + memref_load_68); 
                int arith_addi_70 = (arith_addi_25 + arith_const_13); 
                double memref_load_71 = func_arg_2[arith_addi_70][arith_addi_62]; 
                double arith_addf_72 = (arith_addf_69 + memref_load_71); 
                int arith_addi_73 = (arith_addi_25 + arith_const_6); 
                double memref_load_74 = func_arg_2[arith_addi_73][arith_addi_62]; 
                double arith_addf_75 = (arith_addf_72 + memref_load_74); 
                double arith_mulf_76 = (arith_addf_75 * arith_const_10); 
                func_arg_3[arith_addi_25][arith_addi_62] = arith_mulf_76; 
                int arith_addi_77 = (arith_addi_32 + arith_const_4); 
                double memref_load_78 = func_arg_2[arith_addi_25][arith_addi_77]; 
                int arith_addi_79 = (arith_addi_77 + arith_const_6); 
                double memref_load_80 = func_arg_2[arith_addi_25][arith_addi_79]; 
                double arith_addf_81 = (memref_load_78 + memref_load_80); 
                int arith_addi_82 = (arith_addi_77 + arith_const_13); 
                double memref_load_83 = func_arg_2[arith_addi_25][arith_addi_82]; 
                double arith_addf_84 = (arith_addf_81 + memref_load_83); 
                int arith_addi_85 = (arith_addi_25 + arith_const_13); 
                double memref_load_86 = func_arg_2[arith_addi_85][arith_addi_77]; 
                double arith_addf_87 = (arith_addf_84 + memref_load_86); 
                int arith_addi_88 = (arith_addi_25 + arith_const_6); 
                double memref_load_89 = func_arg_2[arith_addi_88][arith_addi_77]; 
                double arith_addf_90 = (arith_addf_87 + memref_load_89); 
                double arith_mulf_91 = (arith_addf_90 * arith_const_10); 
                func_arg_3[arith_addi_25][arith_addi_77] = arith_mulf_91; 
                PAST_SET_SEMAPHORE(execute_token_30, PAST_TASK_FINISHED); 
              }
              async_group_26[async_group_index_27] = execute_token_30; 
              async_group_index_27++; 
              int arith_addi_92 = (for_iter_arg_29 + arith_const_13); 
              for_iter_arg_29 = arith_addi_92; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_26, async_group_index_27, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_24, PAST_TASK_FINISHED); 
          }
          async_group_20[async_group_index_21] = execute_token_24; 
          async_group_index_21++; 
          int arith_addi_93 = (for_iter_arg_23 + arith_const_13); 
          for_iter_arg_23 = arith_addi_93; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_20, async_group_index_21, PAST_TASK_FINISHED); 
        int* async_group_94; 
        int async_group_index_95 = 0; 
        int for_iter_arg_97 = arith_const_11; 
        for (int for_iter_96 = arith_const_11; for_iter_96 < arith_const_9; for_iter_96 += arith_const_13) {
          PAST_NEW_SEMAPHORE(execute_token_98); 
          #pragma peqc async_execute
          {
            int arith_addi_99 = (for_iter_96 + arith_const_13); 
            int* async_group_100; 
            int async_group_index_101 = 0; 
            int for_iter_arg_103 = arith_const_11; 
            for (int for_iter_102 = arith_const_11; for_iter_102 < arith_const_8; for_iter_102 += arith_const_13) {
              PAST_NEW_SEMAPHORE(execute_token_104); 
              #pragma peqc async_execute
              {
                int arith_muli_105 = (for_iter_102 * arith_const_7); 
                int arith_addi_106 = (arith_muli_105 + arith_const_13); 
                double memref_load_107 = func_arg_3[arith_addi_99][arith_addi_106]; 
                int arith_addi_108 = (arith_addi_106 + arith_const_6); 
                double memref_load_109 = func_arg_3[arith_addi_99][arith_addi_108]; 
                double arith_addf_110 = (memref_load_107 + memref_load_109); 
                int arith_addi_111 = (arith_addi_106 + arith_const_13); 
                double memref_load_112 = func_arg_3[arith_addi_99][arith_addi_111]; 
                double arith_addf_113 = (arith_addf_110 + memref_load_112); 
                int arith_addi_114 = (arith_addi_99 + arith_const_13); 
                double memref_load_115 = func_arg_3[arith_addi_114][arith_addi_106]; 
                double arith_addf_116 = (arith_addf_113 + memref_load_115); 
                int arith_addi_117 = (arith_addi_99 + arith_const_6); 
                double memref_load_118 = func_arg_3[arith_addi_117][arith_addi_106]; 
                double arith_addf_119 = (arith_addf_116 + memref_load_118); 
                double arith_mulf_120 = (arith_addf_119 * arith_const_10); 
                func_arg_2[arith_addi_99][arith_addi_106] = arith_mulf_120; 
                int arith_addi_121 = (arith_addi_106 + arith_const_13); 
                double memref_load_122 = func_arg_3[arith_addi_99][arith_addi_121]; 
                int arith_addi_123 = (arith_addi_121 + arith_const_6); 
                double memref_load_124 = func_arg_3[arith_addi_99][arith_addi_123]; 
                double arith_addf_125 = (memref_load_122 + memref_load_124); 
                int arith_addi_126 = (arith_addi_121 + arith_const_13); 
                double memref_load_127 = func_arg_3[arith_addi_99][arith_addi_126]; 
                double arith_addf_128 = (arith_addf_125 + memref_load_127); 
                int arith_addi_129 = (arith_addi_99 + arith_const_13); 
                double memref_load_130 = func_arg_3[arith_addi_129][arith_addi_121]; 
                double arith_addf_131 = (arith_addf_128 + memref_load_130); 
                int arith_addi_132 = (arith_addi_99 + arith_const_6); 
                double memref_load_133 = func_arg_3[arith_addi_132][arith_addi_121]; 
                double arith_addf_134 = (arith_addf_131 + memref_load_133); 
                double arith_mulf_135 = (arith_addf_134 * arith_const_10); 
                func_arg_2[arith_addi_99][arith_addi_121] = arith_mulf_135; 
                int arith_addi_136 = (arith_addi_106 + arith_const_5); 
                double memref_load_137 = func_arg_3[arith_addi_99][arith_addi_136]; 
                int arith_addi_138 = (arith_addi_136 + arith_const_6); 
                double memref_load_139 = func_arg_3[arith_addi_99][arith_addi_138]; 
                double arith_addf_140 = (memref_load_137 + memref_load_139); 
                int arith_addi_141 = (arith_addi_136 + arith_const_13); 
                double memref_load_142 = func_arg_3[arith_addi_99][arith_addi_141]; 
                double arith_addf_143 = (arith_addf_140 + memref_load_142); 
                int arith_addi_144 = (arith_addi_99 + arith_const_13); 
                double memref_load_145 = func_arg_3[arith_addi_144][arith_addi_136]; 
                double arith_addf_146 = (arith_addf_143 + memref_load_145); 
                int arith_addi_147 = (arith_addi_99 + arith_const_6); 
                double memref_load_148 = func_arg_3[arith_addi_147][arith_addi_136]; 
                double arith_addf_149 = (arith_addf_146 + memref_load_148); 
                double arith_mulf_150 = (arith_addf_149 * arith_const_10); 
                func_arg_2[arith_addi_99][arith_addi_136] = arith_mulf_150; 
                int arith_addi_151 = (arith_addi_106 + arith_const_4); 
                double memref_load_152 = func_arg_3[arith_addi_99][arith_addi_151]; 
                int arith_addi_153 = (arith_addi_151 + arith_const_6); 
                double memref_load_154 = func_arg_3[arith_addi_99][arith_addi_153]; 
                double arith_addf_155 = (memref_load_152 + memref_load_154); 
                int arith_addi_156 = (arith_addi_151 + arith_const_13); 
                double memref_load_157 = func_arg_3[arith_addi_99][arith_addi_156]; 
                double arith_addf_158 = (arith_addf_155 + memref_load_157); 
                int arith_addi_159 = (arith_addi_99 + arith_const_13); 
                double memref_load_160 = func_arg_3[arith_addi_159][arith_addi_151]; 
                double arith_addf_161 = (arith_addf_158 + memref_load_160); 
                int arith_addi_162 = (arith_addi_99 + arith_const_6); 
                double memref_load_163 = func_arg_3[arith_addi_162][arith_addi_151]; 
                double arith_addf_164 = (arith_addf_161 + memref_load_163); 
                double arith_mulf_165 = (arith_addf_164 * arith_const_10); 
                func_arg_2[arith_addi_99][arith_addi_151] = arith_mulf_165; 
                PAST_SET_SEMAPHORE(execute_token_104, PAST_TASK_FINISHED); 
              }
              async_group_100[async_group_index_101] = execute_token_104; 
              async_group_index_101++; 
              int arith_addi_166 = (for_iter_arg_103 + arith_const_13); 
              for_iter_arg_103 = arith_addi_166; 
            }
            PAST_WAIT_SEMAPHORE_ALL(async_group_100, async_group_index_101, PAST_TASK_FINISHED); 
            PAST_SET_SEMAPHORE(execute_token_98, PAST_TASK_FINISHED); 
          }
          async_group_94[async_group_index_95] = execute_token_98; 
          async_group_index_95++; 
          int arith_addi_167 = (for_iter_arg_97 + arith_const_13); 
          for_iter_arg_97 = arith_addi_167; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_94, async_group_index_95, PAST_TASK_FINISHED); 
        PAST_SET_SEMAPHORE(execute_token_19, PAST_TASK_FINISHED); 
      }
      async_group_15[async_group_index_16] = execute_token_19; 
      async_group_index_16++; 
      int arith_addi_168 = (for_iter_arg_18 + arith_const_13); 
      for_iter_arg_18 = arith_addi_168; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_15, async_group_index_16, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int tsteps;
  int n;
  double* A;
  double* B;

#pragma peqc async_execute
{
  kernel_jacobi_2d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
