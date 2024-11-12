#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_seidel_2d(int func_arg_0, int func_arg_1, double* func_arg_2)
{
  int arith_const_3 = 37; 
  int arith_const_4 = 3; 
  int arith_const_5 = 2; 
  int arith_const_6 = -1; 
  int arith_const_7 = 4; 
  int arith_const_8 = 9; 
  int arith_const_9 = 38; 
  double arith_const_10 = 9.000000; 
  int arith_const_11 = 0; 
  int arith_const_12 = 20; 
  int arith_const_13 = 1; 
  for (int for_iter_14 = arith_const_11; for_iter_14 < arith_const_12; for_iter_14 += arith_const_13) {
    for (int for_iter_15 = arith_const_11; for_iter_15 < arith_const_9; for_iter_15 += arith_const_13) {
      int arith_addi_16 = (for_iter_15 + arith_const_13); 
      int* async_group_17; 
      int async_group_index_18 = 0; 
      int for_iter_arg_20 = arith_const_11; 
      for (int for_iter_19 = arith_const_11; for_iter_19 < arith_const_13; for_iter_19 += arith_const_13) {
        PAST_NEW_SEMAPHORE(execute_token_21); 
        #pragma peqc async_execute
        {
          for (int for_iter_22 = arith_const_11; for_iter_22 < arith_const_13; for_iter_22 += arith_const_13) {
            int arith_addi_23 = (arith_addi_16 + for_iter_22); 
            for (int for_iter_24 = arith_const_11; for_iter_24 < arith_const_8; for_iter_24 += arith_const_13) {
              int arith_muli_25 = (for_iter_24 * arith_const_7); 
              int arith_addi_26 = (arith_muli_25 + arith_const_13); 
              int arith_addi_27 = (arith_addi_23 + arith_const_6); 
              int arith_addi_28 = (arith_addi_26 + arith_const_6); 
              double memref_load_29 = func_arg_2[arith_addi_27][arith_addi_28]; 
              int arith_addi_30 = (arith_addi_23 + arith_const_6); 
              double memref_load_31 = func_arg_2[arith_addi_30][arith_addi_26]; 
              double arith_addf_32 = (memref_load_29 + memref_load_31); 
              int arith_addi_33 = (arith_addi_23 + arith_const_6); 
              int arith_addi_34 = (arith_addi_26 + arith_const_13); 
              double memref_load_35 = func_arg_2[arith_addi_33][arith_addi_34]; 
              double arith_addf_36 = (arith_addf_32 + memref_load_35); 
              int arith_addi_37 = (arith_addi_26 + arith_const_6); 
              double memref_load_38 = func_arg_2[arith_addi_23][arith_addi_37]; 
              double arith_addf_39 = (arith_addf_36 + memref_load_38); 
              double memref_load_40 = func_arg_2[arith_addi_23][arith_addi_26]; 
              double arith_addf_41 = (arith_addf_39 + memref_load_40); 
              int arith_addi_42 = (arith_addi_26 + arith_const_13); 
              double memref_load_43 = func_arg_2[arith_addi_23][arith_addi_42]; 
              double arith_addf_44 = (arith_addf_41 + memref_load_43); 
              int arith_addi_45 = (arith_addi_23 + arith_const_13); 
              int arith_addi_46 = (arith_addi_26 + arith_const_6); 
              double memref_load_47 = func_arg_2[arith_addi_45][arith_addi_46]; 
              double arith_addf_48 = (arith_addf_44 + memref_load_47); 
              int arith_addi_49 = (arith_addi_23 + arith_const_13); 
              double memref_load_50 = func_arg_2[arith_addi_49][arith_addi_26]; 
              double arith_addf_51 = (arith_addf_48 + memref_load_50); 
              int arith_addi_52 = (arith_addi_23 + arith_const_13); 
              int arith_addi_53 = (arith_addi_26 + arith_const_13); 
              double memref_load_54 = func_arg_2[arith_addi_52][arith_addi_53]; 
              double arith_addf_55 = (arith_addf_51 + memref_load_54); 
              double arith_divf_56 = (arith_addf_55 / arith_const_10); 
              func_arg_2[arith_addi_23][arith_addi_26] = arith_divf_56; 
              int arith_addi_57 = (arith_addi_26 + arith_const_13); 
              int arith_addi_58 = (arith_addi_23 + arith_const_6); 
              int arith_addi_59 = (arith_addi_57 + arith_const_6); 
              double memref_load_60 = func_arg_2[arith_addi_58][arith_addi_59]; 
              int arith_addi_61 = (arith_addi_23 + arith_const_6); 
              double memref_load_62 = func_arg_2[arith_addi_61][arith_addi_57]; 
              double arith_addf_63 = (memref_load_60 + memref_load_62); 
              int arith_addi_64 = (arith_addi_23 + arith_const_6); 
              int arith_addi_65 = (arith_addi_57 + arith_const_13); 
              double memref_load_66 = func_arg_2[arith_addi_64][arith_addi_65]; 
              double arith_addf_67 = (arith_addf_63 + memref_load_66); 
              int arith_addi_68 = (arith_addi_57 + arith_const_6); 
              double memref_load_69 = func_arg_2[arith_addi_23][arith_addi_68]; 
              double arith_addf_70 = (arith_addf_67 + memref_load_69); 
              double memref_load_71 = func_arg_2[arith_addi_23][arith_addi_57]; 
              double arith_addf_72 = (arith_addf_70 + memref_load_71); 
              int arith_addi_73 = (arith_addi_57 + arith_const_13); 
              double memref_load_74 = func_arg_2[arith_addi_23][arith_addi_73]; 
              double arith_addf_75 = (arith_addf_72 + memref_load_74); 
              int arith_addi_76 = (arith_addi_23 + arith_const_13); 
              int arith_addi_77 = (arith_addi_57 + arith_const_6); 
              double memref_load_78 = func_arg_2[arith_addi_76][arith_addi_77]; 
              double arith_addf_79 = (arith_addf_75 + memref_load_78); 
              int arith_addi_80 = (arith_addi_23 + arith_const_13); 
              double memref_load_81 = func_arg_2[arith_addi_80][arith_addi_57]; 
              double arith_addf_82 = (arith_addf_79 + memref_load_81); 
              int arith_addi_83 = (arith_addi_23 + arith_const_13); 
              int arith_addi_84 = (arith_addi_57 + arith_const_13); 
              double memref_load_85 = func_arg_2[arith_addi_83][arith_addi_84]; 
              double arith_addf_86 = (arith_addf_82 + memref_load_85); 
              double arith_divf_87 = (arith_addf_86 / arith_const_10); 
              func_arg_2[arith_addi_23][arith_addi_57] = arith_divf_87; 
              int arith_addi_88 = (arith_addi_26 + arith_const_5); 
              int arith_addi_89 = (arith_addi_23 + arith_const_6); 
              int arith_addi_90 = (arith_addi_88 + arith_const_6); 
              double memref_load_91 = func_arg_2[arith_addi_89][arith_addi_90]; 
              int arith_addi_92 = (arith_addi_23 + arith_const_6); 
              double memref_load_93 = func_arg_2[arith_addi_92][arith_addi_88]; 
              double arith_addf_94 = (memref_load_91 + memref_load_93); 
              int arith_addi_95 = (arith_addi_23 + arith_const_6); 
              int arith_addi_96 = (arith_addi_88 + arith_const_13); 
              double memref_load_97 = func_arg_2[arith_addi_95][arith_addi_96]; 
              double arith_addf_98 = (arith_addf_94 + memref_load_97); 
              int arith_addi_99 = (arith_addi_88 + arith_const_6); 
              double memref_load_100 = func_arg_2[arith_addi_23][arith_addi_99]; 
              double arith_addf_101 = (arith_addf_98 + memref_load_100); 
              double memref_load_102 = func_arg_2[arith_addi_23][arith_addi_88]; 
              double arith_addf_103 = (arith_addf_101 + memref_load_102); 
              int arith_addi_104 = (arith_addi_88 + arith_const_13); 
              double memref_load_105 = func_arg_2[arith_addi_23][arith_addi_104]; 
              double arith_addf_106 = (arith_addf_103 + memref_load_105); 
              int arith_addi_107 = (arith_addi_23 + arith_const_13); 
              int arith_addi_108 = (arith_addi_88 + arith_const_6); 
              double memref_load_109 = func_arg_2[arith_addi_107][arith_addi_108]; 
              double arith_addf_110 = (arith_addf_106 + memref_load_109); 
              int arith_addi_111 = (arith_addi_23 + arith_const_13); 
              double memref_load_112 = func_arg_2[arith_addi_111][arith_addi_88]; 
              double arith_addf_113 = (arith_addf_110 + memref_load_112); 
              int arith_addi_114 = (arith_addi_23 + arith_const_13); 
              int arith_addi_115 = (arith_addi_88 + arith_const_13); 
              double memref_load_116 = func_arg_2[arith_addi_114][arith_addi_115]; 
              double arith_addf_117 = (arith_addf_113 + memref_load_116); 
              double arith_divf_118 = (arith_addf_117 / arith_const_10); 
              func_arg_2[arith_addi_23][arith_addi_88] = arith_divf_118; 
              int arith_addi_119 = (arith_addi_26 + arith_const_4); 
              int arith_addi_120 = (arith_addi_23 + arith_const_6); 
              int arith_addi_121 = (arith_addi_119 + arith_const_6); 
              double memref_load_122 = func_arg_2[arith_addi_120][arith_addi_121]; 
              int arith_addi_123 = (arith_addi_23 + arith_const_6); 
              double memref_load_124 = func_arg_2[arith_addi_123][arith_addi_119]; 
              double arith_addf_125 = (memref_load_122 + memref_load_124); 
              int arith_addi_126 = (arith_addi_23 + arith_const_6); 
              int arith_addi_127 = (arith_addi_119 + arith_const_13); 
              double memref_load_128 = func_arg_2[arith_addi_126][arith_addi_127]; 
              double arith_addf_129 = (arith_addf_125 + memref_load_128); 
              int arith_addi_130 = (arith_addi_119 + arith_const_6); 
              double memref_load_131 = func_arg_2[arith_addi_23][arith_addi_130]; 
              double arith_addf_132 = (arith_addf_129 + memref_load_131); 
              double memref_load_133 = func_arg_2[arith_addi_23][arith_addi_119]; 
              double arith_addf_134 = (arith_addf_132 + memref_load_133); 
              int arith_addi_135 = (arith_addi_119 + arith_const_13); 
              double memref_load_136 = func_arg_2[arith_addi_23][arith_addi_135]; 
              double arith_addf_137 = (arith_addf_134 + memref_load_136); 
              int arith_addi_138 = (arith_addi_23 + arith_const_13); 
              int arith_addi_139 = (arith_addi_119 + arith_const_6); 
              double memref_load_140 = func_arg_2[arith_addi_138][arith_addi_139]; 
              double arith_addf_141 = (arith_addf_137 + memref_load_140); 
              int arith_addi_142 = (arith_addi_23 + arith_const_13); 
              double memref_load_143 = func_arg_2[arith_addi_142][arith_addi_119]; 
              double arith_addf_144 = (arith_addf_141 + memref_load_143); 
              int arith_addi_145 = (arith_addi_23 + arith_const_13); 
              int arith_addi_146 = (arith_addi_119 + arith_const_13); 
              double memref_load_147 = func_arg_2[arith_addi_145][arith_addi_146]; 
              double arith_addf_148 = (arith_addf_144 + memref_load_147); 
              double arith_divf_149 = (arith_addf_148 / arith_const_10); 
              func_arg_2[arith_addi_23][arith_addi_119] = arith_divf_149; 
            }
            for (int for_iter_150 = arith_const_11; for_iter_150 < arith_const_5; for_iter_150 += arith_const_13) {
              int arith_addi_151 = (for_iter_150 + arith_const_3); 
              int arith_addi_152 = (arith_addi_23 + arith_const_6); 
              int arith_addi_153 = (arith_addi_151 + arith_const_6); 
              double memref_load_154 = func_arg_2[arith_addi_152][arith_addi_153]; 
              int arith_addi_155 = (arith_addi_23 + arith_const_6); 
              double memref_load_156 = func_arg_2[arith_addi_155][arith_addi_151]; 
              double arith_addf_157 = (memref_load_154 + memref_load_156); 
              int arith_addi_158 = (arith_addi_23 + arith_const_6); 
              int arith_addi_159 = (arith_addi_151 + arith_const_13); 
              double memref_load_160 = func_arg_2[arith_addi_158][arith_addi_159]; 
              double arith_addf_161 = (arith_addf_157 + memref_load_160); 
              int arith_addi_162 = (arith_addi_151 + arith_const_6); 
              double memref_load_163 = func_arg_2[arith_addi_23][arith_addi_162]; 
              double arith_addf_164 = (arith_addf_161 + memref_load_163); 
              double memref_load_165 = func_arg_2[arith_addi_23][arith_addi_151]; 
              double arith_addf_166 = (arith_addf_164 + memref_load_165); 
              int arith_addi_167 = (arith_addi_151 + arith_const_13); 
              double memref_load_168 = func_arg_2[arith_addi_23][arith_addi_167]; 
              double arith_addf_169 = (arith_addf_166 + memref_load_168); 
              int arith_addi_170 = (arith_addi_23 + arith_const_13); 
              int arith_addi_171 = (arith_addi_151 + arith_const_6); 
              double memref_load_172 = func_arg_2[arith_addi_170][arith_addi_171]; 
              double arith_addf_173 = (arith_addf_169 + memref_load_172); 
              int arith_addi_174 = (arith_addi_23 + arith_const_13); 
              double memref_load_175 = func_arg_2[arith_addi_174][arith_addi_151]; 
              double arith_addf_176 = (arith_addf_173 + memref_load_175); 
              int arith_addi_177 = (arith_addi_23 + arith_const_13); 
              int arith_addi_178 = (arith_addi_151 + arith_const_13); 
              double memref_load_179 = func_arg_2[arith_addi_177][arith_addi_178]; 
              double arith_addf_180 = (arith_addf_176 + memref_load_179); 
              double arith_divf_181 = (arith_addf_180 / arith_const_10); 
              func_arg_2[arith_addi_23][arith_addi_151] = arith_divf_181; 
            }
          }
          PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
        }
        async_group_17[async_group_index_18] = execute_token_21; 
        async_group_index_18++; 
        int arith_addi_182 = (for_iter_arg_20 + arith_const_13); 
        for_iter_arg_20 = arith_addi_182; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int tsteps;
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_seidel_2d(tsteps, n, A);
}
}

#pragma pocc-region-end
