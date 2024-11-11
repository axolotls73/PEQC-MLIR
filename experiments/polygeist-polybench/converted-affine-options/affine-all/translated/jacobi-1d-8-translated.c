#pragma pocc-region-start
#include "/data-host-share/verif-dialect/verif-translate/interp_macros.h"
void kernel_jacobi_1d(int func_arg_0, int func_arg_1, double* func_arg_2, double* func_arg_3)
{
  int arith_const_4 = 28; 
  int arith_const_5 = 27; 
  int arith_const_6 = -2; 
  int arith_const_7 = 29; 
  int arith_const_8 = 32; 
  int arith_const_9 = 2; 
  int arith_const_10 = -1; 
  int arith_const_11 = 15; 
  int arith_const_12 = 20; 
  int arith_const_13 = -14; 
  int arith_const_14 = 16; 
  double arith_const_15 = 0.333330; 
  int arith_const_16 = 0; 
  int arith_const_17 = 3; 
  int arith_const_18 = 1; 
  for (int for_iter_19 = arith_const_16; for_iter_19 < arith_const_17; for_iter_19 += arith_const_18) {
    int* async_group_20; 
    int async_group_index_21 = 0; 
    int for_iter_arg_23 = arith_const_16; 
    for (int for_iter_22 = arith_const_16; for_iter_22 < arith_const_18; for_iter_22 += arith_const_18) {
      PAST_NEW_SEMAPHORE(execute_token_24); 
      #pragma peqc async_execute
      {
        int arith_muli_25 = (for_iter_19 * arith_const_14); 
        int arith_muli_26 = (for_iter_22 * arith_const_14); 
        int arith_addi_27 = (arith_muli_25 + arith_muli_26); 
        int arith_addi_28 = (arith_addi_27 + arith_const_13); 
        int arith_maxsi_29 = max(arith_addi_28, arith_const_16); 
        int arith_muli_30 = (for_iter_19 * arith_const_14); 
        int arith_muli_31 = (for_iter_22 * arith_const_14); 
        int arith_addi_32 = (arith_muli_30 + arith_muli_31); 
        int arith_addi_33 = (arith_addi_32 + arith_const_11); 
        int arith_minsi_34 = min(arith_addi_33, arith_const_12); 
        for (int for_iter_35 = arith_maxsi_29; for_iter_35 < arith_minsi_34; for_iter_35 += arith_const_18) {
          int arith_muli_36 = (for_iter_19 * arith_const_10); 
          int arith_muli_37 = (for_iter_22 * arith_const_10); 
          int arith_addi_38 = (arith_muli_36 + arith_muli_37); 
          int arith_cmpi_39 = (for_iter_35 < arith_const_16); 
          int arith_subi_40 = (arith_const_10 - for_iter_35); 
          int arith_select_41 = (arith_cmpi_39 ? arith_subi_40 : for_iter_35); 
          int arith_divi_42 = (arith_select_41 / arith_const_14); 
          int arith_subi_43 = (arith_const_10 - arith_divi_42); 
          int arith_select_44 = (arith_cmpi_39 ? arith_subi_43 : arith_divi_42); 
          int arith_addi_45 = (arith_addi_38 + arith_select_44); 
          int arith_cmpi_46 = (arith_addi_45 >= arith_const_16); 
          if (arith_cmpi_46) {
            double memref_load_47 = func_arg_2[arith_const_16]; 
            double memref_load_48 = func_arg_2[arith_const_18]; 
            double arith_addf_49 = (memref_load_47 + memref_load_48); 
            double memref_load_50 = func_arg_2[arith_const_9]; 
            double arith_addf_51 = (arith_addf_49 + memref_load_50); 
            double arith_mulf_52 = (arith_addf_51 * arith_const_15); 
            func_arg_3[arith_const_18] = arith_mulf_52; 
          }
          int arith_muli_53 = (for_iter_19 * arith_const_8); 
          int arith_muli_54 = (for_iter_22 * arith_const_8); 
          int arith_addi_55 = (arith_muli_53 + arith_muli_54); 
          int arith_muli_56 = (for_iter_35 * arith_const_9); 
          int arith_addi_57 = (arith_muli_56 + arith_const_9); 
          int arith_maxsi_58 = max(arith_addi_55, arith_addi_57); 
          int arith_muli_59 = (for_iter_19 * arith_const_8); 
          int arith_muli_60 = (for_iter_22 * arith_const_8); 
          int arith_addi_61 = (arith_muli_59 + arith_muli_60); 
          int arith_addi_62 = (arith_addi_61 + arith_const_8); 
          int arith_muli_63 = (for_iter_35 * arith_const_9); 
          int arith_addi_64 = (arith_muli_63 + arith_const_7); 
          int arith_minsi_65 = min(arith_addi_62, arith_addi_64); 
          for (int for_iter_66 = arith_maxsi_58; for_iter_66 < arith_minsi_65; for_iter_66 += arith_const_18) {
            int arith_muli_67 = (for_iter_35 * arith_const_6); 
            int arith_addi_68 = (arith_muli_67 + for_iter_66); 
            int arith_addi_69 = (arith_addi_68 + arith_const_10); 
            double memref_load_70 = func_arg_2[arith_addi_69]; 
            int arith_muli_71 = (for_iter_35 * arith_const_6); 
            int arith_addi_72 = (arith_muli_71 + for_iter_66); 
            double memref_load_73 = func_arg_2[arith_addi_72]; 
            double arith_addf_74 = (memref_load_70 + memref_load_73); 
            int arith_muli_75 = (for_iter_35 * arith_const_6); 
            int arith_addi_76 = (arith_muli_75 + for_iter_66); 
            int arith_addi_77 = (arith_addi_76 + arith_const_18); 
            double memref_load_78 = func_arg_2[arith_addi_77]; 
            double arith_addf_79 = (arith_addf_74 + memref_load_78); 
            double arith_mulf_80 = (arith_addf_79 * arith_const_15); 
            int arith_muli_81 = (for_iter_35 * arith_const_6); 
            int arith_addi_82 = (arith_muli_81 + for_iter_66); 
            func_arg_3[arith_addi_82] = arith_mulf_80; 
            int arith_muli_83 = (for_iter_35 * arith_const_6); 
            int arith_addi_84 = (arith_muli_83 + for_iter_66); 
            int arith_addi_85 = (arith_addi_84 + arith_const_6); 
            double memref_load_86 = func_arg_3[arith_addi_85]; 
            int arith_muli_87 = (for_iter_35 * arith_const_6); 
            int arith_addi_88 = (arith_muli_87 + for_iter_66); 
            int arith_addi_89 = (arith_addi_88 + arith_const_10); 
            double memref_load_90 = func_arg_3[arith_addi_89]; 
            double arith_addf_91 = (memref_load_86 + memref_load_90); 
            int arith_muli_92 = (for_iter_35 * arith_const_6); 
            int arith_addi_93 = (arith_muli_92 + for_iter_66); 
            double memref_load_94 = func_arg_3[arith_addi_93]; 
            double arith_addf_95 = (arith_addf_91 + memref_load_94); 
            double arith_mulf_96 = (arith_addf_95 * arith_const_15); 
            int arith_muli_97 = (for_iter_35 * arith_const_6); 
            int arith_addi_98 = (arith_muli_97 + for_iter_66); 
            int arith_addi_99 = (arith_addi_98 + arith_const_10); 
            func_arg_2[arith_addi_99] = arith_mulf_96; 
          }
          int arith_addi_100 = (for_iter_19 + for_iter_22); 
          int arith_addi_101 = (for_iter_35 + arith_const_10); 
          int arith_cmpi_102 = (arith_addi_101 <= arith_const_16); 
          int arith_subi_103 = (arith_const_16 - arith_addi_101); 
          int arith_subi_104 = (arith_addi_101 - arith_const_18); 
          int arith_select_105 = (arith_cmpi_102 ? arith_subi_103 : arith_subi_104); 
          int arith_divi_106 = (arith_select_105 / arith_const_14); 
          int arith_subi_107 = (arith_const_16 - arith_divi_106); 
          int arith_addi_108 = (arith_divi_106 + arith_const_18); 
          int arith_select_109 = (arith_cmpi_102 ? arith_subi_107 : arith_addi_108); 
          int arith_muli_110 = (arith_select_109 * arith_const_10); 
          int arith_addi_111 = (arith_addi_100 + arith_muli_110); 
          int arith_cmpi_112 = (arith_addi_111 >= arith_const_16); 
          if (arith_cmpi_112) {
            double memref_load_113 = func_arg_3[arith_const_5]; 
            double memref_load_114 = func_arg_3[arith_const_4]; 
            double arith_addf_115 = (memref_load_113 + memref_load_114); 
            double memref_load_116 = func_arg_3[arith_const_7]; 
            double arith_addf_117 = (arith_addf_115 + memref_load_116); 
            double arith_mulf_118 = (arith_addf_117 * arith_const_15); 
            func_arg_2[arith_const_4] = arith_mulf_118; 
          }
        }
        int arith_addi_119 = (for_iter_19 + for_iter_22); 
        int arith_cmpi_120 = (arith_addi_119 == arith_const_16); 
        if (arith_cmpi_120) {
          double memref_load_121 = func_arg_2[arith_const_16]; 
          double memref_load_122 = func_arg_2[arith_const_18]; 
          double arith_addf_123 = (memref_load_121 + memref_load_122); 
          double memref_load_124 = func_arg_2[arith_const_9]; 
          double arith_addf_125 = (arith_addf_123 + memref_load_124); 
          double arith_mulf_126 = (arith_addf_125 * arith_const_15); 
          func_arg_3[arith_const_18] = arith_mulf_126; 
        }
        PAST_SET_SEMAPHORE(execute_token_24, PAST_TASK_FINISHED); 
      }
      async_group_20[async_group_index_21] = execute_token_24; 
      async_group_index_21++; 
      int arith_addi_127 = (for_iter_arg_23 + arith_const_18); 
      for_iter_arg_23 = arith_addi_127; 
    }
    PAST_WAIT_SEMAPHORE_ALL(async_group_20, async_group_index_21, PAST_TASK_FINISHED); 
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
  kernel_jacobi_1d(tsteps, n, A, B);
}
}

#pragma pocc-region-end
