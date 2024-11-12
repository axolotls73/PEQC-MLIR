#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
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
      for (int for_iter_21 = arith_const_13; for_iter_21 < arith_const_15; for_iter_21 += arith_const_15) {
        int arith_addi_22 = (for_iter_18 + for_iter_21); 
        int arith_addi_23 = (for_iter_18 + for_iter_21); 
        int arith_addi_24 = (arith_addi_23 + arith_const_15); 
        int arith_cmpi_25 = (arith_addi_24 < arith_const_13); 
        int arith_subi_26 = (arith_const_11 - arith_addi_24); 
        int arith_select_27 = (arith_cmpi_25 ? arith_subi_26 : arith_addi_24); 
        int arith_divi_28 = (arith_select_27 / arith_const_12); 
        int arith_subi_29 = (arith_const_11 - arith_divi_28); 
        int arith_select_30 = (arith_cmpi_25 ? arith_subi_29 : arith_divi_28); 
        for (int for_iter_31 = arith_const_13; for_iter_31 < arith_select_30; for_iter_31 += arith_const_15) {
          int arith_muli_32 = (for_iter_31 * arith_const_12); 
          double memref_load_33 = func_arg_4[arith_addi_22][arith_muli_32]; 
          double arith_mulf_34 = (memref_load_33 * func_arg_3); 
          func_arg_4[arith_addi_22][arith_muli_32] = arith_mulf_34; 
          int arith_addi_35 = (arith_muli_32 + arith_const_15); 
          double memref_load_36 = func_arg_4[arith_addi_22][arith_addi_35]; 
          double arith_mulf_37 = (memref_load_36 * func_arg_3); 
          func_arg_4[arith_addi_22][arith_addi_35] = arith_mulf_37; 
          int arith_addi_38 = (arith_muli_32 + arith_const_10); 
          double memref_load_39 = func_arg_4[arith_addi_22][arith_addi_38]; 
          double arith_mulf_40 = (memref_load_39 * func_arg_3); 
          func_arg_4[arith_addi_22][arith_addi_38] = arith_mulf_40; 
          int arith_addi_41 = (arith_muli_32 + arith_const_9); 
          double memref_load_42 = func_arg_4[arith_addi_22][arith_addi_41]; 
          double arith_mulf_43 = (memref_load_42 * func_arg_3); 
          func_arg_4[arith_addi_22][arith_addi_41] = arith_mulf_43; 
        }
        int arith_addi_44 = (for_iter_18 + for_iter_21); 
        int arith_addi_45 = (for_iter_18 + for_iter_21); 
        int arith_addi_46 = (arith_addi_45 + arith_const_15); 
        int arith_cmpi_47 = (arith_addi_46 < arith_const_13); 
        int arith_subi_48 = (arith_const_11 - arith_addi_46); 
        int arith_select_49 = (arith_cmpi_47 ? arith_subi_48 : arith_addi_46); 
        int arith_divi_50 = (arith_select_49 / arith_const_12); 
        int arith_subi_51 = (arith_const_11 - arith_divi_50); 
        int arith_select_52 = (arith_cmpi_47 ? arith_subi_51 : arith_divi_50); 
        int arith_muli_53 = (arith_select_52 * arith_const_8); 
        int arith_addi_54 = (arith_addi_44 + arith_muli_53); 
        int arith_addi_55 = (arith_addi_54 + arith_const_15); 
        for (int for_iter_56 = arith_const_13; for_iter_56 < arith_addi_55; for_iter_56 += arith_const_15) {
          int arith_addi_57 = (arith_addi_22 + arith_const_15); 
          int arith_cmpi_58 = (arith_addi_57 < arith_const_13); 
          int arith_subi_59 = (arith_const_11 - arith_addi_57); 
          int arith_select_60 = (arith_cmpi_58 ? arith_subi_59 : arith_addi_57); 
          int arith_divi_61 = (arith_select_60 / arith_const_12); 
          int arith_subi_62 = (arith_const_11 - arith_divi_61); 
          int arith_select_63 = (arith_cmpi_58 ? arith_subi_62 : arith_divi_61); 
          int arith_muli_64 = (arith_select_63 * arith_const_12); 
          int arith_addi_65 = (for_iter_56 + arith_muli_64); 
          double memref_load_66 = func_arg_4[arith_addi_22][arith_addi_65]; 
          double arith_mulf_67 = (memref_load_66 * func_arg_3); 
          func_arg_4[arith_addi_22][arith_addi_65] = arith_mulf_67; 
        }
        for (int for_iter_68 = arith_const_13; for_iter_68 < arith_const_7; for_iter_68 += arith_const_15) {
          double memref_load_69 = func_arg_6[arith_addi_22][for_iter_68]; 
          double memref_load_70 = func_arg_5[arith_addi_22][for_iter_68]; 
          double memref_load_71 = func_arg_6[arith_addi_22][for_iter_68]; 
          double memref_load_72 = func_arg_5[arith_addi_22][for_iter_68]; 
          double memref_load_73 = func_arg_6[arith_addi_22][for_iter_68]; 
          double memref_load_74 = func_arg_5[arith_addi_22][for_iter_68]; 
          double memref_load_75 = func_arg_6[arith_addi_22][for_iter_68]; 
          double memref_load_76 = func_arg_5[arith_addi_22][for_iter_68]; 
          int arith_addi_77 = (for_iter_18 + for_iter_21); 
          int arith_addi_78 = (arith_addi_77 + arith_const_15); 
          int arith_cmpi_79 = (arith_addi_78 < arith_const_13); 
          int arith_subi_80 = (arith_const_11 - arith_addi_78); 
          int arith_select_81 = (arith_cmpi_79 ? arith_subi_80 : arith_addi_78); 
          int arith_divi_82 = (arith_select_81 / arith_const_12); 
          int arith_subi_83 = (arith_const_11 - arith_divi_82); 
          int arith_select_84 = (arith_cmpi_79 ? arith_subi_83 : arith_divi_82); 
          for (int for_iter_85 = arith_const_13; for_iter_85 < arith_select_84; for_iter_85 += arith_const_15) {
            int arith_muli_86 = (for_iter_85 * arith_const_12); 
            double memref_load_87 = func_arg_5[arith_muli_86][for_iter_68]; 
            double arith_mulf_88 = (memref_load_87 * func_arg_2); 
            double arith_mulf_89 = (arith_mulf_88 * memref_load_69); 
            double memref_load_90 = func_arg_6[arith_muli_86][for_iter_68]; 
            double arith_mulf_91 = (memref_load_90 * func_arg_2); 
            double arith_mulf_92 = (arith_mulf_91 * memref_load_70); 
            double arith_addf_93 = (arith_mulf_89 + arith_mulf_92); 
            double memref_load_94 = func_arg_4[arith_addi_22][arith_muli_86]; 
            double arith_addf_95 = (memref_load_94 + arith_addf_93); 
            func_arg_4[arith_addi_22][arith_muli_86] = arith_addf_95; 
            int arith_addi_96 = (arith_muli_86 + arith_const_15); 
            double memref_load_97 = func_arg_5[arith_addi_96][for_iter_68]; 
            double arith_mulf_98 = (memref_load_97 * func_arg_2); 
            double arith_mulf_99 = (arith_mulf_98 * memref_load_71); 
            double memref_load_100 = func_arg_6[arith_addi_96][for_iter_68]; 
            double arith_mulf_101 = (memref_load_100 * func_arg_2); 
            double arith_mulf_102 = (arith_mulf_101 * memref_load_72); 
            double arith_addf_103 = (arith_mulf_99 + arith_mulf_102); 
            double memref_load_104 = func_arg_4[arith_addi_22][arith_addi_96]; 
            double arith_addf_105 = (memref_load_104 + arith_addf_103); 
            func_arg_4[arith_addi_22][arith_addi_96] = arith_addf_105; 
            int arith_addi_106 = (arith_muli_86 + arith_const_10); 
            double memref_load_107 = func_arg_5[arith_addi_106][for_iter_68]; 
            double arith_mulf_108 = (memref_load_107 * func_arg_2); 
            double arith_mulf_109 = (arith_mulf_108 * memref_load_73); 
            double memref_load_110 = func_arg_6[arith_addi_106][for_iter_68]; 
            double arith_mulf_111 = (memref_load_110 * func_arg_2); 
            double arith_mulf_112 = (arith_mulf_111 * memref_load_74); 
            double arith_addf_113 = (arith_mulf_109 + arith_mulf_112); 
            double memref_load_114 = func_arg_4[arith_addi_22][arith_addi_106]; 
            double arith_addf_115 = (memref_load_114 + arith_addf_113); 
            func_arg_4[arith_addi_22][arith_addi_106] = arith_addf_115; 
            int arith_addi_116 = (arith_muli_86 + arith_const_9); 
            double memref_load_117 = func_arg_5[arith_addi_116][for_iter_68]; 
            double arith_mulf_118 = (memref_load_117 * func_arg_2); 
            double arith_mulf_119 = (arith_mulf_118 * memref_load_75); 
            double memref_load_120 = func_arg_6[arith_addi_116][for_iter_68]; 
            double arith_mulf_121 = (memref_load_120 * func_arg_2); 
            double arith_mulf_122 = (arith_mulf_121 * memref_load_76); 
            double arith_addf_123 = (arith_mulf_119 + arith_mulf_122); 
            double memref_load_124 = func_arg_4[arith_addi_22][arith_addi_116]; 
            double arith_addf_125 = (memref_load_124 + arith_addf_123); 
            func_arg_4[arith_addi_22][arith_addi_116] = arith_addf_125; 
          }
          double memref_load_126 = func_arg_6[arith_addi_22][for_iter_68]; 
          double memref_load_127 = func_arg_5[arith_addi_22][for_iter_68]; 
          int arith_addi_128 = (for_iter_18 + for_iter_21); 
          int arith_addi_129 = (for_iter_18 + for_iter_21); 
          int arith_addi_130 = (arith_addi_129 + arith_const_15); 
          int arith_cmpi_131 = (arith_addi_130 < arith_const_13); 
          int arith_subi_132 = (arith_const_11 - arith_addi_130); 
          int arith_select_133 = (arith_cmpi_131 ? arith_subi_132 : arith_addi_130); 
          int arith_divi_134 = (arith_select_133 / arith_const_12); 
          int arith_subi_135 = (arith_const_11 - arith_divi_134); 
          int arith_select_136 = (arith_cmpi_131 ? arith_subi_135 : arith_divi_134); 
          int arith_muli_137 = (arith_select_136 * arith_const_8); 
          int arith_addi_138 = (arith_addi_128 + arith_muli_137); 
          int arith_addi_139 = (arith_addi_138 + arith_const_15); 
          for (int for_iter_140 = arith_const_13; for_iter_140 < arith_addi_139; for_iter_140 += arith_const_15) {
            int arith_addi_141 = (arith_addi_22 + arith_const_15); 
            int arith_cmpi_142 = (arith_addi_141 < arith_const_13); 
            int arith_subi_143 = (arith_const_11 - arith_addi_141); 
            int arith_select_144 = (arith_cmpi_142 ? arith_subi_143 : arith_addi_141); 
            int arith_divi_145 = (arith_select_144 / arith_const_12); 
            int arith_subi_146 = (arith_const_11 - arith_divi_145); 
            int arith_select_147 = (arith_cmpi_142 ? arith_subi_146 : arith_divi_145); 
            int arith_muli_148 = (arith_select_147 * arith_const_12); 
            int arith_addi_149 = (for_iter_140 + arith_muli_148); 
            double memref_load_150 = func_arg_5[arith_addi_149][for_iter_68]; 
            double arith_mulf_151 = (memref_load_150 * func_arg_2); 
            double arith_mulf_152 = (arith_mulf_151 * memref_load_126); 
            double memref_load_153 = func_arg_6[arith_addi_149][for_iter_68]; 
            double arith_mulf_154 = (memref_load_153 * func_arg_2); 
            double arith_mulf_155 = (arith_mulf_154 * memref_load_127); 
            double arith_addf_156 = (arith_mulf_152 + arith_mulf_155); 
            double memref_load_157 = func_arg_4[arith_addi_22][arith_addi_149]; 
            double arith_addf_158 = (memref_load_157 + arith_addf_156); 
            func_arg_4[arith_addi_22][arith_addi_149] = arith_addf_158; 
          }
        }
      }
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
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
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
