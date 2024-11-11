#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_mvt(int func_arg_0, double* func_arg_1, double* func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5)
{
  int arith_const_6 = 40; 
  int arith_const_7 = 3; 
  int arith_const_8 = 2; 
  int arith_const_9 = 4; 
  int arith_const_10 = 0; 
  int arith_const_11 = 10; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_muli_14 = (for_iter_13 * arith_const_9); 
    for (int for_iter_15 = arith_const_10; for_iter_15 < arith_const_11; for_iter_15 += arith_const_12) {
      int arith_muli_16 = (for_iter_15 * arith_const_9); 
      for (int for_iter_17 = arith_const_10; for_iter_17 < arith_const_12; for_iter_17 += arith_const_12) {
        int arith_muli_18 = (for_iter_17 * arith_const_9); 
        int arith_addi_19 = (arith_muli_14 + arith_muli_18); 
        int arith_addi_20 = (arith_addi_19 + arith_const_12); 
        int arith_addi_21 = (arith_addi_19 + arith_const_8); 
        int arith_addi_22 = (arith_addi_19 + arith_const_7); 
        for (int for_iter_23 = arith_const_10; for_iter_23 < arith_const_12; for_iter_23 += arith_const_12) {
          int arith_muli_24 = (for_iter_23 * arith_const_9); 
          int arith_addi_25 = (arith_muli_16 + arith_muli_24); 
          double memref_load_26 = func_arg_1[arith_addi_19]; 
          double memref_load_27 = func_arg_5[arith_addi_19][arith_addi_25]; 
          double memref_load_28 = func_arg_3[arith_addi_25]; 
          double arith_mulf_29 = (memref_load_27 * memref_load_28); 
          double arith_addf_30 = (memref_load_26 + arith_mulf_29); 
          func_arg_1[arith_addi_19] = arith_addf_30; 
          int arith_addi_31 = (arith_addi_25 + arith_const_12); 
          double memref_load_32 = func_arg_1[arith_addi_19]; 
          double memref_load_33 = func_arg_5[arith_addi_19][arith_addi_31]; 
          double memref_load_34 = func_arg_3[arith_addi_31]; 
          double arith_mulf_35 = (memref_load_33 * memref_load_34); 
          double arith_addf_36 = (memref_load_32 + arith_mulf_35); 
          func_arg_1[arith_addi_19] = arith_addf_36; 
          int arith_addi_37 = (arith_addi_25 + arith_const_8); 
          double memref_load_38 = func_arg_1[arith_addi_19]; 
          double memref_load_39 = func_arg_5[arith_addi_19][arith_addi_37]; 
          double memref_load_40 = func_arg_3[arith_addi_37]; 
          double arith_mulf_41 = (memref_load_39 * memref_load_40); 
          double arith_addf_42 = (memref_load_38 + arith_mulf_41); 
          func_arg_1[arith_addi_19] = arith_addf_42; 
          int arith_addi_43 = (arith_addi_25 + arith_const_7); 
          double memref_load_44 = func_arg_1[arith_addi_19]; 
          double memref_load_45 = func_arg_5[arith_addi_19][arith_addi_43]; 
          double memref_load_46 = func_arg_3[arith_addi_43]; 
          double arith_mulf_47 = (memref_load_45 * memref_load_46); 
          double arith_addf_48 = (memref_load_44 + arith_mulf_47); 
          func_arg_1[arith_addi_19] = arith_addf_48; 
          double memref_load_49 = func_arg_1[arith_addi_20]; 
          double memref_load_50 = func_arg_5[arith_addi_20][arith_addi_25]; 
          double memref_load_51 = func_arg_3[arith_addi_25]; 
          double arith_mulf_52 = (memref_load_50 * memref_load_51); 
          double arith_addf_53 = (memref_load_49 + arith_mulf_52); 
          func_arg_1[arith_addi_20] = arith_addf_53; 
          int arith_addi_54 = (arith_addi_25 + arith_const_12); 
          double memref_load_55 = func_arg_1[arith_addi_20]; 
          double memref_load_56 = func_arg_5[arith_addi_20][arith_addi_54]; 
          double memref_load_57 = func_arg_3[arith_addi_54]; 
          double arith_mulf_58 = (memref_load_56 * memref_load_57); 
          double arith_addf_59 = (memref_load_55 + arith_mulf_58); 
          func_arg_1[arith_addi_20] = arith_addf_59; 
          int arith_addi_60 = (arith_addi_25 + arith_const_8); 
          double memref_load_61 = func_arg_1[arith_addi_20]; 
          double memref_load_62 = func_arg_5[arith_addi_20][arith_addi_60]; 
          double memref_load_63 = func_arg_3[arith_addi_60]; 
          double arith_mulf_64 = (memref_load_62 * memref_load_63); 
          double arith_addf_65 = (memref_load_61 + arith_mulf_64); 
          func_arg_1[arith_addi_20] = arith_addf_65; 
          int arith_addi_66 = (arith_addi_25 + arith_const_7); 
          double memref_load_67 = func_arg_1[arith_addi_20]; 
          double memref_load_68 = func_arg_5[arith_addi_20][arith_addi_66]; 
          double memref_load_69 = func_arg_3[arith_addi_66]; 
          double arith_mulf_70 = (memref_load_68 * memref_load_69); 
          double arith_addf_71 = (memref_load_67 + arith_mulf_70); 
          func_arg_1[arith_addi_20] = arith_addf_71; 
          double memref_load_72 = func_arg_1[arith_addi_21]; 
          double memref_load_73 = func_arg_5[arith_addi_21][arith_addi_25]; 
          double memref_load_74 = func_arg_3[arith_addi_25]; 
          double arith_mulf_75 = (memref_load_73 * memref_load_74); 
          double arith_addf_76 = (memref_load_72 + arith_mulf_75); 
          func_arg_1[arith_addi_21] = arith_addf_76; 
          int arith_addi_77 = (arith_addi_25 + arith_const_12); 
          double memref_load_78 = func_arg_1[arith_addi_21]; 
          double memref_load_79 = func_arg_5[arith_addi_21][arith_addi_77]; 
          double memref_load_80 = func_arg_3[arith_addi_77]; 
          double arith_mulf_81 = (memref_load_79 * memref_load_80); 
          double arith_addf_82 = (memref_load_78 + arith_mulf_81); 
          func_arg_1[arith_addi_21] = arith_addf_82; 
          int arith_addi_83 = (arith_addi_25 + arith_const_8); 
          double memref_load_84 = func_arg_1[arith_addi_21]; 
          double memref_load_85 = func_arg_5[arith_addi_21][arith_addi_83]; 
          double memref_load_86 = func_arg_3[arith_addi_83]; 
          double arith_mulf_87 = (memref_load_85 * memref_load_86); 
          double arith_addf_88 = (memref_load_84 + arith_mulf_87); 
          func_arg_1[arith_addi_21] = arith_addf_88; 
          int arith_addi_89 = (arith_addi_25 + arith_const_7); 
          double memref_load_90 = func_arg_1[arith_addi_21]; 
          double memref_load_91 = func_arg_5[arith_addi_21][arith_addi_89]; 
          double memref_load_92 = func_arg_3[arith_addi_89]; 
          double arith_mulf_93 = (memref_load_91 * memref_load_92); 
          double arith_addf_94 = (memref_load_90 + arith_mulf_93); 
          func_arg_1[arith_addi_21] = arith_addf_94; 
          double memref_load_95 = func_arg_1[arith_addi_22]; 
          double memref_load_96 = func_arg_5[arith_addi_22][arith_addi_25]; 
          double memref_load_97 = func_arg_3[arith_addi_25]; 
          double arith_mulf_98 = (memref_load_96 * memref_load_97); 
          double arith_addf_99 = (memref_load_95 + arith_mulf_98); 
          func_arg_1[arith_addi_22] = arith_addf_99; 
          int arith_addi_100 = (arith_addi_25 + arith_const_12); 
          double memref_load_101 = func_arg_1[arith_addi_22]; 
          double memref_load_102 = func_arg_5[arith_addi_22][arith_addi_100]; 
          double memref_load_103 = func_arg_3[arith_addi_100]; 
          double arith_mulf_104 = (memref_load_102 * memref_load_103); 
          double arith_addf_105 = (memref_load_101 + arith_mulf_104); 
          func_arg_1[arith_addi_22] = arith_addf_105; 
          int arith_addi_106 = (arith_addi_25 + arith_const_8); 
          double memref_load_107 = func_arg_1[arith_addi_22]; 
          double memref_load_108 = func_arg_5[arith_addi_22][arith_addi_106]; 
          double memref_load_109 = func_arg_3[arith_addi_106]; 
          double arith_mulf_110 = (memref_load_108 * memref_load_109); 
          double arith_addf_111 = (memref_load_107 + arith_mulf_110); 
          func_arg_1[arith_addi_22] = arith_addf_111; 
          int arith_addi_112 = (arith_addi_25 + arith_const_7); 
          double memref_load_113 = func_arg_1[arith_addi_22]; 
          double memref_load_114 = func_arg_5[arith_addi_22][arith_addi_112]; 
          double memref_load_115 = func_arg_3[arith_addi_112]; 
          double arith_mulf_116 = (memref_load_114 * memref_load_115); 
          double arith_addf_117 = (memref_load_113 + arith_mulf_116); 
          func_arg_1[arith_addi_22] = arith_addf_117; 
        }
      }
    }
  }
  int* async_group_118; 
  int async_group_index_119 = 0; 
  int for_iter_arg_121 = arith_const_10; 
  for (int for_iter_120 = arith_const_10; for_iter_120 < arith_const_6; for_iter_120 += arith_const_12) {
    PAST_NEW_SEMAPHORE(execute_token_122); 
    #pragma peqc async_execute
    {
      for (int for_iter_123 = arith_const_10; for_iter_123 < arith_const_11; for_iter_123 += arith_const_12) {
        int arith_muli_124 = (for_iter_123 * arith_const_9); 
        for (int for_iter_125 = arith_const_10; for_iter_125 < arith_const_12; for_iter_125 += arith_const_12) {
          int arith_addi_126 = (for_iter_120 + for_iter_125); 
          for (int for_iter_127 = arith_const_10; for_iter_127 < arith_const_12; for_iter_127 += arith_const_12) {
            int arith_muli_128 = (for_iter_127 * arith_const_9); 
            int arith_addi_129 = (arith_muli_124 + arith_muli_128); 
            double memref_load_130 = func_arg_2[arith_addi_126]; 
            double memref_load_131 = func_arg_5[arith_addi_129][arith_addi_126]; 
            double memref_load_132 = func_arg_4[arith_addi_129]; 
            double arith_mulf_133 = (memref_load_131 * memref_load_132); 
            double arith_addf_134 = (memref_load_130 + arith_mulf_133); 
            func_arg_2[arith_addi_126] = arith_addf_134; 
            int arith_addi_135 = (arith_addi_129 + arith_const_12); 
            double memref_load_136 = func_arg_2[arith_addi_126]; 
            double memref_load_137 = func_arg_5[arith_addi_135][arith_addi_126]; 
            double memref_load_138 = func_arg_4[arith_addi_135]; 
            double arith_mulf_139 = (memref_load_137 * memref_load_138); 
            double arith_addf_140 = (memref_load_136 + arith_mulf_139); 
            func_arg_2[arith_addi_126] = arith_addf_140; 
            int arith_addi_141 = (arith_addi_129 + arith_const_8); 
            double memref_load_142 = func_arg_2[arith_addi_126]; 
            double memref_load_143 = func_arg_5[arith_addi_141][arith_addi_126]; 
            double memref_load_144 = func_arg_4[arith_addi_141]; 
            double arith_mulf_145 = (memref_load_143 * memref_load_144); 
            double arith_addf_146 = (memref_load_142 + arith_mulf_145); 
            func_arg_2[arith_addi_126] = arith_addf_146; 
            int arith_addi_147 = (arith_addi_129 + arith_const_7); 
            double memref_load_148 = func_arg_2[arith_addi_126]; 
            double memref_load_149 = func_arg_5[arith_addi_147][arith_addi_126]; 
            double memref_load_150 = func_arg_4[arith_addi_147]; 
            double arith_mulf_151 = (memref_load_149 * memref_load_150); 
            double arith_addf_152 = (memref_load_148 + arith_mulf_151); 
            func_arg_2[arith_addi_126] = arith_addf_152; 
          }
        }
      }
      PAST_SET_SEMAPHORE(execute_token_122, PAST_TASK_FINISHED); 
    }
    async_group_118[async_group_index_119] = execute_token_122; 
    async_group_index_119++; 
    int arith_addi_153 = (for_iter_arg_121 + arith_const_12); 
    for_iter_arg_121 = arith_addi_153; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_118, async_group_index_119, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double* x1;
  double* x2;
  double* y_1;
  double* y_2;
  double* A;

#pragma peqc async_execute
{
  kernel_mvt(n, x1, x2, y_1, y_2, A);
}
}

#pragma pocc-region-end
