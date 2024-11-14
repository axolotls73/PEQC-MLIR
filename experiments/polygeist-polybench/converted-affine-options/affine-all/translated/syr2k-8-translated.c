#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_syr2k(int func_arg_0, int func_arg_1, double func_arg_2, double func_arg_3, double* func_arg_4, double* func_arg_5, double* func_arg_6)
{
  int arith_const_7 = 5; 
  int arith_const_8 = -4; 
  int arith_const_9 = 3; 
  int arith_const_10 = 2; 
  int arith_const_11 = -1; 
  int arith_const_12 = 4; 
  int arith_const_13 = 30; 
  int arith_const_14 = 32; 
  int arith_const_15 = 0; 
  int arith_const_16 = 1; 
  int* async_group_17; 
  int async_group_index_18 = 0; 
  int for_iter_arg_20 = arith_const_15; 
  for (int for_iter_19 = arith_const_15; for_iter_19 < arith_const_16; for_iter_19 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_21); 
    #pragma peqc async_execute
    {
      int arith_muli_22 = (for_iter_19 * arith_const_14); 
      for (int for_iter_23 = arith_const_15; for_iter_23 < arith_const_13; for_iter_23 += arith_const_16) {
        int arith_addi_24 = (arith_muli_22 + for_iter_23); 
        int arith_muli_25 = (for_iter_19 * arith_const_14); 
        int arith_addi_26 = (for_iter_23 + arith_muli_25); 
        int arith_addi_27 = (arith_addi_26 + arith_const_16); 
        int arith_cmpi_28 = (arith_addi_27 < arith_const_15); 
        int arith_subi_29 = (arith_const_11 - arith_addi_27); 
        int arith_select_30 = (arith_cmpi_28 ? arith_subi_29 : arith_addi_27); 
        int arith_divi_31 = (arith_select_30 / arith_const_12); 
        int arith_subi_32 = (arith_const_11 - arith_divi_31); 
        int arith_select_33 = (arith_cmpi_28 ? arith_subi_32 : arith_divi_31); 
        for (int for_iter_34 = arith_const_15; for_iter_34 < arith_select_33; for_iter_34 += arith_const_16) {
          int arith_muli_35 = (for_iter_34 * arith_const_12); 
          double memref_load_36 = func_arg_4[arith_addi_24][arith_muli_35]; 
          double arith_mulf_37 = (memref_load_36 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_muli_35] = arith_mulf_37; 
          int arith_addi_38 = (arith_muli_35 + arith_const_16); 
          double memref_load_39 = func_arg_4[arith_addi_24][arith_addi_38]; 
          double arith_mulf_40 = (memref_load_39 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_38] = arith_mulf_40; 
          int arith_addi_41 = (arith_muli_35 + arith_const_10); 
          double memref_load_42 = func_arg_4[arith_addi_24][arith_addi_41]; 
          double arith_mulf_43 = (memref_load_42 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_41] = arith_mulf_43; 
          int arith_addi_44 = (arith_muli_35 + arith_const_9); 
          double memref_load_45 = func_arg_4[arith_addi_24][arith_addi_44]; 
          double arith_mulf_46 = (memref_load_45 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_44] = arith_mulf_46; 
        }
        int arith_muli_47 = (for_iter_19 * arith_const_14); 
        int arith_addi_48 = (for_iter_23 + arith_muli_47); 
        int arith_muli_49 = (for_iter_19 * arith_const_14); 
        int arith_addi_50 = (for_iter_23 + arith_muli_49); 
        int arith_addi_51 = (arith_addi_50 + arith_const_16); 
        int arith_cmpi_52 = (arith_addi_51 < arith_const_15); 
        int arith_subi_53 = (arith_const_11 - arith_addi_51); 
        int arith_select_54 = (arith_cmpi_52 ? arith_subi_53 : arith_addi_51); 
        int arith_divi_55 = (arith_select_54 / arith_const_12); 
        int arith_subi_56 = (arith_const_11 - arith_divi_55); 
        int arith_select_57 = (arith_cmpi_52 ? arith_subi_56 : arith_divi_55); 
        int arith_muli_58 = (arith_select_57 * arith_const_8); 
        int arith_addi_59 = (arith_addi_48 + arith_muli_58); 
        int arith_addi_60 = (arith_addi_59 + arith_const_16); 
        for (int for_iter_61 = arith_const_15; for_iter_61 < arith_addi_60; for_iter_61 += arith_const_16) {
          int arith_addi_62 = (arith_addi_24 + arith_const_16); 
          int arith_cmpi_63 = (arith_addi_62 < arith_const_15); 
          int arith_subi_64 = (arith_const_11 - arith_addi_62); 
          int arith_select_65 = (arith_cmpi_63 ? arith_subi_64 : arith_addi_62); 
          int arith_divi_66 = (arith_select_65 / arith_const_12); 
          int arith_subi_67 = (arith_const_11 - arith_divi_66); 
          int arith_select_68 = (arith_cmpi_63 ? arith_subi_67 : arith_divi_66); 
          int arith_muli_69 = (arith_select_68 * arith_const_12); 
          int arith_addi_70 = (for_iter_61 + arith_muli_69); 
          double memref_load_71 = func_arg_4[arith_addi_24][arith_addi_70]; 
          double arith_mulf_72 = (memref_load_71 * func_arg_3); 
          func_arg_4[arith_addi_24][arith_addi_70] = arith_mulf_72; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_21, PAST_TASK_FINISHED); 
    }
    async_group_17[async_group_index_18] = execute_token_21; 
    async_group_index_18++; 
    int arith_addi_73 = (for_iter_arg_20 + arith_const_16); 
    for_iter_arg_20 = arith_addi_73; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_17, async_group_index_18, PAST_TASK_FINISHED); 
  int* async_group_74; 
  int async_group_index_75 = 0; 
  int for_iter_arg_77 = arith_const_15; 
  for (int for_iter_76 = arith_const_15; for_iter_76 < arith_const_13; for_iter_76 += arith_const_16) {
    PAST_NEW_SEMAPHORE(execute_token_78); 
    #pragma peqc async_execute
    {
      int arith_addi_79 = (for_iter_76 + arith_const_16); 
      for (int for_iter_80 = arith_const_15; for_iter_80 < arith_addi_79; for_iter_80 += arith_const_16) {
        for (int for_iter_81 = arith_const_15; for_iter_81 < arith_const_7; for_iter_81 += arith_const_16) {
          int arith_muli_82 = (for_iter_81 * arith_const_12); 
          double memref_load_83 = func_arg_4[for_iter_76][for_iter_80]; 
          double memref_load_84 = func_arg_5[for_iter_80][arith_muli_82]; 
          double arith_mulf_85 = (memref_load_84 * func_arg_2); 
          double memref_load_86 = func_arg_6[for_iter_76][arith_muli_82]; 
          double arith_mulf_87 = (arith_mulf_85 * memref_load_86); 
          double memref_load_88 = func_arg_6[for_iter_80][arith_muli_82]; 
          double arith_mulf_89 = (memref_load_88 * func_arg_2); 
          double memref_load_90 = func_arg_5[for_iter_76][arith_muli_82]; 
          double arith_mulf_91 = (arith_mulf_89 * memref_load_90); 
          double arith_addf_92 = (arith_mulf_87 + arith_mulf_91); 
          double arith_addf_93 = (memref_load_83 + arith_addf_92); 
          func_arg_4[for_iter_76][for_iter_80] = arith_addf_93; 
          int arith_addi_94 = (arith_muli_82 + arith_const_16); 
          double memref_load_95 = func_arg_4[for_iter_76][for_iter_80]; 
          double memref_load_96 = func_arg_5[for_iter_80][arith_addi_94]; 
          double arith_mulf_97 = (memref_load_96 * func_arg_2); 
          double memref_load_98 = func_arg_6[for_iter_76][arith_addi_94]; 
          double arith_mulf_99 = (arith_mulf_97 * memref_load_98); 
          double memref_load_100 = func_arg_6[for_iter_80][arith_addi_94]; 
          double arith_mulf_101 = (memref_load_100 * func_arg_2); 
          double memref_load_102 = func_arg_5[for_iter_76][arith_addi_94]; 
          double arith_mulf_103 = (arith_mulf_101 * memref_load_102); 
          double arith_addf_104 = (arith_mulf_99 + arith_mulf_103); 
          double arith_addf_105 = (memref_load_95 + arith_addf_104); 
          func_arg_4[for_iter_76][for_iter_80] = arith_addf_105; 
          int arith_addi_106 = (arith_muli_82 + arith_const_10); 
          double memref_load_107 = func_arg_4[for_iter_76][for_iter_80]; 
          double memref_load_108 = func_arg_5[for_iter_80][arith_addi_106]; 
          double arith_mulf_109 = (memref_load_108 * func_arg_2); 
          double memref_load_110 = func_arg_6[for_iter_76][arith_addi_106]; 
          double arith_mulf_111 = (arith_mulf_109 * memref_load_110); 
          double memref_load_112 = func_arg_6[for_iter_80][arith_addi_106]; 
          double arith_mulf_113 = (memref_load_112 * func_arg_2); 
          double memref_load_114 = func_arg_5[for_iter_76][arith_addi_106]; 
          double arith_mulf_115 = (arith_mulf_113 * memref_load_114); 
          double arith_addf_116 = (arith_mulf_111 + arith_mulf_115); 
          double arith_addf_117 = (memref_load_107 + arith_addf_116); 
          func_arg_4[for_iter_76][for_iter_80] = arith_addf_117; 
          int arith_addi_118 = (arith_muli_82 + arith_const_9); 
          double memref_load_119 = func_arg_4[for_iter_76][for_iter_80]; 
          double memref_load_120 = func_arg_5[for_iter_80][arith_addi_118]; 
          double arith_mulf_121 = (memref_load_120 * func_arg_2); 
          double memref_load_122 = func_arg_6[for_iter_76][arith_addi_118]; 
          double arith_mulf_123 = (arith_mulf_121 * memref_load_122); 
          double memref_load_124 = func_arg_6[for_iter_80][arith_addi_118]; 
          double arith_mulf_125 = (memref_load_124 * func_arg_2); 
          double memref_load_126 = func_arg_5[for_iter_76][arith_addi_118]; 
          double arith_mulf_127 = (arith_mulf_125 * memref_load_126); 
          double arith_addf_128 = (arith_mulf_123 + arith_mulf_127); 
          double arith_addf_129 = (memref_load_119 + arith_addf_128); 
          func_arg_4[for_iter_76][for_iter_80] = arith_addf_129; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_78, PAST_TASK_FINISHED); 
    }
    async_group_74[async_group_index_75] = execute_token_78; 
    async_group_index_75++; 
    int arith_addi_130 = (for_iter_arg_77 + arith_const_16); 
    for_iter_arg_77 = arith_addi_130; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_74, async_group_index_75, PAST_TASK_FINISHED); 
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
