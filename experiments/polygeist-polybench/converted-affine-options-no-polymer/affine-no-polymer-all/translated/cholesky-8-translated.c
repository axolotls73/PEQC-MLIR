#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_cholesky(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 3; 
  int arith_const_3 = 2; 
  int arith_const_4 = -1; 
  int arith_const_5 = 4; 
  int arith_const_6 = 0; 
  int arith_const_7 = 40; 
  int arith_const_8 = 1; 
  for (int for_iter_9 = arith_const_6; for_iter_9 < arith_const_7; for_iter_9 += arith_const_8) {
    int* async_group_10; 
    int async_group_index_11 = 0; 
    int for_iter_arg_13 = arith_const_6; 
    for (int for_iter_12 = arith_const_6; for_iter_12 < arith_const_8; for_iter_12 += arith_const_8) {
      PAST_NEW_SEMAPHORE(execute_token_14); 
      #pragma peqc async_execute
      {
        int arith_addi_15 = (for_iter_9 + for_iter_12); 
        int arith_addi_16 = (for_iter_9 + for_iter_12); 
        for (int for_iter_17 = arith_const_6; for_iter_17 < arith_addi_16; for_iter_17 += arith_const_8) {
          int arith_cmpi_18 = (for_iter_17 < arith_const_6); 
          int arith_subi_19 = (arith_const_4 - for_iter_17); 
          int arith_select_20 = (arith_cmpi_18 ? arith_subi_19 : for_iter_17); 
          int arith_divi_21 = (arith_select_20 / arith_const_5); 
          int arith_subi_22 = (arith_const_4 - arith_divi_21); 
          int arith_select_23 = (arith_cmpi_18 ? arith_subi_22 : arith_divi_21); 
          for (int for_iter_24 = arith_const_6; for_iter_24 < arith_select_23; for_iter_24 += arith_const_8) {
            int arith_muli_25 = (for_iter_24 * arith_const_5); 
            double memref_load_26 = func_arg_1[arith_addi_15][arith_muli_25]; 
            double memref_load_27 = func_arg_1[for_iter_17][arith_muli_25]; 
            double arith_mulf_28 = (memref_load_26 * memref_load_27); 
            double memref_load_29 = func_arg_1[arith_addi_15][for_iter_17]; 
            double arith_subf_30 = (memref_load_29 - arith_mulf_28); 
            func_arg_1[arith_addi_15][for_iter_17] = arith_subf_30; 
            int arith_addi_31 = (arith_muli_25 + arith_const_8); 
            double memref_load_32 = func_arg_1[arith_addi_15][arith_addi_31]; 
            double memref_load_33 = func_arg_1[for_iter_17][arith_addi_31]; 
            double arith_mulf_34 = (memref_load_32 * memref_load_33); 
            double memref_load_35 = func_arg_1[arith_addi_15][for_iter_17]; 
            double arith_subf_36 = (memref_load_35 - arith_mulf_34); 
            func_arg_1[arith_addi_15][for_iter_17] = arith_subf_36; 
            int arith_addi_37 = (arith_muli_25 + arith_const_3); 
            double memref_load_38 = func_arg_1[arith_addi_15][arith_addi_37]; 
            double memref_load_39 = func_arg_1[for_iter_17][arith_addi_37]; 
            double arith_mulf_40 = (memref_load_38 * memref_load_39); 
            double memref_load_41 = func_arg_1[arith_addi_15][for_iter_17]; 
            double arith_subf_42 = (memref_load_41 - arith_mulf_40); 
            func_arg_1[arith_addi_15][for_iter_17] = arith_subf_42; 
            int arith_addi_43 = (arith_muli_25 + arith_const_2); 
            double memref_load_44 = func_arg_1[arith_addi_15][arith_addi_43]; 
            double memref_load_45 = func_arg_1[for_iter_17][arith_addi_43]; 
            double arith_mulf_46 = (memref_load_44 * memref_load_45); 
            double memref_load_47 = func_arg_1[arith_addi_15][for_iter_17]; 
            double arith_subf_48 = (memref_load_47 - arith_mulf_46); 
            func_arg_1[arith_addi_15][for_iter_17] = arith_subf_48; 
          }
          int arith_remsi_49 = (for_iter_17 % arith_const_5); 
          int arith_cmpi_50 = (arith_remsi_49 < arith_const_6); 
          int arith_addi_51 = (arith_remsi_49 + arith_const_5); 
          int arith_select_52 = (arith_cmpi_50 ? arith_addi_51 : arith_remsi_49); 
          for (int for_iter_53 = arith_const_6; for_iter_53 < arith_select_52; for_iter_53 += arith_const_8) {
            int arith_cmpi_54 = (for_iter_17 < arith_const_6); 
            int arith_subi_55 = (arith_const_4 - for_iter_17); 
            int arith_select_56 = (arith_cmpi_54 ? arith_subi_55 : for_iter_17); 
            int arith_divi_57 = (arith_select_56 / arith_const_5); 
            int arith_subi_58 = (arith_const_4 - arith_divi_57); 
            int arith_select_59 = (arith_cmpi_54 ? arith_subi_58 : arith_divi_57); 
            int arith_muli_60 = (arith_select_59 * arith_const_5); 
            int arith_addi_61 = (for_iter_53 + arith_muli_60); 
            double memref_load_62 = func_arg_1[arith_addi_15][arith_addi_61]; 
            double memref_load_63 = func_arg_1[for_iter_17][arith_addi_61]; 
            double arith_mulf_64 = (memref_load_62 * memref_load_63); 
            double memref_load_65 = func_arg_1[arith_addi_15][for_iter_17]; 
            double arith_subf_66 = (memref_load_65 - arith_mulf_64); 
            func_arg_1[arith_addi_15][for_iter_17] = arith_subf_66; 
          }
          double memref_load_67 = func_arg_1[for_iter_17][for_iter_17]; 
          double memref_load_68 = func_arg_1[arith_addi_15][for_iter_17]; 
          double arith_divf_69 = (memref_load_68 / memref_load_67); 
          func_arg_1[arith_addi_15][for_iter_17] = arith_divf_69; 
        }
        int arith_addi_70 = (for_iter_9 + for_iter_12); 
        int arith_cmpi_71 = (arith_addi_70 < arith_const_6); 
        int arith_subi_72 = (arith_const_4 - arith_addi_70); 
        int arith_select_73 = (arith_cmpi_71 ? arith_subi_72 : arith_addi_70); 
        int arith_divi_74 = (arith_select_73 / arith_const_5); 
        int arith_subi_75 = (arith_const_4 - arith_divi_74); 
        int arith_select_76 = (arith_cmpi_71 ? arith_subi_75 : arith_divi_74); 
        for (int for_iter_77 = arith_const_6; for_iter_77 < arith_select_76; for_iter_77 += arith_const_8) {
          int arith_muli_78 = (for_iter_77 * arith_const_5); 
          double memref_load_79 = func_arg_1[arith_addi_15][arith_muli_78]; 
          double arith_mulf_80 = (memref_load_79 * memref_load_79); 
          double memref_load_81 = func_arg_1[arith_addi_15][arith_addi_15]; 
          double arith_subf_82 = (memref_load_81 - arith_mulf_80); 
          func_arg_1[arith_addi_15][arith_addi_15] = arith_subf_82; 
          int arith_addi_83 = (arith_muli_78 + arith_const_8); 
          double memref_load_84 = func_arg_1[arith_addi_15][arith_addi_83]; 
          double arith_mulf_85 = (memref_load_84 * memref_load_84); 
          double memref_load_86 = func_arg_1[arith_addi_15][arith_addi_15]; 
          double arith_subf_87 = (memref_load_86 - arith_mulf_85); 
          func_arg_1[arith_addi_15][arith_addi_15] = arith_subf_87; 
          int arith_addi_88 = (arith_muli_78 + arith_const_3); 
          double memref_load_89 = func_arg_1[arith_addi_15][arith_addi_88]; 
          double arith_mulf_90 = (memref_load_89 * memref_load_89); 
          double memref_load_91 = func_arg_1[arith_addi_15][arith_addi_15]; 
          double arith_subf_92 = (memref_load_91 - arith_mulf_90); 
          func_arg_1[arith_addi_15][arith_addi_15] = arith_subf_92; 
          int arith_addi_93 = (arith_muli_78 + arith_const_2); 
          double memref_load_94 = func_arg_1[arith_addi_15][arith_addi_93]; 
          double arith_mulf_95 = (memref_load_94 * memref_load_94); 
          double memref_load_96 = func_arg_1[arith_addi_15][arith_addi_15]; 
          double arith_subf_97 = (memref_load_96 - arith_mulf_95); 
          func_arg_1[arith_addi_15][arith_addi_15] = arith_subf_97; 
        }
        int arith_addi_98 = (for_iter_9 + for_iter_12); 
        int arith_remsi_99 = (arith_addi_98 % arith_const_5); 
        int arith_cmpi_100 = (arith_remsi_99 < arith_const_6); 
        int arith_addi_101 = (arith_remsi_99 + arith_const_5); 
        int arith_select_102 = (arith_cmpi_100 ? arith_addi_101 : arith_remsi_99); 
        for (int for_iter_103 = arith_const_6; for_iter_103 < arith_select_102; for_iter_103 += arith_const_8) {
          int arith_cmpi_104 = (arith_addi_15 < arith_const_6); 
          int arith_subi_105 = (arith_const_4 - arith_addi_15); 
          int arith_select_106 = (arith_cmpi_104 ? arith_subi_105 : arith_addi_15); 
          int arith_divi_107 = (arith_select_106 / arith_const_5); 
          int arith_subi_108 = (arith_const_4 - arith_divi_107); 
          int arith_select_109 = (arith_cmpi_104 ? arith_subi_108 : arith_divi_107); 
          int arith_muli_110 = (arith_select_109 * arith_const_5); 
          int arith_addi_111 = (for_iter_103 + arith_muli_110); 
          double memref_load_112 = func_arg_1[arith_addi_15][arith_addi_111]; 
          double arith_mulf_113 = (memref_load_112 * memref_load_112); 
          double memref_load_114 = func_arg_1[arith_addi_15][arith_addi_15]; 
          double arith_subf_115 = (memref_load_114 - arith_mulf_113); 
          func_arg_1[arith_addi_15][arith_addi_15] = arith_subf_115; 
        }
        double memref_load_116 = func_arg_1[arith_addi_15][arith_addi_15]; 
        double math_sqrt_117 = sqrt(memref_load_116); 
        func_arg_1[arith_addi_15][arith_addi_15] = math_sqrt_117; 
        PAST_SET_SEMAPHORE(execute_token_14, PAST_TASK_FINISHED); 
      }
      async_group_10[async_group_index_11] = execute_token_14; 
      async_group_index_11++; 
      int arith_addi_118 = (for_iter_arg_13 + arith_const_8); 
      for_iter_arg_13 = arith_addi_118; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_10, async_group_index_11, PAST_TASK_FINISHED); 
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_cholesky(n, A);
}
}

#pragma pocc-region-end
