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
      }
      PAST_SET_SEMAPHORE(execute_token_20, PAST_TASK_FINISHED); 
    }
    async_group_16[async_group_index_17] = execute_token_20; 
    async_group_index_17++; 
    int arith_addi_68 = (for_iter_arg_19 + arith_const_15); 
    for_iter_arg_19 = arith_addi_68; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_16, async_group_index_17, PAST_TASK_FINISHED); 
  int* async_group_69; 
  int async_group_index_70 = 0; 
  int for_iter_arg_72 = arith_const_13; 
  for (int for_iter_71 = arith_const_13; for_iter_71 < arith_const_14; for_iter_71 += arith_const_15) {
    PAST_NEW_SEMAPHORE(execute_token_73); 
    #pragma peqc async_execute
    {
      int arith_addi_74 = (for_iter_71 + arith_const_15); 
      for (int for_iter_75 = arith_const_13; for_iter_75 < arith_addi_74; for_iter_75 += arith_const_15) {
        for (int for_iter_76 = arith_const_13; for_iter_76 < arith_const_7; for_iter_76 += arith_const_15) {
          int arith_muli_77 = (for_iter_76 * arith_const_12); 
          double memref_load_78 = func_arg_4[for_iter_71][for_iter_75]; 
          double memref_load_79 = func_arg_5[for_iter_75][arith_muli_77]; 
          double arith_mulf_80 = (memref_load_79 * func_arg_2); 
          double memref_load_81 = func_arg_6[for_iter_71][arith_muli_77]; 
          double arith_mulf_82 = (arith_mulf_80 * memref_load_81); 
          double memref_load_83 = func_arg_6[for_iter_75][arith_muli_77]; 
          double arith_mulf_84 = (memref_load_83 * func_arg_2); 
          double memref_load_85 = func_arg_5[for_iter_71][arith_muli_77]; 
          double arith_mulf_86 = (arith_mulf_84 * memref_load_85); 
          double arith_addf_87 = (arith_mulf_82 + arith_mulf_86); 
          double arith_addf_88 = (memref_load_78 + arith_addf_87); 
          func_arg_4[for_iter_71][for_iter_75] = arith_addf_88; 
          int arith_addi_89 = (arith_muli_77 + arith_const_15); 
          double memref_load_90 = func_arg_4[for_iter_71][for_iter_75]; 
          double memref_load_91 = func_arg_5[for_iter_75][arith_addi_89]; 
          double arith_mulf_92 = (memref_load_91 * func_arg_2); 
          double memref_load_93 = func_arg_6[for_iter_71][arith_addi_89]; 
          double arith_mulf_94 = (arith_mulf_92 * memref_load_93); 
          double memref_load_95 = func_arg_6[for_iter_75][arith_addi_89]; 
          double arith_mulf_96 = (memref_load_95 * func_arg_2); 
          double memref_load_97 = func_arg_5[for_iter_71][arith_addi_89]; 
          double arith_mulf_98 = (arith_mulf_96 * memref_load_97); 
          double arith_addf_99 = (arith_mulf_94 + arith_mulf_98); 
          double arith_addf_100 = (memref_load_90 + arith_addf_99); 
          func_arg_4[for_iter_71][for_iter_75] = arith_addf_100; 
          int arith_addi_101 = (arith_muli_77 + arith_const_10); 
          double memref_load_102 = func_arg_4[for_iter_71][for_iter_75]; 
          double memref_load_103 = func_arg_5[for_iter_75][arith_addi_101]; 
          double arith_mulf_104 = (memref_load_103 * func_arg_2); 
          double memref_load_105 = func_arg_6[for_iter_71][arith_addi_101]; 
          double arith_mulf_106 = (arith_mulf_104 * memref_load_105); 
          double memref_load_107 = func_arg_6[for_iter_75][arith_addi_101]; 
          double arith_mulf_108 = (memref_load_107 * func_arg_2); 
          double memref_load_109 = func_arg_5[for_iter_71][arith_addi_101]; 
          double arith_mulf_110 = (arith_mulf_108 * memref_load_109); 
          double arith_addf_111 = (arith_mulf_106 + arith_mulf_110); 
          double arith_addf_112 = (memref_load_102 + arith_addf_111); 
          func_arg_4[for_iter_71][for_iter_75] = arith_addf_112; 
          int arith_addi_113 = (arith_muli_77 + arith_const_9); 
          double memref_load_114 = func_arg_4[for_iter_71][for_iter_75]; 
          double memref_load_115 = func_arg_5[for_iter_75][arith_addi_113]; 
          double arith_mulf_116 = (memref_load_115 * func_arg_2); 
          double memref_load_117 = func_arg_6[for_iter_71][arith_addi_113]; 
          double arith_mulf_118 = (arith_mulf_116 * memref_load_117); 
          double memref_load_119 = func_arg_6[for_iter_75][arith_addi_113]; 
          double arith_mulf_120 = (memref_load_119 * func_arg_2); 
          double memref_load_121 = func_arg_5[for_iter_71][arith_addi_113]; 
          double arith_mulf_122 = (arith_mulf_120 * memref_load_121); 
          double arith_addf_123 = (arith_mulf_118 + arith_mulf_122); 
          double arith_addf_124 = (memref_load_114 + arith_addf_123); 
          func_arg_4[for_iter_71][for_iter_75] = arith_addf_124; 
        }
      }
      PAST_SET_SEMAPHORE(execute_token_73, PAST_TASK_FINISHED); 
    }
    async_group_69[async_group_index_70] = execute_token_73; 
    async_group_index_70++; 
    int arith_addi_125 = (for_iter_arg_72 + arith_const_15); 
    for_iter_arg_72 = arith_addi_125; 
  }
  PAST_WAIT_SEMAPHORE_ALL(async_group_69, async_group_index_70, PAST_TASK_FINISHED); 
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
