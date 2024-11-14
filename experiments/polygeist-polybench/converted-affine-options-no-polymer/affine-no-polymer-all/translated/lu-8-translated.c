#pragma pocc-region-start
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/interp_macros.h"
void kernel_lu(int func_arg_0, double* func_arg_1)
{
  int arith_const_2 = 42; 
  int arith_const_3 = 8; 
  int arith_const_4 = 3; 
  int arith_const_5 = -1; 
  int arith_const_6 = 4; 
  int arith_const_7 = 40; 
  int arith_const_8 = -32; 
  int arith_const_9 = 32; 
  int arith_const_10 = 0; 
  int arith_const_11 = 2; 
  int arith_const_12 = 1; 
  for (int for_iter_13 = arith_const_10; for_iter_13 < arith_const_11; for_iter_13 += arith_const_12) {
    int arith_muli_14 = (for_iter_13 * arith_const_9); 
    int arith_muli_15 = (for_iter_13 * arith_const_8); 
    int arith_addi_16 = (arith_muli_15 + arith_const_7); 
    int arith_minsi_17 = min(arith_addi_16, arith_const_9); 
    for (int for_iter_18 = arith_const_10; for_iter_18 < arith_minsi_17; for_iter_18 += arith_const_12) {
      int arith_addi_19 = (arith_muli_14 + for_iter_18); 
      int arith_muli_20 = (for_iter_13 * arith_const_9); 
      int arith_addi_21 = (for_iter_18 + arith_muli_20); 
      for (int for_iter_22 = arith_const_10; for_iter_22 < arith_addi_21; for_iter_22 += arith_const_12) {
        int arith_cmpi_23 = (for_iter_22 < arith_const_10); 
        int arith_subi_24 = (arith_const_5 - for_iter_22); 
        int arith_select_25 = (arith_cmpi_23 ? arith_subi_24 : for_iter_22); 
        int arith_divi_26 = (arith_select_25 / arith_const_6); 
        int arith_subi_27 = (arith_const_5 - arith_divi_26); 
        int arith_select_28 = (arith_cmpi_23 ? arith_subi_27 : arith_divi_26); 
        for (int for_iter_29 = arith_const_10; for_iter_29 < arith_select_28; for_iter_29 += arith_const_12) {
          int arith_muli_30 = (for_iter_29 * arith_const_6); 
          double memref_load_31 = func_arg_1[arith_addi_19][arith_muli_30]; 
          double memref_load_32 = func_arg_1[arith_muli_30][for_iter_22]; 
          double arith_mulf_33 = (memref_load_31 * memref_load_32); 
          double memref_load_34 = func_arg_1[arith_addi_19][for_iter_22]; 
          double arith_subf_35 = (memref_load_34 - arith_mulf_33); 
          func_arg_1[arith_addi_19][for_iter_22] = arith_subf_35; 
          int arith_addi_36 = (arith_muli_30 + arith_const_12); 
          double memref_load_37 = func_arg_1[arith_addi_19][arith_addi_36]; 
          double memref_load_38 = func_arg_1[arith_addi_36][for_iter_22]; 
          double arith_mulf_39 = (memref_load_37 * memref_load_38); 
          double memref_load_40 = func_arg_1[arith_addi_19][for_iter_22]; 
          double arith_subf_41 = (memref_load_40 - arith_mulf_39); 
          func_arg_1[arith_addi_19][for_iter_22] = arith_subf_41; 
          int arith_addi_42 = (arith_muli_30 + arith_const_11); 
          double memref_load_43 = func_arg_1[arith_addi_19][arith_addi_42]; 
          double memref_load_44 = func_arg_1[arith_addi_42][for_iter_22]; 
          double arith_mulf_45 = (memref_load_43 * memref_load_44); 
          double memref_load_46 = func_arg_1[arith_addi_19][for_iter_22]; 
          double arith_subf_47 = (memref_load_46 - arith_mulf_45); 
          func_arg_1[arith_addi_19][for_iter_22] = arith_subf_47; 
          int arith_addi_48 = (arith_muli_30 + arith_const_4); 
          double memref_load_49 = func_arg_1[arith_addi_19][arith_addi_48]; 
          double memref_load_50 = func_arg_1[arith_addi_48][for_iter_22]; 
          double arith_mulf_51 = (memref_load_49 * memref_load_50); 
          double memref_load_52 = func_arg_1[arith_addi_19][for_iter_22]; 
          double arith_subf_53 = (memref_load_52 - arith_mulf_51); 
          func_arg_1[arith_addi_19][for_iter_22] = arith_subf_53; 
        }
        int arith_remsi_54 = (for_iter_22 % arith_const_6); 
        int arith_cmpi_55 = (arith_remsi_54 < arith_const_10); 
        int arith_addi_56 = (arith_remsi_54 + arith_const_6); 
        int arith_select_57 = (arith_cmpi_55 ? arith_addi_56 : arith_remsi_54); 
        for (int for_iter_58 = arith_const_10; for_iter_58 < arith_select_57; for_iter_58 += arith_const_12) {
          int arith_cmpi_59 = (for_iter_22 < arith_const_10); 
          int arith_subi_60 = (arith_const_5 - for_iter_22); 
          int arith_select_61 = (arith_cmpi_59 ? arith_subi_60 : for_iter_22); 
          int arith_divi_62 = (arith_select_61 / arith_const_6); 
          int arith_subi_63 = (arith_const_5 - arith_divi_62); 
          int arith_select_64 = (arith_cmpi_59 ? arith_subi_63 : arith_divi_62); 
          int arith_muli_65 = (arith_select_64 * arith_const_6); 
          int arith_addi_66 = (for_iter_58 + arith_muli_65); 
          double memref_load_67 = func_arg_1[arith_addi_19][arith_addi_66]; 
          double memref_load_68 = func_arg_1[arith_addi_66][for_iter_22]; 
          double arith_mulf_69 = (memref_load_67 * memref_load_68); 
          double memref_load_70 = func_arg_1[arith_addi_19][for_iter_22]; 
          double arith_subf_71 = (memref_load_70 - arith_mulf_69); 
          func_arg_1[arith_addi_19][for_iter_22] = arith_subf_71; 
        }
        double memref_load_72 = func_arg_1[for_iter_22][for_iter_22]; 
        double memref_load_73 = func_arg_1[arith_addi_19][for_iter_22]; 
        double arith_divf_74 = (memref_load_73 / memref_load_72); 
        func_arg_1[arith_addi_19][for_iter_22] = arith_divf_74; 
      }
      int arith_muli_75 = (for_iter_18 * arith_const_5); 
      int arith_muli_76 = (for_iter_13 * arith_const_8); 
      int arith_addi_77 = (arith_muli_75 + arith_muli_76); 
      int arith_addi_78 = (arith_addi_77 + arith_const_7); 
      int* async_group_79; 
      int async_group_index_80 = 0; 
      int for_iter_arg_82 = arith_const_10; 
      for (int for_iter_81 = arith_const_10; for_iter_81 < arith_addi_78; for_iter_81 += arith_const_12) {
        PAST_NEW_SEMAPHORE(execute_token_83); 
        #pragma peqc async_execute
        {
          int arith_addi_84 = (arith_addi_19 + for_iter_81); 
          int arith_muli_85 = (for_iter_13 * arith_const_3); 
          int arith_cmpi_86 = (for_iter_18 < arith_const_10); 
          int arith_subi_87 = (arith_const_5 - for_iter_18); 
          int arith_select_88 = (arith_cmpi_86 ? arith_subi_87 : for_iter_18); 
          int arith_divi_89 = (arith_select_88 / arith_const_6); 
          int arith_subi_90 = (arith_const_5 - arith_divi_89); 
          int arith_select_91 = (arith_cmpi_86 ? arith_subi_90 : arith_divi_89); 
          int arith_addi_92 = (arith_muli_85 + arith_select_91); 
          for (int for_iter_93 = arith_const_10; for_iter_93 < arith_addi_92; for_iter_93 += arith_const_12) {
            int arith_muli_94 = (for_iter_93 * arith_const_6); 
            double memref_load_95 = func_arg_1[arith_addi_19][arith_muli_94]; 
            double memref_load_96 = func_arg_1[arith_muli_94][arith_addi_84]; 
            double arith_mulf_97 = (memref_load_95 * memref_load_96); 
            double memref_load_98 = func_arg_1[arith_addi_19][arith_addi_84]; 
            double arith_subf_99 = (memref_load_98 - arith_mulf_97); 
            func_arg_1[arith_addi_19][arith_addi_84] = arith_subf_99; 
            int arith_addi_100 = (arith_muli_94 + arith_const_12); 
            double memref_load_101 = func_arg_1[arith_addi_19][arith_addi_100]; 
            double memref_load_102 = func_arg_1[arith_addi_100][arith_addi_84]; 
            double arith_mulf_103 = (memref_load_101 * memref_load_102); 
            double memref_load_104 = func_arg_1[arith_addi_19][arith_addi_84]; 
            double arith_subf_105 = (memref_load_104 - arith_mulf_103); 
            func_arg_1[arith_addi_19][arith_addi_84] = arith_subf_105; 
            int arith_addi_106 = (arith_muli_94 + arith_const_11); 
            double memref_load_107 = func_arg_1[arith_addi_19][arith_addi_106]; 
            double memref_load_108 = func_arg_1[arith_addi_106][arith_addi_84]; 
            double arith_mulf_109 = (memref_load_107 * memref_load_108); 
            double memref_load_110 = func_arg_1[arith_addi_19][arith_addi_84]; 
            double arith_subf_111 = (memref_load_110 - arith_mulf_109); 
            func_arg_1[arith_addi_19][arith_addi_84] = arith_subf_111; 
            int arith_addi_112 = (arith_muli_94 + arith_const_4); 
            double memref_load_113 = func_arg_1[arith_addi_19][arith_addi_112]; 
            double memref_load_114 = func_arg_1[arith_addi_112][arith_addi_84]; 
            double arith_mulf_115 = (memref_load_113 * memref_load_114); 
            double memref_load_116 = func_arg_1[arith_addi_19][arith_addi_84]; 
            double arith_subf_117 = (memref_load_116 - arith_mulf_115); 
            func_arg_1[arith_addi_19][arith_addi_84] = arith_subf_117; 
          }
          int arith_remsi_118 = (arith_addi_19 % arith_const_6); 
          int arith_cmpi_119 = (arith_remsi_118 < arith_const_10); 
          int arith_addi_120 = (arith_remsi_118 + arith_const_6); 
          int arith_select_121 = (arith_cmpi_119 ? arith_addi_120 : arith_remsi_118); 
          for (int for_iter_122 = arith_const_10; for_iter_122 < arith_select_121; for_iter_122 += arith_const_12) {
            int arith_cmpi_123 = (arith_addi_19 < arith_const_10); 
            int arith_subi_124 = (arith_const_5 - arith_addi_19); 
            int arith_select_125 = (arith_cmpi_123 ? arith_subi_124 : arith_addi_19); 
            int arith_divi_126 = (arith_select_125 / arith_const_6); 
            int arith_subi_127 = (arith_const_5 - arith_divi_126); 
            int arith_select_128 = (arith_cmpi_123 ? arith_subi_127 : arith_divi_126); 
            int arith_muli_129 = (arith_select_128 * arith_const_6); 
            int arith_addi_130 = (for_iter_122 + arith_muli_129); 
            double memref_load_131 = func_arg_1[arith_addi_19][arith_addi_130]; 
            double memref_load_132 = func_arg_1[arith_addi_130][arith_addi_84]; 
            double arith_mulf_133 = (memref_load_131 * memref_load_132); 
            double memref_load_134 = func_arg_1[arith_addi_19][arith_addi_84]; 
            double arith_subf_135 = (memref_load_134 - arith_mulf_133); 
            func_arg_1[arith_addi_19][arith_addi_84] = arith_subf_135; 
          }
          PAST_SET_SEMAPHORE(execute_token_83, PAST_TASK_FINISHED); 
        }
        async_group_79[async_group_index_80] = execute_token_83; 
        async_group_index_80++; 
        int arith_addi_136 = (for_iter_arg_82 + arith_const_12); 
        for_iter_arg_82 = arith_addi_136; 
      }
      PAST_WAIT_SEMAPHORE_ALL(async_group_79, async_group_index_80, PAST_TASK_FINISHED); 
    }
  }
  return; 

}


{
#include "/data-host-share/verif-dialect/experiments/polygeist-polybench/script/prologue.h"
  int n;
  double* A;

#pragma peqc async_execute
{
  kernel_lu(n, A);
}
}

#pragma pocc-region-end
