#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_gemver(int func_arg_0, double func_arg_1, double func_arg_2, double* func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6, double* func_arg_7, double* func_arg_8, double* func_arg_9, double* func_arg_10, double* func_arg_11)
{
  int arith_const_12 = 42; 
  int arith_const_13 = 3; 
  int arith_const_14 = 4; 
  int arith_const_15 = 8; 
  int arith_const_16 = 10; 
  int arith_const_17 = -8; 
  int arith_const_18 = 32; 
  int arith_const_19 = 40; 
  int arith_const_20 = -32; 
  int arith_const_21 = 0; 
  int arith_const_22 = 2; 
  int arith_const_23 = 1; 
  for (int for_iter_24 = arith_const_21; for_iter_24 < arith_const_22; for_iter_24 += arith_const_23) {
    for (int for_iter_25 = arith_const_21; for_iter_25 < arith_const_22; for_iter_25 += arith_const_23) {
      int arith_muli_26 = (for_iter_25 * arith_const_20); 
      int arith_addi_27 = (arith_muli_26 + arith_const_19); 
      int arith_minsi_28 = min(arith_addi_27, arith_const_18); 
      for (int for_iter_29 = arith_const_21; for_iter_29 < arith_minsi_28; for_iter_29 += arith_const_23) {
        int arith_muli_30 = (for_iter_25 * arith_const_18); 
        int arith_addi_31 = (arith_muli_30 + for_iter_29); 
        double memref_load_32 = func_arg_4[arith_addi_31]; 
        double memref_load_33 = func_arg_6[arith_addi_31]; 
        double memref_load_34 = func_arg_10[arith_addi_31]; 
        double memref_load_35 = func_arg_4[arith_addi_31]; 
        double memref_load_36 = func_arg_6[arith_addi_31]; 
        double memref_load_37 = func_arg_10[arith_addi_31]; 
        double memref_load_38 = func_arg_4[arith_addi_31]; 
        double memref_load_39 = func_arg_6[arith_addi_31]; 
        double memref_load_40 = func_arg_10[arith_addi_31]; 
        double memref_load_41 = func_arg_4[arith_addi_31]; 
        double memref_load_42 = func_arg_6[arith_addi_31]; 
        double memref_load_43 = func_arg_10[arith_addi_31]; 
        int arith_muli_44 = (for_iter_24 * arith_const_17); 
        int arith_addi_45 = (arith_muli_44 + arith_const_16); 
        int arith_minsi_46 = min(arith_addi_45, arith_const_15); 
        for (int for_iter_47 = arith_const_21; for_iter_47 < arith_minsi_46; for_iter_47 += arith_const_23) {
          int arith_muli_48 = (for_iter_24 * arith_const_18); 
          int arith_muli_49 = (for_iter_47 * arith_const_14); 
          int arith_addi_50 = (arith_muli_48 + arith_muli_49); 
          double memref_load_51 = func_arg_3[arith_addi_31][arith_addi_50]; 
          double memref_load_52 = func_arg_5[arith_addi_50]; 
          double arith_mulf_53 = (memref_load_32 * memref_load_52); 
          double arith_addf_54 = (memref_load_51 + arith_mulf_53); 
          double memref_load_55 = func_arg_7[arith_addi_50]; 
          double arith_mulf_56 = (memref_load_33 * memref_load_55); 
          double arith_addf_57 = (arith_addf_54 + arith_mulf_56); 
          func_arg_3[arith_addi_31][arith_addi_50] = arith_addf_57; 
          double memref_load_58 = func_arg_9[arith_addi_50]; 
          double memref_load_59 = func_arg_3[arith_addi_31][arith_addi_50]; 
          double arith_mulf_60 = (func_arg_2 * memref_load_59); 
          double arith_mulf_61 = (arith_mulf_60 * memref_load_34); 
          double arith_addf_62 = (memref_load_58 + arith_mulf_61); 
          func_arg_9[arith_addi_50] = arith_addf_62; 
          int arith_addi_63 = (arith_addi_50 + arith_const_23); 
          double memref_load_64 = func_arg_3[arith_addi_31][arith_addi_63]; 
          double memref_load_65 = func_arg_5[arith_addi_63]; 
          double arith_mulf_66 = (memref_load_35 * memref_load_65); 
          double arith_addf_67 = (memref_load_64 + arith_mulf_66); 
          double memref_load_68 = func_arg_7[arith_addi_63]; 
          double arith_mulf_69 = (memref_load_36 * memref_load_68); 
          double arith_addf_70 = (arith_addf_67 + arith_mulf_69); 
          func_arg_3[arith_addi_31][arith_addi_63] = arith_addf_70; 
          double memref_load_71 = func_arg_9[arith_addi_63]; 
          double memref_load_72 = func_arg_3[arith_addi_31][arith_addi_63]; 
          double arith_mulf_73 = (func_arg_2 * memref_load_72); 
          double arith_mulf_74 = (arith_mulf_73 * memref_load_37); 
          double arith_addf_75 = (memref_load_71 + arith_mulf_74); 
          func_arg_9[arith_addi_63] = arith_addf_75; 
          int arith_addi_76 = (arith_addi_50 + arith_const_22); 
          double memref_load_77 = func_arg_3[arith_addi_31][arith_addi_76]; 
          double memref_load_78 = func_arg_5[arith_addi_76]; 
          double arith_mulf_79 = (memref_load_38 * memref_load_78); 
          double arith_addf_80 = (memref_load_77 + arith_mulf_79); 
          double memref_load_81 = func_arg_7[arith_addi_76]; 
          double arith_mulf_82 = (memref_load_39 * memref_load_81); 
          double arith_addf_83 = (arith_addf_80 + arith_mulf_82); 
          func_arg_3[arith_addi_31][arith_addi_76] = arith_addf_83; 
          double memref_load_84 = func_arg_9[arith_addi_76]; 
          double memref_load_85 = func_arg_3[arith_addi_31][arith_addi_76]; 
          double arith_mulf_86 = (func_arg_2 * memref_load_85); 
          double arith_mulf_87 = (arith_mulf_86 * memref_load_40); 
          double arith_addf_88 = (memref_load_84 + arith_mulf_87); 
          func_arg_9[arith_addi_76] = arith_addf_88; 
          int arith_addi_89 = (arith_addi_50 + arith_const_13); 
          double memref_load_90 = func_arg_3[arith_addi_31][arith_addi_89]; 
          double memref_load_91 = func_arg_5[arith_addi_89]; 
          double arith_mulf_92 = (memref_load_41 * memref_load_91); 
          double arith_addf_93 = (memref_load_90 + arith_mulf_92); 
          double memref_load_94 = func_arg_7[arith_addi_89]; 
          double arith_mulf_95 = (memref_load_42 * memref_load_94); 
          double arith_addf_96 = (arith_addf_93 + arith_mulf_95); 
          func_arg_3[arith_addi_31][arith_addi_89] = arith_addf_96; 
          double memref_load_97 = func_arg_9[arith_addi_89]; 
          double memref_load_98 = func_arg_3[arith_addi_31][arith_addi_89]; 
          double arith_mulf_99 = (func_arg_2 * memref_load_98); 
          double arith_mulf_100 = (arith_mulf_99 * memref_load_43); 
          double arith_addf_101 = (memref_load_97 + arith_mulf_100); 
          func_arg_9[arith_addi_89] = arith_addf_101; 
        }
      }
    }
  }
  for (int for_iter_102 = arith_const_21; for_iter_102 < arith_const_22; for_iter_102 += arith_const_23) {
    int arith_muli_103 = (for_iter_102 * arith_const_17); 
    int arith_addi_104 = (arith_muli_103 + arith_const_16); 
    int arith_minsi_105 = min(arith_addi_104, arith_const_15); 
    for (int for_iter_106 = arith_const_21; for_iter_106 < arith_minsi_105; for_iter_106 += arith_const_23) {
      int arith_muli_107 = (for_iter_102 * arith_const_18); 
      int arith_muli_108 = (for_iter_106 * arith_const_14); 
      int arith_addi_109 = (arith_muli_107 + arith_muli_108); 
      double memref_load_110 = func_arg_9[arith_addi_109]; 
      double memref_load_111 = func_arg_11[arith_addi_109]; 
      double arith_addf_112 = (memref_load_110 + memref_load_111); 
      func_arg_9[arith_addi_109] = arith_addf_112; 
      int arith_addi_113 = (arith_addi_109 + arith_const_23); 
      double memref_load_114 = func_arg_9[arith_addi_113]; 
      double memref_load_115 = func_arg_11[arith_addi_113]; 
      double arith_addf_116 = (memref_load_114 + memref_load_115); 
      func_arg_9[arith_addi_113] = arith_addf_116; 
      int arith_addi_117 = (arith_addi_109 + arith_const_22); 
      double memref_load_118 = func_arg_9[arith_addi_117]; 
      double memref_load_119 = func_arg_11[arith_addi_117]; 
      double arith_addf_120 = (memref_load_118 + memref_load_119); 
      func_arg_9[arith_addi_117] = arith_addf_120; 
      int arith_addi_121 = (arith_addi_109 + arith_const_13); 
      double memref_load_122 = func_arg_9[arith_addi_121]; 
      double memref_load_123 = func_arg_11[arith_addi_121]; 
      double arith_addf_124 = (memref_load_122 + memref_load_123); 
      func_arg_9[arith_addi_121] = arith_addf_124; 
    }
  }
  int* async_group_125; 
  int async_group_index_126 = 0; 
  int for_iter_arg_128 = arith_const_21; 
  for (int for_iter_127 = arith_const_21; for_iter_127 < arith_const_22; for_iter_127 += arith_const_23) {
    PAST_NEW_SEMAPHORE(execute_token_129); 
    #pragma peqc async_execute
    {
      for (int for_iter_130 = arith_const_21; for_iter_130 < arith_const_22; for_iter_130 += arith_const_23) {
        int arith_muli_131 = (for_iter_127 * arith_const_18); 
        int arith_muli_132 = (for_iter_127 * arith_const_18); 
        int arith_addi_133 = (arith_muli_132 + arith_const_18); 
        int arith_minsi_134 = min(arith_addi_133, arith_const_19); 
        int* async_group_135; 
        int async_group_index_136 = 0; 
        int for_iter_arg_138 = arith_const_21; 
        for (int for_iter_137 = arith_muli_131; for_iter_137 < arith_minsi_134; for_iter_137 += arith_const_23) {
          PAST_NEW_SEMAPHORE(execute_token_139); 
          #pragma peqc async_execute
          {
            int arith_muli_140 = (for_iter_130 * arith_const_17); 
            int arith_addi_141 = (arith_muli_140 + arith_const_16); 
            int arith_minsi_142 = min(arith_addi_141, arith_const_15); 
            for (int for_iter_143 = arith_const_21; for_iter_143 < arith_minsi_142; for_iter_143 += arith_const_23) {
              int arith_muli_144 = (for_iter_130 * arith_const_18); 
              int arith_muli_145 = (for_iter_143 * arith_const_14); 
              int arith_addi_146 = (arith_muli_144 + arith_muli_145); 
              double memref_load_147 = func_arg_8[for_iter_137]; 
              double memref_load_148 = func_arg_3[for_iter_137][arith_addi_146]; 
              double arith_mulf_149 = (func_arg_1 * memref_load_148); 
              double memref_load_150 = func_arg_9[arith_addi_146]; 
              double arith_mulf_151 = (arith_mulf_149 * memref_load_150); 
              double arith_addf_152 = (memref_load_147 + arith_mulf_151); 
              func_arg_8[for_iter_137] = arith_addf_152; 
              int arith_addi_153 = (arith_addi_146 + arith_const_23); 
              double memref_load_154 = func_arg_8[for_iter_137]; 
              double memref_load_155 = func_arg_3[for_iter_137][arith_addi_153]; 
              double arith_mulf_156 = (func_arg_1 * memref_load_155); 
              double memref_load_157 = func_arg_9[arith_addi_153]; 
              double arith_mulf_158 = (arith_mulf_156 * memref_load_157); 
              double arith_addf_159 = (memref_load_154 + arith_mulf_158); 
              func_arg_8[for_iter_137] = arith_addf_159; 
              int arith_addi_160 = (arith_addi_146 + arith_const_22); 
              double memref_load_161 = func_arg_8[for_iter_137]; 
              double memref_load_162 = func_arg_3[for_iter_137][arith_addi_160]; 
              double arith_mulf_163 = (func_arg_1 * memref_load_162); 
              double memref_load_164 = func_arg_9[arith_addi_160]; 
              double arith_mulf_165 = (arith_mulf_163 * memref_load_164); 
              double arith_addf_166 = (memref_load_161 + arith_mulf_165); 
              func_arg_8[for_iter_137] = arith_addf_166; 
              int arith_addi_167 = (arith_addi_146 + arith_const_13); 
              double memref_load_168 = func_arg_8[for_iter_137]; 
              double memref_load_169 = func_arg_3[for_iter_137][arith_addi_167]; 
              double arith_mulf_170 = (func_arg_1 * memref_load_169); 
              double memref_load_171 = func_arg_9[arith_addi_167]; 
              double arith_mulf_172 = (arith_mulf_170 * memref_load_171); 
              double arith_addf_173 = (memref_load_168 + arith_mulf_172); 
              func_arg_8[for_iter_137] = arith_addf_173; 
            }
            PAST_SET_SEMAPHORE(execute_token_139, PAST_TASK_FINISHED); 
          }
          async_group_135[async_group_index_136] = execute_token_139; 
          async_group_index_136++; 
          int arith_addi_174 = (for_iter_arg_138 + arith_const_23); 
          for_iter_arg_138 = arith_addi_174; 
        }
        PAST_WAIT_SEMAPHORE_ALL(async_group_135, async_group_index_136, PAST_TASK_FINISHED); 
      }
      PAST_SET_SEMAPHORE(execute_token_129, PAST_TASK_FINISHED); 
    }
    async_group_125[async_group_index_126] = execute_token_129; 
    async_group_index_126++; 
    int arith_addi_175 = (for_iter_arg_128 + arith_const_23); 
    for_iter_arg_128 = arith_addi_175; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_125, async_group_index_126, PAST_TASK_FINISHED); 
  return; 

}


{
#include "/data-host-share/verif-dialect/verif-translate/prologue.h"
  int n;
  double alpha;
  double beta;
  double* A;
  double* u1;
  double* v1;
  double* u2;
  double* v2;
  double* w;
  double* x;
  double* y;
  double* z;

#pragma peqc async_execute
{
  kernel_gemver(n, alpha, beta, A, u1, v1, u2, v2, w, x, y, z);
}
}

#pragma pocc-region-end
